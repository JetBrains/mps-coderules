import jetbrains.mps.logic.reactor.evaluation.AbstractSolver
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.program.InvalidConstraintException
import jetbrains.mps.logic.reactor.program.InvalidRuleException
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import solver.MockSessionSolver

/**
 * @author Fedor Isakov
 */

class TestProgramBuilder {

    val sessionSolver = MockSessionSolver()

    @Before fun beforeTest() {
        programBuilder = ProgramBuilder(MockConstraintRegistry(sessionSolver))
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
            assertEquals(programBuilder.program("test").handlers().flatMap { it.rules() }.count(), 2)
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



