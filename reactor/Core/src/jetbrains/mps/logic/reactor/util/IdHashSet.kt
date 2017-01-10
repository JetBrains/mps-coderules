package jetbrains.mps.logic.reactor.util

import com.github.andrewoma.dexx.collection.DerivedKeyHashMap
import com.github.andrewoma.dexx.collection.KeyFunction
import com.github.andrewoma.dexx.collection.internal.base.AbstractSet

class IdHashSet<E> : AbstractSet<E> {

    companion object {

        val EMPTY_SET = IdHashSet<Any>()

        private fun <E> idkey(value: E) = System.identityHashCode(value)

    }

    var storage: DerivedKeyHashMap<Int, E>

    constructor() {
        this.storage = emptyStorage()
    }

    constructor(storage: DerivedKeyHashMap<Int, E>) {
        this.storage = storage
    }

    constructor(copyFrom: Iterable<E>) {
        this.storage = copyFrom.fold(emptyStorage()) { s, e -> s.put(idkey(e), e) }
    }

    override fun add(value: E): IdHashSet<E> = IdHashSet(storage.put(idkey(value), value))

    override fun contains(value: E): Boolean = storage.containsKey(idkey(value))

    override fun remove(value: E): IdHashSet<E> = IdHashSet(storage.remove(idkey(value)))

    override fun iterator(): MutableIterator<E> = object: MutableIterator<E> {

        val storageIt = storage.iterator()

        override fun hasNext(): Boolean = storageIt.hasNext()

        override fun next(): E = storageIt.next().component2()

        override fun remove() {
            throw UnsupportedOperationException()
        }
    }

    private fun emptyStorage(): DerivedKeyHashMap<Int, E> {
        return DerivedKeyHashMap(object : KeyFunction<Int, E> {
            override fun key(value: E): Int = idkey(value)
        })
    }

}

@Suppress("UNCHECKED_CAST")
fun <E> emptySet(): IdHashSet<E> = IdHashSet.EMPTY_SET as IdHashSet<E>

fun <E> singletonSet(e: E): IdHashSet<E> = emptySet<E>().add(e)