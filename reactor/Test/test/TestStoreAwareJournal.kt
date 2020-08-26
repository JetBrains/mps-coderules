import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.*
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.IncrementalSpec
import jetbrains.mps.logic.reactor.program.Rule
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

    private object LegacyMockIncrProgSpec : IncrementalSpec.StubSpec() {
        override fun isPrincipal(ctr: Constraint): Boolean = ctr.isPrincipal
        override fun isPrincipal(rule: Rule): Boolean = rule.all().any { it is Constraint && it.isPrincipal }
        override fun ability(): IncrementalSpec.Enabled = IncrementalSpec.Enabled.Yes
    }

    private class JournalDispatcherHelper(
        dispatcher: Dispatcher,
        ispec: IncrementalSpec = LegacyMockIncrProgSpec,
        val hist: StoreAwareJournal = StoreAwareJournal.fromView(ispec)
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
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                hist.justifications() shouldBe justsOf(0) // initial chunk

                logExpand(principalOccurrenceInit("foo"))
                val fooMatches = d.matches()
                fooMatches.count() shouldBe 2

                // log first 'foo' match

                hist.logMatch(fooMatches.first())
                hist.justifications() shouldBe justsOf(0,1)

                logExpandJustified("bar")
                d.matches().count() shouldBe 0

                // log second 'foo' match

                hist.logMatch(fooMatches.elementAt(1))
                hist.justifications() shouldBe justsOf(0,2)

                logExpandJustified("qux")
                d.matches().count() shouldBe 1

                logFirstMatch()
                hist.justifications() shouldBe justsOf(0,1,2,3)
            }
        }
    }


    @Test
    fun testReplayCorners() {
        val mockController = MockController()
        with(programWithRules(
            rule("rule1",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    pconstraint("bar"),
                    pconstraint("foo")
                ),
                body(
                    pconstraint("qux")
                )),
            rule("rule3",
                headKept(
                    pconstraint("qux")
                ),
                body(
                    pconstraint("lax")
                ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                val initPos = hist.currentPos()

                logExpand(principalOccurrenceInit("foo"))

                val fooPos = hist.currentPos()

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
                    nchunks shouldBe 2 + 4 * 2 // 4 rules, each activates 1 principal occurrence + 2 corner chunks

                    // try replay the last chunk
                    replay(lastPos)

                    // should change nothing
                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("lax"))
                    view().chunks.size shouldBe nchunks


                    resetStore()

                    // storeView is reset, but journal remains the same
                    storeView().allOccurrences().count() shouldBe 0
                    view().chunks.size shouldBe nchunks

                    replay(initPos)

                    storeView().constraintSymbols() shouldBe setOf<ConstraintSymbol>()

                    replay(fooPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("foo"))
                    // although storeView() results change, journal remains the same
                    view().chunks.size shouldBe nchunks
                }
            }
        }
    }

    @Test
    fun testReplayToSamePosTwice() {
        val mockController = MockController()
        with(programWithRules(
            rule("rule1",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    pconstraint("bar"),
                    pconstraint("foo")
                ),
                body(
                    pconstraint("qux")
                )),
            rule("rule3",
                headKept(
                    pconstraint("qux")
                ),
                body(
                    pconstraint("lax")
                ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                val initPos = hist.currentPos()

                logExpand(principalOccurrenceInit("foo"))

                val fooPos = hist.currentPos()

                logFirstMatch()
                logExpandJustified("bar")

                logFirstMatch()
                logExpandJustified("qux")

                val quxPos = hist.currentPos()

                logFirstMatch()
                logExpandJustified("lax")

                val lastPos = hist.currentPos()

                // 'replay' to the saved pos after full 'resetStore' must restore the store
                with(hist) {

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("lax"))

                    resetStore()


                    replay(fooPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("foo"))

                    // second replay to the same position, nothing should change
                    replay(fooPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("foo"))


                    replay(quxPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"))

                    // second replay to the same position, nothing should change
                    replay(quxPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"))
                }
            }
        }
    }

    @Test
    @Ignore("Journal in current state doesn't track precise position inside Chunk")
    fun testReplayInsideChunk() {
        val mockController = MockController()
        with(programWithRules(
            rule("rule1",
                headKept(
                    pconstraint("foo")
                ),
                body(
                    pconstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    pconstraint("bar"),
                    pconstraint("foo")
                ),
                body(
                    constraint("lax"),
                    constraint("qux"),
                    constraint("shwux"),
                    constraint("kex"),
                    pconstraint("buzz")

                )),
            rule("rule3",
                headKept(
                    constraint("qux")
                ),
                headReplaced(
                    constraint("lax"),
                    constraint("shwux")
                ),
                body(
                ))
        ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                val initPos = hist.currentPos()

                logExpand(principalOccurrenceInit("foo"))
                val fooPos = hist.currentPos()

                logFirstMatch()
                logExpandJustified("bar")

                logFirstMatch()
                logExpand("lax")
                logExpand("qux")
                val quxPos = hist.currentPos()
                logExpand("shwux")
                val shwuxPos = hist.currentPos()

                logFirstMatch()
                logExpand("kex")
                val kexPos = hist.currentPos()
                logExpandJustified("buzz")

                val lastPos = hist.currentPos()

                // 'replay' to the saved pos after full 'resetStore' must restore the store
                with(hist) {

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("kex"), sym0("buzz"))

                    resetStore()


                    replay(quxPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("lax"))

                    // second replay to the same position inside chunk, nothing should change
                    replay(quxPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("lax"))


                    replay(shwuxPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("lax"), sym0("shwux"))

                    // replay inside chunk when non principal-match happenned
                    replay(kexPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("kex"))


                    replay(lastPos)

                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"), sym0("kex"), sym0("buzz"))
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
                    pconstraint("foo")
                ),
                body(
                    pconstraint("bar")
                )),
            rule("rule2",
                headReplaced(
                    pconstraint("bar"),
                    pconstraint("foo")
                ),
                body(
                    pconstraint("qux")
                ))
            ))
        {
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                logExpand(principalOccurrenceInit("foo"))

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

                    replay(savedPos)

                    storeView().allOccurrences() shouldBe oldStore
                    currentPos() shouldBe savedPos
                }
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
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

                with(hist) {
                    view().chunks.size shouldBe initialJournalSize // only initial chunk
                    storeView().allOccurrences().count() shouldBe 0
                }
                val initialPos = hist.currentPos()

                // execute program

                hist.testPush()
                logExpand("foo")

                logFirstMatch()
                logExpandJustified("bar")

                logFirstMatch()
                logExpandJustified("qux")


                with(hist) {
                    view().chunks.size shouldBe 4 + initialJournalSize
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
            with(JournalDispatcherHelper(Dispatcher(RuleIndex(rulesLists)))) {

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
                hist.currentPos().chunk shouldBeSame curChunk


                // push happens before constraints in body are activated
                hist.testPush()
                // last production from rule2
                logExpand(quxOcc)


                // rule4
                hist.view().chunks.size shouldBe 3 + initialJournalSize
                logFirstMatch()
                // match on the principal constraint must add the chunk
                hist.view().chunks.size shouldBe 4 + initialJournalSize


                val oldState = hist.view()
                val oldStore = hist.storeView().allOccurrences()
                val savedPos = hist.currentPos()

                hist.testPush()
                logExpandJustified("last")

                hist.view().chunks.size shouldBe 5 + initialJournalSize
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