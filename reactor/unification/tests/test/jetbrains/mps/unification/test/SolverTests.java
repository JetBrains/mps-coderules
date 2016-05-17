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

import jetbrains.mps.unification.Term;
import org.junit.Test;

import static jetbrains.mps.unification.Substitution.FailureCause.*;
import static jetbrains.mps.unification.test.AssertUnification.*;
import static jetbrains.mps.unification.test.MockTerm.*;
import static jetbrains.mps.unification.test.MockTermsParser.*;

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

                bind(var("X"), var("Y"))
        );
        assertUnifiesWithBindings(
                parse("a{Y}"),
                parse("a{X}"),

                bind(var("X"), var("Y"))
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
                parse("a{Z Y X b{W}}"),

                bind(var("X"), parse("b{c}")),
                bind(var("Y"), parse("b{c}")),
                bind(var("Z"), parse("b{c}")),
                bind(var("W"), parse("c"))
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

                bind(var("X"), var("Y"))
        );
        assertUnifiesWithBindings(
                parse("a{b{X} c{Y}}"),
                parse("a{b{V} c{W}}"),

                bind(var("V"), var("X")),
                bind(var("W"), var("Y"))
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
    public void test10() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{c Y} e{X} }"),
                parseTerm("a{X      e{b{Z d}} }"),

                bind(var("X"), parseTerm("b{c Y}")),
                bind(var("Y"), parseTerm("d")),
                bind(var("Z"), parseTerm("c"))
        );
    }

    @Test
    public void test11() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{c d} e{f g{b{c d}}} }"),
                parseTerm("a{X      e{f g{X     }} }"),

                bind(var("X"), parseTerm("b{c d}"))
        );
    }

    @Test
    public void test12() throws Exception {
        assertUnifiesWithBindings(
                parse("node{name{foo} child{X}}"),
                parse("node{name{foo} child{Y}}"),

                bind(var("X"), var("Y"))
        );
    }

    @Test
    public void test13() throws Exception {
        assertUnifiesWithBindings(
                parse("node{name{foo} child{node{name{bar}}}}"),
                parse("node{name{foo} child{X}}"),

                bind(var("X"), parseTerm("node{name{bar}}"))
        );
    }

    @Test
    public void test14() throws Exception {
        assertUnifiesWithBindings(
                parse("f{X    g{a}}"),
                parse("f{g{Y} g{Y}}"),

                bind(var("X"), parseTerm("g{Y}")),
                bind(var("Y"), parseTerm("a"))
        );
    }

    @Test
    public void test15() throws Exception {
        assertUnifiesWithBindingsAsymm(
                parse("h{X1       f{Y0 Y0} Y1}"),
                parse("h{f{X0 X0} Y1       X1}"),

                bind(var("X0"), parseVar("Y0")),
                bind(var("X1"), parseTerm("f{Y0 Y0}")),
                bind(var("Y1"), parseTerm("f{Y0 Y0}"))
        );
    }

    @Test
    public void test16() throws Exception {
        // this test illustrates why the used algorithm is superior to recursive descent:
        // the latter would have an exponential complexity because of "functional" form of
        // substitution instead of the "triangular" form used here.

        assertUnifiesWithBindingsAsymm(
                parse("h{X1       X2       X3       X4       X5       X6       X7       X8       X9       " +
                        "f{Y0 Y0} f{Y1 Y1} f{Y2 Y2} f{Y3 Y3} f{Y4 Y4} f{Y5 Y5} f{Y6 Y6} f{Y7 Y7} f{Y8 Y8} Y9}"),
                parse("h{f{X0 X0} f{X1 X1} f{X2 X2} f{X3 X3} f{X4 X4} f{X5 X5} f{X6 X6} f{X7 X7} f{X8 X8} " +
                        "Y1       Y2       Y3       Y4       Y5       Y6       Y7       Y8       Y9       X9}"),

                bind(var("X0"), parseVar("Y0")),
                bind(var("X1"), parseTerm("f{Y0 Y0}")),
                bind(var("X2"), parseTerm("f{Y1 Y1}")),
                bind(var("X3"), parseTerm("f{Y2 Y2}")),
                bind(var("X4"), parseTerm("f{Y3 Y3}")),
                bind(var("X5"), parseTerm("f{Y4 Y4}")),
                bind(var("X6"), parseTerm("f{Y5 Y5}")),
                bind(var("X7"), parseTerm("f{Y6 Y6}")),
                bind(var("X8"), parseTerm("f{Y7 Y7}")),
                bind(var("X9"), parseTerm("f{Y8 Y8}")),
                bind(var("Y1"), parseTerm("f{Y0 Y0}")),
                bind(var("Y2"), parseTerm("f{Y1 Y1}")),
                bind(var("Y3"), parseTerm("f{Y2 Y2}")),
                bind(var("Y4"), parseTerm("f{Y3 Y3}")),
                bind(var("Y5"), parseTerm("f{Y4 Y4}")),
                bind(var("Y6"), parseTerm("f{Y5 Y5}")),
                bind(var("Y7"), parseTerm("f{Y6 Y6}")),
                bind(var("Y8"), parseTerm("f{Y7 Y7}")),
                bind(var("Y9"), parseTerm("f{Y8 Y8}"))
        );
    }

    @Test
    public void testCyclic() throws Exception {
        assertUnifiesWithBindings(
                parse("@1 a{b ^1}"),
                parse("@2 a{b a{b ^2}}")

        );
        assertUnifiesWithBindings(
                parse("@1 a{b    ^1}"),
                parse("   a{b @3 a{b ^3}}")

        );
        assertUnifiesWithBindings(
                parse("@1 a{b ^1}"),
                parse("@2 a{b ^2}")
        );
        // the following tests are not very strict, but they suffice to convey a message
        // that cyclic terms can be safely unified
        assertUnifiesWithBindings(
                parse("a{@1 b{c{^2}} @2 b{c{^1}}}"),
                parse("a{   b{Y}        b{Y}    }"),

                // TODO: the innermost "b" must actually contain a ref to the top level
                // FIXME: AssertStructurallyEquivalent
                bind(var("Y"), parse("@1 c{b{c{b    }}}"))
        );
        assertUnifiesWithBindings(
                parse("a{@1 b{c{^1}} @2 c{b{^2}}}"),
                parse("a{   b{Y}        Y       }"),

                // TODO: the innermost "b" must actually contain a ref to the top level
                // FIXME: AssertStructurallyEquivalent
                bind(var("Y"), parse("c{b     }"))
        );
        assertUnifiesWithBindings(
                parse("a{@1 b{c{@3 b{c{^3}}}} @2 c{b{^2}}}"),
                parse("a{   b{Y}                 Y       }"),

                // TODO: the innermost "c" must actually contain a ref to the top level
                // FIXME: AssertStructurallyEquivalent
                bind(var("Y"), parse("c{b{c     }}"))
        );
        assertUnifiesWithBindings(
                parse("@1 a{c{d} b{e{^1 f}}}"),
                parse("   a{c{X} b{Y}}"),

                bind(var("X"), parse("d")),

                // TODO: the innermost "b" must actually contain a ref to the top level
                // FIXME: AssertStructurallyEquivalent
                bind(var("Y"), parse("e{a{c{d} b     } f}"))
        );
        assertUnifiesWithBindings(
                parse("@1 a{c{d} b{e{@2 a{c{d} b{e{^2 f}}} f}}}"),
                parse("   a{c{X} b{Y}}"),

                bind(var("X"), parse("d")),

                // TODO: the innermost "e" must actually contain a ref to the top level
                // FIXME: AssertStructurallyEquivalent
                bind(var("Y"), parse("e{a{c{d}  b{e{      f}}} f}"))
        );
    }

    @Test
    public void testCyclicExt() throws Exception {
        Term left = parse("@1 j{^1}");
        Term right = term("j", term("j", ref(left)));
        assertUnifiesWithBindings(
                left,
                right
        );
        assertUnifiesWithBindings(
                parse("a{@1 b{c{^1}} b{c{Z}}  @2 c{b{^2}}}"),
                parse("a{   Z        b{Y}        Y       }"),

                bind(var("Y"), parse("@2 c{Z}")),
                bind(var("Z"), parse("@1 b{c{^1}}"))
        );
        assertUnifiesWithBindings(
                parse("@1 a{c{d} b{e{Z f}}  ^1}"),
                parse("   a{c{X} b{Y}        Z}"),

                bind(var("X"), parse("d")),
                bind(var("Y"), parse("e{Z f}")),
                bind(var("Z"), parse("@1 a{c{d} b{e{Z f}}  ^1}"))
        );
    }

    @Test
    public void testCyclicVar() throws Exception {
        assertUnifiesWithBindings(
                parse("@1 a{b ^1}"),
                parse("@1 a{b  X}"),

                bind(var("X"), parse("@1 a{b ^1}"))
        );
        assertUnifiesWithBindings(
                parse("@1 a{b ^1}"),
                parse("X"),

                bind(var("X"), parse("@1 a{b ^1}"))
        );
        assertUnifiesWithBindings(
                parse("@1 a{^1 b c}"),
                parse("X"),

                bind(var("X"), parse("@1 a{^1 b c}"))
        );
        assertUnifiesWithBindings(
                parse("@1 a{b ^1}"),
                parse("@1 a{b a{b X}}"),

                bind(var("X"), parse("@1 a{b ^1}"))
        );
        assertUnifiesWithBindings(
                parse("a{X     c{X}                }"),
                parse("a{b{Y}  c{@1 b{@2 c{b{^2}}}}}"),

                bind(var("X"), parse("b{Y}")),
                bind(var("Y"), parse("@1 c{b{^1}}"))
        );
    }

    @Test
    public void testVarRef() throws Exception {
        assertUnifiesWithBindings(
                parse("^X"),
                parse("Y"),

                bind(var("X"), var("Y"))
        );
        assertUnifiesWithBindings(
                parse("a{b ^X}"),
                parse("a{b c{d}}"),

                bind(var("X"), parse("c{d}"))
        );
        assertUnifiesWithBindings(
                parse("a{b c{X} ^X}"),
                parse("a{b c{d} d}"),

                bind(var("X"), parse("d"))
        );
        assertUnifiesWithBindings(
                parse("a{b{d} c{X} ^X}"),
                parse("a{b{^X} c{d} d}"),

                bind(var("X"), parse("d"))
        );
        assertUnifiesWithBindings(
                parse("a{b{d} c{X}}"),
                parse("a{b{^X} c{d}}"),

                bind(var("X"), parse("d"))
        );
    }

    @Test
    public void testCyclic_TermRewriting() throws Exception {
        // The original problem is to unify two cyclic terms:
        //
        //          +->f              +--->f
        //          |_/ \             |   / \
        //              X             |  f   f<-+
        //                            |_/ \ / \_|
        //                                 Y
        //
        // -- which would be equivalent to the following:
        //
        //          "@1 f {^1 X}"     "@2 f {f {^2 Y} @3 f {Y ^3}}"
        //
        // Unfortunately, although the algorithm can successfully unify these
        // two terms, no solution exists that is not recursive. That is,
        // we cannot produce a list of variable bindings that do not include a
        // variable itself in the substitution. Thus, we resort to a simplified test.

        assertUnifiesWithBindings(
                parse("@1 f {^1 X}"),
                parse("@2 f {f {^2 Y} @3 f {Z ^3}}"),

                bind(var("X"), parse("@1 f{Z ^1}")),
                bind(var("Y"), parse("@1 f{Z ^1}"))
        );
    }


    @Test
    public void testUnifyExternalRef() throws Exception {
        Term termRef = ref(parse("f {a f{b f{c d}}}"));
        Term varRef = ref(var("TAIL"));

        Term a = term("g", termRef);
        Term b = term("g", term("f", var("HEAD"), varRef));

        assertUnifiesWithBindings(
                a,
                b,

                bind(var("HEAD"), parse("a")),
                bind(var("TAIL"), parse("f{b f{c d}}"))
        );
    }

    @Test
    public void testUnifyExternalRef2() throws Exception {
        Term list = parse("f {a f{b f{c d}}}");
        Term termRef = ref(list);
        Term varRef = ref(var("TAIL"));


        Term a = term("g", termRef);
        Term aa = term("h", a, list);
        Term b = term("g", term("f", var("HEAD"), varRef));
        Term bb = term("h", b, var("LIST"));

        assertUnifiesWithBindings(
                aa,
                bb,

                bind(var("LIST"), parse("f {a f{b f{c d}}}")),
                bind(var("HEAD"), parse("a")),
                bind(var("TAIL"), parse("f{b f{c d}}"))
        );
    }

    @Test
    public void testFailConflict() throws Exception {
        assertUnificationFails(
                term("a"),
                term("b"),

                SYMBOL_CLASH,
                "a",
                "b"
        );
        assertUnificationFails(
                parse("node{name{X} child{abc}}"),
                parse("node{name{foo} child{X}}"),

                SYMBOL_CLASH,
                "abc",
                "foo"
        );
    }

    @Test
    public void testFailCard() throws Exception {
        assertUnificationFails(
                parse("a{b c}"),
                parse("a{X}")
        );
    }

    @Test
    public void testFailCyclic() throws Exception {
        assertUnificationFails(
                parse("f{X}"),
                parse("X"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parse("f{f{X}}"),
                parse("f{X}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parse("f{a{X} Y      }"),
                parse("f{Y    a{b{X}}}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parse("a{X     c{X}}"),
                parse("a{b{Y}  Y   }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parse("a{   b{c{b{c{b{c{^2}}}}}} @2 b{c{b{c{^2}}}}}"),
                parse("a{   b{Y}                    b{Y}          }"),

                CYCLE_DETECTED
        );
    }


}
