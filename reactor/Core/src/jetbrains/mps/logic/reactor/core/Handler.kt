package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.rule.Rule
import java.util.*

/**
 * @author Fedor Isakov
 */

class Handler {

    private val sessionSolver: SessionSolver
    private val rules : MutableList<Rule> = ArrayList<Rule>()
    private val stored : MutableList<ConstraintOccurrence> = ArrayList<ConstraintOccurrence>()

    constructor(
        sessionSolver: SessionSolver,
        programRules: Iterable<Rule>,
        // for testing purposes only
        occurrences: Iterable<ConstraintOccurrence>? = null)
    {
        this.sessionSolver = sessionSolver
        this.rules.addAll(programRules)
        if (occurrences != null) {
            this.stored.addAll(occurrences)
        }
    }

    fun occurrences(): Set<ConstraintOccurrence> = stored.toSet()

    fun process(active: ConstraintOccurrence) {
        store(active)

        val matcher = object : Matcher(rules) {
            override fun findOccurrences(constraint: Constraint, acceptable: (ConstraintOccurrence) -> Boolean):
                Iterable<ConstraintOccurrence> =
                    stored.filter { co -> constraint.matches(co) && acceptable(co) }
        }

        for (match in matcher.lookupMatches(active).filter { pm -> pm.rule.checkGuard(pm.logicalContext()) }) {
            if (!active.isAlive()) return
            if (match.occurrences().any{ co -> !co.isAlive() }) continue

            for ((cst, occ) in match.discarded) {
                discard(occ)
            }

            for (item in match.rule.body()) {
                activate(item, match.logicalContext())
            }
        }
    }

    private fun store(occ: ConstraintOccurrence) {
        stored.add(occ)
    }

    private fun discard(occ: ConstraintOccurrence) {
        stored.remove(occ)
    }

    private fun activate(item: AndItem, logicalContext: LogicalContext) {
        when(item) {
            is Constraint       -> process(item.occurrence(logicalContext))
            is Predicate        -> tellPredicate(item.invocation(logicalContext))
            else                -> throw IllegalArgumentException("unknown item ${item}")
        }
    }

    private fun Rule.checkGuard(logicalContext: LogicalContext): Boolean =
        guard().all { prd -> askPredicate(prd.invocation(logicalContext)) }

    private fun askPredicate(invocation: PredicateInvocation): Boolean =
        sessionSolver.ask(invocation.predicate().symbol(), * invocation.arguments().toTypedArray())

    private fun tellPredicate(invocation: PredicateInvocation) {
        sessionSolver.tell(invocation.predicate().symbol(), * invocation.arguments().toTypedArray())
    }

    private fun ConstraintOccurrence.isAlive(): Boolean =
        stored.contains(this)

}
