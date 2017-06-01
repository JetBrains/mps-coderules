package jetbrains.mps.logic.reactor.program;

/**
 *  A handler is a container of rules.
 *
 *  If the {@code primarySymbols} is a non-empty collection, only constraints with these symbols are processed
 *  by this handler.
 */
public abstract class Handler {

    public abstract String name();

    public abstract Iterable<ConstraintSymbol> primarySymbols();

    public abstract Iterable<Rule> rules();

}
