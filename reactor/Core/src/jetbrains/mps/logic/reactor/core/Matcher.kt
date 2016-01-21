package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchRule
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

class Matcher {

    interface AuxOccurrences {

        fun findOccurrences(constraint: Constraint, acceptable: (ConstraintOccurrence) -> Boolean):
            Iterable<ConstraintOccurrence>

    }

    val rules: RuleIndex
    val aux: AuxOccurrences
    val profiler: Profiler?

    constructor(rules: Collection<Rule>, aux: AuxOccurrences, profiler: Profiler? = null) {
        this.rules = RuleIndex(rules)
        this.aux = aux
        this.profiler = profiler
    }

    fun lookupMatches(occ: ConstraintOccurrence): Iterable<PartialMatch> {
        return profiler.profile<Iterable<PartialMatch>>("lookupMatches", {

            val partialMatches = rules.forSymbol(occ.constraint().symbol())?.flatMap { r ->
                val matchedKept = r.headKept().filter { cst -> cst.matches(occ) }
                val matchedDiscarded = r.headReplaced().filter { cst -> cst.matches(occ) }

                matchedKept.map { cst -> PartialMatch(r).keep(cst, occ) } +
                    matchedDiscarded.map { cst -> PartialMatch(r).discard(cst, occ) }
            }

            partialMatches?.flatMap { pm -> completeMatch(pm) }?.filter { pm -> pm.matches() } ?: emptyList()

        })
    }

    private fun completeMatch(match: PartialMatch) : Iterable<PartialMatch> {
        if (!match.isPartial()) return listOf(match)

        return profiler.profile<Iterable<PartialMatch>>("completeMatch", {

            val keptToSatisfy = match.rule.headKept().filter { cst -> !match.kept.any { p -> cst === p.first } }
            val matchesFromKept = keptToSatisfy.flatMap { cst ->
                aux.findOccurrences(cst, { occ ->
                    profiler.profile<Boolean>("acceptable", {

                        !match.hasOccurrence(occ)

                    })
                }).flatMap { occ -> completeMatch(match.keep(cst, occ)) }
            }

            val discardedToSatisfy = match.rule.headReplaced().filter { cst -> !match.discarded.any { p -> cst === p.first } }
            val matchesFromDiscarded = discardedToSatisfy.flatMap { cst ->
                aux.findOccurrences(cst, { occ ->
                    profiler.profile<Boolean>("acceptable", {

                        !match.hasOccurrence(occ)

                    })
                }).flatMap { occ -> completeMatch(match.discard(cst, occ)) }
            }

            matchesFromKept + matchesFromDiscarded

        })
    }

    inner class PartialMatch(val rule: Rule) : MatchRule {

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
//            return profiler.profile<Boolean>("hasOccurrence", {

                return kept.any { p -> p.second === occ } || discarded.any { p -> p.second === occ }

//            })
        }

        fun isPartial() : Boolean {
//            return profiler.profile<Boolean>("isPartial", {

                return rule.headKept().any { cst -> !kept.any { p -> p.first === cst } } ||
                       rule.headReplaced().any { cst -> !discarded.any { p -> p.first === cst } }

//            })
        }

        fun occurrences(): Collection<ConstraintOccurrence> {
//            return profiler.profile<Collection<ConstraintOccurrence>>("occurrences", {

                return rule.headKept().map { cst -> (kept.find { p -> p.first === cst }?.second) ?: TODO() } +
                       rule.headReplaced().map { cst -> discarded.find { p -> p.first === cst }?.second ?: TODO() }

//            })
        }

        fun matches(): Boolean {
            return profiler.profile<Boolean>("matches", {

                val subst = Unification.unify(PartialMatchTerm(this), RuleTerm(this.rule))
                if (!subst.isSuccessful) return false

                // variables come from LogicalPattern instances in rules
                // any successful binding results in either new Logical with associated value,
                // or a new value for a Logical already existing in this context

                // only one parameter of the unification can contain variables,
                // thus triangular form never has variables on the right hand side
                this.logicalContext = object: LogicalContext {

                    // invariant: the variables in substitution bindings can only be instances of LogicalPattern
                    val pattern2value: MutableMap<LogicalPattern<*>, Any?> = HashMap(subst.bindings().map { b ->
                        (b.`var`().symbol() as LogicalPattern<Any>).to(b.term().toValue()) }.toMap())

                    val pattern2logical: MutableMap<LogicalPattern<*>, Logical<*>> = HashMap()

                    override fun <V : Any> variable(logicalPattern: LogicalPattern<V>): Logical<V> {
                        if (!pattern2logical.containsKey(logicalPattern)) {
                            if (pattern2value.containsKey(logicalPattern)) {
                                val value = pattern2value[logicalPattern]
                                pattern2logical[logicalPattern] = if (value is Logical<*>) value else MemLogical(value)
                            }
                            else {
                                pattern2logical[logicalPattern] = logicalPattern.logical()
                            }
                        }
                        return pattern2logical[logicalPattern] as Logical<V>
                    }
                }
                return true

            })
        }

        fun logicalContext(): LogicalContext = logicalContext

        override fun rule(): Rule = rule

        override fun matchHeadKept(): Iterable<ConstraintOccurrence> = kept.map { p -> p.second }

        override fun matchHeadReplaced(): Iterable<ConstraintOccurrence> = discarded.map { p -> p.second }

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
class PartialMatchTerm(pm : Matcher.PartialMatch) :
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
            String.valueOf(symbol).compareTo(String.valueOf(symbol))
        else
            String.valueOf(this.javaClass).compareTo(String.valueOf(other.javaClass))
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