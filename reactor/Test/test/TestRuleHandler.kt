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
                ))
        ).run {
            handler().lookupMatches(occurrence("main")).let { matches ->
                val match = matches.single()
                assertFalse(match.isPartial())
                assertEquals(match.rule, rules.first())
                assertTrue(match.kept.isEmpty)
                val (cst, occ) = match.discarded.single()
                assert(cst.symbol().id() == "main")
            }
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
                ))
        ).run {
            handler().lookupMatches(occurrence("main")).let { matches ->
                assertFalse { matches.any { m -> m.isPartial() } }
                assertEquals(rules, matches.map { m -> m.rule })
                matches.forEach { m -> assertTrue { m.kept.size() + m.discarded.size() == 1 } }
                matches.flatMap { m -> m.kept + m.discarded }.forEach { pair ->
                    val (cst, occ) = pair
                    assert(cst.symbol().id() == "main")
                }
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
                ))
        ).run {
            handler().lookupMatches(occurrence("main")).let { matches ->
                assertFalse { matches.any { m -> m.isPartial() } }
                assertEquals(rules.drop(1), matches.map { m -> m.rule })
            }
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
                ))
        ).run {
            handler(occurrence("aux")).lookupMatches(occurrence("main")).let { matches ->
                assertFalse { matches.any { m -> m.isPartial() } }
                assertEquals(rules, matches.map { m -> m.rule })
            }
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
                ))
        ).run {
            handler().lookupMatches(occurrence("main", "bar")).let { matches ->
                assertFalse { matches.any { m -> m.isPartial() } }
                assertEquals(rules.drop(1), matches.map { m -> m.rule })
            }
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
                ))
        ).run {
            handler().lookupMatches(occurrence("main", "qux")).let { matches ->
                assertFalse(matches.any())
            }
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
                ))
        ).run {
            handler().apply { process(occurrence("main")) }.let { rh ->
                assertEquals(setOf(occurrence("main"), occurrence("foo")), rh.occurrences())
            }
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
                ))
        ).run {
            handler().apply { process(occurrence("main")) }.let { rh ->
                assertEquals(setOf(occurrence("bar"), occurrence("foo")), rh.occurrences())
            }
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
                ))
        ).run {
            handler().process(occurrence("main"))
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
                ))
        ).run {
            handler().process(occurrence("main"))
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
                ))
        ).run {
            handler().process(occurrence("main"))
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
                ))
        ).run {
            handler().apply { process(occurrence("main")) }.let { rh ->
                assertEquals(setOf(occurrence("main"), occurrence("next")), rh.occurrences())
                assertEquals("expected", test)
            }
        }
    }

    @Test
    fun basicGuard() {
        var test1 : String = "not initialized 1"
        var test2 : String = "not initialized 2"
        program(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                guard(
                    expression {  -> false }
                ),
                body(
                    expression {  -> test1 = "not expected"; true }
                )),
            rule("main2",
                headKept(
                    constraint("main")
                ),
                guard(
                    expression {  -> true }
                ),
                body(
                    expression {  -> test2 = "expected"; true }
                ))
        ).run {
            handler().process(occurrence("main"))
            assertEquals("not initialized 1", test1)
            assertEquals("expected", test2)
        }
    }

}

