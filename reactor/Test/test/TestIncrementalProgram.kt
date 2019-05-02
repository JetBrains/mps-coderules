import jetbrains.mps.logic.reactor.core.ReactorLifecycle
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import org.junit.AfterClass
import org.junit.Assert
import org.junit.BeforeClass
import org.junit.Test
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

    private fun Builder.launch(name: String): StoreView {
        val programBuilder = ProgramBuilder(MockConstraintRegistry())
        for (h in handlers) {
            programBuilder.addHandler(h)
        }
        val result = EvaluationSession.newSession(programBuilder.program(name))
            .withParameter(EvaluationSession.ParameterKey.of("main", Constraint::class.java), MockConstraint(ConstraintSymbol("main", 0)))
            .start()
        return result.storeView()
    }

//    private fun StoreView.launch(name: String): StoreView {
//        val programBuilder = ProgramBuilder(MockConstraintRegistry())
//        for (h in handlers) {
//            programBuilder.addHandler(h)
//        }
//        val result = EvaluationSession.newSession(programBuilder.program(name)).withParam("main", MockConstraint(ConstraintSymbol("main", 0))).start()
//        return result.storeView()
//
//    }

    @Test
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
        ).launch("replace").apply {
            Assert.assertEquals(setOf(ConstraintSymbol("foo", 0), ConstraintSymbol("bar", 0)), constraintSymbols())
        }
    }

}
