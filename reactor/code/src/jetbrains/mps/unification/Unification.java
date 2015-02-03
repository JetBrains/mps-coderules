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
 * This is an implementation of the "near linear" algorithm for solving syntactic unification
 * as described in the paper linked below.<sup>1</sup> No recursive terms are allowed, meaning the "occurrs check"
 * is performed on the input. If successful, the returned {@link Substitution} contains
 * the variable bindings.
 * <p/>
 * The variables are sorted using {@link java.lang.Comparable} to ensure uniqueness of bindings
 * whereas the substituted term is also a variable.
 * <p/>
 * <blockquote>
 *     1. <i>Baader, Franz, and Wayne Snyder. "Unification Theory." Handbook of automated reasoning 1 (2001): 445-532.</i>
 * </blockquote>
 *
 * @author Fedor Isakov
 */
public class Unification {

    public static Substitution unify(Node a, Node b) {
        DagUnifier dagUnifier = new DagUnifier();

        if (!dagUnifier.unifClosure(a, b)) return FAILED_SUBSTITUTION;

        return dagUnifier.findSolution(a);
    }

    private static class DagUnifier {

        private Map<Object, Data> myData = new HashMap<Object, Data>();

        private boolean unifClosure(Node s, Node t) {
            s = find(s);
            t = find(t);

            if (s == t) return true;

            Node zs = getSchema(s);
            Node zt = getSchema(t);

            if (zs.isTerm() && zt.isTerm()) {
                if (eq(zs.asTerm().symbol(), zt.asTerm().symbol())) {
                    union(s, t);
                    Iterator<? extends Node> scit = zs.asTerm().children().iterator();
                    Iterator<? extends Node> tcit = zt.asTerm().children().iterator();
                    while(scit.hasNext() && tcit.hasNext()) {
                        if (!unifClosure(scit.next(), tcit.next())) return false;
                    }
                    if (scit.hasNext() != tcit.hasNext()) {
                        return false; // children lists are of different size
                    }
                }
                else {
                    return false; // symbol clash
                }
            }
            else {
                union(s, t);
            }

            return true;
        }

        private void union(Node s, Node t) {
            Integer ssize = getSize(s);
            Integer tsize = getSize(t);

            // keep the order
            if (ssize < tsize) {
                Node tmp = t; t = s; s = tmp;
            }
            else if (ssize == tsize && s.isVar() && t.isVar()) {
                // ensure proper order of variables in the substitution
                if(s.asVar().compareTo(t.asVar()) < 0) {
                    Node tmp = t; t = s; s = tmp;
                }
            }

            // union s and t classes by moving t under s

            setSize(s, ssize + tsize);
            appendVars(s, getVars(t));
            if (getSchema(s).isVar()) {
                setSchema(s, getSchema(t));
            }
            setRepresentative(t, s);
        }

        private Node find(Node s) {
            Node node = getRepresentative(s);
            if (node == s) return s;

            // find representative and compress paths

            List<Node> path = new ArrayList<Node>();
            path.add(node);
            for (Node t; (t = getRepresentative(node)) != node; ) {
                path.add(t);
                node = t;
            }
            for (Node p : path) {
                setRepresentative(p, node);
            }

            return node;
        }

        private Substitution findSolution(Node s) {
            return findSolution(s, EMPTY_SUBSTITUTION);
        }

        private Substitution findSolution(Node s, Substitution substitution) {
            Node z = getSchema(find(s));

            if (isAcyclic(z)) return substitution; // not part of a cycle
            if (isVisited(z)) return FAILED_SUBSTITUTION; // there exists a cycle

            if (z.isTerm()) {
                setVisited(z, true);

                for (Node c : z.asTerm().children()) {
                    substitution = findSolution(c, substitution);
                    if (!substitution.isSuccessful()) return substitution;
                }

                setVisited(z, false);
            }

            setAcyclic(z, true);

            SuccessfulSubstitution success = new SuccessfulSubstitution(substitution);
            for (Var var : getVars(find(z))) {
                if (var != z) {
                    success.addBinding(var, z);
                }
            }

            return success;
        }

        private int getSize(Node n) {
            if (!hasData(n)) return 1;
            return getData(n).mySize;
        }

        private void setSize(Node n, int size) {
            getData(n).mySize = size;
        }

        private Node getRepresentative(Node n) {
            if (!hasData(n)) return n;
            return getData(n).myClass;
        }

        private void setRepresentative(Node n, Node rep) {
            getData(n).myClass = rep;
        }

        private Node getSchema(Node n) {
            if (!hasData(n)) return n;
            return getData(n).mySchema;
        }

        private void setSchema(Node n, Node schema) {
            getData(n).mySchema = schema;
        }

        private List<Var> getVars(Node n) {
            if (!hasData(n)) {
                return n.isTerm() ? Collections.<Var>emptyList() : Collections.singletonList(n.asVar());
            }
            return getData(n).myVars;
        }

        private void appendVars(Node n, List<Var> vars) {
            List<Var> newVars = new ArrayList<Var>(getVars(n));
            newVars.addAll(vars);
            getData(n).myVars = newVars;
        }

        private boolean isAcyclic(Node n) {
            if (!hasData(n)) return false;
            return getData(n).myAcyclic;
        }

        private void setAcyclic(Node n, boolean acyclic) {
            getData(n).myAcyclic = acyclic;
        }

        private boolean isVisited(Node n) {
            if (!hasData(n)) return false;
            return getData(n).myVisited;
        }

        private void setVisited(Node n, boolean visited) {
            getData(n).myVisited = visited;
        }

        private boolean hasData(Node n) {
            return myData.containsKey(n);
        }

        private Data getData(Node n) {
            if (myData.containsKey(n)) return myData.get(n);
            Data data = new Data(n);
            myData.put(n, data);
            return data;
        }

        private boolean eq(Object a, Object b) {
            return a == null ? b == null : a.equals(b);
        }

        private static class Data {
            int mySize = 1;
            boolean myAcyclic = false;
            boolean myVisited = false;
            List<Var> myVars;

            Node myClass;
            Node mySchema;
            Data(Node n) {
                myClass = n;
                mySchema = n;
                myVars = n.isTerm() ? Collections.<Var>emptyList() : Collections.singletonList(n.asVar());
            }
        }
    }

    private static final Substitution FAILED_SUBSTITUTION = new Substitution() {
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

    private static final Substitution EMPTY_SUBSTITUTION = new Substitution() {
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

    private static class SuccessfulSubstitution implements Substitution {

        private LinkedList<Binding> myBindings;

        private SuccessfulSubstitution(Substitution substitution) {
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

        private void addBinding(Var v, Node n) {
            Binding bng;
            if (n.isVar() && n.asVar().compareTo(v) < 0) {
                bng = new Binding(n.asVar(), v);
            }
            else {
                bng = new Binding(v, n);
            }

            myBindings.addFirst(bng);
        }

    }

}
