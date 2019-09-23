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
import jetbrains.mps.logic.reactor.core.internal.logical
import jetbrains.mps.logic.reactor.util.bitSet
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.test.MockTerm
import jetbrains.mps.unification.test.MockTerm.*
import jetbrains.mps.unification.test.MockTermsParser
import jetbrains.mps.unification.test.MockTermsParser.*
import org.jetbrains.kotlin.js.parser.parse
import org.junit.Test
import java.util.*

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
    fun testProgramWithSegments() {
        with(programWithRules(
            rule("rule0", emptyList(),
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("bar")
                )),
            rule("rule1", listOf("segment1"),
                headReplaced(
                    constraint("foo", parseTerm("f{g h}"))
                ),
                body(
                    constraint("qux")
                )),
            rule("rule2", listOf("segment2"),
                headReplaced(
                    constraint("foo", parseTerm("f{g h}"))
                ),
                body(
                    constraint("blah")
                )),
            rule("rule3", listOf("segment1"),
                headReplaced(
                    constraint("blin")
                ),
                body(
                    constraint("foo", parseTerm("f{g h}"))
                )),
            rule("rule4", listOf("segment2"),
                headReplaced(
                    constraint("fooblin")
                ),
                body(
                    constraint("foo", parseTerm("f{g h}"))
                ))
        ))
        {
            val ruleIndex = RuleIndex(rulesLists)
            // no segment
            with (ruleIndex.forOccurrence(occurrence("main"))) {
                map { it.tag() }.toSet() shouldBe setOf("rule0")
            }
            with (ruleIndex.forOccurrence(occurrence("foo", parseTerm("f{g h}")))) {
                map { it.tag() }.toSet() shouldBe setOf("rule1", "rule2")
            }

            // segment1
            with (ruleIndex.forOccurrence(taggedOccurrence("rule0", "foo", parseTerm("f{g h}")))) {
                map { it.tag() }.toSet() shouldBe setOf("rule1", "rule2")
            }
            with (ruleIndex.forOccurrence(taggedOccurrence("rule0", "main"))) {
                map { it.tag() }.toSet() shouldBe setOf("rule0")
            }
            with (ruleIndex.forOccurrence(taggedOccurrence("rule3", "foo", parseTerm("f{g h}")))) {
                map { it.tag() }.toSet() shouldBe setOf("rule1")
            }
            with (ruleIndex.forOccurrence(taggedOccurrence("rule3", "main"))) {
                map { it.tag() }.toSet() shouldBe setOf("rule0")
            }

            // segment2
            with (ruleIndex.forOccurrence(taggedOccurrence("rule4",  "foo", parseTerm("f{g h}")))) {
                map { it.tag() }.toSet() shouldBe setOf("rule2")
            }
        }
        
    }

}