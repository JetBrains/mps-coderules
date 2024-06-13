/*
 * Copyright 2014-2024 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.logical

import jetbrains.mps.logic.reactor.core.internal.LogicalImpl

/**
 * @author Fedor Isakov
 */

fun <T> newLogical(value: T): Logical<T> = LogicalImpl<T>(value)

fun <T> newLogical(name: String): Logical<T> = LogicalImpl<T>(name)

fun <T> newLogical(name: String, value: T): Logical<T> = LogicalImpl<T>(name, value)

// Used from tests

fun <V> anonLogical(value: V): MutableLogical<V> = LogicalImpl<V>(value)

fun <V> namedLogical(name: String): MutableLogical<V> = LogicalImpl<V>(name)

fun <V> MetaLogical<V>.logical(): MutableLogical<V> = LogicalImpl<V>(this)

fun <V> MetaLogical<V>.logical(value: V): MutableLogical<V> = LogicalImpl<V>(name(), value)
