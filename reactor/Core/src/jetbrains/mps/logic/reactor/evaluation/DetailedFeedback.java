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

/**
 * Encapsulates a detailed report to be provided by the code being evaluated.
 * Does not affect the evaluation flow.
 * 
 * @author Fedor Isakov
 */
public class DetailedFeedback extends EvaluationFeedback {

    public DetailedFeedback(String message) {
        this.message = message;
        this.severity = Severity.INFO;
    }

    public DetailedFeedback(String message, Severity severity) {
        this.message = message;
        this.severity = severity;
    }

    @Override
    public Severity getSeverity() {
        return severity;
    }

    @Override
    public String getMessage() {
        return message;
    }

    @Override
    public String toString() {
        return getSeverity() + " " + message;
    }

    private final String message;
    private final Severity severity;

}
