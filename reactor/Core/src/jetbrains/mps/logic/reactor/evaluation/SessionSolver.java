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
 * // FIXME to be merged with EvaluationSession
 * Is used to provide an interface for handlers and solvers working together in a single session.
 *
 *
 * @author Fedor Isakov
 * @deprecated Use EvalutionSession
 */
@Deprecated
public class SessionSolver implements Solver {

    private EvaluationTrace tracer = EvaluationTrace.NULL;

    public void init(EvaluationTrace evaluationTrace) {
        tracer = evaluationTrace;
    }

    /**
     * @deprecated Use EvaluationSession
     * @param invocation
     * @return
     */
    @Override
    @Deprecated
    public boolean ask(PredicateInvocation invocation) {
        Solver solver = invocation.predicate().symbol().solver();
        boolean result = solver.ask(invocation);
        tracer.ask(result, invocation);
        return result;
    }

    /**
     * @deprecated Use EvaluationSession
     * @param invocation
     */
    @Override
    @Deprecated
    public void tell(PredicateInvocation invocation) {
        Solver solver = invocation.predicate().symbol().solver();
        tracer.tell(invocation);
        solver.tell(invocation);
    }

}
