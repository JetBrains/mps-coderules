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

import jetbrains.mps.logic.reactor.core.Justs
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.justsOf
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.util.Id
import java.util.*
import kotlin.collections.ArrayList


interface MatchJournal : MutableIterable<MatchJournal.Chunk> {

    fun logMatch(match: RuleMatch)
    fun logActivation(occ: Occurrence)

    fun currentPos(): Pos
    fun resetPos()
    fun reset(pastPos: Pos)
    fun replay(futurePos: Pos)

    fun view(): View
    fun storeView(): StoreView


    data class View(val chunks: List<Chunk>, val nextChunkId: Int)

    data class Chunk(val match: RuleMatch, val id: Int, val justifications: Justs) : Pos {
        data class Entry(val occ: Occurrence, val isDiscarded: Boolean = false) {
            override fun toString() = (if (isDiscarded) '-' else '+') + occ.toString()
        }

        var occurrences: MutableList<Entry> = mutableListOf()

        override fun toString() = "(id=$id, $justifications, ${match.rule().uniqueTag()}, $occurrences)"

        override fun chunk(): Chunk = this
        override fun entriesInChunk(): Int = occurrences.size
    }

    interface Pos {
        fun chunk(): Chunk
        fun entriesInChunk(): Int
    }
}


internal open class MatchJournalImpl(view: MatchJournal.View?): MatchJournal {

    protected val hist: MutableList<MatchJournal.Chunk>
    protected var nextChunkId: Int

    init {
        if (view == null) {
            hist = LinkedList<MatchJournal.Chunk>()
            nextChunkId = 0
        } else {
            hist = LinkedList<MatchJournal.Chunk>(view.chunks)
            nextChunkId = view.nextChunkId
        }
    }

    constructor(chunkIdSeed: Int) : this(null) {
        nextChunkId = chunkIdSeed
    }

    // FIXME: provide initial chunk? possibly initialized from StoreView, with empty justifications
    protected lateinit var current: MatchJournal.Chunk
    protected var pos: MutableListIterator<MatchJournal.Chunk> = hist.listIterator()


    override fun iterator() = hist.iterator()


    override fun logMatch(match: RuleMatch) {
        val m = match as RuleMatchImpl
        // If the set of justifications isn't empty, then we deal with principal constraint
        val justs = match.headJustifications()
        if (!justs.isEmpty) {
            justs.add(nextChunkId)
            val newChunk = MatchJournal.Chunk(match, nextChunkId, justs)
            pos.add(newChunk)

            ++nextChunkId
            current = newChunk
        }

        // Log discards
        match.forEachReplaced {occ ->
            current.occurrences.add(MatchJournal.Chunk.Entry(occ, true))
            occ.terminate()
        }
    }

    override fun logActivation(occ: Occurrence) {
        current.occurrences.add(MatchJournal.Chunk.Entry(occ))
        occ.revive()
    }


    override fun currentPos(): MatchJournal.Pos = current

    // fixme: unclear, whether this makes sense here, in "pure" journal without store? along with reset and replay?
    override fun resetPos() { pos = hist.listIterator() }

    override fun reset(pastPos: MatchJournal.Pos) {
        while (pos.hasPrevious()) {
            current = pos.previous()
            if (current === pastPos.chunk()) {
                current.occurrences = current.occurrences.take(pastPos.entriesInChunk()) as MutableList<MatchJournal.Chunk.Entry>
                return
            }
            pos.remove()
        }
        throw IllegalStateException()
    }

    override fun replay(futurePos: MatchJournal.Pos) {
        while (pos.hasNext()) {
            current = pos.next()
            if (futurePos.chunk() === current) {
                replayOccurrences(current.occurrences.take(futurePos.entriesInChunk()))
                return
            }
            replayOccurrences(current.occurrences)
        }
        throw IllegalStateException()
    }

    private fun replayOccurrences(occSpecs: Iterable<MatchJournal.Chunk.Entry>) =
        occSpecs.forEach { if (it.isDiscarded) it.occ.terminate() else it.occ.revive() }


    override fun view() = MatchJournal.View(ArrayList(hist), nextChunkId)

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
            if (chunk === current)
                return set.map { it.wrapped }.asSequence()
        }
        throw IllegalStateException()
    }


    private class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

        val allOccurrences = occurrences.toSet()

        val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

        override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

        override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

        override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
            allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

    }
}

fun MatchJournal.justs() = this.currentPos().chunk().justifications


private fun RuleMatch.headJustifications(): Justs {
    val res: Justs = justsOf()
    this.matchHeadKept().forEach { it.justifications().let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications().let { res.addAll(it) } }
    return res
}

