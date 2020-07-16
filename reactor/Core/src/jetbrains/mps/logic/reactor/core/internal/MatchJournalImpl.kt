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
    override val ispec: IncrementalProgramSpec,
    view: MatchJournal.View? = null
) : MatchJournal, IncrSpecHolder {

    private abstract class ChunkImpl : Chunk {
        var entries: MutableList<Chunk.Entry> = mutableListOf()
        override fun entries(): List<Chunk.Entry> = entries
    }

    private class MatchChunkImpl(override val evidence: Evidence, override val match: RuleMatch) : ChunkImpl(), MatchChunk {
        override fun dependsOnRule(utag: Any): Boolean = rulesWithOrigin.contains(utag)

        override fun justifications(): Justifications = justifications

        private val justifications = match.collectJustifications(evidence)

        val rulesWithOrigin = HashSet<Any>(4)

        override fun toString() = "(id=$evidence, ${justifications()}, ${match.rule().tag()}, $entries)"
    }

    private class OccChunkImpl(override val occ: Occurrence) : ChunkImpl(), Justified by occ, OccChunk {
        override fun toString() = "(id=$evidence, ${justifications()}, activation of $occ, $entries)"
    }


    // invariant: never empty
    private val hist: IteratorMutableList<ChunkImpl>

    // kind of "call stack", represents all ancestors of current match chunk, including it
    // invariant: never empty
    private val ancestorChunksStack: MutableList<MatchChunk>


    private var evidenceSeed: Evidence

    final override val initEvidence: Evidence = 0

    final override fun nextEvidence(): Evidence = evidenceSeed++


    init {
        if (view == null) {
            evidenceSeed = initEvidence
            val initChunk = MatchChunkImpl(nextEvidence(), InitRuleMatch)
            hist = IteratorMutableList(LinkedList<ChunkImpl>().apply { add(initChunk) })
        } else {
            // assert that initial chunk is present
            with(view.chunks.first()) {
                assert(this is MatchChunk && match is InitRuleMatch)
            }
            hist = IteratorMutableList(LinkedList(view.chunks as List<ChunkImpl>))
            evidenceSeed = view.evidenceSeed
        }
        ancestorChunksStack = mutableListOf(initialChunk())
    }

    constructor(view: MatchJournal.View? = null) : this(IncrementalProgramSpec.DefaultSpec, view)


    // pointer to current position in history where logging (chunk additions) and log erasing (chunk removals) happens
    private var posPtr: MutableListIterator<ChunkImpl> = hist.listIterator()
    // invariant: always contains valid chunk
    private var current: ChunkImpl = posPtr.next() // take the initial chunk, move posPtr


    override fun iterator(): MutableIterator<Chunk> = hist.iterator()


    override fun logMatch(match: RuleMatch): MatchChunk? {
        val added: MatchChunk?

        if (match.isPrincipal) {
            added = MatchChunkImpl(nextEvidence(), match)
            current = added
            posPtr.add(current)
            trackAncestor(added)
            logAncestor(added)
        } else {
            added = null
            val dummy: Justified = MatchChunkImpl(initEvidence, match) // collects justifications
            trackAncestor(dummy)
            // If a non-principal match has any principal
            // occurrences in head -- they must be tracked
            logJustificationsFrom(match)
        }
        // Log discarded occurrences
        (match as RuleMatchImpl).forEachReplaced { occ ->
            current.entries.add(Chunk.Entry(occ, true))
        }

        return added
    }

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
            forEachChunkFrom(parent.toPos()) { child ->
                child.justifyByAll(moreJustified)
            }
        }

        match.rule().let {
            if (it.isWeakPrincipal) {
                (parent as MatchChunkImpl).rulesWithOrigin.add(it.uniqueTag())
            }
        }
    }

    override fun logActivation(occ: Occurrence): OccChunk? {
        val added: OccChunk?

        trackAncestor(occ)
        if (occ.isPrincipal) {
            added = OccChunkImpl(occ)
            current = added
            posPtr.add(current)
        } else {
            added = null
        }
        current.entries.add(Chunk.Entry(occ))

        return added
    }

    override fun initialChunk(): MatchChunk = this.first() as MatchChunk

    override fun parentChunk(): MatchChunk = ancestorChunksStack.peek()!!

    private fun findParentChunk(): MatchChunk {
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
        ancestorChunksStack.clear()

        // restore initial state
        ancestorChunksStack.push(initialChunk())
        current = posPtr.next()
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
            keepAncestors()
            resetOccurrences(current.entries)
            if (drop) posPtr.remove()
        }
        if (currentPos() != pastPos) throw IllegalStateException()
    }

    private fun keepAncestors() {
        if (current === ancestorChunksStack.peek()) ancestorChunksStack.pop()
    }

    private fun nextChunk() {
        val next = posPtr.next()
        trackAncestor(next)
        if (next is MatchChunk) logAncestor(next)
        current = next
    }

    /**
     * Walk from specified [from] position in journal until [current] position
     * while applying [action] to each visited [Chunk].
     * No journal state is changed during operation (except by [action] effects).
     */
    private inline fun forEachChunkFrom(from: Pos, action: (Chunk) -> Unit) {
        val to = current
        do {
            // there's always at least initial chunk
            current = posPtr.previous()
        } while (current !== from.chunk)

        do {
            current = posPtr.next()
            action(current)
        } while (current !== to)
    }

    override fun replay(futurePos: Pos) = replayWith(futurePos, {})

    private inline fun replayWith(futurePos: MatchJournal.Pos, action: (Chunk) -> Unit) {
        do {
            if (futurePos.chunk === current) {
                replayOccurrences(current.entries.take(futurePos.entriesCount))
                action(current)
                return
            }
            replayOccurrences(current.entries)
            action(current)

            if (!posPtr.hasNext()) break
            nextChunk()
        } while (true)

        if (currentPos() != futurePos) throw IllegalStateException()
    }

    /**
     * Starts iterating from the Chunk which is next after [current].
     * Leaves [current], [posPtr] and [ancestorChunksStack] intact.
     */
    override fun dropDescendantsWhile(ancestor: Chunk, dropIf: (Chunk) -> Boolean) {
        val dropped = mutableListOf<Justified>()
        val start = current

        while (posPtr.hasNext()) {
            current = posPtr.next()
            if (!current.justifiedBy(ancestor)) {
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
        while (current !== start) {
            current = posPtr.previous()
        }
        // make ptr point right after 'current' in case we changed anything
        if (posPtr.hasNext()) posPtr.next()
    }

    override fun dropDescendants(invalidated: Collection<Justified>, forEachDropped: (Chunk) -> Unit) {
        if (invalidated.isEmpty()) return

        val start = current
        while (posPtr.hasNext()) {
            current = posPtr.next()
            if (current.justifiedByAny(invalidated)) {
                // no need to 'resetOccurrences' because journal position is left intact
                posPtr.remove()
                forEachDropped(current)
            }
        }

        // rollback to the start
        while (current !== start) {
            current = posPtr.previous()
        }
        // make ptr point right after 'current' in case we changed anything
        if (posPtr.hasNext()) posPtr.next()
    }

    private fun resetOccurrences(occSpecs: List<Chunk.Entry>) =
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

    private fun replayOccurrences(occSpecs: List<Chunk.Entry>) =
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
            chunk.entries().forEach {
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
        private val chunkOrder = HashMap<Id<Chunk>, Int>()
        private val occChunks = HashMap<Int, OccChunk>()

        init {
            chunks.forEachIndexed { index, chunk ->
                chunkOrder[Id(chunk)] = index

                if (chunk is OccChunk) {
                    occChunks[chunk.occ.identity] = chunk
                }
            }
        }

        override val size: Int = chunks.count()

        override fun activatingChunkOf(occ: Occurrence) = occChunks[occ.identity]

        override fun activationPos(match: RuleMatchEx): OccChunk? =
            // The latest matched occurrence from match's head is (by definition)
            //  the occurrence which activated this match.
            match.signature().mapNotNull { occSig ->
                occSig?.let { activatingChunkOf(it.wrapped) }
            }.maxBy { orderOf(it)!! } // compare positions: find latest

        // todo: throw for invalid positions?
        override fun compare(lhs: Pos, rhs: Pos): Int =
            compareBy<Pos>{ orderOf(it.chunk) }
                .thenComparingInt { it.entriesCount }
                .compare(lhs, rhs)

        private fun orderOf(chunk: Chunk): Int? = chunkOrder[Id(chunk)]
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
            override fun tag(): String = "__initialrule__"
            override fun headKept(): Iterable<Constraint> = emptyList()
            override fun headReplaced(): Iterable<Constraint> = emptyList()
            override fun guard(): Iterable<Predicate> = emptyList()
            override fun bodyAlternation(): Iterable<Iterable<AndItem>> = emptyList()
            override fun all(): Iterable<AndItem> = emptyList()
        }
    }
}

// returns new collection of justifications
fun RuleMatch.collectJustifications(vararg withEvidence: Evidence): Justifications =
    justsOf(*withEvidence).also { allJss ->
        this.allHeads().forEach { allJss.addAll(it.justifications()) }
    }

internal fun <E> MutableList<E>.push(element: E) = this.add(element)
internal fun <E> MutableList<E>.pop() = this.removeAt(this.size - 1)
internal fun <E> MutableList<E>.peek() = this.last()
