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

    override fun rule() = lookupRule()

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
            abstract fun fillSignature(signature: Signature)

            abstract fun subst(): Subst

            abstract fun occupiesHeadPosition(headPos: Int) : Boolean

            abstract fun combine(that: AlphaNode, subst: Subst): ReteNode

            abstract fun collect(occArray: Array<Occurrence?>)

            abstract fun addDependent(follower: ReteNode)

            abstract fun invalidate()

            abstract fun isInvalid(): Boolean

        }

        inner class InitialNode() : ReteNode() {

            override fun fillSignature(signature: Signature) {}

            override fun subst(): Subst = emptySubst()

            override fun occupiesHeadPosition(headPos: Int): Boolean = false

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = that

            override fun collect(occArray: Array<Occurrence?>) {}

            override fun addDependent(follower: ReteNode) {}

            override fun invalidate() {}
            
            override fun isInvalid(): Boolean = false
        }

        /**
         * A network node corresponding to a single occurrence matched against a constraint.
         */
        inner class AlphaNode(val occurrence: Occurrence,
                              val posInHead: Int,
                              val subst: Subst) : ReteNode()
        {
            val dependent = arrayListOf<ReteNode>()

            var invalid = false

            override fun fillSignature(signature: Signature) {
                signature.set(posInHead, occurrence.identity)
            }

            override fun subst(): Subst = subst

            override fun occupiesHeadPosition(headPos: Int): Boolean = posInHead == headPos

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = BetaNode(this, that, subst)

            override fun collect(occArray: Array<Occurrence?>) {
                occArray[posInHead] = occurrence
            }

            override fun addDependent(follower: ReteNode) {
                dependent.add(follower)
            }

            override fun invalidate() {
                this.invalid = true
                for (node in dependent) {
                    node.invalidate()
                }
            }

            override fun isInvalid(): Boolean = invalid
        }

        /**
         * A "deep" network node. Always has two parents, one of which is always an AlphaNode.
         */
        inner class BetaNode : ReteNode {

            val left: ReteNode

            val right: AlphaNode

            val subst: Subst

            val positions: BitSet

            val dependent = arrayListOf<ReteNode>()

            var invalid = false

            constructor(left: AlphaNode, right: AlphaNode, subst: Subst) {
                this.left = left
                this.right = right
                left.addDependent(this)
                right.addDependent(this)
                this.subst = subst
                this.positions = bitSet(left.posInHead).apply { set(right.posInHead) }

            }

            constructor(left: BetaNode, right: AlphaNode, subst: Subst) {
                this.left = left
                this.right = right
                left.addDependent(this)
                right.addDependent(this)
                this.subst = subst
                this.positions = left.positions.copyApply { set(right.posInHead) }
            }

            override fun fillSignature(signature: Signature) {
                left.fillSignature(signature)
                right.fillSignature(signature)
            }

            override fun subst(): Subst = subst

            override fun occupiesHeadPosition(headPos: Int): Boolean = positions[headPos]

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = BetaNode(this, that, subst)

            override fun collect(occArray: Array<Occurrence?>) {
                left.collect(occArray)
                right.collect(occArray)
            }

            override fun addDependent(follower: ReteNode) {
                dependent.add(follower)
            }
            
            override fun invalidate() {
                this.invalid = true
                for (node in dependent) {
                    node.invalidate()
                }
            }

            override fun isInvalid(): Boolean = invalid
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

            private val introNodes = HashMap<Int, MutableList<ReteNode>>()

            private val nodeList = UnionFindLinkedList<ReteNode>()

            private val updateQueue: MutableList<UpdateBlock> = LinkedList()

            var primed = false

            /** constructs initial layer containing only [InitialNode] */
            constructor(node: ReteNode) : this(){
                nodeList.add(node)
            }

            fun hasOccurrences(): Boolean
                = introTrail.size() > 0 || updateQueue.size > 0

            fun containsOccurrence(occ: Occurrence): Boolean {
                return introTrail.contains(occ.identity)
            }

            fun forgetContains(occ: Occurrence) {
                // FIXME this breaks the internal invariant
                introTrail.remove(occ.identity)
            }

            fun iterate(): MutableIterator<ReteNode> = nodeList.iterator()

            fun nextNode(it: MutableIterator<ReteNode>): ReteNode? {
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
                return block.update(nodeList, introTrail, introNodes)
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

            abstract fun update(nodes: UnionFindLinkedList<ReteNode>, introTrail: Trail, introNodes: MutableMap<Int, MutableList<ReteNode>>): Boolean

        }

        inner class IntroBlock (occurrence: Occurrence,
                                val headPosMask: BitSet,
                                val onTopOf: Layer) : UpdateBlock(occurrence) {

            var nodesIt: MutableIterator<ReteNode> = onTopOf.iterate()

            override fun reset() {
                // FIXME when enabled the following code causes major slowdown on certain programs
//                nodesIt = onTopOf.iterate()
            }

            override fun update(nodes: UnionFindLinkedList<ReteNode>, introTrail: Trail, introNodes: MutableMap<Int, MutableList<ReteNode>>): Boolean {
                var found = false
                while (true) {
                    val n = onTopOf.nextNode(nodesIt)
                    if (n == null) break
                    if (n.isInvalid()) {
                        nodesIt.remove()
                        continue
                    }

                    val it = headPosMask.allSetBits()
                    while (it.hasNext()) {
                        val headPos = it.next()
                        if (n.occupiesHeadPosition(headPos)) continue

                        with(createOccurrenceMatcher(n.subst())) {
                            if (matches(head[headPos], occurrence)) {
                                val intro = AlphaNode(occurrence, headPos, subst())
                                introNodes.getOrPut(occurrence.identity) { arrayListOf() }.add(intro)
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

            override fun update(nodes: UnionFindLinkedList<ReteNode>, introTrail: Trail, introNodes: MutableMap<Int, MutableList<ReteNode>>): Boolean {
                introNodes.remove(occurrence.identity)?.let {
                    for (n in it) {
                        n.invalidate()
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

            lateinit var nodesIt: MutableIterator<ReteNode>

            private var lastIntroduced: Occurrence? = prev?.lastIntroduced

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

            fun hasOccurrences(): Boolean {
                return layers.any { it.hasOccurrences() }
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
                if (firstAffected >= 0) lastIntroduced = occurrence

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
                for (layer in layers) {
                    layer.forgetContains(occurrence)
                }
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
                    if (n.isInvalid()) {
                        nodesIt.remove()
                        continue
                    }
                    
                    val signature = IntArray(headSize).toSignature()
                    n.fillSignature(signature)
                    val trail = signature.toTrail()
                    if (trail.size() < headSize) continue // has dupes
                    if (lastIntroduced?.let { trail.contains(it.identity) } == false) continue // not relevant match

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

        override fun hasOccurrences(): Boolean {
            return this.lastGeneration.hasOccurrences()
        }

        override fun matches(): Collection<RuleMatchImpl> {
            return lastGeneration.matches
        }

        override fun consume(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            consumedSignatures.add(ruleMatch.signatureArray().toSignature())
            return this
        }

        override fun forget(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            consumedSignatures.remove(ruleMatch.signatureArray().toSignature())
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
        signatures.remove(signature)
        for (id in signature) {
            if (index.containsKey(id)) {
                index.get(id).remove(signature)
                if (index.get(id).isEmpty()) {
                    index.remove(id)
                }
            }
        }
    }

    fun contains(signature: Signature): Boolean = signatures.contains(signature)

    fun removeAllWith(id: Int) {
        if (index.contains(id)) {
            for (s in index[id]) {
                signatures.remove(s)
            }
            index.remove(id)
        }
    }

}

/**
 * Simple linked list with fail-safe iterator.
 * This is a for-purpose implementation of append-only linked list.
 * Adding/removal of elements doesn't invalidate the currently active iterators.
 * The invariants are maintained through application of union-find for internal nodes.
 */
class UnionFindLinkedList<T> : Iterable<T> {

    open inner class Joint {

        var prev: Joint? = null
        var next: Joint? = null
        var rep: Joint = this

        fun unionNext(that: Joint) {
            val prevRep = this.find()
            val nextRep = that.find()
            if (prevRep === nextRep) return
            nextRep.rep = prevRep
            nextRep.prev = nextRep
            prevRep.next = nextRep.next
        }

        fun find(): Joint {
            if (rep == this) return this

            val path = arrayListOf<Joint>()
            var p = this
            while (p.rep !== p) {
                path.add(p)
                p = p.rep
            }
            path.forEach {
                it.rep = p
                it.prev = it
            }
            return p
        }

        fun append(joint: Joint) : Joint {
            this.next = joint
            joint.prev = this
            return joint
        }

        fun remove() {
            val rep = find()
            rep.prev?.run {
                unionNext(rep)
                
            } ?: throw NoSuchElementException()

        }

        fun hasNext(): Boolean = this.next !== null

        fun next(): Joint = this.next ?: throw NoSuchElementException()

    }

    inner class DataJoint(val value: T) : Joint() {
        
    }

    var head = Joint()
    var tail = head

    fun add(value: T) {
        this.tail = tail.find().append(DataJoint(value))
    }

    fun isEmpty(): Boolean = head.hasNext()

    override fun iterator(): MutableIterator<T> = iterator(head)
    
    fun iterator(start: Joint): MutableIterator<T> = Iterator(start)

    inner class Iterator(var current: UnionFindLinkedList<T>.Joint) : MutableIterator<T> {

        override fun hasNext(): Boolean = current.find().hasNext()

        override fun next(): T {
            val crep = current.find()
            if (!crep.hasNext()) throw NoSuchElementException()
            this.current = crep.next()
            return (current as DataJoint).value
        }

        override fun remove() {
            current.find().remove()
        }

    }
}

