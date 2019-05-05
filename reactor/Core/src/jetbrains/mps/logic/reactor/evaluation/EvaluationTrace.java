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


import jetbrains.mps.logic.reactor.core.EvaluationFailure;

/**
 * An interface to be implemented by clients wishing to be notified of the events during evaluation.
 *
 * @author Fedor Isakov
 */
public interface EvaluationTrace {

    EvaluationTrace NULL = new EvaluationTrace() { };

    default void activate(ConstraintOccurrence occurrence) {}

    default void reactivate(ConstraintOccurrence occurrence) {}

    default void suspend(ConstraintOccurrence occurrence) {}

    default void discard(ConstraintOccurrence occurrence) {}

    default void trying(RuleMatch matchRule) {}

    default void reject(RuleMatch matchRule) {}

    default void trigger(RuleMatch matchRule) {}

    default void retry(RuleMatch matchRule) {}

    default void finish(RuleMatch matchRule) {}

    default void tell(PredicateInvocation invocation) {}

    default void ask(boolean result, PredicateInvocation invocation) {}

    default void feedback(EvaluationFeedback feedback) {}
}
