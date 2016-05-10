import jetbrains.mps.logic.reactor.util.Profiler
import jetbrains.mps.logic.reactor.util.profile
import org.junit.Test
import org.junit.Assert.*

/**
 * @author Fedor Isakov
 */


class TestProfiler {

    @Test
    fun testFooBar() {

        val profiler = Profiler()

        val foo = profiler.start("foo")

            Thread.sleep(10)

            val bar1 = profiler.start("bar")

                Thread.sleep(20)

            profiler.end(bar1)

            val bar2 = profiler.start("bar")

                Thread.sleep(20)

            profiler.end(bar2)

        profiler.end(foo)

        val durationsMap = profiler.rawProfilingData()

        assertEquals(1, durationsMap["foo"]!!.first / 10000000L)
        assertEquals(4, durationsMap["bar"]!!.first / 10000000L)
        assertEquals(1, durationsMap["foo"]!!.second)
        assertEquals(2, durationsMap["bar"]!!.second)

    }

    @Test
    fun testProfile() {
        Profiler().run {
            profile("foo", {
                Thread.sleep(10)
                profile("bar", {
                    Thread.sleep(20)
                })
                profile("bazz", {
                    Thread.sleep(30)
                })
            })

            val durationsMap = rawProfilingData()

            assertEquals(1, durationsMap["foo"]!!.first / 10000000L)
            assertEquals(2, durationsMap["bar"]!!.first / 10000000L)
            assertEquals(3, durationsMap["bazz"]!!.first / 10000000L)
        }
    }

}

