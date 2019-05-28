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
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import org.jetbrains.kotlin.utils.mapToIndex
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
                                   journal: MatchJournal,
                                   ruleIndex: RuleIndex,
                                   val trace: EvaluationTrace = EvaluationTrace.NULL,
                                   val profiler: Profiler? = null)
    : StoreAwareJournalImpl(journal)
{
    private val ruleOrder: Map<Any, Int> = ruleIndex.map { it.uniqueTag() }.mapToIndex()

    private val execQueue: Queue<ExecPos> = LinkedList<ExecPos>()

    private data class ExecPos(val pos: MatchJournal.Pos, val activeOcc: Occurrence)

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
//        for (ruleTag in rulesDiff.removed) {
//
//        }
    }

    private data class MatchCandidate(val rule: Rule, val occ: Occurrence, val occParentId: Int)

    fun addRuleApplications(rules: Iterable<Rule>) {
        val activationCandidates = mutableListOf<MatchCandidate>()

        val it = journal.iterator()
        var prevChunk = it.next() // skip initial chunk

        while (it.hasNext()) { // note: if there's only an initial chunk, we have nothing to do
            val chunk = it.next()
            val pp = chunk.principalConstraint()

            // Does this chunk have principal occurrence and can activate anything at all?
            if (pp != null) {
                for (rule in rules) {
                    // Can this rule be matched by 'pp'?
                    // fixme: maybe use RuleIndex here?
                    if (rule.headKept().contains(pp) || rule.headReplaced().contains(pp)) {

                        val princOcc = chunk.findOccurrence(pp)
                            ?: throw IllegalStateException("Chunk with principal occurrence must have it in activated occurrences!")

                        // Then we will need to find the place among existing child chunks
                        //  (i.e. among some number of following ones)
                        //  to activate this occurrence, to (possibly) match this rule.
                        // Also remember the parent justification of this rule candidate
                        //  to drop it from monitoring when child chunks end.
                        activationCandidates.add(MatchCandidate(rule, princOcc, chunk.id))
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

                val chunkRule = chunk.match.rule()
                val currRuleOrder = ruleOrder[chunkRule.uniqueTag()]
                    ?: throw(IllegalStateException("There can be no chunks with rules not in rule index!"))
                val candRuleOrder = ruleOrder[candRule.uniqueTag()]
                    ?: throw(IllegalStateException("Match candidate rule must be present in the rule index!"))

                val childChunksEnded = !chunk.justifications.contains(parentId)

                val pos =
                    // We need the previous chunk as pos here (i.e. adding after it).
                    if (childChunksEnded || currRuleOrder > candRuleOrder) prevChunk
                    // Case when adding at the very end
                    else if (!it.hasNext()) chunk
                    else continue

                execQueue.offer(ExecPos(pos, candOcc))
                // Drop the candidate if appropriate activation place is found.
                aIt.remove()
            }

            prevChunk = chunk
        }
    }

    fun launchQueue(controller: Controller): FeedbackStatus.NORMAL {
        if (execQueue.isNotEmpty()) {
            resetStore()

            do {
                val execPos = execQueue.poll()
                replay(execPos.pos)
                controller.reactivate(execPos.activeOcc)
            } while (execQueue.isNotEmpty())
        }
        // todo: replay to the end after queue is fully executed?
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
    fun processActivated(active: Occurrence, inStatus: FeedbackStatus) : FeedbackStatus {
        push()
        assert(active.alive)

        return profiler.profile<FeedbackStatus>("activated_${active.constraint().symbol()}") {

            if (!active.stored) {
                active.stored = true
                trace.activate(active)

            } else {
                trace.reactivate(active)
            }

            logActivation(active)
            this.dispatchingFront = dispatchingFront.expand(active)

            val outStatus = dispatchingFront.matches().toList().fold(inStatus) { status, match ->
                // TODO: paranoid check. should be isAlive() instead
                // FIXME: move this check elsewhere
                if (status.operational && active.stored && match.allStored())
                    processMatch(active.controller, match, status)
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
            .also { accept(match) }
            .then { controller.processBody(match, it) }
            .also { trace.finish(match) }


    private fun accept (match: RuleMatchEx) {
        logMatch(match)
        this.dispatchingFront = dispatchingFront.consume(match)

        match.forEachReplaced { occ ->
            this.dispatchingFront = dispatchingFront.contract(occ)

            occ.stored = false
//            occ.terminate() // logMatch terminates occurrences

            trace.discard(occ)
        }
    }


    private fun RuleMatch.allStored() = (matchHeadKept() + matchHeadReplaced()).all { co -> (co as Occurrence).stored }
}