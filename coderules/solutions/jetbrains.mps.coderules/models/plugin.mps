<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0c18ff61-1cb9-4ff0-a899-c949ad03f97c(jetbrains.mps.coderules.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="4QJVaOvIpzs" />
  <node concept="2uRRBy" id="7WKNeR8VWis">
    <property role="TrG5h" value="CodeRulesManagerLifecycle" />
    <property role="3GE5qa" value="lifecycle" />
    <node concept="2uRRBT" id="7WKNeR8VWiQ" role="2uRRB$">
      <node concept="3clFbS" id="7WKNeR8VWiR" role="2VODD2">
        <node concept="3clFbF" id="7WKNeR8VWpv" role="3cqZAp">
          <node concept="2YIFZM" id="7WKNeR8VW_Q" role="3clFbG">
            <ref role="37wK5l" node="7WKNeR8VMwW" resolve="get" />
            <ref role="1Pybhc" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
            <node concept="2OqwBi" id="7WKNeR8VWXq" role="37wK5m">
              <node concept="1KvdUw" id="7WKNeR8VWAi" role="2Oq$k0" />
              <node concept="liA8E" id="7WKNeR8VY8y" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7WKNeR8VWjc" role="2uRRB_">
      <node concept="3clFbS" id="7WKNeR8VWjd" role="2VODD2">
        <node concept="3clFbF" id="7WKNeR8VYg9" role="3cqZAp">
          <node concept="2YIFZM" id="7WKNeR8VYgC" role="3clFbG">
            <ref role="37wK5l" node="7WKNeR8VPWJ" resolve="dispose" />
            <ref role="1Pybhc" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
            <node concept="2OqwBi" id="7WKNeR8VZ0O" role="37wK5m">
              <node concept="1KvdUw" id="7WKNeR8VYiU" role="2Oq$k0" />
              <node concept="liA8E" id="7WKNeR8W0bW" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7WKNeR8VLpH">
    <property role="TrG5h" value="CodeRulesManager" />
    <node concept="2tJIrI" id="7WKNeR8VM1Q" role="jymVt" />
    <node concept="2YIFZL" id="7WKNeR8VMwW" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="7WKNeR8VOgK" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7WKNeR8VOgL" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="7WKNeR8Wxm0" role="3clF45">
        <ref role="3uigEE" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR8VMwZ" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR8VMx0" role="3clF47">
        <node concept="3clFbF" id="7WKNeR8VNq$" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR8VNq_" role="3clFbG">
            <node concept="10M0yZ" id="7WKNeR8VPqA" role="2Oq$k0">
              <ref role="3cqZAo" node="7WKNeR8VMzY" resolve="ourInstances" />
              <ref role="1PxDUh" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
            </node>
            <node concept="liA8E" id="7WKNeR8VNqA" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfAbsent(java.lang.Object,java.util.function.Function):java.lang.Object" resolve="computeIfAbsent" />
              <node concept="37vLTw" id="7WKNeR8VNqB" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8VOgK" resolve="repository" />
              </node>
              <node concept="1bVj0M" id="7WKNeR8VNqC" role="37wK5m">
                <node concept="37vLTG" id="7WKNeR8VNqD" role="1bW2Oz">
                  <property role="TrG5h" value="repo" />
                  <node concept="3uibUv" id="7WKNeR8VNqE" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                </node>
                <node concept="3clFbS" id="7WKNeR8VNqF" role="1bW5cS">
                  <node concept="3clFbF" id="7WKNeR8VNqG" role="3cqZAp">
                    <node concept="2ShNRf" id="7WKNeR8VNqH" role="3clFbG">
                      <node concept="1pGfFk" id="7WKNeR8W2EB" role="2ShVmc">
                        <ref role="37wK5l" node="7WKNeR8VU5d" resolve="CodeRulesManager" />
                        <node concept="37vLTw" id="7WKNeR8W2Lr" role="37wK5m">
                          <ref role="3cqZAo" node="7WKNeR8VNqD" resolve="repo" />
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
    <node concept="2tJIrI" id="7WKNeR8VM1S" role="jymVt" />
    <node concept="2YIFZL" id="7WKNeR8VPWJ" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="37vLTG" id="7WKNeR8VQgj" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7WKNeR8VQgk" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="7WKNeR8VPWL" role="3clF45" />
      <node concept="3Tm1VV" id="7WKNeR8VPWM" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR8VPWN" role="3clF47">
        <node concept="3clFbF" id="7WKNeR8VQAZ" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR8VQB0" role="3clFbG">
            <node concept="10M0yZ" id="7WKNeR8VTEZ" role="2Oq$k0">
              <ref role="3cqZAo" node="7WKNeR8VMzY" resolve="ourInstances" />
              <ref role="1PxDUh" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
            </node>
            <node concept="liA8E" id="7WKNeR8VQB1" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfPresent(java.lang.Object,java.util.function.BiFunction):java.lang.Object" resolve="computeIfPresent" />
              <node concept="37vLTw" id="7WKNeR8VQB2" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8VQgj" resolve="repository" />
              </node>
              <node concept="1bVj0M" id="7WKNeR8VQB3" role="37wK5m">
                <node concept="3clFbS" id="7WKNeR8VQB4" role="1bW5cS">
                  <node concept="3clFbF" id="7WKNeR8VQB5" role="3cqZAp">
                    <node concept="2OqwBi" id="7WKNeR8VQB6" role="3clFbG">
                      <node concept="37vLTw" id="7WKNeR8VQB7" role="2Oq$k0">
                        <ref role="3cqZAo" node="7WKNeR8VQBf" resolve="instance" />
                      </node>
                      <node concept="liA8E" id="7WKNeR8VQB8" role="2OqNvi">
                        <ref role="37wK5l" node="7WKNeR8VSa4" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="7WKNeR8VQB9" role="3cqZAp">
                    <node concept="3SKdUq" id="7WKNeR8VQBa" role="3SKWNk">
                      <property role="3SKdUp" value="remove the mapping" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="7WKNeR8VQBb" role="3cqZAp">
                    <node concept="10Nm6u" id="7WKNeR8VQBc" role="3clFbG" />
                  </node>
                </node>
                <node concept="37vLTG" id="7WKNeR8VQBd" role="1bW2Oz">
                  <property role="TrG5h" value="repos" />
                  <node concept="3uibUv" id="7WKNeR8VQBe" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                </node>
                <node concept="37vLTG" id="7WKNeR8VQBf" role="1bW2Oz">
                  <property role="TrG5h" value="instance" />
                  <node concept="3uibUv" id="7WKNeR8VR_j" role="1tU5fm">
                    <ref role="3uigEE" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8VROu" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR8W8qn" role="jymVt">
      <property role="TrG5h" value="getSession" />
      <node concept="37vLTG" id="7WKNeR8W9Me" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="7WKNeR8Wa8g" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7WKNeR8W8ON" role="3clF45">
        <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR8W8qq" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR8W8qr" role="3clF47">
        <node concept="3SKdUt" id="78H58oeRFgU" role="3cqZAp">
          <node concept="3SKdUq" id="78H58oeRFgW" role="3SKWNk">
            <property role="3SKdUp" value="FIXME either make dependent on an aspect or drop this class" />
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR8Wiyc" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR8WmN6" role="3clFbG">
            <node concept="37vLTw" id="7WKNeR8Wiya" role="2Oq$k0">
              <ref role="3cqZAo" node="7WKNeR8Wgb9" resolve="sessionCache" />
            </node>
            <node concept="liA8E" id="7WKNeR8Wnrs" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.putIfAbsent(java.lang.Object,java.lang.Object):java.lang.Object" resolve="putIfAbsent" />
              <node concept="2OqwBi" id="7WKNeR8Wqkq" role="37wK5m">
                <node concept="2JrnkZ" id="7WKNeR8Wqkr" role="2Oq$k0">
                  <node concept="37vLTw" id="7WKNeR8Wqks" role="2JrQYb">
                    <ref role="3cqZAo" node="7WKNeR8W9Me" resolve="model" />
                  </node>
                </node>
                <node concept="liA8E" id="7WKNeR8Wqkt" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                </node>
              </node>
              <node concept="2YIFZM" id="7WKNeR8Wpbu" role="37wK5m">
                <ref role="1Pybhc" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
                <ref role="37wK5l" to="hano:7DvO2M9p276" resolve="newSession" />
                <node concept="37vLTw" id="7WKNeR8Wpbv" role="37wK5m">
                  <ref role="3cqZAo" node="7WKNeR8W19_" resolve="repository" />
                </node>
                <node concept="37vLTw" id="7WKNeR8Wpbw" role="37wK5m">
                  <ref role="3cqZAo" node="7WKNeR8W9Me" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR93utq" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR93uOU" role="3clFbG">
            <node concept="37vLTw" id="7WKNeR93uto" role="2Oq$k0">
              <ref role="3cqZAo" node="7WKNeR8Wgb9" resolve="sessionCache" />
            </node>
            <node concept="liA8E" id="7WKNeR93w2g" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="2OqwBi" id="7WKNeR93wkI" role="37wK5m">
                <node concept="2JrnkZ" id="7WKNeR93wkJ" role="2Oq$k0">
                  <node concept="37vLTw" id="7WKNeR93wkK" role="2JrQYb">
                    <ref role="3cqZAo" node="7WKNeR8W9Me" resolve="model" />
                  </node>
                </node>
                <node concept="liA8E" id="7WKNeR93wkL" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8WcYf" role="jymVt" />
    <node concept="3clFbW" id="7WKNeR8VU5d" role="jymVt">
      <node concept="37vLTG" id="7WKNeR8W0I5" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7WKNeR8W0QJ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="7WKNeR8VU5f" role="3clF45" />
      <node concept="3Tm6S6" id="7WKNeR8VUhp" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR8VU5h" role="3clF47">
        <node concept="3clFbF" id="7WKNeR8W19D" role="3cqZAp">
          <node concept="37vLTI" id="7WKNeR8W19F" role="3clFbG">
            <node concept="2OqwBi" id="7WKNeR8W1Cb" role="37vLTJ">
              <node concept="Xjq3P" id="7WKNeR8W1Dm" role="2Oq$k0" />
              <node concept="2OwXpG" id="7WKNeR8W1OT" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR8W19_" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="7WKNeR8W19J" role="37vLTx">
              <ref role="3cqZAo" node="7WKNeR8W0I5" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12QmIoyQS8L" role="3cqZAp">
          <node concept="2OqwBi" id="12QmIoyQSer" role="3clFbG">
            <node concept="37vLTw" id="12QmIoyQS8J" role="2Oq$k0">
              <ref role="3cqZAo" node="7WKNeR8W0I5" resolve="repository" />
            </node>
            <node concept="liA8E" id="12QmIoyQSs9" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepository.addRepositoryListener(org.jetbrains.mps.openapi.module.SRepositoryListener):void" resolve="addRepositoryListener" />
              <node concept="2ShNRf" id="12QmIoyQStf" role="37wK5m">
                <node concept="1pGfFk" id="12QmIoyQUz1" role="2ShVmc">
                  <ref role="37wK5l" node="12QmIoyQPTu" resolve="CodeRulesManager.DisposeListener" />
                  <node concept="37vLTw" id="12QmIoyQUBu" role="37wK5m">
                    <ref role="3cqZAo" node="7WKNeR8W0I5" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12QmIoyQXLS" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR8VSa4" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="7WKNeR8VSa6" role="3clF45" />
      <node concept="3Tm6S6" id="7WKNeR8VUi4" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR8VSa8" role="3clF47">
        <node concept="3clFbF" id="7WKNeR8Wr9j" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR8Wrvc" role="3clFbG">
            <node concept="37vLTw" id="7WKNeR8Wr9h" role="2Oq$k0">
              <ref role="3cqZAo" node="7WKNeR8Wgb9" resolve="sessionCache" />
            </node>
            <node concept="liA8E" id="7WKNeR8Ws6G" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR8W1Tz" role="3cqZAp">
          <node concept="37vLTI" id="7WKNeR8W2nY" role="3clFbG">
            <node concept="10Nm6u" id="7WKNeR8W2pI" role="37vLTx" />
            <node concept="2OqwBi" id="7WKNeR8W1XX" role="37vLTJ">
              <node concept="Xjq3P" id="7WKNeR8W1Ty" role="2Oq$k0" />
              <node concept="2OwXpG" id="7WKNeR8W2bE" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR8W19_" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8VM1V" role="jymVt" />
    <node concept="Wx3nA" id="7WKNeR8VMzY" role="jymVt">
      <property role="TrG5h" value="ourInstances" />
      <node concept="3Tm6S6" id="7WKNeR8VMzZ" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR8VM$0" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
        <node concept="3uibUv" id="7WKNeR8VM$1" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="3uibUv" id="7WKNeR8VN2d" role="11_B2D">
          <ref role="3uigEE" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
        </node>
      </node>
      <node concept="2ShNRf" id="7WKNeR8VM$3" role="33vP2m">
        <node concept="1pGfFk" id="7WKNeR8VM$4" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="7WKNeR8VM$5" role="1pMfVU">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="3uibUv" id="7WKNeR8VNg3" role="1pMfVU">
            <ref role="3uigEE" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8VM1Z" role="jymVt" />
    <node concept="312cEu" id="12QmIoyQPie" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="DisposeListener" />
      <node concept="3clFbW" id="12QmIoyQPTu" role="jymVt">
        <node concept="37vLTG" id="12QmIoyQPVg" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="12QmIoyQQ2H" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3cqZAl" id="12QmIoyQPTw" role="3clF45" />
        <node concept="3Tm1VV" id="12QmIoyQPTx" role="1B3o_S" />
        <node concept="3clFbS" id="12QmIoyQPTy" role="3clF47">
          <node concept="3clFbF" id="12QmIoyQQQg" role="3cqZAp">
            <node concept="37vLTI" id="12QmIoyQQQi" role="3clFbG">
              <node concept="2OqwBi" id="12QmIoyQQV6" role="37vLTJ">
                <node concept="Xjq3P" id="12QmIoyQQX2" role="2Oq$k0" />
                <node concept="2OwXpG" id="12QmIoyQQV9" role="2OqNvi">
                  <ref role="2Oxat5" node="12QmIoyQQQc" resolve="repository" />
                </node>
              </node>
              <node concept="37vLTw" id="12QmIoyQQQm" role="37vLTx">
                <ref role="3cqZAo" node="12QmIoyQPVg" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="12QmIoyQUQ4" role="1B3o_S" />
      <node concept="3uibUv" id="12QmIoyQPDM" role="1zkMxy">
        <ref role="3uigEE" to="lui2:~SRepositoryListenerBase" resolve="SRepositoryListenerBase" />
      </node>
      <node concept="3clFb_" id="12QmIoyQPE0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="moduleRemoved" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="12QmIoyQPE1" role="1B3o_S" />
        <node concept="3cqZAl" id="12QmIoyQPE3" role="3clF45" />
        <node concept="37vLTG" id="12QmIoyQPE4" role="3clF46">
          <property role="TrG5h" value="module" />
          <node concept="3uibUv" id="12QmIoyQPE5" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
          <node concept="2AHcQZ" id="12QmIoyQPE6" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="12QmIoyQPE7" role="3clF47">
          <node concept="3SKdUt" id="12QmIoyU_fU" role="3cqZAp">
            <node concept="3SKdUq" id="12QmIoyU_fW" role="3SKWNk">
              <property role="3SKdUp" value="make sure we don't keep stale classes" />
            </node>
          </node>
          <node concept="3clFbF" id="12QmIoyQR7e" role="3cqZAp">
            <node concept="2YIFZM" id="12QmIoyQR8D" role="3clFbG">
              <ref role="37wK5l" node="7WKNeR8VPWJ" resolve="dispose" />
              <ref role="1Pybhc" node="7WKNeR8VLpH" resolve="CodeRulesManager" />
              <node concept="37vLTw" id="12QmIoyQRau" role="37wK5m">
                <ref role="3cqZAo" node="12QmIoyQQQc" resolve="repository" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="12QmIoyU$zz" role="3cqZAp">
            <node concept="2OqwBi" id="12QmIoyU$JU" role="3clFbG">
              <node concept="37vLTw" id="12QmIoyU$zx" role="2Oq$k0">
                <ref role="3cqZAo" node="12QmIoyQQQc" resolve="repository" />
              </node>
              <node concept="liA8E" id="12QmIoyU_0b" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.removeRepositoryListener(org.jetbrains.mps.openapi.module.SRepositoryListener):void" resolve="removeRepositoryListener" />
                <node concept="Xjq3P" id="12QmIoyU_3M" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="12QmIoyQPE8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="312cEg" id="12QmIoyQQQc" role="jymVt">
        <property role="TrG5h" value="repository" />
        <node concept="3Tm6S6" id="12QmIoyQQQd" role="1B3o_S" />
        <node concept="3uibUv" id="12QmIoyQQQf" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12QmIoyQVMn" role="jymVt" />
    <node concept="312cEg" id="7WKNeR8Wgb9" role="jymVt">
      <property role="TrG5h" value="sessionCache" />
      <node concept="3Tm6S6" id="7WKNeR8Wgba" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR8WiEd" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
        <node concept="3uibUv" id="7WKNeR8Wlc6" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="3uibUv" id="7WKNeR8Wq2D" role="11_B2D">
          <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
        </node>
      </node>
      <node concept="2ShNRf" id="7WKNeR8Win4" role="33vP2m">
        <node concept="1pGfFk" id="7WKNeR8WkaM" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="7WKNeR8WkAs" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
          <node concept="3uibUv" id="7WKNeR8WpL7" role="1pMfVU">
            <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7WKNeR8VLpI" role="1B3o_S" />
    <node concept="3UR2Jj" id="7WKNeR8VMqz" role="lGtFl">
      <node concept="TZ5HA" id="7WKNeR8VMq$" role="TZ5H$">
        <node concept="1dT_AC" id="7WKNeR8VMq_" role="1dT_Ay">
          <property role="1dT_AB" value="A per-repository cache of code rule indices." />
        </node>
      </node>
      <node concept="TZ5HA" id="78H58oeRF5I" role="TZ5H$">
        <node concept="1dT_AC" id="78H58oeRF5J" role="1dT_Ay">
          <property role="1dT_AB" value="FIXME: this class is not used " />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7WKNeR8W19_" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="7WKNeR8W19A" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR8W19C" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
  </node>
</model>

