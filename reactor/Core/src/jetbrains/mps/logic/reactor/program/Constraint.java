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

package jetbrains.mps.logic.reactor.program;


import java.util.Collection;
import java.util.List;

/**
 * A constraint provided by a handler.
 *
 * @author Fedor Isakov
 */
public interface Constraint extends AndItem {

    ConstraintSymbol symbol();

    List<Class<?>> argumentTypes();

    /**
     * Returns the collection of predicates that need to be applied after a successful match of this collection by a
     * rule's head.
     * This method only returns meaningful results for constraints that serve as patterns in a rule's head.
     */
    Collection<? extends Predicate> patternPredicates(Collection<?> occurrenceArgs);

    default boolean isPrincipal() { return false; }
}
