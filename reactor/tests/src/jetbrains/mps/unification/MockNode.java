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
 * Created by fyodor on 09.06.2014.
 */
public abstract class MockNode implements Node {

    public MockNode() {
    }

    public static Term term(Object sym, Node ... children) {
        return new MockTerm(sym, children);
    }

    public static Var var(String name) {
        return new MockVar(name);
    }

    public static class MockTerm extends MockNode implements Term {
        private List<Node> myChildren;
        private Object mySymbol;

        public MockTerm(Object symbol, Node... children) {
            mySymbol = symbol;
            this.myChildren = Arrays.asList(children);
        }

        @Override
        public Object symbol() {
            return mySymbol;
        }

        @Override
        public Collection<Node> children() {
            return Collections.unmodifiableList(myChildren);
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder(String.valueOf(mySymbol));
            if (!myChildren.isEmpty()) {
                sb.append("{");
                String sep = "";
                for (Node child : myChildren) {
                    sb.append(sep); sep = " ";
                    sb.append(child.toString());
                }
                sb.append("}");
            }
            return sb.toString();
        }

        @Override
        public int hashCode() {
            int hash = 43 + mySymbol.hashCode();
            return hash*19 + myChildren.hashCode();
        }

        @Override
        public boolean equals(Object o) {
            return ((MockTerm)o).mySymbol.equals(mySymbol) &&
                   ((MockTerm)o).myChildren.equals(myChildren);
        }
    }

    public static class MockVar extends MockNode implements Var {
        private String myName;

        public MockVar(String name) {
            myName = name;
        }

        @Override
        public String name() {
            return myName;
        }

        @Override
        public String toString() {
            return String.valueOf(myName);
        }

        @Override
        public int hashCode() {
            return 43 + myName.hashCode();
        }

        @Override
        public boolean equals(Object o) {
            return ((MockVar)o).myName.equals(myName);
        }

        @Override
        public int compareTo(Var var) {
            return ((String)myName).compareTo((String)((MockVar)var).myName);
        }
    }
}
