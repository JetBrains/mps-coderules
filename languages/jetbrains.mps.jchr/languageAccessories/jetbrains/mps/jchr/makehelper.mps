<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:63e42001-b680-413c-92d7-b07cd22aa33d(jetbrains.mps.jchr.makehelper)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239360506533" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleDeclaration" flags="ng" index="2fD8I5">
        <child id="1239529553065" name="component" index="2pHZQ9" />
        <child id="2423993921025641700" name="implements" index="3TOOP4" />
      </concept>
      <concept id="1239462176079" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentDeclaration" flags="ng" index="2lGYhJ">
        <property id="1240400839614" name="final" index="3dDGau" />
        <child id="1239462974287" name="type" index="2lK19J" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="1107880067339" name="method" index="3MN40a" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
    </language>
  </registry>
  <node concept="2fD8I5" id="35Lj3TiB$U_">
    <property role="TrG5h" value="JCRHResource" />
    <node concept="2lGYhJ" id="35Lj3TiB$UA" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="clsOutput" />
      <node concept="3uibUv" id="35Lj3TiB$UB" role="2lK19J">
        <ref role="3uigEE" to="fxg7:~File" resolve="File" />
      </node>
    </node>
    <node concept="2lGYhJ" id="35Lj3TiB$UC" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="handlerFiles" />
      <node concept="_YKpA" id="35Lj3TiB$UD" role="2lK19J">
        <node concept="3uibUv" id="35Lj3TiB$UE" role="_ZDj9">
          <ref role="3uigEE" to="fxg7:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2lGYhJ" id="35Lj3TiB$UF" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="classpath" />
      <node concept="_YKpA" id="35Lj3TiB$UG" role="2lK19J">
        <node concept="3uibUv" id="35Lj3TiB$UH" role="_ZDj9">
          <ref role="3uigEE" to="fxg7:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="35Lj3TiB$UI" role="1B3o_S" />
    <node concept="3clFb_" id="35Lj3TiB$UJ" role="3MN40a">
      <property role="TrG5h" value="describe" />
      <node concept="17QB3L" id="35Lj3TiB$UK" role="3clF45" />
      <node concept="3Tm1VV" id="35Lj3TiB$UL" role="1B3o_S" />
      <node concept="3clFbS" id="35Lj3TiB$UM" role="3clF47">
        <node concept="3clFbF" id="35Lj3TiB$UN" role="3cqZAp">
          <node concept="10Nm6u" id="35Lj3TiB$UO" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="53iOybEOgdY" role="3TOOP4">
      <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
    </node>
  </node>
</model>

