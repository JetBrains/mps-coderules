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
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.Id
import org.jetbrains.kotlin.utils.mapToIndex
import java.util.*
import kotlin.Comparator
import kotlin.collections.ArrayList
import kotlin.collections.HashMap


interface MatchJournal : MutableIterable<MatchJournal.Chunk> {

    fun logMatch(match: RuleMatch)
    fun logActivation(occ: Occurrence)

    fun currentPos(): Pos
    fun isCurrent(): Boolean = currentPos().chunk() == this.last()

    fun resetPos()
    fun reset(pastPos: Pos)
    fun replay(controller: Controller, futurePos: Pos)

    fun view(): View
    fun storeView(): StoreView
    fun index(): Index

    interface Index : Comparator<Pos> {
        fun activatingChunkOf(occ: Id<Occurrence>): Chunk?
    }

    data class View(val chunks: List<Chunk>, val nextChunkId: Int)

    abstract class Chunk(val match: RuleMatch, val id: Int, val justifications: Justs) : Pos()
    {
        data class Entry(val occ: Occurrence, val isDiscarded: Boolean = false) {
            override fun toString() = (if (isDiscarded) '-' else '+') + occ.toString()
        }

        fun isDescendantOf(chunkId: Int): Boolean = justifications.contains(chunkId)
        fun isTopLevel(): Boolean = justifications.size() <= 1 // this condition implies that there're no ancestor chunks

        abstract fun entriesLog(): List<Entry>
        fun activatedLog(): List<Occurrence> = entriesLog().filter { !it.isDiscarded }.map { it.occ }
        fun discardedLog(): List<Occurrence> = entriesLog().filter { it.isDiscarded }.map { it.occ }
        // Get the resulting set of activated occurrences
        fun activated(): List<Occurrence> = HashSet<Id<Occurrence>>().apply {
            entriesLog().forEach {
                if (it.isDiscarded) remove(Id(it.occ)) else add(Id(it.occ))
            }
        }.map { it.wrapped }

        override fun toString() = "(id=$id, $justifications, ${match.rule().uniqueTag()}, ${entriesLog()})"

        override fun chunk(): Chunk = this
        override fun entriesInChunk(): Int = entriesLog().size
    }

    abstract class Pos {
        abstract fun chunk(): Chunk
        abstract fun entriesInChunk(): Int

        override fun equals(other: Any?) =
            other is Pos
            && other.chunk() === chunk()
            && other.entriesInChunk() == entriesInChunk()
    }

    data class OccurrencePos(val occ: Occurrence, private val chunk: MatchJournal.Chunk, private val offset: Int): MatchJournal.Pos()
    {
        companion object {
            fun fromIndex(index: MatchJournal.Index, occ: Occurrence): OccurrencePos? {
                val idOcc = Id(occ)
                val chunk = index.activatingChunkOf(idOcc) ?: return null
                val i = chunk.entriesLog().indexOfFirst { entry ->
                    Id(entry.occ) == idOcc && !entry.isDiscarded
                }
                val offset = i + 1
                return if (offset >= 0) OccurrencePos(occ, chunk, offset) else null
            }
        }

        override fun chunk(): MatchJournal.Chunk = chunk
        override fun entriesInChunk(): Int = offset
    }

}


internal open class MatchJournalImpl(
    private val ispec: IncrementalProgramSpec,
    view: MatchJournal.View? = null
) : MatchJournal
{
    // invariant: never empty
    private val hist: MutableList<ChunkImpl>
    private var nextChunkId: Int

    init {
        if (view == null) {
            hist = LinkedList()
            nextChunkId = 0
            val initChunk = ChunkImpl(InitRuleMatch, nextChunkId, justsOf(nextChunkId))
            nextChunkId++
            hist.add(initChunk)
        } else {
            // fixme: check somehow that initial chunk is present?
            hist = LinkedList(view.chunks as List<ChunkImpl>)
            nextChunkId = view.nextChunkId
        }
    }

    constructor(view: MatchJournal.View? = null) : this(IncrementalProgramSpec.NonIncrSpec, view)

    private var pos: MutableListIterator<ChunkImpl> = hist.listIterator()
    private var current: ChunkImpl = pos.next() // take the initial chunk, move pos


    override fun iterator(): MutableIterator<MatchJournal.Chunk> = hist.iterator()


    override fun logMatch(match: RuleMatch) {
        // Two cases when a new chunk is created:
        //  either the set of justifications isn't empty
        //  or we directly know that we deal with a principal rule.
        val justs = match.headJustifications()
        if (ispec.isPrincipal(match.rule()) || !justs.isEmpty) {

            justs.add(nextChunkId)
            val newChunk = ChunkImpl(match, nextChunkId, justs)
            pos.add(newChunk)

            ++nextChunkId
            current = newChunk
        }

         // Log discards
        (match as RuleMatchImpl).forEachReplaced {occ ->
            current.occurrences.add(MatchJournal.Chunk.Entry(occ, true))
        }
    }

    override fun logActivation(occ: Occurrence) {
        current.occurrences.add(MatchJournal.Chunk.Entry(occ))
    }


    override fun currentPos(): MatchJournal.Pos = current

    // fixme: unclear, whether this makes sense here, in "pure" journal without store? along with reset and replay?
    // reset to the beginning, even before the initial chunk, because 'replay' after 'resetPos' is expected
    override fun resetPos() { pos = hist.listIterator() }

    override fun reset(pastPos: MatchJournal.Pos) {
        while (pos.hasPrevious()) {
            if (current === pastPos.chunk()) {
                current.occurrences = current.occurrences.subList(0, pastPos.entriesInChunk())
                return
            }
            current = pos.previous()
            pos.remove()
        }
        if (currentPos() != pastPos) throw IllegalStateException()
    }

    override fun replay(controller: Controller, futurePos: MatchJournal.Pos) {
        while (pos.hasNext()) {
            current = pos.next()
            if (futurePos.chunk() === current) {
                replayOccurrences(controller, current.occurrences.take(futurePos.entriesInChunk()))
                return
            }
            replayOccurrences(controller, current.occurrences)
        }
        if (currentPos() != futurePos) throw IllegalStateException()
    }

    private fun replayOccurrences(controller: Controller, occSpecs: Iterable<MatchJournal.Chunk.Entry>) =
        occSpecs.forEach {
            if (it.isDiscarded) {
                it.occ.terminate(controller)
                it.occ.stored = false
            } else {
                it.occ.revive(controller)
                it.occ.stored = true
            }
        }


    override fun view() = MatchJournal.View(ArrayList(hist), nextChunkId)

    override fun storeView(): StoreView = StoreViewImpl(allOccurrences())

    override fun index(): MatchJournal.Index = IndexImpl(ispec, hist)

    private fun allOccurrences(): Sequence<Occurrence> {
        // the following loop doesn't handle this case of starting pos, when 'current' isn't valid (e.g. just right after resetPos())
        if (!pos.hasPrevious())
            return emptySequence()

        val set = HashSet<Id<Occurrence>>()
        for (chunk in hist) { // initial chunk is counted too
            chunk.entriesLog().forEach {
                if (it.isDiscarded) set.remove(Id(it.occ)) else set.add(Id(it.occ))
            }
            if (chunk === current) {
                return set.map { it.wrapped }.asSequence()
            }
        }
        throw IllegalStateException()
    }


    private class ChunkImpl(match: RuleMatch, id: Int, justifications: Justs) : MatchJournal.Chunk(match, id, justifications)
    {
        var occurrences: MutableList<MatchJournal.Chunk.Entry> = mutableListOf()

        override fun entriesLog(): List<MatchJournal.Chunk.Entry> = occurrences
    }

    class IndexImpl(ispec: IncrementalProgramSpec, chunks: Iterable<MatchJournal.Chunk>): MatchJournal.Index
    {
        private val chunkOrder: Map<Int, Int>
        // only for principal constraints
        private val parentChunks: Map<Id<Occurrence>, MatchJournal.Chunk>

        init {
            chunkOrder = chunks.map { it.id }.mapToIndex()

            val m = HashMap<Id<Occurrence>, MatchJournal.Chunk>()
            chunks.forEach {chunk ->
                chunk.activatedLog().filter { occ ->
                    ispec.isPrincipal(occ.constraint)
                }.forEach {occ ->
                    m[Id(occ)] = chunk
                }
            }
            parentChunks = m
        }

        // todo: for non-principal find manually, walk through the whole journal... need it?
        override fun activatingChunkOf(occ: Id<Occurrence>): MatchJournal.Chunk? = parentChunks[occ]

        // todo: throw for invalid positions?
        override fun compare(lhs: MatchJournal.Pos, rhs: MatchJournal.Pos): Int {
            val co = compareBy<MatchJournal.Pos>{ chunkOrder[it.chunk().id] }.compare(lhs, rhs)
            return if (co == 0) lhs.entriesInChunk().compareTo(rhs.entriesInChunk()) else co
        }
    }


    private class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

        val allOccurrences = occurrences.toSet()

        val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

        override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

        override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

        override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
            allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

    }

    object InitRuleMatch : RuleMatch {
        override fun rule(): Rule = EmptyRule
        override fun matchHeadKept(): Iterable<ConstraintOccurrence> = emptyList()
        override fun matchHeadReplaced(): Iterable<ConstraintOccurrence> = emptyList()
        override fun logicalContext(): LogicalContext = NoContext

        object NoContext : LogicalContext {
            override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
        }

        object EmptyRule : Rule() {
            override fun kind(): Kind = Rule.Kind.PROPAGATION
            override fun uniqueTag(): Any = "initialrule${"initial_rule".hashCode()}"
            override fun headKept(): Iterable<Constraint> = emptyList()
            override fun headReplaced(): Iterable<Constraint> = emptyList()
            override fun guard(): Iterable<Predicate> = emptyList()
            override fun bodyAlternation(): Iterable<Iterable<AndItem>> = emptyList() // fixme: maybe provide 'main' constraint prod?
            override fun all(): Iterable<AndItem> = emptyList()
        }
    }
}


fun MatchJournal.justs() = this.currentPos().chunk().justifications

private fun RuleMatch.headJustifications(): Justs {
    val res: Justs = justsOf()
    this.matchHeadKept().forEach { it.justifications().let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications().let { res.addAll(it) } }
    return res
}

