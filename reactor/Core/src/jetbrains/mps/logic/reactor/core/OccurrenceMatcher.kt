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

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalOwner
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.unification.Term

typealias Subst = Map<MetaLogical<*>, Any>

fun emptySubst() = HashMap<MetaLogical<*>, Any>(4)

class OccurrenceMatcher(contextSubst: Subst = emptySubst()) {

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
     * Returns true for matching left and right parameters, false otherwise.
     */
    fun match(left: Any?, right: Any?): Boolean {
        return matchAny(left, right)
    }

    /**
     * Matches target against pattern.
     * Recursively iterates terms.
     * Respects substitutions for MetaLogical instances.
     * Returns either new substitution on successful match, or null.
     */
    private fun matchAny(ptn: Any?, trg: Any?): Boolean =
        when (ptn) {
            is MetaLogical<*> ->
                // recursion with existing substitution or new substitution
                if (matchSubst.containsKey(ptn))
                    matchSubst[ptn].let { matchAny(it, trg) }
                else
                    matchSubst.apply { put(ptn, trg) }.run { true }
            is Logical<*> ->
                // match logical or its value
                matchLogical(ptn.findRoot(), trg)
            is Term ->
                when {
                    ptn.`is`(Term.Kind.REF)     -> matchAny(resolve(ptn), trg)
                    else                        ->  matchTerm(ptn, trg) // recursion into the term
                }
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
            trg is Logical<*> ->
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