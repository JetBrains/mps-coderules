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

/**
 * Ensures important contract of incremental algorithm.
 *
 * Contract states that arguments of principal [Occurrence]s
 * must be immutable, that is, logicals can't be unified
 * with either ground or free other logicals.
 */
internal class LogicalBindObserverDispatcher : PrincipalObserverDispatcher {

    private var receiver: ObserverTriggeredHandler = { false }

    private val observing: HashMap<Int, LogicalBindObserver> = hashMapOf()
    private val triggered: HashSet<Int> = hashSetOf()

    override fun toString(): String =
        "${javaClass.name}(observed: ${observing.size}, triggered: ${triggered.size})"

    override fun setTriggerReceiver(receiver: ObserverTriggeredHandler) { this.receiver = receiver }

    override fun clearTriggerReceiver() { receiver = { false } }

    override fun onActivated(occ: Occurrence, observable: LogicalStateObservable) {
        if (observing.containsKey(occ.identity)) return

        LogicalBindObserver(this, occ, observable).let {
            if (it.observes) {
                observing[occ.identity] = it
            }
        }
    }

    override fun onInvalidated(occ: Occurrence, observable: LogicalStateObservable) {
        // NB: works between incremental sessions only if this instance is preserved between them
        observing.remove(occ.identity)?.removeObservers(observable)
    }

    override fun isEmpty(): Boolean = triggered.isEmpty() //&& observing.isEmpty()

    override fun isObserving(occ: Occurrence): Boolean = observing.containsKey(occ.identity)

    override fun isTriggered(occ: Occurrence): Boolean = triggered.contains(occ.identity)

    override fun removeTriggered(occ: Occurrence): Boolean = triggered.remove(occ.identity)


    fun onTrigger(source: Occurrence, logical: Logical<*>) {
        observing.remove(source.identity) // logical observers are already removed
        if (!receiver(source)) {
            // if receiver didn't accept occurrence,
            //  then remember it for later requests
            triggered.add(source.identity)
        }
    }

    private inner class LogicalBindObserver(
        private val logicalDispatcher: LogicalBindObserverDispatcher,
        val source: Occurrence,
        observable: LogicalStateObservable
    ): ForwardingLogicalObserver {

        private val observed: MutableSet<Logical<*>> = hashSetOf()

        init {
            for (unboundLogical in source.usedUnboundLogicals()) {
                observe(unboundLogical, observable)
            }
        }

        private fun observe(arg: Logical<*>, observable: LogicalStateObservable) {
            if (!observed.contains(arg)) {
                observable.addForwardingObserver(arg, this)
                observed.add(arg)
            }
        }

        fun removeObservers(observable: LogicalStateObservable) {
            for (logical in observed) {
                observable.removeForwardingObserver(logical, this)
            }
            observed.clear()
        }

        val observes: Boolean = observed.isNotEmpty()


        override fun valueUpdated(logical: Logical<*>, controller: Controller) = onUpdated(logical, controller)

        override fun parentUpdated(logical: Logical<*>, controller: Controller) = onUpdated(logical, controller)

        private fun onUpdated(logical: Logical<*>, controller: Controller) {
            removeObservers(controller.logicalStateObservable())
            logicalDispatcher.onTrigger(source, logical)
        }
    }



    private fun Occurrence.removeContractObservers(observable: LogicalStateObservable) {
        for (observedLogical in this.usedUnboundLogicals()) {
            observable.removeForwardingObserversWhere(observedLogical) { observer ->
                observer is LogicalBindObserver && observer.source.identity == this.identity
            }
        }
    }
}


internal fun Occurrence.usedUnboundLogicals(): Set<Logical<*>> {
    val unique = hashSetOf<Logical<*>>()
    for (arg in arguments) {

        val argLogicals = when (arg) {
            is Logical<*> ->
                if (!arg.isBound) listOf(arg)
                else when(val value = arg.findRoot().value()) {
                    is Term -> value.unboundLogicals()
                    else -> emptyList()
                }
            is Term -> arg.unboundLogicals()
            else -> emptyList()
        }

        unique.addAll(argLogicals)
    }
    return unique
}
