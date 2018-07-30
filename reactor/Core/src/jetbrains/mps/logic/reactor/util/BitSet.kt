/*
 * Copyright 2014-2018 JetBrains s.r.o.
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

fun bitSetOfOnes(size: Int): BitSet =
    BitSet(size).also { it.set(0, size) }

fun BitSet.setBit(bit: Int): BitSet =
    BitSet.valueOf(this.toLongArray()).also { it.set(bit) }

fun BitSet.clearBit(bit: Int): BitSet =
    BitSet.valueOf(this.toLongArray()).also { it.clear(bit) }

fun BitSet.allSetBits(): Iterable<Int> = object : Iterable<Int> {
    override fun iterator(): Iterator<Int> = object : Iterator<Int> {
        var next = nextSetBit(0);

        override fun hasNext(): Boolean = next != -1;

        override fun next(): Int =
            if (next != -1) {
                val ret = next
                next = nextSetBit(next + 1)
                ret
            } else {
                throw NoSuchElementException()
            }
    }
}



