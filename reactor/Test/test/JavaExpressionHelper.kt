import jetbrains.mps.logic.reactor.evaluation.AbstractSolver
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.AndItem
import jetbrains.mps.logic.reactor.program.JavaPredicateSymbol
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import java.util.*

/**
 * @author Fedor Isakov
 */


fun expression(body: PredicateInvocation.() -> Boolean): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol.withArity(0).withCode(body))
}

fun <X, LX: Logical<X>, LPX: MetaLogical<X>>
    expression(body: PredicateInvocation.(LX) -> Boolean, x: LPX): ConjBuilder.() -> Unit = {
        add(JavaPredicateSymbol.withArity(1).withCode(body, x))
    }

fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
     Y, LY: Logical<Y>, LPY: MetaLogical<Y>>
    expression(body: PredicateInvocation.(LX, LY) -> Boolean, x: LPX, y: LPY): ConjBuilder.() -> Unit = {
        add(JavaPredicateSymbol.withArity(2).withCode(body, x, y))
    }

fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
     Y, LY: Logical<Y>, LPY: MetaLogical<Y>,
     Z, LZ: Logical<Z>, LPZ: MetaLogical<Z>>
    expression(body: PredicateInvocation.(LX, LY, LZ) -> Boolean, x: LPX, y: LPY, z: LPZ): ConjBuilder.() -> Unit = {
        add(JavaPredicateSymbol.withArity(3).withCode(body, x, y, z))
    }

fun statement(body: PredicateInvocation.() -> Unit): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol.withArity(0).withCode { body(); true  })
}

fun <X, LPX: MetaLogical<X>>
        statement(
            body: PredicateInvocation.(Logical<X>) -> Unit, x: LPX): ConjBuilder.() -> Unit = {
                add(JavaPredicateSymbol.withArity(1).withCode({ x -> body(x); true }, x))
        }

fun <X, LPX: MetaLogical<X>,
     Y, LPY: MetaLogical<Y>>
        statement(body: PredicateInvocation.(Logical<X>, Logical<Y>) -> Unit, x: LPX, y: LPY): ConjBuilder.() -> Unit = {
            add(JavaPredicateSymbol.withArity(2).withCode({ x, y -> body(x, y); true }, x, y))
        }

fun <X, LPX: MetaLogical<X>,
     Y, LPY: MetaLogical<Y>,
     Z, LPZ: MetaLogical<Z>>
        statement(body: PredicateInvocation.(Logical<X>, Logical<Y>, Logical<Z>) -> Unit, x: LPX, y: LPY, z: LPZ): ConjBuilder.() -> Unit = {
            add(JavaPredicateSymbol.withArity(3).withCode({ x, y, z -> body(x, y, z); true }, x, y, z))
        }

class ExpressionSolver : AbstractSolver() {

    override fun ask(invocation: PredicateInvocation): Boolean {
        return javaPredicates[invocation.arguments().get(0)]?.expr?.invoke(invocation, invocation.arguments().drop(1)) ?:
            ERROR("no such symbol ${invocation.predicate().symbol()}")
    }

    override fun tell(invocation: PredicateInvocation) {
        when (invocation.predicate().symbol()) {
            is JavaPredicateSymbol -> javaPredicates[invocation.arguments().get(0)]?.expr?.invoke(invocation, invocation.arguments().drop(1))
            else                    -> ERROR("uknown symbol ${invocation.predicate().symbol()}")
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
    fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean
}

data class TestJavaPredicate(val symbol: JavaPredicateSymbol, val expr: JavaExpression, val args: List<*>) : Predicate {

    override fun arguments(): List<*> = args

    override fun symbol(): PredicateSymbol = symbol

}

private fun JavaPredicateSymbol.withCode(code: PredicateInvocation.() -> Boolean) =
    TestJavaPredicate(this, JavaExpression0(code), listOf(System.identityHashCode(code)))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>>
    JavaPredicateSymbol.withCode(code: PredicateInvocation.(LX) -> Boolean, x: LPX) =
        TestJavaPredicate(this, JavaExpression1(code), listOf(System.identityHashCode(code), x))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
             Y, LY: Logical<Y>, LPY: MetaLogical<Y>>
    JavaPredicateSymbol.withCode(code: PredicateInvocation.(LX, LY) -> Boolean, x: LPX, y: LPY) =
        TestJavaPredicate(this, JavaExpression2(code), listOf(System.identityHashCode(code), x, y))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
             Y, LY: Logical<Y>, LPY: MetaLogical<Y>,
             Z, LZ: Logical<Z>, LPZ: MetaLogical<Z>>
                JavaPredicateSymbol.withCode(code: PredicateInvocation.(LX, LY, LZ) -> Boolean, x: LPX, y: LPY, z: LPZ) =
                    TestJavaPredicate(this, JavaExpression3(code), listOf(System.identityHashCode(code), x, y, z))

private class JavaExpression0(val code: PredicateInvocation.() -> Boolean) : JavaExpression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 0) throw IllegalArgumentException("arity mismatch")
        return invocation.code()
    }
}

private class JavaExpression1<X>(val code: PredicateInvocation.(X) -> Boolean) : JavaExpression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 1) throw IllegalArgumentException("arity mismatch")
        return invocation.code(args[0] as X)
    }
}

private class JavaExpression2<X,Y>(val code: PredicateInvocation.(X, Y) -> Boolean) : JavaExpression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 2) throw IllegalArgumentException("arity mismatch")
        return invocation.code(args[0] as X, args[1] as Y)
    }
}

private class JavaExpression3<X,Y,Z>(val code: PredicateInvocation.(X, Y, Z) -> Boolean) : JavaExpression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 3) throw IllegalArgumentException("arity mismatch")
        return invocation.code(args[0] as X, args[1] as Y, args[2] as Z)
    }
}

