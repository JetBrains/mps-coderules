/**
 * @author Fedor Isakov
 */

import jetbrains.mps.logic.reactor.evaluation.EvaluationFeedback
import jetbrains.mps.logic.reactor.evaluation.InvocationContext
import jetbrains.mps.logic.reactor.evaluation.RuleMatch
import jetbrains.mps.logic.reactor.evaluation.Supervisor
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import java.util.*
import java.util.Collections.*
import kotlin.collections.LinkedHashMap

class ProgramBuilder(val registry: MockConstraintRegistry)  {

    fun program(name: String, rules: List<Rule>): Program {
        for (r in rules) {
            registry.update(r)
        }
        return MockProgram(name, rules, registry)
    }
    
}

class HandlerBuilder(val name: String) {

    val rules = LinkedHashMap<Any, Rule>()

    fun appendRule(rule: Rule) {
        rules[rule.uniqueTag()] = rule
    }

    fun toHandler(): List<Rule> = rules.values.toList()
}

class RuleBuilder(val tag: String) {
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
    fun toRule(): Rule = MockRule(Rule.Tag(tag), kept, replaced, guard, body)
}

class MockRule(
    val tag: Rule.Tag,
    val kept: Collection<Constraint>,
    val replaced: Collection<Constraint>,
    val guard: Collection<Predicate>,
    val body: Collection<Collection<AndItem>>) : Rule() {

    override fun kind(): Kind = TODO()

    override fun uniqueTag() = tag

    override fun headKept(): Iterable<Constraint> = kept

    override fun headReplaced(): Iterable<Constraint> = replaced

    override fun guard(): Iterable<Predicate> = guard

    override fun bodyAlternation(): Iterable<Iterable<AndItem>> = body

    override fun all(): Iterable<AndItem> =
        if (body.isEmpty()) throw InvalidRuleException("no body")
        else (kept + replaced).map { it as AndItem } + guard + body.flatten()
}

class MockProgram(val name: String, val rules: List<Rule>, val registry: MockConstraintRegistry) : Program() {
    override fun name(): String = name

    override fun rules(): MutableIterable<Rule> = unmodifiableCollection(rules)
}


open class MockSupervisor : Supervisor {

    override fun instantiateArguments(arguments: List<*>, logicalContext: LogicalContext, invocationContext: InvocationContext): List<*> =
        arguments.map { a ->
            if (a is MetaLogical<*>) logicalContext.variable(a)
            else a
        }

    override fun handleFeedback(ruleMatch: RuleMatch, feedbackKey: Any, feedbackBasis: MutableList<Any>, feedback: EvaluationFeedback): Boolean = false
}

class MockConstraintRegistry() {

    private val myConstraintArgTypes = HashMap<ConstraintSymbol, List<Class<*>>>().withDefault { Collections.emptyList() }

    private val myPredicateSymbols = HashSet<PredicateSymbol>()

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
            is Predicate -> myPredicateSymbols.add(item.symbol())
            else          -> throw InvalidConstraintException("unknown item: ${item}")
        }
    }

    fun constraintSymbols(): Iterable<ConstraintSymbol> =
            unmodifiableSet(myConstraintArgTypes.keys)

    fun constraintArgTypes(symbol: ConstraintSymbol): List<Class<*>> =
            unmodifiableList(myConstraintArgTypes.getOrPut(symbol, { emptyList() }))

    fun predicateSymbols(): Iterable<PredicateSymbol> =
            unmodifiableSet(myPredicateSymbols)

}

