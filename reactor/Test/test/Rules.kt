import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.rule.Rule
import jetbrains.mps.logic.reactor.rule.RuleBuilder
import java.util.*

/**
 * @author Fedor Isakov
 */

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
    add(TestConstraint(ConstraintSymbol.symbol(id, args.size), * args))
}

fun expression(body: () -> Boolean): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(1),body))
}

fun expression(body: (Any) -> Boolean, vararg args: Any): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(2), body, * args))
}

fun expression(body: (Any, Any) -> Boolean, vararg args: Any): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(3), body, * args))
}

fun expression(body: (Any, Any, Any) -> Boolean, vararg args: Any): ConjBuilder.() -> Unit = {
    add(TestJavaPredicate(JavaPredicateSymbol(4), body, * args))
}

class Program(val env: Environment, val rules: List<Rule>) {
    fun occurrenceFactory() : (Constraint) -> ConstraintOccurrence = { cst -> TestOccurrence(cst) }
}

class Environment() {

    val javaPredicates = HashMap<Any, TestJavaPredicate>()

    fun expressionSolver(): Queryable = object : Queryable {

        override fun ask(predicateSymbol: PredicateSymbol, vararg args: Any): Boolean {
            return javaPredicates[predicateSymbol]?.expr?.invoke(listOf(* args)) ?:
                   ERROR("no such symbol $predicateSymbol")
        }

        override fun tell(symbol: Symbol, vararg args: Any) {
            when (symbol) {
                is JavaPredicateSymbol  -> javaPredicates[args[0]]?.expr?.invoke(listOf(* args).drop(1))
                else                    -> ERROR("uknown symbol $symbol")
            }
        }

        private fun ERROR(msg: String) : Nothing = throw IllegalArgumentException(msg)
    }

    fun addJavaPredicate(javaPredicate: TestJavaPredicate) {
        javaPredicates[javaPredicate.args[0]] = javaPredicate
    }
}

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
        if (item is TestJavaPredicate) {
            env.addJavaPredicate(item)
        }
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

data class TestOccurrence(val arguments : List<Any>, val constraint : Constraint) : ConstraintOccurrence {

    constructor(id: String, vararg args: Any) :
        this(listOf(* args), TestConstraint(ConstraintSymbol.symbol(id, args.size))) {}

    constructor(constraint: Constraint) : this(constraint.arguments(), constraint) {}

    override fun constraint(): Constraint = constraint

    override fun arguments(): List<Any> = arguments

    override fun toString(): String = "#${constraint().symbol()}(${arguments().joinToString()})"

}

data class TestConstraint(val symbol: ConstraintSymbol, val arguments: List<Any>) : Constraint {

    constructor(symbol: ConstraintSymbol, vararg args: Any) : this(symbol, listOf(* args)) {}

    override fun arguments(): List<Any> = arguments

    override fun symbol(): ConstraintSymbol = symbol

    override fun argumentTypes(): List<Class<*>> = arguments.map { arg -> arg.javaClass }

    override fun toString(): String = "${symbol()}(${arguments().joinToString()})"

}

interface JavaExpression {
    fun invoke(args: List<Any>): Boolean
}

class JavaExpression0(val code: () -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 0) throw IllegalArgumentException("arity mismatch")
        return code()
    }
}

class JavaExpression1(val code: (Any) -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 1) throw IllegalArgumentException("arity mismatch")
        return code(args[0])
    }
}

class JavaExpression2(val code: (Any, Any) -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 2) throw IllegalArgumentException("arity mismatch")
        return code(args[0], args[1])
    }
}

class JavaExpression3(val code: (Any, Any, Any) -> Boolean) : JavaExpression {
    override fun invoke(args: List<Any>): Boolean {
        if (args.size != 3) throw IllegalArgumentException("arity mismatch")
        return code(args[0], args[1], args[2])
    }
}

data class TestJavaPredicate(val symbol: JavaPredicateSymbol, val expr: JavaExpression, val args: List<Any>) : Predicate {

    constructor(symbol: JavaPredicateSymbol, code: () -> Boolean, vararg args: Any) :
        this(symbol, JavaExpression0(code), listOf(code.toString()) + listOf(* args)) {}

    constructor(symbol: JavaPredicateSymbol, code: (Any) -> Boolean, vararg args: Any) :
        this(symbol, JavaExpression1(code), listOf(code.toString()) + listOf(* args)) {}

    constructor(symbol: JavaPredicateSymbol, code: (Any, Any) -> Boolean, vararg args: Any) :
        this(symbol, JavaExpression2(code), listOf(code.toString()) + listOf(* args)) {}

    constructor(symbol: JavaPredicateSymbol, code: (Any, Any, Any) -> Boolean, vararg args: Any) :
        this(symbol, JavaExpression3(code), listOf(code.toString()) + listOf(* args)) {}

    override fun arguments(): List<Any> = args

    override fun symbol(): PredicateSymbol = symbol

}
