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
import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.Id
import java.util.*


internal open class MatchJournalImpl(
    val trace: EvaluationTrace = EvaluationTrace.NULL
) : MatchJournal {

    private abstract class ChunkImpl : Chunk {
        var entries: MutableList<Chunk.Entry> = mutableListOf()
        override fun entries(): List<Chunk.Entry> = entries
        override fun addEntry(e: Chunk.Entry) = entries.add(e)
    }

    private class MatchChunkImpl(override val evidence: Evidence, override val match: RuleMatch) : ChunkImpl(), MatchChunk {
        override fun justifications(): Justifications = justifications

        private val justifications = match.collectJustifications(evidence)

        override fun toString() = "(id=$evidence, ${justifications()}, ${match.rule().uniqueTag()}, $entries)"
    }

    private class OccChunkImpl(override val occ: Occurrence) : ChunkImpl(), Justified by occ, OccChunk {
        override fun toString() = "(id=$evidence, ${justifications()}, activation of $occ, $entries)"
    }

    private object CornerChunk : ChunkImpl() {
        override val evidence: Evidence = -1
        override fun justifications(): Justifications = emptyJustifications()
    }


    // invariant: never empty
    private val hist: IteratorMutableList<ChunkImpl>

    private val chunkIndex = ChunkIndex()

    // pointer to current position where logging (chunk additions) and log erasing (chunk removals) happen
    // initially points at initial chunk
    private val __cursor: Cursor

    private val initialChunk: MatchChunk

    // kind of "call stack", represents all ancestors of current match chunk, including it
    // invariant: never empty
    private val ancestorChunksStack: MutableList<MatchChunk>

    private var evidenceSeed: Evidence = 0

    final override val nullEvidence: Evidence = CornerChunk.evidence

    final override fun nextEvidence(): Evidence = evidenceSeed++

    init {
        val initChunk = MatchChunkImpl(nextEvidence(), InitRuleMatch)
        hist = IteratorMutableList(LinkedList<ChunkImpl>().apply {
            add(CornerChunk)
            add(initChunk)
            add(CornerChunk)
        })

        ancestorChunksStack = mutableListOf()
        __cursor = Cursor(hist.listIterator())
        initialChunk = __cursor.initial() as MatchChunk // advance at initial chunk
        assert(initialChunk.match is InitRuleMatch)
    }

    override fun logMatch(match: RuleMatch) {
        val nextChunk = MatchChunkImpl(nextEvidence(), match)
        __cursor.addChunk(nextChunk)
        resetParentChunk(nextChunk)
        pushParentChunk(nextChunk)

        // Log discarded occurrences
        (match as RuleMatchImpl).forEachReplaced { occ ->
            __cursor.addEntryToCurrent(Chunk.Entry(occ, true))
        }
    }

    private fun indexChunk(chunk: Chunk) {
        chunkIndex.put(chunk.evidence, chunk)
    }

    private fun lookupChunkByEvidence(evidence: Evidence) =
        chunkIndex.get(evidence)

    private fun resetParentChunk(logEvent: Justified) {
        while (!logEvent.justifiedBy(parentChunk())) {
            ancestorChunksStack.pop()
        }
        assert(logEvent.justifiedBy(parentChunk()))
    }

    private fun pushParentChunk(nextChunk: MatchChunk) {
        ancestorChunksStack.push(nextChunk)
    }

    override fun logActivation(occ: Occurrence)  {
        resetParentChunk(occ)
        __cursor.addChunk(OccChunkImpl(occ))
        __cursor.addEntryToCurrent(Chunk.Entry(occ))
    }

    internal fun resetOccurrences(occSpecs: List<Chunk.Entry>) =
    // assume occSpecs are ordered in order of processing
        //  so, iterate over reversed list
        occSpecs.asReversed().forEach {
            if (it.discarded) {

                trace.undoDiscard(it.occ)

                it.occ.alive = true
                it.occ.stored = true

            } else {

                trace.undoActivate(it.occ)

                it.occ.alive = false
                it.occ.stored = false
            }
        }


    override fun initialChunk(): MatchChunk = initialChunk

    override fun parentChunk(): MatchChunk = ancestorChunksStack.peek()

    override fun currentPos(): Pos = __cursor.currentPos()

    override fun reset(pastPos: Pos) {
        __cursor.moveToPastRemoving(pastPos) {
            popParentChunk()
            resetOccurrences(it.entries())
        }
        // drop occurrences at final chunk
        with(pastPos.chunk as ChunkImpl) {
            resetOccurrences(entries.subList(pastPos.entriesCount, entries.size))
            entries = entries.subList(0, pastPos.entriesCount)
        }
        __cursor assertAt pastPos
    }

    private fun popParentChunk() {
        if (__cursor at ancestorChunksStack.peek()) ancestorChunksStack.pop()
    }
    
    // Note: returns View for the whole history regardless of current posPtr
    override fun view() = View(ArrayList(hist), evidenceSeed)

    override fun storeView(): StoreView = StoreViewImpl(allOccurrences())

    override fun basisRuleTags(chunk: Chunk): List<Any> {
        val ptags = mutableListOf<Any>()
        chunk.justifications().forEach { jn ->
            // hist is sequential, random access can be expensive
            (lookupChunkByEvidence(jn) as? MatchChunk)?.let {
                if (it.match.rule().isBasis) {
                    ptags.add(it.ruleUniqueTag)
                }
            }
            true
        }
        return ptags
    }

    private fun allOccurrences(): Sequence<Occurrence> {
        // the following loop doesn't handle this case of starting posPtr, when 'current' isn't valid (e.g. just right after resetPos())
        if (__cursor.atStart()) return emptySequence()

        val set = HashSet<Id<Occurrence>>()
        for (chunk in hist) { // initial chunk is counted too
            chunk.entries().forEach {
                val idOcc = Id(it.occ)
                if (it.discarded) set.remove(idOcc) else set.add(idOcc)
            }
            if (__cursor at chunk) {
                return set.map { it.wrapped }.asSequence()
            }
        }
        throw IllegalStateException()
    }


    /**
     * Provides [MatchJournal] look-ahead traverse.
     */
    abstract private class AbstractChunkIterator(private val iter: ListIterator<ChunkImpl>) :   ChunkIterator
    {
        protected var __next: ChunkImpl
        protected var __current: ChunkImpl

        init {
            __current = iter.next()
            __next = iter.next()
            iter.previous()

            assert(__current is CornerChunk)
        }

        final override val current: Chunk get() = __current

        final override fun atStart(): Boolean = __current is CornerChunk
        final override fun atEnd(): Boolean = __next is CornerChunk

        protected fun updateNext() {
            assert(iter.hasNext()) { "journal iterator must always have next chunk (maybe the final)" }
            __next = iter.next()
            iter.previous() // iterator always points between stored chunks
        }

        protected fun nextImpl(): Chunk {
            __current = iter.next()
            assert(__current === __next)
            updateNext()
            return __current
        }
    }

    internal infix fun ChunkIterator.assertAt(pos: Pos) {
        if (!(this at pos))
            throw IllegalStateException("Position wasn't found in journal: $pos")
    }


    internal class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

        val allOccurrences = occurrences.toSet()

        val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

        override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

        override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

        override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
            allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

    }


    /**
     * Provides [MatchJournal] modification and look-ahead traverse with [Chunk] replay.
     * Represents [MatchJournal] state: additions & removals happen at pointed-to position.
     * [Cursor] points at position between [current] & [initial].
     */
    private inner class Cursor(private val iter: MutableListIterator<ChunkImpl>) :  AbstractChunkIterator(iter){
        /**
         * Replays [Chunk]s while iterating
         */
        fun initial(): Chunk {
            assert(atStart())
            assert(__next is MatchChunk)
            pushParentChunk(__next as MatchChunk)
            return nextImpl()
        }

        fun addChunk(chunk: Chunk) {
            iter.add(chunk as ChunkImpl)
            __current = chunk
            indexChunk(chunk)
        }

        /**
         * Walk in journal in inverse order ([pastPos] <- [current]), excluding [pastPos]
         * while applying [action] to each [Chunk] and removing it.
         *
         * Contract: after the call [__current] points to [pastPos].
         */
        inline fun moveToPastRemoving(pastPos: Pos, action: (Chunk) -> Unit) {
            while (!atStart()) {
                __current = iter.previous()
                if (this at pastPos) break
                action(__current)
                iter.remove()
            }
            if (this at pastPos) {
                __current = iter.previous()
                iter.next() // make it point right after __current
                updateNext()
                nextImpl()
                updateNext()
            }
            this assertAt pastPos
        }

    }

    /**
     * Immutable view for MutableList that provides mutability only through its iterators
     */
    private class IteratorMutableList<E>(private val l: MutableList<E>) : List<E> by l {
        override fun iterator(): MutableIterator<E> = l.iterator()
        override fun listIterator(): MutableListIterator<E> = l.listIterator()
        override fun listIterator(index: Int): MutableListIterator<E> = l.listIterator(index)
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
            override fun uniqueTag(): Tag = Tag("__initial_rule__")
            override fun headKept(): Iterable<Constraint> = emptyList()
            override fun headReplaced(): Iterable<Constraint> = emptyList()
            override fun guard(): Iterable<Predicate> = emptyList()
            override fun bodyAlternation(): Iterable<Iterable<AndItem>> = emptyList()
            override fun all(): Iterable<AndItem> = emptyList()
        }
    }
}


// returns new collection of justifications
internal fun RuleMatch.collectJustifications(vararg withEvidence: Evidence): Justifications =
    justsOf(*withEvidence).also { allJss ->
        this.allHeads().forEach { allJss.addAll(it.justifications()) }
    }

internal fun <E> MutableList<E>.push(element: E) = this.add(element)
internal fun <E> MutableList<E>.pop() = this.removeAt(this.size - 1)
internal fun <E> MutableList<E>.peek() = this.last()
