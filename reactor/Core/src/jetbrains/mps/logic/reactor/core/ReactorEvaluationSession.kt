package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.List as PList
import com.github.andrewoma.dexx.collection.LinkedList as PLinkedList
import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.program.EvaluationSession
import jetbrains.mps.logic.reactor.program.PlanningSession
import jetbrains.mps.logic.reactor.rule.Rule
import java.util.*

/**
 * @author Fedor Isakov
 */


class ReactorEvaluationSession(val program: PlanningSession) : EvaluationSession() {

    class Config(val program: PlanningSession) : EvaluationSession.Config() {

        val myPredicateSymbols = ArrayList<PredicateSymbol>()
        val myParameters = HashMap<String, Any?>()
        var myComputingTracer: ComputingTracer? = null

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
            val sessionSolver = program.sessionSolver()
            sessionSolver.init(myComputingTracer, * predicateSymbols)

            session = ReactorEvaluationSession(program)
            ourBackend.ourSession.set(session)

            session.launch()

            return session
        }
    }

    fun launch() {



    }



    override fun sessionSolver(): SessionSolver = program.sessionSolver()

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

        override fun createConfig(program: PlanningSession): EvaluationSession.Config = Config(program)
    }

    companion object {
        private val ourBackend = Backend()

        fun init() {
            setBackend(ourBackend)
        }

        fun deinit() {
            clearBackend(ourBackend)
        }
    }
}