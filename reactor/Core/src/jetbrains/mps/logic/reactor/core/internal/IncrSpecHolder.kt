/*
 * Copyright 2014-2020 JetBrains s.r.o.
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

import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.program.IncrementalContractViolationException
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.logic.reactor.program.Rule

@Deprecated("obsolete class")
interface IncrSpecHolder {
    val ispec: IncrementalSpec

    val Occurrence.isPrincipal get() = ispec.isPrincipal(this.constraint())

    val RuleMatch.isPrincipal get() = ispec.isPrincipal(this.rule())
    val Rule.isPrincipal get() = ispec.isPrincipal(this)

    val RuleMatch.isWeakPrincipal get() = ispec.isWeakPrincipal(this.rule())
    val Rule.isWeakPrincipal get() = ispec.isWeakPrincipal(this)

}
