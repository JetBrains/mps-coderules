package solver

import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.logical.SolverLogical
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import jetbrains.mps.logic.reactor.program.Symbol

class EqualsSolver  : Solver {

    override fun predicate(predicateSymbol: PredicateSymbol, vararg args: Any): Predicate =
        TestEqPredicate(args[0], args[1])

    override fun ask(invocation: PredicateInvocation): Boolean {
        return _ask(invocation.arguments().get(0), invocation.arguments().get(1))
    }

    private fun _ask(left: Any?, right: Any?): Boolean {
        return if (left is SolverLogical<*> && right is SolverLogical<*>) {
            ask_logical_logical(left, right)
        } else if (left is SolverLogical<*>) {
            ask_logical_value(left, right)
        } else if (right is SolverLogical<*>) {
            ask_value_logical(left, right)
        } else {
            ask_value_value(left, right)
        }
    }

    override fun tell(invocation: PredicateInvocation) {
        _tell(invocation.arguments().get(0), invocation.arguments().get(1))
    }

    private fun _tell(left: Any?, right: Any?) {
        if (left is SolverLogical<*> && right is SolverLogical<*>) {
            tell_logical_logical(left as SolverLogical<Any>, right as SolverLogical<Any>)
        } else if (left is SolverLogical<*>) {
            tell_logical_value(left as SolverLogical<Any>, right)
        } else if (right is SolverLogical<*>) {
            tell_value_logical(left, right as SolverLogical<Any>)
        } else {
            tell_value_value(left, right)
        }
    }

    fun ask_logical_logical(left: SolverLogical<*>, right: SolverLogical<*>): Boolean {
        if (left.findRoot() == right.findRoot()) return true
        return left.isBound && right.isBound && left.findRoot().value() == right.findRoot().value()
    }

    fun ask_logical_value(left: SolverLogical<*>, right: Any?): Boolean {
        return left.isBound && left.findRoot().value() == right
    }

    fun ask_value_logical(left: Any?,  right: SolverLogical<*>): Boolean {
        return right.isBound && right.findRoot().value() == left
    }

    fun ask_value_value(left: Any?,  right: Any?): Boolean {
        return left == right
    }

    fun <T> tell_logical_logical(left: SolverLogical<T>, right: SolverLogical<T>) {
        if (left == right) return

        val leftRepr = left.findRoot()
        val rightRepr = right.findRoot()

        if (leftRepr == rightRepr) return

        leftRepr.union(rightRepr, { a, b -> tell_value_value(a, b)})
    }

    fun <T> tell_logical_value(left: SolverLogical<T>, right: T?) {
        if (left.isBound) {
            check(left.findRoot().value() == right)
        }
        else {
            left.findRoot().setValue(right)
        }
    }

    fun <T> tell_value_logical(left: T?,  right: SolverLogical<T>) {
        if (right.isBound) {
            check(right.findRoot().value() == left)
        }
        else {
            right.findRoot().setValue(left)
        }
    }

    fun tell_value_value(left: Any?,  right: Any?) {
        check(left == right)
    }

    private fun check(condition: Boolean) {
        if (!condition) throw EvaluationFailureException("condition is not satisfied")
    }

    private fun ERROR(msg: String) : Nothing = throw IllegalArgumentException(msg)
}

infix fun <T : Any> Logical<T>.eq(value: T) {
    EvaluationSession.current().sessionSolver().tell(PredicateSymbol("equals", 2), this, value)
}

data class TestEqPredicate(val left: Any, val right: Any) : Predicate {

    override fun arguments(): List<Any> = listOf(left, right)

    override fun symbol(): PredicateSymbol = PredicateSymbol("equals", 2)

    override fun invocationArguments(logicalContext: LogicalContext): Collection<*> = listOf(left, right).map { a ->
        if (a is MetaLogical<*>) logicalContext.variable(a)
        else a
    }

}