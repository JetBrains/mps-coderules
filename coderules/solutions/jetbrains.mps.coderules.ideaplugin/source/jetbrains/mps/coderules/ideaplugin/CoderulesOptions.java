package jetbrains.mps.coderules.ideaplugin;

/*Generated by MPS */


public class CoderulesOptions {
  public static final String PREFIX = "mps.coderules.";

  public static void registerDefaultProviders(Config config) {
    config.registerProvider(Config.Level.USER, PREFIX, (String key) -> {

      return null;

    });
  }

}