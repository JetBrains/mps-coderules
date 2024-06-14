import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.*
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.Solver
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import program.MockConstraint
import solver.TestEqPredicate
import java.util.*

/**
 * @author Fedor Isakov
 */

class Builder(var rulesList: List<Rule>) : RuleLookup {

    val tag2rule = LinkedHashMap<Any, Rule>()

    val programBuilder = ProgramBuilder(MockConstraintRegistry())

    init {
        rulesList
            .forEach { r -> tag2rule[r.uniqueTag()] = r }
    }

    val rules: List<Rule>
        get() = tag2rule.values.toList()

    override fun lookupRuleByTag(tag: Any): Rule? = tag2rule[tag]

    fun ruleMatcher(): RuleMatcher = createRuleMatcher(this, rules.first().uniqueTag())

    fun program(name: String): Program = programBuilder.program(name, rulesList)
    
}

private fun createBuilder(rulesListBlocks: Array<out () -> List<Rule>>): Builder {
    val handlers = ArrayList<Rule>()
    for (block in rulesListBlocks) {
        handlers.addAll(block())
    }
    return Builder(handlers)
}

private fun createHandler(name: String, vararg ruleBlocks: () -> Rule): () -> List<Rule> = {
    val hb = HandlerBuilder(name)
    for (block in ruleBlocks) {
        hb.appendRule(block())
    }
    hb.toHandler()
}


// builder DSL for constructing program

fun programWithRules(vararg ruleBuilders: () -> Rule): Builder =
    createBuilder(arrayOf(createHandler("test", * ruleBuilders)))

fun rule(tag: String, vararg component: RuleBuilder.() -> Unit): () -> Rule = {
    val rb = RuleBuilder(tag)
    for (cmp in component) {
        rb.cmp()
    }
    rb.toRule()
}

fun headKept(vararg content: ConjBuilder.() -> Unit): RuleBuilder.() -> Unit = {
    appendHeadKept(* buildConjunction(Constraint::class.java, content).toArray())
}

fun headReplaced(vararg content: ConjBuilder.() -> Unit): RuleBuilder.() -> Unit = {
    appendHeadReplaced(* buildConjunction(Constraint::class.java, content).toArray())
}

fun guard(vararg content: ConjBuilder.() -> Unit): RuleBuilder.() -> Unit = {
    appendGuard(* buildConjunction(Predicate::class.java, content).toArray())
}

fun body(vararg content: ConjBuilder.() -> Unit): RuleBuilder.() -> Unit = {
    appendBody(false, * buildConjunction(AndItem::class.java, content).toArray())
}

fun altBody(vararg content: ConjBuilder.() -> Unit): RuleBuilder.() -> Unit = {
    appendBody(true, * buildConjunction(AndItem::class.java, content).toArray())
}

fun constraint(id: String, vararg args: Any): ConjBuilder.() -> Unit = {
    add(createConstraint(args, id, false))
}

fun pconstraint(id: String, vararg args: Any): ConjBuilder.() -> Unit = {
    add(createConstraint(args, id, true))
}


fun equals(left: Any, right: Any): ConjBuilder.() -> Unit = {
    add(TestEqPredicate(left, right))
}

fun occurrence(id: String, vararg args: Any): Occurrence =
    MockConstraint(ConstraintSymbol.symbol(id, args.size))
        .occurrence(listOf(* args), 0, justsOf(0), noLogicalContext)

fun taggedOccurrence(ruleUniqueTag: String, id: String, vararg args: Any): Occurrence =
    MockConstraint(ConstraintSymbol.symbol(id, args.size))
        .occurrence(listOf(* args), 0, justsOf(0), noLogicalContext, Rule.Tag(ruleUniqueTag))

fun justifiedOccurrence(id: String, evidence: Evidence, justifications: Justifications, principal: Boolean, vararg args: Any): Occurrence =
    MockConstraint(ConstraintSymbol.symbol(id, args.size), principal)
        .occurrence(listOf(* args), evidence, justifications, noLogicalContext)

fun principalOccurrence(id: String, hist: MatchJournal, vararg args: Any): Occurrence =
    justifiedOccurrence(id, hist.evidence(), hist.justifications(), true, * args)

fun justifiedOccurrence(id: String, hist: MatchJournal, vararg args: Any): Occurrence =
    justifiedOccurrence(id, hist.evidence(), hist.justifications(), false, * args)

fun principalOccurrenceInit(id: String, vararg args: Any): Occurrence =
    justifiedOccurrence(id, 0, justsFromCollection(setOf(0)), true, * args)

fun sym0(id: String): ConstraintSymbol =
    ConstraintSymbol(id, 0)

fun sym1(id: String): ConstraintSymbol =
    ConstraintSymbol(id, 1)

fun sym2(id: String): ConstraintSymbol =
    ConstraintSymbol(id, 2)

private val noLogicalContext = object : LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
}

class ConjBuilder(val type: Class<out AndItem>) {
    val constraints = ArrayList<AndItem>()

    fun createConstraint(args: Array<out Any>, id: String, principal: Boolean): Constraint {
        return MockConstraint(ConstraintSymbol(id, args.size), principal, * args)
    }

    fun add(item: AndItem): Unit {
        if (!type.isAssignableFrom(item.javaClass))
            throw IllegalArgumentException("unexpected constraint class '${item.javaClass}'")
        constraints.add(item)

    }

    @Suppress("UNCHECKED_CAST")
    fun <T : AndItem> toArray(): Array<T> =
        if (Constraint::class.java.isAssignableFrom(type))
            Array<Constraint>(constraints.size) {
                constraints.get(it) as Constraint
            } as Array<T>
        else if (Predicate::class.java.isAssignableFrom(type))
            Array<Predicate>(constraints.size) {
                constraints.get(it) as Predicate
            } as Array<T>
        else
            Array<AndItem>(constraints.size) {
                constraints.get(it)
            } as Array<T>
}

private fun buildConjunction(type: Class<out AndItem>,
                             content: Array<out ConjBuilder.() -> Unit>): ConjBuilder {
    val conjBuilder = ConjBuilder(type)
    for (c in content) {
        conjBuilder.c()
    }
    return conjBuilder
}
