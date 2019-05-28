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
import jetbrains.mps.logic.reactor.core.internal.FeedbackStatus.*
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import com.github.andrewoma.dexx.collection.Map as PersMap

internal class ControllerImpl (
    val supervisor: Supervisor,
    val state: ProcessingStateImpl,
    val ispec: IncrementalProgramSpec = IncrementalProgramSpec.NonIncrSpec,
    val trace: EvaluationTrace = EvaluationTrace.NULL,
    val profiler: Profiler? = null) : Controller
{
    /** For tests only */
    override fun storeView(): StoreView = state.storeView()

    /** For tests only */
    override fun evaluate(occ: Occurrence): StoreView {
        // create the internal occurrence
        val active = occ.constraint().occurrence(this, occ.arguments(), occ.justifications())

        val status = state.processActivated(active, NORMAL())
        if (status is FAILED) {
            throw status.failure.failureCause()
        }
        return storeView()
    }

    fun incrLaunch(constraint: Constraint, rulesDiff: RulesDiff): FeedbackStatus {
        // todo: use profiler here?
        state.invalidateByRules(rulesDiff.removed)
        state.addRuleApplications(rulesDiff.added)
        val status = state.launchQueue(this)
        return status
    }

    fun activate(constraint: Constraint) : FeedbackStatus {
        // FIXME noLogicalContext
        val context = Context(NORMAL(), noLogicalContext)

        activateConstraint(constraint, emptyJusts(), context)

        return context.currentStatus()
    }

    override fun state(): ProcessingStateImpl =
        state

    override fun ask(invocation: PredicateInvocation): Boolean {
        val solver = invocation.predicate().symbol().solver()
        val result = solver.ask(invocation)
        trace.ask(result, invocation)
        return result
    }

    override fun tell(invocation: PredicateInvocation) {
        val solver = invocation.predicate().symbol().solver()
        trace.tell(invocation)
        solver.tell(invocation)
    }

    override fun reactivate(occ: Occurrence) {
        // FIXME propagate the status further up the call stack

        val status = state.processActivated(occ, NORMAL())
        if (status is FAILED) {
            throw status.failure.failureCause()
        }
    }

    override fun offerMatch(match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus =
        inStatus.then { checkMatchPreconditions(match, it) }
            .also { trace.trying(match) }
            .then { processGuard(match, it) }

    private fun checkMatchPreconditions(match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus {
        val context = Context(inStatus, match.logicalContext())

        // invoke matched pattern predicates
        for (prd in match.patternPredicates()) {
            // normally these are safe, but unification can fail
            if (!tellPredicate(prd, context)) break
        }

        return context.currentStatus()
    }

    private fun processGuard(match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus {
        val context = Context(inStatus, match.logicalContext())

        // check guard
        for (gprd in match.rule().guard()) {
            if (!askPredicate(gprd, context)) break
        }

        return context.currentStatus()
    }

    override fun processBody(match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus {
        val context = Context(inStatus, match.logicalContext())

        val altIt = match.rule().bodyAlternation().iterator()
        while (altIt.hasNext()) {
            val body = altIt.next()

            context.eval { status ->
                if (status is FAILED) {
                    trace.retry(match)
                    status.recover()

                } else {
                    status
                }
            }

            val savedPos = state.currentPos()

            val currentJusts = state.justs()

            for (item in body) {
                val itemOk = when (item) {
                    is Constraint -> {
                        // track justifications only for principal constraints
//                        val justs = if (item.isPrincipal) currentJusts else emptyJusts()
                        val justs = if (ispec.isPrincipal(item)) currentJusts else emptyJusts()
                        activateConstraint(item, justs, context)
                    }
                    is Predicate -> tellPredicate(item, context)
                    else -> throw IllegalArgumentException("unknown item ${item}")
                }

                if (itemOk) {
                    context.withStatus { status ->
                        if (status.feedback?.alreadyHandled() == false) {
                            status.feedback.handle(match.rule(), supervisor)
                        }
                    }

                } else {
                    // status is not operational after constraint/predicate processing
                    break
                }
            }

            val altOk = context.eval { status ->
                if (status is FAILED) {
                    trace.feedback(status.failure)

                    if (altIt.hasNext()) {
                        // clear the failure handled status
                        // the supervisor is NOT notified here
                        status.failure.handle(match.rule())
                        status

                    } else if (status.feedback?.alreadyHandled() == false && status.failure.handle(match.rule(), supervisor)) {
                        status.recover()

                    } else {
                        status
                    }

                } else {
                    status
                }
            }

            if (!altOk) {
                // all constraints activated up to a failure are lost
                state.reset(savedPos)

            } else {
                // body finished normally
                break
            }
        }

        return context.currentStatus()
    }
    
    private fun activateConstraint(constraint: Constraint, justs: Justs, context: Context) : Boolean {
        val args = supervisor.instantiateArguments(constraint.arguments(), context.logicalContext, context)
        return context.eval { status ->

            state.processActivated(constraint.occurrence(this, args, justs, context.logicalContext), status)
        }
    }

    private fun askPredicate(predicate: Predicate, context: Context) : Boolean =
        profiler.profile<Boolean>("ask_${predicate.symbol()}") {

            context.evalSafe { status ->
                val args = supervisor.instantiateArguments(predicate.arguments(), context.logicalContext, context)
                if (ask(predicate.invocation(args, context.logicalContext, context)))
                    status
                else
                    status.abort(DetailedFeedback("predicate not satisfied"))
            }

        }

    private fun tellPredicate(predicate: Predicate, context: Context) : Boolean =
        profiler.profile<Boolean>("tell_${predicate.symbol()}") {

            context.runSafe {
                val args = supervisor.instantiateArguments(predicate.arguments(), context.logicalContext, context)
                tell(predicate.invocation(args, context.logicalContext, context))
            }

        }

    private val noLogicalContext: LogicalContext = object: LogicalContext {
        override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
    }

    private inline fun FeedbackStatus.then(action: (FeedbackStatus) -> FeedbackStatus) : FeedbackStatus =
        if (operational) action(this) else this

    private fun RuleMatch.patternPredicates() =
        (rule().headKept() + rule().headReplaced()).zip(matchHeadKept() + matchHeadReplaced()).flatMap {
            it.first.patternPredicates(it.second.arguments())
        }.toList()

    private fun RuleMatch.allStored() = (matchHeadKept() + matchHeadReplaced()).all { co -> (co as Occurrence).stored }

    private class Context(inStatus: FeedbackStatus,
                          val logicalContext: LogicalContext) : InvocationContext
    {

        private var status = inStatus
        fun currentStatus(): FeedbackStatus = status

        override fun report(feedback: EvaluationFeedback) {
            when (feedback) {
                is EvaluationFailure -> this.status = status.fail(feedback)
                is DetailedFeedback -> this.status = status.report(feedback)
            }
        }

        inline fun withStatus(block: (FeedbackStatus) -> Unit) {
            block.invoke(status)
        }

        inline fun eval(block: (FeedbackStatus) -> FeedbackStatus) : Boolean {
            this.status = block.invoke(status)
            return status.operational
        }

        inline fun evalSafe(block: (FeedbackStatus) -> FeedbackStatus) : Boolean {
            if (status.operational) {
                try {
                    this.status = block.invoke(status)

                } catch (ex: EvaluationFailureException) {
                    this.status = status.fail(EvaluationFailure(ex))
                }
            }
            return status.operational
        }

        inline fun runSafe(block: () -> Unit) : Boolean {
            if (status.operational) {
                try {
                    block()

                } catch (ex: EvaluationFailureException) {
                    this.status = status.fail(EvaluationFailure(ex))
                }
            }

            return status.operational
        }

    }

}

/** Used to create controller from tests */
fun createController(
    supervisor: Supervisor,
    ruleIndex: RuleIndex,
    trace: EvaluationTrace = EvaluationTrace.NULL,
    profiler: Profiler? = null) : Controller =

    ControllerImpl(
        supervisor,
        ProcessingStateImpl(Dispatcher(ruleIndex).front(), MatchJournalImpl(), ruleIndex, trace, profiler),
        IncrementalProgramSpec.NonIncrSpec,
        trace,
        profiler
    )
