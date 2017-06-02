package jetbrains.mps.unification;

/**
 * Used by the unifier to wrap original terms in order to alter the unification behaviour.
 *
 * For example, one might want to represent a (term) variable as a constant in order to avoid unwanted matches.
 *
 * @author Fedor Isakov
 */
public interface TermWrapper {

    Term wrap(Term orig);

    Term unwrap(Term wrapper);

    TermWrapper ID = new TermWrapper() {

        @Override
        public Term wrap(Term orig) {
            return orig;
        }

        @Override
        public Term unwrap(Term wrapper) {
            return wrapper;
        }

    };

}
