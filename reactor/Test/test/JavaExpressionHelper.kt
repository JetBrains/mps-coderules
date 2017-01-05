import jetbrains.mps.logic.reactor.evaluation.AbstractSolver
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.program.Solver
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import java.util.*

/**
 * @author Fedor Isakov
 */


fun expression(body: () -> Boolean): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol.withArity(0).withCode(body))
}

fun <X, LX: Logical<X>, LPX: MetaLogical<X>>
    expression(body: (LX) -> Boolean, x: LPX): ConjBuilder.() -> Unit = {
        add(JavaPredicateSymbol.withArity(1).withCode(body, x))
    }

fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
     Y, LY: Logical<Y>, LPY: MetaLogical<Y>>
    expression(body: (LX, LY) -> Boolean, x: LPX, y: LPY): ConjBuilder.() -> Unit = {
        add(JavaPredicateSymbol.withArity(2).withCode(body, x, y))
    }

fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
     Y, LY: Logical<Y>, LPY: MetaLogical<Y>,
     Z, LZ: Logical<Z>, LPZ: MetaLogical<Z>>
    expression(body: (LX, LY, LZ) -> Boolean, x: LPX, y: LPY, z: LPZ): ConjBuilder.() -> Unit = {
        add(JavaPredicateSymbol.withArity(3).withCode(body, x, y, z))
    }

fun statement(body: () -> Unit): ConjBuilder.() -> Unit = {
    add(JavaPredicateSymbol.withArity(0).withCode { body.invoke(); true  })
}

fun <X, LPX: MetaLogical<X>>
        statement(
            body: (Logical<X>) -> Unit, x: LPX): ConjBuilder.() -> Unit = {
                add(JavaPredicateSymbol.withArity(1).withCode({ x -> body.invoke(x); true }, x))
        }

fun <X, LPX: MetaLogical<X>,
     Y, LPY: MetaLogical<Y>>
        statement(body: (Logical<X>, Logical<Y>) -> Unit, x: LPX, y: LPY): ConjBuilder.() -> Unit = {
            add(JavaPredicateSymbol.withArity(2).withCode({ x, y -> body.invoke(x, y); true }, x, y))
        }

fun <X, LPX: MetaLogical<X>,
     Y, LPY: MetaLogical<Y>,
     Z, LPZ: MetaLogical<Z>>
        statement(body: (Logical<X>, Logical<Y>, Logical<Z>) -> Unit, x: LPX, y: LPY, z: LPZ): ConjBuilder.() -> Unit = {
            add(JavaPredicateSymbol.withArity(3).withCode({ x, y, z -> body.invoke(x, y, z); true }, x, y, z))
        }

class ExpressionSolver : AbstractSolver() {

    override fun invocationArguments(predicate: Predicate, logicalContext: LogicalContext): List<*> =
        predicate.arguments().map { a ->
            if (a is MetaLogical<*>) logicalContext.variable(a)
            else a
        }

    override fun ask(invocation: PredicateInvocation): Boolean {
        return javaPredicates[invocation.arguments().get(0)]?.expr?.invoke(invocation.arguments().drop(1)) ?:
            ERROR("no such symbol ${invocation.predicate().symbol()}")
    }

    override fun tell(invocation: PredicateInvocation) {
        when (invocation.predicate().symbol()) {
            is JavaPredicateSymbol -> javaPredicates[invocation.arguments().get(0)]?.expr?.invoke(invocation.arguments().drop(1))
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
    fun invoke(args: List<*>): Boolean
}

data class TestJavaPredicate(val symbol: JavaPredicateSymbol, val expr: JavaExpression, val args: List<*>) : Predicate {

    override fun arguments(): List<*> = args

    override fun symbol(): PredicateSymbol = symbol

}

private fun JavaPredicateSymbol.withCode(code: () -> Boolean) =
    TestJavaPredicate(this, JavaExpression0(code), listOf(System.identityHashCode(code)))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>>
    JavaPredicateSymbol.withCode(code: (LX) -> Boolean, x: LPX) =
        TestJavaPredicate(this, JavaExpression1(code), listOf(System.identityHashCode(code), x))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
             Y, LY: Logical<Y>, LPY: MetaLogical<Y>>
    JavaPredicateSymbol.withCode(code: (LX, LY) -> Boolean, x: LPX, y: LPY) =
        TestJavaPredicate(this, JavaExpression2(code), listOf(System.identityHashCode(code), x, y))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
             Y, LY: Logical<Y>, LPY: MetaLogical<Y>,
             Z, LZ: Logical<Z>, LPZ: MetaLogical<Z>>
                JavaPredicateSymbol.withCode(code: (LX, LY, LZ) -> Boolean, x: LPX, y: LPY, z: LPZ) =
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

