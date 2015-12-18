package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import jetbrains.mps.logic.reactor.constraint.Constraint
import jetbrains.mps.logic.reactor.constraint.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.rule.Rule
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification
import java.lang.String

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

    abstract fun findOccurrences(constraint: Constraint, predicate: (ConstraintOccurrence) -> Boolean):
        Iterable<ConstraintOccurrence>

}

class PartialMatch(val rule: Rule) {

    var kept = ConsList.empty<Pair<Constraint, ConstraintOccurrence>>()
        private set
    var discarded = ConsList.empty<Pair<Constraint, ConstraintOccurrence>>()
        private set

    private constructor(
        original : PartialMatch,
        keep: Pair<Constraint, ConstraintOccurrence>?,
        discard: Pair<Constraint, ConstraintOccurrence>?) : this(original.rule)
    {
        kept = if (keep != null) original.kept.append(keep) else original.kept
        discarded = if (discard != null) original.discarded.append(discard) else original.discarded
    }

    fun clone() : PartialMatch = PartialMatch(this, null, null)

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

    fun isGuardSatisfied() : Boolean = true

    fun matches(): Boolean {
        return Unification.unify(this.toMatchTerm(), this.rule.toMatchTerm()).isSuccessful
    }
}

/**
 * True iff the constraint matches the occurrence.
 */
fun Constraint.matches(that: ConstraintOccurrence): Boolean {
    return Unification.unify(this.toMatchTerm(), that.toMatchTerm()).isSuccessful
}

fun PartialMatch.toMatchTerm(): Term = PartialMatchTerm(this)

class PartialMatchTerm(pm : PartialMatch) :
    Function(pm.rule.tag(), pm.occurrences().map { co -> co.toMatchTerm() }) {}

fun Rule.toMatchTerm(): Term = RuleTerm(this)

class RuleTerm(rule: Rule) :
    Function(rule.tag(), (rule.headKept() + rule.headReplaced()).map { c -> ConstraintTerm(c) }) {}

fun Constraint.toMatchTerm(): Term = ConstraintTerm(this)

class ConstraintTerm(constraint: Constraint) :
    Function(constraint.symbol(),
        constraint.arguments().map { a -> if (a is LogicalPattern) Variable(a) else Constant(a!!) }) {}

fun ConstraintOccurrence.toMatchTerm(): Term = ConstraintOccurrenceTerm(this)

class ConstraintOccurrenceTerm(occurrence: ConstraintOccurrence) :
    Function(occurrence.constraint().symbol(),
        occurrence.arguments().map { co -> asTerm(co) }) {}

fun asTerm(arg: Any?): Term {
    return when(arg) {
        is Logical<*> -> arg.toTerm()
        is Term -> arg
        else          -> Constant(arg!!)
    }
}

fun Logical<*>.toTerm(): Term = if (isBound) asTerm(findRoot().value()) else Constant(findRoot().value())

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