<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7e6a4eaf-f330-4401-ba24-80c1ea4519aa(jetbrains.mps.typechecking.annotation.types)">
  <persistence version="9" />
  <languages>
    <use id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules" version="25" />
    <use id="afc17aaf-3a3d-4d69-a38d-db90d5e858c6" name="jetbrains.mps.lang.types" version="0" />
    <use id="4b5b4f8d-d30a-4ef8-9bf4-dfd26af9d462" name="jetbrains.mps.lang.typechecking" version="1" />
    <engage id="afc17aaf-3a3d-4d69-a38d-db90d5e858c6" name="jetbrains.mps.lang.types" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c4803b19-6d89-4a3b-bf82-390769514add" name="jetbrains.mps.lang.coderules">
      <concept id="1618328391714763069" name="jetbrains.mps.lang.coderules.structure.MacroTable" flags="ng" index="0oKg$" />
    </language>
  </registry>
  <node concept="0oKg$" id="5MK8bDyP5DN">
    <property role="TrG5h" value="foo" />
  </node>
</model>

