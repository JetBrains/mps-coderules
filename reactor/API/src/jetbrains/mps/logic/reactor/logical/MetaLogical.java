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

package jetbrains.mps.logic.reactor.logical;


/**
 * A declaration of a logical variable.
 *
 * @param <T> the value type
 *
 * @author Fedor Isakov
 */
public class MetaLogical<T> {

    private static final String WILDCARD = "_";
    private String name;
    private Class<T> type;
    private boolean wildcard = false;

    public MetaLogical(String name, Class<T> type) {
        this.name = name;
        this.type = type;
    }

    public MetaLogical(Class<T> type) {
        this.name = MetaLogical.WILDCARD + System.identityHashCode(this);
        this.type = type;
        this.wildcard = true;
    }

    public String name() {
        return name;
    }

    public boolean isWildcard() {
        return wildcard;
    }

    public Class<T> type() {
        return type;
    }

    @Override
    public String toString() {
        return name;
    }

}
