import jetbrains.mps.logic.reactor.core.OccurrenceStore
import org.junit.Test
import org.junit.Assert.*

/**
 * @author Fedor Isakov
 */

class TestOccurrenceStore {


    @Test
    fun testMergeLogicals() {
        val occstore = OccurrenceStore()

        val foo = logical<String>("foo")
        val bar = logical<String>("bar")

        val main = occurrence("main", foo)
        occstore.store(main)
        assertEquals(sequenceOf(main), occstore.forLogical(foo))

        bar.union(foo)
        assertEquals(sequenceOf(main), occstore.forLogical(foo))
        assertEquals(sequenceOf(main), occstore.forLogical(bar))

        val bazz = logical<String>("bazz")
        val main2 = occurrence("main", bazz)
        occstore.store(main2)
        assertEquals(sequenceOf(main2), occstore.forLogical(bazz))

        bazz.union(bar)
        assertEquals(sequenceOf(main, main2), occstore.forLogical(bazz))
        assertEquals(occstore.forLogical(foo), occstore.forLogical(bazz))
        assertEquals(occstore.forLogical(bar), occstore.forLogical(bazz))

        occstore.discard(main)
        assertEquals(sequenceOf(main2), occstore.forLogical(foo))
        assertEquals(sequenceOf(main2), occstore.forLogical(bar))
        assertEquals(sequenceOf(main2), occstore.forLogical(bazz))
    }

    @Test
    fun testValueIndex () {
        val occstore = OccurrenceStore()

        val value = "foobar"
        val main = occurrence("main", value)
        occstore.store(main)

        assertEquals(sequenceOf(main), occstore.forValue(value))
    }


    fun <T> assertEquals(a: Sequence<T>, b: Sequence<T>) {
        assertEquals(a.toSet(), b.toSet())
    }

}
