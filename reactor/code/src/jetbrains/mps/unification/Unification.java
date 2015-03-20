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

import java.util.*;

/**
 * This is the main entry point to the unification solver. Presently @{link UnionFindTermGraphUnifier} is used
 * for finding the solution.
 *
 * @author Fedor Isakov
 */
public class Unification {

    public static Substitution unify(Node a, Node b) {
        UnionFindTermGraphUnifier dagUnifier = new UnionFindTermGraphUnifier();

        return dagUnifier.unify(a, b);
    }

    protected static final Substitution FAILED_SUBSTITUTION = new Substitution() {
        @Override
        public boolean isSuccessful() {
            return false;
        }

        @Override
        public Collection<Binding> bindings() {
            return Collections.emptyList();
        }

        @Override
        public String toString() {
            return "[FAILED_SUBSTITUTION]";
        }
    };

    protected static final Substitution EMPTY_SUBSTITUTION = new Substitution() {
        @Override
        public boolean isSuccessful() {
            return true;
        }

        @Override
        public Collection<Binding> bindings() {
            return Collections.emptyList();
        }

        @Override
        public String toString() {
            return "[]";
        }
    };

    protected static class SuccessfulSubstitution implements Substitution {

        private LinkedList<Binding> myBindings;

        protected SuccessfulSubstitution(Substitution substitution) {
            this.myBindings = new LinkedList<Binding>(substitution.bindings());
        }

        @Override
        public boolean isSuccessful() {
            return true;
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
                sb.append(b.var()).append(" -> ").append(b.node());
            }
            return sb.append("]").toString();
        }

        protected void addBinding(Node v, Node n) {
            Binding bng;
            if (n.is(Node.Kind.VAR) && n.compareTo(n) < 0) {
                bng = new Binding(n, v);
            }
            else {
                bng = new Binding(v, n);
            }

            myBindings.addFirst(bng);
        }

    }

}
