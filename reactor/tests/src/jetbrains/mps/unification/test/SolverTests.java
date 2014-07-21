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

import org.junit.Test;

import static jetbrains.mps.unification.test.MockNode.*;
import static jetbrains.mps.unification.test.MockTreeParser.*;
import static jetbrains.mps.unification.test.AssertUnification.*;

/**
 * Created by fyodor on 09.06.2014.
 */
public class SolverTests {

    @Test
    public void test1() throws Exception {
        assertUnifiesWithBindings(
                term("a"),
                var("X"),

                bind(var("X"), term("a"))
        );
        assertUnifiesWithBindings(
                var("Y"),
                var("X"),

                bind(var("Y"), var("X"))
        );
    }

    @Test
    public void test2() throws Exception {
        assertUnifiesWithBindings(
                parse("a{b c}"),
                parse("a{X Y}"),

                bind(var("X"), term("b")),
                bind(var("Y"), term("c"))
        );
        assertUnifiesWithBindings(
                parse("a{b Y}"),
                parse("a{X c}"),

                bind(var("X"), term("b")),
                bind(var("Y"), term("c"))
        );
        assertUnifiesWithBindings(
                parse("a{b{c} X Y Z}"),
                parse("a{X Y Z b{c}}"),

                bind(var("X"), parse("b{c}")),
                bind(var("Y"), parse("b{c}")),
                bind(var("Z"), parse("b{c}"))
        );
        assertUnifiesWithBindings(
                parse("a{b{c} Z Y X}"),
                parse("a{Z Y X b{c}}"),

                bind(var("X"), parse("b{c}")),
                bind(var("Y"), parse("b{c}")),
                bind(var("Z"), parse("b{c}"))
        );
    }

    @Test
    public void test3() throws Exception {
        assertUnifiesWithBindings(
                parse("a{b{X} c{Y}}"),
                parse("a{V W}"),

                bind(var("V"), parseTerm("b{X}")),
                bind(var("W"), parseTerm("c{Y}"))
        );
        assertUnifiesWithBindings(
                parse("a{X}"),
                parse("a{Y}"),

                bind(var("Y"), var("X"))
        );
        assertUnifiesWithBindings(
                parse("a{b{X} c{Y}}"),
                parse("a{b{V} c{W}}"),

                bind(var("X"), var("V")),
                bind(var("Y"), var("W"))
        );
    }

    @Test
    public void test4() throws Exception {
        assertUnifiesWithBindings(
                parse("a{b{X} c{Y}}"),
                parse("a{Y Z}"),

                bind(var("Y"), parseTerm("b{X}")),
                bind(var("Z"), parseTerm("c{Y}"))
        );
    }

    @Test
    public void test5() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{c} Y}"),
                parseTerm("a{Y b{X}}"),

                bind(var("Y"), parseTerm("b{c}")),
                bind(var("X"), term("c"))
        );
    }

    @Test
    public void test6() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{X} c{Y}}"),
                parseTerm("a{Y c{b{d}}}"),

                bind(var("Y"), parseTerm("b{X}")),
                bind(var("X"), term("d"))
        );
    }

    @Test
    public void test7() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{X} c{Y} Z}"),
                parseTerm("a{Y c{b{d{Z}}} e{f}}"),

                bind(var("X"), parseTerm("d{Z}")),
                bind(var("Y"), parseTerm("b{X}")),
                bind(var("Z"), parseTerm("e{f}"))
        );
    }

    @Test
    public void test8() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{c d} e{f} }"),
                parseTerm("a{b{X Y} e{Z} }"),

                bind(var("X"), parseTerm("c")),
                bind(var("Y"), parseTerm("d")),
                bind(var("Z"), parseTerm("f"))
        );
    }

    @Test
    public void test9() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{c d} e{X} }"),
                parseTerm("a{b{X Y} e{Z} }"),

                bind(var("X"), parseTerm("c")),
                bind(var("Y"), parseTerm("d")),
                bind(var("Z"), parseTerm("c"))
        );
    }

    @Test
    public void testFail1() throws Exception {
        assertUnifificationFails(
                term("a"),
                term("b")
        );
    }

    @Test
    public void testFail2() throws Exception {
        assertUnifificationFails(
                parse("a{b c}"),
                parse("a{X}")
        );
    }

}
