package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.rule.Rule
import java.util.*

/**
 * @author Fedor Isakov
 */

class Handler {

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

        val matcher = object : Matcher(rules) {
            override fun findOccurrences(constraint: Constraint, predicate: (ConstraintOccurrence) -> Boolean):
                Iterable<ConstraintOccurrence> =
                    stored.filter { co -> constraint.matches(co) && predicate(co) }
        }

        val match = matcher.lookupMatches(active).find { pm -> pm.rule.guard().all { prd -> askPredicate(prd) } }

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

    private fun askPredicate(predicate: Predicate): Boolean {
        return sessionSolver.ask(predicate.symbol(), * predicate.arguments().toTypedArray())
    }

    private fun tellPredicate(predicate: Predicate) {
        sessionSolver.tell(predicate.symbol(), * predicate.arguments().toTypedArray())
    }

}
