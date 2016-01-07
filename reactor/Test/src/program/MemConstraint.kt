package program

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import java.util.*

/**
 * @author Fedor Isakov
 */

data class MemConstraint(val symbol: ConstraintSymbol, val arguments: List<Any>) : Constraint {

    constructor(symbol: ConstraintSymbol, vararg args: Any) : this(symbol, listOf(* args)) {}

    override fun arguments(): List<Any> = arguments

    override fun symbol(): ConstraintSymbol = symbol

    override fun argumentTypes(): List<Class<*>> = arguments.map { arg -> arg.javaClass }

    override fun toString(): String = "${symbol()}(${arguments().joinToString()})"

}

data class MemConstraintOccurrence(val constraint: Constraint, val arguments: List<Any>, val id: Int) : ConstraintOccurrence {

    companion object {
        val random = Random()
    }

    constructor(constraint: Constraint, arguments: List<Any>) :
    this(constraint, arguments, random.nextInt()) {}

    constructor(id: String, vararg args: Any) :
    this(MemConstraint(ConstraintSymbol.symbol(id, args.size)), listOf(* args), random.nextInt()) {}

    override fun constraint(): Constraint = constraint

    override fun arguments(): Collection<Any> = arguments

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}
