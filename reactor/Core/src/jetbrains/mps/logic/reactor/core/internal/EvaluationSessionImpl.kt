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

/**
 * @author Fedor Isakov
 */

internal class EvaluationSessionImpl private constructor (
    val program: Program,
    val supervisor: Supervisor,
    val trace: EvaluationTrace,
    val params: Map<ParameterKey<*>, *>?) : EvaluationSession()
{

    @Suppress("UNCHECKED_CAST")
    override fun <T : Any> parameter(key: ParameterKey<T>): T? = params ?.get(key) as T

    private fun launch(
        main: Constraint, profiler: Profiler?,
        token: SessionToken?, rulesDiff: RulesDiff, ispec: IncrementalProgramSpec
    ) : EvaluationResult {

        val newToken: SessionToken
        val status: FeedbackStatus
        val invalidFeedbackKeys: Set<Any>

        val ruleIndex = RuleIndex(program.rulesLists())

        if (ispec is IncrementalProgramSpec.NonIncrSpec || token == null) {
            val logicalState = LogicalState()

            val processing = ConstraintsProcessing(
                Dispatcher(ruleIndex).front(),
                MatchJournalImpl(ispec),
                ruleIndex, logicalState, ispec, trace, profiler
            )
            val controller = ControllerImpl(supervisor, processing, ispec, trace, profiler)
            logicalState.init(controller)

            status = controller.activate(main)
            newToken = processing.endSession()
            invalidFeedbackKeys = emptySet()

        } else {
            val tkn = token as SessionTokenImpl
            val logicalState = tkn.logicalState

            val processing = ConstraintsProcessing(
                Dispatcher(ruleIndex, tkn.getFrontState()).front(),
                MatchJournalImpl(ispec, tkn.journalView as MatchJournal.View),
                ruleIndex, logicalState, ispec, trace, profiler
            )
            val controller = ControllerImpl(supervisor, processing, ispec, trace, profiler)
            logicalState.init(controller)

            val status2tags = controller.incrLaunch(main, rulesDiff)
            newToken = processing.endSession()
            status = status2tags.first
            invalidFeedbackKeys = status2tags.second
        }

        return object : EvaluationResult {
            override fun token(): SessionToken = newToken
            override fun storeView(): StoreView = newToken.journalView.storeView
            override fun feedback():  EvaluationFeedback? = if (status is FAILED) status.failure else null
            override fun invalidFeedbackKeys(): Collection<Any> = invalidFeedbackKeys
        }
    }

    private class Config(val program: Program) : EvaluationSession.Config() {

        val parameters = HashMap<ParameterKey<*>, Any>()

        var evaluationTrace: EvaluationTrace = EvaluationTrace.NULL

        var ispec: IncrementalProgramSpec = IncrementalProgramSpec.DefaultSpec

        var token: SessionToken? = null

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            this.evaluationTrace = computingTracer
            return this
        }

        override fun withStoreView(storeView: StoreView): EvaluationSession.Config {
            return this
        }

        override fun withSessionToken(token: SessionToken?): EvaluationSession.Config {
            this.token = token
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
            try {
                val main = parameters[ParameterKey.of("main", Constraint::class.java)] as Constraint
                return session.launch(main, profiler, token, program.incrementalDiff(), ispec)
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
