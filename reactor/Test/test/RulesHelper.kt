import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.rule.Rule
import jetbrains.mps.logic.reactor.rule.RuleBuilder
import java.util.*

/**
 * @author Fedor Isakov
 */


class Program(val env: Environment, val rules: List<Rule>) {
}

class Environment() {
    val equalsSolver = EqualsSolver()
    val expressionSolver = ExpressionSolver()
}

fun program(vararg ruleBuilders : Environment.() -> Rule): Program {
    val env = Environment()
    val rules = ArrayList<Rule>()
    with (env) {
        for (rb in ruleBuilders) {
            rules.add(rb())
        }
    }
    return Program(env, rules)
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
    appendBody( * buildConjunction(AndItem::class.java, env, content).toArray())
}

fun constraint(id: String, vararg args: Any): ConjBuilder.() -> Unit = {
    add(TestConstraint(ConstraintSymbol(id, args.size), * args))
}

fun equals(left: Any, right: Any): ConjBuilder.() -> Unit = {
    add(TestEqPredicate(left, right))
}

fun occurrence(id: String, vararg args: Any) : ConstraintOccurrence = TestConstraintOccurrence(id, * args)

fun AndItem.argumentValues(context: LogicalContext): List<Any> =
    arguments().map { arg -> if (arg is LogicalPattern<*>) context.valueFor(arg) else arg!! }.toList()

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

private data class TestConstraint(val symbol: ConstraintSymbol, val arguments: List<Any>) : Constraint {

    constructor(symbol: ConstraintSymbol, vararg args: Any) : this(symbol, listOf(* args)) {}

    override fun arguments(): List<Any> = arguments

    override fun symbol(): ConstraintSymbol = symbol

    override fun argumentTypes(): List<Class<*>> = arguments.map { arg -> arg.javaClass }

    override fun occurrence(context: LogicalContext): ConstraintOccurrence =
        TestConstraintOccurrence(this, argumentValues(context))

    override fun toString(): String = "${symbol()}(${arguments().joinToString()})"

}

private data class TestConstraintOccurrence(val constraint: Constraint, val arguments: List<Any>, val id: Int) : ConstraintOccurrence {

    companion object {
        val random = Random()
    }

    constructor(constraint: Constraint, arguments: List<Any>) :
        this(constraint, arguments, random.nextInt()) {}

    constructor(id: String, vararg args: Any) :
        this(TestConstraint(ConstraintSymbol.symbol(id, args.size)), listOf(* args), random.nextInt()) {}

    override fun constraint(): Constraint = constraint

    override fun arguments(): Collection<Any> = arguments

    override fun toString(): String = "#${constraint().symbol()}(${arguments().joinToString()})#${id}"

}
