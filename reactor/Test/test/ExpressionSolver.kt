import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.Solver
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.PredicateSymbol

/*
 * Copyright 2014-2019 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @author Fedor Isakov
 */


class ExpressionPredicateSymbol (val expr: Expression, val arity: Int) :
    PredicateSymbol("expression_${System.identityHashCode(expr)}", arity)
{     

    override fun solver(): Solver = ExpressionSolver()

    inner class ExpressionSolver : Solver {

        override fun ask(invocation: PredicateInvocation): Boolean {
            return expr.invoke(invocation, invocation.arguments())
        }

        override fun tell(invocation: PredicateInvocation) {
            expr.invoke(invocation, invocation.arguments())
        }
    }

}

data class ExpressionPredicate(val symbol: ExpressionPredicateSymbol, val args: List<*>) : Predicate {

    override fun arguments(): List<*> = args

    override fun symbol(): PredicateSymbol = symbol

}

interface Expression {
    fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean
}

fun expression(body: PredicateInvocation.() -> Boolean): ConjBuilder.() -> Unit = {
    add(withCode(body))
}

fun <X, LX: Logical<X>, LPX: MetaLogical<X>>
    expression(body: PredicateInvocation.(LX) -> Boolean, x: LPX): ConjBuilder.() -> Unit = {
    add(withCode(body, x))
}

fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
    Y, LY: Logical<Y>, LPY: MetaLogical<Y>>
    expression(body: PredicateInvocation.(LX, LY) -> Boolean, x: LPX, y: LPY): ConjBuilder.() -> Unit = {
    add(withCode(body, x, y))
}

fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
    Y, LY: Logical<Y>, LPY: MetaLogical<Y>,
    Z, LZ: Logical<Z>, LPZ: MetaLogical<Z>>
    expression(body: PredicateInvocation.(LX, LY, LZ) -> Boolean, x: LPX, y: LPY, z: LPZ): ConjBuilder.() -> Unit = {
    add(withCode(body, x, y, z))
}

fun statement(body: PredicateInvocation.() -> Unit): ConjBuilder.() -> Unit = {
    add(withCode { body(); true  })
}

fun <X, LPX: MetaLogical<X>>
    statement(
    body: PredicateInvocation.(Logical<X>) -> Unit, x: LPX): ConjBuilder.() -> Unit = {
    add(withCode({ x -> body(x); true }, x))
}

fun <X, LPX: MetaLogical<X>,
    Y, LPY: MetaLogical<Y>>
    statement(body: PredicateInvocation.(Logical<X>, Logical<Y>) -> Unit, x: LPX, y: LPY): ConjBuilder.() -> Unit = {
    add(withCode({ x, y -> body(x, y); true }, x, y))
}

fun <X, LPX: MetaLogical<X>,
    Y, LPY: MetaLogical<Y>,
    Z, LPZ: MetaLogical<Z>>
    statement(body: PredicateInvocation.(Logical<X>, Logical<Y>, Logical<Z>) -> Unit, x: LPX, y: LPY, z: LPZ): ConjBuilder.() -> Unit = {
    add(withCode({ x, y, z -> body(x, y, z); true }, x, y, z))
}

private fun withCode(code: PredicateInvocation.() -> Boolean) =
    ExpressionPredicate(ExpressionPredicateSymbol(Expression0(code), 0), emptyList<Any>())

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>>
    withCode(code: PredicateInvocation.(LX) -> Boolean, x: LPX) =
    ExpressionPredicate(ExpressionPredicateSymbol(Expression1(code), 1),  listOf(x))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
    Y, LY: Logical<Y>, LPY: MetaLogical<Y>>
    withCode(code: PredicateInvocation.(LX, LY) -> Boolean, x: LPX, y: LPY) =
    ExpressionPredicate(ExpressionPredicateSymbol(Expression2(code), 2), listOf(x, y))

private fun <X, LX: Logical<X>, LPX: MetaLogical<X>,
    Y, LY: Logical<Y>, LPY: MetaLogical<Y>,
    Z, LZ: Logical<Z>, LPZ: MetaLogical<Z>>
    withCode(code: PredicateInvocation.(LX, LY, LZ) -> Boolean, x: LPX, y: LPY, z: LPZ) =
    ExpressionPredicate(ExpressionPredicateSymbol(Expression3(code), 3), listOf(x, y, z))

private class Expression0(val code: PredicateInvocation.() -> Boolean) : Expression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 0) throw IllegalArgumentException("arity mismatch")
        return invocation.code()
    }
}

private class Expression1<X>(val code: PredicateInvocation.(X) -> Boolean) : Expression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 1) throw IllegalArgumentException("arity mismatch")
        return invocation.code(args[0] as X)
    }
}

private class Expression2<X,Y>(val code: PredicateInvocation.(X, Y) -> Boolean) : Expression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 2) throw IllegalArgumentException("arity mismatch")
        return invocation.code(args[0] as X, args[1] as Y)
    }
}

private class Expression3<X,Y,Z>(val code: PredicateInvocation.(X, Y, Z) -> Boolean) : Expression {
    override fun invoke(invocation: PredicateInvocation, args: List<*>): Boolean {
        if (args.size != 3) throw IllegalArgumentException("arity mismatch")
        return invocation.code(args[0] as X, args[1] as Y, args[2] as Z)
    }
}


