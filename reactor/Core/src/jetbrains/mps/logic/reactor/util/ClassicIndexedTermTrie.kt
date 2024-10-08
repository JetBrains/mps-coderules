/*
 * Copyright 2014-2018 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.util

import jetbrains.mps.logic.reactor.logical.VarSymbol
import jetbrains.mps.unification.Term
import java.util.*
import kotlin.collections.ArrayList
import kotlin.collections.HashSet

/**
 * @author Fedor Isakov
 */

/**
 * A map-like structure to keep multiple values associated with a single term.
 *
 * Term variables are supported: a variable matches any term, including other variable. All variables are treated
 * as "wildcards", so the subsequent unification of the query term and the key does not necessarily succeeds.
 *
 * To access the stored values, the method `lookupValues` returns all values associated with terms.
 * The method `allValues` returns all stored values. Neither method makes any guarantees about the cardinality or
 * the order of the values returned.
 *
 * The implementation is based on the structure called "discrimination tree" as described in the chapter 26 of [1].
 *
 * The indexed variant of the term trie adds in addiiton a possibility to index all values by an int value.
 * An index may be specified in all put/remove and also to lookup methods, and limits the scope of
 * internal nodes to be traversed, thus eliminating unnecessary calls. 
 *
 * [1] Alan Robinson and Andrei Voronkov (Eds.). 2001. Handbook of Automated Reasoning.
 * Elsevier Sci. Pub. B. V., Amsterdam, The Netherlands, The Netherlands.
 * An implementation of TermTrie not relying on persistent data structures.
 */

class ClassicIndexedTermTrie<T> : IndexedTermTrie<T> {

    private companion object {

        private val WILDCARD = object : Any() {
            override fun toString() = "WILDCARD"
        }

    }

    private var root: PathNode<T>

    init {
        root = PathNode(WILDCARD, 1)
    }

    override fun put(term: Term, value: T) {
        putValue(term, 0, value)
    }

    override fun put(term: Term, index: Int, value: T) {
        putValue(term, index, value)
    }

    override fun remove(term: Term, value: T) {
        removeValue(term, 0, value)
    }

    override fun remove(term: Term, index: Int, value: T) {
        removeValue(term, index, value)
    }

    override fun lookupValues(term: Term): Iterable<T> {
        val result = ArrayList<T>()
        visitMatching(term) { value, index -> result.add(value) }
        return result
    }

    override fun lookupValues(term: Term, indexMask: IndexMask): Iterable<T> {
        val result = ArrayList<T>()
        visitMatching(term) { value, index -> if (indexMask.get(index)) { result.add(value) } }
        return result
    }

    override fun forValuesWithIndex(term: Term, callback: (T, Int) -> Unit) {
        visitMatching(term) { value, index -> callback(value, index) }
    }

    override fun allValues(): Iterable<T> {
        val result = ArrayList<T>()
        visitAll(root, null, { value, index -> result.add(value) })
        return result
    }

    override fun allValues(indexMask: IndexMask): Iterable<T> {
        val result = ArrayList<T>()
        visitAll(root, indexMask, { value, index -> result.add(value) })
        return result
    }

    private fun putValue(matchTerm: Term, index: Int, value: T) {
        val seen = IdentityHashMap<Term, Term>()
        val nodeStack = arrayDequeOf(root)
        val termStack = arrayDequeOf(matchTerm)
        while (!termStack.isEmpty()) {
            val node = nodeStack.peek()
            val term = termStack.pop()

            // dereferece the term only if it hasn't been dereferenced before
            val deref = deref(term).let { dt -> seen[dt]?.run { term } ?: dt.apply { seen[dt] = term } }
            val argSize = deref.arguments().size
            for(i in 1..argSize) {
                termStack.push(deref.arguments()[argSize - i])
            }
            val nextNode = node.nextOrDefault(symbolOrWildcard(deref)) { sym -> PathNode(sym, argSize) }
            nodeStack.push(nextNode)
        }

        val head = nodeStack.pop()
        head.addValue(value, index)
    }

    private fun removeValue(matchTerm: Term, index: Int, value: T) {
        val seen = IdentityHashMap<Term, Term>()
        val nodeStack = arrayListOf(root)
        val termStack = arrayListOf(matchTerm)
        val argPool = arrayListOf<Term>()
        while (!termStack.isEmpty()) {
            val node = nodeStack.peek()
            val term = termStack.pop()

            // dereferece the term only if it hasn't been dereferenced before
            val deref = deref(term).let { dt -> seen[dt]?.run { term } ?: dt.apply { seen[dt] = term } }
            argPool.addAll(deref.arguments())
            for(i in 1..argPool.size) {
                termStack.push(argPool[argPool.size - i])
            }
            argPool.clear()

            val nextNode = node.next(symbolOrWildcard(deref))
            if (nextNode == null)  {
                // term not found
                return
            }
            nodeStack.push(nextNode)
        }

        var head = nodeStack.pop()
        if (head.removeValue(value, index)) {
            while (nodeStack.isNotEmpty()) {
                val base = nodeStack.pop()
//                base.removeIndex(index)
                if (head.isLeaf()) {
                    base.dropNext(head)
                }
                head = base
            }
        }
    }

    /**
     * Call the visitor function with values of the given node and all its direct and indirect successors.
     */
    private fun visitAll(node: PathNode<T>, indexMask: IndexMask?, visitor: (T, Int) -> Unit) {
        node.forEachValue { value, index -> if (indexMask?.get(index) ?: true) { visitor(value, index) } }
        node.allNext().forEach { visitAll(it, indexMask, visitor) }
    }

    private fun collectAllLeaves(node: PathNode<T>, leafs: MutableList<PathNode<T>>) {
        val nodeStack = arrayListOf(node)
        while (nodeStack.isNotEmpty()) {
            val n = nodeStack.pop()
            if (n.isLeaf()) leafs.add(n)
            n.allNext().forEach {
                nodeStack.push(it)
            }
        }
    }

    private fun deref(term: Term): Term {
        var deref = term
        while (deref.`is`(Term.Kind.REF)) {
            deref = deref.get()
        }
        return deref
    }

    private fun symbolOrWildcard(term: Term): Any  {
        return if (term.`is`(Term.Kind.VAR) || (term.`is`(Term.Kind.FUN) && term.symbol() is VarSymbol)) {
            WILDCARD

        } else {
            term.symbol()
        }
    }

    /**
     * Given a pattern term, which may contain variables that are treated as wildcards,
     * call the passed visitor function with values of all matching nodes and all the nodes that precede them.
     */
    private fun visitMatching(pattern: Term, visitor: (T, Int) -> Unit) {
        val seenNonLeaf = IdentityHashMap<Term, Term>()
        val canonicTerms = IdentityHashMap<Term, Pair<Term, Any>>()
        val visitStack = arrayListOf(listOf(root) to listOf(pattern))
        val allLeaves = arrayListOf<PathNode<T>>()

        while (!visitStack.isEmpty()) {
            val (bases, ptnTerms) = visitStack.pop()
            if (!ptnTerms.isEmpty()) {
                val ptnHead = ptnTerms.first()
                val ptnTail = ptnTerms.subList(1, ptnTerms.size)

                if (!canonicTerms.containsKey(ptnHead)) {
                    // dereferece the term only if it hasn't been dereferenced before
                    val derefPtnHead = deref(ptnHead).let { dt -> seenNonLeaf[dt]?.run { ptnHead } ?: dt }
                    canonicTerms[ptnHead] = derefPtnHead to symbolOrWildcard(derefPtnHead)
                }
                val (term, sym) = canonicTerms[ptnHead] !!

                for (base in bases) {
                    if (sym == WILDCARD) {
                        if (!ptnTail.isEmpty()) {
                            // skip the current node
                            // match the patterns tail with the current node's direct successors
                            val (wcdTerms, wcdBases) = base.terms2bases()
                            wcdTerms.forEach { if (it.isLeaf()) allLeaves.add(it) /*it.forEachValueWithIndex(indexMask, visitor)*/ }
                            visitStack.push(wcdBases to ptnTail)

                        } else {
                            // wildcard consumes the rest of the trie
                            base.allNext().forEach { collectAllLeaves(it, allLeaves) }
                        }

                    } else {
                        base.next(WILDCARD)?.let { nn ->
                            if (nn.isLeaf()) allLeaves.add(nn)
//                            nn.forEachValueWithIndex(indexMask, visitor)
                            if (!ptnTail.isEmpty()) {
                                visitStack.push(listOf(nn) to ptnTail)
                            }
                        }
                        base.next(sym)?.let { nn ->
                            if (nn.isLeaf()) allLeaves.add(nn)
//                            nn.forEachValueWithIndex(indexMask, visitor)

                            // prepend this patternTerm's arguments to the tail pattern terms
                            val newTail = ArrayList(term.arguments())
                            if (newTail.size > 0) {
                                seenNonLeaf[term] = term
                            }
                            newTail.addAll(ptnTail)
                            if (!newTail.isEmpty()) {
                                visitStack.push(listOf(nn) to newTail)
                            }
                        }
                    }
                }
            }
        }

        allLeaves.forEach { it.forEachValue(visitor) }
    }
    
    /**
     * A trie node. Corresponds to a particular subterm.
     */
    private class PathNode<T>(val symbol: Any,
                              val arity: Int)
    {
        private val next = HashMap<Any, PathNode<T>>(4)
        private val indexedValues = arrayListOf<Pair<Int,T>>()

        fun forEachValue(callback: (T, Int) -> Unit ) {
            indexedValues.forEach { (index, value) -> callback(value, index) }
        }

        fun isLeaf(): Boolean = next.isEmpty()

        fun next(symbol: Any): PathNode<T>? = next[symbol]

        /**
         * Returns all trie nodes that are direct successors of this one.
         */
        fun allNext(): List<PathNode<T>>  {
            val res = arrayListOf<PathNode<T>>()
            res.addAll(next.values)
            return res
        }

        /**
         * Helper method for processing a wildcard in pattern.
         *
         * Returns a pair of iterables:
         * -  first component contains all nodes that make up the next *term*;
         * -  second component contains base nodes that precede terms following that *term*.
         *
         * The trie keeps the terms _flattened_, and the following proposition holds.
         *
         * Let t = f(...) be a term. Let flt: Term->List be a function that transforms terms to lists of symbols.
         * Let ar: Symbol->int be a function that returns arity for a given symbol.
         *
         * Then size(flt t) = 1 + sum . (map ar) (flt t), where '.' stands for function composition.
         *
         * The size of a list representing a flattened term is equal to
         * the sum of arities of all symbols in this list plus 1.
         */
        fun terms2bases(): Pair<List<PathNode<T>>, List<PathNode<T>>> {

            // for every current node there is a number
            // initially 0
            // counting down with every call to allNext()
            // increased by current node's arity

            val terms = ArrayList<PathNode<T>>()
            val bases = ArrayList<PathNode<T>>()

            val stack = arrayListOf(allNext() to 0)

            while (stack.isNotEmpty()) {
                val (nn, count) = stack.pop()
                for (n in nn) {
                    val newCount = count + n.arity
                    if (newCount == 0) {
                        bases.add(n)

                    } else {
                        terms.add(n)
                        stack.push(n.allNext() to (newCount - 1))
                    }
                }
            }

            return terms to bases
        }


        fun addValue(value: T, index: Int) {
            assert (index >= 0)
            indexedValues.add(index to value)
        }

        fun removeValue(value: T, index: Int): Boolean {
            assert (index >= 0)
            return indexedValues.remove(index to value)
        }

        inline fun nextOrDefault(symbol: Any,
                                 default: (sym: Any) -> PathNode<T>): PathNode<T>
        {
            val existing = next[symbol]
            if (existing != null) {
                return existing
            } else {
                return default(symbol).also { next[symbol] = it }
            }
        }

        fun dropNext(drop: PathNode<T>) {
            this.next.remove(drop.symbol)
        }

//        override fun toString(): String =
//            "${symbol}/${arity} (${values.keys.joinToString(", ")}) > [${next.map { it.symbol }.joinToString(", ")}] "


    }
}
