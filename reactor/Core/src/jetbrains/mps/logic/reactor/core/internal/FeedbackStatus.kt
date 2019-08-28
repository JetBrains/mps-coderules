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

import jetbrains.mps.logic.reactor.core.Feedback
import jetbrains.mps.logic.reactor.core.CompositeFeedback

/**
 * Corresponds to the status given by the most recent constraint activation or predicate evaluation.
 *
 * A disjoint union of types:
 *  NORMAL - the feedback is neutral or there is no feedback
 *  FAILED - the feedback is a failure
 *  ABORTED - the feedback is negative, but not a failure
 *
 */
abstract class FeedbackStatus(val feedback : Feedback?) {

    abstract val operational : Boolean

//    inline fun eval(block: (FeedbackStatus) -> FeedbackStatus): FeedbackStatus =
//        if (operational) block(this) else this
    
    /** Stop what is being done because a required condition is not satisfied. */
    open fun abort(details: Feedback) : FeedbackStatus = throw IllegalStateException()

    /** Failure occurred during processing. */
    open fun fail(failure: Feedback) : FeedbackStatus = throw IllegalStateException()

    /** Provide detailed feedback. */
    open fun report(details: Feedback) : FeedbackStatus = throw IllegalStateException()

    /** Move back to normal. */
    open fun recover() : FeedbackStatus = throw IllegalStateException()

    class NORMAL(feedback: Feedback? = null) : FeedbackStatus(feedback) {
        override val operational = true
        override fun abort(details: Feedback): FeedbackStatus = ABORTED(this, details)
        override fun fail(failure: Feedback): FeedbackStatus = FAILED(this, failure)
        override fun report(details: Feedback): FeedbackStatus = NORMAL(compose(this.feedback, details))
    }

    class FAILED(status: FeedbackStatus, val failure: Feedback) : FeedbackStatus(compose(status.feedback, failure)) {
        override val operational = false
        /** Recover after a failure or a cancellation, bring the status back to operational. */
        override fun recover(): FeedbackStatus = NORMAL(feedback)
    }

    class ABORTED(status: FeedbackStatus, val reason: Feedback) : FeedbackStatus(compose(status.feedback, reason)) {
        override val operational = false
        override fun recover(): FeedbackStatus = NORMAL(CompositeFeedback.dropLast(feedback))
    }
}

internal fun compose(left: Feedback?, right: Feedback?) = CompositeFeedback.of(left, right)

data class ReportMessage(val severity: Severity, val message: String)

enum class Severity(val level: Int) {
    INFO(0),
    WARNING(1),
    ERROR(2),
    FATAL(3)
}
