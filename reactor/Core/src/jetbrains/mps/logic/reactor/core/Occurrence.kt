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

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint

/**
 * Data class representing a single constraint occurrence.
 *
 * @author Fedor Isakov
 */
data class Occurrence (val controller: Controller,
                       val constraint: Constraint,
                       val logicalContext: LogicalContext,
                       val arguments: List<*>) :
    ConstraintOccurrence,
    LogicalObserver
{

    var alive = true

    var stored = false

    init {
        for (a in arguments) {
            if (a is Logical<*>) {
                controller.state().addForwardingObserver(a, this)
            }
        }
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<*> = arguments

    override fun logicalContext(): LogicalContext = logicalContext

    override fun valueUpdated(logical: Logical<*>) {
        if (alive) {
            controller.reactivate(this)
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        if (alive) {
            controller.reactivate(this)
        }
    }

    fun terminate() {
        for (a in arguments) {
            if (a is Logical<*>) {
                controller.state().removeForwardingObserver(a, this)
            }
        }
        alive = false
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}

fun Constraint.occurrence(controller: Controller,
                          arguments: List<*>,
                          logicalContext: LogicalContext): Occurrence =
    Occurrence(controller, this, logicalContext, arguments)

fun Constraint.occurrence(controller: Controller,
                          arguments: List<*>): Occurrence =
    Occurrence(controller, this, noLogicalContext, arguments)

private val noLogicalContext: LogicalContext = object: LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
}
