package jetbrains.mps.logic.reactor.logical;

/*Generated by MPS */

import jetbrains.mps.unification.Term;

/**
 * Not used in the API.
 * @deprecated
 */
public interface LogicalUnification {

  <TERM extends Term> TERM asRoot(TERM term);

  <TERM extends Term> SolverLogical<TERM> logical(TERM var);

  boolean isLogical(Term term);

}
