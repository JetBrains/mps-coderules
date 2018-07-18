/*
 * Copyright 2014-2017 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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
import jetbrains.mps.unification.Substitution
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.TermWrapper
import com.github.andrewoma.dexx.collection.List as PersList

/**
 * @author Fedor Isakov
 */

class Matcher(val ruleIndex: RuleIndex,
              val profiler: Profiler? = null)
{

    private val rule2matchTrieSet = HashMap<Rule, MatchTrieSet>()

    fun matches(activeOcc: ConstraintOccurrence, aux: OccurrenceIndex) : Iterable<Match> = object : Iterable<Match> {

        override fun iterator(): Iterator<Match> {

            val relevantRules = ruleIndex.forOccurrence(activeOcc).toList()

            val tries = LazyIterable<Rule, MatchTrieSet>(relevantRules) { rule ->
                rule2matchTrieSet[rule] ?: MatchTrieSet(rule, profiler).apply {
                    rule2matchTrieSet[rule] = this
                }
            }.asSequence()

            return  tries.flatMap { matchTrieSet ->
                        matchTrieSet.matches(activeOcc, aux)
                    }.map { partialMatch ->
                        partialMatch.complete(profiler)
                    }.filter { match ->
                        match.successful
                    }.iterator()
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
            val meta2subs = substitution.bindings().map { b ->
                (b.`var`().symbol() as MetaLogical<Any>).to(b.term().toValue())
            }.toMap(HashMap<MetaLogical<*>, Any?>())

            val meta2logical = HashMap<MetaLogical<*>, Logical<*>>()

            override fun <V : Any> variable(meta: MetaLogical<V>): Logical<V> =
                (meta2logical[meta] ?: meta2subs[meta]?.let { value ->
                    when (value) {
                        is Logical<*> -> value
                        is LogicalOwner -> value.logical()
                        else -> LogicalImpl(value)
                    }
                } ?: meta.logical().also {
                    logical -> meta2logical[meta] = logical }) as Logical<V>

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

