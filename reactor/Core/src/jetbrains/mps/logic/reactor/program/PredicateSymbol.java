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


import jetbrains.mps.logic.reactor.evaluation.Solver;
import jetbrains.mps.logic.reactor.evaluation.Supervisor;

/**
 * A predicate symbol.
 *
 * @author Fedor Isakov
 */
public abstract class PredicateSymbol extends Symbol {

    public PredicateSymbol(String id, int arity) {
        super(id, arity);
    }

    public abstract Solver solver();

    public Solver solver(Supervisor supervisor) {
        return solver();
    }

    @Override
    public String toString() {
        return id() + "()/" + arity();
    }

}
