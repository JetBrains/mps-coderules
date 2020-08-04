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

import jetbrains.mps.logic.reactor.core.RuleIndex
import jetbrains.mps.unification.test.MockTermsParser.parseTerm
import org.junit.Test

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

/**
 * @author Fedor Isakov
 */

class TestRuleIndex  {

    @Test
    fun testUpdateRuleIndexReplaceSingle() {
        with(programWithRules(
            rule("rule0",
                headReplaced(constraint("foo")), body())

        ) to programWithRules(
            rule("rule1",
                headReplaced(constraint("bar")), body())

        ))
        {
            val ruleIndex = RuleIndex(first.rulesLists)
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule0")
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                iterator().hasNext() shouldBe false
            }

            ruleIndex.updateIndex(second.rulesLists, setOf("rule0"))
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                iterator().hasNext() shouldBe false
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1")
            }
        }
        
    }

    @Test
    fun testUpdateRuleIndexAddAtEnds() {
        with(programWithRules(
            rule("rule0",
                headReplaced(constraint("foo")), body())

        ) to programWithRules(
            rule("rule1",
                headReplaced(constraint("foo"), constraint("bar")), body()),
            rule("rule0",
                headReplaced(constraint("foo")), body()),
            rule("rule2",
                headReplaced(constraint("bar")), body())

        ))
        {
            val ruleIndex = RuleIndex(first.rulesLists)
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule0")
            }

            ruleIndex.updateIndex(second.rulesLists, setOf())
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1","rule0")
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1","rule2")
            }
        }
    }

    @Test
    fun testUpdateRuleIndexRemoveInTheMiddle() {
        with(programWithRules(
            rule("rule1",
                headReplaced(constraint("foo"), constraint("bar")), body()),
            rule("rule0",
                headReplaced(constraint("foo")), body()),
            rule("rule2",
                headReplaced(constraint("bar")), body())

        ) to programWithRules(
            rule("rule1",
                headReplaced(constraint("foo"), constraint("bar")), body()),
            rule("rule2",
                headReplaced(constraint("bar")), body())

        ))
        {
            val ruleIndex = RuleIndex(first.rulesLists)
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1","rule0")
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1","rule2")
            }

            ruleIndex.updateIndex(second.rulesLists, setOf("rule0"))
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1")
            }
        }
    }

    @Test
    fun testUpdateRuleIndexRemoveFromEnds() {
        with(programWithRules(
            rule("rule1",
                headReplaced(constraint("foo"), constraint("bar")), body()),
            rule("rule0",
                headReplaced(constraint("foo")), body()),
            rule("rule2",
                headReplaced(constraint("bar")), body())

        ) to programWithRules(
            rule("rule0",
                headReplaced(constraint("foo")), body())

        ))
        {
            val ruleIndex = RuleIndex(first.rulesLists)
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1","rule0")
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1","rule2")
            }

            ruleIndex.updateIndex(second.rulesLists, setOf("rule1", "rule2"))
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule0")
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                iterator().hasNext() shouldBe false
            }
        }
    }

    @Test
    fun testUpdateRuleIndex() {
        with(programWithRules(
            rule("rule0",
                headReplaced(constraint("foo")), body()),
            rule("rule3",
                headReplaced(constraint("foo"), constraint("bar")), body()),
            rule("rule1",
                headReplaced(constraint("baz")), body()),
            rule("rule4",
                headReplaced(constraint("qux")), body())

        ) to programWithRules(
            rule("rule5",
                headReplaced(constraint("foo"), constraint("foo")), body()),
            rule("rule0",
                headReplaced(constraint("foo")), body()),
            rule("rule2",
                headReplaced(constraint("bar")), body()),
            rule("rule4",
                headReplaced(constraint("qux")), body()),
            rule("rule6",
                headReplaced(constraint("qux")), body())

        ))
        {
            val ruleIndex = RuleIndex(first.rulesLists)
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule0", "rule3")
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule3")
            }
            with (ruleIndex.forOccurrence(occurrence("baz"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule1")
            }
            with (ruleIndex.forOccurrence(occurrence("qux"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule4")
            }

            ruleIndex.updateIndex(second.rulesLists, setOf("rule1", "rule3"))
            with (ruleIndex.forOccurrence(occurrence("foo"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule5", "rule0")
            }
            with (ruleIndex.forOccurrence(occurrence("bar"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule2")
            }
            with (ruleIndex.forOccurrence(occurrence("baz"))) {
                iterator().hasNext() shouldBe false
            }
            with (ruleIndex.forOccurrence(occurrence("qux"))) {
                map { it.uniqueTag() }.toList() shouldBe listOf("rule4", "rule6")
            }
        }

    }

}