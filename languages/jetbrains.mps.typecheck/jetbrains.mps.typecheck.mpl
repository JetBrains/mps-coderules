<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.typecheck" uuid="a2ea22de-b72c-4ba2-8eb5-b87d86146d6b">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="languageModels" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator generatorUID="jetbrains.mps.typecheck#3113146058911352904" uuid="3e510635-c495-4bb0-a1f9-28b9d9a22a44">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot location="generator/template" />
        </modelRoot>
      </models>
      <external-templates />
      <usedLanguages>
        <usedLanguage>b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</usedLanguage>
        <usedLanguage>d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)</usedLanguage>
        <usedLanguage>a2ea22de-b72c-4ba2-8eb5-b87d86146d6b(jetbrains.mps.typecheck)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <mapping-priorities />
    </generator>
  </generators>
  <sourcePath />
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <runtime>
    <dependency reexport="false">a3529a8c-f4ff-4125-865c-391bcc490358(jetbrains.mps.typecheck.runtime)</dependency>
  </runtime>
  <extendedLanguages />
</language>

