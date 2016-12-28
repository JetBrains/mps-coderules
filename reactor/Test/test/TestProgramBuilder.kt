import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.evaluation.Solver
import solver.MockSessionSolver
import jetbrains.mps.logic.reactor.program.*
import org.junit.AfterClass
import org.junit.Assert.*
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import java.util.*
import kotlin.reflect.KClass

/**
 * @author Fedor Isakov
 */

class TestProgramBuilder {

    val dummySolver = object : Solver {
        override fun predicate(predicateSymbol: PredicateSymbol?, vararg args: Any?): Predicate? = TODO()
        override fun ask(invocation: PredicateInvocation?): Boolean = TODO()
        override fun tell(invocation: PredicateInvocation?) = TODO()
    }

    val sessionSolver = MockSessionSolver(dummySolver, dummySolver)

    @Before fun beforeTest() {
        programBuilder = ProgramBuilder(ConstraintRegistry(sessionSolver))
    }

    lateinit var programBuilder: ProgramBuilder

    @Test(expected = InvalidRuleException::class)
    fun emptyBody() {
        programWithRules(programBuilder,
            rule("foo",
                headKept(
                    constraint("bar")
                ))).run {

            programBuilder.addHandler(MockHandler("test", emptyList(), rules))
            assertEquals(programBuilder.program("test").rules().count(), 1)
            assertEquals(programBuilder.program("test").rules().count(), 1)
        }
    }

    @Test
    fun replace() {
        programWithRules(programBuilder,
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

            programBuilder.addHandler(MockHandler("test", emptyList(), rules))
            assertEquals(programBuilder.program("test").rules().count(), 2)
        }
    }

    @Test(expected = InvalidConstraintException::class)
    fun fail() {
        programWithRules(programBuilder,
            rule("foo",
                headReplaced(
                    constraint("bar", 1)
                ),
                body(
                    constraint("bar", "1")
                ))).run {

            programBuilder.addHandler(MockHandler("test", emptyList(), rules))
        }
    }
}



