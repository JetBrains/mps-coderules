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