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
