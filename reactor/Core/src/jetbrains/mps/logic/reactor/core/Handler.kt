package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
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

class Handler : Matcher.AuxOccurrences {

    val sessionSolver: SessionSolver

    val trace: EvaluationTrace

    val profiler: Profiler?

    private val rules = ArrayList<Rule>()

    private val occurrenceStore = OccurrenceStore()

    private val activeQueue = LinkedList<ConstraintOccurrence>()

    private val activationStack = LinkedList<Matcher.PartialMatch>()

    private val matcher: Matcher

    constructor(
        sessionSolver: SessionSolver,
        programRules: Iterable<Rule>,
        trace: EvaluationTrace = EvaluationTrace.NULL,
        profiler: Profiler? = null,
        // for testing purposes only
        occurrences: Iterable<ConstraintOccurrence>? = null)
    {
        this.sessionSolver = sessionSolver
        this.trace = trace
        this.profiler = profiler
        this.rules.addAll(programRules)
        this.matcher = Matcher(rules, this, profiler)
        if (occurrences != null) {
            this.occurrenceStore.addAll(occurrences)
        }
    }

    fun occurrences(): Set<ConstraintOccurrence> = occurrenceStore.allOccurrences().toSet()

    fun tell(constraint: Constraint) {
        try {
            queue(constraint.occurrence(this, noLogicalContext))
        }
        catch (t: Throwable) {
            for (pm in activationStack) {
                trace.trigger(pm)
            }
            throw t
        }
    }

    fun queue(occurrence: ConstraintOccurrence) {
        activeQueue.add(occurrence)
        while (activeQueue.isNotEmpty()) {
            process(activeQueue.poll())
        }
    }

    override fun findOccurrences(
                    constraint: Constraint,
                    acceptable: (ConstraintOccurrence) -> Boolean): Iterable<ConstraintOccurrence>
    {
        return profiler.profile<Iterable<ConstraintOccurrence>>("findOccurrences", {
            return occurrenceStore.allFor(constraint).filter {

                co -> constraint.matches(co, profiler) && acceptable(co)

            }

        })
    }

    private fun store(occ: ConstraintOccurrence) {
        occurrenceStore.add(occ)
    }

    private fun discard(occ: ConstraintOccurrence) {
        occurrenceStore.remove(occ)
        occ.terminate()
    }

    private fun activate(item: AndItem, logicalContext: LogicalContext) {
        profiler.profile("activate", {

            when (item) {
                is Constraint -> process(item.occurrence(this@Handler, logicalContext))
                is Predicate -> tellPredicate(item.invocation(logicalContext))
                else -> throw IllegalArgumentException("unknown item ${item}")
            }

        })
    }

    private fun process(active: ConstraintOccurrence) {
        profiler.profile("process_${active.constraint().symbol()}", {

            if (!active.isStored()) {
                store(active)
                trace.activate(active)
            } else {
                trace.reactivate(active)
            }

            for (match in matcher.lookupMatches(active).filter { pm -> pm.rule.checkGuard(pm.logicalContext()) }) {
                if (!active.isStored()) break
                if (match.occurrences().any { co -> !co.isStored() }) continue

                activationStack.push(match)
                trace.trigger(match)

                for ((cst, occ) in match.discarded) {
                    discard(occ)
                    trace.discard(occ)
                }

                for (item in match.rule.body()) {
                    activate(item, match.logicalContext())
                }

                trace.exit(match.rule)
                activationStack.pop()
            }

            if (active.isStored()) {
                trace.suspend(active)
            }

        })
    }

    private fun Rule.checkGuard(logicalContext: LogicalContext): Boolean =
        profiler.profile<Boolean>("checkGuard", {
            return guard().all { prd -> askPredicate(prd.invocation(logicalContext)) }
        })

    private fun askPredicate(invocation: PredicateInvocation): Boolean =
        profiler.profile<Boolean>("ask_${invocation.predicate().symbol()}", {
            return sessionSolver.ask(invocation.predicate().symbol(), * invocation.arguments().toTypedArray())
        })

    private fun tellPredicate(invocation: PredicateInvocation) {
        profiler.profile("tell_${invocation.predicate().symbol()}", {
            sessionSolver.tell(invocation.predicate().symbol(), * invocation.arguments().toTypedArray())
        })
    }

    private fun ConstraintOccurrence.isStored(): Boolean =
        occurrenceStore.isStored(this)

}

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(logicalPattern: LogicalPattern<V>): Logical<V> = TODO()
}

private fun Constraint.occurrence(handler: Handler, context: LogicalContext): ConstraintOccurrence =
    MemConstraintOccurrence(handler, this, occurrenceArguments(context))

private fun Predicate.invocation(logicalContext: LogicalContext): PredicateInvocation = object: PredicateInvocation {

        override fun predicate(): Predicate = this@invocation

        override fun arguments(): Collection<*> = invocationArguments(logicalContext)
    }

fun ConstraintOccurrence.terminate() {
    if (this is MemConstraintOccurrence) {
        _terminate()
    }
}

private data class MemConstraintOccurrence(val handler: Handler, val constraint: Constraint, val arguments: List<*>, val id: Int) :
    ConstraintOccurrence,
    LogicalValueObserver
{

    var alive = true

    companion object {
        val random = Random()
    }

    constructor(handler: Handler, constraint: Constraint, arguments: Collection<*>) :
        this(handler, constraint, ArrayList(arguments), random.nextInt())
    {
        for (a in arguments) {
            if (a is Logical<*>) {
                a.addObserver(this)
            }
        }
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): Collection<*> = arguments

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
