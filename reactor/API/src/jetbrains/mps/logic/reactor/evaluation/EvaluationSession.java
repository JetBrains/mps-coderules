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
import jetbrains.mps.logic.reactor.program.Constraint;
import jetbrains.mps.logic.reactor.program.Predicate;
import jetbrains.mps.logic.reactor.program.PredicateSymbol;
import jetbrains.mps.logic.reactor.program.Program;
import org.jetbrains.annotations.NotNull;

/**
 * The starting point to evaluate a program.
 * <p>
 * The session is started with {@code newSession}, provided the backend has been initialized.
 * <p>
 * The backend is supposed to be provided at startup.
 *
 * @author Fedor Isakov
 */
public abstract class EvaluationSession {

    private static EvaluationSession.Backend ourBackend;

    public static EvaluationSession current() {
        if (ourBackend == null) {
            throw new IllegalStateException("no backend");
        }
        return ourBackend.current();
    }

    public static EvaluationSession.Config newSession(Program program) {
        if (ourBackend == null) {
            throw new IllegalStateException("no backend");
        }
        return ourBackend.createConfig(program);
    }

    protected static void setBackend(EvaluationSession.Backend backend) {
        if (ourBackend != null) {
            throw new IllegalStateException("backend already assigned");
        }
        ourBackend = backend;
    }

    protected static void clearBackend(EvaluationSession.Backend backend) {
        if (ourBackend != backend) {
            throw new IllegalStateException("illegal access");
        }
        ourBackend = null;
    }

    public abstract SessionSolver sessionSolver();

    public abstract StoreView storeView();

    @Deprecated
    public PredicateInvocation invocation(Predicate predicate, LogicalContext logicalContext) {
        // FIXME delete the method after all code has been migrated
        // keep compatibility with existing code
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public ConstraintOccurrence occurrence(Constraint constraint, LogicalContext logicalContext) {
        // FIXME delete the method after all code has been migrated
        // keep compatibility with existing code
        throw new UnsupportedOperationException();
    }

    public Program program() {
        // FIXME delete the implementation after all code has been migrated
        // keep compatibility with existing code
        throw new UnsupportedOperationException();
    }

    protected interface Backend {

        EvaluationSession current();

        EvaluationSession.Config createConfig(Program program);

    }

    public static abstract class Config {

        public abstract EvaluationSession.Config withPredicates(PredicateSymbol... predicateSymbols);

        public abstract EvaluationSession.Config withTrace(EvaluationTrace computingTracer);

        public abstract EvaluationSession.Config withStoreView(StoreView storeView);

        public abstract EvaluationSession.Config withFailureHandler(FailureHandler handler);

        public abstract EvaluationSession.Config withParam(String key, Object param);

        public abstract EvaluationResult start(SessionSolver sessionSolver);

    }

}
