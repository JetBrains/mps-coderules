
package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.logical.SolverLogical
import java.util.*

/**
 * @author Fedor Isakov
 */

internal interface LogicalValueObserver {

    fun valueUpdated(logical: Logical<*>)

}

internal fun Logical<*>.addObserver(observer: LogicalValueObserver) {
    (this as MemLogical<*>).observers.add(observer)
}

internal fun Logical<*>.removeObserver(observer: LogicalValueObserver) {
    (this as MemLogical<*>).observers.remove(observer)
}

fun <V> LogicalPattern<V>.logical(): Logical<V> = MemLogical<V>(name())

fun <V> LogicalPattern<V>.logical(value: V): Logical<V> = MemLogical<V>(name(), value)

class MemLogical<T> : SolverLogical<T> {

    companion object {
        var lastIdx = 0
    }

    val name: String

    var pattern: LogicalPattern<T>? = null

    var _parent: MemLogical<T>? = null

    var _value: T? = null

    var rank = 0

    internal val observers = ArrayList<LogicalValueObserver>()

    constructor(value: T) {
        this.name = "$${++lastIdx}"
        this._value = value
    }

    constructor(name: String) {
        this.name = "${name}_${++lastIdx}"
    }

    constructor(name: String, value: T) {
        this.name = "${name}_${++lastIdx}"
        this._value = value
    }

    constructor(pattern: LogicalPattern<T>) {
        this.pattern = pattern
        this.name = "${pattern.name()}_${++lastIdx}"
    }

    override fun name(): String = name

    override fun value(): T? = _value

    override fun isBound(): Boolean = find()._value != null

    override fun isWildcard(): Boolean = TODO()

    override fun pattern(): LogicalPattern<T>? = pattern

    override fun findRoot(): SolverLogical<T> = find()

    override fun setValue(newValue: T) {
        this._value = newValue
        notifyObservers()
    }

    override fun union(other: SolverLogical<T>, reconciler: SolverLogical.ValueReconciler<T>) {
        val leftRepr = this.find()
        val rightRepr = (other as MemLogical<T>).find()

        // invariant: leftRepr.rank > rightRepr.rank
        if (leftRepr.rank() < rightRepr.rank()) {
            rightRepr.union(leftRepr, reconciler);
            return;

        } else if (leftRepr.rank() == rightRepr.rank()) {
            leftRepr.incRank();
        }

        rightRepr._parent = leftRepr

        val leftVal = leftRepr.value();
        val rightVal = rightRepr.value();

        if (leftVal == null && rightVal != null) {
            // var ground
            leftRepr.setValue(rightVal);

        } else if (leftVal != null && rightVal == null) {
            // ground var
            // rightRepr.setValue(leftRepr.value());
            // TODO: no need to copy the value
            rightRepr.notifyObservers();

        } else if (leftVal == null && rightVal == null) {
            // var var
            leftRepr.mergeObservers(rightRepr);

        } else {
            // ground ground
            reconciler.reconcile(leftVal, rightVal);
        }
    }

    override fun union(other: SolverLogical<T>) {
        union(other, { a, b -> if (a != b) throw IllegalStateException("$a does not equal to $b")})
    }

    private fun rank(): Int = rank

    private fun incRank() { rank++ }

    private fun mergeObservers(mergeFrom: SolverLogical<T>) {
        val other = mergeFrom as MemLogical<T>
        observers.addAll(other.observers)
        other.observers.clear()
    }

    private fun notifyObservers() {
        val obs = ArrayList(observers)
        this.observers.clear()
        for (o in obs) {
            o.valueUpdated(this)
        }
    }

    private fun find(): MemLogical<T> {
        val tmp = _parent
        if (tmp == null) return this
        else {
            val root = tmp.find()
            this._parent = root
            return root
        }
    }

    override fun toString(): String =
        if (_parent != null) "${name}(^${_parent.toString()})"
        else "${name}=$_value"

}
