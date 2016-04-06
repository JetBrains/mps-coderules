package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.program.Rule

class PropagationHistory {

    var recordedPropagation = Maps.of<Rule, com.github.andrewoma.dexx.collection.List<List<IdWrapper<ConstraintOccurrence>>>>()

    fun isRecorded(pm: PartialMatch): Boolean {
        if (!pm.isPropagation()) return false
        val test = pm.kept.map { pair -> IdWrapper(pair.second) }.sortedBy { idOcc -> idOcc.idHash }.toList()

        return recordedPropagation.get(pm.rule)?.let { hist ->
            hist.any { recorded ->
                recorded == test
            }            // use the reference equality via IdWrapper
        } ?: false
    }

    fun record(pm: PartialMatch): PartialMatch {
        if (pm.isPropagation()) {
            val idOccs = pm.kept.map { pair -> IdWrapper(pair.second) }.sortedBy { id -> id.idHash }.toList()

            val hist = recordedPropagation.get(pm.rule) ?: ConsList.empty<List<IdWrapper<ConstraintOccurrence>>>()

            recordedPropagation = recordedPropagation.put(pm.rule, hist.prepend(idOccs))
        }
        return pm
    }

}