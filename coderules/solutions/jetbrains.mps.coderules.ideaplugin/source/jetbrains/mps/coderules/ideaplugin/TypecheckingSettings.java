package jetbrains.mps.coderules.ideaplugin;

/*Generated by MPS */

import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.application.ApplicationManager;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

@com.intellij.openapi.components.State(name = "TypecheckingSettings", storages = @Storage(value = "typecheckingSettings.xml")
)
public class TypecheckingSettings implements PersistentStateComponent<TypecheckingSettings.State> {

  public static class State {
    public boolean myIsEnabled;
    public boolean myIsWatching;
    public boolean myIsReporting;
    public boolean myIsTracing;
  }

  /**
   * Only available in case the plugin is not loaded, that is when the code is loaded from source module
   */
  private static TypecheckingSettings SINGLETON_INSTANCE = new TypecheckingSettings();

  private State myState = new State();

  public TypecheckingSettings() {
  }

  public static TypecheckingSettings getInstace() {
    TypecheckingSettings service = ApplicationManager.getApplication().getService(TypecheckingSettings.class);
    if (service == null) {
      // workaround for running from sources
      return SINGLETON_INSTANCE;
    }
    return service;
  }

  @Nullable
  @Override
  public State getState() {
    return myState;
  }

  @Override
  public void loadState(@NotNull State state) {
    this.myState = state;
  }

  public boolean isTypecheckingEnabled() {
    return myState.myIsEnabled;
  }

  public boolean setTypecheckingEnabled(boolean yes) {
    return myState.myIsEnabled = yes;
  }

  public boolean isWatchingEnabled() {
    return myState.myIsWatching;
  }

  public boolean setWatchingEnabled(boolean yes) {
    return myState.myIsWatching = yes;
  }

  public boolean isReportingEnabled() {
    return myState.myIsReporting;
  }

  public boolean setReportingEnabled(boolean yes) {
    return myState.myIsReporting = yes;
  }

  public boolean isTracingEnabled() {
    return myState.myIsTracing;
  }

  public boolean setTracingEnabled(boolean yes) {
    return myState.myIsTracing = yes;
  }
}
