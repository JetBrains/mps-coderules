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

import jetbrains.mps.unification.Substitution;
import static jetbrains.mps.unification.Substitution.*;

import jetbrains.mps.unification.TermWrapper;
import jetbrains.mps.unification.Unification;
import jetbrains.mps.unification.Term;

import java.util.*;

import static jetbrains.mps.unification.test.AssertStructurallyEquivalent.assertEquivalent;
import static org.junit.Assert.*;
import static org.junit.Assert.assertArrayEquals;


/**
 * Created by fyodor on 09.06.2014.
 */
public class AssertUnification {

    public static final Comparator<Binding> BINDING_COMPARATOR = new Comparator<Binding>() {
        @Override
        public int compare(Binding a, Binding b) {
            return a.var().compareTo(b.var());
        }
    };

    public static Binding bind(Term v, Term n) {
        return new Binding(v, n);
    }

    public static void assertSameBindings(Collection<Binding> expected, Collection<Binding> actual) throws Exception {
        ArrayList<Binding> expectedCopy = new ArrayList<Binding>(expected);
        Collections.sort(expectedCopy, BINDING_COMPARATOR);
        Iterator<Binding> expIt = expectedCopy.iterator();
        ArrayList<Binding> actualCopy = new ArrayList<Binding>(actual);
        Collections.sort(actualCopy, BINDING_COMPARATOR);
        Iterator<Binding> actIt = actualCopy.iterator();

        while(expIt.hasNext() && actIt.hasNext()) {
            Binding expb = expIt.next();
            Binding actb = actIt.next();

            assertEquals(expb.var(), actb.var());
            assertEquivalent(expb.term(), actb.term());
        }
        if(expIt.hasNext() || actIt.hasNext()) throw new Exception("mismatched number of bindings");
    }

    public static void assertUnifiesWithBindings(Term s, Term t, Substitution.Binding ... bindings) throws Exception{
        Substitution subs = Unification.INSTANCE.unify(s, t);

        assertTrue(subs.isSuccessful());
        assertSameBindings(
                Arrays.asList(
                        bindings
                ),
                subs.bindings());

        Substitution subs2 = Unification.INSTANCE.unify(t, s);

        assertTrue(subs2.isSuccessful());
        assertSameBindings(subs.bindings(), subs2.bindings());
    }

    public static void assertUnifiesWithBindings(Term s, Term t, TermWrapper wrapper, Substitution.Binding ... bindings) throws Exception{
        Substitution subs = Unification.INSTANCE.unify(s, t, wrapper);

        assertTrue(subs.isSuccessful());
        assertSameBindings(
                Arrays.asList(
                        bindings
                ),
                subs.bindings());

        Substitution subs2 = Unification.INSTANCE.unify(t, s, wrapper);

        assertTrue(subs2.isSuccessful());
        assertSameBindings(subs.bindings(), subs2.bindings());
    }

    public static void assertUnifiesWithBindingsAsymm(Term s, Term t, Substitution.Binding ... bindings) throws Exception{
        Substitution subs = Unification.INSTANCE.unify(s, t);

        assertTrue(subs.isSuccessful());
        assertSameBindings(
                Arrays.asList(
                        bindings
                ),
                subs.bindings());
    }

    public static void assertUnificationFails(Term s, Term t) throws Exception {
        Substitution subs1 = Unification.INSTANCE.unify(s, t);

        assertFalse(subs1.isSuccessful());

        Substitution subs2 = Unification.INSTANCE.unify(s, t);

        assertFalse(subs2.isSuccessful());
    }

    public static void assertUnificationFails(Term s, Term t, TermWrapper wrapper) throws Exception {
        Substitution subs1 = Unification.INSTANCE.unify(s, t, wrapper);

        assertFalse(subs1.isSuccessful());

        Substitution subs2 = Unification.INSTANCE.unify(s, t, wrapper);

        assertFalse(subs2.isSuccessful());
    }

    public static void assertUnificationFails(Term s, Term t, FailureCause failureCause) throws Exception {
        Substitution subs1 = Unification.INSTANCE.unify(s, t);

        assertFalse(subs1.isSuccessful());
        assertSame(failureCause, subs1.failureCause());

        Substitution subs2 = Unification.INSTANCE.unify(t, s);

        assertFalse(subs2.isSuccessful());
        assertSame(failureCause, subs2.failureCause());
    }

    public static void assertUnificationFails(Term s, Term t, FailureCause failureCause, Object... details) throws Exception {
        Substitution subs1 = Unification.INSTANCE.unify(s, t);

        assertFalse(subs1.isSuccessful());
        assertSame(failureCause, subs1.failureCause());
        assertArrayEquals(details, subs1.failureDetails());

        Substitution subs2 = Unification.INSTANCE.unify(t, s);

        assertFalse(subs2.isSuccessful());
        assertSame(failureCause, subs1.failureCause());
        // dont test for details: may be in different order
    }

}

