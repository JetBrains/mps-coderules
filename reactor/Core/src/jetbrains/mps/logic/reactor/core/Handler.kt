package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.program.*
import java.util.*

/**
 * @author Fedor Isakov
 */

class Handler {

    val sessionSolver: SessionSolver

    private val rules : MutableList<Rule> = ArrayList<Rule>()

    private val stored : MutableList<ConstraintOccurrence> = ArrayList<ConstraintOccurrence>()

    private val activeQueue : Queue<ConstraintOccurrence> = LinkedList<ConstraintOccurrence>()

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

    fun queue(occurrence: ConstraintOccurrence) {
        activeQueue.add(occurrence)
        while (activeQueue.isNotEmpty()) {
            process(activeQueue.poll())
        }
    }

    private fun process(active: ConstraintOccurrence) {
        if (!active.isStored()) {
            store(active)
        }

        val matcher = object : Matcher(rules) {
            override fun findOccurrences(constraint: Constraint, acceptable: (ConstraintOccurrence) -> Boolean):
                Iterable<ConstraintOccurrence> =
                    stored.filter { co -> constraint.matches(co) && acceptable(co) }
        }

        for (match in matcher.lookupMatches(active).filter { pm -> pm.rule.checkGuard(pm.logicalContext()) }) {
            if (!active.isStored()) return
            if (match.occurrences().any{ co -> !co.isStored() }) continue

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
        occ.terminate()
    }

    private fun activate(item: AndItem, logicalContext: LogicalContext) {
        when(item) {
            is Constraint       -> process(item.occurrence(this@Handler, logicalContext))
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

    private fun ConstraintOccurrence.isStored(): Boolean =
        stored.contains(this)

}

private fun AndItem.argumentValues(context: LogicalContext): List<Any> =
    arguments().map { arg -> if (arg is LogicalPattern<*>) context.valueFor(arg) else arg!! }.toList()


private fun Constraint.occurrence(handler: Handler, context: LogicalContext): ConstraintOccurrence =
    MemConstraintOccurrence(handler, this, argumentValues(context))


private fun Predicate.invocation(logicalContext: LogicalContext): PredicateInvocation {
    return object: PredicateInvocation {

        override fun predicate(): Predicate = this@invocation

        override fun arguments(): Collection<Any> = argumentValues(logicalContext)
    }
}

fun ConstraintOccurrence.terminate() {
    if (this is MemConstraintOccurrence) {
        _terminate()
    }
}

private data class MemConstraintOccurrence(val handler: Handler, val constraint: Constraint, val arguments: List<Any>, val id: Int) :
    ConstraintOccurrence,
    LogicalValueObserver
{

    var alive = true

    companion object {
        val random = Random()
    }

    constructor(handler: Handler, constraint: Constraint, arguments: List<Any>) :
        this(handler, constraint, arguments, random.nextInt())
    {
        for (a in arguments) {
            if (a is Logical<*>) {
                a.addObserver(this)
            }
        }
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): Collection<Any> = arguments

    override fun valueUpdated(logical: Logical<*>) {
        handler.queue(this)
    }


    fun _terminate() {
        for (a in arguments) {
            if (a is Logical<*>) {
                a.removeObserver(this)
            }
        }
        alive = false
    }


    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}
