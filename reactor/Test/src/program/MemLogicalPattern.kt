package program

import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.logical.NamingContext

/**
 * @author Fedor Isakov
 */

data class MemLogicalPattern<V>(val name: String, val type: Class<V>, val wildcard: Boolean) : LogicalPattern<V> {

    constructor(name: String, type: Class<V>) : this(name, type, false) {}

    override fun name(): String = name

    override fun name(namingContext: NamingContext): String = TODO()

    override fun isWildcard(): Boolean = wildcard

    override fun type(): Class<V> = type

    override fun instance(): Logical<V> {
        // FIXME wrong
        throw UnsupportedOperationException("fixme")
    }

}