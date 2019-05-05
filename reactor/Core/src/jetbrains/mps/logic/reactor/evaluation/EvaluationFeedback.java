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
import jetbrains.mps.logic.reactor.program.Rule;

/**
 * Abstract feedback to be provided by the code being evaluated.
 *
 * @author Fedor Isakov
 */
abstract public class EvaluationFeedback {

    public static EvaluationFeedback details(String message) {
        return new DetailedFeedback(message, Severity.INFO);
    }

    public static EvaluationFeedback details(String message, Severity severity) {
        return new DetailedFeedback(message, severity);
    }

    abstract public Severity getSeverity();

    abstract public String getMessage();

    public boolean isFailure() {
        return Severity.ERROR.compareTo(getSeverity()) <= 0;
    }

    public Throwable failureCause() { throw new UnsupportedOperationException(); }

    public static enum Severity {

        DEBUG(0, "[debug]"),
        INFO(1, "[info]"),
        WARN(2, "[warning]"),
        ERROR(3, "[error]"),
        FATAL(4, "[fatal]")

        ;

        private Severity(int level, String title) {
            this.level = level;
            this.title = title;
        }

        @Override
        public String toString() {
            return title;
        }

        private final int level;

        private final String title;
    }
}
