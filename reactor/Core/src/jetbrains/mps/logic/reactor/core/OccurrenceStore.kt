package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
import com.github.andrewoma.dexx.collection.Map as PersMap
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.util.cons
import jetbrains.mps.logic.reactor.util.emptyConsList
import jetbrains.mps.logic.reactor.util.remove
import jetbrains.mps.unification.Term
import java.util.*

/**
 * @author Fedor Isakov
 */

fun Constraint.occurrence(frameStack: FrameStack, context: LogicalContext): ConstraintOccurrence =
    MemConstraintOccurrence(frameStack, this, occurrenceArguments(context))

fun ConstraintOccurrence.isStored(): Boolean =
    // TODO: superfluous cast
    (this as StoreItem).stored

interface StoreItem {
    var alive: Boolean
    var stored: Boolean
    fun terminate(): Unit
}

interface OccurrenceIndex {

    fun forSymbol(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence>

    fun forLogical(logical: Logical<*>): Iterable<ConstraintOccurrence>

    fun forTerm(term: Term): Iterable<ConstraintOccurrence>

    fun forValue(value: Any): Iterable<ConstraintOccurrence>

}

class OccurrenceStore : LogicalObserver, OccurrenceIndex {

    val proxy: LogicalObserverProxy

    lateinit var symbol2occurrences: PersMap<ConstraintSymbol, ConsList<ConstraintOccurrence>>

    lateinit var logical2occurrences: PersMap<Logical<*>, ConsList<ConstraintOccurrence>>

    lateinit var term2occurrences: TermTrie<ConstraintOccurrence>

    lateinit var value2occurrences: PersMap<Any, ConsList<ConstraintOccurrence>>

    constructor(copyFrom: OccurrenceStore, proxy: LogicalObserverProxy)
    {
        this.proxy = proxy
        this.symbol2occurrences = copyFrom.symbol2occurrences
        this.logical2occurrences = copyFrom.logical2occurrences
        this.term2occurrences = copyFrom.term2occurrences
        this.value2occurrences = copyFrom.value2occurrences
    }

    constructor(proxy: LogicalObserverProxy) {
        this.proxy = proxy
        this.symbol2occurrences = Maps.of()
        this.logical2occurrences = Maps.of()
        this.term2occurrences = TermTrie()
        this.value2occurrences = Maps.of()
    }

    override fun valueUpdated(logical: Logical<*>) {
        logical2occurrences[logical.findRoot()]?.let { toMerge ->
            val value = logical.findRoot().value()
            when (value) {
                is Term     -> {
                    for (occ in toMerge) {
                        this.term2occurrences = term2occurrences.put(value, occ)
                    }
                }
                is Any      -> {
                    var newList = value2occurrences[value] ?: emptyConsList()
                    for (occ in toMerge) {
                        newList = newList.prepend(occ)
                    }
                    this.value2occurrences = value2occurrences.put(value, newList)
                }
                else        -> {
                    // never happens
                    throw NullPointerException()
                }
            }
        }
    }

    override fun parentUpdated(logical: Logical<*>) {
        // TODO: should we care about the order in which occurrences are stored?
        logical2occurrences[logical]?.let { toMerge ->
            var newList = logical2occurrences[logical.findRoot()] ?: emptyConsList()
            for (log in toMerge) {
                newList = newList.prepend(log)
            }
            this.logical2occurrences = logical2occurrences.remove(logical).put(logical.findRoot(), newList)
        }
    }

    fun storeAll(all: Iterable<ConstraintOccurrence>): Unit {
        for(occ in all) {
            store(occ)
        }
    }

    fun store(occ: ConstraintOccurrence): Unit {
        val symbol = occ.constraint().symbol()

        this.symbol2occurrences = symbol2occurrences.put(symbol,
            symbol2occurrences[symbol]?.prepend(occ) ?: cons(occ))

        for (arg in occ.arguments()) {
            when (arg) {
                is Logical<*>   -> {
                    this.logical2occurrences = logical2occurrences.put(arg.findRoot(),
                        logical2occurrences[arg.findRoot()]?.prepend(occ) ?: cons(occ))
                    proxy.addObserver(arg, this)
                }
                is Term         -> {
                    this.term2occurrences = term2occurrences.put(arg, occ)
                }
                is Any          -> {
                    this.value2occurrences = value2occurrences.put(arg,
                        value2occurrences[arg]?.prepend(occ) ?: cons(occ))
                }
                else            -> {
                    // never happens
                    throw NullPointerException()
                }
            }
        }

        // TODO: superfluous cast
        (occ as StoreItem).stored = true
    }

    fun discard(occ: ConstraintOccurrence): Unit {
        val symbol = occ.constraint().symbol()

        symbol2occurrences[symbol].remove(occ)?.let { newList ->
            this.symbol2occurrences = symbol2occurrences.put(symbol, newList)
        }

        for (arg in occ.arguments()) {
            when (arg) {
                is Logical<*>   -> {
                    logical2occurrences[arg.findRoot()].remove(occ)?.let { newList ->
                        this.logical2occurrences = logical2occurrences.put(arg.findRoot(), newList)
                    }
                    // TODO: remove observer?
                }
                is Term         -> {
                    this.term2occurrences = term2occurrences.remove(arg, occ)
                }
                is Any          ->  {
                    value2occurrences[arg].remove(occ)?. let { newList ->
                        this.value2occurrences = value2occurrences.put(arg, newList)
                    }
                }
            }
        }

        // TODO: superfluous cast
        (occ as StoreItem).stored = false
        occ.terminate()
    }

    fun allOccurrences(): Sequence<ConstraintOccurrence> {
        return symbol2occurrences.values().flatten().filter { co -> co.isStored() }.asSequence()
    }

    override fun forSymbol(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> {
        val list = symbol2occurrences[symbol] ?: emptyConsList()
        return list.filter { co -> co.isStored() }
    }

    override fun forLogical(logical: Logical<*>): Iterable<ConstraintOccurrence> {
        val list = logical2occurrences[logical.findRoot()] ?: emptyConsList()
        return list.filter { co -> co.isStored() }
    }

    override fun forTerm(term: Term): Iterable<ConstraintOccurrence> {
        return term2occurrences.lookupValues(term)
    }

    override fun forValue(value: Any): Iterable<ConstraintOccurrence> {
        val list = value2occurrences[value] ?: emptyConsList()
        return list.filter { co -> co.isStored() }
    }

}

private data class MemConstraintOccurrence(val frameStack: FrameStack, val constraint: Constraint, val arguments: List<*>) :
    ConstraintOccurrence,
    LogicalObserver,
    StoreItem
{

    override var alive = true

    override var stored = false

    constructor(frameStack: FrameStack, constraint: Constraint, arguments: Collection<*>) :
        this(frameStack, constraint, ArrayList(arguments))
    {
        for (a in arguments) {
            if (a is Logical<*>) {
                frameStack.current.addObserver(a, this)
            }
        }
    }

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<*> = arguments

    override fun valueUpdated(logical: Logical<*>) {
        (EvaluationSession.current() as SessionObjects).handler().queue(this)
    }

    override fun parentUpdated(logical: Logical<*>) {
        (EvaluationSession.current() as SessionObjects).handler().queue(this)
    }

    override fun terminate() {
        for (a in arguments) {
            if (a is Logical<*>) {
                frameStack.current.removeObserver(a, this)
            }
        }
        alive = false
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}
