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
import org.junit.ComparisonFailure;
import org.junit.Test;

import static org.junit.Assert.*;

import static jetbrains.mps.unification.test.MockTerm.*;
import static jetbrains.mps.unification.test.MockTermsParser.*;
import static jetbrains.mps.unification.test.AssertAll.*;
import static jetbrains.mps.unification.test.AssertStructurallyEquivalent.*;

/**
 * Created by fyodor on 10.06.2014.
 */
public class ParserTests {

    private static class LazyTermLookup implements TermLookup{
        private Term term;

        @Override
        public Term lookupTerm() {
            return term;
        }
    }

    @Test
    public void testSingle() {
        assertEquals(MockTermsParser.parseTerm("a"), MockTermsParser.parseTerm("a"));
        assertEquals(parseTerm("a").symbol(), MockTermsParser.parseTerm("a").symbol());
        assertEquals(parseTerm("X").symbol(), var("X").symbol());
        assertEquals(MockTermsParser.parseTerm("X"), var("X"));
        assertEquals(MockTermsParser.parseTerm("a{b}"), term("a", MockTermsParser.parseTerm("b")));
        assertEquals(parseTerm("a{b}").symbol(), term("a", MockTermsParser.parseTerm("b")).symbol());
        assertEquals(MockTermsParser.parseTerm("a{b c}"), term("a", MockTermsParser.parseTerm("b"), MockTermsParser.parseTerm("c")));
        assertEquals(MockTermsParser.parseTerm("a{b X}"), term("a", MockTermsParser.parseTerm("b"), var("X")));
        assertEquals(MockTermsParser.parseTerm("a{X b}"), term("a", var("X"), MockTermsParser.parseTerm("b")));
        assertEquals(MockTermsParser.parseTerm("a{X Y}"), term("a", var("X"), var("Y")));
    }

    @Test
    public void testMuti() {
        assertEqualsAll(parseAll("a b"), MockTermsParser.parseTerm("a"), MockTermsParser.parseTerm("b"));
        assertEqualsAll(parseAll("X Y"), var("X"), var("Y"));
        assertEqualsAll(parseAll("a{b} a{b}"), term("a", MockTermsParser.parseTerm("b")), term("a", MockTermsParser.parseTerm("b")));
    }

    @Test
    public void testWhitespace() {
        assertEquals(MockTermsParser.parseTerm("    a"), MockTermsParser.parseTerm("a"));
        assertEquals(MockTermsParser.parseTerm("  Y  "), var("Y"));
        assertEquals(MockTermsParser.parseTerm("a{ b }"), term("a", MockTermsParser.parseTerm("b")));
        assertEquals(MockTermsParser.parseTerm("a{   b c }"), term("a", MockTermsParser.parseTerm("b"), MockTermsParser.parseTerm("c")));
        assertEquals(MockTermsParser.parseTerm("a{b X}   "), term("a", MockTermsParser.parseTerm("b"), var("X")));
        assertEquals(MockTermsParser.parseTerm("a {X   b}"), term("a", var("X"), MockTermsParser.parseTerm("b")));
        assertEquals(MockTermsParser.parseTerm(" a{X Y } "), term("a", var("X"), var("Y")));
    }

    @Test
    public void testDeep() {
        assertEquals(MockTermsParser.parseTerm("a{b{c{d{e f g}}}}"),
                term("a",
                    term("b",
                            term("c",
                                    term("d",
                                            MockTermsParser.parseTerm("e"), MockTermsParser.parseTerm("f"), MockTermsParser.parseTerm("g"))))));

        assertEquals(MockTermsParser.parseTerm("a{X b{c{d{Z e W f g} Y}}}"),
                term("a",
                    var("X"), term("b",
                                term("c",
                                        term("d",
                                                var("Z"), MockTermsParser.parseTerm("e"), var("W"), MockTermsParser.parseTerm("f"), MockTermsParser.parseTerm("g")),
                                        var("Y")))));
    }

    @Test
    public void testRef() throws Exception {
        LazyTermLookup termLookup = new LazyTermLookup();
        Term a = termLookup.term = term("a", ref(termLookup));
        assertEquivalent(
                MockTermsParser.parseTerm("@1a{^1}"),
                a);

        Term b = MockTermsParser.parseTerm("b");
        assertEquivalent(
                MockTermsParser.parseTerm("a{@1b ^1}"),
                term("a", b, ref(b)));

        Term c = MockTermsParser.parseTerm("c");
        assertEquivalent(
                MockTermsParser.parseTerm("a{^1 @1c}"),
                term("a", ref(c), c));

        Term b1  = MockTermsParser.parseTerm("b");
        Term b2  = MockTermsParser.parseTerm("b");
        assertEquivalent(
                MockTermsParser.parseTerm("a{@2b ^1 ^2 @1b}"),
                term("a", b2, ref(b1), ref(b2), b1));
    }

    @Test
    public void testVarRef() throws Exception {
        Term x = var("X");

        assertEquivalent(
                MockTermsParser.parseTerm("^X"),
                ref(x));
        assertEquivalent(
                MockTermsParser.parseTerm("a{^X}"),
                term("a", ref(x)));

    }

    @Test(expected = ComparisonFailure.class)
    public void testNotEquivalent1() throws Exception {
        Term d = MockTermsParser.parseTerm("d");
        assertEquivalent(MockTermsParser.parseTerm("a{^1 @1c}"),
                term("a", ref(d), d));
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testUnclosedFail() {
        MockTermsParser.parseTerm("a{b ");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testUnclosedFail2() {
        MockTermsParser.parseTerm("a{X b");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testUnclosedFail3() {
        MockTermsParser.parseTerm("a{{X b}");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testDoubleClosed() {
        MockTermsParser.parseTerm("a{X b}}");
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFailMulti1() {
        MockTermsParser.parseTerm("  a   Y");
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFailMulti2() {
        MockTermsParser.parseTerm("a b");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testEmptyFail() {
        MockTermsParser.parseTerm("");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testEmptyChildrenFail() {
        MockTermsParser.parseTerm("a{}");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testWrongStartFail() {
        MockTermsParser.parseTerm("{a}");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testVarHasChilrenFail() {
        MockTermsParser.parseTerm("X{a}");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testExtraSymbolFail() {
        MockTermsParser.parseTerm("a}");
    }

    @Test(expected = MockTermsParser.ParseException.class)
    public void testNonExistingRefFail() {
        MockTermsParser.parseTerm("a{b ^1}");
    }
}
