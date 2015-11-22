package jetbrains.mps.logic.reactor.handler;

/**
 * @author Fedor Isakov
 */
public class RuleHandler {

    public static Factory with() {
        return ourCompanion.createFactory();
    }

    public interface Factory {
        RuleHandler newHandler();
    }




    /**
     * SPI
     */
    protected interface Companion {
        Factory createFactory();
    }

    protected static Companion ourCompanion;
}

