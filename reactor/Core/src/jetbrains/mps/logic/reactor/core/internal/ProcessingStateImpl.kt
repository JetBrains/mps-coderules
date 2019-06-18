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
import jetbrains.mps.logic.reactor.util.Id
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import java.util.*


/**
 *  Processing of constraints comprises several major activities:
 *
 *   - finding match(-es) corresponding to an active occurrence
 *   - checking the guard condition
 *   - deactivating discarded occurrences from the match
 *   - processing the body of a constraints rule.
 *
 *  A ProcessingState maintains a stack of [StateFrame] instances through [StateFrameStack].
 *  It also serves as a proxy for observers of [Logical] that are added during program evaluation.
 *
 * @author Fedor Isakov
 */

internal class ProcessingStateImpl(private var dispatchingFront: Dispatcher.DispatchingFront,
                                   journal: MatchJournalImpl,
                                   ruleIndex: RuleIndex,
                                   private val ispec: IncrementalProgramSpec = IncrementalProgramSpec.DefaultSpec,
                                   val trace: EvaluationTrace = EvaluationTrace.NULL,
                                   val profiler: Profiler? = null)
    : StoreAwareJournalImpl(journal)
{
    private val ruleOrdering: RuleOrdering = RuleOrdering(ruleIndex)

    private val journalIndex: MatchJournal.Index = journal.index()

    // It is a position in Journal from previous session,
    //  from which incremental execution continues.
    // Needed for pos comparison in postponeFutureMatches.
    private lateinit var lastIncrementalRootPos: MatchJournal.Pos

    private val postponedMatches: MutableMap<Id<Occurrence>, List<RuleMatchEx>> = HashMap()

    private val execQueue: Queue<ExecPos> =
        PriorityQueue<ExecPos>(1 + this.count() / 2) { // just an estimate
            lhs, rhs -> journalIndex.compare(lhs.pos, rhs.pos)
        }

    private data class ExecPos(val pos: MatchJournal.Pos, val activeOcc: Occurrence)

    private data class MatchCandidate(val rule: Rule, val occ: Occurrence, val occParentId: Int)


    // Invalidation includes several activities:
    //  - removing chunks (i.e. principal matches) corresponding to
    //      removed rules and chunks depending on them from journal
    //  - reactivating occurrences that led to invalidated matches
    //  - pruning invalidated occurrences and matches from Dispatcher's state
    fun invalidateRuleMatches(ruleIds: Set<Any>) {
        val justificationRoots = mutableListOf<Int>()

        val it = this.iterator()
        var prevChunk = it.next() // skip initial chunk

        while (it.hasNext()) {
            val chunk = it.next()

            val toRemove = ruleIds.contains(chunk.match().rule().uniqueTag())
            if (toRemove) {
                justificationRoots.add(chunk.id)

                // We removed the match, so need to reactivate all still valid occurrences from the head
                //  by definition of Chunk and principal rule, all occurrences from the head are principal
                val matchedOccs = chunk.match().allHeads() as Iterable<Occurrence>
                val (invalidatedOccs, validOccs) = matchedOccs.partition { occ ->
                    occ.justifications().intersects(justificationRoots)
                }
                assert(matchedOccs.all { it.isPrincipal() })

                // todo: do need to reactivate only the main, matching~activating match?
                //  (i.e. don't reactivate additional, inactive heads that only completed the match?)
                execQueue.addAll(validOccs.mapNotNull { occ ->
                    journalIndex.activatingChunkOf(Id(occ))?.let { chunkPos ->
                        ExecPos(chunkPos, occ)
                    }
                })
            }

            // Invalidating dependent chunks
            val toInvalidate = toRemove || chunk.justifications.intersects(justificationRoots)
            if (toInvalidate) {
                // Remove the chunk from the journal
                it.remove()

                // Seems, it's not strictly necessary, because some of its head occurrences are anyway invalidated forever
                //  and storing this invalid consumed match can make no harm, except some memory overhead.
                // fixme: move Chunk's interface to RuleMatchEx instead of RuleMatch
                dispatchingFront = dispatchingFront.forget(chunk.match() as RuleMatchEx)

                // Need to 'cancel' discarding.
                // These nodes may become valid and will be processed due to reactivation of needed occurrences.
                chunk.match().matchHeadReplaced().forEach {
                    dispatchingFront = dispatchingFront.forget(it as Occurrence)
                }
                // 'Undo' all activated in this chunk occurrences
                chunk.activated().forEach {
                    dispatchingFront = dispatchingFront.forget(it)
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
            // Does this chunk have principal occurrence and can activate anything at all?
            val pOcc = journalIndex.principalOccurrenceOf(chunk)?.occ
            if (pOcc != null) {

                for (rule in rules) {
                    // Can this rule be matched by principal occurrence?
                    // fixme: maybe use RuleIndex here?
                    if (canMatch(rule, pOcc)) {

                        // Then we will need to find the place among existing child chunks
                        //  (i.e. among some number of following ones)
                        //  to activate this occurrence, to (possibly) match this rule.
                        // Also remember the parent justification of this rule candidate
                        //  to drop it from monitoring when child chunks end.
                        activationCandidates.add(MatchCandidate(rule, pOcc, chunk.id))
                        // todo: also use the rule to help Dispatcher in future? i.e. try matching only on the candidate rule
                    }
                }
            }

            val aIt = activationCandidates.listIterator()
            while (aIt.hasNext()) {
                val (candRule, candOcc, parentId) = aIt.next()

                // Place to activate candidate:
                //  either as the last one, after all existing activations
                //  or according to the ordering between rules.
                val placeToInsertFound = ruleOrdering.compare(chunk.match().rule(), candRule) > 0
                val childChunksEnded = !chunk.isDescendantOf(parentId)

                val pos =
                    // We need the previous chunk as pos here (i.e. adding after it).
                    if (childChunksEnded || placeToInsertFound) prevChunk
                    // Case when adding at the very end
                    else if (!it.hasNext()) chunk
                    else continue

                execQueue.offer(ExecPos(pos, candOcc))
                // Drop the candidate if appropriate activation place is found.
                aIt.remove()
            }

            if (!it.hasNext()) break
            prevChunk = chunk
            chunk = it.next()
        }
    }

    fun launchQueue(controller: Controller): FeedbackStatus.NORMAL {
        if (execQueue.isNotEmpty()) {
            resetStore()

            var prevPos: ExecPos? = null
            do {
                val execPos = execQueue.poll()

                // Handles the case when several matches are added to the same position.
                //  Then shouldn't replay, because currentPos is valid and more recent (!) than execPos.
                if (execPos != prevPos) {
                    replay(controller, execPos.pos)
                    lastIncrementalRootPos = execPos.pos
                }
                prevPos = execPos

                // If the occurrence is still in the store after replay (i.e. if it's valid to activate it)
                if (execPos.activeOcc.stored) {
                    // Forget that occ was seen.
                    // Incremental reactivation isn't like the usual reactivation,
                    //  it should proceed more like usual activation.
                    this.dispatchingFront = dispatchingFront.forgetSeen(execPos.activeOcc)
                    controller.reactivate(execPos.activeOcc)
                }
            } while (execQueue.isNotEmpty())
        }
        // Also replay to the end after queue is fully executed
        replay(controller, this.last())
        // fixme: get FeedbackStatus out of reactivate()
        return FeedbackStatus.NORMAL()
    }

    fun snapshot(): SessionToken =
        SessionTokenImpl(view(), ruleOrdering.ruleTags, dispatchingFront.state())

    /**
     * Called to update the state with the currently active constraint occurrence.
     * Calls the controller to process matches (if any) that were triggered.
     * This method may be called at most once for a fresh state frame.
     */
    fun processActivated(controller: Controller, active: Occurrence, inStatus: FeedbackStatus) : FeedbackStatus {
        push()
        assert(active.alive)

        return profiler.profile<FeedbackStatus>("activated_${active.constraint().symbol()}") {

            if (!active.stored) {
                active.stored = true
                trace.activate(active)

                logActivation(active)
                active.revive(controller)

            } else {
                trace.reactivate(active)
            }

            this.dispatchingFront = dispatchingFront.expand(active)

            val matches = dispatchingFront.matches().toList()
            val newCurrentMatches =
                // todo: assert that there can be no future matches on non-principal occurrences?
                if (isCurrent() || !active.isPrincipal()) {
                    matches
                } else {
                    postponeFutureMatches(matches)
                }
            val currentMatches = withPostponedMatches(active, newCurrentMatches)

            val outStatus = currentMatches.fold(inStatus) { status, match ->
                // TODO: paranoid check. should be isAlive() instead
                // FIXME: move this check elsewhere
                if (status.operational && active.stored && match.allStored())
                    processMatch(controller, match, status)
                else
                    status
            }

            // TODO: should be isAlive()
            if (active.stored) {
                trace.suspend(active)
            }

            outStatus
        }
    }

    private fun withPostponedMatches(active: Occurrence, matches: List<RuleMatchEx>): List<RuleMatchEx> =
        postponedMatches.remove(Id(active))?.let { postponed ->
            // Sort matches according to rule priorities
            (matches + postponed).sortedBy { ruleOrdering.orderOf(it.rule()) }
        } ?: matches

    // Determines, filters out and enqueues (to execution queue) future matches. Returns only current matches.
    private fun postponeFutureMatches(matches: List<RuleMatchEx>): List<RuleMatchEx> {
        assert(matches.all { ispec.isPrincipal(it.rule()) })

        val currentMatches = mutableListOf<RuleMatchEx>()
        for (m in matches) {
            // Returns null for matches with occurrences only from this session
            //  because journalIndex indexes only previous session.
            val pos = journalIndex.activationPos(m)
            // if it is a future match
            if (pos != null && journalIndex.compare(lastIncrementalRootPos, pos) < 0) {
                val idOcc = Id(pos.occ)
                postponedMatches[idOcc] = (postponedMatches[idOcc] ?: emptyList()) + listOf(m)
                execQueue.offer(ExecPos(pos, pos.occ))
            } else {
                currentMatches.add(m)
            }
        }
        return currentMatches
    }


    private inline fun FeedbackStatus.then(action: (FeedbackStatus) -> FeedbackStatus) : FeedbackStatus =
        if (operational) action(this) else this

    private fun processMatch(controller: Controller, match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus =
        controller.offerMatch(match, inStatus)
            .let  { when (it) {
                is FeedbackStatus.ABORTED -> {  // guard is not satisfied
                    trace.reject(match)
                    return it.recover()         // return from the enclosing method

                } is FeedbackStatus.FAILED -> { // guard failed
                    trace.feedback(it.failure)
                    return it.recover()         // return from the enclosing method

                } else -> it
            } }
            .also { trace.trigger(match) }
            .also { accept(controller, match) }
            .then { controller.processBody(match, it) }
            .also { trace.finish(match) }


    private fun accept(controller: Controller, match: RuleMatchEx) {
        logMatch(match)
        this.dispatchingFront = dispatchingFront.consume(match)

        match.forEachReplaced { occ ->
            // Principal occurrences must be preserved for future incremental evaluation sessions
            if (!occ.isPrincipal())
                this.dispatchingFront = dispatchingFront.contract(occ)

            occ.stored = false
            occ.terminate(controller)

            trace.discard(occ)
        }
    }


    private fun Occurrence.isPrincipal() = ispec.isPrincipal(this.constraint())

    private fun Justs.intersects(other: Iterable<Int>): Boolean = other.any { this.contains(it) }

    private fun RuleMatch.allHeads() = matchHeadKept() + matchHeadReplaced()

    private fun RuleMatch.allStored() = allHeads().all { co -> (co as Occurrence).stored }
}
