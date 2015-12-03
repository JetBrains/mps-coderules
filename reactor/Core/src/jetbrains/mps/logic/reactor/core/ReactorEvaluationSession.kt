package jetbrains.mps.logic.reactor.core

import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.predicate.ReactorSessionSolver
import jetbrains.mps.logic.reactor.program.EvaluationSession
import java.util.*

/**
 * @author Fedor Isakov
 */


private class ReactorEvaluationSession(val sessionSolver: SessionSolver) : EvaluationSession() {

    class Config : EvaluationSession.Config() {

        val myPredicateSymbols  = ArrayList<PredicateSymbol>()
        val myParameters = HashMap<String, Any?>()
        var myComputingTracer : ComputingTracer? = null

        override fun withPredicates(vararg predicateSymbols: PredicateSymbol): EvaluationSession.Config {
            myPredicateSymbols.addAll(Arrays.asList(* predicateSymbols))
            return this
        }

        override fun withTrace(computingTracer: ComputingTracer?): EvaluationSession.Config {
            myComputingTracer = computingTracer
            return this
        }

        override fun withParam(key: String, param: Any?): EvaluationSession.Config {
            myParameters.put(key, param)
            return this
        }

        override fun start(): EvaluationSession {
            var session = ourBackend.ourSession.get()
            if (session != null) throw IllegalStateException("session already active")

            val predicateSymbols = myPredicateSymbols.toArray<PredicateSymbol>(arrayOfNulls(myPredicateSymbols.size))
            val sessionSolver = ReactorSessionSolver()
            sessionSolver.init(myComputingTracer, * predicateSymbols)

            session = ReactorEvaluationSession(sessionSolver)
            ourBackend.ourSession.set(session)
            return session
        }
    }

    override fun sessionSolver(): SessionSolver? {
        throw UnsupportedOperationException()
    }

    override fun constraintSymbols(): MutableIterable<ConstraintSymbol>? {
        throw UnsupportedOperationException()
    }

    override fun constraintOccurrences(): MutableIterable<ConstraintOccurrence>? {
        throw UnsupportedOperationException()
    }

    override fun constraintOccurrences(symbol: ConstraintSymbol?): MutableIterable<ConstraintOccurrence>? {
        throw UnsupportedOperationException()
    }

    private class Backend : EvaluationSession.Backend {

        val ourSession = ThreadLocal<ReactorEvaluationSession>()

        override fun current(): EvaluationSession = ourSession.get() ?: throw IllegalStateException("no session")

        override fun createConfig(): EvaluationSession.Config = Config()
    }

    companion object {
        private val ourBackend = Backend()

        fun init() {
            setBackend(ourBackend)
        }

        fun deinit () {
            clearBackend(ourBackend)
        }
    }
}