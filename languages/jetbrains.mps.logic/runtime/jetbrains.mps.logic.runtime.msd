<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.logic.runtime" uuid="a5478664-6b44-4c62-a9f7-434f8aa57eee" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}" type="java_source_stubs">
      <sourceRoot location="source" />
    </modelRoot>
  </models>
  <sourcePath>
    <source path="${module}/source" />
  </sourcePath>
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="true">b984ee52-f34d-4b6d-8812-866c1d3eae31(jetbrains.mps.jchr.runtime)</dependency>
    <dependency reexport="false">7526e0cf-1ce7-46f8-a555-9eca1e06c23b(jetbrains.mps.unification.tree)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>f2801650-65d5-424e-bb1b-463a8781b786(jetbrains.mps.baseLanguage.javadoc)</usedLanguage>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
  </usedDevKits>
</solution>

