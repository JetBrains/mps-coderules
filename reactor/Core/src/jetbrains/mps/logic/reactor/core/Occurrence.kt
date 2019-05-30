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
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint


typealias Justs = TIntSet
//fun emptyJusts() = object : TIntSet {}
fun emptyJusts() = TIntHashSet(1)
fun justsOf(vararg elements: Int) = TIntHashSet(elements)
fun justsFromCollection(collection: Collection<Int>) = TIntHashSet(collection)


data class OccurrenceObserver(val occurrence: Occurrence, val controller: Controller) : LogicalObserver {
    override fun valueUpdated(logical: Logical<*>) {
        if (occurrence.alive) {
            controller.reactivate(occurrence)
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        if (occurrence.alive) {
            controller.reactivate(occurrence)
        }
    }
}

/**
 * Class representing a single constraint occurrence.
 *
 * @author Fedor Isakov
 */
class Occurrence (controller: Controller,
                  val constraint: Constraint,
                  val logicalContext: LogicalContext,
                  val arguments: List<*>,
                  val justifications: Justs):
    ConstraintOccurrence
{

    var alive = true

    var stored = false

    init {
        revive(controller)
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<*> = arguments

    override fun logicalContext(): LogicalContext = logicalContext

    override fun justifications(): Justs = justifications

    fun terminate(controller: Controller) {
        val obs = OccurrenceObserver(this, controller)
        for (a in arguments) {
            if (a is Logical<*>) {
                controller.state().removeForwardingObserver(a, obs)
            }
        }
        alive = false
    }

    fun revive(controller: Controller) {
        val obs = OccurrenceObserver(this, controller)
        for (a in arguments) {
            if (a is Logical<*>) {
                controller.state().addForwardingObserver(a, obs)
            }
        }
        alive = true
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}

fun Constraint.occurrence(controller: Controller,
                          arguments: List<*>,
                          justifications: Justs,
                          logicalContext: LogicalContext): Occurrence =
    Occurrence(controller, this, logicalContext, arguments, justifications)

fun Constraint.occurrence(controller: Controller,
                          arguments: List<*>,
                          justifications: Justs): Occurrence =
    Occurrence(controller, this, noLogicalContext, arguments, justifications)

fun Constraint.occurrence(controller: Controller,
                          arguments: List<*>): Occurrence =
    Occurrence(controller, this, noLogicalContext, arguments, justsOf())

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
}
