/*
 * Copyright 2014-2020 JetBrains s.r.o.
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


interface ChunkReader {
    val next: MatchJournal.Chunk
    val current: MatchJournal.Chunk

    fun atStart(): Boolean
    fun atEnd(): Boolean

    infix fun at(pos: MatchJournal.Pos) = current === pos.chunk
    infix fun at(chunk: MatchJournal.Chunk) = current === chunk

    infix fun atNext(pos: MatchJournal.Pos) = next === pos.chunk
    infix fun atNext(chunk: MatchJournal.Chunk) = next === chunk
}

interface JournalIterator: ChunkReader, Iterator<MatchJournal.Chunk>

interface RemovingJournalIterator: JournalIterator {
    fun removeNext()
}

interface MutableJournalIterator: RemovingJournalIterator {
    fun add(chunk: MatchJournal.Chunk)
}


internal infix fun JournalIterator.assertAt(pos: MatchJournal.Pos) {
    if (!(this at pos)) throw IllegalStateException("Position wasn't found in journal: $pos")
}

