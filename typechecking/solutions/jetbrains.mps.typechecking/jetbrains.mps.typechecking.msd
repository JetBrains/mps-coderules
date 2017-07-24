<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.typechecking" uuid="6998f568-f0e9-473b-b4a8-9efb6499fc8d" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}" type="java_classes">
      <sourceRoot location="lib/reactive-streams-1.0.0.final.jar" />
      <sourceRoot location="lib/rxjava-2.1.1.jar" />
      <sourceRoot location="lib/rxjava2-swing-0.2.1.jar" />
    </modelRoot>
  </models>
  <stubModelEntries>
    <stubModelEntry path="${module}/lib/reactive-streams-1.0.0.final.jar" />
    <stubModelEntry path="${module}/lib/rxjava-2.1.1.jar" />
    <stubModelEntry path="${module}/lib/rxjava2-swing-0.2.1.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">274c9cfa-1024-4444-904c-f2f1383a35da(jetbrains.mps.lang.typesystem2.helper)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.typesystem2.runtime)</dependency>
    <dependency reexport="true">a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)</dependency>
    <dependency reexport="false">bbf5c548-7111-4a53-a117-cdefc664cf34(jetbrains.mps.logic.reactor)</dependency>
    <dependency reexport="false">ff6372a2-2f45-4ec3-952b-02581666015f(jetbrains.mps.lang.typesystem2.template)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
    <dependency reexport="false">742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)</dependency>
    <dependency reexport="false">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="5" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="0" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="1" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="8" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="d7eb0a2a-bd50-4576-beae-e4a89db35f20(jetbrains.mps.lang.scopes.runtime)" version="0" />
    <module reference="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" version="0" />
    <module reference="274c9cfa-1024-4444-904c-f2f1383a35da(jetbrains.mps.lang.typesystem2.helper)" version="0" />
    <module reference="26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.typesystem2.runtime)" version="0" />
    <module reference="ff6372a2-2f45-4ec3-952b-02581666015f(jetbrains.mps.lang.typesystem2.template)" version="0" />
    <module reference="bbf5c548-7111-4a53-a117-cdefc664cf34(jetbrains.mps.logic.reactor)" version="0" />
    <module reference="a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)" version="0" />
    <module reference="6998f568-f0e9-473b-b4a8-9efb6499fc8d(jetbrains.mps.typechecking)" version="0" />
  </dependencyVersions>
</solution>

