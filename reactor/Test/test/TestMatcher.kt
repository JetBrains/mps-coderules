import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification
import jetbrains.mps.unification.test.MockTermsParser.parseTerm
import org.junit.Assert.*
import org.junit.Test

/**
 * @author Fedor Isakov
 */

class TestMatcher {

    @Test
    fun matchSingle() {
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                ))
        ).let { builder ->
            builder.indices().run {
                Matcher(first).matching(occurrence("main"), second).let { matches ->
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
        programWithRules(
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
            builder.indices().run {
                Matcher(first).matching(occurrence("main"), second).let { matches ->
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
        programWithRules(
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
            builder.indices().run {
                Matcher(first).matching(occurrence("main"), second).let { matches ->
                    assertTrue(matches.all {m -> m.successful})
                    assertEquals(builder.rules.drop(1).toSet(), matches.map { m -> m.rule }.toSet())
                }
            }
        }
    }

    @Test
    fun matchComplementPresent() {
        programWithRules(
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
            builder.indices(occurrence("aux")).run {
                Matcher(first).matching(occurrence("main"), second).let { matches ->
                    assertTrue(matches.all {m -> m.successful})
                    assertEquals(builder.rules.toSet(), matches.map { m -> m.rule }.toSet())
                }
            }
        }
    }

    @Test
    fun matchArgument() {
        programWithRules(
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
            builder.indices().run{
                Matcher(first).matching(occurrence("main", "bar"), second).let { matches ->
                    assertTrue(matches.all {m -> m.successful})
                    assertEquals(builder.rules.drop(1), matches.map { m -> m.rule }.toList())
                }
            }
        }
    }

    @Test
    fun noMatchArgument() {
        programWithRules(
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
        ).indices().run{
            Matcher(first).matching(occurrence("main", "qux"), second).let { matches ->
                assertFalse(matches.any())
            }
        }
    }

    @Test
    fun multipleHandlers() {
        programWithHandlers(
            handler("handler1", listOf(ConstraintSymbol("foo", 0)),
                rule("main1",
                    headKept(
                        constraint("foo")
                    ))
                ),
            handler("handler2", listOf(ConstraintSymbol("bar", 0)),
                rule("main2",
                    headKept(
                        constraint("bar")
                    ))
                )
        ).indices().run {
            Matcher(first).matching(occurrence("qux"), second).let { matches ->
                assertFalse(matches.any())
            }
            Matcher(first).matching(occurrence("foo"), second).let { matches ->
                assertSame(1, matches.size)
            }
            Matcher(first).matching(occurrence("bar"), second).let { matches ->
                assertSame(1, matches.size)
            }
        }
    }

    @Test
    fun metaLogical() {
        val (A, B, C) = metaLogical<String>("A", "B", "C")
        val b = B.logical()

        programWithRules(
            rule("main",
                headKept(
                    constraint("foo", A, B)
                ),
                body(
                    constraint("bar", B)
                )
            )
        ).indices().run {
            Matcher(first).matches(occurrence("foo", "blah", b), second).first().run {
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

        programWithRules(
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
            indices().run {
                Matcher(first).matching(occurrence("foo", 1), second).let { matches ->
                    assertFalse(matches.any())
                }
            }

                // same parameter -- 4 matches (all permutations)
             indices(occurrence("foo", 42)).run {
                 Matcher(first).matching(occurrence("foo", 42), second).let { matches ->
                     assertTrue(matches.all {m -> m.successful})
                     assertEquals(4, matches.count())
                     assertTrue(matches.all { m -> m.allOccurrences().toSet().size == 2 })
                 }
             }

             indices(occurrence("foo", 42)).run {
                 Matcher(first).matching(occurrence("foo", 16), second).let { matches ->
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

            indices(occurrence("foo", x)).run {
                Matcher(first).matching(occurrence("foo", y), second).let { matches ->
                    assertTrue(matches.all {m -> m.successful})
                    assertEquals(2, matches.count())
                    assertEquals(listOf("main1", "main1"), matches.map { m -> m.rule.tag() }.toList())
                    assertTrue(matches.all { m -> m.allOccurrences().toSet().size == 2 })
                }
            }

            val (v, w) = logical<Int>("v", "w")
            w.findRoot().union(v)

            indices(occurrence("foo", v)).run {
                Matcher(first).matching(occurrence("foo", w), second).let { matches ->
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

        programWithRules(
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
        ).indices().first.run {
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

        programWithRules(
            rule("select_fg_x",
                headKept(
                    constraint("foo", parseTerm("f{g}"), M)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_abX_x",
                headKept(
                    constraint("foo", parseTerm("a{b X}"), M)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_aYcde_x",
                headKept(
                    constraint("foo", parseTerm("a{Y c{d e}}"), M)
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_aYcdd_fg",
                headKept(
                    constraint("foo", parseTerm("a{Y c{d d}}"), parseTerm("f{g}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                ))
        ).indices().first.run {

            assertEquals(
                listOf(byTag("select_fg_x")),
                forOccurrence(occurrence("foo", parseTerm("f{g}"), parseTerm("u"))).toList())
            assertEquals(
                listOf(byTag("select_fg_x")),
                forOccurrence(occurrence("foo", parseTerm("f{Z}"), parseTerm("u"))).toList())
            assertEquals(
                listOf(byTag("select_abX_x"), byTag("select_aYcde_x")),
                forOccurrence(occurrence("foo", parseTerm("a{b c{d Z}}"), parseTerm("u"))).toList())
            assertEquals(
                listOf(byTag("select_aYcdd_fg")),
                forOccurrence(occurrence("foo", parseTerm("a{d c{d d}}"), parseTerm("f{g}"))).toList())

        }
    }

    @Test
    fun matchTermArguments() {
        programWithRules(
            rule("select_abcde",
                headKept(
                    constraint("foo", parseTerm("a{b{h} c{d e}}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_abcdf",
                headKept(
                    constraint("foo", parseTerm("a{b{h} c{d f}}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                )),
            rule("select_agcde",
                headKept(
                    constraint("foo", parseTerm("a{g{h} c{d e}}"))
                ),
                                                                body(
                                                                    constraint("bar")
                                                                ))
        ).indices().first.run {

            assertEquals(
                listOf(byTag("select_abcde")),
                forOccurrence(occurrence("foo", parseTerm("a{b{h} c{d e}}"))).toList())
            assertEquals(
                listOf(byTag("select_abcdf")),
                forOccurrence(occurrence("foo", parseTerm("a{b{h} c{d f}}"))).toList())
            assertEquals(
                listOf(byTag("select_agcde")),
                forOccurrence(occurrence("foo", parseTerm("a{g{h} c{d e}}"))).toList())

        }
    }

    @Test
    fun matchConstraintsWrongOrder() {

        val (b, c) = metaLogical<String>("b", "c")
        val (x, y) = metaLogical<String>("x", "y")

        val program = programWithRules(
            rule("foo2",
                headKept(
                    constraint("foo", b, parseTerm("a{b}")),
                    constraint("foo", c, parseTerm("a{c}"))
                ),
                                                                body(
                                                                    constraint("done")
                                                                )
            )
        )

        program.indices(occurrence("foo", x, parseTerm("a{c}"))).run {
            Matcher(first).matching(occurrence("foo", y, parseTerm("a{b}")), second).let { matches ->
                assertEquals("foo2", matches.single().rule.tag())
            }
        }
        program.indices(occurrence("foo", x, parseTerm("a{b}"))).run {
            Matcher(first).matching(occurrence("foo", y, parseTerm("a{c}")), second).let { matches ->
                assertEquals("foo2", matches.single().rule.tag())
            }
        }
    }

    @Test
    fun matchConstraintsIncrementally() {

        val (b, c, d) = metaLogical<String>("b", "c", "d")
        val (x, y, z) = metaLogical<String>("x", "y", "z")

        val program = programWithRules(
            rule("expected",
                headKept(
                    constraint("foo", d, parseTerm("a{d}")),
                    constraint("foo", b, parseTerm("a{b}")),
                    constraint("foo", c, parseTerm("a{c}"))
                ),
                                                                body(
                                                                    constraint("done")
                                                                )
            )
        )

        val stored = ArrayList<ConstraintOccurrence>()
        program.indices(stored).run {
            val matcher = Matcher(first)
            val occ1 = occurrence("foo", x, parseTerm("a{c}"))
            stored.add(occ1)
            matcher.matching(occ1, second).let { matches ->
                assertTrue(matches.isEmpty())
            }
            val occ2 = occurrence("foo", y, parseTerm("a{b}"))
            stored.add(occ2)
            matcher.matching(occ2, second).let { matches ->
                assertTrue(matches.isEmpty())
            }
            val occ3 = occurrence("foo", z, parseTerm("a{d}"))
            stored.add(occ3)
            matcher.matching(occ3, second).let { matches ->
                assertEquals("expected", matches.single().rule.tag())
            }
        }
    }

    private fun Builder.indices(vararg occurrence: ConstraintOccurrence): Pair<RuleIndex, OccurrenceIndex> =
        this.indices(occurrence.toList())

    private fun Builder.indices(stored: List<ConstraintOccurrence>): Pair<RuleIndex, OccurrenceIndex> {

        val aux = object : OccurrenceIndex {
            override fun forSymbol(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
                stored.filter { co -> co.constraint().symbol() == symbol }

            override fun forLogical(logical: Logical<*>): Iterable<ConstraintOccurrence> =
                stored.filter { co ->
                    co.arguments().any { it is Logical<*> && it.isBound && it.findRoot() == logical.findRoot() }
                }

            override fun forLogicalAndConstraint(logical: Logical<*>, cst: Constraint): Iterable<ConstraintOccurrence> =
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

        return RuleIndex(handlers).to(aux)
    }

    private fun Match.allOccurrences() = (keptOccurrences + discardedOccurrences)

    private fun Matcher.matching(activeOcc: ConstraintOccurrence, aux: OccurrenceIndex) = this.matches(activeOcc, aux).filter { m -> m.successful }

}
