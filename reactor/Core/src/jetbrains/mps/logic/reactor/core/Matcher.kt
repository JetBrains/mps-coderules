package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchRule
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.unification.Substitution
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.Unification
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
        ArrayList<MatchTrie>(4).apply {

            for(rule in  ruleIndex.forOccurrence(activeOcc)) {
                add(MatchTrie(rule, activeOcc, aux, profiler))
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
            if (nextMatch == null) {
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
            val meta2value = HashMap<MetaLogical<*>, Any?>(substitution.bindings().map { b ->
                (b.`var`().symbol() as MetaLogical<Any>).to(b.term().toValue())
            }.toMap())

            val meta2logical = HashMap<MetaLogical<*>, Logical<*>>()

            override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V> {
                if (!meta2logical.containsKey(metaLogical)) {
                    if (meta2value.containsKey(metaLogical)) {
                        val value = meta2value[metaLogical]
                        meta2logical[metaLogical] = if (value is Logical<*>) value else MemLogical(value)
                    } else {
                        meta2logical[metaLogical] = metaLogical.logical()
                    }
                }
                return meta2logical[metaLogical] as Logical<V>
            }

        }
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
    val constraintTerm = ConstraintTerm(this)
    val constraintOccurrenceTerm = ConstraintOccurrenceTerm(that)
    return profiler.profile<Boolean>("unifyConstraintOccurrence") {

        return Unification.unify(constraintTerm, constraintOccurrenceTerm).isSuccessful

    }
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
class MatchTerm(rule: Rule, kept: List<ConstraintOccurrence>, discarded: List<ConstraintOccurrence>) :
    Function(rule.tag(), (kept + discarded).map { co -> ConstraintOccurrenceTerm(co) }) {}

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

class Variable(symbol: Any) : TermImpl(symbol) {

    override fun arguments(): Collection<Term> = emptyList()

    override fun `is`(kind: Term.Kind): Boolean = (kind === Term.Kind.VAR)

    override fun get(): Term = TODO()
}