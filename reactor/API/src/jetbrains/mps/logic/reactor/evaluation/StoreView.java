package jetbrains.mps.logic.reactor.evaluation;

import jetbrains.mps.logic.reactor.program.ConstraintSymbol;

/**
 * @author Fedor Isakov
 */
public interface StoreView {

    Iterable<ConstraintSymbol> constraintSymbols();

    Iterable<ConstraintOccurrence> allOccurrences();

    Iterable<ConstraintOccurrence> occurrences(ConstraintSymbol symbol);

}
