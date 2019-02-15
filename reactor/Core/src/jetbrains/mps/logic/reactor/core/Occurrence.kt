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
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint

/**
 * @author Fedor Isakov
 */

internal fun Constraint.occurrence(logicalContext: LogicalContext, arguments: List<*>, frameStack: FrameStack): ConstraintOccurrence =
    Occurrence(this, logicalContext, arguments, frameStack)

private data class Occurrence (val constraint: Constraint,
                               val logicalContext: LogicalContext,
                               val arguments: List<*>,
                               val frameStack: FrameStack) :
    ConstraintOccurrence,
    LogicalObserver,
    StoreItem
{
    override var alive = true
    override var stored = false

    init {
        for (a in arguments) {
            if (a is Logical<*>) {
                frameStack.current.addObserver(a) { this }
            }
        }
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<*> = arguments

    override fun logicalContext(): LogicalContext = logicalContext

    override fun valueUpdated(logical: Logical<*>) {
        if (alive) {
            (EvaluationSession.current() as SessionObjects).controller().reactivate(this)
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        if (alive) {
            (EvaluationSession.current() as SessionObjects).controller().reactivate(this)
        }
    }

    override fun terminate() {
        for (a in arguments) {
            if (a is Logical<*>) {
                frameStack.current.removeObserver(a) { this }
            }
        }
        alive = false
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}

