import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import org.junit.AfterClass
import org.junit.Assert.assertEquals
import org.junit.BeforeClass
import org.junit.Test
import program.MockConstraint
import solver.askEquals
import solver.tellEquals

/**
 * @author Fedor Isakov
 */

class TestProgram {

    companion object {
        @BeforeClass
        @JvmStatic
        fun setup() {
            ReactorLifecycle.init();
        }

        @AfterClass
        @JvmStatic
        fun teardown() {
            ReactorLifecycle.deinit();
        }
    }

    private fun Builder.session(name: String): StoreView {
        val session = EvaluationSession.newSession(program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .start(MockSupervisor())
        return session.storeView()
    }

    private fun <T : Any> PredicateInvocation.eq(left: T, right: T) = invocationContext().tellEquals(left, right)

    private fun <T : Any> PredicateInvocation.is_eq(left: T, right: T): Boolean = invocationContext().askEquals(left, right)

    @Test
    fun replace() {
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("main.foo",
                headKept(
                    constraint("foo")
                ),
                body(
                    constraint("bar")
                )
            )
        ).session("replace").run {
            assertEquals(setOf(ConstraintSymbol("foo", 0), ConstraintSymbol("bar", 0)), constraintSymbols())
        }
    }

    @Test
    fun logicalValue() {
        val (X, Y, Z) = metaLogical<Int>("X", "Y", "Z")
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    statement({ z -> eq(z, 33) }, Z),
                    constraint("foo", Z)
                )
            ),
            rule("rule1",
                headKept(
                    constraint("foo", X)
                ),
                body(
                    statement({ x, y -> eq(y, (x.get() * 2)) }, X, Y),
                    constraint("bar", Y)
                )
            )
        ).session("logicalValue").run {
            assertEquals(setOf(ConstraintSymbol("foo", 1), ConstraintSymbol("bar", 1)), constraintSymbols())
            assertEquals(2, allOccurrences().count())
            val yval = occurrences(ConstraintSymbol("bar", 1)).first().arguments().first()
            assertEquals(66, (yval as Logical<Int>).get())
        }
    }

    @Test
    fun simpleProgram() {
        val (X, Y) = metaLogical<Int>("X", "Y")

        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x -> x.set(5) }, X),
                constraint("val", X))
            ),
            rule("dec",
                headReplaced(constraint("val", X)), guard(expression({ x -> x.get() > 0 }, X)),
                body(constraint("trail", X),
                    statement({ x, y -> y.set(x.get() - 1) }, X, Y),
                    constraint("val", Y))
            )
        ).session("dec").run {
            assertEquals(setOf(ConstraintSymbol("val", 1), ConstraintSymbol("trail", 1)), constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol.symbol("val", 1)).count())
            val a = occurrences(ConstraintSymbol.symbol("val", 1)).first().arguments().first()
            assertEquals(0, (a as Logical<Int>).get())
            assertEquals(5, occurrences(ConstraintSymbol.symbol("trail", 1)).count())
        }
    }

    @Test
    fun gcd() {
        val (M, N, TMP) = metaLogical<Int>("M", "N", "TMP")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ m, n -> m.set(21); n.set(35) }, M, N),
                constraint("gcd", M),
                constraint("gcd", N))
            ),
            rule("trivial",
                headReplaced(constraint("gcd", M)), guard(expression({ x -> x.get() == 0 }, M)),
                body(statement { }  /*nothing*/)
            ),
            rule("step",
                headKept(constraint("gcd", N)),
                headReplaced(constraint("gcd", M)),
                guard(expression({ m, n -> m.get() >= n.get() }, M, N)),
                body(statement({ m, n, tmp -> tmp.set(m.get() - n.get()) }, M, N, TMP),
                    constraint("gcd", TMP)
                )
            )
        ).session("gcd").run {
            assertEquals(1, allOccurrences().count())
            val arg = allOccurrences().first().arguments().first()
            assertEquals(7, (arg as Logical<Int>).get())
        }
    }


    @Test
    fun primes() {
        val (M, N) = metaLogical<Int>("M", "N")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ n -> n.set(10) }, N),
                constraint("prime", N))
            ),
            rule("gen",
                headKept(constraint("prime", N)), guard(expression({ n -> n.get() > 2 }, N)),
                body(statement({ m, n -> m.set(n.get() - 1) }, M, N),
                    constraint("prime", M))
            ),
            rule("sift",
                headKept(constraint("prime", M)),
                headReplaced(constraint("prime", N)),
                guard(expression({ m, n -> (n.get() % m.get()) == 0 }, M, N)),
                body(statement { } /* nothing */)
            )
        ).session("primes").run {
            assertEquals(4, allOccurrences().count())
            assertEquals(setOf(2, 3, 5, 7), occurrences(ConstraintSymbol.symbol("prime", 1)).flatMap { co -> co.arguments() }.map { a -> (a as Logical<Int>).findRoot().value() }.toSet())
        }

    }

}
