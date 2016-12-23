package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Handler
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.unification.Term
import java.util.*

/**
 * @author Fedor Isakov
 */

class RuleIndex : Iterable<Rule> {

    private val allSymbol2valueIndex = HashMap<ConstraintSymbol, ValueIndex>()

    private val primarySymbol2valueIndex = HashMap<ConstraintSymbol, ValueIndex>()

    private val tag2rule = LinkedHashMap<String, Rule>()

    constructor(handlers: Iterable<Handler>) {
        for (h in handlers) {
            for (r in h.rules()) {
                tag2rule[r.tag()] = r
            }
        }
        buildIndex(handlers)
    }

    fun byTag(tag: String): Rule? = tag2rule[tag]

    fun forOccurrence(occ: ConstraintOccurrence): Iterable<Rule> {
        val primary = primarySymbol2valueIndex.get(occ.constraint().symbol())?.select(occ) ?: emptyList()
        val all = allSymbol2valueIndex.get(occ.constraint().symbol())?.select(occ) ?: emptyList()
        return primary + all
    }

    override fun iterator(): Iterator<Rule> = tag2rule.values.iterator()

    private fun buildIndex(handlers: Iterable<Handler>) {
        for (h in handlers) {
            val primaryValueIdx = h.primarySymbol()?.let { symbol ->
                allSymbol2valueIndex.getOrPut(symbol) { ValueIndex(symbol) }
            }
            for (r in h.rules()) {
                for (c in r.headKept()) {
                    if (c.symbol() == h.primarySymbol()) {
                        primaryValueIdx?.update(r, c)

                    } else if (h.primarySymbol() == null) {
                        allSymbol2valueIndex.getOrPut(c.symbol()) { ValueIndex(c.symbol()) }.update(r, c)
                    }
                }
                for (c in r.headReplaced()) {
                    if (c.symbol() == h.primarySymbol()) {
                        primaryValueIdx?.update(r, c)

                    } else if (h.primarySymbol() == null) {
                        allSymbol2valueIndex.getOrPut(c.symbol()) { ValueIndex(c.symbol()) }.update(r, c)
                    }
                }
            }
        }
    }

}

/**
 * Represents a list of rules with at least one constraint matching the 'symbol'.
 * The list is indexed by all values extracted from the constraint arguments.
 * The list can be selected based on the argument(s) of a constraint occurrence.
 */
private class ValueIndex(val symbol: ConstraintSymbol) {

    val rules = ArrayList<Rule>()

    val anySelectors = ArrayList<MutableMap<Any, BitSet>>()

    val termSelectors = ArrayList<TermTrie<Int>>()

    val wildcardSelectors = ArrayList<BitSet>()

    init {
        for (idx in 1..symbol.arity()) {
            anySelectors.add(HashMap())
            termSelectors.add(TermTrie())
            wildcardSelectors.add(BitSet())
        }
    }

    fun update(rule: Rule, cst: Constraint) {
        var bit = rules.indexOf(rule)
        if (bit < 0) {
            bit = rules.size
            rules.add(rule)
        }

        for ((idx, arg) in cst.arguments().withIndex()) {
            val value2indices = anySelectors[idx]
            when (arg) {
                is MetaLogical<*>   -> {
                    // all values should be accepted by a meta logical
                    wildcardSelectors[idx].set(bit)
                }
                is Term             -> {
                    termSelectors.set(idx, termSelectors[idx].put(arg, bit))
                }
                is Any              -> {
                    val bitset = value2indices.getOrPut(arg) { BitSet() }
                    bitset.set(bit)
                }
                else                -> {
                    /* never happens */
                    throw NullPointerException()
                }
            }
        }
    }

    fun select(occ: ConstraintOccurrence): Iterable<Rule> {
        if (occ.constraint().symbol() != symbol) throw IllegalArgumentException()

        // initially select all rules
        val upToBit = rules.size
        val ruleIndices = BitSet(rules.size)
        ruleIndices.set(0, upToBit)

        for ((idx, arg) in occ.arguments().withIndex()) {
            val value2indices = anySelectors[idx]
            val termIndices = termSelectors[idx]
            val wildcardIndices = wildcardSelectors[idx]
            if (arg is Logical<*> && !arg.isBound) {
                // ALL values must be selected for a free logical
                continue
            }

            val argVal = if (arg is Logical<*>) arg.findRoot().value() else arg
            when (argVal) {
                is Term             -> {
                    val bits = wildcardIndices.clone() as BitSet
                    for (i in termIndices.lookupValues(argVal)) {
                        bits.set(i)
                    }
                    ruleIndices.and(bits)
                }
                is Any              -> {
                    if (value2indices.containsKey(argVal)) {
                        // ensure only rules with either matching values or wildcard arguments get selected
                        val bits = wildcardIndices.clone() as BitSet
                        bits.or(value2indices[argVal])
                        ruleIndices.and(bits)

                    } else {
                        ruleIndices.and(wildcardIndices)
                    }
                }
                else -> {
                    /* never happens */
                    throw NullPointerException()
                }
            }

            if (ruleIndices.isEmpty) {
                break
            }
        }

        val result = ArrayList<Rule>(ruleIndices.cardinality())
        var next = ruleIndices.nextSetBit(0)
        while (next >= 0) {
            result.add(rules.get(next))
            next = ruleIndices.nextSetBit(next+1)
        }
        return result
    }

}