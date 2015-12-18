import jetbrains.mps.logic.reactor.constraint.PredicateSymbol
import jetbrains.mps.logic.reactor.constraint.Queryable
import jetbrains.mps.logic.reactor.constraint.Symbol

class EqualsSolver  : Queryable {

    override fun ask(predicateSymbol: PredicateSymbol?, vararg args: Any?): Boolean {
        if (args.size != 2) ERROR("arity mismatch")
        val left = args[0]
        val right = args[1]

        return if (left is TestLogical<*> && right is TestLogical<*>) {
            ask_logical_logical(left, right)
        }
        else if (left is TestLogical<*>) {
            ask_logical_value(left, right)
        }
        else if (right is TestLogical<*>) {
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
        if (left is TestLogical<*> && right is TestLogical<*>) {
            tell_logical_logical(left, right)
        }
        else if (left is TestLogical<*>) {
            tell_logical_value(left, right)
        }
        else if (right is TestLogical<*>) {
            tell_value_logical(left, right)
        }
        else {
            tell_value_value(left, right)
        }
    }

    fun ask_logical_logical(left: TestLogical<*>, right: TestLogical<*>): Boolean {
        return left.isBound && right.isBound && left.findRoot().value() == right.findRoot().value()
    }

    fun ask_logical_value(left: TestLogical<*>, right: Any?): Boolean {
        return left.isBound && left.findRoot().value() == right
    }

    fun ask_value_logical(left: Any?,  right: TestLogical<*>): Boolean {
        return right.isBound && right.findRoot().value() == left
    }

    fun ask_value_value(left: Any?,  right: Any?): Boolean {
        return left == right
    }

    fun tell_logical_logical(left: TestLogical<*>, right: TestLogical<*>) {
        if (left.isBound && right.isBound) {
            check (left.find().value == right.find().value)
            left.union(right)
        }
        else if (left.isBound) {
            right.union(left)
        }
        else if (right.isBound) {
            left.union(right)
        }
        else {
            left.union(right)
        }
    }

    fun tell_logical_value(left: TestLogical<*>, right: Any?) {
        if (left.isBound) {
            check(left.find().value == right)
        }
        else {
            // TODO hack!
            (left.find() as TestLogical<Any>).value = right
        }
    }

    fun tell_value_logical(left: Any?,  right: TestLogical<*>) {
        if (right.isBound) {
            check(right.find().value == left)
        }
        else {
            // TODO: hack!
            (right.find() as TestLogical<Any>).value = left
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