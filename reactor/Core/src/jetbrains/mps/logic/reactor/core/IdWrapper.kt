package jetbrains.mps.logic.reactor.core

class IdWrapper<T>(val wrapped: T) {

    val idHash = System.identityHashCode(wrapped)

    override fun hashCode(): Int = idHash

    override fun equals(other: Any?): Boolean {
        if (other is IdWrapper<*>)
            return this.wrapped === other.wrapped // referential equality!
        return false
    }

    override fun toString(): String = "${wrapped.toString()} #$idHash"

}