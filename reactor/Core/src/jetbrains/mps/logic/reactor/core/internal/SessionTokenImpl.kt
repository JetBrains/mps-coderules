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

package jetbrains.mps.logic.reactor.core.internal

import jetbrains.mps.logic.reactor.core.DispatchingFrontState
import jetbrains.mps.logic.reactor.evaluation.MatchJournalView
import jetbrains.mps.logic.reactor.evaluation.SessionToken
import jetbrains.mps.logic.reactor.program.Rule

data class SessionTokenImpl(
    private val journalView: MatchJournal.View,
    private val rules: Iterable<Rule>,
    private val frontState: DispatchingFrontState,
    val logicalState: LogicalState
) : SessionToken
{
    override fun getJournalView(): MatchJournalView = journalView
    override fun getRules(): Iterable<Rule> = rules
    fun getFrontState(): DispatchingFrontState = frontState
}
