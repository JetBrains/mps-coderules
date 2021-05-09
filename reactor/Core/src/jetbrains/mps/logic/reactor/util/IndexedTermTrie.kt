/*
 * Copyright 2014-2021 JetBrains s.r.o.
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

import gnu.trove.set.TIntSet
import gnu.trove.set.hash.TIntHashSet
import jetbrains.mps.unification.Term

/**
 * @author Fedor Isakov
 */

typealias IndexMask = TIntSet
fun indexMaskOf(vararg indices: Int): TIntSet = TIntHashSet(intArrayOf(*indices))

interface IndexedTermTrie<T> : TermTrie<T> {

    fun put(term: Term, index: Int, value: T)

    fun remove(term: Term, index: Int, value: T)

    fun lookupValues(term: Term, indexMask: IndexMask): Iterable<T>

    fun forValuesWithIndex(term: Term, indexMask: IndexMask?, callback: (T, Int) -> Unit)

    fun allValues(indexMask: IndexMask): Iterable<T>

}

fun <T> indexedTermTrie(): IndexedTermTrie<T> = ClassicIndexedTermTrie<T>()
