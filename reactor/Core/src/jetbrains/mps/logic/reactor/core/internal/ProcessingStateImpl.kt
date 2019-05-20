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
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
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


internal class ProcessingStateImpl constructor(dispatcher: Dispatcher,
                                               val trace: EvaluationTrace = EvaluationTrace.NULL,
                                               val profiler: Profiler? = null) :
    StateFrameStack()
{

    private var dispatchingFront: Dispatcher.DispatchingFront = dispatcher.front()


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
        this.dispatchingFront = dispatchingFront.consume(match)

        match.forEachReplaced { occ ->
            this.dispatchingFront = dispatchingFront.contract(occ)

            occ.stored = false
            occ.terminate()

            trace.discard(occ)
        }
    }


    private fun RuleMatch.allStored() = (matchHeadKept() + matchHeadReplaced()).all { co -> (co as Occurrence).stored }
}