import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import org.junit.Assert.*
import org.junit.Test

/**
 * @author Fedor Isakov
 */

class TestMatcher {

    private val propHistory = PropagationHistory()

    private fun Builder.matcher(vararg occurrence: ConstraintOccurrence): Pair<Matcher, OccurrenceIndex> {

        val stored = occurrence.toList()

        val aux = object : OccurrenceIndex {
            override fun lookupOccurrences(
                symbol: ConstraintSymbol,
                logicals: Iterable<Logical<*>>,
                values: Iterable<Any>,
                acceptable: (ConstraintOccurrence) -> Boolean): Sequence<ConstraintOccurrence> =
                    stored.filter { co -> co.constraint().symbol() == symbol && acceptable(co) }.asSequence()
        }

        return Matcher(rules).to(aux)
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
        ).let { builder ->
            builder.matcher().run {
                first.lookupMatches(occurrence("main"), second, propHistory).let { matches ->
                    val match = matches.single()
                    assertFalse(match.isPartial())
                    assertEquals(match.rule, builder.rules.first())
                    assertTrue(match.kept.isEmpty)
                    val (cst, occ) = match.discarded.single()
                    assert(cst.symbol().id() == "main")
                }
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
        ).let { builder ->
            builder.matcher().run {
                first.lookupMatches(occurrence("main"), second, propHistory).let { matches ->
                    assertFalse(matches.any { m -> m.isPartial() })
                    assertEquals(builder.rules.toSet(), matches.map { m -> m.rule }.toSet())
                    matches.forEach { m -> assertTrue(m.kept.size() + m.discarded.size() == 1) }
                    matches.flatMap { m -> (m.kept + m.discarded).asSequence() }.forEach { pair ->
                        val (cst, occ) = pair
                        assert(cst.symbol().id() == "main")
                    }
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
        ).let { builder ->
            builder.matcher().run {
                first.lookupMatches(occurrence("main"), second, propHistory).let { matches ->
                    assertFalse(matches.any { m -> m.isPartial() })
                    assertEquals(builder.rules.drop(1).toSet(), matches.map { m -> m.rule }.toSet())
                }
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
        ).let { builder ->
            builder.matcher(occurrence("aux")).run {
                first.lookupMatches(occurrence("main"), second, propHistory).let { matches ->
                    assertFalse(matches.any { m -> m.isPartial() })
                    assertEquals(builder.rules.toSet(), matches.map { m -> m.rule }.toSet())
                }
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
        ).let { builder ->
            builder.matcher().run{
                first.lookupMatches(occurrence("main", "bar"), second, propHistory).let { matches ->
                    assertFalse(matches.any { m -> m.isPartial() })
                    assertEquals(builder.rules.drop(1), matches.map { m -> m.rule }.toList())
                }
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
            first.lookupMatches(occurrence("main", "qux"), second, propHistory).let { matches ->
                assertFalse(matches.any())
            }
        }
    }

    @Test
    fun metaLogical() {
        val (A, B, C) = metaLogical<String>("A", "B", "C")
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
        ).matcher().run {
            first.lookupMatches(occurrence("foo", "blah", b), second, propHistory).first().run {
                assertEquals("blah", logicalContext().variable(A).findRoot().value())
                assertSame(b, logicalContext().variable(B))
                assertEquals(C.logical().metaLogical(), logicalContext().variable(C).metaLogical())
            }
        }

    }

    @Test
    fun matchMetaLogical() {
        val (M, N) = metaLogical<Int>("M", "N")

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
            matcher().run {
                first.lookupMatches(occurrence("foo", 1), second, propHistory).let { matches ->
                    assertFalse(matches.any())
                }
            }

                // same parameter -- 4 matches (all permutations)
             matcher(occurrence("foo", 42)).run {
                 first.lookupMatches(occurrence("foo", 42), second, propHistory).let { matches ->
                     assertEquals(4, matches.count())
                     assertTrue(matches.all { m -> m.occurrences().toSet().size == 2 })
                 }
             }

             matcher(occurrence("foo", 42)).run {
                 first.lookupMatches(occurrence("foo", 16), second, propHistory).let { matches ->
                     assertEquals(2, matches.count())
                     assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() }.toList())
                     matches.map { m ->
                         setOf(M, N).map { lp ->
                             m.logicalContext().variable(lp).findRoot().value()
                         }
                     }.forEach { vals ->
                         assertEquals(setOf(42, 16), vals.toSet())
                     }
                     assertTrue(matches.all { m -> m.occurrences().toSet().size == 2 })
                 }
             }

            val (x, y) = logical<Int>("x", "y")
            x.set(123)
            y.set(456)

            matcher(occurrence("foo", x)).run {
                first.lookupMatches(occurrence("foo", y), second, propHistory).let { matches ->
                    assertEquals(2, matches.count())
                    assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() }.toList())
                    assertTrue(matches.all { m -> m.occurrences().toSet().size == 2 })
                }
            }

            val (v, w) = logical<Int>("v", "w")
            w.findRoot().union(v)

            matcher(occurrence("foo", v)).run {
                first.lookupMatches(occurrence("foo", w), second, propHistory).let { matches ->
                    assertEquals(4, matches.count())
                    assertTrue(matches.all{ m -> m.occurrences().toSet().size == 2 })
                }
            }
        }
    }

    @Test
    fun matchOccurrenceArguments() {
        val (M, N) = metaLogical<Int>("M", "N")
        val (O, P) = metaLogical<Int>("O", "P")

        program(
            rule("select_A_x",
                headKept(
                    constraint("foo", "A", M)
                ),
                headReplaced(
                    constraint("foo", "A", N)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_A_B",
                headReplaced(
                    constraint("foo", "A", "B")
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_x_B",
                headKept(
                    constraint("foo", M, "B")
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_B_x",
                headKept(
                    constraint("foo", "B", M)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_ALL",
                headKept(
                    constraint("foo", O, P)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                ))
        ).matcher().first.rules.run {
            val x = logical<Any>("X")

            assertEquals(
                listOf(byTag("select_A_x"), byTag("select_A_B"), byTag("select_x_B"), byTag("select_ALL")),
                forOccurrence(occurrence("foo", "A", x)).toList())
            assertEquals(
                listOf(byTag("select_x_B"), byTag("select_B_x"), byTag("select_ALL")),
                forOccurrence(occurrence("foo", "B", x)).toList())
            assertEquals(
                listOf(byTag("select_B_x"), byTag("select_ALL")),
                forOccurrence(occurrence("foo", "B", "C")).toList())

        }
    }
}
