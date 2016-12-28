package jetbrains.mps.logic.reactor.program;

/**
 * @author Fedor Isakov
 */
public abstract class Handler {

    public abstract String name();

    public abstract Iterable<ConstraintSymbol> primarySymbols();

    public abstract Iterable<Rule> rules();

}
