package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import com.github.andrewoma.dexx.collection.List as PList
import com.github.andrewoma.dexx.collection.LinkedList as PLinkedList
import jetbrains.mps.logic.reactor.evaluation.ComputingTracer
import jetbrains.mps.logic.reactor.evaluation.ConstraintOccurrence
import jetbrains.mps.logic.reactor.evaluation.EvaluationSession
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import jetbrains.mps.logic.reactor.program.Program
import java.util.*

/**
 * @author Fedor Isakov
 */


class MemEvaluationSession : EvaluationSession {

    private class Config(val program: MemProgram) : EvaluationSession.Config() {

        val myPredicateSymbols = ArrayList<PredicateSymbol>()
        val myParameters = HashMap<String, Any?>()
        var myComputingTracer: ComputingTracer = ComputingTracer.NULL

        override fun withPredicates(vararg predicateSymbols: PredicateSymbol): EvaluationSession.Config {
            myPredicateSymbols.addAll(Arrays.asList(* predicateSymbols))
            return this
        }

        override fun withTrace(computingTracer: ComputingTracer): EvaluationSession.Config {
            myComputingTracer = computingTracer
            return this
        }

        override fun withParam(key: String, param: Any): EvaluationSession.Config {
            myParameters.put(key, param)
            return this
        }

        override fun start(): EvaluationSession {
            var session = ourBackend.ourSession.get()
            if (session != null) throw IllegalStateException("session already active")

            val predicateSymbols = myPredicateSymbols.toArray<PredicateSymbol>(arrayOfNulls(myPredicateSymbols.size))
            val sessionSolver = program.sessionSolver()
            sessionSolver.init(myComputingTracer, * predicateSymbols)

            session = MemEvaluationSession(program)
            ourBackend.ourSession.set(session)

            try {
                session.launch(myParameters["main"] as ConstraintOccurrence)
            }
            finally {
                ourBackend.ourSession.set(null)
            }

            return session
        }
    }

    val program: MemProgram

    lateinit var handler: Handler

    private constructor(program: Program): super() {
        this.program = program as MemProgram
    }

    fun launch(main: ConstraintOccurrence) {
        this.handler = Handler(sessionSolver(), program.rules())
        handler.process(main)
        // FIXME: shutdown the session properly
        ourBackend.ourSession.set(null)
    }

    override fun sessionSolver(): SessionSolver = program.sessionSolver()

    override fun constraintSymbols(): Iterable<ConstraintSymbol> =
        handler.occurrences().map { co -> co.constraint().symbol() }.toSet()

    override fun constraintOccurrences(): Iterable<ConstraintOccurrence> =
        handler.occurrences()

    override fun constraintOccurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
        handler.occurrences().filter { co -> co.constraint().symbol() == symbol }

    private class Backend : EvaluationSession.Backend {

        val ourSession = ThreadLocal<MemEvaluationSession>()

        override fun current(): EvaluationSession = ourSession.get() ?: throw IllegalStateException("no session")

        override fun createConfig(program: Program): EvaluationSession.Config = Config(program as MemProgram)
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