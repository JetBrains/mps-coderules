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
import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.logic.reactor.evaluation.SessionToken
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import kotlin.collections.ArrayList


/**
 * Represents the processing of constraints, which comprises several major activities:
 *
 *   - finding match(-es) corresponding to an active occurrence
 *   - checking the guard condition
 *   - deactivating discarded occurrences from the match
 *   - processing the body of a constraints rule.
 *
 * @author Fedor Isakov
 */
internal class ConstraintsProcessing(
    private var dispatchingFront: Dispatcher.DispatchingFront,
    journal: MatchJournalImpl,
    private val ruleIndex: RuleIndex,
    val logicalState: LogicalState,
    override val ispec: IncrementalSpec = IncrementalSpec.DefaultSpec,
    val trace: EvaluationTrace = EvaluationTrace.NULL,
    val profiler: Profiler? = null

) : StoreAwareJournalImpl(journal, logicalState), IncrSpecHolder {

    private val journalIndex: MatchJournal.Index = journal.index()

    private val occurrenceContractObserver: OccurrenceContractObserver? =
        if (ispec.assertLevel().assertContracts()) OccurrenceContractObserver(logicalState, ispec) else null


    inner class ProgramStateCleaner{
        fun erase(occurrence: Occurrence) {
            dispatchingFront = dispatchingFront.forget(occurrence)
            occurrence.clearLogicalState(logicalState)
        }

        fun erase(match: RuleMatchEx) {
            dispatchingFront = dispatchingFront.forget(match)
        }
    }
    val stateCleaner = ProgramStateCleaner()


    //TODO: move to MatchJournal
    /**
     * Preserves last valid [Chunk] while iterating on Chunks and removing them through [nextOrRemove].
     */
    private class ChunkRemover(private val it: MutableIterator<MatchJournal.Chunk>): MatchJournal.ChunkReader {
        private var _current_: MatchJournal.Chunk
        private var _previous_: MatchJournal.Chunk

        init {
            assert(it.hasNext()) {"initial chunk must be always present"}
            _current_ = it.next()
            _previous_ = _current_
        }

        /**
         * Removes next [Chunk] if [action] returns [true], else just advances.
         * @return [true] if iterator advanced (i.e. next [Chunk] wasn't removed), [false] otherwise.
         */
        inline fun nextOrRemove(action: (MatchJournal.ChunkReader) -> Boolean): Boolean {
            val lastPrev = _previous_
            _previous_ = _current_
            _current_ = it.next()

            val toRemove = action(this)
            if (toRemove) {
                it.remove()
                // don't advance
                _current_ = _previous_
                _previous_ = lastPrev
            }
            return !toRemove
        }

        override val current: MatchJournal.Chunk get() = _current_
        override val previous: MatchJournal.Chunk get() = _previous_
        override val reachedEnd: Boolean get() = !it.hasNext()
    }


    fun activateContinue(controller: Controller, activeOcc: Occurrence, parent: MatchJournal.MatchChunk): FeedbackStatus {
        assert(activeOcc.stored)

        // Forget that occurrence was seen. Otherwise it will be
        // processed as with reactivation through observers.
        this.dispatchingFront = dispatchingFront.forgetExpanded(activeOcc)

        trace.activateContinue(activeOcc)

        return processActivated(controller, activeOcc, parent, FeedbackStatus.NORMAL())
    }

    private lateinit var invalidator: InvalidationStage
    private lateinit var adder: AdditionStage
    private lateinit var postponer: PostponeMatchesStage
    private lateinit var continuator: ContinueOccurrencesStage

    fun invalidateAndAddRules(controller: Controller, rulesDiff: RulesDiff): FeedbackStatus {
        val ruleOrdering = RuleOrdering(ruleIndex)

        continuator = ContinueOccurrencesStage(ispec, journalIndex)
        invalidator = InvalidationStage(ispec, rulesDiff.removed, continuator, stateCleaner, trace)
        adder = AdditionStage(ispec, rulesDiff.added, continuator, ruleOrdering, ruleIndex, trace)
        postponer = PostponeMatchesStage(ispec, this, journalIndex, ruleOrdering)

        val chunkReader = ChunkRemover(this.iterator())

        var status: FeedbackStatus = FeedbackStatus.NORMAL()
        while (!chunkReader.reachedEnd) {
            val advanced = chunkReader.nextOrRemove(invalidator::onNext)
            if (!advanced) continue

            adder.onNext(chunkReader)

            postponer.onNext(chunkReader)

            status = continuator.run(controller, chunkReader)
            if (!status.operational) break
        }
        return status
    }

    private fun ContinueOccurrencesStage.run(controller: Controller, chunkReader: MatchJournal.ChunkReader): FeedbackStatus {
        var status: FeedbackStatus = FeedbackStatus.NORMAL()
        val parentChunk = parentChunk()

        for (continuedOcc in this.onNext(chunkReader)) {
            if (continuedOcc.stored) {
                status = activateContinue(controller, continuedOcc, parentChunk)

                if (!status.operational) break
            }
        }
        return status
    }

    /**
     * Clears state unneeded between incremental sessions
     * and returns [SessionToken] with session results.
     */
    fun endSession(): SessionToken {
        val histView = view()
        resetStore() // clear observers
        // todo: need clearing occurrenceContractObservers? (MPSCR-66)
        val rules = ArrayList<Rule>().apply { ruleIndex.forEach { add(it) } }
        val principalState = dispatchingFront.sessionState()
        return SessionTokenImpl(histView, rules, principalState, logicalState.clear(), ruleIndex)
    }

    /**
     * Preserve data needed between sessions:
     * preserve only relevant and non-empty RuleMatchers
     */
    private fun Dispatcher.DispatchingFront.sessionState() =
        this.state().filterValues { ruleMatcher ->
            ruleMatcher.rule().isPrincipal || ruleMatcher.probe().hasOccurrences()
        }

    fun invalidatedFeedback(): FeedbackKeySet = invalidator.invalidatedFeedback()

    /**
     * Called to update the state with the currently active constraint occurrence.
     * Calls the controller to process matches (if any) that were triggered.
     * This method may be called at most once for a fresh state frame.
     */
    fun processActivated(controller: Controller, active: Occurrence, parent: MatchJournal.MatchChunk, inStatus: FeedbackStatus) : FeedbackStatus {
        push()

        if (!active.stored) {
            active.stored = true
            logActivation(active)
            active.revive(logicalState)

            occurrenceContractObserver?.onActivated(active)
        }
        assert(active.alive)

        profiler.profile("dispatch_${active.constraint().symbol()}") {

            this.dispatchingFront = dispatchingFront.expand(active)

        }

        val matches = dispatchingFront.matches().toList()
        val currentMatches = postponeFutureMatches(active, matches)

        val outStatus = currentMatches.fold(inStatus) { status, match ->
            // TODO: paranoid check. should be isAlive() instead
            // FIXME: move this check elsewhere
            if (status.operational && active.stored && match.allStored()) {
                assert(match.allHeads().contains(active))
                processMatch(controller, match, parent, status)
            } else status
        }

        // TODO: should be isAlive()
        if (active.stored) {
            trace.suspend(active)
        }

        return outStatus
    }


    @Deprecated("obsolete machinery, superseded by MPSCR-65")
    private fun dropDiscardingMatchesFor(ancestor: MatchJournal.OccChunk, droppedRuleTags: MutableSet<Any>) =
        this.dropDescendantsWhile(ancestor) { chunk ->
            if (chunk is MatchJournal.MatchChunk && chunk.match.discards(ancestor.occ)) {
                droppedRuleTags.add(chunk.ruleUniqueTag)
                true
            } else false
        }

    private inline fun FeedbackStatus.then(action: (FeedbackStatus) -> FeedbackStatus) : FeedbackStatus =
        if (operational) action(this) else this

    private fun processMatch(controller: Controller, match: RuleMatchEx, parent: MatchJournal.MatchChunk, inStatus: FeedbackStatus) : FeedbackStatus =
        controller.offerMatch(match, inStatus)
            .let {
                when (it) {
                    is FeedbackStatus.ABORTED -> {  // guard is not satisfied
                        trace.reject(match)
                        return it.recover()         // return from the enclosing method

                    }
                    is FeedbackStatus.FAILED -> { // guard failed
                        return it.recover()         // return from the enclosing method

                    }
                    else -> it
                }
            }
            .also { trace.trigger(match) }
            .also { continueReplacedHeads(match, parent) }
            .also { accept(controller, match) }
            .then { controller.processBody(match, parent, it) }
            .also { trace.finish(match) }

    private fun continueReplacedHeads(match: RuleMatchEx, parent: MatchJournal.MatchChunk) {
        if (requiresIncrementalProcessing(match)) {
            val invalidJustifications = match.matchHeadReplaced().filter { it.isPrincipal }
            invalidator.receive(invalidJustifications)
        }
    }
//    private fun continueReplacedHeads(match: RuleMatchEx, parent: MatchJournal.MatchChunk) {
//        if (!isFront() && match.isPrincipal) {
//            profiler.profile("continueReplaced") {
//
//                val invalidJustifications = match.matchHeadReplaced().filter { it.isPrincipal }
//                if (invalidJustifications.isNotEmpty()) {
//
//                    dropDescendants(invalidJustifications) { lastValidChunk, currentChunk ->
//                        val validOccs = invalidator.invalidateChunk(currentChunk, invalidJustifications)
//                        activationQueue.offerAll(lastValidChunk.toPos(), validOccs)
//                    }
//
//                }
//            }
//        }
//    }

    private fun postponeFutureMatches(active: Occurrence, matches: List<RuleMatchEx>) =
        if (requiresIncrementalProcessing(active)) {
            postponer.process(active, matches)
//            activationQueue.postponeFutureMatches(matches)
        } else matches


    private fun accept(controller: Controller, match: RuleMatchEx) {
        profiler.profile("logMatch") {

            logMatch(match)

        }

        profiler.profile("consumeMatch") {

            this.dispatchingFront = dispatchingFront.consume(match)

        }

        profiler.profile("discardOccurrence") {

            match.forEachReplaced { occ ->
                // Principal occurrences must be preserved for future incremental evaluation sessions
                if (!occ.isPrincipal) {
                    this.dispatchingFront = dispatchingFront.contract(occ)
                }

                occ.stored = false

                profiler.profile("terminateOccurrence") {

                    occ.clearLogicalState(logicalState)

                }

                trace.discard(occ)
            }

        }
    }

    private fun Occurrence.clearLogicalState(observable: LogicalStateObservable) {
        terminate(observable)
        if (occurrenceContractObserver != null && this.isPrincipal) {
            occurrenceContractObserver.onDiscarded(this)
        }
    }


    /**
     * Incapsulates logic for deriving [Evidence] and [Justifications] for a new [Occurrence].
     */
    inner class JustifiedOccurrenceCreator {
        val savedEvidence: Evidence = evidence()
        val savedJustifications: Justifications = justifications()

        fun Constraint.occurrence(
            observable: LogicalStateObservable,
            arguments: List<*>,
            logicalContext: LogicalContext,
            ruleUniqueTag: Any? = null
        ): Occurrence {

            // By default share justifications (as a small optimization)
            var evidence = savedEvidence
            var justifications = savedJustifications

            // For principal occurrences create new
            if (ispec.isPrincipal(this)) {
                evidence = nextEvidence()
                justifications = justsCopy(savedJustifications).apply { add(evidence) }
            }

            return Occurrence(
                observable, this, logicalContext, arguments,
                evidence, justifications, ruleUniqueTag
            )
        }
    }

    private fun requiresIncrementalProcessing(match: RuleMatchEx) = ispec.ability().allowed() && match.isPrincipal

    private fun requiresIncrementalProcessing(occ: Occurrence) = ispec.ability().allowed() && occ.isPrincipal

    private fun MatchJournal.MatchChunk.dependsOnAny(utags: Iterable<Any>): Boolean =
        utags.contains(this.ruleUniqueTag) || utags.any { utag -> dependsOnRule(utag) }

}
