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

import jetbrains.mps.logic.reactor.program.Rule


internal class RuleOrdering(order: Iterable<Rule>): Comparator<Rule> {

    private val ruleOrder: Map<Any, Int> = HashMap<Any, Int>().apply {
        put(MatchJournalImpl.InitRuleMatch.rule().uniqueTag(), -1) // less than anything
        order.forEachIndexed { index, rule -> put(rule.uniqueTag(), index) }
    }

    val ruleTags: Set<Any> = order.map { it.uniqueTag() }.toHashSet() // NB: without initial rule

    fun orderOf(rule: Rule): Int? = ruleOrder[rule.uniqueTag()]

    override fun compare(lhs: Rule, rhs: Rule): Int {
        val lhsRuleOrder = orderOf(lhs)
        val rhsRuleOrder = orderOf(rhs)

        if (lhsRuleOrder == null || rhsRuleOrder == null) {
            throw(IllegalStateException("Rules compared must be present in the rule index!"))
        }
        return lhsRuleOrder.compareTo(rhsRuleOrder)
    }

}