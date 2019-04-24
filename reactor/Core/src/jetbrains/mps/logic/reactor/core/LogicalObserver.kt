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

package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.core.internal.LogicalImpl
import jetbrains.mps.logic.reactor.logical.Logical

/**
 * An observer interface of a [Logical] instance.
 *
 * @author Fedor Isakov
 */
interface LogicalObserver {

    fun valueUpdated(logical: Logical<*>)

    fun parentUpdated(logical: Logical<*>)

}

fun Logical<*>.addObserver(observer: LogicalObserver) {
    (this as LogicalImpl<*>).valueObservers.add(this.to(observer))
    (this as LogicalImpl<*>).parentObservers.add(this.to(observer))
}

fun Logical<*>.removeObserver(observer: LogicalObserver) {
    (this as LogicalImpl<*>).valueObservers.removeAll { p -> p.second == observer }
    (this as LogicalImpl<*>).parentObservers.removeAll { p -> p.second == observer }
}
