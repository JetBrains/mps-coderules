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

package jetbrains.mps.logic.reactor.core.internal

import jetbrains.mps.logic.reactor.core.EvaluationFailure
import jetbrains.mps.logic.reactor.core.internal.ProcessingState.FAILED
import jetbrains.mps.logic.reactor.core.EvaluationSessionEx
import jetbrains.mps.logic.reactor.core.Feedback
import jetbrains.mps.logic.reactor.core.RuleIndex
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Program
import jetbrains.mps.logic.reactor.util.Profiler
import java.util.*
import com.github.andrewoma.dexx.collection.LinkedList as PLinkedList
import com.github.andrewoma.dexx.collection.List as PList

/**
 * @author Fedor Isakov
 */

internal class EvaluationSessionImpl private constructor (
    program: Program,
    supervisor: Supervisor,
    trace: EvaluationTrace,
    params: Map<ParameterKey<*>, *>?) : EvaluationSessionEx(program, supervisor, trace, params)
{

    lateinit var controller: ControllerImpl

    override fun controller() = controller

    private fun launch(main: Constraint, profiler: Profiler?, storeView: StoreView?) : ProcessingState {
        this.controller = ControllerImpl(supervisor, RuleIndex(program().handlers()), trace, profiler, storeView)
        return controller.activate(main)
    }

    private class Config(val program: Program) : EvaluationSession.Config() {

        val parameters = HashMap<ParameterKey<*>, Any>()

        var evaluationTrace: EvaluationTrace = EvaluationTrace.NULL

        var storeView: StoreView? = null

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            this.evaluationTrace = computingTracer
            return this
        }

        override fun withStoreView(storeView: StoreView): EvaluationSession.Config {
            this.storeView = storeView
            return this
        }

        override fun <T> withParameter(key: ParameterKey<T>, value: T): EvaluationSession.Config {
            this.parameters.put(key, value as Any)
            return this
        }

        override fun start(supervisor: Supervisor): EvaluationResult {
            var session = Backend.ourBackend.ourSession.get()
            if (session != null) throw IllegalStateException("session already active")
            
            @Suppress("UNCHECKED_CAST")
            val durations = parameters[ParameterKey.of("profiling.data", MutableMap::class.java)]
                as MutableMap<String, String>?
            val profiler = durations?.let { Profiler() }

            session = EvaluationSessionImpl(program, supervisor, evaluationTrace, parameters)
            Backend.ourBackend.ourSession.set(session)
            var failure: Feedback? = null
            try {
                val main = parameters[ParameterKey.of("main", Constraint::class.java)] as Constraint
                val state = session.launch(main, profiler, storeView)
                if (state is FAILED) {
                    failure = state.failure
                }
            }
            finally {
                try {
                    profiler?.run {
                        formattedData().entries.forEach { e -> durations.put(e.key, e.value) }
                        clear()
                    }
                }
                catch (t: Throwable) {
                    // avoid nested failure
                }
                Backend.ourBackend.ourSession.set(null)
            }

            return object : EvaluationResult {
                override fun storeView(): StoreView? = session.controller.storeView()

                override fun feedback():  EvaluationFeedback? = failure
            }
        }

    }

    internal class Backend : EvaluationSession.Backend<EvaluationSessionImpl> {

        val ourSession = ThreadLocal<EvaluationSessionImpl>()

        override fun current(): EvaluationSessionImpl = ourSession.get() ?: throw IllegalStateException("no session")

        override fun createConfig(program: Program): EvaluationSession.Config = Config(program)

        companion object {
            val ourBackend = Backend()

            fun init() {
                EvaluationSession.setBackend(ourBackend)
            }

            fun deinit() {
                EvaluationSession.clearBackend(ourBackend)
            }
        }

    }

}
