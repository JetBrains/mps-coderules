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

import jetbrains.mps.logic.reactor.core.LogicalObserver
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.util.*

/**
 * A [StateFrame] captures a processing state corresponding to current relevant
 * observers of changes of logical variables. It roughly corresponds to an event
 * that updates a set of such observers. By dropping a frame the processing state
 * can be reverted.
 *
 * The main (and only) example of such event is an occurrence activation and the
 * corresponding observer reactivates occurrence on changes of logical variables
 * used as its arguments.
 *
 * @author Fedor Isakov
 */

internal class StateFrame constructor() : LogicalObserver
{
    // FIXME use Vector instead of ConsList
    private var observers: PersMap<Id<Logical<*>>, PersList<LogicalObserver>> = Maps.of()

    constructor(prototype: StateFrame) : this() {
        this.observers = prototype.observers
    }

    fun addForwardingObserver(logical: Logical<*>, observer: LogicalObserver) {
        val logicalId = Id(logical)
        this.observers = observers.assoc(logicalId,
            observers[logicalId]?.prepend(observer) ?: Lists.of(observer))
    }

    fun removeForwardingObserver(logical: Logical<*>, observer: LogicalObserver) {
        val logicalId = Id(logical)
        observers[logicalId]?.let {
            this.observers = observers.assoc(logicalId, it.remove(observer)!!)
        }
    }

    fun isObserving(logical: Logical<*>) =
        observers[Id(logical)] != null

    fun observed(): Sequence<Logical<*>> =
        observers.keys().asSequence().map { it.wrapped }

    override fun valueUpdated(logical: Logical<*>) {
        observers[Id(logical)]?.let { list ->
            for (observer in list) {
                observer.valueUpdated(logical)
            }
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        observers[Id(logical)]?.let { list ->
            for (observer in list) {
                observer.parentUpdated(logical)
            }
        }
    }

}