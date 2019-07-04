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
         * Returns [Chunk] where provided principal occurrence was activated.
         * Returns null for non-principal occurrences.
         */
        fun activatingChunkOf(occId: Id<Occurrence>): OccChunk?

        /**
         * Find [Pos] at which provided match was triggered.
         * Returned position specifies [Occurrence] which triggered the match.
         * Works not for any match, must work for matches of principal rules.
         */
        fun activationPos(match: RuleMatchEx): Pos? =
            // The latest matched occurrence from match's head is(by definition)
            //  the occurrence which activated this match.
            match.signature().mapNotNull { occSig ->
                occSig?.let { activatingChunkOf(it)?.toPos() }
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

    interface Chunk : MatchJournalChunk {
        val id: Int
        val justifications: Justs

        // fixme: hide rm-mutability
        var entries: MutableList<Entry>
        override fun entriesLog(): List<Entry> = entries

        data class Entry(val occ: Occurrence, val discarded: Boolean = false) : MatchJournalChunk.Entry {
            override fun occ(): Occurrence = occ
            override fun discarded(): Boolean = discarded
            override fun toString() = (if (discarded) '-' else '+') + occ.toString()
        }

        fun isDescendantOf(chunkId: Int): Boolean = justifications.contains(chunkId)
        fun isTopLevel(): Boolean = justifications.size() <= 1 // this condition implies that there're no ancestor chunks

        fun activatedLog(): List<Occurrence> = entriesLog().filter { !it.discarded() }.map { it.occ() as Occurrence }
        fun discardedLog(): List<Occurrence> = entriesLog().filter { it.discarded() }.map { it.occ() as Occurrence }

        /**
         * Returns the resulting collection of activated occurrences
         * without discarded (only in this chunk!) occurrences.
         */
        fun activated(): List<Occurrence> = entriesLog().allOccurrences()

        fun toPos(): Pos = Pos(this, entriesLog().size)
    }

    class MatchChunk(override val id: Int, val match: RuleMatch) : Chunk {
        override val justifications: Justs = match.headJustifications().apply { add(id) }

        override var entries: MutableList<Chunk.Entry> = mutableListOf()

        override fun entriesLog(): List<Chunk.Entry> = entries

        override fun toString() = "(id=$id, $justifications, ${match.rule().tag()}, $entries)"
    }

    class OccChunk(override val id: Int, val occ: Occurrence) : Chunk {
        init { occ.justifications.add(id) }

        override val justifications: Justs
            get() = occ.justifications

        override var entries: MutableList<Chunk.Entry> = mutableListOf()

        override fun toString() = "(id=$id, $justifications, activation of $occ)"
    }

    open class Pos(val chunk: Chunk, val entriesCount: Int) {
        val occ: Occurrence
            get() = chunk.entriesLog()[entriesCount - 1].occ()

        override fun equals(other: Any?) =
            other is Pos
            && other.chunk === chunk
            && other.entriesCount == entriesCount

        override fun hashCode(): Int = 31 * chunk.hashCode() + entriesCount

        override fun toString(): String = "($chunk, $entriesCount)"
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

