import jetbrains.mps.logic.reactor.constraint.Predicate
import jetbrains.mps.logic.reactor.constraint.PredicateSymbol
import jetbrains.mps.logic.reactor.constraint.Queryable
import jetbrains.mps.logic.reactor.constraint.Symbol
import jetbrains.mps.logic.reactor.logical.ILogical
import jetbrains.mps.logic.reactor.logical.NamingContext

/**
 * @author Fedor Isakov
 */


fun logical(name: String) = TestLogical<Any>(name)
fun logical(name1: String, name2: String) = Pair(TestLogical<Any>(name1), TestLogical<Any>(name2))
fun logical(name1: String, name2: String, name3: String) = Triple(TestLogical<Any>(name1), TestLogical<Any>(name2), TestLogical<Any>(name3))
fun setValue(logical: Any, value: Any) { (logical as TestLogical<Any>).find().value = value }
fun getValue(logical: Any) = (logical as TestLogical<Any>).find().value()

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

    fun ask_logical_logical(left: TestLogical<*>,  right: TestLogical<*>): Boolean {
        return left.isBound && right.isBound && left.findRoot().value() == right.findRoot().value()
    }

    fun ask_logical_value(left: TestLogical<*>,  right: Any?): Boolean {
        return left.isBound && left.findRoot().value() == right
    }

    fun ask_value_logical(left: Any?,  right: TestLogical<*>): Boolean {
        return right.isBound && right.findRoot().value() == left
    }

    fun ask_value_value(left: Any?,  right: Any?): Boolean {
        return left == right
    }

    fun tell_logical_logical(left: TestLogical<*>,  right: TestLogical<*>) {
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

    fun tell_logical_value(left: TestLogical<*>,  right: Any?) {
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


data class TestLogical<T>(val name: String, var value: T?, var parent: TestLogical<T>?) : ILogical<T> {

    constructor(name: String) : this(name, null, null) {}

    override fun name(): String = name

    override fun name(namingContext: NamingContext?): String? {
        throw UnsupportedOperationException()
    }

    override fun findRoot(): ILogical<T> = find()

    override fun value(): T? = value

    override fun isBound(): Boolean = find().value != null

    override fun isWildcard(): Boolean {
        throw UnsupportedOperationException()
    }

    fun find(): TestLogical<T> {
        val tmp = parent
        if (tmp == null) return this
        else {
            val root = tmp.find()
            this.parent = root
            return root
        }
    }

    fun union(other: TestLogical<T>) {
        if (find() != other.find()) find().parent = other
    }
}

data class TestEqPredicate(val left: Any, val right: Any) : Predicate {

    override fun arguments(): List<Any> = listOf(left, right)

    override fun symbol(): PredicateSymbol = PredicateSymbol("equals", 2)

}