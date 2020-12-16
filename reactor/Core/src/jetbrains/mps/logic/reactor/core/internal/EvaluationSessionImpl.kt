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


internal interface ProcessingSession {

    fun firstSession(): SessionParts

    fun nextSession(token: SessionToken): SessionParts

    /**
     * Clears state unneeded between sessions and
     * returns [SessionToken] with session results.
     */
    fun endSession(session: SessionParts): SessionToken

    fun runSession(session: SessionParts, main: Constraint): EvaluationResult
}

internal data class SessionParts(
    val preambleInfo: PreambleInfo,
    val ruleIndex: RuleIndex,
    val journal: MatchJournal,
    val logicalState: LogicalState,
    val controller: ControllerImpl,
    val processing: ConstraintsProcessing,
    val strategy: ProcessingStrategy,
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

    private fun launch(token: SessionToken?, store: OccurrenceStore, main: Constraint): EvaluationResult {
        val sessionProcessing: ProcessingSession =
            with(incrementality) {
                when {
                    ability().allowed() && incrLevel() == IncrementalSpec.IncrLevel.Full ->
                        IncrementalProcessingSession()
                    ability().allowed() && incrLevel() == IncrementalSpec.IncrLevel.Preamble ->
                        PreambleProcessingSession()
                    else ->
                        DefaultProcessingSession()
                }
            }

        with (sessionProcessing) {
            val session =
                if (token != null) {
                    (token as? SessionTokenImpl)?.setStore(store)
                    nextSession(token)
                } else {
                    firstSession()
                }

            return runSession(session, main)
        }
    }

    open inner class DefaultProcessingSession: ProcessingSession {

        override fun firstSession(): SessionParts = getSession(null)

        override fun nextSession(token: SessionToken): SessionParts = getSession(token as SessionTokenImpl)

        private fun getSession(token: SessionTokenImpl?): SessionParts {
            val ruleIndex = token
                ?.let { it.ruleIndex }
                ?.also { it.updateIndexFromRules(program.rules()) }
                ?: RuleIndex(program.rules())

            val journal = MatchJournalImpl(incrementality)
            val logicalState = LogicalState()
            val dispatchingFront = Dispatcher(ruleIndex).front()

            // todo: remove this option
            val principalObservers: PrincipalObserverDispatcher =
                if (incrementality.assertLevel().assertContracts())
                    LogicalBindObserverDispatcher()
                else
                    PrincipalObserverDispatcher.EMPTY
            val processingStrategy = GroundProcessing(incrementality, principalObservers)

            val processing = ConstraintsProcessing(dispatchingFront, journal, logicalState, incrementality, trace, profiler)
            processing.setStrategy(processingStrategy)

            val controller = ControllerImpl(supervisor, processing, incrementality, trace, profiler)

            return SessionParts(program.preambleInfo(), ruleIndex, journal, logicalState, controller, processing, processingStrategy, principalObservers)
        }

        override fun endSession(session: SessionParts): SessionToken = with(session) {
            SessionTokenImpl(journal.view(), emptyList(), ruleIndex.toRules(), emptyFrontState(), ruleIndex, logicalState, principalObservers.apply { clearTriggerReceiver() })
        }

        override fun runSession(session: SessionParts, main: Constraint): EvaluationResult = with(session) {
            val status = run(main)
            controller.shutDown()
            val newToken = endSession(session)
            return EvaluationResultImpl(newToken, status, strategy.invalidatedFeedback(), strategy.invalidatedRules())
        }

        private fun SessionParts.run(main: Constraint): FeedbackStatus = strategy.run(processing, controller, main)

    }

    open inner class IncrementalProcessingSession(): DefaultProcessingSession() {
        override fun nextSession(token: SessionToken): SessionParts {
            val tkn = token as SessionTokenImpl
            val logicalState = tkn.logicalState

            val ruleIndex = tkn.ruleIndex.apply { updateIndexFromRules(program.rules()) }
            val journal = MatchJournalImpl(incrementality, tkn.journalView as MatchJournal.View)
            val front = Dispatcher(ruleIndex, tkn.getFrontState()).front()
            val processing = ConstraintsProcessing(front, journal, logicalState, incrementality, trace, profiler)

            val principalObservers = tkn.principalObservers
            val processingStrategy = IncrementalProcessing(
                incrementality, journal, program.newRules(), program.droppedRules(),
                processing.getStateCleaner(), ruleIndex, principalObservers, trace
            )
            processing.setStrategy(processingStrategy)

            val controller = ControllerImpl(supervisor, processing, incrementality, trace, profiler)

            return SessionParts(program.preambleInfo(), ruleIndex, journal, logicalState, controller, processing, processingStrategy, principalObservers)
        }

        override fun endSession(session: SessionParts): SessionToken = with(session) {
            val histView = journal.view()
            processing.resetStore() // clear observers
            val principalState = sessionState(frontState).resetLookup()
            principalObservers.clearTriggerReceiver()
            return SessionTokenImpl(histView, emptyList(), ruleIndex.toRules(), principalState, ruleIndex, logicalState, principalObservers)
        }

        /**
         * Preserve data needed between sessions:
         * preserve only relevant and non-empty RuleMatchers
         */
        protected fun sessionState(frontState: DispatchingFrontState) =
            frontState.filterValues { ruleMatcher ->
                incrementality.isPrincipal(ruleMatcher.rule()) || ruleMatcher.probe().hasOccurrences()
            }
    }

    inner class PreambleProcessingSession(): IncrementalProcessingSession() {
        private var inputStore: OccurrenceStore = emptyStore()

        override fun nextSession(token: SessionToken): SessionParts {
            val tkn = token as SessionTokenImpl
            val logicalState = LogicalState()

            // fixme: ensure why ruleIndex.update here leads to errors
            // val ruleIndex = tkn.ruleIndex.apply{ updateIndexFromRules(program.rules()) }
            val ruleIndex = RuleIndex(program.rules())
            val front = Dispatcher(ruleIndex).front() // new dispatcher front
            val journal = MatchJournalImpl(incrementality) // new journal
            val processing = ConstraintsProcessing(front, journal, logicalState, incrementality, trace, profiler)

            this.inputStore = tkn.principalStore
            val processingStrategy = CachedOccurrencesProcessing(incrementality, inputStore)
            processing.setStrategy(processingStrategy)

            val controller = ControllerImpl(supervisor, processing, incrementality, trace, profiler)

            return SessionParts(program.preambleInfo(), ruleIndex, journal, logicalState, controller, processing, processingStrategy, tkn.principalObservers)
        }

        override fun endSession(session: SessionParts): SessionToken = with(session) {
            val histView = journal.view()
            val outputOccurrences = histView.filterOccurrences(inputStore)
            // todo: make output store in other processing strategies?

            outputOccurrences.forEach{ it.terminate(logicalState) }
            processing.resetStore() // clear observers
            logicalState.reset()
            principalObservers.clearTriggerReceiver()

            val rules = ruleIndex.toRules().filter(preambleInfo::inPreamble)

            SessionTokenImpl(histView, outputOccurrences, rules, emptyFrontState(), ruleIndex, LogicalState())
        }

        private fun MatchJournal.View.filterOccurrences(without: OccurrenceStore = emptyStore()): OccurrenceStore {
            val withoutSources = without.asSequence().map { it.cacheKey() }.toHashSet()
            return chunks.asSequence()
                .mapNotNull { (it as? MatchJournal.OccChunk)?.occ }
                .filter { it.stored }
                .filter { !withoutSources.contains(it.cacheKey()) }
                .toList()
        }

        private fun ConstraintOccurrence.cacheKey() = sourceRule() to constraint().symbol()

        private fun getPreamble(session: SessionParts): MatchJournal.View = with(session) {
            val journalView = journal.view()
            val preambleView = journalView.getPreamble(preambleInfo)
            // unnecessary work if dispatcher state isn't passed in SessionToken
            // cleanNonPreamble(processing, journalView.chunks, preambleView)
            preambleView
        }

        private fun cleanNonPreamble(processing: ConstraintsProcessing, chunks: Iterable<MatchJournal.Chunk>, preambleView: MatchJournal.View) {
            val preambleSet = preambleView.chunks.toSet()
            val cleaner = processing.getStateCleaner()

            chunks.asSequence().filterNot(preambleSet::contains).forEach {
                it.activatedLog().forEach(cleaner::erase)
                if (it is MatchJournal.MatchChunk) {
                    cleaner.erase(it.match as RuleMatchEx)
                }
            }
        }
    }


    private class Config(val program: Program) : EvaluationSession.Config() {

        val parameters = HashMap<ParameterKey<*>, Any>()

        var evaluationTrace: EvaluationTrace = EvaluationTrace.NULL

        var ispec: IncrementalSpec = IncrementalSpec.DefaultSpec

        var token: SessionToken? = null

        var principalStore: Collection<Occurrence> = emptyList()

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            this.evaluationTrace = computingTracer
            return this
        }

        override fun withStoreView(storeView: StoreView): EvaluationSession.Config {
            return this
        }

        override fun withStore(store: Collection<ConstraintOccurrence>): EvaluationSession.Config {
            this.principalStore = store as Collection<Occurrence>
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
                return session.launch(token, principalStore, main)
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
        override fun storeView(): StoreView = token.journalView.storeView
        override fun feedback(): EvaluationFeedback? = if (status is FAILED) status.failure else null
        override fun invalidFeedbackKeys(): Collection<Any> = invalidFeedbackKeys
        override fun invalidRules(): Collection<Any> = invalidRules
    }


    private fun RuleIndex.toRules() = ArrayList<Rule>().also { l -> this.forEach { l.add(it) }}

}
