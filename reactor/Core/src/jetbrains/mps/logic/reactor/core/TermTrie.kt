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
 * A persistent map-like structure to keep values associated with terms.
 *
 * The method `put` returns a new `TermTrie` updated to contain the new association. Likewise, the method
 * `remove` returns the updated `TermTrie` without the association.
 *
 * To access the stored values, the method `lookupValues` returns all values associated with the term passed
 * as an argument. The method `allValues` returns all stored values.
 *
 * Internally the data is represented in a kind of binary tree, with each node's `left` being a map of symbol to first
 * argument (as in term's argument), and `right` being also a map of symbol to next sibling argument in its parent.
 *
 */
class TermTrie<T> {

    private lateinit var root: SymNode<T>

    constructor() {
        this.root = SymNode<T>(Any(), null)
    }

    private constructor(root: SymNode<T>) {
        this.root = root
    }

    fun put(term: Term, value: T): TermTrie<T> {
        val newNode = root.leftOrDefault(term.symbol())
        return TermTrie(root.putLeft(putValue(newNode, term, value)))
    }

    fun remove(term: Term, value: T): TermTrie<T> {
        return root.left[term.symbol()]?.let { found ->
            return TermTrie(root.putLeft(removeValue(found, term, value)))
        } ?: this
    }

    fun lookupValues(term: Term): Iterable<T> {
        val include = ArrayList<T>()

        root.left[term.symbol()]?.let { match ->
            matching(term, match) { node, matched ->
                if (matched) {
                    include.addAll(node.values)
                }
            }
        }

        return include
    }

    fun allValues(): Iterable<T> {
        val include = ArrayList<T>()

        all(root) { node ->
            include.addAll(node.values)
        }

        return include
    }

    private fun putValue(node: SymNode<T>, term: Term, value: T): SymNode<T> {
        val arguments = term.arguments()
        return if (arguments.isNotEmpty()) {
            val argList = arguments.toList()
            val arg = argList[0]
            val prev = putValue(node.leftOrDefault(arg.symbol()), arg, value)

            if (argList.size > 1) {
                node.putLeft(putNextArgValue(prev, argList.subList(1, argList.size), value))

            } else if (arg.arguments().isEmpty()) {
                node.putLeft(prev.putValue(value))

            } else {
                node.putLeft(prev)
            }

        } else {
            node
        }
    }


    private fun putNextArgValue(prev: SymNode<T>, argList: List<Term>, value: T): SymNode<T> {
        // invariant: the base case is to be processed elsewhere
        assert(argList.isNotEmpty())

        val arg = argList[0]
        val next = putValue(prev.rightOrDefault(arg.symbol()), arg, value)

        return if (argList.size > 1) {
            prev.putRight(putNextArgValue(next, argList.subList(1, argList.size), value))

        } else if (arg.arguments().isEmpty()) {
            prev.putRight(next.putValue(value))

        } else {
            prev.putRight(next)
        }
    }

    private fun removeValue(node: SymNode<T>, term: Term, value: T): SymNode<T> {
        val arguments = term.arguments()
        return if (arguments.isNotEmpty()) {
            val argList = arguments.toList()
            val arg = argList[0]
            node.left[arg.symbol()]?.let { found ->

                val prev = removeValue(found, arg, value)

                if (argList.size > 1) {
                    node.putLeft(removeNextArgValue(prev, argList.subList(1, argList.size), value))

                } else if (arg.arguments().isEmpty()) {
                    node.putLeft(prev.removeValue(value))

                } else {
                    node.putLeft(prev)
                }

            } ?: node

        } else {
            node
        }
    }

    private fun removeNextArgValue(prev: SymNode<T>, argList: List<Term>, value: T): SymNode<T> {
        // invariant: the base case is to be processed elsewhere
        assert(argList.isNotEmpty())

        val arg = argList[0]
        return prev.right[arg.symbol()]?.let { found ->

            val next = removeValue(found, arg, value)

            if (argList.size > 1) {
                prev.putRight(removeNextArgValue(next, argList.subList(1, argList.size), value))

            } else if (arg.arguments().isEmpty()) {
                prev.putRight(next.removeValue(value))

            } else {
                prev.putRight(next)
            }

        } ?: prev
    }


    private fun matching(term: Term, node: SymNode<T>, proc: (node: SymNode<T>, matched: Boolean) -> Unit) {
        val arguments = term.arguments()
        if (arguments.isNotEmpty()) {
            var last: SymNode<T>? = null

            for (arg in arguments) {
                val sym = arg.symbol()

                val next = if (last != null) last.right[sym] else node.left[sym]
                if (next != null) {
                    proc(node, true)
                    matching(arg, next, proc)

                } else {
                    proc(node, false)
                    break
                }
                last = next
            }

        } else {
            proc(node, node.symbol == term.symbol())
        }
    }

    private fun all(node: SymNode<T>, proc: (node: SymNode<T>) -> Unit) {
        for (first in node.left.values()) {
            proc(first)
            all(first, proc)

            for (next in first.right.values()) {
                proc(next)
                all(next, proc)
            }
        }
    }

    private class SymNode<T>(val symbol: Any) {

        lateinit var left: PersMap<Any, SymNode<T>>

        lateinit var right: PersMap<Any, SymNode<T>>

        lateinit var values: ConsList<T>

        constructor(sym: Any, setValue: T?) :
            this(sym)
        {
            this.left = Maps.of()
            this.right = Maps.of()
            this.values = if (setValue != null) cons(setValue) else empty()
        }

        constructor(copyFrom: SymNode<T>, newValues: ConsList<T>) :
            this(copyFrom.symbol)
        {
            this.left = copyFrom.left
            this.right = copyFrom.right
            this.values = newValues
        }

        constructor(copyFrom: SymNode<T>, setLeft: PersMap<Any, SymNode<T>>, setRight: PersMap<Any, SymNode<T>>) :
            this(copyFrom.symbol)
        {
            this.left = setLeft
            this.right = setRight
            this.values = copyFrom.values
        }

        fun putValue(newValue: T): SymNode<T> = SymNode(this, values.prepend(newValue))

        fun removeValue(oldValue: T): SymNode<T> = SymNode(this, values.remove(oldValue)!!)

        fun putLeft(node: SymNode<T>): SymNode<T> {
            val newLeft = left.put(node.symbol, node)
            return SymNode(this, newLeft, right)
        }

        fun putRight(node: SymNode<T>): SymNode<T> {
            val newRight = right.put(node.symbol, node)
            return SymNode(this, left, newRight)
        }

        fun leftOrDefault(sym: Any): SymNode<T> {
            return left[sym] ?: SymNode<T>(sym, null)
        }

        fun rightOrDefault(sym: Any): SymNode<T> {
            return right[sym] ?: SymNode<T>(sym, null)
        }

    }

}

