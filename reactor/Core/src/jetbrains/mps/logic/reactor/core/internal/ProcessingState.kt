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

import jetbrains.mps.logic.reactor.evaluation.CompositeFeedback
import jetbrains.mps.logic.reactor.evaluation.DetailedFeedback
import jetbrains.mps.logic.reactor.evaluation.EvaluationFailure
import jetbrains.mps.logic.reactor.evaluation.EvaluationFeedback

abstract class ProcessingState(val feedback : EvaluationFeedback?) {

    abstract val operational : Boolean

//    inline fun eval(block: (ProcessingState) -> ProcessingState): ProcessingState =
//        if (operational) block(this) else this
    
    /** Stop what is being done because a required condition is not satisfied. */
    open fun abort(details: EvaluationFeedback) : ProcessingState = throw IllegalStateException()

    /** Failure occurred during processing. */
    open fun fail(failure: EvaluationFailure) : ProcessingState = throw IllegalStateException()

    /** Provide detailed feedback. */
    open fun report(details: DetailedFeedback) : ProcessingState = throw IllegalStateException()

    /** Move back to normal. */
    open fun recover() : ProcessingState = throw IllegalStateException()

    class NORMAL(feedback: EvaluationFeedback? = null) : ProcessingState(feedback) {
        override val operational = true
        override fun abort(details: EvaluationFeedback): ProcessingState = ABORTED(this, details)
        override fun fail(failure: EvaluationFailure): ProcessingState = FAILED(this, failure)
        override fun report(details: DetailedFeedback): ProcessingState = NORMAL(compose(this.feedback, details))
    }

    class FAILED(state: ProcessingState, val failure: EvaluationFailure) : ProcessingState(compose(state.feedback, failure)) {
        override val operational = false
        /** Recover after a failure or a cancellation, bring the state back to operational. */
        override fun recover(): ProcessingState = NORMAL(feedback)
    }

    class ABORTED(state: ProcessingState, val reason: EvaluationFeedback) : ProcessingState(compose(state.feedback, reason)) {
        override val operational = false
        override fun recover(): ProcessingState = NORMAL(feedback)
    }
}

internal fun compose(left: EvaluationFeedback?, right: EvaluationFeedback?) = CompositeFeedback.of(left, right)

data class ReportMessage(val severity: Severity, val message: String)

enum class Severity(val level: Int) {
    INFO(0),
    WARNING(1),
    ERROR(2),
    FATAL(3)
}
