<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5669dd77-177e-474f-8fb2-c015a8eb4306(jetbrains.mps.lang.typesystem2.sample.simpleGenerics)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3Qp4N06bAlL">
    <property role="TrG5h" value="SimpleGenerics" />
    <node concept="2tJIrI" id="3Qp4N06bAlM" role="jymVt" />
    <node concept="3HP615" id="7yvZ58OY1Ru" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Map" />
      <node concept="3Tm1VV" id="7yvZ58OY1Rv" role="1B3o_S" />
      <node concept="16euLQ" id="7yvZ58OY1XC" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="7yvZ58OY1YV" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="312cEu" id="7yvZ58OTEhb" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="List" />
      <node concept="3Tm1VV" id="7yvZ58OTEhc" role="1B3o_S" />
      <node concept="16euLQ" id="7yvZ58OTEmO" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="312cEu" id="7yvZ58OTDPq" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="MyMap" />
      <node concept="3Tm1VV" id="7yvZ58OTDMB" role="1B3o_S" />
      <node concept="16euLQ" id="7yvZ58OTE5_" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="7yvZ58OTE6Y" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3uibUv" id="7yvZ58OY28O" role="EKbjA">
        <ref role="3uigEE" node="7yvZ58OY1Ru" resolve="SimpleGenerics.Map" />
        <node concept="3uibUv" id="7yvZ58P0V8o" role="11_B2D">
          <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.List" />
          <node concept="16syzq" id="7yvZ58P0Vab" role="11_B2D">
            <ref role="16sUi3" node="7yvZ58OTE5_" resolve="K" />
          </node>
        </node>
        <node concept="3uibUv" id="7yvZ58P0VbL" role="11_B2D">
          <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.List" />
          <node concept="16syzq" id="1687aasaG8E" role="11_B2D">
            <ref role="16sUi3" node="7yvZ58OTE5_" resolve="K" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="7yvZ58Pa7FA" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Str" />
      <node concept="3Tm1VV" id="7yvZ58Pa7FB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7yvZ58OTDwk" role="jymVt" />
    <node concept="3clFb_" id="7t5VLKHf_4i" role="jymVt">
      <property role="TrG5h" value="fun" />
      <node concept="3cqZAl" id="2BnJViikSl2" role="3clF45" />
      <node concept="3Tm1VV" id="7t5VLKHf_4l" role="1B3o_S" />
      <node concept="3clFbS" id="7t5VLKHf_4m" role="3clF47">
        <node concept="3cpWs8" id="7yvZ58OTEOC" role="3cqZAp">
          <node concept="3cpWsn" id="7yvZ58OTEOD" role="3cpWs9">
            <property role="TrG5h" value="varvarvar" />
            <node concept="3uibUv" id="7yvZ58OTEOE" role="1tU5fm">
              <ref role="3uigEE" node="7yvZ58OTDPq" resolve="SimpleGenerics.MyMap" />
              <node concept="3uibUv" id="7yvZ58OTYex" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="2BnJViikSaL" role="11_B2D">
                <ref role="3uigEE" node="7yvZ58Pa7FA" resolve="SimpleGenerics.Str" />
              </node>
            </node>
            <node concept="10Nm6u" id="7yvZ58OTESn" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7yvZ58P6mzY" role="3cqZAp">
          <node concept="3cpWsn" id="7yvZ58P6mzZ" role="3cpWs9">
            <property role="TrG5h" value="varvar" />
            <node concept="3uibUv" id="7yvZ58P6m$0" role="1tU5fm">
              <ref role="3uigEE" node="7yvZ58OY1Ru" resolve="SimpleGenerics.Map" />
              <node concept="3uibUv" id="7yvZ58P6mCq" role="11_B2D">
                <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.List" />
                <node concept="3uibUv" id="7yvZ58P6mFp" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="7yvZ58P6mHC" role="11_B2D">
                <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.List" />
                <node concept="3uibUv" id="1687aas9Vxe" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7yvZ58PbfbD" role="3cqZAp">
          <node concept="37vLTI" id="7yvZ58PbfdR" role="3clFbG">
            <node concept="37vLTw" id="7yvZ58PbffY" role="37vLTx">
              <ref role="3cqZAo" node="7yvZ58OTEOD" resolve="varvarvar" />
            </node>
            <node concept="37vLTw" id="7yvZ58PbfbB" role="37vLTJ">
              <ref role="3cqZAo" node="7yvZ58P6mzZ" resolve="varvar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BnJViikS_Z" role="jymVt" />
    <node concept="3Tm1VV" id="3Qp4N06bAm1" role="1B3o_S" />
  </node>
</model>

