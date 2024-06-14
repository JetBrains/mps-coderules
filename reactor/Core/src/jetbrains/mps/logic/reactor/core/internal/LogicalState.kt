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
import jetbrains.mps.logic.reactor.logical.LogicalObserver
import java.util.*
import java.util.Collections.singleton

/**
 * Captures the state of logical variables in respect to observers.
 * Serves as a middle layer between logical variables and observers, the latter being notified of changes in the
 * state in context of the currenly active controller.
 * Keeps a reference to [Controller] instance, which is used to notify the observers.
 */

class LogicalState : LogicalStateObservable, LogicalObserver
{
    private val observers = IdentityHashMap<Logical<*>, ArrayList<Reactivatable>>()

    private var controller: Controller? = null

    internal fun setController(controller: Controller) {
        assert(this.controller === null)
        this.controller = controller
    }

    internal fun clearController(currController: Controller) : LogicalState {
        assert(this.controller == currController)
        this.controller = null
        return this
    }

    override fun addReactivatable(logical: Logical<*>, reactivatable: Reactivatable) {
        if (!observers.containsKey(logical)) {
            logical.addObserver(this)
        }
        observers.getOrPut(logical) { arrayListOf() }.add(reactivatable)
    }

    override fun removeReactivatable(logical: Logical<*>, reactivatable: Reactivatable) {
        observers[logical]?.apply {
            removeAll(singleton(reactivatable))
            if (isEmpty()) observers.remove(logical)
        }
        if (!observers.containsKey(logical)) {
            logical.removeObserver(this)
        }
    }

    override fun valueUpdated(logical: Logical<*>) {
        observers[logical]?.let { list ->
            for (observer in ArrayList(list)) {
                observer.reactivate(controller!!)
            }
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        observers[logical]?.let { list ->
            for (observer in ArrayList(list)) {
                observer.reactivate(controller!!)
            }
        }
    }

}
