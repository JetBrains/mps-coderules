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
import jetbrains.mps.logic.reactor.core.OccurrenceMatcher
import jetbrains.mps.logic.reactor.core.Subst
import jetbrains.mps.logic.reactor.core.emptySubst
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalOwner
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.unification.Term
import java.util.*

internal class OccurrenceMatcherImpl(val contextSubst: Subst? = null) : OccurrenceMatcher {

    private var matchSubst : Subst? = null

    override fun subst(): Subst = matchSubst ?: (contextSubst ?: emptySubst())

    /**
     * Matches constraint and occurrence.
     * Recursively processes all arguments, including terms.
     * Returns substitution of MetaLogical instances on success, null otherwise.
     */
    override fun matches(cst: Constraint, occ: ConstraintOccurrence): Boolean
    {
        if (cst.symbol() != occ.constraint().symbol()) return false

        return zipWhileTrue(cst.arguments(), occ.arguments()) { cstarg, occarg ->
            ptnMatchAny(cstarg, occarg)
        }
    }

    /**
     * Returns true for matching left and right parameters, false otherwise.
     */
    override fun match(left: Any?, right: Any?): Boolean {
        return matchAny(left, right)
    }

    /**
     * Matches target against pattern.
     * Recursively iterates terms.
     * Respects substitutions for MetaLogical instances.
     * Returns either new substitution on successful match, or null.
     */
    private fun ptnMatchAny(ptn: Any?, trg: Any?): Boolean =
        when (ptn) {
            is MetaLogical<*> -> {
                // recursion with existing substitution or new substitution
                if (matchSubst == null) {
                    this.matchSubst = if (contextSubst != null) contextSubst else emptySubst()
                }

                if (matchSubst!!.containsKey(ptn))
                    matchSubst!![ptn].let { matchAny(it, trg) }
                else
                    matchSubst!!.put(ptn, trg!!).also { matchSubst = it }.run { true }
            }
            is Term ->
                when {
                    ptn.`is`(Term.Kind.REF)     -> ptnMatchAny(resolve(ptn), trg)
                    else                        -> ptnMatchTerm(ptn, trg) // recursion into the term
                }
            else                ->
                when {
                    trg is Logical<*> -> ptnMatchAny(ptn, resolve(trg))
                    else                        ->
                                                    // compare two arbitrary values
                                                    (ptn == trg)
                }
        }


    private fun matchAny(left: Any?, right: Any?): Boolean =
        when (left) {
            is Logical<*> ->
                // match logical or its value
                matchLogical(left.findRoot(), right)
            is Term         ->
                when {
                    left.`is`(Term.Kind.REF)        -> matchAny(resolve(left), right)
                    else                            -> matchTerm(left, right) // recursion into the term
                }
            else            ->
                when {
                    right is Logical<*> -> matchAny(left, resolve(right))
                    else                            ->  // compare two arbitrary values
                                                        (left == right)
                }
        }

    private fun ptnMatchTerm(ptn: Term, trg: Any?): Boolean {
        if (trg == null) return false

        val trgval = resolve(trg)
        if (!(trgval is Term)) return false

        if (ptn.`is`(Term.Kind.VAR)) return ptnMatchAny(ptn.get().symbol(), trgval)

        if (!ptnMatchAny(ptn.get().symbol(), trgval.symbol())) return false

        // FIXME: reversing the order of arguments leads to infinite cycle
        // Example: two terms of the form f(... V_1 ...) and f(... V_2 ...) where
        // V_1 is bound to g(... W_1 ...), V_2 -> g(... W_2 ...), W_1 -> f(... V_1 ...), and W_2 -> f(... V_2 ...)
        return zipWhileTrue(ptn.get().arguments(), trgval.arguments()) { ptnarg, trgarg ->
            ptnMatchAny (ptnarg, trgarg)
        }
    }

    private fun matchTerm(left: Term, right: Any?): Boolean {
        if (right == null) return false

        val rval = resolve(right)
        if (!(rval is Term)) return false

        if (!matchAny(left.get().symbol(), rval.symbol())) return false

        // FIXME: reversing the order of arguments leads to infinite cycle
        // Example: two terms of the form f(... V_1 ...) and f(... V_2 ...) where
        // V_1 is bound to g(... W_1 ...), V_2 -> g(... W_2 ...), W_1 -> f(... V_1 ...), and W_2 -> f(... V_2 ...)
        return zipWhileTrue(left.get().arguments(), rval.arguments()) { larg, rarg ->
            matchAny (larg, rarg)
        }
    }

    private fun matchLogical(left: Logical<*>, right: Any?): Boolean =
        when {
            right is Logical<*> ->
                when {
                    left.isBound                            -> matchAny(left.findRoot().value(),
                                                                           right.findRoot().value())
                    left.findRoot() === right.findRoot()    -> true     // reference equality
                    else                                    -> false
                }
            left.isBound            -> matchAny(left.findRoot().value(), right)
            else                    -> false
        }

    private fun resolve(obj: Any?): Any? =
        when (obj) {
            is LogicalOwner -> if (obj.logical().isBound) resolve(obj.logical()) else obj
            is Logical<*> -> resolve(obj.findRoot().value())
            is Term -> if (obj.`is`(Term.Kind.REF)) resolve(obj.get()) else obj
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

fun createOccurrenceMatcher(contextSubst: Subst? = null): OccurrenceMatcher =
    OccurrenceMatcherImpl(contextSubst)
