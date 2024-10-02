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

import jetbrains.mps.logic.reactor.logical.Logical;
import jetbrains.mps.logic.reactor.logical.LogicalOwner;
import jetbrains.mps.unification.Term;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Created by fyodor on 09.06.2014.
 */
public abstract class MockTerm implements Term {

    public MockTerm() {
    }

    public static Term term(Object sym, Term... arguments) {
        return new MockFun(sym, arguments);
    }

    public static Term var(String name) {
        return new MockVar(name);
    }

    public static Term metaVar(Object symbol) {
        return new MockMetaVar(symbol);
    }

    public static Term logicalVar(Logical<? extends Term> logical) {
        return new MockLogicalVar(logical);
    }

    public static Term ref(Term term) {
        return new MockRef(term);
    }

    public static Term ref(TermLookup termLookup) {
        return new MockRef(termLookup);
    }

    interface TermLookup {
        Term lookupTerm();
    }

    @NotNull
    @Override
    public Object symbol() {
        return null;
    }

    @Override
    public List<? extends Term> arguments() {
        return Collections.emptyList();
    }

    @Override
    public Term get() {
        return this;
    }

    @Override
    public int compareTo(Term term) {
        return String.valueOf(symbol()).compareTo(String.valueOf(term.symbol()));
    }

    public static class MockFun extends MockTerm {
        private List<Term> myArgs;
        private Object mySymbol;

        public MockFun(Object symbol, Term... arguments) {
            mySymbol = symbol;
            this.myArgs = Arrays.asList(arguments);
        }

        @NotNull
        @Override
        public Object symbol() {
            return mySymbol;
        }

        @Override
        public List<? extends Term> arguments() {
            return Collections.unmodifiableList(myArgs);
        }

        @Override
        public boolean is(Kind kind) {
            return Kind.FUN == kind;
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder(String.valueOf(mySymbol));
            if (!myArgs.isEmpty()) {
                sb.append("{");
                String sep = "";
                for (Term arg : myArgs) {
                    sb.append(sep); sep = " ";
                    sb.append(arg.toString());
                }
                sb.append("}");
            }
            return sb.toString();
        }

        @Override
        public int hashCode() {
            int hash = 43 + mySymbol.hashCode();
            return hash*19 + myArgs.hashCode();
        }

        @Override
        public boolean equals(Object o) {
            return ((MockFun)o).mySymbol.equals(mySymbol) &&
                   ((MockFun)o).myArgs.equals(myArgs);
        }
    }

    public static class MockVar extends MockTerm {
        private String myName;

        public MockVar(String name) {
            myName = name;
        }

        @NotNull
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

    public static class MockMetaVar extends MockTerm {
        private final Object mySymbol;

        public MockMetaVar(Object symbol) {
            this.mySymbol = symbol;
        }

        @NotNull
        @Override
        public Object symbol() {
            return mySymbol;
        }

        @Override
        public boolean is(Kind kind) {
            return Kind.VAR == kind;
        }

        @Override
        public String toString() {
            return String.valueOf(mySymbol);
        }

        @Override
        public int hashCode() {
            return 43 + 17*mySymbol.hashCode();
        }

        @Override
        public boolean equals(Object o) {
            return ((MockMetaVar)o).mySymbol.equals(mySymbol);
        }
    }

    public static class MockLogicalVar extends MockTerm implements LogicalOwner {
        private final Logical<? extends Term> myLogical;

        public MockLogicalVar(Logical<? extends Term> logical) {
            this.myLogical = logical;
        }

        @Override
        public Logical<?> logical() {
            return myLogical;
        }

        @NotNull
        @Override
        public Object symbol() {
            return myLogical;
        }

        @Override
        public boolean is(Kind kind) {
            if (myLogical.isBound()) {
                return Kind.REF == kind;

            } else {
                return Kind.VAR == kind;
            }
        }

        @Override
        public Term get() {
            if (myLogical.isBound()) {
                return myLogical.findRoot().value();

            } else {
                return this;
            }
        }

        @Override
        public String toString() {
            return String.valueOf(myLogical);
        }

        @Override
        public int hashCode() {
            return 31 + 19* myLogical.hashCode();
        }

        @Override
        public boolean equals(Object o) {
            return ((MockLogicalVar)o).myLogical.equals(myLogical);
        }
    }

    public static class MockRef extends MockTerm {

        private Term term;
        private TermLookup termLookup;

        public MockRef(Term term) {
            this.term = term;
        }

        public MockRef(TermLookup termLookup) {
            this.termLookup = termLookup;
        }

        @NotNull
        @Override
        public Object symbol() {
            return "^";
        }

        @Override
        public final Term get() {
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
            Term t = get();
            return t != null ? "^"+ t.symbol() : "^<NULL>";
        }

        @Override
        public boolean equals(Object that) {
            if (that == this) return true;
            if (that == null || getClass() != that.getClass()) return false;

            return get() == ((MockTerm) that).get();
        }

        @Override
        public int hashCode() {
            Term t = get();
            return t != null ? System.identityHashCode(t) : 0;
        }
    }
}
