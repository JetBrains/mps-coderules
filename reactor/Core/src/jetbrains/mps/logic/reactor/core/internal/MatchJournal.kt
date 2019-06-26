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
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.Id
import java.util.*


interface MatchJournal : MutableIterable<MatchJournal.Chunk> {

    /**
     * Add new [Chunk] for matches of principal rules.
     * Log occurrences discarded by match in current [Chunk].
     */
    fun logMatch(match: RuleMatch)

    /**
     * Log occurrence activation in current [Chunk].
     */
    fun logActivation(occ: Occurrence)


    /**
     * Current position at the journal.
     */
    fun currentPos(): Pos

    /**
     * Indicates whether journal's pos points to its end.
     */
    fun isFront(): Boolean = currentPos().chunk == this.last()


    /**
     * Reset journal's position to the beginning, don't modify journal.
     */
    fun resetPos()

    /**
     * Erase part of the journal between current and specified positions.
     * Resets journal position to specified position.
     * @param pastPos position to reset to.
     * @throws IllegalStateException when position is not from the past (relative to current pos).
     */
    fun reset(pastPos: Pos)

    /**
     * Replay activated and discarded occurrences logged in journal between current and provided positions.
     * Advances journal position to specified position.
     * @throws IllegalStateException when position is not from the future (relative to current pos).
     */
    fun replay(controller: Controller, futurePos: Pos)


    /**
     * Returns snapshot of the journal.
     */
    fun view(): View

    /**
     * Returns [StoreView] of the journal from the beginning to its current position.
     */
    fun storeView(): StoreView

    /**
     * Returns [Index] for current state of [MatchJournal].
     */
    fun index(): Index


    /**
     * Simplifies some search operations on [MatchJournal].
     * Also serves as a comparator for positions: later in journal means greater.
     */
    interface Index : Comparator<Pos> {

        /**
         * Returns [Chunk] where provided occurrence was activated.
         * Works not for all occurrences: may return null even if there exists activating chunk.
         * Must work for principal occurrences.
         */
        fun activatingChunkOf(occId: Id<Occurrence>): Chunk?

        /**
         * Returns position of the first principal occurrence activated in provided chunk.
         * Returns null if the chunk activates no principal occurrences.
         */
        fun principalOccurrenceOf(chunk: Chunk): OccurrencePos?

        /**
         * Find [OccurrencePos] by occurrence.
         */
        fun principalPos(occ: Id<Occurrence>): OccurrencePos? =
            // just a composition of two operations
            activatingChunkOf(occ)?.let { principalOccurrenceOf(it) }

        /**
         * Find [OccurrencePos] at which provided match was triggered.
         * Returned position specifies [Occurrence] which triggered the match.
         * Works not for any match, must work for matches of principal rules.
         */
        fun activationPos(match: RuleMatchEx): OccurrencePos? =
            // The latest matched occurrence from match's head is(by definition)
            //  the occurrence which activated this match.
            match.signature().mapNotNull { occSig ->
                occSig?.let { principalPos(it) }
            }.maxWith(this) // compare positions: find latest
    }

    /**
     * Immutable snapshot of current state of [MatchJournal].
     */
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

        /**
         * Returns the resulting collection of activated occurrences
         * without discarded (only in this chunk!) occurrences.
         */
        fun activated(): List<Occurrence> = entriesLog().allOccurrences()

        override fun toString() = "(id=${id()}, ${justifications()}, ${match().rule().uniqueTag()}, ${entriesLog()})"

        // fixme: just provide toPos() instead of override?
        override val chunk: Chunk
            get() = this
        override val entriesInChunk: Int
            get() = entriesLog().size
    }

    abstract class Pos {
        abstract val chunk: Chunk
        abstract val entriesInChunk: Int

        override fun equals(other: Any?) =
            other is Pos
            && other.chunk === chunk
            && other.entriesInChunk == entriesInChunk
    }

    data class OccurrencePos(
        val occ: Occurrence,
        override val chunk: Chunk,
        private val offset: Int): MatchJournal.Pos()
    {
        // fixme: remove 'entriesInChunk' everywhere, use just offset in Pos
        override val entriesInChunk: Int
            get() = offset + 1
    }

}


internal class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

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

