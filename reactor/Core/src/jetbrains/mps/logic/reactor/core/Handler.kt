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

class Handler : Matcher.AuxOccurrencesLookup {

    val sessionSolver: SessionSolver

    val trace: EvaluationTrace

    val profiler: Profiler?

    private val rules = ArrayList<Rule>()

    private val occurrenceStore = OccurrenceStore()

    private val activeQueue = LinkedList<ConstraintOccurrence>()

    private val activationStack = LinkedList<PartialMatch>()

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
            this.occurrenceStore.storeAll(occurrences)
        }
    }

    fun allOccurrences(): Set<ConstraintOccurrence> =
        occurrenceStore.allOccurrences().toSet()

    fun constraintSymbols(): Set<ConstraintSymbol> =
        occurrenceStore.allOccurrences().map { co -> co.constraint().symbol() }.toSet()

    fun occurrences(symbol: ConstraintSymbol): Set<ConstraintOccurrence> =
        occurrenceStore.allOccurrences().filter { co -> co.constraint().symbol() == symbol }.toSet()

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

    override fun lookupAuxOccurrences(
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
            for (match in lookupMatches) {
                // FIXME: paranoid check. should be isAlive() instead
                if (!active.isStored()) break
                if (match.occurrences().any { co -> !co.isStored() }) continue

                trace.trying(match)
                if (!match.rule.checkGuard(match.logicalContext(), trace)) {
                    trace.reject(match)
                    continue
                }

                activationStack.push(match)
                trace.trigger(match)
                matcher.recordPropagation(match)

                for ((cst, occ) in match.discarded) {
                    occurrenceStore.discard(occ)
                    trace.discard(occ)
                }

                for (item in match.rule.body()) {
                    when (item) {
                        is Constraint -> process(item.occurrence(this@Handler, match.logicalContext()))
                        is Predicate -> tellPredicate(item.invocation(match.logicalContext()), trace)
                        else -> throw IllegalArgumentException("unknown item ${item}")
                    }
                }

                trace.finish(match)
                activationStack.pop()
            }

            // FIXME: should be isAlive()
            if (active.isStored()) {
                trace.suspend(active)
            }

        })
    }

    private fun Rule.checkGuard(logicalContext: LogicalContext, trace: EvaluationTrace): Boolean =
        profiler.profile<Boolean>("checkGuard", {

            return guard().all { prd -> askPredicate(prd.invocation(logicalContext), trace) }

        })

    private fun askPredicate(invocation: PredicateInvocation, trace: EvaluationTrace): Boolean =
        profiler.profile<Boolean>("ask_${invocation.predicate().symbol()}", {

            // TODO: provide SessionSolver as part of evaluation session
            val result = sessionSolver.ask(invocation)
//            trace.ask(result, invocation)
            return result

        })

    private fun tellPredicate(invocation: PredicateInvocation, trace: EvaluationTrace) {
        profiler.profile("tell_${invocation.predicate().symbol()}", {

            // TODO: provide SessionSolver as part of evaluation session
//            trace.tell(invocation)
            sessionSolver.tell(invocation)

        })
    }

}

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> = TODO()
}

private fun Predicate.invocation(logicalContext: LogicalContext): PredicateInvocation = object: PredicateInvocation {

        override fun predicate(): Predicate = this@invocation

        override fun arguments(): List<*> = invocationArguments(logicalContext).toList()
    }
