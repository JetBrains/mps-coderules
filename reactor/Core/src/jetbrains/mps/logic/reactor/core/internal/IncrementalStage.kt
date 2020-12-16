/*
 * Copyright 2014-2020 JetBrains s.r.o.
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
import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.logic.reactor.program.Rule
import java.util.PriorityQueue


/**
 * Incremental stages handle different parts of incremental processing.
 *
 * Each incremental stage is applied at each journal cursor position
 * with read-only rights (see [ChunkReader]) while traversing [MatchJournal].
 */
internal interface IncrementalStage: IncrSpecHolder {

//    fun onNext(reader: MatchJournal.ChunkReader)

}

/**
 * Used for pruning invalid internal state in impls of [IncrementalStage].
 */
internal interface InvalidatingInfo {
    fun isInvalid(entity: Justified): Boolean

    companion object Empty: InvalidatingInfo {
        override fun isInvalid(entity: Justified): Boolean = false
    }
}

/**
 * Invalidation stage includes several activities:
 *  - removing from chunks (i.e. principal matches) that correspond
 *    to rules removed from program, their dependent chunks, and those
 *    dependent on additional invalidated [Justified] entities from [receive];
 *  - reactivating occurrences that led to invalidated matches (through [activationSink]);
 *  - pruning invalidated occurrences and matches from [Dispatcher.DispatchingFront]'s state.
 */
internal class InvalidationStage(
    override val ispec: IncrementalSpec,
    private val posTracker: PosTracking,
    private val invalidRuleIds: Set<Any>,
    private val activationSink: ContinuedActivationSink,
    private val stateCleaner: ConstraintsProcessing.ProgramStateCleaner,
    private val trace: EvaluationTrace
): IncrementalStage, InvalidatingInfo {

    private val invalidJustifications = mutableListOf<Justified>()

    private val invalidFeedbackKeys: MutableSet<Any> = mutableSetOf<Any>()

    private val invalidRuleIdsAll: MutableList<Any> = mutableListOf<Any>()


    fun invalidatedFeedback(): FeedbackKeySet = invalidFeedbackKeys.toHashSet()

    fun invalidatedRules(): List<Any> = invalidRuleIdsAll.toList()

    override fun isInvalid(entity: Justified): Boolean =
        entity.justifiedByAny(invalidJustifications)

    fun receive(invalid: Iterable<Justified>) { invalidJustifications.addAll(invalid) }

    fun receive(invalid: Justified) { invalidJustifications.add(invalid) }

    /**
     * Invalidates next chunk, if needed.
     * Doesn't remove the [Chunk] from the [Journal].
     * Returns [true] if chunk is invalidated and must be removed.
     */
    fun onNext(reader: ChunkReader): Boolean {
        val chunk = reader.next
        if (chunk is MatchJournal.MatchChunk && chunk.dependsOnAny(invalidRuleIds)) {
            invalidJustifications.add(chunk)
        }

        // Invalidating dependent chunks
        if (chunk.justifiedByAny(invalidJustifications)) {

            val validOccs = invalidateChunk(chunk)
            activationSink.offerAll(reader.current.toPos(), validOccs)

            // Remove chunk from the journal
            return true
        }
        return false
    }

    private fun invalidateChunk(chunk: MatchJournal.Chunk): Iterable<Occurrence> {
        // 'Undo' all activated in this chunk occurrences: clear Dispatcher & LogicalState
        chunk.activatedLog().forEach(stateCleaner::erase)

        val validOccs: Sequence<Occurrence>
        if (chunk is MatchJournal.MatchChunk) {
            with (chunk.match) {
                trace.invalidate(this)

                // Don't accidentaly invalidate new rules.
                // New rules themselves remain valid, only their effects must be cleared.
                if (posTracker.isOld(chunk)) {
                    invalidRuleIdsAll.add(rule().uniqueTag())
                }
                // So invalidate feedback they produced
                invalidFeedbackKeys.add(feedbackKey)

                stateCleaner.erase(this as RuleMatchEx)

                // Valid head occurrences could match more rules
                //  without this match, so need to reactivate them.
                // E.g. occurrences discarded in this match on
                //  previous run but revived here can match more rules.
                validOccs = allHeads().filter { occ ->
                    !occ.justifiedByAny(invalidJustifications)
                }
                // By definition of Chunk and principal rule,
                //  all occurrences from the head are principal.
                assert(allHeads().all { it.isPrincipal })
            }
        } else validOccs = emptySequence()
        return validOccs.asIterable()
    }

    private fun MatchJournal.MatchChunk.dependsOnAny(utags: Iterable<Any>): Boolean =
        utags.contains(ruleUniqueTag) || utags.any(::dependsOnRule)

}


/**
 * Addition stage includes:
 * - searching for potential matches for new [addedRules] (see [addRuleCandidates])
 * - receiving additional [MatchCandidates] (e.g. postponed matches)
 * - offering both to [ContinuedActivationSink] at right positions in [MatchJournal]
 *   and in correct order according to rule priorities (see [offerCandidates])
 */
internal class AdditionStage(
    override val ispec: IncrementalSpec,
    private val addedRules: Iterable<Rule>,
    private val activationSink: ContinuedActivationSink,
    private val invalidatingInfo: InvalidatingInfo,
    private val ruleOrdering: RuleOrdering,
    private val ruleIndex: RuleIndex,
    private val trace: EvaluationTrace
): IncrementalStage {

    interface MatchCandidate {
        val rule: Rule
        val occChunk: MatchJournal.OccChunk
    }

    private data class PotentialMatch(
        override val rule: Rule,
        override val occChunk: MatchJournal.OccChunk
    ): MatchCandidate


    private val activationCandidates = PriorityQueue<MatchCandidate>{
        lhs, rhs -> ruleOrdering.compare(lhs.rule, rhs.rule)
    }

    private val hasRules = addedRules.iterator().hasNext() // it's constant


    fun onNext(reader: ChunkReader) {
        val chunk = reader.current
        if (hasRules && chunk is MatchJournal.OccChunk) {
            addRuleCandidates(chunk)
        }
        offerCandidates(reader)
    }

    fun receive(candidates: Iterable<MatchCandidate>) =
        activationCandidates.addAll(candidates)

    private fun addRuleCandidates(chunk: MatchJournal.OccChunk) {
        // filters out rules using occurrence's arguments
        val allRuleCandidates = ruleIndex.forOccurrence(chunk.occ).map { it.uniqueTag() }.toHashSet()

        for (rule in addedRules) {
            if (allRuleCandidates.contains(rule.uniqueTag()) && rule.canMatch(chunk.occ.constraint)) {
                // Can this rule be matched by principal occurrence?
                // Then we will need to find the place among existing child chunks
                //  (i.e. among some number of following ones)
                //  to activate this occurrence, to (possibly) match this rule.
                // Also remember the parent justification of this rule candidate
                //  to drop it from monitoring when child chunks end.
                activationCandidates.add(PotentialMatch(rule, chunk))
                // todo: also use the rule to help Dispatcher in future?
                //  i.e. try matching only on the candidate rule
            }
        }
    }

    private fun offerCandidates(reader: ChunkReader) {
        val aIt = activationCandidates.iterator()
        while (aIt.hasNext()) {
            val candidate = aIt.next()
            val candidateRule = candidate.rule
            val occChunk = candidate.occChunk

            // Relevant for when rewind happenned
            if (invalidatingInfo.isInvalid(occChunk)) {
                aIt.remove()
                continue
            }

            val pos =
                if (ruleOrdering.canBeInserted(candidateRule, occChunk, reader.next) || reader.atEnd())
                    reader.current.toPos()
                else
                    continue

            activationSink.offer(pos, occChunk)
            trace.potentialMatch(occChunk.occ, candidateRule)
            // Drop the candidate if appropriate activation place is found.
            aIt.remove()
        }
    }

}


// todo; extract more restricted interface (w/o rewind) for use in stages
internal class PosTracking(
    private val journalIndex: MatchJournal.Index,
    private val journal: MatchJournal,
    initPos: MatchJournal.Pos = journal.initialChunk().toPos()
) {

    /**
     * Serves as a reference point for determining [isFuture] and [isPast].
     * Contract: [MatchJournal.Index.isKnown] is always `true` for [lastVisited].
     * Updated on each [onNext].
     */
    private var lastVisited: MatchJournal.Pos = initPos

    /**
     * Contract: [MatchJournal.Index.isKnown] is always `true` for [front].
     * Updated only on [rewind], not on each [onNext].
     */
    private var front: MatchJournal.Pos = initPos


    private fun updateReferencePos(current: MatchJournal.Chunk) {
        if (journalIndex.isKnown(current)) {
            lastVisited = current.toPos()
        }
    }

    fun rewind(pos: MatchJournal.Pos) = with(journalIndex) {
        assert(isKnown(pos.chunk))
        assert(pos before lastVisited)

        journal.resetCursor(pos)

        if (lastVisited after front) { // rewind can happen inside another rewind and appear inferior
            front = lastVisited
        }
        lastVisited = pos
    }

    /**
     * Tracks [MatchJournal] position as a reference point for [isFuture].
     */
    fun onNext(reader: ChunkReader): Unit =
        updateReferencePos(reader.current)


    fun isOld(chunk: MatchJournal.Chunk): Boolean =
        journalIndex.isKnown(chunk)
    fun isOld(occ: Occurrence): Boolean =
        journalIndex.isKnown(occ)

    fun isNew(chunk: MatchJournal.Chunk): Boolean =
        !journalIndex.isKnown(chunk)
    fun isNew(occ: Occurrence): Boolean =
        !journalIndex.isKnown(occ)


    fun isFront(): Boolean =
        with(journalIndex) { lastVisited afterOrEq front }

    fun isFuture(pos: MatchJournal.Pos): Boolean =
        with(journalIndex) { pos after lastVisited }

    fun isPast(pos: MatchJournal.Pos): Boolean =
        with(journalIndex) { pos before lastVisited }
}


internal class PostponeMatchesStage(
    override val ispec: IncrementalSpec,
    private val posTracker: PosTracking,
    private val journalIndex: MatchJournal.Index,
    private val ruleOrdering: RuleOrdering
): IncrementalStage {

    private data class PostponedMatch(
        val match: RuleMatchEx,
        override val occChunk: MatchJournal.OccChunk
    ): AdditionStage.MatchCandidate {
        override val rule: Rule = match.rule()

        init { assert(match.allHeads().contains(occChunk.occ)) }
    }


    private val postponedMatches: MutableMap<Int, MutableCollection<RuleMatchEx>> = hashMapOf()


    fun onNext(reader: ChunkReader): Collection<AdditionStage.MatchCandidate> {
        return (reader.current as? MatchJournal.OccChunk)?.let { occChunk ->
            postponedMatches.remove(occChunk.identity)?.map { PostponedMatch(it, occChunk) }
        } ?: emptyList()
    }

    /**
     * Postpones future matches from [matches] on [active]
     * and adds postponed matches to the resulting list (if there're any).
     *
     * @return matches ready for processing, sorted according to rule priorities.
     */
    fun process(active: Occurrence, matches: List<RuleMatchEx>): List<RuleMatchEx> =
        postponeFutureMatches(matches).withPostponedMatches(active)

    /**
     * Determines, filters out, and postpones future matches.
     * Returns only current matches.
     *
     * Future match is a match, which has heads that are not yet
     * activated according to current [MatchJournal] position.
     */
    fun postponeFutureMatches(matches: List<RuleMatchEx>): List<RuleMatchEx> {
        val currentMatches = mutableListOf<RuleMatchEx>()
        for (m in matches) {
            // Returns null for matches with occurrences only from this session
            //  because journalIndex indexes only previous session.
            val occChunk = journalIndex.activationPos(m)
            if (occChunk != null && posTracker.isFuture(occChunk.toPos())) {
                postponedMatches.getOrPut(occChunk.identity, ::mutableListOf).add(m)

            } else {
                currentMatches.add(m)
            }
        }
        return currentMatches
    }

    /**
     * Adds previously postponed matches on [active] [Occurrence], if any, or returns original list.
     *
     * @return matches sorted according to rule priorities or original list.
     */
    private fun List<RuleMatchEx>.withPostponedMatches(active: Occurrence): List<RuleMatchEx> =
        postponedMatches.remove(active.identity)?.let { postponed ->
            (this + postponed).sortedWith(ruleOrdering.matchComparator)
        } ?: this

    private val MatchJournal.OccChunk.identity get() = this.occ.identity
}


internal class ContinueOccurrencesStage(
    override val ispec: IncrementalSpec,
    private val invalidatingInfo: InvalidatingInfo,
    private val journalIndex: MatchJournal.Index
): IncrementalStage, ContinuedActivationSink {

    /**
     * Specifies position in [MatchJournal] for continuing program evaluation.
     * Position of [reactivated] in journal must precede execution position [continueFrom].
     * (see contract in [assertValid]).
     */
    private data class ExecPos(val continueFrom: MatchJournal.Pos, val reactivated: MatchJournal.OccChunk) {
        val reactivatedOcc: Occurrence get() = reactivated.occ
    }

    private infix fun ChunkReader.at(execPos: ExecPos) =
        this at execPos.continueFrom.chunk

    private fun ExecPos.assertValid() {
        assert(journalIndex.isKnown(reactivated)) {
            "only occurrences from previous session can be incrementally continued"
        }

        assert({ // lazily
            if (!isNew(continueFrom.chunk)) { // can't assert it for new chunks (i.e. those from this session)
                val isAncestor = continueFrom.chunk.justifiedBy(reactivated)
                val isPredecessor = journalIndex.compare(continueFrom, reactivated.toPos()) >= 0
                isAncestor || isPredecessor
            } else true
        }())
    }


    private val queue: MutableList<ExecPos> = ArrayList<ExecPos>(1 + journalIndex.size / 8) // rough estimate

    private val seen: MutableSet<ExecPos> = HashSet<ExecPos>()


    private fun ExecPos.isInvalid() = with(invalidatingInfo) {
        isInvalid(reactivated)
    }

    fun onNext(reader: ChunkReader): Collection<Occurrence> {
        val continued = mutableListOf<Occurrence>()
        while (queue.isNotEmpty()) {
            if (queue.top().isInvalid()) {
                queue.pop()
                continue
            }
            if (!(reader at queue.top())) break

            continued.add( queue.pop().reactivatedOcc )
        }
        return continued
    }

    fun onRewind(reader: ChunkReader) = with(journalIndex) {
        val nextPos = reader.next.toPos()
        seen.removeIf { seenPos ->
            isNew(seenPos.continueFrom.chunk) || seenPos.continueFrom afterOrEq nextPos
        }
    }

    override fun offerAll(continueFromPos: MatchJournal.Pos, occs: Iterable<Occurrence>) =
        occs.mapNotNull(journalIndex::activatingChunkOf)
            .sortedWith(journalIndex.chunkComparator)
            .forEach { offer(continueFromPos, it) }

    override fun offer(continueFromPos: MatchJournal.Pos, ancestor: MatchJournal.OccChunk): Boolean =
        ExecPos(continueFromPos, ancestor).let {
            when {
                seen.add(it) -> {
                    it.assertValid()
                    queue.push(it)
                }
                else -> false
            }
        }

    private fun isNew(chunk: MatchJournal.Chunk) = !journalIndex.isKnown(chunk)

    private fun <E> MutableList<E>.top(): E = this.last()
    private fun <E> MutableList<E>.pop(): E = this.removeAt(this.size - 1)
    private fun <E> MutableList<E>.push(element: E): Boolean = this.add(element)
}


// fixme: docs
internal class RewindVolatileOccurrencesStage(
    override val ispec: IncrementalSpec,
    private val posTracker: PosTracking,
    private val journalIndex: MatchJournal.Index,
    private val invalidated: InvalidatingInfo,
    private val principalObserver: PrincipalObserverDispatcher
): IncrementalStage {

    private val toRewind: PriorityQueue<MatchJournal.MatchChunk> = PriorityQueue(journalIndex.chunkComparator)

    private val seen = hashSetOf<MatchJournal.Chunk>()

    fun receive(occs: Sequence<Occurrence>): Boolean =
        occs.filter(::takeVolatile)
            .mapNotNull(journalIndex::activatingChunkOf)
            .mapNotNull(journalIndex::matchChunkOf)
            .filter(seen::add)
            .toList().let(toRewind::addAll)

    fun maybeReset(reader: ChunkReader): MatchJournal.Pos? =
        if (needRewind()) {
            toRewind.peek()!!.toPos()
        } else null

    fun reevaluate(reader: ChunkReader): Iterable<MatchJournal.MatchChunk> {
        val reevaluated = mutableListOf<MatchJournal.MatchChunk>()
        while (toRewind.isNotEmpty()) {
            if (reader atNext toRewind.peek()!!) {
                reevaluated.add(toRewind.remove()!!)
            } else break
        }
        return reevaluated
    }

    fun needRewind(): Boolean = peek()?.let {
        posTracker.isPast(it.toPos())
    } ?: false

    /**
     * Checked peek() for [toRewind] which prunes stale positions.
     */
    private fun peek(): MatchJournal.MatchChunk? {
        while (toRewind.isNotEmpty()) {
            val top = toRewind.peek()!!
            if (invalidated.isInvalid(top)) {
                toRewind.remove()
                continue
            }
            return top
        }
        return null
    }

    private fun takeVolatile(occ: Occurrence) =
        // NB: only occurrences from previous session are considered
        journalIndex.isKnown(occ) &&
            with(principalObserver) { removeTriggered(occ) }

}
