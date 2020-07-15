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
import jetbrains.mps.logic.reactor.program.Rule
import java.util.*

internal class ContinuedActivationQueue(
    private val journalIndex: MatchJournal.Index,
    private val ruleOrdering: RuleOrdering
) {

    /**
     * Specifies position in [MatchJournal] for continuing program evaluation.
     * Position of [reactivated] in journal must precede execution position [continueFrom].
     * (see contract in [assertValid]).
     */
    private data class ExecPos(val continueFrom: MatchJournal.Pos, val reactivated: MatchJournal.OccChunk) {
        val reactivatedOcc: Occurrence get() = reactivated.occ
    }

    private fun ExecPos.assertValid() {
        assert(continueFrom.chunk.justifiedBy(reactivated) || journalIndex.compare(continueFrom, reactivated.toPos()) >= 0)
    }


    // It is a position in Journal from previous session,
    //  from which incremental execution continues.
    // Needed for pos comparison in postponeFutureMatches.
    private lateinit var lastIncrementalRootPos: MatchJournal.Pos

    private val execQueue: Queue<ExecPos> =
        PriorityQueue<ExecPos>(1 + journalIndex.size / 8) { // just an estimate
            lhs, rhs -> journalIndex.compare(lhs.continueFrom, rhs.continueFrom)
        }

    private val seen: MutableSet<ExecPos> = HashSet()

    fun run(controller: Controller, processing: ConstraintsProcessing): FeedbackStatus {
        var status: FeedbackStatus = FeedbackStatus.NORMAL()
        processing.resetStore()
        if (execQueue.isNotEmpty()) {

            var prevPos: MatchJournal.Pos? = null
            do {
                val execPos = execQueue.poll()

                // Handles the case when several matches are added to the same position.
                //  Then shouldn't replay, because currentPos is valid and more recent (!) than execPos.
                if (execPos.continueFrom != prevPos) {
                    processing.replay(execPos.continueFrom)
                    lastIncrementalRootPos = execPos.continueFrom
                }
                prevPos = execPos.continueFrom

                // If the occurrence is still in the store after replay (i.e. if it's valid to activate it)
                if (execPos.reactivatedOcc.stored) {
                    status = processing.activateContinue(controller, execPos.reactivatedOcc, processing.parentChunk())
                    // Leave journal processing as it was at the point of failure
                    if (!status.operational) return status
                }
            } while (execQueue.isNotEmpty())
        }
        // Also replay to the end after queue is fully executed
        processing.replay(processing.last().toPos())
        return status
    }

    /**
     * Determines, filters out and enqueues future matches.
     * Returns only current matches.
     */
    fun postponeFutureMatches(matches: List<RuleMatchEx>): List<RuleMatchEx> {
        val currentMatches = mutableListOf<RuleMatchEx>()
        for (m in matches) {

            // Returns null for matches with occurrences only from this session
            //  because journalIndex indexes only previous session.
            val occChunk = journalIndex.activationPos(m)
            val pos = occChunk?.toPos()

            // if it is a future match
            if (pos != null && journalIndex.compare(lastIncrementalRootPos, pos) < 0) {
                offer(pos, occChunk)
            } else {
                currentMatches.add(m)
            }
        }
        return currentMatches
    }

    /**
     * Checks whether [candidateRule] can be inserted in journal as a child
     * of [parentChunk] before one of its child chunks, [beforeChunk].
     * It is assumed that [candidateRule] can be matched by [Occurrence] from [parentChunk].
     */
    fun canBeInserted(candidateRule: Rule, parentChunk: MatchJournal.OccChunk, beforeChunk: MatchJournal.Chunk): Boolean {
        // Place to try activating candidate rule is:
        //  either according to the ordering between rules
        //  or as the last one, after all existing activations
        assert(candidateRule.canMatch(parentChunk.occ.constraint))

        val placeToInsertFound = beforeChunk is MatchJournal.MatchChunk
            && ruleOrdering.isEarlierThan(candidateRule, beforeChunk.match.rule())

        val isDescendant = beforeChunk.justifiedBy(parentChunk)
        val isSibling = beforeChunk.evidence == parentChunk.evidence && beforeChunk != parentChunk
        val childChunksEnded = !isDescendant || isSibling

        return (childChunksEnded || placeToInsertFound)
    }

    fun offerAll(continueFromPos: MatchJournal.Pos, occs: Iterable<Occurrence>) =
        occs.forEach {
            journalIndex.activatingChunkOf(it)?.let { occChunk ->
                 offer(continueFromPos, occChunk)
            }
        }

    fun offer(continueFromPos: MatchJournal.Pos, ancestor: MatchJournal.OccChunk): Boolean =
        ExecPos(continueFromPos, ancestor).let {
            it.assertValid()
            if (seen.add(it)) execQueue.offer(it) else false
        }

    fun isEmpty(): Boolean = execQueue.isEmpty()

    fun isNotEmpty(): Boolean = execQueue.isNotEmpty()

}