import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.*
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import org.junit.Test
import org.junit.Assert.*
import org.junit.Ignore

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

    private class JournalDispatcherHelper(dispatcher: Dispatcher, val hist: StoreAwareJournal = StoreAwareJournal.fromView())
    {
        var d: Dispatcher.DispatchingFront = dispatcher.front()

        fun logExpand(occ: Occurrence) {
            hist.logActivation(occ)
            d = d.expand(occ)
        }

        fun logFirstMatch() = hist.logMatch(d.matches().first())

        // log and expand occurrence while tracking its justifications
        fun logExpandJustified(id: String, vararg args: Any) =
            logExpand(justifiedOccurrence(id, hist.justs(), * args))
    }

    @Test
    fun testJustificationTracking() {
        with(programWithRules(
            rule("rule2",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("bar")
                )),
            rule("rule3",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("qux")
                )),
            rule("rule4",
                headReplaced(
                    princConstraint("bar"),
                    princConstraint("qux")
                ),
                body()
                )))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                hist.justs() shouldBe justsOf(0)

                logExpand(justifiedOccurrence("foo", setOf(1)))
                val fooMatches = d.matches()
                fooMatches.count() shouldBe 2

                // log first 'foo' match

                hist.logMatch(fooMatches.first())
                hist.justs() shouldBe justsOf(1)

                logExpandJustified("bar")
                d.matches().count() shouldBe 0

                // log second 'foo' match

                hist.logMatch(fooMatches.elementAt(1))
                hist.justs() shouldBe justsOf(1,2)

                logExpandJustified("qux")
                d.matches().count() shouldBe 1

                logFirstMatch()
                hist.justs() shouldBe justsOf(1,2,3)
            }
        }
    }


    @Test
    fun testReplayCorners() {
        val mockController = MockController()
        with(programWithRules(
            rule("rule1",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    princConstraint("bar"),
                    princConstraint("foo")
                ),
                body(
                    princConstraint("qux")
                )),
            rule("rule3",
                headKept(
                    princConstraint("qux")
                ),
                body(
                    princConstraint("lax")
                ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                val initPos = hist.currentPos()

                logExpand(justifiedOccurrence("foo", setOf(1)))

                logFirstMatch()
                logExpandJustified("bar")

                logFirstMatch()
                logExpandJustified("qux")

                logFirstMatch()
                logExpandJustified("lax")

                // 'replay' to the saved pos after full 'resetStore' must restore the store
                with(hist) {

                    val lastPos = currentPos()

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("lax"))
                    val nchunks = view().chunks.size
                    nchunks shouldBe 4

                    // try replay the last chunk
                    replay(mockController, lastPos)

                    // should change nothing
                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("lax"))
                    view().chunks.size shouldBe nchunks


                    resetStore()

                    // storeView is reset, but journal remains the same
                    storeView().allOccurrences().count() shouldBe 0
                    view().chunks.size shouldBe nchunks

                    replay(mockController, initPos)

                    // storeView replays only the initial chunk, journal remains the same
                    storeView().constraintSymbols() shouldBe setOf(sym0("foo"))
                    view().chunks.size shouldBe nchunks
                }
            }
        }
    }


    @Test
    fun testResetStoreThenReplay() {
        val mockController = MockController()
        with(programWithRules(
            rule("rule1",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    princConstraint("bar"),
                    princConstraint("foo")
                ),
                body(
                    princConstraint("qux")
                ))
            ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                logExpand(justifiedOccurrence("foo", setOf(1)))

                logFirstMatch()
                logExpandJustified("bar")

                logFirstMatch()
                logExpandJustified("qux")

                // 'replay' to the saved pos after full 'resetStore' must restore the store
                with(hist) {
                    val oldStore = storeView().allOccurrences()
                    oldStore.count() shouldBe 1 // 'qux'
                    val savedPos = currentPos()

                    resetStore()

                    storeView().allOccurrences().count() shouldBe 0

                    replay(mockController, savedPos)

                    storeView().allOccurrences() shouldBe oldStore
                    currentPos() shouldBe savedPos
                }
            }
        }
    }


    @Test
    @Ignore("reset is tested properly in TestController")
    fun testFullReset() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("foo")
                ),
                body(
                    princConstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    princConstraint("bar"),
                    constraint("foo")
                ),
                body(
                    princConstraint("qux")
                ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                with(hist) {
                    view().chunks.size shouldBe 1 // only initial chunk
                    storeView().allOccurrences().count() shouldBe 0
                }
                val initialPos = hist.currentPos()

                // execute program

                hist.testPush()
                logExpand(occurrence("foo"))

                logFirstMatch()
                // provide initial justification
                logExpand(justifiedOccurrence("bar", setOf(1)))

                logFirstMatch()
                logExpandJustified("qux")


                with(hist) {
                    view().chunks.size shouldBe 2
                    storeView().allOccurrences().count() shouldBe 1 // only "qux"

                    // reset to the very beginning
                    reset(initialPos)

                    currentPos().chunk shouldBeSame initialPos.chunk
                    view().chunks.size shouldBe 1
                    storeView().allOccurrences().count() shouldBe 0
                }
            }
        }
    }


    @Test
    @Ignore("reset is tested properly in TestController")
    fun testPushExecReset() {
        with(programWithRules(
            rule("rule2",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    constraint("bar"),
                    constraint("bazz"),
                    princConstraint("qux")
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
                princConstraint("qux"),
                princConstraint("foo")
            ),
            body(
                constraint("last")
            ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                logExpand(justifiedOccurrence("foo", setOf(1)))

                // rule2
                logFirstMatch()
                logExpand(occurrence("bar"))
                logExpand(occurrence("bazz"))
                // use this production later, but create it now to get relevant justs
                val quxOcc = justifiedOccurrence("qux", hist.justs())


                val curChunk = hist.currentPos().chunk
                // rule3
                logFirstMatch()
                logExpand(occurrence("bazz"))
                // matched on rule with heads without justifications, should remain in the same chunk
                hist.currentPos().chunk shouldBeSame curChunk


                // push happens before constraints in body are activated
                hist.testPush()
                // last production from rule2
                logExpand(quxOcc)
//                logExpandJustified("qux")


                // rule4
                hist.view().chunks.size shouldBe 2
                logFirstMatch()
                // match on the principal constraint must add the chunk
                hist.view().chunks.size shouldBe 3


                val oldState = hist.view()
                val oldNChunks = oldState.chunks.size
                val oldStore = hist.storeView().allOccurrences()
                val savedPos = hist.currentPos()

//            println("chunks on save: ${oldState.chunks}")
                hist.testPush()
                logExpand(occurrence("last"))

//            println("chunks on save: ${oldState.chunks}")
//            println("chunks on exec: ${hist.view().chunks}")
                oldState.chunks.size shouldBe 3
                assertNotEquals(oldState.chunks, hist.view().chunks)
                assertNotEquals(oldStore, hist.storeView().allOccurrences())

                hist.reset(savedPos)

                oldState.chunks.size shouldBe 2
                hist.view().chunks shouldBe oldState.chunks
                hist.storeView().allOccurrences() shouldBe oldStore
                hist.currentPos() shouldBe savedPos
            }
        }
    }


    @Test
    fun testRmAddInMiddle() {
        val mockController = MockController()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    princConstraint("foo")
                ),
                body(
                    // 'bar' occurrences are activated manually, see test code
//                    princConstraint("bar1"),
//                    princConstraint("bar2"),
                    princConstraint("bazz")
                )),

            rule("rule2a",
                headReplaced(
                    princConstraint("bar1")
                ),
                headKept(
                    princConstraint("bazz")
                ),
                body()),
            rule("rule2b",
                headReplaced(
                    princConstraint("bar2")
                ),
                headKept(
                    princConstraint("bazz")
                ),
                body(
                    constraint("marker")
                )),

            rule("rule3",
                headReplaced(
                    princConstraint("bazz")
                ),
                body(
                    constraint("qux")
                ))
        ))
        {
            // Test outline:
            //  1) exec program
            //  2) rm chunk (rule match) from the history middle
            //  3) add something instead of removed rule match
            //  4) replay the still valid future, that's left from the first exec

            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                logExpand(justifiedOccurrence("foo", setOf(1)))

                // rule1
                logFirstMatch()
                logExpandJustified("bar1")
                logExpandJustified("bazz")

                val rule1matches = d.matches()
                rule1matches.count() shouldBe 2

                // rule2a
                hist.logMatch(rule1matches.first())
                //no productions in rule2a

                // rule3, this rule match will remain in history untouched
                hist.logMatch(rule1matches.last())
                logExpand(occurrence("qux"))

                // execution ended

                val lastPos = hist.currentPos()
                with(hist) {
                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"))

                    // walk by history, remove the third chunk (i.e. match of rule2a)
                    //  continue from the second chunk (match of rule1)
                    val rmIt = iterator()
                    rmIt.next() // skip initial chunk
                    val continueFrom = rmIt.next()
                    rmIt.next()
                    rmIt.remove()

                    // store is not longer valid after removing chunks from history, so reset it
                    resetStore()
                    // move to the point where we want to insert new rule
                    replay(mockController, continueFrom)

                    // according to the history 'qux' wasn't activated at this point & 'bar1' wasn't discarded
                    storeView().constraintSymbols() shouldBe setOf(sym0("bazz"), sym0("bar1"))
                }

                // add another instance of bar (i.e. bar2) and trigger another rule, rule2b
                //  (bar2 plays a role of the reactivation of original bar)
                logExpandJustified("bar2")
                // 'bazz' is already expanded from the first execution
                hist.justs() shouldBe justsOf(1) // dependency is only the first chunk

                // we have only a single _new_ match; rule3 has been matched already and remains in the history, in future
                d.matches().count() shouldBe 1
                // rule2b, this rule match is added at the place of rule2a match
                logFirstMatch()
                logExpand(occurrence("marker"))

                // reexecution ended

                with(hist) {
                    storeView().constraintSymbols() shouldBe setOf(sym0("bazz"), sym0("bar1"), sym0("marker"))
                    assertNotEquals(lastPos, currentPos())

                    // finally, purely go the the end, applying the rest of the history to the store
                    replay(mockController, lastPos)

                    currentPos().chunk shouldBeSame lastPos.chunk // we inserted in the middle -- the last chunk should remain the same
                    storeView().constraintSymbols() shouldBe setOf(sym0("bar1"), sym0("qux"), sym0("marker"))
                }
            }
        }
    }
}