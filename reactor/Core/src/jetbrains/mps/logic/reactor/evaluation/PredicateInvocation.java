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

package jetbrains.mps.logic.reactor.evaluation;


import jetbrains.mps.logic.reactor.logical.LogicalContext;
import jetbrains.mps.logic.reactor.program.Predicate;

import java.util.List;

/**
 * A run-time object representing invocation of a predicate.
 *
 * @author Fedor Isakov
 */
public interface PredicateInvocation {

    Predicate predicate();

    List<?> arguments();

    LogicalContext logicalContext();

    default InvocationContext invocationContext() {
        // FIXME delete the implementation after all code has been migrated
        // keep compatibitily with existing code
        throw new UnsupportedOperationException();
    };

}
