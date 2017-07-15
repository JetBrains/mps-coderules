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
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import jetbrains.mps.unification.Substitution
import jetbrains.mps.unification.Unification

internal class PartialMatch(val rule: Rule) {

    internal lateinit var keptOccurrences: Array<ConstraintOccurrence?>
        private set

    internal lateinit var discardedOccurrences: Array<ConstraintOccurrence?>
        private set

    private lateinit var substitution: Substitution

    constructor(rule: Rule, keptSize: Int, discardedSize: Int) :
    this(rule)
    {
        this.keptOccurrences = arrayOfNulls(keptSize)
        this.discardedOccurrences = arrayOfNulls(discardedSize)
    }


    fun complete(profiler: Profiler? = null): Match {
        return profiler.profile<Match>("matchesRule_${rule.tag()}") {

            val kept = keptOccurrences.asList() as List<ConstraintOccurrence>
            val discarded = discardedOccurrences.asList() as List<ConstraintOccurrence>

            this.substitution = Unification.unify(MatchTerm(rule, kept, discarded), RuleTerm(rule), MatchTermWrapper())

            if (substitution.isSuccessful) {
                Match(rule, substitution, kept, discarded)
            }
            else
                Match(rule, substitution, emptyList(), emptyList())

        }
    }

    internal fun keep(occ: ConstraintOccurrence, idx: Int): PartialMatch {
        val match = PartialMatch(rule)
        match.keptOccurrences = this.keptOccurrences.copyOf()
        match.keptOccurrences[idx] = occ
        match.discardedOccurrences = this.discardedOccurrences
        return match
    }

    internal fun discard(occ: ConstraintOccurrence, idx: Int): PartialMatch {
        val match = PartialMatch(rule)
        match.keptOccurrences = this.keptOccurrences
        match.discardedOccurrences = this.discardedOccurrences.copyOf()
        match.discardedOccurrences[idx] = occ
        return match
    }

    override fun toString(): String = "${keptOccurrences.toList()} \\ ${discardedOccurrences.toList()}"
}