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
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalOwner
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.*
import jetbrains.mps.unification.Term
import java.util.*
import kotlin.collections.ArrayList
import kotlin.collections.HashMap

/**
 * @author Fedor Isakov
 */

private typealias Subst = Map<MetaLogical<*>, Any>

private fun emptySubst() = HashMap<MetaLogical<*>, Any>(4)

class RuleMatcher(val rule: Rule) {

    val head = rule.headKept().toCollection(ArrayList(4)).apply {
                    addAll(rule.headReplaced()) } as List<Constraint>
    
    val propagation = rule.headReplaced().count() == 0

    fun fringe() = MatchFringe(listOf(FringeNode(emptySubst())), emptySet(), 0)

    inner class MatchFringe(val nodes: List<FringeNode>,
                            val seen: IdHashSet<ConstraintOccurrence>,
                            val genId: Int) {

        fun rule(): Rule = rule

        fun matches(): Collection<MatchRule> =
            nodes.filter { rn ->
                rn is ActiveFringeNode && rn.complete && rn.genId == genId }.map { rn ->
                (rn as ActiveFringeNode).toMatchRule() }

        /**
         * Expands the fringe by creating new leaf nodes that match the occurrence.
         * Mask specifies possible slots for the occurrence.
         */
        fun expand(occ: ConstraintOccurrence, mask: BitSet? = null): MatchFringe {
            if (seen.contains(occ)) {
                // constraint occurrence is reactivated
                // there are nodes having occ in their paths
                // select complete (leaf) nodes and make them appear as if newly expanded
                // *unless* propagation (implement propagation history feature)
                if (propagation) return MatchFringe(nodes, seen, genId + 1)

                val newNodes = ArrayList<FringeNode>()
                for (fn in nodes) {
                    if (fn is ActiveFringeNode && fn.complete) {
                        fn.unrelatedOrCopy(occ, genId + 1)
                        
                    } else { fn }?.let { newNodes.add(it) }
                }

                return MatchFringe(newNodes, seen, genId + 1)

            } else {
                val newNodes = ArrayList<FringeNode>(nodes)
                for (fn in nodes) {
                    // TODO: mask can't be null in normal circumstances
                    newNodes.addAll(fn.expand(occ, genId + 1, fn.matchingVacant(mask)))
                }

                return MatchFringe(newNodes, seen.add(occ), genId + 1)
            }
        }

        fun cleanup(occ: ConstraintOccurrence): MatchFringe {
            val newNodes = nodes.mapNotNull { it.unrelatedOrNull(occ) }
            return MatchFringe(newNodes, seen.remove(occ), genId + 1)
        }

    }

    open inner class FringeNode(val subst: Subst,
                                val vacant: BitSet = bitSetOfOnes(head.size))
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
                                expanded.add(ActiveFringeNode(this, occ, idx, genId, matcher.substitution()))
                            }
                        }
                    }
                }
            } ?: emptyList()

        /**
         * Returns this node if it doesn't have the occurrence in its path, null otherwise.
         */
        open fun unrelatedOrNull(occ: ConstraintOccurrence): FringeNode? = this

        fun matchingVacant(mask: BitSet?) = mask?.copyApply { and(vacant) } ?: vacant


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
        inline protected fun <T> foldUntilNull(init: T, action: (T?, ActiveFringeNode) -> T?): T?  {
            var rn = this
            var curr: T? = init
            while (rn is ActiveFringeNode) {
                curr = action(curr, rn)
                if (curr == null) return null
                rn = rn.parent
            }
            return curr
        }
    }

    inner class ActiveFringeNode(val parent: FringeNode,
                                 val occ: ConstraintOccurrence,
                                 val idx: Int,
                                 val genId: Int,
                                 subst: Subst) :
                FringeNode(subst,  parent.vacant.clearBit(idx))
    {
        val complete = vacant.cardinality() == 0

        override fun unrelatedOrNull(occ: ConstraintOccurrence): ActiveFringeNode? =
            foldUntilNull(this) { acc, rn -> if (rn.occ === occ) null else  acc }

        /**
         * Returns this node if it doesn't have the occurrence in its path,
         * otherwise a copy of this node with the specified generation id.
         */
        fun unrelatedOrCopy(occ: ConstraintOccurrence, copyGenId: Int): FringeNode? =
            unrelatedOrNull(occ) ?: ActiveFringeNode(parent, occ, idx, copyGenId, subst)

        private fun matchedOccurrences(): Array<ConstraintOccurrence?> =
            fold(arrayOfNulls(head.size)) { arr, rn -> arr[rn.idx] = rn.occ; arr }

        fun toMatchRule(): MatchRule = object : MatchRule {

            val matched = matchedOccurrences()

            val headKept =  ArrayList (matched.take(rule.headKept().count()))

            val headReplaced =  ArrayList (matched.takeLast(rule.headReplaced().count()))

            private val logicalContext = object : LogicalContext {

                val meta2logical = HashMap<MetaLogical<*>, Logical<*>>()

                override fun <V : Any> variable(meta: MetaLogical<V>): Logical<V> =
                    (meta2logical[meta] ?: subst[meta]?.let { value ->
                        when (value) {
                            is Logical<*> -> value
                            is LogicalOwner -> value.logical()
                            else -> LogicalImpl(value)
                        }
                    } ?: meta.logical().also { logical -> meta2logical[meta] = logical }) as Logical<V>

            }

            override fun rule(): Rule = rule

            override fun matchHeadKept(): MutableIterable<ConstraintOccurrence?> = headKept

            override fun matchHeadReplaced(): MutableIterable<ConstraintOccurrence?> = headReplaced

            override fun logicalContext(): LogicalContext = logicalContext

        }
    }

    private class OccurrenceMatcher(contextSubst: Subst) {

        private val matchSubst = HashMap(contextSubst)

        fun substitution(): Subst = matchSubst

        /**
         * Matches constraint and occurrence.
         * Recursively processes all arguments, including terms.
         * Returns substitution of MetaLogical instances on success, null otherwise.
         */
        fun matches(cst: Constraint, occ: ConstraintOccurrence): Boolean
        {
            if (cst.symbol() != occ.constraint().symbol()) return false

            return zipWhileTrue(cst.arguments(), occ.arguments()) { cstarg, occarg ->
                matchAny(cstarg, occarg)
            }
        }

        /**
         * Matches target against pattern.
         * Recursively iterates terms.
         * Respects substitutions for MetaLogical instances.
         * Returns either new substitution on successful match, or null.
         */
        private fun matchAny(ptn: Any?, trg: Any?): Boolean =
            when (ptn) {
                is MetaLogical<*>   ->
                    // recursion with existing substitution or new substitution
                    if (matchSubst.containsKey(ptn))
                        matchSubst[ptn].let { matchAny(it, trg) }
                    else
                        matchSubst.apply { put(ptn, trg) }.run { true }
                is Logical<*>       ->
                    // match logical or its value
                    matchLogical(ptn.findRoot(), trg)
                is Term             ->
                    // recursion into the term
                    matchTerm(ptn, trg)
                else                ->
                    // compare two arbitrary values
                    (ptn == trg)
            }

        private fun matchTerm(ptn: Term, trg: Any?): Boolean
        {
            if (trg == null) return false

            val trgval = resolve(trg)
            if (!(trgval is Term)) return false

            if (ptn.`is`(Term.Kind.VAR)) return matchAny(ptn.get().symbol(), trgval)

            if (!matchAny(ptn.get().symbol(), trgval.symbol())) return false
            // FIXME: reversing the order of arguments leads to infinite cycle
            // Example: two terms of the form f(... V_1 ...) and f(... V_2 ...) where
            // V_1 is bound to g(... W_1 ...), V_2 -> g(... W_2 ...), W_1 -> f(... V_1 ...), and W_2 -> f(... V_2 ...)
            return zipWhileTrue(ptn.get().arguments(), trgval.arguments()) { ptnarg, trgarg ->
                matchAny (ptnarg, trgarg)
            }
        }

        private fun matchLogical(ptn: Logical<*>, trg: Any?): Boolean =
            when {
                trg is Logical<*>   ->
                    when {
                        ptn.isBound                         -> matchAny(ptn.findRoot().value(), trg.findRoot().value())
                        ptn.findRoot() === trg.findRoot()   -> true     // reference equality
                        else                                -> false
                    }
                ptn.isBound         -> matchAny(ptn.findRoot().value(), trg)
                else                -> false
            }

        private fun resolve(obj: Any?): Any? =
            when (obj) {
                is LogicalOwner -> if (obj.logical().isBound) resolve(obj.logical()) else obj
                is Logical<*>   -> resolve(obj.findRoot().value())
                is Term         -> if (obj.`is`(Term.Kind.REF)) resolve(obj.get()) else obj
                else            -> obj
            }

        private inline fun<S,T> zipWhileTrue(first: Iterable<S>, second: Iterable<T>, action: (S, T) -> Boolean): Boolean {
            val firstIt = first.iterator()
            val secondIt = second.iterator()
            while(firstIt.hasNext() && secondIt.hasNext()) {
                if (!action(firstIt.next(), secondIt.next())) return false
            }
            return true
        }

    }
}
