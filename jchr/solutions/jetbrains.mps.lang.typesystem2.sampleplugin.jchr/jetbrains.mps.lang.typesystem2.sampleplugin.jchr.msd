<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.lang.typesystem2.sampleplugin.jchr" uuid="b862404f-c80a-47af-9def-0ba8676f9fa5" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">7526e0cf-1ce7-46f8-a555-9eca1e06c23b(jetbrains.mps.logic.atom)</dependency>
    <dependency reexport="false">35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)</dependency>
    <dependency reexport="false">26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.typesystem2.runtime)</dependency>
    <dependency reexport="false">a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)</dependency>
    <dependency reexport="true">35e2a720-13d8-4eda-88d3-ff9d78d5a3ae(jetbrains.mps.lang.typesystem2.sampleplugin)</dependency>
    <dependency reexport="false">a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)</dependency>
    <dependency reexport="false">b984ee52-f34d-4b6d-8812-866c1d3eae31(jetbrains.mps.jchr.runtime)</dependency>
    <dependency reexport="false">760652ad-c01a-495e-9510-ed51532f617b(jetbrains.mps.logic.jchr)</dependency>
    <dependency reexport="false">894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="4" />
    <language slang="l:ed6d7656-532c-4bc2-81d1-af945aeb8280:jetbrains.mps.baseLanguage.blTypes" version="0" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="0" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:aee9cad2-acd4-4608-aef2-0004f6a1cdbd:jetbrains.mps.lang.actions" version="3" />
    <language slang="l:fe9d76d7-5809-45c9-ae28-a40915b4d6ff:jetbrains.mps.lang.checkedName" version="0" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="1" />
    <language slang="l:28f9e497-3b42-4291-aeba-0a1039153ab1:jetbrains.mps.lang.plugin" version="1" />
    <language slang="l:ef7bf5ac-d06c-4342-b11d-e42104eb9343:jetbrains.mps.lang.plugin.standalone" version="0" />
    <language slang="l:13744753-c81f-424a-9c1b-cf8943bf4e86:jetbrains.mps.lang.sharedConcepts" version="0" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="4" />
    <language slang="l:c72da2b9-7cce-4447-8389-f407dc1158b7:jetbrains.mps.lang.structure" version="3" />
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
    <module reference="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" version="0" />
    <module reference="ed6d7656-532c-4bc2-81d1-af945aeb8280(jetbrains.mps.baseLanguage.blTypes)" version="0" />
    <module reference="e39e4a59-8cb6-498e-860e-8fa8361c0d90(jetbrains.mps.baseLanguage.scopes)" version="0" />
    <module reference="894463aa-8754-49c0-bf4b-6a32af66b376(jetbrains.mps.jchr)" version="0" />
    <module reference="b984ee52-f34d-4b6d-8812-866c1d3eae31(jetbrains.mps.jchr.runtime)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="d7eb0a2a-bd50-4576-beae-e4a89db35f20(jetbrains.mps.lang.scopes.runtime)" version="0" />
    <module reference="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" version="0" />
    <module reference="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" version="0" />
    <module reference="26e8f4ce-2a35-4f44-8065-e5ba154b18e9(jetbrains.mps.lang.typesystem2.runtime)" version="0" />
    <module reference="9c4ae21e-62e0-4110-95b7-191b357a42d2(jetbrains.mps.lang.typesystem2.samplechecker.handler.util)" version="0" />
    <module reference="35e2a720-13d8-4eda-88d3-ff9d78d5a3ae(jetbrains.mps.lang.typesystem2.sampleplugin)" version="0" />
    <module reference="b862404f-c80a-47af-9def-0ba8676f9fa5(jetbrains.mps.lang.typesystem2.sampleplugin.jchr)" version="0" />
    <module reference="35320f26-77cb-4c55-be9f-a97a27770af1(jetbrains.mps.logic)" version="0" />
    <module reference="7526e0cf-1ce7-46f8-a555-9eca1e06c23b(jetbrains.mps.logic.atom)" version="0" />
    <module reference="760652ad-c01a-495e-9510-ed51532f617b(jetbrains.mps.logic.jchr)" version="0" />
    <module reference="bbf5c548-7111-4a53-a117-cdefc664cf34(jetbrains.mps.logic.reactor)" version="0" />
    <module reference="a5478664-6b44-4c62-a9f7-434f8aa57eee(jetbrains.mps.logic.runtime)" version="0" />
    <module reference="a1250a4d-c090-42c3-ad7c-d298a3357dd4(jetbrains.mps.make.runtime)" version="0" />
  </dependencyVersions>
</solution>

