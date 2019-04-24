/*
 * Copyright 2014-2019 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.mps.logic.reactor.core.internal

import jetbrains.mps.logic.reactor.core.LogicalObserver
import jetbrains.mps.logic.reactor.logical.JoinableLogical
import jetbrains.mps.logic.reactor.logical.MetaLogical
import java.util.ArrayList

internal class LogicalImpl<T> : JoinableLogical<T> {

    companion object {
        var lastIdx = 0
    }

    val name: String

    val metaLogical: MetaLogical<T>

    var _parent: LogicalImpl<T>? = null

    var _value: T? = null

    var rank = 0

    internal val valueObservers = ArrayList<Pair<LogicalImpl<*>, LogicalObserver>>()

    internal val parentObservers = ArrayList<Pair<LogicalImpl<*>, LogicalObserver>>()

    constructor(value: T) {
        this.name = "$${++lastIdx}"
        this.metaLogical = DefaultMetaLogical<T>(name)
        this._value = value
    }

    constructor(name: String) {
        this.name = "${name}_${++lastIdx}"
        this.metaLogical = DefaultMetaLogical<T>(name)
    }

    constructor(name: String, value: T) {
        this.name = "${name}_${++lastIdx}"
        this.metaLogical = DefaultMetaLogical<T>(name)
        this._value = value
    }

    constructor(metaLogical: MetaLogical<T>, value: T) {
        this.metaLogical = metaLogical
        this.name = "${metaLogical.name()}_${++lastIdx}"
        this._value = value
    }

    constructor(metaLogical: MetaLogical<T>) {
        this.metaLogical = metaLogical
        this.name = "${metaLogical.name()}_${++lastIdx}"
    }

    override fun name(): String = name

    override fun value(): T? = _value

    override fun isBound(): Boolean = find()._value != null

    override fun isWildcard(): Boolean = metaLogical.isWildcard

    override fun metaLogical(): MetaLogical<T> = metaLogical

    override fun findRoot(): JoinableLogical<T> = find()

    override fun setValue(newValue: T) {
        if (_value !== newValue) {
            this._value = newValue
            notifyValueUpdated()
        }
    }

    override fun union(other: JoinableLogical<T>, reconciler: JoinableLogical.ValueReconciler<T>) {
        val thisRepr = this.find()
        val otherRepr = (other as LogicalImpl<T>).find()

        if (thisRepr === otherRepr) {
            // nothing to do
            return
        }

        // invariant: thisRepr.rank > otherRepr.rank
        if (thisRepr.rank() < otherRepr.rank()) {
            otherRepr.union(thisRepr, reconciler);
            return

        } else if (thisRepr.rank() == otherRepr.rank()) {
            if (thisRepr._value == null && otherRepr._value != null) {
                otherRepr.union(thisRepr, reconciler);
                return

            } else {
                thisRepr.incRank();

            }
        }

        val thisVal = thisRepr.value();
        val otherVal = otherRepr.value();

        // first copy the value
        if (thisVal == null && otherVal != null) {
            // var ground
            thisRepr.setValue(otherVal);
            // TODO: clear the value in the "other" logical after union

        } else if (thisVal != null && otherVal == null) {
            // ground var
            // TODO: no need to copy the value
            otherRepr.setValue(thisVal);
        }

        // then set parent
        otherRepr.setParent(thisRepr)
        thisRepr.mergeParentObservers(otherRepr)

        // last, reconcile the values/merge observers
        if (thisVal == null && otherVal == null) {
            // var var
            thisRepr.mergeValueObservers(otherRepr);

        } else if (thisVal != null && otherVal != null) {
            // ground ground
            reconciler.reconcile(thisVal, otherVal);
        }
    }

    override fun union(other: JoinableLogical<T>) {
        union(other, { a, b -> if (a != b) throw IllegalStateException("$a does not equal to $b")})
    }

    private fun find(): LogicalImpl<T> {
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

    private fun setParent(parent: LogicalImpl<T>) {
        this._parent = parent
        notifyParentUpdated()
    }

    private fun mergeValueObservers(mergeFrom: JoinableLogical<T>) {
        val other = mergeFrom as LogicalImpl<T>
        valueObservers.addAll(other.valueObservers)
        other.valueObservers.clear()
    }

    private fun mergeParentObservers(mergeFrom: JoinableLogical<T>) {
        val other = mergeFrom as LogicalImpl<T>
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
        else name

}

class DefaultMetaLogical<V> (val name: String) : MetaLogical<V>(name, Object::class.java as Class<V>) {}

// Used from tests

fun <V> anonLogical(value: V): JoinableLogical<V> = LogicalImpl<V>(value)

fun <V> namedLogical(name: String): JoinableLogical<V> = LogicalImpl<V>(name)

fun <V> MetaLogical<V>.logical(): JoinableLogical<V> = LogicalImpl<V>(this)

fun <V> MetaLogical<V>.logical(value: V): JoinableLogical<V> = LogicalImpl<V>(name(), value)

