<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.jchr.runtime" uuid="b984ee52-f34d-4b6d-8812-866c1d3eae31" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default" />
    <modelRoot contentPath="${module}" type="java_classes">
      <sourceRoot location="lib/KULeuven_JCHR.jar" />
    </modelRoot>
  </models>
  <stubModelEntries>
    <stubModelEntry path="${module}/lib/antlr-2.7.5.jar" />
    <stubModelEntry path="${module}/lib/KULeuven_JCHR.jar" />
    <stubModelEntry path="${module}/lib/KULeuven_JCHR.zip" />
    <stubModelEntry path="${module}/lib/args4j-2.0.5.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)</usedLanguage>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
  </usedDevKits>
</solution>

