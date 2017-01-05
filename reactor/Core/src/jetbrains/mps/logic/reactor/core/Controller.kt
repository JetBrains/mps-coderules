package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
import com.github.andrewoma.dexx.collection.Map as PersMap
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalUnification
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import jetbrains.mps.logic.reactor.util.*
import java.util.*

/**
 * @author Fedor Isakov
 */


class FrameStack : LogicalObserver {

    lateinit var current: Frame

    val observing = HashSet<IdWrapper<Logical<*>>>()

    constructor() {
        this.current = Frame(this)
    }

    fun push(): Frame {
        val frame = Frame(this, current)
        this.current = frame
        return frame
    }

    fun reset(frame: Frame): Unit {
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

interface StoreHolder {

    fun store(): Store

    fun addObserver(logical: Logical<*>, obs: (StoreHolder) -> LogicalObserver)

    fun removeObserver(logical: Logical<*>, obs: (StoreHolder) -> LogicalObserver)
}


class Frame : LogicalObserver, StoreHolder
{
    val prev: Frame?

    val store: Store

    private var stack: FrameStack

    private lateinit var observers: PersMap<IdWrapper<Logical<*>>, ConsList<(StoreHolder) -> LogicalObserver>>

    constructor(stack: FrameStack, prev: Frame? = null) {
        this.stack = stack
        this.prev = prev
        this.observers = prev?.observers ?: Maps.of()
        this.store = Store(prev?.store ?: Store { stack.current }, { stack.current })
    }

    override fun store() = store

    override fun addObserver(logical: Logical<*>, obs: (StoreHolder) -> LogicalObserver) {
        val logicalId = IdWrapper(logical)
        if (!observers.containsKey(logicalId)) {
            stack.addObserver(logical)
        }
        this.observers = observers.put(logicalId,
            observers[logicalId]?.prepend(obs) ?: cons(obs))
    }

    override fun removeObserver(logical: Logical<*>, obs: (StoreHolder) -> LogicalObserver) {
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
                obs(this).valueUpdated(logical)
            }
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        observers[IdWrapper(logical)]?.let { list ->
            for (obs in list) {
                obs(this).parentUpdated(logical)
            }
        }
    }

}


class Controller {

    private val frameStack = FrameStack()

    // persistent (functional) object. reassigned on update
    private var propHistory = PropagationHistory()

    val program: Program

    val ruleIndex: RuleIndex

    private val trace: EvaluationTrace

    private val profiler: Profiler?

    constructor(
        program: Program,
        trace: EvaluationTrace = EvaluationTrace.NULL,
        profiler: Profiler? = null,
        // for testing purposes only
        occurrences: Iterable<ConstraintOccurrence>? = null)
    {
        this.program = program
        this.ruleIndex = RuleIndex(program.handlers())
        this.trace = trace
        this.profiler = profiler
        if (occurrences != null) {
            frameStack.current.store.storeAll(occurrences)
        }
    }

    fun storeView(): StoreView =
        frameStack.current.store.view()

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
