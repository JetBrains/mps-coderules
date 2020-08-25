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
 * A logical entity whose existence is supported by some
 * facts (or premises, or evidences, or justifications).
 * Hence it is said that its existence is justified by them.
 * In its turn can serve as an evidence for other justified entities.
 */
interface Justified {

    /**
     * A logical identifier of this [Justified] entity.
     * Not guaranteed to be unique.
     * Can serve as evidence for other [Justified] entities.
     */
    val evidence: Evidence

    /**
     * Premises (or facts) supporting existence of this [Justified] entity.
     */
    fun justifications(): Justifications

    /**
     * Checks whether this [Justified] entity is supported by [other] [Justified] entity.
     * It is reflexive, transitive and antisymmetric relation.
     *
     * Antisymmetric means:
     *  if a.justifiedBy(b) then !b.justifiedBy(a), where a.evidence != b.evidence.
     * Or, equivalently:
     *  if a.justifiedBy(b) && b.justifiedBy(a) then a.evidence == b.evidence.
     * Together with transitivity it ensures acyclicity of justifications.
     */
    fun justifiedBy(other: Justified): Boolean =
        this.justifications().contains(other.evidence)

    /**
     * Checks whether this [Justified] entity is supported any of the [others] [Justified] entities.
     */
    fun justifiedByAny(others: Collection<Justified>): Boolean =
        others.any { this.justifiedBy(it) }

    /**
     * Append [Justifications] from [other] entity to justifications of this [Justified].
     * After the operation this.justifiedBy(other) returns true.
     */
    fun justifyBy(other: Justified): Unit {
        // ensure operation doesn't break antisymmetric property of relation
        assert(!other.justifiedBy(this) || this.evidence == other.evidence)

        justifications().addAll(other.justifications())
    }

    /**
     * Append [Justifications] from all [others] entities to justifications of this [Justified]
     */
    fun justifyByAll(others: Iterable<Justified>): Unit = others.forEach { justifyBy(it) }
}


interface EvidenceSource {
    val nullEvidence: Evidence
    fun nextEvidence(): Evidence
}
