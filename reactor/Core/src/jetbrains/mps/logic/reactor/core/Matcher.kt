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
import jetbrains.mps.logic.reactor.util.LazyIterable
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

    private val matchTries: LazyIterable<Rule, MatchTrie> by lazy(LazyThreadSafetyMode.NONE) {
        LazyIterable<Rule, MatchTrie> (ruleIndex.forOccurrence(activeOcc).toList()) { rule ->
            MatchTrie(rule, activeOcc, aux, profiler)
        }
    }

    override fun iterator() =   matchTries.asSequence().flatMap { matchTrie ->
                                matchTrie.asSequence() }.map { partialMatch ->
                                partialMatch.complete(profiler) }.filter { match ->
                                match.successful }.iterator()

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
        (rule.headKept() + rule.headReplaced()).zip(keptOccurrences + discardedOccurrences).flatMap { p ->
            p.first.patternPredicates(p.second.arguments()) }.toList()
    }

    val successful: Boolean
        get() = substitution.isSuccessful

    val isPropagation: Boolean
        get() = !keptOccurrences.isEmpty() && discardedOccurrences.isEmpty()

    override fun rule(): Rule = rule

    override fun matchHeadKept(): Iterable<ConstraintOccurrence> = keptOccurrences

    override fun matchHeadReplaced(): Iterable<ConstraintOccurrence> = discardedOccurrences

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
        constraint.arguments().mapIndexed { idx: Int, arg: Any? -> arg.asTerm() }) {}

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
        occurrence.arguments().mapIndexed { idx: Int, arg: Any? -> arg.asTerm() }) {}


/** Wraps the terms for the internal representation of the unification algorithm.
 *  When unifying constraint and occurrence terms we are interested in bindings of the meta logicals,
 *  so these are represented as variables.
 *  In addition, the logicals are either represented as constants (unbound ones) or their values.
 *  When unwrapping, the reverse transformation takes place, so that the unification result binds meta logicals
 *  to logicals, and not to their values. */
class MatchTermWrapper() : TermWrapper {

    override fun wrap(orig: Term): Term =
        if (orig.`is`(Term.Kind.VAR)) {
            val symbol = orig.symbol()
            when (symbol) {
                is MetaLogical<*>   ->  orig
                is Logical<*>       ->  symbol.let { logical ->
                                            if (logical.isBound && logical.findRoot().value() is Term) {
                                                WrapGroundLogical(logical as Logical<Term>)

                                            } else {
                                                WrapFreeLogical(logical)
                                            }
                                        }
                else                ->  WrapConstant(orig)
            }

        } else {
            orig
        }

    override fun unwrap(wrapper: Term): Term = when (wrapper) {
        is WrapConstant         -> wrapper.orig
        is WrapFreeLogical      -> Constant(wrapper.logical)
        is WrapGroundLogical    -> Constant(wrapper.logical)
        else                    -> wrapper
    }

}

fun Any?.asTerm(): Term = when (this) {
    is MetaLogical<*>   -> Variable(this)
    is Logical<*>       -> Variable(this)
//    is Logical<*>       ->  if (this.isBound) this.findRoot().value().asTerm() else Constant(this.findRoot())
    is Term             -> this              // wrapped before unification
    is Any              -> Constant(this)
    else                -> throw NullPointerException()
}

// FIXME: "unpacking" the logicals
fun Term.toValue(): Any? = if (this is Constant) this.symbol() else this

