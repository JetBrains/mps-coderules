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
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
import jetbrains.mps.logic.reactor.util.Id
import java.util.*


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
        fun principalOccurrenceOf(chunk: Chunk): OccurrencePos?

        // just go through two maps
        fun principalPos(occ: Id<Occurrence>): OccurrencePos? =
            activatingChunkOf(occ)?.let { principalOccurrenceOf(it) }

        // The latest matched occurrence from match's head is (by definition)
        // the occurrence which activated this match.
        fun activationPos(match: RuleMatchEx): OccurrencePos? =
            match.signature().mapNotNull { occSig ->
                occSig?.let { principalPos(it) }
            }.maxWith(this) // compare positions: find latest
    }

    data class View(private val chunks: List<Chunk>, private val nextChunkId: Int) : MatchJournalView {
        override fun getChunks(): List<Chunk> = chunks
        override fun getNextChunkId(): Int = nextChunkId
        override fun getStoreView(): StoreView = StoreViewImpl(
            chunks.flatMap { it.entriesLog() }.allOccurrences().asSequence()
        )
    }

    abstract class Chunk(val match: RuleMatch, val id: Int, val justifications: Justs) : MatchJournalChunk, Pos()
    {
        override fun match(): RuleMatch = match
        override fun id(): Int = id
        override fun justifications(): TIntSet = justifications

        data class Entry(val occ: Occurrence, val discarded: Boolean = false) : MatchJournalChunk.Entry {
            override fun occ(): ConstraintOccurrence = occ
            override fun discarded(): Boolean = discarded
            override fun toString() = (if (discarded) '-' else '+') + occ.toString()
        }

        fun isDescendantOf(chunkId: Int): Boolean = justifications().contains(chunkId)
        fun isTopLevel(): Boolean = justifications().size() <= 1 // this condition implies that there're no ancestor chunks

        fun activatedLog(): List<Occurrence> = entriesLog().filter { !it.discarded() }.map { it.occ() as Occurrence }
        fun discardedLog(): List<Occurrence> = entriesLog().filter { it.discarded() }.map { it.occ() as Occurrence }
        // Get the resulting set of activated occurrences
        fun activated(): List<Occurrence> = entriesLog().allOccurrences()

        override fun toString() = "(id=${id()}, ${justifications()}, ${match().rule().uniqueTag()}, ${entriesLog()})"

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

    data class OccurrencePos(val occ: Occurrence, private val chunk: Chunk, private val offset: Int): MatchJournal.Pos()
    {
        companion object {
            fun fromIndex(index: MatchJournal.Index, occ: Occurrence): OccurrencePos? {
                val idOcc = Id(occ)
                val chunk = index.activatingChunkOf(idOcc)
                    ?: return null

                val offset = chunk.entriesLog().indexOfFirst { entry ->
                    Id(entry.occ()) == idOcc && !entry.discarded()
                }
                return if (offset >= 0) OccurrencePos(occ, chunk, offset) else null
            }
        }

        override fun chunk(): MatchJournal.Chunk = chunk
        override fun entriesInChunk(): Int = offset + 1
    }

}


internal open class MatchJournalImpl(
    private val ispec: IncrementalProgramSpec,
    view: MatchJournalView? = null
) : MatchJournal {

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

    constructor(view: MatchJournal.View? = null) : this(IncrementalProgramSpec.DefaultSpec, view)

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
        (match as RuleMatchImpl).forEachReplaced { occ ->
            current.entries.add(MatchJournal.Chunk.Entry(occ, true))
        }
    }

    override fun logActivation(occ: Occurrence) {
        current.entries.add(MatchJournal.Chunk.Entry(occ))
    }


    override fun currentPos(): MatchJournal.Pos = current

    // reset to the beginning, even before the initial chunk, because 'replay' after 'resetPos' is expected
    override fun resetPos() {
        pos = hist.listIterator()
    }

    override fun reset(pastPos: MatchJournal.Pos) {
        while (pos.hasPrevious()) {
            if (current === pastPos.chunk()) {
                current.entries = current.entries.subList(0, pastPos.entriesInChunk())
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
                replayOccurrences(controller, current.entries.take(futurePos.entriesInChunk()))
                return
            }
            replayOccurrences(controller, current.entries)
        }
        if (currentPos() != futurePos) throw IllegalStateException()
    }

    private fun replayOccurrences(controller: Controller, occSpecs: Iterable<MatchJournal.Chunk.Entry>) =
        occSpecs.forEach {
            if (it.discarded) {
                it.occ.terminate(controller)
                it.occ.stored = false
            } else {
                it.occ.revive(controller)
                it.occ.stored = true
            }
        }


    // Note: returns View for the whole history regardless of current pos
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
                val idOcc = Id(it.occ)
                if (it.discarded()) set.remove(idOcc) else set.add(idOcc)
            }
            if (chunk === current) {
                return set.map { it.wrapped }.asSequence()
            }
        }
        throw IllegalStateException()
    }

    private class ChunkImpl(match: RuleMatch, id: Int, justifications: Justs) : MatchJournal.Chunk(match, id, justifications) {

        var entries: MutableList<MatchJournal.Chunk.Entry> = mutableListOf()

        override fun entriesLog(): List<MatchJournal.Chunk.Entry> = entries
    }

    private class IndexImpl(ispec: IncrementalProgramSpec, chunks: Iterable<ChunkImpl>): MatchJournal.Index
    {
        private val chunkOrder: Map<Int, Int>
        // only for principal constraints
        private val parentChunks: Map<Id<Occurrence>, MatchJournal.Chunk>

        private val principalOccurrences: Map<Int, MatchJournal.OccurrencePos>

        init {
            chunkOrder = HashMap<Int, Int>().apply {
                chunks.forEachIndexed { index, chunk -> put(chunk.id(), index) }
            }

            val m = HashMap<Id<Occurrence>, MatchJournal.Chunk>()
            val m2 = HashMap<Int, MatchJournal.OccurrencePos>()
            chunks.forEach { chunk ->
                // actually there should be only a single principal occurrence, 'find' is enough
                chunk.entriesLog().forEachIndexed { index, e ->
                   if (ispec.isPrincipal(e.occ.constraint()) && !e.discarded()) {
                       m[Id(e.occ)] = chunk
                       m2[chunk.id] = MatchJournal.OccurrencePos(e.occ, chunk, index)
                   }
                }
            }
            parentChunks = m
            principalOccurrences = m2
        }

        // todo: for non-principal find manually, walk through the whole journal... need it?
        override fun activatingChunkOf(occ: Id<Occurrence>) = parentChunks[occ]

        override fun principalOccurrenceOf(chunk: MatchJournal.Chunk) = principalOccurrences[chunk.id]

        // todo: throw for invalid positions?
        override fun compare(lhs: MatchJournal.Pos, rhs: MatchJournal.Pos): Int {
            val co = compareBy<MatchJournal.Pos>{ chunkOrder[it.chunk().id] }.compare(lhs, rhs)
            return if (co == 0) lhs.entriesInChunk().compareTo(rhs.entriesInChunk()) else co
        }
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


private class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

    val allOccurrences = occurrences.toSet()

    val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

    override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

    override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

    override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
        allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

}


private fun Iterable<MatchJournalChunk.Entry>.allOccurrences(): List<Occurrence> {
    val set = HashSet<Id<Occurrence>>()
    for (it in this) {
        val idOcc = Id(it.occ() as Occurrence)
        if (it.discarded()) set.remove(idOcc) else set.add(idOcc)
    }
    return set.map { it.wrapped }
}

fun MatchJournal.justs() = this.currentPos().chunk().justifications()

private fun RuleMatch.headJustifications(): Justs {
    val res: Justs = justsOf()
    this.matchHeadKept().forEach { it.justifications().let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications().let { res.addAll(it) } }
    return res
}

