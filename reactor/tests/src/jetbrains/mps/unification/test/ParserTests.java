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

import jetbrains.mps.unification.Node;
import org.junit.ComparisonFailure;
import org.junit.Test;

import static org.junit.Assert.*;

import static jetbrains.mps.unification.test.MockNode.*;
import static jetbrains.mps.unification.test.MockTreeParser.*;
import static jetbrains.mps.unification.test.AssertAll.*;
import static jetbrains.mps.unification.test.AssertStructurallyEquivalent.*;

/**
 * Created by fyodor on 10.06.2014.
 */
public class ParserTests {

    private static class LazyTermLookup implements TermLookup{
        private Node term;

        @Override
        public Node lookupTerm() {
            return term;
        }
    }

    @Test
    public void testSingle() {
        assertEquals(parse("a"), term("a"));
        assertEquals(parseTerm("a").symbol(), term("a").symbol());
        assertEquals(parseVar("X").symbol(), var("X").symbol());
        assertEquals(parse("X"), var("X"));
        assertEquals(parse("a{b}"), term("a", term("b")));
        assertEquals(parseTerm("a{b}").symbol(), term("a", term("b")).symbol());
        assertEquals(parse("a{b c}"), term("a", term("b"), term("c")));
        assertEquals(parse("a{b X}"), term("a", term("b"), var("X")));
        assertEquals(parse("a{X b}"), term("a", var("X"), term("b")));
        assertEquals(parse("a{X Y}"), term("a", var("X"), var("Y")));
    }

    @Test
    public void testMuti() {
        assertEqualsAll(parseAll("a b"), term("a"), term("b"));
        assertEqualsAll(parseAll("X Y"), var("X"), var("Y"));
        assertEqualsAll(parseAll("a{b} a{b}"), term("a", term("b")), term("a", term("b")));
    }

    @Test
    public void testWhitespace() {
        assertEquals(parse("    a"), term("a"));
        assertEquals(parse("  Y  "), var("Y"));
        assertEquals(parse("a{ b }"), term("a", term("b")));
        assertEquals(parse("a{   b c }"), term("a", term("b"), term("c")));
        assertEquals(parse("a{b X}   "), term("a", term("b"), var("X")));
        assertEquals(parse("a {X   b}"), term("a", var("X"), term("b")));
        assertEquals(parse(" a{X Y } "), term("a", var("X"), var("Y")));
    }

    @Test
    public void testDeep() {
        assertEquals(parse("a{b{c{d{e f g}}}}"),
                term("a",
                    term("b",
                            term("c",
                                    term("d",
                                            term("e"), term("f"), term("g"))))));

        assertEquals(parse("a{X b{c{d{Z e W f g} Y}}}"),
                term("a",
                    var("X"), term("b",
                                term("c",
                                        term("d",
                                                var("Z"), term("e"), var("W"), term("f"), term("g")),
                                        var("Y")))));
    }

    @Test
    public void testRef() throws Exception {
        LazyTermLookup termLookup = new LazyTermLookup();
        Node a = termLookup.term = term("a", ref(termLookup));
        assertEquivalent(
                parse("@1a{^1}"),
                a);

        Node b = term("b");
        assertEquivalent(
                parse("a{@1b ^1}"),
                term("a", b, ref(b)));

        Node c = term("c");
        assertEquivalent(
                parse("a{^1 @1c}"),
                term("a", ref(c), c));

        Node b1  = term("b");
        Node b2  = term("b");
        assertEquivalent(
                parse("a{@2b ^1 ^2 @1b}"),
                term("a", b2, ref(b1), ref(b2), b1));
    }

    @Test
    public void testVarRef() throws Exception {
        Node x = var("X");

        assertEquivalent(
                parse("^X"),
                ref(x));
        assertEquivalent(
                parse("a{^X}"),
                term("a", ref(x)));

    }

    @Test(expected = ComparisonFailure.class)
    public void testNotEquivalent1() throws Exception {
        Node d = term("d");
        assertEquivalent(parse("a{^1 @1c}"),
                term("a", ref(d), d));
    }

    @Test(expected = ComparisonFailure.class)
    public void testNotEquivalent2() throws Exception {
        Node b1  = term("b");
        Node b2  = term("b");
        assertEquivalent(parse("a{@2b ^1 @1b ^2}"),
                term("a", b2, ref(b2), b1, ref(b1)));
    }

    @Test(expected = ComparisonFailure.class)
    public void testNotEquivalent3() throws Exception {
        Node b1  = term("b");
        Node b2  = term("b");
        assertEquivalent(parse("a{@2b ^1 ^2 @1b}"),
                term("a", b2, ref(b2), ref(b1), b1));
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testUnclosedFail() {
        parse("a{b ");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testUnclosedFail2() {
        parse("a{X b");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testUnclosedFail3() {
        parse("a{{X b}");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testDoubleClosed() {
        parse("a{X b}}");
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFailMulti1() {
        parse("  a   Y");
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFailMulti2() {
        parse("a b");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testEmptyFail() {
        parse("");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testEmptyChildrenFail() {
        parse("a{}");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testWrongStartFail() {
        parse("{a}");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testVarHasChilrenFail() {
        parse("X{a}");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testExtraSymbolFail() {
        parse("a}");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testNonExistingRefFail() {
        parse("a{b ^1}");
    }
}
