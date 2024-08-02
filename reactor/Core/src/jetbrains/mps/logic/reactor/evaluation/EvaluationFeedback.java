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

import jetbrains.mps.logic.reactor.core.DetailedFeedback;
import org.jetbrains.annotations.NotNull;

/**
 * Abstract feedback to be provided by the code being evaluated.
 *
 * @author Fedor Isakov
 */
abstract public class EvaluationFeedback {
    
    public static EvaluationFeedback debug(String message, Object details) {
        return new DetailedFeedback(message, Severity.DEBUG, details);
    }

    public static EvaluationFeedback debug(String message) {
        return new DetailedFeedback(message, Severity.DEBUG, null);
    }

    public static EvaluationFeedback info(String message, Object details) {
        return new DetailedFeedback(message, Severity.INFO, details);
    }

    public static EvaluationFeedback info(String message) {
        return new DetailedFeedback(message, Severity.INFO, null);
    }

    public static EvaluationFeedback warn(String message, Object details) {
        return new DetailedFeedback(message, Severity.WARN, details);
    }

    public static EvaluationFeedback warn(String message) {
        return new DetailedFeedback(message, Severity.WARN, null);
    }

    public static EvaluationFeedback error(String message, Object details) {
        return new DetailedFeedback(message, Severity.ERROR, details);
    }

    public static EvaluationFeedback error(String message) {
        return new DetailedFeedback(message, Severity.ERROR, null);
    }

    abstract public Severity getSeverity();

    @NotNull
    abstract public String getMessage();

    abstract public Object getDetails();

    public boolean isFailure() {
        return Severity.FAILURE.compareTo(getSeverity()) <= 0;
    }

    @NotNull
    public Throwable failureCause() { throw new UnsupportedOperationException(); }

    public enum Severity {

        DEBUG("[debug]"),
        INFO("[info]"),
        WARN("[warning]"),
        ERROR("[error]"),
        FAILURE("[failure]"),
        FATAL("[fatal]")

        ;

        Severity(String title) {
            this.title = title;
        }

        @Override
        public String toString() {
            return title;
        }

        private final String title;
    }
}
