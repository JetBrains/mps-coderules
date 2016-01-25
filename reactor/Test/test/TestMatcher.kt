import jetbrains.mps.logic.reactor.core.Matcher
import jetbrains.mps.logic.reactor.core.logical
import jetbrains.mps.logic.reactor.core.matches
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import org.junit.Assert.*
import org.junit.Test

/**
 * @author Fedor Isakov
 */

class TestMatcher {

    private fun Builder.matcher(vararg occurrence: ConstraintOccurrence): Matcher {

        val stored = occurrence.toList()

        val aux = object : Matcher.AuxOccurrences {
            override fun findOccurrences(
                symbol: ConstraintSymbol,
                logicals: Iterable<Logical<*>>,
                values: Iterable<Any>,
                acceptable: (ConstraintOccurrence) -> Boolean): Sequence<ConstraintOccurrence> =
                    stored.filter { co -> co.constraint().symbol() == symbol && acceptable(co) }.asSequence()
        }
        return Matcher(rules, aux)
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
                assertFalse(matches.any { m -> m.isPartial() })
                assertEquals(rules.toSet(), matches.map { m -> m.rule }.toSet())
                matches.forEach { m -> assertTrue(m.kept.size() + m.discarded.size() == 1) }
                matches.flatMap { m -> (m.kept + m.discarded).asSequence() }.forEach { pair ->
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
                assertFalse(matches.any { m -> m.isPartial() })
                assertEquals(rules.drop(1).toSet(), matches.map { m -> m.rule }.toSet())
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
                assertFalse(matches.any { m -> m.isPartial() })
                assertEquals(rules.toSet(), matches.map { m -> m.rule }.toSet())
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
                assertFalse(matches.any { m -> m.isPartial() })
                assertEquals(rules.drop(1), matches.map { m -> m.rule }.toList())
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
    fun logicalPattern() {
        val (A, B, C) = logicalPattern<String>("A", "B", "C")
        val b = B.logical()

        program(
            rule("main",
                headKept(
                    constraint("foo", A, B)
                ),
                body(
                    constraint("bar", B)
                )
            )
        ).matcher().lookupMatches(occurrence("foo", "blah", b)).first().run {
            assertEquals("blah", logicalContext().variable(A).findRoot().value())
            assertSame(b, logicalContext().variable(B))
            assertEquals(C.logical().pattern(), logicalContext().variable(C).pattern())
        }

    }

    @Test
    fun matchLogicalPattern() {
        val (M, N) = logicalPattern<Int>("M", "N")

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
                assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() }.toList())
                matches.map { m -> setOf(M, N).map { lp ->
                    m.logicalContext().variable(lp).findRoot().value() } }.forEach { vals ->
                    assertEquals(setOf(42, 16), vals.toSet())
                }
                assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
            }

            val (x, y) = logical<Int>("x", "y")
            x.set(123)
            y.set(456)

            matcher(occurrence("foo", x)).lookupMatches(occurrence("foo", y)).let { matches ->
                assertEquals(2, matches.count())
                assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() }.toList())
                assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
            }

            val (v, w) = logical<Int>("v", "w")
            w.findRoot().union(v)

            matcher(occurrence("foo", v)).lookupMatches(occurrence("foo", w)).let { matches ->
                assertEquals(4, matches.count())
                assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
            }
        }
    }
}
