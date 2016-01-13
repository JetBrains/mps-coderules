import jetbrains.mps.logic.reactor.core.MemLogical
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.logical.*
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import program.MemLogicalPattern
import java.util.*

/**
 * @author Fedor Isakov
 */


fun <T: Any> anon(value: T) = MemLogical(value)

fun <T: Any> logical(name: String) = MemLogical<T>(name)

fun <T: Any> logical(name1: String, name2: String) = Pair(MemLogical<T>(name1), MemLogical<T>(name2))

fun <T: Any> logical(name1: String, name2: String, name3: String) =
    Triple(MemLogical<T>(name1), MemLogical<T>(name2), MemLogical<T>(name3))

inline fun <reified T: Any> logicalPattern(name: String) = MemLogicalPattern<T>(name, T::class.java)

inline fun <reified T: Any> logicalPattern(name1: String, name2: String) =
    Pair(MemLogicalPattern<T>(name1, T::class.java), MemLogicalPattern<T>(name2, T::class.java))

inline fun <reified T: Any> logicalPattern(name1: String, name2: String, name3: String) =
    Triple(
        MemLogicalPattern<T>(name1, T::class.java),
        MemLogicalPattern<T>(name2, T::class.java),
        MemLogicalPattern<T>(name3, T::class.java))

fun <T: Any> Logical<T>.get(): T = findRoot().value()

fun <T: Any> Logical<T>.getNullable(): T? = findRoot().value()

fun <T: Any> Logical<T>.set(t: T) {
    if (this is SolverLogical<T>)
        findRoot().setValue(t)
    else
        throw IllegalStateException("unexpected receiver $this")
}


data class TestEqPredicate(val left: Any, val right: Any) : Predicate {

    override fun arguments(): List<Any> = listOf(left, right)

    override fun symbol(): PredicateSymbol = PredicateSymbol("equals", 2)

    override fun invocationArguments(logicalContext: LogicalContext): Collection<*> = listOf(left, right).map { a ->
        if (a is LogicalPattern<*>) logicalContext.variable(a)
        else a
    }

}