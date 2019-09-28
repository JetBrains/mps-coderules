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

import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.*
import java.util.*
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
internal class ReteRuleMatcherImpl(private val ruleLookup: RuleLookup,
                                   private val tag: Any) : RuleMatcher
{

    val head = (lookupRule().headKept() + lookupRule().headReplaced()).toList()

    val propagation = lookupRule().headReplaced().count() == 0

    fun lookupRule(): Rule = ruleLookup.lookupRuleByTag(tag) ?: throw IllegalStateException("can't lookup rule by tag: '${tag}'")

    override fun probe(): ReteNetwork = ReteNetwork(head.size)

    inner class ReteNetwork(val headSize: Int) : RuleMatchingProbe {

        init {
            // rules with empty head are not allowed
            assert(headSize > 0)
        }

        val seenOcc2Idx = IdentityHashMap<ConstraintOccurrence, Int>()

        var nextOccIdx: Int = 0

        var lastGeneration = Generation(arrayListOf(Layer(headSize, InitialNode())))

        val consumedSignatures = HashSet<Signature>()

        abstract inner class ReteNode
        {

            abstract fun subst(): Subst

            abstract fun occupiesHeadPosition(headPos: Int) : Boolean

            abstract fun containsOccurrence(occIdx: Int) : Boolean

            abstract fun combine(that: AlphaNode, subst: Subst): ReteNode

            abstract fun collect(occArray: Array<Occurrence?>)

        }

        inner class InitialNode() : ReteNode() {

            override fun subst(): Subst = emptySubst()

            override fun occupiesHeadPosition(headPos: Int): Boolean = false

            override fun containsOccurrence(occIdx: Int): Boolean = false

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
            val occIndex = indexOf(occurrence)

            override fun subst(): Subst = subst

            override fun occupiesHeadPosition(headPos: Int): Boolean = posInHead == headPos

            override fun containsOccurrence(occIdx: Int): Boolean = occIndex == occIdx

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = BetaNode(this, that, subst)
            
            override fun collect(occArray: Array<Occurrence?>) {
                occArray[posInHead] = occurrence
            }
        }


        /**
         * A "deep" network node. Always has two parents, one of which is always an AlphaNode.
         */
        inner class BetaNode : ReteNode {

            val left: ReteNode

            val right: AlphaNode

            val subst: Subst

            val positions: BitSet

            val occIndices: BitSet

            constructor(left: AlphaNode, right: AlphaNode, subst: Subst) {
                this.left = left
                this.right = right
                this.subst = subst
                this.positions = bitSet(left.posInHead).apply { set(right.posInHead) }
                this.occIndices = bitSet(left.occIndex).apply { set(right.occIndex) }
            }

            constructor(left: BetaNode, right: AlphaNode, subst: Subst) {
                this.left = left
                this.right = right
                this.subst = subst
                this.positions = left.positions.copyApply { set(right.posInHead) }
                this.occIndices = left.occIndices.copyApply { set(right.occIndex) }

            }

            override fun subst(): Subst = subst

            override fun occupiesHeadPosition(headPos: Int): Boolean = positions[headPos]

            override fun containsOccurrence(occIdx: Int): Boolean = occIndices[occIdx]

            override fun combine(that: AlphaNode, subst: Subst): ReteNode = BetaNode(this, that, subst)
            
            override fun collect(occArray: Array<Occurrence?>) {
                left.collect(occArray)
                right.collect(occArray)
            }
        }

        /**
         * A layer extends incrementally its prototype with new nodes.
         */
        inner class Layer(val vacancies: Int, private var block: DelayedBlock? = null, proto: Layer? = null) {

            val final = (vacancies == 0)

            private val occIndices: BitSet = (proto?.complete()?.occIndices?.clone() ?: BitSet()) as BitSet

            private val nodesList : MutableList<ReteNode> = proto?.complete()?.nodesList ?: ArrayList(4)

            private var startIdx : Int = nodesList.size

            /** constructs initial layer containing only [InitialNode] */
            constructor(vacancies: Int, node: ReteNode) : this (vacancies) {
                nodesList.add(node)
            }

            fun isEmpty(): Boolean = TODO() //nodesList.isEmpty() && (queue?.isEmpty() ?: true)

            fun containsOccurrence(occIdx: Int): Boolean {
                return occIndices[occIdx]
            }

            fun ownNodes() : Iterable<ReteNode> {
                complete()
                return nodesList.subList(startIdx, nodesList.size)
            }

            fun allNodes() : Iterable<ReteNode> {
                complete()
                return nodesList
            }

            private fun complete() : Layer {
                block?.complete {
                    nodesList.add(it)
                    when(it) {
                        is AlphaNode -> occIndices.set(it.occIndex)
                        is BetaNode -> occIndices.or(it.occIndices)
                    }
                }
                this.block = null
                return this
            }
        }

        /**
         * An experimental feature that should allow for delayed update of network nodes. 
         */
        abstract inner class DelayedBlock {

            abstract fun proto(): Layer?

            abstract fun complete(sink: (ReteNode) -> Unit)

            abstract fun isEmpty(): Boolean

            abstract fun containsOccurrence(occIdx: Int): Boolean

        }

        inner class IntroBlock (val occ: Occurrence, val headPosMask: BitSet, val onTopOf: Layer): DelayedBlock() {

            val occIdx = indexOf(occ)
            
            override fun proto(): Layer = onTopOf

            override fun complete(sink: (ReteNode) -> Unit) {


                    val it = headPosMask.allSetBits()
                    while (it.hasNext()) {
                        val headPos = it.next()
                        for (n in onTopOf.allNodes()) {
                            if (n.containsOccurrence(occIdx) || n.occupiesHeadPosition(headPos)) continue

                            with(createOccurrenceMatcher(n.subst())) {
                                if (matches(head[headPos], occ)) {
                                    val intro = AlphaNode(occ, headPos, subst())
                                    sink(n.combine(intro, subst()))
                                }
                            }
                        }
                    }

            }

            override fun isEmpty(): Boolean = onTopOf.isEmpty()

            override fun containsOccurrence(occIdx: Int): Boolean =
                occIdx == this.occIdx || onTopOf.containsOccurrence(occIdx)
        }

        inner class DropBlock (val occ: Occurrence, val from: Layer) : DelayedBlock() {

            val occIdx = indexOf(occ)

            override fun proto(): Layer? = null

            override fun complete(sink: (ReteNode) -> Unit) {
                for (n in from.allNodes()) {
                    if (!n.containsOccurrence(occIdx)) {
                        sink(n)
                    }
                }
            }

            override fun isEmpty(): Boolean = from.isEmpty()

            override fun containsOccurrence(occIdx: Int): Boolean  =
                occIdx != this.occIdx && from.containsOccurrence(occIdx)
        }

        /**
         * Collection of [Layer] instances.
         * The new layers are prepended to the [layers] list.
         * Invariant: the last layer is always the initial one.
         */
        inner class Generation(val layers: List<Layer>) {

            init {
                assert(layers.isNotEmpty())
            }

            fun introduce(occ: Occurrence,  headPosMask: BitSet): Generation {
                val occIdx = indexOf(occ)
                val reactivated = layers.first().containsOccurrence(occIdx)

                // propagation history
                if (propagation && reactivated) {
                    // all matches are already in the "final" layer
                    return this;

                } else {
                    val newLayers = ArrayList<Layer>(4)

                    var lastLayer: Layer? = null
                    for (currLayer in layers) {
                        if (!currLayer.final) {
                            val newLayer = Layer(currLayer.vacancies - 1, IntroBlock(occ, headPosMask, currLayer), lastLayer)

                            newLayers.add(newLayer)

                        } else if (reactivated) {
                            newLayers.add(currLayer)
                        }

                        lastLayer = currLayer
                    }

                    newLayers.add(Layer(headSize, InitialNode()))
                    return Generation(newLayers)
                }
            }

            fun drop(occ: Occurrence): Generation {
                val newLayers = ArrayList<Layer>(4)
                for (currLayer in layers) {
                    val newLayer = Layer(currLayer.vacancies, DropBlock(occ, currLayer))
                    newLayers.add(newLayer)
                }
                return Generation(newLayers)
            }

            fun matches(): Collection<RuleMatchImpl> {
                val topLayer = layers.first()
                if (topLayer.final) {
                    val uniqueSignatures = HashSet<Signature>()
                    val matches = ArrayList<RuleMatchImpl>()
                    for (n in topLayer.ownNodes()) {
                        val occArray = arrayOfNulls<Occurrence>(headSize)
                        n.collect(occArray)
                        val signature = occArray.map { it!!.identity }.toIntArray().toSignature()
                        if (consumedSignatures.contains(signature) || uniqueSignatures.contains(signature)) continue
                        uniqueSignatures.add(signature)

                        val occList = occArray.toList() as List<Occurrence>
                        val keptCount = lookupRule().headKept().count()

                        matches.add(RuleMatchImpl(lookupRule(),
                            n.subst(),
                            occList.subList(0, keptCount),
                            occList.subList(keptCount, occList.size)))
                    }
                    return matches

                }
                else {
                    return emptyList()
                }
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

        override fun forgetSeen(occ: Occurrence): ReteNetwork {
            return this
        }

        override fun forgetConsumed(occ: Occurrence): ReteNetwork {
            consumedSignatures.removeIf({ it.contains(occ.identity) })
            return this
        }

        override fun matches(): Collection<RuleMatchImpl> = lastGeneration.matches()

        override fun consume(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            consumedSignatures.add(ruleMatch.signatureArray().toSignature())
            return this
        }

        override fun forget(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            consumedSignatures.add(ruleMatch.signatureArray().toSignature())
            return this
        }

        fun indexOf(occurrence: ConstraintOccurrence): Int =
            seenOcc2Idx[occurrence] ?: (nextOccIdx++).also { idx -> seenOcc2Idx[occurrence] = idx }

    }

}