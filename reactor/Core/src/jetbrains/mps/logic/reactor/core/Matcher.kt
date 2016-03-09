package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Maps
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification
import com.github.andrewoma.dexx.collection.List as PersList

/**
 * @author Fedor Isakov
 */

class Matcher {

    interface AuxOccurrencesLookup {

        fun lookupAuxOccurrences(
            symbol: ConstraintSymbol,
            logicals: Iterable<Logical<*>>,
            values: Iterable<Any> = emptyList(),
            acceptable: (ConstraintOccurrence) -> Boolean): Sequence<ConstraintOccurrence>

    }

    val rules: RuleIndex
    private val auxLookup: AuxOccurrencesLookup
    private val profiler: Profiler?
    private val propHistory = PropagationHistory()

    constructor(rules: Collection<Rule>, aux: AuxOccurrencesLookup, profiler: Profiler? = null) {
        this.rules = RuleIndex(rules)
        this.auxLookup = aux
        this.profiler = profiler
    }

    fun lookupMatches(occ: ConstraintOccurrence): Sequence<PartialMatch> {
        return profiler.profile<Sequence<PartialMatch>>("lookupMatches", {

            val matchingRules = rules.forOccurrence(occ)
            val partialMatches = matchingRules.asSequence().flatMap { rule ->

                rule.headKept().asSequence().filter { cst ->
                    cst.symbol() == occ.constraint().symbol() && cst.matches(occ, profiler) }.map { cst ->
                    PartialMatch(rule, profiler).keep(cst, occ) } +

                rule.headReplaced().asSequence().filter { cst ->
                    cst.symbol() == occ.constraint().symbol() && cst.matches(occ, profiler) }.map { cst ->
                    PartialMatch(rule, profiler).discard(cst, occ) }

            }

            val fullMatches = partialMatches.flatMap { pm -> pm.completeMatch(auxLookup) }

            fullMatches.filter { pm -> !propHistory.isRecorded(pm) && pm.matches() }
        })
    }

    fun recordPropagation(pm: PartialMatch) = propHistory.record(pm)

}

private class PropagationHistory {

    var recordedPropagation = Maps.of<Rule, PersList<List<IdWrapper<ConstraintOccurrence>>>>()

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

class IdWrapper<T>(val wrapped: T) {

    val idHash = System.identityHashCode(wrapped)

    override fun hashCode(): Int = idHash

    override fun equals(other: Any?): Boolean {
        if (other is IdWrapper<*>)
            return this.wrapped === other.wrapped // referential equality!
        return false
    }

    override fun toString(): String = "${wrapped.toString()} #$idHash"

}

/**
 * True iff the constraint matches the occurrence.
 */
fun Constraint.matches(that: ConstraintOccurrence, profiler: Profiler? = null): Boolean {
    val constraintTerm = ConstraintTerm(this)
    val constraintOccurrenceTerm = ConstraintOccurrenceTerm(that)
    return profiler.profile<Boolean>("unifyConstraintOccurrence", {

        return Unification.unify(constraintTerm, constraintOccurrenceTerm).isSuccessful

    })
}

/** Function term with arguments == constraints converted to terms. May contain variables. */
class RuleTerm(rule: Rule) :
    Function(rule.tag(), (rule.headKept() + rule.headReplaced()).map { c -> ConstraintTerm(c) }) {}

/** Function term with arguments == constraint arguments converted to terms.
 *  MetaLogical arguments are term variables.
 *  Everything else is either a term or a constant wrapping the value. */
class ConstraintTerm(constraint: Constraint) :
    Function(constraint.symbol(),
        constraint.arguments().map { arg -> if (arg is MetaLogical<*>) Variable(arg) else asTerm(arg) }) {}

/** Function term with arguments == terms corresponding to constraint occurrences. Never contains variables. */
class PartialMatchTerm(pm : PartialMatch) :
    Function(pm.rule.tag(), pm.occurrences().map { co -> ConstraintOccurrenceTerm(co) }) {}

/** Function term with arguments == constraint occurrence arguments converted to terms.
 *  Logical arguments are constants wrapping the logical itself.
 *  Everything else is either a term or a constant wrapping the value.
 *  Never contains variable terms. */
class ConstraintOccurrenceTerm(occurrence: ConstraintOccurrence) :
    Function(occurrence.constraint().symbol(),
        occurrence.arguments().map { arg ->
            if (arg is Logical<*>) arg.toTerm() else asTerm(arg) }) {}

fun asTerm(arg: Any?): Term = if (arg is Term && !arg.`is`(Term.Kind.VAR)) arg else Constant(arg!!)

fun Logical<*>.toTerm(): Term = Constant(findRoot())

fun Term.toValue(): Any? = if (this is Constant) this.symbol() else this

abstract class TermImpl(val symbol: Any) : Term {

    override fun symbol() = symbol

    override fun compareTo(other: Term): Int {
        return if (this.javaClass == other.javaClass)
            symbol.toString().compareTo(symbol.toString())
        else
            this.javaClass.toString().compareTo(other.javaClass.toString())
    }
}

open class Function(symbol: Any, val arguments: List<out Term>) : TermImpl(symbol) {

    override fun arguments(): Collection<out Term> = arguments

    override fun `is`(kind: Term.Kind?): Boolean = (kind == Term.Kind.FUN)

    override fun get(): Term = this
}

class Constant(symbol: Any) : Function(symbol, emptyList()) {}

class Variable(symbol: Any) : TermImpl(symbol) {

    override fun arguments(): Collection<out Term> = emptyList()

    override fun `is`(kind: Term.Kind): Boolean = (kind == Term.Kind.VAR)

    override fun get(): Term = TODO()
}