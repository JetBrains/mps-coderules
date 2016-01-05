package jetbrains.mps.logic.reactor.core

/**
 * @author Fedor Isakov
 */

import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.program.*
import java.util.*
import java.util.Collections.*

class MemProgramBuilder(val sessionSolver: SessionSolver) : ProgramBuilder() {

    private val rules = ArrayList<Rule>()

    private val registry = ConstraintRegistry(sessionSolver)

    override fun program(name: String, sessionSolver: SessionSolver): Program = MemProgram(name, ArrayList(rules), sessionSolver, registry)

    override fun addRule(rule: Rule) {
        registry.update(rule)
        rules.add(rule)
    }

    override fun constraint(symbol: ConstraintSymbol, vararg args: Any?): Constraint = TODO()

    override fun predicate(symbol: PredicateSymbol, vararg args: Any?): Predicate = TODO()

}

class MemProgram(val name: String, val myRules : List<Rule>, val sessionSolver: SessionSolver, val registry: ConstraintRegistry) : Program() {

    override fun name(): String = name

    override fun constraintSymbols(): Iterable<ConstraintSymbol> =
        registry.constraintSymbols()

    override fun constraintArgumentTypes(constraintSymbol: ConstraintSymbol): List<Class<*>> =
        registry.constraintArgTypes(constraintSymbol)

    override fun predicateSymbols(): Iterable<PredicateSymbol> =
        registry.predicateSymbols()

    override fun sessionSolver(): SessionSolver = sessionSolver

    override fun rules(): Iterable<Rule> = unmodifiableCollection(myRules)
}


class ConstraintRegistry(val sessionSolver: SessionSolver) {

    private val myConstraintArgTypes = HashMap<ConstraintSymbol, List<Class<*>>>().withDefault { Collections.emptyList() }

    private val myPredicateSolvers = HashMap<PredicateSymbol, Class<out Queryable>>()

    fun update(rule: Rule) {
        for(item in rule.all()) {
            checkValid(item)
            introduce(item)
        }
    }

    fun checkValid(item: AndItem) {
        if (item.symbol().arity() != item.arguments().size) {
            throw InvalidConstraintException("arity mismatch: ${item.symbol()}")
        }
        for (arg in item.arguments()) {
            if (arg == null) {
                throw InvalidConstraintException("argument is null: ${item.symbol()}")
            }
        }
        when(item) {
            is Constraint -> {
                if (myConstraintArgTypes.containsKey(item.symbol())) {
                    if (!item.argumentTypes().equals(myConstraintArgTypes.get(item.symbol()))) {
                        throw InvalidConstraintException("argument types mismatch: ${item.symbol()}")
                    }
                }
            }
            is Predicate ->  {
                // nothing
            }
            else          -> throw InvalidConstraintException("unknown item: ${item}")
        }
    }

    fun introduce(item: AndItem) {
        when(item) {
            is Constraint -> myConstraintArgTypes.put(item.symbol(), item.argumentTypes())
            is Predicate -> myPredicateSolvers.put(item.symbol(), sessionSolver.solverClass(item.symbol()))
            else          -> throw InvalidConstraintException("unknown item: ${item}")
        }
    }

    fun constraintSymbols(): Iterable<ConstraintSymbol> =
            unmodifiableSet(myConstraintArgTypes.keys)

    fun constraintArgTypes(symbol: ConstraintSymbol): List<Class<*>> =
            unmodifiableList(myConstraintArgTypes.getOrImplicitDefault(symbol))

    fun predicateSymbols(): Iterable<PredicateSymbol> =
            unmodifiableSet(myPredicateSolvers.keys)

    fun solverClass(symbol: PredicateSymbol): Class<out Queryable> =
            myPredicateSolvers.getOrImplicitDefault(symbol)
}

