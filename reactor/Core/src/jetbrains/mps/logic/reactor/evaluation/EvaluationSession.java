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


import jetbrains.mps.logic.reactor.program.Program;

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

    @SuppressWarnings("unchecked")
    public static <S extends EvaluationSession> S current(Class<S> sessionClass) {
        return (S) current();
    }

    public static EvaluationSession current() {
        if (ourBackend == null) throw new IllegalStateException("no backend");
        return ourBackend.current();
    }

    public static EvaluationSession.Config newSession(Program program) {
        if (ourBackend == null) throw new IllegalStateException("no backend");
        return ourBackend.createConfig(program);
    }

    public abstract Program program();

    public abstract boolean ask(PredicateInvocation invocation);

    public abstract void tell(PredicateInvocation invocation);

    public abstract <T> T parameter(ParameterKey<T> key);

    public static class ParameterKey<T> {

        private final String name;

        public static <T> ParameterKey<T> of(String name, Class<T> klass) {
            return new ParameterKey<T>(name);
        }

        private ParameterKey(String name) {
            this.name = name;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            ParameterKey<?> that = (ParameterKey<?>) o;
            return name != null ? name.equals(that.name) : that.name == null;
        }

        @Override
        public int hashCode() {
            return name != null ? name.hashCode() : 0;
        }
    }

    public static abstract class Config {

        public abstract <T> Config withParameter(ParameterKey<T> key, T value);

        public abstract Config withTrace(EvaluationTrace computingTracer);

        public abstract Config withStoreView(StoreView storeView);

        public abstract Config withFeedbackHandler(EvaluationFeedbackHandler handler);

        @Deprecated
        public abstract Config withParam(String key, Object param);

        public abstract EvaluationResult start();

    }
    
    protected static void setBackend(EvaluationSession.Backend<? extends EvaluationSession> backend) {
        if (ourBackend != null) throw new IllegalStateException("backend already assigned");
        ourBackend = backend;
    }

    protected static void clearBackend(EvaluationSession.Backend<? extends EvaluationSession> backend) {
        if (ourBackend != backend) throw new IllegalStateException("illegal access");
        ourBackend = null;
    }

    protected interface Backend<S extends EvaluationSession> {

        S current();

        EvaluationSession.Config createConfig(Program program);

    }
    
    private static EvaluationSession.Backend<? extends EvaluationSession> ourBackend;
}
