import jetbrains.mps.logic.reactor.core.IncrementalProgramSpec
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.core.SessionToken
import jetbrains.mps.logic.reactor.evaluation.EvaluationResult
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Rule as CRule
import org.junit.*
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

    private class MockIncrProgSpec(val principalRuleTags: Set<Any>, val principalCtrSyms: Set<ConstraintSymbol>) : IncrementalProgramSpec {
        override fun isPrincipal(ctr: Constraint): Boolean = principalCtrSyms.contains(ctr.symbol())
        override fun isPrincipal(rule: CRule): Boolean = principalRuleTags.contains(rule.uniqueTag())
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

    private fun Builder.relaunch( name: String, incrSpec: IncrementalProgramSpec, sessionToken: SessionToken, resultHandler: (EvaluationResult) -> Unit )
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


    private fun EvaluationResult.lastChunk() = this.token().journalView.chunks.last()

    private fun Iterable<Occurrence>.constraintSymbols() = this.map { it.constraint.symbol() }


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
            result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("foo"))

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
                result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("bar"))
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
            result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("bar"))

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
                result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("baz"))
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
                result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("baz"))
            }
        }
    }

    @Test
    fun addAtStartMatch() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "empty-head.bar"),
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
            result.token().journalView.chunks.size shouldBe 2
            result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("foo"))

        }.also { (builder, evalRes) ->
            builder.programWithRules(
                rule("empty-head.bar",
                    headKept(),
                    body(
                        constraint("bar")
                    )
                )
            ).relaunch("atStart", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"))
                result.token().journalView.chunks.size shouldBe 3
                result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("bar"))
            }
        }
    }


    @Test
    fun addMatchAfterReplaced() {
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
            }
        }
    }

    @Test
    fun addMatchBeforeReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "baz.dummy"),
            setOf(sym0("foo"), sym0("baz"))
        )
        val p1 = programWithRules(
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
        )
        // p2 differs in that before discarding foo in foo.baz it also produces bar in foo.bar
        val p2 = programWithRules(
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
            rule("foo.baz",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    constraint("baz")
                )),
            rule("baz.dummy",
                headKept(
                    princConstraint("baz")
                ),
                body(
                    constraint("dummy")
                )
            )
        )

        val evalRes1 = p1.launch("initial run", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("baz"), sym0("dummy"))
            result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("dummy"))
        }.second

        p2.relaunch("test1", progSpec, evalRes1.token()) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("baz"), sym0("dummy"))
            result.lastChunk().activatedLog().constraintSymbols() shouldBe listOf(sym0("dummy"))
        }
    }

    @Test
    fun addMatchAfterKeptBeforeReplaced() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "foo.bar", "foo.baz", "foo.qux"),
            setOf(sym0("foo"))
        )
        val p1 = programWithRules(
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
        )
        val p2 = programWithRules(
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
            rule("foo.baz",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    constraint("baz")
                )),
            rule("foo.qux",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    constraint("qux")
                )
            )
        )

        val evalRes1 = p1.launch("initial run", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("qux"))
        }.second

        p2.relaunch("test1", progSpec, evalRes1.token()) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("bar"), sym0("baz"), sym0("qux"))
        }
    }

    @Test
    fun relaunchTwice() {
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
}
