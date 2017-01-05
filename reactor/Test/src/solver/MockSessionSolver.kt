package solver

import jetbrains.mps.logic.reactor.evaluation.*
import jetbrains.mps.logic.reactor.program.JavaPredicateSymbol
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import jetbrains.mps.logic.reactor.program.Solver

/**
 * @author Fedor Isakov
 */

open class MockSessionSolver(val expressionSolver: AbstractSolver, val equalsSolver: AbstractSolver) : SessionSolver() {

    override fun registerSymbol(predicateSymbol: PredicateSymbol, computingTracer: EvaluationTrace?) {
        when (predicateSymbol) {
            is JavaPredicateSymbol -> registerSolver(predicateSymbol, expressionSolver)
            PredicateSymbol("equals", 2) -> registerSolver(predicateSymbol, equalsSolver)
            else                           -> throw UnsupportedOperationException("not implemented")
        }
    }

}
