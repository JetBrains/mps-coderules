/**
 * @author Fedor Isakov
 */

import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.MetaLogical
import jetbrains.mps.logic.reactor.program.*
import program.MockConstraint
import java.util.*
import java.util.Collections.*

class ProgramBuilder(val registry: MockConstraintRegistry)  {

    private val handlers = ArrayList<Handler>()

    fun addHandler(handler: Handler) {
        for (r in handler.rules()) {
            registry.update(r)
        }
        handlers.add(handler)
    }

    fun constraint(symbol: ConstraintSymbol, vararg args: Any): Constraint = MockConstraint(symbol, listOf(* args))

    fun program(name: String): Program = MockProgram(name, handlers, registry)

}

open class HandlerBuilder(val name: String, val primary: Iterable<ConstraintSymbol>) {
    val rules = ArrayList<Rule>()

    fun appendRule(rule: Rule) {
        rules.add(rule)
    }

    fun toHandler(): Handler = MockHandler(name, primary, rules)
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

class MockHandler(
    val name: String,
    val primary: Iterable<ConstraintSymbol>,
    val rules: List<Rule>) : Handler() {

    override fun name(): String = name

    override fun rules(): Iterable<Rule> = rules
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

    override fun bodyAlternation(): Iterable<Iterable<AndItem>> = body

    override fun all(): Iterable<AndItem> =
        if (body.isEmpty()) throw InvalidRuleException("no body")
        else (kept + replaced).map { it as AndItem } + guard + body.flatten()
}

class MockProgram(val name: String, val handlers: List<Handler>, val registry: MockConstraintRegistry) : Program() {

    override fun name(): String = name

    override fun constraintSymbols(): Iterable<ConstraintSymbol> =
        registry.constraintSymbols()

    override fun constraintArgumentTypes(constraintSymbol: ConstraintSymbol): List<Class<*>> =
        registry.constraintArgTypes(constraintSymbol)

    override fun predicateSymbols(): Iterable<PredicateSymbol> =
        registry.predicateSymbols()

    override fun instantiateArguments(arguments: List<*>, logicalContext: LogicalContext): List<*> =
        arguments.map { a ->
            if (a is MetaLogical<*>) logicalContext.variable(a)
            else a
        }

    override fun handlers(): Iterable<Handler> = unmodifiableCollection(handlers)
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

