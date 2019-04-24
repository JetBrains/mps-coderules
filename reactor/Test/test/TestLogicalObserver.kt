import jetbrains.mps.logic.reactor.core.addObserver
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Test

/**
 * @author Fedor Isakov
 */


class TestLogicalObserver {

    @Test
    fun mergeObservers() {
        val foo = logical<String>(name = "foo")
        val bar = logical<String>(name = "bar")
        val bazz = logical<String>(name = "bazz")

        val obs = MockObserver()
        foo.addObserver(obs)
        bar.addObserver(obs)
        bazz.addObserver(obs)

        // bar -> foo
        foo.union(bar)
        assertEquals(setOf(parent(bar)), obs.getAndClearEvents())

        // bazz -> foo
        bazz.union(foo)
        assertEquals(setOf(parent(bazz)), obs.getAndClearEvents())

        assertSame(bazz.findRoot(), foo)
        foo.setValue("test")
        assertEquals(setOf(value(foo), value(bar), value(bazz)), obs.getAndClearEvents())
    }

}
