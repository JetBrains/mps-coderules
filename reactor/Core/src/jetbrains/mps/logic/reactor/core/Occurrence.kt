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

import gnu.trove.set.TIntSet
import gnu.trove.set.hash.TIntHashSet
import jetbrains.mps.logic.reactor.core.internal.FeedbackStatus
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint


typealias Justs = TIntSet
//fun emptyJusts() = object : TIntSet {}
fun emptyJusts() = TIntHashSet(1)
fun justsOf(vararg elements: Int) = TIntHashSet(elements)
fun justsFromCollection(collection: Collection<Int>) = TIntHashSet(collection)
fun justsCopy(other: Justs) = TIntHashSet(other)

/**
 * Class representing a single constraint occurrence.
 *
 * @author Fedor Isakov
 */
class Occurrence (observable: LogicalStateObservable,
                  val constraint: Constraint,
                  val logicalContext: LogicalContext,
                  val arguments: List<*>,
                  val justifications: Justs,
                  val ruleUniqueTag: Any? = null):
    ConstraintOccurrence, ForwardingLogicalObserver
{

    var alive = true

    var stored = false

    val identity = System.identityHashCode(this)

    init {
        revive(observable)
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<*> = arguments

    override fun logicalContext(): LogicalContext = logicalContext

    override fun ruleUniqueTag(): Any? = ruleUniqueTag

    override fun justifications(): Justs = justifications

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
        for (a in arguments) {
            if (a is Logical<*>) {
                observable.addForwardingObserver(a, this)
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
            throw status.failure.failureCause()
        }
    }
    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"
    
}

fun Constraint.occurrence(observable: LogicalStateObservable,
                          arguments: List<*>,
                          justifications: Justs,
                          logicalContext: LogicalContext,
                          ruleUniqueTag: Any? = null): Occurrence =
    Occurrence(observable, this, logicalContext, arguments, justifications, ruleUniqueTag)

