import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.core.internal.createController
import jetbrains.mps.logic.reactor.core.internal.logical
import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.Program
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.test.MockTerm.*
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import solver.askEquals
import solver.tellEquals


/**
 * @author Fedor Isakov
 */


class TestController {

    @Before
    fun beforeTest() {
    }

    @After
    fun afterTest() {
        MockSession.deinit()
    }

    private class MockSession(val program: Program, val supervisor: Supervisor) : EvaluationSession()
    {
        lateinit var controller: Controller

        override fun <T : Any?> parameter(key: ParameterKey<T>?): T = TODO()

        class MockBackend(val session: MockSession) : Backend<MockSession> {
            override fun current(): MockSession = session
            override fun createConfig(program: Program): Config = TODO()
        }

        companion object {
            lateinit var ourBackend: MockBackend

            fun init(program: Program, supervisor: Supervisor) {
                ourBackend = MockBackend(MockSession(program, supervisor))
                setBackend(ourBackend)
            }

            fun deinit() {
                clearBackend(ourBackend)
            }
        }
    }

    private fun Builder.controller(vararg occurrences: ConstraintOccurrence): Controller {
        val program = MockProgram("test", rulesLists, registry = MockConstraintRegistry())
        MockSession.init(program, MockSupervisor())
        val controller = createController(MockSupervisor(), RuleIndex(program.rules()))
        MockSession.ourBackend.session.controller = controller
        return controller
    }

    private fun Builder.controllerWithFeedback(feedbackHandler: (RuleMatch, EvaluationFeedback) -> Boolean,
                                               vararg occurrences: ConstraintOccurrence): Controller {
        val program = MockProgram("test", rulesLists, registry = MockConstraintRegistry())
        val supervisor = object : MockSupervisor() {
            override fun handleFeedback(ruleMatch: RuleMatch, feedbackKey: Any, feedback: EvaluationFeedback): Boolean =
                feedbackHandler(ruleMatch, feedback)
        }
        MockSession.init(program, supervisor)
        val controller = createController(supervisor, RuleIndex(program.rules()))
        MockSession.ourBackend.session.controller = controller
        return controller
    }

    private fun detailFeedback(msg: String): DetailedFeedback = object : DetailedFeedback(msg) {
        override fun toString(): String = "{" + msg + "}"
    }

    private class MockStoreView(val occurrences: List<ConstraintOccurrence>) : StoreView {
        val symbols = occurrences.map { it.constraint().symbol() }.toSet()

        override fun constraintSymbols(): Iterable<ConstraintSymbol> = symbols

        override fun allOccurrences(): Iterable<ConstraintOccurrence> = occurrences

        override fun occurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
            occurrences.filter { it.constraint().symbol() == symbol }
    }

    private fun <T : Any> PredicateInvocation.eq(left: T, right: T) = invocationContext().tellEquals(left, right)

    private fun <T : Any> PredicateInvocation.is_eq(left: T, right: T): Boolean = invocationContext().askEquals(left, right)

    @Test
    fun processSingle() {
        programWithRules(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                ))
        ).run {
            controller().evaluate(occurrence("main")).let { view ->
                assertEquals(
                    setOf(ConstraintSymbol("main", 0), ConstraintSymbol("foo", 0)),
                    view.allOccurrences().map { it.constraint().symbol() }.toSet())
            }
        }
    }

    @Test
    fun processReplaced() {
        programWithRules(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("main2",
                headKept(
                    constraint("foo")
                ),
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("bar")
                ))
        ).run {
            controller().evaluate(occurrence("main")).let { view ->
                assertEquals(
                    setOf(ConstraintSymbol("bar", 0), ConstraintSymbol("foo", 0)),
                    view.allOccurrences().map { it.constraint().symbol() }.toSet())
            }
        }
    }

    @Test
    fun basicExpression() {
        var test: String = "not initialized"
        programWithRules(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    statement { test = "value" }
                ))
        ).run {
            controller().evaluate(occurrence("main"))
            assertEquals("value", test)
        }
    }

    @Test
    fun paramExpression() {
        var test = logical<String>("X")
        //"not initialized"
        programWithRules(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    statement({ test.set("value") })
                ))
        ).run {
            controller().evaluate(occurrence("main"))
            assertEquals("value", test.get())
        }
    }

    @Test
    fun basicLogical() {
        var test: String? = "not initialized"
        val x = logical<String>("x")
        x.setValue("expected")
        programWithRules(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    statement({ test = x.get() })
                ))
        ).run {
            controller().evaluate(occurrence("main"))
            assertEquals("expected", test)
        }
    }

    @Test
    fun logicalCopy() {
        var test: String? = "not initialized"
        val (x, y) = logical<String>("x", "y")
        x.setValue("expected")
        programWithRules(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    equals(x, y),
                    constraint("next")
                )),
            rule("aux",
                headKept(
                    constraint("next")
                ),
                body(
                    statement({ test = y.get() })
                ))
        ).run {
            controller().evaluate(occurrence("main")).run {
                assertEquals(
                    setOf(ConstraintSymbol("main", 0), ConstraintSymbol("next", 0)),
                    allOccurrences().map { it.constraint().symbol() }.toSet())
                assertEquals("expected", test)
            }
        }
    }

    @Test
    fun basicGuard() {
        var test1: String = "not initialized 1"
        var test2: String = "not initialized 2"
        programWithRules(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                guard(
                    expression { false }
                ),
                body(
                    statement { test1 = "not expected" }
                )),
            rule("main2",
                headKept(
                    constraint("main")
                ),
                guard(
                    expression { true }
                ),
                body(
                    statement { test2 = "expected" }
                ))
        ).run {
            controller().evaluate(occurrence("main"))
            assertEquals("not initialized 1", test1)
            assertEquals("expected", test2)
        }
    }

    @Test
    fun basicMetaLogical() {
        val (X, Y) = metaLogical<String>("X", "Y")
        val a = logical<String>("a")
        programWithRules(
            rule("rule1",
                headReplaced(
                    constraint("foo", X)
                ),
                body(
                    equals(X, Y),
                    constraint("bar", Y)
                )
            )
        ).controller().apply {
            a.set("value")
        }.evaluate(occurrence("foo", a)).run {
            assertSame(1, allOccurrences().toList().size)
            val co = allOccurrences().first()
            assertEquals(ConstraintSymbol("bar", 1), co.constraint().symbol())
            assertEquals(1, co.arguments().size)
            val arg = co.arguments().first()
            assertNotEquals(a, arg)
            assertEquals(a.get(), (arg as Logical<String>).get())
        }
    }

    @Test
    fun occurrenceTerminated() {
        programWithRules(
            rule("first",
                headKept(constraint("foo")), body(constraint("expected1"))
            ),
            rule("second",
                headKept(constraint("foo")), body(constraint("bar"))
            ),
            rule("third",
                headKept(constraint("foo")), body(constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced(constraint("bar"),
                    constraint("foo")),
                body(constraint("expected2"))
            )
        ).controller().evaluate(occurrence("foo")).run {
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
        }
    }

    @Test
    fun occurrenceKeptActive() {
        programWithRules(
            rule("first",
                headKept(constraint("foo")), body(constraint("bar"))
            ),
            rule("second",
                headReplaced(constraint("foo")), body(constraint("expected1"))
            ),
            rule("third",
                headReplaced(constraint("foo")), body(constraint("unexpected"))
            ),
            rule("fourth",
                headKept(constraint("foo")),
                headReplaced(constraint("bar")),
                body(constraint("expected2"))
            )
        ).controller().evaluate(occurrence("foo")).run {
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
        }
    }

    @Test
    fun occurrenceReactivated() {
        val X = metaLogical<Int>("X")
        programWithRules(
            rule("zeroth",
                headKept(constraint("foo")),
                                                    body(statement({ x -> x.set(999) }, X),
                                                         constraint("bar", X))
            ),
            rule("first",
                headKept(constraint("foo")),
                                                    body(constraint("bar", X),
                                                        constraint("qux", X))
            ),
            rule("second",
                headReplaced(constraint("qux", X)),
                                                    body(constraint("expected1"),
                                                        statement({ x -> x.set(123) }, X))
            ),
            rule("third",
                headReplaced(constraint("foo")),
                                                    body(constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced(constraint("foo")),
                headReplaced(constraint("bar", X)),
                                                    guard(expression({ x -> x.getNullable() == 123 }, X)),
                                                    body(constraint("expected2"))
            ),
            rule("fifth",
                headReplaced(constraint("bar", X)),
                                                    guard(expression({ x -> x.getNullable() == 999 }, X)),
                                                    body(constraint("expected3", X))
            )
        ).controller().evaluate(occurrence("foo")).run {
            assertEquals(3, allOccurrences().count())
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0), ConstraintSymbol("expected3", 1)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
            val ex3 = allOccurrences().filter { co -> co.constraint().symbol() == ConstraintSymbol("expected3", 1) }.first()
            assertEquals(999, (ex3.arguments().first() as Logical<Int>).value())
        }
    }

    @Test
    fun occurrenceReactivatedAfterUnion() {
        val (X, Y) = metaLogical<Int>("X", "Y")
        programWithRules(
            rule("first",
                headKept(constraint("foo")),
                body(constraint("bar", X),
                    constraint("qux", Y),
                    statement({ x, y -> eq(x, y) }, X, Y))
            ),
            rule("second",
                headReplaced(constraint("qux", Y)),
                body(constraint("expected1"),
                    statement({ y -> y.set(123) }, Y))
            ),
            rule("third",
                headReplaced(constraint("foo")),
                body(constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced(constraint("foo")),
                headReplaced(constraint("bar", X)), guard(expression({ x -> x.getNullable() == 123 }, X)),
                body(constraint("expected2"))
            ),
            rule("fifth",
                headKept(constraint("bar", X)),
                body(constraint("expected3", X))
            )
        ).controller().evaluate(occurrence("foo")).run {
            assertEquals(3, allOccurrences().count())
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0), ConstraintSymbol("expected3", 1)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
            val ex3 = allOccurrences().filter { co -> co.constraint().symbol() == ConstraintSymbol("expected3", 1) }.first()
            assertEquals(123, (ex3.arguments().first() as Logical<Int>).value())
        }
    }

    @Test
    fun occurrenceReactivatedAfterUnionUnbound() {
        val (X, Y) = metaLogical<Int>("X", "Y")
        programWithRules(
            rule("first",
                headKept(constraint("foo")),
                body(constraint("bar", X),
                    statement({ x, y -> eq(x, y) }, X, Y),
                    constraint("qux", Y))
            ),
            rule("second",
                headReplaced(constraint("qux", Y)),
                body(constraint("expected1"),
                    statement({ y -> y.set(123) }, Y))
            ),
            rule("third",
                headReplaced(constraint("foo")),
                body(constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced(constraint("foo")),
                headReplaced(constraint("bar", X)), guard(expression({ x -> x.getNullable() == 123 }, X)),
                body(constraint("expected2"))
            ),
            rule("fifth",
                headKept(constraint("bar", X)),
                body(constraint("expected3", X))
            )
        ).controller().evaluate(occurrence("foo")).run {
            assertEquals(3, allOccurrences().count())
            assertEquals(setOf(ConstraintSymbol("expected1", 0),
                ConstraintSymbol("expected2", 0),
                ConstraintSymbol("expected3", 1)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
            val ex3 = allOccurrences().filter { co -> co.constraint().symbol() == ConstraintSymbol("expected3", 1) }.first()
            assertEquals(123, (ex3.arguments().first() as Logical<Int>).value())
        }
    }

    @Test
    fun occurrenceReactivatedAfterUnionUnboundIndirectly() {
        // same as previous test, but X and Y are unified through their common parent Z
        val (X, Y, Z) = metaLogical<Int>("X", "Y", "Z")
        programWithRules(
            rule("first",
                headKept(constraint("foo")),
                body(
                    statement({ z, x -> eq(z, x) }, Z, X),
                    constraint("bar", X),
                    statement({ y, z -> eq(y, z) }, Y, Z),
                    constraint("qux", Y))
            ),
            rule("second",
                headReplaced(constraint("qux", Y)),
                body(constraint("expected1"),
                    statement({ y -> y.set(123) }, Y))
            ),
            rule("third",
                headReplaced(constraint("foo")),
                body(constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced(constraint("foo")),
                headReplaced(constraint("bar", X)), guard(expression({ x -> x.getNullable() == 123 }, X)),
                body(constraint("expected2"))
            ),
            rule("fifth",
                headKept(constraint("bar", X)),
                body(constraint("expected3", X))
            )
        ).controller().evaluate(occurrence("foo")).run {
            assertEquals(3, allOccurrences().count())
            assertEquals(setOf(ConstraintSymbol("expected1", 0),
                ConstraintSymbol("expected2", 0),
                ConstraintSymbol("expected3", 1)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
            val ex3 = allOccurrences().filter { co -> co.constraint().symbol() == ConstraintSymbol("expected3", 1) }.first()
            assertEquals(123, (ex3.arguments().first() as Logical<Int>).findRoot().value())
        }
    }

    @Test
    fun testReactivateCorrectOccurrence() {
        val (X, Y, B) = metaLogical<Int>("X", "Y", "B")
        programWithRules(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("hasBound", X, 11),
                    constraint("hasBound", Y, 22),
                    constraint("bindX")
                )
            ),
            rule("hasBound",
                headReplaced(
                    constraint("hasBound", X, B)
                ),
                guard(
                    expression({ x -> x.isBound }, X)
                ),
                body(
                    constraint("convertsTo", X, B)
                )),
            rule("bindX",
                headReplaced(
                    constraint("bindX")
                ),
                headKept(
                    constraint("hasBound", X, B)
                ),
                guard(
                    expression({ b -> b.getNullable()?.equals(11) ?: false }, B)
                ),
                body(
                    statement({ x -> x.set(42) }, X)
                ))
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(2, allOccurrences().count())
            assertEquals(setOf(ConstraintSymbol("hasBound", 2), ConstraintSymbol("convertsTo", 2)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())

            val convertsTo = allOccurrences().filter { co -> co.constraint().symbol() == ConstraintSymbol("convertsTo", 2) }.first()
            assertEquals(42, (convertsTo.arguments().first() as Logical<Int>).value())
        }
    }

    @Test
    fun correctRulesOrder() {
        val X = metaLogical<Int>("X")

        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x -> x.set(1) }, X),
                constraint("bar"),
                constraint("foo", X))
            ),
            rule("foo_if_zero",
                headReplaced(constraint("foo", X)), guard(expression({ x -> x.get() == 0 }, X)),
                body(constraint("foo_zero"))
            ),
            rule("foo_and_bar",
                headReplaced(constraint("foo", X)),
                headKept(constraint("bar")),
                body(constraint("foo_and_bar"))
            ),
            rule("foo_if_non_zero",
                headReplaced(constraint("foo", X)),
                guard(expression({ x -> x.get() != 0 }, X)),
                body(constraint("foo_non_zero"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("bar", 0), ConstraintSymbol("foo_and_bar", 0)), constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo_and_bar", 0)).count())
            assertEquals(1, occurrences(ConstraintSymbol("bar", 0)).count())
        }
    }

    @Test
    fun inverseOccurrenceOrder() {
        val (X, Y, Z) = metaLogical<Int>("X", "Y", "Z")
        val W = metaLogical<Int>("W")

        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ w -> w.set(42) }, W),
                constraint("foo", W, "a{c}"),
                constraint("foo", W, "a{b}"),
                constraint("foo", W, "a{d}"))
            ),
            rule("expected",
                headReplaced(
                    constraint("foo", X, "a{d}"),
                    constraint("foo", Y, "a{b}"),
                    constraint("foo", Z, "a{c}")), body(constraint("done")))

        ).controller().evaluate(occurrence("main")).run {
            constraintSymbols() shouldBe setOf(sym0("done"))
            occurrences(sym0("done")).count() shouldBe 1
        }
    }

    @Test
    fun reactivateOnUnion() {
        val (X1, Y1, Z1) = metaLogical<Int>("X1", "Y1", "Z1")
        val (X2, Y2, Z2) = metaLogical<Int>("X2", "Y2", "Z2")
        val (X3, Y3, Z3) = metaLogical<Int>("X3", "Y3", "Z3")
        var count = 0
        programWithRules(
            rule("main",
                headReplaced(constraint("main")),
                body(
                    statement({ z -> z.set(0) }, Z1),
                    constraint("foo", X1, Z1),
                    constraint("foo", Y1, Z1),
                    statement({ x, y -> eq(x, y) }, X1, Y1))
            ),
            rule("capture_foo",
                headKept(constraint("foo", X2, Y2)),
                body(
                    statement({ z -> z.set(count++) }, Z2),
                    constraint("capture", Z2))
            ),
            rule("capture_foo_foo",
                headKept(constraint("foo", X3, Z3)),
                headReplaced(constraint("foo", Y3, Z3)),
                guard(
                    expression({ x, y -> is_eq(x, y) }, X3, Y3)),
                body(
                    constraint("replaced"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("foo", 2),
                ConstraintSymbol("capture", 1),
                ConstraintSymbol("replaced", 0)),
                constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo", 2)).count())
            assertEquals(2, occurrences(ConstraintSymbol("capture", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("replaced", 0)).count())
        }
    }

    @Test
    fun reactivateOnAssignment() {
        val (X, Y) = metaLogical<Int>("X", "Y")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")),
                body(
                    constraint("foo", X, Y),
                    statement({ x -> x.set(42) }, X))
            ),
            rule("foo.bar",
                headReplaced(constraint("foo", X, Y)),
                guard(expression({ x -> x.getNullable() != null }, X)),
                body(constraint("bar"))
            )
        ).controller().evaluate(occurrence("main")).run {
            constraintSymbols() shouldBe setOf(sym0("bar"))
        }
    }

    @Test
    fun propagationHistory() {
        val (X, Y, Z) = metaLogical<Int>("X", "Y", "Z")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x, y -> eq(x, y) }, X, Y),  // rank(X) = 1
                constraint("foo", Y),
                constraint("bar", Z),
                // update Z's parent
                statement({ x, z -> eq(x, z) }, X, Z))
            ),
            rule("foobar",
                headKept(constraint("foo", X)),
                headKept(constraint("bar", Y)),
                body(constraint("foobar"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("foo", 1),
                ConstraintSymbol("bar", 1),
                ConstraintSymbol("foobar", 0)),
                constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("bar", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("foobar", 0)).count())
        }
    }

    @Test
    fun propagationHistoryLogical() {
        val X = metaLogical<Int>("X")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")),
                body(
                    constraint("foo", X),
                    statement({ x -> eq(x, "doh") }, X)
                )
            ),
            rule("foobar",
                headKept(constraint("foo", X)),
                guard(expression({ x ->
                    x.isBound }, X)),
                body(constraint("foobar"))
            )
        ).controller().evaluate(occurrence("main")).run {
            constraintSymbols() shouldBe setOf(sym1("foo"), sym0("foobar"))
            assertEquals(1, occurrences(ConstraintSymbol("foo", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("foobar", 0)).count())
        }
    }

    @Test
    fun propagationHistoryLogical2() {
        val (X, Y) = metaLogical<Int>("X", "Y")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(constraint("foo", X),
                constraint("bar", Y),
                statement({ x -> eq(x, "doh") }, X)
            )
            ),
            rule("foobar",
                headKept(constraint("foo", X),
                    constraint("bar", Y)
                ),
                guard(expression({ x -> x.isBound }, X)),
                body(constraint("foobar"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("foo", 1),
                ConstraintSymbol("bar", 1),
                ConstraintSymbol("foobar", 0)),
                constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("bar", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("foobar", 0)).count())
        }
    }

    @Test
    fun removeObserver() {
        val (X1, Y1, Z1) = metaLogical<Int>("X1", "Y1", "Z1")
        val X2 = metaLogical<Int>("X2")
        val (X3, Y3) = metaLogical<Int>("X3", "Y3")
        val X4 = metaLogical<Int>("X4")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x, y -> eq(x, y) }, X1, Y1),  // rank(X) = 1
                statement({ x -> x.set(42) }, X1),
                constraint("match", Z1, X1),
                constraint("trigger", Z1))
            ),
            rule("trigger",
                headReplaced(constraint("trigger", X2)),
                body(constraint("foobar", X2))
            ),
            rule("nofoobar",
                headReplaced(constraint("foobar", X3),
                    constraint("match", X3, Y3)),
                body(constraint("expected"),
                    constraint("blah"),
                    statement({ x, z -> eq(x, z) }, X3, Y3))
            ),
            rule("blah",
                headReplaced(constraint("blah")),
                headReplaced(constraint("foobar", X4)),
                body(constraint("unexpected"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("blah", 0),
                ConstraintSymbol("expected", 0)),
                constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("blah", 0)).count())
            assertEquals(1, occurrences(ConstraintSymbol("expected", 0)).count())
        }
    }

    @Test
    fun reactivateOnUnionKeepValue() {
        val (X, Y, Z) = metaLogical<Int>("X", "Y", "Z")
        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x, y -> eq(x, y) }, X, Y),  // rank(X) = 1
                statement({ z -> z.set(42) }, Z),
                constraint("foo", Z),
                statement({ x, z -> eq(x, z) }, X, Z))
            ),
            rule("capture_foo_free",
                headKept(constraint("foo", X)), guard(expression({ x -> x.getNullable() == null }, X)),
                body(constraint("free"))
            ),
            rule("capture_foo_assigned",
                headKept(constraint("foo", X)), guard(expression({ x -> x.getNullable() != null }, X)),
                body(constraint("assigned"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("foo", 1),
                ConstraintSymbol("assigned", 0)),
                constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("assigned", 0)).count())
        }
    }

    @Test
    fun firstAlternative() {
        val (X, Y) = metaLogical<Int>("X", "Y")

        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x -> x.set(7) }, X),
                statement({ y -> y.set(7) }, Y),
                constraint("aux", X, Y))
            ),
            rule("aux",
                headReplaced(constraint("aux", X, Y)), body(equals(X, Y),
                constraint("expected")),
                altBody(constraint("unexpected"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("expected", 0)), constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol.symbol("expected", 0)).count())
        }
    }

    @Test
    fun secondAlternative() {
        val (X, Y) = metaLogical<Int>("X", "Y")

        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x -> x.set(7) }, X),
                statement({ y -> y.set(13) }, Y),
                constraint("aux", X, Y))
            ),
            rule("aux",
                headReplaced(constraint("aux", X, Y)), body(equals(X, Y),
                constraint("unexpected")),
                altBody(constraint("expected"))
            )
        ).controller().evaluate(occurrence("main")).run {
            assertEquals(setOf(ConstraintSymbol("expected", 0)), constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol.symbol("expected", 0)).count())
        }
    }

    @Test(expected = EvaluationFailureException::class)
    fun lastAlternativeFail() {
        val (X, Y, Z) = metaLogical<Int>("X", "Y", "Z")

        programWithRules(
            rule("main",
                headReplaced(constraint("main")), body(statement({ x -> x.set(7) }, X),
                statement({ y -> y.set(13) }, Y),
                statement({ z -> z.set(17) }, Z),
                constraint("aux", X, Y, Z))
            ),
            rule("aux",
                headReplaced(constraint("aux", X, Y, Z)), body(equals(X, Y),
                constraint("unexpected1")),
                altBody(equals(X, Z),
                    constraint("unexpected2"))
            )
        ).controller().run {
            try {
                evaluate(occurrence("main"))
            } finally {
                assertEquals(emptySet<ConstraintSymbol>(), storeView().constraintSymbols())
            }
        }
    }

    @Test
    fun matchHeadWithTerm() {
        val (X, Y, Z) = metaLogical<Term>("X", "Y", "Z")
        val xLogical = X.logical()
        val yLogical = Y.logical()
        val zLogical = Z.logical()

        programWithRules(
            rule("main",
                headReplaced(constraint("main")),
                body(
                    constraint("foo", term("bar", logicalVar(zLogical))),
                    constraint("foo", term("bar", logicalVar(xLogical))),
                    constraint("trigger", xLogical)
                )
            ),
            rule("rule1",
                headReplaced(
                    constraint("trigger", Y),
                    constraint("foo", term("bar", metaVar(X)))
                ),
                guard(
                    expression({ x, y -> x.findRoot() == y.findRoot() }, X, Y)
                ),
                body(
                    constraint("triggered1", X, Y)
                )
            ),
            rule("rule2",
                headReplaced(
                    constraint("trigger", Y),
                    constraint("foo", X)
                ),
                guard(
                    expression({ x, y -> !y.isBound && x.findRoot() == y.findRoot() }, X, Y)
                ),
                body(
                    constraint("triggered2", X, Y)
                )
            )
        ).controller().run {
            evaluate(occurrence("main")).run {
                val foo = ConstraintSymbol("foo", 1)
                val t1 = ConstraintSymbol("triggered1", 2)
                constraintSymbols() shouldBe setOf(t1, foo)
                occurrences(t1).count() shouldBe 1
                occurrences(t1).first().arguments().first() shouldBe xLogical
                occurrences(foo).count() shouldBe 1
                occurrences(foo).first().arguments().first() shouldBe term("bar", logicalVar(zLogical))
            }
        }
    }

    @Test(expected = EvaluationFailureException::class)
    fun failureHandler() {
        val failures = ArrayList<Pair<EvaluationFailure, Any>>()
        val failureHandler =  { ruleMatch: RuleMatch, feedback: EvaluationFeedback ->
                if (feedback is EvaluationFailure) {
                    failures.add(feedback to ruleMatch.rule().uniqueTag())
                }
                false
            }

        programWithRules(
            rule("main",
                headReplaced(constraint("main")),
                body(
                    constraint("foo")
                )
            ),
            rule("rule1",
                headReplaced(constraint("foo")),
                body(
                    constraint("yes"),
                    constraint("bar"),
                    constraint("no")
                )
            ),
            rule("rule2",
                headReplaced(constraint("bar")),
                body(
                    statement { throw EvaluationFailureException("unhandled") }
                )
            )
        ).controllerWithFeedback(failureHandler).run {
            try {
                evaluate(occurrence("main"))

            } finally {
                failures.map { (f, t) -> "${f.getCause()!!.message}@${t}" }.toList() shouldBe
                    listOf("unhandled@rule2", "unhandled@rule1", "unhandled@main")
            }
        }
    }

    @Test
    fun failureHandlerRecover() {
        val failures = ArrayList<Pair<EvaluationFailure, Any>>()
        val failureHandler = { ruleMatch: RuleMatch, feedback: EvaluationFeedback ->
                if (feedback is EvaluationFailure) {
                    val utag = ruleMatch.rule().uniqueTag()
                    failures.add(feedback to utag)
                    (utag.toString().startsWith("recoverable"))
                } else false
            }

        programWithRules(
            rule("main",
                headReplaced(constraint("main")),
                body(
                    constraint("foo")
                )
            ),
            rule("rule1",
                headReplaced(constraint("foo")),
                body(
                    statement {
                        // this failure does not propagate because of the alt body branch
                        throw EvaluationFailureException("unhandled")
                    }
                ),
                altBody(
                    constraint("recovered", 1),
                    constraint("bar"),
                    constraint("recovered", 2)
                )
            ),
            rule("recoverable",
                headReplaced(constraint("bar")),
                body(
                    constraint("bazz")
                )
            ),
            rule("rule3",
                headReplaced(constraint("bazz")),
                body(
                    statement { throw EvaluationFailureException("handled") }
                )
            )
        ).controllerWithFeedback(failureHandler).run {
            evaluate(occurrence("main")).run {
                val recovered = ConstraintSymbol("recovered", 1)
                constraintSymbols() shouldBe setOf(recovered)
                occurrences(recovered).map { it.arguments()[0] }.toSet() shouldBe setOf(1, 2)
            }
        }
        failures.map { (f, t) -> "${f.getCause()!!.message}@$t" }.toList() shouldBe
            listOf("handled@rule3", "handled@recoverable")
    }

    @Test
    fun detailsFeedbackHandler() {
        val feedbacks = arrayListOf<Pair<EvaluationFeedback, Any>>()
        val feedbackHandler = { ruleMatch: RuleMatch, feedback: EvaluationFeedback ->
                feedbacks.add(feedback to ruleMatch.rule().uniqueTag())
                feedback.message.startsWith("catchme")
            }

        programWithRules(
            rule("main",
                headReplaced(constraint("main")),
                body(
                    constraint("foo")
                )
            ),
            rule("rule1",
                headReplaced(constraint("foo")),
                body(
                    statement { invocationContext().report(detailFeedback("catchme")) },
                    constraint("bar")

                )
            ),
            rule("rule2",
                headReplaced(constraint("bar")),
                body(
                    statement { invocationContext().report(detailFeedback("propagateme")) }
                )
            )
        ).controllerWithFeedback(feedbackHandler).run {
            evaluate(occurrence("main"))

        }

        feedbacks.map { (f, t) -> "${f.message}@$t" }.toList() shouldBe
            listOf("catchme@rule1", "propagateme@rule2", "propagateme@rule1", "propagateme@main")
    }
}

