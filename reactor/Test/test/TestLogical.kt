import jetbrains.mps.logic.reactor.core.LogicalObserver
import jetbrains.mps.logic.reactor.core.MemLogical
import jetbrains.mps.logic.reactor.core.addObserver
import jetbrains.mps.logic.reactor.logical.Logical
import org.junit.Test
import org.junit.Assert.*
import java.util.*

/**
 * @author Fedor Isakov
 */

data class MockObserverEvent(val logical: Logical<*>, val event: String) {}

fun value(logical: Logical<*>) = MockObserverEvent(logical, "value")

fun parent(logical: Logical<*>) = MockObserverEvent(logical, "parent")

class MockObserver : LogicalObserver {

    val events = ArrayList<MockObserverEvent>()

    override fun valueUpdated(logical: Logical<*>) { events.add(value(logical))}

    override fun parentUpdated(logical: Logical<*>) { events.add(parent(logical))}

    fun getAndClearEvents(): Set<MockObserverEvent> {
        val tmp = ArrayList(events)
        events.clear()
        return tmp.toSet()
    }
}

class TestLogical {

    @Test
    fun mergeObservers() {
        val foo = MemLogical<String>(name = "foo")
        val bar = MemLogical<String>(name = "bar")
        val bazz = MemLogical<String>(name = "bazz")

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
