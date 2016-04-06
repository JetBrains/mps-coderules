package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
import com.github.andrewoma.dexx.collection.Map as PersMap
import com.github.andrewoma.dexx.collection.List as PersList
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.program.Rule

class PropagationHistory {

    val recordedPropagation : PersMap<Rule, PersList<List<IdWrapper<ConstraintOccurrence>>>>

    constructor() {
        this.recordedPropagation = Maps.of<Rule, PersList<List<IdWrapper<ConstraintOccurrence>>>> ()
    }

    private constructor(recorded : PersMap<Rule, PersList<List<IdWrapper<ConstraintOccurrence>>>>) {
        this.recordedPropagation = recorded
    }

    fun isRecorded(pm: PartialMatch): Boolean {
        if (!pm.isPropagation()) return false
        val test = pm.kept.map { pair -> IdWrapper(pair.second) }.sortedBy { idOcc -> idOcc.idHash }.toList()

        return recordedPropagation.get(pm.rule)?.let { hist ->
            hist.any { recorded ->
                recorded == test
            }            // use the reference equality via IdWrapper
        } ?: false
    }

    fun record(pm: PartialMatch): PropagationHistory {
        if (pm.isPropagation()) {
            val idOccs = pm.kept.map { pair -> IdWrapper(pair.second) }.sortedBy { id -> id.idHash }.toList()

            val hist = recordedPropagation.get(pm.rule) ?: ConsList.empty<List<IdWrapper<ConstraintOccurrence>>>()

            return  PropagationHistory(recordedPropagation.put(pm.rule, hist.prepend(idOccs)))
        }
        return this
    }

}