import jetbrains.mps.logic.reactor.constraint.PredicateSymbol
import jetbrains.mps.logic.reactor.constraint.Queryable
import jetbrains.mps.logic.reactor.constraint.Symbol
import jetbrains.mps.logic.reactor.core.ReactorEvaluationSession
import jetbrains.mps.logic.reactor.core.ReactorPlanningSession
import jetbrains.mps.logic.reactor.predicate.ReactorSessionSolver
import jetbrains.mps.logic.reactor.program.EvaluationSession
import jetbrains.mps.logic.reactor.program.PlanningSession
import org.junit.AfterClass
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import kotlin.test.assertEquals

/**
 * @author Fedor Isakov
 */

class TestBasicProgram {

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

    val dummySolver = object : Queryable {
        override fun ask(predicateSymbol: PredicateSymbol?, vararg args: Any?): Boolean = TODO()
        override fun tell(symbol: Symbol?, vararg args: Any?) = TODO()
    }

    @Before fun beforeTest() {
        planningSession = PlanningSession.newSession("test", ReactorSessionSolver(dummySolver, dummySolver))
        evalConfig = EvaluationSession.newSession(planningSession)
    }

    lateinit var planningSession: PlanningSession
    lateinit var evalConfig: EvaluationSession.Config

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
                headReplaced(
                    constraint("foo")
                ),
                body(
                    constraint("bar")
                ))).run {

            planningSession.addRules(rules)
            assertEquals(planningSession.rules().count(), 2)
            val session = evalConfig.start()
        }
    }
}
