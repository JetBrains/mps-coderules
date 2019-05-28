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

import jetbrains.mps.logic.reactor.core.Dispatcher
import jetbrains.mps.logic.reactor.core.ProcessingState
import java.lang.IllegalArgumentException

abstract class StoreAwareJournal(val journal: MatchJournal): MatchJournal by journal {

    abstract fun testPush()
    abstract fun resetStore()

    // for tests
    companion object {
        fun fromView(view: MatchJournal.View? = null): StoreAwareJournal = StoreAwareJournalImpl(MatchJournalImpl(view))
    }
}


internal open class StoreAwareJournalImpl(journal: MatchJournal, private val state: StateFrameStack = StateFrameStack())
    : StoreAwareJournal(journal), ProcessingState by state
{

    private class PosImpl(val frame: StateFrame, val chunk: MatchJournal.Chunk, val entriesInChunk: Int = 0) : MatchJournal.Pos()
    {
        override fun chunk(): MatchJournal.Chunk = chunk
        override fun entriesInChunk(): Int = entriesInChunk
    }


    fun currentFrame() = state.currentFrame()

    fun push() = state.push()

    //fixme: remove, temporary
    fun reset(frame: StateFrame) = state.reset(frame)

    override fun testPush() { state.push() }

    // Reset only store & history position, don't modify history
    override fun resetStore() {
        state.reset()
        this.resetPos()
    }


    override fun currentPos(): MatchJournal.Pos =
        PosImpl(state.currentFrame(), super.currentPos().chunk(), super.currentPos().entriesInChunk())

    // Throw away recently added chunks and reset store accordingly
    // NB: not checking that chunks are actually recently added, from this exec session
    override fun reset(pastPos: MatchJournal.Pos) {
        if (pastPos is PosImpl) {
            state.reset(pastPos.frame)
            super.reset(pastPos)
        } else {
            throw IllegalArgumentException()
        }
    }
}