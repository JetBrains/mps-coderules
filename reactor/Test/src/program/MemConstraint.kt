package program

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Predicate
import java.util.*

/**
 * @author Fedor Isakov
 */

data class MemConstraint(val symbol: ConstraintSymbol, val arguments: List<Any>) : Constraint {

    constructor(symbol: ConstraintSymbol, vararg args: Any) : this(symbol, listOf(* args)) {}

    override fun arguments(): List<Any> = arguments

    override fun occurrenceArguments(logicalContext: LogicalContext): Collection<*> = arguments.map { a ->
        if (a is MetaLogical<*>) logicalContext.variable(a)
        else a
    }

    override fun patternPredicates(args: Collection<*>): Collection<Predicate> = emptyList()

    override fun symbol(): ConstraintSymbol = symbol

    override fun argumentTypes(): List<Class<*>> = arguments.map { arg -> arg.javaClass }

    override fun toString(): String = "${symbol()}(${arguments().joinToString()})"

}

