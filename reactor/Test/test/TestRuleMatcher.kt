import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.createOccurrenceMatcher
import jetbrains.mps.logic.reactor.core.internal.logical
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.ConstraintSymbol.symbol
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.test.MockTerm.*
import jetbrains.mps.unification.test.MockTermsParser.*
import org.junit.Ignore
import org.junit.Test
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
        createOccurrenceMatcher(arrayOf(X to logicalVar(xLogical)).toMap()).
            matches(foofx, occurrence("foo", term("f", logicalVar(xLogical)))) shouldBe true
        // [X -> free] |- foo(f { X }) != foo(f { Y })
        createOccurrenceMatcher(arrayOf(X to logicalVar(xLogical)).toMap()).
            matches(foofx, occurrence("foo", term("f", logicalVar(yLogical)))) shouldBe false
        // [X -> free] |- foo(f { X }) != foo(f { h })
        createOccurrenceMatcher(arrayOf(X to logicalVar(xLogical)).toMap()).
            matches(foofx, occurrence("foo", parseTerm("f { h }"))) shouldBe false
        // [X -> free] |- foo(f { X }) != foo(f { Y = h })
        yLogical.set(term("h"))
        createOccurrenceMatcher(arrayOf(X to logicalVar(xLogical)).toMap()).
            matches(foofx, occurrence("foo", term("f", logicalVar(yLogical)))) shouldBe false

        // [X -> h] |- foo(f { X }) = foo(f { h })
        createOccurrenceMatcher(arrayOf(X to term("h")).toMap()).
            matches(foofx, occurrence("foo", parseTerm("f { h }"))) shouldBe true
        // [X -> h] |- foo(f { X }) != foo(f { Z })
        createOccurrenceMatcher(arrayOf(X to term("h")).toMap()).
            matches(foofx, occurrence("foo", term("f", logicalVar(zLogical)))) shouldBe false
        // [X -> h] |- foo(f { X }) = foo(f { Z = h })
        zLogical.set(term("h"))
        createOccurrenceMatcher(arrayOf(X to term("h")).toMap()).
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
            val occ2reactivate = occurrence("bazz", term("k", logicalVar(yLogical)))

            with(ruleMatcher().probe()) {
                expand(occ2reactivate)                                                  }.apply {
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
                expand(occ2reactivate)                                                  }.apply {
                matches().size shouldBe 1

                with(matches().first()) {
                    rule().tag() shouldBe "rule1"

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
            with(Dispatcher(RuleIndex(handlers)).front()) {

                expand(occurrence("foo"))                                    }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bar"))                                    }.apply {
                matches().count() shouldBe 1                                        
                
                with(matches().first()) {

                    rule().tag() shouldBe "main"
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
            with(Dispatcher(RuleIndex(handlers)).front()) {

                expand(occurrence("foo"))                                    }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bar", "a"))                        }.apply {
                matches().count() shouldBe 1

                with(matches().first()) {

                    rule().tag() shouldBe "rule1"

                }
                                                                                    }.run {
                expand(occurrence("bazz"))                                   }.apply {
                matches().count() shouldBe 1

                with(matches().first()) {

                    rule().tag() shouldBe "rule2"
                    logicalContext().variable(X).value() shouldBe "a"

                }
                                                                                    }.run {
                expand(occurrence("bar", "b"))                        }.apply {
                matches().count() shouldBe 2

                with(matches().drop(1).first()) {

                    rule().tag() shouldBe "rule2"
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
            with(Dispatcher(RuleIndex(handlers)).front()) {

                expand(occurrence("blin"))                                   }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bar"))                                    }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("bazz"))                                   }.apply {
                matches().count() shouldBe 0                                        }.run {

                expand(occurrence("foo"))                                    }.apply {
                matches().count() shouldBe 3                                        }.run {

                matches().map { it.rule().tag() }.toList() shouldBe listOf("rule1", "rule2", "rule3")
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
            with(Dispatcher(RuleIndex(handlers)).front()) {

                expand(occurrence("foo"))                                }.apply {
                matches().count() shouldBe 0                                    }.run {

                expand(occurrence("bar"))                                }.apply {
                matches().count() shouldBe 1
                matches().first().rule().tag() shouldBe  "rule2"                }.run {

                expand(occurrence("bazz"))                               }.apply {
                matches().count() shouldBe 1
                matches().first().rule().tag() shouldBe  "rule1"                }.run {

                expand(occurrence("blin"))                               }.apply {
                matches().count() shouldBe 1
                matches().first().rule().tag() shouldBe  "rule3"
            }
        }
    }

    @Test
    @Ignore("unclear whether this is a correct test case")
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
            with(Dispatcher(RuleIndex(handlers)).front()) {

                expand(occurrence("foo"))                                }.apply {
                matches().count() shouldBe 0                                    }.run {

                expand(bar)                                                  }.apply {
                matches().count() shouldBe 1
                matches().first().rule().tag() shouldBe  "rule2"                }.run {

                expand(occurrence("bazz"))                               }.apply {
                matches().count() shouldBe 1
                matches().first().rule().tag() shouldBe  "rule1"                }.run {

                contract(bar)                                                  }.apply {
                matches().count() shouldBe 0                                    }.run {

                expand(occurrence("blin"))                               }.apply {
                matches().count() shouldBe 0
                                                                                }.run {
                expand(bar)                                                  }.apply {
                matches().count() shouldBe 3
                matches().map { it.rule().tag() }.toList() shouldBe listOf("rule1", "rule2", "rule3")
            }
        }
    }
}