/*
 * Copyright 2014-2020 JetBrains s.r.o.
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

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalOwner
import jetbrains.mps.unification.Term
import java.util.*

/**
 * @author Fedor Isakov
 */
class TermWalker(vararg visitors: TermVisitor<out Term>) {

    abstract class TermVisitor<T : Term?>(private val kind: Term.Kind) {
        fun applicableTo(): Term.Kind = kind

        @Throws(Exception::class)
        abstract fun visit(t: T): MutableCollection<out Term>

    }

    private val visitorMap: MutableMap<Term.Kind, TermVisitor<out Term>> = EnumMap(Term.Kind::class.java)

    init {
        for (visitor in visitors) {
            visitorMap[visitor.applicableTo()] = visitor
        }
    }

    @Throws(Exception::class)
    fun walk(term: Term) {
        walk(term, IdentityHashMap())
    }

    @Throws(Exception::class)
    private fun walk(term: Term, visited: MutableMap<Term, Any?>) {
        if (term.`is`(Term.Kind.FUN)) {
            visited[term] = SINGLETON
        }
        val arguments = switchClass(term)
        for (arg in arguments) {
            if (visited.containsKey(arg)) {
                continue
            }
            walk(arg, visited)
        }
    }

    @Throws(Exception::class)
    private fun switchClass(term: Term): Collection<Term> {
        for ((key, value1) in visitorMap) {
            if (term.`is`(key)) {
                val value = value1 as TermVisitor<Term>
                return value.visit(term)
            }
        }
        return emptyList()
    }

    companion object {
        private val SINGLETON = Any()
    }
}