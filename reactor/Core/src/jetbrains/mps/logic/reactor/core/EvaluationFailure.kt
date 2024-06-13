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

import jetbrains.mps.logic.reactor.evaluation.EvaluationFailureException
import jetbrains.mps.logic.reactor.evaluation.Solver

/**
 *
 * Possible kinds of failure:
 * - try next alt body, fail processing active if none
 * - skip match, try next rule
 * - fail processing active
 * - global failure (fatal)
 *
 *
 *
 * @author Fedor Isakov
 */
class EvaluationFailure : Feedback {
    
    private val message: String
    private val cause: Throwable

    constructor(ex: Throwable) {
        this.cause = EvaluationFailureException(ex)
        this.message = ex.message ?: "<no message>"
    }

    constructor(result: Solver.Result) {
        this.message = result.message ?: "<no message>"
        this.cause = if (result.cause != null)  EvaluationFailureException(result.cause)
                     else                       EvaluationFailureException(message)
    }

    override fun getMessage() = message

    override fun getDetails() = null

    override fun getSeverity() = Severity.FAILURE

    override fun failureCause() = cause
}
