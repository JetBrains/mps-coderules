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

import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.canMatch
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.program.Rule


internal class RuleOrdering(order: Iterable<Rule>): ComparatorExt<Rule> {

    private val ruleOrder: Map<Any, Int> = HashMap<Any, Int>().apply {
        put(MatchJournalImpl.InitRuleMatch.rule().uniqueTag(), -1) // less than anything
        order.forEachIndexed { index, rule -> put(rule.uniqueTag(), index) }
    }

    val ruleTags: Set<Any> = order.map { it.uniqueTag() }.toHashSet() // NB: without initial rule

    override fun compare(lhs: Rule, rhs: Rule): Int = compareBy<Rule>(this::orderOfThrow).compare(lhs, rhs)

    val matchComparator: Comparator<RuleMatch> get() = compareBy<RuleMatch>{ orderOfThrow(it.rule()) }


    private fun orderOf(rule: Rule): Int? = ruleOrder[rule.uniqueTag()]

    private fun orderOfThrow(rule: Rule): Int = when (val res = orderOf(rule)) {
        null -> throw IllegalStateException("Compared rule (${rule.uniqueTag()}) must be present in rule index!")
        else -> res
    }
}


/**
 * Checks whether [candidateRule] can be inserted in journal as a child
 * of [parentChunk] before one of its child chunks, [beforeChunk].
 * It is assumed that [candidateRule] can be matched by [Occurrence] from [parentChunk].
 */
internal fun RuleOrdering.canBeInserted(candidateRule: Rule, parentChunk: MatchJournal.OccChunk, beforeChunk: MatchJournal.Chunk): Boolean {
    // Place to try activating candidate rule is:
    //  either according to the ordering between rules
    //  or as the last one, after all existing activations
    assert(candidateRule.canMatch(parentChunk.occ.constraint))

    val placeToInsertFound = beforeChunk is MatchJournal.MatchChunk
        && candidateRule before beforeChunk.match.rule()

    val isDescendant = beforeChunk.justifiedBy(parentChunk)
    val isSibling = beforeChunk.evidence == parentChunk.evidence && beforeChunk != parentChunk
    val childChunksEnded = !isDescendant || isSibling

    return (childChunksEnded || placeToInsertFound)
}
