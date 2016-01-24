package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchRule
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.unification.Substitution
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification

/**
 * @author Fedor Isakov
 */

class Matcher {

    interface AuxOccurrences {

        fun findOccurrences(
                symbol: ConstraintSymbol,
                logicals: Iterable<Logical<*>>,
                acceptable: (ConstraintOccurrence) -> Boolean): Sequence<ConstraintOccurrence>

    }

    val rules: RuleIndex
    val aux: AuxOccurrences
    val profiler: Profiler?

    constructor(rules: Collection<Rule>, aux: AuxOccurrences, profiler: Profiler? = null) {
        this.rules = RuleIndex(rules)
        this.aux = aux
        this.profiler = profiler
    }

    fun lookupMatches(occ: ConstraintOccurrence): Sequence<PartialMatch> {
        return profiler.profile<Sequence<PartialMatch>>("lookupMatches", {

            val partialMatches = rules.forSymbol(occ.constraint().symbol())?.asSequence()?.flatMap { r ->
                val matchedKept = r.headKept().filter { cst -> cst.matches(occ) }.asSequence()
                val matchedDiscarded = r.headReplaced().filter { cst -> cst.matches(occ) }.asSequence()

                matchedKept.map { cst -> PartialMatch(r, profiler).keep(cst, occ) } +
                    matchedDiscarded.map { cst -> PartialMatch(r, profiler).discard(cst, occ) }
            }

            partialMatches?.flatMap { pm -> pm.completeMatch(aux) }?.filter { pm -> pm.matches() } ?: emptySequence()

        })
    }


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