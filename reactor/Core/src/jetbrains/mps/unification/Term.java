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

import java.util.Collection;

/**
 * Represents a node in a term graph. The graph may contain cycles. A node in a term
 * graph can be of three kinds: a variable, a function (possibly constant) and a reference.
 * A reference must point to either a function term or a variable.
 *
 * A term must implement {@link java.lang.Comparable}, but this is only really used for
 * comparing the variables.
 *
 * @author Fedor Isakov
 */
public interface Term extends Comparable<Term> {

    /**
     * A symbol corresponding to the function/constant name or the variable name.
     * TODO: what is the meaning of symbol in case of a reference term?
     * NOTE: two variable terms are treated as the same term if their symbols match.
     */
    Object symbol();

    /**
     * Arguments of a function term.
     */
    Collection<? extends Term> arguments();

    /**
     * For a reference term, returns the term this term is referring to.
     * For function and variable terms return this term.
     */
    Term get();

    /**
     * The kind of this term: function, variable or reference.
     */
    boolean is(Kind kind);

    enum Kind {
        FUN,
        VAR,
        REF
    }
}
