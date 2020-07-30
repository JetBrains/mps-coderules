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
 * A logical variable that can be joined with another variable to produce a union.
 *
 * @param <T> the value type
 *
 * @author Fedor Isakov
 */
public interface MutableLogical<T> extends Logical<T> {

    /**
     * Covariant override.
     */
    MutableLogical<T> findRoot();

    /**
     * Unions two equivalence classes of logicals.
     * Both the receiver and the {@code other} parameter are expected to be representatives.
     * The one with the highest rank becomes the representative for the new class.
     */
    void union(MutableLogical<T> other, MutableLogical.ValueReconciler<T> reconciler);

    /**
     * Calls {@link MutableLogical#union(MutableLogical <T>, MutableLogical.ValueReconciler<T>) } with the default value reconciler.
     * The default reconciler throws {@link java.lang.IllegalArgumentException } if the two values are not equal.
     */
    void union(MutableLogical<T> other);

    /**
     * Should only be called on a representative.
     */
    void setValue(T newValue);

    void incUsagesCount(LogicalOwner logicalOwner);

    int usagesCount();

    interface ValueReconciler<T> {

        void reconcile(T valueA, T valueB);

    }

}
