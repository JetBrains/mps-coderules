<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.coderules.typechecking.ui" uuid="35e2a720-13d8-4eda-88d3-ff9d78d5a3ae" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
    <dependency reexport="false">742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)</dependency>
    <dependency reexport="false">26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.coderules.runtime)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">5b1f863d-65a0-41a6-a801-33896be24202(jetbrains.mps.ide.editor)</dependency>
    <dependency reexport="true">1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)</dependency>
    <dependency reexport="true">bfbdd672-7ff5-403f-af4f-16da5226f34c(jetbrains.mps.findUsages.runtime)</dependency>
    <dependency reexport="true">6998f568-f0e9-473b-b4a8-9efb6499fc8d(jetbrains.mps.coderules.typechecking)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
    <dependency reexport="false">f97d84b2-8bad-4fdd-8ede-da17b3eacf4c(jetbrains.mps.coderules)</dependency>
    <dependency reexport="false">f486b8aa-5b2d-4ec0-8ef5-8f45d773fb84(jetbrains.mps.lang.typechecking.runtime)</dependency>
    <dependency reexport="false">4d5d9aa1-7b71-4888-9100-1b793e5328a6(jetbrains.mps.coderules.ui)</dependency>
    <dependency reexport="false">ff6372a2-2f45-4ec3-952b-02581666015f(jetbrains.mps.lang.coderules.template)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="9" />
    <language slang="l:774bf8a0-62e5-41e1-af63-f4812e60e48b:jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:fe9d76d7-5809-45c9-ae28-a40915b4d6ff:jetbrains.mps.lang.checkedName" version="1" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:28f9e497-3b42-4291-aeba-0a1039153ab1:jetbrains.mps.lang.plugin" version="4" />
    <language slang="l:ef7bf5ac-d06c-4342-b11d-e42104eb9343:jetbrains.mps.lang.plugin.standalone" version="0" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="17" />
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
    <module reference="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c(jetbrains.mps.coderules)" version="0" />
    <module reference="6998f568-f0e9-473b-b4a8-9efb6499fc8d(jetbrains.mps.coderules.typechecking)" version="0" />
    <module reference="35e2a720-13d8-4eda-88d3-ff9d78d5a3ae(jetbrains.mps.coderules.typechecking.ui)" version="0" />
    <module reference="4d5d9aa1-7b71-4888-9100-1b793e5328a6(jetbrains.mps.coderules.ui)" version="0" />
    <module reference="bfbdd672-7ff5-403f-af4f-16da5226f34c(jetbrains.mps.findUsages.runtime)" version="0" />
    <module reference="5b1f863d-65a0-41a6-a801-33896be24202(jetbrains.mps.ide.editor)" version="0" />
    <module reference="26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.coderules.runtime)" version="0" />
    <module reference="ff6372a2-2f45-4ec3-952b-02581666015f(jetbrains.mps.lang.coderules.template)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="9e98f4e2-decf-4e97-bf80-9109e8b759aa(jetbrains.mps.lang.feedback.context)" version="0" />
    <module reference="f486b8aa-5b2d-4ec0-8ef5-8f45d773fb84(jetbrains.mps.lang.typechecking.runtime)" version="0" />
    <module reference="bbf5c548-7111-4a53-a117-cdefc664cf34(jetbrains.mps.logic.reactor)" version="0" />
    <module reference="a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)" version="0" />
    <module reference="a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)" version="0" />
    <module reference="da80355b-a098-4248-9ec8-70d10dd7e9af(jetbrains.mps.reporting.runtime)" version="0" />
  </dependencyVersions>
</solution>

