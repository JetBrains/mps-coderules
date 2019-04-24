/*
 * Copyright 2014-2019 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.mps.logic.reactor.core.internal

import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.ProcessingState.*
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.Program
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import com.github.andrewoma.dexx.collection.Map as PersMap

internal class ControllerImpl (
    val program: Program,
    val trace: EvaluationTrace = EvaluationTrace.NULL,
    val profiler: Profiler? = null,
    val storeView: StoreView? = null,
    val feedbackHandler: EvaluationFeedbackHandler? = null) : Controller
{


    // FIXME move to parameter
    private val session: EvaluationSession = EvaluationSession.current()


    private val ruleIndex: RuleIndex = RuleIndex(program.handlers())


    private var dispatchFringe = Dispatcher(ruleIndex).fringe()

    // FIXME move to context
    private val frameStack = FrameStack(storeView)

    /** For tests only */
    override fun storeView(): StoreView = frameStack.current.store.view()

    /** For tests only */
    override fun evaluate(occ: Occurrence): StoreView {
        // create the internal occurrence
        val active = occ.constraint().occurrence(occ.arguments(), { frameStack.current })
        val state = process(active, NORMAL())
        if (state is FAILED) {
            throw state.failure.cause
        }
        return storeView()
    }

    fun activate(constraint: Constraint) : ProcessingState {
        // FIXME noLogicalContext
        val context = Context(NORMAL(), noLogicalContext)
        activateConstraint(constraint, context)
        return context.currentState()
    }

    override fun reactivate(occ: Occurrence) {
        // FIXME propagate the processing state further up the call stack
        // TODO: introduce processing state to solver API?
        val state = process(occ, NORMAL())
        if (state is FAILED) {
            throw state.failure.cause
        }
    }

    private fun process(active: Occurrence, inState: ProcessingState) : ProcessingState {
        assert(active.alive)

        return profiler.profile<ProcessingState>("process_${active.constraint().symbol()}") {

            if (!active.stored) {
                frameStack.current.store.store(active)
                trace.activate(active)
            } else {
                trace.reactivate(active)
            }

            val activatedFringe = dispatchFringe.expand(active)
            this.dispatchFringe = activatedFringe

            val outState = activatedFringe.matches().toList().fold(inState) { state, match ->
                // TODO: paranoid check. should be isAlive() instead
                // FIXME: move this check elsewhere
                if (state.operational && active.stored && match.allStored())
                    processMatch(state, match as MatchRuleImpl)
                else
                    state
            }

            // TODO: should be isAlive()
            if (active.stored) {
                trace.suspend(active)
            }

            outState
        }
    }

    private fun processMatch(inState: ProcessingState, match: MatchRuleImpl) : ProcessingState {
        val context = Context(inState, match.logicalContext())

        // invoke matched pattern predicates
        for (prd in match.patternPredicates()) {
            if (!tellPredicate(prd, context)) break
        }

        trace.trying(match)

        // check guard
        for (gprd in match.rule().guard()) {
            if (!askPredicate(gprd, context)) break
        }

        context.updateState { state ->
            when (state) {
                is ABORTED -> { // guard is not satisfied
                    trace.reject(match)
                    return state.recover()

                }
                is FAILED -> { // guard failed
                    trace.failure(state.failure)
                    return state.recover()

                }
                else -> state
            }
        }

        this.dispatchFringe = dispatchFringe.consume(match)
        trace.trigger(match)

        for (occ in match.headReplaced) {
            this.dispatchFringe = dispatchFringe.contract(occ)
            frameStack.current.store.discard(occ)
            trace.discard(occ)
        }

        val altIt = match.rule().bodyAlternation().iterator()
        while (altIt.hasNext()) {
            val body = altIt.next()

            context.updateState { state ->
                if (state is FAILED) {
                    trace.retry(match)
                    state.recover()

                } else {
                    state
                }
            }

            val savedFrame = frameStack.current
            frameStack.push()

            for (item in body) {
                val itemOk = when (item) {
                    is Constraint -> activateConstraint(item, context)
                    is Predicate -> tellPredicate(item, context)
                    else -> throw IllegalArgumentException("unknown item ${item}")
                }

                if (itemOk) {
                    context.withState { state ->
                        if (feedbackHandler != null && state.feedback?.alreadyHandled() == false) {
                            state.feedback.handle(match.rule(), feedbackHandler)
                        }
                    }

                } else {
                    // state is not operational after constraint/predicate processing
                    break
                }
            }

            val altOk = context.updateState { state ->
                if (state is FAILED) {
                    trace.failure(state.failure)

                    if (altIt.hasNext()) {
                        // clear the failure handled status
                        state.failure.handle(match.rule()) { _, _ -> true }
                        state

                    } else if (feedbackHandler != null && state.feedback?.alreadyHandled() == false &&
                        state.failure.handle(match.rule(), feedbackHandler))
                    {
                        state.recover()

                    } else {
                        state
                    }

                } else {
                    state
                }
            }

            if (!altOk) {
                // all constraints activated up to a failure are lost
                frameStack.reset(savedFrame)

            } else {
                // body finished normally
                break
            }
        }

        trace.finish(match)

        return context.currentState()
    }

    private fun activateConstraint(constraint: Constraint, context: Context) : Boolean {
        val args = program.instantiateArguments(constraint.arguments(), context.logicalContext, context)
        return context.updateState { state ->
            val active = constraint.occurrence(args, { frameStack.current }, context.logicalContext)
            process(active, state)
        }
    }

    private fun askPredicate(predicate: Predicate, context: Context) : Boolean =
        profiler.profile<Boolean>("ask_${predicate.symbol()}") {

            context.evalSafe { state ->
                val args = program.instantiateArguments(predicate.arguments(), context.logicalContext, context)
                if (session.ask(predicate.invocation(args, context.logicalContext, context)))
                    state
                else
                    state.abort(DetailedFeedback("predicate not satisfied"))
            }

        }

    private fun tellPredicate(predicate: Predicate, context: Context) : Boolean =
        profiler.profile<Boolean>("tell_${predicate.symbol()}") {

            context.runSafe {
                val args = program.instantiateArguments(predicate.arguments(), context.logicalContext, context)
                session.tell(predicate.invocation(args, context.logicalContext, context))
            }

        }

    private val noLogicalContext: LogicalContext = object: LogicalContext {
        override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
    }

    private fun MatchRule.patternPredicates() =
        (rule().headKept() + rule().headReplaced()).zip(matchHeadKept() + matchHeadReplaced()).flatMap {
            it.first.patternPredicates(it.second.arguments())
        }.toList()

    private fun MatchRule.allStored() = (matchHeadKept() + matchHeadReplaced()).all { co -> (co as Occurrence).stored }

}

private class Context(inState: ProcessingState,
                      val logicalContext: LogicalContext) : InvocationContext
{

    private var state = inState
    fun currentState(): ProcessingState = state

    override fun report(feedback: EvaluationFeedback) {
        when (feedback) {
            is EvaluationFailure -> this.state = state.fail(feedback)
            is DetailedFeedback -> this.state = state.report(feedback)
        }
    }

    inline fun withState(block: (ProcessingState) -> Unit) {
        block.invoke(state)
    }

    inline fun updateState(block: (ProcessingState) -> ProcessingState) : Boolean {
        this.state = block.invoke(state)
        return state.operational
    }

    inline fun evalSafe(block: (ProcessingState) -> ProcessingState) : Boolean {
        if (state.operational) {
            try {
                this.state = block.invoke(state)

            } catch (ex: EvaluationFailureException) {
                this.state = state.fail(EvaluationFailure(ex))
            }
        }
        return state.operational
    }

    inline fun runSafe(block: () -> Unit) : Boolean {
        if (state.operational) {
            try {
                block()

            } catch (ex: EvaluationFailureException) {
                this.state = state.fail(EvaluationFailure(ex))
            }
        }

        return state.operational
    }

}

/** Used to create controller from tests */
fun createController(
    program: Program,
    trace: EvaluationTrace = EvaluationTrace.NULL,
    profiler: Profiler? = null,
    storeView: StoreView? = null,
    feedbackHandler: EvaluationFeedbackHandler? = null) : Controller =
    ControllerImpl(program, trace, profiler, storeView, feedbackHandler)
