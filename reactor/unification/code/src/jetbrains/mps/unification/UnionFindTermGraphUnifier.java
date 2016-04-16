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

    public Substitution unify(Term a, Term b) {
        if (unifClosure(toInner(a), toInner(b))) {
            return findSolution(toInner(a));
        }

        return failedSubstitution(myFailureCause, myFailureDetails);
    }

    private boolean unifClosure(InnerTerm s, InnerTerm t) {
        s = find(s);
        t = find(t);

        if (s == t) return true;

        InnerTerm zs = s.mySchema;
        InnerTerm zt = t.mySchema;

        // a VAR always matches another node
        if(zs.myOrigin.is(VAR) || zt.myOrigin.is(VAR)) {
            union(s, t);
            return true;
        }

        // dereference REF nodes
        InnerTerm ds = deref(zs);
        InnerTerm dt = deref(zt);

        if (ds.myOrigin.is(VAR)) {
            if (s != find(ds)) {
                union(s, find(ds));
            }
            union(s, t);
            return true;
        }
        else {
            zs = ds;
        }

        if (dt.myOrigin.is(VAR)) {
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

        if (zs.myOrigin.is(FUN) && zt.myOrigin.is(FUN))
        {
            if (!eq(zs.myOrigin.symbol(), zt.myOrigin.symbol())) {
                myFailureCause = SYMBOL_CLASH;
                myFailureDetails = new Object[]{zs.myOrigin.symbol(), zt.myOrigin.symbol()};
                return false; // symbol clash
            }

            // union REF nodes only to each other
            if (s.myOrigin.is(REF) == t.myOrigin.is(REF)) {
                union(s, t);
            }

            Iterator<? extends Term> scit = zs.myOrigin.arguments().iterator();
            Iterator<? extends Term> tcit = zt.myOrigin.arguments().iterator();
            while (scit.hasNext() && tcit.hasNext()) {
                if (!unifClosure(toInner(scit.next()), toInner(tcit.next()))) {
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

    private void union(InnerTerm s, InnerTerm t) {
        int ssize = s.mySize;
        int tsize = t.mySize;

        // keep the order: the smaller class gets inserted under the bigger one
        if (ssize < tsize) {
            InnerTerm tmp = t; t = s; s = tmp;
        }
        else if (ssize == tsize && s.myOrigin.is(VAR) && t.myOrigin.is(VAR)) {
            // ensure proper order of variables in the substitution
            if(t.myOrigin.compareTo(s.myOrigin) < 0) {
                InnerTerm tmp = t; t = s; s = tmp;
            }
        }

        // union s and t classes by moving t under s

        s.mySize = ssize + tsize;
        prependVars(s, t.myVars);

        InnerTerm zs = s.mySchema;
        InnerTerm zt = t.mySchema;
        if (zs.myOrigin.is(VAR)  || (zs.myOrigin.is(REF) && deref(zs).myOrigin.is(VAR) && !zt.myOrigin.is(VAR)))
        {
            s.mySchema = zt;
        }

        t.myClass = s;
    }

    private InnerTerm find(InnerTerm term) {
        InnerTerm repr = term.myClass;
        if (repr == term) {
            return term;
        }

        // find representative and compress paths

        List<InnerTerm> path = new ArrayList<InnerTerm>(4);
        path.add(term.myClass);
        for (InnerTerm t; (t = term.myClass) != repr; ) {
            path.add(t);
            repr = t;
        }
        for (InnerTerm p : path) {
            p.myClass = repr;
        }

        return repr;
    }

    private Substitution findSolution(InnerTerm s) {
        return findSolution(s, EMPTY_SUBSTITUTION);
    }

    private Substitution findSolution(InnerTerm s, Substitution substitution) {
        InnerTerm z = find(s).mySchema;

        if (z.myAcyclic) {
            return substitution; // not part of a cycle
        }
        if (z.myVisited) {
            return failedSubstitution(CYCLE_DETECTED); // there exists a cycle
        }

        if (z.myOrigin.is(FUN)) {
            z.myVisited = true;

            for (Term c : z.myOrigin.arguments()) {
                substitution = findSolution(toInner(c), substitution);

                if (!substitution.isSuccessful()) {
                    break;
                }
            }

            z.myVisited = false;
        }

        if (!substitution.isSuccessful()) {
            return substitution;
        }

        z.myAcyclic = true;

        // avoid unnecessary instantiation
        SuccessfulSubstitution success =
                (substitution instanceof SuccessfulSubstitution) ?
                (SuccessfulSubstitution) substitution : new SuccessfulSubstitution(substitution);

        for (InnerTerm var : find(z).myVars) {
            if (var != z) {
                InnerTerm trg = deref(z);

                // Keep the order of variables within a binding
                if (trg.myOrigin.is(VAR) && trg.myOrigin.compareTo(var.myOrigin) < 0) {
                    success.addBinding(trg.myOrigin, var.myOrigin);
                }
                else {
                    success.addBinding(var.myOrigin, trg.myOrigin);
                }
            }
        }

        return success;
    }

    private void prependVars(InnerTerm t, List<InnerTerm> vars) {
        if (vars.isEmpty()) return;

        ArrayList<InnerTerm> newVars = new ArrayList<InnerTerm>(vars);
        newVars.addAll(t.myVars);
        t.myVars = newVars;
    }

    private InnerTerm deref(InnerTerm zs) {
        InnerTerm tmp = zs;
        while (tmp.myOrigin.is(REF)) {
            tmp = toInner(tmp.myOrigin.get());
        }
        return tmp;
    }

    private InnerTerm toInner(Term term) {
        // Variables with matching symbols are all treated as a single term.
        Object key = term.is(VAR) ? String.valueOf(term.symbol()).intern() : term;
        InnerTerm innerTerm = myTermCache.get(key);
        if (innerTerm == null) {
            myTermCache.put(key, (innerTerm = new InnerTerm(term)));
        }
        return innerTerm;
    }

    private Map<Object, InnerTerm> myTermCache = new IdentityHashMap<Object, InnerTerm>();

    private FailureCause myFailureCause = UKNOWN;

    private Object[] myFailureDetails = null;

    private static boolean eq(Object a, Object b) {
        return a == null ? b == null : a.equals(b);
    }

    private static class InnerTerm {
        InnerTerm(Term term) {
            this.myOrigin = term;
            this.myClass = this;
            this.mySchema = this;
            this.myVars = myOrigin.is(VAR) ?
                                Collections.singletonList(this) :
                                Collections.<InnerTerm>emptyList();
        }

        int mySize = 1;
        boolean myAcyclic = false;
        boolean myVisited = false;
        List<InnerTerm> myVars;
        Term myOrigin;
        InnerTerm myClass;
        InnerTerm mySchema;
    }

}
