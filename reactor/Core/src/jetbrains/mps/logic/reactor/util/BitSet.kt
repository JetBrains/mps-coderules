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

import gnu.trove.iterator.TIntIterator
import gnu.trove.set.TIntSet
import java.util.*
import kotlin.NoSuchElementException

/**
 * @author Fedor Isakov
 */

inline fun BitSet.copyApply (f: BitSet.() -> Unit): BitSet =
    (clone() as BitSet).apply(f)

fun bitSetOfOnes(size: Int): BitSet =
    BitSet(size).apply { set(0, size) }

fun bitSet(setBit: Int): BitSet =
    BitSet().apply { set(setBit) }

//fun bitSet(setBits: Iterable<Int>): BitSet=
//    BitSet().apply { setBits.forEach { set(it) } }
//
//fun BitSet.setBit(bit: Int): BitSet =
//    (clone() as BitSet).apply { set(bit) }
//
//fun BitSet.clearBit(bit: Int): BitSet =
//    (clone() as BitSet).apply { clear(bit) }

fun BitSet.contains(bit: Int) = get(bit)
fun BitSet.add(bit: Int) = set(bit)
fun BitSet.remove(bit: Int) = clear(bit)
fun BitSet.addAll(that: BitSet) = or(that)
fun BitSet.addAll(that: TIntSet) {
    val iter = that.iterator()
    while (iter.hasNext()) {
        set(iter.next())
    }
}
fun BitSet.retainAll(that: BitSet) = and(that)
fun BitSet.retainAll(that: TIntSet) {
    var bit = nextSetBit(0)
    while (bit >= 0) {
        if (!that.contains(bit)) {
            clear(bit)
        }
        bit = nextSetBit(bit + 1)
    }
}

fun BitSet.iterator(): TIntIterator = object : TIntIterator {

    var next = nextSetBit(0)

    override fun hasNext(): Boolean = next != -1

    override fun next(): Int =
        if (next != -1) {
            val ret = next
            next = nextSetBit(next + 1)
            ret
        } else {
            throw NoSuchElementException()
        }

    override fun remove() =
        throw UnsupportedOperationException()
}
