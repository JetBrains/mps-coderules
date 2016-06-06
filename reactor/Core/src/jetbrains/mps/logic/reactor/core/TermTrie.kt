package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.ConsList.empty
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.util.cons
import jetbrains.mps.logic.reactor.util.remove
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

    private lateinit var root: PathNode<T>

    init {
        root = PathNode(WILDCARD, 1)
    }

    private constructor(setRoot: PathNode<T>) : this() {
        this.root = setRoot
    }

    fun put(term: Term, value: T): TermTrie<T> = TermTrie(putValue(root, value, term, emptyList()))

    fun remove(term: Term, value: T): TermTrie<T> = TermTrie(removeValue(root, value, term, emptyList()))

    fun lookupValues(term: Term): Iterable<T> {
        val result = ArrayList<T>()
        visitMatching(root, term, emptyList()) { value -> result.add(value) }
        return result
    }

    fun allValues(): Iterable<T> {
        val result = ArrayList<T>()
        visitAll(root, { value -> result.add(value) })
        return result
    }

    private fun putValue(node: PathNode<T>, value: T, term: Term, tail: List<Term>): PathNode<T> {
        val deref = deref(term)
        val arguments = deref.arguments()
        val newTail = arguments + tail

        val nextNode = node.nextOrDefault(symbolOrWildcard(deref)) { sym -> PathNode(sym, arguments.size) }

        //invariant: terms arity is fixed
        assert(nextNode.arity == arguments.size)

        return if (newTail.isEmpty()) {
            node.putNext(nextNode.addValue(value))

        } else {
            node.putNext(putValue(nextNode, value, newTail.first(), newTail.drop(1)))
        }
    }

    private fun removeValue(node: PathNode<T>, value: T, term: Term, tail: List<Term>): PathNode<T> {
        val deref = deref(term)
        val arguments = deref.arguments()
        val newTail = arguments + tail

        return node.next[symbolOrWildcard(deref)]?.let { nextNode ->

            //invariant: terms arity is fixed
            assert(nextNode.arity == arguments.size)

            return if (newTail.isEmpty()) {
                val newNext = nextNode.removeValue(value)
                if (newNext.values.isEmpty) {
                    node.removeNext(newNext)

                } else {
                    node.putNext(newNext)
                }

            } else {
                val newNext = removeValue(nextNode, value, newTail.first(), newTail.drop(1))
                if (newNext.next.isEmpty) {
                    node.removeNext(nextNode)

                } else {
                    node.putNext(newNext)
                }
            }

        } ?: node
    }

    private fun visitMatching(node: PathNode<T>, term: Term, tail: List<Term>, visitor: (T) -> Unit) {
        val deref = deref(term)
        val sym = symbolOrWildcard(deref)
        if (sym == WILDCARD) {
            if (tail.size > 0) {
                node.skipNext().forEach { visitMatching(it, tail.first(), tail.drop(1), visitor) }

            } else {
                node.next.values().forEach { visitAll(it, visitor) }
            }

        } else {
            node.next[sym]?.let { nn ->
                nn.values.forEach(visitor)
                val newTail = deref.arguments() + tail
                if (newTail.isNotEmpty()) {
                    visitMatching(nn, newTail.first(), newTail.drop(1), visitor)
                }
            }
            node.next[WILDCARD]?.let { nn ->
                nn.values.forEach(visitor)
                if (tail.isNotEmpty()) {
                    visitMatching(nn, tail.first(), tail.drop(1), visitor)
                }
            }
        }
    }

    private fun visitAll(node: PathNode<T>, visitor: (T) -> Unit) {
        node.values.forEach(visitor)
        node.next.values().forEach { visitAll(it, visitor) }
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

    private class PathNode<T>(val symbol: Any, val arity: Int) {

        lateinit var next: PersMap<Any, PathNode<T>>

        lateinit var values: ConsList<T>

        init {
            this.next = Maps.of()
            this.values = empty()
        }

        private constructor(symbol: Any, arity: Int, next: PersMap<Any, PathNode<T>>, values: ConsList<T>) :
        this(symbol, arity)
        {
            this.next = next
            this.values = values
        }

        private constructor(copyFrom: PathNode<T>) :
        this(copyFrom.symbol, copyFrom.arity, copyFrom.next, copyFrom.values)

        private constructor(copyFrom: PathNode<T>, setValues: ConsList<T>) :
        this(copyFrom.symbol, copyFrom.arity, copyFrom.next, setValues)

        private constructor(copyFrom: PathNode<T>, setNext: PersMap<Any, PathNode<T>>) : this(copyFrom) {
            this.next = setNext
        }

        fun next(): Iterable<PathNode<T>> = next.values()

        fun skipNext(): Iterable<PathNode<T>> = next(0)

        private fun next(skip: Int): Iterable<PathNode<T>> = next().flatMap { nn ->
            val newSkip = skip + nn.arity
            if (newSkip == 0) {
                listOf(nn)

            } else {
                nn.next(newSkip - 1)
            }
        }

        fun putNext(node: PathNode<T>): PathNode<T> = PathNode(this, next.put(node.symbol, node))

        fun removeNext(node: PathNode<T>): PathNode<T> = PathNode(this, next.remove(node.symbol))

        fun addValue(value: T): PathNode<T> = PathNode(this, values.prepend(value))

        fun removeValue(value: T): PathNode<T> = PathNode(this, values.remove(value)!!)

        fun nextOrDefault(symbol: Any,
                          default: (sym: Any) -> PathNode<T>): PathNode<T>
        {
            return next[symbol] ?: default(symbol)
        }

    }


}