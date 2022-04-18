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


internal typealias OccurrenceStore = Collection<Occurrence>

internal fun emptyStore(): OccurrenceStore = emptyList()


/**
 * Handles creation of the first and following sessions,
 * properly ending sessions and getting their results.
 */
internal interface SessionManager {

    /**
     * Creates first session when there's no [SessionToken] available.
     */
    fun firstSession(): SessionParts

    /**
     * Creates following session when previous [token] is available.
     */
    fun nextSession(token: SessionToken): SessionParts

    /**
     * Clears state unneeded between sessions and return
     * next [SessionToken] required for following session.
     */
    fun endSession(session: SessionParts): SessionToken

    /**
     * Starts [session] and returns overall [EvaluationResult] of the program.
     */
    fun runSession(session: SessionParts, main: Constraint): EvaluationResult
}

/**
 * Bundle of all entities involved in a session.
 */
internal data class SessionParts(
    val ruleIndex: RuleIndex,
    val journal: MatchJournal,
    val logicalState: LogicalState,
    val controller: ControllerImpl,
    val processing: ConstraintsProcessing,
    val principalObservers: PrincipalObserverDispatcher
) {
    val frontState: DispatchingFrontState get() = processing.getFrontState()
}


internal class EvaluationSessionImpl private constructor (
    val incrementality: IncrementalSpec,
    val program: Program,
    val supervisor: Supervisor,
    val trace: EvaluationTrace,
    val profiler: Profiler?,
    val params: Map<ParameterKey<*>, *>?) : EvaluationSession()
{
    @Suppress("UNCHECKED_CAST")
    override fun <T : Any> parameter(key: ParameterKey<T>): T? = params ?.get(key) as T

    private fun launch(token: SessionToken?, main: Constraint): EvaluationResult {
        val sessionProcessing: DefaultProcessingSession = DefaultProcessingSession()
        val session = sessionProcessing.getSession(token as SessionTokenImpl?)
        return sessionProcessing.runSession(session, main)
    }

    open inner class DefaultProcessingSession: SessionManager {

        override fun firstSession(): SessionParts = getSession(null)

        override fun nextSession(token: SessionToken): SessionParts = getSession(token as SessionTokenImpl)

        fun getSession(token: SessionTokenImpl?): SessionParts {
            val ruleIndex = token
                ?.ruleIndex
                ?.also { it.updateIndexFromRules(program.rules()) }
                ?: RuleIndex(program.rules())

            val journal = MatchJournalImpl(incrementality, trace)
            val logicalState = LogicalState()
            val dispatchingFront = Dispatcher(ruleIndex).front()

            val processing = ConstraintsProcessing(dispatchingFront, journal, logicalState, incrementality, trace, profiler)

            val controller = ControllerImpl(supervisor, processing, incrementality, trace, profiler)

            return SessionParts(ruleIndex, journal, logicalState, controller, processing, PrincipalObserverDispatcher.EMPTY)
        }

        override fun endSession(session: SessionParts): SessionToken = with(session) {
            SessionTokenImpl(journal.storeView(), ruleIndex.toRules(), emptyFrontState(), ruleIndex, logicalState, principalObservers.apply { clearTriggerReceiver() })
        }

        override fun runSession(session: SessionParts, main: Constraint): EvaluationResult = with(session) {
            val status = run(main)
            controller.shutDown()
            val newToken = endSession(session)
            return EvaluationResultImpl(newToken, status, emptySet(), emptyList())
        }

        protected fun SessionParts.run(main: Constraint): FeedbackStatus = controller.activate(main)

    }
    
    private class Config(val program: Program) : EvaluationSession.Config() {

        val parameters = HashMap<ParameterKey<*>, Any>()

        var evaluationTrace: EvaluationTrace = EvaluationTrace.NULL

        var ispec: IncrementalSpec = IncrementalSpec.DefaultSpec

        var token: SessionToken? = null

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            this.evaluationTrace = computingTracer
            return this
        }

        override fun withSessionToken(token: SessionToken?): EvaluationSession.Config {
            this.token = token
            return this
        }

        override fun withIncrSpec(ispec: IncrementalSpec): EvaluationSession.Config {
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

            session = EvaluationSessionImpl(ispec, program, supervisor, evaluationTrace, profiler, parameters)
            Backend.ourBackend.ourSession.set(session)
            try {
                val main = parameters[ParameterKey.of("main", Constraint::class.java)] as Constraint
                return session.launch(token, main)
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

    private class EvaluationResultImpl(
        val token: SessionToken,
        val status: FeedbackStatus,
        val invalidFeedbackKeys: FeedbackKeySet,
        val invalidRules: Collection<Any>
    ): EvaluationResult {
        override fun token() = token
        override fun storeView(): StoreView = token.storeView
        override fun feedback(): EvaluationFeedback? = if (status is FAILED) status.failure else null
        override fun invalidFeedbackKeys(): Collection<Any> = invalidFeedbackKeys
        override fun invalidRules(): Collection<Any> = invalidRules
    }


    private fun RuleIndex.toRules() = ArrayList<Rule>().also { l -> this.forEach { l.add(it) }}

}
