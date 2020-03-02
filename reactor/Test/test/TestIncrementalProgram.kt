import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.core.RulesDiff
import jetbrains.mps.logic.reactor.core.internal.MatchJournal
import jetbrains.mps.logic.reactor.evaluation.SessionToken
import jetbrains.mps.logic.reactor.evaluation.EvaluationResult
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import org.junit.*
import org.junit.Assert.*
import program.MockConstraint

/*
 * Copyright 2014-2019 JetBrains s.r.o.
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

class TestIncrementalProgram {

    companion object {
        @BeforeClass
        @JvmStatic
        fun setup() {
            ReactorLifecycle.init();
        }

        @AfterClass
        @JvmStatic
        fun teardown() {
            ReactorLifecycle.deinit();
        }
    }

    private fun Builder.launch(name: String, incrSpec: IncrementalProgramSpec, resultHandler: (EvaluationResult) -> Unit)
        : Pair<Builder, EvaluationResult>
    {
        val result = EvaluationSession.newSession(program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .withIncrSpec(incrSpec)
            .start(MockSupervisor())
        result.feedback()?.let { if (it.isFailure) throw it.failureCause() }
        resultHandler(result)
        return this to result
    }

    private fun Builder.relaunch(name: String, incrSpec: IncrementalProgramSpec, sessionToken: SessionToken, resultHandler: (EvaluationResult) -> Unit )
        : Pair<Builder, EvaluationResult>
    {
        val prog = program(name).withRulesDiff(
            RulesDiff.findDiff(sessionToken.rules, rules)
        )
        val result = EvaluationSession.newSession(prog)
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .withIncrSpec(incrSpec)
            .withSessionToken(sessionToken)
            .start(MockSupervisor())
        result.feedback()?.let { if (it.isFailure) throw it.failureCause() }
        resultHandler(result)
        return this to result
    }

    private fun SessionToken.chunks(): Collection<MatchJournal.Chunk> =
        (this.journalView as MatchJournal.View).chunks

    private fun EvaluationResult.chunksSymbolView() = this.token().chunks().map {
        it.entriesLog().map { entry -> !entry.discarded() to entry.occ().constraint().symbol() }
    }

    private fun EvaluationResult.lastChunk() = this.token().chunks().last() as MatchJournal.Chunk

    private fun EvaluationResult.countChunks() = this.token().chunks().size

    private fun Iterable<Occurrence>.constraintSymbols() = this.map { it.constraint.symbol() }

    private fun EvaluationResult.lastChunkSymbols() = this.lastChunk().activatedLog().constraintSymbols()


    @Test
    fun addNewMatchAtTheEnd() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar"),
            setOf(sym0("foo"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                ))
        ).launch("addRule", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"))
            result.lastChunkSymbols() shouldBe listOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("foo.bar",
                    headReplaced(
                        pconstraint("foo")
                    ),
                    body(
                        constraint("bar")
                    )
                )
            ).relaunch("test1", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"))
                result.lastChunkSymbols() shouldBe listOf(sym0("bar"))
            }
        }
    }

    @Test
    fun addOneMoreMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz"),
            setOf(sym0("foo"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    constraint("bar")
                )
            )
        ).launch("addRule", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"))
            result.lastChunkSymbols() shouldBe listOf(sym0("bar"))

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("foo.baz",
                    headKept(
                        pconstraint("foo")
                    ),
                    body(
                        constraint("baz")
                    )
                )
            ).relaunch("test1", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"), sym0("baz"))
                result.lastChunkSymbols() shouldBe listOf(sym0("baz"))
            }
        }
    }

    @Test
    fun addTwoDependentMatches() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz"),
            setOf(sym0("foo"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                ))
        ).launch("addRule", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("foo.bar",
                    headKept(
                        pconstraint("foo")
                    ),
                    body(
                        constraint("bar")
                    )),
                rule("foo.baz",
                    headKept(
                        pconstraint("foo"),
                        constraint("bar") // depends on the previous match being correctly logged
                    ),
                    body(
                        constraint("baz")
                    )
                )
            ).relaunch("test1", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"), sym0("baz"))
                result.lastChunkSymbols() shouldBe listOf(sym0("baz"))
            }
        }
    }

    @Test
    fun addAtStartMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main.foo", "main.bar"),
            setOf(sym0("main"))
        )
        programWithRules(
            // 'at-start' rules are launched with a 'main' occurrence, their heads aren't actually empty
            rule("main.foo",
                headKept(
                    pconstraint("main")
                ),
                body(
                    constraint("foo")
                ))
        ).launch("addRule", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("main"))
            result.countChunks() shouldBe 3
            result.lastChunkSymbols() shouldBe listOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("main.bar",
                    headKept(
                        pconstraint("main")
                    ),
                    body(
                        constraint("bar")
                    )
                )
            ).relaunch("atStart", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("main"), sym0("bar"))
                result.countChunks() shouldBe 3+1
                result.lastChunkSymbols() shouldBe listOf(sym0("bar"))
            }
        }
    }


    @Test
    fun addAfterReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "main.bar"),
            setOf(sym0("main"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    pconstraint("main")
                ),
                body(
                    constraint("foo")
                ))
        ).launch("addRule", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            builder.programWithRules(
                rule("main.bar",
                    headKept(
                        pconstraint("main")
                    ),
                    body(
                        constraint("bar")
                    )
                )
            ).relaunch("test1", progSpec, evalRes.token()) { result ->
                // no new matches: 'main' has been already discarded
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"))
                result.countChunks() shouldBe nPrincipalMatches
            }
        }
    }

    // Tests that incremental reactivation of discarded occurrences is handled correctly.
    @Test
    fun addKeptBeforeReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.dummy"),
            setOf(sym0("foo"), sym0("baz"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            rule("baz.dummy",
                headKept(
                    pconstraint("baz")
                ),
                body(
                    constraint("dummy")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"), sym0("dummy"))
            result.lastChunkSymbols() shouldBe listOf(sym0("dummy"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            // Insert rule before foo.baz: produce bar before discarding foo in foo.baz
            builder.insertRulesAt(1,
                rule("foo.bar",
                    headKept(
                        pconstraint("foo")
                    ),
                    body(
                        constraint("bar")
                    ))
            ).relaunch("test1", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("baz"), sym0("dummy"))
                result.lastChunkSymbols() shouldBe listOf(sym0("dummy"))
                result.countChunks() shouldBe (1 + nPrincipalMatches)
            }
        }
    }

    @Test
    @Ignore("Shouldn't pass by design. Requires removal-phase before such additions.")
    fun addReplacedBeforeReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.dummy"),
            setOf(sym0("foo"), sym0("baz"))
        )
        // Program is almost identical to the one in previous test,
        //  except added rule discards its head.
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            rule("baz.dummy",
                headKept(
                    pconstraint("baz")
                ),
                body(
                    constraint("dummy")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"), sym0("dummy"))
            result.lastChunkSymbols() shouldBe listOf(sym0("dummy"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            builder.insertRulesAt(1,
                rule("foo.bar",
                    // 'foo' will be discarded before existing foo-rules, so they shouldn't match & must be removed
                    headReplaced(
                        pconstraint("foo")
                    ),
                    body(
                        constraint("bar")
                    ))
            ).relaunch("test1", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"))
                result.lastChunkSymbols() shouldBe listOf(sym0("bar"))
                result.countChunks() shouldBe (nPrincipalMatches + 1 - 2)
            }
        }
    }

    @Test
    fun addAfterKeptBeforeReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "foo.qux"),
            setOf(sym0("foo"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    constraint("bar")
                )),
            rule("foo.qux",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    constraint("qux")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("qux"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            builder.insertRulesAt(2,
                rule("foo.baz",
                    headKept(
                        pconstraint("foo")
                    ),
                    body(
                        constraint("baz")
                    ))
            ).relaunch("test1", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("baz"), sym0("qux"))
                result.countChunks() shouldBe (1 + nPrincipalMatches)
            }
        }
    }

    @Test
    fun addAndRelaunchTwice() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.lax"),
            setOf(sym0("foo"), sym0("baz"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    constraint("bar")
                )
            )
        ).launch("addRule", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"))

            // Add single rule and relaunch
        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("foo.baz",
                    headKept(
                        pconstraint("foo")
                    ),
                    body(
                        pconstraint("baz")
                    )
                )
            ).relaunch("test1", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"), sym0("baz"))

            }.also { (builder, evalRes) ->
                builder.programWithRules(
                    rule("baz.lax",
                        headReplaced(
                            pconstraint("foo")
                        ),
                        headKept(
                            pconstraint("baz")
                        ),
                        body(
                            constraint("lax")
                        )
                    )
                ).relaunch("test2", progSpec, evalRes.token()) { result ->
                    result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("baz"), sym0("lax"))
                }
            }
        }
    }

    // Weaker matches
    @Test
    fun invalidateStaleDiscardingMatches() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "has_type", "no_type", "typeOf"),
            setOf(sym0("check"), sym0("recover"), sym0("expectType"), sym0("typeOf"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("check"),
                    pconstraint("expectType")
                )),
            rule("has_type",
                headReplaced(
                    pconstraint("expectType")
                ),
                headKept(
                    pconstraint("typeOf")
                ),
                body(
                    constraint("has_type")
                )),
            rule("no_type",
                headReplaced(
                    pconstraint("expectType")
                ),
                body(
                    constraint("no_type") // not expected after increm launch
                ))
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("no_type"), sym0("check"))

        }.also { (builder, evalRes) ->

            builder.insertRulesAt(1,
                rule("typeOf",
                    headKept(
                        pconstraint("check")
                    ),
                    body(
                        pconstraint("typeOf")
                    ))
            ).relaunch("test1", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf(sym0("has_type"), sym0("check"), sym0("typeOf"))
            }
        }
    }

    // Description: due to incremental launch, match on 'foobar' will be known
    //  before it should actually happen. If it happens earlier than needed,
    //  'bar' will be discarded too early and program results will be incorrect.
    // Tests postponedMatches logic.
    @Test
    fun futureMatchInDueTime() {
        val progSpec = MockIncrProgSpec(
            setOf(".foo", ".bar", "foobar", "bar.1st"),
            setOf(sym0("start"), sym0("foo"), sym0("bar"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("start")
                )),
            rule(".foo",
                headKept(
                    pconstraint("start")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foobar",
                headReplaced(
                    pconstraint("foo"),
                    pconstraint("bar")
                ),
                body(
                    constraint("2nd")
                )),
            rule("bar.1st",
                headKept(
                    pconstraint("bar")
                ),
                body(
                    constraint("1st")
                )
            )
        ).launch("withoutBar", progSpec) { result ->

            // "foobar" hasn't matched without 'bar, so 'foo' is still here
            result.storeView().constraintSymbols() shouldBe setOf(sym0("start"), sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.insertRulesAt(1,
                rule(".bar",
                    headKept(
                        pconstraint("start")
                    ),
                    body(
                        pconstraint("bar")
                    ))
            ).relaunch("withBar", progSpec, evalRes.token()) { result ->

                println(result.token().chunks())

                // if "foobar" happens too early, "1st" occ won't be produced
                result.storeView().constraintSymbols() shouldBe setOf(sym0("start"), sym0("1st"), sym0("2nd"))
                // ensure right rule match order: the last chunk must contain "2nd"
                result.lastChunkSymbols() shouldBe listOf(sym0("2nd"))
            }
        }
    }

    // Test on complex condition involving consumedSignatures and 'reactivation' flag in RuleMatchFront.expand
    @Test
    fun completePartialMatch() {
        val progSpec = MockIncrProgSpec(
            setOf(".foo", ".bar", "foobar"),
            setOf(sym0("start"), sym0("foo"), sym0("bar"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("start")
                )),
            rule(".foo",
                headReplaced(
                    pconstraint("start")
                ),
                body(
                    pconstraint("foo")
                )),
            // Propagation rule that doesn't match the first time due to the lack of 'bar'
            rule("foobar",
                headKept(
                    pconstraint("foo"),
                    pconstraint("bar")
                ),
                body(
                    constraint("marker")
                ))
        ).launch("withoutBar", progSpec) { result ->

            // "foobar" hasn't matched without 'bar, so 'foo' is still here
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            // Provides 'bar' by reactivating 'foo'
            builder.insertRulesAt(1,
                rule(".bar",
                    headKept(
                        pconstraint("foo")
                    ),
                    body(
                        pconstraint("bar")
                    ))
            ).relaunch("withBar", progSpec, evalRes.token()) { result ->

                // if "foobar" happens too early, "1st" occ won't be produced
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"), sym0("marker"))
                result.lastChunkSymbols() shouldBe listOf(sym0("marker"))
                result.countChunks() shouldBe (2 + 1 + nPrincipalMatches) // +[.bar, foobar] +activation of bar
            }
        }
    }

    // Same as 'completePartialMatch' test, except it discards 'foo' at the end.
    @Test
    @Ignore("Shouldn't pass by design. Incrementality-enabled programs are not supposed to have such rule sequences.")
    fun completePartialMatchBeforeReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf(".foo", ".bar", "foobar"),
            setOf(sym0("start"), sym0("foo"), sym0("bar"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("start")
                )),
            rule(".foo",
                headReplaced(
                    pconstraint("start")
                ),
                body(
                    pconstraint("foo")
                )),
            // Propagation rule that doesn't match the first time due to the lack of 'bar'
            rule("foobar",
                headKept(
                    pconstraint("foo"),
                    pconstraint("bar")
                ),
                body(
                    constraint("marker")
                )),
            rule("rmfoo",
                headReplaced(
                    pconstraint("foo")
                ),
                body()
            )
        ).launch("withoutBar", progSpec) { result ->

            // "foobar" hasn't matched without 'bar, so 'foo' is still here
            result.storeView().constraintSymbols() shouldBe emptySet<ConstraintSymbol>()

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            // Provides 'bar' by reactivating 'foo'
            builder.insertRulesAt(1,
                rule(".bar",
                    headKept(
                        pconstraint("foo")
                    ),
                    body(
                        pconstraint("bar")
                    ))
            ).relaunch("withBar", progSpec, evalRes.token()) { result ->

                // if "foobar" happens too early, "1st" occ won't be produced
                result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("marker"))
                result.lastChunkSymbols() shouldBe listOf(sym0("marker"))
                result.countChunks() shouldBe (2 + nPrincipalMatches) // +[.bar, foobar]
            }
        }
    }


    @Test
    fun rmSinglePropagationMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.qux"),
            setOf(sym0("foo"), sym0("baz"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            rule("baz.qux",
                headKept(
                    pconstraint("baz")
                ),
                body(
                    constraint("qux")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"), sym0("qux"))
            result.lastChunkSymbols() shouldBe listOf(sym0("qux"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            builder.removeRules(listOf("baz.qux"))
                .relaunch("removed", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"))
                result.lastChunkSymbols() shouldBe listOf(sym0("baz"))
                result.countChunks() shouldBe (nPrincipalMatches - 1)
            }
        }
    }

    @Test
    fun rmSingleSimplificationMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.qux"),
            setOf(sym0("foo"), sym0("baz"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            rule("baz.qux",
                headReplaced(
                    pconstraint("baz")
                ),
                body(
                    constraint("qux")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("qux"))
            result.lastChunkSymbols() shouldBe listOf(sym0("qux"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            builder.removeRules(listOf("baz.qux"))
                .relaunch("removed", progSpec, evalRes.token()) { result ->

                    // 'baz' must be restored
                    result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"))
                    result.lastChunkSymbols() shouldBe listOf(sym0("baz"))
                    result.countChunks() shouldBe (nPrincipalMatches - 1)
                }
        }
    }

    @Test
    fun rmWithDependencies() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.baz", "foo.bar", "barbaz.qux", "baz.lax"),
            setOf(sym0("foo"), sym0("baz"), sym0("bar"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("bar")
                )),
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            rule("barbaz.qux",
                headKept(
                    pconstraint("bar"),
                    pconstraint("baz")
                ),
                body(
                    constraint("qux")
                )),
            rule("baz.lax",
                headReplaced(
                    pconstraint("baz")
                ),
                body(
                    constraint("lax")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("qux"), sym0("lax"))
            result.lastChunkSymbols() shouldBe listOf(sym0("lax"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            // "barbaz.qux" rule match is removed as a dependency of "foo.bar" match
            builder.removeRules(listOf("foo.bar"))
                .relaunch("removed", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("lax"))
                    result.lastChunkSymbols() shouldBe listOf(sym0("lax"))
                    result.countChunks() shouldBe (nPrincipalMatches - 3)
                }
        }
    }

    @Test
    fun rmReplacedBeforeReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.baz", "foo.bar", "baz.lax"),
            setOf(sym0("foo"), sym0("baz"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            // Note two discarding rules one after another.
            // After removing "foo.bar" "foo.baz" must match.
            rule("foo.bar",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    constraint("bar")
                )),
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            rule("baz.lax",
                headReplaced(
                    pconstraint("baz")
                ),
                body(
                    constraint("lax")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"))
            result.lastChunkSymbols() shouldBe listOf(sym0("bar"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            builder.removeRules(listOf("foo.bar"))
                .relaunch("removed", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("lax"))
                    result.lastChunkSymbols() shouldBe listOf(sym0("lax"))
                    result.countChunks() shouldBe (nPrincipalMatches - 1 + 3)
                }
        }
    }

    @Test
    fun rmAndAddSamePropagationMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.qux"),
            setOf(sym0("foo"), sym0("baz"))
        )
        val readdedRule =
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                ))
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            readdedRule,
            rule("baz.qux",
                headKept(
                    pconstraint("baz")
                ),
                body(
                    constraint("qux")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"), sym0("qux"))
            result.lastChunkSymbols() shouldBe listOf(sym0("qux"))

        }.also { (builder, evalRes) ->
            val oldChunksView = evalRes.chunksSymbolView()
            val oldLastChunk = evalRes.lastChunk()
            builder.removeRules(listOf("foo.baz"))
                .relaunch("removed", progSpec, evalRes.token()) { result ->

                    // ensure something changed
                    result.lastChunkSymbols() shouldBe listOf(sym0("foo"))

                }.also { (builder, evalRes) ->
                    builder.insertRulesAt(1, readdedRule)
                        .relaunch("readded", progSpec, evalRes.token()) { result ->

                            // ensure chunks are essentially the same, but have different identities
                            result.chunksSymbolView() shouldBe oldChunksView
                            assertNotEquals(result.lastChunk().evidence, oldLastChunk.evidence)
                        }
                }
        }
    }

    @Test
    fun rmAndAddDifferentMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.qux"),
            setOf(sym0("foo"), sym0("baz"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            rule("baz.qux",
                headKept(
                    pconstraint("baz")
                ),
                body(
                    constraint("qux")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"), sym0("qux"))
            result.lastChunkSymbols() shouldBe listOf(sym0("qux"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()
            builder.removeRules(listOf("foo.baz")).insertRulesAt(1,
                rule("foo.bar",
                    headReplaced(
                        pconstraint("foo")
                    ),
                    body(
                        constraint("bar")
                    ))
            ).relaunch("substituted", progSpec, evalRes.token()) { result ->

                result.countChunks() shouldBe (nPrincipalMatches - 3 + 1)
                result.lastChunkSymbols() shouldBe listOf(sym0("bar"))
            }
        }
    }

    @Test
    fun rmAndTryMatchWithRemovedOccurrences() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.baz", "barbaz.cant", "baz.lax2"),
            setOf(sym0("foo"), sym0("baz"), sym0("bar"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            // <<< removed
            rule("foo.baz",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("baz")
                )),
            // >>>

            // Can't match at first run, there's no 'bar'.
            // Should't match at second run, there's no 'baz' anymore.
            rule("barbaz.cant",
                headKept(
                    pconstraint("bar"),
                    pconstraint("baz")
                ),
                body(
                    constraint("cant")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"))
            result.lastChunkSymbols() shouldBe listOf(sym0("baz"))

        }.also { (builder, evalRes) ->
            val nPrincipalMatches = evalRes.countChunks()

            builder.removeRules(listOf("foo.baz")).programWithRules(
                // produces 'bar'
                rule("foo.bar",
                    headReplaced(
                        pconstraint("foo")
                    ),
                    body(
                        pconstraint("bar")
                    )),
                // 'baz' is removed, shouldn't match
                rule("baz.lax2",
                    headKept(
                        pconstraint("baz")
                    ),
                    body(
                        constraint("lax2")
                    ))
            ).relaunch("substituted", progSpec, evalRes.token()) { result ->

//                println(result.token().journalView.chunks)

                result.countChunks() shouldBe (nPrincipalMatches - 1)
                result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"))
                result.lastChunkSymbols() shouldBe listOf(sym0("bar"))
            }
        }
    }

    @Test
    fun completeNonprincipalRuleMatch() {
        // Tests that state of non principal rules (i.e. their rule matchers) is preserved between sessions;
        //  that is, that partially matched non-principal rules can be fully matched in later sessions.
        // This is a feature, not a necessity. For example, it could be mandated that
        //  such rules which should preserve their state can be only principal rules.
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo", "bar"),
            setOf(sym0("foo"), sym0("bar"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    pconstraint("main")
                ),
                body(
                    pconstraint("foo"),
                    pconstraint("bar")
                )),
            rule("foo",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    constraint("hasBound"),
                    constraint("eliminateBound")
                )),
            // matches on two hasBound, but the first program produces only a single bound
            rule("eliminateBounds",
                headReplaced(
                    constraint("eliminateBound"),
                    constraint("hasBound"),
                    constraint("hasBound")
                ),
                body(
                    constraint("expected")
                ))
        ).launch("singleBound", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("eliminateBound"), sym0("hasBound"))
            result.storeView().allOccurrences().count() shouldBe 3

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("bar",
                    headReplaced(
                        pconstraint("bar")
                    ),
                    body(
                        constraint("hasBound")
                    ))
            ).relaunch("addSecondBound", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("expected"))
                result.storeView().allOccurrences().count() shouldBe 1
            }
        }
    }

    @Test
    fun trackEvidenceForNonprincipalMatch() {
        // Tests that justifications from principal occurrences in non-principal matches
        // are not lost and tracked in the last parent match.
        // This logic makes sense only if non-principal matches can match on principal occurrences.
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo", "bar"),
            setOf(sym0("main"), sym0("foo"), sym0("bar"), sym0("important"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    pconstraint("main")
                ),
                body(
                    pconstraint("bar"),
                    pconstraint("foo")
                )),
            rule("bar",
                headReplaced(
                    pconstraint("bar")
                ),
                body(
                    pconstraint("important")
                )),
            rule("foo",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    constraint("expected"),
                    constraint("doInfluence")
                )),
            rule("influenceResult",
                // note: non-principal rule which nonetheless matches on a principal constraint
                headKept(
                    pconstraint("important")
                ),
                headReplaced(
                    constraint("doInfluence"),
                    constraint("expected")
                ),
                body(
                )),
            rule("influenceResult_default",
                // note: non-principal rule which nonetheless matches on a principal constraint
                headReplaced(
                    constraint("doInfluence")
                ),
                body(
                ))
        ).launch("launch", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("important"))
            assertTrue( result.lastChunk().let { it is MatchJournal.MatchChunk && it.match.rule().tag() == "foo" } )

        }.also { (builder, evalRes) ->

            // Premises of "foo" rule don't change (foo constraint is intact) on 2nd session,
            //  but premises of one of its children, "influenceResult" rule, do change.
            // Rule "influenceResult" isn't principal, so it isn't tracked as a chunk in journal.
            // So what can be done --- is its principal parent can be dropped, i.e. chunk of "foo" rule.
            //
            // Essentially, what is checked is: "important" constraint is invalidated => "foo" rule is invalidated.

            builder.removeRules(
                listOf("bar")
            ).relaunch("invalidate bar", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf( sym0("bar"), sym0("expected") )
            }
        }
    }

    @Test
    fun trackEvidenceForNonprincipalChildMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "bar"),
            setOf(sym0("main"), sym0("bar"), sym0("important"), sym0("expected"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    pconstraint("main")
                ),
                body(
                    pconstraint("bar"),
                    constraint("doInfluence"),
                    pconstraint("expected")
                )),
            rule("bar",
                headReplaced(
                    pconstraint("bar")
                ),
                body(
                    pconstraint("important")
                )),
            rule("influenceResult",
                // note: non-principal rule which nonetheless matches on a principal constraint
                headKept(
                    pconstraint("important")
                ),
                headReplaced(
                    constraint("doInfluence")
                ),
                body(
                ))
        ).launch("launch", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("important"), sym0("expected"))

        }.also { (builder, evalRes) ->

            builder.removeRules(
                listOf("bar")
            ).relaunch("addSecondBound", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("expected"))
            }
        }
    }

    @Test
    fun trackEvidenceForNonprincipalMatchAndItsChildren() {
        // Tests that justifications from principal occurrences in non-principal matches
        // are not lost and tracked in the last parent match AND its dependent chunks.
        // This logic makes sense only if non-principal matches can match on principal occurrences.
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo", "fooChild", "bar"),
            setOf(sym0("main"), sym0("foo"), sym0("fooChild"), sym0("bar"), sym0("important"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    pconstraint("main")
                ),
                body(
                    pconstraint("bar"),
                    pconstraint("foo")
                )),
            rule("bar",
                headReplaced(
                    pconstraint("bar")
                ),
                body(
                    pconstraint("important")
                )),
            rule("foo",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("fooChild"),
                    constraint("expected"),
                    constraint("doInfluence")
                )),
            rule("fooChild",
                headReplaced(
                    pconstraint("fooChild")
                ),
                body(
                    constraint("expected2")
                )),
            rule("influenceResult",
                // note: non-principal rule which nonetheless matches on a principal constraint
                headKept(
                    pconstraint("important")
                ),
                headReplaced(
                    constraint("doInfluence"),
                    constraint("expected")
                ),
                body(
                )),
            rule("influenceResult_default",
                // note: non-principal rule which nonetheless matches on a principal constraint
                headReplaced(
                    constraint("doInfluence")
                ),
                body(
                ))
        ).launch("launch", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("important"), sym0("expected2"))

        }.also { (builder, evalRes) ->

            // instance of occurrence from the first run
            val occInstance1 = evalRes.storeView().allOccurrences().find { it.constraint().symbol() == sym0("expected2") }
            occInstance1 shouldNotBeSame null

            builder.removeRules(
                listOf("bar")
            ).relaunch("invalidate bar", progSpec, evalRes.token()) { result ->

                result.storeView().constraintSymbols() shouldBe setOf( sym0("bar"), sym0("expected"), sym0("expected2") )
                val occInstances2 = result.storeView().allOccurrences().filter { it.constraint().symbol() == sym0("expected2") }
                // instance of occurrence from the second run must be different ---
                // if it's same it means that "fooChild" rule wasn't invalidated!
                occInstances2.count() shouldBe 1
                occInstances2.first() shouldNotBeSame occInstance1
            }
        }
    }

    @Test
    fun observerReactivatesFutureOccurrence() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "bindVar", "produceBound", "eliminateBound"),
            setOf(sym1("foo"))
        )
        val X = metaLogical<Int>("X")
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo", X)
                )),
            rule("produceBound",
                headKept(
                    pconstraint("foo", X)
                ),
                body(
                    pconstraint("hasBound", X)
                )),
            rule("eliminateBound",
                headReplaced(
                    pconstraint("hasBound", X)
                ),
                guard(
                    expression({ x -> x.isBound }, X)
                ),
                body(
                    constraint("unexpected")
                )
            )
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym1("foo"), sym1("hasBound"))

        }.also { (builder, evalRes) ->
            // Insert rule before produceBound: test whether
            //  occurrence reactivation due to var bind can occur
            //  before this occurrence is actually activated,
            //  which leads, of course, to inconsistent state.
            builder.insertRulesAt(1,
                rule("bindVar",
                    headKept(
                        pconstraint("foo", X)
                    ),
                    body(
                        statement({ x -> x.set(42) }, X)
                    ))
            ).relaunch("test reactivation", progSpec, evalRes.token()) { result ->

                // Currently incremental processing can't handle such rule dependencies
                //  stemming from incremental changes to logicals,
                //  so "eliminateBound" rule won't be reexecuted.
                // But reactivation of hasBound shouldn't pass either,
                //  because 'hasBound' isn't in store at the point of tried reactivation.
                result.storeView().constraintSymbols() shouldBe setOf(sym1("foo"), sym1("hasBound"))

                // NB: this is correct if incremental processing
                //  takes into account rule dependencies due to logicals.
                // result.storeView().constraintSymbols() shouldBe setOf(sym1("foo"), sym0("unexpected"))
            }
        }
    }
}
