package solver

import jetbrains.mps.logic.reactor.evaluation.EvaluationTrace
import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.evaluation.Solver
import jetbrains.mps.logic.reactor.program.JavaPredicateSymbol
import jetbrains.mps.logic.reactor.program.PredicateSymbol

/**
 * @author Fedor Isakov
 */

open class MockSessionSolver(val expressionSolver: Solver, val equalsSolver: Solver) : SessionSolver() {

    override fun solverClass(predicateSymbol: PredicateSymbol): Class<out Queryable> {
        return when (predicateSymbol) {
            is JavaPredicateSymbol -> expressionSolver.javaClass
            PredicateSymbol("equals", 2) -> equalsSolver.javaClass
            else                           -> throw UnsupportedOperationException("not implemented")
        }
    }

    override fun registerSymbol(predicateSymbol: PredicateSymbol, computingTracer: EvaluationTrace?) {
        when (predicateSymbol) {
            is JavaPredicateSymbol -> registerSolver(predicateSymbol, expressionSolver)
            PredicateSymbol("equals", 2) -> registerSolver(predicateSymbol, equalsSolver)
            else                           -> throw UnsupportedOperationException("not implemented")
        }
    }

    override fun queueIfBusy(runnable: Runnable): Boolean = false

    override fun fail(message: String) = throw IllegalStateException (message)
}
