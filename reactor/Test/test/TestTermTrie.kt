import jetbrains.mps.logic.reactor.core.TermTrie
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

        val trie1 = TermTrie<Any>().run {
            put(t1, "foo").run {
            put(t2, "bar").run {
            put(t3, "qux").run {
            put(t4, "blah")
        } } } }

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

        val trie1 = TermTrie<Any>().run {
            put(t1, "foo").run {
            put(t2, "bar").run {
            put(t3, "qux").run {
            put(t4, "blah")
        } } } }

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

        val trie1 = TermTrie<Any>().run {
            put(t1, "foo").run {
            put(t2, "bar")
        } }

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
    fun testQuirks() {
        val t1 = parse("a{b c}")
        val t2 = parse("b{c d}")

        val trie1 = TermTrie<Any>().run {
            put(t1, "foo").run {
            put(t2, "bar")
        } }

        assertEquals(setOf("foo"), trie1.lookupValues(parse("a{b c d}")).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(parse("b{c d e}")).toSet())
        assertEquals(setOf<Any>(), trie1.lookupValues(parse("a{b}")).toSet())
        assertEquals(setOf<Any>(), trie1.lookupValues(parse("b{c}")).toSet())
    }

}