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
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile


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
    val logicalState: LogicalState,
    val trace: EvaluationTrace = EvaluationTrace.NULL,
    val profiler: Profiler? = null ) :  MatchJournal by journal
{

    fun engage(controller: Controller) {
        logicalState.setController(controller)
    }

    fun disengage(controller: Controller) {
        logicalState.clearController(controller)
    }

    /**
     * Called to update the state with the currently active constraint occurrence.
     * Calls the controller to process matches (if any) that were triggered.
     * This method may be called at most once for a fresh state frame.
     */
    fun processActivated(controller: Controller, active: Occurrence, inStatus: FeedbackStatus) : FeedbackStatus {
        if (!active.stored) {
            active.stored = true
            logActivation(active)
            active.revive(logicalState)
        }
        assert(active.alive)

        profiler.profile("dispatch_${active.constraint().symbol()}") {

            this.dispatchingFront = dispatchingFront.expand(active)

        }

        val matches = dispatchingFront.matches().toList()

        val outStatus = processMatches(controller, active, matches, inStatus)

        // TODO: should be isAlive()
        if (active.stored) {
            trace.suspend(active)
        }

        return outStatus
    }

    fun processMatches(controller: Controller, active: Occurrence, matches: List<RuleMatchEx>, inStatus: FeedbackStatus) : FeedbackStatus =
        matches.fold(inStatus) { status, match ->
            // TODO: paranoid check. should be isAlive() instead
            // FIXME: move this check elsewhere
            if (status.operational && active.stored && match.allStored()) {
                assert(match.allHeads().contains(active))
                processMatch(controller, match, status)
            } else status
        }


    private inline fun FeedbackStatus.then(action: (FeedbackStatus) -> FeedbackStatus) : FeedbackStatus =
        if (operational) action(this) else this

    private fun processMatch(controller: Controller, match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus =
        inStatus
            .let {
                controller.offerMatch(match, inStatus)
            }
            .let {
                when (it) {
                    is FeedbackStatus.ABORTED -> {  // guard is not satisfied
                        trace.reject(match)
                        return it.recover()         // return from the enclosing method

                    }
                    is FeedbackStatus.FAILED -> {   // guard failed
                        trace.reject(match)
                        return it.recover()         // return from the enclosing method

                    }
                    else -> it
                }
            }
            .also { trace.trigger(match) }
            .also { accept(controller, match) }
            .then { controller.processBody(match, it) }
            .also { trace.finish(match) }

    private fun accept(controller: Controller, match: RuleMatchEx) {
        profiler.profile("logMatch") {

            logMatch(match)

        }

        profiler.profile("consumeMatch") {

            this.dispatchingFront = dispatchingFront.consume(match)

        }

        profiler.profile("discardOccurrence") {

            match.forEachReplaced { occ ->
                this.dispatchingFront = dispatchingFront.contract(occ)
                occ.stored = false

                profiler.profile("terminateOccurrence") {
                    occ.terminate(logicalState)
                }

                trace.discard(occ)
            }

        }
    }
    
    /**
     * Encapsulates logic for deriving [Evidence] and [Justifications] for a new [Occurrence].
     */
    inner class JustifiedOccurrenceCreator(
        private val savedJustifications: Justifications = justifications()
    ) {
        fun Constraint.occurrence(
            arguments: List<*>,
            logicalContext: LogicalContext,
            rule: Rule?
        ): Occurrence {

            // By default share justifications (as a small optimization)
            val evidence = nextEvidence()
            val justifications = Justifications.copy(savedJustifications).apply { add(evidence) }

            return Occurrence(
                this, logicalContext, arguments, evidence,
                justifications, rule
            )
        }
    }

}
