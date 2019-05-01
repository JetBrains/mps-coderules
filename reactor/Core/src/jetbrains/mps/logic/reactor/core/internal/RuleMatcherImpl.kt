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

import com.github.andrewoma.dexx.collection.Sets
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.*
import java.lang.IllegalStateException
import java.util.*
import kotlin.collections.ArrayList
import com.github.andrewoma.dexx.collection.List as PersList
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Set as PersSet
import com.github.andrewoma.dexx.collection.Vector as PersVector

/**
 * @author Fedor Isakov
 */
internal class RuleMatcherImpl(private val ruleLookup: RuleLookup,
                               private val tag: String) : RuleMatcher
{

    val head = lookupRule().run { ArrayList(headKept() + headReplaced()) }

    val propagation = lookupRule().headReplaced().count() == 0

    fun lookupRule(): Rule = ruleLookup.lookupRuleByTag(tag) ?: throw IllegalStateException("can't lookup rule by tag: '${tag}'")

    override fun probe(): RuleMatchingProbe =
        RuleMatchFringe(listOf(MatchNode(emptySubst())),
                        Sets.of(),
                        Sets.of(),
                        0)

    inner class RuleMatchFringe(private val nodes: List<MatchNode>,
                                private val seenOccurrences: PersSet<IdWrapper<Occurrence>>,
                                private val consumedSignatures: PersSet<ArrayList<IdWrapper<Occurrence>?>>,
                                private val genId: Int) : RuleMatchingProbe
    {
        override fun rule(): Rule = lookupRule()

        override fun matches(): Collection<RuleMatchImpl> =
            nodes
                .filter { it is ActiveMatchNode && it.complete && it.genId == genId }
                .map { (it as ActiveMatchNode).toMatchRule() }

        override fun consume(matchRule: RuleMatchEx): RuleMatchingProbe =
            RuleMatchFringe(nodes,
                            seenOccurrences,
                            consumedSignatures.add(matchRule.signature()),
                            genId)

        override fun expand(occ: Occurrence): RuleMatchingProbe =
            expand(occ, bitSetOfOnes(head.size))

        /**
         * Expands the fringe by creating new leaf nodes that match the occurrence.
         * Mask specifies possible slots for the occurrence.
         */
        override fun expand(occ: Occurrence, mask: BitSet): RuleMatchFringe {
            val reactivated = seenOccurrences.contains(IdWrapper(occ))
            val newSeen = if (reactivated) seenOccurrences else seenOccurrences.add(IdWrapper(occ))
            val newNodes = ArrayList<MatchNode>(nodes)

            val allSignatures = newNodes.map { it.signature }.toHashSet()
            for (n in nodes) {
                n.expand(occ, genId + 1, n.matchingVacant(mask))
                    .filter { allSignatures.add(it.signature) || reactivated }  // ensure reactivated have effect
                    .filter { !(propagation && reactivated && consumedSignatures.contains(it.signature)) } // ...unless propagation
                    .forEach { newNodes.add(it) }
            }

            return RuleMatchFringe(newNodes, newSeen, consumedSignatures, genId + 1)
        }

        override fun contract(occ: Occurrence): RuleMatchFringe {
            val newNodes = nodes.mapNotNull { it.unrelatedOrNull(occ) }
            return RuleMatchFringe(newNodes, seenOccurrences, consumedSignatures, genId + 1)
        }

    }

    open inner class MatchNode(val subst: Subst, val vacant: BitSet = bitSetOfOnes(head.size)) {

        // a signature is a (partial) set of constraint occurrences that belong to this node
        open val signature: ArrayList<IdWrapper<Occurrence>?> = arrayListOf(* arrayOfNulls(head.size))

        /**
         * Returns the additional nodes built from this node on adding the occurrence.
         * If the occurrence is already in the path, return empty sequence.
         */
        fun expand(occ: Occurrence, genId: Int, matchingVacant: BitSet): List<ActiveMatchNode> =
            unrelatedOrNull(occ)?.let { n ->
                ArrayList<ActiveMatchNode>().also { expanded ->
                    for (headIdx in matchingVacant.allSetBits()) {
                        createOccurrenceMatcher(subst).run {
                            if (matches(head[headIdx], occ)) {
                                expanded.add(ActiveMatchNode(substitution(), n, occ, headIdx, genId))
                            }
                        }
                    }
                }
            } ?: emptyList()


        /**
         * Returns this node if it doesn't have the occurrence in its path, null otherwise.
         */
        open fun unrelatedOrNull(occ: Occurrence): MatchNode? = this

        fun matchingVacant(mask: BitSet) = mask.copyApply { and(vacant) }

        /**
         * Folds the path to the root.
         */
        inline protected fun <T> fold(init: T, action: (T, ActiveMatchNode) -> T): T {
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
        inline protected fun <T> foldUntilNull(init: T, action: (T, ActiveMatchNode) -> T?): T? {
            var rn = this
            var curr: T? = init
            while (rn is ActiveMatchNode) {
                curr = action(curr!!, rn)
                if (curr == null) return null
                rn = rn.parent
            }
            return curr
        }
    }

    inner class ActiveMatchNode(subst: Subst,
                                val parent: MatchNode,
                                val occurrence: Occurrence,
                                val headIndex: Int,
                                val genId: Int) :
        MatchNode(subst, parent.vacant.clearBit(headIndex)) {
        val complete = vacant.cardinality() == 0

        override val signature: ArrayList<IdWrapper<Occurrence>?> =
            ArrayList(parent.signature).also { it[headIndex] = IdWrapper(occurrence) }

        fun constraint(): Constraint = head[headIndex]

        override fun unrelatedOrNull(occ: Occurrence): ActiveMatchNode? =
            foldUntilNull(this) { acc, rn -> if (rn.occurrence === occ) null else acc }


        fun toMatchRule(): RuleMatchImpl {
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
