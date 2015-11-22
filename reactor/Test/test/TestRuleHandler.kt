import jetbrains.mps.logic.reactor.handler.RuleHandler
import jetbrains.mps.logic.reactor.rule.InvalidRuleException
import jetbrains.mps.logicl.reactor.core.RuleHandlerImpl
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import java.util.*
import kotlin.reflect.KClass
import kotlin.test.assertEquals
import kotlin.test.expect

/**
 * @author Fedor Isakov
 */

class Simple {

    companion object {
        @BeforeClass @JvmStatic fun setup() {
            RuleHandlerImpl.init()
        }
    }

    @Before fun beforeTest() {
        handler = RuleHandler.with().newHandler()
    }

    lateinit var handler:RuleHandler


    @Test fun empty() {
        handler.setRules(ArrayList())
    }

    @Test(expected = InvalidRuleException::class)
    fun emptyBody() {
        handler.setRules(arrayListOf(
            rule("foo",
                headKept(
                    constraint("bar")
                ))
        ))
    }

    @Test
    fun replace() {
        handler.setRules(arrayListOf(
            rule("foo",
                headReplaced(
                    constraint("bar")
                ),
                body(
                    constraint("baz")
                ))
        ))
        val sb = StringBuilder()

        handler.rules().forEach {
            sb.append(it.tag()).append(": ")
            it.all().joinTo(sb, ", ")
            sb.append(";")
        }

        assertEquals("foo", sb.toString())
    }
}




