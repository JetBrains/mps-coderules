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

package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.Supervisor
import jetbrains.mps.logic.reactor.program.Program

/**
 * An extension of [EvaluationSession] with ability to access [Controller].
 * @author Fedor Isakov
 */
abstract class EvaluationSessionEx(val program: Program,
                                   val supervisor: Supervisor,
                                   val trace: EvaluationTrace,
                                   val params: Map<ParameterKey<*>, *>?) : EvaluationSession()
{

    abstract fun controller(): Controller

    override fun program(): Program = program

    override fun supervisor(): Supervisor = supervisor

    @Suppress("UNCHECKED_CAST")
    override fun <T : Any> parameter(key: ParameterKey<T>): T? = params ?.get(key) as T

    override fun ask(invocation: PredicateInvocation): Boolean =
        controller().ask(invocation)

    override fun tell(invocation: PredicateInvocation) =
        controller().tell(invocation)

}