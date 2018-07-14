<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:152537e6-6f74-4625-b567-bef476402996(jetbrains.mps.dataform.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="dff3" ref="r:575429ab-72f6-4385-a61f-a1f1f27e3490(jetbrains.mps.dataform.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
  </registry>
  <node concept="1M2fIO" id="JOGAOsxTE1">
    <property role="3GE5qa" value="feature" />
    <ref role="1M2myG" to="dff3:JOGAOsxTDl" resolve="DataFormFeatureOverride" />
    <node concept="1N5Pfh" id="1L74NXFMz8i" role="1Mr941">
      <ref role="1N5Vy1" to="dff3:JOGAOsxTDo" resolve="feature" />
      <node concept="3dgokm" id="6fXjIfxgfU1" role="1N6uqs">
        <node concept="3clFbS" id="6fXjIfxgfU2" role="2VODD2">
          <node concept="3cpWs8" id="6fXjIfxgfU3" role="3cqZAp">
            <node concept="3cpWsn" id="6fXjIfxgfU4" role="3cpWs9">
              <property role="TrG5h" value="dfd" />
              <node concept="3Tqbb2" id="6fXjIfxgfU5" role="1tU5fm">
                <ref role="ehGHo" to="dff3:JOGAOsxaC9" resolve="DataFormDeclaration" />
              </node>
              <node concept="2OqwBi" id="6fXjIfxgfU6" role="33vP2m">
                <node concept="2OqwBi" id="6fXjIfxgfU7" role="2Oq$k0">
                  <node concept="2rP1CM" id="6fXjIfxgfU8" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="6fXjIfxgfU9" role="2OqNvi">
                    <node concept="1xMEDy" id="6fXjIfxgfUa" role="1xVPHs">
                      <node concept="chp4Y" id="JOGAOsxUUx" role="ri$Ld">
                        <ref role="cht4Q" to="dff3:JOGAOsxanH" resolve="DataForm" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="6fXjIfxgfUc" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3TrEf2" id="JOGAOsxVjr" role="2OqNvi">
                  <ref role="3Tt5mk" to="dff3:JOGAOsxaC6" resolve="decl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6fXjIfxgfUe" role="3cqZAp">
            <node concept="2ShNRf" id="6fXjIfxgfUf" role="3clFbG">
              <node concept="YeOm9" id="6fXjIfxgfUg" role="2ShVmc">
                <node concept="1Y3b0j" id="6fXjIfxgfUh" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2OqwBi" id="6fXjIfxgfUi" role="37wK5m">
                    <node concept="2OqwBi" id="6fXjIfxgfUj" role="2Oq$k0">
                      <node concept="37vLTw" id="6fXjIfxgfUl" role="2Oq$k0">
                        <ref role="3cqZAo" node="6fXjIfxgfU4" resolve="dfd" />
                      </node>
                      <node concept="3TrEf2" id="JOGAOsxWhW" role="2OqNvi">
                        <ref role="3Tt5mk" to="dff3:JOGAOsxaCc" resolve="template" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="JOGAOsxW_V" role="2OqNvi">
                      <ref role="3TtcxE" to="dff3:JOGAOsxiLz" resolve="feature" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6fXjIfxgfUp" role="1B3o_S" />
                  <node concept="3clFb_" id="6fXjIfxgfUq" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="6fXjIfxgfUr" role="3clF45" />
                    <node concept="3Tm1VV" id="6fXjIfxgfUs" role="1B3o_S" />
                    <node concept="37vLTG" id="6fXjIfxgfUt" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="6fXjIfxgfUu" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="6fXjIfxgfUv" role="3clF47">
                      <node concept="3clFbF" id="6fXjIfxgfUw" role="3cqZAp">
                        <node concept="2OqwBi" id="6fXjIfxgfUx" role="3clFbG">
                          <node concept="1PxgMI" id="6fXjIfxgfUy" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="37vLTw" id="6fXjIfxgfUz" role="1m5AlR">
                              <ref role="3cqZAo" node="6fXjIfxgfUt" resolve="child" />
                            </node>
                            <node concept="chp4Y" id="6fXjIfxgnfa" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6fXjIfxgfU$" role="2OqNvi">
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

