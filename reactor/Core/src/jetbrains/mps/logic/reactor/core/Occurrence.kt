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

import jetbrains.mps.logic.reactor.core.internal.FeedbackStatus
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule


/**
 * Class representing a single constraint occurrence.
 *
 * @author Fedor Isakov
 */
class Occurrence (observable: LogicalStateObservable,
                  val constraint: Constraint,
                  val logicalContext: LogicalContext,
                  val arguments: List<*>,
                  override val evidence: Evidence,
                  private val justifications: Justifications,
                  val sourceRule: Rule.Tag? = null):
    ConstraintOccurrence, ForwardingLogicalObserver, Justified
{

    var alive = false

    var stored = false

    val identity = System.identityHashCode(this)

    init {
//        revive(observable)
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<*> = arguments

    override fun logicalContext(): LogicalContext = logicalContext

    override fun sourceRule(): Rule.Tag? = sourceRule

    override fun justifications(): Justifications = justifications

    override fun valueUpdated(logical: Logical<*>, controller: Controller) = doReactivate(controller)

    override fun parentUpdated(logical: Logical<*>, controller: Controller) = doReactivate(controller)

    fun terminate(observable: LogicalStateObservable) {
        for (a in arguments) {
            if (a is Logical<*>) {
                observable.removeForwardingObserver(a, this)
            }
        }
        alive = false
    }

    fun revive(observable: LogicalStateObservable) {
        if (!alive) {
            for (a in HashSet(arguments)) { // avoid duplicate subscriptions
                if (a is Logical<*>) {
                    observable.addForwardingObserver(a, this)
                }
            }
        }
        alive = true
    }

    private fun doReactivate(controller: Controller) {
        if (alive) {
            val status = controller.reactivate(this)
            // FIXME propagate the status further up the call stack
            handleFeedbackStatus(status)
        }
    }

    private fun handleFeedbackStatus(status: FeedbackStatus) {
        if (status is FeedbackStatus.FAILED) {
            // FIXME failureCause() is nullable, can't throw null
            throw status.failure.failureCause()
        }
    }
    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}

fun Occurrence.arity() = constraint().symbol().arity()

fun Constraint.occurrence(observable: LogicalStateObservable,
                          arguments: List<*>,
                          evidence: Evidence,
                          justifications: Justifications,
                          logicalContext: LogicalContext,
                          ruleUniqueTag: Rule.Tag? = null): Occurrence =
    Occurrence(observable, this, logicalContext, arguments, evidence, justifications, ruleUniqueTag)
