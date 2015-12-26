import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.core.Handler
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.predicate.ReactorSessionSolver
import org.junit.Assert.*
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test

/**
 * @author Fedor Isakov
 */


class TestHandler {

    fun sessionSolver(exprSolver: Queryable, equalsSolver: Queryable) : SessionSolver =
        ReactorSessionSolver(exprSolver, equalsSolver).apply {
            init(PredicateSymbol("equals",2), JavaPredicateSymbol.EXPRESSION0, JavaPredicateSymbol.EXPRESSION1, JavaPredicateSymbol.EXPRESSION2, JavaPredicateSymbol.EXPRESSION3) }

    fun Program.handler(vararg occurrences: ConstraintOccurrence): Handler =
        Handler(sessionSolver(env.expressionSolver, env.equalsSolver), rules, listOf(* occurrences))

    companion object {
        @BeforeClass @JvmStatic fun setup() {

        }
    }

    @Before fun beforeTest() {
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
            handler().apply { process(occurrence("main")) }.let { rh ->
                assertEquals(
                    setOf(ConstraintSymbol("main", 0), ConstraintSymbol("foo", 0)),
                    rh.occurrences().map { it.constraint().symbol() }.toSet())
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
            handler().apply { process(occurrence("main")) }.let { rh ->
                assertEquals(
                    setOf(ConstraintSymbol("bar", 0), ConstraintSymbol("foo", 0)),
                    rh.occurrences().map { it.constraint().symbol() }.toSet())
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
            handler().process(occurrence("main"))
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
            handler().process(occurrence("main"))
            assertEquals("value", test.get())
        }
    }

    @Test
    fun basicLogical() {
        var test : String? = "not initialized"
        val x = logical<String>("x")
        x.value = "expected"
        program(
            rule("main",
                headKept(
                    constraint("main")
                ),
                body(
                    statement ({ test = x.get() } )
                ))
        ).run {
            handler().process(occurrence("main"))
            assertEquals("expected", test)
        }
    }

    @Test
    fun logicalCopy() {
        var test : String? = "not initialized"
        val (x,y) = logical<String>("x", "y")
        x.value = "expected"
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
            handler().apply { process(occurrence("main")) }.let { rh ->
                assertEquals(
                    setOf(ConstraintSymbol("main", 0), ConstraintSymbol("next", 0)),
                    rh.occurrences().map { it.constraint().symbol() }.toSet())
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
            handler().process(occurrence("main"))
            assertEquals("not initialized 1", test1)
            assertEquals("expected", test2)
        }
    }

    @Test
    fun basicLogicalPattern() {
        val (X, Y) = logicalPattern<String>("X", "Y")
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
            process(occurrence("foo", a))
            assertEquals(1, occurrences().size)
            val co = occurrences().first()
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
            process(occurrence("foo"))
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0)),
                occurrences().map { co -> co.constraint().symbol() }.toSet())
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
            process(occurrence("foo"))
            assertEquals(
                setOf(ConstraintSymbol("expected1", 0), ConstraintSymbol("expected2", 0)),
                occurrences().map { co -> co.constraint().symbol() }.toSet())
        }
    }



}

