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

import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.core.FrameObservable
import jetbrains.mps.logic.reactor.core.LogicalObserver
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.occurrence
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.util.*
import java.util.*
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Set as PersSet
import com.github.andrewoma.dexx.collection.Vector as PersVector

/**
 * @author Fedor Isakov
 */

/**
 * Constrants storeObserver.
 *
 * TODO: make this class persistent.
 */
internal class Store : LogicalObserver {

    val currentFrame: () -> FrameObservable

    var symbol2occurrences: PersMap<ConstraintSymbol, IdHashSet<Occurrence>>

    var logical2occurrences: PersMap<Id<Logical<*>>, IdHashSet<Occurrence>>

    constructor(copyFrom: Store, currentFrame: () -> FrameObservable) {
        this.currentFrame = currentFrame
        this.symbol2occurrences = copyFrom.symbol2occurrences
        this.logical2occurrences = copyFrom.logical2occurrences
    }
    
    constructor(currentFrame: () -> FrameObservable) {
        this.currentFrame = currentFrame
        this.symbol2occurrences = Maps.of()
        this.logical2occurrences = Maps.of()
    }

    override fun valueUpdated(logical: Logical<*>) {
    }

    override fun parentUpdated(logical: Logical<*>) {
        // TODO: should we care about the order in which occurrences are stored?
        val logicalId = Id(logical)
        logical2occurrences[logicalId]?.let { toMerge ->
            val rootId = Id(logical.findRoot())
            var newSet = logical2occurrences[rootId] ?: emptyIdSet()
            for (log in toMerge) {
                newSet = newSet.add(log)
            }
            this.logical2occurrences = logical2occurrences.remove(logicalId).put(rootId, newSet)
            assert(logical2occurrences.containsKey(rootId))
            assert(!logical2occurrences.containsKey(logicalId))
        }
    }

    fun store(occ: Occurrence) {
        val symbol = occ.constraint().symbol()

        this.symbol2occurrences = symbol2occurrences.put(symbol,
            symbol2occurrences[symbol]?.add(occ) ?: singletonIdSet(occ))

        for (arg in occ.arguments()) {
            // FIXME extracting the value is unnecessary here
            val value = if (arg is Logical<*> && arg.isBound) arg.findRoot().value() else arg
            when (value) {
                is Logical<*> -> {
                    // free logical
                    val argId = Id(value.findRoot())
                    this.logical2occurrences = logical2occurrences.put(argId,
                        logical2occurrences[argId]?.add(occ) ?: singletonIdSet(occ))
                    currentFrame().addObserver(value) { frame -> frame.storeObserver() }
                }
            }
        }

        occ.stored = true
    }

    fun discard(occ: Occurrence, profiler: Profiler? = null, tag: String? = null): Unit {
        val symbol = occ.constraint().symbol()

        symbol2occurrences[symbol]?.remove(occ)?.let { newList ->
            this.symbol2occurrences = symbol2occurrences.put(symbol, newList)
        }

        for (arg in occ.arguments()) {
            when (arg) {
                is Logical<*> -> {
                    val argId = Id(arg.findRoot())
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

        occ.stored = false
        occ.terminate()
    }

    fun allOccurrences(): Sequence<ConstraintOccurrence> {
        return symbol2occurrences.values().flatten().filter { co -> co.stored }.asSequence()
    }

    fun view(): StoreView = StoreViewImpl(allOccurrences())
    
}

private class StoreViewImpl(occurrences: Sequence<ConstraintOccurrence>) : StoreView {

    val allOccurrences = occurrences.toSet()

    val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

    override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

    override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

    override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
        allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

}
