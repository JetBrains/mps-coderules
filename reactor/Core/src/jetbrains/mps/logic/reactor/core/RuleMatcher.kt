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

import com.github.andrewoma.dexx.collection.Map as PersMap
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

    fun probe(): MatchingProbe = MatchFringe(listOf(FringeNode(emptySubst())), emptySet(), 0)

    inner class MatchFringe(val nodes: List<FringeNode>,
                            val seen: IdHashSet<ConstraintOccurrence>,
                            val genId: Int) : MatchingProbe {

        override fun rule(): Rule = rule

        override fun matches(): Collection<MatchRule> =
            nodes.filter { rn ->
                    rn is ActiveFringeNode && rn.complete && rn.genId == genId       }.map { rn ->
                    (rn as ActiveFringeNode).toMatchRule() }


        override fun expand(occ: ConstraintOccurrence): MatchingProbe =
            expand(occ, bitSetOfOnes(head.size))

        /**
         * Expands the fringe by creating new leaf nodes that match the occurrence.
         * Mask specifies possible slots for the occurrence.
         */
        override fun expand(occ: ConstraintOccurrence, mask: BitSet): MatchFringe {
            if (seen.contains(occ)) {
                // constraint occurrence is reactivated
                // there are nodes having occ in their paths
                // select complete (leaf) nodes and make them appear as if newly expanded
                // *unless* propagation (implement propagation history feature)
                if (propagation) return MatchFringe(nodes, seen, genId + 1)

                val newNodes = ArrayList<FringeNode>()
                for (fn in nodes) {
                    when (fn) {
                        is ActiveFringeNode -> {
                            // only leaf nodes
                            // either unrelated, or the nodes already having occ
                            fn.unrelatedOrCopy(occ, genId + 1)?.let { newNodes.add(it) }

                            // only non-leaf nodes
                            // all unrelated, expanded on occ
                            fn.unrelatedOrNull(occ)?.let {
                                newNodes.addAll(it.expand(occ, genId + 1, fn.matchingVacant(mask)))
                            }
                        }

                        else                -> {
                            newNodes.add(fn)
                        }
                    }
                }

                if (newNodes.size == 1) {
                    // only the root
                    val rfn = newNodes.get(0)
                    newNodes.addAll(rfn.expand(occ, genId + 1, rfn.matchingVacant(mask)))
                }

                return MatchFringe(newNodes, seen, genId + 1)

            } else {
                val newNodes = ArrayList<FringeNode>(nodes)
                for (fn in nodes) {
                    newNodes.addAll(fn.expand(occ, genId + 1, fn.matchingVacant(mask)))
                }

                return MatchFringe(newNodes, seen.add(occ), genId + 1)
            }
        }

        override fun contract(occ: ConstraintOccurrence): MatchFringe {
            val newNodes = nodes.mapNotNull { it.unrelatedOrNull(occ) }
            return MatchFringe(newNodes, seen.remove(occ), genId + 1)
        }

    }

    open inner class FringeNode(val subst: Subst, val vacant: BitSet = bitSetOfOnes(head.size))
    {

        /**
         * Returns the additional nodes built from this node on adding the occurrence.
         * If the occurrence is already in the path, return empty sequence.
         */
        fun expand(occ: ConstraintOccurrence, genId: Int, matchingVacant: BitSet): List<ActiveFringeNode> =
            unrelatedOrNull(occ)?.run {
                ArrayList<ActiveFringeNode>().also { expanded ->
                    for (idx in matchingVacant.allSetBits()) {
                        OccurrenceMatcher(subst).let { matcher ->
                            if (matcher.matches(head[idx], occ)) {
                                expanded.add(ActiveFringeNode(matcher.substitution(), this, occ, idx, genId))
                            }
                        }
                    }
                }
            } ?: emptyList()


        /**
         * Returns this node if it doesn't have the occurrence in its path, null otherwise.
         */
        open fun unrelatedOrNull(occ: ConstraintOccurrence): FringeNode? = this

        fun matchingVacant(mask: BitSet) = mask.copyApply { and(vacant) }

        /**
         * Folds the path to the root.
         */
        inline protected fun <T> fold(init: T, action: (T, ActiveFringeNode) -> T): T  {
            var rn = this
            var curr = init
            while (rn is ActiveFringeNode) {
                curr = action(curr, rn)
                rn = rn.parent
            }
            return curr
        }

        /**
         * Folds the path to the root. If an iteration yields null, fold is stopped and null is returned.
         */
        inline protected fun <T> foldUntilNull(init: T, action: (T, ActiveFringeNode) -> T?): T?  {
            var rn = this
            var curr: T? = init
            while (rn is ActiveFringeNode) {
                curr = action(curr !!, rn)
                if (curr == null) return null
                rn = rn.parent
            }
            return curr
        }
    }

    inner class ActiveFringeNode(subst: Subst,
                                 val parent: FringeNode,
                                 val occ: ConstraintOccurrence,
                                 val idx: Int,
                                 val genId: Int) :
                FringeNode(subst, parent.vacant.clearBit(idx))
    {
        val complete = vacant.cardinality() == 0

        fun occurrence(): ConstraintOccurrence = occ

        fun constraint(): Constraint = head[idx]

        override fun unrelatedOrNull(occ: ConstraintOccurrence): ActiveFringeNode? =
            foldUntilNull(this) { acc, rn -> if (rn.occ === occ) null else  acc }

        /**
         * Returns this node if it doesn't have the occurrence in its path,
         * otherwise a copy of this node with the specified generation id.
         */
        fun unrelatedOrCopy(occ: ConstraintOccurrence, copyGenId: Int): FringeNode? =
            unrelatedOrNull(occ) ?: ActiveFringeNode(subst, parent, occ, idx, copyGenId)

        fun toMatchRule(): MatchRule  {
            val matched: Array<ConstraintOccurrence?> =
                fold(arrayOfNulls(head.size)) { arr, rn -> arr[rn.idx] = rn.occ; arr }
            return MatchRuleImpl(rule,
                subst,
                ArrayList(matched.take(rule.headKept().count())),
                ArrayList(matched.takeLast(rule.headReplaced().count())))
        }
    }


}
