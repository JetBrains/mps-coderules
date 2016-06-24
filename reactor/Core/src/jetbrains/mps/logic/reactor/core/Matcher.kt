package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchRule
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalOwner
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import jetbrains.mps.unification.Substitution
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.TermWrapper
import jetbrains.mps.unification.Unification
import org.jetbrains.kotlin.container.topologicalSort
import java.util.*
import com.github.andrewoma.dexx.collection.List as PersList

/**
 * @author Fedor Isakov
 */


class Matcher(val ruleIndex: RuleIndex,
              val activeOcc: ConstraintOccurrence,
              val aux: OccurrenceIndex,
              val profiler: Profiler? = null) : Iterable<Match>
{

    private val matchTries: List<MatchTrie> by lazy(LazyThreadSafetyMode.NONE) {
        profiler.profile<List<MatchTrie>>("lookupRules_${activeOcc.constraint().symbol()}") {

            ArrayList<MatchTrie>(4).apply {
                for(rule in  ruleIndex.forOccurrence(activeOcc).toList()) {
                    add(MatchTrie(rule, activeOcc, aux, profiler))
                }
            }

        }
    }

    override fun iterator() = object : Iterator<Match> {

        val triesIt: Iterator<MatchTrie> = matchTries.iterator()

        var pmIt: Iterator<PartialMatch>? = null

        var nextMatch: Match? = null

        override fun hasNext(): Boolean {
            calcNext()
            return nextMatch != null
        }

        override fun next(): Match {
            calcNext()
            val tmp = nextMatch
            this.nextMatch = null
            return tmp ?: throw NoSuchElementException()
        }

        private fun calcNext() {
            while (nextMatch == null || !nextMatch!!.successful) {
                while (pmIt == null || !(pmIt!!.hasNext())) {
                    if (!triesIt.hasNext()) {
                        return
                    }
                    pmIt = triesIt.next().iterator()
                }
                if (pmIt!!.hasNext()) {
                    this.nextMatch = pmIt!!.next().complete(profiler)
                }
            }
        }
    }
}


class Match(val rule: Rule,
            val substitution: Substitution,
            val keptOccurrences: List<ConstraintOccurrence>,
            val discardedOccurrences: List<ConstraintOccurrence>) : MatchRule
{

    val logicalContext: LogicalContext by lazy(LazyThreadSafetyMode.NONE) {
        object : LogicalContext {

            // invariant: the variables in substitution bindings can only be instances of MetaLogical
            val meta2value = substitution.bindings().map { b ->
                (b.`var`().symbol() as MetaLogical<Any>).to(b.term().toValue())
            }.toMap(HashMap<MetaLogical<*>, Any?>())

            val meta2logical = HashMap<MetaLogical<*>, Logical<*>>()

            override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> {
                if (!meta2logical.containsKey(metaLogical)) {
                    if (meta2value.containsKey(metaLogical)) {
                        val value = meta2value[metaLogical]
                        meta2logical[metaLogical] = when (value) {
                            is Logical<*>   -> value
                            is LogicalOwner -> value.logical()
                            else            -> MemLogical(value)
                        }
                    } else {
                        meta2logical[metaLogical] = metaLogical.logical()
                    }
                }
                return meta2logical[metaLogical] as Logical<V>
            }

        }
    }

    val patternPredicates: List<Predicate> by lazy(LazyThreadSafetyMode.NONE) {
        (rule.headKept() + rule.headReplaced()).flatMap { constraint -> constraint.patternPredicates() }.toList()
    }

    val successful: Boolean
        get() = substitution.isSuccessful

    val isPropagation: Boolean
        get() = !keptOccurrences.isEmpty() && discardedOccurrences.isEmpty()

    override fun rule(): Rule = rule

    override fun matchHeadKept(): Iterable<ConstraintOccurrence> = keptOccurrences

    override fun matchHeadReplaced(): Iterable<ConstraintOccurrence> = discardedOccurrences

}

/**
 * True iff the constraint matches the occurrence.
 */
fun Constraint.matches(that: ConstraintOccurrence, profiler: Profiler? = null): Boolean {
    val constraintTerm = ConstraintPatternTerm(this)
    val constraintOccurrenceTerm = ConstraintOccurrenceTerm(that)
    return profiler.profile<Boolean>("unifyConstraintOccurrence") {

        return Unification.unify(constraintTerm, constraintOccurrenceTerm, MatchTermWrapper()).isSuccessful

    }
}

/** Function term with arguments == constraints converted to terms. May contain variables. */
class RuleTerm(rule: Rule) :
    Function(
        rule.tag(),
        (rule.headKept() + rule.headReplaced()).map { c -> ConstraintPatternTerm(c) }) {}

/** Function term with arguments == constraint arguments converted to terms.
 *  MetaLogical arguments are term variables.
 *  Everything else is either a term or a constant wrapping the value. */
class ConstraintPatternTerm(constraint: Constraint) :
    Function(
        constraint.symbol(),
        constraint.arguments().map  { arg -> when (arg) {
                                                is MetaLogical<*>   -> Variable(arg)
                                                else                -> arg.asTerm()
                                            }
                                    }) {}

/** Function term with arguments == terms corresponding to constraint occurrences. Never contains variables. */
class MatchTerm(rule: Rule, kept: List<ConstraintOccurrence>, discarded: List<ConstraintOccurrence>) :
    Function(rule.tag(), (kept + discarded).map { co -> ConstraintOccurrenceTerm(co) }) {}

/** Function term with arguments == constraint occurrence arguments converted to terms.
 *  Logical arguments are constants wrapping the logical itself.
 *  Everything else is either a term or a constant wrapping the value.
 *  Never contains variable terms. */
class ConstraintOccurrenceTerm(occurrence: ConstraintOccurrence) :
    Function(
        occurrence.constraint().symbol(),
        occurrence.arguments().map { arg -> when (arg) {
                                                is Logical<*>       ->  if (arg.isBound) arg.findRoot().value().asTerm()
                                                                        else             Constant(arg.findRoot())
                                                else                ->  arg.asTerm()
                                            }
                                    }) {}

class MatchTermWrapper : TermWrapper {

    override fun wrap(orig: Term): Term =
        if (orig.`is`(Term.Kind.VAR))   when (orig.symbol()) {
                                            is MetaLogical<*>   -> orig
                                            else                -> WrapConstant(orig)
                                        }
        else orig

    override fun unwrap(wrapper: Term): Term =
        if (wrapper is WrapConstant) wrapper.symbol() else wrapper

}

fun Any?.asTerm(): Term = when(this) {
    is Term             -> this              // wrapped before unification
    is Any              -> Constant(this)
    else                -> throw NullPointerException()
}

// FIXME: "unpacking" the logicals
fun Term.toValue(): Any? = if (this is Constant) this.symbol() else this

abstract class TermImpl(val symbol: Any) : Term {

    override fun symbol() = symbol

    override fun compareTo(other: Term): Int {
        return if (this.javaClass === other.javaClass)
            symbol.toString().compareTo(symbol.toString())
        else
            this.javaClass.toString().compareTo(other.javaClass.toString())
    }
}

open class Function(symbol: Any, val arguments: List<Term>) : TermImpl(symbol) {

    override fun arguments(): Collection<Term> = arguments

    override fun `is`(kind: Term.Kind?): Boolean = (kind === Term.Kind.FUN)

    override fun get(): Term = this
}

class Constant(symbol: Any) : Function(symbol, emptyList()) {}

class WrapConstant(symbol: Term) : Function(symbol, emptyList()) {
    override fun symbol(): Term = super.symbol() as Term
}

class Variable(symbol: Any) : TermImpl(symbol) {

    override fun arguments(): Collection<Term> = emptyList()

    override fun `is`(kind: Term.Kind): Boolean = (kind === Term.Kind.VAR)

    override fun get(): Term = TODO()
}