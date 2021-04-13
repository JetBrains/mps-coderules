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
import kotlin.Comparator

typealias ChunkIndex = TIntObjectHashMap<MatchJournal.Chunk>


interface MatchJournal :  EvidenceSource {

    /**
     * Add new [Chunk] for matches of principal rules.
     * Log occurrences discarded by match in current [Chunk].
     * Returns added [Chunk], null for non-principal rules.
     */
    fun logMatch(match: RuleMatch): MatchChunk?

    /**
     * Log occurrence activation in current [Chunk].
     * Returns added [Chunk], null for non-principal occurrences.
     */
    fun logActivation(occ: Occurrence): OccChunk?

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
     * Indicates whether journal's pos points to its end.
     */
    fun isFront(): Boolean


    /**
     * Returns read-only [JournalIterator] that allows to remove future [Chunk]s.
     */
    fun iterator(): JournalIterator

    /**
     * Returns internal [JournalIterator] that allows to remove future [Chunk]s.
     */
    val cursor: RemovingJournalIterator

    /**
     * Same as [resetCursor], moves [cursor] before [initialChunk].
     */
    fun resetCursor() = resetCursor(Pos(initialChunk(), 0))

    /**
     * Moves [cursor] before [pastPos], so that [ChunkReader.next] is [pastPos].
     * Doesn't modify journal contents, as opposed to [reset].
     */
    fun resetCursor(pastPos: Pos)

    /**
     * Erase journal between [currentPos] (erased) and [pastPos] (not erased).
     * Moves [cursor] at [pastPos], so that [ChunkReader.current] is [pastPos].
     * @param pastPos position to reset to.
     * @throws IllegalStateException when position is not from the past (relative to [cursor]).
     */
    fun reset(pastPos: Pos)

    /**
     * Replay activated and discarded occurrences logged in journal between current
     * and provided positions. Advances journal position to specified position.
     * Idempotent operation (can be called multiple times on same [Pos]]).
     * @throws IllegalStateException when [futurePos] is not from the future (relative to [cursor]).
     */
    fun replay(futurePos: Pos)


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

    fun basisRuleTags(chunk: Chunk): List<Any>

    /**
     * Simplifies some search operations on [MatchJournal].
     * Also serves as a comparator for positions: later in journal means greater.
     */
    interface Index : ComparatorExt<Pos> {

        /**
         * Returns [Comparator] for [Chunk]s based on their [Pos] in this [Index].
         */
        val chunkComparator: Comparator<Chunk> get

        /**
         * Returns [true] for indexed [Chunk]s.
         * [Index] is a snapshot of [MatchJournal],
         * so new additions to journal aren't indexed.
         */
        fun isKnown(chunk: Chunk): Boolean

        /**
         * Same as [isKnown], but for [Occurrence].
         * Returns [true] for indexed [Occurrence]s.
         */
        fun isKnown(occ: Occurrence): Boolean = activatingChunkOf(occ) != null

        /**
         * Returns [Chunk] corresponding to [occ] activation.
         * Returns null for non-principal occurrences & those not from indexed session.
         */
        fun activatingChunkOf(occ: Occurrence): OccChunk?

        /**
         * Returns [Pos] at which provided [RuleMatch] was triggered.
         * Returns null for non-principal rules & those not from indexed session.
         */
        fun activationPos(match: RuleMatchEx): OccChunk?

        /**
         * Returns [MatchChunk] corresponding to [RuleMatch] where [occ] was activated.
         * Returns null for non-principal occurrences & those not from indexed session.
         */
        fun matchChunkOf(occChunk: OccChunk): MatchChunk?

        /**
         * Length of the indexed [MatchJournal]
         */
        val size: Int
    }


    /**
     * Immutable snapshot of [MatchJournal].
     */
    data class View(val chunks: List<Chunk>, val evidenceSeed: Evidence) : MatchJournalView {

        constructor() : this(emptyList<Chunk>(), 0)

        override fun getStoreView(): StoreView = StoreViewImpl(
            chunks.flatMap { it.entries() }.allOccurrences().asSequence()
        )
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

        /**
         * Checks whether this [Chunk] has no ancestors (not counting [MatchJournal.initialChunk])
         */
        fun isTopLevel(): Boolean = justifications().size() <= 1

        /**
         * Same as [entries], but returns only activated [Occurrence]s.
         */
        fun activatedLog(): List<Occurrence> = entries().filter { !it.discarded }.map { it.occ }

        /**
         * Same as [entries], but returns only discarded [Occurrence]s.
         */
        fun discardedLog(): List<Occurrence> = entries().filter { it.discarded }.map { it.occ }
        fun toPos(): Pos = Pos(this, entries().size)
    }

    /**
     * [Chunk] corresponding to a [RuleMatch] of a principal [Rule].
     */
    interface MatchChunk : Chunk {

        /**
         * Returns true if this [Chunk] depends on changes to specified rule.
         * Relevant for rules with origin. Doesn't include rule from [match].
         */
        fun dependsOnRule(utag: Any): Boolean

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


internal class StoreViewImpl(occurrences: Sequence<Occurrence>) : StoreView {

    val allOccurrences = occurrences.toSet()

    val allSymbols = allOccurrences.map { co -> co.constraint().symbol() }.toSet()

    override fun constraintSymbols(): Iterable<ConstraintSymbol> = allSymbols

    override fun allOccurrences(): Iterable<ConstraintOccurrence> = allOccurrences

    override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
        allOccurrences.filter { co -> co.constraint().symbol() == symbol }.toSet()

}


private fun Iterable<MatchJournal.Chunk.Entry>.allOccurrences(): List<Occurrence> {
    val set = HashSet<Id<Occurrence>>()
    for (it in this) {
        val idOcc = Id(it.occ)
        if (it.discarded) set.remove(idOcc) else set.add(idOcc)
    }
    return set.map { it.wrapped }
}


// NB: returns same collection of justifications, not copy
fun MatchJournal.justifications() = this.currentPos().chunk.justifications()
fun MatchJournal.evidence() = this.currentPos().chunk.evidence
// todo: this should be more correct
//fun MatchJournal.justifications() = this.parentChunk().justifications()
//fun MatchJournal.evidence() = this.parentChunk().evidence

