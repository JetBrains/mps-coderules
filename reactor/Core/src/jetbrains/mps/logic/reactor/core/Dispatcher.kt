/*
 * Copyright 2014-2018 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.core

import gnu.trove.map.hash.TIntObjectHashMap
import jetbrains.mps.logic.reactor.program.Rule
import java.util.IdentityHashMap

/**
 * A front-end interface to [RuleMatcher].
 * 
 * @author Fedor Isakov
 */
class Dispatcher (val ruleIndex: RuleIndex) {

    private val matcherByRule = IdentityHashMap<Rule, RuleMatcher>()

    /**
     * Create new empty [DispatchingFront] ready to accept constraints.
     */
    fun front() = DispatchingFront()

    fun getOrCreateMatcher(rule: Rule): RuleMatcher =
        matcherByRule.getOrPut(rule) { createRuleMatcher(rule) }

    inner class DispatchingFront {

        private val probeByRule : IdentityHashMap<Rule, RuleMatchingProbe>

        private val occId2tags : IdentityHashMap<Occurrence, MutableList<Rule>>

        private val matching: Iterable<RuleMatchingProbe>?

        constructor() {
            this.probeByRule = IdentityHashMap()
            this.occId2tags = IdentityHashMap()
            this.matching = null
        }

        private constructor(pred: DispatchingFront, matching: Iterable<RuleMatchingProbe>? = null) {
            this.probeByRule = pred.probeByRule
            this.occId2tags = pred.occId2tags
            this.matching = matching
        }

        fun getOrCreateProbe(rule: Rule): RuleMatchingProbe =
            probeByRule.getOrPut(rule) { getOrCreateMatcher(rule).probe() }
        
        /**
         * Returns all matches satisfied by the constraint occurrences received so far.
         */
        fun matches() : Iterable<RuleMatchEx> {
            val allMatches = arrayListOf<RuleMatchEx>()
            matching?.forEach { probe ->
                allMatches.addAll(probe.matches())
            }
            return allMatches
        }

        /**
         * Returns a [DispatchingFront] instance that is "expanded" with matches corresponding to the
         * specified active constraint occurrence.
         */
        fun expand(activated: Occurrence): DispatchingFront = DispatchingFront(this,
            ruleIndex.forOccurrenceWithMask(activated)
                .map { (rule, mask) ->
                    occId2tags.computeIfAbsent(activated) { _ ->  arrayListOf() }.add(rule)
                    getOrCreateProbe(rule).expand(activated, mask) })

        /**
         * Returns a [DispatchingFront] instance that is "contracted": all matches corresponding to the
         * specified discarded constraint occurrence are eliminated.
         */
        fun contract(discarded: Occurrence): DispatchingFront = DispatchingFront(this,
            occId2tags.remove(discarded)
                ?.mapNotNull { ruleTag -> probeByRule[ruleTag] }
                ?.map { probe -> probe.contract(discarded) })
        
        /**
         * Serves to indicate that the specified [RuleMatchEx] has been processed (consumed) and has to
         * be excluded from any further "match" set returned by [matches].
         */
        internal fun consume(consumedMatch: RuleMatchEx): DispatchingFront {
            probeByRule[consumedMatch.rule()]?.consume(consumedMatch)
            return DispatchingFront(this)
        }

    }

}
