/*
 * Copyright 2015 JetBrains s.r.o.
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

import jetbrains.mps.unification.Term;
import static org.junit.Assert.*;

import java.util.*;

/**
 * @author Fedor Isakov
 */
public class AssertStructurallyEquivalent {

    public static void assertEquivalent(Term a, Term b) throws Exception {

        final Signature signature = new Signature();
        signature.setWalkers(
                // first pass
                new TermWalker(
                    new TermVisitor<Term>(Term.Kind.FUN) {
                        @Override
                        public Collection<? extends Term> visit(Term term) throws Exception {
                            signature.label(term);
                            return term.arguments();
                        }
                    }
                        ,
                new TermVisitor<Term>(Term.Kind.REF) {
                    @Override
                    public Collection<? extends Term> visit(Term ref) throws Exception {
                        if (ref.get().is(Term.Kind.FUN)) {
                            return Collections.singletonList(ref.get());
                        }
                        return Collections.emptyList();
                    }
                }
                ),
                // second pass
                new TermWalker(
                    new TermVisitor<Term>(Term.Kind.FUN) {
                        @Override
                        public Collection<? extends Term> visit(Term term) throws Exception {
                            signature.appendSignature("@").append(signature.getLabel(term)).append(term.symbol());
                            return term.arguments();
                        }
                    },
                    new TermVisitor<Term>(Term.Kind.VAR) {
                        @Override
                        public Collection<? extends Term> visit(Term var) throws Exception {
                            signature.appendSignature("$").append(var.symbol());
                            return Collections.emptyList();
                        }
                    }, new TermVisitor<Term>(Term.Kind.REF) {
                        @Override
                        public Collection<? extends Term> visit(Term ref) throws Exception {
                            if (ref.get().is(Term.Kind.FUN)) {
                                Integer label = signature.getLabel(ref.get());
                                assertNotNull("not found label for '" + ref.get() + "'", label);
                                if (signature.isTopLevel(ref.get())) {
                                    signature.appendSignature("^").append(label);
                                    return Collections.emptyList();
                                }
                                else {
                                    return Collections.singletonList(ref.get());
                                }
                            }
                            else if (ref.get().is(Term.Kind.VAR)) {
                                signature.appendSignature("^").append(ref.get().symbol());
                                return Collections.emptyList();
                            }
                            else {
                                throw new UnsupportedOperationException();
                            }

                        }
                    })
                );

        String signa = signature.getSignature(a);
        String signb = signature.getSignature(b);

        assertEquals(signa, signb);
    }


    private static class Signature {

        private TermWalker[] walkers;

        private IdentityHashMap<Term, Integer> labels = new IdentityHashMap<Term, Integer>();
        private int label = 1;
        private StringBuilder signature = new StringBuilder();

        protected void label(Term term) {
            labels.put(term, label++);
        }

        protected Integer getLabel(Term term) {
            return labels.get(term);
        }

        protected boolean isTopLevel(Term term) { return labels.get(term) == 1; }

        protected StringBuilder appendSignature(String str) {
            return signature.append(str);
        }

        public String getSignature (Term term) throws Exception {
            reset();
            for (TermWalker walker : walkers) {
                walker.walk(term);
            }
            return signature.toString();
        }

        protected void reset() {
            labels.clear();
            this.label = 1;
            signature.setLength(0);
        }

        protected void setWalkers(TermWalker... walkers) {
            this.walkers = walkers;
        }
    }

    private static abstract class TermVisitor<T extends Term> {

        private Term.Kind kind;

        public TermVisitor(Term.Kind kind) {
            this.kind = kind;
        }

        public Term.Kind applicableTo() {
            return kind;
        }



        public abstract Collection<? extends Term> visit(T t) throws Exception ;

    }

    private static class TermWalker {

        private static Object SINGLETON = new Object();

        private Map<Term.Kind, TermVisitor<? extends Term>> visitorMap = new HashMap<Term.Kind, TermVisitor<? extends Term>>();

        public TermWalker(TermVisitor<? extends Term>... visitors) {
            for (TermVisitor<? extends Term> visitor : visitors) {
                visitorMap.put(visitor.applicableTo(), visitor);
            }
        }

        public void walk(Term term) throws Exception {
            walk(term, new IdentityHashMap<Term, Object>());
        }

        private void walk(Term term, Map<Term, Object> visited) throws Exception {
            if (term.is(Term.Kind.FUN)) {
                visited.put(term, SINGLETON);
            }
            Collection<? extends Term> arguments = switchClass(term);
            for (Term arg : arguments) {
                if (visited.containsKey(arg)) {
                    continue;
                }
                walk(arg, visited);
            }
        }

        private Collection<? extends Term> switchClass(Term term) throws Exception {
            for (Map.Entry<Term.Kind, TermVisitor<? extends Term>> e : visitorMap.entrySet()) {
                if (term.is(e.getKey())) {
                    TermVisitor<Term> value = (TermVisitor<Term>) e.getValue();
                    return value.visit(term);
                }
            }
            return Collections.emptyList();
        }

    }

}
