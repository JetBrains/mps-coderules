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
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.StoreView
import java.util.*


interface MatchHistory {
    data class Chunk(val match: RuleMatch, val id: Int, val justifications: TIntSet) {
        data class Entry(val occ: Occurrence, val isDiscarded: Boolean = false)

        var occurrences: MutableList<Entry> = mutableListOf()
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

    fun logMatch(match: RuleMatch)
    fun logOccurence(occ: Occurrence)

    fun current(): Chunk
    fun currentPos(): HistoryPos
    fun push()
    fun reset(timepoint: HistoryPos)

    fun rollTo(futurePos: HistoryPos)

    companion object {
        fun getMatchHistory(chunkIdSeed: Int = 0): MatchHistory = MatchHistoryImpl(chunkIdSeed)
    }
}


internal class MatchHistoryImpl(chunkIdSeed: Int): MatchHistory {

    override fun removeIterator() = MatchHistory.RemoveChunkIterator(hist.listIterator())

    // Reset only store & history position, don't modify history
    override fun resetStore() {
        frameStack.reset(Frame(frameStack))
        pos = hist.listIterator()
    }

    override fun storeView(): StoreView = frameStack.current.store.view()


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
            frameStack.current.store.discard(occ)
        }
    }

    override fun logOccurence(occ: Occurrence) {
        current.occurrences.add(MatchHistory.Chunk.Entry(occ))
        frameStack.current.store.store(occ)
    }


    private data class HistoryPosImpl(val frame: Frame, val chunk: MatchHistory.Chunk, val occsRetained: Int = 0) : MatchHistory.HistoryPos {
        override fun chunk(): MatchHistory.Chunk = chunk
        override fun occsRetained(): Int = occsRetained
    }

    // FrameStack API: currentFrame/currentPos, push, reset
    fun currentFrame() = frameStack.current

    override fun current(): MatchHistory.Chunk = current

    override fun currentPos(): MatchHistory.HistoryPos = HistoryPosImpl(frameStack.current, current, current.occurrences.size)

    override fun push(): Unit { frameStack.push() }

    // Throw away recently added chunks and reset store accordingly
    // NB: not checking that chunks are actually recently added
    override fun reset(timepoint: MatchHistory.HistoryPos) {
        val tp = timepoint as HistoryPosImpl
        frameStack.reset(tp.frame)

        while (tp.chunk != current && pos.hasPrevious()) {
            current = pos.previous()
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
    fun rollTo(chunk: MatchHistory.Chunk) {
        while (current != chunk && pos.hasNext()) {
            current = pos.next()
            rollOccurences(current.occurrences)
        }
    }

    private fun rollOccurences(occSpecs: Iterable<MatchHistory.Chunk.Entry>) {
        // 'apply' all occurrences of current chunk to the store
        for (occSpec in occSpecs) {
            if (occSpec.isDiscarded) {
                frameStack.current.store.discard(occSpec.occ)
            } else {
                frameStack.current.store.store(occSpec.occ)
            }
        }
    }

    // fixme: does belong to here?
//    fun resetOrder() { order = hist.mapToIndex() }


    private val hist: MutableList<MatchHistory.Chunk> = LinkedList<MatchHistory.Chunk>()
//    private var order: Map<Chunk, Int> = emptyMap()
    private val frameStack: FrameStack = FrameStack(null)

    // FIXME: provide initial chunk? possibly initialized from StoreView, with empty justifications
    private lateinit var current: MatchHistory.Chunk
    private var pos: MutableListIterator<MatchHistory.Chunk> = hist.listIterator()

    private var nextChunkId: Int = chunkIdSeed;


}

private fun RuleMatch.headJustifications(): TIntSet {
    val res: TIntSet = TIntHashSet()
    this.matchHeadKept().forEach { it.justifications()?.let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications()?.let { res.addAll(it) } }
    return res
//    return if (res.isEmpty) null else res
}

