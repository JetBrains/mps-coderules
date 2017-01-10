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

class MemEvaluationSession private constructor (
    val program: Program,
    val sessionSolver: SessionSolver,
    val trace: EvaluationTrace) : EvaluationSession(), SessionObjects
{

    lateinit var controller: Controller

    private fun launch(main: Constraint, profiler: Profiler?, storeView: StoreView?) {
        this.controller = Controller(program, trace, profiler, storeView)
        controller.activate(main)
    }

    private class Config(val program: Program) : EvaluationSession.Config() {

        val predicateSymbols = ArrayList<PredicateSymbol>()
        val parameters = HashMap<String, Any?>()
        var evaluationTrace: EvaluationTrace = EvaluationTrace.NULL
        var storeView: StoreView? = null

        override fun withPredicates(vararg predicateSymbols: PredicateSymbol): EvaluationSession.Config {
            this.predicateSymbols.addAll(Arrays.asList(* predicateSymbols))
            return this
        }

        override fun withTrace(computingTracer: EvaluationTrace): EvaluationSession.Config {
            this.evaluationTrace = computingTracer
            return this
        }

        override fun withStoreView(storeView: StoreView): EvaluationSession.Config {
            this.storeView = storeView
            return this
        }

        override fun withParam(key: String, param: Any): EvaluationSession.Config {
            this.parameters.put(key, param)
            return this
        }

        override fun start(sessionSolver: SessionSolver): EvaluationSession {
            var session = ourBackend.ourSession.get()
            if (session != null) throw IllegalStateException("session already active")

            sessionSolver.init(evaluationTrace, * predicateSymbols.toArray<PredicateSymbol>(arrayOfNulls(predicateSymbols.size)))

            @Suppress("UNCHECKED_CAST")
            val durations =
                parameters.get("profiling.data") as MutableMap<String, String>?
            val profiler = durations?.let { Profiler() }

            session = MemEvaluationSession(program, sessionSolver, evaluationTrace)
            ourBackend.ourSession.set(session)
            try {
                session.launch(parameters["main"] as Constraint, profiler, storeView)
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

    override fun handler() = controller

    override fun sessionSolver(): SessionSolver = sessionSolver

    override fun storeView(): StoreView =
        controller.storeView()

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