/*
 * Copyright 2014-2017 JetBrains s.r.o.
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
 * An interface to be implemented by clients wishing to be notified of the events during evaluation.
 *
 * @author Fedor Isakov
 */
public interface EvaluationTrace {

    EvaluationTrace NULL = new EvaluationTrace() {

        public void activate(ConstraintOccurrence occurrence) {
        }

        public void reactivate(ConstraintOccurrence occurrence) {
        }

        public void suspend(ConstraintOccurrence occurrence) {
        }

        public void discard(ConstraintOccurrence occurrence) {
        }

        public void trying(MatchRule matchRule) {
        }

        public void reject(MatchRule matchRule) {
        }

        public void trigger(MatchRule matchRule) {
        }

        public void retry(MatchRule matchRule) {
        }

        public void finish(MatchRule matchRule) {
        }

        public void tell(PredicateInvocation invocation) {
        }

        public void ask(boolean result, PredicateInvocation invocation) {
        }

        public void failure(EvaluationFailureException fail) {
        }

        public void reportFailure(String message) {
        }

    };

    void activate(ConstraintOccurrence occurrence);

    void reactivate(ConstraintOccurrence occurrence);

    void suspend(ConstraintOccurrence occurrence);

    void discard(ConstraintOccurrence occurrence);

    void trying(MatchRule matchRule);

    void reject(MatchRule matchRule);

    void trigger(MatchRule matchRule);

    void retry(MatchRule matchRule);

    void finish(MatchRule matchRule);

    void tell(PredicateInvocation invocation);

    void ask(boolean result, PredicateInvocation invocation);

    void failure(EvaluationFailureException fail);

    @Deprecated
    void reportFailure(String message);
}
