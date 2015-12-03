package jetbrains.mps.logic.reactor.predicate

import jetbrains.mps.logic.reactor.constraint.*

/**
 * @author Fedor Isakov
 */

class ReactorSessionSolver : SessionSolver() {

    override fun solverClass(predicateSymbol: PredicateSymbol?): Class<out Queryable>? {
        throw UnsupportedOperationException()
    }

    override fun registerSymbol(predicateSymbol: PredicateSymbol, computingTracer: ComputingTracer?) {
        when (predicateSymbol) {

        }

        throw UnsupportedOperationException()
    }

}
