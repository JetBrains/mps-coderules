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
    override val ispec: IncrementalSpec,
    view: MatchJournal.View? = null
) : MatchJournal, IncrSpecHolder {

    private abstract class ChunkImpl : Chunk {
        var entries: MutableList<Chunk.Entry> = mutableListOf()
        override fun entries(): List<Chunk.Entry> = entries
    }

    private class MatchChunkImpl(override val evidence: Evidence, override val match: RuleMatch) : ChunkImpl(), MatchChunk {
        override fun justifications(): Justifications = justifications

        private val justifications = match.collectJustifications(evidence)

        override fun toString() = "(id=$evidence, ${justifications()}, ${match.rule().uniqueTag().toString()}, $entries)"
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
        if (view == null) {
            val initChunk = MatchChunkImpl(nextEvidence(), InitRuleMatch)
            hist = IteratorMutableList(LinkedList<ChunkImpl>().apply {
                add(CornerChunk)
                add(initChunk)
                add(CornerChunk)
            })
        } else {
            hist = IteratorMutableList(LinkedList(view.chunks as List<ChunkImpl>))
            evidenceSeed = view.evidenceSeed
        }

        ancestorChunksStack = mutableListOf()
        __cursor = Cursor(hist.listIterator())
        initialChunk = __cursor.next() as MatchChunk // advance at initial chunk
        assert(initialChunk.match is InitRuleMatch)
    }

    constructor(view: MatchJournal.View? = null) : this(IncrementalSpec.DefaultSpec, view)

    override fun logMatch(match: RuleMatch): MatchChunk? {
        val added: MatchChunk?

        if (match.isPrincipal) {
            added = MatchChunkImpl(nextEvidence(), match)
            __cursor.add(added)
            trackAncestor(added)
            logAncestor(added)
        } else {
            added = null
            val dummy: Justified = MatchChunkImpl(nullEvidence, match) // collects justifications
            trackAncestor(dummy)
            // If a non-principal match has any principal
            // occurrences in head -- they must be tracked
            logJustificationsFrom(match)
        }
        // Log discarded occurrences
        (match as RuleMatchImpl).forEachReplaced { occ ->
            __cursor.current.entries.add(Chunk.Entry(occ, true))
        }

        return added
    }

    private fun indexChunk(chunk: Chunk) {
        chunkIndex.put(chunk.evidence, chunk)
    }

    private fun lookupChunkByEvidence(evidence: Evidence) =
        chunkIndex.get(evidence)

    private fun trackAncestor(logEvent: Justified) {
        while (!logEvent.justifiedBy(parentChunk())) {
            ancestorChunksStack.pop()
        }
        assert(logEvent.justifiedBy(parentChunk()))
    }

    private fun logAncestor(nextChunk: MatchChunk) {
        ancestorChunksStack.push(nextChunk)
    }

    private fun logJustificationsFrom(match: RuleMatch) {
        val parent: MatchChunk = parentChunk()

        val moreJustified = match.allHeads().filter {
            // Filter to avoid justifying parent by its child!
            it.isPrincipal && !it.justifiedBy(parent)
        }.toList()

        if (moreJustified.isNotEmpty()) {
            __cursor.applyToPast(parent.toPos()) { child ->
                child.justifyByAll(moreJustified)
            }
        }
    }

    override fun logActivation(occ: Occurrence): OccChunk? {
        val added: OccChunk?

        trackAncestor(occ)
        if (occ.isPrincipal) {
            added = OccChunkImpl(occ)
            __cursor.add(added)
        } else {
            added = null
        }
        __cursor.current.entries.add(Chunk.Entry(occ))

        return added
    }

    override fun initialChunk(): MatchChunk = initialChunk

    override fun parentChunk(): MatchChunk = ancestorChunksStack.peek()!!

    override fun currentPos(): MatchJournal.Pos = __cursor.current.toPos()

    override fun reset(pastPos: MatchJournal.Pos) {
        __cursor.moveToPastRemoving(pastPos) {
            popAncestor()
            resetOccurrences(it.entries())
            it !== pastPos.chunk
        }
        // drop occurrences at final chunk
        with(pastPos.chunk as ChunkImpl) {
            entries = entries.subList(0, pastPos.entriesCount)
        }
        replay(pastPos)
    }

    override fun resetCursor(pastPos: Pos) {
        __cursor.moveToPastApplying(pastPos) {
            popAncestor()
            resetOccurrences(it.entries())
        }
    }

    private fun popAncestor() {
        if (__cursor at ancestorChunksStack.peek()) ancestorChunksStack.pop()
    }

    override fun replay(futurePos: Pos) {
        while (!(__cursor at futurePos || __cursor.atEnd())) {
            __cursor.next()
        }
        __cursor assertAt futurePos
        // Chunks are replayed fully by ptr, this partial replay unneeded
        //replayOccurrences(ptr.current.entries.take(futurePos.entriesCount))
    }


    // Note: returns View for the whole history regardless of current posPtr
    override fun view() = MatchJournal.View(ArrayList(hist), evidenceSeed)

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
    private open class JournalIteratorImpl(private val it: ListIterator<ChunkImpl>)
        : JournalIterator, Iterator<Chunk> by it {
        protected var __next: ChunkImpl
        protected var __current: ChunkImpl

        init {
            __current = it.next()
            __next = it.next()
            it.previous()

            assert(__current is CornerChunk)
        }

        final override val next: ChunkImpl get() = __next
        final override val current: ChunkImpl get() = __current

        final override fun atStart(): Boolean = __current is CornerChunk
        final override fun atEnd(): Boolean = __next is CornerChunk

        //        final override fun hasPrevious(): Boolean = !atStart()
        final override fun hasNext(): Boolean = !atEnd()

        override fun next(): Chunk = nextImpl()


        protected fun updateNext() {
            assert(it.hasNext()) { "journal iterator must always have next chunk (maybe the final)" }
            __next = it.next()
            it.previous() // iterator always points between stored chunks
        }

        protected fun updatePrevious() {
            assert(it.hasPrevious())
            __current = it.previous()
            it.next()
        }

        protected fun nextImpl(): Chunk {
            __current = it.next()
            assert(__current === __next)
            updateNext()
            return __current
        }
    }

    /**
     * Provides [MatchJournal] modification and look-ahead traverse with [Chunk] replay.
     * Represents [MatchJournal] state: additions & removals happen at pointed-to position.
     * [Cursor] points at position between [current] & [next].
     */
    private inner class Cursor(private val it: MutableListIterator<ChunkImpl>)
        : MutableJournalIterator, JournalIteratorImpl(it) {
        /**
         * Replays [Chunk]s while iterating (see [replayChunk])
         */
        override fun next(): Chunk {
            replayChunk(next)
            return nextImpl()
        }

        override fun add(chunk: Chunk) {
            it.add(chunk as ChunkImpl)
            __current = chunk
            indexChunk(chunk)
        }

        /**
         * Walk in journal in direct order ([from] -> [current])
         * while applying [action] to each visited [Chunk]
         * (not including [from], but including [__current]).
         * No journal state is changed, except by [action] effects
         * (i.e. no reset or replay of occurrences is performed).
         */
        inline fun applyToPast(from: Pos, action: (Chunk) -> Unit) {
            val returnTo = current
            // there's always at least initial chunk
            do {
                __current = it.previous()
            } while (!(this at from))

            do {
                __current = it.next()
                action(__current)
            } while (!(this at returnTo))
        }

        /**
         * Walk in journal in inverse order ([pastPos] <- [current]) while
         * applying [action] to each [Chunk] (including [pastPos])
         * and removing it if [action] returns true for it.
         *
         * Contract: after the call [__next] points to [pastPos].
         */
        inline fun moveToPastRemoving(pastPos: Pos, action: (Chunk) -> Boolean) {
            while (!atStart()) {
                __current = it.previous()
                if (action(__current)) {
                    it.remove()
                }
                if (this at pastPos) {
                    __current = it.previous()
                    it.next() // make it point right after __current
                    updateNext()
                    return
                }
            }
            this assertAt pastPos
        }

        /**
         * Walk in journal in inverse order ([pastPos] <- [current]) while
         * applying [action] to each [Chunk] (including [pastPos]).
         *
         * Contract: after the call [__next] points to [pastPos].
         */
        inline fun moveToPastApplying(pastPos: Pos, action: (Chunk) -> Unit) {
            while (!atStart()) {
                __current = it.previous()
                action(__current)
                if (this at pastPos) {
                    __current = it.previous()
                    it.next() // make it point right after __current
                    updateNext()
                    return
                }
            }
            this assertAt pastPos
        }

        private fun replayChunk(chunk: Chunk) {
            if (!atStart()) trackAncestor(chunk)
            if (chunk is MatchChunk) logAncestor(chunk)
            replayOccurrences(chunk.entries())
        }
    }

    /**
     * Immutable view for MutableList that provides mutability only through its iterators
     */
    private class IteratorMutableList<E>(private val l: MutableList<E>) : List<E> by l {
        override fun iterator(): MutableIterator<E> = l.iterator()
        override fun listIterator(): MutableListIterator<E> = l.listIterator()
        override fun listIterator(index: Int): MutableListIterator<E> = l.listIterator(index)

        val last: E get() = if (l is LinkedList<E>) l.last else l.last()
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
            override fun uniqueTag(): Tag = Rule.Tag("__initial_rule__")
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


internal fun resetOccurrences(occSpecs: List<Chunk.Entry>) =
    // assume occSpecs are ordered in order of processing
    //  so, iterate over reversed list
    occSpecs.asReversed().forEach {
        if (it.discarded) {
            it.occ.alive = true
            it.occ.stored = true
        } else {
            it.occ.alive = false
            it.occ.stored = false
        }
    }

internal fun replayOccurrences(occSpecs: List<Chunk.Entry>) =
    occSpecs.forEach {
        if (it.discarded) {
            it.occ.alive = false
            it.occ.stored = false
        } else {
            it.occ.alive = true
            it.occ.stored = true
        }
    }


internal fun <E> MutableList<E>.push(element: E) = this.add(element)
internal fun <E> MutableList<E>.pop() = this.removeAt(this.size - 1)
internal fun <E> MutableList<E>.peek() = this.last()
