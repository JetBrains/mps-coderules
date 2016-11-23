package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import jetbrains.mps.unification.Term
import java.util.*
import com.github.andrewoma.dexx.collection.Map as PersMap

/**
 * @author Fedor Isakov
 */

internal class MatchTrie(val rule: Rule,
                         val activeOcc: ConstraintOccurrence,
                         val aux: OccurrenceIndex,
                         val profiler: Profiler?) : Iterable<PartialMatch>
{

    val keptConstraints = rule.headKept().toCollection(ArrayList(4))

    val discardedConstraints = rule.headReplaced().toCollection(ArrayList(4))

    val relatedSlots = ArrayList<BitSet>()

    init {
        val meta2slots = HashMap<MetaLogical<*>, BitSet>()
        (keptConstraints + discardedConstraints).forEachIndexed { slot, cst ->
            cst.arguments().forEach { arg ->
                if (arg is MetaLogical<*>) {
                    val bs = meta2slots[arg] ?: BitSet().apply { meta2slots[arg] = this }
                    bs.set(slot)
                }
            }
        }

        (keptConstraints + discardedConstraints).forEachIndexed { slot, cst ->
            val bs = BitSet()
            cst.arguments().forEach { arg ->
                if (arg is MetaLogical<*>) {
                    bs.or(meta2slots[arg])
                }
            }
            bs.clear(slot)
            relatedSlots.add(bs)
        }
     }

    private val firstRoot: MatchTrieNode? by lazy(LazyThreadSafetyMode.NONE) {
        profiler.profile<MatchTrieNode?>("initMatchTrie") {

            var first: MatchTrieNode? = null
            var prev: MatchTrieNode? = null
            for ((idx, cst) in keptConstraints.withIndex()) {
                if (cst.symbol() == activeOcc.constraint().symbol()) {
                    val next = MatchTrieNode(null, true, cst, activeOcc, idx)
                    if (first == null) {
                        first = next
                    }
                    prev?._nextSibling = next
                    prev = next
                }
            }
            for ((idx, cst) in discardedConstraints.withIndex()) {
                if (cst.symbol() == activeOcc.constraint().symbol()) {
                    val next = MatchTrieNode(null, false, cst, activeOcc, idx)
                    if (first == null) {
                        first = next
                    }
                    prev?._nextSibling = next
                    prev = next
                }
            }
            first

        }
    }

    override fun iterator() = object : Iterator<PartialMatch> {

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
            if (firstRoot == null) {
                return null
            }
            var mtn: MatchTrieNode? = firstRoot

            while (mtn != null) {
                if (mtn.isSeen) {
                    if (mtn.nextSibling == null) {
                        mtn.parent?.isSeen = true
                    }
                    mtn = mtn.nextSibling ?: mtn.parent
                }
                else if (mtn.isLeaf) {
                    mtn.isSeen = true
                    return mtn.match
                }
                else {
                    if (mtn.firstChild == null) {
                        mtn.isSeen = true
                    }
                    mtn = mtn.firstChild ?: mtn
                }
            }

            return null
        }
    }

    private inner class MatchTrieNode(val parent: MatchTrieNode?,
                                      val keepConstraint: Boolean,
                                      val constraint: Constraint,
                                      val occurrence: ConstraintOccurrence,
                                      val index: Int)
    {

        var isSeen: Boolean = false

        var _firstChild: MatchTrieNode? = null

        val firstChild: MatchTrieNode?
            get() {
                if (_firstChild == null) {
                    var first: MatchTrieNode? = null
                    var prev: MatchTrieNode? = null
                    for (next in firstChildrenBatch()) {
                        if (first == null) {
                            first = next
                        }
                        prev?._nextSibling = next
                        prev = next
                    }
                    this._firstChild = first
                }
                return _firstChild
            }

        var _nextSibling: MatchTrieNode? = null

        val nextSibling: MatchTrieNode?
            get() {
                if (_nextSibling == null && parent != null) {
                    var first: MatchTrieNode? = null
                    var prev: MatchTrieNode? = null
                    var prevSlot = if (keepConstraint) index else index + keptConstraints.size
                    while (first == null && prevSlot < keptConstraints.size + discardedConstraints.size) {
                        for (next in nextSiblingBatch(prevSlot++)) {
                            if (first == null) {
                                first = next
                            }
                            prev?._nextSibling = next
                            prev = next
                        }
                    }
                    this._nextSibling = first
                }
                return _nextSibling
            }

        val vacantSlots: BitSet by lazy(LazyThreadSafetyMode.NONE) {
            val result = BitSet()
            result.set(0, keptConstraints.size + discardedConstraints.size)
            foldNodes(result) { bits, mtn ->
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

        private fun firstChildrenBatch(): Iterable<MatchTrieNode> {
            val nextSlots = if (!relatedFirstVacantSlots.isEmpty) relatedFirstVacantSlots else vacantSlots
            val nextSlot = nextSlots.nextSetBit(0)
            if (nextSlot < 0) {
                return emptyList()
            }

            val keep = nextSlot < keptConstraints.size
            val nextIdx = if (keep) nextSlot else nextSlot - keptConstraints.size
            val nextCst = if (keep) keptConstraints[nextSlot] else discardedConstraints[nextIdx]

            val (result, auxOccurrences) = lookupAuxOccurrences(nextCst)
            when (result) {
                Result.DEFINITIVE   ->  parent
                Result.NONE         ->  this
                Result.INCONCLUSIVE ->  null
            }?.forEachNode { mtn -> mtn.isSeen = true }

            return auxOccurrences.map { auxOcc -> MatchTrieNode(this, keep, nextCst, auxOcc, nextIdx) }
        }

        private fun nextSiblingBatch(prevSlot: Int): Iterable<MatchTrieNode> {
            val nextSlot = parent?.let { p ->
                val parentNextSlots = if (!p.relatedFirstVacantSlots.isEmpty) p.relatedFirstVacantSlots else p.vacantSlots
                parentNextSlots.nextSetBit(prevSlot + 1)
            } ?: 0

            if (nextSlot < 0) {
                return emptyList()
            }

            val keep = nextSlot < keptConstraints.size
            val nextIdx = if (keep) nextSlot else nextSlot - keptConstraints.size
            val nextCst = if (keep) keptConstraints[nextSlot] else discardedConstraints[nextIdx]

            val (result, auxOccurrences) = lookupAuxOccurrences(nextCst)
            when (result) {
                Result.DEFINITIVE   ->  parent
                Result.NONE         ->  this
                Result.INCONCLUSIVE ->  null
            }?.forEachNode { mtn -> mtn.isSeen = true }

            return auxOccurrences.map { auxOcc -> MatchTrieNode(parent, keep, nextCst, auxOcc, nextIdx) }
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
            foldNodes(ArrayList<Any>(4)) { list, mtn -> mtn.collectMetaInstances(meta, list) }

        // the first component indicates the quality of the result:
        // DEFINITIVE indicates the only possible matches were returned
        // INCONCLUSIVE may yield some (ir-)relevant results
        // NONE means no results could have been found at all, so it's useless to attempt again with the same input
        private fun lookupAuxOccurrences(cst: Constraint): Pair<Result, Iterable<ConstraintOccurrence>> {
            return profiler.profile<Pair<Result, Iterable<ConstraintOccurrence>>> ("lookupAux_${cst.symbol()}") {

                val instances = metaInstances(cst.arguments())
                val values = instances.filter { arg ->
                    arg is Logical<*> && arg.isBound }.map { arg ->
                    (arg as Logical<*>).findRoot().value() }
                val args = ArrayList(instances + values +
                                     cst.arguments().filter { arg -> !(arg is MetaLogical<*>) })
                val cache = ArrayList<ConstraintOccurrence>(4)

                for (arg in args) {
                    when (arg) {
                        is Logical<*>   ->  cache.addAll(aux.forLogical(arg))

                        is Term         ->  cache.addAll(aux.forTerm(arg))

                        is Any          ->  cache.addAll(aux.forValue(arg))
                    }
                }
                if (cache.isNotEmpty()) {
                    Result.DEFINITIVE.to(cache.filter { occ -> occ.constraint().symbol() == cst.symbol() && !hasOccurrence(occ) })

                } else {
                    val hasRelated = relatedFirstVacantSlots == vacantSlots
                    val allArgsMetaLogicals = cst.arguments().all { a -> a is MetaLogical<*> }
                    val noArgs = cst.arguments().isEmpty()

                    if (noArgs || (allArgsMetaLogicals && !hasRelated)) {
                        Result.INCONCLUSIVE.to(aux.forSymbol(cst.symbol()).filter { occ -> !hasOccurrence(occ) })

                    }
                    else {
                        // all candidate occurrences should have been found by this time; if not, then there's none
                        Result.NONE.to(emptyList())
                    }
                }
            }
        }

        private fun hasOccurrence(occ: ConstraintOccurrence): Boolean =
            anyNode { mtn -> mtn.occurrence == occ }

        private inline fun anyNode(predicate: (MatchTrieNode) -> Boolean): Boolean =
            foldNodes(false) { b, mtn -> b || predicate(mtn) }

        private inline fun forEachNode(proc: (MatchTrieNode) -> Unit) =
            foldNodes(Unit) { b, mtn -> proc(mtn) }

        private inline fun <T> foldNodes(start: T, step: (T, MatchTrieNode) -> T): T {
            var mtn: MatchTrieNode? = this
            var curr = start
            while(mtn != null) {
                curr = step(curr, mtn)
                mtn = mtn.parent
            }
            return curr
        }

    }

    enum class Result {
        DEFINITIVE,
        INCONCLUSIVE,
        NONE
    }

}

