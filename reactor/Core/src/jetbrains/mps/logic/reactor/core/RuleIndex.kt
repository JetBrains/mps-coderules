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

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.*
import jetbrains.mps.unification.Term
import java.util.*
import kotlin.collections.ArrayList
import kotlin.collections.HashMap

/**
 * A container for [Rule] instances with the ability to look up by [ConstraintOccurrence].
 *
 * @author Fedor Isakov
 */
class RuleIndex(handlers: Iterable<RulesList>) : Iterable<Rule>, RuleLookup {

    private val symbol2index = HashMap<ConstraintSymbol, ArgumentRuleIndex>()

    private val tag2rule = LinkedHashMap<Any, Rule>()

    // rule's index is rule's position in this list
    private val rulesList = ArrayList<Rule>()

    // every rule has a slot mask
    // invariant: rulesList.size == slotMasksList.size
    private val slotMasksList = ArrayList<SlotMask>()

    /** the bit set that is going to be reused for all calls to [select] */
    private val ruleIndices = BitSet(rulesList.size)

    /** the bit set to be used for temporary processing within [select]*/
    private val andRuleIndices = BitSet(rulesList.size)

    init {
        buildIndex(handlers)
    }

    override fun lookupRuleByTag(tag: Any): Rule? = tag2rule[tag]

    /**
     * Returns instances of [Rule] that can potentially match the specified [ConstraintOccurrence].
     */
    fun forOccurrence(occ: ConstraintOccurrence): Iterable<Rule> {
        val ruleIndices = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        val result = ArrayList<Rule>()
        val it = ruleIndices.allSetBits()
        while (it.hasNext()) result.add(rulesList[it.next()])
        return result
    }

    /**
     * Returns a pair of rule and bit mask with 1's marking matching slots in constraint's head.
     */
    fun forOccurrenceWithMask(occ: ConstraintOccurrence): Iterable<Pair<Rule, BitSet>> {
        val ruleBits = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        val result = ArrayList<Pair<Rule, BitSet>>()
        val it = ruleBits.allSetBits()
        while (it.hasNext()) {
            val ruleBit = it.next()
            slotMasksList[ruleBit][occ]?.let { mask ->  result.add(rulesList[ruleBit] to mask) }
        }
        return result
    }

    override fun iterator(): Iterator<Rule> = rulesList.iterator()

    private fun buildIndex(handlers: Iterable<RulesList>) {
        var ruleBit = 0
        for (h in handlers) {
            for (rule in h.rules()) {
                if (tag2rule.containsKey(rule.uniqueTag())) throw IllegalStateException("duplicate rule tag ${rule.uniqueTag()}")
                tag2rule[rule.uniqueTag()] = rule
                rulesList.add(rule)

                val head = rule.headKept() + rule.headReplaced()
                val slotMask = SlotMask()
                for ((pos, cst) in head.withIndex()) {
                    symbol2index.getOrPut(cst.symbol()) { ArgumentRuleIndex(cst.symbol()) }.update(cst, ruleBit)
                    slotMask.update(cst, pos)
                }

                slotMasksList.add(slotMask)

                ruleBit += 1
            }
        }
    }

    /**
     * Represents a mask associated with a single rule.
     * The mask tells whether or not a particular constraint occurrence can match
     * any of the rule's constraints.
     */
    private class SlotMask() {

        val symbol2mask = HashMap<Symbol, BitSet>()

        fun update(cst: Constraint, posInHead: Int) {
            symbol2mask.getOrPut(cst.symbol()) { BitSet() }.set(posInHead)
        }
        /**
         * When null is returned, there can be no match for this constraint
         */
        operator fun get(occ: ConstraintOccurrence): BitSet? =
            symbol2mask[occ.constraint().symbol()]

    }

    /**
     * Represents a list of rules with at least one constraint matching the 'symbol'.
     * The list is indexed by all values extracted from the constraint arguments.
     * The list can be selected based on the argument(s) of a constraint occurrence.
     */
    inner class ArgumentRuleIndex(val symbol: ConstraintSymbol) {

        val anySelectors = ArrayList<MutableMap<Any, BitSet>>()

        val termSelectors = ArrayList<TermTrie<Int>>()

        val wildcardSelectors = ArrayList<BitSet>()

        init {
            for (idx in 1..symbol.arity()) {
                anySelectors.add(HashMap())
                termSelectors.add(termTrie())
                wildcardSelectors.add(BitSet())
            }
        }

        fun update(cst: Constraint, ruleBit: Int) {
            for ((idx, arg) in cst.arguments().withIndex()) {
                val value2indices = anySelectors[idx]
                when (arg) {
                    is MetaLogical<*> ->
                                            // all values should be accepted by a meta logical
                                            wildcardSelectors[idx].set(ruleBit)
                    is Term             ->
                                            termSelectors.set(idx, termSelectors[idx].put(arg, ruleBit))
                    is Any              ->
                                            value2indices.getOrPut(arg) { BitSet() }.apply { set(ruleBit) }
                    else                ->
                                            throw NullPointerException()  // never happens

                }
            }
        }

        /**
         * Returns bit set where 1's indicate the indices of matching rules.
         */
        fun select(occ: ConstraintOccurrence): BitSet {
            if (occ.constraint().symbol() != symbol) throw IllegalArgumentException()

            // initially select all rules
            val upToBit = rulesList.size
            ruleIndices.set(0, upToBit)

            for ((idx, arg) in occ.arguments().withIndex()) {
                val value2indices = anySelectors[idx]
                val termIndices = termSelectors[idx]
                val wildcardIndices = wildcardSelectors[idx]
                if (arg is Logical<*> && !arg.isBound) {
                    // ALL values must be selected for a free logical
                    continue
                }

                andRuleIndices.clear(0, upToBit)
                andRuleIndices.or(wildcardIndices)

                val argVal = if (arg is Logical<*>) arg.findRoot().value() else arg
                when (argVal) {
                    is Term             ->
                        termIndices.lookupValues(argVal).forEach { andRuleIndices.set(it) }
                    is Any              ->
                        // ensure only rules with either matching values or wildcard arguments get selected
                        if (value2indices.containsKey(argVal)) andRuleIndices.or(value2indices[argVal])
                }
                ruleIndices.and(andRuleIndices)

                if (ruleIndices.isEmpty) break
            }

            return ruleIndices
        }
    }
}
