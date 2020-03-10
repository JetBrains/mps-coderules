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
    view: MatchJournal.View? = null
) : MatchJournal {

    // invariant: never empty
    private val hist: IteratorMutableList<Chunk>

    private var evidenceSeed: Evidence

    final override fun nextEvidence(): Evidence = evidenceSeed++


    init {
        if (view == null) {
            evidenceSeed = 0
            val initChunk = MatchChunk(nextEvidence(), InitRuleMatch)
            hist = IteratorMutableList(LinkedList<Chunk>().apply { add(initChunk) })
        } else {
            // assert that initial chunk is present
            with (view.chunks.first()) {
                assert(this is MatchChunk && match is InitRuleMatch)
            }
            hist = IteratorMutableList(LinkedList(view.chunks as List<Chunk>))
            evidenceSeed = view.evidenceSeed
        }
    }

    constructor(view: MatchJournal.View? = null) : this(IncrementalProgramSpec.DefaultSpec, view)


    // pointer to current position in history where logging (chunk additions) and log erasing (chunk removals) happens
    private var posPtr: MutableListIterator<Chunk> = hist.listIterator()
    // invariant: always contains valid chunk
    private var current: Chunk = posPtr.next() // take the initial chunk, move posPtr


    override fun iterator(): MutableIterator<Chunk> = hist.iterator()


    override fun logMatch(match: RuleMatch): MatchChunk? {
        var added: MatchChunk? = null

        if (ispec.isPrincipal(match.rule())) {
            added = MatchChunk(nextEvidence(), match)
            current = added
            posPtr.add(current)
        }
        // Log discarded occurrences
        (match as RuleMatchImpl).forEachReplaced { occ ->
            current.entries.add(Chunk.Entry(occ, true))
        }

        return added
    }

    override fun logActivation(occ: Occurrence): OccChunk? {
        var added: OccChunk? = null

        if (ispec.isPrincipal(occ.constraint)) {
            added = OccChunk(occ)
            current = added
            posPtr.add(current)
        }
        current.entries.add(Chunk.Entry(occ))

        return added
    }

    override fun initialChunk(): MatchChunk = this.first() as MatchChunk

    override fun parentChunk(): MatchChunk {
        if (current is MatchChunk) {
            return current as MatchChunk
        }

        val rit = hist.listIterator(posPtr.previousIndex())
        while (rit.hasPrevious()) {
            val prev = rit.previous()
            if (prev is MatchChunk && current.justifiedBy(prev)) {
                return prev
            }
        }
        return initialChunk()
    }

    override fun currentPos(): MatchJournal.Pos = current.toPos()

    override fun isFront(): Boolean = current == hist.last


    override fun reset(pastPos: MatchJournal.Pos) = resetPos(pastPos, true)

//    override fun resetPos() = resetPos(Pos(initialChunk(), 0), false)
    override fun resetPos() {
        // walk backwards and reset all occurrences
        posPtr = hist.listIterator(hist.size)
        while (posPtr.hasPrevious()) {
            current = posPtr.previous()
            resetOccurrences(current.entries)
        }
    }

    private fun resetPos(pastPos: MatchJournal.Pos, drop: Boolean) {
        while (posPtr.hasPrevious()) {
            current = posPtr.previous()
            if (current === pastPos.chunk) {
                resetOccurrences(current.entries.drop(pastPos.entriesCount))
                if (drop) current.entries = current.entries.subList(0, pastPos.entriesCount)
                posPtr.next() // make 'posPtr' to always point right after 'current'
                return
            }
            resetOccurrences(current.entries)
            if (drop) posPtr.remove()
        }
        if (currentPos() != pastPos) throw IllegalStateException()
    }

    override fun forEachChunkFrom(from: Pos, action: (Chunk) -> Unit) {
        val to = currentPos()
        resetPos(from, false)
        replayWith(to, action)
    }

    override fun replay(futurePos: Pos) = replayWith(futurePos, {})

    private fun replayWith(futurePos: MatchJournal.Pos, action: (Chunk) -> Unit) {
        do {
            if (futurePos.chunk === current) {
                replayOccurrences(current.entries.take(futurePos.entriesCount))
                action(current)
                return
            }
            replayOccurrences(current.entries)
            action(current)

            if (!posPtr.hasNext()) break
            current = posPtr.next()
        } while (true)

        if (currentPos() != futurePos) throw IllegalStateException()
    }

    override fun dropDescendantsWhile(ancestor: Chunk, dropIf: (Chunk) -> Boolean) {
        // starts iterating from the Chunk which is next after current
        // leaves 'current' and 'posPtr' intact
        val dropped = mutableListOf<Justified>()
        val start = current

        while (posPtr.hasNext()) {
            current = posPtr.next()
            if (!current.isDescendantOf(ancestor)) {
                break
            }

            if (dropIf(current)) {
                dropped.add(current)
                // no need to 'resetOccurrences' because journal position is left intact
                posPtr.remove()
            } else if (current.justifiedByAny(dropped)) {
                // drop descendants of dropped Chunks
                posPtr.remove()
            }
        }

        // rollback to the start
        while (current != start) {
            current = posPtr.previous()
        }
        // make ptr point right after 'current' in case we changed anything
        if (posPtr.hasNext()) posPtr.next()
    }

    private fun resetOccurrences(occSpecs: Iterable<Chunk.Entry>) =
        // todo: need iterating over reversed list?
        occSpecs.forEach {
            if (it.discarded) {
                it.occ.alive = true
                it.occ.stored = true
            } else {
                it.occ.alive = false
                it.occ.stored = false
            }
        }

    private fun replayOccurrences(occSpecs: Iterable<Chunk.Entry>) =
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
    override fun view() = MatchJournal.View(ArrayList(hist), evidenceSeed)

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
                if (it.discarded) set.remove(idOcc) else set.add(idOcc)
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

    private class IndexImpl(chunks: Iterable<Chunk>): MatchJournal.Index
    {
        private val chunkOrder = HashMap<Evidence, Int>()
        private val occChunks = HashMap<Id<Occurrence>, OccChunk>()

        init {
            chunks.forEachIndexed { index, chunk ->
                chunkOrder[chunk.evidence] = index

                if (chunk is OccChunk) {
                    occChunks[Id(chunk.occ)] = chunk
                }
            }
        }

        override val size: Int = chunks.count()

        override fun activatingChunkOf(occId: Id<Occurrence>) = occChunks[occId]

        override fun activationPos(match: RuleMatchEx): OccChunk? =
            // The latest matched occurrence from match's head is (by definition)
            //  the occurrence which activated this match.
            match.signature().mapNotNull { occSig ->
                occSig?.let { activatingChunkOf(it) }
            }.maxBy { chunkOrder[it.evidence]!! } // compare positions: find latest

        // todo: throw for invalid positions?
        override fun compare(lhs: Pos, rhs: Pos): Int =
            compareBy<Pos>{ chunkOrder[it.chunk.evidence] }
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

fun MatchJournal.justifications() = this.currentPos().chunk.justifications()

fun RuleMatch.justifications(): Justifications = justsOf().also { allJss ->
    this.allHeads().forEach { allJss.addAll(it.justifications()) }
}
