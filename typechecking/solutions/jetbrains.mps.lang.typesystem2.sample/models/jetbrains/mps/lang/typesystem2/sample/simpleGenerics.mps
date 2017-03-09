<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5669dd77-177e-474f-8fb2-c015a8eb4306(jetbrains.mps.lang.typesystem2.sample.simpleGenerics)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.lang.typesystem2.sampleLang" version="0" />
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
        <child id="2820489544402271667" name="typeParameter" index="HU9BZ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    <node concept="312cEu" id="7yvZ58OTEhb" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Foo" />
      <node concept="312cEg" id="3g$8GQCaPRz" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="theField" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm1VV" id="3g$8GQCaPNf" role="1B3o_S" />
        <node concept="16syzq" id="3g$8GQCaPR2" role="1tU5fm">
          <ref role="16sUi3" node="7yvZ58OTEmO" resolve="T" />
        </node>
      </node>
      <node concept="3clFb_" id="3g$8GQCa4y5" role="jymVt">
        <property role="TrG5h" value="meth" />
        <node concept="3cqZAl" id="3g$8GQCa4y7" role="3clF45" />
        <node concept="3Tm6S6" id="3g$8GQCa4y8" role="1B3o_S" />
        <node concept="3clFbS" id="3g$8GQCa4y9" role="3clF47">
          <node concept="3cpWs8" id="3g$8GQCa4Jc" role="3cqZAp">
            <node concept="3cpWsn" id="3g$8GQCa4Jf" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="16syzq" id="3g$8GQCa4Jb" role="1tU5fm">
                <ref role="16sUi3" node="7yvZ58OTEmO" resolve="T" />
              </node>
              <node concept="37vLTw" id="3g$8GQCa4Pb" role="33vP2m">
                <ref role="3cqZAo" node="3g$8GQCa4L5" resolve="param" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3g$8GQCa4L5" role="3clF46">
          <property role="TrG5h" value="param" />
          <node concept="16syzq" id="3g$8GQCa4L4" role="1tU5fm">
            <ref role="16sUi3" node="7yvZ58OTEmO" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1UWNDKzp_D_" role="1B3o_S" />
      <node concept="16euLQ" id="7yvZ58OTEmO" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3HP615" id="7yvZ58OY1Ru" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Bar" />
      <node concept="3Tm6S6" id="1UWNDKzp_H0" role="1B3o_S" />
      <node concept="16euLQ" id="7yvZ58OY1XC" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="7yvZ58OY1YV" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="312cEu" id="7yvZ58OTDPq" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="Baz" />
      <node concept="3Tm6S6" id="1UWNDKzp_Kf" role="1B3o_S" />
      <node concept="16euLQ" id="7yvZ58OTE5_" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="7yvZ58OTE6Y" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3uibUv" id="7yvZ58OY28O" role="EKbjA">
        <ref role="3uigEE" node="7yvZ58OY1Ru" resolve="SimpleGenerics.Bar" />
        <node concept="3uibUv" id="7yvZ58P0V8o" role="11_B2D">
          <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.Foo" />
          <node concept="16syzq" id="7yvZ58P0Vab" role="11_B2D">
            <ref role="16sUi3" node="7yvZ58OTE5_" resolve="K" />
          </node>
        </node>
        <node concept="3uibUv" id="7yvZ58P0VbL" role="11_B2D">
          <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.Foo" />
          <node concept="16syzq" id="1687aasaG8E" role="11_B2D">
            <ref role="16sUi3" node="7yvZ58OTE5_" resolve="K" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="7yvZ58Pa7FA" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Doh" />
      <node concept="3Tm6S6" id="1UWNDKzp_N$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7yvZ58OTDwk" role="jymVt" />
    <node concept="3clFb_" id="7t5VLKHf_4i" role="jymVt">
      <property role="TrG5h" value="fun" />
      <node concept="3uibUv" id="3g$8GQCaPWM" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm6S6" id="1UWNDKzp_Q$" role="1B3o_S" />
      <node concept="3clFbS" id="7t5VLKHf_4m" role="3clF47">
        <node concept="3cpWs8" id="7yvZ58OTEOC" role="3cqZAp">
          <node concept="3cpWsn" id="7yvZ58OTEOD" role="3cpWs9">
            <property role="TrG5h" value="varvarvar" />
            <node concept="3uibUv" id="7yvZ58OTEOE" role="1tU5fm">
              <ref role="3uigEE" node="7yvZ58OTDPq" resolve="SimpleGenerics.Baz" />
              <node concept="3uibUv" id="7yvZ58OTYex" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="2BnJViikSaL" role="11_B2D">
                <ref role="3uigEE" node="7yvZ58Pa7FA" resolve="SimpleGenerics.Doh" />
              </node>
            </node>
            <node concept="10Nm6u" id="7yvZ58OTESn" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7yvZ58P6mzY" role="3cqZAp">
          <node concept="3cpWsn" id="7yvZ58P6mzZ" role="3cpWs9">
            <property role="TrG5h" value="varvar" />
            <node concept="3uibUv" id="7yvZ58P6m$0" role="1tU5fm">
              <ref role="3uigEE" node="7yvZ58OY1Ru" resolve="SimpleGenerics.Bar" />
              <node concept="3uibUv" id="7yvZ58P6mCq" role="11_B2D">
                <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.Foo" />
                <node concept="3uibUv" id="7yvZ58P6mFp" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3uibUv" id="7yvZ58P6mHC" role="11_B2D">
                <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.Foo" />
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
        <node concept="3cpWs8" id="3g$8GQCaQot" role="3cqZAp">
          <node concept="3cpWsn" id="3g$8GQCaQou" role="3cpWs9">
            <property role="TrG5h" value="foo" />
            <node concept="3uibUv" id="3g$8GQCaQor" role="1tU5fm">
              <ref role="3uigEE" node="7yvZ58OTEhb" resolve="SimpleGenerics.Foo" />
              <node concept="3uibUv" id="3g$8GQCaQvX" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="3g$8GQCaQov" role="33vP2m">
              <node concept="HV5vD" id="3g$8GQCaQow" role="2ShVmc">
                <ref role="HV5vE" node="7yvZ58OTEhb" resolve="SimpleGenerics.Foo" />
                <node concept="3uibUv" id="3g$8GQCaQJ_" role="HU9BZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3g$8GQCaQ0m" role="3cqZAp">
          <node concept="2OqwBi" id="3g$8GQCaQOh" role="3cqZAk">
            <node concept="37vLTw" id="3g$8GQCaQox" role="2Oq$k0">
              <ref role="3cqZAo" node="3g$8GQCaQou" resolve="foo" />
            </node>
            <node concept="2OwXpG" id="3g$8GQCaR1I" role="2OqNvi">
              <ref role="2Oxat5" node="3g$8GQCaPRz" resolve="theField" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BnJViikS_Z" role="jymVt" />
  </node>
  <node concept="312cEu" id="623frvF_qs8">
    <property role="TrG5h" value="SimpleGenerics2" />
    <node concept="2tJIrI" id="623frvF_qsi" role="jymVt" />
    <node concept="312cEu" id="623frvF_qsS" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="L" />
      <node concept="3Tm6S6" id="4UfmwCCa34" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="623frvF_qsv" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="M" />
      <node concept="3Tm6S6" id="4UfmwCCa5p" role="1B3o_S" />
      <node concept="3uibUv" id="623frvF_qtn" role="1zkMxy">
        <ref role="3uigEE" node="623frvF_qsS" resolve="SimpleGenerics2.L" />
      </node>
    </node>
    <node concept="312cEu" id="623frvF_qut" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="C" />
      <node concept="3Tm6S6" id="4UfmwCCa7$" role="1B3o_S" />
      <node concept="16euLQ" id="623frvF_qxF" role="16eVyc">
        <property role="TrG5h" value="U" />
      </node>
    </node>
    <node concept="312cEu" id="623frvF_qtM" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="B" />
      <node concept="3Tm6S6" id="4UfmwCCa9R" role="1B3o_S" />
      <node concept="16euLQ" id="623frvF_quV" role="16eVyc">
        <property role="TrG5h" value="S" />
      </node>
    </node>
    <node concept="312cEu" id="623frvF_qvm" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <node concept="3Tm6S6" id="4UfmwCCack" role="1B3o_S" />
      <node concept="16euLQ" id="623frvF_qvR" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3uibUv" id="623frvF_qw4" role="1zkMxy">
        <ref role="3uigEE" node="623frvF_qtM" resolve="SimpleGenerics2.B" />
        <node concept="3uibUv" id="623frvF_qwp" role="11_B2D">
          <ref role="3uigEE" node="623frvF_qut" resolve="SimpleGenerics2.C" />
          <node concept="16syzq" id="623frvF_qwR" role="11_B2D">
            <ref role="16sUi3" node="623frvF_qvR" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="623frvF_qxV" role="jymVt" />
    <node concept="3clFb_" id="623frvF_qyM" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="37vLTG" id="623frvF_qzm" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="623frvF_qzz" role="1tU5fm">
          <ref role="3uigEE" node="623frvF_qvm" resolve="SimpleGenerics2.A" />
          <node concept="3uibUv" id="623frvF_qzV" role="11_B2D">
            <ref role="3uigEE" node="623frvF_qsS" resolve="SimpleGenerics2.L" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="623frvF_qyO" role="3clF45" />
      <node concept="3Tm6S6" id="4UfmwCCaeB" role="1B3o_S" />
      <node concept="3clFbS" id="623frvF_qyQ" role="3clF47">
        <node concept="3clFbH" id="623frvF_qFY" role="3cqZAp" />
        <node concept="3cpWs8" id="623frvF_q_G" role="3cqZAp">
          <node concept="3cpWsn" id="623frvF_q_H" role="3cpWs9">
            <property role="TrG5h" value="bar" />
            <node concept="3uibUv" id="623frvF_q_E" role="1tU5fm">
              <ref role="3uigEE" node="623frvF_qtM" resolve="SimpleGenerics2.B" />
              <node concept="3qUE_q" id="623frvFJEc0" role="11_B2D">
                <node concept="3uibUv" id="623frvF_qAc" role="3qUE_r">
                  <ref role="3uigEE" node="623frvF_qut" resolve="SimpleGenerics2.C" />
                  <node concept="3qUtgH" id="623frvF_qBs" role="11_B2D">
                    <node concept="3uibUv" id="623frvF_qBZ" role="3qUvdb">
                      <ref role="3uigEE" node="623frvF_qsv" resolve="SimpleGenerics2.M" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="623frvF_qE8" role="33vP2m">
              <ref role="3cqZAo" node="623frvF_qzm" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623frvF_qHt" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

