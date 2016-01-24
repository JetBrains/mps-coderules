package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.Maps
import com.github.andrewoma.dexx.collection.Sets
import com.github.andrewoma.dexx.collection.Set as PersSet
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.MatchRule
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.Rule
import jetbrains.mps.unification.Unification
import java.util.HashMap

/**
 * @author Fedor Isakov
 */

class PartialMatch(val rule: Rule, val profiler: Profiler? = null) : MatchRule {

    var kept = emptyConsList<Pair<Constraint, ConstraintOccurrence>>()
        private set
    var discarded = emptyConsList<Pair<Constraint, ConstraintOccurrence>>()
        private set
    var pattern2logical = Maps.of<LogicalPattern<*>, PersSet<Logical<*>>>()
        private set
    private lateinit var logicalContext : LogicalContext

    private constructor(
        original : PartialMatch,
        keep: Pair<Constraint, ConstraintOccurrence>?,
        discard: Pair<Constraint, ConstraintOccurrence>?) : this(original.rule, original.profiler)
    {
        this.kept = if (keep != null) original.kept.prepend(keep) else original.kept
        this.discarded = if (discard != null) original.discarded.prepend(discard) else original.discarded

        this.pattern2logical = original.pattern2logical
        val pair = keep ?: discard!!
        for ((ptr, log) in pair.first.arguments().zip(pair.second.arguments())) {
            if (ptr is LogicalPattern<*> && log is Logical<*>) {
                val logSet = pattern2logical.get(ptr)
                this.pattern2logical = pattern2logical.put(ptr, logSet?.add(log) ?: Sets.of(log))
            }
        }
    }

    fun completeMatch(aux: Matcher.AuxOccurrences) : Sequence<PartialMatch> {
        if (!isPartial()) return sequenceOf(this)

        return profiler.profile<Sequence<PartialMatch>>("completeMatch", {

            val matchesFromKept =
                rule.headKept().
                    filter { cst -> !kept.any { p -> cst === p.first } }.
                    asSequence().
                    flatMap { cst -> findOccurrences(aux, cst).flatMap { occ -> keep(cst, occ).completeMatch(aux) } }

            val matchesFromDiscarded =
                rule.headReplaced().
                    filter { cst -> !discarded.any { p -> cst === p.first } }.
                    asSequence().
                    flatMap { cst -> findOccurrences(aux, cst).flatMap { occ -> discard(cst, occ).completeMatch(aux) } }

            matchesFromKept + matchesFromDiscarded

        })
    }

    fun findOccurrences(aux: Matcher.AuxOccurrences, cst: Constraint): Sequence<ConstraintOccurrence> {
        val logicals = cst.arguments().flatMap { arg ->
            if (arg is LogicalPattern<*>)
                pattern2logical.get(arg)?.toList() ?: emptyList()
            else
                emptyList()
        }
        return aux.findOccurrences(cst.symbol(), logicals, { occ -> !hasOccurrence(occ) })
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

        return  rule.headKept().
                map { cst -> kept.find { p -> p.first === cst }?.second ?: throw IllegalStateException() }      +
                rule.headReplaced().
                map { cst -> discarded.find { p -> p.first === cst }?.second ?: throw IllegalStateException() }

        //            })
    }

    fun matches(): Boolean {
        return profiler.profile<Boolean>("matches_${rule.tag()}", {

            val subst = Unification.unify(PartialMatchTerm(this), RuleTerm(this.rule))
            if (!subst.isSuccessful) {
                return false
            }

            // variables come from LogicalPattern instances in rules
            // any successful binding results in either new Logical with associated value,
            // or a new value for a Logical already existing in this context

            // only one parameter of the unification can contain variables,
            // thus triangular form never has variables on the right hand side
            this.logicalContext = object: LogicalContext {

                // invariant: the variables in substitution bindings can only be instances of LogicalPattern
                val ptr2val: MutableMap<LogicalPattern<*>, Any?> = HashMap(subst.bindings().map { b ->
                    (b.`var`().symbol() as LogicalPattern<Any>).to(b.term().toValue())
                }.toMap())

                val ptr2log: MutableMap<LogicalPattern<*>, Logical<*>> = HashMap()

                override fun <V : Any> variable(logicalPattern: LogicalPattern<V>): Logical<V> {
                    if (!ptr2log.containsKey(logicalPattern)) {
                        if (ptr2val.containsKey(logicalPattern)) {
                            val value = ptr2val[logicalPattern]
                            ptr2log[logicalPattern] = if (value is Logical<*>) value else MemLogical(value)
                        }
                        else {
                            ptr2log[logicalPattern] = logicalPattern.logical()
                        }
                    }
                    return ptr2log[logicalPattern] as Logical<V>
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
