<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:16032fca-7fcb-4ecb-9b25-53910534c791(jetbrains.mps.lang.typesystem2.constraint)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
  </languages>
  <imports>
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.type)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1hX44vNkAB4">
    <property role="TrG5h" value="TypeConstraint" />
    <node concept="2tJIrI" id="1hX44vNkAB$" role="jymVt" />
    <node concept="2tJIrI" id="1hX44vNkABA" role="jymVt" />
    <node concept="3clFb_" id="1hX44vNkABS" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="1hX44vNkACJ" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="1hX44vNkADb" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1pPth$m7FL5" resolve="Type" />
        </node>
      </node>
      <node concept="37vLTG" id="1hX44vNkAT0" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="2I9FWS" id="1hX44vNkATu" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1hX44vNkABU" role="3clF45" />
      <node concept="3Tm1VV" id="1hX44vNkABV" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vNkABW" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1hX44vNkABH" role="jymVt" />
    <node concept="3Tm1VV" id="1hX44vNkAB5" role="1B3o_S" />
  </node>
</model>

