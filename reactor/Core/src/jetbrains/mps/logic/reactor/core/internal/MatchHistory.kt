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

import gnu.trove.set.TIntSet
import gnu.trove.set.hash.TIntHashSet
import jetbrains.mps.logic.reactor.core.Dispatcher
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.util.Id
import java.util.*
import kotlin.collections.ArrayList


interface MatchHistory {
    data class View(val chunks: List<Chunk>, val nextChunkId: Int)


    data class Chunk(val match: RuleMatch, val id: Int, val justifications: TIntSet) {
        data class Entry(val occ: Occurrence, val isDiscarded: Boolean = false) {
            override fun toString() = (if (isDiscarded) '-' else '+') + occ.toString()
        }

        var occurrences: MutableList<Entry> = mutableListOf()

        override fun toString() = "(id=$id, $justifications, ${match.rule().tag()}, $occurrences)"
    }

    class RemoveChunkIterator(val it: MutableListIterator<Chunk>): Iterator<Chunk> by it {
        fun remove() = it.remove()
    }

    interface HistoryPos {
        fun chunk(): Chunk
        fun occsRetained(): Int
    }


    fun removeIterator(): RemoveChunkIterator
    fun resetStore()
    fun storeView(): StoreView
    fun view(): MatchHistory.View

    fun logMatch(match: RuleMatch)
    fun logOccurrence(occ: Occurrence)

    fun current(): Chunk
    fun currentPos(): HistoryPos
    fun testPush(): Unit
    fun reset(timepoint: HistoryPos)

    fun rollTo(futurePos: HistoryPos)
    fun rollTo(chunk: Chunk)

    companion object {
        fun fromSeed(disp: Dispatcher, chunkIdSeed: Int = 0): MatchHistory = MatchHistoryImpl(ProcessingStateImpl(disp), chunkIdSeed)
        fun fromView(disp: Dispatcher, view: MatchHistory.View): MatchHistory = MatchHistoryImpl(ProcessingStateImpl(disp), view)
    }
}


internal class MatchHistoryImpl(val state: ProcessingStateImpl, view: MatchHistory.View?): MatchHistory {

    private val hist: MutableList<MatchHistory.Chunk>
    private var nextChunkId: Int

    //    private var order: Map<Chunk, Int> = emptyMap()

    init {
        if (view == null) {
            hist = LinkedList<MatchHistory.Chunk>()
            nextChunkId = 0
        } else {
            hist = LinkedList<MatchHistory.Chunk>(view.chunks)
            nextChunkId = view.nextChunkId
        }
    }

    constructor(state: ProcessingStateImpl, chunkIdSeed: Int) : this(state, null) {
        nextChunkId = chunkIdSeed
    }

    // FIXME: provide initial chunk? possibly initialized from StoreView, with empty justifications
    private lateinit var current: MatchHistory.Chunk
    private var pos: MutableListIterator<MatchHistory.Chunk> = hist.listIterator()


    override fun removeIterator() = MatchHistory.RemoveChunkIterator(hist.listIterator())

    // Reset only store & history position, don't modify history
    override fun resetStore() {
        state.reset()
        pos = hist.listIterator()
    }

    override fun storeView(): StoreView = StoreViewImpl(allOccurrences())

    private fun allOccurrences(): Sequence<Occurrence> {
        // the following lop doesn't handle this case of starting pos, when 'current' isn't valid
        if (!pos.hasPrevious())
            return emptySequence()

        val set = HashSet<Id<Occurrence>>()
        for (chunk in hist) {
            chunk.occurrences.forEach {
                if (it.isDiscarded) set.remove(Id(it.occ)) else set.add(Id(it.occ))
            }
            if (chunk == current) break
        }
        return set.map { it.wrapped }.asSequence()
    }

    override fun view() = MatchHistory.View(ArrayList(hist), nextChunkId)


    override fun logMatch(match: RuleMatch) {
        val m = match as RuleMatchImpl
        // If the set of justifications isn't empty, then we deal with principal constraint
        val justs = match.headJustifications()
        if (!justs.isEmpty) {
            justs.add(nextChunkId)
            val newChunk = MatchHistory.Chunk(match, nextChunkId, justs)
            pos.add(newChunk)

            ++nextChunkId
            current = newChunk
        }

        // Log discards
        match.forEachReplaced {occ ->
//            this.dispatchFringe = dispatchFringe.contract(occ)
            current.occurrences.add(MatchHistory.Chunk.Entry(occ, true))
            occ.terminate()
        }
    }

    override fun logOccurrence(occ: Occurrence) {
        current.occurrences.add(MatchHistory.Chunk.Entry(occ))
        occ.revive()
    }


    private data class HistoryPosImpl(val frame: StateFrame, val chunk: MatchHistory.Chunk, val occsRetained: Int = 0) : MatchHistory.HistoryPos {
        override fun chunk(): MatchHistory.Chunk = chunk
        override fun occsRetained(): Int = occsRetained
    }

    // FrameStack API: currentFrame/currentPos, push, reset
    fun currentFrame() = state.currentFrame()

    override fun current(): MatchHistory.Chunk = current

    override fun currentPos(): MatchHistory.HistoryPos = HistoryPosImpl(state.currentFrame(), current, current.occurrences.size)

    override fun testPush() { state.push() }
    fun push() = state.push()

    // Throw away recently added chunks and reset store accordingly
    // NB: not checking that chunks are actually recently added
    override fun reset(timepoint: MatchHistory.HistoryPos) {
        val tp = timepoint as HistoryPosImpl
        state.reset(tp.frame)

        while (pos.hasPrevious()) {
            current = pos.previous()
            if (current == tp.chunk) break
            pos.remove()
        }
        current.occurrences = current.occurrences.take(tp.occsRetained) as MutableList<MatchHistory.Chunk.Entry>
    }


    override fun rollTo(futurePos: MatchHistory.HistoryPos) {
        val fp = futurePos as HistoryPosImpl
        while (pos.hasNext()) {
            current = pos.next()
            if (fp.chunk == current) {
                rollOccurences(current.occurrences.take(fp.occsRetained))
                break
            }
            rollOccurences(current.occurrences)
        }
    }

    override fun rollTo(chunk: MatchHistory.Chunk) {
        while (current != chunk && pos.hasNext()) {
            current = pos.next()
            rollOccurences(current.occurrences)
        }
    }

    private fun rollOccurences(occSpecs: Iterable<MatchHistory.Chunk.Entry>) =
        occSpecs.forEach { if (it.isDiscarded) it.occ.terminate() else it.occ.revive() }

    // fixme: does belong to here?
//    fun resetOrder() { order = hist.mapToIndex() }


    private class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

        val allOccurrences = occurrences.toSet()

        val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

        override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

        override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

        override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
            allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

    }
}

private fun RuleMatch.headJustifications(): TIntSet {
    val res: TIntSet = TIntHashSet()
    this.matchHeadKept().forEach { it.justifications()?.let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications()?.let { res.addAll(it) } }
    return res
//    return if (res.isEmpty) null else res
}

