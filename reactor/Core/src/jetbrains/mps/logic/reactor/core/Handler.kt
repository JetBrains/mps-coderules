package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
import com.github.andrewoma.dexx.collection.Map as PersMap
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.*
import java.util.*

/**
 * @author Fedor Isakov
 */

class FrameStack : LogicalObserver  {

    lateinit var current: HandlerFrame

    val observing = HashSet<IdWrapper<Logical<*>>>()

    constructor() {
        this.current = HandlerFrame(this)
    }

    fun push(): HandlerFrame {
        val frame = HandlerFrame(this, current)
        this.current = frame
        return frame
    }

    fun reset(frame: HandlerFrame): Unit {
        this.current = frame
    }

    fun addObserver(logical: Logical<*>) {
        val token = IdWrapper(logical)
        if (!observing.contains(token)) {
            logical.addObserver(this)
            observing.add(token)
        }
    }

    fun removeObserver(logical: Logical<*>) {
        // NOP
        // yes, keep listening, the updates are still filtered down the stream
    }

    override fun valueUpdated(logical: Logical<*>) {
        current.valueUpdated(logical)
    }

    override fun parentUpdated(logical: Logical<*>) {
        current.parentUpdated(logical)
    }
}


class HandlerFrame : LogicalObserver, LogicalObserverProxy
{
    val prev: HandlerFrame?

    val store: OccurrenceStore

    private var stack: FrameStack

    private lateinit var observers: PersMap<IdWrapper<Logical<*>>, ConsList<LogicalObserver>>

    constructor(stack: FrameStack, prev: HandlerFrame? = null)
    {
        this.stack = stack
        this.prev = prev
        this.observers = prev?.observers ?: Maps.of()
        this.store = OccurrenceStore(prev?.store ?: OccurrenceStore(this), this)
    }

    override fun addObserver(logical: Logical<*>, obs: LogicalObserver) {
        val logicalId = IdWrapper(logical)
        if (!observers.containsKey(logicalId)) {
            stack.addObserver(logical)
        }
        this.observers = observers.put(logicalId,
            observers[logicalId]?.prepend(obs) ?: cons(obs))
    }

    override fun removeObserver(logical: Logical<*>, obs: LogicalObserver) {
        val logicalId = IdWrapper(logical)
        observers[logicalId].remove(obs)?.let { newList ->
            this.observers = observers.put(logicalId, newList)
            if (newList.isEmpty) {
                stack.removeObserver(logical)
            }
        }
    }

    override fun valueUpdated(logical: Logical<*>) {
        observers[IdWrapper(logical)]?.let { list ->
            for (obs in list) {
                obs.valueUpdated(logical)
            }
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        observers[IdWrapper(logical)]?.let { list ->
            for (obs in list) {
                obs.parentUpdated(logical)
            }
        }
    }

}


class Handler {

    companion object {
        lateinit var current: Handler
            private set
    }

//    private val occurrenceStore = OccurrenceStore()

    private val frameStack = FrameStack()

    // persistent (functional) object. reassigned on update
    private var propHistory = PropagationHistory()

    val ruleIndex: RuleIndex

    private val trace: EvaluationTrace

    private val profiler: Profiler?

    constructor(
        programRules: Iterable<Rule>,
        trace: EvaluationTrace = EvaluationTrace.NULL,
        profiler: Profiler? = null,
        // for testing purposes only
        occurrences: Iterable<ConstraintOccurrence>? = null)
    {
        this.ruleIndex = RuleIndex(programRules)
        this.trace = trace
        this.profiler = profiler
        if (occurrences != null) {
            frameStack.current.store.storeAll(occurrences)
        }
        current = this
    }

    fun allOccurrences(): Set<ConstraintOccurrence> =
        frameStack.current.store.allOccurrences().toSet()

    fun constraintSymbols(): Set<ConstraintSymbol> =
        frameStack.current.store.allOccurrences().map { co -> co.constraint().symbol() }.toSet()

    fun occurrences(symbol: ConstraintSymbol): Set<ConstraintOccurrence> =
        frameStack.current.store.allOccurrences().filter { co -> co.constraint().symbol() == symbol }.toSet()

    fun tell(constraint: Constraint) {
        try {
            queue(constraint.occurrence(frameStack, noLogicalContext))
        }
        catch (t: Throwable) {
            throw t
        }
    }

    fun queue(occurrence: ConstraintOccurrence) {
        process(occurrence)
    }

    private fun process(active: ConstraintOccurrence) {
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
                                is Constraint -> process(item.occurrence(frameStack, match.logicalContext))
                                is Predicate -> tellPredicate(item.invocation(match.logicalContext), trace)
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

            return guard().all { prd -> askPredicate(prd.invocation(logicalContext), trace) }

        }

    private fun askPredicate(invocation: PredicateInvocation, trace: EvaluationTrace): Boolean =
        profiler.profile<Boolean>("ask_${invocation.predicate().symbol()}", {

            // TODO: provide SessionSolver as part of evaluation session
            val result = EvaluationSession.current().sessionSolver().ask(invocation)
//            trace.ask(result, invocation)
            return result

        })

    private fun tellPredicate(invocation: PredicateInvocation, trace: EvaluationTrace) {
        profiler.profile("tell_${invocation.predicate().symbol()}") {

            // TODO: provide SessionSolver as part of evaluation session
//            trace.tell(invocation)
            EvaluationSession.current().sessionSolver().tell(invocation)

        }
    }

}

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> = TODO()
}

private fun Predicate.invocation(logicalContext: LogicalContext): PredicateInvocation = object: PredicateInvocation {

        override fun predicate(): Predicate = this@invocation

        override fun arguments(): List<*> = invocationArguments(logicalContext).toList()
    }
