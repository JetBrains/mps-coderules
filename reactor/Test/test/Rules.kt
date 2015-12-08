import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.rule.Rule
import jetbrains.mps.logic.reactor.rule.RuleBuilder
import java.util.*
import kotlin.reflect.KClass

/**
 * @author Fedor Isakov
 */

fun rule(tag: String, vararg component:RB.() -> Unit): Rule {
    val rb = RB(tag)
    for (cmp in component) {
        rb.cmp()
    }
    return rb.toRule()
}

fun headKept(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendHeadKept( * buildConjunction(Constraint::class.java, content).toArray())
}
fun headReplaced(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendHeadReplaced( * buildConjunction(Constraint::class.java, content).toArray())
}
fun guard(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendGuard( * buildConjunction(AndItem::class.java, content).toArray())
}
fun body(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendBody( * buildConjunction(AndItem::class.java, content).toArray())
}

fun constraint(id: String): ConjBuilder.() -> Unit = {
    add(TestConstraint(ConstraintSymbol.symbol(id, 0)))
}
fun constraint(id: String, arg: Any): ConjBuilder.() -> Unit = {
    add(TestConstraint(ConstraintSymbol.symbol(id, 1), arg))
}
fun constraint(id: String, arg1: Any, arg2: Any): ConjBuilder.() -> Unit = {
    add(TestConstraint(ConstraintSymbol.symbol(id, 2), arg1, arg2))
}
fun constraint(id: String, arg1: Any, arg2: Any, arg3: Any): ConjBuilder.() -> Unit = {
    add(TestConstraint(ConstraintSymbol.symbol(id, 3), arg1, arg2, arg3))
}
fun constraint(id: String, args: Array<out Any>): ConjBuilder.() -> Unit = {
    add(TestConstraint(ConstraintSymbol.symbol(id, args.size), * args))
}

fun expression(id: String): ConjBuilder.() -> Unit = {
    add(JavaPredicate(JavaPredicateSymbol(0), id))
}
fun expression(id: String, arg: Any): ConjBuilder.() -> Unit = {
    add(JavaPredicate(JavaPredicateSymbol(1), id, arg))
}
fun expression(id: String, arg1: Any, arg2: Any): ConjBuilder.() -> Unit = {
    add(JavaPredicate(JavaPredicateSymbol(2), id, arg1, arg2))
}
fun expression(id: String, arg1: Any, arg2: Any, arg3: Any): ConjBuilder.() -> Unit = {
    add(JavaPredicate(JavaPredicateSymbol(3), id, arg1, arg2, arg3))
}

class RB(tag: String) : RuleBuilder(tag) {}

class ConjBuilder (val type: Class<out AndItem>) {
    val constraints = ArrayList<AndItem>()
    fun add(constraint: AndItem): Unit {
        if (!type.isAssignableFrom(constraint.javaClass))
            throw IllegalArgumentException("unexpected constraint class '${constraint.javaClass}'")
        constraints.add(constraint)
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
                             content: Array<out ConjBuilder.() -> Unit>): ConjBuilder
{
    var conjBuilder = ConjBuilder(type)
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
