package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import java.util.*

/**
 * @author Fedor Isakov
 */

class Handler {

    private val occurrenceStore = OccurrenceStore()

    private var propHistory = PropagationHistory()

    private val matcher: Matcher

    private val trace: EvaluationTrace

    private val profiler: Profiler?

    constructor(
        programRules: Iterable<Rule>,
        trace: EvaluationTrace = EvaluationTrace.NULL,
        profiler: Profiler? = null,
        // for testing purposes only
        occurrences: Iterable<ConstraintOccurrence>? = null)
    {
        this.trace = trace
        this.profiler = profiler
        this.matcher = Matcher(programRules, profiler)
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
        process(occurrence)
    }

    private fun process(active: ConstraintOccurrence) {
        profiler.profile("process_${active.constraint().symbol()}", {

            if (!active.isStored()) {
                occurrenceStore.store(active)
                trace.activate(active)
            } else {
                trace.reactivate(active)
            }

            val lookupMatches = matcher.lookupMatches(active, occurrenceStore, propHistory)
            for (match in lookupMatches) {
                // TODO: paranoid check. should be isAlive() instead
                if (!active.isStored()) break
                if (match.occurrences().any { co -> !co.isStored() }) continue

                trace.trying(match)
                if (!match.rule.checkGuard(match.logicalContext(), trace)) {
                    trace.reject(match)
                    continue
                }

                trace.trigger(match)
                for ((cst, occ) in match.discarded) {
                    occurrenceStore.discard(occ)
                    trace.discard(occ)
                }

                // propHistory is now functional (persistent)
                // we must reassign the field on every rule triggering
                // and store on the stack the last value before rule activation in order to undo in case of failure
                val savedPropHistory = propHistory
                this.propHistory = propHistory.record(match)

                for (item in match.rule.body()) {
                    try {
                        when (item) {
                            is Constraint -> process(item.occurrence(this@Handler, match.logicalContext()))
                            is Predicate -> tellPredicate(item.invocation(match.logicalContext()), trace)
                            else -> throw IllegalArgumentException("unknown item ${item}")
                        }
                    }
                    catch (ex: Throwable) {
                        // abrupt termination: restore the state
                        this.propHistory = savedPropHistory
                        throw ex
                    }
                    finally {

                    }
                }

                trace.finish(match)
            }

            // TODO: should be isAlive()
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
            val result = EvaluationSession.current().sessionSolver().ask(invocation)
//            trace.ask(result, invocation)
            return result

        })

    private fun tellPredicate(invocation: PredicateInvocation, trace: EvaluationTrace) {
        profiler.profile("tell_${invocation.predicate().symbol()}", {

            // TODO: provide SessionSolver as part of evaluation session
//            trace.tell(invocation)
            EvaluationSession.current().sessionSolver().tell(invocation)

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
