import jetbrains.mps.logic.reactor.util.indexMaskOf
import jetbrains.mps.logic.reactor.util.indexedTermTrie
import jetbrains.mps.logic.reactor.util.termTrie
import jetbrains.mps.unification.test.MockTermsParser
import jetbrains.mps.unification.test.MockTermsParser.*
import org.junit.Assert
import org.junit.Assert.*
import org.junit.Test

/*
 * Copyright 2014-2021 JetBrains s.r.o.
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

/**
 * @author Fedor Isakov
 */
class TestIndexedTermTrie {

    @Test
    fun testPut() {
        val t1 = parseTerm("a{b c}")
        val t2 = parseTerm("a{d e}")
        val t3 = parseTerm("f{g h{i k{l m{o p} n}}}")
        val t4 = parseTerm("f{g h{i q            }}")

        val trie1 = indexedTermTrie<Any>().runs(
            { put(t1, 1, "foo") },
            { put(t2, 2, "bar") },
            { put(t3, 2, "qux") },
            { put(t4, 3,"blah") }
        )

        assertEquals(setOf("foo", "bar", "qux", "blah"), trie1.allValues().toSet())
        assertEquals(setOf("bar", "qux"), trie1.allValues(indexMaskOf(2)).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(t2).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(t2, indexMaskOf(2)).toSet())
        assertEquals(setOf<String>(), trie1.lookupValues(t2, indexMaskOf(3)).toSet())

        val trie2 = trie1.also { it.put(t2, 3, "bazz") }
        assertEquals(setOf("foo", "bar", "qux", "blah", "bazz"), trie2.allValues().toSet())
        assertEquals(setOf("blah", "bazz"), trie2.allValues(indexMaskOf(3)).toSet())
        assertEquals(setOf("foo", "blah", "bazz"), trie2.allValues(indexMaskOf(1, 3)).toSet())

        assertEquals(setOf("bar", "bazz"), trie2.lookupValues(t2).toSet())
        assertEquals(setOf("bar", "bazz"), trie2.lookupValues(t2, indexMaskOf(2,3)).toSet())
        assertEquals(setOf<String>(), trie2.lookupValues(t2, indexMaskOf(1)).toSet())
        assertEquals(setOf<Any>(), trie2.lookupValues(parseTerm("a{d f}")).toSet())
        assertEquals(setOf("qux"), trie2.lookupValues(t3).toSet())
        assertEquals(setOf("qux"), trie2.lookupValues(t3, indexMaskOf(2)).toSet())
        assertEquals(setOf("blah"), trie2.lookupValues(t4).toSet())
        assertEquals(setOf("blah"), trie2.lookupValues(t4, indexMaskOf(3)).toSet())

        val trie3 = trie2.also { it.put(t4, 1, "shmoo") }
        assertEquals(setOf("foo", "blah", "bazz", "shmoo"), trie2.allValues(indexMaskOf(1, 3)).toSet())
        assertEquals(setOf<String>(), trie2.lookupValues(t2, indexMaskOf(1)).toSet())
        assertEquals(setOf("foo", "bar", "qux", "blah", "bazz", "shmoo"), trie3.allValues().toSet())
        assertEquals(setOf("qux", "blah", "bazz", "bar"), trie3.allValues(indexMaskOf(2, 3)).toSet())
        assertEquals(setOf("blah", "shmoo"), trie3.lookupValues(t4, indexMaskOf(1, 3)).toSet())
        assertEquals(setOf("shmoo"), trie3.lookupValues(t4, indexMaskOf(1)).toSet())
    }

    @Test
    fun testRemove() {
        val t1 = parseTerm("a{b c}")
        val t2 = parseTerm("a{d e}")
        val t3 = parseTerm("f{g h{i k{l m{o p} n}}}")
        val t4 = parseTerm("f{g h{i q            }}")

        val trie1 = indexedTermTrie<Any>().runs(
            { put(t1, 1, "foo") },
            { put(t2, 1, "bar") },
            { put(t3, 2, "qux") },
            { put(t4, 2, "blah") }
        )

        assertEquals(setOf("foo", "bar", "qux", "blah"), trie1.allValues().toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(t2).toSet())

        val trie2 = trie1.also { it.remove(t2, "bazz") }
        assertEquals(setOf("foo", "bar", "qux", "blah"), trie2.allValues().toSet())
        assertEquals(setOf("bar"), trie2.lookupValues(t2).toSet())

        val trie3 = trie2.also { it.remove(t2, 1, "bar") }
        assertEquals(setOf("foo", "qux", "blah"), trie3.allValues().toSet())
        assertEquals(setOf<Any>(), trie3.lookupValues(t2).toSet())


        val trie4 = trie3.also { it.remove(t3, 2, "qux") }
        assertEquals(setOf("foo", "blah"), trie4.allValues().toSet())
        assertEquals(setOf<Any>(), trie4.lookupValues(t3).toSet())
        assertEquals(setOf("blah"), trie4.lookupValues(t4).toSet())
    }

    @Test
    fun testRemovePut() {
        val t1 = parseTerm("a{b c}")
        val t2 = parseTerm("a{b d}")

        val trie1 = indexedTermTrie<Any>().runs(
            { put(t1, 1, "foo") },
            { put(t2, 2, "bar") }
        )

        assertEquals(setOf("foo", "bar"), trie1.allValues().toSet())
        assertEquals(setOf("foo"), trie1.lookupValues(t1).toSet())
        assertEquals(setOf("bar"), trie1.lookupValues(t2).toSet())

        val trie2 = trie1.also { it.remove(t2, 2, "bar") }
        assertEquals(setOf("foo"), trie2.allValues().toSet())
        assertEquals(setOf("foo"), trie2.lookupValues(t1).toSet())
        assertEquals(setOf<Any>(), trie2.lookupValues(t2).toSet())

        val trie3 = trie2.also { it.put(t2, 2, "bazz") }
        assertEquals(setOf("foo", "bazz"), trie3.allValues().toSet())
        assertEquals(setOf("foo", "bazz"), trie3.allValues(indexMaskOf(1,2)).toSet())
        assertEquals(setOf("foo"), trie3.lookupValues(t1).toSet())
        assertEquals(setOf("bazz"), trie3.lookupValues(t2).toSet())

        val trie4 = trie3.also { it.remove(t1, 1, "foo") }
        assertEquals(setOf("bazz"), trie4.allValues().toSet())
        assertEquals(setOf<Any>(), trie4.lookupValues(t1).toSet())
        assertEquals(setOf("bazz"), trie4.lookupValues(t2).toSet())
    }

    fun <T> T.runs(vararg blocks: T.() -> Unit): T {
        for (blk in blocks) {
            blk()
        }
        return this
    }

}