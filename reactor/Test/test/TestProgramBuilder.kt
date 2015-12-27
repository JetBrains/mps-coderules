import jetbrains.mps.logic.reactor.core.MemProgram
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

    @Before fun beforeTest() {
        program = MemProgram("test", MemSessionSolver(dummySolver, dummySolver))
    }

    lateinit var program: Program

    @Test fun empty() {
        program.addRules(ArrayList())
    }

    @Test(expected = InvalidRuleException::class)
    fun emptyBody() {
        program(
            rule("foo",
                headKept(
                    constraint("bar")
                ))).run {

            program.addRules(rules)
            assertEquals(program.rules().count(), 1)
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

            program.addRules(rules)
            assertEquals(program.rules().count(), 2)
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

            program.addRules(rules)
        }
    }
}




