package program

import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Predicate

/**
 * @author Fedor Isakov
 */

data class MockConstraint(val symbol: ConstraintSymbol, val arguments: List<Any>, val principal: Boolean = false) : Constraint {

    constructor(symbol: ConstraintSymbol, vararg args: Any) : this(symbol, listOf(* args)) {}

    constructor(symbol: ConstraintSymbol, principal: Boolean, vararg args: Any) : this(symbol, listOf(* args), principal) {}

    override fun arguments(): List<Any> = arguments

    override fun patternPredicates(args: Collection<*>): Collection<Predicate> = emptyList()

    override fun symbol(): ConstraintSymbol = symbol

    override fun argumentTypes(): List<Class<*>> = arguments.map { arg -> arg.javaClass }

    override fun isPrincipal(): Boolean = principal

    override fun toString(): String = "${symbol()}(${arguments().joinToString()})"

}

