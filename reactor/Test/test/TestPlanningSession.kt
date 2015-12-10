import jetbrains.mps.logic.reactor.constraint.PredicateSymbol
import jetbrains.mps.logic.reactor.constraint.Queryable
import jetbrains.mps.logic.reactor.constraint.Symbol
import jetbrains.mps.logic.reactor.program.PlanningSession
import jetbrains.mps.logic.reactor.rule.InvalidConstraintException
import jetbrains.mps.logic.reactor.rule.InvalidRuleException
import jetbrains.mps.logic.reactor.core.ReactorPlanningSession
import jetbrains.mps.logic.reactor.predicate.ReactorSessionSolver
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import java.util.*
import kotlin.reflect.KClass
import kotlin.test.assertEquals
import kotlin.test.expect

/**
 * @author Fedor Isakov
 */

class TestPlanningSession {

    companion object {
        @BeforeClass @JvmStatic fun setup() {
            ReactorPlanningSession.init();
        }
    }

    val dummySolver = object : Queryable {
        override fun ask(predicateSymbol: PredicateSymbol?, vararg args: Any?): Boolean = TODO()
        override fun tell(symbol: Symbol?, vararg args: Any?) = TODO()
    }

    @Before fun beforeTest() {
        session = PlanningSession.newSession("test", ReactorSessionSolver(dummySolver, dummySolver))
    }

    lateinit var session: PlanningSession

    @Test fun empty() {
        session.addRules(ArrayList())
    }

    @Test(expected = InvalidRuleException::class)
    fun emptyBody() {
        program(
            rule("foo",
                headKept(
                    constraint("bar")
                ))).run {

            session.addRules(rules)
            assertEquals(session.rules().count(), 1)
        }
    }

    @Test
    fun replace() {
        program(
            rule("foo",
                headReplaced(
                    constraint("bar")
                ),
                body(
                    constraint("baz")
                )),
            rule("qux",
                headReplaced(
                    constraint("bar")
                ),
                headKept(
                    constraint("quux")
                ),
                body(
                    constraint("blah")
                ))).run {

            session.addRules(rules)
            assertEquals(session.rules().count(), 2)
        }
    }

    @Test(expected = InvalidConstraintException::class)
    fun fail() {
        program(
            rule("foo",
                headReplaced(
                    constraint("bar", 1)
                ),
                body(
                    constraint("bar", "1")
                ))).run {

            session.addRules(rules)
        }
    }
}




