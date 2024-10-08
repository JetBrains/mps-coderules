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

package jetbrains.mps.logic.reactor.evaluation;

import jetbrains.mps.logic.reactor.core.FeedbackKt;
import jetbrains.mps.logic.reactor.logical.LogicalContext;
import jetbrains.mps.logic.reactor.program.Rule;

import java.util.List;

/**
 * Oversees the process of evaluating a program.
 * Supplied by the client.
 *
 * @author Fedor Isakov
 */
public interface Supervisor {

    List<?> instantiateArguments(List<?> arguments, LogicalContext logicalContext, InvocationContext invocationContext);

    /**
     * Override this method in order to "handle" the feedback.
     * Returns true if the method has handled (consumed) the feedback.
     * @deprecated use the method returning {@link HandleResult}
     */
    @Deprecated
    default boolean handleFeedback(RuleMatch ruleMatch, Object feedbackKey, List<Object> feedbackBasis, EvaluationFeedback feedback) {
        return false;
    }

    /**
     * Override this method in order to "handle" the feedback.
     * Returns true if the method has handled (consumed) the feedback.
     */
    default HandleResult handleFeedback(EvaluationFeedback feedback, RuleMatch ruleMatch, List<Rule> provenance) {
        List<Object> provenance1 = ((List<Object>) ((List) provenance));
        boolean handled = handleFeedback(ruleMatch, FeedbackKt.getFeedbackKey(ruleMatch), provenance1, feedback);
        if (handled) {
            return HandleResult.DROP;
        }else {
            return HandleResult.PROPAGATE;
        }
    }

    /**
     * Override this method to receive feedback that is being handled elsewhere.
     */
    default void receiveFeedback(EvaluationFeedback feedback, RuleMatch ruleMatch, List<Object> provenance) {
    }

    enum HandleResult {
        DROP, // consumed and recovered, continue with next item
        PROPAGATE, // unhandled, try propagating up the stack
        ESCALATE, // treat exactly as failure
    }

}
