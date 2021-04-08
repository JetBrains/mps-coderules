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


import java.util.Collections;
import java.util.List;

/**
 * A constraint rule description.
 *
 * @author Fedor Isakov
 */
public abstract class Rule {

    public abstract Rule.Kind kind();

    /**
     * A list of objects identifying the segment this rule belongs to. An empty segment path signifies the root segment.
     * An occurrence produced from the root segment can be processed by any rule in the program.
     * An occurrence produced from segment identified by a path P can be processed by a rule from any segment that
     * has P as the path prefix.
     */
    // TODO Make abstract
    public List<Object> segmentPath() {
        return Collections.emptyList();
    }

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

        public String groupName() { return group; }

        public String name() { return name; }

        /**
         * Rule is "stable" if it has no unique part
         * and its name coincides with unique tag.
         * @return true if rule has no unique part
         */
        public boolean stable() { return utag.length() == name.length(); }

        public Tag(String groupPrefix, String commonPart, Object uniquePart) {
            if (!commonPart.startsWith(groupPrefix)) {
                throw new IllegalArgumentException();
            }
            StringBuilder utagSb = new StringBuilder(commonPart);
            if (uniquePart != null) {
                utagSb.append('_').append(uniquePart);
            }
            this.group = groupPrefix;
            this.name = commonPart;
            this.utag = utagSb.toString();
            this.hash = utag.hashCode();
        }

        @Deprecated
        public Tag(String tag) { this(tag, tag, null); }

        @Override
        public int hashCode() { return hash; }

        @Override
        public boolean equals(Object obj) {
            if (obj == null) return false;
            if (this == obj) return true;
            // FIXME WTF? NB: allow equality to String
            return this.toString().equals(obj.toString());
        }

        @Override
        public String toString() { return utag; }

        private final int hash;
        private final String group;
        private final String name;
        private final String utag;
    }

}
