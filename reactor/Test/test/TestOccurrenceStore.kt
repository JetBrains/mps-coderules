import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.program.ConstraintSymbol.symbol
import jetbrains.mps.logic.reactor.util.emptyConsList
import jetbrains.mps.unification.Term
import jetbrains.mps.unification.test.MockTermsParser.parse
import org.junit.Test
import org.junit.Assert.*
import org.junit.Before

/**
 * @author Fedor Isakov
 */

class TestOccurrenceStore {

    class MockProxy(val _store: () -> OccurrenceStore) : LogicalObserver, StoreHolder {

        private var observerList = emptyConsList<Pair<Logical<*>, LogicalObserver>>()

        override fun store(): OccurrenceStore = _store()

        override fun addObserver(logical: Logical<*>, obs: (StoreHolder) -> LogicalObserver)  {
            if (!observerList.any { obs -> obs.first === logical }) {               // referential equality!
                logical.addObserver(this)
            }
            this.observerList = observerList.prepend(logical.to(obs(this)))
        }

        override fun removeObserver(logical: Logical<*>, obs: (StoreHolder) -> LogicalObserver) = TODO()

        override fun valueUpdated(logical: Logical<*>) {
            for (obs in observerList) {
                if (obs.first === logical) {                                        // referential equality!
                    obs.second.valueUpdated(logical)
                }
            }
        }

        override fun parentUpdated(logical: Logical<*>) {
            for (obs in observerList) {
                if (obs.first === logical) {                                        // referential equality!
                    obs.second.parentUpdated(logical)
                }
            }
        }
    }

    lateinit var occstore: OccurrenceStore

    @Before
    fun setup() {
        occstore = OccurrenceStore { MockProxy {  occstore } }
    }

    @Test
    fun testMergeLogicals() {
        val foo = logical<String>("foo")
        val bar = logical<String>("bar")

        val main = occurrence("main", foo)
        occstore.store(main)
        assertEquals(listOf(main), occstore.forLogical(foo))
        assertEquals(listOf(main), occstore.forSymbol(symbol("main", 1)))

        bar.union(foo)
        assertEquals(listOf(main), occstore.forLogical(foo))
        assertEquals(listOf(main), occstore.forLogical(bar))

        val bazz = logical<String>("bazz")
        val main2 = occurrence("main", bazz)
        occstore.store(main2)
        assertEquals(listOf(main2), occstore.forLogical(bazz))

        bazz.union(bar)
        assertEquals(setOf(main, main2), occstore.forLogical(bazz).toSet())
        assertEquals(occstore.forLogical(foo), occstore.forLogical(bazz))
        assertEquals(occstore.forLogical(bar), occstore.forLogical(bazz))

        occstore.discard(main)
        assertEquals(listOf(main2), occstore.forLogical(foo))
        assertEquals(listOf(main2), occstore.forLogical(bar))
        assertEquals(listOf(main2), occstore.forLogical(bazz))
    }

    @Test
    fun testLateGroundLogical() {
        val foo = logical<Term>("foo")
        val bar = logical<Term>("bar")

        val cnst = occurrence("cnst", foo)
        occstore.store(cnst)
        assertEquals(listOf(cnst), occstore.forLogical(foo))
        assertEquals(listOf(cnst), occstore.forSymbol(symbol("cnst", 1)))

        foo.set(parse("a{b c d{e}}"))

        assertEquals(listOf(cnst), occstore.forLogical(foo))
        assertEquals(listOf(cnst), occstore.forTerm(parse("a{b c d{e}}")))

        foo.union(bar)
        assertEquals(listOf(cnst), occstore.forLogical(bar))
    }

    @Test
    fun testEarlyGroundLogical() {
        val foo = logical<Term>("foo")

        foo.set(parse("a{b c d{e}}"))

        val cnst = occurrence("cnst", foo)
        occstore.store(cnst)

        assertEquals(listOf(cnst), occstore.forLogical(foo))
        assertEquals(listOf(cnst), occstore.forSymbol(symbol("cnst", 1)))
        assertEquals(listOf(cnst), occstore.forTerm(parse("a{b c d{e}}")))
    }

    @Test
    fun testIndependentlyGroundLogical() {
        val foo = logical<Term>("foo")

        val cnst = occurrence("cnst", parse("a{b c d{e}}"))
        occstore.store(cnst)

        foo.set(parse("a{b c d{e}}"))

        assertEquals(listOf(cnst), occstore.forSymbol(symbol("cnst", 1)))
        assertEquals(listOf(cnst), occstore.forTerm(parse("a{b c d{e}}")))
        assertEquals(listOf(cnst), occstore.forLogical(foo))
    }

    @Test
    fun testValueIndex () {
        val value = "foobar"
        val main = occurrence("main", value)
        occstore.store(main)

        assertEquals(listOf(main), occstore.forValue(value))
    }

    @Test
    fun testTermIndex () {
        val foo = occurrence("foo", parse("a{b c}"))
        occstore.store(foo)

        // TODO: more tests
        assertEquals(listOf(foo), occstore.forTerm(parse("a{b c}")))
        assertEquals(listOf(foo), occstore.forTerm(parse("a{b Y}")))
        assertEquals(listOf(foo), occstore.forTerm(parse("Z")))
    }

}
