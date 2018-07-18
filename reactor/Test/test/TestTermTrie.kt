import jetbrains.mps.logic.reactor.core.TermTrie
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.test.MockTerm
import jetbrains.mps.unification.test.MockTerm.*
import jetbrains.mps.unification.test.MockTermsParser
import jetbrains.mps.unification.test.MockTermsParser.parse
import org.junit.Test
import org.junit.Assert.*


/**
 * @author Fedor Isakov
 */

class TestTermTrie {

    @Test
    fun testPut() {
        val t1 = parse("a{b c}")
        val t2 = parse("a{d e}")
        val t3 = parse("f{g h{i k{l m{o p} n}}}")
        val t4 = parse("f{g h{i q            }}")

        val trie1 = TermTrie<Any>().runs(
            { put(t1, "foo") },
            { put(t2, "bar") },
            { put(t3, "qux") },
            { put(t4, "blah") }
        )

        assertEquals(setOf("foo", "bar", "qux", "blah"), trie1.allValues().toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(t2).toSet())

        val trie2 = trie1.put(t2, "bazz")
        assertEquals(setOf("foo", "bar", "qux", "blah", "bazz"), trie2.allValues().toSet())

        assertEquals(setOf("bar", "bazz"), trie2.lookupValues(t2).toSet())
        assertEquals(setOf<Any>(), trie2.lookupValues(parse("a{d f}")).toSet())
        assertEquals(setOf("qux"), trie2.lookupValues(t3).toSet())
        assertEquals(setOf("blah"), trie2.lookupValues(t4).toSet())

        val trie3 = trie2.put(t4, "shmoo")
        assertEquals(setOf("foo", "bar", "qux", "blah", "bazz", "shmoo"), trie3.allValues().toSet())
        assertEquals(setOf("blah", "shmoo"), trie3.lookupValues(t4).toSet())
    }


    @Test
    fun testRemove() {
        val t1 = parse("a{b c}")
        val t2 = parse("a{d e}")
        val t3 = parse("f{g h{i k{l m{o p} n}}}")
        val t4 = parse("f{g h{i q            }}")

        val trie1 = TermTrie<Any>().runs(
            { put(t1, "foo") },
            { put(t2, "bar") },
            { put(t3, "qux") },
            { put(t4, "blah") }
        )

        assertEquals(setOf("foo", "bar", "qux", "blah"), trie1.allValues().toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(t2).toSet())

        val trie2 = trie1.remove(t2, "bazz")
        assertEquals(setOf("foo", "bar", "qux", "blah"), trie2.allValues().toSet())
        assertEquals(setOf("bar"), trie2.lookupValues(t2).toSet())

        val trie3 = trie2.remove(t2, "bar")
        assertEquals(setOf("foo", "qux", "blah"), trie3.allValues().toSet())
        assertEquals(setOf<Any>(), trie3.lookupValues(t2).toSet())


        val trie4 = trie3.remove(t3, "qux")
        assertEquals(setOf("foo", "blah"), trie4.allValues().toSet())
        assertEquals(setOf<Any>(), trie4.lookupValues(t3).toSet())
        assertEquals(setOf("blah"), trie4.lookupValues(t4).toSet())
    }


    @Test
    fun testRemovePut() {
        val t1 = parse("a{b c}")
        val t2 = parse("a{b d}")

        val trie1 = TermTrie<Any>().runs(
            { put(t1, "foo") },
            { put(t2, "bar") }
        )

        assertEquals(setOf("foo", "bar"), trie1.allValues().toSet())
        assertEquals(setOf("foo"), trie1.lookupValues(t1).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(t2).toSet())

        val trie2 = trie1.remove(t2, "bar")
        assertEquals(setOf("foo"), trie2.allValues().toSet())
        assertEquals(setOf("foo"), trie2.lookupValues(t1).toSet())
        assertEquals(setOf<Any>(), trie2.lookupValues(t2).toSet())

        val trie3 = trie2.put(t2, "bazz")
        assertEquals(setOf("foo", "bazz"), trie3.allValues().toSet())
        assertEquals(setOf("foo"), trie3.lookupValues(t1).toSet())
        assertEquals(setOf("bazz"), trie3.lookupValues(t2).toSet())

        val trie4 = trie3.remove(t1, "foo")
        assertEquals(setOf("bazz"), trie4.allValues().toSet())
        assertEquals(setOf<Any>(), trie4.lookupValues(t1).toSet())
        assertEquals(setOf("bazz"), trie4.lookupValues(t2).toSet())
    }


    @Test
    fun testUnif () {

        val t1 = parse("f{g{a b} a}")
        val t2 = parse("f{g{a X} c}")
        val t3 = parse("f{g{b c} X}")
        val t4 = parse("f{g{X b} X}")
        val t5 = parse("f{X Y}")

        val tt = TermTrie<String>().runs(
            { put(t1, "t1") },
            { put(t2, "t2") },
            { put(t3, "t3") },
            { put(t4, "t4") },
            { put(t5, "t5") }
        )

        assertEquals(setOf("t3", "t5"), tt.lookupValues(parse("f{g{b c} a}")).toSet())
        assertEquals(setOf("t3", "t4", "t5"), tt.lookupValues(parse("f{g{b X} a}")).toSet())
        assertEquals(setOf("t1", "t3", "t4", "t5"), tt.lookupValues(parse("f{g{X Y} a}")).toSet())

        val tt2 = tt.remove(t4, "t4")
        assertEquals(setOf("t3", "t5"), tt2.lookupValues(parse("f{g{b X} a}")).toSet())
        assertEquals(setOf("t1", "t3", "t5"), tt2.lookupValues(parse("f{g{X Y} a}")).toSet())

    }


    @Test
    fun testQuirks() {
        val t1 = parse("a{b c}")
        val t2 = parse("b{c d}")

        val trie1 = TermTrie<Any>().runs (
            { put(t1, "foo") },
            { put(t2, "bar") }
        )

        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{b c d}")).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(parse("b{c d e}")).toSet())
        assertEquals(setOf<Any>(), trie1.lookupValues(parse("a{b}")).toSet())
        assertEquals(setOf<Any>(), trie1.lookupValues(parse("b{c}")).toSet())
    }


    @Test
    fun testWildcard() {
        val t1 = parse("a{X c}")
        val t2 = parse("b{c Y}")

        val trie1 = TermTrie<Any>().runs(
            { put(t1, "foo") },
            { put(t2, "bar") }
        )

        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{b c}")).toSet())
        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{b c d}")).toSet())
        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{Z c}")).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(parse("b{c d e}")).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(parse("b{c d}")).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(parse("b{c Z}")).toSet())
        assertEquals(setOf<Any>(), trie1.lookupValues(parse("a{b}")).toSet())
        // invariant violated: fixed term arity
//        assertEquals(setOf<Any>(), trie1.lookupValues(parse("a{Z}")).toSet())
//        assertEquals(setOf<Any>(), trie1.lookupValues(parse("b{c}")).toSet())
//        assertEquals(setOf<Any>(), trie1.lookupValues(parse("b{Z}")).toSet())
    }


    @Test
    fun testVariable() {
        val t1 = parse("a{b c}")
        val t2 = parse("b{c d}")
        val t3 = parse("f{g h{i k{l m{o p} n}}}")
        val t4 = parse("f{g h{i q            }}")

        val trie1 = TermTrie<Any>().runs(
            { put(t1, "foo") },
            { put(t2, "bar") },
            { put(t3, "qux") },
            { put(t4, "blah") }
        )

        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{X c}")).toSet())
        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{b Y}")).toSet())
        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{X Y}")).toSet())
        assertEquals(setOf("foo", "bar", "qux", "blah"), trie1.lookupValues(parse("Z")).toSet())
        assertEquals(setOf("qux"), trie1.lookupValues(parse("f{X h{i k{l Y Z}}}")).toSet())
        assertEquals(setOf("qux", "blah"), trie1.lookupValues(parse("f{g h{i X}}")).toSet())
    }


    @Test
    fun testWildcardVariable() {
        val t1 = parse("a{X c{d e}}")
        val t2 = parse("a{b Y}")
        val t3 = parse("a{X Y}")
        val t4 = parse("f{g h{Z k{l m{o p} n}}}")
        val t5 = parse("f{Z h{i q            }}")

        val trie1 = TermTrie<Any>().runs(
            { put(t1, "foo") },
            { put(t2, "bar") },
            { put(t3, "bazz") },
            { put(t4, "qux") },
            { put(t5, "blah") }
        )

        assertEquals(setOf("foo", "bar", "bazz"), trie1.lookupValues(parse("a{X c{d e}}")).toSet())
        assertEquals(setOf("foo", "bar", "bazz"), trie1.lookupValues(parse("a{b Y}")).toSet())
        assertEquals(setOf("foo", "bazz"), trie1.lookupValues(parse("a{c Y}")).toSet())
        assertEquals(setOf("foo", "bar", "bazz"), trie1.lookupValues(parse("a{X Y}")).toSet())
        assertEquals(setOf("foo", "bar", "bazz", "qux", "blah"), trie1.lookupValues(parse("Z")).toSet())
        assertEquals(setOf("qux"), trie1.lookupValues(parse("f{X h{i k{l Y Y}}}")).toSet())
        assertEquals(setOf("qux"), trie1.lookupValues(parse("f{X h{j Y}}")).toSet())
        assertEquals(setOf("qux", "blah"), trie1.lookupValues(parse("f{g h{i X}}")).toSet())
        assertEquals(setOf("qux", "blah"), trie1.lookupValues(parse("f{X h{i Y}}")).toSet())
        assertEquals(setOf("qux", "blah"), trie1.lookupValues(parse("f{X Y}")).toSet())
        assertEquals(setOf("blah"), trie1.lookupValues(parse("f{j h{X q}}")).toSet())
    }


    @Test
    fun testValuesOrder() {
        val t1 = parse("a{X c}")
        val t2 = parse("a{b Y}")
        val t3 = parse("a{c Y}")
        val t4 = parse("a{X Y}")

        val trie1 = TermTrie<Any>().runs(
            { put(t1, "foo") },
            { put(t2, "bar") },
            { put(t3, "bazz") },
            { put(t4, "qux") }
        )

        // value order/cardinality no longer maintained
        assertEquals(setOf("foo", "bar", "qux"), trie1.lookupValues(parse("a{b X}")).toSet())
        assertEquals(setOf("foo", "bar", "bazz", "qux"), trie1.lookupValues(parse("a{X c}")).toSet())
        assertEquals(setOf("foo", "bazz", "qux"), trie1.lookupValues(parse("a{c c}")).toSet())

        val trie2 = trie1.remove(t2, "bar")
        val trie3 = trie2.put(t2, "blah")

        assertEquals(setOf("foo", "qux", "blah"), trie3.lookupValues(parse("a{b X}")).toSet())
        assertEquals(setOf("foo", "bazz", "qux", "blah"), trie3.lookupValues(parse("a{X c}")).toSet())
    }

    @Test
    fun testRefTerm() {
        val varRef = MockRef(MockVar("TAIL"))
        val pattern = MockFun("g", MockFun("h"), MockFun("f", varRef, MockFun("nil")))
        val trie1 = TermTrie<Any>().runs(
            { put(parse("g {h f {a nil}}"), "bar") },
            { put(parse("g {h f {a f {b nil}}}"), "bazz") },
            { put(pattern, "foo") },
            { put(parse("g {h foo {nil}}"), "qux") }
        )

        assertEquals(listOf("qux"), trie1.lookupValues(parse("g {h foo {nil}}")).toList())

        val key = MockFun("g", MockFun("h"), parse("f {c nil}"))
        assertEquals(listOf("foo"), trie1.lookupValues(key).toList())
    }

    @Test
    fun testRefList() {
        val trie = TermTrie<Any>().runs(
            {  put(parse("f{X Y}"), "foo") },
            {  put(parse("f{a Z}"), "bar") },
            {  put(parse("f{a f{b W}}"), "bazz") }
        )

        val f = parse("f {b nil}")
        val key = MockFun("f", parse("a"), MockRef(MockRef(f)))
        assertEquals(setOf("foo", "bar", "bazz"), trie.lookupValues(key).toSet())
    }


    @Test
    fun testCyclicTerm() {
        val trie = TermTrie<Any>().runs(
            { put(parse("cst{ @1 n{ a{b c} d{^1} } }"), "foo") },
            { put(parse("cst{ n{ @2 a{b ^2} d{e} } }"), "bar") }
        )

        assertEquals(setOf("foo", "bar"), trie.lookupValues(parse("cst{ N }")).toSet())
        assertEquals(setOf("foo", "bar"), trie.lookupValues(parse("cst{ n{ X Y } }")).toSet())
        assertEquals(setOf("foo", "bar"), trie.lookupValues(parse("cst{ n{ X d{Z} } }")).toSet())
        assertEquals(setOf("foo", "bar"), trie.lookupValues(parse("cst{ n{ a{b W} V } }")).toSet())
        assertEquals(listOf("bar"), trie.lookupValues(parse("cst{ n{ @1 a{b ^1} V } }")))
        assertEquals(listOf("foo"), trie.lookupValues(parse("cst{ @1 n{ a{b S} d{^1} } }")))

        val trie2 = trie.runs(
            { remove(parse("cst{ n{ @2 a{b ^2} d{e} } }"), "bar") }
        )
        assertEquals(emptyList<String>(), trie2.lookupValues(parse("cst{ n{ @1 a{b ^1} V } }")))
        assertEquals(listOf("foo"), trie2.lookupValues(parse("cst{ @1 n{ a{b S} d{^1} } }")))

    }

    fun <T> T.runs(vararg blocks: T.() -> T): T {
        var t = this
        for (blk in blocks) {
            t = t.blk()
        }
        return t
    }

}