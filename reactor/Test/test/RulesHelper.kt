import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.*
import program.MockConstraint
import solver.TestEqPredicate
import java.util.*

/**
 * @author Fedor Isakov
 */

class Builder(val env: Environment, val handlers: List<Handler>) : RuleLookup {

    val tag2rule = HashMap<String, Rule>()

    init {
        handlers
            .flatMap { it.rules() }
            .forEach { r -> tag2rule[r.tag()] = r }
    }

    val rules: List<Rule>
        get() = tag2rule.values.toList()

    override fun lookupRuleByTag(tag: String): Rule? = tag2rule[tag]

    fun ruleMatcher(): RuleMatcher = createRuleMatcher(this, rules.first().tag())
    
}

@Deprecated("don't use")
class Environment(val programBuilder: ProgramBuilder? = null) {
}

fun programWithRules(vararg ruleBuilders: Environment.() -> Rule): Builder {
    return programWithRules(Environment(), ruleBuilders)
}

fun programWithRules(pb: ProgramBuilder, vararg ruleBuilders: Environment.() -> Rule): Builder {
    return programWithRules(Environment(pb), ruleBuilders)
}

private fun programWithRules(env: Environment, ruleBuilders: Array<out Environment.() -> Rule>): Builder {
    return builder(env, arrayOf(handler("test", emptyList(), * ruleBuilders)))
}

fun programWithHandlers(vararg handlerBuilders: Environment.() -> Handler): Builder {
    return builder(Environment(), handlerBuilders)
}

private fun builder(env: Environment, handlerBlocks: Array<out Environment.() -> Handler>): Builder {
    val handlers = ArrayList<Handler>()
    with(env) {
        for (block in handlerBlocks) {
            handlers.add(block())
        }
    }
    return Builder(env, handlers)
}

fun handler(name: String, primary: Iterable<ConstraintSymbol>, vararg ruleBlocks: Environment.() -> Rule): Environment.() -> Handler = {
    val hb = HandlerBuilder(name, primary)
    for (block in ruleBlocks) {
        hb.appendRule(this.block())
    }
    hb.toHandler()
}

fun rule(tag: String, vararg component: RB.() -> Unit): Environment.() -> Rule = {
    val rb = RB(this, tag)
    for (cmp in component) {
        rb.cmp()
    }
    rb.toRule()
}

fun headKept(vararg content: ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendHeadKept(* buildConjunction(Constraint::class.java, env, content).toArray())
}

fun headReplaced(vararg content: ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendHeadReplaced(* buildConjunction(Constraint::class.java, env, content).toArray())
}

fun guard(vararg content: ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendGuard(* buildConjunction(Predicate::class.java, env, content).toArray())
}

fun body(vararg content: ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendBody(false, * buildConjunction(AndItem::class.java, env, content).toArray())
}

fun altBody(vararg content: ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendBody(true, * buildConjunction(AndItem::class.java, env, content).toArray())
}

fun constraint(id: String, vararg args: Any): ConjBuilder.() -> Unit = {
    add(createConstraint(args, id))
}


fun equals(left: Any, right: Any): ConjBuilder.() -> Unit = {
    add(TestEqPredicate(left, right))
}

fun occurrence(id: String, vararg args: Any): Occurrence =
    MockConstraint(ConstraintSymbol.symbol(id, args.size)).occurrence(listOf(* args), { fooObservable })

object fooObservable : FrameObservable {
    override fun storeObserver(): LogicalObserver {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun addObserver(logical: Logical<*>, obs: (FrameObservable) -> LogicalObserver) {
    }

    override fun removeObserver(logical: Logical<*>, obs: (FrameObservable) -> LogicalObserver) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }
}

class RB(val env: Environment, tag: String) : RuleBuilder(tag) {

}

class ConjBuilder(val type: Class<out AndItem>, val env: Environment) {
    val constraints = ArrayList<AndItem>()

    fun createConstraint(args: Array<out Any>, id: String): Constraint {
        return env.programBuilder?.constraint(ConstraintSymbol(id, args.size), * args)
            ?: MockConstraint(ConstraintSymbol(id, args.size), * args)
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
                             env: Environment,
                             content: Array<out ConjBuilder.() -> Unit>): ConjBuilder {
    val conjBuilder = ConjBuilder(type, env)
    for (c in content) {
        conjBuilder.c()
    }
    return conjBuilder
}
