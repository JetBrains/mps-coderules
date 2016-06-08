package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.DerivedKeyHashMap
import com.github.andrewoma.dexx.collection.KeyFunction
import com.github.andrewoma.dexx.collection.internal.base.AbstractSet

class IdentitySet<E> : AbstractSet<E> {

    companion object {

        val EMPTY_SET = IdentitySet<Any>()

        private fun <E> idkey(value: E) = System.identityHashCode(value)

    }

    lateinit var store: DerivedKeyHashMap<Int, E>

    constructor() {
        this.store = DerivedKeyHashMap(object : KeyFunction<Int, E> {
            override fun key(value: E): Int = idkey(value)
        })
    }

    constructor(setStore: DerivedKeyHashMap<Int, E>) {
        this.store = setStore
    }

    override fun add(value: E): IdentitySet<E> = IdentitySet(store.put(idkey(value), value))

    override fun contains(value: E): Boolean = store.containsKey(idkey(value))

    override fun remove(value: E): IdentitySet<E> = IdentitySet(store.remove(idkey(value)))

    override fun iterator(): MutableIterator<E> = object: MutableIterator<E> {

        val storeIt = store.iterator()

        override fun hasNext(): Boolean = storeIt.hasNext()

        override fun next(): E = storeIt.next().component2()

        override fun remove() {
            throw UnsupportedOperationException()
        }
    }

}

fun <E> emptySet(): IdentitySet<E> = IdentitySet.EMPTY_SET as IdentitySet<E>

fun <E> singletonSet(e: E): IdentitySet<E> = emptySet<E>().add(e)