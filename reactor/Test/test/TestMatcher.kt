import jetbrains.mps.logic.reactor.constraint.Constraint
import jetbrains.mps.logic.reactor.constraint.ConstraintOccurrence
import jetbrains.mps.logic.reactor.core.Matcher
import jetbrains.mps.logic.reactor.core.matches
import org.junit.Test
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertTrue

/**
 * @author Fedor Isakov
 */

class TestMatcher {

    fun Program.matcher(vararg occurrence: ConstraintOccurrence): Matcher {
        val stored = occurrence.toList()
        return object : Matcher(rules) {
            override fun findOccurrences(constraint: Constraint, acceptable: (ConstraintOccurrence) -> Boolean):
                Iterable<ConstraintOccurrence> =
                    stored.filter { co -> constraint.matches(co) && acceptable(co) }
        }
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
        ).matcher().run{
            lookupMatches(occurrence("main")).let { matches ->
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
        ).matcher().run{
            lookupMatches(occurrence("main")).let { matches ->
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
        ).matcher().run{
            lookupMatches(occurrence("main")).let { matches ->
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
        ).matcher(occurrence("aux")).run {
            lookupMatches(occurrence("main")).let { matches ->
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
        ).matcher().run{
            lookupMatches(occurrence("main", "bar")).let { matches ->
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
        ).matcher().run{
            lookupMatches(occurrence("main", "qux")).let { matches ->
                assertFalse(matches.any())
            }
        }
    }

    @Test
    fun matchLogicalPattern() {
        val (M, N) = logicalPattern("M", "N")

        program(
            rule("main1",
                headKept(
                    constraint("foo", M)
                ),
                headReplaced(
                    constraint("foo", N)
                ),
                body(
                    constraint("bar")
                )),
            rule("main2",
                headKept(
                    constraint("foo", M)
                ),
                headReplaced(
                    constraint("foo", M)
                ),
                body(
                    constraint("bar")
                ))
        ).run {
            matcher().lookupMatches(occurrence("foo", 1)).let { matches ->
                assertFalse(matches.any())
            }

            // same parameter -- 4 matches (all permutations)
            matcher(occurrence("foo", 42)).lookupMatches(occurrence("foo", 42)).let { matches ->
                assertEquals(4, matches.count())
                assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
            }

            matcher(occurrence("foo", 42)).lookupMatches(occurrence("foo", 16)).let { matches ->
                assertEquals(2, matches.count())
                assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() })
                matches.map { m -> setOf(M, N).map { lp -> m.logicalContext().valueFor(lp) } }.forEach { vals ->
                    assertEquals<Any>(setOf(42, 16), vals.toSet())
                }
                assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
            }

            val (x, y) = logical<Int>("x", "y")
            x.find().value = 123
            y.find().value = 456

            matcher(occurrence("foo", x)).lookupMatches(occurrence("foo", y)).let { matches ->
                assertEquals(2, matches.count())
                assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() })
                assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
            }

            val (v, w) = logical<Int>("v", "w")
            w.find().union(v)

            matcher(occurrence("foo", v)).lookupMatches(occurrence("foo", w)).let { matches ->
                assertEquals(4, matches.count())
                assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
            }
        }
    }
}
