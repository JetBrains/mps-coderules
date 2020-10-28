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
import jetbrains.mps.logic.reactor.program.IncrementalSpec

/**
 * Facade for incremental processing
 */
internal interface ProcessingStrategy {

    fun invalidatedFeedback(): FeedbackKeySet

    fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint): FeedbackStatus

    fun processMatch(match: RuleMatchEx)

    fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>): List<RuleMatchEx>
}


internal class NonIncrementalProcessing: ProcessingStrategy {

    override fun invalidatedFeedback(): FeedbackKeySet = emptySet()

    override fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint) =
        controller.activate(main)

    override fun processMatch(match: RuleMatchEx) {}

    override fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>): List<RuleMatchEx> = matches
}


internal class IncrementalProcessing(
    override val ispec: IncrementalSpec,
    val journal: MatchJournal,
    rulesDiff: RulesDiff,
    stateCleaner: ConstraintsProcessing.ProgramStateCleaner,
    ruleIndex: RuleIndex,
    trace: EvaluationTrace
): ProcessingStrategy, IncrSpecHolder {

    private val journalIndex = journal.index()
    private val ruleOrdering = RuleOrdering(ruleIndex)

    private val continuator = ContinueOccurrencesStage(ispec, journalIndex)
    private val invalidator = InvalidationStage(ispec, rulesDiff.removed, continuator, stateCleaner, trace)
    private val adder = AdditionStage(ispec, rulesDiff.added, continuator, ruleOrdering, ruleIndex, trace)
    private val postponer = PostponeMatchesStage(ispec, journal, journalIndex, ruleOrdering)


    override fun invalidatedFeedback(): FeedbackKeySet = invalidator.invalidatedFeedback()

    override fun processMatch(match: RuleMatchEx) =
        continueReplacedHeadsImpl(match)

    override fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>) =
        postponeFutureMatchesImpl(active, matches)

    override fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint): FeedbackStatus {
        var status: FeedbackStatus = FeedbackStatus.NORMAL()
        val cursor = journal.cursor
        while (true) {
            invalidate(cursor)

            val postponedMatches = postponer.onNext(cursor)
            adder.receive(postponedMatches)
            adder.onNext(cursor)

            status = continuator.runContinued(processing, controller, cursor)
            if (!status.operational) break

            // continuator may request invalidating more chunks
            val haveChanges = invalidate(cursor)

            if (cursor.atEnd()) break
            if (!haveChanges) cursor.next()
        }
        return status
    }


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


    private fun invalidate(cursor: RemovingJournalIterator): Boolean {
        var haveChanges = false
        while (invalidator.onNext(cursor)) {
            cursor.removeNext()
            haveChanges = true
        }
        return haveChanges
    }

    private fun requiresIncrementalProcessing(match: RuleMatchEx) = !journal.isFront() && ispec.ability().allowed() && match.isPrincipal

    private fun requiresIncrementalProcessing(occ: Occurrence) = !journal.isFront() && ispec.ability().allowed() && occ.isPrincipal

}


internal class PreambleProcessing(
    override val ispec: IncrementalSpec,
    val journal: MatchJournal,
    rulesDiff: RulesDiff,
    ruleIndex: RuleIndex,
    trace: EvaluationTrace
): ProcessingStrategy, IncrSpecHolder {

    private val journalIndex = journal.index()
    private val ruleOrdering = RuleOrdering(ruleIndex)

    private val continuator = ContinueOccurrencesStage(ispec, journalIndex)
    private val adder = AdditionStage(ispec, rulesDiff.added, continuator, ruleOrdering, ruleIndex, trace)


    override fun invalidatedFeedback(): FeedbackKeySet = emptySet()

    override fun processMatch(match: RuleMatchEx) = Unit

    override fun processOccurrenceMatches(active: Occurrence, matches: List<RuleMatchEx>) = matches


    override fun run(processing: ConstraintsProcessing, controller: Controller, main: Constraint): FeedbackStatus {
        var status: FeedbackStatus = FeedbackStatus.NORMAL()
        val cursor = journal.cursor
        while (true) {
            adder.onNext(cursor)

            status = continuator.runContinued(processing, controller, cursor)
            if (!status.operational) break
            if (cursor.atEnd()) break

            cursor.next()
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
