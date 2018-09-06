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
import jetbrains.mps.logic.reactor.util.allSetBits
import jetbrains.mps.unification.Term
import java.util.*
import kotlin.collections.ArrayList
import kotlin.collections.HashMap

/**
 * @author Fedor Isakov
 */

class RuleIndex(handlers: Iterable<Handler>) : Iterable<Rule> {

    private val symbol2index = HashMap<ConstraintSymbol, ArgumentRuleIndex>()

    private val tag2rule = LinkedHashMap<String, Rule>()

    val rules = ArrayList<Rule>()

    private val slotIndices = ArrayList<SlotMask>()

    init {
        buildIndex(handlers)
    }

    fun byTag(tag: String): Rule? = tag2rule[tag]

    fun forOccurrence(occ: ConstraintOccurrence): Iterable<Rule> {
        val ruleIndices = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        return ruleIndices.allSetBits().map { idx -> rules[idx] }
    }

    /**
     * Returns a pair of rule and bit mask with 1's marking matching slots.
     */
    fun forOccurrenceWithMask(occ: ConstraintOccurrence): Iterable<Pair<Rule, BitSet>> {
        val ruleBits = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        return ruleBits.allSetBits().mapNotNull { ruleBit ->
            slotIndices[ruleBit][occ]?.let { mask -> rules[ruleBit] to mask }
        }
    }

    override fun iterator(): Iterator<Rule> = tag2rule.values.iterator()

    private fun buildIndex(handlers: Iterable<Handler>) {
        var ruleBit = 0
        for (h in handlers) {
            for (rule in h.rules()) {
                if (tag2rule.containsKey(rule.tag())) throw IllegalStateException("duplicate rule tag ${rule.tag()}")

                tag2rule[rule.tag()] = rule
                rules.add(rule)

                val head = rule.headKept() + rule.headReplaced()
                val cst2mask = SlotMask(head.size)
                for ((pos, cst) in head.withIndex()) {
                    symbol2index.getOrPut(cst.symbol()) { ArgumentRuleIndex(cst.symbol()) }.update(cst, ruleBit)
                    cst2mask.update(cst, pos)
                }

                slotIndices.add(cst2mask)

                ruleBit += 1
            }
        }
    }

    /**
     * Represents a mask associated with a single rule.
     * The mask tells whether or not a particular constraint occurrence can match
     * any of the rule's constraints.
     */
    class SlotMask(val size: Int) {

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
                termSelectors.add(TermTrie())
                wildcardSelectors.add(BitSet())
            }
        }

        fun update(cst: Constraint, ruleBit: Int) {
            for ((idx, arg) in cst.arguments().withIndex()) {
                val value2indices = anySelectors[idx]
                when (arg) {
                    is MetaLogical<*>   ->
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

            return ruleIndices
        }
    }
}
