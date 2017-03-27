package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint

/**
 * @author Fedor Isakov
 */

fun Constraint.occurrence(controller: Controller, arguments: List<*>, logicalContext: LogicalContext): ConstraintOccurrence =
    Occurrence({ controller.currentFrame() }, this, arguments, logicalContext)

private data class Occurrence (val currentFrame: () -> Frame,
                               val constraint: Constraint,
                               val arguments: List<*>,
                               val logicalContext: LogicalContext) :
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

    override fun logicalContext(): LogicalContext = logicalContext

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

