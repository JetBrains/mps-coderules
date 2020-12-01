import jetbrains.mps.logic.reactor.program.InvalidConstraintException
import jetbrains.mps.logic.reactor.program.InvalidRuleException
import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * @author Fedor Isakov
 */

class TestProgramBuilder {

    @Test(expected = InvalidRuleException::class)
    fun emptyBody() {
        programWithRules(
            rule("foo",
                headKept(
                    constraint("bar")
                )
            )
        ).run {
            program("test")
        }
    }

    @Test
    fun replace() {
        programWithRules(
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
                )
            )
        ).run {
            assertEquals(program("test").rules().count(), 2)
        }
    }

    @Test(expected = InvalidConstraintException::class)
    fun fail() {
        programWithRules(
            rule("foo",
                headReplaced(
                    constraint("bar", 1)
                ),
                body(
                    constraint("bar", "1")
                )
            )
        ).run {
            program("test")
        }
    }
}



