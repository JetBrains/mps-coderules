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
import java.util.Collections.singleton

/**
 * Captures the state of logical variables in respect to observers.
 * Serves as a middle layer between logical variables and observers, the latter being notified of changes in the
 * state in context of the currenly active controller.
 * Keeps a reference to [Controller] instance, which is used to notify the observers.
 *
 * NOTE: the following is no longer relevant, as the "stack frame" functionality has been removed.
 *
 * Internally [LogicalState] maintains a stack of [LogicalStateFrame]s capturing processing
 * state related to logical variable observers. The top [LogicalStateFrame] contains
 * the current relevant set of [LogicalObserver]s. Events corresponding to
 * adding and removing observers are forwarded to the top frame.
 *
 * Frames are added on events which could require reverting processing state to
 * the point before them, which can be achieved by simply dropping a frame and
 * thus dropping all added observers.
 */

class LogicalState : LogicalStateObservable, LogicalObserver
{
    // invariant: never empty
    private val stateFrames = LinkedList<LogicalStateFrame>()

    private var controller: Controller? = null

    init {
        stateFrames.push(LogicalStateFrame())
    }

    fun init(controller: Controller) {
        assert(this.controller === null)
        this.controller = controller
    }

    fun clear() : LogicalState {
        assert(this.controller !== null)
        this.controller = null
        return this
    }

    fun currentFrame() : LogicalStateFrame =
        stateFrames.first

    fun push() : LogicalStateFrame {
        return currentFrame()
//        val newFrame = StateFrame(stateFrames.first)
//        stateFrames.push(newFrame)
//        return newFrame
    }

    fun reset() {
        // Clear logicals from this forwarding observer on full reset
//        currentFrame().observed().forEach {
//            it.removeObserver(this)
//        }
        reset(stateFrames.last)
    }

    fun reset(frame: LogicalStateFrame) {
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

    override fun addForwardingObserver(logical: Logical<*>, observer: ForwardingLogicalObserver) {
        if (!currentFrame().isObserving(logical)) {
            logical.addObserver(this)
        }
        currentFrame().addForwardingObserver(logical, observer)
    }

    override fun removeForwardingObserver(logical: Logical<*>, observer: ForwardingLogicalObserver) {
        currentFrame().removeForwardingObserver(logical, observer)
        if (!currentFrame().isObserving(logical)) {
            logical.removeObserver(this)
        }
    }

    override fun removeForwardingObserversWhere(logical: Logical<*>, where: (ForwardingLogicalObserver) -> Boolean) {
        currentFrame().removeForwardingObserversWhere(logical, where)
        if (!currentFrame().isObserving(logical)) {
            logical.removeObserver(this)
        }
    }

    override fun valueUpdated(logical: Logical<*>) {
        // forward to the top frame with added transient state (Controller)
        currentFrame().valueUpdated(logical, controller!!)
    }

    override fun parentUpdated(logical: Logical<*>) {
        // forward to the top frame with added transient state (Controller)
        currentFrame().parentUpdated(logical, controller!!)
    }

}

/**
 * NOTE: this class is deprecated and the "stack of frames" functionality is no longer functioning.
 * To be removed soon.
 *
 * A [LogicalStateFrame] captures a logical state corresponding to currently relevant
 * observers of changes of logical variables. It roughly corresponds to a bunch of event
 * that update a set of such observers. By dropping a frame the processing state
 * can be reverted.
 *
 * The main (and only) example of such event is an occurrence activation and the
 * corresponding observer reactivates occurrence on changes of logical variables
 * used as its arguments.
 *
 * @author Fedor Isakov
 */

@Deprecated("to be removed")
class LogicalStateFrame : LogicalStateObservable, ForwardingLogicalObserver
{
    // FIXME use Vector instead of ConsList
//    private var observers: PersMap<Id<Logical<*>>, PersList<LogicalObserver>> = Maps.of()

    private val observers = IdentityHashMap<Logical<*>, ArrayList<ForwardingLogicalObserver>>()

//    constructor(prototype: StateFrame) : this() {
//        this.observers = prototype.observers
//    }

    override fun addForwardingObserver(logical: Logical<*>, observer: ForwardingLogicalObserver) {
//        val logicalId = Id(logical)
//        this.observers = observers.assoc(logicalId,
//            observers[logicalId]?.prepend(observer) ?: Lists.of(observer))
        observers.getOrPut(logical) { arrayListOf() }.add(observer)
    }

    override fun removeForwardingObserver(logical: Logical<*>, observer: ForwardingLogicalObserver) {
//        val logicalId = Id(logical)
//        observers[logicalId]?.let {
//            this.observers = observers.assoc(logicalId, it.remove(observer)!!)
//        }
        observers[logical]?.apply {
            removeAll(singleton(observer))
            if (isEmpty()) observers.remove(logical)
        }
    }

    override fun removeForwardingObserversWhere(logical: Logical<*>, where: (ForwardingLogicalObserver) -> Boolean) {
        observers[logical]?.apply {
            removeIf(where)
            if (isEmpty()) observers.remove(logical)
        }
    }

    fun observed(): Sequence<Logical<*>> = observers.keys.asSequence()
//        observers.keys().asSequence().map { it.wrapped }

    fun isObserving(logical: Logical<*>) = observers.containsKey(logical)

    override fun valueUpdated(logical: Logical<*>, controller: Controller) {
        observers[logical]?.let { list ->
            for (observer in ArrayList(list)) {
                observer.valueUpdated(logical, controller)
            }
        }
    }

    override fun parentUpdated(logical: Logical<*>, controller: Controller) {
        observers[logical]?.let { list ->
            for (observer in ArrayList(list)) {
                observer.parentUpdated(logical, controller)
            }
        }
    }

}