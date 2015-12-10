import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.core.RuleHandler
import jetbrains.mps.logic.reactor.logical.ILogical
import jetbrains.mps.logic.reactor.predicate.ReactorSessionSolver
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertTrue

/**
 * @author Fedor Isakov
 */


class TestRuleHandler {

    fun sessionSolver(exprSolver: Queryable, equalsSolver: Queryable) : SessionSolver =
        ReactorSessionSolver(exprSolver, equalsSolver).apply {
            init(PredicateSymbol("equals",2), JavaPredicateSymbol.EXPRESSION0, JavaPredicateSymbol.EXPRESSION1, JavaPredicateSymbol.EXPRESSION2, JavaPredicateSymbol.EXPRESSION3) }

    fun Program.handler(vararg occurrences: ConstraintOccurrence): RuleHandler =
        RuleHandler(sessionSolver(env.expressionSolver, env.equalsSolver), rules, occurrenceFactory(), listOf(* occurrences))

    companion object {
        @BeforeClass @JvmStatic fun setup() {

        }
    }

    @Before fun beforeTest() {
    }

    @Test
    fun matchSingle() {
        program(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                ))).run {

            val main = rules.first()

            val matches = handler().lookupMatches(occurrence("main"))
            val match = matches.single()
            assertFalse(match.isPartial())
            assertEquals(match.rule, main)
            assertTrue(match.kept.isEmpty)
            val (cst, occ) = match.discarded.single()
            assert(cst.symbol().id() == "main")
        }
    }

    @Test
    fun matchDiscardedKept() {
        program(
            rule("main1",
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("main2",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("bar")
                ))).run {

            val matches = handler().lookupMatches(occurrence("main"))
            assertFalse { matches.any { m -> m.isPartial() } }
            assertEquals(rules, matches.map { m -> m.rule })
            matches.forEach { m -> assertTrue { m.kept.size() + m.discarded.size() == 1 } }
            matches.flatMap { m -> m.kept + m.discarded }.forEach { pair ->
                val (cst, occ) = pair
                assert(cst.symbol().id() == "main")
            }
        }
    }

    @Test
    fun matchComplementMissing() {
        program(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                headReplaced(
                    constraint("secondary")
                ),
                body(
                    constraint("foo")
                )),
            rule("main2",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("bar")
                ))).run {

            val matches = handler().lookupMatches(occurrence("main"))
            assertFalse { matches.any { m -> m.isPartial() } }
            assertEquals(rules.drop(1), matches.map { m -> m.rule })
        }
    }

    @Test
    fun matchComplementPresent() {
        program(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                headReplaced(
                    constraint("aux")
                ),
                body(
                    constraint("foo")
                )),
            rule("main2",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("bar")
                ))).run {

            val matches = handler(occurrence("aux")).lookupMatches(occurrence("main"))

            assertFalse { matches.any { m -> m.isPartial() } }
            assertEquals(rules, matches.map { m -> m.rule })
        }
    }

    @Test
    fun matchArgument() {
        program(
            rule("main1",
                headKept(
                    constraint("main", "foo")
                ),
                body(
                    constraint("foo")
                )),
            rule("main2",
                headKept(
                    constraint("main", "bar")
                ),
                body(
                    constraint("bar")
                ))).run {

            val matches = handler().lookupMatches(occurrence("main", "bar"))
            assertFalse { matches.any { m -> m.isPartial() } }
            assertEquals(rules.drop(1), matches.map { m -> m.rule })
        }
    }

    @Test
    fun noMatchArgument() {
        program(
            rule("main1",
                headKept(
                    constraint("main", "foo")
                ),
                body(
                    constraint("foo")
                )),
            rule("main2",
                headKept(
                    constraint("main", "bar")
                ),
                body(
                    constraint("bar")
                ))).run {

            val matches = handler().lookupMatches(occurrence("main", "qux"))
            assertFalse(matches.any())
        }
    }

    @Test
    fun processSingle() {
        program(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                ))).run {

            val rh = handler()
            val result = rh.process(occurrence("main"))

            val occurrences = rh.occurrences()
            val expected = setOf(occurrence("main"), occurrence("foo"))
            assertEquals(expected, occurrences)
        }
    }

    @Test
    fun processReplaced() {
        program(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("main2",
                headKept(
                    constraint("foo")
                ),
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("bar")
                ))).run {

            val rh = handler()
            val result = rh.process(occurrence("main"))

            val occurrences = rh.occurrences()
            val expected = setOf(occurrence("bar"), occurrence("foo"))
            assertEquals(expected, occurrences)
        }
    }

    @Test
    fun basicExpression() {
        var test : String = "not initialized"
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    expression {  -> test = "value"; true }
                ))).run {

            val result = handler().process(occurrence("main"))
            assertEquals("value", test)
        }
    }

    @Test
    fun paramExpression() {
        var test : String = "not initialized"
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    expression ({ v -> test = v as String; true }, "value")
                ))).run {

            val result = handler().process(occurrence("main"))
            assertEquals("value", test)
        }
    }

    @Test
    fun basicLogical() {
        var test : String? = "not initialized"
        val x = logical("x")
        x.value = "expected"
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    expression ({ v -> test = (v as ILogical<String>).value(); true }, x)
                ))).run {

            val result = handler().process(occurrence("main"))
            assertEquals("expected", test)
        }
    }

    @Test
    fun logicalCopy() {
        var test : String? = "not initialized"
        val (x,y) = logical("x", "y")
        x.value = "expected"
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    equals(x, y),
                    constraint("next")
                )),
            rule("aux",
                headKept(
                    constraint("next")
                ),
                body(
                    expression ({ v -> test = getValue(v) as String; true }, y)
                ))).run {

            handler().apply { process(occurrence("main")) }.run {
                assertEquals(setOf(occurrence("main"), occurrence("next")), occurrences())
            }
            assertEquals("expected", test)
        }
    }

}

