import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.SolverLogical
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import jetbrains.mps.logic.reactor.program.Symbol

class EqualsSolver  : Queryable {

    override fun ask(predicateSymbol: PredicateSymbol?, vararg args: Any?): Boolean {
        if (args.size != 2) ERROR("arity mismatch")
        val left = args[0]
        val right = args[1]

        return if (left is SolverLogical<*> && right is SolverLogical<*>) {
            ask_logical_logical(left, right)
        }
        else if (left is SolverLogical<*>) {
            ask_logical_value(left, right)
        }
        else if (right is SolverLogical<*>) {
            ask_value_logical(left, right)
        }
        else {
            ask_value_value(left, right)
        }
    }

    override fun tell(symbol: Symbol, vararg args: Any) {
        if (args.size != 2) ERROR("arity mismatch")
        val left = args[0]
        val right = args[1]
        if (left is SolverLogical<*> && right is SolverLogical<*>) {
            tell_logical_logical(left, right)
        }
        else if (left is SolverLogical<*>) {
            tell_logical_value(left as SolverLogical<Any>, right)
        }
        else if (right is SolverLogical<*>) {
            tell_value_logical(left, right as SolverLogical<Any>)
        }
        else {
            tell_value_value(left, right)
        }
    }

    fun ask_logical_logical(left: SolverLogical<*>, right: SolverLogical<*>): Boolean {
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

    fun tell_logical_logical(left: SolverLogical<*>, right: SolverLogical<*>) {
        if (left.isBound && right.isBound) {
            check (left.findRoot().value() == right.findRoot().value())
            // FIXME: use rank!!!
            left.setParent(right)
        }
        else if (left.isBound) {
            right.setParent(left)
        }
        else if (right.isBound) {
            left.setParent(right)
        }
        else {
            left.setParent(right)
        }
    }

    fun <T> tell_logical_value(left: SolverLogical<T>, right: T) {
        if (left.isBound) {
            check(left.findRoot().value() == right)
        }
        else {
            left.findRoot().setValue(right)
        }
    }

    fun <T> tell_value_logical(left: T,  right: SolverLogical<T>) {
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
        if (!condition) throw IllegalStateException()
    }

    private fun ERROR(msg: String) : Nothing = throw IllegalArgumentException(msg)
}

infix fun <T : Any> Logical<T>.eq(value: T) {
    EvaluationSession.current().sessionSolver().tell(PredicateSymbol("equals", 2), this, value)
}
