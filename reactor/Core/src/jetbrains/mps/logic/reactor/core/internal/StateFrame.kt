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
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.Dispatcher.DispatchingFront
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.util.*

/**
 * A StateFrame captures a processing state corresponding to an event that consists
 * of an activated constraint occurrence followed by a series of triggered rule
 * matches.
 *
 * Each triggered match may result in one or more constraint occurrences
 * to be deactivated/terminated.
 *
 * An activated or deactivated constraint occurrence updates the dispatching front --
 * an object that maintains a search tree for possible rule matches. 
 * 
 * @author Fedor Isakov
 */

internal class StateFrame constructor() : LogicalObserver
{
    private var observers: PersMap<Id<Logical<*>>, ConsList<LogicalObserver>> = Maps.of()

    constructor(prototype: StateFrame) : this() {
        this.observers = prototype.observers
    }

    fun destroy() {
        // TODO remove observers

    }

    fun addForwardingObserver(logical: Logical<*>, observer: LogicalObserver) {
        val logicalId = Id(logical)
        this.observers = observers.put(logicalId,
            observers[logicalId]?.prepend(observer) ?: cons(observer))
    }

    fun removeForwardingObserver(logical: Logical<*>, observer: LogicalObserver) {
        val logicalId = Id(logical)
        observers[logicalId]?.let {
            this.observers = observers.put(logicalId, it.remove(observer))
        }
    }

    fun isObserving(logical: Logical<*>) =
        observers[Id(logical)] != null

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