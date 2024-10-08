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

import jetbrains.mps.logic.reactor.logical.MutableLogical;
import jetbrains.mps.logic.reactor.logical.MetaLogical;
import jetbrains.mps.logic.reactor.logical.LogicalKt;
import jetbrains.mps.unification.Substitution;
import jetbrains.mps.unification.Term;
import jetbrains.mps.unification.TermWrapper;
import org.jetbrains.annotations.NotNull;
import org.junit.Ignore;
import org.junit.Test;

import java.util.Collections;
import java.util.List;

import static jetbrains.mps.unification.Substitution.FailureCause.CYCLE_DETECTED;
import static jetbrains.mps.unification.Substitution.FailureCause.SYMBOL_CLASH;
import static jetbrains.mps.unification.test.AssertUnification.*;
import static jetbrains.mps.unification.test.MockTerm.*;
import static jetbrains.mps.unification.test.MockTermsParser.parseTerm;

/**
 * Created by fyodor on 09.06.2014.
 */
public class SolverTests {

    @Test
    public void test1() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a"),
                var("X"),

                bind(var("X"), parseTerm("a"))
        );
        assertUnifiesWithBindings(
                var("Y"),
                var("X"),

                bind(var("X"), var("Y"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{Y}"),
                parseTerm("a{X}"),

                bind(var("X"), var("Y"))
        );
    }

    @Test
    public void test2() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b c}"),
                parseTerm("a{X Y}"),

                bind(var("X"), parseTerm("b")),
                bind(var("Y"), parseTerm("c"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b Y}"),
                parseTerm("a{X c}"),

                bind(var("X"), parseTerm("b")),
                bind(var("Y"), parseTerm("c"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b{c} X Y Z}"),
                parseTerm("a{X Y Z b{c}}"),

                bind(var("X"), parseTerm("b{c}")),
                bind(var("Y"), parseTerm("b{c}")),
                bind(var("Z"), parseTerm("b{c}"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b{c} Z Y X}"),
                parseTerm("a{Z Y X b{W}}"),

                bind(var("X"), parseTerm("b{c}")),
                bind(var("Y"), parseTerm("b{c}")),
                bind(var("Z"), parseTerm("b{c}")),
                bind(var("W"), parseTerm("c"))
        );
    }

    @Test
    public void test3() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{X} c{Y}}"),
                parseTerm("a{V W}"),

                bind(var("V"), parseTerm("b{X}")),
                bind(var("W"), parseTerm("c{Y}"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{X}"),
                parseTerm("a{Y}"),

                bind(var("X"), var("Y"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b{X} c{Y}}"),
                parseTerm("a{b{V} c{W}}"),

                bind(var("V"), var("X")),
                bind(var("W"), var("Y"))
        );
    }

    @Test
    public void test4() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{X} c{Y}}"),
                parseTerm("a{Y Z}"),

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
                bind(var("X"), parseTerm("c"))
        );
    }

    @Test
    public void test6() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("a{b{X} c{Y}}"),
                parseTerm("a{Y c{b{d}}}"),

                bind(var("Y"), parseTerm("b{X}")),
                bind(var("X"), parseTerm("d"))
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
                parseTerm("node{name{foo} child{X}}"),
                parseTerm("node{name{foo} child{Y}}"),

                bind(var("X"), var("Y"))
        );
    }

    @Test
    public void test13() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("node{name{foo} child{node{name{bar}}}}"),
                parseTerm("node{name{foo} child{X}}"),

                bind(var("X"), parseTerm("node{name{bar}}"))
        );
    }

    @Test
    public void test14() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("f{X    g{a}}"),
                parseTerm("f{g{Y} g{Y}}"),

                bind(var("X"), parseTerm("g{Y}")),
                bind(var("Y"), parseTerm("a"))
        );
    }

    @Test
    public void test15() throws Exception {
        assertUnifiesWithBindingsAsymm(
                parseTerm("h{X1       f{Y0 Y0} Y1}"),
                parseTerm("h{f{X0 X0} Y1       X1}"),

                bind(var("X0"), parseTerm("Y0")),
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
                parseTerm("h{X1       X2       X3       X4       X5       X6       X7       X8       X9       " +
                        "f{Y0 Y0} f{Y1 Y1} f{Y2 Y2} f{Y3 Y3} f{Y4 Y4} f{Y5 Y5} f{Y6 Y6} f{Y7 Y7} f{Y8 Y8} Y9}"),
                parseTerm("h{f{X0 X0} f{X1 X1} f{X2 X2} f{X3 X3} f{X4 X4} f{X5 X5} f{X6 X6} f{X7 X7} f{X8 X8} " +
                        "Y1       Y2       Y3       Y4       Y5       Y6       Y7       Y8       Y9       X9}"),

                bind(var("X0"), parseTerm("Y0")),
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

    // FIXME cyclic terms are no longer supported
    @Test
    @Ignore
    public void testCyclicVar() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("@1 a{b ^1}"),
                parseTerm("X"),

                bind(var("X"), parseTerm("@1 a{b ^1}"))
        );
        assertUnifiesWithBindings(
                parseTerm("@1 a{^1 b c}"),
                parseTerm("X"),

                bind(var("X"), parseTerm("@1 a{^1 b c}"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{X     c{X}                }"),
                parseTerm("a{b{Y}  c{@1 b{@2 c{b{^2}}}}}"),

                bind(var("X"), parseTerm("b{Y}")),
                bind(var("Y"), parseTerm("@1 c{b{^1}}"))
        );
    }

    @Test
    public void testVarRef() throws Exception {
        assertUnifiesWithBindings(
                parseTerm("^X"),
                parseTerm("Y"),

                bind(var("X"), var("Y"))
        );
        assertUnifiesWithBindings(
                parseTerm("f{^X}"),
                parseTerm("f{ Y}"),

                bind(var("X"), var("Y"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b ^X}"),
                parseTerm("a{b c{d}}"),

                bind(var("X"), parseTerm("c{d}"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b c{X} ^X}"),
                parseTerm("a{b c{d} d}"),

                bind(var("X"), parseTerm("d"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b{d} c{X} ^X}"),
                parseTerm("a{b{^X} c{d} d}"),

                bind(var("X"), parseTerm("d"))
        );
        assertUnifiesWithBindings(
                parseTerm("a{b{d} c{X}}"),
                parseTerm("a{b{^X} c{d}}"),

                bind(var("X"), parseTerm("d"))
        );
    }

    @Test
    public void testUnifyExternalRef() throws Exception {
        Term termRef = ref(parseTerm("f {a f{b f{c d}}}"));
        Term varRef = ref(var("TAIL"));

        Term a = term("g", termRef);
        Term b = term("g", term("f", var("HEAD"), varRef));

        assertUnifiesWithBindings(
                a,
                b,

                bind(var("HEAD"), parseTerm("a")),
                bind(var("TAIL"), parseTerm("f{b f{c d}}"))
        );
    }

    @Test
    public void testTrivialBindings() throws Exception {
        Term a = parseTerm("f {a g{X h}}");
        Term b = parseTerm("f {Y g{X Z}}");

        assertUnifiesAllWithBindings(
                a,
                b,

                bind(var("X"), var("X")),
                bind(var("Y"), parseTerm("a")),
                bind(var("Z"), parseTerm("h"))
        );

        Term c = parseTerm("f {a Y}");
        Term d = parseTerm("X");

        assertUnifiesAllWithBindings(
                c,
                d,

                bind(var("X"), parseTerm("f {a Y}")),
                bind(var("Y"), var("Y"))
        );
    }

    @Test
    public void testUnifyExternalRef2() throws Exception {
        Term list = parseTerm("f {a f{b f{c d}}}");
        Term termRef = ref(list);
        Term varRef = ref(var("TAIL"));


        Term a = term("g", termRef);
        Term aa = term("h", a, list);
        Term b = term("g", term("f", var("HEAD"), varRef));
        Term bb = term("h", b, var("LIST"));

        assertUnifiesWithBindings(
                aa,
                bb,

                bind(var("LIST"), parseTerm("f {a f{b f{c d}}}")),
                bind(var("HEAD"), parseTerm("a")),
                bind(var("TAIL"), parseTerm("f{b f{c d}}"))
        );
    }

    @Test
    public void testUnifyExternalRef3() throws Exception {
        Term empty = parseTerm("f {nil}");
        Term varRef = ref(var("TAIL"));

        Term aa = term("g", empty);
        Term bb = term("g", term("f", varRef));

        assertUnifiesWithBindings(
                aa,
                bb,

                bind(var("TAIL"), parseTerm("nil"))
        );
    }

    @Test
    public void testWrapper() throws Exception {
        Term t1 = parseTerm("a{b c{X}}");
        Term t2 = parseTerm("a{X c{Y}}");
        Term p1 = parseTerm("a{META c{d}}");
        Term p2 = parseTerm("a{b c{META}}");

        class Wrapper implements Term {
            Term wrapped;

            Wrapper(Term term) {
                this.wrapped = term;
            }

            @NotNull
            @Override
            public Object symbol() {
                return wrapped;
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
            public boolean is(Kind kind) {
                return Kind.FUN == kind;
            }

            @Override
            public int compareTo(@NotNull Term other) {
                return String.valueOf(symbol()).compareTo(String.valueOf(other.symbol()));
            }

        }

        TermWrapper wrapper = new TermWrapper() {
            @Override
            public Term wrap(Term orig) {
                return (orig.is(Kind.VAR) && "META".equals(orig.symbol())) ? new Wrapper(orig) : orig;
            }

            @Override
            public Term unwrap(Term maybeWrapper) {
                return maybeWrapper instanceof Wrapper ? ((Wrapper) maybeWrapper).wrapped : maybeWrapper;
            }
        };

        assertUnifiesWithBindings(t1, p1,
                bind(var("META"), parseTerm("b")),
                bind(var("X"), parseTerm("d"))
        );
        assertUnificationFails(t1, p1, wrapper);

        assertUnifiesWithBindings(t1, p2, wrapper,
                bind(var("X"), parseTerm("META"))
        );

        assertUnifiesWithBindings(t2, p2, wrapper,
                bind(var("X"), parseTerm("b")),
                bind(var("Y"), parseTerm("META"))
        );
    }

    @Test
    public void testFailConflict() throws Exception {
        assertUnificationFails(
                parseTerm("a"),
                parseTerm("b"),

                SYMBOL_CLASH,
                "a",
                "b"
        );
        assertUnificationFails(
                parseTerm("node{name{X} child{abc}}"),
                parseTerm("node{name{foo} child{X}}"),

                SYMBOL_CLASH,
                "abc",
                "foo"
        );
    }

    @Test
    public void testFailCard() throws Exception {
        assertUnificationFails(
                parseTerm("a{b c}"),
                parseTerm("a{X}")
        );
    }

    @Test
    public void testFailCyclic() throws Exception {
        assertUnificationFails(
                term("g", ref(parseTerm("f {h X}"))),
                term("g", var("X")),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t {@1 f {h X} g {f {h X}}}"),
                parseTerm("t {Y          g {X}}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("a{b X}"),
                parseTerm("X"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("f{X}"),
                parseTerm("X"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("X"),
                parseTerm("f{X}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("f{f{X}}"),
                parseTerm("f{X}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("f{a{X} Y      }"),
                parseTerm("f{Y    a{b{X}}}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("a{X     c{X}}"),
                parseTerm("a{b{Y}  Y   }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("a{   b{c{b{c{b{c{^2}}}}}} @2 b{c{b{c{^2}}}}}"),
                parseTerm("a{   b{Y}                    b{Y}          }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t {@1 f {h X} g {f {h X}}}"),
                parseTerm("t {Y          g {X}}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t {@1 f {h X} g {^1}}"),
                parseTerm("t {Y          g {X}}"),

                CYCLE_DETECTED
        );
    }

    @Test
    public void testFailCyclicVarRef() throws Exception {
        assertUnificationFails(
                parseTerm("X"),
                parseTerm("f{^X}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("f{X}"),
                parseTerm("f{f{^X}}"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t {@1 f{X} g{^1}}"),
                parseTerm("t {   f{X} X    }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t {@1 f{X} g{^1}}"),
                parseTerm("t {   f{Y} Y    }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t { f{^X} X     }"),
                parseTerm("t { Y     g{^Y} }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t { ^X Y    }"),
                parseTerm("t {  Y f{X} }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t { X     Y }"),
                parseTerm("t { f{Y} ^X }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t { ^X    Y }"),
                parseTerm("t { f{Y} ^X }"),

                CYCLE_DETECTED
        );
        assertUnificationFails(
                parseTerm("t { ^X ^Y    }"),
                parseTerm("t {  Y f{X} }"),

                CYCLE_DETECTED
        );
    }

    @Test
    public void joinedLogicals() throws Exception {
        MetaLogical<Term> X = new MetaLogical<>("X", Term.class);
        MetaLogical<Term> Y = new MetaLogical<>("Y", Term.class);
        MetaLogical<Term> Z = new MetaLogical<>("Z", Term.class);
        MutableLogical<Term> xLogical = LogicalKt.logical(X);
        MutableLogical<Term> yLogical = LogicalKt.logical(Y);
        MutableLogical<Term> zLogical = LogicalKt.logical(Z);

        Term left = term("foo", term("bar", logicalVar(yLogical)), logicalVar(zLogical));
        Term right = term("foo", term("bar", logicalVar(xLogical)), logicalVar(zLogical));

        assertUnifiesWithBindings(left, right,
                new Substitution.Binding(logicalVar(xLogical), logicalVar(yLogical)));

        xLogical.union(yLogical);

        assertUnifiesWithBindings(left, right);
    }

    @Test
    public void joinedLogicals_cycle() throws Exception {
        MetaLogical<Term> X = new MetaLogical<>("X", Term.class);
        MetaLogical<Term> Y = new MetaLogical<>("Y", Term.class);
        MetaLogical<Term> Z = new MetaLogical<>("Z", Term.class);
        MutableLogical<Term> xLogical = LogicalKt.logical(X);
        MutableLogical<Term> yLogical = LogicalKt.logical(Y);
        MutableLogical<Term> zLogical = LogicalKt.logical(Z);

        Term left = logicalVar(yLogical);
        Term right = term("foo", term("bar", logicalVar(xLogical)), logicalVar(zLogical));

        assertUnifiesWithBindings(left, right,
                new Substitution.Binding(left, right));

        xLogical.union(yLogical);

        assertUnificationFails(left, right,
                CYCLE_DETECTED);
    }
}
