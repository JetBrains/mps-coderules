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

package jetbrains.mps.logic.reactor.util

import java.util.*
import com.github.andrewoma.dexx.collection.ConsList as DexxCollectionConsList
import com.github.andrewoma.dexx.collection.Map as DexxCollectionMap
import com.github.andrewoma.dexx.collection.Maps as DexxCollectionMaps
import com.github.andrewoma.dexx.collection.Set as DexxCollectionSet
import com.github.andrewoma.dexx.collection.Sets as DexxCollectionSets

/**
 * Definition of types used as persistent collections.
 *
 * @author Fedor Isakov
 */

typealias PersList<T> = DexxCollectionConsList<T>

typealias PersMap<K, V> = DexxCollectionMap<K, V>

typealias PersSet<T> = DexxCollectionSet<T>

interface Lists {
    companion object {
        fun <T> of() = DexxCollectionConsList.empty<T>()
        fun <T> of(t: T) = DexxCollectionConsList.empty<T>().append(t)
    }
}

interface Maps {
    companion object {
        fun <K,V> of() = DexxCollectionMaps.of<K,V>()
        fun <K,V> of(k: K, v: V) = DexxCollectionMaps.of<K,V>(k, v)
    }
}

interface Sets {
    companion object {
        fun <T> of() = DexxCollectionSets.of<T>()
        fun <T> of(t: T) = DexxCollectionSets.of<T>(t)
        fun <T> copyOf(it: Iterable<T>) = DexxCollectionSets.copyOf<T>(it)
    }
}

fun <T> PersList<T>.without(t: T) = remove(t)

fun <T> arrayDequeOf(vararg elements: T): ArrayDeque<T> =
    if (elements.size == 0) ArrayDeque() else ArrayDeque(Arrays.asList(* elements))
