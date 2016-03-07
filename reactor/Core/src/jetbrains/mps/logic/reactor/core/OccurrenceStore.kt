package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import java.util.*

/**
 * @author Fedor Isakov
 */

fun Constraint.occurrence(handler: Handler, context: LogicalContext): ConstraintOccurrence =
    MemConstraintOccurrence(handler, this, occurrenceArguments(context))

fun ConstraintOccurrence.isStored(): Boolean =
    // TODO: superfluous cast
    (this as StoreItem).stored

interface StoreItem {
    var alive: Boolean
    var stored: Boolean
    fun terminate(): Unit
}

class OccurrenceStore : LogicalObserver {

    val symbol2occurrences = HashMap<ConstraintSymbol, ConsList<ConstraintOccurrence>>()

    val logical2occurrences = HashMap<Logical<*>, ConsList<ConstraintOccurrence>>()

    val value2occurrences = HashMap<Any, ConsList<ConstraintOccurrence>>()

    override fun valueUpdated(logical: Logical<*>) { /* ignore */ }

    override fun parentUpdated(logical: Logical<*>) {
        // TODO: should we care about the order in which occurrences are stored?
        logical2occurrences[logical]?.let { toMerge ->
            var newList = logical2occurrences[logical.findRoot()] ?: emptyConsList()
            for (log in toMerge) {
                newList = newList.prepend(log)
            }
            logical2occurrences[logical.findRoot()] = newList
        }
        logical2occurrences.remove(logical)
    }

    fun storeAll(all: Iterable<ConstraintOccurrence>): Unit {
        for(occ in all) {
            store(occ)
        }
    }

    fun store(occ: ConstraintOccurrence): Unit {
        val symbol = occ.constraint().symbol()

        symbol2occurrences[symbol] =
            symbol2occurrences[symbol]?.prepend(occ) ?: cons(occ)

        for (arg in occ.arguments()) {
            when (arg) {
                is Logical<*>               -> {
                    logical2occurrences[arg.findRoot()] =
                        logical2occurrences[arg.findRoot()]?.prepend(occ) ?: cons(occ)
                    arg.addObserver(this)
                }
                else                        -> {
                    value2occurrences[arg!!] =
                        value2occurrences[arg]?.prepend(occ) ?: cons(occ)
                }
            }
        }

        // TODO: superfluous cast
        (occ as StoreItem).stored = true
    }

    fun discard(occ: ConstraintOccurrence): Unit {
        val symbol = occ.constraint().symbol()

        symbol2occurrences[symbol].remove(occ)?.let { newList ->
            symbol2occurrences[symbol] = newList
        }

        for (arg in occ.arguments()) {
            when (arg) {
                is Logical<*>               -> {
                    logical2occurrences[arg.findRoot()].remove(occ)?. let { newList ->
                        logical2occurrences[arg.findRoot()] = newList
                    }
                    // TODO: remove observer?
                }
                else                        -> {
                    value2occurrences[arg!!].remove(occ)?. let { newList ->
                        value2occurrences[arg] = newList
                    }
                }
            }
        }

        // TODO: superfluous cast
        (occ as StoreItem).stored = false
        occ.terminate()
    }

    fun forSymbol(symbol: ConstraintSymbol): Sequence<ConstraintOccurrence> {
        val list = symbol2occurrences[symbol] ?: emptyConsList()
        return list.asSequence().filter { co -> co.isStored() }
    }

    fun forLogical(ptr: Logical<*>): Sequence<ConstraintOccurrence> {
        val list = logical2occurrences[ptr.findRoot()] ?: emptyConsList()
        return list.asSequence().filter { co -> co.isStored() }
    }

    fun forValue(value: Any): Sequence<ConstraintOccurrence> {
        val list = value2occurrences[value] ?: emptyConsList()
        return list.asSequence().filter { co -> co.isStored() }
    }

    fun allOccurrences(): Sequence<ConstraintOccurrence> =
        symbol2occurrences.values.flatMap { it }.filter { co -> co.isStored() }.asSequence()

}

private data class MemConstraintOccurrence(val handler: Handler, val constraint: Constraint, val arguments: List<*>) :
    ConstraintOccurrence,
    LogicalObserver,
    StoreItem
{

    override var alive = true

    override var stored = false

    constructor(handler: Handler, constraint: Constraint, arguments: Collection<*>) :
    this(handler, constraint, ArrayList(arguments))
    {
        for (a in arguments) {
            if (a is Logical<*>) {
                a.addObserver(this)
            }
        }
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): Collection<*> = arguments

    override fun valueUpdated(logical: Logical<*>) {
        handler.queue(this)
    }

    override fun parentUpdated(logical: Logical<*>) {
        handler.queue(this)
    }

    override fun terminate() {
        for (a in arguments) {
            if (a is Logical<*>) {
                a.removeObserver(this)
            }
        }
        alive = false
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}
