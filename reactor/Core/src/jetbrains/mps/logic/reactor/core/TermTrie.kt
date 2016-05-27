package jetbrains.mps.logic.reactor.core


import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.ConsList.empty
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.util.IdWrapper
import com.github.andrewoma.dexx.collection.Vector as PersVector
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
 * To access the stored values, the method `lookupValues` returns all values associated with terms, with values having
 * multiple cardinality returned only once. The method `allValues` returns all stored values. The values are always
 * returned in the order they were added.
 *
 * Term variables are supported: a variable matches any term, including other variable. No terms unification is
 * performed.
 *
 * Internally the data is represented in a kind of binary tree, with each node's `left` being a map of symbol to first
 * argument (as in term's argument), and `right` being also a map of symbol to next sibling argument in its parent.
 *
 */
class TermTrie<T> {

    private lateinit var root: SymNode<T>

    private lateinit var value2index: PersMap<T, Int>

    private lateinit var values: PersVector<T>

    private lateinit var term2token: PersMap<IdWrapper<Term>, ValueToken<T>>

    private companion object {

        private val WILDCARD = object : Any() {
            override fun toString() = "WILDCARD"
        }

    }

    constructor() {
        this.root = SymNode<T>(WILDCARD, null)
        this.value2index = Maps.of()
        this.values = PersVector.empty()
        this.term2token = Maps.of()
    }

    private constructor(root: SymNode<T>, val2ids: PersMap<T, Int>, vals: PersVector<T>, toks: PersMap<IdWrapper<Term>, ValueToken<T>>) {
        this.root = root
        this.value2index = val2ids
        this.values = vals
        this.term2token = toks
    }

    fun put(term: Term, value: T): TermTrie<T> {
        var newVal2Index = value2index
        var newValues = values

        val tok = ValueToken(value)
        val newTokens = term2token.put(IdWrapper(term), tok)

        if (!value2index.containsKey(value)) {
            newValues = values.append(value)
            newVal2Index = value2index.put(value, newValues.size() - 1)
        }

        val newNode = root.leftOrDefault(symbolOrWildcard(term))
        return TermTrie(root.putLeft(putValue(newNode, term, tok)), newVal2Index, newValues, newTokens)
    }

    fun remove(term: Term, value: T): TermTrie<T> {
        val valueIdx = value2index[value]
        val tok = term2token[IdWrapper(term)]
        if (valueIdx == null || tok == null) {
            return this
        }
        return root.left[symbolOrWildcard(term)]?.let { found ->
            // TODO: remove the value from the index
            val newTokens = term2token.remove(IdWrapper(term))
            val newTermTrie = TermTrie(root.putLeft(removeValue(found, term, tok)), value2index, values, newTokens)
            // invariant: the token must be stored and removed the same number of times
            assert(tok.storedCount() == 0)
            return newTermTrie
        } ?: this
    }

    fun lookupValues(term: Term): Iterable<T> {
        val tokenViews = HashMap<ValueToken<T>, Int>()

        val block: (SymNode<T>) -> Unit = { match ->
            matching(term, match) { node, matched, term ->
                if (matched) {
                    if (term?.`is`(Term.Kind.VAR) ?: false) {
                        all(node) { n ->
                            for (tok in n.valueTokens) {
                                val count = tokenViews.getOrElse(tok) { 0 }
                                tokenViews.put(tok, count + 1)
                            }
                        }
                    } else {
                        for (tok in node.valueTokens) {
                            val count = tokenViews.getOrElse(tok) { 0 }
                            tokenViews.put(tok, count + 1)
                        }
                    }
                }
            }
        }
        if (term.`is`(Term.Kind.VAR)) {
            root.left.values().forEach(block)

        } else {
            root.left[term.symbol()]?.let(block)
            root.left[WILDCARD]?.let(block)
        }

        val indices = ArrayList<Int>(4)
        for ((tok, count) in tokenViews) {
            if (tok.storedCount() == count) {
                indices.add(value2index[tok.value]!!)
            }
        }
        indices.sort()

        return indices.map { idx -> values.get(idx) }
    }

    fun allValues(): Iterable<T> {
        val tokenViews = HashMap<ValueToken<T>, Int>()

        all(root) { n ->
            for (tok in n.valueTokens) {
                val count = tokenViews.getOrElse(tok) { 0 }
                tokenViews.put(tok, count + 1)
            }
        }

        val indices = ArrayList<Int>(4)
        for ((tok, count) in tokenViews) {
            if (tok.storedCount() == count) {
                indices.add(value2index[tok.value]!!)
            }
        }
        indices.sort()

        return indices.map { idx -> values.get(idx) }
    }

    private fun putValue(node: SymNode<T>, term: Term, valueToken: ValueToken<T>): SymNode<T> {
        val arguments = term.arguments()
        return if (arguments.isNotEmpty()) {
            val argList = arguments.toList()
            val arg = argList[0]
            val prev = putValue(node.leftOrDefault(symbolOrWildcard(arg)), arg, valueToken).let { p ->
                if (arg.arguments().isEmpty()) p.putValueToken(valueToken) else p
            }

            if (argList.size > 1) {
                node.putLeft(putNextArgValue(prev, argList.subList(1, argList.size), valueToken))
            } else {
                node.putLeft(prev)
            }

        } else {
            node
        }
    }

    private fun putNextArgValue(prev: SymNode<T>, argList: List<Term>, valueToken: ValueToken<T>): SymNode<T> {
        // invariant: the base case is to be processed elsewhere
        assert(argList.isNotEmpty())

        val arg = argList[0]
        val next = putValue(prev.rightOrDefault(symbolOrWildcard(arg)), arg, valueToken).let { n ->
            if (arg.arguments().isEmpty()) n.putValueToken(valueToken) else n
        }

        return if (argList.size > 1) {
            prev.putRight(putNextArgValue(next, argList.subList(1, argList.size), valueToken))

        } else {
            prev.putRight(next)
        }
    }


    private fun removeValue(node: SymNode<T>, term: Term, valueToken: ValueToken<T>): SymNode<T> {
        val arguments = term.arguments()
        return if (arguments.isNotEmpty()) {
            val argList = arguments.toList()
            val arg = argList[0]
            node.left[symbolOrWildcard(arg)]?.let { found ->

                val prev = removeValue(found, arg, valueToken).let { p ->
                    if (arg.arguments().isEmpty()) p.removeValueToken(valueToken) else p
                }

                if (argList.size > 1) {
                    node.putLeft(removeNextArgValue(prev, argList.subList(1, argList.size), valueToken))

                } else {
                    node.putLeft(prev)
                }

            } ?: node

        } else {
            node
        }
    }

    private fun removeNextArgValue(prev: SymNode<T>, argList: List<Term>, valueToken: ValueToken<T>): SymNode<T> {
        // invariant: the base case is to be processed elsewhere
        assert(argList.isNotEmpty())

        val arg = argList[0]
        return prev.right[symbolOrWildcard(arg)]?.let { found ->

            val next = removeValue(found, arg, valueToken).let { n ->
                if (arg.arguments().isEmpty()) n.removeValueToken(valueToken) else n
            }

            if (argList.size > 1) {
                prev.putRight(removeNextArgValue(next, argList.subList(1, argList.size), valueToken))

            } else {
                prev.putRight(next)
            }

        } ?: prev
    }

    private fun matching(term: Term, node: SymNode<T>, proc: (node: SymNode<T>, matched: Boolean, term: Term?) -> Unit) {
        val arguments = term.arguments()
        if (arguments.isNotEmpty()) {
            var lastList = ArrayList<SymNode<T>>(4)
            var nextList = ArrayList<SymNode<T>>(4)

            for (arg in arguments) {
                val sym = arg.symbol()

                if (arg.`is`(Term.Kind.VAR)) {
                    if (lastList.isNotEmpty()) {
                        for (last in lastList) {
                            last.right.values().forEach { nextList.add(it) }
                        }

                    } else {
                        node.left.values().forEach { nextList.add(it) }
                    }

                } else {
                    if (lastList.isNotEmpty()) {
                        for (last in lastList) {
                            last.right[sym]?.let { nextList.add(it) }
                            last.right[WILDCARD]?.let { nextList.add(it) }
                        }

                    } else {
                        node.left[sym]?.let { nextList.add(it) }
                        node.left[WILDCARD]?.let { nextList.add(it) }
                    }
                }

                if (nextList.isNotEmpty()) {
                    for (next in nextList) {
                        matching(arg, next, proc)
                    }

                } else if(lastList.isEmpty()) {
                    proc(node, node.symbol == WILDCARD || term.`is`(Term.Kind.VAR), null)
                    break

                } else {
                    proc(node, false, null)
                    break
                }

                val tmp = lastList
                lastList = nextList
                nextList = tmp
                nextList.clear()
            }

        } else {
            proc(node, node.symbol == term.symbol() || node.symbol == WILDCARD || term.`is`(Term.Kind.VAR), term)
        }
    }


    private fun all(node: SymNode<T>, proc: (node: SymNode<T>) -> Unit) {
        proc(node)
        for (first in node.left.values()) {
            _all(first, proc)
        }
    }

    private fun _all(node: SymNode<T>, proc: (node: SymNode<T>) -> Unit) {
        proc(node)
        for (first in node.left.values()) {
            _all(first, proc)
        }
        for (next in node.right.values()) {
            _all(next, proc)
        }
    }

    private fun symbolOrWildcard(term: Term) = if (term.`is`(Term.Kind.VAR)) WILDCARD else term.symbol()

    private class ValueToken<T>(val value: T) {

        private var count: Int = 0

        fun stored(): Unit {
            count++
        }

        fun removed(): Unit {
            count--
        }

        fun storedCount(): Int = count
    }


    private class SymNode<T>(val symbol: Any) {

        lateinit var left: PersMap<Any, SymNode<T>>

        lateinit var right: PersMap<Any, SymNode<T>>

        lateinit var valueTokens: ConsList<ValueToken<T>>

        constructor(sym: Any, setValueIndex: ValueToken<T>?) :
            this(sym)
        {
            this.left = Maps.of()
            this.right = Maps.of()
            this.valueTokens = if (setValueIndex != null) cons(setValueIndex) else empty()
        }

        constructor(copyFrom: SymNode<T>, newValues: ConsList<ValueToken<T>>) :
            this(copyFrom.symbol)
        {
            this.left = copyFrom.left
            this.right = copyFrom.right
            this.valueTokens = newValues
        }

        constructor(copyFrom: SymNode<T>, setLeft: PersMap<Any, SymNode<T>>, setRight: PersMap<Any, SymNode<T>>) :
            this(copyFrom.symbol)
        {
            this.left = setLeft
            this.right = setRight
            this.valueTokens = copyFrom.valueTokens
        }

        fun putValueToken(token: ValueToken<T>): SymNode<T> {
            token.stored()
            return SymNode(this, valueTokens.prepend(token))
        }

        fun removeValueToken(token: ValueToken<T>): SymNode<T> {
            token.removed()
            return SymNode(this, valueTokens.remove(token)!!)
        }

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

