<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:28026be8-9bf8-4f54-9319-0ca8a6d1299d(jetbrains.mps.lang.typesystem2.sample.helloWorld)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
  </languages>
  <imports>
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
  <node concept="312cEu" id="3Qp4N06bAlL">
    <property role="TrG5h" value="HelloWorld" />
    <node concept="2tJIrI" id="3Qp4N06bAlM" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06bAlN" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="3Qp4N06bAlO" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="3Qp4N06bAlP" role="1tU5fm">
          <node concept="17QB3L" id="3Qp4N06bAlQ" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="3Qp4N06bAlR" role="3clF45" />
      <node concept="3Tm1VV" id="3Qp4N06bAlS" role="1B3o_S" />
      <node concept="3clFbS" id="3Qp4N06bAlT" role="3clF47">
        <node concept="3clFbH" id="3Qp4N06bAlU" role="3cqZAp" />
        <node concept="3clFbF" id="3Qp4N06bAlV" role="3cqZAp">
          <node concept="2OqwBi" id="3Qp4N06bAlW" role="3clFbG">
            <node concept="10M0yZ" id="3Qp4N06bAlX" role="2Oq$k0">
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="3Qp4N06bAlY" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="3Qp4N06bAlZ" role="37wK5m">
                <property role="Xl_RC" value="Hello, world!" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06bAm0" role="3cqZAp" />
        <node concept="3clFbF" id="3xj1Usc_LDz" role="3cqZAp">
          <node concept="2OqwBi" id="6flDoy9UcrU" role="3clFbG">
            <node concept="2YIFZM" id="3xj1Usc_M0M" role="2Oq$k0">
              <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
              <ref role="37wK5l" to="e2lb:~System.getenv():java.util.Map" resolve="getenv" />
            </node>
            <node concept="liA8E" id="6flDoy9UcGV" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="Xl_RD" id="6flDoy9UcNr" role="37wK5m">
                <property role="Xl_RC" value="MPS_HOME" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Usc_LA4" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="7t5VLKHf$Yt" role="jymVt" />
    <node concept="3clFb_" id="7t5VLKHf_4i" role="jymVt">
      <property role="TrG5h" value="greeet" />
      <node concept="3uibUv" id="4JRKVCv7Fdc" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="3Tm1VV" id="7t5VLKHf_4l" role="1B3o_S" />
      <node concept="3clFbS" id="7t5VLKHf_4m" role="3clF47">
        <node concept="3clFbJ" id="4EfgX2EJmvH" role="3cqZAp">
          <node concept="3clFbS" id="4EfgX2EJmvJ" role="3clFbx">
            <node concept="3cpWs6" id="4EfgX2EJmxt" role="3cqZAp">
              <node concept="10Nm6u" id="3x8pcoF$v$i" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4EfgX2EJmCK" role="3clFbw">
            <node concept="3clFbT" id="4EfgX2EJmDT" role="3uHU7w">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="3clFbT" id="4EfgX2EJmwE" role="3uHU7B" />
          </node>
        </node>
        <node concept="3clFbF" id="7t5VLKHf_dO" role="3cqZAp">
          <node concept="Xl_RD" id="7t5VLKHf_dN" role="3clFbG">
            <property role="Xl_RC" value="Hello" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3Qp4N06bAm1" role="1B3o_S" />
  </node>
</model>

