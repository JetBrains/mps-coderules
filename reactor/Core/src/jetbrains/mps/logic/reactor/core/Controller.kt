package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.Program
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import com.github.andrewoma.dexx.collection.Map as PersMap


class Controller(
    val program: Program,
    val trace: EvaluationTrace = EvaluationTrace.NULL,
    val profiler: Profiler? = null,
    val storeView: StoreView? = null)
{

    private val ruleIndex: RuleIndex = RuleIndex(program.handlers())

    private val frameStack = FrameStack(storeView)

    // persistent (functional) object. reassigned on update
    private var propHistory = PropagationHistory()

    fun storeView(): StoreView = frameStack.current.store.view()

    fun activate(constraint: Constraint) {
        try {
            process(constraint.occurrence({ frameStack.current }, program, noLogicalContext))
        }
        catch (t: Throwable) {
            throw t
        }
    }

    fun reactivate(occurrence: ConstraintOccurrence) {
        try {
            process(occurrence)
        }
        catch (t: Throwable) {
            throw t
        }
    }

    /** For tests only */
    fun evaluate(occurrence: ConstraintOccurrence): StoreView {
        process(occurrence)
        return storeView()
    }

    private fun process(active: ConstraintOccurrence) {
        assert(active.isAlive())

        profiler.profile("process_${active.constraint().symbol()}") {

            if (!active.isStored()) {
                frameStack.current.store.store(active)
                trace.activate(active)
            } else {
                trace.reactivate(active)
            }

            for (match in Matcher(ruleIndex, active, frameStack.current.store, profiler)) {
                // TODO: paranoid check. should be isAlive() instead
                if (!active.isStored()) break
                if (!match.successful) continue
                // FIXME: move this check elsewhere
                if ((match.keptOccurrences + match.discardedOccurrences).any { co -> !co.isStored() }) continue
                if (propHistory.isRecorded(match)) continue

                trace.trying(match)

                for (prd in match.patternPredicates) {
                    tellPredicate(prd, match.logicalContext, trace)
                }

                if (!match.rule.checkGuard(match.logicalContext, trace)) {
                    trace.reject(match)
                    continue
                }

                trace.trigger(match)

                for (occ in match.discardedOccurrences) {
                    frameStack.current.store.discard(occ)
                    trace.discard(occ)
                }

                var failure: EvaluationFailureException? = null

                for (body in match.rule.bodyAlternation()) {
                    if (failure != null) {
                        trace.retry(match)
                        failure = null
                    }

                    // propHistory is now functional (persistent)
                    // we must reassign the field on every rule triggering
                    // and store on the stack the last value before rule activation in order to undo in case of failure
                    val savedPropHistory = propHistory
                    this.propHistory = propHistory.record(match)

                    val savedFrame = frameStack.current
                    frameStack.push()

                    try {
                        for (item in body) {
                            when (item) {
                                is Constraint -> process(item.occurrence({ frameStack.current }, program, match.logicalContext))
                                is Predicate -> tellPredicate(item, match.logicalContext, trace)
                                else -> throw IllegalArgumentException("unknown item ${item}")
                            }
                        }
                    }
                    catch (ex: EvaluationFailureException) {
                        failure = ex

                        // abrupt termination: restore the state
                        this.propHistory = savedPropHistory

                        frameStack.reset(savedFrame)
                    }

                    if (failure == null) {
                        // normal termination: skip the other alternatives
                        break
                    }
                }

                if (failure != null) {
                    throw failure
                }

                trace.finish(match)
            }

            // TODO: should be isAlive()
            if (active.isStored()) {
                trace.suspend(active)
            }

        }
    }

    private fun Rule.checkGuard(logicalContext: LogicalContext, trace: EvaluationTrace): Boolean =
        profiler.profile<Boolean>("checkGuard") {

            return guard().all { prd -> askPredicate(prd, logicalContext, trace) }

        }

    private fun askPredicate(predicate: Predicate, logicalContext: LogicalContext, trace: EvaluationTrace): Boolean =
        profiler.profile<Boolean>("ask_${predicate.symbol()}", {

            EvaluationSession.current().sessionSolver().ask(predicate, logicalContext)

        })

    private fun tellPredicate(predicate: Predicate, logicalContext: LogicalContext, trace: EvaluationTrace) =
        profiler.profile("tell_${predicate.symbol()}") {

            EvaluationSession.current().sessionSolver().tell(predicate, logicalContext)

        }

}

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> = TODO()
}
