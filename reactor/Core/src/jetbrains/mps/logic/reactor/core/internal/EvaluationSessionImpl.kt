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
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.Profiler
import java.util.*

/**
 * @author Fedor Isakov
 */

/**
 * Bundle of all entities involved in a session.
 */
internal data class SessionData(
    val journal: MatchJournal,
    val controller: ControllerImpl,
)

internal class EvaluationSessionImpl private constructor (
    val program: Program,
    val supervisor: Supervisor,
    val trace: EvaluationTrace,
    val profiler: Profiler?,
    val params: Map<ParameterKey<*>, *>?) : EvaluationSession()
{
    @Suppress("UNCHECKED_CAST")
    override fun <T : Any> parameter(key: ParameterKey<T>): T = params ?.get(key) as T

    private fun launch(main: Constraint): EvaluationResult {
        val sessionProcessing = DefaultProcessingSession()
        val session = sessionProcessing.getSession()
        return sessionProcessing.runSession(session, main)
    }

    open inner class DefaultProcessingSession {

        fun getSession(): SessionData {

            val ruleIndex = RuleIndex(program.rules(), profiler)
            val journal = MatchJournalImpl(trace)
            val logicalState = LogicalState()
            val dispatchingFront = Dispatcher(ruleIndex).front()

            val processing = ConstraintsProcessing(dispatchingFront, journal, logicalState, trace, profiler)

            val controller = ControllerImpl(supervisor, processing, trace, profiler)

            return SessionData(journal, controller)
        }

        fun endSession(session: SessionData): StoreView = session.journal.storeView()

        fun runSession(session: SessionData, main: Constraint): EvaluationResult = with(session) {
            val status = run(main)
            controller.shutDown()
            return EvaluationResultImpl(endSession(session), status)
        }

        protected fun SessionData.run(main: Constraint): FeedbackStatus = controller.activate(main)

    }
    
    private class Config(val program: Program) : EvaluationSession.Config() {

        val parameters = HashMap<ParameterKey<*>, Any>()

        var evaluationTrace: EvaluationTrace = EvaluationTrace.NULL

        var profiler: Profiler? = null

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            this.evaluationTrace = computingTracer
            return this
        }

        override fun withProfiler(profiler: Profiler?): EvaluationSession.Config {
            this.profiler = profiler
            return this
        }

        override fun <T> withParameter(key: ParameterKey<T>, value: T): EvaluationSession.Config {
            this.parameters.put(key, value as Any)
            return this
        }

        override fun start(supervisor: Supervisor): EvaluationResult {
            var session = Backend.ourBackend.ourSession.get()
            if (session != null) throw IllegalStateException("session already active")

            session = EvaluationSessionImpl(program, supervisor, evaluationTrace, profiler, parameters)
            Backend.ourBackend.ourSession.set(session)
            try {
                val main = parameters[ParameterKey.of("main", Constraint::class.java)] as Constraint
                return session.launch(main)
            }
            finally {
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
                setBackend(ourBackend)
            }

            fun deinit() {
                clearBackend(ourBackend)
            }
        }

    }

    private class EvaluationResultImpl(
        val storeView: StoreView,
        val status: FeedbackStatus,
    ): EvaluationResult {
        override fun storeView(): StoreView = storeView
        override fun feedback(): EvaluationFeedback? = if (status is FAILED) status.failure else null
    }

}
