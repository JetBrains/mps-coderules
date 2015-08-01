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
import java.util.Collections;

/**
 * The result of unification, either successful or not. If successful, contains a read-only collection
 * of {@link Binding} instances.
 *
 * @author Fedor Isakov
 */
public class Substitution {

    private boolean mySuccessful;

    private FailureCause myFailureCause;

    public Substitution(boolean successful) {
        mySuccessful = successful;
    }

    public Substitution(FailureCause failCause) {
        myFailureCause = failCause;
        mySuccessful = false;
    }

    public boolean isSuccessful() {
        return mySuccessful;
    }

    public  Collection<Binding> bindings() {
        return Collections.emptyList();
    }

    public FailureCause failureCause() {
        return myFailureCause;
    }

    public String toString() {
        return myFailureCause != null ? "[" + myFailureCause + "]" : "[FAILED_SUBSTITUTION]";
    }

    public static class Binding {
        private Term myVar;
        private Term myTerm;

        public Binding(Term myVar, Term myTerm) {
            this.myVar = myVar;
            this.myTerm = myTerm;
        }

        public Term var() {
            return myVar;
        }

        public Term term() {
            return myTerm;
        }
    }

    public enum FailureCause {
        CYCLE_DETECTED("cycle detected"),
        UNRECONCILED_REF("unreconciled ref"),
        SYMBOL_CLASH("symbol clash"),
        UKNOWN("uknown");

        private String myMessage;

        FailureCause(String message) {
            myMessage = message;
        }

        @Override
        public String toString() {
            return myMessage;
        }
    }

}
