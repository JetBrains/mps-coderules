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
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.util.Id
import jetbrains.mps.logic.reactor.util.Profiler
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

internal class ProcessingStateImpl private constructor(val trace: EvaluationTrace = EvaluationTrace.NULL,
                                                       val profiler: Profiler? = null) :
    ProcessingState, LogicalObserver
{

    // invariant: never empty
    private val stateFrames = LinkedList<StateFrame>()

    constructor(dispatcher: Dispatcher,
                trace: EvaluationTrace = EvaluationTrace.NULL,
                profiler: Profiler? = null) :
        this(trace, profiler)
    {
        stateFrames.push(StateFrame(this, dispatcher))
    }

    fun processActivated(active: Occurrence, inStatus: FeedbackStatus) : FeedbackStatus =
        push().processActivated(active, inStatus)

    fun currentFrame() : StateFrame =
        stateFrames.first

    fun push() : StateFrame {
        val newFrame = StateFrame(stateFrames.first)
        stateFrames.push(newFrame)
        return newFrame
    }

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

    fun storeView(): StoreView =
        StoreViewImpl(allOccurrences())

    private fun allOccurrences(): Sequence<Occurrence> {
        val dit = stateFrames.descendingIterator()
        val set = HashSet<Id<Occurrence>>()
        while (dit.hasNext()) {
            val stateFrame = dit.next()
            stateFrame.allActivated().forEach { set.add(Id(it)) }
            stateFrame.allDeactivated().forEach { set.remove(Id(it)) }
        }
        return set.map { it.wrapped }.asSequence()
    }

    private class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

        val allOccurrences = occurrences.toSet()

        val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

        override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

        override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

        override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
            allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

    }


}