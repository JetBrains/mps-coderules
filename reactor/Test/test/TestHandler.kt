import jetbrains.mps.logic.reactor.core.Handler
import jetbrains.mps.logic.reactor.core.SessionObjects
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationFailureException
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.JavaPredicateSymbol
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import jetbrains.mps.logic.reactor.program.Program
import org.junit.*
import org.junit.Assert.*
import solver.EqualsSolver
import solver.MemSessionSolver

/**
 * @author Fedor Isakov
 */


class TestHandler {

    @Before fun beforeTest() {
    }

    @After fun afterTest() {
        MockSession.deinit()
    }

    private class MockSession(val solver: SessionSolver) : EvaluationSession(), SessionObjects {
        lateinit var handler: Handler
        override fun handler(): Handler = handler
        override fun sessionSolver(): SessionSolver = solver
        override fun constraintSymbols(): MutableIterable<ConstraintSymbol> = TODO()
        override fun constraintOccurrences(): MutableIterable<ConstraintOccurrence> = TODO()
        override fun constraintOccurrences(symbol: ConstraintSymbol?): MutableIterable<ConstraintOccurrence> = TODO()

        class MockBackend(val session: MockSession) : Backend {
            override fun current(): EvaluationSession = session
            override fun createConfig(program: Program): Config = TODO()
        }

        companion object {
            lateinit var ourBackend : MockBackend

            fun init(solver: SessionSolver) {
                ourBackend = MockBackend(MockSession(solver))
                setBackend(ourBackend)
            }

            fun deinit() {
                clearBackend(ourBackend)
            }
        }
    }

    private fun sessionSolver(expressionSolver: ExpressionSolver, equalsSolver: EqualsSolver): SessionSolver =
        MemSessionSolver(expressionSolver, equalsSolver).apply {
            init(PredicateSymbol("equals", 2), JavaPredicateSymbol.EXPRESSION0, JavaPredicateSymbol.EXPRESSION1, JavaPredicateSymbol.EXPRESSION2, JavaPredicateSymbol.EXPRESSION3) }

    private fun Builder.handler(vararg occurrences: ConstraintOccurrence): Handler {
        MockSession.init(sessionSolver(env.expressionSolver, env.equalsSolver))
        val handler = Handler(rules, occurrences = listOf(* occurrences))
        MockSession.ourBackend.session.handler = handler
        return handler
    }

    private fun <T : Any> eq(left: Logical<T>, right: Logical<T>) {
        EvaluationSession.current().sessionSolver().tell(PredicateSymbol("equals", 2), left, right)
    }

    private fun <T : Any> is_eq(left: Logical<T>, right: Logical<T>): Boolean {
        return EvaluationSession.current().sessionSolver().ask(PredicateSymbol("equals", 2), left, right)
    }

    @Test
    fun processSingle() {
        program(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                ))
        ).run {
            handler().apply { queue(occurrence("main")) }.let { rh ->
                assertEquals(
                    setOf(ConstraintSymbol("main", 0), ConstraintSymbol("foo", 0)),
                    rh.allOccurrences().map { it.constraint().symbol() }.toSet())
            }
        }
    }

    @Test
    fun processReplaced() {
        program(
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
            handler().apply { queue(occurrence("main")) }.let { rh ->
                assertEquals(
                    setOf(ConstraintSymbol("bar", 0), ConstraintSymbol("foo", 0)),
                    rh.allOccurrences().map { it.constraint().symbol() }.toSet())
            }
        }
    }

    @Test
    fun basicExpression() {
        var test : String = "not initialized"
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    statement { test = "value" }
                ))
        ).run {
            handler().queue(occurrence("main"))
            assertEquals("value", test)
        }
    }

    @Test
    fun paramExpression() {
        var test = logical<String>("X")
        //"not initialized"
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    statement ({ test.set("value") })
                ))
        ).run {
            handler().queue(occurrence("main"))
            assertEquals("value", test.get())
        }
    }

    @Test
    fun basicLogical() {
        var test : String? = "not initialized"
        val x = logical<String>("x")
        x.setValue("expected")
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    statement ({ test = x.get() } )
                ))
        ).run {
            handler().queue(occurrence("main"))
            assertEquals("expected", test)
        }
    }

    @Test
    fun logicalCopy() {
        var test : String? = "not initialized"
        val (x,y) = logical<String>("x", "y")
        x.setValue("expected")
        program(
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
                    statement ({ test = y.get() })
                ))
        ).run {
            handler().apply {
                queue(occurrence("main"))
                assertEquals(
                    setOf(ConstraintSymbol("main", 0), ConstraintSymbol("next", 0)),
                    allOccurrences().map { it.constraint().symbol() }.toSet())
                assertEquals("expected", test)
            }
        }
    }

    @Test
    fun basicGuard() {
        var test1 : String = "not initialized 1"
        var test2 : String = "not initialized 2"
        program(
            rule("main1",
                headKept(
                    constraint("main")
                ),
                guard(
                    expression { false }
                ),
                body(
                    statement {  test1 = "not expected" }
                )),
            rule("main2",
                headKept(
                    constraint("main")
                ),
                guard(
                    expression {  true }
                ),
                body(
                    statement { test2 = "expected" }
                ))
        ).run {
            handler().queue(occurrence("main"))
            assertEquals("not initialized 1", test1)
            assertEquals("expected", test2)
        }
    }

    @Test
    fun basicMetaLogical() {
        val (X, Y) = metaLogical<String>("X", "Y")
        program(
            rule("rule1",
                headReplaced(
                    constraint("foo", X)
                ),
                body(
                    equals(X, Y),
                    constraint("bar", Y)
                )
            )
        ).handler().run {
            val a = logical<String>("a")
            a.set("value")
            queue(occurrence("foo", a))
            assertEquals(1, allOccurrences().size)
            val co = allOccurrences().first()
            assertEquals(ConstraintSymbol("bar",1), co.constraint().symbol())
            assertEquals(1, co.arguments().size)
            val arg = co.arguments().first()
            assertNotEquals(a, arg)
            assertEquals(a.get(), (arg as Logical<String>).get())
        }
    }

    @Test
    fun occurrenceTerminated() {
        program(
            rule("first",
                headKept( constraint("foo") ),          body( constraint("expected1") )
            ),
            rule("second",
                headKept( constraint("foo") ),          body( constraint("bar") )
            ),
            rule("third",
                headKept( constraint("foo") ),          body( constraint("unexpected") )
            ),
            rule("fourth",
                headReplaced(   constraint("bar"),
                                constraint("foo") ),
                                                        body( constraint("expected2") )
            )
        ).handler().run {
            queue(occurrence("foo"))
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
        }
    }

    @Test
    fun occurrenceKeptActive() {
        program(
            rule("first",
                headKept( constraint("foo") ),          body( constraint("bar") )
            ),
            rule("second",
                headReplaced( constraint("foo") ),      body( constraint("expected1") )
            ),
            rule("third",
                headReplaced( constraint("foo") ),      body( constraint("unexpected") )
            ),
            rule("fourth",
                headKept( constraint("foo") ),
                headReplaced( constraint("bar") ),
                                                        body( constraint("expected2") )
            )
        ).handler().run {
            queue(occurrence("foo"))
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0)),
                allOccurrences().map { co -> co.constraint().symbol() }.toSet())
        }
    }

    @Test
    fun occurrenceReactivated() {
        val X = metaLogical<Int>("X")
        program(
            rule("zeroth",
                headKept( constraint("foo") ),          body( statement({ x -> x.set(999) }, X),
                                                              constraint("bar", X))
            ),
            rule("first",
                headKept( constraint("foo") ),
                                                        body( constraint("bar", X),
                                                              constraint("qux", X))
            ),
            rule("second",
                headReplaced( constraint("qux", X) ),
                                                        body( constraint("expected1"),
                                                              statement({ x -> x.set(123) }, X))
            ),
            rule("third",
                headReplaced( constraint("foo") ),
                                                        body( constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced( constraint("foo") ),
                headReplaced( constraint("bar", X) ),   guard(expression({ x -> x.getNullable() == 123 }, X)),
                                                        body( constraint("expected2") )
            ),
            rule("fifth",
                headReplaced( constraint("bar", X) ),   guard(expression({ x -> x.getNullable() == 999 }, X)),
                                                        body( constraint("expected3", X))
            )
        ).handler().run {
            queue(occurrence("foo"))
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
        program(
            rule("first",
                headKept( constraint("foo") ),
                                                        body( constraint("bar", X),
                                                              constraint("qux", Y),
                                                              statement({ x, y -> eq(x, y) }, X, Y))
            ),
            rule("second",
                headReplaced( constraint("qux", Y) ),
                                                        body( constraint("expected1"),
                                                              statement({ y -> y.set(123) }, Y))
            ),
            rule("third",
                headReplaced( constraint("foo") ),
                                                        body( constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced( constraint("foo") ),
                headReplaced( constraint("bar", X) ),   guard(expression({ x -> x.getNullable() == 123 }, X)),
                                                        body( constraint("expected2") )
            ),
            rule("fifth",
                headKept( constraint("bar", X) ),
                                                        body( constraint("expected3", X))
            )
        ).handler().run {
            queue(occurrence("foo"))
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
        program(
            rule("first",
                headKept( constraint("foo") ),
                                                        body( constraint("bar", X),
                                                              statement({ x, y -> eq(x, y) }, X, Y),
                                                              constraint("qux", Y))
            ),
            rule("second",
                headReplaced( constraint("qux", Y) ),
                                                        body( constraint("expected1"),
                                                              statement({ y -> y.set(123) }, Y))
            ),
            rule("third",
                headReplaced( constraint("foo") ),
                                                        body( constraint("unexpected"))
            ),
            rule("fourth",
                headReplaced( constraint("foo") ),
                headReplaced( constraint("bar", X) ),   guard(expression({ x -> x.getNullable() == 123 }, X)),
                                                        body( constraint("expected2") )
            ),
            rule("fifth",
                headKept( constraint("bar", X) ),
                                                        body( constraint("expected3", X))
            )
        ).handler().run {
            queue(occurrence("foo"))
            assertEquals(3, allOccurrences().count())
            assertEquals(setOf( ConstraintSymbol("expected1", 0),
                                ConstraintSymbol("expected2", 0),
                                ConstraintSymbol("expected3", 1)),
                         allOccurrences().map { co -> co.constraint().symbol() }.toSet())
            val ex3 = allOccurrences().filter { co -> co.constraint().symbol() == ConstraintSymbol("expected3", 1) }.first()
            assertEquals(123, (ex3.arguments().first() as Logical<Int>).value())
        }
    }


    @Test
    fun correctRulesOrder() {
        val X= metaLogical<Int>("X")

        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x -> x.set(1) }, X),
                                                                    constraint("bar"),
                                                                    constraint("foo", X) )
            ),
            rule("foo_if_zero",
                headReplaced( constraint("foo", X) ),       guard(  expression({ x -> x.get() == 0 }, X) ),
                                                            body(   constraint("foo_zero") )
            ),
            rule("foo_and_bar",
                headReplaced( constraint("foo", X) ),
                headKept( constraint("bar") ),
                                                            body(   constraint("foo_and_bar") )
            ),
            rule("foo_if_non_zero",
                headReplaced( constraint("foo", X) ),
                                                            guard(  expression({ x -> x.get() != 0 }, X) ),
                                                            body(   constraint("foo_non_zero") )
            )
        ).handler().run {
            queue(occurrence("main"))
            assertEquals(setOf(ConstraintSymbol("bar", 0), ConstraintSymbol("foo_and_bar", 0)), constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo_and_bar", 0)).count())
            assertEquals(1, occurrences(ConstraintSymbol("bar", 0)).count())
        }
    }

    @Test
    fun reactivateOnUnion() {
        val (X,Y) = metaLogical<Int>("X", "Y")
        val (C,D) = metaLogical<Int>("C", "D")
        var handler : Handler? = null
        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ c -> c.set(0) }, C),
                                                                    constraint("foo", X, C),
                                                                    constraint("foo", Y, C),
                                                                    statement({ x, y -> eq(x, y) }, X, Y) )
            ),
            rule("capture_foo",
                headKept( constraint("foo", X, C) ),
                                                            body(   statement({ c, d -> d.set(c.get() + 1) }, C, D),
                                                                    constraint("capture", D) )
            ),
            rule("capture_foo_foo",
                headKept( constraint("foo", X, C) ),
                headReplaced( constraint("foo", Y, C) ),    guard(  expression({x, y ->  is_eq(x, y) }, X, Y)),
                                                            body(   constraint("replaced") )
            )
        ).handler().run {
            handler = this
            queue(occurrence("main"))
            assertEquals(setOf( ConstraintSymbol("foo", 2),
                                ConstraintSymbol("capture", 1),
                                ConstraintSymbol("replaced", 0)),
                         constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo", 2)).count())
            assertEquals(2, occurrences(ConstraintSymbol("capture", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("replaced", 0)).count())
        }
    }

    @Test
    fun propagationHistory() {
        val (X,Y,Z) = metaLogical<Int>("X", "Y", "Z")
        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x, y -> eq(x, y) }, X, Y),  // rank(X) = 1
                                                                    constraint("foo", Y),
                                                                    constraint("bar", Z),
                                                                    // update Z's parent
                                                                    statement({ x, z -> eq(x, z) }, X, Z) )
            ),
            rule("foobar",
                headKept( constraint("foo", X) ),
                headKept( constraint("bar", Y) ),
                                                            body(   constraint("foobar") )
            )
        ).handler().run {
            queue(occurrence("main"))
            assertEquals(setOf( ConstraintSymbol("foo", 1),
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
        val (X,Y,Z) = metaLogical<Int>("X", "Y", "Z")
        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x, y -> eq(x, y) }, X, Y),  // rank(X) = 1
                                                                    statement({ x -> x.set(42) }, X),
                                                                    constraint("match", Z, X),
                                                                    constraint("trigger", Z)                )
            ),
            rule("trigger",
                headReplaced( constraint("trigger", X) ),
                                                            body(   constraint("foobar", X) )
            ),
            rule("nofoobar",
                headReplaced( constraint("foobar", X),
                              constraint("match", X, Y) ),
                                                            body(   constraint("expected"),
                                                                    constraint("blah"),
                                                                    statement({ x, z -> eq(x, z) }, X, Y) )
            ),
            rule("blah",
                headReplaced( constraint("blah") ),
                headReplaced( constraint("foobar", X) ),
                                                            body(   constraint("unexpected") )
            )
        ).handler().run {
            queue(occurrence("main"))
            assertEquals(setOf( ConstraintSymbol("blah", 0),
                                ConstraintSymbol("expected", 0)),
                         constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("blah", 0)).count())
            assertEquals(1, occurrences(ConstraintSymbol("expected", 0)).count())
        }
    }

    @Test
    fun reactivateOnUnionKeepValue() {
        val (X,Y,Z) = metaLogical<Int>("X", "Y", "Z")
        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x, y -> eq(x, y) }, X, Y),  // rank(X) = 1
                                                                    statement({ z -> z.set(42) }, Z),
                                                                    constraint("foo", Z),
                                                                    statement({ x, z -> eq(x, z) }, X, Z) )
            ),
            rule("capture_foo_free",
                headKept( constraint("foo", X) ),           guard(  expression({ x -> x.getNullable() == null }, X) ),
                                                            body(   constraint("free") )
            ),
            rule("capture_foo_assigned",
                headKept( constraint("foo", X) ),           guard(  expression({ x -> x.getNullable() != null }, X) ),
                                                            body(   constraint("assigned") )
            )
        ).handler().run {
            queue(occurrence("main"))
            assertEquals(setOf( ConstraintSymbol("foo", 1),
                                ConstraintSymbol("assigned", 0)),
                         constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol("foo", 1)).count())
            assertEquals(1, occurrences(ConstraintSymbol("assigned", 0)).count())
        }
    }

    @Test
    fun firstAlternative() {
        val (X, Y) = metaLogical<Int>("X", "Y")

        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x -> x.set(7) }, X),
                                                                    statement({ y -> y.set(7) }, Y),
                                                                    constraint("aux", X, Y) )
            ),
            rule("aux",
                headReplaced( constraint("aux", X, Y) ),    body(       equals(X, Y),
                                                                        constraint("expected") ),
                                                            altBody(    constraint("unexpected") )
            )
        ).handler().run {
            queue(occurrence("main"))
            assertEquals(setOf(ConstraintSymbol("expected", 0)), constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol.symbol("expected", 0)).count())
        }
    }

    @Test
    fun secondAlternative() {
        val (X, Y) = metaLogical<Int>("X", "Y")

        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x -> x.set(7) }, X),
                                                                    statement({ y -> y.set(13) }, Y),
                                                                    constraint("aux", X, Y) )
            ),
            rule("aux",
                headReplaced( constraint("aux", X, Y) ),    body(       equals(X, Y),
                                                                        constraint("unexpected") ),
                                                            altBody(    constraint("expected") )
            )
        ).handler().run {
            queue(occurrence("main"))
            assertEquals(setOf(ConstraintSymbol("expected", 0)), constraintSymbols())
            assertEquals(1, occurrences(ConstraintSymbol.symbol("expected", 0)).count())
        }
    }

    @Test(expected = EvaluationFailureException::class)
    fun lastAlternativeFail() {
        val (X, Y, Z) = metaLogical<Int>("X", "Y", "Z")

        program(
            rule("main",
                headReplaced( constraint("main") ),         body(   statement({ x -> x.set(7) }, X),
                                                                    statement({ y -> y.set(13) }, Y),
                                                                    statement({ z -> z.set(17) }, Z),
                                                                    constraint("aux", X, Y, Z) )
            ),
            rule("aux",
                headReplaced( constraint("aux", X, Y, Z) ), body(       equals(X, Y),
                                                                        constraint("unexpected1") ),
                                                            altBody(    equals(X, Z),
                                                                        constraint("unexpected2") )
            )
        ).handler().run {
            try {
                queue(occurrence("main"))
            }
            finally {
                assertEquals(emptySet<ConstraintSymbol>(), constraintSymbols())
            }
        }
    }


}

