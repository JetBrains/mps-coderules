import jetbrains.mps.logic.reactor.core.IncrementalProgramSpec
import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.core.SessionToken
import jetbrains.mps.logic.reactor.evaluation.EvaluationResult
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.StoreView
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

    private fun Builder.launch(name: String, incrSpec: IncrementalProgramSpec, resultHandler: (EvaluationResult) -> Unit): Pair<Builder, EvaluationResult> {
        val result = EvaluationSession.newSession(program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .withIncrSpec(incrSpec)
            .start(MockSupervisor())
        result.feedback()?.let { if (it.isFailure) throw it.failureCause() }
        resultHandler(result)
        return this to result
    }

    private fun Builder.relaunch(name: String, incrSpec: IncrementalProgramSpec, sessionToken: SessionToken, resultHandler: (EvaluationResult) -> Unit) {
        val result = EvaluationSession.newSession(program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .withIncrSpec(incrSpec)
            .withSessionToken(sessionToken)
            .start(MockSupervisor())
        result.feedback()?.let { if (it.isFailure) throw it.failureCause() }
        resultHandler(result)
    }


    @Test
    fun addRuleAtEnd() {
        val progSpec = MockIncrProgSpec(
            setOf("main", "main.foobar", "main.foobaz"),
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
            rule("main.foobar",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    constraint("bar")
                )
            )
        ).launch("replace", progSpec) { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"))

        }.also { (builder, evalRes) ->
            builder.programWithRules (
                rule("main.foobaz",
                    headKept(
                        princConstraint("foo")
                    ),
                    body(
                        constraint("baz")
                    )
                )
            ).relaunch("test", progSpec, evalRes.token()) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"), sym0("baz"))
            }
        }
    }

}
