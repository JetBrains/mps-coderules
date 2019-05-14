import gnu.trove.set.hash.TIntHashSet
import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.createOccurrenceMatcher
import jetbrains.mps.logic.reactor.core.internal.logical
import jetbrains.mps.logic.reactor.core.internal.MatchHistory
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.ConstraintSymbol.symbol
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


class TestMatchHistory {

    @Test
    fun testJustificationTracking() {
        val hist = MatchHistory.getMatchHistory()

        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("rule2",
                headKept(
                    constraint("foo")
                ),
                body(
                    constraint("bar")
                )),
            rule("rule3",
                headKept(
                    constraint("foo")
                ),
                body(
                    constraint("qux")
                )),
            rule("rule4",
                headReplaced(
                    constraint("bar"),
                    constraint("qux")
                ),
                body(
//                    constraint("blin")
                ))))
        {

            var d = Dispatcher(RuleIndex(handlers)).fringe()
            val mainOcc = justifiedOccurrence("main", setOf(0))
//            hist.logOccurence(mainOcc) // plays a role of the initial constraint, with no preceding RuleMatch
            d = d.expand(mainOcc)

            with(d.matches()) {
                count() shouldBe 1

                with(first()) {
                    hist.logMatch(this)
                    rule().tag() shouldBe "rule1"

                    hist.current().justifications shouldBe TIntHashSet(setOf(0))
                    val fooOcc = justifiedOccurrence("foo", hist.current().justifications)
                    hist.logOccurence(fooOcc)
                    d = d.expand(fooOcc)
                }
            }

            with(d.matches()) {
                count() shouldBe 2

                with(elementAt(0)) {
                    hist.logMatch(this)
                    rule().tag() shouldBe "rule2"

                    hist.current().justifications shouldBe TIntHashSet(setOf(0,1))
                    val barOcc = justifiedOccurrence("bar", hist.current().justifications)
                    hist.logOccurence(barOcc)
                    d = d.expand(barOcc)

                    with(d.matches()) {
                        count() shouldBe 0
                    }
                }

                with(elementAt(1)) {
                    hist.logMatch(this)
                    rule().tag() shouldBe "rule3"

                    hist.current().justifications shouldBe TIntHashSet(setOf(0,2))
                    val quxOcc = justifiedOccurrence("qux", hist.current().justifications)
                    hist.logOccurence(quxOcc)
                    d = d.expand(quxOcc)

                    with(d.matches()) {
                        count() shouldBe 1

                        with(first()) {
                            hist.logMatch(this)
                            rule().tag() shouldBe "rule4"
                        }
                        hist.current().justifications shouldBe TIntHashSet(setOf(0,1,2,3))
                    }
                }
            }
        }
    }


    @Test
    fun testResetThenRoll() {
        val hist = MatchHistory.getMatchHistory()

        with(programWithRules(
            rule("rule1",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("rule2",
                headKept(
                    constraint("foo")
                ),
                body(
                    constraint("bar")
                )),
            rule("rule3",
                headReplaced(
                    constraint("bar"),
                    constraint("foo")
                ),
                body(
                    constraint("qux")
                ))
            ))
        {

            var d = Dispatcher(RuleIndex(handlers)).fringe()
            val mainOcc = justifiedOccurrence("main", setOf(0))
//            hist.logOccurence(mainOcc) // plays a role of the initial constraint, with no preceding RuleMatch
            d = d.expand(mainOcc)

            with(d.matches().first()) {
                hist.logMatch(this)
            }
            val fooOcc = justifiedOccurrence("foo", hist.current().justifications)
            hist.logOccurence(fooOcc)
            d = d.expand(fooOcc)


            with(d.matches().first()) {
                hist.logMatch(this)
            }
            val barOcc = justifiedOccurrence("bar", hist.current().justifications)
            hist.logOccurence(barOcc)
            d = d.expand(barOcc)

            with(d.matches().first()) {
                hist.logMatch(this)
            }
            val quxOcc = justifiedOccurrence("qux", hist.current().justifications)
            hist.logOccurence(quxOcc)
            d = d.expand(quxOcc)

            // 'rollTo' to the saved pos after full 'resetStore' must restore the store

            val oldStore = hist.storeView().allOccurrences()
            oldStore.count() shouldBe 1
            val savedPos = hist.currentPos()

            hist.resetStore()
            hist.storeView().allOccurrences().count() shouldBe 0

            hist.rollTo(savedPos)
            hist.storeView().allOccurrences() shouldBe oldStore
            hist.currentPos().chunk() shouldBe savedPos.chunk()
            hist.currentPos().occsRetained() shouldBe savedPos.occsRetained()
        }
    }

    @Test
    fun testPushExecReset() {
        val hist = MatchHistory.getMatchHistory()

        with(programWithRules(
            rule("rule1",
                headKept(
                    princConstraint("main")
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

            var d = Dispatcher(RuleIndex(handlers)).fringe()
            val mainOcc = justifiedOccurrence("main", setOf(0))
            d = d.expand(mainOcc)

            with(d.matches().first()) {
                rule().tag() shouldBe "rule1"
                hist.logMatch(this)
            }
            val fooOcc = justifiedOccurrence("foo", hist.current().justifications)
            hist.logOccurence(fooOcc)
            d = d.expand(fooOcc)


            with(d.matches().first()) {
                rule().tag() shouldBe "rule2"
                hist.logMatch(this)
            }
            val barOcc = occurrence("bar")
            val bazzOcc = occurrence("bazz")
            val quxOcc = justifiedOccurrence("qux", hist.current().justifications)
            hist.logOccurence(barOcc)
            d = d.expand(barOcc)
            hist.logOccurence(bazzOcc)
            d = d.expand(bazzOcc)


            val curChunk = hist.current()
            with(d.matches().first()) {
                rule().tag() shouldBe "rule3"
                hist.logMatch(this)
            }
            // matched on rule with heads without justifications, should remain in the same chunk
            hist.current() shouldBeSame curChunk

            val bazzOcc2 = occurrence("bazz")
            hist.logOccurence(bazzOcc2)
            d = d.expand(bazzOcc2)

            val oldStore = hist.storeView().allOccurrences()
            val savedPos = hist.currentPos()
            hist.push()


            hist.logOccurence(quxOcc)
            d = d.expand(quxOcc)


            with(d.matches().first()) {
                rule().tag() shouldBe "rule4"
                hist.logMatch(this)
            }
            val lastOcc = occurrence("last")
            hist.logOccurence(lastOcc)
            d = d.expand(lastOcc)


            assertNotEquals(oldStore, hist.storeView().allOccurrences())
            hist.reset(savedPos)
            assertEquals(oldStore, hist.storeView().allOccurrences())

            hist.currentPos().chunk() shouldBe savedPos.chunk()
            hist.currentPos().occsRetained() shouldBe savedPos.occsRetained()
        }
    }
}