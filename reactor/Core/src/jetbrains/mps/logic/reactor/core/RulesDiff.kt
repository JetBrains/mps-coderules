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

import jetbrains.mps.logic.reactor.program.DependentRulesSpec
import jetbrains.mps.logic.reactor.program.Rule


class RulesDiff(
    preserved: Iterable<Rule>,
    val added: Iterable<Rule>,
    val removed: Set<Any>,
    val removedDependent: Set<Any>
) {
    private val preserved: Map<Any, Rule> = HashMap<Any, Rule>().apply {
        preserved.forEach { put(it.uniqueTag(), it) }
    }

    fun getPreservedRule(utag: Any): Rule? = preserved[utag]

    fun getPreserved(): Set<Any> = preserved.keys

    companion object {
        @JvmStatic
        fun emptyDiff() = RulesDiff(emptyList(), emptyList(), emptySet(), emptySet())

        @JvmStatic
        fun findDiff(old: Iterable<Rule>, new: Iterable<Rule>, ruleDeps: DependentRulesSpec): RulesDiff {
            val oldTagsSet = old.map { it.uniqueTag() }.toHashSet()
            val newTagsSet = new.map { it.uniqueTag() }.toHashSet()

            val added = new.filter { !oldTagsSet.contains(it.uniqueTag()) }
            val (preserved, removed) = old.partition { newTagsSet.contains(it.uniqueTag()) }
            val removedTags: Set<Any> = removed.map { it.uniqueTag() }.toSet()

            //fixme: remove
            val removedDeps = HashSet<Any>()
            for (rule in added) {
                for (depRule in ruleDeps.getDependentRules(rule)) {
                    if (!removedTags.contains(depRule)) {
                        removedDeps.add(depRule)
                    }
                }
            }

            return RulesDiff(preserved, added, removedTags, removedDeps)
        }

        @JvmStatic
        fun findDiff(old: Iterable<Rule>, new: Iterable<Rule>): RulesDiff =
            findDiff(old, new, DependentRulesSpec.EmptySpec)
    }
}