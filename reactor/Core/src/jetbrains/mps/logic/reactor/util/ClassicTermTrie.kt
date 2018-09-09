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

import jetbrains.mps.unification.Term
import java.util.*
import kotlin.collections.ArrayList
import kotlin.collections.HashMap

/**
 * @author Fedor Isakov
 */

/**
 * An implementation of TermTrie not relying on persistent data structures.
 */

class ClassicTermTrie<T> : TermTrie<T> {

    private companion object {

        private val WILDCARD = object : Any() {
            override fun toString() = "WILDCARD"
        }
        
        private val KEYHOLDER = object : Any() {
            override fun toString() = "KEYHOLDER"
        }

    }

    private var root: PathNode<T>

    init {
        root = PathNode(WILDCARD, 1)
    }

    override fun put(term: Term, value: T): TermTrie<T> {
        putValue(term, value)
        return this
    }

    override fun remove(term: Term, value: T): TermTrie<T> {
        removeValue(term, value)
        return this
    }

    override fun lookupValues(term: Term): Iterable<T> {
        val result = ArrayList<T>()
        visitMatching(term) { value -> result.add(value) }
        return result
    }

    override fun allValues(): Iterable<T> {
        val result = ArrayList<T>()
        visitAll(root, { value -> result.add(value) })
        return result
    }
    
    private fun putValue(matchTerm: Term, value: T) {
        val seen = IdentityHashMap<Term, Term>()
        val nodeStack = arrayListOf(root)
        val termStack = arrayListOf(matchTerm)
        while (!termStack.isEmpty()) {
            val node = nodeStack.peek()
            val term = termStack.pop()

            // dereferece the term only if it hasn't been dereferenced before
            val deref = deref(term).let { dt -> seen[dt]?.run { term } ?: dt.apply { seen[dt] = term } }
            val arguments = deref.arguments().toList()
            for(i in 1..arguments.size) {
                termStack.push(arguments[arguments.size - i])
            }

            val nextNode = node.nextOrDefault(symbolOrWildcard(deref)) { sym -> PathNode(sym, arguments.size) }
            nodeStack.push(nextNode)
        }

        val head = nodeStack.pop()
        head.addValue(value)
        nodeStack.reverse()
        nodeStack.fold(head) { nextNode, node -> node.putNext(nextNode) }
    }

    private fun removeValue(matchTerm: Term, value: T) {
        val seen = IdentityHashMap<Term, Term>()
        val nodeStack = arrayListOf(root)
        val termStack = arrayListOf(matchTerm)
        while (!termStack.isEmpty()) {
            val node = nodeStack.peek()
            val term = termStack.removeAt(termStack.size - 1)

            // dereferece the term only if it hasn't been dereferenced before
            val deref = deref(term).let { dt -> seen[dt]?.run { term } ?: dt.apply { seen[dt] = term } }
            val arguments = deref.arguments().toList()
            for(i in 1..arguments.size) {
                termStack.add(arguments[arguments.size - i])
            }

            val nextNode = node.next(symbolOrWildcard(deref))
            if (nextNode == null)  {
                // term not found
                return
            }
            nodeStack.push(nextNode)
        }

        val head = nodeStack.pop()
        head.removeValue(value)
        // TODO: cleanup the empty nodes
//        nodeStack.subList(1, nodeStack.size).fold(head) { nextNode, node -> node.putNext(nextNode) }
    }

    /**
     * Call the visitor function with values of the given node and all its direct and indirect successors.
     */
    private fun visitAll(node: PathNode<T>, visitor: (T) -> Unit) {
        node.values().forEach(visitor)
        node.allNext().forEach { visitAll(it, visitor) }
    }

    private fun deref(term: Term): Term {
        var deref = term
        while (deref.`is`(Term.Kind.REF)) {
            deref = deref.get()
        }
        return deref
    }

    private fun symbolOrWildcard(term: Term): Any  {
        return if (term.`is`(Term.Kind.VAR)) {
            WILDCARD

        } else {
            term.symbol()
        }
    }

    /**
     * Given a pattern term, which may contain variables that are treated as wildcards,
     * call the passed visitor function with values of all matching nodes and all the nodes that precede them.
     */
    private fun visitMatching(pattern: Term, visitor: (T) -> Unit) {
        val seen = IdentityHashMap<Term, Term>()
        val visitStack = arrayListOf<Pair<PathNode<T>, List<Term>>>(root to arrayListOf(pattern))

        while (!visitStack.isEmpty()) {
            val (node, patternTerms) = visitStack.pop()
            if (!patternTerms.isEmpty()) {
                val patternTermsHead = patternTerms.first()
                val patternTermsTail = patternTerms.subList(1, patternTerms.size)

                // dereferece the term only if it hasn't been dereferenced before
                val patternTerm = deref(patternTermsHead).let { dt ->
                    seen[dt]?.run { patternTermsHead } ?: dt.apply { seen[dt] = patternTermsHead }
                }

                val sym = symbolOrWildcard(patternTerm)
                if (sym == WILDCARD) {
                    if (!patternTermsTail.isEmpty()) {
                        // skip the current node
                        // match the patterns tail with the current node's direct successors
                        val (allTerms, allEdge) = node.allTerms2edge()
                        allTerms.forEach { it.values().forEach (visitor) }
                        allEdge.forEach { visitStack.push(it to patternTermsTail)  }

                    } else {
                        // wildcard consumes the rest of the trie
                        node.allNext().forEach { visitAll(it, visitor) }
                    }

                } else {
                    node.next(WILDCARD)?.let { nn ->
                        nn.values().forEach(visitor)
                        if (!patternTermsTail.isEmpty()) {
                            visitStack.push(nn to patternTermsTail)
                        }
                    }
                    node.next(sym)?.let { nn ->
                        nn.values().forEach(visitor)
                        
                        // prepend this patternTerm's arguments to the tail pattern terms
                        val newTail = ArrayList(patternTerm.arguments())
                        newTail.addAll(patternTermsTail)
                        if (!newTail.isEmpty()) {
                            visitStack.push(nn to newTail)
                        }
                    }
                }
            }
        }
    }
    
    /**
     * A trie node. Corresponds to a particular subterm.
     */
    private class PathNode<T>(val symbol: Any,
                              val arity: Int)
    {
        private val next = HashMap<Any, PathNode<T>>(4)
        
        private val values = IdentityHashMap<T, Any>(8)

        fun values(): Iterable<T> = values.keys

        fun next(symbol: Any): PathNode<T>? = next[symbol]

        /**
         * Returns all trie nodes that are direct successors of this one.
         */
        fun allNext(): Iterable<PathNode<T>> = next.values

        /**
         * Returns a pair of iterables:
         * -  first component contains all the nodes that make up the next *term*;
         * -  second component contains the nodes on the edge before the *term* after that one.
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
        fun allTerms2edge(): Pair<Iterable<PathNode<T>>, Iterable<PathNode<T>>> {

            // for every current node there is a number
            // initially 0
            // counting down with every call to allNext()
            // increased by current node's arity

            val term = ArrayList<PathNode<T>>()
            val edge = ArrayList<PathNode<T>>()

            val stack = ArrayList<Pair<PathNode<T>, Int>>()
            for (n in allNext()) {
                stack.push(n to 0)
            }

            while (stack.isNotEmpty()) {
                val (n, count) = stack.pop()
                val newCount = count + n.arity
                if (newCount == 0) {
                    edge.add(n)

                } else {
                    term.add(n)
                    n.allNext().forEach { stack.push(it to (newCount - 1)) }
                }
            }

            return term to edge
        }

        fun putNext(node: PathNode<T>): PathNode<T> {
            next.put(node.symbol, node)
            return this
        }

        fun addValue(value: T) {
            values[value] = KEYHOLDER
        }

        fun removeValue(value: T) {
            values.remove(value)
        }

        inline fun nextOrDefault(symbol: Any,
                                 default: (sym: Any) -> PathNode<T>): PathNode<T>
        {
            return next[symbol] ?: default(symbol)
        }

    }
}
