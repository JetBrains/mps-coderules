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

public interface IncrementalSpec {

    boolean isPrincipal(Constraint ctr);
    boolean isPrincipal(Rule rule);

    @Deprecated(forRemoval = true)
    default boolean isWeakPrincipal(Rule rule) {return false; }

    @NotNull
    @Deprecated(forRemoval = true)
    default Enabled ability() { throw new UnsupportedOperationException(); }
    @NotNull
    @Deprecated(forRemoval = true)
    default IncrLevel incrLevel() { throw new UnsupportedOperationException(); }
    @NotNull
    @Deprecated(forRemoval = true)
    default AssertLevel assertLevel()  { throw new UnsupportedOperationException(); }

    enum IncrLevel {
        Preamble, Full;

        public IncrLevel min(IncrLevel other) {
            return this.compareTo(other) <= 0 ? this : other;
        }
    }

    enum Enabled {
        No, Unsafe, Yes;

        public Enabled min(Enabled other) {
            return this.compareTo(other) <= 0 ? this : other;
        }

        public boolean allowed() {
            return this.compareTo(Enabled.No) > 0;
        }

        public boolean strict() {
            return this.compareTo(Enabled.Yes) >= 0;
        }
    }

    enum AssertLevel {
        Normal, AssertContracts;

        public AssertLevel max(AssertLevel other) {
            return this.compareTo(other) >= 0 ? this : other;
        }

        public boolean assertContracts() {
            return this.compareTo(AssertLevel.AssertContracts) >= 0;
        }
    }

    class StubSpec implements IncrementalSpec {
        @Override
        public boolean isPrincipal(Constraint ctr) { return false; }
        @Override
        public boolean isPrincipal(Rule rule) { return false; }
        @Override
        public boolean isWeakPrincipal(Rule rule) { return false; }

        @Override
        @NotNull
        public Enabled ability() { return Enabled.No; }
        @NotNull
        @Override
        public IncrLevel incrLevel() { return IncrLevel.Full; }
        @NotNull
        @Override
        public AssertLevel assertLevel() { return AssertLevel.Normal; }
    }

    StubSpec DefaultSpec = new StubSpec();
}

