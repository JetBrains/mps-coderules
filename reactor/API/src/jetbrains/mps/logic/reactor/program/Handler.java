package jetbrains.mps.logic.reactor.program;

/**
 * @author Fedor Isakov
 */
public abstract class Handler {

    public abstract String name();

    public abstract ConstraintSymbol primarySymbol();

    public abstract Iterable<Rule> rules();

}
