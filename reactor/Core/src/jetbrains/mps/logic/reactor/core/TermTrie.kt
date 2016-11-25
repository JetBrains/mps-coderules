package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.ConsList.empty
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

    private lateinit var root: PathNode<T>

    init {
        root = PathNode(WILDCARD, 1)
    }

    private constructor(setRoot: PathNode<T>) : this() {
        this.root = setRoot
    }

    fun put(term: Term, value: T): TermTrie<T> = TermTrie(putValue(root, value, IdHashSet(), term, empty()))

    fun remove(term: Term, value: T): TermTrie<T> = TermTrie(removeValue(root, value, IdHashSet(), term, empty()))

    fun lookupValues(term: Term): Iterable<T> {
        val result = ArrayList<T>()
        visitMatching(root, IdHashSet(), term, empty()) { value -> result.add(value) }
        return result
    }

    fun allValues(): Iterable<T> {
        val result = ArrayList<T>()
        visitAll(root, { value -> result.add(value) })
        return result
    }

    private fun putValue(node: PathNode<T>, value: T, seen: IdHashSet<Term>, term: Term, tail: ConsList<Term>): PathNode<T> {
        val deref = if (seen.contains(deref(term))) term else deref(term)
        val arguments = deref.arguments()
        val newTail = arguments.reversed().fold(tail) { list, t -> list.prepend(t) }

        val nextNode = node.nextOrDefault(symbolOrWildcard(deref)) { sym -> PathNode(sym, arguments.size) }

        //invariant: terms arity is fixed
        assert(nextNode.arity == arguments.size)

        return if (newTail.isEmpty()) {
            node.putNext(nextNode.addValue(value))

        } else {
            node.putNext(putValue(nextNode, value, seen.add(term), newTail.first()!!, newTail.drop(1)))
        }
    }

    private fun removeValue(node: PathNode<T>, value: T, seen: IdHashSet<Term>, term: Term, tail: ConsList<Term>): PathNode<T> {
        val deref = if (seen.contains(deref(term))) term else deref(term)
        val arguments = deref.arguments()
        val newTail = arguments.reversed().fold(tail) { list, t -> list.prepend(t) }

        return node.next(symbolOrWildcard(deref))?.let { nextNode ->

            //invariant: terms arity is fixed
            assert(nextNode.arity == arguments.size)

            return if (newTail.isEmpty) {
                val newNext = nextNode.removeValue(value)
                if (newNext != nextNode) {
                    if (!newNext.hasValues()) {
                        node.removeNext(newNext)

                    } else {
                        node.putNext(newNext)
                    }

                } else {
                    node
                }

            } else {
                val newNext = removeValue(nextNode, value, seen.add(term), newTail.first()!!, newTail.drop(1))
                if (newNext !== nextNode) {
                    if (!newNext.hasNext()) {
                        node.removeNext(nextNode)

                    } else {
                        node.putNext(newNext)
                    }

                } else {
                    node
                }
            }

        } ?: node
    }

    private fun visitMatching(node: PathNode<T>, seen: IdHashSet<Term>, term: Term, tail: ConsList<Term>, visitor: (T) -> Unit) {
        val deref =  if (seen.contains(deref(term))) term else deref(term)
        val sym = symbolOrWildcard(deref)
        if (sym == WILDCARD) {
            if (!tail.isEmpty) {
                node.skipAllNext().forEach { visitMatching(it, seen.add(term), tail.first()!!, tail.drop(1), visitor) }

            } else {
                node.allNext().forEach { visitAll(it, visitor) }
            }

        } else {
            node.next(sym)?.let { nn ->
                nn.values().forEach(visitor)
                val newTail = deref.arguments().reversed().fold(tail) { list, t -> list.prepend(t) }
                if (!newTail.isEmpty) {
                    visitMatching(nn, seen.add(term), newTail.first()!!, newTail.drop(1), visitor)
                }
            }
            node.next(WILDCARD)?.let { nn ->
                nn.values().forEach(visitor)
                if (!tail.isEmpty) {
                    visitMatching(nn, seen.add(term), tail.first()!!, tail.drop(1), visitor)
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

    private class PathNode<T>(val symbol: Any, val arity: Int) {

        private lateinit var next: PersMap<Any, PathNode<T>>

        private lateinit var values: IdHashSet<T>

        init {
            this.next = Maps.of()
            this.values = emptySet()
        }

        private constructor(symbol: Any, arity: Int, next: PersMap<Any, PathNode<T>>, values: IdHashSet<T>) :
            this(symbol, arity)
        {
            this.next = next
            this.values = values
        }

        private constructor(copyFrom: PathNode<T>) :
            this(copyFrom.symbol, copyFrom.arity, copyFrom.next, copyFrom.values)

        private constructor(copyFrom: PathNode<T>, setValues: IdHashSet<T>) :
            this(copyFrom.symbol, copyFrom.arity, copyFrom.next, setValues)

        private constructor(copyFrom: PathNode<T>, setNext: PersMap<Any, PathNode<T>>) :
            this(copyFrom.symbol, copyFrom.arity, setNext, copyFrom.values)

        fun values(): Iterable<T> = values

        fun hasValues(): Boolean = !values.isEmpty

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

        fun removeValue(value: T): PathNode<T> = PathNode(this, values.remove(value))

        fun nextOrDefault(symbol: Any,
                          default: (sym: Any) -> PathNode<T>): PathNode<T>
        {
            return next[symbol] ?: default(symbol)
        }

    }


}