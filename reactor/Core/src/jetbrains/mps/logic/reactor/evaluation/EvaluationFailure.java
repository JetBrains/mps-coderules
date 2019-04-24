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

import java.util.ArrayList;
import java.util.List;

/**
 *
 * Possible kinds of failure:
 *  - try next alt body, fail processing active if none
 *  - skip match, try next rule
 *  - fail processing active
 *  - global failure (fatal)
 *
 *
 *
 * @author Fedor Isakov
 */
public class EvaluationFailure extends EvaluationFeedback {

    public EvaluationFailure(EvaluationFailureException ex) {
        this.cause = ex;
        this.message = ex.getMessage();
    }

    public EvaluationFailure(String message, EvaluationFailureException ex) {
        this.cause = ex;
        this.message = message;
    }

    /**
     * // FIXME need a smarter way to supercede previously reported failure with a more specific one
     * Constructs a more specific failure given a generic one.
     */
    public EvaluationFailure(EvaluationFailure reason, String message) {
        this.reason = reason;
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    @Override
    public Severity getSeverity() {
        return Severity.ERROR;
    }

    /**
     * Returns all messages, from more specific to more generic.
     */
    public List<String> getAllMessages() {
        ArrayList<String> result = new ArrayList<>();
        EvaluationFailure curr = this;
        while (curr != null) {
            if (curr.getMessage() != null) result.add(curr.getMessage());
            curr = curr.getReason();
        }
        return result;
    }

    @Override
    public Throwable failureCause() {
        return getCause();
    }

    public EvaluationFailureException getCause() {
        if (cause != null) return cause;
        if (reason != null) return reason.getCause();
        return null;
    }

    public EvaluationFailure getReason() {
        return reason;
    }

    private EvaluationFailure reason;
    private String message;
    private EvaluationFailureException cause;
}
