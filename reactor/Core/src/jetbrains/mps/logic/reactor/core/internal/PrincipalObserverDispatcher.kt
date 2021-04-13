/*
 * Copyright 2014-2020 JetBrains s.r.o.
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

import jetbrains.mps.logic.reactor.core.Controller
import jetbrains.mps.logic.reactor.core.ForwardingLogicalObserver
import jetbrains.mps.logic.reactor.core.LogicalStateObservable
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.unification.Term


typealias ObserverTriggeredHandler = (Occurrence) -> Boolean

interface PrincipalObserverDispatcher {

    fun onActivated(occ: Occurrence, observable: LogicalStateObservable)
    fun onInvalidated(occ: Occurrence, observable: LogicalStateObservable)

    fun setTriggerReceiver(receiver: ObserverTriggeredHandler)
    fun clearTriggerReceiver()
    fun isObserving(occ: Occurrence): Boolean
    fun isTriggered(occ: Occurrence): Boolean
    fun removeTriggered(occ: Occurrence): Boolean

    fun isEmpty(): Boolean
    fun isNotEmpty() = !isEmpty()

    companion object EMPTY : PrincipalObserverDispatcher {
        override fun onActivated(occ: Occurrence, observable: LogicalStateObservable) { }
        override fun onInvalidated(occ: Occurrence, observable: LogicalStateObservable) { }
        override fun setTriggerReceiver(receiver: ObserverTriggeredHandler) { }
        override fun clearTriggerReceiver() { }
        override fun isEmpty(): Boolean = true
        override fun isObserving(occ: Occurrence): Boolean = false
        override fun isTriggered(occ: Occurrence): Boolean = false
        override fun removeTriggered(occ: Occurrence): Boolean = false
    }
}
