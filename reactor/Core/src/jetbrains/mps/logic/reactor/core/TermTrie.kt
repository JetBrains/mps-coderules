package jetbrains.mps.logic.reactor.core


import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.ConsList.empty
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.util.IdWrapper
import com.github.andrewoma.dexx.collection.Vector as PersVector
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

    private lateinit var tokens: PersVector<ValueToken<T>>

    private lateinit var value2token: PersMap<IdWrapper<T>, ValueToken<T>>

    private companion object {

        private val WILDCARD = object : Any() {
            override fun toString() = "WILDCARD"
        }

    }

    constructor() {
        this.root = SymNode<T>(WILDCARD)
        this.value2token = Maps.of()
        this.tokens = PersVector.empty()
    }

    private constructor(root: SymNode<T>, toks: PersMap<IdWrapper<T>, ValueToken<T>>, tokvec: PersVector<ValueToken<T>>) {
        this.root = root
        this.value2token = toks
        this.tokens = tokvec
    }

    fun put(term: Term, value: T): TermTrie<T> {
        val tok = ValueToken(value, tokens.size())
        val newTokens = value2token.put(IdWrapper(value), tok)

        val newNode = root.leftOrDefault(symbolOrWildcard(term)).putValueToken(tok, term.arguments().isEmpty())
        return TermTrie(root.putLeft(putValue(newNode, term, tok)), newTokens, tokens.append(tok))
    }

    fun remove(term: Term, value: T): TermTrie<T> {
        return value2token[IdWrapper(value)]?.let { tok ->
            root.left[symbolOrWildcard(term)]?.let { found ->
                // TODO: remove the value from the index
                val newTokens = value2token.remove(IdWrapper(value))
                val newTermTrie = TermTrie(root.putLeft(removeValue(found.removeValueToken(tok, term.arguments().isEmpty()), term, tok)), newTokens, tokens)
                // invariant: the token must be stored and removed the same number of times
                assert(tok.storedCount() == 0)
                return newTermTrie
            }
        } ?: this
    }

    fun lookupValues(term: Term): Iterable<T> {
        val tokenBitsetList = ArrayList<BitSet>()

        val derefTerm = deref(term)
        val block: (SymNode<T>) -> Unit = { match ->
            matching(derefTerm, match) { node, matched, term, leaf ->

                if (matched) {
                    if (term?.`is`(Term.Kind.VAR) ?: false) {
                        all(node) { n ->
                            tokenBitsetList.add(n.tokenBitset)
                        }

                    } else {
                        tokenBitsetList.add(node.tokenBitset)
                    }
                }
            }
        }

        if (derefTerm.`is`(Term.Kind.VAR)) {
            root.left.values().forEach(block)

        } else {
            root.left[derefTerm.symbol()]?.let(block)
            root.left[WILDCARD]?.let(block)
        }

        return selectFromTokens(tokenBitsetList)
    }

    fun allValues(): Iterable<T> {
        val tokenBitsetList = ArrayList<BitSet>()

        all(root) { n ->
            tokenBitsetList.add(n.tokenBitset)
        }

        return selectFromTokens(tokenBitsetList)
    }

    private fun selectFromTokens(tokenBitsetList: ArrayList<BitSet>): Iterable<T> {
        val selected = ArrayList<T>()
        val bits = Array<Int>(tokenBitsetList.size) { idx -> tokenBitsetList[idx].nextSetBit(0) }
        while (true) {
            bits.filter { it >= 0 }.min()?.let { minbit ->
                val count = bits.sumBy { if (it == minbit) 1 else 0 }
                val tok = tokens[minbit]
                if (count == tok.storedCount()) {
                    selected.add(tok.value)
                }

                for (idx in 0..bits.size - 1) {
                    if (bits[idx] == minbit) {
                        bits[idx] = tokenBitsetList[idx].nextSetBit(minbit + 1)
                    }
                }
            } ?: break
        }
        return selected
    }

    private fun putValue(node: SymNode<T>, term: Term, tok: ValueToken<T>): SymNode<T> {
        val arguments = term.arguments()
        return if (arguments.isNotEmpty()) {
            val argList = arguments.toList()
            val arg = deref(argList[0])
            val leaf = arg.arguments().isEmpty()
            val prev = putValue(node.leftOrDefault(symbolOrWildcard(arg)).putValueToken(tok, leaf),
                                arg,
                                tok)

            if (argList.size > 1) {
                node.putLeft(putNextValue(prev, argList.subList(1, argList.size), tok))

            } else {
                node.putLeft(prev)
            }

        } else {
            node
        }
    }

    private fun putNextValue(prev: SymNode<T>, argList: List<Term>, tok: ValueToken<T>): SymNode<T> {
        // invariant: the base case is to be processed elsewhere
        assert(argList.isNotEmpty())

        val arg = deref(argList[0])
        val leaf = arg.arguments().isEmpty()
        val next = putValue(prev.rightOrDefault(symbolOrWildcard(arg)).putValueToken(tok, leaf),
                            arg,
                            tok)

        return if (argList.size > 1) {
            prev.putRight(putNextValue(next, argList.subList(1, argList.size), tok))

        } else {
            prev.putRight(next)
        }
    }


    private fun removeValue(node: SymNode<T>, term: Term, tok: ValueToken<T>): SymNode<T> {
        val arguments = term.arguments()
        return if (arguments.isNotEmpty()) {
            val argList = arguments.toList()
            val arg = deref(argList[0])
            node.left[symbolOrWildcard(arg)]?.let { found ->

                val prev = removeValue(found.removeValueToken(tok, arg.arguments().isEmpty()), arg, tok)
                if (argList.size > 1) {
                    node.putLeft(removeNextArgValue(prev, argList.subList(1, argList.size), tok))

                } else {
                    node.putLeft(prev)
                }

            } ?: node

        } else {
            node
        }
    }

    private fun removeNextArgValue(prev: SymNode<T>, argList: List<Term>, tok: ValueToken<T>): SymNode<T> {
        // invariant: the base case is to be processed elsewhere
        assert(argList.isNotEmpty())

        val arg = deref(argList[0])
        return prev.right[symbolOrWildcard(arg)]?.let { found ->

            val next = removeValue(found.removeValueToken(tok, arg.arguments().isEmpty()), arg, tok)
            if (argList.size > 1) {
                prev.putRight(removeNextArgValue(next, argList.subList(1, argList.size), tok))

            } else {
                prev.putRight(next)
            }

        } ?: prev
    }

    private fun matching(term: Term,
                         node: SymNode<T>,
                         proc: (node: SymNode<T>, matched: Boolean, term: Term?, leaf: Boolean) -> Unit)
    {
        val matching = node.symbol == term.symbol() || node.symbol == WILDCARD || term.`is`(Term.Kind.VAR)
        if (!matching) {
            return
        }

        val arguments = term.arguments()
        if (arguments.isNotEmpty()) {
            var lastList: Iterable<SymNode<T>>? = null

            for ((idx, arg) in arguments.map { deref(it) }.withIndex()) {
                val sym = arg.symbol()
                val nextList = if (arg.`is`(Term.Kind.VAR)) {
                    if (idx > 0) {
                        lastList?.flatMap { it.right.values() } ?: emptyList()

                    } else {
                        node.left.values()
                    }

                } else {
                    if (idx > 0) {
                        lastList?.flatMap { listOfNotNull(it.right[sym], it.right[WILDCARD]) } ?: emptyList()

                    } else {
                        listOfNotNull(node.left[sym], node.left[WILDCARD])
                    }
                }

                if (nextList.iterator().hasNext()) {
                    for (next in nextList) {
                        matching(arg, next, proc)
                    }

                } else {
                    if (idx == 0 && node.symbol == WILDCARD) {
                        proc(node, node.symbol == WILDCARD, term, false)
                        break

                    } else {
//                    proc(node, false, null, false)
                        break
                    }

                }

                lastList = nextList
            }

        } else {
            proc(node, matching, term, true)
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

        } else if (term.`is`(Term.Kind.REF) && term.get().`is`(Term.Kind.VAR)) {
            WILDCARD

        } else {
            term.symbol()
        }
    }

    private class ValueToken<T>(val value: T, val tokIndex: Int) {

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

        lateinit var tokenBitset: BitSet

        init {
            this.left = Maps.of()
            this.right = Maps.of()
            this.tokenBitset = BitSet()
        }

        private constructor(copyFrom: SymNode<T>,tok: ValueToken<T>?) :
            this(copyFrom.symbol)
        {
            this.left = copyFrom.left
            this.right = copyFrom.right
            this.tokenBitset = copyFrom.tokenBitset.clone() as BitSet
            tok?.let { tokenBitset.set(it.tokIndex) }
        }

        private constructor(copyFrom: SymNode<T>, setLeft: PersMap<Any, SymNode<T>>, setRight: PersMap<Any, SymNode<T>>) :
            this(copyFrom.symbol)
        {
            this.left = setLeft
            this.right = setRight
            this.tokenBitset = copyFrom.tokenBitset.clone() as BitSet
        }

        fun putValueToken(token: ValueToken<T>, leaf: Boolean): SymNode<T> {
            if (leaf) {
                token.stored()
                return SymNode(this, token)

            } else {
                return SymNode(this, null)
            }
        }

        fun removeValueToken(token: ValueToken<T>, leaf: Boolean): SymNode<T> {
            if (leaf) {
                token.removed()
                return SymNode(this, token)

            } else {
                return SymNode(this, null)
            }
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
            return left[sym] ?: SymNode<T>(sym)
        }

        fun rightOrDefault(sym: Any): SymNode<T> {
            return right[sym] ?: SymNode<T>(sym)
        }

    }

}

