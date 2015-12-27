package jetbrains.mps.logic.reactor.predicate

import jetbrains.mps.logic.reactor.evaluation.ComputingTracer
import jetbrains.mps.logic.reactor.evaluation.JavaPredicateSymbol
import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.program.PredicateSymbol

/**
 * @author Fedor Isakov
 */

class MemSessionSolver(val expressionSolver: Queryable, val equalsSolver: Queryable) : SessionSolver() {

    override fun solverClass(predicateSymbol: PredicateSymbol): Class<out Queryable> {
        return when (predicateSymbol) {
            is JavaPredicateSymbol -> expressionSolver.javaClass
            PredicateSymbol("equals", 2)   -> equalsSolver.javaClass
            else                           -> throw UnsupportedOperationException("not implemented")
        }
    }

    override fun registerSymbol(predicateSymbol: PredicateSymbol, computingTracer: ComputingTracer?) {
        when (predicateSymbol) {
            is JavaPredicateSymbol         -> registerSolver(predicateSymbol, expressionSolver)
            PredicateSymbol("equals", 2)   -> registerSolver(predicateSymbol, equalsSolver)
            else                           -> throw UnsupportedOperationException("not implemented")
        }
    }

}
