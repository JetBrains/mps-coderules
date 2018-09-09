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

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.unification.Term
import java.util.*
import kotlin.collections.ArrayList

/**
 * @author Fedor Isakov
 */

/**
 * A persistent map-like structure to keep multiple values associated with a single term.
 *
 * The method `put` returns a new instance updated to contain the new association. Likewise, the method
 * `remove` returns the new instance updated to remove the association.
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
 * [1] Alan Robinson and Andrei Voronkov (Eds.). 2001. Handbook of Automated Reasoning.
 * Elsevier Sci. Pub. B. V., Amsterdam, The Netherlands, The Netherlands.
 *
 */
class PersistentTermTrie<T>() : TermTrie<T> {

    private companion object {

        private val WILDCARD = object : Any() {
            override fun toString() = "WILDCARD"
        }

    }

    private var root: PathNode<T>

    init {
        root = PathNode(WILDCARD, 1)
    }

    private constructor(setRoot: PathNode<T>) : this() {
        this.root = setRoot
    }

    override fun put(term: Term, value: T): PersistentTermTrie<T> = PersistentTermTrie(putValue(term, value))

    override fun remove(term: Term, value: T): PersistentTermTrie<T> = PersistentTermTrie(removeValue(term, value))

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

    private fun putValue(matchTerm: Term, value: T): PathNode<T> {
        val seen = IdentityHashMap<Term, Term>()
        var nodeStack: ConsList<PathNode<T>> = cons(root)
        val termList = arrayListOf(matchTerm)

        while (!termList.isEmpty()) {
            val node = nodeStack.first() !!
            val term = termList.removeAt(termList.size - 1)

            // dereferece the term only if it hasn't been dereferenced before
            val deref = deref(term).let { dt -> seen[dt]?.run { term } ?: dt.apply { seen[dt] = term } }
            val arguments = deref.arguments().toList()
            for(i in 1..arguments.size) {
                termList.add(arguments[arguments.size - i])
            }

            val nextNode = node.nextOrDefault(symbolOrWildcard(deref)) { sym -> PathNode(sym, arguments.size) }
            nodeStack = nodeStack.prepend(nextNode)
        }

        val head = nodeStack.first() !!
        return nodeStack.tail().fold(head.addValue(value)) { nextNode, node -> node.putNext(nextNode) }
    }

    private fun removeValue(matchTerm: Term, value: T): PathNode<T> {
        val seen = IdentityHashMap<Term, Term>()
        var nodeStack: ConsList<PathNode<T>> = cons(root)
        val termStack = arrayListOf(matchTerm)

        while (!termStack.isEmpty()) {
            val node = nodeStack.first() !!
            val term = termStack.pop()

            // dereferece the term only if it hasn't been dereferenced before
            val deref = deref(term).let { dt -> seen[dt]?.run { term } ?: dt.apply { seen[dt] = term } }
            val arguments = deref.arguments().toList()
            for(i in 1..arguments.size) {
                termStack.push(arguments[arguments.size - i])
            }

            val nextNode = node.next(symbolOrWildcard(deref))
            if (nextNode == null)  {
                // term not found
                return root
            }
            nodeStack = nodeStack.prepend(nextNode)
        }

        val head = nodeStack.first() !!
        val newHead = head.removeValue(value)
        return if (head !== newHead) {
            nodeStack.tail().fold(newHead) { nextNode, node -> node.putNext(nextNode) }
        } else {
            // value not found
            root
        }
    }

    /**
     * Given a pattern term, which may contain variables that are treated as wildcards,
     * call the passed visitor function with values of all matching nodes and all the nodes that precede them.
     */
    private fun visitMatching(pattern: Term, visitor: (T) -> Unit) {
        val seen = IdentityHashMap<Term, Term>()
        val visitStack = arrayListOf(root to cons(pattern))

        while (!visitStack.isEmpty()) {
            val (node, patternTerms) = visitStack.pop()
            if (!patternTerms.isEmpty) {
                val patternTermsHead = patternTerms.first() !!
                val patternTermsTail = patternTerms.tail()

                // dereferece the term only if it hasn't been dereferenced before
                val patternTerm = deref(patternTermsHead).let { dt ->
                    seen[dt]?.run { patternTermsHead } ?: dt.apply { seen[dt] = patternTermsHead }
                }

                val sym = symbolOrWildcard(patternTerm)
                if (sym == WILDCARD) {
                    if (!patternTermsTail.isEmpty) {
                        // skip the current node
                        // match the patterns tail with the current node's direct successors
                        val (allTerms, allEdge) = node.allTerms2edge()
                        allTerms.forEach { it.values.forEach(visitor) }
                        allEdge.forEach { n -> visitStack.push(n to patternTermsTail) }

                    } else {
                        // wildcard consumes the rest of the trie
                        node.allNext().forEach { visitAll(it, visitor) }
                    }

                } else {
                    node.next(WILDCARD)?.let { nn ->
                        nn.values().forEach(visitor)
                        if (!patternTermsTail.isEmpty) {
                            visitStack.push(nn to patternTermsTail)
                        }
                    }
                    node.next(sym)?.let { nn ->
                        nn.values().forEach(visitor)

                        var newTail = patternTermsTail
                        val arguments = patternTerm.arguments().toList()
                        // prepend patternTerm's arguments in reverse order
                        // this results in newTail being ordered normally
                        for(i in 1..arguments.size) {
                            newTail = newTail.prepend(arguments[arguments.size - i])
                        }
                        
                        if (!newTail.isEmpty) {
                            visitStack.push(nn to newTail)
                        }
                    }
                }
            }
        }
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
     * A trie node. Corresponds to a particular subterm.
     */
    private class PathNode<T>(val symbol: Any,
                              val arity: Int,
                              val next: PersMap<Any, PathNode<T>>,
                              val values: IdHashSet<T>)
    {

        constructor(symbol: Any, arity: Int) :
            this(symbol, arity, Maps.of(), emptySet())

        constructor(copyFrom: PathNode<T>, setValues: IdHashSet<T>) :
            this(copyFrom.symbol, copyFrom.arity, copyFrom.next, setValues)

        constructor(copyFrom: PathNode<T>, setNext: PersMap<Any, PathNode<T>>) :
            this(copyFrom.symbol, copyFrom.arity, setNext, copyFrom.values)

        fun values(): Iterable<T> = values

        fun next(symbol: Any): PathNode<T>? = next[symbol]
        
        /**
         * Returns all trie nodes that are direct successors of this one.
         */
        fun allNext(): Iterable<PathNode<T>> = next.values()

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

        fun putNext(node: PathNode<T>): PathNode<T> = PathNode(this, next.put(node.symbol, node))

        fun removeNext(node: PathNode<T>): PathNode<T> = PathNode(this, next.remove(node.symbol))

        fun addValue(value: T): PathNode<T> = PathNode(this, values.add(value))

        fun removeValue(value: T): PathNode<T> =
            if (values.contains(value)) PathNode(this, values.remove(value)) else this

        inline fun nextOrDefault(symbol: Any,
                                 default: (sym: Any) -> PathNode<T>): PathNode<T>
        {
            return next[symbol] ?: default(symbol)
        }

    }


}