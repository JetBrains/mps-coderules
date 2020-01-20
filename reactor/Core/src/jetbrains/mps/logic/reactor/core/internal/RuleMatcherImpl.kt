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
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.*
import java.util.*
import kotlin.collections.ArrayList


/**
 * This implementation of [RuleMatcher] is based on a simple algorithm which enumerates all possible
 * permutations of occurrences potentially matching the rule's head.
 *
 * Optimizations are in place to cut out permutations that don't fit for the reason that the arguments are mismatched
 * and/or logical variables are not unifiable with the substitutions calculated previously.
 *
 * @author Fedor Isakov
 */
internal class RuleMatcherImpl(private var ruleLookup: RuleLookup,
                               private val tag: Any) : RuleMatcher
{

    val head = lookupRule().run { ArrayList(headKept() + headReplaced()) }

    val propagation = lookupRule().headReplaced().count() == 0

    fun lookupRule(): Rule = ruleLookup.lookupRuleByTag(tag) ?: throw IllegalStateException("can't lookup rule by tag: '${tag}'")

    override fun rule() = lookupRule()

    override fun setRuleLookup(ruleLookup: RuleLookup) { this.ruleLookup = ruleLookup }

    override fun newProbe(): RuleMatchingProbe =
        RuleMatchFront(emptyList(),
                        emptyList(),
                        Sets.of(IntArray(head.size).toSignature()),
                        Sets.of(),
                        Sets.of())
            .also { probe = it }

    override fun probe(): RuleMatchingProbe = probe ?: newProbe()

    private var probe: RuleMatchingProbe? = null

    inner class RuleMatchFront(private val trunkNodes: List<MatchNode>,
                               private val leafNodes: List<MatchNode>,
                               private val leafSignatures: PersSet<Signature>,
                               private val seenOccurrences: PersSet<Int>,
                               private val consumedSignatures: PersSet<Signature>) : RuleMatchingProbe
    {
        override fun rule(): Rule = lookupRule()

        override fun matches(): Collection<RuleMatchImpl> =
            leafNodes
                .filter { node -> !consumedSignatures.contains(node.signature()) }
                .map { node -> node.toRuleMatch() }

        override fun consume(ruleMatch: RuleMatchEx): RuleMatchingProbe =
            RuleMatchFront(trunkNodes,
                           leafNodes,
                            leafSignatures,
                            seenOccurrences,
                            consumedSignatures.put(ruleMatch.signatureArray().toSignature()))

        override fun forget(ruleMatch: RuleMatchEx): RuleMatchingProbe =
            RuleMatchFront(trunkNodes,
                            leafNodes,
                            leafSignatures,
                            seenOccurrences,
                            consumedSignatures.without(ruleMatch.signatureArray().toSignature()))

        override fun expand(occ: Occurrence): RuleMatchingProbe =
            expand(occ, bitSetOfOnes(head.size))

        /**
         * Expands the front by creating new leaf nodes that match the occurrence.
         * Mask specifies possible slots for the occurrence.
         */
        override fun expand(occ: Occurrence, mask: BitSet, profiler: Profiler?): RuleMatchFront {
            val reactivated = seenOccurrences.contains(occ.identity)
            val newSeen = if (reactivated) seenOccurrences else seenOccurrences.put(occ.identity)
            val newTrunkNodes = ArrayList<MatchNode>(trunkNodes.size).apply { addAll(trunkNodes) }
            val newLeafNodes = arrayListOf<MatchNode>()
            var newSignatures = leafSignatures
            val expanded = ArrayList<MatchNode>()
            val effMask = mask.clone() as BitSet

            for (node in (trunkNodes.asSequence() + BaseMatchNode())) {
                effMask.clear()
                effMask.or(mask)
                effMask.and(node.vacant)
//                val effMask = mask.copyApply { and(node.vacant) }
//                profiler.profile("expand_node1_${occ.constraint.symbol()}") {

                    if (!(effMask.isEmpty || node is MatchNode && node.hasOccurrence(occ))) {
                                            
                        expanded.clear()

                        val it = effMask.allSetBits()
                        while (it.hasNext()) {
                            val headIdx = it.next()
                            val subst = if (node is MatchNode) node.subst else emptySubst()
                            with(createOccurrenceMatcher(subst)) {
                                if (matches(head[headIdx], occ)) {
                                    expanded.add(MatchNode(subst(), node, occ, headIdx))
                                }
                            }
                        }

                        for (ex in expanded) {
                            if (ex.leaf) {
                                // ensure reactivated have effect
                                val signature = ex.signature()
                                if (!reactivated && newSignatures.contains(signature)) break
                                // ...unless propagation (to avoid cycles)
                                if (reactivated && propagation && consumedSignatures.contains(signature)) break
                                newLeafNodes.add(ex)
                                newSignatures = newSignatures.put(signature)
                            }
                            newTrunkNodes.add(ex)

                        }
                    }
                }

            return RuleMatchFront(newTrunkNodes, newLeafNodes, newSignatures, newSeen, consumedSignatures)
        }

        override fun contract(occ: Occurrence): RuleMatchFront {
            val newTrunkNodes = arrayListOf<MatchNode>()
            var newSignatures = Sets.of<Signature>()
            for (node in trunkNodes) {
                if (!node.hasOccurrence(occ)) {
                    newTrunkNodes.add(node)
                    if (node.leaf) {
                        newSignatures = newSignatures.without(node.signature())
                    }
                }
            }

            return RuleMatchFront(newTrunkNodes, emptyList(), newSignatures, seenOccurrences, consumedSignatures)
        }

        override fun forgetConsumed(occ: Occurrence): RuleMatchFront {
            val newConsumed = Sets.copyOf(consumedSignatures.filter{ !it.contains(occ.identity) })
            return RuleMatchFront(trunkNodes, leafNodes, leafSignatures, seenOccurrences, newConsumed) // NB: not modifying genId
        }

        override fun forgetExpanded(occ: Occurrence): RuleMatchFront {
            val newSeen = seenOccurrences.without(occ.identity)
            return RuleMatchFront(trunkNodes, leafNodes, leafSignatures, newSeen, consumedSignatures) // NB: not modifying genId
        }

    }

    open inner class BaseMatchNode(val vacant: BitSet = bitSetOfOnes(head.size)) {

        /**
         * Folds the path to the root.
         */
        inline protected fun <T> fold(init: T, action: (T, MatchNode) -> T): T {
            var rn = this
            var curr = init
            while (rn is MatchNode) {
                curr = action(curr, rn)
                rn = rn.parent
            }
            return curr
        }

    }

    inner class MatchNode(val subst: Subst,
                          val parent: BaseMatchNode,
                          val occurrence: Occurrence,
                          val headIndex: Int) : BaseMatchNode(parent.vacant.clearBit(headIndex))
    {
        val leaf = vacant.cardinality() == 0

        val trail: PersSet<Int> =
            if (parent is MatchNode) parent.trail.put(occurrence.identity) else Sets.of(occurrence.identity)

        fun constraint(): Constraint = head[headIndex]

        // a signature is a (partial) set of constraint occurrences that belong to this node
        fun signature(): Signature =
            fold(IntArray(head.size).toSignature()) { s, n ->
                s.apply { set(n.headIndex, n.occurrence.identity) } }

        fun hasOccurrence(occ: Occurrence): Boolean = trail.contains(occ.identity)
//            fold(false) { flag, n -> flag || n.occurrence === occ } // referential equality !

        fun matches() : Subst? =
            fold<OccurrenceMatcher?>(createOccurrenceMatcher(emptySubst())) { matcher, n ->
                matcher?.let {
                    if (it.matches(n.constraint(), n.occurrence)) it else null
                }
            }?.subst()

        fun toRuleMatch(): RuleMatchImpl {
            val matched: Array<Occurrence> =
                fold(arrayOfNulls<Occurrence>(head.size)) { arr, rn ->
                    arr[rn.headIndex] = rn.occurrence; arr
                } as Array<Occurrence>

            return RuleMatchImpl(lookupRule(),
                subst,
                ArrayList(matched.take(lookupRule().headKept().count())),
                ArrayList(matched.takeLast(lookupRule().headReplaced().count())))
        }
    }


}
