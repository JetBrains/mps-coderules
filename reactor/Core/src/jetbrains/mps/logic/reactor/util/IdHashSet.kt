/*
 * Copyright 2014-2017 JetBrains s.r.o.
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
fun <E> emptyIdSet(): IdHashSet<E> = IdHashSet.EMPTY_SET as IdHashSet<E>

fun <E> singletonIdSet(e: E): IdHashSet<E> = emptyIdSet<E>().add(e)