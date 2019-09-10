package solver

import jetbrains.mps.logic.reactor.core.Controller
import jetbrains.mps.logic.reactor.core.invocation
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.logical.MutableLogical
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.PredicateSymbol

class EqualsSolver  : Solver {

    companion object {
        fun eq(left: Any, right: Any): TestEqPredicate = TestEqPredicate(left, right)

        val instance = EqualsSolver()

        val symbol : PredicateSymbol = object : PredicateSymbol("equals", 2) {
            override fun solver(): Solver = instance
        }
    }

    override fun ask(invocation: PredicateInvocation): Boolean {
        return _ask(invocation.arguments().get(0), invocation.arguments().get(1))
    }

    private fun _ask(left: Any?, right: Any?): Boolean {
        return if (left is MutableLogical<*> && right is MutableLogical<*>) {
            ask_logical_logical(left, right)
        } else if (left is MutableLogical<*>) {
            ask_logical_value(left, right)
        } else if (right is MutableLogical<*>) {
            ask_value_logical(left, right)
        } else {
            ask_value_value(left, right)
        }
    }

    override fun tell(invocation: PredicateInvocation) {
        _tell(invocation.arguments().get(0), invocation.arguments().get(1))
    }

    private fun _tell(left: Any?, right: Any?) {
        if (left is MutableLogical<*> && right is MutableLogical<*>) {
            tell_logical_logical(left as MutableLogical<Any>, right as MutableLogical<Any>)
        } else if (left is MutableLogical<*>) {
            tell_logical_value(left as MutableLogical<Any>, right)
        } else if (right is MutableLogical<*>) {
            tell_value_logical(left, right as MutableLogical<Any>)
        } else {
            tell_value_value(left, right)
        }
    }

    fun ask_logical_logical(left: MutableLogical<*>, right: MutableLogical<*>): Boolean {
        if (left.findRoot() == right.findRoot()) return true
        return left.isBound && right.isBound && left.findRoot().value() == right.findRoot().value()
    }

    fun ask_logical_value(left: MutableLogical<*>, right: Any?): Boolean {
        return left.isBound && left.findRoot().value() == right
    }

    fun ask_value_logical(left: Any?,  right: MutableLogical<*>): Boolean {
        return right.isBound && right.findRoot().value() == left
    }

    fun ask_value_value(left: Any?,  right: Any?): Boolean {
        return left == right
    }

    fun <T> tell_logical_logical(left: MutableLogical<T>, right: MutableLogical<T>) {
        if (left == right) return

        val leftRepr = left.findRoot()
        val rightRepr = right.findRoot()

        if (leftRepr == rightRepr) return

        leftRepr.union(rightRepr, { a, b -> tell_value_value(a, b)})
    }

    fun <T> tell_logical_value(left: MutableLogical<T>, right: T?) {
        if (left.isBound) {
            check(left.findRoot().value() == right)
        }
        else {
            left.findRoot().setValue(right)
        }
    }

    fun <T> tell_value_logical(left: T?,  right: MutableLogical<T>) {
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

}

fun <T : Any> InvocationContext.askEquals(thisValue: T, thatValue: T): Boolean {
    val logicalContext = mockLogicalContext()
    val predicate = EqualsSolver.eq(thisValue, thatValue)
    val args = supervisor().instantiateArguments(predicate.arguments(), logicalContext, this)
    val inv = predicate.invocation(args, logicalContext, this)
    return controller().ask(inv)
}

fun <T : Any> InvocationContext.tellEquals(thisValue: T, thatValue: T) {
    val logicalContext = mockLogicalContext()
    val predicate = EqualsSolver.eq(thisValue, thatValue)
    val args = supervisor().instantiateArguments(predicate.arguments(), logicalContext, this)
    val inv = predicate.invocation(args, logicalContext, this)
    controller().tell(inv)
}

private fun mockLogicalContext(): LogicalContext {
    return object : LogicalContext {
        override fun <V : Any?> variable(metaLogical: MetaLogical<V>?): Logical<V> = TODO()
    }
}

data class TestEqPredicate(val left: Any, val right: Any) : Predicate {

    override fun arguments(): List<Any> = listOf(left, right)

    override fun symbol(): PredicateSymbol = EqualsSolver.symbol

}