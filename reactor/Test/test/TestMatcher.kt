import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification
import jetbrains.mps.unification.test.MockTermsParser.parse
import org.junit.Assert.*
import org.junit.Test

/**
 * @author Fedor Isakov
 */

class TestMatcher {

    private fun Builder.matcher(vararg occurrence: ConstraintOccurrence): Pair<RuleIndex, OccurrenceIndex> {

        val stored = occurrence.toList()

        val aux = object : OccurrenceIndex {
            override fun forSymbol(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
                stored.filter { co -> co.constraint().symbol() == symbol }

            override fun forLogical(logical: Logical<*>): Iterable<ConstraintOccurrence> =
                stored.filter { co ->
                    co.arguments().any { it is Logical<*> && it.isBound && it.findRoot() == logical.findRoot() }
                }

            override fun forTerm(term: Term): Iterable<ConstraintOccurrence> =
                stored.filter { co ->
                    co.arguments().any { it is Term && Unification.unify(it, term).isSuccessful  }
                }

            override fun forTermAndConstraint(term: Term, cst: Constraint): Iterable<ConstraintOccurrence> =
                stored.filter { co ->
                    co.constraint().symbol() == cst.symbol() && co.arguments().any { it is Term && Unification.unify(it, term).isSuccessful  }
                }

            override fun forValue(value: Any): Iterable<ConstraintOccurrence> =
                stored.filter { co -> co.arguments().contains(value) }
        }

        return RuleIndex(rules).to(aux)
    }

    private fun Match.allOccurrences() = (keptOccurrences + discardedOccurrences)

    private fun Matcher.matching() = this.filter { m -> m.successful }

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
                Matcher(first, occurrence("main"), second).matching().let { matches ->
                    val match = matches.single()
                    assertEquals(match.rule, builder.rules.first())
                    assertTrue(match.keptOccurrences.isEmpty())
                    val occ = match.discardedOccurrences.single()
                    assert(occ.constraint().symbol().id() == "main")
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
                Matcher(first, occurrence("main"), second).matching().let { matches ->
                    assertTrue(matches.all {m -> m.successful})
                    assertEquals(builder.rules.toSet(), matches.map { m -> m.rule }.toSet())
                    matches.forEach { m -> assertTrue(m.keptOccurrences.size + m.discardedOccurrences.size == 1) }
                    matches.flatMap { m ->
                        (m.keptOccurrences.toList() + m.discardedOccurrences.toList()) }.forEach { occ ->
                        assert(occ.constraint().symbol().id() == "main")
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
                Matcher(first, occurrence("main"), second).matching().let { matches ->
                    assertTrue(matches.all {m -> m.successful})
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
                Matcher(first, occurrence("main"), second).matching().let { matches ->
                    assertTrue(matches.all {m -> m.successful})
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
                Matcher(first, occurrence("main", "bar"), second).matching().let { matches ->
                    assertTrue(matches.all {m -> m.successful})
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
            Matcher(first, occurrence("main", "qux"), second).matching().let { matches ->
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
            Matcher(first, occurrence("foo", "blah", b), second).first().run {
                assert(successful)
                assertEquals("blah", logicalContext.variable(A).findRoot().value())
                assertSame(b, logicalContext.variable(B))
                assertEquals(C.logical().metaLogical(), logicalContext.variable(C).metaLogical())
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
                Matcher(first, occurrence("foo", 1), second).matching().let { matches ->
                    assertFalse(matches.any())
                }
            }

                // same parameter -- 4 matches (all permutations)
             matcher(occurrence("foo", 42)).run {
                 Matcher(first, occurrence("foo", 42), second).matching().let { matches ->
                     assertTrue(matches.all {m -> m.successful})
                     assertEquals(4, matches.count())
                     assertTrue(matches.all { m -> m.allOccurrences().toSet().size == 2 })
                 }
             }

             matcher(occurrence("foo", 42)).run {
                 Matcher(first, occurrence("foo", 16), second).matching().let { matches ->
                     assertTrue(matches.all {m -> m.successful})
                     assertEquals(2, matches.count())
                     assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() }.toList())
                     matches.map { m ->
                         setOf(M, N).map { lp ->
                             m.logicalContext.variable(lp).findRoot().value()
                         }
                     }.forEach { vals ->
                         assertEquals(setOf(42, 16), vals.toSet())
                     }
                     assertTrue(matches.all { m -> m.allOccurrences().toSet().size == 2 })
                 }
             }

            val (x, y) = logical<Int>("x", "y")
            x.set(123)
            y.set(456)

            matcher(occurrence("foo", x)).run {
                Matcher(first, occurrence("foo", y), second).matching().let { matches ->
                    assertTrue(matches.all {m -> m.successful})
                    assertEquals(2, matches.count())
                    assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() }.toList())
                    assertTrue(matches.all { m -> m.allOccurrences().toSet().size == 2 })
                }
            }

            val (v, w) = logical<Int>("v", "w")
            w.findRoot().union(v)

            matcher(occurrence("foo", v)).run {
                Matcher(first, occurrence("foo", w), second).matching().let { matches ->
                    assertTrue(matches.all {m -> m.successful})
                    assertEquals(2, matches.count())
                    assertTrue(matches.all{ m -> m.allOccurrences().toSet().size == 2 })
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
        ).matcher().first.run {
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

    @Test
    fun matchOccurrenceTermArguments() {
        val (M, N) = metaLogical<Int>("M", "N")
        val (O, P) = metaLogical<Int>("O", "P")

        program(
            rule("select_fg_x",
                headKept(
                    constraint("foo", parse("f{g}"), M)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_abX_x",
                headKept(
                    constraint("foo", parse("a{b X}"), M)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_aYcde_x",
                headKept(
                    constraint("foo", parse("a{Y c{d e}}"), M)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_aYcdd_fg",
                headKept(
                    constraint("foo", parse("a{Y c{d d}}"), parse("f{g}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                ))
        ).matcher().first.run {

            assertEquals(
                listOf(byTag("select_fg_x")),
                forOccurrence(occurrence("foo", parse("f{g}"), parse("u"))).toList())
            assertEquals(
                listOf(byTag("select_fg_x")),
                forOccurrence(occurrence("foo", parse("f{Z}"), parse("u"))).toList())
            assertEquals(
                listOf(byTag("select_abX_x"), byTag("select_aYcde_x")),
                forOccurrence(occurrence("foo", parse("a{b c{d Z}}"), parse("u"))).toList())
            assertEquals(
                listOf(byTag("select_aYcdd_fg")),
                forOccurrence(occurrence("foo", parse("a{d c{d d}}"), parse("f{g}"))).toList())

        }
    }

    @Test
    fun matchTermArguments() {
        program(
            rule("select_abcde",
                headKept(
                    constraint("foo", parse("a{b{h} c{d e}}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_abcdf",
                headKept(
                    constraint("foo", parse("a{b{h} c{d f}}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_agcde",
                headKept(
                    constraint("foo", parse("a{g{h} c{d e}}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                ))
        ).matcher().first.run {

            assertEquals(
                listOf(byTag("select_abcde")),
                forOccurrence(occurrence("foo", parse("a{b{h} c{d e}}"))).toList())
            assertEquals(
                listOf(byTag("select_abcdf")),
                forOccurrence(occurrence("foo", parse("a{b{h} c{d f}}"))).toList())
            assertEquals(
                listOf(byTag("select_agcde")),
                forOccurrence(occurrence("foo", parse("a{g{h} c{d e}}"))).toList())

        }
    }

    @Test
    fun matchConstraintsWrongOrder() {

        val (b, c) = metaLogical<String>("b", "c")
        val (x, y) = metaLogical<String>("x", "y")

        val program = program(
            rule("foo2",
                headKept(
                    constraint("foo", b, parse("a{b}")),
                    constraint("foo", c, parse("a{c}"))
                ),
                                                                body(
                                                                    constraint("done")
                                                                )
            )
        )

        program.matcher(occurrence("foo", x, parse("a{c}"))).run {
            Matcher(first, occurrence("foo", y, parse("a{b}")), second).matching().let { matches ->
                assertEquals("foo2", matches.single().rule.tag())
            }
        }
        program.matcher(occurrence("foo", x, parse("a{b}"))).run {
            Matcher(first, occurrence("foo", y, parse("a{c}")), second).matching().let { matches ->
                assertEquals("foo2", matches.single().rule.tag())
            }
        }
    }

}
