import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.logical.ILogical
import jetbrains.mps.logic.reactor.logical.NamingContext
import jetbrains.mps.logic.reactor.rule.Rule
import jetbrains.mps.logic.reactor.rule.RuleBuilder
import java.util.*

/**
 * @author Fedor Isakov
 */


class Program(val env: Environment, val rules: List<Rule>) {
    fun occurrenceFactory() : (Constraint) -> ConstraintOccurrence = { cst -> TestOccurrence(cst) }
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

fun occurrence(id: String, vararg args: Any) : ConstraintOccurrence = TestOccurrence(id, * args)

class RB(tag: String, val env: Environment?) : RuleBuilder(tag) {}

class ConjBuilder {
    val constraints = ArrayList<AndItem>()
    val type: Class<out AndItem>
    val _env: Environment?
    val env: Environment
        get() { return _env ?: throw IllegalStateException("no enviroment") }

    constructor(type: Class<out AndItem>, env: Environment?) {
        this.type = type
        this._env = env
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
        else
            Array<AndItem>(constraints.size) {
                constraints.get(it)
            } as Array<T>
}

private fun buildConjunction(type: Class<out AndItem>,
                             env: Environment?,
                             content: Array<out ConjBuilder.() -> Unit>): ConjBuilder
{
    var conjBuilder = ConjBuilder(type, env)
    for (c in content) {
        conjBuilder.c()
    }
    return conjBuilder
}

private data class TestOccurrence(val arguments : List<Any>, val constraint : Constraint) : ConstraintOccurrence {

    constructor(id: String, vararg args: Any) :
        this(listOf(* args), TestConstraint(ConstraintSymbol.symbol(id, args.size))) {}

    constructor(constraint: Constraint) : this(constraint.arguments(), constraint) {}

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<Any> = arguments

    override fun toString(): String = "#${constraint().symbol()}(${arguments().joinToString()})"

}

private data class TestConstraint(val symbol: ConstraintSymbol, val arguments: List<Any>) : Constraint {

    constructor(symbol: ConstraintSymbol, vararg args: Any) : this(symbol, listOf(* args)) {}

    override fun arguments(): List<Any> = arguments

    override fun symbol(): ConstraintSymbol = symbol

    override fun argumentTypes(): List<Class<*>> = arguments.map { arg -> arg.javaClass }

    override fun toString(): String = "${symbol()}(${arguments().joinToString()})"

}
