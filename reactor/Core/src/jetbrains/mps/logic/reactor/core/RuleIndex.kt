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

import gnu.trove.TIntObjectHashMap
import gnu.trove.TObjectIntHashMap
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

    private class IndexedRule {

        constructor(idx: Int, rule: Rule) {
            this.idx = idx
            this.rule = rule
        }

        var idx: Int
        val rule: Rule
    }

    // Terminology:
    // ruleBit - rule's index in the rules list
    // headPos - constraint's position in the rule's head (all slots together)
    // argIdx  - constraint's argument index

    private val symbol2index = HashMap<ConstraintSymbol, ArgumentRuleIndex>()

    private val tag2rule = LinkedHashMap<Any, Rule>()

    private val tag2bit = TObjectIntHashMap<Any>()

    var nextBit: Int = 0

    private val bit2ruleAndMask = TIntObjectHashMap<Pair<IndexedRule, SlotMask>>()

    private val allRules = LinkedList<IndexedRule>()

    /** the bit set that is going to be reused for all calls to [select] */
    private val ruleBits = BitSet(allRules.size)

    /** the bit set to be used for temporary processing within [select]*/
    private val andRuleIndices = BitSet(allRules.size)

    init {
        buildIndex(ruleLists)
    }

    override fun lookupRuleByTag(tag: Any): Rule? = tag2rule[tag]

    /**
     * Returns instances of [Rule] that can potentially match the specified [ConstraintOccurrence].
     */
    fun forOccurrence(occ: ConstraintOccurrence): Iterable<Rule> {
        val (ruleBits, slotMasks) = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        val result = ArrayList<IndexedRule>()
        val it = ruleBits.allSetBits()
        while (it.hasNext()) bit2ruleAndMask[it.next()]?.let{
            result.add(it.first)
        }
        result.sortBy { it.idx }
        return result.map { it.rule }
    }

    /**
     * Returns a pair of rule and bit mask with 1's marking matching slots in constraint's head.
     */
    fun forOccurrenceWithMask(occ: ConstraintOccurrence): Iterable<Pair<Rule, BitSet>> {
        val (ruleBits, argSlotMasks) = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        val result = ArrayList<Pair<IndexedRule, BitSet>>()
        val it = ruleBits.allSetBits()
        while (it.hasNext()) {
            val ruleBit = it.next()
            bit2ruleAndMask[ruleBit]?.let {(irule, slotMask) ->
                slotMask[occ]?.let { mask ->
                    val effMask = argSlotMasks[ruleBit]?.copyApply { and(mask) } ?: mask
                    result.add(irule to effMask)
                }
            }
        }
        result.sortBy { it.first.idx }
        return result.map { it.first.rule to it.second }
    }

    override fun iterator(): Iterator<Rule> = allRules.map { it.rule }.iterator()

    fun updateIndex(ruleLists: Iterable<RulesList>) {
        val removedTags = allRules.map { it.rule.uniqueTag() }.toHashSet()
        ruleLists.flatMap { it.rules() }.map { it.uniqueTag() }.forEach{ removedTags.remove(it) }

        val allRulesIt = allRules.listIterator()
        var nextIdx = 0
        ruleLists.flatMap { it.rules() }.forEach { rule ->
            var skip = false
            while (allRulesIt.hasNext()) {
                val irule = allRulesIt.next()
                if (removedTags.contains(irule.rule.uniqueTag())) {
                    removeRuleFromIndex(irule)
                    allRulesIt.remove()

                } else if (!irule.rule.uniqueTag().equals(rule.uniqueTag())) {
                    allRulesIt.previous()
                    break
                    
                } else {
                    irule.idx = nextIdx
                    skip = true
                    break
                }
            }
            if (!skip) {
                IndexedRule(nextIdx, rule).also {
                    addRuleToIndex(it)
                    allRulesIt.add(it)
                }
            }
            nextIdx++
        }
        while (allRulesIt.hasNext()) {
            val irule = allRulesIt.next()
            removeRuleFromIndex(irule)
            allRulesIt.remove()
        }
    }

    private fun buildIndex(ruleLists: Iterable<RulesList>) {
        ruleLists.flatMap { it.rules() }.forEachIndexed { idx, rule ->
            val irule = IndexedRule(idx, rule)
            addRuleToIndex(irule)
            allRules.add(irule)
        }
    }

    private fun removeRuleFromIndex(irule: IndexedRule) {
        val uniqueTag = irule.rule.uniqueTag()
        tag2rule.remove(uniqueTag)
        val bit = tag2bit.remove(uniqueTag)
        bit2ruleAndMask.remove(bit)
    }

    private fun addRuleToIndex(irule: IndexedRule) {
        val uniqueTag = irule.rule.uniqueTag()
        if (tag2rule.containsKey(uniqueTag)) throw IllegalStateException("duplicate rule tag $uniqueTag")
        val head = irule.rule.headKept() + irule.rule.headReplaced()
        val slotMask = SlotMask()
        for ((headPos, cst) in head.withIndex()) {
            symbol2index.getOrPut(cst.symbol()) { ArgumentRuleIndex(cst.symbol()) }.update(cst, nextBit, headPos)
            slotMask.update(cst, headPos)
        }

        tag2rule[uniqueTag] = irule.rule
        tag2bit.put(uniqueTag, nextBit)
        bit2ruleAndMask.put(nextBit, irule to  slotMask)

        nextBit += 1
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

        val symbolSelector = BitSet()

        // value -> List of Pairs of rule bits and head positions
        val anySelectors = ArrayList<MutableMap<Any, MutableList<Pair<Int, Int>>>>()

        val termSelectors = ArrayList<TermTrie<Pair<Int, Int>>>()

        val wildcardSelectors = ArrayList<BitSet>()

        init {
            for (idx in 1..symbol.arity()) {
                anySelectors.add(HashMap())
                termSelectors.add(termTrie())
                wildcardSelectors.add(BitSet())
            }
        }

        fun update(cst: Constraint, ruleBit: Int, headPos: Int) {
            symbolSelector.set(ruleBit)
            for ((argIdx, arg) in cst.arguments().withIndex()) {
                val value2indices = anySelectors[argIdx]
                when (arg) {
                    is MetaLogical<*> ->
                        // all values should be accepted by a meta logical
                        wildcardSelectors[argIdx].set(ruleBit)
                    is Term             ->
                        termSelectors.set(argIdx, termSelectors[argIdx].put(arg, ruleBit to headPos))
                    is Any              ->
                        value2indices.getOrPut(arg) { arrayListOf() }.add(ruleBit to headPos)
                    else                ->
                        throw NullPointerException()  // never happens

                }
            }
        }

        /**
         * Returns bit set where 1's indicate the indices of matching rules.
         */
        fun select(occ: ConstraintOccurrence): Pair<BitSet, Map<Int, BitSet>> {
            if (occ.constraint().symbol() != symbol) throw IllegalArgumentException()

            // initially select all rules where this constraint is in the head
            ruleBits.clear()
            ruleBits.or(symbolSelector)

            val slotVotes = HashMap<Pair<Int, Int>, BitSet>()
            val commonVotes = BitSet()
            
            for ((argIdx, arg) in occ.arguments().withIndex()) {
                val value2indices = anySelectors[argIdx]
                val termIndices = termSelectors[argIdx]
                val wildcardIndices = wildcardSelectors[argIdx]
                if (arg is Logical<*> && !arg.isBound) {
                    // ALL values must be selected for a free logical
                    commonVotes.set(argIdx)
                    continue
                }

                andRuleIndices.clear()
                andRuleIndices.or(wildcardIndices)

                val argVal = if (arg is Logical<*>) arg.findRoot().value() else arg
                when (argVal) {
                    is Term             ->
                        termIndices.lookupValues(argVal).forEach { (ruleBit, headPos) ->
                            andRuleIndices.set(ruleBit)
                            slotVotes.getOrPut(ruleBit to headPos) { BitSet() }.set(argIdx)
                        }
                    is Any              ->
                        // ensure only rules with either matching values or wildcard arguments get selected
                        value2indices[argVal]?.run { forEach { (ruleBit, headPos) ->
                            andRuleIndices.set(ruleBit)
                            slotVotes.getOrPut(ruleBit to headPos) { BitSet() }.set(argIdx)
                        } }
                }

                ruleBits.and(andRuleIndices)

                if (ruleBits.isEmpty) break
            }

            val slotMasks = HashMap<Int, BitSet>()
            for ((p, votes) in slotVotes.entries) {
                val (ruleBit, headPos) = p
                if (!votes.isEmpty || !commonVotes.isEmpty) {
                    slotMasks.getOrPut(ruleBit) { BitSet() }.set(headPos)
                }
            }

            return ruleBits to slotMasks
        }
    }
}
