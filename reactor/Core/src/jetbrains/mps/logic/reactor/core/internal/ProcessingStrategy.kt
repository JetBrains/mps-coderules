/*
 * Copyright 2014-2020 JetBrains s.r.o.
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
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.IncrementalContractViolationException
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.logic.reactor.program.Rule

/**
 * Facade interface for incremental processing.
 *
 * Specifies points in program evaluation where
 * incremental processing must be must be injected:
 * [offerMatch], [processMatch], [processOccurrenceMatches],
 * [processActivated], [processInvalidated].
 *
 * Provides an entry point for evaluation: [run].
 *
 * Provides additional session output through
 * [invalidatedFeedback] & [invalidatedRules].
 */
internal interface ProcessingStrategy {

    /**
     * Output of incremental processing session.
     *
     * Specifies keys for invalid program feedback
     * so that caller could clear it.
     *
     * @return collection of invalid program feedback keys.
     */
    fun invalidatedFeedback(): FeedbackKeySet

    /**
     * Output of incremental processing session.
     *
     * Specifies unique tags of principal rules which
     * matches were invalidated. From this rule information
     * it can be inferred which rule origins were affected.
     *
     * @return collection of unique tags of affected rules.
     */
    fun invalidatedRules(): List<Any>

    /**
     * Entry point for processing session.
     */
    fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint): FeedbackStatus

    /**
     * Injection point into program evaluation process.
     *
     * Called before [Controller.offerMatch].
     * Allows to omit match (by returning `false`)
     * from usual evaluation process and handle it
     * in some special manner according to strategy.
     *
     * @return `true` if match isn't affected by the strategy,
     * `false` if it was and must be omitted.
     */
    fun offerMatch(match: RuleMatchEx): Boolean

    /**
     * Injection point into program evaluation process.
     *
     * Pre-process [match] accepted by [Controller.offerMatch]
     * before general processing in [Controller.processBody].
     * Aimed at processing heads of the [match], while [match]
     * itself is evaluated in a usual manner by [Controller].
     */
    fun processMatch(match: RuleMatchEx)

    /**
     * Injection point into program evaluation process.
     *
     * Processes [matches] of activated [Occurrence]
     * returned by [Dispatcher.DispatchingFront.matches].
     * Allows to filter [matches] according to the strategy
     * e.g. postpone them or drop entirely.
     *
     * In contrast to [offerMatch], happens earlier and allows
     * to process all new matches of [active] at once.
     *
     * @return list of filtered [matches].
     */
    fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>): List<RuleMatchEx>

    /**
     * Injection point into program evaluation process.
     *
     * Called on new activated [Occurrence].
     * Allows to handle program's logical state,
     * e.g. add processing-specific observers with [observable].
     */
    fun processActivated(active: Occurrence, observable: LogicalStateObservable)

    // fixme: essentially InvalidationStage.invalidateChunk redirects back here -- unnecessary circle
    /**
     * Injection point into program evaluation process.
     *
     * Called for invalidated [Occurrence]s.
     * It's a pair method for [processActivated] to discharge
     * its effects, e.g. to clear program logical state.
     */
    fun processInvalidated(occ: Occurrence, observable: LogicalStateObservable)
}


/**
 * Default non-incremental processing with stubs. Does nothing.
 */
internal open class EmptyProcessing: ProcessingStrategy {

    override fun invalidatedFeedback(): FeedbackKeySet = emptySet()

    override fun invalidatedRules(): List<Any> = emptyList()

    /**
     * Entry point. Simply redirects evaluation to [Controller].
     */
    override fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint) =
        controller.activate(main)

    override fun offerMatch(match: RuleMatchEx): Boolean = true

    override fun processMatch(match: RuleMatchEx) {}

    override fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>): List<RuleMatchEx> = matches

    override fun processActivated(active: Occurrence, observable: LogicalStateObservable) {}

    override fun processInvalidated(occ: Occurrence, observable: LogicalStateObservable) {}
}


/**
 * Strategy that observes logical vars used in principal constraints
 * with a help of [PrincipalObserverDispatcher].
 *
 * Required for [IncrementalProcessing] for an initial session run.
 */
internal open class GroundProcessing(
    override val ispec: IncrementalSpec,
    private val principalObservers: PrincipalObserverDispatcher = PrincipalObserverDispatcher.EMPTY
): EmptyProcessing(), IncrSpecHolder {

    override fun processActivated(active: Occurrence, observable: LogicalStateObservable) {
        if (active.isPrincipal) {
            principalObservers.onActivated(active, observable)
        }
    }

    override fun processInvalidated(occ: Occurrence, observable: LogicalStateObservable) {
        if (occ.isPrincipal) {
            principalObservers.onInvalidated(occ, observable)
        }
    }

}


/**
 * Facade implementation for incremental processing algorithm.
 *
 * It includes 5 stages that operate on [MatchJournalImpl.Cursor].
 * Stages are:
 *  - [RewindStage]
 *  - [InvalidationStage]
 *  - [AdditionStage]
 *  - [PostponeMatchesStage]
 *  - [ContinueOccurrencesStage]
 *
 * Main loop [run] defines relations between stages.
 * After invalidation and addition control flow is passed to
 * general processing in [Controller] & [ConstraintsProcessing].
 *
 * Methods [processMatch] & [processOccurrenceMatches] serve as
 * a bridge back from [ConstraintsProcessing] to specific stages.
 */
internal class IncrementalProcessing(
    ispec: IncrementalSpec,
    val journal: MatchJournal,
    newRules: Iterable<Rule>,
    droppedRules: Iterable<Any>,
    stateCleaner: ConstraintsProcessing.ProgramStateCleaner,
    ruleIndex: RuleIndex,
    principalObservers: PrincipalObserverDispatcher,
    trace: EvaluationTrace
): GroundProcessing(ispec, principalObservers) {

    private val journalIndex = journal.index()
    private val ruleOrdering = RuleOrdering(ruleIndex)

    private val posTracker = PosTracking(journalIndex, journal)
    private val continuator = ContinueOccurrencesStage(ispec, journalIndex)
    private val invalidator = InvalidationStage(ispec, posTracker, droppedRules.toSet(), continuator, stateCleaner, trace)
    private val adder = AdditionStage(ispec, posTracker, newRules, continuator, ruleOrdering, ruleIndex, trace)
    private val postponer = PostponeMatchesStage(ispec, posTracker, ruleOrdering)
    private val rewinder = RewindStage(ispec, posTracker, principalObservers)

    init {
        principalObservers.setTriggerReceiver(this::receiveBindTriggered)
    }


    override fun invalidatedFeedback(): FeedbackKeySet =
        invalidator.invalidatedFeedback()

    override fun invalidatedRules(): List<Any> =
        invalidator.invalidatedRules()

    override fun offerMatch(match: RuleMatchEx) =
        !match.allHeads().filter { it.isPrincipal }.toList().let {
            if (it.isNotEmpty()) {
                rewinder.receiveStrict(it.asSequence(), match)
            } else false
        }

    override fun processMatch(match: RuleMatchEx) =
        continueReplacedHeadsImpl(match)

    override fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>) =
        postponeFutureMatchesImpl(active, matches)


    override fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint): FeedbackStatus {
        var status: FeedbackStatus = FeedbackStatus.NORMAL()
        val cursor = journal.cursor
        while (true) {
            posTracker.onNext(cursor)

            rewind(cursor)
            invalidate(cursor)

            val postponedMatches = postponer.onNext(cursor)
            adder.receive(postponedMatches)
            // Adder step must work on the incremental front.
            // If rewind happened, then must skip this.
            if (posTracker.isFront()) { adder.onNext(cursor) }

            // fixme: pass inStatus?
            status = continuator.runContinued(processing, controller, cursor)
            // continuator may request invalidating more chunks
            val haveChanges = invalidate(cursor)

            if (!status.operational) break
            if (!rewinder.needRewind() && cursor.atEnd()) break
            // These changes (if present) must operate on
            //  current cursor position, so don't advance it.
            if (!rewinder.needRewind() && !haveChanges) cursor.next()
        }
        return status
    }

    private fun receiveBindTriggered(occ: Occurrence): Boolean =
        if (journalIndex.isKnown(occ)) {
            invalidator.receive(occ)
            true
        } else false

    private fun continueReplacedHeadsImpl(match: RuleMatchEx) {
        if (requiresIncrementalProcessing(match)) {
            val invalidJustifications = match.matchHeadReplaced().filter { it.isPrincipal }
            invalidator.receive(invalidJustifications)
        }
    }

    private fun postponeFutureMatchesImpl(active: Occurrence, matches: List<RuleMatchEx>) =
        if (requiresIncrementalProcessing(active)) {
            postponer.postponeFutureMatches(matches)
        } else matches

    private fun RewindStage.receiveStrict(occs: Sequence<Occurrence>, match: RuleMatchEx) =
        rewinder.receive(occs).also {
            if (ispec.assertLevel() == IncrementalSpec.AssertLevel.AssertContracts) {
                throw IncrementalContractViolationException(
                    "Incremental processing can't guarantee correctness for match ${match.rule().uniqueTag()}"
                )
            }
        }

    private fun rewind(cursor: ChunkReader) {
        val toRewind = rewinder.onNext(cursor)

        toRewind.firstOrNull()?.let { earliest ->
            // This is the only place where journal can be reset to past
            // fixme: modifying not through cursor; not the cleanest way
            posTracker.rewind(earliest.toPos())

            // Will invalidate these chunks and reevaluate them
            invalidator.receive(toRewind)

            // Some stages on rewind need to clear internal state
            adder.onRewind(cursor)
            continuator.onRewind(cursor)
        }
    }

    private fun invalidate(cursor: RemovingJournalIterator): Boolean {
        var haveChanges = false
        do {
            // handle all new chunks that were invalidated by rewind
            if (posTracker.isNew(cursor.next)) {
                invalidator.receive(cursor.next)
            }

            if (invalidator.onNext(cursor)) {
                cursor.removeNext()
                haveChanges = true
            } else break
        } while (true)
        return haveChanges
    }

    private fun requiresIncrementalProcessing(match: RuleMatchEx) = !journal.isFront() && ispec.ability().allowed() && match.isPrincipal

    private fun requiresIncrementalProcessing(occ: Occurrence) = !journal.isFront() && ispec.ability().allowed() && occ.isPrincipal

}


/**
 * Strategy that works with occurrence store.
 * Doesn't directly work with [MatchJournal] except for default logging.
 * Strategy simply activates [Occurrence]s passed as input store
 *
 * Caller is responsible for handling new computed principal [Occurrences]:
 * it can get them from [MatchJournal] and output for putting into cache.
 *
 * It requires that program in question adheres to incremental contracts.
 * Importantly, one ensured by [LogicalBindObserverDispatcher].
 */
internal class CachedOccurrencesProcessing(
    ispec: IncrementalSpec,
    private val occurrences: OccurrenceStore
): GroundProcessing(ispec) {

    private var inPreamble = true

    private val postponedMatches: MutableList<Pair<Occurrence, List<RuleMatchEx>>> = mutableListOf()


    override fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>) =
        if (inPreamble && matches.isNotEmpty()) {
            postponedMatches.add(active to matches)
            emptyList<RuleMatchEx>()
        } else matches


    override fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint): FeedbackStatus {
        var status: FeedbackStatus = FeedbackStatus.NORMAL()

        // NB: assume evaluation order doesn't matter for these occurrences

        // first activate cached occurrences,
        // but don't process their matches right away
        this.inPreamble = true
        for (occ in occurrences) {
            if (occ.constraint().symbol() == main.symbol())
                continue
            status = processing.evaluate(controller, occ, status)
            if (!status.operational)
                return status
        }
        this.inPreamble = false

        // then continue matches caused by cached occurrences
        status = continueMatches(processing, controller, status)

        // then proceed with normal execution
        if (status.operational)
            status = controller.activate(main)

        return status
    }

    private fun continueMatches(processing: ConstraintsProcessing, controller: Controller, inStatus: FeedbackStatus): FeedbackStatus {
        val parentChunk = processing.initialChunk() // fixme: get activation chunk of active occ?
        val status = postponedMatches.fold(inStatus) { status, (active, matches) ->
            processing.processMatches(controller, active, matches, parentChunk, status)
        }
        return status
    }
}


private fun ContinueOccurrencesStage.runContinued(processing: ConstraintsProcessing, controller: Controller, chunkReader: ChunkReader): FeedbackStatus {
    var status: FeedbackStatus = FeedbackStatus.NORMAL()
    val parentChunk = processing.parentChunk()

    for (continuedOcc in this.onNext(chunkReader)) {
        if (continuedOcc.stored) {
            status = processing.activateContinue(controller, continuedOcc, parentChunk)

            if (!status.operational) break
        }
    }
    return status
}
