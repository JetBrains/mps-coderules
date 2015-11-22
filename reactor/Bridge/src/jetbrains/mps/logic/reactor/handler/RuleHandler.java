package jetbrains.mps.logic.reactor.handler;

import jetbrains.mps.logic.reactor.constraint.ComputingTracer;
import jetbrains.mps.logic.reactor.rule.Rule;
import org.jetbrains.annotations.NotNull;

/**
 * @author Fedor Isakov
 */
public abstract class RuleHandler {

    public static Factory with() {
        return ourCompanion.createFactory();
    }

    public interface Factory {
        RuleHandler newHandler();
    }

    public abstract void setRules(@NotNull Iterable<? extends Rule> rules);

    /**
     * SPI
     */
    protected interface Companion {
        Factory createFactory();
    }

    protected static void setOurCompanion(@NotNull Companion companion) {
        if (ourCompanion != null) throw new IllegalStateException("ourCompanion has already been set");
        ourCompanion = companion;
    }

    private static Companion ourCompanion = null;
}

