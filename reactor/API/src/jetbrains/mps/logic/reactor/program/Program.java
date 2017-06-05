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

package jetbrains.mps.logic.reactor.program;


import jetbrains.mps.logic.reactor.logical.LogicalContext;

import java.util.List;

/**
 * A collection of handlers that constitute a constraint rules program.
 *
 * @author Fedor Isakov
 */
public abstract class Program {

    public abstract String name();

    public abstract Iterable<ConstraintSymbol> constraintSymbols();

    public abstract List<Class<?>> constraintArgumentTypes(ConstraintSymbol constraintSymbol);

    public abstract Iterable<PredicateSymbol> predicateSymbols();

    public abstract Iterable<Handler> handlers();

    public abstract List<?> instantiateArguments(List<?> arguments, LogicalContext logicalContext);

}
