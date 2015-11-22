import jetbrains.mps.logic.reactor.constraint.occurrence.AbstractConstraintOccurrence
import jetbrains.mps.logic.reactor.constraint.occurrence.ConstraintOccurrence
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
    appendHeadKept( * buildConjunction(ConstraintOccurrence::class.java, content).toArray())
}
fun headReplaced(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendHeadKept( * buildConjunction(ConstraintOccurrence::class.java, content).toArray())
}
fun guard(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendGuard( * buildConjunction(AbstractConstraintOccurrence::class.java, content).toArray())
}
fun body(vararg content : ConjBuilder.() -> Unit): RB.() -> Unit = {
    appendBody( * buildConjunction(AbstractConstraintOccurrence::class.java, content).toArray())
}

fun constraint(id: String): ConjBuilder.() -> Unit = {
    add(ConstraintOccurrence.singleton(id))
}
fun constraint(id: String, arg: Any): ConjBuilder.() -> Unit = {
    add(ConstraintOccurrence.unitary(id, arg))
}
fun constraint(id: String, arg1: Any, arg2: Any): ConjBuilder.() -> Unit = {
    add(ConstraintOccurrence.binary(id, arg1, arg2))
}
fun constraint(id: String, arg1: Any, arg2: Any, arg3: Any): ConjBuilder.() -> Unit = {
    add(ConstraintOccurrence.ternary(id, arg1, arg2, arg3))
}
fun constraint(id: String, args: Array<out Any>): ConjBuilder.() -> Unit = {
    add(ConstraintOccurrence.nary(id, * args))
}

class RB(tag: String) : RuleBuilder(tag) {}

class ConjBuilder (val type: Class<out AbstractConstraintOccurrence>) {
    val constraints = ArrayList<AbstractConstraintOccurrence>()
    fun add(constraint: AbstractConstraintOccurrence): Unit {
        if (!type.isAssignableFrom(constraint.javaClass))
            throw IllegalArgumentException("unexpected constraint class '${constraint.javaClass}'")
        constraints.add(constraint)
    }
    fun <T : AbstractConstraintOccurrence> toArray(): Array<T> =
        if (ConstraintOccurrence::class.java.isAssignableFrom(type))
            Array<ConstraintOccurrence>(constraints.size) {
                constraints.get(it) as ConstraintOccurrence
            } as Array<T>
        else
            Array<AbstractConstraintOccurrence>(constraints.size) {
                constraints.get(it)
            } as Array<T>
}

private fun
    buildConjunction(type: Class<out AbstractConstraintOccurrence>, content: Array<out ConjBuilder.() -> Unit>): ConjBuilder
{
    var conjBuilder = ConjBuilder(type)
    for (c in content) {
        conjBuilder.c()
    }
    return conjBuilder
}

