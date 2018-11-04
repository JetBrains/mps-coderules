/*
 * Copyright 2014-2018 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.evaluation;

import jetbrains.mps.logic.reactor.program.Rule;

/**
 * @author Fedor Isakov
 */
public interface FailureHandler {

    /**
     *  This method is called in order to decide what to do when a failure occurs during rule evaluation.
     *  Expected to return either the same failure (the default behaviour), a new failure with more details,
     *  or null.
     *  Any non-null returned value implies failure propagation up the evaluation stack.
     *  If null is returned, the failure is considered to have been handled.
     */
    EvaluationFailure handleFailure(EvaluationFailure failure, Rule rule);

}
