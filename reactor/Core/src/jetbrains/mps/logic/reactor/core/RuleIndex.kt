package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Rule
import java.util.*

/**
 * @author Fedor Isakov
 */

class RuleIndex : Iterable<Rule> {

    private val symbol2rules = HashMap<ConstraintSymbol, MutableList<Rule>>()

    private var rules: Collection<Rule>

    constructor(rules: Collection<Rule>) {
        this.rules = rules
        buildIndex(rules)
    }

    fun forSymbol(symbol: ConstraintSymbol): Iterable<Rule>? = symbol2rules[symbol]

    override fun iterator(): Iterator<Rule> = rules.iterator()

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
        if (!symbol2rules.containsKey(cst.symbol())) {
            symbol2rules[cst.symbol()] = ArrayList()
        }
        val rs = symbol2rules[cst.symbol()]!!
        if (!rs.contains(rule)) rs.add(rule)
    }

}