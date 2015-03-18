/*
 * Copyright 2014 JetBrains s.r.o.
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
 * A reference must point to a function term.
 *
 * A term must implement {@link java.lang.Comparable}, but this is only really used for
 * comparing the variables.
 *
 * Soon to be renamed to Term.
 *
 * @author Fedor Isakov
 */
public interface Node extends Comparable<Node> {

    @Deprecated
    boolean isTerm();

    @Deprecated
    Term asTerm();

    @Deprecated
    boolean isVar();

    @Deprecated
    Var asVar();

    Object symbol();

    Collection<? extends Node> children();

    Node get();

    boolean is(Kind kind);

    enum Kind {
        FUN,
        VAR,
        REF
    }
}
