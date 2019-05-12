import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.evaluation.EvaluationResult
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
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

    private fun Builder.launch(name: String, resultHandler: (EvaluationResult) -> Unit): Pair<Builder, StoreView> {
        val result = EvaluationSession.newSession(program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .start(MockSupervisor())
        result.feedback()?.let { if (it.isFailure) throw it.failureCause() }
        resultHandler(result)
        return this to result.storeView()
    }

    private fun Builder.relaunch(name: String, storeView: StoreView, resultHandler: (EvaluationResult) -> Unit) {
        val result = EvaluationSession.newSession(program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .withStoreView(storeView)
            .start(MockSupervisor())
        result.feedback()?.let { if (it.isFailure) throw it.failureCause() }
        resultHandler(result)
    }

    @Test
    @Ignore
    fun replace() {
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("main.foo",
                headKept(
                    constraint("foo")
                ),
                body(
                    constraint("bar")
                )
            )
        ).launch("replace") { result ->
            result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"))

        }.also { (builder, storeView) ->
            builder.programWithRules (
                rule("main.foo",
                    headKept(
                        constraint("foo")
                    ),
                    body(
                        constraint("baz")
                    )
                )
            ).relaunch("test", storeView) { result ->
                result.storeView().constraintSymbols() shouldBe setOf(sym0("foo"), sym0("bar"), sym0("baz"))

            }
        }
    }

}
