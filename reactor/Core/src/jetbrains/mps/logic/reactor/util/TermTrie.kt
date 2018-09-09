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

import jetbrains.mps.unification.Term

/**
 * @author Fedor Isakov
 */

/**
 * A map-like structure to keep multiple values associated with a single term.
 *
 * The method `put` updates the structure to contain the new association. Likewise, the method
 * `remove` updates it to remove the association. Both methods return the same trie object to
 * make the API compatible with the persistent version of the same structure.
 *
 * Term variables are supported: a variable matches any term, including other variable. All variables are treated
 * as "wildcards", so the subsequent unification of the query term and the key does not necessarily succeeds.
 *
 * To access the stored values, the method `lookupValues` returns all values associated with terms.
 * The method `allValues` returns all stored values. Neither method makes any guarantees about the cardinality or
 * the order of the values returned.
 */
interface TermTrie<T> {

    fun put(term: Term, value: T): TermTrie<T>

    fun remove(term: Term, value: T): TermTrie<T>

    fun lookupValues(term: Term): Iterable<T>

    fun allValues(): Iterable<T>
}

fun <T> termTrie(): TermTrie<T> = ClassicTermTrie<T>()
