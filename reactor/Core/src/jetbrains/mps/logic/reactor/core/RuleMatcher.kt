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
import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
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

/**
 * @author Fedor Isakov
 */

private typealias Subst = PersMap<MetaLogical<*>, Any>

private fun emptySubst() = Maps.of<MetaLogical<*>, Any>()


class RuleMatcher(val rule: Rule) {

    val head = rule.headKept().toCollection(ArrayList(4)).also { it.addAll(rule.headReplaced()) }
    
    val propagation = rule.headReplaced().count() == 0

    fun fringe() = MatchFringe(cons(FringeNode(emptySubst())), emptySet(), 0)

    inner class MatchFringe(val nodes: ConsList<FringeNode>,
                            val seen: IdHashSet<ConstraintOccurrence>,
                            val genId: Int) {

        fun rule(): Rule = rule

        fun matches(): Collection<MatchRule> =
            nodes.filter { rn ->
                rn is ActiveFringeNode && rn.complete && rn.genId == genId }.map { rn ->
                (rn as ActiveFringeNode).toMatchRule() }

        fun expand(occ: ConstraintOccurrence): MatchFringe {
            if (seen.contains(occ)) {
                // constraint occurrence is reactivated
                // there are nodes having occ in their paths
                // select complete (leaf) nodes and make them appear as if newly expanded
                // *unless* propagation (implement propagation history feature)
                if (propagation) return MatchFringe(nodes, seen, genId + 1)
                
                val newNodes = nodes.asSequence().mapNotNull { fn ->
                    if (fn is ActiveFringeNode && fn.complete)
                        fn.unrelatedOrCopy(occ, genId + 1)
                    else
                        fn
                }.appendAllTo(emptyConsList())
                return MatchFringe(newNodes, seen, genId + 1)

            } else {
                val newNodes = nodes.asSequence().flatMap { it.expand(occ, genId + 1) }
                return MatchFringe(newNodes.appendAllTo(nodes), seen.add(occ), genId + 1)
            }
        }

        fun cleanup(occ: ConstraintOccurrence): MatchFringe {
            val newNodes = nodes.asSequence().mapNotNull { it.unrelatedOrNull(occ) }
            return MatchFringe(newNodes.toConsList(), seen.remove(occ), genId + 1)
        }
    }

    open inner class FringeNode(val subst: Subst,
                                val vacant: BitSet = bitSetOfOnes(head.size))
    {
        /**
         * Returns the additional nodes built from this node on adding the occurrence.
         * If the occurrence is already in the path, return empty sequence.
         */
        fun expand(occ: ConstraintOccurrence, genId: Int): Sequence<ActiveFringeNode> {
            val fringeNode = unrelatedOrNull(occ)
            if (fringeNode == null) return emptySequence()

            return fringeNode.vacant.allSetBits().map { idx ->
                idx to match(head[idx] !!, occ, subst) }.asSequence().mapNotNull { (idx, newSubst) ->
                newSubst?.let { ActiveFringeNode(this, occ, idx, genId, it) }
            }
        }

        /**
         * Returns this node if it doesn't have the occurrence in its path, null otherwise.
         */
        open fun unrelatedOrNull(occ: ConstraintOccurrence): FringeNode? = this

        /**
         * Matches constraint and occurrence.
         * Recursively processes all arguments, including terms.
         * Returns substitution of MetaLogical instances on success, null otherwise.
         */
        protected fun match(cst: Constraint,
                            occ: ConstraintOccurrence,
                            subst: Subst): Subst?
        {
            if (cst.symbol() != occ.constraint().symbol()) return null

            var itsubst = subst
            for ((cstarg, occarg) in cst.arguments().zip(occ.arguments())) {
                itsubst = matchAny(cstarg, occarg, itsubst) ?: return null
            }

            return itsubst
        }

        /**
         * Matches target against pattern.
         * Recursively iterates terms.
         * Respects substitutions for MetaLogical instances.
         * Returns either new substitution on successful match, or null.
         */
        private fun matchAny(ptn: Any?,
                             trg: Any?,
                             subst: Subst): Subst? =
            when (ptn) {
                is MetaLogical<*>   ->
                    // recursion with existing substitution or new substitution
                    if (subst.containsKey(ptn)) subst[ptn].let { matchAny(it, trg, subst) } else subst.put(ptn, trg)
                is Logical<*>       ->
                    // match logical or its value
                    matchLogical(ptn.findRoot(), trg, subst)
                is Term             ->
                    // recursion into the term
                    matchTerm(ptn, trg, subst)
                else                ->
                    // compare two arbitrary values
                    if (ptn == trg) subst else null
            }

        private fun matchTerm(ptn: Term,
                              trg: Any?,
                              subst: Subst): Subst?
        {
            if (trg == null) return null

            val trgval = resolve(trg)
            if (!(trgval is Term)) return null

            if (ptn.`is`(Term.Kind.VAR)) return matchAny(ptn.get().symbol(), trgval, subst)

            var itsubst = matchAny(ptn.get().symbol(), trgval.symbol(), subst) ?: return null
            for ((ptnarg, trgarg) in ptn.get().arguments().zip(trgval.arguments())) {
                itsubst = matchAny (ptnarg, trgarg, itsubst) ?: return null
            }

            return itsubst
        }

        private fun matchLogical(ptn: Logical<*>,
                                 trg: Any?,
                                 subst: Subst): Subst? =
            if (ptn.isBound) {
                if (trg is Logical<*>) matchAny(ptn.value(), trg.findRoot().value(), subst) else null

            } else {
                if (trg is Logical<*> && ptn === trg.findRoot()) subst else null     // reference equality!
            }

        private fun resolve(obj: Any?): Any? =
            when (obj) {
                is LogicalOwner -> if (obj.logical().isBound) resolve(obj.logical()) else obj
                is Logical<*>   -> resolve(obj.findRoot().value())
                is Term         -> if (obj.`is`(Term.Kind.REF)) resolve(obj.get()) else obj
                else            -> obj
            }

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
}
