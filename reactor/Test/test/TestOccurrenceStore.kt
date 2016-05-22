import jetbrains.mps.logic.reactor.core.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.util.emptyConsList
import jetbrains.mps.unification.test.MockTermsParser
import jetbrains.mps.unification.test.MockTermsParser.parse
import org.jetbrains.kotlin.js.parser.parse
import org.junit.Test
import org.junit.Assert.*

/**
 * @author Fedor Isakov
 */

class TestOccurrenceStore {

    object mockProxy : LogicalObserverProxy, LogicalObserver {

        private var observerList = emptyConsList<Pair<Logical<*>, LogicalObserver>>()

        override fun addObserver(logical: Logical<*>, obs: LogicalObserver) {
            if (!observerList.any { obs -> obs.first === logical }) {               // referential equality!
                logical.addObserver(this)
            }
            this.observerList = observerList.prepend(logical.to(obs))
        }

        override fun removeObserver(logical: Logical<*>, obs: LogicalObserver) = TODO()

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

    @Test
    fun testMergeLogicals() {
        val occstore = OccurrenceStore(mockProxy)

        val foo = logical<String>("foo")
        val bar = logical<String>("bar")

        val main = occurrence("main", foo)
        occstore.store(main)
        assertEquals(listOf(main), occstore.forLogical(foo))

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
    fun testValueIndex () {
        val occstore = OccurrenceStore(mockProxy)

        val value = "foobar"
        val main = occurrence("main", value)
        occstore.store(main)

        assertEquals(listOf(main), occstore.forValue(value))
    }

    @Test
    fun testTermIndex () {
        val occstore = OccurrenceStore(mockProxy)

        val foo = occurrence("foo", parse("a{b c}"))
        occstore.store(foo)

        // TODO: more tests
        assertEquals(listOf(foo), occstore.forTerm(parse("a{b c}")))
        assertEquals(listOf(foo), occstore.forTerm(parse("a{b Y}")))
        assertEquals(listOf(foo), occstore.forTerm(parse("Z")))
    }

}
