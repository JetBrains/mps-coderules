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

package jetbrains.mps.unification;

/**
 * Used by the unifier to wrap original terms in order to alter the unification behaviour.
 * For example, one might want to represent a (term) variable as a constant in order to avoid unwanted matches.
 *
 * @author Fedor Isakov
 */
public interface TermWrapper {

    Term wrap(Term orig);

    Term unwrap(Term wrapper);

    TermWrapper ID = new TermWrapper() {

        @Override
        public Term wrap(Term orig) {
            return orig;
        }

        @Override
        public Term unwrap(Term wrapper) {
            return wrapper;
        }

    };

}
