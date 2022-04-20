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

import gnu.trove.TIntObjectHashMap
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.Id
import java.util.*

typealias ChunkIndex = TIntObjectHashMap<MatchJournal.Chunk>


interface MatchJournal :  EvidenceSource {

    // for tests
    companion object {
        fun forTest(): MatchJournal = MatchJournalImpl(EvaluationTrace.NULL)
    }

    /**
     * Add new [Chunk] for matches of principal rules.
     * Log occurrences discarded by match in current [Chunk].
     * Returns added [Chunk], null for non-principal rules.
     */
    fun logMatch(match: RuleMatch)

    /**
     * Log occurrence activation in current [Chunk].
     * Returns added [Chunk], null for non-principal occurrences.
     */
    fun logActivation(occ: Occurrence)

    /**
     * Returns nearest [MatchChunk] which justifies current chunk.
     * If current chunk is [MatchChunk], then it is returned.
     * May return initial chunk.
     */
    fun parentChunk(): MatchChunk

    /**
     * Returns the initial chunk which is always present in history
     */
    fun initialChunk(): MatchChunk

    /**
     * Returns current [Chunk] position in the journal.
     * NB: returned [Pos] isn't granular: it doesn't take into account
     * replayed position *inside* [Chunk], that is, [Pos.entriesCount]
     * will return the count of all [Occurrence]s.
     */
    fun currentPos(): Pos

    /**
     * Returns internal [ChunkIterator] that allows to remove future [Chunk]s.
     */
    @Deprecated("Obsolete TBR")
    val cursor: ChunkIterator
        get() = TODO()
    
    /**
     * Erase journal between [currentPos] (erased) and [pastPos] (not erased).
     * Moves [cursor] at [pastPos], so that [ChunkIterator.current] is [pastPos].
     * @param pastPos position to reset to.
     * @throws IllegalStateException when position is not from the past (relative to [cursor]).
     */
    fun reset(pastPos: Pos)

    /**
     * Returns snapshot of the journal.
     * FOR TESTS ONLY
     */
    fun view(): View

    /**
     * For tests only.
     * Returns [StoreView] of the journal from the beginning to its current position.
     */
    fun storeView(): StoreView

    fun basisRuleTags(chunk: Chunk): List<Any>

    // NB: returns same collection of justifications, not copy
    fun justifications() = this.currentPos().chunk.justifications()

    fun evidence() = this.currentPos().chunk.evidence

    /**
     * Immutable snapshot of [MatchJournal].
     * FOR TESTS ONLY
     */
    data class View(val chunks: List<Chunk>, val evidenceSeed: Evidence) {
    }

    /**
     * [MatchJournal] operates on [Chunk]s -- basic [Justified] entities.
     * Each [Chunk] contains a number of entries, corresponding to events
     * of activated and discarded [Occurrence]s, which happened before
     * the next [Chunk] was logged.
     */
    interface Chunk : Justified {

        /**
         * Corresponds to event of activated or discarded [Occurrence]
         */
        data class Entry(val occ: Occurrence, val discarded: Boolean = false) {
            override fun toString() = (if (discarded) '-' else '+') + occ.toString()
        }

        /**
         * Returns historically ordered list of activated and discarded [Occurrence]s.
         */
        fun entries(): List<Entry>

        fun addEntry(e: Entry): Boolean

        fun toPos(): Pos = Pos(this, entries().size)
    }

    /**
     * [Chunk] corresponding to a [RuleMatch] of a principal [Rule].
     */
    interface MatchChunk : Chunk {

        /**
         * [RuleMatch] which defines this [Chunk]
         */
        val match: RuleMatch
        val ruleUniqueTag: Any get() = match.rule().uniqueTag()
    }

    /**
     * [Chunk] corresponding to an activation of a principal [Occurrence].
     */
    interface OccChunk : Chunk {
        val occ: Occurrence
    }

    open class Pos(val chunk: Chunk, val entriesCount: Int) {

        override fun equals(other: Any?) =
            other is Pos
            && other.chunk === chunk
            && other.entriesCount == entriesCount

        override fun hashCode(): Int = 31 * chunk.hashCode() + entriesCount
        override fun toString(): String = "($chunk, $entriesCount)"
    }
}

interface ChunkIterator {
    val current: MatchJournal.Chunk

    fun atStart(): Boolean
    fun atEnd(): Boolean

    fun currentPos(): MatchJournal.Pos = current.toPos()
    fun addEntryToCurrent(e: MatchJournal.Chunk.Entry): Boolean = current.addEntry(e)

    infix fun at(pos: MatchJournal.Pos) = current === pos.chunk
    infix fun at(chunk: MatchJournal.Chunk) = current === chunk

}
