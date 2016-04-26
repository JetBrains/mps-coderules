package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import java.util.*
import com.github.andrewoma.dexx.collection.Map as PersMap

/**
 * @author Fedor Isakov
 */

internal class MatchTrie(val rule: Rule,
                         val activeOcc: ConstraintOccurrence,
                         val aux: OccurrenceIndex,
                         val profiler: Profiler?) : Sequence<PartialMatch>
{

    val keptConstraints = rule.headKept().toCollection(ArrayList(4))

    val discardedConstraints = rule.headReplaced().toCollection(ArrayList(4))

    private val roots: List<MatchTrieNode> by lazy(LazyThreadSafetyMode.NONE) {
        ArrayList<MatchTrieNode>(4).apply {
            profiler.profile("initMatchTrie") {

                for ((idx, cst) in keptConstraints.withIndex()) {
                    if (cst.matches(activeOcc)) {
                        add(MatchTrieNode(null, true, cst, activeOcc, idx))
                    }
                }
                for ((idx, cst) in discardedConstraints.withIndex()) {
                    if (cst.matches(activeOcc)) {
                        add(MatchTrieNode(null, false, cst, activeOcc, idx))
                    }
                }

            }
        }
    }

    override fun iterator() = object : Iterator<PartialMatch> {

        val stack = LinkedList<Iterator<MatchTrieNode>>()

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
            stack.clear()
            stack.push(roots.iterator())

            while(stack.isNotEmpty()) {
                val it = stack.peek()
                if (!it.hasNext()) {
                    stack.pop()
                    continue
                }
                val mtn = it.next()
                if (mtn.parent?.isMatched ?: false) {
                    stack.pop()
                    continue
                }
                if (mtn.isMatched) {
                    continue
                }
                if (mtn.isLeaf) {
                    mtn.isMatched = true
                    return mtn.match
                }
                else {
                    stack.push(mtn.children())
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

        var isMatched: Boolean = false

        val firstChild: MatchTrieNode? by lazy(LazyThreadSafetyMode.NONE) {
            var first: MatchTrieNode? = null
            var prev: MatchTrieNode? = null
            for (next in firstChildrenBatch()) {
                if (first == null) {
                    first = next
                }
                prev?._nextSibling = next
                prev = next
            }
            first
        }

        var _nextSibling: MatchTrieNode? = null

        val nextSibling: MatchTrieNode? by lazy(LazyThreadSafetyMode.NONE) {
            if (_nextSibling != null) {
                _nextSibling
            }
            else {
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
                first
            }
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

            val (success, lookupAuxOccurrences) = lookupAuxOccurrences(nextCst)
            if (!success) {
                forEachNode { mtn -> mtn.isMatched = true }
                return emptyList()
            }
            else {
                return lookupAuxOccurrences.map { auxOcc ->
                    MatchTrieNode(this, keep, nextCst, auxOcc, nextIdx)
                }
            }
        }

        private fun nextSiblingBatch(prevSlot: Int): Iterable<MatchTrieNode> {
            val nextSlot = parent?.vacantSlots?.nextSetBit(prevSlot + 1) ?: 0
            if (nextSlot < 0) {
                return emptyList()
            }

            val keep = nextSlot < keptConstraints.size
            val nextIdx = if (keep) nextSlot else nextSlot - keptConstraints.size
            val nextCst = if (keep) keptConstraints[nextSlot] else discardedConstraints[nextIdx]

            val (success, lookupAuxOccurrences) = lookupAuxOccurrences(nextCst)
            if (!success) {
                forEachNode { mtn -> mtn.isMatched = true }
                return emptyList()
            }
            else {
                return lookupAuxOccurrences.map { auxOcc ->
                    MatchTrieNode(parent, keep, nextCst, auxOcc, nextIdx)
                }
            }
        }

        fun children(): Iterator<MatchTrieNode> =
            if (isLeaf)   {
                emptyList<MatchTrieNode>().iterator()
            }
            else {
                object: Iterator<MatchTrieNode> {
                    var next: MatchTrieNode? = firstChild

                    override fun hasNext(): Boolean = next != null

                    override fun next(): MatchTrieNode {
                        val tmp = next
                        if (tmp != null)  {
                            this.next = next?.nextSibling
                            return tmp
                        }
                        else {
                            throw NoSuchElementException()
                        }
                    }
                }
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

        // the first component indicates that the results (if any) have been looked up
        // if false, it means no results could have potentially been found at all,
        // so it's useless to attempt again with the same input
        private fun lookupAuxOccurrences(cst: Constraint): Pair<Boolean, Iterable<ConstraintOccurrence>> {
            return profiler.profile<Pair<Boolean, Iterable<ConstraintOccurrence>>> ("lookupAuxOccurrences") {

                val cache = ArrayList<ConstraintOccurrence>(4)
                for (arg in cst.arguments()) {
                    when (arg) {
                        is MetaLogical<*>   ->  instances(arg)?.forEach { log ->
                                                    cache.addAll(aux.forLogical(log).filter {occ -> cst.matches(occ)})
                                                }

                        is Any              ->  cache.addAll(aux.forValue(arg).filter {occ -> cst.matches(occ)})
                    }
                }
                if (cache.isNotEmpty()) {
                    true.to(cache.filter { occ -> occ.constraint().symbol() == cst.symbol() && !hasOccurrence(occ) })
                }
                else if (cst.arguments().all { a -> a is MetaLogical<*> }) {
                    true.to(aux.forSymbol(cst.symbol()).filter { occ -> !hasOccurrence(occ) })
                }
                else {
                    // all candidate occurrences should have been found by this time; if not, then there's none
                    false.to(emptyList())
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

}

