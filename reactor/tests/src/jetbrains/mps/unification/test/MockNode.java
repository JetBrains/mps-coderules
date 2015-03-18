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

package jetbrains.mps.unification.test;

import jetbrains.mps.unification.Node;
import jetbrains.mps.unification.Term;
import jetbrains.mps.unification.Var;

import java.util.*;

/**
 * Created by fyodor on 09.06.2014.
 */
public abstract class MockNode implements Node {

    public MockNode() {
    }

    public static Node term(Object sym, Node ... children) {
        return new MockTerm(sym, children);
    }

    public static Node var(String name) {
        return new MockVar(name);
    }

    public static Node ref(Node term) {
        return new MockRef(term);
    }

    public static Node ref(TermLookup termLookup) {
        return new MockRef(termLookup);
    }

    interface TermLookup {
        Node lookupTerm();
    }

    @Override
    public boolean isTerm() {
        return is(Kind.FUN);
    }

    @Override
    public Term asTerm() {
        return (Term) this;
    }

    @Override
    public boolean isVar() {
        return is(Kind.VAR);
    }

    @Override
    public Var asVar() {
        return (Var) this;
    }

    @Override
    public Object symbol() {
        return null;
    }

    @Override
    public Collection<? extends Node> children() {
        return null;
    }

    @Override
    public Node get() {
        return this;
    }

    @Override
    public int compareTo(Node node) {
        return String.valueOf(symbol()).compareTo(String.valueOf(node.symbol()));
    }

    public static class MockTerm extends MockNode {
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
        public boolean is(Kind kind) {
            return Kind.FUN == kind;
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
        public Object symbol() {
            return myName;
        }

        @Override
        public boolean is(Kind kind) {
            return Kind.VAR == kind;
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

    }

    public static class MockRef extends MockNode  {

        private Node term;
        private TermLookup termLookup;

        public MockRef(Node term) {
            this.term = term;
        }

        public MockRef(TermLookup termLookup) {
            this.termLookup = termLookup;
        }

        @Override
        public final Node get() {
            if (term == null && termLookup != null) {
                term = termLookup.lookupTerm();
                termLookup = null;
            }
            return term;
        }

        @Override
        public boolean is(Kind kind) {
            return Kind.REF == kind;
        }

        @Override
        public String toString() {
            Node t = get();
            return t != null ? "^"+ t.symbol() : "^<NULL>";
        }

        @Override
        public boolean equals(Object that) {
            if (that == this) return true;
            if (that == null || getClass() != that.getClass()) return false;

            return get() == ((MockNode) that).get();
        }

        @Override
        public int hashCode() {
            Node t = get();
            return t != null ? System.identityHashCode(t) : 0;
        }
    }
}
