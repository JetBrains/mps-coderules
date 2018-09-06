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
import com.github.andrewoma.dexx.collection.Map as PersMap
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchRule
import jetbrains.mps.logic.reactor.program.Rule

/**
 * @author Fedor Isakov
 */

class Dispatcher (val ruleIndex: RuleIndex) {

    private val rule2matcher = HashMap<Rule, RuleMatcher>()

    init {
        ruleIndex.forEach { rule ->
            val matcher = RuleMatcher(rule)
            rule2matcher.put(rule, matcher);
        }
    }

    inner class DispatchFringe {

        private var rule2fringe: PersMap<Rule, RuleMatcher.MatchFringe>
        
        private val allMatches = arrayListOf<MatchRule>()

        constructor() {
            this.rule2fringe = Maps.of()
            rule2matcher.entries.forEach { e ->
                this.rule2fringe = rule2fringe.put(e.key, e.value.fringe())
            }
        }

        constructor(pred: DispatchFringe, matching: Iterable<RuleMatcher.MatchFringe>) {
            this.rule2fringe = pred.rule2fringe
            matching.forEach { fringe ->
                this.rule2fringe = rule2fringe.put(fringe.rule(), fringe)
                allMatches.addAll(fringe.matches())
            }
        }

        fun matches() : Iterable<MatchRule> = allMatches

        fun activated(active: ConstraintOccurrence): DispatchFringe {
            return DispatchFringe(this,
                ruleIndex.forOccurrenceWithMask(active).mapNotNull { (rule, mask) ->
                    rule2fringe[rule]?.expand(active, mask)
                })
        }

        fun discarded(discarded: ConstraintOccurrence): DispatchFringe {
            return DispatchFringe(this,
                ruleIndex.forOccurrence(discarded).mapNotNull { rule ->
                    rule2fringe[rule]
                }.map { fringe ->
                    fringe.cleanup(discarded)
                })
        }

    }

    fun fringe() = DispatchFringe()

}