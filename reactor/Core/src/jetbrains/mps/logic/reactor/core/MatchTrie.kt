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

    private val firstRoot: MatchTrieNode? by lazy(LazyThreadSafetyMode.NONE) {
        profiler.profile<MatchTrieNode?>("initMatchTrie") {

            var first: MatchTrieNode? = null
            var prev: MatchTrieNode? = null
            for ((idx, cst) in keptConstraints.withIndex()) {
                if (cst.matches(activeOcc)) {
                    val next = MatchTrieNode(null, true, cst, activeOcc, idx)
                    if (first == null) {
                        first = next
                    }
                    prev?._nextSibling = next
                    prev = next
                }
            }
            for ((idx, cst) in discardedConstraints.withIndex()) {
                if (cst.matches(activeOcc)) {
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
                    mtn = mtn.firstChild
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

        val isLeaf: Boolean
            get() = vacantSlots.isEmpty

        val match: PartialMatch by lazy(LazyThreadSafetyMode.NONE) {
            val parentMatch = parent?.match ?: PartialMatch(rule, keptConstraints.size, discardedConstraints.size)
            if (keepConstraint) parentMatch.keep(occurrence, index)
            else                parentMatch.discard(occurrence, index)
        }

        private fun firstChildrenBatch(): Iterable<MatchTrieNode> {
            val nextSlot = vacantSlots.nextSetBit(0)
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
            val nextSlot = parent?.vacantSlots?.nextSetBit(prevSlot + 1) ?: 0
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

        private fun collectInstances(meta: MetaLogical<*>, list: ArrayList<Logical<*>>): ArrayList<Logical<*>> {
            val cstArgIt = constraint.arguments().iterator()
            val occArgIt = occurrence.arguments().iterator()
            while (cstArgIt.hasNext() && occArgIt.hasNext()) {
                val cstArg = cstArgIt.next()
                val occArg = occArgIt.next()
                if (cstArg == meta && occArg is Logical<*>) {
                    if (!list.contains(occArg)) {
                        list.add(occArg)
                    }
                }
            }
            return list
        }

        private fun instances(meta: MetaLogical<*>): Iterable<Logical<*>>? =
            foldNodes(ArrayList<Logical<*>>()) { list, mtn -> mtn.collectInstances(meta, list) }

        // the first component indicates the quality of the result:
        // DEFINITIVE indicates the only possible matches were returned
        // INCONCLUSIVE may yield some (ir-)relevant results
        // NONE means no results could have been found at all, so it's useless to attempt again with the same input
        private fun lookupAuxOccurrences(cst: Constraint): Pair<Result, Iterable<ConstraintOccurrence>> {
            return profiler.profile<Pair<Result, Iterable<ConstraintOccurrence>>> ("lookupAuxOccurrences") {

                val cache = ArrayList<ConstraintOccurrence>(4)
                for (arg in cst.arguments()) {
                    when (arg) {
                        is MetaLogical<*>   ->  instances(arg)?.forEach { log ->
                                                    cache.addAll(aux.forLogical(log).filter {occ -> cst.matches(occ)})
                                                }

                        is Term             ->  cache.addAll(aux.forTerm(arg).filter {occ -> cst.matches(occ)})

                        is Any              ->  cache.addAll(aux.forValue(arg).filter {occ -> cst.matches(occ)})
                    }
                }
                if (cache.isNotEmpty()) {
                    Result.DEFINITIVE.to(cache.filter { occ -> occ.constraint().symbol() == cst.symbol() && !hasOccurrence(occ) })
                }
                else if (cst.arguments().all { a -> a is MetaLogical<*> }) {
                    Result.INCONCLUSIVE.to(aux.forSymbol(cst.symbol()).filter { occ -> !hasOccurrence(occ) })
                }
                else {
                    // all candidate occurrences should have been found by this time; if not, then there's none
                    Result.NONE.to(emptyList())
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

