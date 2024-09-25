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

typealias RuleBits = BitSet 
fun emptyRuleBits() = BitSet()

/**
 * A container for [Rule] instances with the ability to look up by [ConstraintOccurrence].
 *
 * @author Fedor Isakov
 */
class RuleIndex(rules: Iterable<Rule>, profiler: Profiler? = null) : Iterable<Rule>, RuleLookup
{
    private class IndexedRule(var idx: Int, val rule: Rule)

    // Terminology:
    // ruleBit - rule's index in the rules list
    // headPos - constraint's position in the rule's head (all slots together)
    // argIdx  - constraint's argument index

    private val symbol2index = HashMap<ConstraintSymbol, ArgumentRuleIndex>()

    private val tag2rule = HashMap<Any, Rule>()

    private val tag2bit = TObjectIntHashMap<Any>()

    var nextBit: Int = 0

    private val bit2ruleAndMask = TIntObjectHashMap<Pair<IndexedRule, SlotMask>>()

    private val allRules = LinkedList<IndexedRule>()

    init {
        profiler.profile("build rule index") {
            buildIndexFromRules(rules)
        }
    }

    override fun lookupRuleByTag(tag: Any): Rule? = tag2rule[tag]

    /**
     * Returns instances of [Rule] that can potentially match the specified [ConstraintOccurrence].
     */
    fun forOccurrence(occ: ConstraintOccurrence): Iterable<Rule> {
        val (ruleBits, slotMasks) = symbol2index[occ.constraint().symbol()]?.select(occ) ?: return emptyList()
        val result = ArrayList<IndexedRule>()
        val itr = ruleBits.iterator()
        while (itr.hasNext()) {
            bit2ruleAndMask[itr.next()]?.let{
                result.add(it.first)
            }
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
        val itr = ruleBits.iterator()
        while (itr.hasNext()) {
            val ruleBit = itr.next()
            bit2ruleAndMask[ruleBit]?.let {(irule, slotMask) ->
                slotMask[occ]?.let { mask ->
                    val effMask = argSlotMasks[ruleBit]?.copyApply { and(mask) } ?: mask
                    result.add(irule to effMask)
                }
            }
        }
//        }
        result.sortBy { it.first.idx }
        return result.map { it.first.rule to it.second }
    }

    override fun iterator(): Iterator<Rule> = allRules.map { it.rule }.iterator()

    fun buildIndexFromRules(rules: Iterable<Rule>) {
        rules.forEachIndexed { idx, rule ->
            val irule = IndexedRule(idx, rule)
            addRuleToIndex(irule)
            allRules.add(irule)
        }
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
    private class SlotMask {

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

        val symbolSelector = emptyRuleBits()

        // value -> List of Pairs of rule bits and head positions
        val anySelectors = ArrayList<MutableMap<Any, MutableSet<Pair<Int, Int>>>>()
        val termSelectors = ArrayList<IndexedTermTrie<Int>>()
        val wildcardSelectors = ArrayList<RuleBits>()

        init {
            for (idx in 1..symbol.arity()) {
                anySelectors.add(HashMap())
                termSelectors.add(indexedTermTrie())
                wildcardSelectors.add(emptyRuleBits())
            }
        }

        fun update(cst: Constraint, ruleBit: Int, headPos: Int) {
            symbolSelector.add(ruleBit)
            for ((argIdx, arg) in cst.arguments().withIndex()) {
                val value2indices = anySelectors[argIdx]
                when (arg) {
                    is MetaLogical<*> ->
                        // all values should be accepted by a meta logical
                        wildcardSelectors[argIdx].add(ruleBit)
                    is Term             ->
                        termSelectors[argIdx].put(arg, ruleBit,headPos)
                    is Any              ->
                        value2indices.getOrPut(arg) { hashSetOf() }.add(ruleBit to headPos)
                    else                ->
                        throw NullPointerException()  // never happens
                }
            }
        }

        fun clear(cst: Constraint, ruleBit: Int, headPos: Int) {
            symbolSelector.remove(ruleBit)
            for ((argIdx, arg) in cst.arguments().withIndex()) {
                val value2indices = anySelectors[argIdx]
                when (arg) {
                    is MetaLogical<*> ->
                        // all values should be accepted by a meta logical
                        wildcardSelectors[argIdx].remove(ruleBit)
                    is Term             ->
                        termSelectors[argIdx].remove(arg, ruleBit, headPos)
                    is Any              ->
                        value2indices[arg]?.remove(ruleBit to headPos)
                    else                ->
                        throw NullPointerException()  // never happens
                }
            }
        }

        /**
         * Returns bit set where 1's indicate the indices of matching rules.
         */
        fun select(occ: ConstraintOccurrence): Pair<RuleBits, Map<Int, BitSet>> {
            if (occ.constraint().symbol() != symbol) throw IllegalArgumentException()

            // by default select all rules where this constraint is in the head
            var refined = false

            val slotVotes = HashMap<Pair<Int, Int>, BitSet>()
            val wildcardSlots = BitSet()
            val selectedRuleBits = emptyRuleBits()

            for ((argIdx, arg) in occ.arguments().withIndex()) {
                if (arg is Logical<*> && !arg.isBound) {
                    // ALL values must be selected for a free logical
                    wildcardSlots.set(argIdx)
                    continue
                }

                val candidateRuleBits = emptyRuleBits()
                val value2indices = anySelectors[argIdx]
                val termIndices = termSelectors[argIdx]
                val wildcardIndices = wildcardSelectors[argIdx]

                // indices found from Term or Any argument are AND-ed
                candidateRuleBits.clear()
                candidateRuleBits.addAll(wildcardIndices)

                val currentSelector = if (refined) selectedRuleBits else null

                val argVal = if (arg is Logical<*>) arg.findRoot().value() else arg
                when (argVal) {
                    is Term             ->
                        termIndices.forValuesWithIndex(argVal, currentSelector) { headPos, ruleBit ->
                            candidateRuleBits.add(ruleBit)
                            slotVotes.getOrPut(ruleBit to headPos) { BitSet() }.set(argIdx)
                        }
                    is Any              ->
                        // ensure only rules with either matching values or wildcard arguments get selected
                        value2indices[argVal]?.run { forEach { (ruleBit, headPos) ->
                            candidateRuleBits.add(ruleBit)
                            slotVotes.getOrPut(ruleBit to headPos) { BitSet() }.set(argIdx)
                        } }
                }

                if (!refined) {
                    refined = true
                    selectedRuleBits.addAll(candidateRuleBits)

                } else {
                    selectedRuleBits.retainAll(candidateRuleBits)
                }

                if (selectedRuleBits.isEmpty) break
            }

            selectedRuleBits.retainAll(symbolSelector)

            val slotMasks = HashMap<Int, BitSet>()
            for ((p, votes) in slotVotes.entries) {
                val (ruleBit, headPos) = p
                if (!votes.isEmpty || !wildcardSlots.isEmpty) {
                    slotMasks.getOrPut(ruleBit) { BitSet() }.set(headPos)
                }
            }

            return if (!refined) {
                // no arguments or all arguments are wildcards
                symbolSelector to slotMasks

            } else {
                selectedRuleBits to slotMasks
            }
        }
    }
}
