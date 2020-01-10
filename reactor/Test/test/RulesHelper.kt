import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.FeedbackStatus
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.evaluation.StoreView
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import program.MockConstraint
import solver.TestEqPredicate
import java.util.*
import kotlin.collections.HashMap

/**
 * @author Fedor Isakov
 */

class Builder(var rulesLists: List<RulesList>) : RuleLookup {

    val tag2rule = HashMap<Any, Rule>()

    val programBuilder = ProgramBuilder(MockConstraintRegistry())

    init {
        rulesLists
            .flatMap { it.rules() }
            .forEach { r -> tag2rule[r.uniqueTag()] = r }
    }

    val rules: List<Rule>
        get() = tag2rule.values.toList()

    override fun lookupRuleByTag(tag: Any): Rule? = tag2rule[tag]

    fun ruleMatcher(): RuleMatcher = createRuleMatcher(this, rules.first().uniqueTag())

    fun program(name: String): Program = programBuilder.program(name, rulesLists)
    
}

private fun createBuilder(rulesListBlocks: Array<out () -> RulesList>): Builder {
    val handlers = ArrayList<RulesList>()
    for (block in rulesListBlocks) {
        handlers.add(block())
    }
    return Builder(handlers)
}

private fun updateBuilder(builder:Builder, rulesListBlocks: Array<out () -> RulesList>): Builder {
    val name2handler = HashMap(builder.rulesLists.map { it.name() to it }.toMap())
    for (block in rulesListBlocks) {
        val h = block()
        name2handler[h.name()] = h
    }
    return Builder(name2handler.values.toList())
}

private fun createHandler(name: String, vararg ruleBlocks: () -> Rule): () -> RulesList = {
    val hb = HandlerBuilder(name)
    for (block in ruleBlocks) {
        hb.appendRule(block())
    }
    hb.toHandler()
}

private fun updateHandler(name: String, rulesList: RulesList, vararg ruleBlocks: () -> Rule): () -> RulesList = {
    val hb = HandlerBuilder(name, rulesList)
    for (block in ruleBlocks) {
        hb.appendRule(block())
    }
    hb.toHandler()
}

private fun insertRulesInHandler(at: Int, name: String, rulesList: RulesList, vararg ruleBlocks: () -> Rule): () -> RulesList = {
    val hb = HandlerBuilder(name)
    rulesList.rules().forEachIndexed { index, rule ->
        if (index == at) {
            for (block in ruleBlocks) {
                hb.appendRule(block())
            }
        }
        hb.appendRule(rule)
    }
    hb.toHandler()
}

private fun removeRulesByIndices(at: Iterable<Int>, name: String, rulesList: RulesList): () -> RulesList = {
    val hb = HandlerBuilder(name)
    rulesList.rules().forEachIndexed { index, rule ->
        if (!at.contains(index)) hb.appendRule(rule)
    }
    hb.toHandler()
}

private fun removeRulesByTags(tags: Iterable<Any>, name: String, rulesList: RulesList): () -> RulesList = {
    val hb = HandlerBuilder(name)
    rulesList.rules().forEach { rule ->
        if (!tags.contains(rule.uniqueTag())) hb.appendRule(rule)
    }
    hb.toHandler()
}

private fun insertRulesInHandlerWhen(at: (Rule) -> Boolean, name: String, rulesList: RulesList, vararg ruleBlocks: () -> Rule): () -> RulesList =
    insertRulesInHandler(rulesList.rules().indexOfFirst(at), name, rulesList, * ruleBlocks)

// builder DSL for constructing program

fun programWithRules(vararg ruleBuilders: () -> Rule): Builder =
    createBuilder(arrayOf(createHandler("test", * ruleBuilders)))

fun Builder.programWithRules(vararg ruleBuilders: () -> Rule): Builder =
    updateBuilder(this, arrayOf(updateHandler("test",  rulesLists.first(), * ruleBuilders)))

fun Builder.removeRulesAt(at: Iterable<Int>): Builder =
    updateBuilder(this, arrayOf(removeRulesByIndices(at, "test", rulesLists.first())))

fun Builder.removeRules(tags: Iterable<Any>): Builder =
    updateBuilder(this, arrayOf(removeRulesByTags(tags, "test", rulesLists.first())))

fun Builder.insertRulesAt(at: Int, vararg ruleBuilders: () -> Rule): Builder =
    updateBuilder(this, arrayOf(insertRulesInHandler(at, "test", rulesLists.first(), * ruleBuilders)))

fun Builder.insertRulesWhen(at: (Rule) -> Boolean, vararg ruleBuilders: () -> Rule): Builder =
    updateBuilder(this, arrayOf(insertRulesInHandlerWhen(at, "test", rulesLists.first(), * ruleBuilders)))

fun rule(tag: String, vararg component: RuleBuilder.() -> Unit): () -> Rule = {
    val rb = RuleBuilder(tag, emptyList())
    for (cmp in component) {
        rb.cmp()
    }
    rb.toRule()
}

fun rule(tag: String, segmentPath: List<Any>, vararg component: RuleBuilder.() -> Unit): () -> Rule = {
    val rb = RuleBuilder(tag, segmentPath)
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

fun princConstraint(id: String, vararg args: Any): ConjBuilder.() -> Unit = {
    add(createConstraint(args, id, true))
}


fun equals(left: Any, right: Any): ConjBuilder.() -> Unit = {
    add(TestEqPredicate(left, right))
}

fun occurrence(id: String, vararg args: Any): Occurrence =
    MockConstraint(ConstraintSymbol.symbol(id, args.size))
        .occurrence(MockController().logicalState(), listOf(* args), justsOf(), noLogicalContext)

fun taggedOccurrence(ruleUniqueTag: Any, id: String, vararg args: Any): Occurrence =
    MockConstraint(ConstraintSymbol.symbol(id, args.size))
        .occurrence(MockController().logicalState(), listOf(* args), justsOf(), noLogicalContext, ruleUniqueTag)

fun justifiedOccurrence(id: String, justs: Justs, vararg args: Any): Occurrence =
    MockConstraint(ConstraintSymbol.symbol(id, args.size), true)
        .occurrence(MockController().logicalState(), listOf(* args), justs, noLogicalContext)

fun justifiedOccurrence(id: String, justs: Collection<Int>, vararg args: Any): Occurrence =
    justifiedOccurrence(id, justsFromCollection(justs), * args)

fun sym0(id: String): ConstraintSymbol =
    ConstraintSymbol(id, 0)

fun sym1(id: String): ConstraintSymbol =
    ConstraintSymbol(id, 1)

fun sym2(id: String): ConstraintSymbol =
    ConstraintSymbol(id, 2)

private val noLogicalContext = object : LogicalContext {
    override fun <V : Any> variable(metaLogical: MetaLogical<V>): Logical<V>? = null
}

class MockController : Controller {

    override fun clearState() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun ask(invocation: PredicateInvocation): Boolean {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun tell(invocation: PredicateInvocation) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun reactivate(occ: Occurrence): FeedbackStatus {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun evaluate(occ: Occurrence): StoreView {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun logicalState(): LogicalStateObservable = object : LogicalStateObservable {
        override fun addForwardingObserver(logical: Logical<*>, observer: ForwardingLogicalObserver) {
        }

        override fun removeForwardingObserver(logical: Logical<*>, observer: ForwardingLogicalObserver) {
        }

        override fun init(controller: Controller): LogicalStateObservable.InitToken {
            TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
        }
    }

    override fun storeView(): StoreView {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun offerMatch(match: RuleMatchEx, inStatus: FeedbackStatus): FeedbackStatus {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun processBody(match: RuleMatchEx, inStatus: FeedbackStatus): FeedbackStatus {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
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
