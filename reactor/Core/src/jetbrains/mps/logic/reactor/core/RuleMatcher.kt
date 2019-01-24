/*
 * Copyright 2014-2018 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.Sets
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Set as PersSet
import com.github.andrewoma.dexx.collection.List as PersList
import com.github.andrewoma.dexx.collection.Vector as PersVector
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchRule
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.*
import java.util.*
import kotlin.collections.ArrayList

/**
 * @author Fedor Isakov
 */

class RuleMatcher(val rule: Rule) {

    val head = rule.headKept().toCollection(ArrayList(4)).apply {
                    addAll(rule.headReplaced()) } as List<Constraint>
    
    val propagation = rule.headReplaced().count() == 0

    fun probe(): MatchingProbe = RuleMatchFringe(listOf(MatchNode(emptySubst())),
                                                 Sets.of(),
                                                 Sets.of(),
                                                0)

    inner class RuleMatchFringe(val nodes: List<MatchNode>,
                                val seen: PersSet<IdWrapper<ConstraintOccurrence>>,
                                val consumed: PersSet<ArrayList<IdWrapper<ConstraintOccurrence>?>>,
                                val genId: Int) : MatchingProbe
    {
        override fun rule(): Rule = rule

        override fun matches(): Collection<MatchRule>  {
            return nodes.filter { it is ActiveMatchNode && it.complete && it.genId == genId }
                        .map    { (it as ActiveMatchNode).toMatchRule() }
        }

        override fun consumed(matchRule: MatchRule): MatchingProbe =
            RuleMatchFringe(nodes,
                seen,
                consumed.add(((matchRule as MatchRuleImpl).origin as ActiveMatchNode).signature),
                genId)

        override fun expand(occ: ConstraintOccurrence): MatchingProbe =
            expand(occ, bitSetOfOnes(head.size))

        /**
         * Expands the fringe by creating new leaf nodes that match the occurrence.
         * Mask specifies possible slots for the occurrence.
         */
        override fun expand(occ: ConstraintOccurrence, mask: BitSet): RuleMatchFringe {
            val reactivated = seen.contains(IdWrapper(occ))
            val newSeen = if (reactivated) seen else seen.add(IdWrapper(occ))
            val newNodes = ArrayList<MatchNode>(nodes)
            
            val allSignatures = newNodes.map { it.signature }.toHashSet()
            for (n in nodes) {
                n.expand(occ, genId + 1, n.matchingVacant(mask))
                    .filter { allSignatures.add(it.signature) || reactivated }  // ensure reactivated have effect
                    .filter { !(propagation && reactivated && consumed.contains(it.signature)) } // ...unless propagation
                    .forEach { newNodes.add(it) }
            }
            
            return RuleMatchFringe(newNodes, newSeen, consumed, genId + 1)
        }

        override fun contract(occ: ConstraintOccurrence): RuleMatchFringe {
            val newNodes = nodes.mapNotNull { it.unrelatedOrNull(occ) }
            return RuleMatchFringe(newNodes, seen, consumed,genId + 1)
        }

    }

    open inner class MatchNode(val subst: Subst, val vacant: BitSet = bitSetOfOnes(head.size))
    {
        open val signature: ArrayList<IdWrapper<ConstraintOccurrence>?> =
            arrayListOf(* arrayOfNulls<IdWrapper<ConstraintOccurrence>?>(head.size))

        /**
         * Returns the additional nodes built from this node on adding the occurrence.
         * If the occurrence is already in the path, return empty sequence.
         */
        fun expand(occ: ConstraintOccurrence, genId: Int, matchingVacant: BitSet): List<ActiveMatchNode> =
            unrelatedOrNull(occ)?.let { n ->
                ArrayList<ActiveMatchNode>().also { expanded ->
                    for (headIdx in matchingVacant.allSetBits()) {
                        OccurrenceMatcher(subst).run {
                            if (matches(head[headIdx], occ)) {
                                expanded.add(ActiveMatchNode(substitution(), n,  occ, headIdx, genId))
                            }
                        }
                    }
                }
            } ?: emptyList()


        /**
         * Returns this node if it doesn't have the occurrence in its path, null otherwise.
         */
        open fun unrelatedOrNull(occ: ConstraintOccurrence): MatchNode? = this

        fun matchingVacant(mask: BitSet) = mask.copyApply { and(vacant) }

        /**
         * Folds the path to the root.
         */
        inline protected fun <T> fold(init: T, action: (T, ActiveMatchNode) -> T): T  {
            var rn = this
            var curr = init
            while (rn is ActiveMatchNode) {
                curr = action(curr, rn)
                rn = rn.parent
            }
            return curr
        }

        /**
         * Folds the path to the root. If an iteration yields null, fold is stopped and null is returned.
         */
        inline protected fun <T> foldUntilNull(init: T, action: (T, ActiveMatchNode) -> T?): T?  {
            var rn = this
            var curr: T? = init
            while (rn is ActiveMatchNode) {
                curr = action(curr !!, rn)
                if (curr == null) return null
                rn = rn.parent
            }
            return curr
        }
    }

    inner class ActiveMatchNode(subst: Subst,
                                val parent: MatchNode,
                                val occurrence: ConstraintOccurrence,
                                val headIndex: Int,
                                val genId: Int) :
                MatchNode(subst, parent.vacant.clearBit(headIndex))
    {
        val complete = vacant.cardinality() == 0

        override val signature:  ArrayList<IdWrapper<ConstraintOccurrence>?> =
            (parent.signature.clone() as ArrayList<IdWrapper<ConstraintOccurrence>?>)
                .also { it[headIndex] = IdWrapper(occurrence) }

        fun constraint(): Constraint = head[headIndex]

        override fun unrelatedOrNull(occ: ConstraintOccurrence): ActiveMatchNode? =
            foldUntilNull(this) { acc, rn -> if (rn.occurrence === occ) null else  acc }


        fun toMatchRule(): MatchRule  {
            val matched: Array<ConstraintOccurrence?> =
                fold(arrayOfNulls(head.size)) { arr, rn -> arr[rn.headIndex] = rn.occurrence; arr }

            return MatchRuleImpl(this,
                                 rule,
                                 subst,
                                 ArrayList(matched.take(rule.headKept().count())),
                                 ArrayList(matched.takeLast(rule.headReplaced().count())))
        }
    }


}
