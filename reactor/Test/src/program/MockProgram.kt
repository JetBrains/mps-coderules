/**
 * @author Fedor Isakov
 */

import jetbrains.mps.logic.reactor.evaluation.Queryable
import jetbrains.mps.logic.reactor.evaluation.SessionSolver
import jetbrains.mps.logic.reactor.program.*
import program.MockConstraint
import java.util.*
import java.util.Collections.*

class ProgramBuilder(val registry: ConstraintRegistry)  {

    private val rules = ArrayList<Rule>()

    fun program(name: String): Program = MockProgram(name, ArrayList(rules), registry)

    fun addRule(rule: Rule) {
        registry.update(rule)
        rules.add(rule)
    }

    fun constraint(symbol: ConstraintSymbol, vararg args: Any): Constraint = MockConstraint(symbol, listOf(* args))

}

open class RuleBuilder(val tag: String) {
    val kept = ArrayList<Constraint>()
    val replaced = ArrayList<Constraint>()
    val guard = ArrayList<Predicate>()
    val body = ArrayList<ArrayList<AndItem>>()

    fun appendHeadKept(vararg cst: Constraint) {
        kept.addAll(cst)
    }
    fun appendHeadReplaced(vararg cst: Constraint) {
        replaced.addAll(cst)
    }
    fun appendGuard(vararg prd: Predicate) {
        guard.addAll(prd)
    }
    fun appendBody(alt: Boolean, vararg andItem: AndItem) {
        if (alt || body.isEmpty()) body.add(ArrayList<AndItem>())
        body.last().addAll(andItem)
    }
    fun toRule(): Rule = MockRule(tag, kept, replaced, guard, body)
}

class MockRule(
    val tag: String,
    val kept: Collection<Constraint>,
    val replaced: Collection<Constraint>,
    val guard: Collection<Predicate>,
    val body: Collection<Collection<AndItem>>) : Rule() {

    override fun kind(): Kind = TODO()

    override fun tag(): String = tag

    override fun headKept(): Iterable<Constraint> = kept

    override fun headReplaced(): Iterable<Constraint> = replaced

    override fun guard(): Iterable<Predicate> = guard

    override fun body(): Iterable<AndItem> = body.first()

    override fun bodyAlternation(): Iterable<Iterable<AndItem>> = body

    override fun all(): Iterable<AndItem> =
        if (body.isEmpty()) throw InvalidRuleException("no body")
        else (kept + replaced).map { it as AndItem } + guard + body.flatten()
}

class MockProgram(val name: String, val myRules : List<Rule>, val registry: ConstraintRegistry) : Program() {

    override fun name(): String = name

    override fun constraintSymbols(): Iterable<ConstraintSymbol> =
        registry.constraintSymbols()

    override fun constraintArgumentTypes(constraintSymbol: ConstraintSymbol): List<Class<*>> =
        registry.constraintArgTypes(constraintSymbol)

    override fun predicateSymbols(): Iterable<PredicateSymbol> =
        registry.predicateSymbols()

    override fun rules(): Iterable<Rule> = unmodifiableCollection(myRules)

    override fun handlers(): MutableIterable<Handler> = TODO()
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
            unmodifiableList(myConstraintArgTypes.getOrPut(symbol, { emptyList() }))

    fun predicateSymbols(): Iterable<PredicateSymbol> =
            unmodifiableSet(myPredicateSolvers.keys)

}

