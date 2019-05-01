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

import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.core.internal.RuleMatchImpl
import com.github.andrewoma.dexx.collection.Map as PersMap
import jetbrains.mps.logic.reactor.evaluation.MatchRule

/**
 * A front-end interface to [RuleMatcher].
 * 
 * @author Fedor Isakov
 */
class Dispatcher (val ruleIndex: RuleIndex) {

    private val ruletag2matcher = HashMap<String, RuleMatcher>()

    init {
        ruleIndex.forEach { rule ->
            val matcher = createRuleMatcher(ruleIndex, rule.tag())
            ruletag2matcher.put(rule.tag(), matcher);
        }
    }

    /**
     * Create new empty [DispatchFringe] ready to accept constraints.
     */
    fun fringe() = DispatchFringe()

    inner class DispatchFringe {

        private var ruletag2probe: PersMap<String, RuleMatchingProbe>

        private val allMatches = arrayListOf<RuleMatchImpl>()

        constructor() {
            this.ruletag2probe = Maps.of()
            ruletag2matcher.entries.forEach { e ->
                this.ruletag2probe = ruletag2probe.put(e.key, e.value.probe())
            }
        }

        private constructor(pred: DispatchFringe, matching: Iterable<RuleMatchingProbe>) {
            this.ruletag2probe = pred.ruletag2probe
            matching.forEach { probe ->
                this.ruletag2probe = ruletag2probe.put(probe.rule().tag(), probe)
                allMatches.addAll(probe.matches() as Collection<RuleMatchImpl>)
            }
        }

        private constructor(pred: DispatchFringe, consumedMatch: RuleMatchEx) {
            this.ruletag2probe = pred.ruletag2probe
            pred.ruletag2probe[consumedMatch.rule().tag()]?.let {
                this.ruletag2probe = ruletag2probe.put(consumedMatch.rule().tag(), it.consume(consumedMatch))
            }
        }

        /**
         * Returns all matches satisfied by the constraint occurrences received so far.
         */
        fun matches() : Iterable<RuleMatchEx> = allMatches

        /**
         * Returns a new [DispatchFringe] instance that is "expanded" with matches corresponding to the
         * specified active constraint occurrence.
         */
        fun expand(activated: Occurrence) = DispatchFringe(this,
            ruleIndex.forOccurrenceWithMask(activated).mapNotNull { (rule, mask) ->
                ruletag2probe[rule.tag()]?.expand(activated, mask)
                ruletag2probe[rule.tag()]?.expand(activated, mask)
            })

        /**
         * Returns a new [DispatchFringe] instance that is "contracted": all matches corresponding to the
         * specified discarded constraint occurrence are eliminated.
         */
        fun contract(discarded: Occurrence) = DispatchFringe(this,
            ruleIndex.forOccurrence(discarded).mapNotNull { rule ->
                ruletag2probe[rule.tag()]
            }.map { probe ->
                probe.contract(discarded)
            })

        /**
         * Serves to indicate that the specified [RuleMatchEx] has been processed (consumed) and has to
         * be excluded from any further "match" set returned by [matches].
         */
        internal fun consume(matchRule: RuleMatchEx) = DispatchFringe(this, matchRule)

    }

}