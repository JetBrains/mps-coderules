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

import jetbrains.mps.logic.reactor.core.Controller
import jetbrains.mps.logic.reactor.core.Justs
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.justsOf
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchJournalView
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.Id
import java.util.*

internal open class MatchJournalImpl(
    private val ispec: IncrementalProgramSpec,
    view: MatchJournalView? = null
) : MatchJournal {

    // invariant: never empty
    private val hist: IteratorMutableList<ChunkImpl>
    private var nextChunkId: Int

    init {
        if (view == null) {
            nextChunkId = 0
            val initChunk = ChunkImpl(InitRuleMatch, nextChunkId, justsOf(nextChunkId))
            nextChunkId++
            hist = IteratorMutableList(LinkedList<ChunkImpl>().apply { add(initChunk) })
        } else {
            // assert that initial chunk is present
            assert (view.chunks.first().match() is InitRuleMatch)
            hist = IteratorMutableList(LinkedList(view.chunks as List<ChunkImpl>))
            nextChunkId = view.nextChunkId
        }
    }

    constructor(view: MatchJournal.View? = null) : this(IncrementalProgramSpec.DefaultSpec, view)

    // pointer to current position in history where logging (chunk additions) and log erasing (chunk removals) happens
    private var posPtr: MutableListIterator<ChunkImpl> = hist.listIterator()
    // invariant: always contains valid chunk
    private var current: ChunkImpl = posPtr.next() // take the initial chunk, move posPtr


    override fun iterator(): MutableIterator<MatchJournal.Chunk> = hist.iterator()


    override fun logMatch(match: RuleMatch) {
        // Two cases when a new chunk is created:
        //  either the set of justifications isn't empty
        //  or we directly know that we deal with a principal rule.
        val justs = match.headJustifications()
        if (ispec.isPrincipal(match.rule()) || !justs.isEmpty) {

            justs.add(nextChunkId)
            val newChunk = ChunkImpl(match, nextChunkId, justs)
            posPtr.add(newChunk)

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

    override fun resetPos() {
        posPtr = hist.listIterator()
    }

    override fun reset(pastPos: MatchJournal.Pos) {
        while (posPtr.hasPrevious()) {
            if (current === pastPos.chunk) {
                current.entries = current.entries.subList(0, pastPos.entriesInChunk)
                return
            }
            current = posPtr.previous()
            posPtr.remove()
        }
        if (currentPos() != pastPos) throw IllegalStateException()
    }

    override fun replay(controller: Controller, futurePos: MatchJournal.Pos) {
        while (posPtr.hasNext()) {
            current = posPtr.next()
            if (futurePos.chunk === current) {
                replayOccurrences(controller, current.entries.take(futurePos.entriesInChunk))
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


    // Note: returns View for the whole history regardless of current posPtr
    override fun view() = MatchJournal.View(ArrayList(hist), nextChunkId)

    override fun storeView(): StoreView = StoreViewImpl(allOccurrences())

    override fun index(): MatchJournal.Index = IndexImpl(ispec, hist)

    private fun allOccurrences(): Sequence<Occurrence> {
        // the following loop doesn't handle this case of starting posPtr, when 'current' isn't valid (e.g. just right after resetPos())
        if (!posPtr.hasPrevious())
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


    /**
     * Immutable view for MutableList that provides mutability only through its iterators
     */
    private class IteratorMutableList<E>(private val l: MutableList<E>) : List<E> by l {
        override fun iterator(): MutableIterator<E> = l.iterator()
        override fun listIterator(): MutableListIterator<E> = l.listIterator()
        override fun listIterator(index: Int): MutableListIterator<E>  = l.listIterator(index)
    }

    private class ChunkImpl(match: RuleMatch, id: Int, justifications: Justs) : MatchJournal.Chunk(match, id, justifications) {

        var entries: MutableList<Entry> = mutableListOf()

        override fun entriesLog(): List<Entry> = entries
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

        override fun activatingChunkOf(occId: Id<Occurrence>) = parentChunks[occId]

        override fun principalOccurrenceOf(chunk: MatchJournal.Chunk) = principalOccurrences[chunk.id]

        // todo: throw for invalid positions?
        override fun compare(lhs: MatchJournal.Pos, rhs: MatchJournal.Pos): Int {
            val co = compareBy<MatchJournal.Pos>{ chunkOrder[it.chunk.id] }.compare(lhs, rhs)
            return if (co == 0) lhs.entriesInChunk.compareTo(rhs.entriesInChunk) else co
        }
    }


    /**
     * Mock RuleMatch for use only in initial Chunk
     */
    object InitRuleMatch : RuleMatch {
        override fun rule(): Rule = EmptyRule
        override fun matchHeadKept(): Iterable<ConstraintOccurrence> = emptyList()
        override fun matchHeadReplaced(): Iterable<ConstraintOccurrence> = emptyList()
        override fun logicalContext(): LogicalContext = NoContext

        object NoContext : LogicalContext {
            override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
        }

        object EmptyRule : Rule() {
            override fun kind(): Kind = Kind.PROPAGATION
            override fun uniqueTag(): Any = tag().hashCode()
            override fun tag(): String = "initialrule${"initial_rule".hashCode()}"
            override fun headKept(): Iterable<Constraint> = emptyList()
            override fun headReplaced(): Iterable<Constraint> = emptyList()
            override fun guard(): Iterable<Predicate> = emptyList()
            override fun bodyAlternation(): Iterable<Iterable<AndItem>> = emptyList() // fixme: maybe provide 'main' constraint prod?
            override fun all(): Iterable<AndItem> = emptyList()
        }
    }
}

fun MatchJournal.justs() = this.currentPos().chunk.justifications()

private fun RuleMatch.headJustifications(): Justs {
    val res: Justs = justsOf()
    this.matchHeadKept().forEach { it.justifications().let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications().let { res.addAll(it) } }
    return res
}