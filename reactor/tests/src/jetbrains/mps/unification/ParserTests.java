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

package jetbrains.mps.unification;

import org.junit.Test;

import static org.junit.Assert.*;

import static jetbrains.mps.unification.MockNode.*;
import static jetbrains.mps.unification.MockTreeParser.*;
import static jetbrains.mps.unification.AssertAll.*;

/**
 * Created by fyodor on 10.06.2014.
 */
public class ParserTests {

    @Test
    public void testSingle() {
        assertEquals(parse("a"), term("a"));
        assertEquals(parseTerm("a").symbol(), term("a").symbol());
        assertEquals(parseVar("X").name(), var("X").name());
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

    @Test(expected = MockTreeParser.ParseException.class)
    public void testUclosedFail() {
        parse("a{b ");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testUclosedFail2() {
        parse("a{X b");
    }

    @Test(expected = MockTreeParser.ParseException.class)
    public void testUclosedFail3() {
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
}
