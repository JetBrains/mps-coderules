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

import jetbrains.mps.logic.reactor.evaluation.InvocationContext
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Predicate

/**
 * Data class representing a single invocation of a predicate.
 * 
 * @author Fedor Isakov
 */
data class Invocation(val predicate: Predicate,
                              val invocationArguments: List<*>,
                              val logicalContext: LogicalContext,
                              val invocationContext: InvocationContext) : PredicateInvocation
{

    override fun predicate(): Predicate = predicate

    override fun arguments(): List<*> = invocationArguments

    override fun logicalContext(): LogicalContext = logicalContext

    override fun invocationContext(): InvocationContext = invocationContext

}

fun Predicate.invocation(arguments: List<*>,
                         logicalContext: LogicalContext,
                         invocationContext: InvocationContext): PredicateInvocation =
    Invocation(this, arguments, logicalContext, invocationContext)
