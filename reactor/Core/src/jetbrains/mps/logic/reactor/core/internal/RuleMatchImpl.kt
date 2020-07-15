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

package jetbrains.mps.logic.reactor.core.internal

import jetbrains.mps.logic.reactor.core.Occurrence
import jetbrains.mps.logic.reactor.core.RuleMatchEx
import jetbrains.mps.logic.reactor.core.Subst
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalOwner
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Id

internal class RuleMatchImpl(private val rule: Rule,
                             private val subst: Subst,
                             private val headKept: Iterable<Occurrence>,
                             private val headReplaced: Iterable<Occurrence>) : RuleMatchEx
{

   private val logicalContext = object : LogicalContext {

       val meta2logical = HashMap<MetaLogical<*>, Logical<*>>()

       override fun <V : Any> variable(meta: MetaLogical<V>): Logical<V> {
           if (meta2logical.containsKey(meta)) return meta2logical[meta] as Logical<V>

           val logical = subst[meta]?.let { value ->
               when (value) {
                   is Logical<*> -> value
                   is LogicalOwner -> value.logical()
                   else -> LogicalImpl(meta, value as V)
               }
           } ?: meta.logical()

           meta2logical[meta] = logical
           return logical as Logical<V>
       }

   }

    override fun signature(): ArrayList<Id<Occurrence>?> =
        ArrayList((headKept + headReplaced).map { Id(it) })

    override fun signatureArray(): IntArray =
        (headKept + headReplaced).map { it.identity }.toIntArray()

    override fun rule(): Rule = rule

   override fun matchHeadKept(): Iterable<Occurrence> = headKept

   override fun matchHeadReplaced(): Iterable<Occurrence> = headReplaced
    
   override fun logicalContext(): LogicalContext = logicalContext

}
