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

package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.unification.Term

abstract class TermImpl(val symbol: Any) : Term {

    override fun symbol() = symbol

    override fun compareTo(other: Term): Int {
        return if (this.javaClass === other.javaClass)
            symbol.toString().compareTo(symbol.toString())
        else
            this.javaClass.toString().compareTo(other.javaClass.toString())
    }
}

open class Function(symbol: Any, val arguments: List<Term>) : TermImpl(symbol) {

    override fun arguments(): Collection<Term> = arguments

    override fun `is`(kind: Term.Kind?): Boolean = (kind === Term.Kind.FUN)

    override fun get(): Term = this
}

class Constant(symbol: Any) : Function(symbol, emptyList()) {}

class WrapConstant(val orig: Term) : Function(orig, emptyList()) {}

class WrapFreeLogical(val logical: Logical<*>) : Function(logical.findRoot(), emptyList()) {}

class WrapGroundLogical(val logical: Logical<Term>) :
    Function(logical.findRoot().value().symbol(),
        logical.findRoot().value().arguments().toList()) {}

class Variable(symbol: Any) : TermImpl(symbol) {

    override fun arguments(): Collection<Term> = emptyList()

    override fun `is`(kind: Term.Kind): Boolean = (kind === Term.Kind.VAR)

    override fun get(): Term = TODO()
}