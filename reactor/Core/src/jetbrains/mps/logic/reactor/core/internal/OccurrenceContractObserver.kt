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
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.unification.Term
import kotlin.collections.HashSet


/**
 * Ensures important contract of incremental algorithm.
 *
 * Contract states that arguments of principal [Occurrence]s
 * must be immutable, that is, logicals can't be unified
 * with either ground or free other logicals.
 */
internal class OccurrenceContractObserver(private val observable: LogicalStateObservable, override val ispec: IncrementalSpec): IncrSpecHolder {
    private val observers: HashMap<Int, UnmodifiableLogicalObserver> = hashMapOf()

    fun onActivated(occ: Occurrence) {
        if (occ.isPrincipal) {
            observers[occ.identity] = UnmodifiableLogicalObserver(occ, observable)
        }
    }

    fun onDiscarded(occ: Occurrence) {
        // NB: works between incremental sessions only if this instance is preserved between them
        // observers.remove(occ.identity)?.removeObservers(observable)

        occ.removeContractObservers(observable)
        observers.remove(occ.identity)
    }
}

internal fun Occurrence.removeContractObservers(observable: LogicalStateObservable) {
    for (observedLogical in this.usedUnboundLogicals()) {
        observable.removeForwardingObserversWhere(observedLogical) { observer ->
            observer is UnmodifiableLogicalObserver && observer.source.identity == this.identity
        }
    }
}

internal class UnmodifiableLogicalObserver(val source: Occurrence, observable: LogicalStateObservable): ForwardingLogicalObserver {
    private val observed: HashSet<Logical<*>> = HashSet()

    private fun observe(arg: Logical<*>, observable: LogicalStateObservable) {
        if (!observed.contains(arg)) {
            observable.addForwardingObserver(arg, this)
            observed.add(arg)
        }
    }

    init {
        for (unboundLogical in source.usedUnboundLogicals()) {
            observe(unboundLogical, observable)
        }
    }

    fun removeObservers(observable: LogicalStateObservable) {
        for (logical in observed) {
            observable.removeForwardingObserver(logical, this)
        }
        observed.clear()
    }

    override fun valueUpdated(logical: Logical<*>, controller: Controller) = doCheckContract(logical, controller)

    override fun parentUpdated(logical: Logical<*>, controller: Controller) = doCheckContract(logical, controller)

    private fun doCheckContract(logical: Logical<*>, controller: Controller) =
        checkContract(false) {
            "$logical can't be unified because it's used in principal occurrence $source"
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


