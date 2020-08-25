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
 * Invalidation stage includes several activities:
 *  - removing chunks (i.e. principal matches) corresponding to
 *      removed rules and chunks depending on them from journal
 *  - reactivating occurrences that led to invalidated matches
 *  - pruning invalidated occurrences and matches from Dispatcher's state
 */
internal class InvalidationStage(
    override val ispec: IncrementalSpec,
    private val invalidRuleIds: Set<Any>,
    private val activationSink: ContinuedActivationSink,
    private val stateCleaner: ConstraintsProcessing.ProgramStateCleaner,
    private val trace: EvaluationTrace
): IncrementalStage {

    private val invalidJustifications = mutableListOf<Justified>()

    private val invalidFeedbackKeys: MutableSet<Any> = mutableSetOf<Any>()

    fun invalidatedFeedback(): FeedbackKeySet = HashSet<Any>(invalidFeedbackKeys)


    fun receive(invalid: Iterable<Justified>) { invalidJustifications.addAll(invalid) }

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
            trace.invalidate(chunk.match)

            invalidFeedbackKeys.add(chunk.match.feedbackKey)
            stateCleaner.erase(chunk.match as RuleMatchEx)

            // Valid head occurrences could match more rules
            //  without this match, so need to reactivate them.
            // E.g. occurrences discarded in this match on
            //  previous run but revived here can match more rules.
            validOccs = chunk.match.allHeads().filter { occ ->
                !occ.justifiedByAny(invalidJustifications)
            }
            // By definition of Chunk and principal rule,
            //  all occurrences from the head are principal.
            assert(chunk.match.allHeads().all { it.isPrincipal })

        } else validOccs = emptySequence()
        return validOccs.asIterable()
    }

    private fun MatchJournal.MatchChunk.dependsOnAny(utags: Iterable<Any>): Boolean =
        utags.contains(this.ruleUniqueTag) || utags.any { utag -> dependsOnRule(utag) }

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


//    private val activationCandidates = mutableListOf<MatchCandidate>()
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


internal class PostponeMatchesStage(
    override val ispec: IncrementalSpec,
    journal: MatchJournal, // todo: remove this dependency, needed only for initial chunk
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


    private var lastKnownPos: MatchJournal.Pos = journal.initialChunk().toPos()

    private val postponedMatches: MutableMap<Int, MutableCollection<RuleMatchEx>> = hashMapOf()


    fun onNext(reader: ChunkReader): Collection<AdditionStage.MatchCandidate> {
        updateBasisPos(reader.current)

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
     * Determines, filters out, and postpones future matches. Returns only current matches.
     *
     * Future match is a match, which has heads that are not yet activated
     * according to [MatchJournal] position tracked in [lastKnownPos].
     */
    fun postponeFutureMatches(matches: List<RuleMatchEx>): List<RuleMatchEx> {
        val currentMatches = mutableListOf<RuleMatchEx>()
        for (m in matches) {

            // Returns null for matches with occurrences only from this session
            //  because journalIndex indexes only previous session.
            val occChunk = journalIndex.activationPos(m)
            val pos = occChunk?.toPos()

            if (pos != null && isFuturePos(pos)) {
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


    /**
     * Tracks [MatchJournal] position as a reference point for distinguishing
     * future matches and current matches (see [postponeFutureMatches] for details).
     */
    private fun updateBasisPos(current: MatchJournal.Chunk) {
        if (journalIndex.isKnown(current)) {
            lastKnownPos = current.toPos()
        }
    }

    /**
     * Defines the notion of 'future' position (and, hence, of 'future match').
     */
    private fun isFuturePos(pos: MatchJournal.Pos): Boolean =
        with(journalIndex) { pos after lastKnownPos }

    private val MatchJournal.OccChunk.identity get() = this.occ.identity
}


internal class ContinueOccurrencesStage(
    override val ispec: IncrementalSpec,
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
            // fixme: no good way to assert it for unknown (i.e. new, from this session) chunks
            if (journalIndex.isKnown(continueFrom.chunk)) {
                val isAncestor = continueFrom.chunk.justifiedBy(reactivated)
                val isPredecessor = journalIndex.compare(continueFrom, reactivated.toPos()) >= 0
                isAncestor || isPredecessor
            } else true
        }())
    }


    private val queue: MutableList<ExecPos> = ArrayList<ExecPos>(1 + journalIndex.size / 8) // rough estimate

    private val seen: MutableSet<ExecPos> = HashSet<ExecPos>()


    fun onNext(reader: ChunkReader): Collection<Occurrence> {
        val continued = mutableListOf<Occurrence>()

        while (queue.isNotEmpty() && reader at queue.top()) {
            continued.add(queue.pop().reactivatedOcc)
        }
        return continued
    }

    override fun offerAll(continueFromPos: MatchJournal.Pos, occs: Iterable<Occurrence>) =
        occs.mapNotNull(journalIndex::activatingChunkOf)
            .sortedWith(journalIndex.chunkComparator)
            .forEach { offer(continueFromPos, it) }

    override fun offer(continueFromPos: MatchJournal.Pos, ancestor: MatchJournal.OccChunk): Boolean =
        ExecPos(continueFromPos, ancestor).let {
            it.assertValid()
            if (seen.add(it)) queue.push(it) else false
        }


    private fun <E> MutableList<E>.top(): E = this.last()
    private fun <E> MutableList<E>.pop(): E = this.removeAt(this.size - 1)
    private fun <E> MutableList<E>.push(element: E): Boolean = this.add(element)
}