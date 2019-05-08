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
import org.jetbrains.kotlin.utils.mapToIndex


internal class MatchHistory() {

    class Chunk(val match: RuleMatch, val id: Int, headJustifications: TIntSet) {
        data class Entry(val occ: Occurrence, val isDiscarded: Boolean = false)

        var occurrences: MutableList<Entry> = mutableListOf()
        val justifications = headJustifications.also { it.add(id) }
    }

    class RemoveChunkIterator(val it: MutableListIterator<Chunk>): Iterator<Chunk> by it {
        fun remove() = it.remove()
    }

    fun removeIterator() = RemoveChunkIterator(hist.listIterator())


    fun logMatch(match: RuleMatchImpl) {
        // If the set of justifications isn't empty, then we deal with principal constraint
        val justs = match.headJustifications()
        if (!justs.isEmpty) {
            val newChunk = Chunk(match, nextChunkId++, justs)
            pos.add(newChunk)
            current = newChunk
        }

        // Log discards
        match.forEachReplaced {occ ->
//            this.dispatchFringe = dispatchFringe.contract(occ)
            current.occurrences.add(Chunk.Entry(occ, true))
            frameStack.current.store.discard(occ)
        }
    }
    fun logOccurence(occ: Occurrence) {
        current.occurrences.add(Chunk.Entry(occ))
        frameStack.current.store.store(occ)
    }


    data class HistoryPos(val frame: Frame, val chunk: Chunk, val occsRetained: Int = 0)

    // FrameStack API: currentFrame, push, reset
    fun currentFrame() = HistoryPos(frameStack.current, current, current.occurrences.size)
    fun push() = frameStack.push()
    // Throw away recently added chunks and reset store accordingly
    // NB: not checking that chunks are actually recently added
    fun reset(timepoint: HistoryPos) {
        frameStack.reset(timepoint.frame)

        while (timepoint.chunk != current && pos.hasPrevious()) {
            pos.remove()
            current = pos.previous()
        }
        current.occurrences = current.occurrences.take(timepoint.occsRetained) as MutableList<Chunk.Entry>
    }

    fun rollTo(chunk: Chunk) {
        while (chunk != current && pos.hasNext()) {
            current = pos.next()
            rollChunk()
        }
    }
    private fun rollChunk() {
        // 'apply' all occurrences of current chunk to the store
        for (occSpec in current.occurrences) {
            if (occSpec.isDiscarded) {
                frameStack.current.store.discard(occSpec.occ)
            } else {
                frameStack.current.store.store(occSpec.occ)
            }
        }
    }

    // Reset only store & history position, don't modify history
    fun resetStore() {
        frameStack.reset(Frame(frameStack))
        pos = hist.listIterator()
    }

    // fixme: does belong to here?
//    fun resetOrder() { order = hist.mapToIndex() }


    private val hist: MutableList<Chunk> = mutableListOf()
//    private var order: Map<Chunk, Int> = emptyMap()

    // FIXME: add framestack to the class
    // is it created along with MatchHistory? should be.
    private val frameStack: FrameStack = FrameStack(null) //FIXME: ?provide storeView at construction

    private var pos: MutableListIterator<Chunk> = hist.listIterator()
    // FIXME: provide initial chunk at construction
    private lateinit var current: Chunk

    private var nextChunkId: Int = 0;


}

private fun RuleMatch.headJustifications(): TIntSet {
    val res: TIntSet = TIntHashSet()
    this.matchHeadKept().forEach { it.justifications()?.let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications()?.let { res.addAll(it) } }
    return res
//    return if (res.isEmpty) null else res
}

