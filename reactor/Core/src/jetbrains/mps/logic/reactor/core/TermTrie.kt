/*
 * Copyright 2014-2017 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.util.*
import jetbrains.mps.unification.Term
import java.util.*

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
class TermTrie<T>() {

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

    fun put(term: Term, value: T): TermTrie<T> = TermTrie(putValue(term, value))

    fun remove(term: Term, value: T): TermTrie<T> = TermTrie(removeValue(term, value))

    fun lookupValues(term: Term): Iterable<T> {
        val result = ArrayList<T>()
        visitMatching(term) { value -> result.add(value) }
        return result
    }

    fun allValues(): Iterable<T> {
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

    private fun visitMatching(matchTerm: Term, visitor: (T) -> Unit) {
        val seen = IdentityHashMap<Term, Term>()
        val visitList = arrayListOf(root.to(cons(matchTerm)))

        while (!visitList.isEmpty()) {
            val (node, termList) = visitList.removeAt(visitList.size - 1)
            if (!termList.isEmpty) {
                val term = termList.first() !!
                val termTail = termList.tail()

                // dereferece the term only if it hasn't been dereferenced before
                val deref = deref(term).let { dt -> seen[dt]?.run { term } ?: dt.apply { seen[dt] = term } }

                val sym = symbolOrWildcard(deref)
                if (sym == WILDCARD) {
                    if (!termTail.isEmpty) {
                        node.skipAllNext().forEach { n -> visitList.add(n.to(termTail)) }

                    } else {
                        node.allNext().forEach { visitAll(it, visitor) }
                    }

                } else {
                    node.next(WILDCARD)?.let { nn ->
                        nn.values().forEach(visitor)
                        if (!termTail.isEmpty) {
                            visitList.add(nn.to(termTail))
                        }
                    }
                    node.next(sym)?.let { nn ->
                        nn.values().forEach(visitor)

                        var newTail = termTail
                        val arguments = deref.arguments().toList()
                        for(i in 1..arguments.size) {
                            newTail = newTail.prepend(arguments[arguments.size - i])
                        }
                        
                        if (!newTail.isEmpty) {
                            visitList.add(nn.to(newTail))
                        }
                    }
                }
            }
        }
    }

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

        fun hasValues(): Boolean = !values.isEmpty

        fun hasValue(value: T): Boolean = values.contains(value)

        fun next(symbol: Any): PathNode<T>? = next[symbol]

        fun hasNext(): Boolean = !next.isEmpty

        fun allNext(): Iterable<PathNode<T>> = next.values()

        fun skipAllNext(): Iterable<PathNode<T>> = allNext(0)

        private fun allNext(skip: Int): Iterable<PathNode<T>> = allNext().flatMap { nn ->
            val newSkip = skip + nn.arity
            if (newSkip == 0) {
                listOf(nn)

            } else {
                nn.allNext(newSkip - 1)
            }
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