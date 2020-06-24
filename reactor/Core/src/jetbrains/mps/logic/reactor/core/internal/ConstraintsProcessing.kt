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
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.SessionToken
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
                                     private val ispec: IncrementalProgramSpec = IncrementalProgramSpec.DefaultSpec,
                                     val trace: EvaluationTrace = EvaluationTrace.NULL,
                                     val profiler: Profiler? = null)
    : StoreAwareJournalImpl(journal, logicalState)
{
    private val journalIndex: MatchJournal.Index = journal.index()

    private val execQueue: ExecutionQueue = ExecutionQueue(journalIndex, RuleOrdering(ruleIndex))

    private val invalidatedRulesTags: MutableSet<Any> = mutableSetOf<Any>()

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
        var prevChunk = it.next() // skip initial chunk

        while (it.hasNext()) {
            val chunk = it.next()

            if (chunk is MatchJournal.MatchChunk && chunk.dependsOnAny(ruleIds)) {
                justificationRoots.add(chunk)
            }

            // Invalidating dependent chunks
            if (chunk.justifiedByAny(justificationRoots)) {

                // Remove chunk from the journal
                it.remove()
                // 'Undo' all activated in this chunk occurrences
                chunk.activated().forEach {
                    dispatchingFront = dispatchingFront.forget(it)
                }

                if (chunk is MatchJournal.MatchChunk) {
                    trace.invalidate(chunk.match)
                    invalidatedRulesTags.add(chunk.ruleUniqueTag)

                    dispatchingFront = dispatchingFront.forget(chunk.match as RuleMatchEx)

                    // Need to 'cancel' discarding.
                    // These nodes may become valid and will be processed due to reactivation of needed occurrences.
                    chunk.match.matchHeadReplaced().forEach {
                        dispatchingFront = dispatchingFront.forget(it as Occurrence)
                    }

                    // We removed the match, so need to reactivate all still valid occurrences from the head.
                    val matchedOccs = chunk.match.allHeads().asIterable()
                    val validOccs = matchedOccs.filter { occ ->
                        !occ.justifiedByAny(justificationRoots)
                    }
                    // By definition of Chunk and principal rule, all occurrences from the head are principal
                    assert(matchedOccs.all { it.isPrincipal() })

                    execQueue.offerAll(validOccs)
                }
            }

            prevChunk = chunk
        }
    }

    private fun canMatch(rule: Rule, occ: Occurrence): Boolean =
        (rule.headKept() + rule.headReplaced()).find { it.symbol() == occ.constraint.symbol() } != null

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
                    if (allRuleCandidates.contains(rule.uniqueTag()) && canMatch(rule, chunk.occ)) {
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
                    if (execQueue.canBeInserted(candRule, occChunk, chunk))
                        // We need the previous chunk as pos here (i.e. adding after it).
                        prevChunk.toPos()
                    else if (!it.hasNext())
                        // Case when adding at the very end
                        chunk.toPos()
                    else
                        continue

                execQueue.offer(pos, occChunk)
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
        execQueue.run(controller, this)

    /**
     * Clears state unneeded between incremental sessions
     * and returns [SessionToken] with session results.
     */
    fun endSession(): SessionToken {
        invalidatedRulesTags.clear()
        val histView = view()
        resetStore() // clear observers
        val rules = ArrayList<Rule>().apply { ruleIndex.forEach { add(it) } }
        // preserve only relevant and non-empty RuleMatchers
        val principalState = dispatchingFront.state().filterValues { ruleMatcher ->
            ispec.isPrincipal(ruleMatcher.rule()) || ruleMatcher.probe().hasOccurrences()
        }
        return SessionTokenImpl(histView, rules, principalState, logicalState.clear())
    }

    fun invalidatedRules(): Set<Any> = HashSet<Any>(invalidatedRulesTags)

    /**
     * Called to update the state with the currently active constraint occurrence.
     * Calls the controller to process matches (if any) that were triggered.
     * This method may be called at most once for a fresh state frame.
     */
    fun processActivated(controller: Controller, active: Occurrence, parent: MatchJournal.MatchChunk, inStatus: FeedbackStatus) : FeedbackStatus {
        push()

        val activationChunk: MatchJournal.OccChunk?
        if (!active.stored) {
            active.stored = true
            activationChunk = logActivation(active)
            active.revive(logicalState)
        } else {
            // defined (not null) & needed only for incremental execution
            activationChunk = journalIndex.activatingChunkOf(active)
        }
        assert(active.alive)

        profiler.profile("dispatch_${active.constraint().symbol()}") {

            this.dispatchingFront = dispatchingFront.expand(active)

        }

        val matches = dispatchingFront.matches().toList()
        val currentMatches =
            if (isFront() || !active.isPrincipal()) {
                matches
            } else {
                execQueue.postponeFutureMatches(matches)
            }

        val outStatus = currentMatches.fold(inStatus) { status, match ->
            if (activationChunk != null && !isFront()) {
                val discards = match.matchHeadReplaced().contains(active)
                if (discards) {
                    dropDiscardingMatchesFor(activationChunk, invalidatedRulesTags)
                }
            }

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

    private fun dropDiscardingMatchesFor(ancestor: MatchJournal.OccChunk, droppedRuleTags: MutableSet<Any>) =
        this.dropDescendantsWhile(ancestor) { chunk ->

            if (chunk is MatchJournal.MatchChunk
                && chunk.match.matchHeadReplaced().contains(ancestor.occ))
            {
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
            .also {
                accept(controller, match)
            }
            .then {
                controller.processBody(match, parent, it)
            }
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
                // Principal occurrences must be preserved for future incremental evaluation sessions
                if (!occ.isPrincipal()) {
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


    private fun RuleMatch.isPrincipal() = ispec.isPrincipal(this.rule())

    private fun Occurrence.isPrincipal() = ispec.isPrincipal(this.constraint())

    private fun MatchJournal.MatchChunk.dependsOnAny(utags: Iterable<Any>): Boolean =
        utags.contains(this.ruleUniqueTag) || utags.any { utag -> dependsOnRule(utag) }

}
