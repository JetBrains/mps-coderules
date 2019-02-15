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


import jetbrains.mps.logic.reactor.logical.LogicalContext;
import jetbrains.mps.logic.reactor.program.AndItem;
import jetbrains.mps.logic.reactor.program.Predicate;
import jetbrains.mps.logic.reactor.program.PredicateSymbol;

import java.util.HashMap;
import java.util.Map;

/**
 * // FIXME to be merged with EvaluationSession
 * Is used to provide an interface for handlers and solvers working together in a single session.
 *
 *
 * @author Fedor Isakov
 */
public abstract class SessionSolver implements Queryable, Instructible {

    private Map<PredicateSymbol, AbstractSolver> solvers = new HashMap<PredicateSymbol, AbstractSolver>();
    private EvaluationTrace tracer = EvaluationTrace.NULL;

    public void init(PredicateSymbol... predicateSymbols) {
        registerSymbols(predicateSymbols);
    }

    public void init(EvaluationTrace evaluationTrace, PredicateSymbol... predicateSymbols) {
        tracer = evaluationTrace;
        init(predicateSymbols);
    }

    @Override
    public boolean ask(PredicateInvocation invocation) {
        AbstractSolver solver = solver(invocation.predicate().symbol());
        boolean result = solver.ask(invocation);
        tracer.ask(result, invocation);
        return result;
    }

    @Override
    public void tell(PredicateInvocation invocation) {
        AbstractSolver handler = solver(invocation.predicate().symbol());
        tracer.tell(invocation);
        handler.tell(invocation);
    }

    protected abstract void registerSymbol(PredicateSymbol predicateSymbol, EvaluationTrace computingTracer);

    protected void registerSolver(PredicateSymbol constraint, AbstractSolver solver) {
        solvers.put(constraint, solver);
    }

    private AbstractSolver solver(PredicateSymbol predicateSymbol) {
        if (!(solvers.containsKey(predicateSymbol))) {
            throw new IllegalStateException("no handler: " + predicateSymbol);
        }
        return solvers.get(predicateSymbol);
    }

    private void registerSymbols(PredicateSymbol... predicateSymbols) {
        for (PredicateSymbol symbol : predicateSymbols) {
            registerSymbol(symbol, tracer);
        }
    }

}
