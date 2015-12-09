package jetbrains.mps.logic.reactor.predicate

import jetbrains.mps.logic.reactor.constraint.*

/**
 * @author Fedor Isakov
 */

class ReactorSessionSolver(val expressionSolver: Queryable) : SessionSolver() {

    constructor() : this(object: Queryable {
        override fun ask(predicateSymbol: PredicateSymbol?, vararg args: Any?): Boolean {
            throw UnsupportedOperationException()
        }

        override fun tell(symbol: Symbol?, vararg args: Any?) {
            throw UnsupportedOperationException()
        }
    })

    override fun solverClass(predicateSymbol: PredicateSymbol?): Class<out Queryable>? {
        throw UnsupportedOperationException()
    }

    override fun registerSymbol(predicateSymbol: PredicateSymbol, computingTracer: ComputingTracer?) {
        when (predicateSymbol) {
            is JavaPredicateSymbol  -> registerSolver(predicateSymbol, expressionSolver)
            else                    -> throw UnsupportedOperationException("not implemented")
        }
    }

}
