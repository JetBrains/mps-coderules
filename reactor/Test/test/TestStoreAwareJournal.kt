import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.*
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.IncrementalProgramSpec
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

    private object LegacyMockIncrProgSpec : IncrementalProgramSpec {
        override fun isPrincipal(ctr: Constraint): Boolean = ctr.isPrincipal
        override fun isPrincipal(rule: Rule): Boolean = rule.all().any { it is Constraint && it.isPrincipal }
        override fun isWeakPrincipal(rule: Rule): Boolean = false
    }

    private class JournalDispatcherHelper(
        dispatcher: Dispatcher,
        ispec: IncrementalProgramSpec = LegacyMockIncrProgSpec,
        val hist: StoreAwareJournal = StoreAwareJournal.fromView(ispec)
    ) {
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
                    nchunks shouldBe 4 * 2 // 4 rules, each activates 1 principal occurrence

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
                    view().chunks.size shouldBe 1 // only initial chunk
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
                    view().chunks.size shouldBe 5
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
                hist.view().chunks.size shouldBe 4
                logFirstMatch()
                // match on the principal constraint must add the chunk
                hist.view().chunks.size shouldBe 5


                val oldState = hist.view()
                val oldStore = hist.storeView().allOccurrences()
                val savedPos = hist.currentPos()

                hist.testPush()
                logExpandJustified("last")

                hist.view().chunks.size shouldBe 6
                assertNotEquals(oldStore, hist.storeView().allOccurrences())


                hist.reset(savedPos)

                hist.view().chunks.size shouldBe oldState.chunks.size
                hist.view().chunks shouldBe oldState.chunks
                hist.storeView().allOccurrences() shouldBe oldStore
                hist.currentPos() shouldBe savedPos
            }
        }
    }


    @Ignore("manipulating journal without controller is too fragile. not a good test.")
    @Test
    fun testRmAddInMiddle() {
        val mockController = MockController()
        with(programWithRules(
            rule("rule1",
                headReplaced(
                    pconstraint("foo")
                ),
                body(
                    // 'bar' occurrences are activated manually, see test code
//                    pconstraint("bar1"),
//                    pconstraint("bar2"),
                    pconstraint("bazz")
                )),

            rule("rule2a",
                headReplaced(
                    pconstraint("bar1")
                ),
                headKept(
                    pconstraint("bazz")
                ),
                body()),
            rule("rule2b",
                headReplaced(
                    pconstraint("bar2")
                ),
                headKept(
                    pconstraint("bazz")
                ),
                body(
                    constraint("marker")
                )),

            rule("rule3",
                headReplaced(
                    pconstraint("bazz")
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

                logExpand(principalOccurrenceInit("foo"))

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
                logExpand("qux")

                // execution ended

                val lastPos = hist.currentPos()
                with(hist) {
                    storeView().constraintSymbols() shouldBe setOf(sym0("qux"))

                    // walk by history, remove the third chunk (i.e. match of rule2a)
                    //  continue from the second chunk (match of rule1)
                    val rmIt = iterator()
                    rmIt.next() // skip initial chunk
                    rmIt.next() // 'foo' activation
                    val continueFrom = rmIt.next().toPos() // 'rule1' activation
                    rmIt.next() // 'bar1' activation
                    rmIt.next() // 'bazz' activation
                    rmIt.next() // 'rule2a' match
                    rmIt.remove() // rm rule2a match

                    // store is not longer valid after removing chunks from history, so reset it
                    resetStore()
                    // move to the point where we want to insert new rule
                    replay(continueFrom)

                    // according to the history 'qux' wasn't activated at this point & 'bar1' wasn't discarded
                    storeView().constraintSymbols() shouldBe setOf<ConstraintSymbol>()
                }

                // add another instance of bar (i.e. bar2) and trigger another rule, rule2b
                //  (bar2 plays a role of the reactivation of original bar)
                logExpandJustified("bar2")
                // 'bazz' is already expanded from the first execution
                hist.justifications() shouldBe justsOf(1,2,7) // dependency is only the first chunk, the first activation + new id

                // we have only a single _new_ match; rule3 has been matched already and remains in the history, in future
                d.matches().count() shouldBe 1
                // rule2b, this rule match is added at the place of rule2a match
                logFirstMatch()
                logExpand("marker")

                // reexecution ended

                with(hist) {
                    storeView().constraintSymbols() shouldBe setOf(sym0("bazz"), sym0("bar1"), sym0("marker"))
                    assertNotEquals(lastPos, currentPos())

                    // finally, purely go the the end, applying the rest of the history to the store
                    replay(lastPos)

                    currentPos().chunk shouldBeSame lastPos.chunk // we inserted in the middle -- the last chunk should remain the same
                    storeView().constraintSymbols() shouldBe setOf(sym0("bar1"), sym0("qux"), sym0("marker"))
                }
            }
        }
    }
}