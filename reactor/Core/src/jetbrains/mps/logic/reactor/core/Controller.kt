/*
 * Copyright 2014-2017 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.core.ProcessingState.*
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
    val storeView: StoreView? = null,
    val failureHandler: FailureHandler? = null)
{
    private val session: EvaluationSession = EvaluationSession.current()

    private val ruleIndex: RuleIndex = RuleIndex(program.handlers())

    private val frameStack = FrameStack(storeView)

    private var dispatchFringe = Dispatcher(ruleIndex).fringe()

    internal fun currentFrame(): Frame = frameStack.current

    fun storeView(): StoreView = frameStack.current.store.view()

    fun activate(constraint: Constraint) : ProcessingState =
        try {
            process(session.occurrence(constraint, noLogicalContext), NORMAL()) // FIXME noLogicalContext
        }
        catch (t: Throwable) {
            throw t
        }

    fun reactivate(occurrence: ConstraintOccurrence) {
        // FIXME propagate the processing state further up the call stack
        // TODO: introduce processing state to solver API?
        val state = process(occurrence, NORMAL())
        if (state is FAILED) {
            throw state.failure.cause
        }
    }

    /** For tests only */
    fun evaluate(occurrence: ConstraintOccurrence): StoreView {
        val state = process(occurrence, NORMAL())
        if (state is FAILED) {
            throw state.failure.cause
        }
        return storeView()
    }

    private fun process(active: ConstraintOccurrence, instate: ProcessingState) : ProcessingState {
        assert(active.isAlive())

        return profiler.profile<ProcessingState>("process_${active.constraint().symbol()}") {

            if (!active.isStored()) {
                frameStack.current.store.store(active)
                trace.activate(active)
            } else {
                trace.reactivate(active)
            }

            val activatedDF = dispatchFringe.activated(active)
            this.dispatchFringe = activatedDF

            var state : ProcessingState = instate

            for (match in dispatchFringe.matches().toList()) {
                if (!state.operational) break

                // TODO: paranoid check. should be isAlive() instead
                if (!active.isStored()) break
//                if (!match.successful) continue
                // FIXME: move this check elsewhere
                if ((match.matchHeadKept() + match.matchHeadReplaced()).any { co -> !co.isStored() }) continue

                // TODO: prophistory
//                if (propHistory.isRecorded(match)) continue

                trace.trying(match)

                state = match.patternPredicates().fold(state, { st, prd ->
                    st.eval { tellPredicate(prd, match.logicalContext(), it) } })

                state = state.eval { match.rule().checkGuard(match.logicalContext(), it) }

                if (state is ABORTED) {  // guard is not satisfied
                    trace.reject(match)
                    state = state.reset()
                    continue

                } else if (state is FAILED) {  // guard failed
                    trace.failure(state.failure)
                    state = state.reset()
                    continue
                }

                trace.trigger(match)

                for (occ in match.matchHeadReplaced()) {
                    this.dispatchFringe = dispatchFringe.discarded(occ)
                    frameStack.current.store.discard(occ)
                    trace.discard(occ)
                }

                val altIt = match.rule().bodyAlternation().iterator()
                while (altIt.hasNext()) {
                    val body = altIt.next()

                    if (state is FAILED) {
                        trace.retry(match)
                        state = state.reset()
                    }

                    val savedFrame = frameStack.current
                    frameStack.push()

                    state = body.fold(state) { st, item ->
                        if (st.operational)
                            when (item) {
                                is Constraint   ->  process(session.occurrence(item, match.logicalContext()), state)
                                is Predicate    ->  tellPredicate(item, match.logicalContext(), state)
                                else            ->  throw IllegalArgumentException("unknown item ${item}")
                            }
                        else st
                    }

                    if (state is FAILED) {
                        trace.failure(state.failure)
                        
                        if (!altIt.hasNext()) {
                            // last alternative
                            if (failureHandler != null) {
                                // FIXME: failure handler may replace the failure
                                val updatedFailure = failureHandler.handleFailure(state.failure, match.rule())
                                if (updatedFailure == null) {
                                    state = state.reset()
                                }
                            }
                        }

                        if (state is FAILED) {
                            frameStack.reset(savedFrame)
                        }
                        
                    } else {
                        break
                    }
                }

                trace.finish(match)
            }

            // TODO: should be isAlive()
            if (active.isStored()) {
                trace.suspend(active)
            }

            state
        }
    }

    private fun Rule.checkGuard(logicalContext: LogicalContext, state: ProcessingState): ProcessingState =
        guard().fold(state) { st, prd ->
            if (st.operational) askPredicate(prd, logicalContext, st) else st
        }

    private fun askPredicate(predicate: Predicate,
                             logicalContext: LogicalContext,
                             instate: ProcessingState): ProcessingState
    {
        return profiler.profile<ProcessingState>("ask_${predicate.symbol()}", {

            try {
                if(session.sessionSolver().ask(session.invocation(predicate, logicalContext))) {
                    instate
                } else {
                    instate.abort()
                }

            } catch (ex: EvaluationFailureException) {
                instate.fail(EvaluationFailure(ex))
            }

        })
    }

    private fun tellPredicate(predicate: Predicate,
                              logicalContext: LogicalContext,
                              instate: ProcessingState) : ProcessingState
    {
        return profiler.profile<ProcessingState>("tell_${predicate.symbol()}") {

            try {
                session.sessionSolver().tell(session.invocation(predicate, logicalContext))
                instate

            } catch (ex: EvaluationFailureException) {
                instate.fail(EvaluationFailure(ex))
            }

        }
    }

    private val noLogicalContext: LogicalContext = object: LogicalContext {
        override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> = TODO()
    }

    private fun MatchRule.patternPredicates() =
        (rule().headKept() + rule().headReplaced()).zip(matchHeadKept() + matchHeadReplaced()).flatMap {
            it.first.patternPredicates(it.second.arguments())
        }.toList()

}
