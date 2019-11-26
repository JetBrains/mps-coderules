/*
 * Copyright 2014-2019 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.mps.logic.reactor.core.internal

import gnu.trove.map.hash.TIntObjectHashMap
import gnu.trove.set.hash.TIntHashSet
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.*
import java.util.*
import kotlin.NoSuchElementException
import kotlin.collections.ArrayList

/**
 * An alternative implementation of RuleMatcherImpl. Has similar asymptotic characteristics as the "naïve" implementation.
 *
 * Loosely based on "Rete network" algorithm.
 *
 * The implementation of [RuleMatchingProbe] returned from [probe] method is not a persistent object, it's rather
 * a mutable object which updates its state through usual update methods that all return the same object.
 *
 * @author Fedor Isakov
 */

typealias Trail = TIntHashSet

fun trailOf(): Trail = TIntHashSet()

fun Signature.toTrail() = TIntHashSet(this)

typealias SignatureIndex = TIntObjectHashMap<List<Signature>>

fun signatureIndexOf() = TIntObjectHashMap<MutableList<Signature>>()

internal class ReteRuleMatcherImpl(private var ruleLookup: RuleLookup,
                                   private val tag: Any) : RuleMatcher
{

    val head = (lookupRule().headKept() + lookupRule().headReplaced()).toList()

    val propagation = lookupRule().headReplaced().count() == 0

    fun lookupRule(): Rule = ruleLookup.lookupRuleByTag(tag) ?: throw IllegalStateException("can't lookup rule by tag: '${tag}'")

    override fun setRuleLookup(ruleLookup: RuleLookup) { this.ruleLookup = ruleLookup }

    override fun newProbe(): RuleMatchingProbe = ReteNetwork(head.size).also { probe = it }

    override fun probe(): RuleMatchingProbe = probe ?: newProbe()

    private var probe: RuleMatchingProbe? = null

    inner class ReteNetwork(val headSize: Int) : RuleMatchingProbe {

        init {
            // rules with empty head are not allowed
            assert(headSize > 0)
        }

        var lastGeneration = Generation(Layer(InitialNode()))

        val consumedSignatures = IndexedSignatureSet()

        abstract inner class ReteNode
        {
            abstract val depth: Int

            abstract val signature: Signature

            abstract fun subst(): Subst

            abstract fun occupiesHeadPosition(headPos: Int) : Boolean

            abstract fun containsOccurrence(occ: Occurrence) : Boolean

            abstract fun combine(that: AlphaNode, subst: Subst): ReteNode

            abstract fun collect(occArray: Array<Occurrence?>)

        }

        inner class InitialNode() : ReteNode() {

            override val depth = 0

            override val signature: Signature = noSignature()

            override fun subst(): Subst = emptySubst()

            override fun occupiesHeadPosition(headPos: Int): Boolean = false

            override fun containsOccurrence(occ: Occurrence): Boolean = false

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = that

            override fun collect(occArray: Array<Occurrence?>) {}
        }

        /**
         * A network node corresponding to a single occurrence matched against a constraint.
         */
        inner class AlphaNode(val occurrence: Occurrence,
                              val posInHead: Int,
                              val subst: Subst) : ReteNode()
        {

            override val depth = 1

            override val signature = IntArray(headSize).toSignature().apply { set(posInHead, occurrence.identity) }

            override fun subst(): Subst = subst

            override fun occupiesHeadPosition(headPos: Int): Boolean = posInHead == headPos

            override fun containsOccurrence(occ: Occurrence): Boolean = occ === occurrence  // reference eq!

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = BetaNode(this, that, subst)

            override fun collect(occArray: Array<Occurrence?>) {
                occArray[posInHead] = occurrence
            }
        }


        /**
         * A "deep" network node. Always has two parents, one of which is always an AlphaNode.
         */
        inner class BetaNode : ReteNode {

            override val signature: Signature

            override val depth: Int
                get() = left.depth + right.depth

            val left: ReteNode

            val right: AlphaNode

            val subst: Subst

            val positions: BitSet

            constructor(left: AlphaNode, right: AlphaNode, subst: Subst) {
                this.left = left
                this.right = right
                this.subst = subst
                this.positions = bitSet(left.posInHead).apply { set(right.posInHead) }
                this.signature = IntArray(headSize).toSignature().apply {
                    set(left.posInHead, left.occurrence.identity)
                    set(right.posInHead, right.occurrence.identity)
                }
            }

            constructor(left: BetaNode, right: AlphaNode, subst: Subst) {
                this.left = left
                this.right = right
                this.subst = subst
                this.positions = left.positions.copyApply { set(right.posInHead) }
                this.signature = left.signature.copy().apply {
                    set(right.posInHead, right.occurrence.identity)
                }
            }

            override fun subst(): Subst = subst

            override fun occupiesHeadPosition(headPos: Int): Boolean = positions[headPos]

            override fun containsOccurrence(occ: Occurrence): Boolean = signature.contains(occ.identity)

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = BetaNode(this, that, subst)

            override fun collect(occArray: Array<Occurrence?>) {
                left.collect(occArray)
                right.collect(occArray)
            }
        }



        /**
         * A layer contains nodes with shared properties:
         *  - number of "vacancies" in the matching slots;
         *  - slot position occupied by the last introduced occurrence.
         *
         *  Node list is built incrementally from update blocks.
         */
        inner class Layer() {

            private val introTrail: Trail = trailOf()

            private val droppedTrail: Trail = trailOf()

            private val nodeList = LoopLinkedList<ReteNode>()

            private val updateQueue: MutableList<UpdateBlock> = LinkedList()

            var primed = false

            /** constructs initial layer containing only [InitialNode] */
            constructor(node: ReteNode) : this(){
                nodeList.add(node)
            }

            fun isEmpty() = nodeList.isEmpty()

            fun containsOccurrence(occ: Occurrence): Boolean {
                return introTrail.contains(occ.identity)
            }

            fun forgetContains(occ: Occurrence): Boolean {
                // FIXME this breaks the internal invariant
                return introTrail.remove(occ.identity)
            }

            fun iterate(): Iterator<ReteNode> = nodeList.iterator()

            fun copyIterator(it: Iterator<ReteNode>): Iterator<ReteNode> =
                nodeList.iterator((it as LoopLinkedList<ReteNode>.Iterator).current)

            fun nextNode(it: Iterator<ReteNode>): ReteNode? {
                if (!it.hasNext()) {
                    prime()
                }
                return if(it.hasNext()) it.next() else null
            }

            fun prime(): Layer {
                if (!primed) {
                    for (block in updateQueue) {
                        update(block)
                    }
                    this.primed = true
                }
                return this
            }

            fun reset() {
                for (block in updateQueue) {
                    block.reset()
                }
                this.primed = false
            }

            fun update(block: UpdateBlock): Boolean {
                return block.update(nodeList, introTrail)
            }

            fun queueUpdate(block: UpdateBlock): Layer {
                updateQueue.removeIf { it.occurrence === block.occurrence }
                updateQueue.add(block)
                return this
            }

            fun runUpdate(block: UpdateBlock): Layer {
                updateQueue.removeIf { it.occurrence === block.occurrence }
                update(block)
                return this
            }

        }

        abstract inner class UpdateBlock(val occurrence: Occurrence) {

            abstract fun reset()

            abstract fun update(nodes: LoopLinkedList<ReteNode>, introTrail: Trail): Boolean

        }

        inner class IntroBlock (occurrence: Occurrence,
                                val headPosMask: BitSet,
                                val onTopOf: Layer) : UpdateBlock(occurrence) {

            var nodesIt: Iterator<ReteNode> = onTopOf.iterate()

            override fun reset() {
                // FIXME when enabled the following code causes major slowdown on certain programs
//                nodesIt = onTopOf.iterate()
            }

            override fun update(nodes: LoopLinkedList<ReteNode>, introTrail: Trail): Boolean {
                var found = false
                while (true) {
                    val n = onTopOf.nextNode(nodesIt)
                    if (n == null) break

                    if (n.containsOccurrence(occurrence)) continue

                    val it = headPosMask.allSetBits()
                    while (it.hasNext()) {
                        val headPos = it.next()
                        if (n.occupiesHeadPosition(headPos)) continue

                        with(createOccurrenceMatcher(n.subst())) {
                            if (matches(head[headPos], occurrence)) {
                                val intro = AlphaNode(occurrence, headPos, subst())
                                nodes.add(n.combine(intro, subst()))
                                found = true
                            }
                        }
                    }

                    if (found) {
                        introTrail.add(occurrence.identity)
                    }
                }
                return found
            }
        }

        inner class DropBlock (occurrence: Occurrence) : UpdateBlock(occurrence) {

            override fun reset() {
                // NOP
            }

            override fun update(nodes: LoopLinkedList<ReteNode>, introTrail: Trail): Boolean {
                val it = nodes.iterator()
                while (it.hasNext()) {
                    val n = it.next()
                    if (n.containsOccurrence(occurrence)) {
                        it.remove()
                    }
                }
                introTrail.remove(occurrence.identity)

                return false
            }

        }

        /**
         * Collection of [Layer] instances.
         * The new layers are appended to the [layers] list.
         * Invariant: the first layer is always the initial one.
         */
        inner class Generation private constructor (prev: Generation?) {

            val layers: MutableList<Layer> = prev?.layers ?: ArrayList<Layer>(4)

            lateinit var nodesIt: Iterator<ReteNode>

            private var __matches: Collection<RuleMatchImpl>? = null
            val matches: Collection<RuleMatchImpl>
                get() {
                    if (__matches == null) {
                        this.__matches = calcMatches()
                    }
                    return __matches !!
                }

            init {
                if (prev != null) {
                    this.nodesIt = prev.nodesIt
                }
            }

            constructor(initLayer: Layer) : this(null) {
                layers.add(initLayer)
                for (i in 1..headSize) {
                    layers.add(Layer())
                }
                nodesIt = layers.last().iterate()
            }

            fun reset(): Generation {
                this.nodesIt = layers.last().iterate()
                return this
            }

            fun introduce(occurrence: Occurrence, headPosMask: BitSet): Generation {
                val reactivated = layers.any { it.containsOccurrence(occurrence) }

                // propagation history
                if (propagation && reactivated) return nextGeneration().reset()

                var firstAffected = -1
                for ((idx, layer) in layers.withIndex()) {
                    if (idx > 0 && headPosMask.get(idx - 1)) {
                        if (firstAffected < 0) firstAffected = idx
                        layer.queueUpdate(IntroBlock(occurrence, headPosMask, layers[idx - 1]))
                    }
                }
                for (i in firstAffected until layers.size) {
                    layers[i].reset()
                }

                return nextGeneration()
            }

            fun drop(occurrence: Occurrence): Generation {
                for (layer in layers) {
                    layer.runUpdate(DropBlock(occurrence))
                }
                consumedSignatures.removeAllWith(occurrence.identity)
                return nextGeneration().reset()
            }

            /*
             * Allows to avoid triggering reactivation logic in the next call of "introduce" for this occurrence.
             */
            fun forgetIntroduced(occurrence: Occurrence): Generation {
                layers.last().forgetContains(occurrence)
                return nextGeneration()
            }

            fun nextGeneration(): Generation = Generation(this)

            fun calcMatches(): Collection<RuleMatchImpl> {
                val topLayer = layers.last()
                val uniqueSignatures = HashSet<Signature>()
                val matches = ArrayList<RuleMatchImpl>()
                while(true) {
                    val n = topLayer.nextNode(nodesIt)
                    if (n == null) break
                    
                    val signature = n.signature
                    if (consumedSignatures.contains(signature) || uniqueSignatures.contains(signature)) continue
                    uniqueSignatures.add(signature)

                    val occArray = arrayOfNulls<Occurrence>(headSize).apply(n::collect)
                    val occList = occArray.toList() as List<Occurrence>
                    val keptCount = lookupRule().headKept().count()

                    matches.add(RuleMatchImpl(lookupRule(),
                        n.subst(),
                        occList.subList(0, keptCount),
                        occList.subList(keptCount, occList.size)))
                }

                return matches
            }

        }

        override fun rule(): Rule = lookupRule()

        // for tests only
        override fun expand(occ: Occurrence): ReteNetwork =
            expand(occ, bitSetOfOnes(headSize), null)

        override fun expand(occ: Occurrence, mask: BitSet, profiler: Profiler?): ReteNetwork {
            this.lastGeneration = lastGeneration.introduce(occ, mask)
            return this
        }

        override fun contract(occ: Occurrence): ReteNetwork {
            this.lastGeneration = lastGeneration.drop(occ)
            return this
        }

        override fun forgetExpanded(occ: Occurrence): ReteNetwork {
            this.lastGeneration.forgetIntroduced(occ)
            return this
        }

        override fun forgetConsumed(occ: Occurrence): ReteNetwork {
            consumedSignatures.removeAllWith(occ.identity)
            return this
        }

        override fun matches(): Collection<RuleMatchImpl> {
            return lastGeneration.matches
        }

        override fun consume(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            consumedSignatures.add(ruleMatch.signatureArray().toSignature())
            return this
        }

        override fun forget(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            consumedSignatures.add(ruleMatch.signatureArray().toSignature())
            return this
        }

    }

}

class IndexedSignatureSet {

    val signatures = HashSet<Signature>()

    val index = signatureIndexOf()

    fun add(signature: Signature) {
        signatures.add(signature)
        for (id in signature) {
            if (!index.contains(id)) {
                index.put(id, arrayListOf())
            }
            index.get(id).add(signature)
        }
    }

    fun remove(signature: Signature) {
        signatures.add(signature)
        for (id in signature) {
            if (index.containsKey(id)) {
                index.get(id).remove(signature)
            }
        }
    }

    fun contains(signature: Signature): Boolean = signatures.contains(signature)

    fun removeAllWith(id: Int) {
        if (index.contains(id)) {
            for (s in index[id]) {
                signatures.remove(s)
            }
        }
    }

}


/**
 * Simple linked list with fail-safe iterator.
 */
class LoopLinkedList<T> : Iterable<T> {

    open inner class Joint {
        lateinit var prev: Joint
        lateinit var next: Joint

        open fun remove() {
            prev.next = this.next
            next.prev = this.prev
        }

        fun prepend(that: Joint) {
            insert(prev, that, this)
        }

        fun append(that: Joint) {
            insert(this, that, next)
        }

        fun insert(pred: Joint, node: Joint, succ: Joint) {
            if (pred === node || succ === node) throw IllegalStateException()
            pred.next = node
            node.prev = pred
            succ.prev = node
            node.next = succ
        }

        fun clear() {
            this.next = this
            this.prev = this
        }

        fun isDegenerate() : Boolean {
            return this.prev === this && this.next === this
        }

    }

    inner class InitialJoint: Joint() {
        init {
            prev = this
            next = this
        }

        override fun remove() {
            throw IllegalStateException()
        }
    }

    inner class DataJoint(val value: T) : Joint() {}

    val initial = InitialJoint()

    fun add(value: T) {
        initial.prepend(DataJoint(value))
    }

    fun clear() {
        initial.clear()
    }

    fun isEmpty(): Boolean = initial.isDegenerate()

    override fun iterator(): MutableIterator<T> = iterator(initial)
    
    fun iterator(start: Joint): MutableIterator<T> = Iterator(start)

    inner class Iterator : MutableIterator<T> {

        lateinit var current : LoopLinkedList<T>.Joint

        constructor(start: Joint) {
            this.current = start
        }

        override fun hasNext(): Boolean = current.next !is InitialJoint

        override fun next(): T {
            this.current = current.next
            if (current !is DataJoint) throw NoSuchElementException()
            return (current as DataJoint).value
        }

        override fun remove() {
            val prev = current.prev
            current.remove()
            this.current = prev
        }

    }
}

