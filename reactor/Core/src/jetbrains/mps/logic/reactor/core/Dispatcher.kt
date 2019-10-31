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


typealias DispatchingFrontState = Map<Any, RuleMatcher>

/**
 * A front-end interface to [RuleMatcher].
 * 
 * @author Fedor Isakov
 */
class Dispatcher (val ruleIndex: RuleIndex, prevState: DispatchingFrontState = emptyMap()) {

    private val ruletag2matcher = HashMap<Any, RuleMatcher>()

    init {
        ruleIndex.forEach { rule ->
            val ruletag = rule.uniqueTag()
            // reset references to stale RuleIndex instances
            val matcher = prevState[ruletag]?.apply { setRuleLookup(ruleIndex) }
                    ?: createRuleMatcher(ruleIndex, ruletag)
            ruletag2matcher.put(ruletag, matcher);
        }
    }

    /**
     * Create new empty [DispatchingFront] ready to accept constraints.
     */
    fun front() = DispatchingFront()

    inner class DispatchingFront {

        private val ruletag2probe : HashMap<Any, RuleMatchingProbe>

        private val matching: Iterable<RuleMatchingProbe>?

        constructor() {
            this.ruletag2probe = hashMapOf()
            this.matching = null
            ruletag2matcher.entries.forEach { e ->
                ruletag2probe.put(e.key, e.value.probe())
            }
        }

        private constructor(pred: DispatchingFront, matching: Iterable<RuleMatchingProbe>? = null) {
            this.ruletag2probe = pred.ruletag2probe
            this.matching = matching
        }

        /**
         * Returns all matches satisfied by the constraint occurrences received so far.
         */
        fun matches() : Iterable<RuleMatchEx> {
            val allMatches = arrayListOf<RuleMatchEx>()
            matching?.forEach { probe ->
                if (RULE_MATCHER_PROBE_PERSISTENT) {
                    ruletag2probe[probe.rule().uniqueTag()] = probe
                }
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
                .mapNotNull { (rule, mask) -> ruletag2probe[rule.uniqueTag()]?.expand(activated, mask) })

        /**
         * Returns a [DispatchingFront] instance that is "contracted": all matches corresponding to the
         * specified discarded constraint occurrence are eliminated.
         */
        fun contract(discarded: Occurrence): DispatchingFront = DispatchingFront(this,
            ruleIndex.forOccurrence(discarded)
                .mapNotNull { rule -> ruletag2probe[rule.uniqueTag()] }
                .map { probe -> probe.contract(discarded) })

        /**
         * Returns a [DispatchingFront] instance which "forgot" that it already expanded the occurrence.
         * After that the occurrence can be expanded again without triggering observer reactivation logic.
         * Needed to discern incremental reactivation from observers reactivation.
         * In other words, the state of [DispatchingFront] connected with this occurrence
         * transitions from "fully-expanded" to "partly-expanded".
         */
        internal fun forgetExpanded(dropped: Occurrence): DispatchingFront = DispatchingFront(this,
            ruleIndex.forOccurrence(dropped)
                .mapNotNull { rule -> ruletag2probe[rule.uniqueTag()] }
                .map { probe -> probe.forgetExpanded(dropped) }
            )

        /**
         * Returns a new [DispatchingFront] instance which contracts state with this occurrence
         * and "forgets" that has seen it or that consumed any matches involving it.
         * Needed for pruning outdated unrelevant state on incremental reactivations.
         */
        internal fun forget(dropped: Occurrence): DispatchingFront = DispatchingFront(this,
            ruleIndex.forOccurrence(dropped)
                .mapNotNull { rule -> ruletag2probe[rule.uniqueTag()] }
                .map { probe -> probe.contract(dropped).forgetExpanded(dropped).forgetConsumed(dropped) })

        /**
         * Serves to indicate that the specified [RuleMatchEx] has been processed (consumed) and has to
         * be excluded from any further "match" set returned by [matches].
         */
        internal fun consume(consumedMatch: RuleMatchEx): DispatchingFront {
            ruletag2probe[consumedMatch.rule().uniqueTag()]?.let {
                val probe = it.consume(consumedMatch)
                if (RULE_MATCHER_PROBE_PERSISTENT) {
                    ruletag2probe[consumedMatch.rule().uniqueTag()] = probe
                }
            }
            return DispatchingFront(this)
        }

        /**
         * Forgets that the specified [RuleMatchEx] has been consumed.
         */
        internal fun forget(consumedMatch: RuleMatchEx): DispatchingFront {
            ruletag2probe[consumedMatch.rule().uniqueTag()]?.let {
                val probe = it.forget(consumedMatch)
                if (RULE_MATCHER_PROBE_PERSISTENT) {
                    ruletag2probe[consumedMatch.rule().uniqueTag()] = probe
                }
            }
            return DispatchingFront(this)
        }

    }

}
