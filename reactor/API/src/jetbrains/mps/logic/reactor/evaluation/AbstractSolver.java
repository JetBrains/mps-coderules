package jetbrains.mps.logic.reactor.evaluation;

import jetbrains.mps.logic.reactor.logical.LogicalContext;
import jetbrains.mps.logic.reactor.program.AndItem;
import jetbrains.mps.logic.reactor.program.Predicate;

import java.util.Collections;
import java.util.List;

/**
 * @author Fedor Isakov
 */
public abstract class AbstractSolver implements Instructible, Queryable {

    protected abstract List<?> invocationArguments(Predicate predicate, LogicalContext logicalContext);

    protected PredicateInvocation invocation(Predicate predicate, LogicalContext logicalContext) {
        return new Invocation(predicate, invocationArguments(predicate, logicalContext));
    }

    protected static class Invocation implements PredicateInvocation {

        public Invocation(Predicate predicate, List<?> invocationArguments) {
            this.predicate = predicate;
            this.invocationArguments = Collections.unmodifiableList(invocationArguments);
        }

        @Override
        public Predicate predicate() {
            return predicate;
        }

        @Override
        public List<?> arguments() {
            return invocationArguments;
        }

        private final Predicate predicate;

        private final List<?> invocationArguments;
    }

}
