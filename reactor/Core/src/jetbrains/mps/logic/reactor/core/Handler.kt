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

    fun process(active: ConstraintOccurrence): Boolean {
        stored.add(active)

        val matcher = object : Matcher(rules) {
            override fun findOccurrences(constraint: Constraint, acceptable: (ConstraintOccurrence) -> Boolean):
                Iterable<ConstraintOccurrence> =
                    stored.filter { co -> constraint.matches(co) && acceptable(co) }
        }

        val match = matcher.lookupMatches(active).find { pm -> pm.rule.guard().all { prd -> askPredicate(prd) } }

        if (match != null) {
            for ((cst, occ) in match.discarded) {
                discard(occ)
            }

            for (item in match.rule.body()) {
                activate(item, match.logicalContext())
            }

            return false
        }
        else return true
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

    private fun askPredicate(predicate: Predicate): Boolean =
        sessionSolver.ask(predicate.symbol(), * predicate.arguments().toTypedArray())

    private fun tellPredicate(invocation: PredicateInvocation) {
        sessionSolver.tell(invocation.predicate().symbol(), * invocation.arguments().toTypedArray())
    }

}

interface HandlingContext {

    fun substitute(logicalPattern: LogicalPattern<*>) : Any

}