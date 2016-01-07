package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification
import java.lang.String
import java.util.*

/**
 * @author Fedor Isakov
 */

abstract class Matcher(val rules: Collection<Rule>) {

    fun lookupMatches(occ: ConstraintOccurrence): Iterable<PartialMatch> {
        val partialMatches = rules.flatMap { r ->
            val matchedKept = r.headKept().filter { cst -> cst.matches(occ) }
            val matchedDiscarded = r.headReplaced().filter { cst -> cst.matches(occ) }

            matchedKept.map { cst -> PartialMatch(r).keep(cst, occ) } +
                matchedDiscarded.map { cst -> PartialMatch(r).discard(cst, occ) }
        }
        return partialMatches.flatMap { pm -> completeMatch(pm) }.filter { pm ->  pm.matches() }
    }

    private fun completeMatch(match: PartialMatch) : Iterable<PartialMatch> {
        if (!match.isPartial()) return listOf(match)

        val keptToSatisfy = match.rule.headKept().filter { cst -> !match.kept.any { p -> cst === p.first } }
        val matchesFromKept = keptToSatisfy.flatMap { cst ->
            findOccurrences(cst, { occ -> !match.hasOccurrence(occ) }).flatMap { occ -> completeMatch(match.keep(cst, occ)) }
        }

        val discardedToSatisfy = match.rule.headReplaced().filter { cst -> !match.discarded.any { p -> cst === p.first } }
        val matchesFromDiscarded = discardedToSatisfy.flatMap { cst ->
            findOccurrences(cst, { occ -> !match.hasOccurrence(occ) }).flatMap { occ -> completeMatch(match.discard(cst, occ)) }
        }

        return matchesFromKept + matchesFromDiscarded
    }

    abstract fun findOccurrences(constraint: Constraint, acceptable: (ConstraintOccurrence) -> Boolean):
        Iterable<ConstraintOccurrence>

}

class PartialMatch(val rule: Rule) {

    var kept = ConsList.empty<Pair<Constraint, ConstraintOccurrence>>()
        private set
    var discarded = ConsList.empty<Pair<Constraint, ConstraintOccurrence>>()
        private set
    private lateinit var logicalContext : LogicalContext

    private constructor(
        original : PartialMatch,
        keep: Pair<Constraint, ConstraintOccurrence>?,
        discard: Pair<Constraint, ConstraintOccurrence>?) : this(original.rule)
    {
        kept = if (keep != null) original.kept.append(keep) else original.kept
        discarded = if (discard != null) original.discarded.append(discard) else original.discarded
    }

    fun keep (constraint: Constraint, occ: ConstraintOccurrence) = PartialMatch(this, Pair(constraint, occ), null)

    fun discard (constraint: Constraint, occ: ConstraintOccurrence) = PartialMatch(this, null, Pair(constraint, occ))

    fun hasOccurrence(occ: ConstraintOccurrence): Boolean {
        return kept.any { p -> p.second === occ} || discarded.any { p -> p.second === occ }
    }

    fun isPartial() : Boolean =
        rule.headKept().any { cst -> !kept.any { p -> p.first === cst } } ||
            rule.headReplaced().any { cst -> !discarded.any { p -> p.first === cst } }

    fun occurrences(): Collection<ConstraintOccurrence> =
        rule.headKept().map { cst -> (kept.find { p -> p.first === cst }?.second) ?: TODO() } +
            rule.headReplaced().map { cst -> discarded.find { p -> p.first === cst }?.second ?: TODO() }

    fun matches(): Boolean {
        val subst = Unification.unify(PartialMatchTerm(this), RuleTerm(this.rule))
        if (!subst.isSuccessful) return false

        // only one parameter of the unification can contain variables,
        // thus triangular form never has variables on the right hand side
        this.logicalContext = object: LogicalContext {

            val var2val: MutableMap<LogicalPattern<*>, Any?> = HashMap(subst.bindings().map { b ->
                (b.`var`().symbol() as LogicalPattern<Any>).to(b.term().toValue()) }.toMap())

            override fun <V : Any?> valueFor(logicalPattern: LogicalPattern<V>): V {
                if (var2val.containsKey(logicalPattern)) {
                    return var2val[logicalPattern] as V
                }
                else {
                    val logical = logicalPattern.logical()
                    var2val.put(logicalPattern, logical)
                    return logical as V
                }
            }
        }

        return true
    }

    fun logicalContext(): LogicalContext = logicalContext
}



/**
 * True iff the constraint matches the occurrence.
 */
fun Constraint.matches(that: ConstraintOccurrence): Boolean {
    return Unification.unify(ConstraintTerm(this), ConstraintOccurrenceTerm(that)).isSuccessful
}

/** Function term with arguments == constraints converted to terms. May contain variables. */
class RuleTerm(rule: Rule) :
    Function(rule.tag(), (rule.headKept() + rule.headReplaced()).map { c -> ConstraintTerm(c) }) {}

/** Function term with arguments == constraint arguments converted to terms.
 *  LogicalPattern arguments are term variables.
 *  Everything else is either a term or a constant wrapping the value. */
class ConstraintTerm(constraint: Constraint) :
    Function(constraint.symbol(),
        constraint.arguments().map { arg -> if (arg is LogicalPattern<*>) Variable(arg) else asTerm(arg) }) {}

/** Function term with arguments == terms corresponding to constraint occurrences. Never contains variables. */
class PartialMatchTerm(pm : PartialMatch) :
    Function(pm.rule.tag(), pm.occurrences().map { co -> ConstraintOccurrenceTerm(co) }) {}

/** Function term with arguments == constraint occurrence arguments converted to terms.
 *  Logical arguments are constants wrapping the logical itself.
 *  Everything else is either a term or a constant wrapping the value.
 *  Never contains variable terms. */
class ConstraintOccurrenceTerm(occurrence: ConstraintOccurrence) :
    Function(occurrence.constraint().symbol(),
        occurrence.arguments().map { arg -> if (arg is Logical<*>) arg.toTerm() else asTerm(arg) }) {}

fun asTerm(arg: Any?): Term = if (arg is Term) arg else Constant(arg!!)

fun Logical<*>.toTerm(): Term = Constant(findRoot())

fun Term.toValue(): Any? = if (this is Constant) this.symbol() else this

abstract class TermImpl(val symbol: Any) : Term {

    override fun symbol() = symbol

    override fun compareTo(other: Term): Int {
        if (other.javaClass == this.javaClass) {
            return String.valueOf(symbol).compareTo(String.valueOf(symbol))
        }
        else TODO()
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