<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3e4db8f0-e5cf-49f3-9145-bc3c865d93ee(jetbrains.mps.logic.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709738802" name="jetbrains.mps.lang.quotation.structure.NodeBuilderList" flags="nn" index="36be1Y">
        <child id="8182547171709738803" name="nodes" index="36be1Z" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1196433923911" name="jetbrains.mps.lang.actions.structure.SideTransform_SimpleString" flags="nn" index="2h1dTh">
        <property id="1196433942569" name="text" index="2h1i$Z" />
      </concept>
      <concept id="1177323996388" name="jetbrains.mps.lang.actions.structure.AddMenuPart" flags="ng" index="tYCnQ" />
      <concept id="1177327570013" name="jetbrains.mps.lang.actions.structure.QueryFunction_Substitute_Handler" flags="in" index="ucgPf" />
      <concept id="1177327666243" name="jetbrains.mps.lang.actions.structure.SimpleItemSubstitutePart" flags="ng" index="ucClh">
        <child id="1177327709106" name="handler" index="ucMEw" />
        <child id="1177336013307" name="matchingText" index="uGu3D" />
      </concept>
      <concept id="1177333529597" name="jetbrains.mps.lang.actions.structure.ConceptPart" flags="ng" index="uyZFJ">
        <reference id="1177333551023" name="concept" index="uz4UX" />
        <child id="1177333559040" name="part" index="uz6Si" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.actions.structure.QueryFunction_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1177497140107" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_sourceNode" flags="nn" index="Cj7Ep" />
      <concept id="1177498013932" name="jetbrains.mps.lang.actions.structure.SimpleSideTransformMenuPart" flags="ng" index="Cmt7Y">
        <child id="1177498166690" name="matchingText" index="Cn2iK" />
        <child id="1177498182537" name="descriptionText" index="Cn6ar" />
        <child id="1177498207384" name="handler" index="Cncma" />
      </concept>
      <concept id="1177498227294" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_Handler" flags="in" index="Cnhdc" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
      <concept id="1180111159572" name="jetbrains.mps.lang.actions.structure.IncludeRightTransformForNodePart" flags="ng" index="346O06">
        <child id="1180111489972" name="nodeBlock" index="3484EA" />
      </concept>
      <concept id="1154622616118" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstitutePreconditionFunction" flags="in" index="3kRJcU" />
      <concept id="1178537049112" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_NodeQuery" flags="in" index="1Ai3Oa" />
      <concept id="1112056943463" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActions" flags="ng" index="3FK_9_">
        <child id="1112058057696" name="actionsBuilder" index="3FOPby" />
      </concept>
      <concept id="1112058030570" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActionsBuilder" flags="ig" index="3FOIzC">
        <reference id="1112058088712" name="applicableConcept" index="3FOWKa" />
        <child id="1177324142645" name="part" index="tZc4B" />
      </concept>
      <concept id="1138079221458" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActionsBuilder" flags="ig" index="3UNGvq">
        <reference id="1138079221462" name="applicableConcept" index="3UNGvu" />
        <child id="1177442283389" name="part" index="_1QTJ" />
        <child id="1154622757656" name="precondition" index="3kShCk" />
      </concept>
      <concept id="1138079416598" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActions" flags="ng" index="3UOs0u">
        <child id="1138079416599" name="actionsBuilder" index="3UOs0v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="3FK_9_" id="5A$IBX$g$KA">
    <property role="TrG5h" value="StandardNode" />
    <node concept="3FOIzC" id="5A$IBX$g$KB" role="3FOPby">
      <ref role="3FOWKa" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      <node concept="tYCnQ" id="5A$IBX$gCvk" role="tZc4B">
        <ref role="uz4UX" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
        <node concept="ucClh" id="5A$IBX$gCF$" role="uz6Si">
          <node concept="ucgPf" id="5A$IBX$gCFA" role="ucMEw">
            <node concept="3clFbS" id="5A$IBX$gCFC" role="2VODD2">
              <node concept="3clFbF" id="5A$IBX$gM$I" role="3cqZAp">
                <node concept="2pJPEk" id="5A$IBX$gM$E" role="3clFbG">
                  <node concept="2pJPED" id="5A$IBX$gNtn" role="2pJPEn">
                    <ref role="2pJxaS" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                    <node concept="2pIpSj" id="5A$IBX$gNtq" role="2pJxcM">
                      <ref role="2pIpSl" to="5j4j:6$jH9oLnyAp" />
                      <node concept="36be1Y" id="5A$IBX$gNtr" role="2pJxcZ">
                        <node concept="2pJPED" id="5A$IBX$gNts" role="36be1Z">
                          <ref role="2pJxaS" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                          <node concept="2pJxcG" id="5A$IBX$gNtt" role="2pJxcM">
                            <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                            <node concept="3f7Wdw" id="5A$IBX$gNtu" role="2pJxcZ">
                              <ref role="3f7u_j" to="5j4j:6dP_abdUiHP" />
                              <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                            </node>
                          </node>
                          <node concept="2pIpSj" id="5A$IBX$gNtv" role="2pJxcM">
                            <ref role="2pIpSl" to="5j4j:6$jH9oLmYL8" />
                            <node concept="2pJPED" id="5A$IBX$gNtw" role="2pJxcZ">
                              <ref role="2pJxaS" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                              <node concept="2pJxcG" id="5A$IBX$gNtx" role="2pJxcM">
                                <ref role="2pJxcJ" to="5j4j:6$jH9oLmYKA" resolve="value" />
                                <node concept="3f7Wdw" id="5A$IBX$gNty" role="2pJxcZ">
                                  <ref role="3f7u_j" to="5j4j:5A$IBX$fPej" />
                                  <ref role="3f7vo2" to="5j4j:5A$IBX$fPei" resolve="StandardValue" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2pJPED" id="38jpnomYp6d" role="36be1Z">
                          <ref role="2pJxaS" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                          <node concept="2pJxcG" id="38jpnomYpcU" role="2pJxcM">
                            <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                            <node concept="3f7Wdw" id="38jpnomYpgj" role="2pJxcZ">
                              <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                              <ref role="3f7u_j" to="5j4j:25SygBrhNIm" />
                            </node>
                          </node>
                          <node concept="2pIpSj" id="38jpnomYpqA" role="2pJxcM">
                            <ref role="2pIpSl" to="5j4j:6$jH9oLmYL8" />
                            <node concept="2pJPED" id="38jpnomYpu3" role="2pJxcZ">
                              <ref role="2pJxaS" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
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
          <node concept="uGdhv" id="38jpnomYo4r" role="uGu3D">
            <node concept="3clFbS" id="38jpnomYo4s" role="2VODD2">
              <node concept="3clFbF" id="38jpnomYogI" role="3cqZAp">
                <node concept="3f7Wdw" id="38jpnomYogH" role="3clFbG">
                  <ref role="3f7vo2" to="5j4j:5A$IBX$fPei" resolve="StandardValue" />
                  <ref role="3f7u_j" to="5j4j:5A$IBX$fPej" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="3qvzBqWDkum">
    <property role="TrG5h" value="Node_add_parameter" />
    <node concept="3UNGvq" id="3qvzBqWDkva" role="3UOs0v">
      <ref role="3UNGvu" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      <node concept="3kRJcU" id="3qvzBqWDkvc" role="3kShCk">
        <node concept="3clFbS" id="3qvzBqWDkvd" role="2VODD2">
          <node concept="3clFbF" id="3qvzBqWDl3f" role="3cqZAp">
            <node concept="3fqX7Q" id="3qvzBqWDqCT" role="3clFbG">
              <node concept="2OqwBi" id="3qvzBqWDqCU" role="3fr31v">
                <node concept="2OqwBi" id="3qvzBqWDqCV" role="2Oq$k0">
                  <node concept="Cj7Ep" id="3qvzBqWDqCW" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3qvzBqWDqCX" role="2OqNvi">
                    <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
                  </node>
                </node>
                <node concept="2HwmR7" id="3qvzBqWDqCY" role="2OqNvi">
                  <node concept="1bVj0M" id="3qvzBqWDqCZ" role="23t8la">
                    <node concept="3clFbS" id="3qvzBqWDqD0" role="1bW5cS">
                      <node concept="3clFbF" id="3qvzBqWDqD1" role="3cqZAp">
                        <node concept="2OqwBi" id="3qvzBqWDqD2" role="3clFbG">
                          <node concept="3f7Wdw" id="3qvzBqWDqD3" role="2Oq$k0">
                            <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                            <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                          </node>
                          <node concept="liA8E" id="3qvzBqWDqD4" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="3qvzBqWDqD5" role="37wK5m">
                              <node concept="1PxgMI" id="3qvzBqWDqD6" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <ref role="1PxNhF" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                                <node concept="37vLTw" id="3qvzBqWDqD7" role="1PxMeX">
                                  <ref role="3cqZAo" node="3qvzBqWDqD9" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="3qvzBqWDqD8" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3qvzBqWDqD9" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3qvzBqWDqDa" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="3qvzBqWDrzM" role="_1QTJ">
        <ref role="uz4UX" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
        <node concept="Cmt7Y" id="3qvzBqWDrQA" role="uz6Si">
          <node concept="Cnhdc" id="3qvzBqWDrQB" role="Cncma">
            <node concept="3clFbS" id="3qvzBqWDrQC" role="2VODD2">
              <node concept="3cpWs8" id="3t7_2Fgv9e9" role="3cqZAp">
                <node concept="3cpWsn" id="3t7_2Fgv9ea" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3Tqbb2" id="3t7_2Fgv9e7" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                  <node concept="2pJPEk" id="3t7_2Fgv9eb" role="33vP2m">
                    <node concept="2pJPED" id="3t7_2Fgv9ec" role="2pJPEn">
                      <ref role="2pJxaS" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      <node concept="2pJxcG" id="3t7_2Fgv9ed" role="2pJxcM">
                        <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                        <node concept="3f7Wdw" id="3t7_2Fgv9ee" role="2pJxcZ">
                          <ref role="3f7vo2" to="5j4j:6dP_abdUiHO" resolve="StandardRole" />
                          <ref role="3f7u_j" to="5j4j:6MozwwzUqt8" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3qvzBqWDrTt" role="3cqZAp">
                <node concept="2OqwBi" id="3qvzBqWDtar" role="3clFbG">
                  <node concept="2OqwBi" id="3qvzBqWDrWC" role="2Oq$k0">
                    <node concept="Cj7Ep" id="3qvzBqWDrTs" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3qvzBqWDscA" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="3qvzBqWDv9h" role="2OqNvi">
                    <node concept="37vLTw" id="3t7_2Fgv9ef" role="25WWJ7">
                      <ref role="3cqZAo" node="3t7_2Fgv9ea" resolve="cr" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3t7_2Fgv9Iy" role="3cqZAp">
                <node concept="2OqwBi" id="3t7_2FgvaOu" role="3clFbG">
                  <node concept="2OqwBi" id="3t7_2Fgv9S3" role="2Oq$k0">
                    <node concept="37vLTw" id="3t7_2Fgv9Iw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3t7_2Fgv9ea" resolve="cr" />
                    </node>
                    <node concept="3Tsc0h" id="3t7_2Fgvac7" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="3t7_2Fgvd32" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:1OShD0HAY6y" resolve="List" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="3qvzBqWDrRW" role="Cn2iK">
            <property role="2h1i$Z" value="&lt;" />
          </node>
          <node concept="2h1dTh" id="3qvzBqWDrSQ" role="Cn6ar">
            <property role="2h1i$Z" value="add parameter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3UNGvq" id="3qvzBqWDGSD" role="3UOs0v">
      <ref role="3UNGvu" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
      <node concept="346O06" id="3qvzBqWDH3q" role="_1QTJ">
        <node concept="1Ai3Oa" id="3qvzBqWDH3r" role="3484EA">
          <node concept="3clFbS" id="3qvzBqWDH3s" role="2VODD2">
            <node concept="3clFbF" id="3qvzBqWDH4J" role="3cqZAp">
              <node concept="2OqwBi" id="3qvzBqWDH78" role="3clFbG">
                <node concept="Cj7Ep" id="3qvzBqWDH4I" role="2Oq$k0" />
                <node concept="1mfA1w" id="3qvzBqWDHn7" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3UNGvq" id="3qvzBqWDJLk" role="3UOs0v">
      <ref role="3UNGvu" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
      <node concept="346O06" id="3qvzBqWDJW2" role="_1QTJ">
        <node concept="1Ai3Oa" id="3qvzBqWDJW3" role="3484EA">
          <node concept="3clFbS" id="3qvzBqWDJW4" role="2VODD2">
            <node concept="3clFbF" id="3qvzBqWDJXn" role="3cqZAp">
              <node concept="2OqwBi" id="3qvzBqWDK1a" role="3clFbG">
                <node concept="Cj7Ep" id="3qvzBqWDJXm" role="2Oq$k0" />
                <node concept="1mfA1w" id="3qvzBqWDKdd" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="7E86$tKsKAH">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalVariable_addIndex" />
    <node concept="3UNGvq" id="7E86$tKsKAI" role="3UOs0v">
      <ref role="3UNGvu" to="5j4j:7E86$tKsHeX" resolve="AbstractLogicalVariable" />
      <node concept="3kRJcU" id="7E86$tKsLe$" role="3kShCk">
        <node concept="3clFbS" id="7E86$tKsLe_" role="2VODD2">
          <node concept="3clFbF" id="6p0DfM0n_Ot" role="3cqZAp">
            <node concept="2OqwBi" id="6p0DfM0nAQ2" role="3clFbG">
              <node concept="2OqwBi" id="6p0DfM0n_WA" role="2Oq$k0">
                <node concept="Cj7Ep" id="6p0DfM0n_Os" role="2Oq$k0" />
                <node concept="3TrEf2" id="7E86$tKsY3y" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" />
                </node>
              </node>
              <node concept="3w_OXm" id="6p0DfM0nB4j" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="7E86$tKsYzY" role="_1QTJ">
        <ref role="uz4UX" to="5j4j:7E86$tKsHeX" resolve="AbstractLogicalVariable" />
        <node concept="Cmt7Y" id="7E86$tKsZ1o" role="uz6Si">
          <node concept="Cnhdc" id="7E86$tKsZ1p" role="Cncma">
            <node concept="3clFbS" id="7E86$tKsZ1q" role="2VODD2">
              <node concept="3clFbF" id="7E86$tKsZmQ" role="3cqZAp">
                <node concept="2OqwBi" id="7E86$tKt04j" role="3clFbG">
                  <node concept="2OqwBi" id="7E86$tKsZpS" role="2Oq$k0">
                    <node concept="Cj7Ep" id="7E86$tKsZmP" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7E86$tKsZS4" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tKsJfa" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="7E86$tKt0pZ" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="7E86$tKt0zS" role="3cqZAp">
                <node concept="Cj7Ep" id="7E86$tKt0zQ" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="7E86$tKsZ4o" role="Cn2iK">
            <property role="2h1i$Z" value="[" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="7E86$tKtoxK">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalVariableDeclaration_addCardinality" />
    <node concept="3UNGvq" id="7E86$tKtoxL" role="3UOs0v">
      <ref role="3UNGvu" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
      <node concept="tYCnQ" id="7E86$tKtsvh" role="_1QTJ">
        <ref role="uz4UX" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
        <node concept="Cmt7Y" id="7E86$tKtsXI" role="uz6Si">
          <node concept="Cnhdc" id="7E86$tKtsXJ" role="Cncma">
            <node concept="3clFbS" id="7E86$tKtsXK" role="2VODD2">
              <node concept="3clFbF" id="7E86$tKtt3R" role="3cqZAp">
                <node concept="2OqwBi" id="7E86$tKttC$" role="3clFbG">
                  <node concept="2OqwBi" id="7E86$tKtt6T" role="2Oq$k0">
                    <node concept="Cj7Ep" id="7E86$tKtt3Q" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7E86$tKttqF" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="7E86$tKtu8E" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="7E86$tKtuhH" role="3cqZAp">
                <node concept="Cj7Ep" id="7E86$tKtuhF" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="7E86$tKtt1$" role="Cn2iK">
            <property role="2h1i$Z" value="[" />
          </node>
        </node>
      </node>
      <node concept="3kRJcU" id="7E86$tKtqyF" role="3kShCk">
        <node concept="3clFbS" id="7E86$tKtqyG" role="2VODD2">
          <node concept="3clFbF" id="7E86$tKtqHO" role="3cqZAp">
            <node concept="2OqwBi" id="7E86$tKtrE3" role="3clFbG">
              <node concept="2OqwBi" id="7E86$tKtqVy" role="2Oq$k0">
                <node concept="Cj7Ep" id="7E86$tKtqHN" role="2Oq$k0" />
                <node concept="3TrEf2" id="7E86$tKtriY" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:7E86$tKtioV" />
                </node>
              </node>
              <node concept="3w_OXm" id="7E86$tKts2l" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="5zfvpQ71PCs">
    <property role="3GE5qa" value="logical" />
    <property role="TrG5h" value="LogicalType_specify_dataType" />
    <node concept="3UNGvq" id="5zfvpQ71PCt" role="3UOs0v">
      <ref role="3UNGvu" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
      <node concept="3kRJcU" id="5zfvpQ71PCN" role="3kShCk">
        <node concept="3clFbS" id="5zfvpQ71PCO" role="2VODD2">
          <node concept="3clFbF" id="5zfvpQ71PHJ" role="3cqZAp">
            <node concept="2OqwBi" id="5zfvpQ71Qv3" role="3clFbG">
              <node concept="2OqwBi" id="5zfvpQ71PN0" role="2Oq$k0">
                <node concept="Cj7Ep" id="5zfvpQ71PHI" role="2Oq$k0" />
                <node concept="3TrEf2" id="5zfvpQ71QcK" role="2OqNvi">
                  <ref role="3Tt5mk" to="5j4j:5zfvpQ71CIE" />
                </node>
              </node>
              <node concept="3w_OXm" id="5zfvpQ71QNP" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="tYCnQ" id="5zfvpQ71QU8" role="_1QTJ">
        <ref role="uz4UX" to="5j4j:1mP5b6jNC0S" resolve="LogicalType" />
        <node concept="Cmt7Y" id="5zfvpQ71R6x" role="uz6Si">
          <node concept="Cnhdc" id="5zfvpQ71R6y" role="Cncma">
            <node concept="3clFbS" id="5zfvpQ71R6z" role="2VODD2">
              <node concept="3clFbF" id="5zfvpQ71R7y" role="3cqZAp">
                <node concept="2OqwBi" id="5zfvpQ71Rzs" role="3clFbG">
                  <node concept="2OqwBi" id="5zfvpQ71Ram" role="2Oq$k0">
                    <node concept="Cj7Ep" id="5zfvpQ71R7x" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5zfvpQ71Rlz" role="2OqNvi">
                      <ref role="3Tt5mk" to="5j4j:5zfvpQ71CIE" />
                    </node>
                  </node>
                  <node concept="2DeJnY" id="5zfvpQ71RR3" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="5zfvpQ71RVc" role="3cqZAp">
                <node concept="Cj7Ep" id="5zfvpQ71RVa" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="2h1dTh" id="5zfvpQ71R7c" role="Cn2iK">
            <property role="2h1i$Z" value="&lt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

