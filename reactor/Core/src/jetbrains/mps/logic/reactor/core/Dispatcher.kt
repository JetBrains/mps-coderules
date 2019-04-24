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
import jetbrains.mps.logic.reactor.core.internal.MatchRuleImpl
import jetbrains.mps.logic.reactor.core.internal.RuleMatcherImpl
import com.github.andrewoma.dexx.collection.Map as PersMap
import jetbrains.mps.logic.reactor.evaluation.MatchRule
import jetbrains.mps.logic.reactor.program.Rule

/**
 * A front-end interface to [RuleMatcher].
 * 
 * @author Fedor Isakov
 */
class Dispatcher (val ruleIndex: RuleIndex) {

    private val rule2matcher = HashMap<Rule, Matcher>()

    init {
        ruleIndex.forEach { rule ->
            val matcher = Matcher(rule)
            rule2matcher.put(rule, matcher);
        }
    }

    inner class DispatchFringe {

        private var rule2probe: PersMap<Rule, MatchingProbe>
        
        private val allMatches = arrayListOf<MatchRuleImpl>()

        constructor() {
            this.rule2probe = Maps.of()
            rule2matcher.entries.forEach { e ->
                this.rule2probe = rule2probe.put(e.key, e.value.probe())
            }
        }

        constructor(pred: DispatchFringe, matching: Iterable<MatchingProbe>) {
            this.rule2probe = pred.rule2probe
            matching.forEach { probe ->
                this.rule2probe = rule2probe.put(probe.rule(), probe)
                allMatches.addAll(probe.matches() as Collection<MatchRuleImpl>)
            }
        }

        constructor(pred: DispatchFringe, consumedMatch: MatchRule) {
            this.rule2probe = pred.rule2probe
            pred.rule2probe[consumedMatch.rule()]?.let {
                this.rule2probe = rule2probe.put(consumedMatch.rule(), it.consumed(consumedMatch))
            }
        }

        fun matches() : Iterable<MatchRule> = allMatches

        fun consume(matchRule: MatchRule) = DispatchFringe(this, matchRule)

        fun expand(activated: Occurrence) = DispatchFringe(this,
            ruleIndex.forOccurrenceWithMask(activated).mapNotNull { (rule, mask) ->
                rule2probe[rule]?.expand(activated, mask)
                rule2probe[rule]?.expand(activated, mask)
            })

        fun contract(discarded: Occurrence) = DispatchFringe(this,
            ruleIndex.forOccurrence(discarded).mapNotNull { rule ->
                rule2probe[rule]
            }.map { probe ->
                probe.contract(discarded)
            })

    }

    fun fringe() = DispatchFringe()

}