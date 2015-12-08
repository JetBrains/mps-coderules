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

    @Before fun beforeTest() {
        session = PlanningSession.newSession("test", ReactorSessionSolver())
    }

    lateinit var session: PlanningSession

    @Test fun empty() {
        session.addRules(ArrayList())
    }

    @Test(expected = InvalidRuleException::class)
    fun emptyBody() {
        session.addRules(arrayListOf(
            rule("foo",
                headKept(
                    constraint("bar")
                ))
        ))
        assertEquals(session.rules().count(), 1)
    }

    @Test
    fun replace() {
        session.addRules(arrayListOf(
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
                ))
        ))
        assertEquals(session.rules().count(), 2)
    }

    @Test(expected = InvalidConstraintException::class)
    fun fail() {
        session.addRules(arrayListOf(
            rule("foo",
                headReplaced(
                    constraint("bar", 1)
                ),
                body(
                    constraint("bar", "1")
                ))
        ))
    }
}




