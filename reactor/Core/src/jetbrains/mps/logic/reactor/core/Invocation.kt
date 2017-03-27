package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Predicate

/**
 * @author Fedor Isakov
 */

fun Predicate.invocation(arguments: List<*>, logicalContext: LogicalContext): PredicateInvocation =
    Invocation(this, arguments, logicalContext)

private data class Invocation(val predicate: Predicate,
                              val invocationArguments: List<*>,
                              val logicalContext: LogicalContext) : PredicateInvocation {

    override fun predicate(): Predicate = predicate

    override fun arguments(): List<*> = invocationArguments

    override fun logicalContext(): LogicalContext = logicalContext
}
