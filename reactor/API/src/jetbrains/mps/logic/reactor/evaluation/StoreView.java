package jetbrains.mps.logic.reactor.evaluation;

import jetbrains.mps.logic.reactor.program.ConstraintSymbol;

/**
 * A read-only view on the constraints store.
 */
public interface StoreView {

    Iterable<ConstraintSymbol> constraintSymbols();

    Iterable<ConstraintOccurrence> allOccurrences();

    Iterable<ConstraintOccurrence> occurrences(ConstraintSymbol symbol);

}
