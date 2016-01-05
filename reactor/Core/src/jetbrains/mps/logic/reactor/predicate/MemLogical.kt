
package jetbrains.mps.logic.reactor.predicate

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.logical.SolverLogical

/**
 * @author Fedor Isakov
 */

class MemLogical<T> : SolverLogical<T> {

    companion object {
        var anonIdx = 0
    }

    val name: String

    var _parent: MemLogical<T>? = null

    var _value: T? = null

    var rank = 0

    constructor(value: T) {
        this.name = "$${anonIdx++}"
        this._value = value
    }

    constructor(name: String) {
        this.name = name
    }

    override fun name(): String = name

    override fun value(): T? = _value

    override fun isBound(): Boolean = find()._value != null

    override fun isWildcard(): Boolean = TODO()

    override fun pattern(): LogicalPattern<Logical<T>> = TODO()

    override fun findRoot(): SolverLogical<T> = find()

    override fun setParent(parent: SolverLogical<T>) { this._parent = parent as MemLogical<T> }

    override fun setValue(newValue: T) { this._value = newValue }

    override fun rank(): Int = rank

    override fun incRank() { rank++ }

    override fun mergeObservers(mergeFrom: SolverLogical<T>) = TODO()

    private fun find(): MemLogical<T> {
        val tmp = _parent
        if (tmp == null) return this
        else {
            val root = tmp.find()
            this._parent = root
            return root
        }
    }

    override fun toString(): String = "$name(^${_parent?.name ?: null})=$_value"

}
