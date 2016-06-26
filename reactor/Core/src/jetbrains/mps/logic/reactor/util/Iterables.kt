package jetbrains.mps.logic.reactor.util

import java.util.*

/**
 * @author Fedor Isakov
 */

class LazyIterable<S, T>(val origin: List<S>, val map: (S) -> T) : Iterable<T> {

    val mapped = arrayOfNulls<Any>(origin.size)

    override fun iterator(): Iterator<T> = object: Iterator<T> {

        var idx: Int = 0

        override fun hasNext(): Boolean = idx < origin.size

        override fun next(): T {
            if (idx < origin.size && mapped[idx] == null) {
                mapped[idx] = map(origin[idx])
            }
            return if (idx < origin.size) mapped[idx++] as T else  throw NoSuchElementException()
        }
    }
}
