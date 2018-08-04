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
    private val session: EvaluationSession = EvaluationSession.current()

    private val ruleIndex: RuleIndex = RuleIndex(program.handlers())

    private val frameStack = FrameStack(storeView)

    private var dispatchFringe = Dispatcher(ruleIndex).fringe()

    internal fun currentFrame(): Frame = frameStack.current

    fun storeView(): StoreView = frameStack.current.store.view()

    fun activate(constraint: Constraint) {
        try {
            process(session.occurrence(constraint, noLogicalContext)) // FIXME noLogicalContext
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

            val activatedDF = dispatchFringe.activated(active)
            this.dispatchFringe = activatedDF

//            for (match in matcher.matches(active, frameStack.current.store)) {
            for(match in dispatchFringe.allMatches.toList()) {

                // TODO: paranoid check. should be isAlive() instead
                if (!active.isStored()) break
//                if (!match.successful) continue
                // FIXME: move this check elsewhere
                if ((match.matchHeadKept() + match.matchHeadReplaced()).any { co -> !co.isStored() }) continue

                // TODO: prophistory
//                if (propHistory.isRecorded(match)) continue

                trace.trying(match)

                for (prd in match.patternPredicates()) {
                    tellPredicate(prd, match.logicalContext(), trace)
                }

                if (!match.rule().checkGuard(match.logicalContext(), trace)) {
                    trace.reject(match)
                    continue
                }

                trace.trigger(match)

                for (occ in match.matchHeadReplaced()) {
                    this.dispatchFringe = dispatchFringe.discarded(occ)
                    frameStack.current.store.discard(occ)
                    trace.discard(occ)
                }

                var failure: EvaluationFailureException? = null

                for (body in match.rule().bodyAlternation()) {
                    if (failure != null) {
                        trace.failure(failure)
                        trace.retry(match)
                        failure = null
                    }

                    val savedFrame = frameStack.current
                    frameStack.push()

                    try {
                        for (item in body) {
                            when (item) {
                                is Constraint -> process(session.occurrence(item, match.logicalContext()))
                                is Predicate -> tellPredicate(item, match.logicalContext(), trace)
                                else -> throw IllegalArgumentException("unknown item ${item}")
                            }
                        }
                    }
                    catch (ex: EvaluationFailureException) {
                        failure = ex
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

            session.sessionSolver().ask(session.invocation(predicate, logicalContext))

        })

    private fun tellPredicate(predicate: Predicate, logicalContext: LogicalContext, trace: EvaluationTrace) =
        profiler.profile("tell_${predicate.symbol()}") {

            session.sessionSolver().tell(session.invocation(predicate, logicalContext))

        }

}

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> = TODO()
}

fun MatchRule.patternPredicates() =
    (rule().headKept() + rule().headReplaced()).zip(matchHeadKept() + matchHeadReplaced()).flatMap {
        it.first.patternPredicates(it.second.arguments())
    }.toList()
