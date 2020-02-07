<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.coderules.typechecking.test" uuid="c9670c16-a215-41fb-8784-04b14329799d" moduleVersion="0" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <facets>
    <facet type="tests" />
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">6998f568-f0e9-473b-b4a8-9efb6499fc8d(jetbrains.mps.coderules.typechecking)</dependency>
    <dependency reexport="false">f486b8aa-5b2d-4ec0-8ef5-8f45d773fb84(jetbrains.mps.lang.typechecking.runtime)</dependency>
    <dependency reexport="false">f9bad4b1-59da-4f20-8feb-9f4cc4ad872e(jetbrains.mps.coderules.typechecking.testlang.sandbox)</dependency>
    <dependency reexport="false">3a1f0f04-b5e0-43be-884e-b856bfdeca21(jetbrains.mps.typechecking.testlang)</dependency>
    <dependency reexport="false">b189d6c6-9397-4d64-88af-1ac73760a4f5(jetbrains.mps.logic.test)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
    <dependency reexport="true">26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.coderules.runtime)</dependency>
    <dependency reexport="false">c4803b19-6d89-4a3b-bf82-390769514add(jetbrains.mps.lang.coderules)</dependency>
    <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="9" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:f61473f9-130f-42f6-b98d-6c438812c2f6:jetbrains.mps.baseLanguage.unitTest" version="1" />
    <language slang="l:df345b11-b8c7-4213-ac66-48d2a9b75d88:jetbrains.mps.baseLanguageInternal" version="0" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:aee9cad2-acd4-4608-aef2-0004f6a1cdbd:jetbrains.mps.lang.actions" version="4" />
    <language slang="l:c4803b19-6d89-4a3b-bf82-390769514add:jetbrains.mps.lang.coderules" version="20" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:f4ad079d-bc71-4ffb-9600-9328705cf998:jetbrains.mps.lang.descriptor" version="0" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:3a13115c-633c-4c5c-bbcc-75c4219e9555:jetbrains.mps.lang.quotation" version="4" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="17" />
    <language slang="l:c72da2b9-7cce-4447-8389-f407dc1158b7:jetbrains.mps.lang.structure" version="9" />
    <language slang="l:8585453e-6bfb-4d80-98de-b16074f1d86c:jetbrains.mps.lang.test" version="5" />
    <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
    <language slang="l:35320f26-77cb-4c55-be9f-a97a27770af1:jetbrains.mps.logic" version="5" />
    <language slang="l:3a1f0f04-b5e0-43be-884e-b856bfdeca21:jetbrains.mps.typechecking.testlang" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" version="0" />
    <module reference="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" version="0" />
    <module reference="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" version="0" />
    <module reference="e39e4a59-8cb6-498e-860e-8fa8361c0d90(jetbrains.mps.baseLanguage.scopes)" version="0" />
    <module reference="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c(jetbrains.mps.coderules)" version="0" />
    <module reference="6998f568-f0e9-473b-b4a8-9efb6499fc8d(jetbrains.mps.coderules.typechecking)" version="0" />
    <module reference="c9670c16-a215-41fb-8784-04b14329799d(jetbrains.mps.coderules.typechecking.test)" version="0" />
    <module reference="f9bad4b1-59da-4f20-8feb-9f4cc4ad872e(jetbrains.mps.coderules.typechecking.testlang.sandbox)" version="0" />
    <module reference="2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)" version="0" />
    <module reference="d936855b-48da-4812-a8a0-2bfddd633ac5(jetbrains.mps.lang.behavior.api)" version="0" />
    <module reference="c4803b19-6d89-4a3b-bf82-390769514add(jetbrains.mps.lang.coderules)" version="0" />
    <module reference="26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.coderules.runtime)" version="0" />
    <module reference="ff6372a2-2f45-4ec3-952b-02581666015f(jetbrains.mps.lang.coderules.template)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="f4ad079d-bc71-4ffb-9600-9328705cf998(jetbrains.mps.lang.descriptor)" version="0" />
    <module reference="9e98f4e2-decf-4e97-bf80-9109e8b759aa(jetbrains.mps.lang.feedback.context)" version="0" />
    <module reference="446c26eb-2b7b-4bf0-9b35-f83fa582753e(jetbrains.mps.lang.modelapi)" version="0" />
    <module reference="d7eb0a2a-bd50-4576-beae-e4a89db35f20(jetbrains.mps.lang.scopes.runtime)" version="0" />
    <module reference="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" version="1" />
    <module reference="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" version="0" />
    <module reference="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" version="0" />
    <module reference="f486b8aa-5b2d-4ec0-8ef5-8f45d773fb84(jetbrains.mps.lang.typechecking.runtime)" version="0" />
    <module reference="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" version="0" />
    <module reference="bbf5c548-7111-4a53-a117-cdefc664cf34(jetbrains.mps.logic.reactor)" version="0" />
    <module reference="a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)" version="0" />
    <module reference="b189d6c6-9397-4d64-88af-1ac73760a4f5(jetbrains.mps.logic.test)" version="0" />
    <module reference="da80355b-a098-4248-9ec8-70d10dd7e9af(jetbrains.mps.reporting.runtime)" version="0" />
    <module reference="3a1f0f04-b5e0-43be-884e-b856bfdeca21(jetbrains.mps.typechecking.testlang)" version="0" />
  </dependencyVersions>
</solution>

