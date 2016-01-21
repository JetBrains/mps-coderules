package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import java.util.*

/**
 * @author Fedor Isakov
 */

class OccurrenceStore {

    val symbol2list = HashMap<ConstraintSymbol, MutableList<ConstraintOccurrence>>()

    fun addAll(all: Iterable<ConstraintOccurrence>): Unit {
        for(occ in all) {
            add(occ)
        }
    }

    fun add(occ: ConstraintOccurrence): Unit {
        val symbol = occ.constraint().symbol()
        if (!symbol2list.containsKey(symbol)) {
            symbol2list[symbol] = ArrayList<ConstraintOccurrence>()
        }
        symbol2list[symbol]!!.add(occ)
    }

    fun remove(occ: ConstraintOccurrence): Unit {
        val symbol = occ.constraint().symbol()
        if (symbol2list.containsKey(symbol)) {
            symbol2list[symbol]!!.remove(occ)
        }
    }

    fun isStored(occ: ConstraintOccurrence): Boolean {
        val symbol = occ.constraint().symbol()
        if (symbol2list.containsKey(symbol)) {
            return symbol2list[symbol]!!.contains(occ)
        }
        else
            return false
    }

    fun allFor(cst: Constraint): Iterable<ConstraintOccurrence> {
        val symbol = cst.symbol()
        if (symbol2list.containsKey(symbol)) {
            return symbol2list[symbol]!!
        }
        else
            return emptyList()
    }

    fun allOccurrences(): Iterable<ConstraintOccurrence> =
        symbol2list.values.flatMap { it }

}