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
import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
import jetbrains.mps.logic.reactor.evaluation.SessionToken
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

internal class ConstraintsProcessing(private var dispatchingFront: Dispatcher.DispatchingFront,
                                     journal: MatchJournalImpl,
                                     private val ruleIndex: RuleIndex,
                                     val logicalState: LogicalState,
                                     override val ispec: IncrementalProgramSpec = IncrementalProgramSpec.DefaultSpec,
                                     val trace: EvaluationTrace = EvaluationTrace.NULL,
                                     val profiler: Profiler? = null)
    : StoreAwareJournalImpl(journal, logicalState), IncrSpecHolder
{
    private val journalIndex: MatchJournal.Index = journal.index()

    private val activationQueue: ContinuedActivationQueue = ContinuedActivationQueue(journalIndex, RuleOrdering(ruleIndex))

    private val invalidFeedbackKeys: MutableSet<Any> = mutableSetOf<Any>()

    private data class MatchCandidate(val rule: Rule, val occChunk: MatchJournal.OccChunk)


    fun activateContinue(controller: Controller, activeOcc: Occurrence, parent: MatchJournal.MatchChunk): FeedbackStatus {
        assert(activeOcc.stored)

        // Forget that occ was seen. Otherwise it will be
        // processed as with reactivation through observers.
        // Incremental reactivation should proceed more like usual activation.
        this.dispatchingFront = dispatchingFront.forgetExpanded(activeOcc)

        trace.activateContinue(activeOcc)

        return processActivated(controller, activeOcc, parent, FeedbackStatus.NORMAL())
    }

    /**
     * Invalidation includes several activities:
     *  - removing chunks (i.e. principal matches) corresponding to
     *      removed rules and chunks depending on them from journal
     *  - reactivating occurrences that led to invalidated matches
     *  - pruning invalidated occurrences and matches from Dispatcher's state
     */
    fun invalidateRuleMatches(ruleIds: Set<Any>) {
        // Track only root invalidated entities for invalidation,
        // relying on transitivity of Justified.justifiedBy relation.
        val justificationRoots = mutableListOf<Justified>()

        val it = this.iterator()
        var lastValidChunk = it.next() // skip initial chunk

        while (it.hasNext()) {
            val chunk = it.next()

            if (chunk is MatchJournal.MatchChunk && chunk.dependsOnAny(ruleIds)) {
                justificationRoots.add(chunk)
            }

            // Invalidating dependent chunks
            if (chunk.justifiedByAny(justificationRoots)) {

                // Remove chunk from the journal
                it.remove()

                val validOccs = invalidateChunk(chunk, justificationRoots)

                activationQueue.offerAll(lastValidChunk.toPos(), validOccs)

            } else {
                lastValidChunk = chunk
            }
        }
    }

    private fun invalidateChunk(chunk: MatchJournal.Chunk, invalidJustifications: Collection<Justified>): Iterable<Occurrence> {
        // 'Undo' all activated in this chunk occurrences
        chunk.activatedLog().forEach {
            dispatchingFront = dispatchingFront.forget(it)
        }

        val validOccs: Sequence<Occurrence>
        if (chunk is MatchJournal.MatchChunk) {
            trace.invalidate(chunk.match)
            invalidFeedbackKeys.add(chunk.match.feedbackKey)
            dispatchingFront = dispatchingFront.forget(chunk.match as RuleMatchEx)

            // Valid head occurrences could match more rules
            //  without this match, so need to reactivate them.
            // E.g. occurrences discarded in this match on
            //  previous run but revived here can match more rules.
            validOccs = chunk.match.allHeads().filter { occ ->
                !occ.justifiedByAny(invalidJustifications)
            }
            // By definition of Chunk and principal rule,
            //  all occurrences from the head are principal.
            assert(chunk.match.allHeads().all { it.isPrincipal })

        } else validOccs = emptySequence()
        return validOccs.asIterable()
    }

    fun addRuleMatches(rules: Iterable<Rule>) {

        val activationCandidates = mutableListOf<MatchCandidate>()
        val it = this.iterator()
        var chunk = it.next() // initial chunk
        var prevChunk = chunk

        while (true) {
            if (chunk is MatchJournal.OccChunk) {
                // filters out rules using occurrence's arguments
                val allRuleCandidates = ruleIndex.forOccurrence(chunk.occ).map { it.uniqueTag() }.toHashSet()

                for (rule in rules) {
                    if (allRuleCandidates.contains(rule.uniqueTag()) && rule.canMatch(chunk.occ.constraint)) {
                        // Can this rule be matched by principal occurrence?
                        // Then we will need to find the place among existing child chunks
                        //  (i.e. among some number of following ones)
                        //  to activate this occurrence, to (possibly) match this rule.
                        // Also remember the parent justification of this rule candidate
                        //  to drop it from monitoring when child chunks end.
                        activationCandidates.add(MatchCandidate(rule, chunk))
                        // todo: also use the rule to help Dispatcher in future?
                        //  i.e. try matching only on the candidate rule
                    }
                }
            }

            val aIt = activationCandidates.listIterator()
            while (aIt.hasNext()) {
                val (candRule, occChunk) = aIt.next()

                val pos =
                    if (activationQueue.canBeInserted(candRule, occChunk, chunk))
                        // We need the previous chunk as pos here (i.e. adding after it).
                        prevChunk.toPos()
                    else if (!it.hasNext())
                        // Case when adding at the very end
                        chunk.toPos()
                    else
                        continue

                activationQueue.offer(pos, occChunk)
                trace.potentialMatch(occChunk.occ, candRule)
                // Drop the candidate if appropriate activation place is found.
                aIt.remove()
            }

            if (!it.hasNext()) break
            prevChunk = chunk
            chunk = it.next()
        }
    }

    fun launchQueue(controller: Controller): FeedbackStatus =
        activationQueue.run(controller, this)

    /**
     * Clears state unneeded between incremental sessions
     * and returns [SessionToken] with session results.
     */
    fun endSession(): SessionToken {
        invalidFeedbackKeys.clear()
        val histView = view()
        resetStore() // clear observers
        val rules = ArrayList<Rule>().apply { ruleIndex.forEach { add(it) } }
        // preserve only relevant and non-empty RuleMatchers
        val principalState = dispatchingFront.state().filterValues { ruleMatcher ->
            ruleMatcher.rule().isPrincipal || ruleMatcher.probe().hasOccurrences()
        }
        return SessionTokenImpl(histView, rules, principalState, logicalState.clear())
    }

    fun invalidatedFeedback(): FeedbackKeySet = HashSet<Any>(invalidFeedbackKeys)

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
        }
        assert(active.alive)

        profiler.profile("dispatch_${active.constraint().symbol()}") {

            this.dispatchingFront = dispatchingFront.expand(active)

        }

        val matches = dispatchingFront.matches().toList()
        val currentMatches =
            if (isFront() || !active.isPrincipal) {
                matches
            } else {
                activationQueue.postponeFutureMatches(matches)
            }

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
        if (!isFront() && match.isPrincipal) {
            profiler.profile("continueReplaced") {

                val invalidJustifications = match.matchHeadReplaced().filter { it.isPrincipal }
                if (invalidJustifications.isNotEmpty()) {

                    val pos = currentPos()
                    dropDescendants(invalidJustifications) {
                        val validOccs = invalidateChunk(it, invalidJustifications)
                        activationQueue.offerAll(pos, validOccs)
                    }

                }
            }
        }
    }

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

                    occ.terminate(logicalState)

                }

                trace.discard(occ)
            }

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


    private fun MatchJournal.MatchChunk.dependsOnAny(utags: Iterable<Any>): Boolean =
        utags.contains(this.ruleUniqueTag) || utags.any { utag -> dependsOnRule(utag) }

}
