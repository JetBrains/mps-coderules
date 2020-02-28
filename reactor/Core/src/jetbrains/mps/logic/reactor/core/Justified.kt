/*
 * Copyright 2014-2020 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.core

import gnu.trove.set.TIntSet
import gnu.trove.set.hash.TIntHashSet


/**
 * An identifier whose presence provides evidence for some fact.
 */
typealias Evidence = Int

/**
 * [Justifications] is a set of [Evidence]s.
 */
typealias Justifications = TIntSet


fun emptyJustifications(): Justifications = TIntHashSet(1)
fun justsOf(vararg elements: Evidence): Justifications = TIntHashSet(elements)
fun justsFromCollection(collection: Collection<Evidence>): Justifications = TIntHashSet(collection)
fun justsCopy(other: Justifications): Justifications = TIntHashSet(other)


/**
 * A logical entity whose existence is supported by a number of some facts (or premises, or evidences).
 * Hence it is said that its existence is justified by them.
 * In its turn can serve as an evidence for other justified entities.
 */
interface Justified {

    /**
     * An identifier of this [Justified] entity.
     * Can serve as evidence for other [Justified] entities.
     */
    val evidence: Evidence

    /**
     * Premises (or facts) supporting existence of this [Justified] entity.
     */
    fun justifications(): Justifications

    /**
     * Checks whether this [Justified] entity is supported by [other] [Justified] entity.
     */
    fun justifiedBy(other: Justified): Boolean =
        this.justifications().contains(other.evidence)

    /**
     * Checks whether this [Justified] entity is supported any of the [others] [Justified] entities.
     */
    fun justifiedByAny(others: Collection<Justified>): Boolean =
        others.any { this.justifiedBy(it) }
}


interface EvidenceSource {
    fun nextEvidence(): Evidence
}