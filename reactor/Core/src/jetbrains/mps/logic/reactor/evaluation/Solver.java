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

import org.jetbrains.annotations.NotNull;

/**
 * Solver for predicates.
 * 
 * @author Fedor Isakov
 */
public interface Solver extends Queryable, Instructible {

    class Result {

        private static final Result OK_RESULT = new Result();
        private static final Result FAIL_RESULT = new Result("unspecified failure");
        
        private String message;
        private Throwable cause;
        private final boolean success;

        public static Result OK() {
            return OK_RESULT;
        }

        public static Result FAIL() {
            return FAIL_RESULT;
        }

        public static Result FAIL(Throwable cause) {
            return new Result(cause);
        }

        public static Result FAIL(String message, Throwable cause) {
            return new Result(message, cause);
        }

        public static Result FAIL(String message) {
            return new Result(message);
        }

        public Result(@NotNull String message) {
            this.message = message;
            this.success = false;
        }

        public Result(@NotNull String message, @NotNull Throwable cause) {
            this.message = message;
            this.cause = cause;
            this.success = false;
        }

        public Result(@NotNull Throwable cause) {
            this.cause = cause;
            this.message = cause.getMessage();
            this.success = false;
        }

        public Result() {
            this.success = true;
        }

        public boolean isOk() {
            return success;
        }

        public Throwable getCause() {
            return cause;
        }

        public String getMessage() {
            return message;
        }
    }

    @Override
    void tell(PredicateInvocation invocation);

    @Override
    boolean ask(PredicateInvocation invocation);

    default Result tryTell(PredicateInvocation invocation) {
        try {
            tell(invocation);
            return Result.OK();

        } catch (Throwable t) {
            return Result.FAIL(t);
        }
    }
}
