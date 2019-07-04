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

import jetbrains.mps.logic.reactor.core.ProcessingState
import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
import java.lang.IllegalArgumentException


/**
 * [MatchJournal] which also maintains observers in [ProcessingState] in sync with its current position.
 */
interface StoreAwareJournal : MatchJournal, ProcessingState {

     // Only for testing push() in Impl
    fun testPush()

    fun resetStore()

    // for tests
    companion object {
        fun fromView(
            ispec: IncrementalProgramSpec = IncrementalProgramSpec.DefaultSpec,
            view: MatchJournal.View? = null
        ): StoreAwareJournal = StoreAwareJournalImpl(MatchJournalImpl(ispec, view))
    }
}


internal open class StoreAwareJournalImpl(private val journal: MatchJournal, private val state: StateFrameStack = StateFrameStack())
    : MatchJournal by journal, StoreAwareJournal, ProcessingState by state
{

    private class FramePos(
        val frame: StateFrame,
        chunk: MatchJournal.Chunk,
        entriesCount: Int = 0
    ) : MatchJournal.Pos(chunk, entriesCount)


    fun push() = state.push()

    override fun testPush() { state.push() }

    // Reset only store & history position, don't modify history
    override fun resetStore() {
        state.reset()
        this.resetPos()
    }


    override fun currentPos(): MatchJournal.Pos =
        FramePos(state.currentFrame(), journal.currentPos().chunk, journal.currentPos().entriesCount)

    // Throw away recently added chunks and reset store accordingly
    // NB: not checking that chunks are actually recently added, from this exec session
    override fun reset(pastPos: MatchJournal.Pos) {
        if (pastPos is FramePos) {
            state.reset(pastPos.frame)
            journal.reset(pastPos)
        } else {
            throw IllegalArgumentException()
        }
    }
}