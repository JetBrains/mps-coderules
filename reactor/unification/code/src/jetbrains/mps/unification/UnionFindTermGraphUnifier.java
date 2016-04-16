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

import jetbrains.mps.unification.Substitution.FailureCause;
import jetbrains.mps.unification.Unification.SuccessfulSubstitution;
import org.jetbrains.annotations.NotNull;

import java.util.*;

import static jetbrains.mps.unification.Term.Kind.*;
import static jetbrains.mps.unification.Substitution.FailureCause.*;
import static jetbrains.mps.unification.Unification.*;

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

    private FailureCause myFailureCause = UKNOWN;

    private Object[] myFailureDetails = null;

    public Substitution unify(Term a, Term b) {
        if (!unifClosure(a, b)) {
            return failedSubstitution(myFailureCause, myFailureDetails);
        }

        return findSolution(a);
    }

    private boolean unifClosure(Term s, Term t) {
        s = find(s);
        t = find(t);

        if (s == t) return true;

        Term zs = getSchema(s);
        Term zt = getSchema(t);

        // a VAR always matches another node
        if(zs.is(VAR) || zt.is(VAR)) {
            union(s, t);
            return true;
        }

        // dereference REF nodes
        Term ds = deref(zs);
        Term dt = deref(zt);

        if (ds.is(VAR)) {
            if (s != find(ds)) {
                union(s, find(ds));
            }
            union(s, t);
            return true;
        }
        else {
            zs = ds;
        }

        if (dt.is(VAR)) {
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

        if (zs.is(FUN) && zt.is(FUN))
        {
            if (!eq(zs.symbol(), zt.symbol())) {
                myFailureCause = SYMBOL_CLASH;
                myFailureDetails = new Object[]{zs.symbol(), zt.symbol()};
                return false; // symbol clash
            }

            // union REF nodes only to each other
            if (s.is(REF) == t.is(REF)) {
                union(s, t);
            }

            Iterator<? extends Term> scit = zs.arguments().iterator();
            Iterator<? extends Term> tcit = zt.arguments().iterator();
            while (scit.hasNext() && tcit.hasNext()) {
                if (!unifClosure(scit.next(), tcit.next())) {
                    return false; // arguments mismatch
                }
            }

            // fail if different arguments count
            return scit.hasNext() == tcit.hasNext();
        }
        else {
            // something's wrong with the input
            throw new IllegalStateException("invalid input");
        }
    }

    private Term deref(Term zs) {
        Term tmp = zs;
        while (tmp.is(REF)) {
            tmp = tmp.get();
        }
        return tmp;
    }

    private void union(Term s, Term t) {
        int ssize = getSize(s);
        int tsize = getSize(t);

        // keep the order: the smaller class gets inserted under the bigger one
        if (ssize < tsize) {
            Term tmp = t; t = s; s = tmp;
        }
        else if (ssize == tsize && s.is(VAR) && t.is(VAR)) {
            // ensure proper order of variables in the substitution
            if(t.compareTo(s) < 0) {
                Term tmp = t; t = s; s = tmp;
            }
        }

        // union s and t classes by moving t under s

        setSize(s, ssize + tsize);
        prependVars(s, getVars(t));

        Term zs = getSchema(s);
        Term zt = getSchema(t);
        if (zs.is(VAR)  || (zs.is(REF) && deref(zs).is(VAR) && !zt.is(VAR)))
        {
            setSchema(s, zt);
        }

        setRepresentative(t, s);
    }

    private Term find(Term s) {
        Term term = getRepresentative(s);
        if (term == s) {
            return s;
        }

        // find representative and compress paths

        List<Term> path = new ArrayList<Term>(4);
        path.add(term);
        for (Term t; (t = getRepresentative(term)) != term; ) {
            path.add(t);
            term = t;
        }
        for (Term p : path) {
            setRepresentative(p, term);
        }

        return term;
    }

    private Substitution findSolution(Term s) {
        return findSolution(s, EMPTY_SUBSTITUTION);
    }

    private Substitution findSolution(Term s, Substitution substitution) {
        Term z = getSchema(find(s));

        if (isAcyclic(z)) {
            return substitution; // not part of a cycle
        }
        if (isVisited(z)) {
            return failedSubstitution(CYCLE_DETECTED); // there exists a cycle
        }

        if (z.is(FUN)) {
            setVisited(z, true);

            for (Term c : z.arguments()) {
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

        setAcyclic(z);

        // avoid unnecessary instantiation
        SuccessfulSubstitution success =
                (substitution instanceof SuccessfulSubstitution) ?
                (SuccessfulSubstitution) substitution : new SuccessfulSubstitution(substitution);

        for (Term var : getVars(find(z))) {
            if (var != z) {
                Term val = deref(z);

                // Keep the order of variables within a binding
                if (val.is(VAR) && val.compareTo(var) < 0) {
                    success.addBinding(val, var);
                }
                else {
                    success.addBinding(var, val);
                }
            }
        }

        return success;
    }

    private int getSize(Term n) {
        if (!hasData(n)) return 1;
        return getData(n).mySize;
    }

    private void setSize(Term n, int size) {
        // monotonically increasing value
        if (size > 1) {
            getData(n).mySize = size;
        }
    }

    private Term getRepresentative(Term n) {
        if (!hasData(n)) return n;
        return getData(n).myClass;
    }

    private void setRepresentative(Term n, Term rep) {
        getData(n).myClass = rep;
    }

    private Term getSchema(Term n) {
        if (!hasData(n)) return n;
        return getData(n).mySchema;
    }

    private void setSchema(Term n, Term schema) {
        getData(n).mySchema = schema;
    }

    private List<Term> getVars(Term n) {
        return hasData(n) ? getData(n).myVars : singletonVar    (n);
    }

    private void prependVars(Term t, List<Term> vars) {
        if (vars.isEmpty()) return;

        ArrayList<Term> newVars = new ArrayList<Term>(vars);
        newVars.addAll(getVars(t));
        getData(t).myVars = newVars;
    }

    private boolean isAcyclic(Term n) {
        return hasData(n) && getData(n).myAcyclic;
    }

    private void setAcyclic(Term n) {
        getData(n).myAcyclic = true;
    }

    private boolean isVisited(Term n) {
        return hasData(n) && getData(n).myVisited;
    }

    private void setVisited(Term n, boolean visited) {
        getData(n).myVisited = visited;
    }

    private boolean hasData(Term term) {
        Data data = myData.get(term);
        if (data != null) return true;

        // TODO: publish the requirements for symbols or drop this hack!
        // try the identity key and see if another variable term with matching symbol has data
        Object key = termIdentity(term);
        if (term == key) return false;

        if ((data = myData.get(key)) != null) {
            myData.put(term, data);
            return true;
        }

        return false;
    }

    private Data getData(Term term) {
        Data data = myData.get(term);
        if (data != null) {
            return data;
        }

        // TODO: publish the requirements for symbols or drop this hack!
        // try the identity key to see if another variable with matching symbol has data
        Object key = termIdentity(term);
        if (term != key && (data = myData.get(key)) != null) {
            myData.put(term, data);
            return data;
        }

        data = new Data(term);
        myData.put(term, data);
        if (term != key) {
            myData.put(key, data);
        }
        return data;
    }

    /**
     * An object to uniquely identify this term.
     * Variables with matching symbols are all treated as a single term.
     */
    @NotNull
    private Object termIdentity(Term term) {
        return term.is(VAR) ? String.valueOf(term.symbol()).intern() : term;
    }

    private static boolean eq(Object a, Object b) {
        return a == null ? b == null : a.equals(b);
    }

    private static List<Term> singletonVar(Term t) {
        return t.is(VAR) ?
                Collections.singletonList(t) :
                Collections.<Term>emptyList();
    }

    private static class Data {
        int mySize = 1;
        boolean myAcyclic = false;
        boolean myVisited = false;

        List<Term> myVars;
        Term myClass;
        Term mySchema;

        Data(Term term) {
            myClass = term;
            mySchema = term;
            myVars = singletonVar(term);
        }
    }
}
