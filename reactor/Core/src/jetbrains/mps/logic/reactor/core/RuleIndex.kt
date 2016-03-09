package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Rule
import java.util.*

/**
 * @author Fedor Isakov
 */

class RuleIndex : Iterable<Rule> {

    private val symbol2valueIndex = HashMap<ConstraintSymbol, ValueIndex>()

    private val tag2rule = LinkedHashMap<String, Rule>()

    constructor(rules: Collection<Rule>) {
        for (r in rules) {
            tag2rule[r.tag()] = r
        }
        buildIndex(rules)
    }

    fun byTag(tag: String): Rule? = tag2rule[tag]

    fun forOccurrence(occ: ConstraintOccurrence): Iterable<Rule> {
        return symbol2valueIndex.get(occ.constraint().symbol())?.select(occ) ?: emptyList()
    }

    override fun iterator(): Iterator<Rule> = tag2rule.values.iterator()

    private fun buildIndex(rules: Collection<Rule>) {
        for (r in rules) {
            for (c in r.headKept()) {
                updateIndex(c, r)
            }
            for (c in r.headReplaced()) {
                updateIndex(c, r)
            }
        }
    }

    private fun updateIndex(cst: Constraint, rule: Rule) {
        val valueIdx = symbol2valueIndex.getOrPut(cst.symbol()) { ValueIndex(cst.symbol()) }
        valueIdx.update(rule, cst)
    }

}

/**
 * Represents a list of rules with at least one constraint matching the 'symbol'.
 * The list is indexed by all values extracted from the constraint arguments.
 * The list can be selected based on the argument(s) of a constraint occurrence.
 */
private class ValueIndex(val symbol: ConstraintSymbol) {

    val rules = ArrayList<Rule>()

    val selectors = ArrayList<MutableMap<Any, BitSet>>()

    val wildcardSelectors = ArrayList<BitSet>()

    init {
        for (idx in 1..symbol.arity()) {
            selectors.add(HashMap<Any, BitSet>())
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
            val value2indices = selectors[idx]
            when (arg) {
                is MetaLogical<*>   -> {
                    // all values should be accepted by a meta logical
                    wildcardSelectors[idx].set(bit)
                }
                is Any              -> {
                    val bitset = value2indices.getOrPut(arg) { BitSet() }
                    bitset.set(bit)
                }
                else                -> { /* never happens */ }
            }
        }
    }

    fun select(occ: ConstraintOccurrence): Iterable<Rule> {
        if (occ.constraint().symbol() != symbol) throw IllegalArgumentException()

        // initially select all rules
        val upToBit = rules.size
        val ruleIndices = BitSet()
        ruleIndices.set(0, upToBit)

        for ((idx, arg) in occ.arguments().withIndex()) {
            val value2indices = selectors[idx]

            when (arg) {
                is Logical<*>   -> {
                    // ALL values must be selected for a logical
                }
                is Any              -> {
                    val wildcardIndices = wildcardSelectors[idx].clone() as BitSet
                    if (value2indices.containsKey(arg)) {
                        // ensure only rules with either matching values or wildcard arguments get selected
                        wildcardIndices.or(value2indices[arg])
                    }
                    ruleIndices.and(wildcardIndices)
                }
                else -> {
                }
            }
        }

        return rules.filterIndexed { idx, rule -> ruleIndices.get(idx) }
    }

}