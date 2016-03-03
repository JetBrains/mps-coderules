package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
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

    private val activationStack = LinkedList<PartialMatch>()

    private val matcher: Matcher

    private var processing = false

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
            this.occurrenceStore.storeAll(occurrences)
        }
    }

    fun occurrences(): Set<ConstraintOccurrence> = occurrenceStore.allOccurrences().toSet()

    fun tell(constraint: Constraint) {
        try {
            queue(constraint.occurrence(this, noLogicalContext))
        }
        catch (t: Throwable) {
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
        symbol: ConstraintSymbol,
        logicals: Iterable<Logical<*>>,
        values: Iterable<Any>,
        acceptable: (ConstraintOccurrence) -> Boolean): Sequence<ConstraintOccurrence>
    {
        return profiler.profile<Sequence<ConstraintOccurrence>>("findOccurrences", {

            val occs = if (!logicals.any() && !values.any())
                occurrenceStore.forSymbol(symbol)
            else
                (logicals.asSequence().flatMap { log -> occurrenceStore.forLogical(log) } +
                 values.asSequence().flatMap { value -> occurrenceStore.forValue(value) }).
                    filter { co -> co.constraint().symbol() == symbol }

            occs.filter { acceptable(it) }

        })
    }

    private fun process(active: ConstraintOccurrence) {
        profiler.profile("process_${active.constraint().symbol()}", {

            if (!active.isStored()) {
                occurrenceStore.store(active)
                trace.activate(active)
            } else {
                trace.reactivate(active)
            }

            val lookupMatches = matcher.lookupMatches(active)
            for (match in lookupMatches.filter { pm -> pm.rule.checkGuard(pm.logicalContext()) }) {
                if (!active.isStored()) break
                if (match.occurrences().any { co -> !co.isStored() }) continue

                activationStack.push(match)
                trace.trigger(match)

                for ((cst, occ) in match.discarded) {
                    occurrenceStore.discard(occ)
                    trace.discard(occ)
                }

                for (item in match.rule.body()) {
                    when (item) {
                        is Constraint -> process(item.occurrence(this@Handler, match.logicalContext()))
                        is Predicate -> tellPredicate(item.invocation(match.logicalContext()))
                        else -> throw IllegalArgumentException("unknown item ${item}")
                    }
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

}

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> = TODO()
}

private fun Predicate.invocation(logicalContext: LogicalContext): PredicateInvocation = object: PredicateInvocation {

        override fun predicate(): Predicate = this@invocation

        override fun arguments(): Collection<*> = invocationArguments(logicalContext)
    }
