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

package jetbrains.mps.logic.reactor.core

/**
 * Encapsulates a detailed report to be provided by the code being evaluated.
 * Does not affect the evaluation flow.
 *
 * @author Fedor Isakov
 */
open class DetailedFeedback : Feedback {

    private val message: String
    private val severity: Severity
    private val details: Any?

    constructor(message: String) {
        this.message = message
        this.severity = Severity.INFO
        this.details = null
    }

    constructor(message: String, severity: Severity, details: Any? = null) {
        this.message = message
        this.severity = severity
        this.details = details
    }

    override fun getSeverity(): Severity {
        return severity
    }

    override fun getMessage(): String {
        return message
    }

    override fun getDetails(): Any? {
        return details
    }

    override fun toString(): String {
        return getSeverity().toString() + " " + message
    }

}
