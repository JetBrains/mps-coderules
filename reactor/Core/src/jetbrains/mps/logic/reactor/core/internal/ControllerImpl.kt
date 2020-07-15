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
import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile

internal class ControllerImpl (
    val supervisor: Supervisor,
    val processing: ConstraintsProcessing,
    override val ispec: IncrementalProgramSpec = IncrementalProgramSpec.DefaultSpec,
    val trace: EvaluationTrace = EvaluationTrace.NULL,
    val profiler: Profiler? = null) : Controller, IncrSpecHolder
{

    /** For tests only */
    override fun storeView(): StoreView = processing.storeView()

    /** For tests only */
    override fun evaluate(occ: Occurrence): StoreView {
        // create the internal occurrence
        val active = occ.constraint().occurrence(logicalStateObservable(), occ.arguments(), occ.evidence, occ.justifications(), object: LogicalContext {
            override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
        })

        trace.activate(occ)
        val status = processing.processActivated(this, active, processing.initialChunk(), NORMAL())
        if (status is FAILED) {
            throw status.failure.failureCause()
        }
        return storeView()
    }

    fun incrLaunch(constraint: Constraint, rulesDiff: RulesDiff): Pair<FeedbackStatus, Set<Any>> {

        if (rulesDiff.removed.isNotEmpty()) {
            profiler.profile("invalidation") {
                processing.invalidateRuleMatches(rulesDiff.removed)
            }
        }

        if (rulesDiff.added.count() > 0) {
            profiler.profile("adding_matches") {
                processing.addRuleMatches(rulesDiff.added)
            }
        }

        val status =
            profiler.profile<FeedbackStatus>("reexecution") {
                processing.launchQueue(this)
            }

        return status to processing.invalidatedRules()
    }

    fun activate(constraint: Constraint) : FeedbackStatus {
        // FIXME noLogicalContext
        val context = Context(NORMAL(), noLogicalContext, null, trace)

        activateConstraint(constraint, processing.initialChunk(), processing.evidence(), processing.justifications(), context)

        return context.currentStatus()
    }

    override fun logicalStateObservable(): LogicalStateObservable  =
        processing

    override fun ask(invocation: PredicateInvocation): Boolean {
        val solver = invocation.predicate().symbol().solver(supervisor)
        val result = solver.ask(invocation)
        trace.ask(result, invocation)
        return result
    }

    override fun tell(invocation: PredicateInvocation) {
        val solver = invocation.predicate().symbol().solver(supervisor)
        trace.tell(invocation)
        solver.tell(invocation)
    }

    override fun reactivate(occ: Occurrence): FeedbackStatus =
        profiler.profile<FeedbackStatus>("reactivate_${occ.constraint.symbol()}") {

            trace.reactivate(occ)
            processing.processActivated(this, occ, processing.parentChunk(), NORMAL())

        }

    override fun offerMatch(match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus =
        inStatus
            .then { checkMatchPreconditions(match, it) }
            .also { trace.trying(match) }
            .then { processGuard(match, it) }

    private fun checkMatchPreconditions(match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus {
        val context = Context(inStatus, true, match.logicalContext(), match.rule().uniqueTag(), trace)

        // invoke matched pattern predicates
        for (prd in match.patternPredicates()) {
            // normally these are safe, but unification can fail
            if (!tellPredicate(prd, context)) break
        }

        return context.currentStatus()
    }

    private fun processGuard(match: RuleMatchEx, inStatus: FeedbackStatus) : FeedbackStatus {
        val context = Context(inStatus, match.logicalContext(), match.rule().uniqueTag(), trace)

        // check guard
        for (gprd in match.rule().guard()) {
            if (!askPredicate(gprd, context)) break
        }

        return context.currentStatus()
    }

    override fun processBody(match: RuleMatchEx, parent: MatchJournal.MatchChunk, inStatus: FeedbackStatus) : FeedbackStatus {
        val context = Context(inStatus, match.logicalContext(), match.rule().uniqueTag(), trace)

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

            val savedPos = processing.currentPos()
            var newParent: MatchJournal.MatchChunk = parent

            if (match.isPrincipal) {
                // This match corresponds to the last added chunk
                assert( (savedPos.chunk as? MatchJournal.MatchChunk)?.match === match )
                newParent = savedPos.chunk as MatchJournal.MatchChunk
            }
            // fixme: fails in lambdacalc because of reactivated occurrences
            //  (parents ain't tracked correctly in this case)
//            assert(newParent === processing.parentChunk())

            val currentJustifications = processing.justifications()
            val currentEvidence = processing.evidence()

            for (item in body) {
                val itemOk = when (item) {
                    // Occurrence just inherits evidence and justifications of its activating rule match
                    is Constraint -> activateConstraint(item, newParent, currentEvidence, currentJustifications, context)
                    is Predicate -> tellPredicate(item, context)
                    else -> throw IllegalArgumentException("unknown item ${item}")
                }

                if (itemOk) {
                    context.withStatus { status ->
                        if (status.feedback?.alreadyHandled() == false) {
                            status.feedback.handle(match, newParent.match, supervisor)
                        }
                    }

                } else {
                    // status is not operational after constraint/predicate processing
                    break
                }
            }

            val altOk = context.eval { status ->
                if (status is FAILED) {
                    // if there's alternative body branch then try it
                    if (altIt.hasNext()) {
                        // clear the failure handled status
                        // the supervisor is NOT notified here
                        status.failure.handle(match)
                        status

                    // if failure can be handled here then recover
                    } else if (status.feedback?.alreadyHandled() == false
                        && status.failure.handle(match, newParent.match, supervisor)) {

                        status.recover()

                    // else propagate further up the stack
                    } else {
                        status
                    }

                } else {
                    status
                }
            }

            if (!altOk) {
                // all constraints activated up to a failure are lost
                processing.reset(savedPos)

            } else {
                // body finished normally
                break
            }
        }

        return context.currentStatus()
    }
    
    private fun activateConstraint(constraint: Constraint, parent: MatchJournal.MatchChunk, evidence: Evidence, justifications: Justifications, context: Context) : Boolean {
        val args = supervisor.instantiateArguments(constraint.arguments(), context.logicalContext, context)
        return context.eval { status ->

            profiler.profile<FeedbackStatus>("activate_${constraint.symbol()}") {

                constraint.occurrence(logicalStateObservable(), args, evidence, justifications, context.logicalContext, context.ruleUniqueTag).let { occ ->
                    trace.activate(occ)
                    processing.processActivated(this, occ, parent, status)
                }

            }
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


    inner private class Context(inStatus: FeedbackStatus,
                                val checking: Boolean,
                                val logicalContext: LogicalContext,
                                val ruleUniqueTag: Any? = null,
                                val trace: EvaluationTrace = EvaluationTrace.NULL) : InvocationContext
    {

        private var status = inStatus

        constructor(inStatus: FeedbackStatus,
                    logicalContext: LogicalContext,
                    ruleUniqueTag: Any?  = null,
                    trace: EvaluationTrace = EvaluationTrace.NULL) :
        this(inStatus, false, logicalContext, ruleUniqueTag, trace) { }

        fun currentStatus(): FeedbackStatus = status

        override fun report(feedback: EvaluationFeedback) {
            trace.feedback(feedback)
            when (feedback) {
                is EvaluationFailure -> this.status = status.fail(feedback)
                is DetailedFeedback -> this.status = status.report(feedback)
            }
        }

        override fun supervisor(): Supervisor = supervisor

        override fun controller(): Controller = this@ControllerImpl

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
                    val failure = EvaluationFailure(ex)
                    if (checking) {
                        this.status = status.abort(failure)
                        
                    } else {
                        trace.feedback(failure)
                        this.status = status.fail(failure)
                    }
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
    profiler: Profiler? = null) : Controller
{
    val logicalState = LogicalState()
    val controller = ControllerImpl(
        supervisor,
        ConstraintsProcessing(
            Dispatcher(ruleIndex).front(),
            MatchJournalImpl(),
            ruleIndex,
            logicalState,
            IncrementalProgramSpec.DefaultSpec,
            trace,
            profiler
        ),
        IncrementalProgramSpec.DefaultSpec,
        trace,
        profiler
    )
    logicalState.init(controller)
    return controller
}
