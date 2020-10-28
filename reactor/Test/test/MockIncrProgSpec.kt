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

import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.logic.reactor.program.Rule

class MockIncrProgSpec(
    val principalRuleTags: Set<Any>,
    val principalCtrSyms: Set<ConstraintSymbol>,
    val weakPrincipalRuleTags: Set<Any>,
    private var strictness: IncrementalSpec.AssertLevel = IncrementalSpec.AssertLevel.Normal
) : IncrementalSpec {

    constructor(principalRuleTags: Set<Any>, principalCtrSyms: Set<ConstraintSymbol>) :
        this(principalRuleTags, principalCtrSyms, emptySet())

    fun withContractChecks() = this.also { strictness = IncrementalSpec.AssertLevel.AssertContracts }

    override fun isPrincipal(ctr: Constraint): Boolean = principalCtrSyms.contains(ctr.symbol())
    override fun isPrincipal(rule: Rule): Boolean = principalRuleTags.contains(rule.uniqueTag())
    override fun isWeakPrincipal(rule: Rule): Boolean = weakPrincipalRuleTags.contains(rule.uniqueTag())

    override fun ability(): IncrementalSpec.Enabled = IncrementalSpec.Enabled.Yes
    override fun incrLevel(): IncrementalSpec.IncrLevel = IncrementalSpec.IncrLevel.Full
    override fun assertLevel(): IncrementalSpec.AssertLevel = strictness
}