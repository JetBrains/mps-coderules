import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.program.*
import program.MemConstraint
import TestConstraintOccurrence
import jetbrains.mps.logic.reactor.core.StoreItem
import solver.EqualsSolver
import solver.TestEqPredicate
import java.util.*

/**
 * @author Fedor Isakov
 */

class Builder(val env: Environment, val rules: List<Rule>) {
}

class Environment(val programBuilder: MemProgramBuilder? = null) {
    val equalsSolver = EqualsSolver()
    val expressionSolver = ExpressionSolver()
}

fun program(vararg ruleBuilders : Environment.() -> Rule): Builder {
    return builder(Environment(), ruleBuilders)
}

fun program(pb: MemProgramBuilder, vararg ruleBuilders : Environment.() -> Rule): Builder {
    return builder(Environment(pb), ruleBuilders)
}

private fun builder(env: Environment, ruleBuilders: Array<out Environment.() -> Rule>): Builder {
    val rules = ArrayList<Rule>()
    with (env) {
        for (rb in ruleBuilders) {
            rules.add(rb())
        }
    }
    return Builder(env, rules)
}

fun rule(tag: String, vararg component:RB.() -> Unit): Environment.() -> Rule = {
    rule(tag, this, * component)
}

fun rule(tag: String, env: Environment, vararg component:RB.() -> Unit): Rule {
    val rb = RB(tag, env)
    for (cmp in component) {
        rb.cmp()
    }
    return rb.toRule()
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

class RB(tag: String, val env: Environment) : RuleBuilder(tag) {

}

class ConjBuilder {
    val constraints = ArrayList<AndItem>()
    val type: Class<out AndItem>
    val env: Environment

    constructor(type: Class<out AndItem>, env: Environment) {
        this.type = type
        this.env = env
    }

    fun createConstraint(args: Array<out Any>, id: String): Constraint {
        return env.programBuilder ?.
            constraint(ConstraintSymbol(id, args.size), * args)     ?:
            MemConstraint(ConstraintSymbol(id, args.size), * args)
    }


    fun add(item: AndItem): Unit {
        if (!type.isAssignableFrom(item.javaClass))
            throw IllegalArgumentException("unexpected constraint class '${item.javaClass}'")
        constraints.add(item)
        env.expressionSolver.addMaybeJavaPredicate(item)
    }

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
    var conjBuilder = ConjBuilder(type, env)
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
        this(MemConstraint(ConstraintSymbol.symbol(id, args.size)), listOf(* args), random.nextInt()) {}

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<Any> = arguments

    override fun terminate() {
        this.alive = false
    }

    override fun toString(): String = "${constraint().symbol()}(${arguments().joinToString()})"

}