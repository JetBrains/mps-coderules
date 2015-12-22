import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import java.util.*

/**
 * @author Fedor Isakov
 */


fun expression(body: () -> Boolean): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(1).withCode(body))
}

fun <X> expression(body: (X) -> Boolean, x: X): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(2).withCode(body, x))
}

fun <X, Y> expression(body: (X, Y) -> Boolean, x: X, y: Y): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(3).withCode(body, x, y))
}

fun <X, Y, Z> expression(body: (X, Y, Z) -> Boolean, x: X, y: Y, z: Z): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(4).withCode(body, x, y, z))
}

fun statement(body: () -> Unit): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(1).withCode { body.invoke(); true  })
}

fun <X> statement(body: (X) -> Unit, x: X): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(2).withCode({ x -> body.invoke(x); true }, x))
}

fun <X, Y> statement(body: (X, Y) -> Unit, x: X, y: Y): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(3).withCode({ x, y -> body.invoke(x, y); true }, x, y))
}

fun <X, Y, Z> statement(body: (X, Y, Z) -> Unit, x: X, y: Y, z: Z): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol(4).withCode({ x, y, z -> body.invoke(x, y, z); true }, x, y, z))
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

    private val javaPredicates = HashMap<Int, TestJavaPredicate>()

    private fun addJavaPredicate(javaPredicate: TestJavaPredicate) {
        javaPredicates[javaPredicate.args[0] as Int] = javaPredicate
    }

    private fun ERROR(msg: String) : Nothing = throw IllegalArgumentException(msg)
}

interface JavaExpression {
    fun invoke(args: List<*>): Boolean
}

data class TestJavaPredicate(val symbol: JavaPredicateSymbol, val expr: JavaExpression, val args: List<*>) : Predicate {

    override fun arguments(): List<*> = args

    override fun symbol(): PredicateSymbol = symbol

}

private fun JavaPredicateSymbol.withCode(code: () -> Boolean) =
    TestJavaPredicate(this, JavaExpression0(code), listOf(System.identityHashCode(code)))

private fun <X> JavaPredicateSymbol.withCode(code: (X) -> Boolean, x: X) =
    TestJavaPredicate(this, JavaExpression1(code), listOf(System.identityHashCode(code), x))

private fun <X, Y> JavaPredicateSymbol.withCode(code: (X, Y) -> Boolean, x: X, y: Y) =
    TestJavaPredicate(this, JavaExpression2(code), listOf(System.identityHashCode(code), x, y))

private fun <X, Y, Z> JavaPredicateSymbol.withCode(code: (X, Y, Z) -> Boolean, x: X, y: Y, z: Z) =
    TestJavaPredicate(this, JavaExpression3(code), listOf(System.identityHashCode(code), x, y, z))


private class JavaExpression0(val code: () -> Boolean) : JavaExpression {
    override fun invoke(args: List<*>): Boolean {
        if (args.size != 0) throw IllegalArgumentException("arity mismatch")
        return code()
    }
}

private class JavaExpression1<X>(val code: (X) -> Boolean) : JavaExpression {
    override fun invoke(args: List<*>): Boolean {
        if (args.size != 1) throw IllegalArgumentException("arity mismatch")
        return code(args[0] as X)
    }
}

private class JavaExpression2<X,Y>(val code: (X, Y) -> Boolean) : JavaExpression {
    override fun invoke(args: List<*>): Boolean {
        if (args.size != 2) throw IllegalArgumentException("arity mismatch")
        return code(args[0] as X, args[1] as Y)
    }
}

private class JavaExpression3<X,Y,Z>(val code: (X, Y, Z) -> Boolean) : JavaExpression {
    override fun invoke(args: List<*>): Boolean {
        if (args.size != 3) throw IllegalArgumentException("arity mismatch")
        return code(args[0] as X, args[1] as Y, args[2] as Z)
    }
}

