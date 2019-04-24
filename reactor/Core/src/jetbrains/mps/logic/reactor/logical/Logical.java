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

package jetbrains.mps.logic.reactor.logical;


/**
 * A run-time representation of a logical variable.
 *
 * @param <T> the value type
 *
 * @author Fedor Isakov
 */
public interface Logical<T> {

    String name();

    /**
     * Returns the representative logical instance.
     * <p>
     * TODO: rename to 'find()'
     */
    Logical<T> findRoot();

    /**
     * Returns the value associated with this logical instance.
     * Can be null.
     * Only the logical instance that is a representative can have value that is not null.
     * <p>
     * FIXME: must return the representative's value
     */
    T value();

    /**
     * True iff the representative has a non-null value.
     */
    boolean isBound();

    boolean isWildcard();

    MetaLogical<T> metaLogical();

}
