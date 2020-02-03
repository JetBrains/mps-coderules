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
import jetbrains.mps.logic.reactor.core.internal.MatchJournal.*
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

//typealias Chunk = MatchJournal.Chunk

internal open class MatchJournalImpl(
    private val ispec: IncrementalProgramSpec,
    view: MatchJournalView? = null
) : MatchJournal {

    // invariant: never empty
    private val hist: IteratorMutableList<Chunk>
    private var nextChunkId: Int

    init {
        if (view == null) {
            nextChunkId = 0
            val initChunk = MatchChunk(nextChunkId++, InitRuleMatch)
            hist = IteratorMutableList(LinkedList<Chunk>().apply { add(initChunk) })
        } else {
            // assert that initial chunk is present
            with (view.chunks.first()) {
                assert(this is MatchChunk && match is InitRuleMatch)
            }
            hist = IteratorMutableList(LinkedList(view.chunks as List<Chunk>))
            nextChunkId = view.nextChunkId
        }
    }

    constructor(view: MatchJournal.View? = null) : this(IncrementalProgramSpec.DefaultSpec, view)

    // pointer to current position in history where logging (chunk additions) and log erasing (chunk removals) happens
    private var posPtr: MutableListIterator<Chunk> = hist.listIterator()
    // invariant: always contains valid chunk
    private var current: Chunk = posPtr.next() // take the initial chunk, move posPtr


    override fun iterator(): MutableIterator<Chunk> = hist.iterator()


    override fun logMatch(match: RuleMatch) {
        if (ispec.isPrincipal(match.rule())) {
            current = MatchChunk(nextChunkId++, match)
            posPtr.add(current)
        }
        // Log discarded occurrences
        (match as RuleMatchImpl).forEachReplaced { occ ->
            current.entries.add(Chunk.Entry(occ, true))
        }
    }

    override fun logActivation(occ: Occurrence) {
        if (ispec.isPrincipal(occ.constraint)) {
            current = OccChunk(nextChunkId++, occ)
            posPtr.add(current)
        }
        current.entries.add(Chunk.Entry(occ))
    }

    override fun ancestorMatch(): MatchChunk {
        if (current is MatchChunk) {
            return current as MatchChunk
        }

        val rit = hist.listIterator(posPtr.previousIndex())
        while (rit.hasPrevious()) {
            val prev = rit.previous()
            if (prev is MatchChunk && current.justifications.contains(prev.id)) {
                return prev
            }
        }
        return hist.first() as MatchChunk // initial chunk
    }

    override fun currentPos(): MatchJournal.Pos = current.toPos()

    override fun isFront(): Boolean = current == hist.last

    override fun resetPos() {
        // walk backwards and reset all occurrences
        posPtr = hist.listIterator(hist.size)
        while (posPtr.hasPrevious()) {
            current = posPtr.previous()
            resetOccurrences(current.entries)
        }
    }

    override fun reset(pastPos: MatchJournal.Pos) {
        // walk backwards, reset occurrences and remove history from posPtr down to pastPos
        while (posPtr.hasPrevious()) {
            current = posPtr.previous()
            if (current === pastPos.chunk) {
                resetOccurrences(current.entries.drop(pastPos.entriesCount))
                current.entries = current.entries.subList(0, pastPos.entriesCount)
                posPtr.next() // make 'posPtr' to always point right after 'current'
                return
            }
            resetOccurrences(current.entries)
            posPtr.remove()
        }
        if (currentPos() != pastPos) throw IllegalStateException()
    }

    override fun replay(observable: LogicalStateObservable, futurePos: MatchJournal.Pos) {
        while (posPtr.hasNext()) {
            current = posPtr.next()
            if (futurePos.chunk === current) {
                replayOccurrences(observable, current.entries.take(futurePos.entriesCount))
                return
            }
            replayOccurrences(observable, current.entries)
        }
        if (currentPos() != futurePos) throw IllegalStateException()
    }

    override fun replayDescendants(observable: LogicalStateObservable, ancestor: Chunk, until: MatchJournal.Pos) {
        while (posPtr.hasNext()) {
            val previous = current
            current = posPtr.next()

            if (until.chunk === current) {
                replayOccurrences(observable, current.entries.take(until.entriesCount))
                return
            }

            if (previous.isDescendantOf(ancestor.id) && !current.isDescendantOf(ancestor.id)) {
                // reset ptr so that it points after previous chunk
                current = previous
                posPtr.previous()
                return
            }

            replayOccurrences(observable, current.entries)
        }
        if (currentPos() != until) throw IllegalStateException()
    }

    private fun resetOccurrences(occSpecs: Iterable<MatchJournal.Chunk.Entry>) =
        occSpecs.forEach {
            if (it.discarded) {
                it.occ.alive = true
                it.occ.stored = true
            } else {
                it.occ.alive = false
                it.occ.stored = false
            }
        }

    private fun replayOccurrences(observable: LogicalStateObservable, occSpecs: Iterable<MatchJournal.Chunk.Entry>) =
        occSpecs.forEach {
            if (it.discarded) {
//                it.occ.terminate(observable)
                it.occ.alive = false
                it.occ.stored = false
            } else {
//                it.occ.revive(observable)
                it.occ.alive = true
                it.occ.stored = true
            }
        }


    // Note: returns View for the whole history regardless of current posPtr
    override fun view() = MatchJournal.View(ArrayList(hist), nextChunkId)

    override fun storeView(): StoreView = StoreViewImpl(allOccurrences())

    override fun index(): MatchJournal.Index = IndexImpl(hist)

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

        val last: E get() = if (l is LinkedList<E>) l.last else l.last()
    }

    private class IndexImpl(chunks: Collection<Chunk>): MatchJournal.Index
    {
        private val chunkOrder = HashMap<Int, Int>() // chunk.id to its index
        private val occChunks = HashMap<Id<Occurrence>, OccChunk>()
        private val occChunk2LastDescendant = HashMap<Int, Chunk>()

        init {
            if (chunks.isNotEmpty()) {
                val occChunksTree = LinkedList<OccChunk>()

                chunks.forEachIndexed { index, chunk ->
                    chunkOrder[chunk.id] = index

                    if (chunk is OccChunk) {
                        occChunks[Id(chunk.occ)] = chunk
                        occChunksTree.push(chunk)
                    }

                    occChunksTree.peek()?.let {
                        if (chunk.isDescendantOf(it.id)) {
                            // after iteration ends will store the last descendant
                            occChunk2LastDescendant[it.id] = chunk
                        } else {
                            // means descendant chunks ended
                            occChunksTree.pop()
                        }
                    }
                }

            }
        }

        override val size: Int = chunks.count()

        override fun activatingChunkOf(occId: Id<Occurrence>) = occChunks[occId]

        override fun lastDescendantOf(occChunk: OccChunk): Chunk? = occChunk2LastDescendant[occChunk.id]

        override fun activationPos(match: RuleMatchEx): Pair<Pos, OccChunk>? {
            // The latest matched occurrence from match's head is
            //  (by definition) the occurrence which activated this match.

            val parentChunks: List<OccChunk> =
                match.signature().mapNotNull { occSig ->
                    occSig?.let { activatingChunkOf(it) }
                }

            val activatingChunk: OccChunk = parentChunks.maxBy { chunkOrder[it.id]!! }
                ?: return null

            // If rule discards its occurrences then it must be inserted after
            //  all existing matches which are descendants of activating occurrence.
            val discardingRule = match.rule().headReplaced().count() > 0
            val posChunk =
                if (discardingRule)
                    // not null if activatingChunk is not null
                    lastDescendantOf(activatingChunk)!!
                else
                    activatingChunk
            return posChunk.toPos() to activatingChunk
        }

        // todo: throw for invalid positions?
        override fun compare(lhs: Pos, rhs: Pos): Int =
            compareBy<Pos>{ chunkOrder[it.chunk.id] }
                .thenComparingInt { it.entriesCount }
                .compare(lhs, rhs)
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
            override fun tag(): String = "initialrule${"initialrule".hashCode()}"
            override fun headKept(): Iterable<Constraint> = emptyList()
            override fun headReplaced(): Iterable<Constraint> = emptyList()
            override fun guard(): Iterable<Predicate> = emptyList()
            override fun bodyAlternation(): Iterable<Iterable<AndItem>> = emptyList()
            override fun all(): Iterable<AndItem> = emptyList()
        }
    }
}

fun MatchJournal.justs() = this.currentPos().chunk.justifications

fun RuleMatch.headJustifications(): Justs {
    val res: Justs = justsOf()
    this.matchHeadKept().forEach { it.justifications().let { res.addAll(it) } }
    this.matchHeadReplaced().forEach { it.justifications().let { res.addAll(it) } }
    return res
}