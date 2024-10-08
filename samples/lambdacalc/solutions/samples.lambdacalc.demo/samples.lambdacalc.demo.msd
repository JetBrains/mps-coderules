<?xml version="1.0" encoding="UTF-8"?>
<solution name="samples.lambdacalc.demo" uuid="05f15741-5274-4aed-a086-84d9a15ab93b" moduleVersion="0">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <facets>
    <facet type="tests" />
    <facet type="java" compile="mps" classes="mps" ext="no">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <dependencies>
    <dependency reexport="false">6998f568-f0e9-473b-b4a8-9efb6499fc8d(jetbrains.mps.coderules.typechecking)</dependency>
    <dependency reexport="false">af858d84-85f2-42f4-a854-0b3c6b5cd482(samples.lambdacalc)</dependency>
    <dependency reexport="false">c9670c16-a215-41fb-8784-04b14329799d(jetbrains.mps.coderules.typechecking.test)</dependency>
    <dependency reexport="false">02473356-2f59-4de1-ba87-e88f9d606180(jetbrains.mps.coderules.testhelper)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="12" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="2" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:f61473f9-130f-42f6-b98d-6c438812c2f6:jetbrains.mps.baseLanguage.unitTest" version="1" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:3a13115c-633c-4c5c-bbcc-75c4219e9555:jetbrains.mps.lang.quotation" version="5" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="19" />
    <language slang="l:8585453e-6bfb-4d80-98de-b16074f1d86c:jetbrains.mps.lang.test" version="6" />
    <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
    <language slang="l:0b80a2e8-f9f1-47b3-823f-56eb115bca42:jetbrains.mps.typechecking.annotation" version="0" />
    <language slang="l:af858d84-85f2-42f4-a854-0b3c6b5cd482:samples.lambdacalc" version="0" />
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
    <module reference="f113d56b-63e3-4120-a89c-2f5dcb8c6290(jetbrains.mps.coderules.runtime)" version="0" />
    <module reference="02473356-2f59-4de1-ba87-e88f9d606180(jetbrains.mps.coderules.testhelper)" version="0" />
    <module reference="6998f568-f0e9-473b-b4a8-9efb6499fc8d(jetbrains.mps.coderules.typechecking)" version="0" />
    <module reference="c9670c16-a215-41fb-8784-04b14329799d(jetbrains.mps.coderules.typechecking.test)" version="0" />
    <module reference="bfbdd672-7ff5-403f-af4f-16da5226f34c(jetbrains.mps.findUsages.runtime)" version="0" />
    <module reference="26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.coderules.runtime)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="f486b8aa-5b2d-4ec0-8ef5-8f45d773fb84(jetbrains.mps.lang.typechecking.runtime)" version="0" />
    <module reference="da80355b-a098-4248-9ec8-70d10dd7e9af(jetbrains.mps.reporting.runtime)" version="0" />
    <module reference="af858d84-85f2-42f4-a854-0b3c6b5cd482(samples.lambdacalc)" version="0" />
    <module reference="05f15741-5274-4aed-a086-84d9a15ab93b(samples.lambdacalc.demo)" version="0" />
  </dependencyVersions>
</solution>

