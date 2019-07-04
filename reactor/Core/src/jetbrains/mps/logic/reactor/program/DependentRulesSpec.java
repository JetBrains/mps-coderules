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

import org.jetbrains.annotations.NotNull;
import java.util.ArrayList;


public interface DependentRulesSpec {
    @NotNull
    Iterable<Object> getDependentRules(Rule rule);

    class EmptySpec implements DependentRulesSpec {
        @Override
        @NotNull
        public Iterable<Object> getDependentRules(Rule rule) {
            return new ArrayList<Object>();
        }
    }

    EmptySpec EmptySpec = new EmptySpec();
}
