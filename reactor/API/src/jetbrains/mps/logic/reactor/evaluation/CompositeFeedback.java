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

import jetbrains.mps.logic.reactor.program.Rule;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Fedor Isakov
 */
public class CompositeFeedback extends EvaluationFeedback {

    /**
     * Composition is associative but not commutative.
     */
    public static EvaluationFeedback of(EvaluationFeedback left, EvaluationFeedback right) {
        if (left == null || right == null) {
            return left != null ? left : right;

        } else if (left instanceof CompositeFeedback) {
            return ((CompositeFeedback) left).composeRight(right);

        } else if (right instanceof CompositeFeedback) {
            return ((CompositeFeedback) right).composeLeft(left);

        } else {
            return new CompositeFeedback(Arrays.asList(left, right));
        }
    }

    private CompositeFeedback(List<EvaluationFeedback> newElements) {
        this.severity = maxSeverity(newElements);
        this.elements = newElements;
    }

    @Override
    public boolean handle(Rule rule, EvaluationFeedbackHandler handler) {
        int unhandled = 0;
        for (EvaluationFeedback feedback : elements) {
            if (!feedback.alreadyHandled()) {
                unhandled += 1;
                if (handler.handleFeedback(rule, feedback)) {
                    feedback.setHandled();
                    unhandled -= 1;
                }
            }
        }
        return unhandled == 0;
    }

    @Override
    public Severity getSeverity() {
        return severity;
    }

    @Override
    public String getMessage() {
        return composeMessages(elements);
    }

    public List<EvaluationFeedback> elements() {
        return elements;
    }

    @Override
    public String toString() {
        return elements.toString();
    }

    private CompositeFeedback composeLeft(EvaluationFeedback left) {
        ArrayList<EvaluationFeedback> newElements = new ArrayList<>();
        if (left instanceof CompositeFeedback) {
            newElements.addAll(((CompositeFeedback) left).elements);

        } else {
            newElements.add(left);
        }
        newElements.addAll(elements);
        return new CompositeFeedback(newElements);
    }

    private CompositeFeedback composeRight(EvaluationFeedback right) {
        ArrayList<EvaluationFeedback> newElements = new ArrayList<>(elements);
        if (right instanceof CompositeFeedback) {
            newElements.addAll(((CompositeFeedback) right).elements);

        } else {
            newElements.add(right);
        }
        return new CompositeFeedback(newElements);
    }

    private static Severity maxSeverity(List<EvaluationFeedback> efs) {
        Severity sev = Severity.DEBUG;
        for(EvaluationFeedback ef : efs) {
            if (ef.getSeverity().compareTo(sev) > 0) {
                sev = ef.getSeverity();
            }
        }
        return sev;
    }

    private static String composeMessages(List<EvaluationFeedback> efs) {
        StringBuilder sb = new StringBuilder();
        String sep = "";
        for(EvaluationFeedback ef : efs) {
            sb.append(sep).append(ef.getMessage());
            sep = "; ";
        }
        return sb.toString();
    }

    private final List<EvaluationFeedback> elements;
    private final Severity severity;
}
