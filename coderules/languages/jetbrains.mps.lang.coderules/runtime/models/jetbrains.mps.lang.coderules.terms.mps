<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4c913df4-f2d5-43f7-af56-6bccd35aeb11(jetbrains.mps.lang.coderules.terms)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
  <node concept="312cEu" id="1RYTbd6oE5l">
    <property role="TrG5h" value="TermUtil" />
    <node concept="2tJIrI" id="1RYTbd6oE5P" role="jymVt" />
    <node concept="Wx3nA" id="1RYTbd6oE68" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="DECLARATION" />
      <node concept="3Tm1VV" id="1RYTbd6oE6u" role="1B3o_S" />
      <node concept="3uibUv" id="1RYTbd6oICU" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="1RYTbd6oE7S" role="33vP2m">
        <property role="Xl_RC" value="_term" />
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6oEa8" role="jymVt" />
    <node concept="Wx3nA" id="1RYTbd6oE9B" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SPECIFICATION" />
      <node concept="3Tm1VV" id="1RYTbd6oE9C" role="1B3o_S" />
      <node concept="3uibUv" id="1RYTbd6oIJx" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="1RYTbd6oE9E" role="33vP2m">
        <property role="Xl_RC" value="_subterm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd6oE5U" role="jymVt" />
    <node concept="3Tm1VV" id="1RYTbd6oE5m" role="1B3o_S" />
  </node>
</model>

