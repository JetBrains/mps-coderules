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

import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler

import java.util.BitSet

/**
 * Provides functionality relevant to finding match(-es) for a rule.
 *
 * @author Fedor Isakov
 */
interface RuleMatchingProbe {

    /**
     * Returns rule for which this probe is created.
     */
    fun rule(): Rule

    /**
     * Returns all unconsumed (see [consume]) rule matches
     * relevant for the last expanded (see [expand]) [Occurrence].
     *
     * Returns up-to-date result only if called after [expand].
     * Shouldn't be relied upon if called after e.g. [consume] or [contract].
     */
    fun matches(): Collection<RuleMatchEx>

    /**
     * States whether this probe has any state
     * important for rule matching algorithm.
     */
    fun hasOccurrences(): Boolean

    /**
     * Tells the probe that [ruleMatch] is consumed.
     * Alters behavior of [matches].
     */
    fun consume(ruleMatch: RuleMatchEx): RuleMatchingProbe

    /**
     * Clears all internal state related to [ruleMatch].
     */
    fun forget(ruleMatch: RuleMatchEx): RuleMatchingProbe

    fun expand(occ: Occurrence): RuleMatchingProbe

    fun expand(occ: Occurrence, mask: BitSet, profiler: Profiler? = null): RuleMatchingProbe

    /**
     * Tells the probe that [occ] can't be used for finding matches.
     */
    fun contract(occ: Occurrence): RuleMatchingProbe

    /**
     * Turns the Probe's processing-related state linked with
     * [occ] from "fully-expanded" to "partially-expanded".
     * Doesn't modify internal state related to [matches], instead
     * modifies how the next [expand] of [occ] will be processed.
     *
     * Notion of "partially-expanded" state is important
     * only for incremental execution.
     */
    fun forgetExpanded(occ: Occurrence): RuleMatchingProbe

    /**
     * Clears internal state related to [consume]
     * as if [occ] were never seen by this probe.
     */
    fun forgetConsumed(occ: Occurrence): RuleMatchingProbe

}