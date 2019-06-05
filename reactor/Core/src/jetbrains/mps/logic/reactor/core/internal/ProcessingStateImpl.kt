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
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.Constraint
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
 *  A ProcessingState maintains a stack of [StateFrame] instances.
 *  It also serves as a proxy for observers of [Logical] that are added during program
 *  evaluation.
 *
 * @author Fedor Isakov
 */


internal open class StateFrameStack() : ProcessingState, LogicalObserver
{
    // invariant: never empty
    private val stateFrames = LinkedList<StateFrame>()

    init {
        stateFrames.push(StateFrame())
    }

    fun currentFrame() : StateFrame =
        stateFrames.first

    fun push() : StateFrame {
        val newFrame = StateFrame(stateFrames.first)
        stateFrames.push(newFrame)
        return newFrame
    }

    fun reset() = reset(stateFrames.last)

    fun reset(frame: StateFrame) {
        val it = stateFrames.iterator()
        while (it.hasNext()) {
            if (frame === it.next()) {  // referential equality
                return
            }
            it.remove()
        }
        throw IllegalStateException("invalid frame")
    }

    override fun addForwardingObserver(logical: Logical<*>, observer: LogicalObserver) {
        if (!currentFrame().isObserving(logical)) {
            logical.addObserver(this)
        }
        currentFrame().addForwardingObserver(logical, observer)
    }

    override fun removeForwardingObserver(logical: Logical<*>, observer: LogicalObserver) {
        currentFrame().removeForwardingObserver(logical, observer)
        if (!currentFrame().isObserving(logical)) {
            logical.removeObserver(this)
        }
    }

    override fun valueUpdated(logical: Logical<*>) {
        // forward to the top frame
        currentFrame().valueUpdated(logical)
    }

    override fun parentUpdated(logical: Logical<*>) {
        // forward to the top frame
        currentFrame().parentUpdated(logical)
    }

}


internal class ProcessingStateImpl(private var dispatchingFront: Dispatcher.DispatchingFront,
                                   journal: MatchJournalImpl,
                                   ruleIndex: RuleIndex,
                                   val trace: EvaluationTrace = EvaluationTrace.NULL,
                                   val profiler: Profiler? = null)
    : StoreAwareJournalImpl(journal)
{
    private val ruleOrder: Map<Any, Int> = HashMap<Any, Int>().apply {
        put(MatchJournalImpl.InitRuleMatch.rule().uniqueTag(), -1)
        ruleIndex.forEachIndexed { index, rule -> put(rule.uniqueTag(), index) }
    }

    private val journalIndex: MatchJournal.Index = journal.index()

    private val postponedMatches: MutableMap<Id<Occurrence>, List<RuleMatchEx>> = HashMap()

    private val execQueue: Queue<ExecPos> =
        PriorityQueue<ExecPos>(1 + this.count() / 2) {
            lhs, rhs -> journalIndex.compare(lhs.pos, rhs.pos)
        }

    private data class ExecPos(val pos: MatchJournal.Pos, val activeOcc: Occurrence)

    // fixme: wtf, why idea's compiler complains???
    override fun index(): MatchJournal.Index = journalIndex

    // only for tests
    fun pushActivateFirstOccOf(ctr: Constraint): Boolean {
        val pos = currentPos()
        val occ = pos.chunk().findOccurrence(ctr)
        if (occ != null) {
            execQueue.offer(ExecPos(pos, occ))
            return true
        }
        return false
    }

    fun invalidateByRules(ruleIds: Set<Any>) {
        val justificationRoots = mutableListOf<Int>()

        val it = this.iterator()
        var prevChunk = it.next() // skip initial chunk

        while (it.hasNext()) {
            val chunk = it.next()

            val toRemove = ruleIds.contains(chunk.match.rule().uniqueTag())
            if (toRemove) {
                justificationRoots.add(chunk.id)
                // Remove the chunk from the journal
                it.remove()

                // We removed the match, so need to reactivate all still valid occurrences from the head
                //  by definition of Chunk and principal rule, all occurrences from the head are principal
                //  todo: check/assert it

                val matchedOccs = chunk.match.allHeads() as Iterable<Occurrence>
                val (invalidatedOccs, validOccs) = matchedOccs.partition { occ ->
                    occ.justifications().intersects(justificationRoots)
                }

                // todo: do need to reactivate only the main, matching~activating match?
                //  (i.e. don't reactivate additional, inactive heads that only completed the match?)
                execQueue.addAll(validOccs.map { occ ->
                    val chunkPos = journalIndex.activatingChunkOf(Id(occ))
                    if (chunkPos != null) ExecPos(chunkPos, occ) else null
                }.filterNotNull())

                continue
            }

            val toInvalidate = chunk.justifications.intersects(justificationRoots)
            if (toInvalidate) {
                // Remove the chunk from the journal
                it.remove()

                // Seems, it's not strictly necessary, because some of its head occurrences are anyway invalidated forever
                //  and storing this invalid consumed match can make no harm, except some memory overhead.
                // fixme: move Chunk's interface to RuleMatchEx instead of RuleMatch
                dispatchingFront = dispatchingFront.forget(chunk.match as RuleMatchEx)

                // 'Undo' all activated in this chunk occurrences and related to them matches.
                chunk.activated().forEach {
                    dispatchingFront = dispatchingFront.forget(it)
                }
            }

            prevChunk = chunk
        }
    }

    private fun Justs.intersects(other: Iterable<Int>): Boolean = other.any { this.contains(it) }

    private data class MatchCandidate(val rule: Rule, val occ: Occurrence, val occParentId: Int)

    private fun canMatch(rule: Rule, occ: Occurrence): Boolean =
        (rule.headKept() + rule.headReplaced()).find { it.symbol() == occ.constraint.symbol() } != null

    // todo: what if non-principal rules will be passed as input there?
    //  only rules that can match on principal occurrences will pass through this method to the queue
    //  so, no non-principal rule should pass it.
    fun addRuleMatches(rules: Iterable<Rule>) {

        val activationCandidates = mutableListOf<MatchCandidate>()
        val it = this.iterator()
        var chunk = it.next() // initial chunk
        var prevChunk = chunk

        while (true) {
            // Does this chunk have principal occurrence and can activate anything at all?
            val pOcc = chunk.principalOccurrence()
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
                val placeToInsertFound = compareRuleOrders(chunk.match.rule(), candRule) > 0
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

    private fun compareRuleOrders(lhs: Rule, rhs: Rule): Int {
        val lhsRuleOrder = ruleOrder[lhs.uniqueTag()]
        val rhsRuleOrder = ruleOrder[rhs.uniqueTag()]

        if (lhsRuleOrder == null || rhsRuleOrder == null) {
            throw(IllegalStateException("Rules compared must be present in the rule index!"))
        }
        return lhsRuleOrder.compareTo(rhsRuleOrder)
    }

    fun launchQueue(controller: Controller): FeedbackStatus.NORMAL {
        if (execQueue.isNotEmpty()) {
            resetStore()

            var prevPos: ExecPos? = null
            do {
                val execPos = execQueue.poll()

                // Handles the case when several matches are added to the same position.
                //  Then shouldn't replay, because currentPos is valid and more recent (!) than execPos.
                if (execPos != prevPos)
                    replay(controller, execPos.pos)
                prevPos = execPos

                // If the occurrence is still in the store after replay (i.e. if it's valid to activate it)
                if (execPos.activeOcc.stored)
                    controller.reactivate(execPos.activeOcc)
            } while (execQueue.isNotEmpty())
        }
        // Also replay to the end after queue is fully executed
        replay(controller, this.last())
        // fixme: get FeedbackStatus out of reactivate()
        return FeedbackStatus.NORMAL()
    }

    fun snapshot(): SessionToken {
        return SessionToken(view(), ruleOrder.keys, dispatchingFront.state())
    }

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
            val currentMatches =
                // todo: assert that there can be no future matches on non-principal occurrences?
//                if (isCurrent() || !active.isPrincipal()) {
                if (true) {
                    matches
                } else {
                    val newCurrentMatches = handleFutureMatches(matches)
                    val allMatches = newCurrentMatches + (postponedMatches.remove(Id(active)) ?: emptyList())
                    // Sort according to rule priorities
                    allMatches.sortedBy { ruleOrder[it.rule().uniqueTag()] }
                }

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

    // TODO: provide ispec to ProcessingStateImpl and use it
    private fun Occurrence.isPrincipal() = this.constraint().isPrincipal()

    // Determines, filters out and enqueues (to execution queue) future matches. Returns only current matches.
    private fun handleFutureMatches(matches: List<RuleMatchEx>): List<RuleMatchEx> {
        val currentPos = currentPos()
        val currentMatches = mutableListOf<RuleMatchEx>()

        for (m in matches) {
            latestMatchedOccurrence(m)?.let { pos ->
                // if it is a future match
                if (journalIndex.compare(currentPos, pos) > 0) {
                    val idOcc = Id(pos.occ)
                    postponedMatches[idOcc] = (postponedMatches[idOcc] ?: emptyList()) + listOf(m)
                    execQueue.offer(ExecPos(pos, pos.occ))
                } else {
                    currentMatches.add(m)
                }
            }
        }
        return currentMatches
    }

    // The latest matched occurrence from match's head is (by definition) the occurrence which activated this match.
    private fun latestMatchedOccurrence(match: RuleMatchEx): MatchJournal.OccurrencePos? =
        match.signature().mapNotNull { occSig ->
            occSig?.wrapped?.let { occ ->
                MatchJournal.OccurrencePos.get(journalIndex, occ)
            }
        }.maxWith(journalIndex) // compare positions: find latest


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
            this.dispatchingFront = dispatchingFront.contract(occ)

            occ.stored = false
            occ.terminate(controller)

            trace.discard(occ)
        }
    }


    private fun RuleMatch.allHeads() = matchHeadKept() + matchHeadReplaced()
    private fun RuleMatch.allStored() = allHeads().all { co -> (co as Occurrence).stored }
}
