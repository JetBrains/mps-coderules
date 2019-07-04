import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.core.internal.MatchJournal
import jetbrains.mps.logic.reactor.evaluation.SessionToken
import jetbrains.mps.logic.reactor.evaluation.EvaluationResult
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import org.junit.*
import org.junit.Assert.assertNotEquals
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
        val result = EvaluationSession.newSession(program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .withIncrSpec(incrSpec)
            .withSessionToken(sessionToken)
            .start(MockSupervisor())
        result.feedback()?.let { if (it.isFailure) throw it.failureCause() }
        resultHandler(result)
        return this to result
    }


    private fun EvaluationResult.chunksSymbolView() = this.token().journalView.chunks.map {
        it.entriesLog().map { entry -> !entry.discarded() to entry.occ().constraint().symbol() }
    }

    private fun EvaluationResult.lastChunk() = this.token().journalView.chunks.last() as MatchJournal.Chunk

    private fun EvaluationResult.countChunks() = this.token().journalView.chunks.size

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
                    princConstraint("foo")
                ))
        ).launch("addRule", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"))
            result.lastChunkSymbols() shouldBe listOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("foo.bar",
                    headReplaced(
                        princConstraint("foo")
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
                    princConstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    princConstraint("foo")
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
                        princConstraint("foo")
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
                    princConstraint("foo")
                ))
        ).launch("addRule", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("foo.bar",
                    headKept(
                        princConstraint("foo")
                    ),
                    body(
                        constraint("bar")
                    )),
                rule("foo.baz",
                    headKept(
                        princConstraint("foo"),
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
                    princConstraint("main")
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
                        princConstraint("main")
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
                    princConstraint("main")
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
                        princConstraint("main")
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
                    princConstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            rule("baz.dummy",
                headKept(
                    princConstraint("baz")
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
                        princConstraint("foo")
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
                    princConstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            rule("baz.dummy",
                headKept(
                    princConstraint("baz")
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
                        princConstraint("foo")
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
                    princConstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    constraint("bar")
                )),
            rule("foo.qux",
                headReplaced(
                    princConstraint("foo")
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
                        princConstraint("foo")
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
                    princConstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    princConstraint("foo")
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
                        princConstraint("foo")
                    ),
                    body(
                        princConstraint("baz")
                    )
                )
            ).relaunch("test1", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"), sym0("baz"))

            }.also { (builder, evalRes) ->
                builder.programWithRules(
                    rule("baz.lax",
                        headReplaced(
                            princConstraint("foo")
                        ),
                        headKept(
                            princConstraint("baz")
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
                    princConstraint("start")
                )),
            rule(".foo",
                headKept(
                    princConstraint("start")
                ),
                body(
                    princConstraint("foo")
                )),
            rule("foobar",
                headReplaced(
                    princConstraint("foo"),
                    princConstraint("bar")
                ),
                body(
                    constraint("2nd")
                )),
            rule("bar.1st",
                headKept(
                    princConstraint("bar")
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
                        princConstraint("start")
                    ),
                    body(
                        princConstraint("bar")
                    ))
            ).relaunch("withBar", progSpec, evalRes.token()) { result ->

                println(result.token().journalView.chunks)

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
                    princConstraint("start")
                )),
            rule(".foo",
                headReplaced(
                    princConstraint("start")
                ),
                body(
                    princConstraint("foo")
                )),
            // Propagation rule that doesn't match the first time due to the lack of 'bar'
            rule("foobar",
                headKept(
                    princConstraint("foo"),
                    princConstraint("bar")
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
                        princConstraint("foo")
                    ),
                    body(
                        princConstraint("bar")
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
                    princConstraint("start")
                )),
            rule(".foo",
                headReplaced(
                    princConstraint("start")
                ),
                body(
                    princConstraint("foo")
                )),
            // Propagation rule that doesn't match the first time due to the lack of 'bar'
            rule("foobar",
                headKept(
                    princConstraint("foo"),
                    princConstraint("bar")
                ),
                body(
                    constraint("marker")
                )),
            rule("rmfoo",
                headReplaced(
                    princConstraint("foo")
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
                        princConstraint("foo")
                    ),
                    body(
                        princConstraint("bar")
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
                    princConstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            rule("baz.qux",
                headKept(
                    princConstraint("baz")
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
                    princConstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            rule("baz.qux",
                headReplaced(
                    princConstraint("baz")
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
                    princConstraint("foo")
                )),
            rule("foo.bar",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("bar")
                )),
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            rule("barbaz.qux",
                headKept(
                    princConstraint("bar"),
                    princConstraint("baz")
                ),
                body(
                    constraint("qux")
                )),
            rule("baz.lax",
                headReplaced(
                    princConstraint("baz")
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
                    princConstraint("foo")
                )),
            // Note two discarding rules one after another.
            // After removing "foo.bar" "foo.baz" must match.
            rule("foo.bar",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    constraint("bar")
                )),
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            rule("baz.lax",
                headReplaced(
                    princConstraint("baz")
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
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                ))
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    princConstraint("foo")
                )),
            readdedRule,
            rule("baz.qux",
                headKept(
                    princConstraint("baz")
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
                            assertNotEquals(result.lastChunk().id, oldLastChunk.id)
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
                    princConstraint("foo")
                )),
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            rule("baz.qux",
                headKept(
                    princConstraint("baz")
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
                        princConstraint("foo")
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
                    princConstraint("foo")
                )),
            // <<< removed
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("baz")
                )),
            // >>>

            // Can't match at first run, there's no 'bar'.
            // Should't match at second run, there's no 'baz' anymore.
            rule("barbaz.cant",
                headKept(
                    princConstraint("bar"),
                    princConstraint("baz")
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
                        princConstraint("foo")
                    ),
                    body(
                        princConstraint("bar")
                    )),
                // 'baz' is removed, shouldn't match
                rule("baz.lax2",
                    headKept(
                        princConstraint("baz")
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

}
