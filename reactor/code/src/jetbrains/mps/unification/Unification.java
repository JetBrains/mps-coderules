/*
 * Copyright 2014 JetBrains s.r.o.
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

package jetbrains.mps.unification;

import jetbrains.mps.unification.Substitution.FailureCause;

import java.util.*;

/**
 * This is the main entry point to the unification solver. Presently @{link UnionFindTermGraphUnifier} is used
 * for finding the solution.
 *
 * @author Fedor Isakov
 */
public class Unification {

    public static Substitution unify(Term a, Term b) {
        UnionFindTermGraphUnifier dagUnifier = new UnionFindTermGraphUnifier();

        return dagUnifier.unify(a, b);
    }

    protected static Substitution failedSubstitution(FailureCause failCause) {
        return new Substitution(failCause);
    }

    protected static Substitution failedSubstitution(FailureCause failCause, Object... details) {
        return new Substitution(failCause, details);
    }

    protected static final Substitution EMPTY_SUBSTITUTION = new Substitution(true) {
        @Override
        public String toString() {
            return "[]";
        }
    };

    protected static final Substitution FAILED_SUBSTITUTION = new Substitution(FailureCause.UKNOWN) {
        @Override
        public String toString() {
            return "[FAILED_SUBSTITUTION]";
        }
    };

    protected static class SuccessfulSubstitution extends Substitution {

        private LinkedList<Binding> myBindings;

        protected SuccessfulSubstitution(Substitution substitution) {
            super(true);
            this.myBindings = new LinkedList<Binding>(substitution.bindings());
        }

        @Override
        public Collection<Binding> bindings() {
            return Collections.unmodifiableCollection(myBindings);
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder("[");
            String sep = "";
            for (Binding b : myBindings) {
                sb.append(sep); sep = ", ";
                sb.append(b.var()).append(" -> ").append(b.term());
            }
            return sb.append("]").toString();
        }

        protected void addBinding(Term v, Term n) {
            Binding bng;
            if (n.is(Term.Kind.VAR) && n.compareTo(n) < 0) {
                bng = new Binding(n, v);
            }
            else {
                bng = new Binding(v, n);
            }

            myBindings.addFirst(bng);
        }

    }
}
