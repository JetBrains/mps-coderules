package jetbrains.mps.logicl.reactor.core

/**
 * @author Fedor Isakov
 */

import jetbrains.mps.logic.reactor.handler.RuleHandler
import jetbrains.mps.logic.reactor.rule.Rule
import java.util.*

class FactoryImpl : RuleHandler.Factory {
    override fun newHandler(): RuleHandler = RuleHandlerImpl()
}

class RuleHandlerImpl : RuleHandler() {

    val myRules = ArrayList<Rule>()

    override fun setRules(rules: Iterable<Rule>) {
        for (rule in rules) {
            myRules.add(rule)
        }
    }

    companion object {
        fun init() {
            setOurCompanion (object : RuleHandler.Companion {
                override fun createFactory(): Factory = FactoryImpl()
            })
        }
    }
}

