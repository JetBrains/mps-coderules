import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.UnionFindLinkedList
import jetbrains.mps.logic.reactor.core.internal.createOccurrenceMatcher
import jetbrains.mps.logic.reactor.logical.logical
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.ConstraintSymbol.symbol
import jetbrains.mps.logic.reactor.util.Maps
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.test.MockTerm.*
import jetbrains.mps.unification.test.MockTermsParser.*
import org.junit.Test
import org.junit.Assert
import program.MockConstraint

/*
 * Copyright 2014-2018 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @author Fedor Isakov
 */


fun RuleMatch.relevantFor(occurrence: Occurrence): Boolean
    = this.allHeads().contains(occurrence)

infix fun RuleMatch.shouldBeRelevantFor(that: Occurrence)
    = Assert.assertTrue(this.relevantFor(that))

class TestRuleMatcher {

    @Test
    fun testOccurrenceMatchLogical() {
        val (X, Y) = metaLogical<String>("X", "Y")
        val xLogical = X.logical()
        val yLogical = Y.logical()

        val foobar = MockConstraint(ConstraintSymbol("foo", 1), "bar")
        val foox = MockConstraint(ConstraintSymbol("foo", 1), X)

        // foo("bar") = foo("bar")
        createOccurrenceMatcher().
            matches(foobar, occurrence("foo", "bar")) shouldBe true
        // foo("bar") != foo(X)
        createOccurrenceMatcher().
            matches(foobar, occurrence("foo", xLogical)) shouldBe false
        // foo("bar") = foo(X = "bar")
        xLogical.set("bar")
        createOccurrenceMatcher().
            matches(foobar, occurrence("foo", xLogical)) shouldBe true

        // foo(X) = foo(Y)
        createOccurrenceMatcher().
            matches(foox, occurrence("foo", yLogical)) shouldBe true
        // foo(X) = foo("bar")
        createOccurrenceMatcher().
            matches(foox, occurrence("foo", "bar")) shouldBe true
        // foo(X) = foo(Y = "bar")
        yLogical.set("bar")
        createOccurrenceMatcher().
            matches(foox, occurrence("foo", yLogical)) shouldBe true
    }

    @Test
    fun testOccurrenceMatchTerm() {
        val (X, Y) = metaLogical<Term>("X", "Y")
        val xLogical = X.logical()
        val yLogical = Y.logical()

        val foofh = MockConstraint(ConstraintSymbol("foo", 1), parseTerm("f { h }"))
        val foofx = MockConstraint(ConstraintSymbol("foo", 1), term("f", metaVar(X)))

        // foo(f { h }) = foo(f { h })
        createOccurrenceMatcher().
            matches(foofh, occurrence("foo", parseTerm("f { h }"))) shouldBe true
        // foo(f { h }) != foo(f { X })
        createOccurrenceMatcher().
            matches(foofh, occurrence("foo", term("f", logicalVar(xLogical)))) shouldBe false
        // foo(f { h }) != foo(f { X = h })
        xLogical.set(term("h"))
        createOccurrenceMatcher().
            matches(foofh, occurrence("foo", term("f", logicalVar(xLogical)))) shouldBe true

        // foo(f { X }) = foo(f { h })
        createOccurrenceMatcher().
            matches(foofx, occurrence("foo", parseTerm("f { h }"))) shouldBe true
        // foo(f { X }) = foo(f { Y })
        createOccurrenceMatcher().
            matches(foofx, occurrence("foo", term("f", logicalVar(yLogical)))) shouldBe true
        // foo(f { X }) = foo(f { Y = h })
        xLogical.set(term("h"))
        createOccurrenceMatcher().
            matches(foofx, occurrence("foo", term("f", logicalVar(yLogical)))) shouldBe true
    }

    @Test
    fun testOccurrenceMatchConsistent() {
        val (X, Y, Z) = metaLogical<Term>("X", "Y", "Z")
        val xLogical = X.logical()
        val yLogical = Y.logical()
        val zLogical = Z.logical()

        val foofx = MockConstraint(ConstraintSymbol("foo", 1), term("f", metaVar(X)))

        // [X -> free] |- foo(f { X }) = foo(f { X })
        createOccurrenceMatcher(Maps.of(X, logicalVar(xLogical))).
            matches(foofx, occurrence("foo", term("f", logicalVar(xLogical)))) shouldBe true
        // [X -> free] |- foo(f { X }) != foo(f { Y })
        createOccurrenceMatcher(Maps.of(X, logicalVar(xLogical))).
            matches(foofx, occurrence("foo", term("f", logicalVar(yLogical)))) shouldBe false
        // [X -> free] |- foo(f { X }) != foo(f { h })
        createOccurrenceMatcher(Maps.of(X, logicalVar(xLogical))).
            matches(foofx, occurrence("foo", parseTerm("f { h }"))) shouldBe false
        // [X -> free] |- foo(f { X }) != foo(f { Y = h })
        yLogical.set(term("h"))
        createOccurrenceMatcher(Maps.of(X, logicalVar(xLogical))).
            matches(foofx, occurrence("foo", term("f", logicalVar(yLogical)))) shouldBe false

        // [X -> h] |- foo(f { X }) = foo(f { h })
        createOccurrenceMatcher(Maps.of(X, term("h"))).
            matches(foofx, occurrence("foo", parseTerm("f { h }"))) shouldBe true
        // [X -> h] |- foo(f { X }) != foo(f { Z })
        createOccurrenceMatcher(Maps.of(X, term("h"))).
            matches(foofx, occurrence("foo", term("f", logicalVar(zLogical)))) shouldBe false
        // [X -> h] |- foo(f { X }) = foo(f { Z = h })
        zLogical.set(term("h"))
        createOccurrenceMatcher(Maps.of(X, term("h"))).
            matches(foofx, occurrence("foo", term("f", logicalVar(zLogical)))) shouldBe true
    }

    @Test
    fun testExpand() {
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {

                expand(occurrence("foo"))                           }.apply {
                matches().size shouldBe 0                               }.run {
                
                expand(occurrence("bar"))                           }.apply {
                matches().size shouldBe 1                               }.run {

                expand(occurrence("bazz"))                          }.apply {
                matches().size shouldBe 0                               }.run {

            }
        }
    }

    @Test
    fun testSameOccurrence() {
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo"),
                    constraint("foo")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val foo = occurrence("foo")
            with(ruleMatcher().probe()) {

                expand(foo)                                             }.apply {
                matches().size shouldBe 0                               }.run {

                expand(foo)                                             }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("foo"))                           }.apply {
                matches().size shouldBe 2                               }.run {
            }
        }
    }

    @Test
    fun testSameOccurrenceInterleaved() {
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo"),
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val foo = occurrence("foo")
            with(ruleMatcher().probe()) {

                expand(foo)                                             }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("bar"))                           }.apply {
                matches().size shouldBe 0                               }.run {

                // no new matches can appear
                expand(foo)                                             }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("foo"))                           }.apply {
                matches().size shouldBe 2                               }.run {

            }
        }
    }

    @Test
    fun testSameOccurrenceAfterMatch() {
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo"),
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val foo = occurrence("foo")

            with(ruleMatcher().probe()) {

                expand(foo)                                             }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("foo"))                           }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("bar"))                           }.apply {
                matches().size shouldBe 2
                // repeated call to matches() must return same matches
                matches().size shouldBe 2                               }.run {

                expand(foo)                                             }.apply {
                matches().size shouldBe 2                               }.run {
            }
        }
    }

    @Test
    fun testMatchesResetOnNewExpand() {
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val foo = occurrence("foo")

            with(ruleMatcher().probe()) {

                expand(foo)                                             }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("bar"))                           }.apply {
                matches().size shouldBe 1                               }.run {

                // expand of any NEW occurrence resets matches
                //  because only matches relevant to the last
                //  occurrence must be returned
                expand(occurrence("bazz"))                          }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("bar"))                           }.apply {
                matches().size shouldBe 1                               }.run {

                // NB: expansion of already expanded occurrence
                //  returns all unconsumed matches relevant to it
                expand(foo)                                             }.apply {
                matches().size shouldBe 2
                matches().forEach { it shouldBeRelevantFor foo }

                consume(matches().first())                              }.run {
                expand(foo)                                             }.apply {
                matches().size shouldBe 1                               }.apply {

            }
        }
    }

    @Test
    fun testMatchesResetOnContract() {
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val foo1 = occurrence("foo")
            val foo2 = occurrence("foo")
            val foo3 = occurrence("foo")

            with(ruleMatcher().probe()) {

                expand(foo1)                                            }.apply {
                matches().size shouldBe 1                               }.run {

                expand(foo2)                                            }.apply {
                // only matches relevant to last
                //  occurrence must be returned
                matches().size shouldBe 1                               }.run {

                // contract() shouldn't influence the behavior
                //  that only relevant matches are returned
                contract(foo2)                                          }.apply {
                expand(foo3)                                            }.apply {
                matches().size shouldBe 1
                matches().first() shouldBeRelevantFor foo3              }.run {

                // NB: expansion of already expanded occurrence
                //  returns all unconsumed matches relevant to it
                expand(foo1)                                            }.apply {
                matches().size shouldBe 1
                matches().first() shouldBeRelevantFor foo1              }.run {

            }
        }
    }

    @Test
    fun testMatchesOnlyRelevant() {
        with(programWithRules(
            rule("main",
                headKept(
                    constraint("bar")
                ),
                headReplaced(
                    constraint("foo")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val foo1 = occurrence("foo")
            val foo2 = occurrence("foo")
            val foo3 = occurrence("foo")
            val bar0 = occurrence("bar")

//            with(ruleMatcher().probe()) {
            with(Dispatcher(RuleIndex(rules)).front()) {

                expand(foo1)                                            }.apply {
                matches().count() shouldBe 0                               }.run {

                expand(foo2)                                            }.apply {
                matches().count() shouldBe 0                               }.run {

                expand(bar0)                                            }.apply {
                matches().count() shouldBe 2                               }.run {

                expand(foo3)                                            }.apply {
                matches().count() shouldBe 1                               }.run {

                expand(bar0)                                            }.apply {
                matches().count() shouldBe 3                               }.run {

            }
        }
    }

    @Test
    fun testSameOccurrenceLogical() {
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo", term("bar"))
                ),
                body(
                    constraint("qux")
                ))))
        {
            val X = metaLogical<Term>("X")
            val x = X.logical()
            val foo = occurrence("foo", x)
            with(ruleMatcher().probe()) {

                expand(foo)                                             }.apply {
                matches().size shouldBe 0                               }.run {

                x.set(term("bar"))

                expand(foo)                                        }.apply {
                matches().size shouldBe 1                               }.run {

            }
        }
    }

    @Test
    fun testTermArgument() {
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo", parseTerm("f{g h}")),
                    constraint("bar", parseTerm("g"))
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {

                expand(occurrence("foo", parseTerm("f{g g}")))              }.apply {
                matches().size shouldBe 0                                           }.run {

                expand(occurrence("bar", parseTerm("g")))                   }.apply {
                matches().size shouldBe 0                                           }.run {

                expand(occurrence("foo", parseTerm("f{g h}")))              }.apply {
                matches().size shouldBe 1                                           }.run {

            }
        }
    }

    @Test
    fun testTermRefArgument() {
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo", parseTerm("f{g h{k}}"))
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {
                val termh = parseTerm("h{k}")

                expand(occurrence("foo", term("f", parseTerm("g"), ref(termh))))    }.apply {
                matches().size shouldBe 1

            }
        }
    }

    @Test
    fun testShrink() {
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo"),
                    constraint("bar", "a"),
                    constraint("bazz")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val bara = occurrence("bar", "a")
            with(ruleMatcher().probe()) {

                expand(occurrence("foo"))                           }.apply {
                matches().size shouldBe 0                               }.run {

                expand(bara)                                            }.run {
                expand(occurrence("bar", "b"))               }.apply {
                matches().size shouldBe 0                               }.run {

                contract(bara)                                           }.apply {
                matches().size shouldBe 0                               }.run {

                expand(occurrence("bazz"))                          }.apply {
                matches().size shouldBe 0                               }.run {

                expand(bara)                                            }.apply {
                matches().size shouldBe 1

                with(matches().first()) {

                    matchHeadKept().count() shouldBe 0
                    matchHeadReplaced().count() shouldBe 3
                    matchHeadReplaced().first().constraint().symbol() shouldBe symbol("foo", 0)

                }
            }
        }
    }

    @Test
    fun testAmbiguousRules() {
        val (X, Y) = metaLogical<String>("X", "Y")
        val x = X.logical()
        val y = Y.logical()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("bar", X, Y)
                ),
                headKept(
                    constraint("foo", X),
                    constraint("foo", Y)
                ),
                body(
                    constraint("expected")
                )),
            rule("rule2",
                headReplaced(
                    constraint("bar", X, Y)
                ),
                headKept(
                    constraint("foo", X)
                ),
                body(
                    constraint("unexpected")
                ))))
        {
            val foox = occurrence("foo", x)
            val fooy = occurrence("foo", y)

            with(ruleMatcher().probe()) {
                
                expand(occurrence("foo", "schmoo"))  }.run {
                expand(foox)                                    }.run {
                expand(fooy)                                    }.run {
                expand(fooy)                                    }.run {
                expand(fooy)                                    }.run {
                expand(occurrence("bar", x, y))             }.apply {

                matches().size shouldBe 1
                matches().first().rule().uniqueTag().toString() shouldBe "rule1"
                
            }
        }
    }

    @Test
    fun testMetaLogical() {
        val (X, Y) = metaLogical<String>("X", "Y")
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo", X),
                    constraint("bar", X, Y),
                    constraint("bazz", Y)
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {

                expand(occurrence("foo", "a"))                      }.run {
                expand(occurrence("bazz", "b"))                     }.run {
                expand(occurrence("bar", "a", "c"))                 }.apply {
                matches().size shouldBe 0                                      }.run {

                expand(occurrence("bar", "d", "b"))                 }.apply {
                matches().size shouldBe 0                                      }.run {

                expand(occurrence("bar", "a", "b"))                 }.apply {
                matches().size shouldBe 1

                with(matches().first()) {

                    with(matchHeadReplaced().drop(2).first())
                    {
                        constraint().symbol() shouldBe symbol("bazz", 1)
                        arguments().count() shouldBe 1
                        arguments().first() shouldBe "b"
                    }

                    with(logicalContext()) {
                        variable(X).findRoot().value() shouldBe "a"
                        variable(Y).findRoot().value() shouldBe "b"
                    }

                }
                                                                               }.run {
                expand(occurrence("foo", "d"))                      }.apply {
                matches().size shouldBe 1

                with(matches().first()) {

                    with(matchHeadReplaced().drop(1).first())
                    {
                        constraint().symbol() shouldBe symbol("bar", 2)
                        arguments().count() shouldBe 2
                        arguments().toList() shouldBe listOf("d", "b")
                    }

                    with(logicalContext()) {
                        variable(X).findRoot().value() shouldBe "d"
                        variable(Y).findRoot().value() shouldBe "b"
                    }

                }
            }
        }
    }


    @Test
    fun testTermMetaLogical() {
        val (X, Y) = metaLogical<Term>("X", "Y")
        val yLogical = Y.logical()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo", term("f", metaVar(X)) ),
                    constraint("bar", parseTerm("g{h}"))
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {
                expand(occurrence("foo", parseTerm("f{g{h}}")))                 }.apply {
                matches().size shouldBe 0
                                                                                        }.run {
                expand(occurrence("bar", parseTerm("g{h}")))                    }.apply {
                matches().size shouldBe 1

                with(matches().first()) {
                    with(logicalContext()) {
                        variable(X).findRoot().value() shouldBe parseTerm("g{h}")
                    }
                }
            }
        }
    }

    @Test
    fun testTermRefLogicalMetaLogical() {
        val (X, Y) = metaLogical<Term>("X", "Y")
        val yLogical = Y.logical()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("bar", parseTerm("h{k}"), metaVar(X)),
                    constraint("foo", term("f", metaVar(X), term("g")))
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {
                expand(occurrence("bar", parseTerm("h{k}"), parseTerm("h{k}")))              }.apply {
                matches().size shouldBe 0                                                                }.run {

                yLogical.set(parseTerm("h{k}"))
                val termh = logicalVar(yLogical)

                expand(occurrence("foo", term("f", ref(termh), term("g"))))         }.apply {
                matches().size shouldBe 1
            }
        }
    }


    @Test
    fun testTermRefLogicalMetaLogical2() {
        val (X, Y) = metaLogical<Term>("X", "Y")
        val yLogical = Y.logical()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo", term("f", term("g", metaVar(X), term("h"))))
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {

                expand(occurrence("foo", term("f", ref(logicalVar(yLogical)), term("h"))))       }.apply {
                matches().size shouldBe 0                                                                       }.run {

                yLogical.set(parseTerm("g{k h}"))
                expand(occurrence("foo", term("f", ref(logicalVar(yLogical)), term("h"))))  }.apply {
                matches().size shouldBe 1                                                                       }.run {

            }
        }
    }

    @Test
    fun testTermRefLogicalMetaLogical3() {
        val (X, Y) = metaLogical<Term>("X", "Y")
        val yLogical = Y.logical()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo", term("f", ref(metaVar(X)), term("g"))),
                    constraint("bar", term("h", term("k"), metaVar(X)))
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(ruleMatcher().probe()) {

                expand(occurrence("foo", term("f", logicalVar(yLogical), term("g")))) }.apply {
                matches().size shouldBe 0                                                                }.run {

                yLogical.set(parseTerm("p{q r}"))
                val termh = logicalVar(yLogical)

                expand(occurrence("bar", parseTerm("h{k p{q r}}")))         }.apply {
                matches().size shouldBe 1
            }
        }
    }

    @Test
    fun testTermLogical() {
        val (X, Y) = metaLogical<Term>("X", "Y")
        val yLogical = Y.logical()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo", term("f", term("k", metaVar(X)))),
                    constraint("bar", parseTerm("g{h}")),
                    constraint("bazz", term("k", metaVar(X)))
                ),
                body(
                    constraint("qux")
                ))))
        {
            val bazzk = occurrence("bazz", term("k", logicalVar(yLogical)))

            with(ruleMatcher().probe()) {
                expand(bazzk)                                                  }.apply {

                matches().size shouldBe 0
                yLogical.findRoot().value() shouldBe null
                                                                                        }.run {
                expand(occurrence("foo", parseTerm("f{k{h}}")))                 }.apply {

                matches().size shouldBe 0

                                                                                        }.run {
                expand(occurrence("bar", parseTerm("g{h}")))                    }.apply {
                matches().size shouldBe 0

                yLogical.findRoot().value() shouldBe null
                // test reactivate occurrence
                yLogical.findRoot().set(parseTerm("h"))
                                                                                        }.run {
                expand(bazzk)                                                  }.apply {
                matches().size shouldBe 1

                with(matches().first()) {
                    rule().uniqueTag().toString() shouldBe "rule1"

                    with(logicalContext()) {
                        variable(X).findRoot().value() shouldBe parseTerm("h")
                    }
                }
            }
        }
    }


    @Test
    fun testDispatcher() {
        with(programWithRules(
            rule("main",
                headReplaced(
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(Dispatcher(RuleIndex(rules)).front()) {

                expand(occurrence("foo"))                                    }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bar"))                                    }.apply {
                matches().count() shouldBe 1                                        
                
                with(matches().first()) {

                    rule().uniqueTag().toString() shouldBe "main"
                    matchHeadKept().count() shouldBe 0
                    matchHeadReplaced().count() shouldBe 2

                }
            }
        }
    }


    @Test
    fun testDispatcherManyRules() {
        val X = metaLogical<String>("X")
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("foo"),
                    constraint("bar", X)
                ),
                body(
                    constraint("qux")
                )),
            rule("rule2",
                headReplaced(
                    constraint("foo"),
                    constraint("bar", X),
                    constraint("bazz")
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(Dispatcher(RuleIndex(rules)).front()) {

                expand(occurrence("foo"))                                    }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bar", "a"))                        }.apply {
                matches().count() shouldBe 1

                with(matches().first()) {

                    rule().uniqueTag().toString() shouldBe "rule1"
                    logicalContext().variable(X).value() shouldBe "a"

                }
                                                                                    }.run {
                expand(occurrence("bazz"))                                   }.apply {
                matches().count() shouldBe 1

                with(matches().first()) {

                    rule().uniqueTag().toString() shouldBe "rule2"
                    logicalContext().variable(X).value() shouldBe "a"

                }
                                                                                    }.run {
                expand(occurrence("bar", "b"))                        }.apply {
                matches().count() shouldBe 2

                with(matches().drop(1).first()) {

                    rule().uniqueTag().toString() shouldBe "rule2"
                    logicalContext().variable(X).value() shouldBe "b"

                }
            }
        }
    }


    @Test
    fun testDispatcherRulesOrder() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("foo"),
                    constraint("bar"),
                    constraint("bazz")
                ),
                body(
                    constraint("qux")
                )),
            rule("rule2",
                headReplaced(
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                )),
            rule("rule3",
                headReplaced(
                    constraint("foo"),
                    constraint("bar"),
                    constraint("bazz"),
                    constraint("blin")
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(Dispatcher(RuleIndex(rules)).front()) {

                expand(occurrence("blin"))                                   }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bar"))                                    }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bazz"))                                   }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("foo"))                                    }.apply {
                matches().count() shouldBe 3                                        }.run {

                matches().map { it.rule().uniqueTag().toString() }.toList() shouldBe listOf("rule1", "rule2", "rule3")
            }
        }
    }

    @Test
    fun testDispatcherIncremental() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("foo"),
                    constraint("bar"),
                    constraint("bazz")
                ),
                body(
                    constraint("qux")
                )),
            rule("rule2",
                headReplaced(
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                )),
            rule("rule3",
                headReplaced(
                    constraint("foo"),
                    constraint("bar"),
                    constraint("bazz"),
                    constraint("blin")
                ),
                body(
                    constraint("qux")
                ))))
        {
            with(Dispatcher(RuleIndex(rules)).front()) {

                expand(occurrence("foo"))                                }.apply {
                matches().count() shouldBe 0                                    }.run {

                expand(occurrence("bar"))                                }.apply {
                matches().count() shouldBe 1
                matches().first().rule().uniqueTag().toString() shouldBe  "rule2"                }.run {

                expand(occurrence("bazz"))                               }.apply {
                matches().count() shouldBe 1
                matches().first().rule().uniqueTag().toString() shouldBe  "rule1"                }.run {

                expand(occurrence("blin"))                               }.apply {
                matches().count() shouldBe 1
                matches().first().rule().uniqueTag().toString() shouldBe  "rule3"
            }
        }
    }

    @Test
    fun testDispatcherIncrementalDiscard() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("foo"),
                    constraint("bar"),
                    constraint("bazz")
                ),
                body(
                    constraint("qux")
                )),
            rule("rule2",
                headReplaced(
                    constraint("foo"),
                    constraint("bar")
                ),
                body(
                    constraint("qux")
                )),
            rule("rule3",
                headReplaced(
                    constraint("foo"),
                    constraint("bar"),
                    constraint("bazz"),
                    constraint("blin")
                ),
                body(
                    constraint("qux")
                ))))
        {
            val bar = occurrence("bar")
            with(Dispatcher(RuleIndex(rules)).front()) {

                expand(occurrence("foo"))                                }.apply {
                matches().count() shouldBe 0                                    }.run {

                expand(bar)                                                  }.apply {
                matches().count() shouldBe 1
                matches().first().rule().uniqueTag().toString() shouldBe  "rule2"                }.run {

                expand(occurrence("bazz"))                               }.apply {
                matches().count() shouldBe 1
                matches().first().rule().uniqueTag().toString() shouldBe  "rule1"                }.run {

                contract(bar)                                                  }.apply {
                matches().count() shouldBe 0                                    }.run {

                expand(occurrence("blin"))                               }.apply {
                matches().count() shouldBe 0
                                                                                }.run {
                expand(bar)                                                  }.apply {
                matches().count() shouldBe 3
                // note that rule order is 1-2-3, not 2-1-3 as could be without contracting 'bar'
                matches().map { it.rule().uniqueTag().toString() }.toList() shouldBe listOf("rule1", "rule2", "rule3")
            }
        }
    }

    @Test
    fun testUnionFindLinkedList()  {
        run {
            val list = UnionFindLinkedList<String>()
            list.toList() shouldBe listOf<String>()

            val it = list.iterator()
            it.hasNext() shouldBe false

            list.add("a")
            it.next() shouldBe "a"
            it.hasNext() shouldBe false

            list.add("b")
            it.hasNext() shouldBe true

            it.next() shouldBe "b"
            it.hasNext() shouldBe false
        }

        run {
            val list1 = UnionFindLinkedList<String>().also { it.add("a") }.also { it.add("b") }
            list1.toList() shouldBe listOf("a", "b")

            val it = list1.iterator()
            it.hasNext() shouldBe true
            it.next() shouldBe "a"
            it.next() shouldBe "b"
            it.hasNext() shouldBe false

            list1.add("c")
            it.hasNext() shouldBe true
        }

        run {
            val list2 = UnionFindLinkedList<String>().also { it.add("a") }.also { it.add("b") }
            list2.toList() shouldBe listOf("a", "b")

            val it1 = list2.iterator()
            it1.hasNext() shouldBe true
            it1.next() shouldBe "a"
            it1.hasNext() shouldBe true

            val it2 = list2.iterator()
            it2.hasNext() shouldBe true
            it2.next()
            it2.remove()

            it1.hasNext() shouldBe true
            it1.next() shouldBe "b"
        }


        run {
            val list3 = UnionFindLinkedList<String>().also { it.add("a") }.also { it.add("b") }
            list3.toList() shouldBe listOf("a", "b")

            val it1 = list3.iterator()
            it1.hasNext() shouldBe true
            it1.next() shouldBe "a"
            it1.hasNext() shouldBe true
            it1.next() shouldBe "b"

            val it2 = list3.iterator()
            it2.next()
            it2.remove()
            it2.hasNext() shouldBe true
            it2.next()
            it2.remove()

            it1.hasNext() shouldBe false

            list3.add("c")
            it1.hasNext() shouldBe true
            it1.next() shouldBe "c"
        }

        run {
            val list4 = UnionFindLinkedList<String>().also { it.add("a") }
            list4.toList() shouldBe listOf("a")

            val it1 = list4.iterator()
            it1.hasNext() shouldBe true
            it1.next() shouldBe "a"
            it1.hasNext() shouldBe false

            val it2 = list4.iterator()
            it2.hasNext() shouldBe true
            it2.next() shouldBe "a"
            it2.remove()

            it1.hasNext() shouldBe false

            list4.add("c")
            it1.hasNext() shouldBe true
            it1.next() shouldBe "c"
        }

    }
}