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

package jetbrains.mps.unification;

import java.util.*;

/**
 * This is an implementation of the "near linear" algorithm for solving syntactic unification
 * as described in the paper linked below and also in the textbook of the same author.<sup>1</sup> <sup>2</sup>
 *
 * No recursive terms are allowed as a solution, meaning the "occurrs check" for variables
 * is performed on the input. However, cyclic terms are allowed as input and can be unified, producing
 * solutions binding variables to cyclic terms. Variables can also be passed by reference without altering the
 * intuitive behaviour of the algorithm.
 *
 * If successful, the returned {@link Substitution} contains
 * the variable bindings.
 * <p/>
 * The variables are sorted using {@link java.lang.Comparable} to ensure uniqueness of bindings
 * whereas the substituted term is also a variable.
 * <p/>
 * <blockquote>
 *     1. <i>Baader, Franz, and Wayne Snyder. "Unification Theory." Handbook of automated reasoning 1 (2001): 445-532.</i>
 *     2. <i>Baader, Franz, and Tobias Nipkow. Term rewriting and all that. Cambridge University Press, 1999.</i>
 * </blockquote>
 *
 * @author Fedor Isakov
 */
public class UnionFindTermGraphUnifier {

    private Map<Object, Data> myData = new IdentityHashMap<Object, Data>();

    public Substitution unify(Node a, Node b) {
        if (!unifClosure(a, b)) {
            return Unification.FAILED_SUBSTITUTION;
        }

        return findSolution(a);
    }

    private boolean unifClosure(Node s, Node t) {
        s = find(s);
        t = find(t);

        if (s == t) return true;

        Node zs = getSchema(s);
        Node zt = getSchema(t);

        // a VAR always matches another node
        if(zs.is(Node.Kind.VAR) || zt.is(Node.Kind.VAR)) {
            union(s, t);
            return true;
        }

        // dereference REF nodes
        Node ds = zs.is(Node.Kind.REF) ? zs.get() : zs;
        Node dt = zt.is(Node.Kind.REF) ? zt.get() : zt;

        if (ds.is(Node.Kind.VAR)) {
            if (s != find(ds)) {
                union(s, find(ds));
            }
            union(s, t);
            return true;
        }
        else {
            zs = ds;
        }

        if (dt.is(Node.Kind.VAR)) {
            if (t != find(dt)) {
                union(t, find(dt));
            }
            union(t, s);
            return true;
        }
        else {
            zt = dt;
        }

        // use find 2nd time to account for dereferenced nodes
        if (find(zs) == find(zt)) {
            return true;
        }

        if (zs.is(Node.Kind.FUN) && zt.is(Node.Kind.FUN))
        {
            if (!eq(zs.symbol(), zt.symbol())) {
                return false; // symbol clash
            }

            // union REF nodes only to each other
            if (s.is(Node.Kind.REF) == t.is(Node.Kind.REF)) {
                union(s, t);
            }

            Iterator<? extends Node> scit = zs.children().iterator();
            Iterator<? extends Node> tcit = zt.children().iterator();
            while (scit.hasNext() && tcit.hasNext()) {
                if (!unifClosure(scit.next(), tcit.next())) return false;
            }

            // fail if different children count
            return scit.hasNext() == tcit.hasNext();
        }
        else {
            // something's wrong with the input
            return false;
        }
    }

    private void union(Node s, Node t) {
        int ssize = getSize(s);
        int tsize = getSize(t);

        // keep the order: the smaller class gets inserted under the bigger one
        if (ssize < tsize) {
            Node tmp = t; t = s; s = tmp;
        }
        else if (ssize == tsize && s.is(Node.Kind.VAR) && t.is(Node.Kind.VAR)) {
            // ensure proper order of variables in the substitution
            if(t.compareTo(s) < 0) {
                Node tmp = t; t = s; s = tmp;
            }
        }

        // union s and t classes by moving t under s

        setSize(s, ssize + tsize);
        appendVars(s, getVars(t));

        Node zs = getSchema(s);
        Node zt = getSchema(t);
        if (zs.is(Node.Kind.VAR)  ||
            (zs.is(Node.Kind.REF) && zs.get().is(Node.Kind.VAR) && !zt.is(Node.Kind.VAR)))
        {
            setSchema(s, zt);
        }

        setRepresentative(t, s);
    }

    private Node find(Node s) {
        Node node = getRepresentative(s);
        if (node == s) {
            return s;
        }

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
        return findSolution(s, Unification.EMPTY_SUBSTITUTION);
    }

    private Substitution findSolution(Node s, Substitution substitution) {
        Node z = getSchema(find(s));

        if (isAcyclic(z)) {
            return substitution; // not part of a cycle
        }
        if (isVisited(z)) {
            return Unification.FAILED_SUBSTITUTION; // there exists a cycle
        }

        if (z.is(Node.Kind.FUN)) {
            setVisited(z, true);

            for (Node c : z.children()) {
                substitution = findSolution(c, substitution);

                if (!substitution.isSuccessful()) {
                    break;
                }
            }

            setVisited(z, false);
        }

        if (!substitution.isSuccessful()) {
            return substitution;
        }

        setAcyclic(z, true);

        Unification.SuccessfulSubstitution success = new Unification.SuccessfulSubstitution(substitution);
        for (Node var : getVars(find(z))) {
            if (var != z) {
                Node val = z.is(Node.Kind.REF) ? z.get() : z;

                // Keep the order of variables within a binding
                if (val.is(Node.Kind.VAR) && val.compareTo(var) < 0) {
                    success.addBinding(val, var);
                }
                else {
                    success.addBinding(var, val);
                }
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

    private List<Node> getVars(Node n) {
        if (!hasData(n)) {
            return collectVars(n);
        }
        return getData(n).myVars;
    }

    private void appendVars(Node n, List<Node> vars) {
        List<Node> newVars = new ArrayList<Node>(getVars(n));
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
        Object key = n.is(Node.Kind.VAR) ? String.valueOf(n.symbol()).intern() : n;
        return myData.containsKey(key);
    }

    private Data getData(Node n) {
        Object key = n.is(Node.Kind.VAR) ? String.valueOf(n.symbol()).intern() : n;
        if (myData.containsKey(key)) return myData.get(key);
        Data data = new Data(n);
        myData.put(key, data);
        return data;
    }

    private List<Node> collectVars(Node n) {
        if (n.is(Node.Kind.VAR)) {
            return Collections.singletonList(n);
        }
        return Collections.<Node>emptyList();
    }

    private boolean eq(Object a, Object b) {
        return a == null ? b == null : a.equals(b);
    }

    private class Data {
        int mySize = 1;
        boolean myAcyclic = false;
        boolean myVisited = false;
        List<Node> myVars;

        Node myClass;
        Node mySchema;
        Data(Node n) {
            myClass = n;
            mySchema = n;
            myVars = collectVars(n);
        }
    }
}
