<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.unification" uuid="7526e0cf-1ce7-46f8-a555-9eca1e06c23b" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}" type="java_source_stubs">
      <sourceRoot location="imports/mps-unification/code/src" />
    </modelRoot>
  </models>
  <sourcePath>
    <source path="${module}/imports/mps-unification/code/src" />
  </sourcePath>
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)</usedLanguage>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
  </usedDevKits>
</solution>

