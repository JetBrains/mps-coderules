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


/**
 * A constraint rule description.
 *
 * @author Fedor Isakov
 */
public abstract class Rule {

    public abstract Rule.Kind kind();

    /**
     * A tag uniquely identifies the rule.
     */
    public abstract Object uniqueTag();

    /**
     * Human-readable identifier, not guaranteed to be unique.
     */
    public abstract String tag();

    /**
     * Human-readable identifier shared by all rules produced from the same template.
     */
    public abstract String basetag();

    /**
     * An origin serves as justification for all constraints affected by this rule.
     */
    public Object origin() { return null; }

    public abstract Iterable<Constraint> headKept();

    public abstract Iterable<Constraint> headReplaced();

    public abstract Iterable<Predicate> guard();

    public abstract Iterable<? extends Iterable<AndItem>> bodyAlternation();

    public abstract Iterable<AndItem> all();

    public enum Kind {
        SIMPLIFICATION(),
        PROPAGATION(),
        SIMPAGATION()
    }

}
