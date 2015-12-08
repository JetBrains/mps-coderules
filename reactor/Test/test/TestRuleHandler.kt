import jetbrains.mps.logic.reactor.constraint.Constraint
import jetbrains.mps.logic.reactor.constraint.ConstraintOccurrence
import jetbrains.mps.logic.reactor.core.RuleHandler
import org.junit.Test
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertTrue

/**
 * @author Fedor Isakov
 */


class TestRuleHandler {

    @Test
    fun matchSingle() {
        val main = rule("main",
            headReplaced(
                constraint("main")
            ),
            body(
                constraint("foo")
            ))

        val handler = RuleHandler(listOf(main), factory())

        val matches = handler.lookupMatches(TestOccurrence("main"))
        val match = matches.single()
        assertFalse(match.isPartial())
        assertEquals(match.rule, main)
        assertTrue(match.kept.isEmpty)
        val (cst, occ) = match.discarded.single()
        assert(cst.symbol().id() == "main")
    }

    @Test
    fun matchDiscardedKept() {
        val main1 = rule("main1",
            headReplaced(
                constraint("main")
            ),
            body(
                constraint("foo")
            ))
        val main2 = rule("main2",
            headKept(
                constraint("main")
            ),
            body(
                constraint("bar")
            ))

        val handler = RuleHandler(listOf(main1, main2), factory())

        val matches = handler.lookupMatches(TestOccurrence("main"))
        assertFalse { matches.any { m -> m.isPartial() } }
        assertEquals(listOf(main1, main2), matches.map { m -> m.rule })
        matches.forEach { m -> assertTrue { m.kept.size() + m.discarded.size() == 1 } }
        matches.flatMap { m -> m.kept + m.discarded }.forEach { pair ->
            val (cst, occ) = pair
            assert(cst.symbol().id() == "main")
        }
    }

    @Test
    fun matchComplementMissing() {
        val main1 = rule("main1",
            headKept(
                constraint("main")
            ),
            headReplaced(
                constraint("secondary")
            ),
            body(
                constraint("foo")
            ))
        val main2 = rule("main2",
            headKept(
                constraint("main")
            ),
            body(
                constraint("bar")
            ))

        val handler = RuleHandler(listOf(main1, main2), factory())

        val matches = handler.lookupMatches(TestOccurrence("main"))
        assertFalse { matches.any { m -> m.isPartial() } }
        assertEquals(listOf(main2), matches.map { m -> m.rule })
    }

    @Test
    fun matchComplementPresent() {
        val main1 = rule("main1",
            headKept(
                constraint("main")
            ),
            headReplaced(
                constraint("secondary")
            ),
            body(
                constraint("foo")
            ))
        val main2 = rule("main2",
            headKept(
                constraint("main")
            ),
            body(
                constraint("bar")
            ))

        val handler = RuleHandler(listOf(main1, main2), factory(), listOf(TestOccurrence("secondary")))

        val matches = handler.lookupMatches(TestOccurrence("main"))
        assertFalse { matches.any { m -> m.isPartial() } }
        assertEquals(listOf(main1, main2), matches.map { m -> m.rule })
    }

    @Test
    fun matchArgument() {
        val main1 = rule("main1",
            headKept(
                constraint("main", "foo")
            ),
            body(
                constraint("foo")
            ))
        val main2 = rule("main2",
            headKept(
                constraint("main", "bar")
            ),
            body(
                constraint("bar")
            ))

        val handler = RuleHandler(listOf(main1, main2), factory())

        val matches = handler.lookupMatches(TestOccurrence("main", "bar"))
        assertFalse { matches.any { m -> m.isPartial() } }
        assertEquals(listOf(main2), matches.map { m -> m.rule })
    }

    @Test
    fun noMatchArgument() {
        val main1 = rule("main1",
            headKept(
                constraint("main", "foo")
            ),
            body(
                constraint("foo")
            ))
        val main2 = rule("main2",
            headKept(
                constraint("main", "bar")
            ),
            body(
                constraint("bar")
            ))

        val handler = RuleHandler(listOf(main1, main2), factory())

        val matches = handler.lookupMatches(TestOccurrence("main", "qux"))
        assertFalse(matches.any())
    }

    @Test
    fun processSingle() {
        val main1 = rule("main1",
            headKept(
                constraint("main")
            ),
            body(
                constraint("foo")
            ))

        val handler = RuleHandler(listOf(main1), factory())

        val result = handler.process(TestOccurrence("main"))

        val occurrences = handler.occurrences()
        val expected = setOf(TestOccurrence("main"), TestOccurrence("foo"))
        assertEquals(expected, occurrences)
    }

    @Test
    fun processReplaced() {
        val main1 = rule("main1",
            headKept(
                constraint("main")
            ),
            body(
                constraint("foo")
            ))
        val main2 = rule("main2",
            headKept(
                constraint("foo")
            ),
            headReplaced(
                constraint("main")
            ),
            body(
                constraint("bar")
            ))

        val handler = RuleHandler(listOf(main1, main2), factory())

        val result = handler.process(TestOccurrence("main"))

        val occurrences = handler.occurrences()
        val expected = setOf(TestOccurrence("bar"), TestOccurrence("foo"))
        assertEquals(expected, occurrences)
    }



}

fun factory() : (Constraint) -> ConstraintOccurrence = { cst -> TestOccurrence(cst) }