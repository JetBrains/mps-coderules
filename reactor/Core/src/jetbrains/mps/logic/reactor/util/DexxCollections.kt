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

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.Map
import com.github.andrewoma.dexx.collection.Pair
import com.github.andrewoma.dexx.collection.Set

/**
 * @author Fedor Isakov
 */

fun <E> ConsList<E>.removeAt(idx: Int): ConsList<E> {
    if (idx < 0) throw IllegalArgumentException("index < 0")
    val left = this.take(idx)
    var right = this.drop(idx + 1)
    for (e in left.reversed()) {
        right = right.prepend(e)
    }
    return right
}

fun <E> ConsList<E>?.remove(e: E): ConsList<E>? {
    return this?.run {
        val idx = indexOf(e)
        if (idx >= 0) removeAt(idx) else this
    }
}

fun <T> Set<T>.put(t: T) = add(t)

fun <T> Set<T>.without(t: T) = remove(t)

fun <K : Any,V> Map<K, V>.assoc(k: K, v: V) = put(k, v)

fun <K : Any,V> Map<K, V>.without(k: K) = remove(k)

fun <K,V> Pair<K,V>.getValue(): V = component2()