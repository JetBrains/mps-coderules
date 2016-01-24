
package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.logical.NamingContext
import jetbrains.mps.logic.reactor.logical.SolverLogical
import java.util.*

/**
 * @author Fedor Isakov
 */

interface LogicalObserver {

    fun valueUpdated(logical: Logical<*>)

    fun parentUpdated(logical: Logical<*>)

}

fun Logical<*>.addObserver(observer: LogicalObserver) {
    (this as MemLogical<*>).valueObservers.add(this.to(observer))
    (this as MemLogical<*>).parentObservers.add(this.to(observer))
}

fun Logical<*>.removeObserver(observer: LogicalObserver) {
    (this as MemLogical<*>).valueObservers.removeAll { p -> p.second == observer }
    (this as MemLogical<*>).parentObservers.removeAll { p -> p.second == observer }
}

fun <V> LogicalPattern<V>.logical(): Logical<V> = MemLogical<V>(name())

fun <V> LogicalPattern<V>.logical(value: V): Logical<V> = MemLogical<V>(name(), value)

class MemLogical<T> : SolverLogical<T> {

    companion object {
        var lastIdx = 0
    }

    val name: String

    val pattern: LogicalPattern<T>

    var _parent: MemLogical<T>? = null

    var _value: T? = null

    var rank = 0

    internal val valueObservers = ArrayList<Pair<MemLogical<*>, LogicalObserver>>()

    internal val parentObservers = ArrayList<Pair<MemLogical<*>, LogicalObserver>>()

    constructor(value: T) {
        this.name = "$${++lastIdx}"
        this.pattern = DefaultLogicalPattern<T>(name)
        this._value = value
    }

    constructor(name: String) {
        this.name = "${name}_${++lastIdx}"
        this.pattern = DefaultLogicalPattern<T>(name)
    }

    constructor(name: String, value: T) {
        this.name = "${name}_${++lastIdx}"
        this.pattern = DefaultLogicalPattern<T>(name)
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

    override fun pattern(): LogicalPattern<T> = pattern

    override fun findRoot(): SolverLogical<T> = find()

    override fun setValue(newValue: T) {
        this._value = newValue
        notifyValueUpdated()
    }

    override fun union(other: SolverLogical<T>, reconciler: SolverLogical.ValueReconciler<T>) {
        val thisRepr = this.find()
        val otherRepr = (other as MemLogical<T>).find()

        // invariant: thisRepr.rank > otherRepr.rank
        if (thisRepr.rank() < otherRepr.rank()) {
            otherRepr.union(thisRepr, reconciler);
            return;

        } else if (thisRepr.rank() == otherRepr.rank()) {
            thisRepr.incRank();
        }

        otherRepr.setParent(thisRepr)
        thisRepr.mergeParentObservers(otherRepr)

        val thisVal = thisRepr.value();
        val otherVal = otherRepr.value();

        if (thisVal == null && otherVal != null) {
            // var ground
            thisRepr.setValue(otherVal);

        } else if (thisVal != null && otherVal == null) {
            // ground var
            // otherRepr.setValue(thisRepr.value());
            // TODO: no need to copy the value
            otherRepr.notifyValueUpdated();

        } else if (thisVal == null && otherVal == null) {
            // var var
            thisRepr.mergeValueObservers(otherRepr);

        } else {
            // ground ground
            reconciler.reconcile(thisVal, otherVal);
        }
    }

    override fun union(other: SolverLogical<T>) {
        union(other, { a, b -> if (a != b) throw IllegalStateException("$a does not equal to $b")})
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

    private fun rank(): Int = rank

    private fun incRank() { rank++ }

    private fun setParent(parent: MemLogical<T>) {
        this._parent = parent
        notifyParentUpdated()
    }

    private fun mergeValueObservers(mergeFrom: SolverLogical<T>) {
        val other = mergeFrom as MemLogical<T>
        valueObservers.addAll(other.valueObservers)
        other.valueObservers.clear()
    }

    private fun mergeParentObservers(mergeFrom: SolverLogical<T>) {
        val other = mergeFrom as MemLogical<T>
        parentObservers.addAll(other.parentObservers)
        other.parentObservers.clear()
    }

    private fun notifyValueUpdated() {
        val obs = ArrayList(valueObservers)
        this.valueObservers.clear()
        for (p in obs) {
            p.second.valueUpdated(p.first)
        }
    }

    private fun notifyParentUpdated() {
        val obs = ArrayList(parentObservers)
        for (p in obs) {
            p.second.parentUpdated(p.first)
        }
    }

    override fun toString(): String =
        if (_parent != null) "${name}(^${_parent.toString()})"
        else "${name}=$_value"

}

data class DefaultLogicalPattern<V> (val name: String) : LogicalPattern<V> {

    override fun name(): String? {
        throw UnsupportedOperationException()
    }

    override fun name(namingContext: NamingContext?): String? {
        throw UnsupportedOperationException()
    }

    override fun isWildcard(): Boolean {
        throw UnsupportedOperationException()
    }

    override fun type(): Class<V>? {
        throw UnsupportedOperationException()
    }

    override fun instance(): Logical<V>? {
        throw UnsupportedOperationException()
    }
}