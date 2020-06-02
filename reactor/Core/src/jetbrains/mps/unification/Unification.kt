/*
 * Copyright 2014-2017 JetBrains s.r.o.
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

package jetbrains.mps.unification

import jetbrains.mps.unification.Substitution.FailureCause

import java.util.*

/**
 * This is the main entry point to the unification solver. Presently @{link TermGraphUnifier} is used
 * for finding the solution.
 *
 * @author Fedor Isakov
 */
object Unification {

    val EMPTY_SUBSTITUTION: Substitution = object : Substitution(true) {
        override fun toString(): String {
            return "[]"
        }
    }

    val FAILED_SUBSTITUTION: Substitution = object : Substitution(FailureCause.UKNOWN) {
        override fun toString(): String {
            return "[FAILED_SUBSTITUTION]"
        }
    }

    fun unify(a: Term, b: Term): Substitution {
        val dagUnifier = TermGraphUnifier()

        return dagUnifier.unify(a, b)
    }

    /**
     * Returns also the trivial bindings.
     * Example:
     *      f{g{}, X} = f{Y, X} yields [Y->g{}, X->X]
     *      f{Y} = X yields [X->f{Y}, Y->Y]
     */
    fun unifyAll(a: Term, b: Term): Substitution {
        val dagUnifier = TermGraphUnifier(true)

        return dagUnifier.unify(a, b)
    }

    fun unify(a: Term, b: Term, wrapper: TermWrapper): Substitution {
        val dagUnifier = TermGraphUnifier(wrapper)

        return dagUnifier.unify(a, b)
    }

    fun failedSubstitution(failCause: FailureCause): Substitution {
        return Substitution(failCause)
    }

    fun failedSubstitution(failCause: FailureCause, vararg details: Any?): Substitution {
        return Substitution(failCause, *details)
    }

    class SuccessfulSubstitution(substitution: Substitution) : Substitution(true) {

        private val myBindings: LinkedList<Substitution.Binding>

        init {
            this.myBindings = LinkedList(substitution.bindings())
        }

        override fun bindings(): Collection<Substitution.Binding> {
            return Collections.unmodifiableCollection(myBindings)
        }

        override fun toString(): String {
            val sb = StringBuilder("[")
            var sep = ""
            for (b in myBindings) {
                sb.append(sep)
                sep = ", "
                sb.append(b.`var`()).append(" -> ").append(b.term())
            }
            return sb.append("]").toString()
        }

        fun addBinding(v: Term, n: Term) {
            myBindings.addFirst(Substitution.Binding(v, n))
        }

    }
}
