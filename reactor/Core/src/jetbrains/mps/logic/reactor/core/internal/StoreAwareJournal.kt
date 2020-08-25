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

import jetbrains.mps.logic.reactor.core.LogicalStateObservable
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import java.lang.IllegalArgumentException


/**
 * [MatchJournal] which also maintains observers in [LogicalStateObservable] in sync with its current position.
 */
interface StoreAwareJournal : MatchJournal, LogicalStateObservable {

     // Only for testing push() in Impl
    fun testPush()

    fun resetStore()

    // for tests
    companion object {
        fun fromView(
            ispec: IncrementalSpec = IncrementalSpec.DefaultSpec,
            view: MatchJournal.View? = null
        ): StoreAwareJournal = StoreAwareJournalImpl(MatchJournalImpl(ispec, view))
    }
}


internal open class StoreAwareJournalImpl(private val journal: MatchJournal,
                                          private val logicalState: LogicalState = LogicalState())
    : MatchJournal by journal, StoreAwareJournal, LogicalStateObservable by logicalState
{

    private class FramePos(
        val frame: LogicalStateFrame,
        chunk: MatchJournal.Chunk,
        entriesCount: Int = 0
    ) : MatchJournal.Pos(chunk, entriesCount)


    fun push() = logicalState.push()

    override fun testPush() { logicalState.push() }

    // Reset only store & history position, don't modify history
    override fun resetStore() {
        logicalState.reset()
        this.resetCursor()
    }


    override fun currentPos(): MatchJournal.Pos =
        FramePos(logicalState.currentFrame(), journal.currentPos().chunk, journal.currentPos().entriesCount)

    // Throw away recently added chunks and reset store accordingly
    // NB: not checking that chunks are actually recently added, from this exec session
    override fun reset(pastPos: MatchJournal.Pos) {
        if (pastPos is FramePos) {
            logicalState.reset(pastPos.frame)
            journal.reset(pastPos)
        } else {
            throw IllegalArgumentException()
        }
    }
}