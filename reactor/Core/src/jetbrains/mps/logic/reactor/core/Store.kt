/*
 * Copyright 2014-2017 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.unification.Term
import jetbrains.mps.logic.reactor.util.*
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Set as PersSet
import com.github.andrewoma.dexx.collection.Vector as PersVector

/**
 * @author Fedor Isakov
 */

fun ConstraintOccurrence.isStored(): Boolean =
    // TODO: superfluous cast
    (this as StoreItem).stored

fun ConstraintOccurrence.isAlive(): Boolean =
    // TODO: superfluous cast
    (this as StoreItem).alive

interface StoreItem {

    var alive: Boolean

    var stored: Boolean

    fun terminate() 

}

interface StoreKeeper {

    fun store(): Store

    fun addObserver(logical: Logical<*>, obs: (StoreKeeper) -> LogicalObserver)

    fun removeObserver(logical: Logical<*>, obs: (StoreKeeper) -> LogicalObserver)

}

/**
 * TODO: make this class persistent.
 */
class Store : LogicalObserver {

    val currentFrame: () -> StoreKeeper

    var symbol2occurrences: PersMap<ConstraintSymbol, IdHashSet<ConstraintOccurrence>>

    var logical2occurrences: PersMap<IdWrapper<Logical<*>>, IdHashSet<ConstraintOccurrence>>

    constructor(copyFrom: Store, currentFrame: () -> StoreKeeper) {
        this.currentFrame = currentFrame
        this.symbol2occurrences = copyFrom.symbol2occurrences
        this.logical2occurrences = copyFrom.logical2occurrences
    }

    constructor(copyFrom: StoreView, currentFrame: () -> StoreKeeper) {
        this.currentFrame = currentFrame
        this.symbol2occurrences = copyFrom.constraintSymbols()
            .fold(Maps.of()) { map, sym -> map.put(sym, IdHashSet(copyFrom.occurrences(sym))) }

        var l2o = Maps.of<IdWrapper<Logical<*>>, IdHashSet<ConstraintOccurrence>>()
        var v2o = Maps.of<Any, IdHashSet<ConstraintOccurrence>>()

        copyFrom.allOccurrences().forEach { occ ->
            occ.arguments().forEach { arg ->
                when (arg) {
                    is Logical<*>   ->  l2o = l2o.put(IdWrapper(arg.findRoot()), l2o[IdWrapper(arg.findRoot())]?.add(occ) ?: singletonIdSet(occ))
                    is Any          ->  v2o = v2o.put(arg, v2o[arg]?.add(occ) ?: singletonIdSet(occ))
                }
            }

        }

        this.logical2occurrences = l2o
    }

    constructor(currentFrame: () -> StoreKeeper) {
        this.currentFrame = currentFrame
        this.symbol2occurrences = Maps.of()
        this.logical2occurrences = Maps.of()
    }

    override fun valueUpdated(logical: Logical<*>) {
    }

    override fun parentUpdated(logical: Logical<*>) {
        // TODO: should we care about the order in which occurrences are stored?
        val logicalId = IdWrapper(logical)
        logical2occurrences[logicalId]?.let { toMerge ->
            val rootId = IdWrapper(logical.findRoot())
            var newSet = logical2occurrences[rootId] ?: emptyIdSet()
            for (log in toMerge) {
                newSet = newSet.add(log)
            }
            this.logical2occurrences = logical2occurrences.remove(logicalId).put(rootId, newSet)
            assert(logical2occurrences.containsKey(rootId))
            assert(!logical2occurrences.containsKey(logicalId))
        }
    }

    fun store(occ: ConstraintOccurrence) {
        val symbol = occ.constraint().symbol()

        this.symbol2occurrences = symbol2occurrences.put(symbol,
            symbol2occurrences[symbol]?.add(occ) ?: singletonIdSet(occ))

        for (arg in occ.arguments()) {
            val value = if (arg is Logical<*> && arg.isBound) arg.findRoot().value() else arg
            when (value) {
                is Logical<*>   -> {
                    // free logical
                    val argId = IdWrapper(value.findRoot())
                    this.logical2occurrences = logical2occurrences.put(argId,
                        logical2occurrences[argId]?.add(occ) ?: singletonIdSet(occ))
                    currentFrame().addObserver(value) { frame -> frame.store() }
                }
            }
        }

        // TODO: superfluous cast
        (occ as StoreItem).stored = true
    }

    fun discard(occ: ConstraintOccurrence, profiler: Profiler? = null, tag: String? = null): Unit {
        val symbol = occ.constraint().symbol()

        symbol2occurrences[symbol]?.remove(occ)?.let { newList ->
            this.symbol2occurrences = symbol2occurrences.put(symbol, newList)
        }

        for (arg in occ.arguments()) {
            when (arg) {
                is Logical<*>   -> {
                    val argId = IdWrapper(arg.findRoot())
                    logical2occurrences[argId]?.remove(occ)?.let { newList ->
                        this.logical2occurrences = if (newList.isEmpty) {
                            logical2occurrences.remove(argId)

                        } else {
                            logical2occurrences.put(argId, newList)
                        }
                    }
                }
            }
        }

        // TODO: superfluous cast
        (occ as StoreItem).stored = false
        occ.terminate()
    }

    fun allOccurrences(): Sequence<ConstraintOccurrence> {
        return symbol2occurrences.values().flatten().filter { co -> co.isStored() }.asSequence()
    }

    fun view(): StoreView = StoreViewImpl(allOccurrences())

    private fun Term.withConstraint(cst: Constraint): Term = Function(CONSTRAINT, listOf(Function(cst.symbol(), emptyList()), this))

    private companion object {

        private val CONSTRAINT = object : Any() {
            override fun toString(): String = "CONSTRAINT"
        }

    }

}

private class StoreViewImpl(occurrences: Sequence<ConstraintOccurrence>) : StoreView {

    val allOccurrences = occurrences.toSet()

    val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

    override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

    override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

    override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
        allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

}
