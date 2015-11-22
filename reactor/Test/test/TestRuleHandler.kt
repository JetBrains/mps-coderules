import jetbrains.mps.logic.reactor.handler.RuleHandler
import jetbrains.mps.logicl.reactor.core.RuleHandlerImpl
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import java.util.*

/**
 * @author Fedor Isakov
 */

class Simple {

    companion object {
        @BeforeClass @JvmStatic fun setup() {
            RuleHandlerImpl.init()
        }
    }

    @Test fun empty() {
        val handler = RuleHandler.with().newHandler()
        handler.setRules(ArrayList())
    }
}




