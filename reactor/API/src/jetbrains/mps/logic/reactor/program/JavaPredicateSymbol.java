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


/**
 * A predicate symbol for an anonymous expression.
 *
 * @author Fedor Isakov
 */
public class JavaPredicateSymbol extends PredicateSymbol {

    public static final JavaPredicateSymbol EXPRESSION0 = new JavaPredicateSymbol(1);

    public static final JavaPredicateSymbol EXPRESSION1 = new JavaPredicateSymbol(2);

    public static final JavaPredicateSymbol EXPRESSION2 = new JavaPredicateSymbol(3);

    public static final JavaPredicateSymbol EXPRESSION3 = new JavaPredicateSymbol(4);

    private static final String EXPRESSION = "expression";

    private static JavaPredicateSymbol[] KNOWN_SYMBOLS = {EXPRESSION0, EXPRESSION1, EXPRESSION2, EXPRESSION3};

    private JavaPredicateSymbol(int arity) {
        super(EXPRESSION, arity);
    }

    public static JavaPredicateSymbol withArity(int arity) {
        return KNOWN_SYMBOLS[arity];
    }

}
