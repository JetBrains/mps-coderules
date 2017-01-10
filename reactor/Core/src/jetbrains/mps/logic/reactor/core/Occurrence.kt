package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Program

/**
 * @author Fedor Isakov
 */


internal fun Constraint.occurrence(currentFrame: () -> Frame, program: Program, context: LogicalContext): ConstraintOccurrence =
    Occurrence(currentFrame, this, program.occurrenceArguments(this, context))

private data class Occurrence (val currentFrame: () -> Frame, val constraint: Constraint, val arguments: List<*>) :
    ConstraintOccurrence,
    LogicalObserver,
    StoreItem
{
    override var alive = true
    override var stored = false

    init {
        for (a in arguments) {
            if (a is Logical<*>) {
                currentFrame().addObserver(a) { this }
            }
        }
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<*> = arguments

    override fun valueUpdated(logical: Logical<*>) {
        if (alive) {
            (EvaluationSession.current() as SessionObjects).handler().reactivate(this)
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        if (alive) {
            (EvaluationSession.current() as SessionObjects).handler().reactivate(this)
        }
    }

    override fun terminate() {
        for (a in arguments) {
            if (a is Logical<*>) {
                currentFrame().removeObserver(a) { this }
            }
        }
        alive = false
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}

