import jetbrains.mps.logic.reactor.constraint.*
import java.util.*

/**
 * @author Fedor Isakov
 */


fun expression(body: () -> Boolean): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(1), body))
}

fun expression(body: (Any) -> Boolean, arg1: Any): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(2), body, arg1))
}

fun expression(body: (Any, Any) -> Boolean, arg1: Any, arg2: Any): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(3), body, arg1, arg2))
}

fun expression(body: (Any, Any, Any) -> Boolean, arg1: Any, arg2: Any, arg3: Any): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(4), body, arg1, arg2, arg3))
}

class ExpressionSolver : Queryable {

    override fun ask(predicateSymbol: PredicateSymbol, vararg args: Any): Boolean {
        if (predicateSymbol.arity() != args.size) ERROR("arity mismatch")
        return javaPredicates[args[0]]?.expr?.invoke(listOf(* args).drop(1)) ?:
            ERROR("no such symbol $predicateSymbol")
    }

    override fun tell(symbol: Symbol, vararg args: Any) {
        if (symbol.arity() != args.size) ERROR("arity mismatch")
        when (symbol) {
            is JavaPredicateSymbol -> javaPredicates[args[0]]?.expr?.invoke(listOf(* args).drop(1))
            else                    -> ERROR("uknown symbol $symbol")
        }
    }

    fun addMaybeJavaPredicate(item: AndItem) {
        if (item is TestJavaPredicate) {
            addJavaPredicate(item)
        }
    }

    private val javaPredicates = HashMap<Any, TestJavaPredicate>()

    private fun addJavaPredicate(javaPredicate: TestJavaPredicate) {
        javaPredicates[javaPredicate.args[0]] = javaPredicate
    }

    private fun ERROR(msg: String) : Nothing = throw IllegalArgumentException(msg)
}

private interface JavaExpression {
    fun invoke(args: List<Any>): Boolean
}

private class JavaExpression0(val code: () -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 0) throw IllegalArgumentException("arity mismatch")
        return code()
    }
}

private class JavaExpression1(val code: (Any) -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 1) throw IllegalArgumentException("arity mismatch")
        return code(args[0])
    }
}

private class JavaExpression2(val code: (Any, Any) -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 2) throw IllegalArgumentException("arity mismatch")
        return code(args[0], args[1])
    }
}

private class JavaExpression3(val code: (Any, Any, Any) -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 3) throw IllegalArgumentException("arity mismatch")
        return code(args[0], args[1], args[2])
    }
}

private data class TestJavaPredicate(val symbol: JavaPredicateSymbol, val expr: JavaExpression, val args: List<Any>) : Predicate {

    constructor(symbol: JavaPredicateSymbol, code: () -> Boolean) :
        this(symbol, JavaExpression0(code), listOf(System.identityHashCode(code))) {}

    constructor(symbol: JavaPredicateSymbol, code: (Any) -> Boolean, arg1: Any) :
        this(symbol, JavaExpression1(code), listOf(System.identityHashCode(code), arg1)) {}

    constructor(symbol: JavaPredicateSymbol, code: (Any, Any) -> Boolean, arg1: Any, arg2: Any) :
        this(symbol, JavaExpression2(code), listOf(System.identityHashCode(code), arg1, arg2)) {}

    constructor(symbol: JavaPredicateSymbol, code: (Any, Any, Any) -> Boolean, arg1: Any, arg2: Any, arg3: Any) :
        this(symbol, JavaExpression3(code), listOf(System.identityHashCode(code), arg1, arg2, arg3)) {}

    override fun arguments(): List<Any> = args

    override fun symbol(): PredicateSymbol = symbol

}
