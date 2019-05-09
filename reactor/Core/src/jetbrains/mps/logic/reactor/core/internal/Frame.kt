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

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Map
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.core.FrameObservable
import jetbrains.mps.logic.reactor.core.LogicalObserver
import jetbrains.mps.logic.reactor.core.addObserver
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.util.Id
import jetbrains.mps.logic.reactor.util.cons
import jetbrains.mps.logic.reactor.util.remove
import java.util.*

internal class Frame: LogicalObserver, FrameObservable {

    val stack: FrameStack

    val store: Store

    private var observers: Map<Id<Logical<*>>, ConsList<(FrameObservable) -> LogicalObserver>>

    constructor(stack: FrameStack) {
        this.stack = stack
        this.store = Store() { stack.current }
        this.observers = Maps.of()
    }

    constructor(stack: FrameStack, prev: Frame) {
        this.stack = stack
        this.store = Store(prev.store) { stack.current }
        this.observers = prev.observers
    }

    constructor(stack: FrameStack, storeView: StoreView) {
        this.stack = stack
        this.store = Store(storeView) { stack.current }
        this.observers = Maps.of()
    }

    override fun storeObserver() = store

    override fun addObserver(logical: Logical<*>, obs: (FrameObservable) -> LogicalObserver) {
        val logicalId = Id(logical)
        if (!observers.containsKey(logicalId)) {
            stack.addObserver(logical)
        }
        this.observers = observers.put(logicalId,
            observers[logicalId]?.prepend(obs) ?: cons(obs))
    }

    override fun removeObserver(logical: Logical<*>, obs: (FrameObservable) -> LogicalObserver) {
        val logicalId = Id(logical)
        observers[logicalId].remove(obs)?.let { newList ->
            this.observers = observers.put(logicalId, newList)
            if (newList.isEmpty) {
                stack.removeObserver(logical)
            }
        }
    }

    override fun valueUpdated(logical: Logical<*>) {
        observers[Id(logical)]?.let { list ->
            for (obs in list) {
                obs(this).valueUpdated(logical)
            }
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        observers[Id(logical)]?.let { list ->
            for (obs in list) {
                obs(this).parentUpdated(logical)
            }
        }
    }

}

internal class FrameStack(storeView: StoreView?) : LogicalObserver {

    var current: Frame

    val observing = HashSet<Id<Logical<*>>>()

    init {
        this.current = if (storeView != null) Frame(this, storeView) else Frame(this)
    }

    fun push(): Frame {
        val frame = Frame(this, current)
        this.current = frame
        return frame
    }

    fun reset(frame: Frame): Unit {
        this.current = frame
    }

    fun addObserver(logical: Logical<*>) {
        val token = Id(logical)
        if (!observing.contains(token)) {
            logical.addObserver(this)
            observing.add(token)
        }
    }

    fun removeObserver(logical: Logical<*>) {
        // NOP
        // yes, keep listening, the updates are still filtered down the stream
    }

    override fun valueUpdated(logical: Logical<*>) {
        current.valueUpdated(logical)
    }

    override fun parentUpdated(logical: Logical<*>) {
        current.parentUpdated(logical)
    }

}
