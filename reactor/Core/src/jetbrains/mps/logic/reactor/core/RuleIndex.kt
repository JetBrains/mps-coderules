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
class RuleIndex(ruleLists: Iterable<RulesList>) : Iterable<Rule>, RuleLookup {

    // Terminology:
    // ruleBit - rule's index in the rules list
    // headPos - constraint's position in the rule's head (all slots together)
    // argIdx  - constraint's argument index

    private val symbol2index = HashMap<ConstraintSymbol, ArgumentRuleIndex>()

    private val tag2rule = LinkedHashMap<Any, Rule>()

    // TODO replace with a trie? 
    private val segmentPath2ruleBits = HashMap<List<Any>, BitSet>()

    // rule's index is rule's position in this list
    private val rulesList = ArrayList<Rule>()

    // every rule has a slot mask
    // invariant: rulesList.size == slotMasksList.size
    private val slotMasksList = ArrayList<SlotMask>()

    /** the bit set that is going to be reused for all calls to [select] */
    private val ruleBits = BitSet(rulesList.size)

    /** the bit set to be used for temporary processing within [select]*/
    private val andRuleIndices = BitSet(rulesList.size)

    init {
        buildIndex(ruleLists)
    }

    override fun lookupRuleByTag(tag: Any): Rule? = tag2rule[tag]

    private fun List<Any>.isPrefixOf(that: List<Any>): Boolean {
        val thisIt = this@isPrefixOf.iterator()
        val thatIt = that.iterator()
        while(thisIt.hasNext() && thatIt.hasNext()) {
            if (thisIt.next() != thatIt.next()) return false
        }
        return thisIt.hasNext() == thatIt.hasNext() || thatIt.hasNext()
    }

    /**
     * Returns instances of [Rule] that can potentially match the specified [ConstraintOccurrence].
     */
    fun forOccurrence(occ: ConstraintOccurrence): Iterable<Rule> {
        val ruleBits = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        tag2rule[occ.ruleUniqueTag()]?.segmentPath()?.let {
            andRuleIndices.clear()
            for ((path, bits) in segmentPath2ruleBits.entries) {
                if (!it.isPrefixOf(path)) andRuleIndices.or(bits)
            }
            ruleBits.andNot(andRuleIndices)
        }
        val result = ArrayList<Rule>()
        val it = ruleBits.allSetBits()
        while (it.hasNext()) result.add(rulesList[it.next()])
        return result
    }

    /**
     * Returns a pair of rule and bit mask with 1's marking matching slots in constraint's head.
     */
    fun forOccurrenceWithMask(occ: ConstraintOccurrence): Iterable<Pair<Rule, BitSet>> {
        val ruleBits = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        tag2rule[occ.ruleUniqueTag()]?.segmentPath()?.let {
            andRuleIndices.clear()
            for ((path, bits) in segmentPath2ruleBits.entries) {
                if (!it.isPrefixOf(path)) andRuleIndices.or(bits)
            }
            ruleBits.andNot(andRuleIndices)
        }
        val result = ArrayList<Pair<Rule, BitSet>>()
        val it = ruleBits.allSetBits()
        while (it.hasNext()) {
            val ruleBit = it.next()
            slotMasksList[ruleBit][occ]?.let { mask ->  result.add(rulesList[ruleBit] to mask) }
        }
        return result
    }

    override fun iterator(): Iterator<Rule> = rulesList.iterator()

    private fun buildIndex(ruleLists: Iterable<RulesList>) {
        var ruleBit = 0
        for (h in ruleLists) {
            for (rule in h.rules()) {
                if (tag2rule.containsKey(rule.uniqueTag())) throw IllegalStateException("duplicate rule tag ${rule.uniqueTag()}")
                tag2rule[rule.uniqueTag()] = rule
                rule.segmentPath()?.let { segmentPath ->
                    if (segmentPath.isNotEmpty()) {
                        segmentPath2ruleBits.getOrPut(segmentPath) { BitSet() }.set(ruleBit)
                    }
                }
                rulesList.add(rule)

                val head = rule.headKept() + rule.headReplaced()
                val slotMask = SlotMask()
                for ((headPos, cst) in head.withIndex()) {
                    symbol2index.getOrPut(cst.symbol()) { ArgumentRuleIndex(cst.symbol()) }.update(cst, ruleBit)
                    slotMask.update(cst, headPos)
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
     * Represents an index over rules with at least one constraint matching the 'symbol'.
     * The index is over all values extracted from the constraint's arguments.
     * The index is selectable by a constraint occurrence.
     */
    inner class ArgumentRuleIndex(val symbol: ConstraintSymbol) {

        val anySelectors = ArrayList<MutableMap<Any, BitSet>>()

        val termSelectors = ArrayList<TermTrie<Int>>()

        val wildcardSelectors = ArrayList<BitSet>()

        val noArgSelector = BitSet()

        init {
            for (idx in 1..symbol.arity()) {
                anySelectors.add(HashMap())
                termSelectors.add(termTrie())
                wildcardSelectors.add(BitSet())
            }
        }

        fun update(cst: Constraint, ruleBit: Int) {
            if (cst.arguments().isEmpty()) {
                noArgSelector.set(ruleBit)
                
            } else {
                for ((argIdx, arg) in cst.arguments().withIndex()) {
                    val value2indices = anySelectors[argIdx]
                    when (arg) {
                        is MetaLogical<*> ->
                            // all values should be accepted by a meta logical
                            wildcardSelectors[argIdx].set(ruleBit)
                        is Term             ->
                            termSelectors.set(argIdx, termSelectors[argIdx].put(arg, ruleBit))
                        is Any              ->
                            value2indices.getOrPut(arg) { BitSet() }.apply { set(ruleBit) }
                        else                ->
                            throw NullPointerException()  // never happens

                    }
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
            ruleBits.set(0, upToBit)

            if (occ.arguments().isEmpty()) {
                ruleBits.and(noArgSelector)
                
            } else {
                for ((argIdx, arg) in occ.arguments().withIndex()) {
                    val value2indices = anySelectors[argIdx]
                    val termIndices = termSelectors[argIdx]
                    val wildcardIndices = wildcardSelectors[argIdx]
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
                    ruleBits.and(andRuleIndices)

                    if (ruleBits.isEmpty) break
                }
            }

            return ruleBits
        }
    }
}
