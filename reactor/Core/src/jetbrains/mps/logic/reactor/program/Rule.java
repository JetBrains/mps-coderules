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


import java.util.Objects;

/**
 * A constraint rule description.
 *
 * @author Fedor Isakov
 */
public abstract class Rule {

    public abstract Rule.Kind kind();
    
    public boolean isBasis() { return false; }

    /**
     * A tag uniquely identifies the rule.
     */
    public abstract Tag uniqueTag();

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

    public static final class Tag {

        /**
         * The name of the template that created this rule.
         * @deprecated
         */
        public String groupName() { return group; }

        /**
         *
         * @param groupName template that created this rule
         * @param tagName
         * @param uniquePart
         */
        public Tag(String groupName, String tagName, Object uniquePart) {
            this.group = groupName;
            this.tag = tagName;
            this.id = uniquePart;
            this.hash = Objects.hash(tag, id, group);
        }

        @Deprecated
        public Tag(String tag) { this(tag, tag, null); }

        @Override
        public int hashCode() { return hash; }

        @Override
        public boolean equals(Object that) {
            if (that == null) return false;
            if (this == that) return true;
            if (!(that instanceof Tag)) return false;
            return  Objects.equals(this.id, ((Tag) that).id) &&
                    Objects.equals(this.tag, ((Tag) that).tag) &&
                    Objects.equals(this.group, ((Tag) that).group);
        }

        @Override
        public String toString() { return tag; }

        private final int hash;
        private final String group;
        private final String tag;
        private final Object id;
    }

}
