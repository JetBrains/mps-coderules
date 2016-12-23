import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.*
import program.MockConstraint
import TestConstraintOccurrence
import jetbrains.mps.logic.reactor.core.StoreItem
import org.jetbrains.kotlin.codegen.inline.getNewFieldsToGenerate
import solver.EqualsSolver
import solver.TestEqPredicate
import java.util.*

/**
 * @author Fedor Isakov
 */

class Builder(val env: Environment, val handlers: List<Handler>) {
    @Deprecated(message = "use handlers")
    val rules: List<Rule>
        get() = handlers.flatMap { it.rules() }

}

class Environment(val programBuilder: ProgramBuilder? = null) {
    val equalsSolver = EqualsSolver()
    val expressionSolver = ExpressionSolver()
}

fun programWithRules(vararg ruleBuilders : Environment.() -> Rule): Builder {
    return programWithRules(Environment(), ruleBuilders)
}

fun programWithRules(pb: ProgramBuilder, vararg ruleBuilders : Environment.() -> Rule): Builder {
    return programWithRules(Environment(pb), ruleBuilders)
}

private fun programWithRules(env: Environment, ruleBuilders: Array<out Environment.() -> Rule>): Builder {
    return builder(env, arrayOf(handler("test", null, * ruleBuilders)))
}

fun programWithHandlers(vararg handlerBuilders : Environment.() -> Handler): Builder {
    return builder(Environment(), handlerBuilders)
}

private fun builder(env: Environment, handlerBlocks: Array<out Environment.() -> Handler>): Builder {
    val handlers = ArrayList<Handler>()
    with (env) {
        for (block in handlerBlocks) {
            handlers.add(block())
        }
    }
    return Builder(env, handlers)
}

fun handler(name: String, primary: ConstraintSymbol?, vararg ruleBlocks: Environment.() -> Rule): Environment.() -> Handler = {
    val hb = HandlerBuilder(name, primary)
    for (block in ruleBlocks) {
        hb.appendRule(this.block())
    }
    hb.toHandler()
}

fun rule(tag: String, vararg component:RB.() -> Unit): Environment.() -> Rule = {
    val rb = RB(this, tag)
    for (cmp in component) {
        rb.cmp()
    }
    rb.toRule()
}

fun headKept(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendHeadKept( * buildConjunction(Constraint::class.java, env, content).toArray())
}

fun headReplaced(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendHeadReplaced( * buildConjunction(Constraint::class.java, env, content).toArray())
}

fun guard(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendGuard( * buildConjunction(Predicate::class.java, env, content).toArray())
}

fun body(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendBody(false, * buildConjunction(AndItem::class.java, env, content).toArray())
}

fun altBody(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendBody(true, * buildConjunction(AndItem::class.java, env, content).toArray())
}

fun constraint(id: String, vararg args: Any): ConjBuilder.() -> Unit = {
    add(createConstraint(args, id))
}


fun equals(left: Any, right: Any): ConjBuilder.() -> Unit = {
    add(TestEqPredicate(left, right))
}

fun occurrence(id: String, vararg args: Any) : ConstraintOccurrence = TestConstraintOccurrence(id, * args)

class RB(val env: Environment, tag: String) : RuleBuilder(tag) {

}

class ConjBuilder(val type: Class<out AndItem>, val env: Environment) {
    val constraints = ArrayList<AndItem>()

    fun createConstraint(args: Array<out Any>, id: String): Constraint {
        return env.programBuilder ?.
            constraint(ConstraintSymbol(id, args.size), * args)     ?:
            MockConstraint(ConstraintSymbol(id, args.size), * args)
    }

    fun add(item: AndItem): Unit {
        if (!type.isAssignableFrom(item.javaClass))
            throw IllegalArgumentException("unexpected constraint class '${item.javaClass}'")
        constraints.add(item)
        env.expressionSolver.addMaybeJavaPredicate(item)
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
                             content: Array<out ConjBuilder.() -> Unit>): ConjBuilder
{
    val conjBuilder = ConjBuilder(type, env)
    for (c in content) {
        conjBuilder.c()
    }
    return conjBuilder
}

data class TestConstraintOccurrence(val constraint: Constraint, val arguments: List<Any>, val id: Int) :
    ConstraintOccurrence,
    StoreItem
{
    override var alive: Boolean = true

    override var stored: Boolean = false

    companion object {
        val random = Random()
    }

    constructor(id: String, vararg args: Any) :
        this(MockConstraint(ConstraintSymbol.symbol(id, args.size)), listOf(* args), random.nextInt()) {}

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<Any> = arguments

    override fun terminate() {
        this.alive = false
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}