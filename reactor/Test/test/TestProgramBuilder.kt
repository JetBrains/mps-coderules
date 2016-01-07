import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.predicate.MemSessionSolver
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

    val dummySolver = object : Queryable {
        override fun ask(predicateSymbol: PredicateSymbol?, vararg args: Any?): Boolean = TODO()
        override fun tell(symbol: Symbol?, vararg args: Any?) = TODO()
    }

    val sessionSolver = MemSessionSolver(dummySolver, dummySolver)

    @Before fun beforeTest() {
        programBuilder = MemProgramBuilder(sessionSolver)
    }

    lateinit var programBuilder: ProgramBuilder

    private fun ProgramBuilder.addRules(rules: List<Rule>) {
        rules.forEach { r -> addRule(r) }
    }

    @Test(expected = InvalidRuleException::class)
    fun emptyBody() {
        program(programBuilder,
            rule("foo",
                headKept(
                    constraint("bar")
                ))).run {

            programBuilder.addRules(rules)
            assertEquals(programBuilder.program("test", sessionSolver).rules().count(), 1)
        }
    }

    @Test
    fun replace() {
        program(programBuilder,
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

            programBuilder.addRules(rules)
            assertEquals(programBuilder.program("test", sessionSolver).rules().count(), 2)
        }
    }

    @Test(expected = InvalidConstraintException::class)
    fun fail() {
        program(programBuilder,
            rule("foo",
                headReplaced(
                    constraint("bar", 1)
                ),
                body(
                    constraint("bar", "1")
                ))).run {

            programBuilder.addRules(rules)
        }
    }
}



