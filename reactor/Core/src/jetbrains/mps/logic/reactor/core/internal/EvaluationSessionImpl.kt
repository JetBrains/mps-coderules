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

import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.FeedbackStatus.FAILED
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
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

    private fun launch(
        main: Constraint, profiler: Profiler?,
        token: SessionToken?, rulesDiff: RulesDiff, ispec: IncrementalProgramSpec
    ) : FeedbackStatus {

        val ruleIndex = RuleIndex(program().handlers())
        val dispatcher = Dispatcher(ruleIndex)

        if (ispec is IncrementalProgramSpec.NonIncrSpec || token == null) {
            val state = ProcessingStateImpl(
                dispatcher.front(),
                MatchJournalImpl(ispec),
                ruleIndex, ispec, trace, profiler
            )

            this.controller = ControllerImpl(supervisor, state, ispec, trace, profiler)
            return controller.activate(main)

        } else {
            val tkn = token as SessionTokenImpl
            val state = ProcessingStateImpl(
                dispatcher.frontFromState(tkn.frontState),
                MatchJournalImpl(ispec, tkn.journalView),
                ruleIndex, ispec, trace, profiler
            )

            this.controller = ControllerImpl(supervisor, state, ispec, trace, profiler)
            return controller.incrLaunch(main, rulesDiff)
        }
    }

    private class Config(val program: Program) : EvaluationSession.Config() {

        val parameters = HashMap<ParameterKey<*>, Any>()

        var evaluationTrace: EvaluationTrace = EvaluationTrace.NULL

        var ispec: IncrementalProgramSpec = IncrementalProgramSpec.DefaultSpec

        var token: SessionToken? = null

        var rulesDiff: RulesDiff = RulesDiff.emptyDiff()

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            this.evaluationTrace = computingTracer
            return this
        }

        override fun withStoreView(storeView: StoreView): EvaluationSession.Config {
            return this
        }

        override fun withSessionToken(token: SessionToken): EvaluationSession.Config {
            this.token = token
            return this
        }

        override fun withRulesDiff(rulesDiff: RulesDiff): EvaluationSession.Config {
            this.rulesDiff = rulesDiff
            return this
        }

        override fun withIncrSpec(ispec: IncrementalProgramSpec): EvaluationSession.Config {
            this.ispec = ispec
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
                val status = session.launch(main, profiler, token, rulesDiff, ispec)
                if (status is FAILED) {
                    failure = status.failure
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
                override fun token(): SessionToken = session.controller.state.snapshot()

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
