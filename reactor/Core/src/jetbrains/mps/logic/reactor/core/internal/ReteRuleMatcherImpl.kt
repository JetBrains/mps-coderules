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

import gnu.trove.set.hash.TIntHashSet
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

typealias Footprint = TIntHashSet

fun footprintOf(): Footprint = TIntHashSet()

fun Signature.toFootprint() = TIntHashSet(this)

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
        
        var lastGeneration = Generation(arrayListOf(Layer(headSize, InitialNode())))

        val consumedSignatures = HashSet<Signature>()

        abstract inner class ReteNode
        {
            abstract val signature: Signature

            abstract fun subst(): Subst

            abstract fun occupiesHeadPosition(headPos: Int) : Boolean

            abstract fun containsOccurrence(occ: Occurrence) : Boolean

            abstract fun combine(that: AlphaNode, subst: Subst): ReteNode

            abstract fun collect(occArray: Array<Occurrence?>)

        }

        inner class InitialNode() : ReteNode() {

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
         * A layer extends incrementally its prototype with new nodes.
         */
        inner class Layer(val vacancies: Int, private var block: DelayedBlock? = null, proto: Layer? = null) {

            val final = (vacancies == 0)

            private val footprint: Footprint by lazy(LazyThreadSafetyMode.NONE) {
                (proto?.complete()?.footprint ?: footprintOf())
            }

            private val nodesList : MutableList<ReteNode> by lazy(LazyThreadSafetyMode.NONE) {
                val protoNodes = proto?.complete()?.nodesList ?: ArrayList(4)
                this.startIdx = protoNodes.size
                protoNodes
            }

            // guaranteed to be initialized to proper value before this var is accessed
            private var startIdx : Int = -1

            /** constructs initial layer containing only [InitialNode] */
            constructor(vacancies: Int, node: ReteNode) : this (vacancies) {
                nodesList.add(node)
            }

            fun containsOccurrence(occ: Occurrence): Boolean {
                return footprint.contains(occ.identity)
            }

            fun ownNodes() : Iterable<ReteNode> {
                complete()
                return nodesList.subList(startIdx, nodesList.size)
            }

            fun allNodes(droppedFootprint: Footprint?) : Iterable<ReteNode> {
                complete(droppedFootprint)
                return nodesList
            }

            private fun complete(droppedFootprint: Footprint? = null) : Layer {
                 block?.complete(droppedFootprint) {
                    nodesList.add(it)
                    when (it) {
                        is AlphaNode -> footprint.addAll(it.signature)
                        is BetaNode -> footprint.addAll(it.signature)
                    }
                }
                this.block = null
                return this
            }
        }

        /**
         * An experimental feature that should allow for delayed update of network nodes. 
         */
        abstract inner class DelayedBlock(val occurrence: Occurrence) {

            abstract fun proto(): Layer?

            abstract fun complete(droppedFootprint: Footprint?, sink: (ReteNode) -> Unit)

            abstract fun containsOccurrence(occ: Occurrence): Boolean

        }

        inner class IntroBlock (occurrence: Occurrence, val headPosMask: BitSet, val onTopOf: Layer) :
            DelayedBlock(occurrence)
        {

            override fun proto(): Layer = onTopOf

            override fun complete(droppedFootprint: Footprint?, sink: (ReteNode) -> Unit) {
                if (droppedFootprint?.contains(occurrence.identity) ?: false) return
                
                for (n in onTopOf.allNodes(droppedFootprint)) {
                    if (n.containsOccurrence(occurrence)) continue
                        val it = headPosMask.allSetBits()
                        while (it.hasNext()) {
                            val headPos = it.next()
                            if (n.occupiesHeadPosition(headPos)) continue

                            with(createOccurrenceMatcher(n.subst())) {
                                if (matches(head[headPos], occurrence)) {
                                    val intro = AlphaNode(occurrence, headPos, subst())
                                    sink(n.combine(intro, subst()))
                            }
                        }
                    }
                }
            }

            override fun containsOccurrence(occ: Occurrence): Boolean =
                occurrence === occ || onTopOf.containsOccurrence(occ)           // reference eq!
        }

        inner class DropBlock (occurrence: Occurrence, val from: Layer) : DelayedBlock(occurrence) {

            override fun proto(): Layer? = null

            override fun complete(droppedFootprint: Footprint?, sink: (ReteNode) -> Unit) {
                if (droppedFootprint?.contains(occurrence.identity) ?: false) return
                droppedFootprint?.add(occurrence.identity)
                for (n in from.allNodes(droppedFootprint)) {
                    if (!n.containsOccurrence(occurrence)) {
                        sink(n)
                    }
                }
            }

            override fun containsOccurrence(occ: Occurrence): Boolean  =
                occurrence !== occ && from.containsOccurrence(occ)              // reference neq!
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

            fun introduce(occurrence: Occurrence, headPosMask: BitSet): Generation {
                val reactivated =  layers.first().containsOccurrence(occurrence)

                // propagation history
                if (propagation && reactivated) {
                    // all matches are already in the "final" layer
                    return this;

                } else {
                    val newLayers = ArrayList<Layer>(4)

                    var lastLayer: Layer? = null
                    for (currLayer in layers) {
                        if (!currLayer.final) {
                            newLayers.add(Layer(
                                                currLayer.vacancies - 1,
                                                IntroBlock(occurrence, headPosMask, currLayer),
                                                lastLayer))

                        } else if (reactivated) {
                            newLayers.add(currLayer)
                        }

                        lastLayer = currLayer
                    }

                    newLayers.add(Layer(headSize, InitialNode()))
                    return Generation(newLayers)
                }
            }

            fun drop(occurrence: Occurrence): Generation {
                val newLayers = ArrayList<Layer>(4)
                for (currLayer in layers) {
                    val newLayer = Layer(currLayer.vacancies, DropBlock(occurrence, currLayer))
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

    }

}