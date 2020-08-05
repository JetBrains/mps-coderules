import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.core.RulesDiff
import jetbrains.mps.logic.reactor.core.internal.MatchJournal
import jetbrains.mps.logic.reactor.evaluation.SessionToken
import jetbrains.mps.logic.reactor.evaluation.EvaluationResult
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.IncrementalContractViolationException
import org.junit.*
import org.junit.Assert.*
import program.MockConstraint
import solver.tellEquals

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

    private fun Builder.launch(name: String, incrSpec: IncrementalSpec, resultHandler: (EvaluationResult) -> Unit)
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

    private fun Builder.relaunch(name: String, incrSpec: IncrementalSpec, sessionToken: SessionToken, resultHandler: (EvaluationResult) -> Unit )
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
        it.entries().map { entry -> !entry.discarded to entry.occ.constraint().symbol() }
    }

    private fun EvaluationResult.lastChunk() = this.token().chunks().last() as MatchJournal.Chunk

    private fun EvaluationResult.countChunks() = this.token().chunks().size

    private fun Iterable<Occurrence>.constraintSymbols() = this.map { it.constraint.symbol() }

    private fun EvaluationResult.lastChunkSymbols() = this.lastChunk().activatedLog().constraintSymbols()


    private fun <T : Any> PredicateInvocation.eq(left: T, right: T) = invocationContext().tellEquals(left, right)


    @Test
    fun noChangesRelaunch() {
        lateinit var storeSnapshot: Iterable<ConstraintSymbol>

        val progSpec = MockIncrProgSpec(
            setOf("main"),
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
            storeSnapshot = result.storeView().constraintSymbols()
            storeSnapshot shouldBe setOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.relaunch("no changes", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe storeSnapshot
            }
        }
    }

    @Test
    fun rmUnusedRule() {
        lateinit var storeSnapshot: Iterable<ConstraintSymbol>

        val progSpec = MockIncrProgSpec(
            setOf("main", "bar"),
            setOf(sym0("foo"), sym0("bar"))
        )
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo")
                )),
            rule("bar",
                headReplaced(
                    pconstraint("bar")
                ),
                body( ))
        ).launch("addRule", progSpec) { result ->
            storeSnapshot = result.storeView().constraintSymbols()
            storeSnapshot shouldBe setOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder
            .removeRules(listOf("bar"))
            .relaunch("no changes", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe storeSnapshot
            }
        }
    }

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

    @Test(expected = IncrementalContractViolationException::class)
    fun violatePrincipalLogicalContract() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "produceBound"),
            setOf(sym1("foo"))
        ).withContractChecks()

        val (X, Y) = metaLogical<Int>("X", "Y")
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
                    statement({ x, y -> eq(x,y) }, X, Y),
                    constraint("hasBound", Y)
                )),
            rule("bindVar",
                headKept(
                    constraint("hasBound", Y)
                ),
                body(
                    statement({ y -> y.set(42) }, Y)
                ))
        ).launch("violate contract assertion", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym1("foo"), sym1("hasBound"))

        }
    }


    @Test
    fun expectTypeGenericNonprincipal() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo", "expectType_ok", "expectType_default"),
            setOf(sym0("foo"), sym0("typeOf"), sym0("expectType"))
        )

        val fooRuleBuilder =
            rule("foo",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("typeOf")
                ))

        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("foo"),
                    pconstraint("expectType")
                )),

            fooRuleBuilder,

            rule("expectType_ok",
                headReplaced(
                    pconstraint("expectType")
                ),
                headKept(
                    pconstraint("typeOf")
                ),
                body(
                    constraint("hasType")
                )),
            rule("expectType_default",
                headReplaced(
                    pconstraint("expectType")
                ),
                body(
                    constraint("noType")
                ))

        ).launch("initial run with typeOf", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("typeOf"), sym0("hasType"))

        }.also { (builder, evalRes) ->
            builder
                .removeRules(listOf("foo"))
                .relaunch("removed typeOf", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("noType"))
                }
        }.also { (builder, evalRes) ->
            builder
                .insertRulesAt(1, fooRuleBuilder)
                .relaunch("added typeOf again", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("typeOf"), sym0("hasType"))
                }
        }
    }

    // Substructural type system rules:
    //  any number of resource reads are allowed
    //  at most one write of resource is allowed

    // Tests that if write-match is dropped, then read-matches preceding it mustn't be affected
    @Test
    fun substructuralTS_dropWrite() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "readResource", "writeResource", "process"),
            setOf(sym0("resource"), sym0("read"), sym0("write"), sym0("doProcess"))
        )

        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("resource"),
                    pconstraint("read"),
                    pconstraint("read"),
                    pconstraint("doProcess"),
                    pconstraint("read")
                )),
            rule("readResource",
                headReplaced(
                    pconstraint("read")
                ),
                headKept(
                    pconstraint("resource")
                ),
                body(
                    constraint("hasRead")
                )),
            rule("writeResource",
                headReplaced(
                    pconstraint("write"),
                    pconstraint("resource")
                ),
                body(
                    constraint("hasWrite")
                )),
            rule("process",
                headReplaced(
                    pconstraint("doProcess")
                ),
                body(
                    pconstraint("write")
                )
            )
        ).launch("initial run with write", progSpec) { result ->

            // one 'read' is left unprocessed because of exhausted resource
            result.storeView().constraintSymbols() shouldBe setOf(sym0("hasRead"), sym0("hasWrite"), sym0("read"))
            result.storeView().occurrences(sym0("hasRead")).count() shouldBe 2

        }.also { (builder, evalRes) ->
            builder
            .removeRules(listOf("process"))
            .relaunch("removed write", progSpec, evalRes.token()) { result ->

                // without 'write' resource isn't exhausted
                result.storeView().constraintSymbols() shouldBe setOf(sym0("hasRead"), sym0("resource"), sym0("doProcess"))
                result.storeView().occurrences(sym0("hasRead")).count() shouldBe 3
            }
        }
    }

    @Ignore("waiting for complete fix to MPSCR-65")
    @Test
    fun substructuralTS_insertWriteBeforeRW() {
        /* Expected test program execution:

            writeA produced
            => writeResourceA consumes resource
            => readResource & writeResourceB can't match

            writeA retracted
            => resource appears again (internally 'resource' constraint is reexecuted)
            => readResource & writeResourceB match again
         */

        val progSpec = MockIncrProgSpec(
            setOf("main", "readResource", "writeResourceA", "writeResourceB", "doWriteA"),
            setOf(sym0("resource"), sym0("read"), sym0("writeA"), sym0("writeB"), sym0("doProcess"))
        )

        val doProcessRuleBuilder =
            rule("doWriteA",
                headReplaced(
                    pconstraint("doProcess")
                ),
                body(
                    pconstraint("writeA")
                ))

        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("resource"),
                    pconstraint("doProcess"),
                    pconstraint("read"),
                    pconstraint("writeB")
                )),
            rule("writeResourceA",
                headReplaced(
                    pconstraint("writeA"),
                    pconstraint("resource")
                ),
                body(
                    constraint("hasWriteA")
                )),
            rule("readResource",
                headReplaced(
                    pconstraint("read")
                ),
                headKept(
                    pconstraint("resource")
                ),
                body(
                    constraint("hasRead")
                )),
            rule("writeResourceB",
                headReplaced(
                    pconstraint("writeB"),
                    pconstraint("resource")
                ),
                body(
                    constraint("hasWriteB")
                ))
        ).launch("initial run without writeA", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("hasRead"), sym0("hasWriteB"), sym0("doProcess"))

        }.also { (builder, evalRes) ->
            builder
                .insertRulesAt(0, doProcessRuleBuilder)
                .relaunch("inserted writeA", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("hasWriteA"), sym0("read"), sym0("writeB"))
                }
        }.also { (builder, evalRes) ->
            builder
                .removeRules(listOf("doWriteA"))
                .relaunch("removed writeA", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("hasRead"), sym0("hasWriteB"), sym0("doProcess"))
                }
        }
    }


    @Test
    @Ignore("Test is broken")
    fun substructuralTS_indirectResourceDependency() {
        /* Expected test program execution:
            Write of resource2 depends on write of resource1
            so, when write1 can't happen, so write2 won't happen.

            C1 consumes res1 before W1
            => W1 match invalidated
            => write2 isn't produced
            => W2 match invalidated
            => res1 remains intact (internally 'res1' constraint is reexecuted)
            => R2 can match and matches
         */

        val progSpec = MockIncrProgSpec(
            setOf("main", "R2", "W1", "W2", "Consume1"),
            setOf(
                sym0("resource1"), sym0("write1"),
                sym0("resource2"), sym0("read2"), sym0("write2")
            )
        )

        val doConsumeRuleBuilder =
            rule("Consume1",
                headReplaced(
                    pconstraint("write1"),
                    pconstraint("resource1")
                ),
                body()
            )

        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    pconstraint("resource1"),
                    pconstraint("resource2"),
                    pconstraint("write1"),
                    pconstraint("read2")
                )),
            rule("W1",
                headReplaced(
                    pconstraint("write1"),
                    pconstraint("resource1")
                ),
                body(
                    pconstraint("write2")
                )),
            rule("W2",
                headReplaced(
                    pconstraint("write2"),
                    pconstraint("resource2")
                ),
                body(
                    constraint("hasWrite2")
                )),
            rule("R2",
                headReplaced(
                    pconstraint("read2")
                ),
                headKept(
                    pconstraint("resource2")
                ),
                body(
                    constraint("hasRead2")
                ))
        ).launch("initial run", progSpec) { result ->

            result.storeView().constraintSymbols() shouldBe setOf(sym0("hasWrite2"), sym0("read2"))

        }.let { (builder, evalRes) ->
            builder
                .insertRulesAt(1, doConsumeRuleBuilder)
                .relaunch("consume resource1 before anyone", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("resource2"), sym0("hasRead2"))
                }
        }.let { (builder, evalRes) ->
            builder
                .removeRules(listOf("Consume1"))
                .relaunch("as initial run", progSpec, evalRes.token()) { result ->

                    result.storeView().constraintSymbols() shouldBe setOf(sym0("hasWrite2"), sym0("read2"))
                }
        }
    }

}
