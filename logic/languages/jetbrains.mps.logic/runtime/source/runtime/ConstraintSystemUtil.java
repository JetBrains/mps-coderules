package runtime;

public class ConstraintSystemUtil {

  /**
   * A workaround for http://youtrack.jetbrains.com/issue/MPS-20076
   * Since MPS doesn't support qualified instance creation expressions.
   */
  public static void queue(ConstraintSystem constraintSystem, final Runnable run) {
    constraintSystem.new QueuedBuiltInConstraint() {
       
       @Override
       public void run() {
         run.run();
       }

    };
  }

}
