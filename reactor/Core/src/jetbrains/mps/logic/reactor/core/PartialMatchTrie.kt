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
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification
import java.util.*
import kotlin.collections.ArrayList
import com.github.andrewoma.dexx.collection.Map as PersMap

/**
 * @author Fedor Isakov
 */
internal class MatchTrieSet(val rule: Rule, val profiler: Profiler?) {

    private val keptConstraints = rule.headKept().toCollection(ArrayList(4))

    private val discardedConstraints = rule.headReplaced().toCollection(ArrayList(4))

    // for each slot keep a set of "related" slots, that is the slots with matching (meta-)logicals
    // this map is built only once per rule
    private val relatedSlots: List<BitSet> =
        HashMap<MetaLogical<*>, BitSet>().let { meta2slots ->

            (keptConstraints + discardedConstraints).forEachIndexed { slot, cst ->
                cst.arguments().forEach { arg ->
                    if (arg is MetaLogical<*>) {
                        val bs = meta2slots[arg] ?: BitSet().apply { meta2slots[arg] = this }
                        bs.set(slot)
                    }
                }
            }

            ArrayList<BitSet>().apply {
                (keptConstraints + discardedConstraints).forEachIndexed { slot, cst ->
                    val bs = BitSet()
                    cst.arguments().forEach { arg ->
                        if (arg is MetaLogical<*>) {
                            bs.or(meta2slots[arg])
                        }
                    }
                    bs.clear(slot)
                    add(bs)
                }
            }
            
        }

    val tries = ArrayList<PartialMatchTrie>()

    fun matches(activeOcc: ConstraintOccurrence, occIndex: OccurrenceIndex): Sequence<PartialMatch> {
        val constraints = keptConstraints + discardedConstraints

        val relevantTries = ArrayList<PartialMatchTrie>()
        val newTries = ArrayList<PartialMatchTrie>()
        for (t in tries) {
            if (!t.vacant.isEmpty) {
                newTries.add(t)
                for (idx in t.vacant.stream()) {
                    if (constraints[idx].probablyMatches(activeOcc)) {
                        relevantTries.add(PartialMatchTrie(activeOcc, occIndex, t))
                        newTries.removeAt(newTries.size - 1)
                        break
                    }
                }
            }
        }
        if (relevantTries.isEmpty()) {
            relevantTries.add(PartialMatchTrie(activeOcc, occIndex, null))
        }

        this.tries.clear()
        this.tries.addAll(newTries)
        this.tries.addAll(relevantTries)

        return relevantTries.asSequence().flatMap { t -> t.matches() }
    }

    inner class PartialMatchTrie(val activeOcc: ConstraintOccurrence,
                                 val occIndex: OccurrenceIndex,
                                     prototype: PartialMatchTrie?)
    {
        private val root: RootMatchTrieNode = RootMatchTrieNode(prototype?.root)

        val vacant = BitSet()

        fun matches(): Sequence<PartialMatch> = object : Sequence<PartialMatch> {

            override fun iterator() = object : Iterator<PartialMatch> {

                val firstRoot: MatchTrieNode? = root.firstChild

                var next: PartialMatch? = null

                override fun hasNext(): Boolean {
                    if (next == null) {
                        this.next = calcNext()
                    }
                    return (next != null)
                }

                override fun next(): PartialMatch {
                    if (next == null) {
                        this.next = calcNext()
                    }
                    if (next != null) {
                        val tmp: PartialMatch = next!!
                        this.next = calcNext()
                        return tmp
                    }
                    throw NoSuchElementException()
                }

                private fun calcNext(): PartialMatch? {
                    return profiler.profile<PartialMatch?>("partialMatch_calcNext") {
                        // the search always starts at the first root
                        if (firstRoot == null) {
                            return null
                        }
                        var mtn: MatchTrieNode? = firstRoot

                        while (mtn != null) {
                            if (mtn.isSeen) {
                                if (mtn.nextSibling == null) {
                                    mtn.parent?.setSeen()
                                }
                                mtn = mtn.nextSibling ?: mtn.parent

                            } else if (mtn.isLeaf) {
                                mtn.setSeen()
                                vacant.clear()
                                return mtn.match

                            } else if (mtn.firstChild == null) {
                                mtn.setSeen()
                                vacant.or(mtn.vacantSlots)
                                vacant.andNot(mtn.relatedFirstVacantSlots)

                            } else {
                                mtn = mtn.firstChild
                            }
                        }

                        return null
                    }
                }
            }

        }

        private abstract inner class BaseMatchTrieNode() {

            var _firstChild: MatchTrieNode? = null

            protected fun copyChildren(copyFrom: BaseMatchTrieNode, parent: MatchTrieNode?) {
                copyFrom._firstChild?.firstAlive()?.let { copyFirst ->

                    val first = MatchTrieNode(parent, copyFirst)
                    var prev = first
                    var copyNext = copyFirst.nextSibling?.firstAlive()

                    while (copyNext != null) {
                        val next = MatchTrieNode(parent, copyNext)
                        prev._nextSibling = next
                        prev = next
                        copyNext = copyNext.nextSibling?.firstAlive()
                    }

                    this._firstChild = first
                }
            }

            protected fun buildNode(siblings: Iterable<MatchTrieNode>) : MatchTrieNode? {
                var first: MatchTrieNode? = null
                var prev: MatchTrieNode? = null
                for (next in siblings) {
                    if (first == null) {
                        first = next
                    }
                    prev?._nextSibling = next
                    prev = next
                }

                return first
            }

        }

        private inner class RootMatchTrieNode(copyFrom: RootMatchTrieNode? = null) : BaseMatchTrieNode() {

            init {
                if (copyFrom != null) { copyChildren(copyFrom, null) }
            }

            val firstChild: MatchTrieNode?
                get() {
                    if (_firstChild == null) {
                        this._firstChild = buildNode(calcRoots())
                    }
                    return _firstChild
                }

            private fun calcRoots(): Iterable<MatchTrieNode> {
                return profiler.profile<Iterable<MatchTrieNode>>("partialMatch_calcRoots") {

                    keptConstraints.withIndex().filter {(_, cst) ->
                        cst.probablyMatches(activeOcc)}.map {(idx, cst) ->
                        MatchTrieNode(null, true, cst, activeOcc, idx)
                    } +
                    discardedConstraints.withIndex().filter {(_, cst) ->
                        cst.probablyMatches(activeOcc)}.map {(idx, cst) ->
                        MatchTrieNode(null, false, cst, activeOcc, idx)
                    }
                    
                }
            }

        }

        private inner class MatchTrieNode(val parent: MatchTrieNode?,
                                          val keepConstraint: Boolean,
                                          val constraint: Constraint,
                                          val occurrence: ConstraintOccurrence,
                                          val index: Int) : BaseMatchTrieNode()
        {

            constructor(parent: MatchTrieNode?, copyFrom: MatchTrieNode) :
                this(parent, copyFrom.keepConstraint, copyFrom.constraint, copyFrom.occurrence, copyFrom.index)
            {
                copyChildren(copyFrom, this)
            }

            val firstChild: MatchTrieNode?
                get() {
                    if (_firstChild == null) {
                        this._firstChild = buildNode(calcChildren())
                    }
                    return _firstChild
                }

            var _nextSibling: MatchTrieNode? = null

            val nextSibling: MatchTrieNode?
                get() = _nextSibling

            private var _isSeen: Boolean = false

            val isSeen: Boolean
                get() = _isSeen

            val vacantSlots: BitSet by lazy(LazyThreadSafetyMode.NONE) {
                val result = BitSet()
                result.set(0, keptConstraints.size + discardedConstraints.size)
                foldPath(result) { bits, mtn ->
                    val slot = if (mtn.keepConstraint) mtn.index else mtn.index + keptConstraints.size
                    bits.clear(slot)
                    bits
                }
                result
            }

            val relatedFirstVacantSlots: BitSet by lazy(LazyThreadSafetyMode.NONE) {
                val result = vacantSlots.clone() as BitSet
                result.and(relatedSlots[if (keepConstraint) index else index + keptConstraints.size])
                result
            }

            val isLeaf: Boolean
                get() = vacantSlots.isEmpty

            val match: PartialMatch by lazy(LazyThreadSafetyMode.NONE) {
                val parentMatch = parent?.match ?: PartialMatch(rule, keptConstraints.size, discardedConstraints.size)
                if (keepConstraint) parentMatch.keep(occurrence, index)
                else                parentMatch.discard(occurrence, index)
            }

            fun setSeen() {
                this._isSeen = true
            }

            private fun calcChildren(): Iterable<MatchTrieNode> {
                val nextSlots = if (!relatedFirstVacantSlots.isEmpty) relatedFirstVacantSlots else vacantSlots
                val nextSlot = nextSlots.nextSetBit(0)
                if (nextSlot < 0) {
                    return emptyList()
                }

                val keep = nextSlot < keptConstraints.size
                val nextIdx = if (keep) nextSlot else nextSlot - keptConstraints.size
                val nextCst = if (keep) keptConstraints[nextSlot] else discardedConstraints[nextIdx]

                return if (nextCst.probablyMatches(activeOcc) && !hasOccurrence(activeOcc)) {
                    arrayListOf(MatchTrieNode(this, keep, nextCst, activeOcc, nextIdx))
                    
                }
                else {
                    val (result, auxOccurrences) = lookupAuxOccurrences(nextCst)
                    when (result) {
                        Result.DEFINITIVE   ->  parent
                        Result.NONE         ->  this
                        Result.INCONCLUSIVE ->  null
                    }?.forEachInPath { mtn -> mtn.setSeen() }

                    auxOccurrences.map { auxOcc -> MatchTrieNode(this, keep, nextCst, auxOcc, nextIdx) }
                }
            }

            // the first component indicates the quality of the result:
            // DEFINITIVE indicates the only possible matches were returned
            // INCONCLUSIVE may yield some (ir-)relevant results
            // NONE means no results could have been found at all, so it's useless to attempt again with the same input
            private fun lookupAuxOccurrences(cst: Constraint): Pair<Result, Iterable<ConstraintOccurrence>> {
                return profiler.profile<Pair<Result, Iterable<ConstraintOccurrence>>> ("lookupAux_${cst.symbol()}") {

                    val fromArgs = ArrayList<ConstraintOccurrence>(4)
                    for (arg in metaInstances(cst.arguments()) + cst.arguments().filter { arg -> !(arg is MetaLogical<*>) }) {
                        when (arg) {
                            is Logical<*>   ->  fromArgs.addAll(occIndex.forLogicalAndConstraint(arg, cst))

                            is Term         ->  fromArgs.addAll(occIndex.forTermAndConstraint(arg, cst))

                            is Any          ->  fromArgs.addAll(occIndex.forValue(arg))
                        }
                    }
                    if (fromArgs.isNotEmpty()) {
                        Result.DEFINITIVE.to(fromArgs.filter { occ -> cst.probablyMatches(occ) && !hasOccurrence(occ) })

                    } else {
                        return profiler.profile<Pair<Result, Iterable<ConstraintOccurrence>>> ("lookupAux_default_${cst.symbol()}") {

                            val hasRelated = relatedFirstVacantSlots == vacantSlots
                            val allArgsMetaLogicals = cst.arguments().all { a -> a is MetaLogical<*> }
                            val noArgs = cst.arguments().isEmpty()

                            if (noArgs || (allArgsMetaLogicals && !hasRelated)) {
                                Result.INCONCLUSIVE.to(occIndex.forSymbol(cst.symbol()).filter { occ -> cst.probablyMatches(occ) && !hasOccurrence(occ) })

                            }
                            else {
                                // all candidate occurrences should have been found by this time; if not, then there's none
                                Result.NONE.to(emptyList())
                            }
                        }
                    }
                }
            }

            fun firstAlive(): MatchTrieNode? {
                var fca: MatchTrieNode? = this
                while (!(fca?.occurrence?.isAlive() ?: true)) {
                    fca = fca?.nextSibling
                }
                return fca
            }


            private fun collectMetaInstances(meta: Collection<*>, list: ArrayList<Any>): ArrayList<Any> {
                constraint.arguments().zip(occurrence.arguments()).forEach { p ->
                    if (p.first is MetaLogical<*> && meta.contains(p.first) && !list.contains(p.second)) {
                        list.add(p.second!!)
                    }
                }
                return list
            }

            private fun metaInstances(meta: Collection<*>): List<Any> =
                foldPath(ArrayList<Any>(4)) { list, mtn -> mtn.collectMetaInstances(meta, list) }

            private fun hasOccurrence(occ: ConstraintOccurrence): Boolean =
                anyInPath { mtn -> mtn.occurrence === occ }         // referential equality!

            private inline fun anyInPath(predicate: (MatchTrieNode) -> Boolean): Boolean =
                foldPath(false) { b, mtn -> b || predicate(mtn) }

            private inline fun forEachInPath(proc: (MatchTrieNode) -> Unit) =
                foldPath(Unit) { b, mtn -> proc(mtn) }

            private inline fun <T> foldPath(initVal: T, step: (T, MatchTrieNode) -> T): T {
                var mtn: MatchTrieNode? = this
                var currVal = initVal
                while(mtn != null) {
                    currVal = step(currVal, mtn)
                    mtn = mtn.parent
                }
                return currVal
            }

        }

    }

    fun Constraint.probablyMatches(occ: ConstraintOccurrence): Boolean {
        if (this.symbol() != occ.constraint().symbol()) { return false }

        val cstArgIt = this.arguments().iterator()
        val occArgIt = occ.arguments().iterator()
        while (cstArgIt.hasNext() && occArgIt.hasNext()) {
            val cstArg = cstArgIt.next()
            val occArg = occArgIt.next()

            if (cstArg is Term && occArg is Term) {
                if (!Unification.unify(cstArg, occArg).isSuccessful) { return false }
            }

            if (cstArg !is MetaLogical<*> && occArg !is Logical<*>) {
                if (!(cstArg?.equals(occArg) ?: (occArg === null))) { return false }
            }
        }

        return true
    }

    enum class Result {
        DEFINITIVE,
        INCONCLUSIVE,
        NONE
    }

}






