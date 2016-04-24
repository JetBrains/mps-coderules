package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.unification.Substitution
import jetbrains.mps.unification.Unification
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

                val slots = keptConstraints.size + discardedConstraints.size
                for ((idx, cst) in keptConstraints.withIndex()) {
                    if (cst.symbol() == activeOcc.constraint().symbol()) {
                        add(MatchTrieNode(null, slots - 1, true, cst, activeOcc, idx))
                    }
                }
                for ((idx, cst) in discardedConstraints.withIndex()) {
                    if (cst.symbol() == activeOcc.constraint().symbol()) {
                        add(MatchTrieNode(null, slots - 1, false, cst, activeOcc, idx))
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
                                      val vacantSlots: Int,
                                      val keepConstraint: Boolean,
                                      val constraint: Constraint,
                                      val occurrence: ConstraintOccurrence,
                                      val index: Int)
    {

        var isMatched: Boolean = false
            set(value) {
                field = value
                if (value && nextSibling == null) {
                    parent?.isMatched = value
                }
                else if (!value) {
                    parent?.isMatched = value
                }
            }

        var nextSibling: MatchTrieNode? = null

        var firstChild: MatchTrieNode? = null

        private fun initChildren(): Unit {
            if (firstChild != null) {
                return
            }
            var prevSibling: MatchTrieNode? = null

            for (idx in 0..keptConstraints.size-1) if (!hasIndex(true, idx)) {
                for (auxOcc in lookupAuxOccurrences(keptConstraints[idx])) {
                    val next = keepAt(keptConstraints[idx], auxOcc, idx)
                    if (firstChild == null) {
                        this.firstChild = next
                    }
                    prevSibling?.nextSibling = next
                    prevSibling = next
                }
            }
            for (idx in 0..discardedConstraints.size-1) if (!hasIndex(false, idx)) {
                for (auxOcc in lookupAuxOccurrences(discardedConstraints[idx])) {
                    val next = discardAt(discardedConstraints[idx], auxOcc, idx)
                    if (firstChild == null) {
                        this.firstChild = next
                    }
                    prevSibling?.nextSibling = next
                    prevSibling = next
                }
            }
        }

        fun children(): Iterator<MatchTrieNode> =
            if (vacantSlots == 0)   {
                emptyList<MatchTrieNode>().iterator()
            }
            else {
                initChildren()

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

        val isLeaf: Boolean
            get() = vacantSlots == 0

        val match: PartialMatch by lazy(LazyThreadSafetyMode.NONE) {
            val parentMatch = parent?.match ?: PartialMatch(rule, keptConstraints.size, discardedConstraints.size)
            if (keepConstraint) parentMatch.keep(occurrence, index)
            else                parentMatch.discard(occurrence, index)
        }

        val meta2logical: PersMap<MetaLogical<*>, List<Logical<*>>> by lazy(LazyThreadSafetyMode.NONE) {
            var map = parent?.meta2logical ?: Maps.of()

            for ((cstArg, occArg) in constraint.arguments().zip(occurrence.arguments())) {
                if (cstArg is MetaLogical<*> && occArg is Logical<*>) {
                    val metaLogical = cstArg
                    val logical = occArg.findRoot()
                    val orig = map.get(metaLogical)
                    if (orig != null && !orig.contains(logical)) {
                        val copy = ArrayList<Logical<*>>(Math.max(4, orig.size + 1))
                        copy.addAll(orig)
                        copy.add(logical)
                        map = map.put(metaLogical, copy)
                    }
                    else if (orig == null) {
                        map = map.put(metaLogical, listOf(logical))
                    }
                }
            }

            map
        }

        private fun lookupAuxOccurrences(cst: Constraint): Iterable<ConstraintOccurrence> {
            return profiler.profile<Iterable<ConstraintOccurrence>>("lookupAuxOccurrences") {

                val cache = ArrayList<ConstraintOccurrence>(4)
                for (arg in cst.arguments()) {
                    when (arg) {
                        is MetaLogical<*>       ->  meta2logical.get(arg)?.forEach { log ->
                                                        cache.addAll(aux.forLogical(log))
                                                    }

                        is Any                  ->  cache.addAll(aux.forValue(arg))
                    }
                }
                if (cache.isNotEmpty()) {
                    cache.filter { occ -> occ.constraint().symbol() == cst.symbol() && !hasOccurrence(occ) }
                }
                else {
                    aux.forSymbol(cst.symbol()).filter { occ -> !hasOccurrence(occ) }
                }

            }
        }

        private fun hasOccurrence(occ: ConstraintOccurrence): Boolean =
            any { mtn -> mtn.occurrence == occ }

        private fun hasIndex(keep: Boolean, idx: Int): Boolean =
            any { mtn -> mtn.index == idx && mtn.keepConstraint == keep }

        private inline fun any(predicate: (MatchTrieNode) -> Boolean): Boolean {
            var mtn: MatchTrieNode? = this
            while(mtn != null) {
                if (predicate(mtn)) return true
                mtn = mtn.parent
            }
            return false
        }

        private fun keepAt(cst: Constraint, occ: ConstraintOccurrence, idx: Int) =
            MatchTrieNode(this, vacantSlots - 1, true, cst, occ, idx)

        private fun discardAt(cst: Constraint, occ: ConstraintOccurrence, idx: Int) =
            MatchTrieNode(this, vacantSlots - 1,false, cst, occ, idx)

    }

}

internal class PartialMatch(val rule: Rule) {

    internal lateinit var keptOccurrences: Array<ConstraintOccurrence?>
        private set

    internal lateinit var discardedOccurrences: Array<ConstraintOccurrence?>
        private set

    private lateinit var substitution: Substitution

    constructor(rule: Rule, keptSize: Int, discardedSize: Int) :
    this(rule)
    {
        this.keptOccurrences = arrayOfNulls(keptSize)
        this.discardedOccurrences = arrayOfNulls(discardedSize)
    }


    fun complete(profiler: Profiler? = null): Match {
        return profiler.profile<Match>("matches_${rule.tag()}") {

            val kept = keptOccurrences.asList() as List<ConstraintOccurrence>
            val discarded = discardedOccurrences.asList() as List<ConstraintOccurrence>

            this.substitution = Unification.unify(MatchTerm(rule, kept, discarded), RuleTerm(rule))
            if (substitution.isSuccessful) {
                Match(rule, substitution, kept, discarded)
            }
            else
                Match(rule, substitution, emptyList(), emptyList())

        }
    }

    internal fun keep(occ: ConstraintOccurrence, idx: Int): PartialMatch {
        val match = PartialMatch(rule)
        match.keptOccurrences = this.keptOccurrences.copyOf()
        match.keptOccurrences[idx] = occ
        match.discardedOccurrences = this.discardedOccurrences
        return match
    }

    internal fun discard(occ: ConstraintOccurrence, idx: Int): PartialMatch {
        val match = PartialMatch(rule)
        match.keptOccurrences = this.keptOccurrences
        match.discardedOccurrences = this.discardedOccurrences.copyOf()
        match.discardedOccurrences[idx] = occ
        return match
    }

}
