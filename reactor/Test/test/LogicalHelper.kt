import jetbrains.mps.logic.reactor.constraint.Predicate
import jetbrains.mps.logic.reactor.constraint.PredicateSymbol
import jetbrains.mps.logic.reactor.constraint.Queryable
import jetbrains.mps.logic.reactor.constraint.Symbol
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.logical.NamingContext
import java.util.*

/**
 * @author Fedor Isakov
 */


fun <T: Any> logical(name: String) = TestLogical<T>(name)

fun <T: Any> logical(name1: String, name2: String) = Pair(TestLogical<T>(name1), TestLogical<T>(name2))

fun <T: Any> logical(name1: String, name2: String, name3: String) = Triple(TestLogical<T>(name1), TestLogical<T>(name2), TestLogical<T>(name3))

fun logicalPattern(name: String) = TestLogicalPattern(name, Object::class.java)

fun logicalPattern(name1: String, name2: String) = Pair(TestLogicalPattern(name1, Object::class.java), TestLogicalPattern(name2, Object::class.java))

fun logicalPattern(name1: String, name2: String, name3: String) = Triple(TestLogicalPattern(name1, Object::class.java), TestLogicalPattern(name2, Object::class.java), TestLogicalPattern(name3, Object::class.java))

fun <T: Any> Logical<T>.get(): T = findRoot().value()

fun <T: Any> TestLogical<T>.set(t: T) {
    find().value = t
}

data class TestLogical<T>(val name: String, var value: T?, var parent: TestLogical<T>?) : Logical<T> {

    constructor(name: String) : this(name, null, null) {}

    override fun name(): String = name

    override fun name(namingContext: NamingContext?): String? {
        throw UnsupportedOperationException()
    }

    override fun pattern(): LogicalPattern = TODO()

    override fun findRoot(): Logical<T> = find()

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

data class TestLogicalPattern(val name: String, val type: Class<*>) : LogicalPattern {

    companion object {
        val random = Random()
    }

    var wildcard = false

    constructor(type: Class<*>) : this("_${random.nextInt()}", type) {
        wildcard = true
    }

    override fun name(): String = name

    override fun name(namingContext: NamingContext?): String? = TODO()

    override fun isWildcard(): Boolean = wildcard

    override fun type(): Class<*> = type
}


data class TestEqPredicate(val left: Any, val right: Any) : Predicate {

    override fun arguments(): List<Any> = listOf(left, right)

    override fun symbol(): PredicateSymbol = PredicateSymbol("equals", 2)

}