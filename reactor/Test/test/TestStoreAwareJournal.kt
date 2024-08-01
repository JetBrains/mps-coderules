import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.*
import org.junit.Test
import org.junit.Assert.*

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


class TestStoreAwareJournal {

    private class JournalDispatcherHelper(
        dispatcher: Dispatcher,
        val hist: MatchJournal = MatchJournal.forTest()
    ) {
        val initialJournalSize = hist.view().chunks.size

        var d: Dispatcher.DispatchingFront = dispatcher.front()

        fun logExpand(occ: Occurrence) {
            hist.logActivation(occ)
            d = d.expand(occ)
        }

        fun logExpand(id: String, vararg args: Any) =
            logExpand(justifiedOccurrence(id, hist, * args))

        fun logFirstMatch() = hist.logMatch(d.matches().first())

        // log and expand occurrence while tracking its justifications
        fun logExpandJustified(id: String, vararg args: Any) =
            logExpand(principalOccurrence(id, hist, * args))

    }

    @Test
    fun testJustificationTracking() {
        with(programWithRules(
            rule("rule2",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("bar")
                )),
            rule("rule3",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("qux")
                )),
            rule("rule4",
                headReplaced(
                    pconstraint("bar"),
                    pconstraint("qux")
                ),
                body()
                )))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rules)))) {

                hist.justifications() shouldBe Justifications.of(0) // initial chunk

                logExpand(principalOccurrenceInit("foo"))
                val fooMatches = d.matches()
                fooMatches.count() shouldBe 2

                // log first 'foo' match

                hist.logMatch(fooMatches.first())
                hist.justifications() shouldBe Justifications.of(0,1)

                logExpandJustified("bar")
                d.matches().count() shouldBe 0

                // log second 'foo' match

                hist.logMatch(fooMatches.elementAt(1))
                hist.justifications() shouldBe Justifications.of(0,2)

                logExpandJustified("qux")
                d.matches().count() shouldBe 1

                logFirstMatch()
                hist.justifications() shouldBe Justifications.of(0,1,2,3)
            }
        }
    }

    @Test
    fun testFullReset() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("foo")
                ),
                body(
                    pconstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    pconstraint("bar"),
                    constraint("foo")
                ),
                body(
                    pconstraint("qux")
                ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rules)))) {

                with(hist) {
                    view().chunks.size shouldBe initialJournalSize // only initial chunk
                    storeView().allOccurrences().count() shouldBe 0
                }
                val initialPos = hist.currentPos()

                // execute program

                logExpand("foo")

                logFirstMatch()
                logExpandJustified("bar")

                logFirstMatch()
                logExpandJustified("qux")


                with(hist) {
                    view().chunks.size shouldBe 5 + initialJournalSize
                    storeView().allOccurrences().count() shouldBe 1 // only "qux"

                    // reset to the very beginning
                    reset(initialPos)

                    currentPos().chunk shouldBeSame initialPos.chunk
                    view().chunks.size shouldBe initialJournalSize
                    storeView().allOccurrences().count() shouldBe 0
                }
            }
        }
    }


    @Test
    fun testPushExecReset() {
        with(programWithRules(
            rule("rule2",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    constraint("bar"),
                    constraint("bazz"),
                    pconstraint("qux")
                )),
            rule("rule3",
                headReplaced(
                    constraint("bar"),
                    constraint("bazz")
                ),
                body(
                    constraint("bazz")
                )),
            rule("rule4",
            headKept(
                pconstraint("qux"),
                pconstraint("foo")
            ),
            body(
                pconstraint("last")
            ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rules)))) {

                logExpand(principalOccurrenceInit("foo"))

                // rule2
                logFirstMatch()
                logExpand("bar")
                logExpand("bazz")
                // use this production later, but create it now to get relevant justs
                val quxOcc = principalOccurrence("qux", hist)


                val curChunk = hist.currentPos().chunk
                // rule3
                logFirstMatch()
                logExpand("bazz")
                // matched on rule with heads without justifications, should remain in the same chunk
                // NB! the above no longer holds as the "principal" stuff has been phased out
//                hist.currentPos().chunk shouldBeSame curChunk


                // last production from rule2
                logExpand(quxOcc)


                // rule4
                hist.view().chunks.size shouldBe 7 + initialJournalSize
                logFirstMatch()
                // match on the principal constraint must add the chunk
                hist.view().chunks.size shouldBe 8 + initialJournalSize


                val oldState = hist.view()
                val oldStore = hist.storeView().allOccurrences()
                val savedPos = hist.currentPos()

                logExpandJustified("last")

                hist.view().chunks.size shouldBe 9 + initialJournalSize
                assertNotEquals(oldStore, hist.storeView().allOccurrences())


                hist.reset(savedPos)

                hist.view().chunks.size shouldBe oldState.chunks.size
                hist.view().chunks shouldBe oldState.chunks
                hist.storeView().allOccurrences() shouldBe oldStore
                hist.currentPos() shouldBe savedPos
            }
        }
    }

}