import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.core.ReactorEvaluationSession
import jetbrains.mps.logic.reactor.core.ReactorPlanningSession
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.predicate.ReactorSessionSolver
import jetbrains.mps.logic.reactor.program.EvaluationSession
import jetbrains.mps.logic.reactor.program.PlanningSession
import org.junit.*
import org.junit.Assert.*

/**
 * @author Fedor Isakov
 */

class TestProgram {

    companion object {
        @BeforeClass @JvmStatic fun setup() {
            ReactorPlanningSession.init();
            ReactorEvaluationSession.init();
        }
        @AfterClass @JvmStatic fun teardown() {
            ReactorEvaluationSession.deinit();
            ReactorPlanningSession.deinit();
        }
    }

    fun Program.session(name: String): EvaluationSession {
        val planningSession = PlanningSession.newSession(name, ReactorSessionSolver(env.expressionSolver, env.equalsSolver))
        planningSession.addRules(rules)
        return EvaluationSession.newSession(planningSession).
            withPredicates(PredicateSymbol("equals", 2), JavaPredicateSymbol.EXPRESSION0, JavaPredicateSymbol.EXPRESSION1, JavaPredicateSymbol.EXPRESSION2, JavaPredicateSymbol.EXPRESSION3).
            withParam("main", occurrence("main")).start()
    }

    @Test
    fun replace() {
        program(
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
        val (X, Y, Z) = logicalPattern<Int>("X", "Y", "Z")
        program(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    statement({ z -> z eq 33 }, Z),
                    constraint("foo", Z)
                )
            ),
            rule("rule1",
                headKept(
                    constraint("foo", X)
                ),
                body(
                    statement({x, y -> y eq (x.get() * 2) }, X, Y),
                    constraint("bar", Y)
                )
            )
        ).session("logicalValue").run {
            assertEquals(setOf(ConstraintSymbol("foo", 1), ConstraintSymbol("bar", 1)), constraintSymbols())
            assertEquals(2, constraintOccurrences().count())
            val yval = constraintOccurrences(ConstraintSymbol("bar", 1)).first().arguments().first()
            assertEquals(66, (yval as Logical<Int>).get())
        }
    }

    @Test
    fun simpleProgram() {
        val (X, Y) = logicalPattern<Int>("X", "Y")

        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x -> x.set(5) }, X),
                                                                    constraint("val", X) )
            ),
            rule("dec",
                headReplaced( constraint("val", X) ),       guard(  expression({ x -> x.get() > 0 }, X) ),
                                                            body(   constraint("trail", X),
                                                                    statement({ x, y -> y.set(x.get() - 1)}, X, Y),
                                                                    constraint("val", Y) )
            )
        ).session("dec").run {
            assertEquals(setOf(ConstraintSymbol("val", 1), ConstraintSymbol("trail", 1)), constraintSymbols())
            assertEquals(1, constraintOccurrences(ConstraintSymbol.symbol("val", 1)).count())
            val a = constraintOccurrences(ConstraintSymbol.symbol("val", 1)).first().arguments().first()
            assertEquals(0, (a as Logical<Int>).get())
            assertEquals(5, constraintOccurrences(ConstraintSymbol.symbol("trail", 1)).count())
            println(constraintOccurrences(ConstraintSymbol.symbol("trail", 1)))
        }
    }

    @Test
    fun gcd() {
        val (M, N, TMP) = logicalPattern<Int>("M", "N", "TMP")
        program(
            rule("main",
                headReplaced( constraint("main") ),     body(   statement({ m, n -> m.set(21); n.set(35) }, M, N),
                                                                constraint("gcd", M),
                                                                constraint("gcd", N) )
            ),
            rule("trivial",
                headReplaced( constraint("gcd", M) ),   guard( expression({ x -> x.get() == 0 }, M) ),
                                                        body( statement {  }  /*nothing*/ )
            ),
            rule("step",
                headKept( constraint("gcd", N) ),
                headReplaced( constraint("gcd", M) ),
                                                        guard(  expression({ m, n -> m.get() >= n.get()}, M, N) ),
                                                        body(   statement({ m, n, tmp -> tmp.set(m.get() - n.get())}, M, N, TMP),
                                                                constraint("gcd", TMP)
                )
            )
        ).session("gcd").run {
            assertEquals(1, constraintOccurrences().count())
            val arg = constraintOccurrences().first().arguments().first()
            assertEquals(7, (arg as Logical<Int>).get())
        }
    }

}
