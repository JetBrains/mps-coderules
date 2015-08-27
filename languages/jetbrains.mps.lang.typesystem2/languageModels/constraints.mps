<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:81151157-4aa6-41ac-acda-128bb1020041(jetbrains.mps.lang.typesystem2.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="-1" />
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="-1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="-1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="fnmy" ref="r:89c0fb70-0977-4113-a076-5906f9d8630f(jetbrains.mps.baseLanguage.scopes)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="5676632058862809931" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="in" index="13QW63" />
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="1M2fIO" id="6ntBQ9KM5bM">
    <property role="3GE5qa" value="rule.input" />
    <ref role="1M2myG" to="wq2x:6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    <node concept="3EP7_v" id="6ntBQ9KM5jK" role="1MtirG">
      <node concept="13QW63" id="6ntBQ9KM6eb" role="3EP$qY">
        <node concept="3clFbS" id="6ntBQ9KM6ed" role="2VODD2">
          <node concept="3cpWs8" id="6ntBQ9KM$Fo" role="3cqZAp">
            <node concept="3cpWsn" id="6ntBQ9KM$Fp" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="6ntBQ9KM$Fk" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
              </node>
              <node concept="2OqwBi" id="6ntBQ9KM$Fq" role="33vP2m">
                <node concept="2rP1CM" id="6ntBQ9KM$Fr" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6ntBQ9KM$Fs" role="2OqNvi">
                  <node concept="1xMEDy" id="6ntBQ9KM$Ft" role="1xVPHs">
                    <node concept="chp4Y" id="3KXGt7X4HHo" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6ntBQ9KM$Fv" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ntBQ9KM82u" role="3cqZAp">
            <node concept="2ShNRf" id="6ntBQ9KM82q" role="3clFbG">
              <node concept="YeOm9" id="6ntBQ9KM8cc" role="2ShVmc">
                <node concept="1Y3b0j" id="6ntBQ9KM8cf" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2YIFZM" id="6ntBQ9KM$lM" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="2OqwBi" id="6ntBQ9KM_jA" role="37wK5m">
                      <node concept="2OqwBi" id="5NuEpF1jBOR" role="2Oq$k0">
                        <node concept="37vLTw" id="6ntBQ9KM_a3" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ntBQ9KM$Fp" resolve="rule" />
                        </node>
                        <node concept="3TrEf2" id="6wQEDbCDRK7" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:6wQEDbCCPyR" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="5NuEpF1jCoN" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:5NuEpF1ihrB" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6ntBQ9KM8cg" role="1B3o_S" />
                  <node concept="3clFb_" id="6ntBQ9KM8cr" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="6ntBQ9KM8cs" role="3clF45" />
                    <node concept="3Tm1VV" id="6ntBQ9KM8ct" role="1B3o_S" />
                    <node concept="37vLTG" id="6ntBQ9KM8cv" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="6ntBQ9KM8cw" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="6ntBQ9KM8cx" role="3clF47">
                      <node concept="3clFbF" id="6ntBQ9KM8n0" role="3cqZAp">
                        <node concept="2OqwBi" id="6ntBQ9KM8_$" role="3clFbG">
                          <node concept="1PxgMI" id="6ntBQ9KM8uP" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1PxNhF" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="6ntBQ9KM8mZ" role="1PxMeX">
                              <ref role="3cqZAo" node="6ntBQ9KM8cv" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6ntBQ9KM8Im" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5MHpiylEtrK">
    <property role="3GE5qa" value="rule.code.parameter" />
    <ref role="1M2myG" to="wq2x:5MHpiylEsuT" resolve="RuleParameterDeclaration" />
    <node concept="3EP7_v" id="5MHpiylEttA" role="1MtirG">
      <node concept="13QW63" id="5MHpiylEu44" role="3EP$qY">
        <node concept="3clFbS" id="5MHpiylEu45" role="2VODD2">
          <node concept="3cpWs8" id="5MHpiylEu46" role="3cqZAp">
            <node concept="3cpWsn" id="5MHpiylEu47" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="5MHpiylEu48" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
              </node>
              <node concept="2OqwBi" id="5MHpiylEu49" role="33vP2m">
                <node concept="2rP1CM" id="5MHpiylEu4a" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5MHpiylEu4b" role="2OqNvi">
                  <node concept="1xMEDy" id="5MHpiylEu4c" role="1xVPHs">
                    <node concept="chp4Y" id="5MHpiylEu4d" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5MHpiylEu4e" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5MHpiylEu4f" role="3cqZAp">
            <node concept="2ShNRf" id="5MHpiylEu4g" role="3clFbG">
              <node concept="YeOm9" id="5MHpiylEu4h" role="2ShVmc">
                <node concept="1Y3b0j" id="5MHpiylEu4i" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2ShNRf" id="1zN1RIkRePd" role="37wK5m">
                    <node concept="Tc6Ow" id="1zN1RIkRf0_" role="2ShVmc">
                      <node concept="2OqwBi" id="1zN1RIkRgdg" role="HW$Y0">
                        <node concept="2OqwBi" id="1zN1RIkRfBh" role="2Oq$k0">
                          <node concept="37vLTw" id="1zN1RIkRf9D" role="2Oq$k0">
                            <ref role="3cqZAo" node="5MHpiylEu47" resolve="rule" />
                          </node>
                          <node concept="3TrEf2" id="1zN1RIkRfYF" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:5MHpiylGjt8" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1zN1RIkRgta" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:5MHpiylFI5Z" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1zN1RIkRh9o" role="HW$Y0">
                        <node concept="2OqwBi" id="1zN1RIkRgzm" role="2Oq$k0">
                          <node concept="37vLTw" id="1zN1RIkRgud" role="2Oq$k0">
                            <ref role="3cqZAo" node="5MHpiylEu47" resolve="rule" />
                          </node>
                          <node concept="3TrEf2" id="1zN1RIkRgUh" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:6wQEDbCHGnY" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1zN1RIkRhBO" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:5MHpiylFI5Z" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="1zN1RIkRf7n" role="HW$YZ" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="5MHpiylEu4n" role="1B3o_S" />
                  <node concept="3clFb_" id="5MHpiylEu4o" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="5MHpiylEu4p" role="3clF45" />
                    <node concept="3Tm1VV" id="5MHpiylEu4q" role="1B3o_S" />
                    <node concept="37vLTG" id="5MHpiylEu4r" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="5MHpiylEu4s" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="5MHpiylEu4t" role="3clF47">
                      <node concept="3clFbF" id="5MHpiylEu4u" role="3cqZAp">
                        <node concept="2OqwBi" id="5MHpiylEu4v" role="3clFbG">
                          <node concept="1PxgMI" id="5MHpiylEu4w" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1PxNhF" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="5MHpiylEu4x" role="1PxMeX">
                              <ref role="3cqZAo" node="5MHpiylEu4r" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="5MHpiylEu4y" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

