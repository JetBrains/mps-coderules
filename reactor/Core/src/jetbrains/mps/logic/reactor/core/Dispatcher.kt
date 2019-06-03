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


typealias DispatchingFrontState = PersMap<Any, RuleMatchingProbe>

/**
 * A front-end interface to [RuleMatcher].
 * 
 * @author Fedor Isakov
 */
class Dispatcher (val ruleIndex: RuleIndex) {

    private val ruletag2matcher = HashMap<Any, RuleMatcher>()

    init {
        ruleIndex.forEach { rule ->
            val matcher = createRuleMatcher(ruleIndex, rule.uniqueTag())
            ruletag2matcher.put(rule.uniqueTag(), matcher);
        }
    }

    /**
     * Create new empty [DispatchingFront] ready to accept constraints.
     */
    fun front() = DispatchingFront()

    fun frontFromState(predState: DispatchingFrontState) = DispatchingFront(predState)

    inner class DispatchingFront {

        private var ruletag2probe: PersMap<Any, RuleMatchingProbe>

        private val allMatches = arrayListOf<RuleMatchImpl>()

        // fixme: make it a default constructor also, with empty input?
        constructor(predState: DispatchingFrontState) {
            this.ruletag2probe = Maps.of()
            ruletag2matcher.entries.forEach { e ->
                val probe = predState[e.key] ?: e.value.probe()
                this.ruletag2probe = ruletag2probe.put(e.key, probe)
            }
        }

        constructor() {
            this.ruletag2probe = Maps.of()
            ruletag2matcher.entries.forEach { e ->
                this.ruletag2probe = ruletag2probe.put(e.key, e.value.probe())
            }
        }

        private constructor(pred: DispatchingFront, matching: Iterable<RuleMatchingProbe>) {
            this.ruletag2probe = pred.ruletag2probe
            matching.forEach { probe ->
                this.ruletag2probe = ruletag2probe.put(probe.rule().uniqueTag(), probe)
                allMatches.addAll(probe.matches() as Collection<RuleMatchImpl>)
            }
        }

        private constructor(pred: DispatchingFront, consumedMatch: RuleMatchEx, isForgetting: Boolean) {
            this.ruletag2probe = pred.ruletag2probe
            pred.ruletag2probe[consumedMatch.rule().uniqueTag()]?.let {
                this.ruletag2probe = ruletag2probe.put(
                    consumedMatch.rule().uniqueTag(),
                    if (!isForgetting) it.consume(consumedMatch) else it.forget(consumedMatch)
                )
            }
        }

        /**
         * Returns all matches satisfied by the constraint occurrences received so far.
         */
        fun matches() : Iterable<RuleMatchEx> = allMatches

        fun state() : DispatchingFrontState = ruletag2probe

        /**
         * Returns a new [DispatchingFront] instance that is "expanded" with matches corresponding to the
         * specified active constraint occurrence.
         */
        fun expand(activated: Occurrence) = DispatchingFront(this,
            ruleIndex.forOccurrenceWithMask(activated).mapNotNull { (rule, mask) ->
                ruletag2probe[rule.uniqueTag()]?.expand(activated, mask)
                ruletag2probe[rule.uniqueTag()]?.expand(activated, mask)
            })

        /**
         * Returns a new [DispatchingFront] instance that is "contracted": all matches corresponding to the
         * specified discarded constraint occurrence are eliminated.
         */
        fun contract(discarded: Occurrence) = DispatchingFront(this,
            ruleIndex.forOccurrence(discarded).mapNotNull { rule ->
                ruletag2probe[rule.uniqueTag()]
            }.map { probe ->
                probe.contract(discarded)
            })

        /**
         * Returns a new [DispatchingFront] instance that completely "forgot" occurrence:
         * forgot all consumed matches involving it & is contracted on it accordingly.
         */
        fun forget(dropped: Occurrence) = DispatchingFront(
            // note contraction, it's needed to avoid adding dropped matches back again to allMatches
            this.contract(dropped),
            ruleIndex.forOccurrence(dropped).mapNotNull { rule ->
                ruletag2probe[rule.uniqueTag()]
            }.map { probe ->
                probe.forget(dropped)
            })

        /**
         * Serves to indicate that the specified [RuleMatchEx] has been processed (consumed) and has to
         * be excluded from any further "match" set returned by [matches].
         */
        internal fun consume(ruleMatch: RuleMatchEx) = DispatchingFront(this, ruleMatch, false)

        /**
         * Forgets that the specified [RuleMatchEx] has been consumed.
         */
        internal fun forget(ruleMatch: RuleMatchEx) = DispatchingFront(this, ruleMatch, true)

    }

}