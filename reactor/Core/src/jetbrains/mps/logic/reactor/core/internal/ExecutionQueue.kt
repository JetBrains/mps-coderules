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

import jetbrains.mps.logic.reactor.core.Controller
import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.RuleMatchEx
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Id
import java.util.*

internal class ExecutionQueue(
    private val journalIndex: MatchJournal.Index,
    private val ruleOrdering: RuleOrdering
) {

    /**
     * Specifies position in [MatchJournal] for continuing Coderules program evaluation,
     * where it's supposed that [pos] must be a descendant of [ancestor].
     * (i.e. `pos.isDescendantOf(ancestor.id) == true`)
     */
    private data class ExecPos(val pos: MatchJournal.Pos, val ancestor: MatchJournal.OccChunk) {

        constructor(active: MatchJournal.OccChunk) : this(active.toPos(), active)

        val activeOcc: Occurrence
            get() = ancestor.occ
    }

    // It is a position in Journal from previous session,
    //  from which incremental execution continues.
    // Needed for pos comparison in postponeFutureMatches.
    private lateinit var lastIncrementalRootPos: MatchJournal.Pos

    private val postponedMatches: MutableMap<Id<Occurrence>, List<RuleMatchEx>> = HashMap()

    private val execQueue: Queue<ExecPos> =
        PriorityQueue<ExecPos>(1 + journalIndex.size / 2) { // just an estimate
            lhs, rhs -> journalIndex.compare(lhs.pos, rhs.pos)
        }

    private val seen: MutableSet<ExecPos> = HashSet()

    fun run(controller: Controller, processing: ConstraintsProcessing): FeedbackStatus {
        var status: FeedbackStatus = FeedbackStatus.NORMAL()
        if (execQueue.isNotEmpty()) {
            processing.resetStore()

            var prevPos: MatchJournal.Pos? = null
            do {
                val execPos = execQueue.poll()

                // Handles the case when several matches are added to the same position.
                //  Then shouldn't replay, because currentPos is valid and more recent (!) than execPos.
                if (execPos.pos != prevPos) {
                    processing.replayDescendants(processing.logicalState, execPos.ancestor, execPos.pos)
                    lastIncrementalRootPos = execPos.pos
                }
                prevPos = execPos.pos

                // If the occurrence is still in the store after replay (i.e. if it's valid to activate it)
                if (execPos.activeOcc.stored) {
                    status = processing.reactivate(controller, execPos.activeOcc)
                    // Leave journal processing as it was at the point of failure
                    if (!status.operational) return status
                }
            } while (execQueue.isNotEmpty())
        }
        // Also replay to the end after queue is fully executed
        processing.replay(processing.logicalState, processing.last().toPos())
        return status
    }

    fun withPostponedMatches(active: Occurrence, matches: List<RuleMatchEx>): List<RuleMatchEx> =
        postponedMatches.remove(Id(active))?.let { postponed ->
            // Sort matches according to rule priorities
            (matches + postponed).sortedBy { ruleOrdering.orderOf(it.rule()) }
        } ?: matches

    /**
     * Determines, filters out and enqueues future matches.
     * Returns only current matches.
     */
    fun postponeFutureMatches(matches: List<RuleMatchEx>): List<RuleMatchEx> {
        val currentMatches = mutableListOf<RuleMatchEx>()
        for (m in matches) {

            // Returns null for matches with occurrences only from this session
            //  because journalIndex indexes only previous session.
            val pos2occ = journalIndex.activationPos(m)

            // if it is a future match
            if (pos2occ != null && journalIndex.compare(lastIncrementalRootPos, pos2occ.first) < 0) {
                val idOcc = Id(pos2occ.second.occ)
                postponedMatches[idOcc] = (postponedMatches[idOcc] ?: emptyList()) + listOf(m)
                offer(pos2occ.first, pos2occ.second)
            } else {
                currentMatches.add(m)
            }
        }
        return currentMatches
    }

    /**
     * Replays [processing] until a match of [matchedRule] can be inserted according to [RuleOrdering]
     * If [ConstraintsProcessing.isFront] is true, then no unnecessary work is done.
     */
    fun replayToMatch(matchedRule: Rule, activationChunk: MatchJournal.OccChunk, processing: ConstraintsProcessing) =
        processing.replayUntil(processing.logicalState) { chunk ->
            canBeInserted(matchedRule, activationChunk, chunk)
        }

    /**
     * Checks whether [candidateRule] can be inserted in journal as a child
     * of [parentChunk] before one of its child chunks, [beforeChunk].
     * It is assumed that [candidateRule] can be matched by [Occurrence] from [parentChunk].
     */
    fun canBeInserted(candidateRule: Rule, parentChunk: MatchJournal.OccChunk, beforeChunk: MatchJournal.Chunk): Boolean {
        // Place to try activating candidate rule is:
        //  either according to the ordering between rules.
        //  or as the last one, after all existing activations

        val placeToInsertFound = beforeChunk is MatchJournal.MatchChunk
            && ruleOrdering.isEarlierThan(candidateRule, beforeChunk.match.rule())
        val childChunksEnded = !beforeChunk.isDescendantOf(parentChunk.id)

        return (childChunksEnded || placeToInsertFound)
    }


    // todo: do need to reactivate only the main, matching~activating match?
    //  (i.e. don't reactivate additional, inactive heads that only completed the match?)
    fun offerAll(occs: Iterable<Occurrence>): Boolean =
        execQueue.addAll(occs.mapNotNull { occ ->
            journalIndex.activatingChunkOf(Id(occ))?.let { occChunk ->
                ExecPos(occChunk).let {
                    if (seen.add(it)) it else null
                }
            }
        })

    fun offer(posInJournal: MatchJournal.Pos, ancestor: MatchJournal.OccChunk): Boolean =
        ExecPos(posInJournal, ancestor).let {
            if (seen.add(it)) execQueue.offer(it) else false
        }

    // todo: remove
    // special case when position in trace corresponds to position of activated occurrence
//    fun offer(posInJournal: MatchJournal.Pos): Boolean =
//        offer(posInJournal, posInJournal.occ)

    fun isEmpty(): Boolean = execQueue.isEmpty()

    fun isNotEmpty(): Boolean = execQueue.isNotEmpty()

}