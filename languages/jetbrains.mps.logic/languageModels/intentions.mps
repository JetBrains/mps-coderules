<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2dd5d115-9996-497e-919a-307116853dd6(jetbrains.mps.logic.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="i51s" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel.generator.smodelAdapter(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240322627579" name="jetbrains.mps.lang.intentions.structure.IntentionParameter" flags="nn" index="38Zlrr" />
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryBlock" index="3dlsAV" />
      </concept>
      <concept id="1812109616120608865" name="jetbrains.mps.lang.intentions.structure.ParameterizedDescriptionBlock" flags="in" index="1jPt1T" />
      <concept id="1812109616120795373" name="jetbrains.mps.lang.intentions.structure.ParameterizedExecuteBlock" flags="in" index="1jPJzP" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1240930118027" name="jetbrains.mps.lang.smodel.structure.SEnumOperationInvocation" flags="nn" index="3HcIyF">
        <reference id="1240930118028" name="enumDeclaration" index="3HcIyG" />
        <child id="1240930317927" name="operation" index="3Hdvt7" />
      </concept>
      <concept id="1240930444980" name="jetbrains.mps.lang.smodel.structure.SEnum_MembersOperation" flags="ng" index="3HdYuk" />
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="3dkpOd" id="5A$IBX$aTJv">
    <property role="TrG5h" value="Node_ShowAs" />
    <property role="2ZfUl0" value="true" />
    <property role="3GE5qa" value="atom" />
    <ref role="2ZfgGC" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
    <node concept="1jPt1T" id="5A$IBX$aTJw" role="2ZfVej">
      <node concept="3clFbS" id="5A$IBX$aTJx" role="2VODD2">
        <node concept="3clFbF" id="5A$IBX$cXCh" role="3cqZAp">
          <node concept="3cpWs3" id="5A$IBX$cYKW" role="3clFbG">
            <node concept="2YIFZM" id="5A$IBX$dORw" role="3uHU7w">
              <ref role="37wK5l" to="i51s:~SEnumOperations.getEnumMemberName(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="getEnumMemberName" />
              <ref role="1Pybhc" to="i51s:~SEnumOperations" resolve="SEnumOperations" />
              <node concept="38Zlrr" id="5A$IBX$dP9W" role="37wK5m" />
            </node>
            <node concept="Xl_RD" id="5A$IBX$cXCg" role="3uHU7B">
              <property role="Xl_RC" value="Show as " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1jPJzP" id="5A$IBX$aTJy" role="2ZfgGD">
      <node concept="3clFbS" id="5A$IBX$aTJz" role="2VODD2">
        <node concept="3clFbF" id="5A$IBX$bDeq" role="3cqZAp">
          <node concept="2OqwBi" id="5A$IBX$dSLx" role="3clFbG">
            <node concept="2OqwBi" id="5A$IBX$bDfK" role="2Oq$k0">
              <node concept="2Sf5sV" id="5A$IBX$bDeo" role="2Oq$k0" />
              <node concept="3TrcHB" id="5A$IBX$bDwE" role="2OqNvi">
                <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
              </node>
            </node>
            <node concept="tyxLq" id="5A$IBX$dTAr" role="2OqNvi">
              <node concept="2YIFZM" id="5A$IBX$dXeV" role="tz02z">
                <ref role="37wK5l" to="i51s:~SEnumOperations.getEnumMemberValue(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="getEnumMemberValue" />
                <ref role="1Pybhc" to="i51s:~SEnumOperations" resolve="SEnumOperations" />
                <node concept="38Zlrr" id="5A$IBX$dXeW" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="5A$IBX$aUtm" role="3dlsAV">
      <node concept="3clFbS" id="5A$IBX$aUtn" role="2VODD2">
        <node concept="3cpWs8" id="6dP_abdV39i" role="3cqZAp">
          <node concept="3cpWsn" id="6dP_abdV39l" role="3cpWs9">
            <property role="TrG5h" value="members" />
            <node concept="2I9FWS" id="6dP_abdV39g" role="1tU5fm" />
            <node concept="3HcIyF" id="6dP_abdV55s" role="33vP2m">
              <ref role="3HcIyG" to="5j4j:6dP_abdQnLY" resolve="NodeKind" />
              <node concept="3HdYuk" id="6dP_abdV55t" role="3Hdvt7" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5A$IBX$b5vo" role="3cqZAp">
          <node concept="2OqwBi" id="5A$IBX$bx_S" role="3clFbG">
            <node concept="2OqwBi" id="5A$IBX$bkQc" role="2Oq$k0">
              <node concept="37vLTw" id="5A$IBX$b5vn" role="2Oq$k0">
                <ref role="3cqZAo" node="6dP_abdV39l" resolve="members" />
              </node>
              <node concept="3zZkjj" id="5A$IBX$dd5$" role="2OqNvi">
                <node concept="1bVj0M" id="5A$IBX$dd5A" role="23t8la">
                  <node concept="3clFbS" id="5A$IBX$dd5B" role="1bW5cS">
                    <node concept="3clFbF" id="5A$IBX$dd5C" role="3cqZAp">
                      <node concept="3fqX7Q" id="5A$IBX$dm$k" role="3clFbG">
                        <node concept="1eOMI4" id="2b4vMDcWFMz" role="3fr31v">
                          <node concept="17R0WA" id="2b4vMDcWFM$" role="1eOMHV">
                            <node concept="2OqwBi" id="2b4vMDcWFM_" role="3uHU7w">
                              <node concept="2Sf5sV" id="2b4vMDcWFMA" role="2Oq$k0" />
                              <node concept="3TrcHB" id="2b4vMDcWFMB" role="2OqNvi">
                                <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="2b4vMDcWFMC" role="3uHU7B">
                              <ref role="37wK5l" to="i51s:~SEnumOperations.getEnumMemberValue(org.jetbrains.mps.openapi.model.SNode):java.lang.String" resolve="getEnumMemberValue" />
                              <ref role="1Pybhc" to="i51s:~SEnumOperations" resolve="SEnumOperations" />
                              <node concept="37vLTw" id="2b4vMDcWFMD" role="37wK5m">
                                <ref role="3cqZAo" node="5A$IBX$dd5H" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5A$IBX$dd5H" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5A$IBX$dd5I" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="5A$IBX$byAP" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5A$IBX$dMZy" role="3ddBve" />
    </node>
  </node>
  <node concept="3dkpOd" id="6dMt3c55sJy">
    <property role="3GE5qa" value="atom" />
    <property role="TrG5h" value="Node_splice" />
    <ref role="2ZfgGC" to="5j4j:5lJXKARS0" resolve="Atom" />
    <node concept="2S6ZIM" id="6dMt3c55sJz" role="2ZfVej">
      <node concept="3clFbS" id="6dMt3c55sJ$" role="2VODD2">
        <node concept="3clFbF" id="6dMt3c55vc4" role="3cqZAp">
          <node concept="3cpWs3" id="6dMt3c55G_I" role="3clFbG">
            <node concept="2OqwBi" id="6dMt3c55GXR" role="3uHU7w">
              <node concept="38Zlrr" id="6dMt3c55GEV" role="2Oq$k0" />
              <node concept="3n3YKJ" id="6dMt3c55Msg" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="6dMt3c55vc3" role="3uHU7B">
              <property role="Xl_RC" value="Splice " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6dMt3c55sJ_" role="2ZfgGD">
      <node concept="3clFbS" id="6dMt3c55sJA" role="2VODD2">
        <node concept="3cpWs8" id="6dMt3c55Va_" role="3cqZAp">
          <node concept="3cpWsn" id="6dMt3c55VaA" role="3cpWs9">
            <property role="TrG5h" value="attr" />
            <node concept="3uibUv" id="6dMt3c55Va$" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="6dMt3c55VaB" role="33vP2m">
              <node concept="2JrnkZ" id="6dMt3c55VaC" role="2Oq$k0">
                <node concept="2OqwBi" id="6dMt3c55VaD" role="2JrQYb">
                  <node concept="2Sf5sV" id="6dMt3c55VaE" role="2Oq$k0" />
                  <node concept="I4A8Y" id="6dMt3c55VaF" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="6dMt3c55VaG" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.createNode(org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="createNode" />
                <node concept="10QFUN" id="6dMt3c55VaH" role="37wK5m">
                  <node concept="3uibUv" id="6dMt3c55VaI" role="10QFUM">
                    <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                  </node>
                  <node concept="38Zlrr" id="6dMt3c55VaJ" role="10QFUP" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6dMt3c55Vkg" role="3cqZAp">
          <node concept="2OqwBi" id="6dMt3c55VuT" role="3clFbG">
            <node concept="2OqwBi" id="6dMt3c55Vme" role="2Oq$k0">
              <node concept="2Sf5sV" id="6dMt3c55Vke" role="2Oq$k0" />
              <node concept="3CFZ6_" id="6dMt3c55Vs_" role="2OqNvi">
                <node concept="3CFYIy" id="6dMt3c55VsT" role="3CFYIz">
                  <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                </node>
              </node>
            </node>
            <node concept="2oxUTD" id="6dMt3c55VCu" role="2OqNvi">
              <node concept="37vLTw" id="6dMt3c55VD_" role="2oxUTC">
                <ref role="3cqZAo" node="6dMt3c55VaA" resolve="attr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="6dMt3c55sOG" role="3dlsAV">
      <node concept="3clFbS" id="6dMt3c55sOH" role="2VODD2">
        <node concept="3clFbF" id="6dMt3c55sXJ" role="3cqZAp">
          <node concept="2YIFZM" id="6dMt3c55th2" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="35c_gC" id="6dMt3c55LmV" role="37wK5m">
              <ref role="35c_gD" to="5j4j:dfChU1zo4B" resolve="Splice" />
            </node>
            <node concept="3bZ5Sz" id="6dMt3c55KEG" role="3PaCim" />
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="6dMt3c55JVR" role="3ddBve" />
    </node>
    <node concept="2SaL7w" id="6dMt3c55vrz" role="2ZfVeh">
      <node concept="3clFbS" id="6dMt3c55vr$" role="2VODD2">
        <node concept="3clFbF" id="6dMt3c55vQY" role="3cqZAp">
          <node concept="2OqwBi" id="6dMt3c55wev" role="3clFbG">
            <node concept="2OqwBi" id="6dMt3c55vUW" role="2Oq$k0">
              <node concept="2Sf5sV" id="6dMt3c55vQX" role="2Oq$k0" />
              <node concept="3CFZ6_" id="6dMt3c55w3t" role="2OqNvi">
                <node concept="3CFYIy" id="6dMt3c55w9_" role="3CFYIz">
                  <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                </node>
              </node>
            </node>
            <node concept="3w_OXm" id="6dMt3c55wzl" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="1_iD3HA2fYt">
    <property role="3GE5qa" value="atom" />
    <property role="TrG5h" value="Node_unsplice" />
    <ref role="2ZfgGC" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="2S6ZIM" id="1_iD3HA2fYu" role="2ZfVej">
      <node concept="3clFbS" id="1_iD3HA2fYv" role="2VODD2">
        <node concept="3clFbF" id="1_iD3HA2g1A" role="3cqZAp">
          <node concept="Xl_RD" id="1_iD3HA2g1_" role="3clFbG">
            <property role="Xl_RC" value="Unsplice" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1_iD3HA2fYw" role="2ZfgGD">
      <node concept="3clFbS" id="1_iD3HA2fYx" role="2VODD2">
        <node concept="3clFbF" id="1_iD3HA2gIc" role="3cqZAp">
          <node concept="2OqwBi" id="1_iD3HA2gQz" role="3clFbG">
            <node concept="1PgB_6" id="1_iD3HA2gXm" role="2OqNvi" />
            <node concept="2OqwBi" id="1_iD3HA2oDd" role="2Oq$k0">
              <node concept="2Sf5sV" id="1_iD3HA2oDe" role="2Oq$k0" />
              <node concept="2Xjw5R" id="1_iD3HA2oDf" role="2OqNvi">
                <node concept="1xMEDy" id="1_iD3HA2oDg" role="1xVPHs">
                  <node concept="chp4Y" id="1_iD3HA2oDh" role="ri$Ld">
                    <ref role="cht4Q" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
                <node concept="1xIGOp" id="1_iD3HA2oDi" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1_iD3HA2gfc" role="2ZfVeh">
      <node concept="3clFbS" id="1_iD3HA2gfd" role="2VODD2">
        <node concept="3clFbF" id="1_iD3HA2o6B" role="3cqZAp">
          <node concept="2OqwBi" id="1_iD3HA2op1" role="3clFbG">
            <node concept="2OqwBi" id="1_iD3HA2o8w" role="2Oq$k0">
              <node concept="2Sf5sV" id="1_iD3HA2o6_" role="2Oq$k0" />
              <node concept="2Xjw5R" id="1_iD3HA2od_" role="2OqNvi">
                <node concept="1xMEDy" id="1_iD3HA2odB" role="1xVPHs">
                  <node concept="chp4Y" id="1_iD3HA2ofV" role="ri$Ld">
                    <ref role="cht4Q" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
                <node concept="1xIGOp" id="1_iD3HA2okC" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="1_iD3HA2o$w" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

