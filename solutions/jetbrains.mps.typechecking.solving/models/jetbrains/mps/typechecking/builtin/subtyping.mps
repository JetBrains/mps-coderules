<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:716ee8d5-e209-473b-a7f4-704982de9b92(jetbrains.mps.typechecking.builtin.subtyping)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="c87j" ref="r:db5d11a3-3c62-4a1b-ace3-b983df6a66b4(jetbrains.mps.type.inference.common)" />
    <import index="zt4h" ref="r:e67bd817-e7ca-40c9-9f79-95fad12bb615(jetbrains.mps.type.inference.baseLanguage)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="mqgp" ref="r:df98e090-e1cf-4263-9336-dc1ffd952995(jetbrains.mps.typechecking.builtin.conversion)" />
    <import index="zeuh" ref="r:f694851a-c984-440d-bb3c-f151b8dba5af(jetbrains.mps.typechecking.builtin.containment)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="2GO7tyJBZ6P">
    <property role="TrG5h" value="Resolution" />
    <node concept="2tJIrI" id="2GO7tyJBZbY" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJBZdQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isSuccessful" />
      <node concept="10P_77" id="2GO7tyJBZfN" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJBZdT" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJBZdU" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJBZc3" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJC1tL" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="premises" />
      <node concept="3uibUv" id="2GO7tyJC1Av" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="2GO7tyJCHnH" role="11_B2D">
          <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2GO7tyJC1tO" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJC1tP" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJC1rJ" role="jymVt" />
    <node concept="3HP615" id="2GO7tyJCHif" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Constraint" />
      <node concept="2tJIrI" id="2GO7tyJCHpb" role="jymVt" />
      <node concept="3clFb_" id="2GO7tyJCTXQ" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="ask" />
        <node concept="10P_77" id="2GO7tyJCW7d" role="3clF45" />
        <node concept="3Tm1VV" id="2GO7tyJCTXT" role="1B3o_S" />
        <node concept="3clFbS" id="2GO7tyJCTXU" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="2GO7tyJCW4o" role="jymVt" />
      <node concept="3clFb_" id="2GO7tyJCVYZ" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="tell" />
        <node concept="3cqZAl" id="2GO7tyJCVZ0" role="3clF45" />
        <node concept="3Tm1VV" id="2GO7tyJCVZ1" role="1B3o_S" />
        <node concept="3clFbS" id="2GO7tyJCVZ2" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="2GO7tyJCHpd" role="jymVt" />
      <node concept="3Tm1VV" id="2GO7tyJCHig" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJCGJA" role="jymVt" />
    <node concept="3Tm1VV" id="2GO7tyJBZ6Q" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2GO7tyJCjZh">
    <property role="TrG5h" value="SubtypePromotion" />
    <node concept="2tJIrI" id="2GO7tyJCjZi" role="jymVt" />
    <node concept="2YIFZL" id="2GO7tyJCjZj" role="jymVt">
      <property role="TrG5h" value="promote" />
      <node concept="37vLTG" id="2GO7tyJNxPa" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="2GO7tyJNyoJ" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJCjZk" role="3clF46">
        <property role="TrG5h" value="subtype" />
        <node concept="3uibUv" id="2GO7tyJCjZl" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJCjZm" role="3clF46">
        <property role="TrG5h" value="supertype" />
        <node concept="3uibUv" id="2GO7tyJCjZn" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3uibUv" id="2GO7tyJClv5" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJBZ6P" resolve="Resolution" />
      </node>
      <node concept="3Tm1VV" id="2GO7tyJCjZp" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJCjZq" role="3clF47">
        <node concept="3cpWs8" id="2GO7tyJDYU9" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJDYUa" role="3cpWs9">
            <property role="TrG5h" value="subDomain" />
            <node concept="17QB3L" id="2GO7tyJDYU7" role="1tU5fm" />
            <node concept="2YIFZM" id="2GO7tyJDYUb" role="33vP2m">
              <ref role="37wK5l" to="c87j:6eERcOeIRQn" resolve="domain" />
              <ref role="1Pybhc" to="c87j:6eERcOeIRMC" resolve="Types" />
              <node concept="37vLTw" id="2GO7tyJDYUc" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJCjZk" resolve="subtype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2GO7tyJDZF7" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJDZF8" role="3cpWs9">
            <property role="TrG5h" value="superDomain" />
            <node concept="17QB3L" id="2GO7tyJDZF9" role="1tU5fm" />
            <node concept="2YIFZM" id="2GO7tyJDZFa" role="33vP2m">
              <ref role="37wK5l" to="c87j:6eERcOeIRQn" resolve="domain" />
              <ref role="1Pybhc" to="c87j:6eERcOeIRMC" resolve="Types" />
              <node concept="37vLTw" id="2GO7tyJE0fi" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJCjZm" resolve="supertype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJE0Pp" role="3cqZAp" />
        <node concept="3SKdUt" id="2GO7tyJWzcX" role="3cqZAp">
          <node concept="3SKdUq" id="2GO7tyJWzkd" role="3SKWNk">
            <property role="3SKdUp" value="TODO: pluggable extensibility required!" />
          </node>
        </node>
        <node concept="3clFbJ" id="2GO7tyJE0RP" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJE0RS" role="3clFbx">
            <node concept="3cpWs8" id="2GO7tyJNAPo" role="3cqZAp">
              <node concept="3cpWsn" id="2GO7tyJNAPp" role="3cpWs9">
                <property role="TrG5h" value="promotion" />
                <node concept="3uibUv" id="2GO7tyJNAPl" role="1tU5fm">
                  <ref role="3uigEE" node="2GO7tyJCjZh" resolve="SubtypePromotion" />
                </node>
                <node concept="2ShNRf" id="2GO7tyJNAPq" role="33vP2m">
                  <node concept="1pGfFk" id="2GO7tyJNAPr" role="2ShVmc">
                    <ref role="37wK5l" node="2GO7tyJMdQi" resolve="SubtypePromotion" />
                    <node concept="37vLTw" id="2GO7tyJNAPs" role="37wK5m">
                      <ref role="3cqZAo" node="2GO7tyJNxPa" resolve="scope" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2GO7tyJE6Y7" role="3cqZAp">
              <node concept="2OqwBi" id="2GO7tyJNBiM" role="3cqZAk">
                <node concept="37vLTw" id="2GO7tyJNBdh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyJNAPp" resolve="promotion" />
                </node>
                <node concept="liA8E" id="2GO7tyJNByQ" role="2OqNvi">
                  <ref role="37wK5l" node="2GO7tyJNrqM" resolve="promoteReference" />
                  <node concept="37vLTw" id="2GO7tyJEc29" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJCjZk" resolve="subtype" />
                  </node>
                  <node concept="37vLTw" id="2GO7tyJEh2t" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJCjZm" resolve="supertype" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2GO7tyJE30Z" role="3clFbw">
            <node concept="2OqwBi" id="2GO7tyJE3uK" role="3uHU7w">
              <node concept="Xl_RD" id="2GO7tyJE327" role="2Oq$k0">
                <property role="Xl_RC" value="reference" />
              </node>
              <node concept="liA8E" id="2GO7tyJE4l9" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="2GO7tyJE4$k" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJDZF8" resolve="superDomain" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2GO7tyJE20F" role="3uHU7B">
              <node concept="Xl_RD" id="2GO7tyJE1El" role="2Oq$k0">
                <property role="Xl_RC" value="reference" />
              </node>
              <node concept="liA8E" id="2GO7tyJE2O6" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="2GO7tyJE2QP" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJDYUa" resolve="subDomain" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJE4Vo" role="3cqZAp" />
        <node concept="3clFbF" id="2GO7tyJE4Fe" role="3cqZAp">
          <node concept="37vLTw" id="2GO7tyJE4Fc" role="3clFbG">
            <ref role="3cqZAo" node="2GO7tyJDSaH" resolve="FAILED" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJE61u" role="jymVt" />
    <node concept="3clFbW" id="2GO7tyJMdQi" role="jymVt">
      <node concept="37vLTG" id="2GO7tyJMeXU" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="2GO7tyJMfbU" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJMdQk" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJMdQl" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJMdQm" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJNuvl" role="3cqZAp">
          <node concept="37vLTI" id="2GO7tyJNuvn" role="3clFbG">
            <node concept="2OqwBi" id="2GO7tyJNuvr" role="37vLTJ">
              <node concept="Xjq3P" id="2GO7tyJNuvu" role="2Oq$k0" />
              <node concept="2OwXpG" id="2GO7tyJNuvq" role="2OqNvi">
                <ref role="2Oxat5" node="2GO7tyJNuvh" resolve="solver" />
              </node>
            </node>
            <node concept="37vLTw" id="2GO7tyJNuvv" role="37vLTx">
              <ref role="3cqZAo" node="2GO7tyJMeXU" resolve="solver" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJMcGa" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJNrqM" role="jymVt">
      <property role="TrG5h" value="promoteReference" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2GO7tyJE6eQ" role="3clF47">
        <node concept="3clFbJ" id="2GO7tyJEiMw" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJEiMz" role="3clFbx">
            <node concept="3cpWs6" id="2GO7tyJEm6N" role="3cqZAp">
              <node concept="37vLTw" id="2GO7tyJEmFo" role="3cqZAk">
                <ref role="3cqZAo" node="2GO7tyJDSaH" resolve="FAILED" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2GO7tyJEkeF" role="3clFbw">
            <node concept="3fqX7Q" id="2GO7tyJEkuy" role="3uHU7w">
              <node concept="2YIFZM" id="2GO7tyJElzU" role="3fr31v">
                <ref role="37wK5l" to="zt4h:3JgCwkqzU36" resolve="isClassifierType" />
                <ref role="1Pybhc" to="zt4h:dkhrtsO46W" resolve="ClassifierTypes" />
                <node concept="37vLTw" id="2GO7tyJElPk" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJE6zw" resolve="supertype" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2GO7tyJEj7z" role="3uHU7B">
              <node concept="2YIFZM" id="2GO7tyJEjB3" role="3fr31v">
                <ref role="37wK5l" to="zt4h:3JgCwkqzU36" resolve="isClassifierType" />
                <ref role="1Pybhc" to="zt4h:dkhrtsO46W" resolve="ClassifierTypes" />
                <node concept="37vLTw" id="2GO7tyJEjRF" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJE6x9" resolve="subtype" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJEiyT" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyJEp24" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJEp25" role="3cpWs9">
            <property role="TrG5h" value="subclass" />
            <node concept="17QB3L" id="2GO7tyJEp22" role="1tU5fm" />
            <node concept="2YIFZM" id="2GO7tyJEp26" role="33vP2m">
              <ref role="37wK5l" to="zt4h:3JgCwkqzUdq" resolve="classifier" />
              <ref role="1Pybhc" to="zt4h:dkhrtsO46W" resolve="ClassifierTypes" />
              <node concept="37vLTw" id="2GO7tyJEp27" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJE6x9" resolve="subtype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2GO7tyJErpe" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJErpf" role="3cpWs9">
            <property role="TrG5h" value="superclass" />
            <node concept="17QB3L" id="2GO7tyJErpb" role="1tU5fm" />
            <node concept="2YIFZM" id="2GO7tyJErpg" role="33vP2m">
              <ref role="37wK5l" to="zt4h:3JgCwkqzUdq" resolve="classifier" />
              <ref role="1Pybhc" to="zt4h:dkhrtsO46W" resolve="ClassifierTypes" />
              <node concept="37vLTw" id="2GO7tyJErph" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJE6zw" resolve="supertype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PpdwMfPxpf" role="3cqZAp" />
        <node concept="3clFbJ" id="2GO7tyJEtd6" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJEtd9" role="3clFbx">
            <node concept="3cpWs6" id="2GO7tyJEuTV" role="3cqZAp">
              <node concept="37vLTw" id="2GO7tyJEvwk" role="3cqZAk">
                <ref role="3cqZAo" node="2GO7tyJDSaH" resolve="FAILED" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2GO7tyJEt$Y" role="3clFbw">
            <node concept="2YIFZM" id="2GO7tyJEu8J" role="3fr31v">
              <ref role="37wK5l" to="zt4h:cnjBgYFMYe" resolve="isSubclassOf" />
              <ref role="1Pybhc" to="zt4h:3JgCwkq$25v" resolve="SubclassingTable" />
              <node concept="37vLTw" id="2GO7tyJEupv" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJEp25" resolve="subclass" />
              </node>
              <node concept="37vLTw" id="2GO7tyJEuDK" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJErpf" resolve="superclass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJEvSf" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyJEAOy" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJEAOz" role="3cpWs9">
            <property role="TrG5h" value="promotedSubtype" />
            <node concept="3uibUv" id="2GO7tyJEAOq" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="2GO7tyJEAO$" role="33vP2m">
              <ref role="37wK5l" to="zt4h:cnjBgYHLlL" resolve="toSupertype" />
              <ref role="1Pybhc" to="zt4h:3JgCwkq$25v" resolve="SubclassingTable" />
              <node concept="37vLTw" id="2GO7tyJEAO_" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJE6x9" resolve="subtype" />
              </node>
              <node concept="37vLTw" id="2GO7tyJEAOA" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJErpf" resolve="superclass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJELJN" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyKbv4T" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyKbv4U" role="3cpWs9">
            <property role="TrG5h" value="subParams" />
            <node concept="3uibUv" id="2GO7tyKbv4C" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~List" resolve="List" />
              <node concept="3qUE_q" id="2GO7tyKbv4P" role="11_B2D">
                <node concept="3uibUv" id="2GO7tyKbv4Q" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                  <node concept="3qTvmN" id="2GO7tyKbv4R" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2GO7tyKbv4V" role="33vP2m">
              <ref role="37wK5l" to="zt4h:2GO7tyKbd00" resolve="parameter" />
              <ref role="1Pybhc" to="zt4h:dkhrtsO46W" resolve="ClassifierTypes" />
              <node concept="37vLTw" id="2GO7tyKbv4W" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJEAOz" resolve="promotedSubtype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2GO7tyKbzdr" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyKbzds" role="3cpWs9">
            <property role="TrG5h" value="superParams" />
            <node concept="3uibUv" id="2GO7tyKbzdt" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~List" resolve="List" />
              <node concept="3qUE_q" id="2GO7tyKbzdu" role="11_B2D">
                <node concept="3uibUv" id="2GO7tyKbzdv" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                  <node concept="3qTvmN" id="2GO7tyKbzdw" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2GO7tyKbzdx" role="33vP2m">
              <ref role="37wK5l" to="zt4h:2GO7tyKbd00" resolve="parameter" />
              <ref role="1Pybhc" to="zt4h:dkhrtsO46W" resolve="ClassifierTypes" />
              <node concept="37vLTw" id="2GO7tyKb$NM" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJE6zw" resolve="supertype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyKbw_M" role="3cqZAp" />
        <node concept="3clFbJ" id="2GO7tyJFSDE" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJFSDH" role="3clFbx">
            <node concept="3SKdUt" id="2GO7tyJFWAA" role="3cqZAp">
              <node concept="3SKdUq" id="2GO7tyJFWEQ" role="3SKWNk">
                <property role="3SKdUp" value="TODO: raw classes" />
              </node>
            </node>
            <node concept="YS8fn" id="2GO7tyJFWPe" role="3cqZAp">
              <node concept="2ShNRf" id="2GO7tyJFWSZ" role="YScLw">
                <node concept="1pGfFk" id="2GO7tyJFXb9" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2GO7tyJFUYF" role="3clFbw">
            <node concept="2OqwBi" id="2GO7tyJFVXT" role="3uHU7w">
              <node concept="37vLTw" id="2GO7tyJFVwk" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbzds" resolve="superParams" />
              </node>
              <node concept="liA8E" id="2GO7tyJFWqI" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="2GO7tyJFTV_" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyJFTjF" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbv4U" resolve="subParams" />
              </node>
              <node concept="liA8E" id="2GO7tyJFUKa" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJFS0W" role="3cqZAp" />
        <node concept="3clFbJ" id="2GO7tyJFYa0" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJFYa3" role="3clFbx">
            <node concept="3cpWs6" id="2GO7tyJG2w5" role="3cqZAp">
              <node concept="1rXfSq" id="2GO7tyJG3dh" role="3cqZAk">
                <ref role="37wK5l" node="2GO7tyJEHVE" resolve="success" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2GO7tyJG13I" role="3clFbw">
            <node concept="2OqwBi" id="2GO7tyJG1Vn" role="3uHU7w">
              <node concept="37vLTw" id="2GO7tyJG1Fu" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbzds" resolve="superParams" />
              </node>
              <node concept="liA8E" id="2GO7tyJG2oS" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
            <node concept="2OqwBi" id="2GO7tyJG0rB" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyJG0rC" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbv4U" resolve="subParams" />
              </node>
              <node concept="liA8E" id="2GO7tyJG0rD" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJFS2u" role="3cqZAp" />
        <node concept="3SKdUt" id="2GO7tyJED6c" role="3cqZAp">
          <node concept="3SKdUq" id="2GO7tyJEDgX" role="3SKWNk">
            <property role="3SKdUp" value="process parameters and ensure constraint: foreach i. sub.param[i] &lt;= super.param[i]" />
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJHd$x" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyJFIID" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJFIIE" role="3cpWs9">
            <property role="TrG5h" value="subIt" />
            <node concept="3uibUv" id="2GO7tyJFIHB" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
              <node concept="3qUE_q" id="2GO7tyJFIHO" role="11_B2D">
                <node concept="3uibUv" id="2GO7tyJFIHP" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                  <node concept="3qTvmN" id="2GO7tyJFIHQ" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2GO7tyJFIIF" role="33vP2m">
              <node concept="37vLTw" id="2GO7tyJFIIH" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbv4U" resolve="subParams" />
              </node>
              <node concept="liA8E" id="2GO7tyJFIIJ" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~List.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2GO7tyJFPr5" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJFPr6" role="3cpWs9">
            <property role="TrG5h" value="superIt" />
            <node concept="3uibUv" id="2GO7tyJFPqO" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
              <node concept="3qUE_q" id="2GO7tyJFPr1" role="11_B2D">
                <node concept="3uibUv" id="2GO7tyJFPr2" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                  <node concept="3qTvmN" id="2GO7tyJFPr3" role="11_B2D" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2GO7tyJFPr7" role="33vP2m">
              <node concept="37vLTw" id="2GO7tyJFPr9" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyKbzds" resolve="superParams" />
              </node>
              <node concept="liA8E" id="2GO7tyJFPrb" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~List.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJFQMD" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyJGohu" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJGohv" role="3cpWs9">
            <property role="TrG5h" value="cts" />
            <node concept="3uibUv" id="2GO7tyJGohs" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~List" resolve="List" />
              <node concept="3uibUv" id="2GO7tyJGpgP" role="11_B2D">
                <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
              </node>
            </node>
            <node concept="2ShNRf" id="2GO7tyJGpLp" role="33vP2m">
              <node concept="1pGfFk" id="2GO7tyJGJUO" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2GO7tyJGKY3" role="1pMfVU">
                  <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="2GO7tyJG8tI" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJG8tK" role="2LFqv$">
            <node concept="3clFbF" id="2GO7tyJGLvq" role="3cqZAp">
              <node concept="2OqwBi" id="2GO7tyJGLS9" role="3clFbG">
                <node concept="37vLTw" id="2GO7tyJGLvo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyJGohv" resolve="cts" />
                </node>
                <node concept="liA8E" id="2GO7tyJGNyt" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="1rXfSq" id="2GO7tyJNtMT" role="37wK5m">
                    <ref role="37wK5l" node="2GO7tyJNpUt" resolve="contains" />
                    <node concept="2YIFZM" id="2GO7tyJGXYU" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="2GO7tyJH0Lj" role="37wK5m">
                        <node concept="2OqwBi" id="2GO7tyJGfUj" role="2Oq$k0">
                          <node concept="37vLTw" id="2GO7tyJGfKB" role="2Oq$k0">
                            <ref role="3cqZAo" node="2GO7tyJFIIE" resolve="subIt" />
                          </node>
                          <node concept="liA8E" id="2GO7tyJGgJv" role="2OqNvi">
                            <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2GO7tyJH1Fd" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:1bm7a6EXvNI" resolve="copyRecursively" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="2GO7tyJGZ4j" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="2GO7tyJGZxZ" role="37wK5m">
                        <node concept="2OqwBi" id="2GO7tyJGhkr" role="2Oq$k0">
                          <node concept="37vLTw" id="2GO7tyJGh5p" role="2Oq$k0">
                            <ref role="3cqZAo" node="2GO7tyJFPr6" resolve="superIt" />
                          </node>
                          <node concept="liA8E" id="2GO7tyJGie9" role="2OqNvi">
                            <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2GO7tyJH0p2" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:1bm7a6EXvNI" resolve="copyRecursively" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2GO7tyJGbhe" role="2$JKZa">
            <node concept="2OqwBi" id="2GO7tyJGc0K" role="3uHU7w">
              <node concept="37vLTw" id="2GO7tyJGbRH" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJFPr6" resolve="superIt" />
              </node>
              <node concept="liA8E" id="2GO7tyJGcvP" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
              </node>
            </node>
            <node concept="2OqwBi" id="2GO7tyJG9JL" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyJG9bt" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJFIIE" resolve="subIt" />
              </node>
              <node concept="liA8E" id="2GO7tyJGb2k" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyKc3Ed" role="3cqZAp" />
        <node concept="3clFbF" id="2GO7tyJHfBr" role="3cqZAp">
          <node concept="1rXfSq" id="2GO7tyJHfBp" role="3clFbG">
            <ref role="37wK5l" node="2GO7tyJGls_" resolve="success" />
            <node concept="37vLTw" id="2GO7tyJHgBR" role="37wK5m">
              <ref role="3cqZAo" node="2GO7tyJGohv" resolve="cts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJE6x9" role="3clF46">
        <property role="TrG5h" value="subtype" />
        <node concept="3uibUv" id="2GO7tyJE6x8" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJE6zw" role="3clF46">
        <property role="TrG5h" value="supertype" />
        <node concept="3uibUv" id="2GO7tyJE6$K" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3uibUv" id="2GO7tyJE6oJ" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJBZ6P" resolve="Resolution" />
      </node>
      <node concept="3Tm1VV" id="2GO7tyJNIAR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJEHtA" role="jymVt" />
    <node concept="2tJIrI" id="2GO7tyJMcyz" role="jymVt" />
    <node concept="2YIFZL" id="2GO7tyJEHVE" role="jymVt">
      <property role="TrG5h" value="success" />
      <node concept="37vLTG" id="2GO7tyJEIiA" role="3clF46">
        <property role="TrG5h" value="premises" />
        <node concept="8X2XB" id="2GO7tyJEJ4k" role="1tU5fm">
          <node concept="3uibUv" id="2GO7tyJEIWw" role="8Xvag">
            <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2GO7tyJG45s" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJBZ6P" resolve="Resolution" />
      </node>
      <node concept="3Tm6S6" id="2GO7tyJEIba" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJEHVI" role="3clF47">
        <node concept="3cpWs8" id="2GO7tyJEJtD" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJEJtE" role="3cpWs9">
            <property role="TrG5h" value="constraints" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2GO7tyJEJtx" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="2GO7tyJEJt$" role="11_B2D">
                <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
              </node>
            </node>
            <node concept="2YIFZM" id="2GO7tyJEKuE" role="33vP2m">
              <ref role="37wK5l" to="k7g3:~Collections.unmodifiableCollection(java.util.Collection):java.util.Collection" resolve="unmodifiableCollection" />
              <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
              <node concept="2YIFZM" id="2GO7tyJEJtF" role="37wK5m">
                <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
                <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                <node concept="37vLTw" id="2GO7tyJEJtG" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJEIiA" resolve="premises" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2GO7tyJGlsE" role="3cqZAp">
          <node concept="2YIFZM" id="2GO7tyJGlsD" role="3cqZAk">
            <ref role="1Pybhc" node="2GO7tyJCjZh" resolve="SubtypePromotion" />
            <ref role="37wK5l" node="2GO7tyJGls_" resolve="success" />
            <node concept="37vLTw" id="2GO7tyJGlsC" role="37wK5m">
              <ref role="3cqZAo" node="2GO7tyJEJtE" resolve="constraints" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJGmJG" role="jymVt" />
    <node concept="2YIFZL" id="2GO7tyJGls_" role="jymVt">
      <property role="TrG5h" value="success" />
      <node concept="3Tm6S6" id="2GO7tyJGlsA" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJGlsB" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJBZ6P" resolve="Resolution" />
      </node>
      <node concept="37vLTG" id="2GO7tyJGlsv" role="3clF46">
        <property role="TrG5h" value="constraints" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2GO7tyJGlsw" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="2GO7tyJGlsx" role="11_B2D">
            <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJGlsc" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJGlsd" role="3cqZAp">
          <node concept="2ShNRf" id="2GO7tyJGlse" role="3clFbG">
            <node concept="YeOm9" id="2GO7tyJGlsf" role="2ShVmc">
              <node concept="1Y3b0j" id="2GO7tyJGlsg" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="2GO7tyJBZ6P" resolve="Resolution" />
                <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="2GO7tyJGlsh" role="1B3o_S" />
                <node concept="3clFb_" id="2GO7tyJGlsi" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="isSuccessful" />
                  <node concept="10P_77" id="2GO7tyJGlsj" role="3clF45" />
                  <node concept="3Tm1VV" id="2GO7tyJGlsk" role="1B3o_S" />
                  <node concept="3clFbS" id="2GO7tyJGlsl" role="3clF47">
                    <node concept="3clFbF" id="2GO7tyJGlsm" role="3cqZAp">
                      <node concept="3clFbT" id="2GO7tyJGlsn" role="3clFbG">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFb_" id="2GO7tyJGlso" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="premises" />
                  <node concept="3uibUv" id="2GO7tyJGlsp" role="3clF45">
                    <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
                    <node concept="3uibUv" id="2GO7tyJGlsq" role="11_B2D">
                      <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="2GO7tyJGlsr" role="1B3o_S" />
                  <node concept="3clFbS" id="2GO7tyJGlss" role="3clF47">
                    <node concept="3clFbF" id="2GO7tyJGlst" role="3cqZAp">
                      <node concept="37vLTw" id="2GO7tyJGlsy" role="3clFbG">
                        <ref role="3cqZAo" node="2GO7tyJGlsv" resolve="constraints" />
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
    <node concept="2tJIrI" id="2GO7tyJCjZr" role="jymVt" />
    <node concept="Wx3nA" id="2GO7tyJDSaH" role="jymVt">
      <property role="TrG5h" value="FAILED" />
      <node concept="3Tm6S6" id="2GO7tyJDSaJ" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJDSdK" role="1tU5fm">
        <ref role="3uigEE" node="2GO7tyJBZ6P" resolve="Resolution" />
      </node>
      <node concept="2ShNRf" id="2GO7tyJDShX" role="33vP2m">
        <node concept="YeOm9" id="2GO7tyJDSto" role="2ShVmc">
          <node concept="1Y3b0j" id="2GO7tyJDStr" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="2GO7tyJBZ6P" resolve="Resolution" />
            <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="2GO7tyJDSts" role="1B3o_S" />
            <node concept="3clFb_" id="2GO7tyJDStt" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="isSuccessful" />
              <node concept="10P_77" id="2GO7tyJDStu" role="3clF45" />
              <node concept="3Tm1VV" id="2GO7tyJDStv" role="1B3o_S" />
              <node concept="3clFbS" id="2GO7tyJDStx" role="3clF47">
                <node concept="3clFbF" id="2GO7tyJDS$A" role="3cqZAp">
                  <node concept="3clFbT" id="2GO7tyJDS$_" role="3clFbG">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="2GO7tyJDStz" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="premises" />
              <node concept="3uibUv" id="2GO7tyJDSt$" role="3clF45">
                <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
                <node concept="3uibUv" id="2GO7tyJDSt_" role="11_B2D">
                  <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
                </node>
              </node>
              <node concept="3Tm1VV" id="2GO7tyJDStA" role="1B3o_S" />
              <node concept="3clFbS" id="2GO7tyJDStC" role="3clF47">
                <node concept="3clFbF" id="2GO7tyJDSIJ" role="3cqZAp">
                  <node concept="2YIFZM" id="2GO7tyJDSK9" role="3clFbG">
                    <ref role="37wK5l" to="k7g3:~Collections.emptyList():java.util.List" resolve="emptyList" />
                    <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJNdrK" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJNpUt" role="jymVt">
      <property role="TrG5h" value="contains" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2GO7tyJD6nP" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJD71S" role="3cqZAp">
          <node concept="2ShNRf" id="2GO7tyJD71Q" role="3clFbG">
            <node concept="1pGfFk" id="2GO7tyJD7o_" role="2ShVmc">
              <ref role="37wK5l" node="2GO7tyJCL7T" resolve="SubtypePromotion.Containment" />
              <node concept="37vLTw" id="2GO7tyJD7r$" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJD6Jh" resolve="from" />
              </node>
              <node concept="37vLTw" id="2GO7tyJD7ud" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJD6SP" resolve="to" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJD6Jh" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3uibUv" id="2GO7tyJD6NW" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJD6SP" role="3clF46">
        <property role="TrG5h" value="to" />
        <node concept="3uibUv" id="2GO7tyJD6WK" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3uibUv" id="2GO7tyJD6$c" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
      </node>
      <node concept="3Tm1VV" id="2GO7tyJD6nO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJD6f_" role="jymVt" />
    <node concept="312cEu" id="2GO7tyJCKUQ" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Containment" />
      <node concept="2tJIrI" id="2GO7tyJCL4R" role="jymVt" />
      <node concept="3clFbW" id="2GO7tyJCL7T" role="jymVt">
        <node concept="37vLTG" id="2GO7tyJCL94" role="3clF46">
          <property role="TrG5h" value="from" />
          <node concept="3uibUv" id="2GO7tyJCLaS" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
          </node>
        </node>
        <node concept="37vLTG" id="2GO7tyJCLdz" role="3clF46">
          <property role="TrG5h" value="to" />
          <node concept="3uibUv" id="2GO7tyJCLfq" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
          </node>
        </node>
        <node concept="3cqZAl" id="2GO7tyJCL7V" role="3clF45" />
        <node concept="3Tm1VV" id="2GO7tyJCL7W" role="1B3o_S" />
        <node concept="3clFbS" id="2GO7tyJCL7X" role="3clF47">
          <node concept="3clFbF" id="2GO7tyJCLj3" role="3cqZAp">
            <node concept="37vLTI" id="2GO7tyJCLj5" role="3clFbG">
              <node concept="2OqwBi" id="2GO7tyJCLj9" role="37vLTJ">
                <node concept="Xjq3P" id="2GO7tyJCLjc" role="2Oq$k0" />
                <node concept="2OwXpG" id="2GO7tyJCLj8" role="2OqNvi">
                  <ref role="2Oxat5" node="2GO7tyJCLiZ" resolve="from" />
                </node>
              </node>
              <node concept="37vLTw" id="2GO7tyJCLjd" role="37vLTx">
                <ref role="3cqZAo" node="2GO7tyJCL94" resolve="from" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2GO7tyJCLll" role="3cqZAp">
            <node concept="37vLTI" id="2GO7tyJCLln" role="3clFbG">
              <node concept="2OqwBi" id="2GO7tyJCLlr" role="37vLTJ">
                <node concept="Xjq3P" id="2GO7tyJCLlu" role="2Oq$k0" />
                <node concept="2OwXpG" id="2GO7tyJCLlq" role="2OqNvi">
                  <ref role="2Oxat5" node="2GO7tyJCLlh" resolve="to" />
                </node>
              </node>
              <node concept="37vLTw" id="2GO7tyJCLlv" role="37vLTx">
                <ref role="3cqZAo" node="2GO7tyJCLdz" resolve="to" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2GO7tyJCLpo" role="jymVt" />
      <node concept="3clFb_" id="2GO7tyJD2V8" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="10P_77" id="2GO7tyJD2V9" role="3clF45" />
        <node concept="3Tm1VV" id="2GO7tyJD2Va" role="1B3o_S" />
        <node concept="3clFbS" id="2GO7tyJD2Vc" role="3clF47">
          <node concept="3clFbF" id="2GO7tyJD5iB" role="3cqZAp">
            <node concept="2OqwBi" id="2GO7tyJD5jy" role="3clFbG">
              <node concept="37vLTw" id="2GO7tyJD5iA" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJNuvh" resolve="solver" />
              </node>
              <node concept="liA8E" id="2GO7tyJD5wV" role="2OqNvi">
                <ref role="37wK5l" to="yg8f:2GO7tyJSjFd" resolve="ask" />
                <node concept="10M0yZ" id="2GO7tyJN0BC" role="37wK5m">
                  <ref role="3cqZAo" to="zeuh:2GO7tyJN0LB" resolve="INSTANCE" />
                  <ref role="1PxDUh" to="zeuh:2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
                </node>
                <node concept="37vLTw" id="2GO7tyJD5Bn" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJCLiZ" resolve="from" />
                </node>
                <node concept="37vLTw" id="2GO7tyJD5IX" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJCLlh" resolve="to" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2GO7tyJD38x" role="jymVt" />
      <node concept="3clFb_" id="2GO7tyJD2Vf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="3cqZAl" id="2GO7tyJD2Vg" role="3clF45" />
        <node concept="3Tm1VV" id="2GO7tyJD2Vh" role="1B3o_S" />
        <node concept="3clFbS" id="2GO7tyJD2Vj" role="3clF47">
          <node concept="3clFbF" id="2GO7tyJD5NE" role="3cqZAp">
            <node concept="2OqwBi" id="2GO7tyJD5Ov" role="3clFbG">
              <node concept="37vLTw" id="2GO7tyJD5ND" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJNuvh" resolve="solver" />
              </node>
              <node concept="liA8E" id="2GO7tyJD5WI" role="2OqNvi">
                <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
                <node concept="10M0yZ" id="2GO7tyJN808" role="37wK5m">
                  <ref role="1PxDUh" to="zeuh:2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
                  <ref role="3cqZAo" to="zeuh:2GO7tyJN0LB" resolve="INSTANCE" />
                </node>
                <node concept="37vLTw" id="2GO7tyJD62V" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJCLiZ" resolve="from" />
                </node>
                <node concept="37vLTw" id="2GO7tyJD67S" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJCLlh" resolve="to" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2GO7tyJCL50" role="jymVt" />
      <node concept="3Tm1VV" id="2GO7tyJCKUR" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJCL1v" role="EKbjA">
        <ref role="3uigEE" node="2GO7tyJCHif" resolve="Resolution.Constraint" />
      </node>
      <node concept="312cEg" id="2GO7tyJCLiZ" role="jymVt">
        <property role="TrG5h" value="from" />
        <node concept="3Tm6S6" id="2GO7tyJCLj0" role="1B3o_S" />
        <node concept="3uibUv" id="2GO7tyJCLj2" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="312cEg" id="2GO7tyJCLlh" role="jymVt">
        <property role="TrG5h" value="to" />
        <node concept="3Tm6S6" id="2GO7tyJCLli" role="1B3o_S" />
        <node concept="3uibUv" id="2GO7tyJCLlk" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJNdwg" role="jymVt" />
    <node concept="3Tm1VV" id="2GO7tyJCjZs" role="1B3o_S" />
    <node concept="312cEg" id="2GO7tyJNuvh" role="jymVt">
      <property role="TrG5h" value="solver" />
      <node concept="3Tm6S6" id="2GO7tyJNuvi" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJNuvk" role="1tU5fm">
        <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
      </node>
    </node>
  </node>
</model>

