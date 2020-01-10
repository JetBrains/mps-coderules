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

import jetbrains.mps.logic.reactor.core.internal.FeedbackStatus
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.StoreView

/**
 * Allows access to the internal mechanics of the reactor.
 *
 * @author Fedor Isakov
 */
interface Controller {

    fun ask(invocation: PredicateInvocation): Boolean

    fun tell(invocation: PredicateInvocation)

    fun reactivate(occ: Occurrence): FeedbackStatus

    fun logicalState(): LogicalStateObservable

    fun clearState()

    /** For tests only  */
    fun evaluate(occ: Occurrence): StoreView

    /** For tests only  */
    fun storeView(): StoreView

    /**
     * Applies necessary predicates implied by the match.
     * Checks the guard.
     * The returned status indicates whether the match can be processed.
     */
    fun offerMatch(match: RuleMatchEx, inStatus: FeedbackStatus): FeedbackStatus

    /**
     * Evaluates the rule's body.
     * The caller must ensure that [offerMatch] has been called before and
     * its status allowed the operation.
     * The returned status captures the result of evaluating the rule's body.
     */
    fun processBody(match: RuleMatchEx, inStatus: FeedbackStatus): FeedbackStatus

}
