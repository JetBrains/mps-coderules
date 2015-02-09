<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.logic.test" uuid="b189d6c6-9397-4d64-88af-1ac73760a4f5" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}" type="java_classes">
      <sourceRoot location="lib/mockito-core-2.0.3-beta.jar" />
    </modelRoot>
  </models>
  <stubModelEntries>
    <stubModelEntry path="${module}/lib/mockito-core-2.0.3-beta.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)</dependency>
    <dependency reexport="false">a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)</dependency>
    <dependency reexport="false">b984ee52-f34d-4b6d-8812-866c1d3eae31(jetbrains.mps.jchr.runtime)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</usedLanguage>
    <usedLanguage>f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)</usedLanguage>
    <usedLanguage>35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)</usedLanguage>
  </usedLanguages>
  <languageVersions>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" fqName="jetbrains.mps.baseLanguage" version="1" />
    <language id="ed6d7656-532c-4bc2-81d1-af945aeb8280" fqName="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" fqName="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" fqName="jetbrains.mps.lang.core" version="1" />
    <language id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" fqName="jetbrains.mps.lang.traceable" version="0" />
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" fqName="jetbrains.mps.logic" version="0" />
  </languageVersions>
</solution>

