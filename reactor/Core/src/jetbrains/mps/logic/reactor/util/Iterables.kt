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
