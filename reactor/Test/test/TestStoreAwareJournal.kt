import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.*
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
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

    @Test
    fun testJustificationTracking() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("main")
                ),
                body(
                    princConstraint("foo")
                )),
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
                body(
//                    constraint("blin")
                ))))
        {

            val disp = Dispatcher(RuleIndex(rulesLists))
            var d = disp.front()
            val hist = StoreAwareJournal.fromView()
            val mainOcc = occurrence("main")
            hist.logActivation(mainOcc)
            d = d.expand(mainOcc)

            with(d.matches()) {
                count() shouldBe 1

                with(first()) {
                    hist.logMatch(this)
//                    rule().tag() shouldBe "rule1"

                    hist.justs() shouldBe justsOf()
                    val fooOcc = justifiedOccurrence("foo", setOf(1))
                    hist.logActivation(fooOcc)
                    d = d.expand(fooOcc)
                }
            }

            with(d.matches()) {
                count() shouldBe 2

                with(elementAt(0)) {
                    hist.logMatch(this)
//                    rule().tag() shouldBe "rule2"

                    hist.justs() shouldBe justsOf(1)
                    val barOcc = justifiedOccurrence("bar", hist.justs())
                    hist.logActivation(barOcc)
                    d = d.expand(barOcc)

                    with(d.matches()) {
                        count() shouldBe 0
                    }
                }

                with(elementAt(1)) {
                    hist.logMatch(this)
//                    rule().tag() shouldBe "rule3"

                    hist.justs() shouldBe justsOf(1,2)
                    val quxOcc = justifiedOccurrence("qux", hist.justs())
                    hist.logActivation(quxOcc)
                    d = d.expand(quxOcc)

                    with(d.matches()) {
                        count() shouldBe 1

                        with(first()) {
                            hist.logMatch(this)
//                            rule().tag() shouldBe "rule4"
                        }
                        hist.justs() shouldBe justsOf(1,2,3)
                    }
                }
            }
        }
    }


    @Test
    fun testResetThenRoll() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("main")
                ),
                body(
                    princConstraint("foo")
                )),
            rule("rule2",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    princConstraint("bar")
                )),
            rule("rule3",
                headReplaced(
                    princConstraint("bar"),
                    princConstraint("foo")
                ),
                body(
                    princConstraint("qux")
                ))
            ))
        {

            val disp = Dispatcher(RuleIndex(rulesLists))
            var d = disp.front()
            val hist = StoreAwareJournal.fromView()
            val mainOcc = occurrence("main")
            hist.logActivation(mainOcc)
            d = d.expand(mainOcc)

            with(d.matches().first()) {
                hist.logMatch(this)
            }
            val fooOcc = justifiedOccurrence("foo", setOf(1))
            hist.logActivation(fooOcc)
            d = d.expand(fooOcc)


            with(d.matches().first()) {
                hist.logMatch(this)
            }
            val barOcc = justifiedOccurrence("bar", hist.justs())
            hist.logActivation(barOcc)
            d = d.expand(barOcc)

            with(d.matches().first()) {
                hist.logMatch(this)
            }
            val quxOcc = justifiedOccurrence("qux", hist.justs())
            hist.logActivation(quxOcc)
            d = d.expand(quxOcc)

            // 'replay' to the saved pos after full 'resetStore' must restore the store

            val oldStore = hist.storeView().allOccurrences()
            oldStore.count() shouldBe 2 // 'qux' and 'main'
            val savedPos = hist.currentPos()

            hist.resetStore()

            hist.storeView().allOccurrences().count() shouldBe 0

            hist.replay(savedPos)

            hist.storeView().allOccurrences() shouldBe oldStore
            hist.currentPos().chunk() shouldBe savedPos.chunk()
            hist.currentPos().entriesInChunk() shouldBe savedPos.entriesInChunk()
        }
    }

    @Test
    fun testReplayInitialChunk() {

    }

    @Test
    fun testPushExecReset() {
        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("main")
                ),
                body(
                    princConstraint("foo")
                )),
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

            val disp = Dispatcher(RuleIndex(rulesLists))
            var d = disp.front()
            val hist = StoreAwareJournal.fromView()
            val mainOcc = occurrence("main")
            hist.logActivation(mainOcc)
            d = d.expand(mainOcc)

            with(d.matches().first()) {
//                rule().tag() shouldBe "rule1"
                hist.logMatch(this)
            }
            val fooOcc = justifiedOccurrence("foo", setOf(1))
            hist.logActivation(fooOcc)
            d = d.expand(fooOcc)


            with(d.matches().first()) {
//                rule().tag() shouldBe "rule2"
                hist.logMatch(this)
            }
            val barOcc = occurrence("bar")
            val bazzOcc = occurrence("bazz")
            val quxOcc = justifiedOccurrence("qux", hist.justs())
            hist.logActivation(barOcc)
            d = d.expand(barOcc)
            hist.logActivation(bazzOcc)
            d = d.expand(bazzOcc)


            val curChunk = hist.currentPos().chunk()
            with(d.matches().first()) {
//                rule().tag() shouldBe "rule3"
                hist.logMatch(this)
            }
            // matched on rule with heads without justifications, should remain in the same chunk
            hist.currentPos().chunk() shouldBeSame curChunk

            val bazzOcc2 = occurrence("bazz")
            hist.logActivation(bazzOcc2)
            d = d.expand(bazzOcc2)

            val oldState = hist.view()
            val oldStore = hist.storeView().allOccurrences()
            val savedPos = hist.currentPos()
            hist.testPush()


            hist.logActivation(quxOcc)
            d = d.expand(quxOcc)


            with(d.matches().first()) {
//                rule().tag() shouldBe "rule4"
                hist.view().chunks.size shouldBe 2
                hist.logMatch(this)
                hist.view().chunks.size shouldBe 3
            }
            val lastOcc = occurrence("last")
            hist.logActivation(lastOcc)
            d = d.expand(lastOcc)


            assertNotEquals(oldState.chunks, hist.view().chunks)
            assertNotEquals(oldStore, hist.storeView().allOccurrences())
            hist.reset(savedPos)
            hist.view().chunks shouldBe oldState.chunks
            hist.storeView().allOccurrences() shouldBe oldStore

//            hist.currentPos() shouldBeSame savedPos
            hist.currentPos().chunk() shouldBe savedPos.chunk()
            hist.currentPos().entriesInChunk() shouldBe savedPos.entriesInChunk()
        }
    }

    @Test
    fun testRmAddInMiddle() {
        with(programWithRules(
            rule("rule0",
                headKept(
                    constraint("main")
                ),
                body(
                    princConstraint("foo")
                )),
            rule("rule1",
                headKept(
                    princConstraint("foo")
                ),
                body(
                    // 'bar' occurrences are activated manually, see test code
//                    constraint("bar1"),
//                    constraint("bar2"),
                    princConstraint("bazz")
                )),

            rule("rule2a",
                headReplaced(
                    constraint("bar1")
                ),
                headKept(
                    princConstraint("bazz")
                ),
                body()),
            rule("rule2b",
                headKept(
                    constraint("bar2"),
                    princConstraint("bazz")
                ),
                body(
                    princConstraint("qux")
                )),

            rule("rule3",
                headKept(
                    princConstraint("foo"),
                    princConstraint("bazz")
                ),
                body(
                    princConstraint("qux")
                )),
            rule("ruleMakeP",
                headReplaced(
                    princConstraint("qux")
                ),
                body(
//                    constraint("p")
                    princConstraint("p")
                ))
        ))
        {
            // Test outline:
            //  1) exec program
            //  2) rm chunk (rule match) from the history middle
            //  3) add something instead of removed rule match
            //  4) apply the still valid future, that's left from the first exec
            //
            // fst exec: rule1 -> rule2a -> rule3 -> ruleMakeP
            // snd exec: rule1 -> rule2b -> ruleMakeP -> rule3 -> ruleMakeP

            val disp = Dispatcher(RuleIndex(rulesLists))
            var d = disp.front()
            val hist = StoreAwareJournal.fromView()
            val mainOcc = occurrence("main")
            hist.logActivation(mainOcc)
            d = d.expand(mainOcc)

            with(d.matches().first()) {
//                rule().tag() shouldBe "rule0"
                hist.logMatch(this)
            }
            val fooOcc = justifiedOccurrence("foo", setOf(1))
            hist.logActivation(fooOcc); d = d.expand(fooOcc)


            with(d.matches().first()) {
//                rule().tag() shouldBe "rule1"
                hist.logMatch(this)
            }
            val bar1Occ = occurrence("bar1")
            val bazzOcc = justifiedOccurrence("bazz", hist.justs())
            hist.logActivation(bar1Occ); d = d.expand(bar1Occ)
            hist.logActivation(bazzOcc); d = d.expand(bazzOcc)


            val rule1matches = d.matches()
            rule1matches.count() shouldBe 2
            with(rule1matches.first()) {
//                rule().tag() shouldBe "rule2a"
                hist.logMatch(this)
            }
            //no productions in rule2a

            // this rule match will remain in history untouched
            with(rule1matches.last()) {
//                rule().tag() shouldBe "rule3"
                hist.logMatch(this)
            }
            val quxOcc0 = justifiedOccurrence("qux", hist.justs())
            hist.logActivation(quxOcc0); d = d.expand(quxOcc0)


            with(d.matches().first()) {
//                rule().tag() shouldBe "ruleMakeP"
                hist.logMatch(this)
            }
//            val pOcc1 = occurrence("p")
            val pOcc1 = justifiedOccurrence("p", hist.justs())
            hist.logActivation(pOcc1); d = d.expand(pOcc1)


            // execution has ended
            hist.view().chunks.size shouldBe 5
            val lastPos = hist.currentPos()

            // bar1 was discarded by rule2a, so it shouldn't be in the store
            val bar1StoredBeforeRoll = hist.storeView().occurrences(ConstraintSymbol.symbol("bar1", 0))
            bar1StoredBeforeRoll.count() shouldBe 0

            // walk by history, remove the third chunk (i.e. match of rule2a)
            //  continue from the second chunk (match of rule1)
            val rmIt = hist.iterator()
//            rmIt.next()
            val continueFrom = rmIt.next()
            rmIt.next()
            rmIt.remove()

            // store is not longer valid after removing chunks from history, so reset it
            hist.resetStore()
            // move to the point where we want to insert new rule
            hist.replay(continueFrom)

            // we removed (canceled) rule discarding bar1, so after roll we should have it in the store
            val bar1StoredAfterRoll = hist.storeView().occurrences(ConstraintSymbol.symbol("bar1", 0))
            bar1StoredAfterRoll.count() shouldBe 1


            // add another instance of bar (i.e. bar2) and trigger another rule, rule2b
            //  bar2 plays a role of the reactivation of original bar
            val bar2Occ = occurrence("bar2")
            hist.logActivation(bar2Occ); d = d.expand(bar2Occ)
//            hist.logActivation(bazzOcc); d = d.expand(bazzOcc) // it is already produced

            // we have only a single _new_ match; rule3 has been matched already and remains in the history, in future
            d.matches().count() shouldBe 1
            // this rule match is added at the place of rule2a match
            with(d.matches().first()) {
//                rule().tag() shouldBe "rule2b"
                hist.logMatch(this)
            }
            val quxOcc1 = justifiedOccurrence("qux", hist.justs())
            hist.logActivation(quxOcc1); d = d.expand(quxOcc1)
            hist.view().chunks.size shouldBe (3 + 1 + 1) // past + new added + future


            d.matches().count() shouldBe 1
            with(d.matches().first()) {
//                rule().tag() shouldBe "ruleMakeP"
                hist.logMatch(this)
            }
//            val pOcc2 = occurrence("p")
            val pOcc2 = justifiedOccurrence("p", hist.justs())
            hist.logActivation(pOcc2); d = d.expand(pOcc2)

            // only pOcc2 should be in the store
            val pStoredBeforeRoll = hist.storeView().occurrences(ConstraintSymbol.symbol("p", 0))
            pStoredBeforeRoll.count() shouldBe 1

            // finally, purely go the the end, applying the rest of the history to the store
            assertNotEquals(lastPos, hist.currentPos())
            hist.replay(lastPos)

            hist.view().chunks.size shouldBe 6
            hist.currentPos().chunk() shouldBeSame lastPos.chunk() // we inserted in the middle -- the last chunk should remain the same

            println(hist.view().toString())

            //somehow fails if 'p' is an occ without justifications! e.g. with equal null sets
            // e.g. see this: println(setOf(pOcc1, pOcc2))
            val pStoredAfterRoll = hist.storeView().occurrences(ConstraintSymbol.symbol("p", 0))
            pStoredAfterRoll.count() shouldBe 2
        }
    }
}