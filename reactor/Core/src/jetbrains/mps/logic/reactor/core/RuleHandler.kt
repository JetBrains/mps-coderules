package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.rule.Rule
import java.util.*

/**
 * @author Fedor Isakov
 */

class RuleHandler {

    private val sessionSolver: SessionSolver
    private val occurrenceFactory: (Constraint) -> ConstraintOccurrence
    private val rules : MutableList<Rule> = ArrayList<Rule>()
    private val stored : MutableList<ConstraintOccurrence> = ArrayList<ConstraintOccurrence>()

    constructor(
        sessionSolver: SessionSolver,
        programRules: Iterable<Rule>,
        occurrenceFactory: (Constraint) -> ConstraintOccurrence,
        // for testing purposes only
        occurrences: Iterable<ConstraintOccurrence>? = null)
    {
        this.sessionSolver = sessionSolver
        this.occurrenceFactory = occurrenceFactory
        this.rules.addAll(programRules)
        if (occurrences != null) {
            this.stored.addAll(occurrences)
        }
    }

    fun occurrences(): Set<ConstraintOccurrence> = stored.toSet()

    fun process(active: ConstraintOccurrence): Boolean {
        stored.add(active)
        val match = lookupMatches(active).find { pm -> pm.isGuardSatisfied() }

        if (match != null) {
            for ((cst, occ) in match.discarded) {
                discard(occ)
            }
            for (item in match.rule.body()) {
                activate(item)
            }

            return false
        }
        else return true
    }

    private fun discard(occ: ConstraintOccurrence) {
        stored.remove(occ)
    }

    private fun activate(item: AndItem) {
        when(item) {
            is Constraint       -> process(activate(item))
            is Predicate        -> tellPredicate(item)
            else                -> throw IllegalArgumentException("unknown item ${item}")
        }
    }

    private fun activate(constraint: Constraint): ConstraintOccurrence = occurrenceFactory(constraint)

    private fun tellPredicate(predicate: Predicate) {
        sessionSolver.tell(predicate.symbol(), * predicate.arguments().toTypedArray())
    }

    fun lookupMatches(occ: ConstraintOccurrence): Iterable<PartialMatch> {
        val partialMatches = rules.flatMap { r ->
            val matchedKept = r.headKept().filter { cst -> cst.matches(occ) }
            val matchedDiscarded = r.headReplaced().filter { cst -> cst.matches(occ) }

            matchedKept.map { cst -> PartialMatch(r).keep(cst, occ) } +
            matchedDiscarded.map { cst -> PartialMatch(r).discard(cst, occ) }
        }
        return partialMatches.flatMap { pm -> completeMatch(pm) }
    }

    private fun completeMatch(match: PartialMatch) : Iterable<PartialMatch> {
        if (!match.isPartial()) return listOf(match)

        val keptToSatisfy = match.rule.headKept().filter { cst -> !match.kept.any { p -> cst === p.first } }
        val matchesFromKept = keptToSatisfy.flatMap { cst ->
            findOccurrences(cst, { occ -> !match.hasOccurrence(occ) }).flatMap { occ -> completeMatch(match.keep(cst, occ)) }
        }

        val discardedToSatisfy = match.rule.headReplaced().filter { cst -> !match.discarded.any { p -> cst === p.first } }
        val matchesFromDiscarded = discardedToSatisfy.flatMap { cst ->
            findOccurrences(cst, { occ -> !match.hasOccurrence(occ) }).flatMap { occ -> completeMatch(match.discard(cst, occ)) }
        }

        return matchesFromKept + matchesFromDiscarded
    }

    private fun findOccurrences(constraint: Constraint, predicate: (ConstraintOccurrence) -> Boolean) : Iterable<ConstraintOccurrence> =
        stored.filter { co -> constraint.matches(co) && predicate(co) }

    class PartialMatch(val rule: Rule) {

        var kept = ConsList.empty<Pair<Constraint, ConstraintOccurrence>>()
            private set
        var discarded = ConsList.empty<Pair<Constraint, ConstraintOccurrence>>()
            private set

        private constructor(
            original : PartialMatch,
            keep: Pair<Constraint, ConstraintOccurrence>?,
            discard: Pair<Constraint, ConstraintOccurrence>?) : this(original.rule)
        {
            kept = if (keep != null) original.kept.append(keep) else original.kept
            discarded = if (discard != null) original.discarded.append(discard) else original.discarded
        }

        fun clone() : PartialMatch = PartialMatch(this, null, null)

        fun keep (constraint: Constraint, occ: ConstraintOccurrence) = PartialMatch(this, Pair(constraint, occ), null)

        fun discard (constraint: Constraint, occ: ConstraintOccurrence) = PartialMatch(this, null, Pair(constraint, occ))

        fun hasOccurrence(occ: ConstraintOccurrence): Boolean {
            return kept.any { p -> p.second === occ} || discarded.any { p -> p.second === occ }
        }

        fun isPartial() : Boolean =
            rule.headKept().any { cst -> !kept.any { p -> p.first === cst } } ||
            rule.headReplaced().any { cst -> !discarded.any { p -> p.first === cst } }

        fun isGuardSatisfied() : Boolean = true
    }

}

/**
 * True iff the constraint matches the occurrence.
 */
fun Constraint.matches(that: ConstraintOccurrence): Boolean {
    if (symbol() != that.constraint().symbol())
        return false
    else
        return arguments() == that.arguments()
}
