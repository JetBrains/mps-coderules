<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8120c428-409e-4440-ae27-dee0e1ff9b30(jetbrains.mps.baseLanguage.closuresExt.test.closures)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="9e36d2ee-c59c-4580-9e81-646748d0614b" name="jetbrains.mps.baseLanguage.closuresExt" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4E290qQ09_i">
    <property role="TrG5h" value="DemoClosures" />
    <node concept="2tJIrI" id="4E290qQ0cQU" role="jymVt" />
    <node concept="312cEu" id="4E290qQ0cUR" role="jymVt">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="4E290qQ0cSQ" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="4E290qQ0cZA" role="jymVt">
      <property role="TrG5h" value="B" />
      <node concept="3Tm1VV" id="4E290qQ0cZB" role="1B3o_S" />
      <node concept="3uibUv" id="4E290qQ0d2B" role="1zkMxy">
        <ref role="3uigEE" node="4E290qQ0cUR" resolve="DemoClosures.A" />
      </node>
    </node>
    <node concept="2tJIrI" id="4E290qQ09D$" role="jymVt" />
    <node concept="3Tm1VV" id="4E290qQ09_j" role="1B3o_S" />
  </node>
</model>

