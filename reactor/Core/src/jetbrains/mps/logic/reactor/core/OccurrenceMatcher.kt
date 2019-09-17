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

import com.github.andrewoma.dexx.collection.Maps
import com.github.andrewoma.dexx.collection.Map as PersMap
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint

/**
 *  Abstracts an algorithm for recursive matching of a [Constraint] and a [ConstraintOccurrence]
 *  or a pattern [Term] against a [Term] in a constraint occurrence's arguments.
 *
 * @author Fedor Isakov
 */
interface OccurrenceMatcher {

    fun subst(): Subst

    fun matches(cst: Constraint, occ: ConstraintOccurrence): Boolean

    fun match(left: Any?, right: Any?): Boolean

}

typealias Subst = PersMap<MetaLogical<*>, Any>

fun emptySubst() : Subst = Maps.of()

