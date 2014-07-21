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
import jetbrains.mps.unification.Unification;
import jetbrains.mps.unification.Node;
import jetbrains.mps.unification.Var;

import java.util.*;

import static org.junit.Assert.*;


/**
 * Created by fyodor on 09.06.2014.
 */
public class AssertUnification {

    public static Binding bind(Var v, Node n) {
        return new Binding(v, n);
    }

    public static void assertSameBindings(Collection<Binding> expected, Collection<Binding> actual) throws Exception {
        Iterator<Binding> expIt = expected.iterator();
        Iterator<Binding> actIt = actual.iterator();

        Map<Var, Node> expMap = new HashMap<Var, Node>();
        Map<Var, Node> actMap = new HashMap<Var, Node>();

        while(expIt.hasNext() && actIt.hasNext()) {
            Binding expb = expIt.next();
            Binding actb = actIt.next();

            expMap.put(expb.var(), expb.node());
            actMap.put(actb.var(), actb.node());
        }

        assertEquals(expMap, actMap);

        if(expIt.hasNext() || actIt.hasNext()) throw new Exception("mismatched number of bindings");
    }

    public static void assertUnifiesWithBindings(Node s, Node t, Substitution.Binding ... bindings) throws Exception{
        Substitution subs = Unification.unify(s, t);

        assertTrue(subs.isSuccessful());
        assertSameBindings(
                Arrays.asList(
                        bindings
                ),
                subs.bindings());

        Substitution subs2 = Unification.unify(t, s);

        assertTrue(subs2.isSuccessful());
        assertSameBindings(subs.bindings(), subs2.bindings());
    }

    public static void assertUnifificationFails(Node s, Node t) throws Exception {
        Substitution subs = Unification.unify(s, t);

        assertFalse(subs.isSuccessful());
    }

}