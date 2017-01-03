package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList
import jetbrains.mps.logic.reactor.evaluation.*
import com.github.andrewoma.dexx.collection.List as PList
import com.github.andrewoma.dexx.collection.LinkedList as PLinkedList
import jetbrains.mps.logic.reactor.program.Constraint
import jetbrains.mps.logic.reactor.program.ConstraintSymbol
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import jetbrains.mps.logic.reactor.program.Program
import jetbrains.mps.logic.reactor.util.Profiler
import java.util.*

/**
 * @author Fedor Isakov
 */

interface SessionObjects {

    fun handler(): Controller

}

class MemEvaluationSession : EvaluationSession, SessionObjects {

    private class Config(val program: Program) : EvaluationSession.Config() {

        val myPredicateSymbols = ArrayList<PredicateSymbol>()
        val myParameters = HashMap<String, Any?>()
        var myEvaluationTrace: EvaluationTrace = EvaluationTrace.NULL

        override fun withPredicates(vararg predicateSymbols: PredicateSymbol): EvaluationSession.Config {
            myPredicateSymbols.addAll(Arrays.asList(* predicateSymbols))
            return this
        }

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            myEvaluationTrace = computingTracer
            return this
        }

        override fun withParam(key: String, param: Any): EvaluationSession.Config {
            myParameters.put(key, param)
            return this
        }

        override fun start(sessionSolver: SessionSolver): EvaluationSession {
            var session = ourBackend.ourSession.get()
            if (session != null) throw IllegalStateException("session already active")

            val predicateSymbols = myPredicateSymbols.toArray<PredicateSymbol>(arrayOfNulls(myPredicateSymbols.size))
            sessionSolver.init(myEvaluationTrace, * predicateSymbols)

            session = MemEvaluationSession(program, sessionSolver, myEvaluationTrace)
            ourBackend.ourSession.set(session)

            val durations = myParameters.get("profiling.data") as MutableMap<String, String>?
            val profiler = durations?.let { Profiler() }
            try {
                session.launch(myParameters["main"] as Constraint, profiler)
            }
            finally {
                try {
                    profiler?.run {
                        formattedData().entries.forEach { e -> durations?.put(e.key, e.value) }
                        clear()
                    }
                }
                catch (t: Throwable) {
                    // avoid nested failure
                }
                ourBackend.ourSession.set(null)
            }

            return session
        }
    }

    val program: Program
    val sessionSolver: SessionSolver
    val trace: EvaluationTrace

    lateinit var controller: Controller

    private constructor(program: Program, sessionSolver: SessionSolver, trace: EvaluationTrace): super() {
        this.program = program
        this.sessionSolver = sessionSolver
        this.trace = trace
    }

    fun launch(main: Constraint, profiler: Profiler?) {
        this.controller = Controller(program.handlers(), trace, profiler)
        controller.activate(main)
    }

    override fun handler() = controller

    override fun sessionSolver(): SessionSolver = sessionSolver

    override fun storeView(): StoreView =
        controller.storeView()

    override fun constraintSymbols(): Iterable<ConstraintSymbol> =
        storeView().constraintSymbols()

    override fun constraintOccurrences(): Iterable<ConstraintOccurrence> =
        storeView().allOccurrences()

    override fun constraintOccurrences(symbol: ConstraintSymbol): Iterable<ConstraintOccurrence> =
        storeView().occurrences(symbol)

    private class Backend : EvaluationSession.Backend {

        val ourSession = ThreadLocal<MemEvaluationSession>()

        override fun current(): EvaluationSession = ourSession.get() ?: throw IllegalStateException("no session")

        override fun createConfig(program: Program): EvaluationSession.Config = Config(program)
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