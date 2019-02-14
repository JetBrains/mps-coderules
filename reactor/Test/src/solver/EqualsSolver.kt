package solver

import jetbrains.mps.logic.reactor.core.invocation
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.logical.JoinableLogical
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.PredicateSymbol

class EqualsSolver  : AbstractSolver() {

    companion object {
        fun eq(left: Any, right: Any): TestEqPredicate = TestEqPredicate(left, right)
    }

    override fun ask(invocation: PredicateInvocation): Boolean {
        return _ask(invocation.arguments().get(0), invocation.arguments().get(1))
    }

    private fun _ask(left: Any?, right: Any?): Boolean {
        return if (left is JoinableLogical<*> && right is JoinableLogical<*>) {
            ask_logical_logical(left, right)
        } else if (left is JoinableLogical<*>) {
            ask_logical_value(left, right)
        } else if (right is JoinableLogical<*>) {
            ask_value_logical(left, right)
        } else {
            ask_value_value(left, right)
        }
    }

    override fun tell(invocation: PredicateInvocation) {
        _tell(invocation.arguments().get(0), invocation.arguments().get(1))
    }

    private fun _tell(left: Any?, right: Any?) {
        if (left is JoinableLogical<*> && right is JoinableLogical<*>) {
            tell_logical_logical(left as JoinableLogical<Any>, right as JoinableLogical<Any>)
        } else if (left is JoinableLogical<*>) {
            tell_logical_value(left as JoinableLogical<Any>, right)
        } else if (right is JoinableLogical<*>) {
            tell_value_logical(left, right as JoinableLogical<Any>)
        } else {
            tell_value_value(left, right)
        }
    }

    fun ask_logical_logical(left: JoinableLogical<*>, right: JoinableLogical<*>): Boolean {
        if (left.findRoot() == right.findRoot()) return true
        return left.isBound && right.isBound && left.findRoot().value() == right.findRoot().value()
    }

    fun ask_logical_value(left: JoinableLogical<*>, right: Any?): Boolean {
        return left.isBound && left.findRoot().value() == right
    }

    fun ask_value_logical(left: Any?,  right: JoinableLogical<*>): Boolean {
        return right.isBound && right.findRoot().value() == left
    }

    fun ask_value_value(left: Any?,  right: Any?): Boolean {
        return left == right
    }

    fun <T> tell_logical_logical(left: JoinableLogical<T>, right: JoinableLogical<T>) {
        if (left == right) return

        val leftRepr = left.findRoot()
        val rightRepr = right.findRoot()

        if (leftRepr == rightRepr) return

        leftRepr.union(rightRepr, { a, b -> tell_value_value(a, b)})
    }

    fun <T> tell_logical_value(left: JoinableLogical<T>, right: T?) {
        if (left.isBound) {
            check(left.findRoot().value() == right)
        }
        else {
            left.findRoot().setValue(right)
        }
    }

    fun <T> tell_value_logical(left: T?,  right: JoinableLogical<T>) {
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

infix fun <T : Any> T.is_eq(value: T): Boolean = EvaluationSession.current().let { session ->
    val logicalContext = mockLogicalContext()
    val predicate = EqualsSolver.eq(this, value)
    val args = session.program().instantiateArguments(predicate.arguments(), logicalContext)
    val inv = predicate.invocation(args, logicalContext, object : InvocationContext {
        override fun report(feedback: EvaluationFeedback) = TODO()
    })
    session.sessionSolver().ask(inv)
}

infix fun <T : Any> T.eq(value: T) = EvaluationSession.current().let { session ->
    val logicalContext = mockLogicalContext()
    val predicate = EqualsSolver.eq(this, value)
    val args = session.program().instantiateArguments(predicate.arguments(), logicalContext)
    val inv = predicate.invocation(args, logicalContext, object : InvocationContext {
        override fun report(feedback: EvaluationFeedback) = TODO()
    })
    session.sessionSolver().tell(inv)
}

private fun mockLogicalContext(): LogicalContext {
    return object : LogicalContext {
        override fun <V : Any?> variable(metaLogical: MetaLogical<V>?): Logical<V> = TODO()
    }
}

data class TestEqPredicate(val left: Any, val right: Any) : Predicate {

    override fun arguments(): List<Any> = listOf(left, right)

    override fun symbol(): PredicateSymbol = PredicateSymbol("equals", 2)

}