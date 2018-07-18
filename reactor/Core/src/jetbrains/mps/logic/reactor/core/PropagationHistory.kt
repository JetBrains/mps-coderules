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

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.List as PersList
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.IdWrapper

internal class PropagationHistory {

    val recordedPropagation : PersMap<Rule, PersList<List<IdWrapper<ConstraintOccurrence>>>>

    constructor() {
        this.recordedPropagation = Maps.of<Rule, PersList<List<IdWrapper<ConstraintOccurrence>>>> ()
    }

    private constructor(recorded : PersMap<Rule, PersList<List<IdWrapper<ConstraintOccurrence>>>>) {
        this.recordedPropagation = recorded
    }

    fun isRecorded(m: Match): Boolean {
        if (!m.isPropagation) return false
        val test = m.keptOccurrences.map { occ -> IdWrapper(occ) }.sortedBy { idOcc -> idOcc.idHash }.toList()

        return recordedPropagation.get(m.rule)?.let { hist ->
            hist.any { recorded -> recorded == test }            // use the reference equality via IdWrapper
        } ?: false
    }

    fun record(pm: Match): PropagationHistory {
        if (pm.isPropagation) {
            val idOccs = pm.keptOccurrences.map { occ -> IdWrapper(occ) }.sortedBy { id -> id.idHash }.toList()

            val hist = recordedPropagation.get(pm.rule) ?: ConsList.empty<List<IdWrapper<ConstraintOccurrence>>>()

            return  PropagationHistory(recordedPropagation.put(pm.rule, hist.prepend(idOccs)))
        }
        return this
    }

}