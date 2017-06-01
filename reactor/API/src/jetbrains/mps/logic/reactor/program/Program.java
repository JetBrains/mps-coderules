package jetbrains.mps.logic.reactor.program;

/*Generated by MPS */

import jetbrains.mps.logic.reactor.logical.LogicalContext;

import java.util.List;

/**
 * A collection of handlers that constitute a constraint rules program. 
 */
public abstract class Program {

    public abstract String name();

    public abstract Iterable<ConstraintSymbol> constraintSymbols();

    public abstract List<Class<?>> constraintArgumentTypes(ConstraintSymbol constraintSymbol);

    public abstract Iterable<PredicateSymbol> predicateSymbols();

    public abstract Iterable<Handler> handlers();

    public abstract List<?> instantiateArguments(List<?> arguments, LogicalContext logicalContext);

}
