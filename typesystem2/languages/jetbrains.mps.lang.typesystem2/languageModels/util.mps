<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.typesystem2.util)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.rule)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224575136086" name="jetbrains.mps.baseLanguage.structure.EnumValueOfExpression" flags="nn" index="unr1b">
        <reference id="1224575174120" name="enumClass" index="un$jP" />
        <child id="1224575157853" name="value" index="unwt0" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217889725928" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_SessionObjectAccess" flags="nn" index="2fSANN" />
      <concept id="1217889960776" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_UserObjectAccessBase" flags="nn" index="2fTw9j">
        <child id="1217890689512" name="userKey" index="2fWi3N" />
      </concept>
      <concept id="1216860049633" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextType" flags="in" index="1iwH7U" />
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
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1828409047608048457" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="nn" index="1N_AGu">
        <reference id="1828409047608048458" name="referentNode" index="1N_AGt" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="312cEu" id="746Sd4ujSKb">
    <property role="TrG5h" value="RuleTemplateUtil" />
    <node concept="2tJIrI" id="746Sd4ujSOi" role="jymVt" />
    <node concept="2YIFZL" id="746Sd4ujSOx" role="jymVt">
      <property role="TrG5h" value="templateMethodKind" />
      <node concept="37vLTG" id="746Sd4ujSR8" role="3clF46">
        <property role="TrG5h" value="bmd" />
        <node concept="3Tqbb2" id="746Sd4ujSRq" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="746Sd4ujSPT" role="3clF45">
        <ref role="3uigEE" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
      </node>
      <node concept="3Tm1VV" id="746Sd4ujSO$" role="1B3o_S" />
      <node concept="3clFbS" id="746Sd4ujSO_" role="3clF47">
        <node concept="3clFbJ" id="7IysFeA2Txw" role="3cqZAp">
          <node concept="3clFbS" id="7IysFeA2Txy" role="3clFbx">
            <node concept="3cpWs6" id="7IysFeA2Ul8" role="3cqZAp">
              <node concept="10Nm6u" id="7IysFeA2UPn" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7IysFeA2Ujt" role="3clFbw">
            <node concept="10Nm6u" id="7IysFeA2Ukn" role="3uHU7w" />
            <node concept="37vLTw" id="7IysFeA2U0w" role="3uHU7B">
              <ref role="3cqZAo" node="746Sd4ujSR8" resolve="bmd" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7IysFeA2Vl3" role="3cqZAp" />
        <node concept="3cpWs8" id="18kNIl1d0Ik" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1d0Il" role="3cpWs9">
            <property role="TrG5h" value="annDecl" />
            <node concept="3Tqbb2" id="18kNIl1d4Hd" role="1tU5fm" />
            <node concept="2YIFZM" id="18kNIl1dQPC" role="33vP2m">
              <ref role="1Pybhc" node="746Sd4ujSKb" resolve="RuleTemplateUtil" />
              <ref role="37wK5l" node="18kNIl1dQP$" resolve="annotationNode" />
              <node concept="37vLTw" id="18kNIl1dQPB" role="37wK5m">
                <ref role="3cqZAo" node="746Sd4ujSR8" resolve="bmd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18kNIl1dMWD" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dMWE" role="3cpWs9">
            <property role="TrG5h" value="valueMethod" />
            <node concept="3Tqbb2" id="18kNIl1dMWl" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiACnCB" resolve="AnnotationMethodDeclaration" />
            </node>
            <node concept="2OqwBi" id="18kNIl1dMWF" role="33vP2m">
              <node concept="2OqwBi" id="18kNIl1dMWG" role="2Oq$k0">
                <node concept="1PxgMI" id="18kNIl1dMWH" role="2Oq$k0">
                  <node concept="37vLTw" id="18kNIl1dMWI" role="1m5AlR">
                    <ref role="3cqZAo" node="18kNIl1d0Il" resolve="annDecl" />
                  </node>
                  <node concept="chp4Y" id="6fXjIfxgneX" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hiABswc" resolve="Annotation" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="18kNIl1dMWJ" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiACsvU" resolve="annotationMethod" />
                </node>
              </node>
              <node concept="1z4cxt" id="18kNIl1dMWK" role="2OqNvi">
                <node concept="1bVj0M" id="18kNIl1dMWL" role="23t8la">
                  <node concept="3clFbS" id="18kNIl1dMWM" role="1bW5cS">
                    <node concept="3clFbF" id="18kNIl1dMWN" role="3cqZAp">
                      <node concept="2OqwBi" id="18kNIl1dMWO" role="3clFbG">
                        <node concept="Xl_RD" id="18kNIl1dMWP" role="2Oq$k0">
                          <property role="Xl_RC" value="kind" />
                        </node>
                        <node concept="liA8E" id="18kNIl1dMWQ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="18kNIl1dMWR" role="37wK5m">
                            <node concept="37vLTw" id="18kNIl1dMWS" role="2Oq$k0">
                              <ref role="3cqZAo" node="18kNIl1dMWU" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="18kNIl1dMWT" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="18kNIl1dMWU" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="18kNIl1dMWV" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1dbEq" role="3cqZAp" />
        <node concept="3cpWs8" id="746Sd4ukaDz" role="3cqZAp">
          <node concept="3cpWsn" id="746Sd4ukaD$" role="3cpWs9">
            <property role="TrG5h" value="annInst" />
            <node concept="3Tqbb2" id="746Sd4ukaDg" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
            </node>
            <node concept="2OqwBi" id="746Sd4ukaD_" role="33vP2m">
              <node concept="2OqwBi" id="746Sd4ukaDA" role="2Oq$k0">
                <node concept="37vLTw" id="746Sd4ukaDB" role="2Oq$k0">
                  <ref role="3cqZAo" node="746Sd4ujSR8" resolve="bmd" />
                </node>
                <node concept="3Tsc0h" id="746Sd4ukaDC" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                </node>
              </node>
              <node concept="1z4cxt" id="746Sd4ukaDD" role="2OqNvi">
                <node concept="1bVj0M" id="746Sd4ukaDE" role="23t8la">
                  <node concept="3clFbS" id="746Sd4ukaDF" role="1bW5cS">
                    <node concept="3clFbF" id="746Sd4ukaDG" role="3cqZAp">
                      <node concept="3clFbC" id="746Sd4ukaDH" role="3clFbG">
                        <node concept="37vLTw" id="18kNIl1d0Iv" role="3uHU7w">
                          <ref role="3cqZAo" node="18kNIl1d0Il" resolve="annDecl" />
                        </node>
                        <node concept="2OqwBi" id="746Sd4ukaDR" role="3uHU7B">
                          <node concept="37vLTw" id="746Sd4ukaDS" role="2Oq$k0">
                            <ref role="3cqZAo" node="746Sd4ukaDU" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="746Sd4ukaDT" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="746Sd4ukaDU" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="746Sd4ukaDV" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="746Sd4ukaU2" role="3cqZAp">
          <node concept="3clFbS" id="746Sd4ukaU4" role="3clFbx">
            <node concept="3cpWs8" id="746Sd4ukhhH" role="3cqZAp">
              <node concept="3cpWsn" id="746Sd4ukhhI" role="3cpWs9">
                <property role="TrG5h" value="enumRef" />
                <node concept="3Tqbb2" id="746Sd4ukhhp" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                </node>
                <node concept="1PxgMI" id="746Sd4ukhhJ" role="33vP2m">
                  <node concept="2OqwBi" id="746Sd4ukhhK" role="1m5AlR">
                    <node concept="2OqwBi" id="746Sd4ukhhL" role="2Oq$k0">
                      <node concept="2OqwBi" id="746Sd4ukhhM" role="2Oq$k0">
                        <node concept="37vLTw" id="746Sd4ukhhN" role="2Oq$k0">
                          <ref role="3cqZAo" node="746Sd4ukaD$" resolve="annInst" />
                        </node>
                        <node concept="3Tsc0h" id="746Sd4ukhhO" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiB76_Z" resolve="value" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="746Sd4ukhhP" role="2OqNvi">
                        <node concept="1bVj0M" id="746Sd4ukhhQ" role="23t8la">
                          <node concept="3clFbS" id="746Sd4ukhhR" role="1bW5cS">
                            <node concept="3clFbF" id="746Sd4ukhhS" role="3cqZAp">
                              <node concept="3clFbC" id="18kNIl1cZZP" role="3clFbG">
                                <node concept="2OqwBi" id="746Sd4ukhhU" role="3uHU7B">
                                  <node concept="37vLTw" id="746Sd4ukhhV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="746Sd4ukhhZ" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="18kNIl1cZ5Q" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:hiB6Ojz" resolve="key" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="18kNIl1dOmw" role="3uHU7w">
                                  <ref role="3cqZAo" node="18kNIl1dMWE" resolve="valueMethod" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="746Sd4ukhhZ" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="746Sd4ukhi0" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="746Sd4ukhi1" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hiB70Z4" resolve="value" />
                    </node>
                  </node>
                  <node concept="chp4Y" id="6fXjIfxgneZ" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="746Sd4ukhx4" role="3cqZAp" />
            <node concept="3clFbJ" id="746Sd4uks9j" role="3cqZAp">
              <node concept="3clFbS" id="746Sd4uks9l" role="3clFbx">
                <node concept="3cpWs6" id="746Sd4ukrxL" role="3cqZAp">
                  <node concept="unr1b" id="746Sd4ukrGP" role="3cqZAk">
                    <ref role="un$jP" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                    <node concept="2OqwBi" id="746Sd4ukrGQ" role="unwt0">
                      <node concept="2OqwBi" id="746Sd4ukrGR" role="2Oq$k0">
                        <node concept="37vLTw" id="746Sd4ukrGS" role="2Oq$k0">
                          <ref role="3cqZAo" node="746Sd4ukhhI" resolve="enumRef" />
                        </node>
                        <node concept="3TrEf2" id="746Sd4ukrGT" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fKRm8Ja" resolve="enumConstantDeclaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="746Sd4ukrGU" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="746Sd4uksx8" role="3clFbw">
                <node concept="10Nm6u" id="746Sd4uksxY" role="3uHU7w" />
                <node concept="37vLTw" id="746Sd4uksoh" role="3uHU7B">
                  <ref role="3cqZAo" node="746Sd4ukhhI" resolve="enumRef" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="746Sd4ukb4o" role="3clFbw">
            <node concept="10Nm6u" id="746Sd4ukb5b" role="3uHU7w" />
            <node concept="37vLTw" id="746Sd4ukaV$" role="3uHU7B">
              <ref role="3cqZAo" node="746Sd4ukaD$" resolve="annInst" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="746Sd4uk5od" role="3cqZAp" />
        <node concept="3clFbF" id="746Sd4uk5rx" role="3cqZAp">
          <node concept="10Nm6u" id="746Sd4uk5rv" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="746Sd4ujSPF" role="jymVt" />
    <node concept="2YIFZL" id="18kNIl18Csa" role="jymVt">
      <property role="TrG5h" value="isGenerated" />
      <node concept="37vLTG" id="18kNIl18Cvh" role="3clF46">
        <property role="TrG5h" value="bmd" />
        <node concept="3Tqbb2" id="18kNIl18Cvi" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="10P_77" id="18kNIl18DqS" role="3clF45" />
      <node concept="3Tm1VV" id="18kNIl18Csd" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl18Cse" role="3clF47">
        <node concept="3clFbJ" id="7IysFeA2VQb" role="3cqZAp">
          <node concept="3clFbS" id="7IysFeA2VQc" role="3clFbx">
            <node concept="3cpWs6" id="7IysFeA2VQd" role="3cqZAp">
              <node concept="3clFbT" id="7IysFeA2WnV" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7IysFeA2VQf" role="3clFbw">
            <node concept="10Nm6u" id="7IysFeA2VQg" role="3uHU7w" />
            <node concept="37vLTw" id="7IysFeA2VQh" role="3uHU7B">
              <ref role="3cqZAo" node="18kNIl18Cvh" resolve="bmd" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl18Cwi" role="3cqZAp" />
        <node concept="3cpWs8" id="18kNIl1dUkr" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dUks" role="3cpWs9">
            <property role="TrG5h" value="annDecl" />
            <node concept="3Tqbb2" id="18kNIl1dUkt" role="1tU5fm" />
            <node concept="2YIFZM" id="18kNIl1dUku" role="33vP2m">
              <ref role="37wK5l" node="18kNIl1dQP$" resolve="annotationNode" />
              <ref role="1Pybhc" node="746Sd4ujSKb" resolve="RuleTemplateUtil" />
              <node concept="37vLTw" id="18kNIl1dUkv" role="37wK5m">
                <ref role="3cqZAo" node="18kNIl18Cvh" resolve="bmd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18kNIl1dUkw" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dUkx" role="3cpWs9">
            <property role="TrG5h" value="generatedMethod" />
            <node concept="3Tqbb2" id="18kNIl1dUky" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiACnCB" resolve="AnnotationMethodDeclaration" />
            </node>
            <node concept="2OqwBi" id="18kNIl1dUkz" role="33vP2m">
              <node concept="2OqwBi" id="18kNIl1dUk$" role="2Oq$k0">
                <node concept="1PxgMI" id="18kNIl1dUk_" role="2Oq$k0">
                  <node concept="37vLTw" id="18kNIl1dUkA" role="1m5AlR">
                    <ref role="3cqZAo" node="18kNIl1dUks" resolve="annDecl" />
                  </node>
                  <node concept="chp4Y" id="6fXjIfxgneG" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hiABswc" resolve="Annotation" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="18kNIl1dUkB" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiACsvU" resolve="annotationMethod" />
                </node>
              </node>
              <node concept="1z4cxt" id="18kNIl1dUkC" role="2OqNvi">
                <node concept="1bVj0M" id="18kNIl1dUkD" role="23t8la">
                  <node concept="3clFbS" id="18kNIl1dUkE" role="1bW5cS">
                    <node concept="3clFbF" id="18kNIl1dUkF" role="3cqZAp">
                      <node concept="2OqwBi" id="18kNIl1dUkG" role="3clFbG">
                        <node concept="Xl_RD" id="18kNIl1dUkH" role="2Oq$k0">
                          <property role="Xl_RC" value="generated" />
                        </node>
                        <node concept="liA8E" id="18kNIl1dUkI" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="18kNIl1dUkJ" role="37wK5m">
                            <node concept="37vLTw" id="18kNIl1dUkK" role="2Oq$k0">
                              <ref role="3cqZAo" node="18kNIl1dUkM" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="18kNIl1dUkL" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="18kNIl1dUkM" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="18kNIl1dUkN" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1dYRN" role="3cqZAp" />
        <node concept="3cpWs8" id="18kNIl18Cxr" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl18Cxu" role="3cpWs9">
            <property role="TrG5h" value="annInst" />
            <node concept="3Tqbb2" id="18kNIl18Cxv" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
            </node>
            <node concept="2OqwBi" id="18kNIl18Cxw" role="33vP2m">
              <node concept="2OqwBi" id="18kNIl18Cxx" role="2Oq$k0">
                <node concept="37vLTw" id="18kNIl18Cxy" role="2Oq$k0">
                  <ref role="3cqZAo" node="18kNIl18Cvh" resolve="bmd" />
                </node>
                <node concept="3Tsc0h" id="18kNIl18Cxz" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                </node>
              </node>
              <node concept="1z4cxt" id="18kNIl18Cx$" role="2OqNvi">
                <node concept="1bVj0M" id="18kNIl18Cx_" role="23t8la">
                  <node concept="3clFbS" id="18kNIl18CxA" role="1bW5cS">
                    <node concept="3clFbF" id="18kNIl18CxB" role="3cqZAp">
                      <node concept="3clFbC" id="18kNIl18CxC" role="3clFbG">
                        <node concept="37vLTw" id="18kNIl1dZZf" role="3uHU7w">
                          <ref role="3cqZAo" node="18kNIl1dUks" resolve="annDecl" />
                        </node>
                        <node concept="2OqwBi" id="18kNIl18CxM" role="3uHU7B">
                          <node concept="37vLTw" id="18kNIl18CxN" role="2Oq$k0">
                            <ref role="3cqZAo" node="18kNIl18CxP" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="18kNIl18CxO" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="18kNIl18CxP" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="18kNIl18CxQ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1dUkO" role="3cqZAp" />
        <node concept="3clFbJ" id="18kNIl1cXPX" role="3cqZAp">
          <node concept="3clFbS" id="18kNIl1cXPY" role="3clFbx">
            <node concept="3cpWs8" id="18kNIl1e4pi" role="3cqZAp">
              <node concept="3cpWsn" id="18kNIl1e4pj" role="3cpWs9">
                <property role="TrG5h" value="generated" />
                <node concept="3Tqbb2" id="18kNIl1e4ph" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
                </node>
                <node concept="2OqwBi" id="18kNIl1e4pk" role="33vP2m">
                  <node concept="2OqwBi" id="18kNIl1e4pl" role="2Oq$k0">
                    <node concept="37vLTw" id="18kNIl1e4pm" role="2Oq$k0">
                      <ref role="3cqZAo" node="18kNIl18Cxu" resolve="annInst" />
                    </node>
                    <node concept="3Tsc0h" id="18kNIl1e4pn" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:hiB76_Z" resolve="value" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="18kNIl1e4po" role="2OqNvi">
                    <node concept="1bVj0M" id="18kNIl1e4pp" role="23t8la">
                      <node concept="3clFbS" id="18kNIl1e4pq" role="1bW5cS">
                        <node concept="3clFbF" id="18kNIl1e4pr" role="3cqZAp">
                          <node concept="3clFbC" id="18kNIl1e4ps" role="3clFbG">
                            <node concept="37vLTw" id="18kNIl1e4pt" role="3uHU7w">
                              <ref role="3cqZAo" node="18kNIl1dUkx" resolve="generatedMethod" />
                            </node>
                            <node concept="2OqwBi" id="18kNIl1e4pu" role="3uHU7B">
                              <node concept="37vLTw" id="18kNIl1e4pv" role="2Oq$k0">
                                <ref role="3cqZAo" node="18kNIl1e4px" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="18kNIl1e4pw" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:hiB6Ojz" resolve="key" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="18kNIl1e4px" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="18kNIl1e4py" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="18kNIl1e1qe" role="3cqZAp" />
            <node concept="3cpWs6" id="18kNIl1e6DC" role="3cqZAp">
              <node concept="1Wc70l" id="18kNIl1eaG8" role="3cqZAk">
                <node concept="2YIFZM" id="18kNIl1edvc" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String):java.lang.Boolean" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                  <node concept="2YIFZM" id="18kNIl1ejJ5" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.valueOf(boolean):java.lang.String" resolve="valueOf" />
                    <node concept="2OqwBi" id="18kNIl1h0L1" role="37wK5m">
                      <node concept="1PxgMI" id="18kNIl1gZvI" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="2OqwBi" id="18kNIl1ef8l" role="1m5AlR">
                          <node concept="37vLTw" id="18kNIl1eeeA" role="2Oq$k0">
                            <ref role="3cqZAo" node="18kNIl1e4pj" resolve="generated" />
                          </node>
                          <node concept="3TrEf2" id="18kNIl1efLb" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hiB70Z4" resolve="value" />
                          </node>
                        </node>
                        <node concept="chp4Y" id="6fXjIfxgneY" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:fzclF81" resolve="BooleanConstant" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="18kNIl1h1vy" role="2OqNvi">
                        <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="18kNIl1e8QG" role="3uHU7B">
                  <node concept="37vLTw" id="18kNIl1e81f" role="2Oq$k0">
                    <ref role="3cqZAo" node="18kNIl1e4pj" resolve="generated" />
                  </node>
                  <node concept="3x8VRR" id="18kNIl1e9H$" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="18kNIl1cXQy" role="3clFbw">
            <node concept="10Nm6u" id="18kNIl1cXQz" role="3uHU7w" />
            <node concept="37vLTw" id="18kNIl1cXQ$" role="3uHU7B">
              <ref role="3cqZAo" node="18kNIl18Cxu" resolve="annInst" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1cXMS" role="3cqZAp" />
        <node concept="3cpWs6" id="18kNIl18CVt" role="3cqZAp">
          <node concept="3clFbT" id="18kNIl1eldc" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="746Sd4ujSOn" role="jymVt" />
    <node concept="2YIFZL" id="18kNIl1dQP$" role="jymVt">
      <property role="TrG5h" value="annotationNode" />
      <node concept="3Tm6S6" id="18kNIl1dQP_" role="1B3o_S" />
      <node concept="3Tqbb2" id="18kNIl1dQPA" role="3clF45" />
      <node concept="37vLTG" id="18kNIl1dQPv" role="3clF46">
        <property role="TrG5h" value="bmd" />
        <node concept="3Tqbb2" id="18kNIl1dQPw" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="18kNIl1dQP1" role="3clF47">
        <node concept="3cpWs8" id="18kNIl1dQP4" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dQP5" role="3cpWs9">
            <property role="TrG5h" value="annDecl" />
            <node concept="3Tqbb2" id="18kNIl1dQP6" role="1tU5fm" />
            <node concept="2OqwBi" id="18kNIl1dQP7" role="33vP2m">
              <node concept="1N_AGu" id="18kNIl1dQP8" role="2Oq$k0">
                <ref role="1N_AGt" to="i348:4OKkcnfu_Am" resolve="RuleTemplateMethod" />
              </node>
              <node concept="liA8E" id="18kNIl1dQP9" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                <node concept="2OqwBi" id="18kNIl1dQPa" role="37wK5m">
                  <node concept="2JrnkZ" id="18kNIl1dQPb" role="2Oq$k0">
                    <node concept="2OqwBi" id="18kNIl1dQPc" role="2JrQYb">
                      <node concept="37vLTw" id="18kNIl1dQPx" role="2Oq$k0">
                        <ref role="3cqZAo" node="18kNIl1dQPv" resolve="bmd" />
                      </node>
                      <node concept="I4A8Y" id="18kNIl1dQPe" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="liA8E" id="18kNIl1dQPf" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="18kNIl1dQPg" role="3cqZAp">
          <node concept="3clFbS" id="18kNIl1dQPh" role="3clFbx">
            <node concept="YS8fn" id="18kNIl1dQPi" role="3cqZAp">
              <node concept="2ShNRf" id="18kNIl1dQPj" role="YScLw">
                <node concept="1pGfFk" id="18kNIl1dQPk" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="2YIFZM" id="18kNIl1dQPl" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <node concept="Xl_RD" id="18kNIl1dQPm" role="37wK5m">
                      <property role="Xl_RC" value="could not resolve %s" />
                    </node>
                    <node concept="2OqwBi" id="18kNIl1dQPn" role="37wK5m">
                      <node concept="1N_AGu" id="18kNIl1dQPo" role="2Oq$k0">
                        <ref role="1N_AGt" to="i348:4OKkcnfu_Am" resolve="RuleTemplateMethod" />
                      </node>
                      <node concept="liA8E" id="18kNIl1dQPp" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="18kNIl1dQPq" role="3clFbw">
            <node concept="37vLTw" id="18kNIl1dQPr" role="2Oq$k0">
              <ref role="3cqZAo" node="18kNIl1dQP5" resolve="annDecl" />
            </node>
            <node concept="3w_OXm" id="18kNIl1dQPs" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="18kNIl1dQPt" role="3cqZAp">
          <node concept="37vLTw" id="18kNIl1dQPu" role="3cqZAk">
            <ref role="3cqZAo" node="18kNIl1dQP5" resolve="annDecl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18kNIl1dTsv" role="jymVt" />
    <node concept="3Tm1VV" id="746Sd4ujSKc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7kTeLbPCBf4">
    <property role="TrG5h" value="GeneratorUtil" />
    <node concept="2tJIrI" id="7kTeLbPCBf$" role="jymVt" />
    <node concept="2YIFZL" id="7kTeLbPRIQL" role="jymVt">
      <property role="TrG5h" value="initExtractingAnchor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="7kTeLbPRJo3" role="3clF46">
        <property role="TrG5h" value="genContext" />
        <node concept="1iwH7U" id="7kTeLbPRJo4" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7kTeLbPRIix" role="3clF47">
        <node concept="3clFbF" id="4QPCta0URFs" role="3cqZAp">
          <node concept="37vLTI" id="4QPCta0URFt" role="3clFbG">
            <node concept="2ShNRf" id="4QPCta0URFu" role="37vLTx">
              <node concept="1pGfFk" id="4QPCta0URFv" role="2ShVmc">
                <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
                <node concept="17QB3L" id="4QPCta0URFw" role="1pMfVU" />
                <node concept="3Tqbb2" id="4QPCta0URFx" role="1pMfVU" />
              </node>
            </node>
            <node concept="2OqwBi" id="4QPCta0URFy" role="37vLTJ">
              <node concept="37vLTw" id="7kTeLbPRJtB" role="2Oq$k0">
                <ref role="3cqZAo" node="7kTeLbPRJo3" resolve="genContext" />
              </node>
              <node concept="2fSANN" id="4QPCta0URF$" role="2OqNvi">
                <node concept="Xl_RD" id="4QPCta0URF_" role="2fWi3N">
                  <property role="Xl_RC" value="DEPENDENCIES" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7kTeLbPRIiv" role="3clF45" />
      <node concept="3Tm1VV" id="7kTeLbPRIiw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7kTeLbPRkme" role="jymVt" />
    <node concept="2YIFZL" id="7kTeLbPRzzF" role="jymVt">
      <property role="TrG5h" value="setExtractingAnchor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7kTeLbPRkoC" role="3clF47">
        <node concept="3SKdUt" id="4QPCta11Xin" role="3cqZAp">
          <node concept="3SKdUq" id="4QPCta11Xio" role="3SKWNk">
            <property role="3SKdUp" value="set dependencies processing flag" />
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta11Xir" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta11Xis" role="3cpWs9">
            <property role="TrG5h" value="map" />
            <node concept="3uibUv" id="4QPCta11Xit" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
              <node concept="3uibUv" id="7kTeLbPYPv7" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="3uibUv" id="7kTeLbPYPv8" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="10QFUN" id="4QPCta11Xiw" role="33vP2m">
              <node concept="3uibUv" id="4QPCta11Xix" role="10QFUM">
                <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
                <node concept="3uibUv" id="7kTeLbPYOqV" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
                <node concept="3uibUv" id="7kTeLbPYP7C" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
              <node concept="2OqwBi" id="4QPCta11Xi$" role="10QFUP">
                <node concept="37vLTw" id="7kTeLbPRqxt" role="2Oq$k0">
                  <ref role="3cqZAo" node="7kTeLbPRkUY" resolve="genContext" />
                </node>
                <node concept="2fSANN" id="4QPCta11XiA" role="2OqNvi">
                  <node concept="Xl_RD" id="4QPCta11XiB" role="2fWi3N">
                    <property role="Xl_RC" value="DEPENDENCIES" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QPCta11XiC" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta11XiD" role="3clFbG">
            <node concept="37vLTw" id="4QPCta11XiE" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta11Xis" resolve="map" />
            </node>
            <node concept="liA8E" id="4QPCta11XiF" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="2OqwBi" id="7kTeLbPYomE" role="37wK5m">
                <node concept="2JrnkZ" id="7kTeLbPYomF" role="2Oq$k0">
                  <node concept="37vLTw" id="7kTeLbPYomG" role="2JrQYb">
                    <ref role="3cqZAo" node="7kTeLbPRkUW" resolve="origNode" />
                  </node>
                </node>
                <node concept="liA8E" id="7kTeLbPYomH" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                </node>
              </node>
              <node concept="2OqwBi" id="7kTeLbPYV07" role="37wK5m">
                <node concept="2JrnkZ" id="7kTeLbPYV08" role="2Oq$k0">
                  <node concept="37vLTw" id="7kTeLbPYVeF" role="2JrQYb">
                    <ref role="3cqZAo" node="7kTeLbPYQXS" resolve="copiedNode" />
                  </node>
                </node>
                <node concept="liA8E" id="7kTeLbPYV0a" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPRkUW" role="3clF46">
        <property role="TrG5h" value="origNode" />
        <node concept="3Tqbb2" id="7kTeLbPRkUX" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPYQXS" role="3clF46">
        <property role="TrG5h" value="copiedNode" />
        <node concept="3Tqbb2" id="7kTeLbPYQXT" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPRkUY" role="3clF46">
        <property role="TrG5h" value="genContext" />
        <node concept="1iwH7U" id="7kTeLbPRkUZ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7kTeLbPRkoA" role="3clF45" />
      <node concept="3Tm1VV" id="7kTeLbPRkoB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7kTeLbPCBfA" role="jymVt" />
    <node concept="2YIFZL" id="7kTeLbPRzSO" role="jymVt">
      <property role="TrG5h" value="clearExtractingAnchor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7kTeLbPRs1r" role="3clF47">
        <node concept="3SKdUt" id="7kTeLbPRs1s" role="3cqZAp">
          <node concept="3SKdUq" id="7kTeLbPRs1t" role="3SKWNk">
            <property role="3SKdUp" value="clear dependencies processing flag" />
          </node>
        </node>
        <node concept="3cpWs8" id="7kTeLbPRs1w" role="3cqZAp">
          <node concept="3cpWsn" id="7kTeLbPRs1x" role="3cpWs9">
            <property role="TrG5h" value="trackingMap" />
            <node concept="3uibUv" id="7kTeLbPRs1y" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
              <node concept="3uibUv" id="7kTeLbPZvZg" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="3uibUv" id="7kTeLbPZvZh" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="10QFUN" id="7kTeLbPRs1_" role="33vP2m">
              <node concept="3uibUv" id="7kTeLbPRs1A" role="10QFUM">
                <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
                <node concept="3uibUv" id="7kTeLbPZwaB" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
                <node concept="3uibUv" id="7kTeLbPZwaC" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
              <node concept="2OqwBi" id="7kTeLbPRs1D" role="10QFUP">
                <node concept="37vLTw" id="7kTeLbPRs1E" role="2Oq$k0">
                  <ref role="3cqZAo" node="7kTeLbPRs1n" resolve="genContext" />
                </node>
                <node concept="2fSANN" id="7kTeLbPRs1F" role="2OqNvi">
                  <node concept="Xl_RD" id="7kTeLbPRs1G" role="2fWi3N">
                    <property role="Xl_RC" value="DEPENDENCIES" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7kTeLbPRs1H" role="3cqZAp">
          <node concept="2OqwBi" id="7kTeLbPRs1I" role="3clFbG">
            <node concept="37vLTw" id="7kTeLbPRs1J" role="2Oq$k0">
              <ref role="3cqZAo" node="7kTeLbPRs1x" resolve="trackingMap" />
            </node>
            <node concept="liA8E" id="7kTeLbPRs1K" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object):java.lang.Object" resolve="remove" />
              <node concept="2OqwBi" id="7kTeLbPZq3f" role="37wK5m">
                <node concept="2JrnkZ" id="7kTeLbPZq3g" role="2Oq$k0">
                  <node concept="37vLTw" id="7kTeLbPZq3h" role="2JrQYb">
                    <ref role="3cqZAo" node="7kTeLbPRs1l" resolve="origNode" />
                  </node>
                </node>
                <node concept="liA8E" id="7kTeLbPZq3i" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPRs1l" role="3clF46">
        <property role="TrG5h" value="origNode" />
        <node concept="3Tqbb2" id="7kTeLbPRs1m" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPRs1n" role="3clF46">
        <property role="TrG5h" value="genContext" />
        <node concept="1iwH7U" id="7kTeLbPRs1o" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7kTeLbPRs1p" role="3clF45" />
      <node concept="3Tm1VV" id="7kTeLbPRs1q" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7kTeLbPRs1j" role="jymVt" />
    <node concept="2YIFZL" id="7kTeLbPCKgJ" role="jymVt">
      <property role="TrG5h" value="isExtractingAnchor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7kTeLbPCBfW" role="3clF47">
        <node concept="3cpWs8" id="4QPCta139LV" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta139LW" role="3cpWs9">
            <property role="TrG5h" value="rule" />
            <node concept="3Tqbb2" id="4QPCta139LR" role="1tU5fm">
              <ref role="ehGHo" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
            </node>
            <node concept="2OqwBi" id="4QPCta139LX" role="33vP2m">
              <node concept="37vLTw" id="7kTeLbPCBSl" role="2Oq$k0">
                <ref role="3cqZAo" node="7kTeLbPCBhY" resolve="node" />
              </node>
              <node concept="2Xjw5R" id="4QPCta139LZ" role="2OqNvi">
                <node concept="1xMEDy" id="4QPCta139M0" role="1xVPHs">
                  <node concept="chp4Y" id="7kTeLbPZvuw" role="ri$Ld">
                    <ref role="cht4Q" to="wq2x:6p0DfM0a3d3" resolve="RuleComponent" />
                  </node>
                </node>
                <node concept="1xIGOp" id="7kTeLbPUnyT" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4QPCta13aTx" role="3cqZAp">
          <node concept="3clFbS" id="4QPCta13aTz" role="3clFbx">
            <node concept="3cpWs6" id="4QPCta13cxf" role="3cqZAp">
              <node concept="3clFbT" id="4QPCta13cZB" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4QPCta13bU$" role="3clFbw">
            <node concept="10Nm6u" id="4QPCta13ci8" role="3uHU7w" />
            <node concept="37vLTw" id="4QPCta13b97" role="3uHU7B">
              <ref role="3cqZAo" node="4QPCta139LW" resolve="rule" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7kTeLbPCBks" role="3cqZAp" />
        <node concept="3SKdUt" id="4QPCta0VmzZ" role="3cqZAp">
          <node concept="3SKdUq" id="4QPCta0Vm$0" role="3SKWNk">
            <property role="3SKdUp" value="check dependencies processing flag" />
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta0Vm$3" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta0Vm$4" role="3cpWs9">
            <property role="TrG5h" value="trackingMap" />
            <node concept="3uibUv" id="4QPCta0Vm$5" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
              <node concept="3uibUv" id="7kTeLbPZwdJ" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="3uibUv" id="7kTeLbPZwdK" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="10QFUN" id="4QPCta0Vm$8" role="33vP2m">
              <node concept="3uibUv" id="4QPCta0Vm$9" role="10QFUM">
                <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
                <node concept="3uibUv" id="7kTeLbPZwrk" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
                <node concept="3uibUv" id="7kTeLbPZwrl" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
              <node concept="2OqwBi" id="4QPCta0Vm$c" role="10QFUP">
                <node concept="37vLTw" id="7kTeLbPCCvy" role="2Oq$k0">
                  <ref role="3cqZAo" node="7kTeLbPCBiF" resolve="genContext" />
                </node>
                <node concept="2fSANN" id="4QPCta0Vm$e" role="2OqNvi">
                  <node concept="Xl_RD" id="4QPCta0Vm$f" role="2fWi3N">
                    <property role="Xl_RC" value="DEPENDENCIES" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4QPCta13d_$" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta13d__" role="3cqZAk">
            <node concept="37vLTw" id="4QPCta13d_A" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta0Vm$4" resolve="trackingMap" />
            </node>
            <node concept="liA8E" id="4QPCta13d_B" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
              <node concept="2OqwBi" id="7kTeLbPZy0r" role="37wK5m">
                <node concept="2JrnkZ" id="7kTeLbPZxDB" role="2Oq$k0">
                  <node concept="37vLTw" id="7kTeLbPZwE0" role="2JrQYb">
                    <ref role="3cqZAo" node="4QPCta139LW" resolve="rule" />
                  </node>
                </node>
                <node concept="liA8E" id="7kTeLbPZyrr" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPCBhY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7kTeLbPCBii" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7kTeLbPCBiF" role="3clF46">
        <property role="TrG5h" value="genContext" />
        <node concept="1iwH7U" id="7kTeLbPCBk3" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="7kTeLbPCBgj" role="3clF45" />
      <node concept="3Tm1VV" id="7kTeLbPCBfV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7kTeLbPCBfH" role="jymVt" />
    <node concept="3Tm1VV" id="7kTeLbPCBf5" role="1B3o_S" />
  </node>
</model>

