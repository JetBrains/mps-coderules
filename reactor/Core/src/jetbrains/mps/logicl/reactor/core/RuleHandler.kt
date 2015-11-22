package jetbrains.mps.logicl.reactor.core

/**
 * @author Fedor Isakov
 */

import jetbrains.mps.logic.reactor.handler.RuleHandler

class FactoryImpl : RuleHandler.Factory {
    override fun newHandler(): RuleHandler = HandlerImpl()
}

class HandlerImpl : RuleHandler() {

    fun init() {
        ourCompanion = object : Companion {
            override fun createFactory(): Factory = FactoryImpl()
        }
    }



}