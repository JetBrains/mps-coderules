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
import jetbrains.mps.logic.reactor.logical.Logical
import java.util.*


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

    fun reset() {
        // Clear logicals from this forwarding observer on full reset
        currentFrame().observed().forEach {
            it.removeObserver(this)
        }
        reset(stateFrames.last)
    }

    fun reset(frame: StateFrame) {
        val it = stateFrames.iterator()
        while (it.hasNext()) {
            val next = it.next()
            if (frame === next) {  // referential equality
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
//        assert(checkForwardingObserverUniqueInstance(logical))
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