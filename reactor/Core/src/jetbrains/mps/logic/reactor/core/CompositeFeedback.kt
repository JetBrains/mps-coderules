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

import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.Supervisor
import jetbrains.mps.logic.reactor.program.Rule

import java.util.ArrayList

/**
 * @author Fedor Isakov
 */
class CompositeFeedback private constructor(private val elements: List<Feedback>) : Feedback() {
    private val severity: Severity = maxSeverity(elements)

    override fun handle(supervisor: Supervisor, ruleMatch: RuleMatch, provenance: List<Rule>): Boolean {
        var unhandled = false
        if (!alreadyHandled()) {
            for (feedback in elements) {
                if (!feedback.handle(supervisor, ruleMatch, provenance)) {
                    unhandled = true
                }
            }
        }
        if (!unhandled) {
            setHandled()
        }
        return alreadyHandled()
    }

    override fun report(supervisor: Supervisor, ruleMatch: RuleMatch, provenance: List<Any>) {
        if (!alreadyHandled()) {
            for (feedback in elements) {
                feedback.report(supervisor, ruleMatch, provenance)
            }
            setHandled()
        }
    }

    override fun getSeverity(): Severity {
        return severity
    }

    override fun getMessage(): String {
        return composeMessages(elements)
    }

    override fun getDetails(): Any? {
        // FIXME compose the details
        return null
    }

    fun elements(): List<Feedback> {
        return elements
    }

    override fun toString(): String {
        return elements.toString()
    }

    private fun composeLeft(left: Feedback): CompositeFeedback {
        val newElements = ArrayList<Feedback>()
        if (left is CompositeFeedback) {
            newElements.addAll(left.elements)

        } else {
            newElements.add(left)
        }
        newElements.addAll(elements)
        return CompositeFeedback(newElements)
    }

    private fun composeRight(right: Feedback): CompositeFeedback {
        val newElements = ArrayList(elements)
        if (right is CompositeFeedback) {
            newElements.addAll(right.elements)

        } else {
            newElements.add(right)
        }
        return CompositeFeedback(newElements)
    }

    companion object {

        /**
         * Composition is associative but not commutative.
         */
        fun of(left: Feedback?, right: Feedback?): Feedback? {
            return if (left == null || right == null) {
                left ?: right

            } else (left as? CompositeFeedback)?.composeRight(right)
                ?: ((right as? CompositeFeedback)?.composeLeft(left) ?: CompositeFeedback(listOf(left, right)))
        }

        fun dropLast(maybeComposite: Feedback?): Feedback? =
            if (maybeComposite == null || maybeComposite !is CompositeFeedback) {
                null
            } else if (maybeComposite.elements.size > 2) {
                CompositeFeedback(maybeComposite.elements.dropLast(1))
            } else if (maybeComposite.elements.size == 2) {
                maybeComposite.elements[0]
            } else throw NoSuchElementException()


        private fun maxSeverity(efs: List<Feedback>): Severity {
            var sev: Severity = Severity.DEBUG
            for (ef in efs) {
                if (ef.severity > sev) {
                    sev = ef.severity
                }
            }
            return sev
        }

        private fun composeMessages(efs: List<Feedback>): String {
            val sb = StringBuilder()
            var sep = ""
            for (ef in efs) {
                sb.append(sep).append(ef.message)
                sep = "; "
            }
            return sb.toString()
        }
    }
}
