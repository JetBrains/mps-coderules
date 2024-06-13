/*
 * Copyright 2014-2020 JetBrains s.r.o.
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

import java.util.function.Supplier;

/**
 * Used in implementation.
 * 
 * @author Fedor Isakov
 */
public interface DataProvider {
    
    class Key<T> {

        private final String name;

        public Key(String name) {
            this.name = name;
        }

        @Override
        public int hashCode() {
            return 17*name.hashCode();
        }

        @Override
        public boolean equals(Object that) {
            if (that == null) return false;
            if (that.getClass() != Key.class) return false;
            return this.name.equals(((Key) that).name);
        }

        @Override
        public String toString() {
            return name;
        }
    }

    <T> T getData(Key<T> key);

    <T> T getOrSetData(Key<T> key, Supplier<T> supplier);

    <T> void setData(Key<T> key, T data);

}
