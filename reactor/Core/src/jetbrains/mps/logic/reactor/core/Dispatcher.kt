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
import org.jetbrains.kotlin.fir.resolve.getOrPut


typealias DispatchingFrontState = Map<Any, RuleMatcher>

internal fun emptyFrontState(): DispatchingFrontState = emptyMap()

internal fun DispatchingFrontState.resetLookup() = apply { values.forEach(RuleMatcher::resetRuleLookup) }

/**
 * A front-end interface to [RuleMatcher].
 * 
 * @author Fedor Isakov
 */
class Dispatcher (val ruleIndex: RuleIndex, prevState: DispatchingFrontState = emptyFrontState()) {

    private val ruletag2matcher = HashMap<Any, RuleMatcher>()

    /**
     * Create new empty [DispatchingFront] ready to accept constraints.
     */
    fun front() = DispatchingFront()

    fun getOrCreateMatcher(ruleTag: Any): RuleMatcher =
        ruletag2matcher.getOrPut(ruleTag) { createRuleMatcher(ruleIndex, ruleTag) }

    inner class DispatchingFront {

        private val ruletag2probe : HashMap<Any, RuleMatchingProbe>

        private val occId2tags : TIntObjectHashMap<MutableList<Any>>

        private val matching: Iterable<RuleMatchingProbe>?

        constructor() {
            this.ruletag2probe = hashMapOf()
            this.occId2tags = TIntObjectHashMap()
            this.matching = null
        }

        private constructor(pred: DispatchingFront, matching: Iterable<RuleMatchingProbe>? = null) {
            this.ruletag2probe = pred.ruletag2probe
            this.occId2tags = pred.occId2tags
            this.matching = matching
        }

        fun getOrCreateProbe(ruleTag: Any): RuleMatchingProbe =
            ruletag2probe.getOrPut(ruleTag) { getOrCreateMatcher(ruleTag).probe() }
        
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

        fun state() : DispatchingFrontState = ruletag2matcher //.asMap()

        /**
         * Returns a [DispatchingFront] instance that is "expanded" with matches corresponding to the
         * specified active constraint occurrence.
         */
        fun expand(activated: Occurrence): DispatchingFront = DispatchingFront(this,
            ruleIndex.forOccurrenceWithMask(activated)
                .map { (rule, mask) ->
                    if (!occId2tags.contains(activated.identity)) {
                        occId2tags.put(activated.identity, arrayListOf())
                    }
                    occId2tags[activated.identity].add(rule.uniqueTag())
                    getOrCreateProbe(rule.uniqueTag()).expand(activated, mask) })

        /**
         * Returns a [DispatchingFront] instance that is "contracted": all matches corresponding to the
         * specified discarded constraint occurrence are eliminated.
         */
        fun contract(discarded: Occurrence): DispatchingFront = DispatchingFront(this,
            occId2tags.remove(discarded.identity)
                ?.mapNotNull { ruleTag -> ruletag2probe[ruleTag] }
                ?.map { probe -> probe.contract(discarded) })
        
        /**
         * Serves to indicate that the specified [RuleMatchEx] has been processed (consumed) and has to
         * be excluded from any further "match" set returned by [matches].
         */
        internal fun consume(consumedMatch: RuleMatchEx): DispatchingFront {
            ruletag2probe[consumedMatch.rule().uniqueTag()]?.let {
                val probe = it.consume(consumedMatch)
            }
            return DispatchingFront(this)
        }

    }

}
