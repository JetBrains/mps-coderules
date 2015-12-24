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
            val yval = constraintOccurrences(ConstraintSymbol("bar", 1)).first().arguments().first()
            assertEquals(66, (yval as Logical<Int>).get())
        }
    }


}
