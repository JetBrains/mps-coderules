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
 * A symbol used by both constraints and predicates. Is uniquely identified by id and arity.
 *
 * @author Fedor Isakov
 */
public abstract class Symbol {

    private String id;
    private int arity;

    protected Symbol(String id, int arity) {
        this.id = id;
        this.arity = arity;
    }

    public String id() {
        return id;
    }

    public int arity() {
        return arity;
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 43 * result + ((id != null ? String.valueOf(id).hashCode() : 0));
        result = 31 * result + 37 * arity;
        return result;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || this.getClass() != o.getClass()) {
            return false;
        }

        Symbol that = (Symbol) o;
        if ((id != null ? !(id.equals(that.id())) : that.id != null)) {
            return false;
        }
        if (arity != that.arity) {
            return false;
        }

        return true;
    }
}
