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

import java.util.ArrayList;

/**
 * A collection of handlers that constitute a constraint rules program.
 *
 * FIXME a handler is to be renamed to RulesList
 * @author Fedor Isakov
 */
public abstract class Program {

    public abstract String name();

    public abstract Iterable<RulesList> handlers();

    public Iterable<Rule> rules() {
        ArrayList<Rule> allRules = new ArrayList<Rule>();
        for (RulesList rulesList : handlers()) {
            for (Rule rule : rulesList.rules()) {
                allRules.add(rule);
            }
        }
        return allRules;
    };
}
