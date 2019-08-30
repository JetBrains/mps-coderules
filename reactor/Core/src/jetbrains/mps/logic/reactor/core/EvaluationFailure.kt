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
import jetbrains.mps.logic.reactor.evaluation.EvaluationFeedback

import java.util.ArrayList

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

    /**
     * Returns all messages, from more specific to more generic.
     */
    val allMessages: List<String>
        get() {
            val result = ArrayList<String>()
            var curr: EvaluationFailure? = this
            while (curr != null) {
                if (curr.getMessage() != null) result.add(curr.getMessage()!!)
                curr = curr.reason
            }
            return result
        }

    private var reason: EvaluationFailure? = null
    private var message: String? = null
    private var cause: EvaluationFailureException? = null

    constructor(ex: EvaluationFailureException) {
        this.cause = ex
        this.message = ex.message
    }

    constructor(message: String, ex: EvaluationFailureException) {
        this.cause = ex
        this.message = message
    }

    /**
     * // TODO need a smarter way to supercede previously reported failure with a more specific one
     * Constructs a more specific failure given a generic one.
     */
    constructor(reason: EvaluationFailure, message: String) {
        this.reason = reason
        this.message = message
    }

    override fun getMessage(): String? {
        return message
    }

    override fun getDetails(): Any? {
        return null
    }

    override fun getSeverity(): EvaluationFeedback.Severity {
        return EvaluationFeedback.Severity.FAILURE
    }

    override fun failureCause(): Throwable? {
        return getCause()
    }

    fun getCause(): EvaluationFailureException? {
        return if (cause != null) cause else reason?.getCause()
    }
}
