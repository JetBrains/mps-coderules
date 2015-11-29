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
    appendHeadKept( * buildConjunction(Constraint::class.java, content).toArray())
}
fun guard(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendGuard( * buildConjunction(AndItem::class.java, content).toArray())
}
fun body(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendBody( * buildConjunction(AndItem::class.java, content).toArray())
}

fun constraint(id: String): ConjBuilder.() -> Unit = {
    add(AbstractConstraint(ConstraintSymbol.symbol(id, 0)))
}
fun constraint(id: String, arg: Any): ConjBuilder.() -> Unit = {
    add(AbstractConstraint(ConstraintSymbol.symbol(id, 1), arg))
}
fun constraint(id: String, arg1: Any, arg2: Any): ConjBuilder.() -> Unit = {
    add(AbstractConstraint(ConstraintSymbol.symbol(id, 2), arg1, arg2))
}
fun constraint(id: String, arg1: Any, arg2: Any, arg3: Any): ConjBuilder.() -> Unit = {
    add(AbstractConstraint(ConstraintSymbol.symbol(id, 3), arg1, arg2, arg3))
}
fun constraint(id: String, args: Array<out Any>): ConjBuilder.() -> Unit = {
    add(AbstractConstraint(ConstraintSymbol.symbol(id, args.size), * args))
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

