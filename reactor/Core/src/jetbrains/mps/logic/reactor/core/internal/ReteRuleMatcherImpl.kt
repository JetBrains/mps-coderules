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

import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.allSetBits
import jetbrains.mps.logic.reactor.util.bitSet
import jetbrains.mps.logic.reactor.util.bitSetOfOnes
import jetbrains.mps.logic.reactor.util.copyApply
import java.util.*

/**
 * An alternative implementation of RuleMatcherImpl. Has similar asymptotic characteristics as the default implementation,
 * but in practice is a bit slower.
 *
 * Loosely based on "Rete network" algorithm.
 *
 * @author Fedor Isakov
 */
internal class ReteRuleMatcherImpl(val rule: Rule) : RuleMatcher {

    val head = (rule.headKept() + rule.headReplaced()).toList()

    val propagation = rule.headReplaced().count() == 0

    override fun probe(): ReteNetwork = ReteNetwork(head.size)

    inner class ReteNetwork(val headSize: Int) : RuleMatchingProbe {

        init {
            // rules with empty head are not allowed
            assert(headSize > 0)
        }

        val skipOccIndices = BitSet()

        val seenOcc2Idx = IdentityHashMap<ConstraintOccurrence, Int>()

        var nextOccIdx: Int = 0

        val meta2Idx = HashMap<MetaLogical<*>, Int>()

        var nextMetaIdx: Int = 0

        val generations =
                            arrayListOf(Generation(
                                arrayListOf(Layer(headSize, InitialNode(BitSet())))))

        abstract inner class ReteNode
        {

            fun isSubstCompatible (that: ReteNode) : Boolean {
                val thisMetaIndices = this.getMeta()
                val thatMetaIndices = that.getMeta()
                if (thisMetaIndices == null || thatMetaIndices == null) return true

                if (thisMetaIndices.cardinality() != 0 && thatMetaIndices.cardinality() != 0) {
                    val it = thisMetaIndices.copyApply { and(thatMetaIndices) }.allSetBits()
                    while (it.hasNext()) {
                        val shared = it.next()
                        if (!createOccurrenceMatcher().match(this.getSubst(shared), that.getSubst(shared))) return false
                    }
                }

                return true
            }

            abstract fun isCompatible(that: AlphaNode) : Boolean

            abstract fun containsOccurrence(skipOccIndices: BitSet) : Boolean

            abstract fun getMeta(): BitSet?

            abstract fun getSubst(metaIdx: Int): Any?

            abstract fun combine(that: AlphaNode): ReteNode

            open fun collectData(occArray: Array<Occurrence?>, allSubst: Subst): Subst = allSubst

        }

        inner class InitialNode(val occIndices: BitSet) : ReteNode() {

            override fun getMeta(): BitSet? = null

            override fun getSubst(metaIdx: Int): Any? = null

            override fun isCompatible(that: AlphaNode): Boolean = !occIndices[that.occIdx]

            override fun containsOccurrence(skipOccIndices: BitSet) =
                !this.occIndices.copyApply { and(skipOccIndices) }.isEmpty

            override fun combine(that: AlphaNode): ReteNode = that
        }

        /**
         * A network node corresponding to a single occurrence matched against a constraint.
         */
        inner class AlphaNode(val occurrence: Occurrence,
                              val posInHead: Int,
                              val subst: Subst) : ReteNode()
        {
            val metaIndices: BitSet? =
                if (!subst.isEmpty) bitSet(subst.keys().map { metaLogical -> indexOf(metaLogical) }) else null

            val occIdx = indexOf(occurrence)

            private val idx2subst = HashMap<Int, Any?>()

            init {
                for ((meta, subst) in subst.asMap().entries) {
                    idx2subst[indexOf(meta)] = subst
                }
            }

            override fun getMeta(): BitSet? = metaIndices

            override fun isCompatible(that: AlphaNode): Boolean {
                // check that the occurrence-position pair is unique
                if (this.occIdx == that.occIdx || this.posInHead == that.posInHead) return false

                return isSubstCompatible(that)
            }

            override fun containsOccurrence(skipOccIndices: BitSet): Boolean = skipOccIndices[occIdx]

            override fun getSubst(metaIdx: Int): Any? = idx2subst[metaIdx]

            override fun combine(that: AlphaNode): ReteNode = BetaNode(this, that)

            override fun collectData(occArray: Array<Occurrence?>, allSubst: Subst): Subst {
                occArray[posInHead] = occurrence
                return subst.fold(allSubst) { acc, (k, v) -> acc.put(k, v) }
            }
        }


        /**
         * A "deep" network node. Always has two parents, one of which is always an AlphaNode.
         */
        inner class BetaNode : ReteNode {

            val left: ReteNode

            val right: AlphaNode

            val positions: BitSet

            val occIndices: BitSet

            val metaIndices: BitSet?

            constructor(left: AlphaNode, right: AlphaNode) {
                this.left = left
                this.right = right
                this.positions = bitSet(left.posInHead).apply { set(right.posInHead) }
                this.occIndices = bitSet(left.occIdx).apply { set(right.occIdx) }
                this.metaIndices = left.metaIndices?.let {
                    if (right.metaIndices != null) it.copyApply { or(right.metaIndices) } else it } ?:
                    right.metaIndices
            }

            constructor(left: BetaNode, right: AlphaNode) {
                this.left = left
                this.right = right
                this.positions = left.positions.copyApply { set(right.posInHead) }
                this.occIndices = left.occIndices.copyApply { set(right.occIdx) }
                this.metaIndices = left.metaIndices?.let {
                    if (right.metaIndices != null) it.copyApply { or(right.metaIndices) } else it } ?:
                    right.metaIndices

            }

            override fun getMeta(): BitSet? = metaIndices

            override fun isCompatible(that: AlphaNode): Boolean {
                // check that the occurrence-position pair is unique
                if (occIndices[that.occIdx] || positions[that.posInHead]) return false

                return isSubstCompatible(that)
            }

            override fun containsOccurrence(skipOccIndices: BitSet): Boolean =
                !this.occIndices.copyApply { and(skipOccIndices) }.isEmpty

            override fun getSubst(metaIdx: Int): Any? = right.getSubst(metaIdx) ?: left.getSubst(metaIdx)

            override fun combine(that: AlphaNode): ReteNode = BetaNode(this, that)

            override fun collectData(occArray: Array<Occurrence?>, allSubst: Subst): Subst =
                left.collectData(occArray, right.collectData(occArray, allSubst))

        }

        inner class Layer(val vacancies: Int, proto: Layer? = null) {

            val nodesList : MutableList<ReteNode> = proto?.nodesList ?: ArrayList(4)

            val startIdx : Int = nodesList.size

            val final = (vacancies == 0)

            constructor(vacancies: Int, node: ReteNode) : this (vacancies) {
                nodesList.add(node)
            }

            fun addNode(n: ReteNode) {
                nodesList.add(n)
            }

            fun nodes() : Iterable<ReteNode> = nodesList.subList(startIdx, nodesList.size)

            fun allNodes() : Iterable<ReteNode> = nodesList

        }

        inner class Generation(val layers: List<Layer>) {

            init {
                assert(layers.isNotEmpty())
            }

            fun introduce(occIdx: Int, alphaNodes: Collection<AlphaNode>): Generation {
                // propagation history
                val initLayer = layers.last()
                assert(initLayer.nodesList.size == 1)
                val initialNode = initLayer.nodesList.first() as InitialNode
                if (propagation && initialNode.occIndices[occIdx]) {
                    // introducing an already seen constraint
                    val newLayers = ArrayList<Layer>(4)
                    for (la in layers) {
                        if (la != initLayer) newLayers.add(Layer(la.vacancies, la))
                    }
                    newLayers.add(Layer(headSize, InitialNode(initialNode.occIndices)))

                    return Generation(newLayers)

                } else {
                    val newLayers = ArrayList<Layer>(4)
                    val occIndices = BitSet()

                    var last: Layer? = null
                    for (curr in layers) {
                        if (!curr.final) {
                            val newLayer = Layer(curr.vacancies - 1, last)
                            for (n in curr.allNodes()) {
                                for (intro in alphaNodes) {
                                    if (n.isCompatible(intro)) {
                                        newLayer.addNode(n.combine(intro))
                                        occIndices.set(intro.occIdx)
                                    }
                                }
                            }
                            newLayers.add(newLayer)
                        }

                        last = curr
                    }

                    occIndices.or(initialNode.occIndices)
                    newLayers.add(Layer(headSize, InitialNode(occIndices)))

                    return Generation(newLayers)
                }
            }


            fun matches(): Collection<RuleMatchImpl> {
                val topLayer = layers.first()
                if (topLayer.final) {

                    val matches = ArrayList<RuleMatchImpl>()
                    for (n in topLayer.nodes()) {
                        // any excluded occurrences?
                        if (n.containsOccurrence(skipOccIndices)) continue

                        val allSubst : Subst = emptySubst()
                        val occArray = arrayOfNulls<Occurrence>(headSize)
                        n.collectData(occArray, allSubst)

                        val occList = occArray.toList() as List<Occurrence>
                        val keptCount = rule.headKept().count()

                        matches.add(RuleMatchImpl(rule,
                            allSubst,
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

        override fun rule(): Rule = rule

        // for tests only
        override fun expand(occ: Occurrence): ReteNetwork =
            expand(occ, bitSetOfOnes(headSize))

        override fun expand(occ: Occurrence, mask: BitSet): ReteNetwork {
            // raising from the dead, huh?
            val occIdx = indexOf(occ)
            skipOccIndices.clear(occIdx)

            val alphaNodes = arrayListOf<AlphaNode>()
            val it = mask.allSetBits()
            while (it.hasNext()){

                val posInHead = it.next()
                val matcher = createOccurrenceMatcher(emptySubst())
                if (matcher.matches(head[posInHead], occ)) {
                    alphaNodes.add(AlphaNode(occ, posInHead, matcher.substitution()))
                }

            }

            val newGeneration = generations.last().introduce(occIdx, alphaNodes)
            generations.add(newGeneration)
            return this
        }

        override fun contract(occ: Occurrence): ReteNetwork {
            skipOccIndices.set(indexOf(occ))
            return this
        }

        override fun forgetSeen(occ: Occurrence): ReteNetwork {
            TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
        }

        override fun matches(): Collection<RuleMatchImpl> = generations.last().matches()

        override fun consume(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
        }

        override fun forget(ruleMatch: RuleMatchEx): RuleMatchingProbe {
            TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
        }

        fun indexOf(occurrence: ConstraintOccurrence): Int =
            seenOcc2Idx[occurrence] ?: (nextOccIdx++).also { idx -> seenOcc2Idx[occurrence] = idx }


        fun indexOf(metaLogical: MetaLogical<*>): Int =
            meta2Idx[metaLogical] ?: (nextMetaIdx++).also { idx -> meta2Idx[metaLogical] = idx }

    }

}