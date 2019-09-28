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

package jetbrains.mps.logic.reactor.core

import gnu.trove.list.TIntList
import gnu.trove.list.array.TIntArrayList
import jetbrains.mps.logic.reactor.core.internal.ReteRuleMatcherImpl
import jetbrains.mps.logic.reactor.core.internal.RuleMatcherImpl
import jetbrains.mps.logic.reactor.program.Rule

/**
 * Abstracts a rule matching algorithm.
 *
 * A RuleMatcher corresponds to a single rule.
 * The method [probe] provides a factory of [RuleMatchingProbe], which is the main handler of match operations.  
 *
 * @author Fedor Isakov
 */
interface RuleMatcher {

    fun probe(): RuleMatchingProbe

}

fun createRuleMatcher(lookup: RuleLookup, tag: Any): RuleMatcher = ReteRuleMatcherImpl(lookup, tag)

val RULE_MATCHER_PROBE_PERSISTENT = false

// Trove stuff
typealias Signature = TIntList

fun Signature.copy() = TIntArrayList(this)

fun IntArray.toSignature() = TIntArrayList(this)

