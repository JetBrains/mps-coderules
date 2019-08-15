<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0c18ff61-1cb9-4ff0-a899-c949ad03f97c(jetbrains.mps.coderules.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
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
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
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
  <node concept="2DaZZR" id="4QJVaOvIpzs" />
  <node concept="2uRRBC" id="3ywbauF4Q6s">
    <property role="TrG5h" value="ReactorLifecycleProxy" />
    <node concept="2uRRBj" id="3ywbauF4QfJ" role="2uRRBE">
      <node concept="3clFbS" id="3ywbauF4QfK" role="2VODD2">
        <node concept="3clFbF" id="3ywbauF4QxD" role="3cqZAp">
          <node concept="2OqwBi" id="3ywbauF4QK1" role="3clFbG">
            <node concept="10M0yZ" id="3ywbauF4QFw" role="2Oq$k0">
              <ref role="3cqZAo" to="zx3l:~ReactorLifecycle.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="zx3l:~ReactorLifecycle" resolve="ReactorLifecycle" />
            </node>
            <node concept="liA8E" id="3ywbauF4QMM" role="2OqNvi">
              <ref role="37wK5l" to="zx3l:~ReactorLifecycle$Companion.init()" resolve="init" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3ywbauF4QQ9" role="2uRRBF">
      <node concept="3clFbS" id="3ywbauF4QQa" role="2VODD2">
        <node concept="3clFbF" id="3ywbauF4QOh" role="3cqZAp">
          <node concept="2OqwBi" id="3ywbauF4QOi" role="3clFbG">
            <node concept="10M0yZ" id="3ywbauF4QOj" role="2Oq$k0">
              <ref role="3cqZAo" to="zx3l:~ReactorLifecycle.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="zx3l:~ReactorLifecycle" resolve="ReactorLifecycle" />
            </node>
            <node concept="liA8E" id="3ywbauF4QTQ" role="2OqNvi">
              <ref role="37wK5l" to="zx3l:~ReactorLifecycle$Companion.deinit()" resolve="deinit" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4MaHsBDyFQ8">
    <property role="TrG5h" value="MessageSinkHost" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="messages" />
    <node concept="2tJIrI" id="4MaHsBDyFVU" role="jymVt" />
    <node concept="Wx3nA" id="4MaHsBDyHaK" role="jymVt">
      <property role="TrG5h" value="INSTANCES" />
      <node concept="3Tm6S6" id="4MaHsBDyHaM" role="1B3o_S" />
      <node concept="3uibUv" id="4MaHsBDyHiL" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentHashMap" resolve="ConcurrentHashMap" />
        <node concept="3uibUv" id="4MaHsBDyJ3R" role="11_B2D">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="3uibUv" id="4MaHsBDyJbY" role="11_B2D">
          <ref role="3uigEE" node="4MaHsBDyFQ8" resolve="MessageSinkHost" />
        </node>
      </node>
      <node concept="2ShNRf" id="4MaHsBDyJh_" role="33vP2m">
        <node concept="1pGfFk" id="4MaHsBDyJgZ" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="4MaHsBDyJh0" role="1pMfVU">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
          <node concept="3uibUv" id="4MaHsBDyJh1" role="1pMfVU">
            <ref role="3uigEE" node="4MaHsBDyFQ8" resolve="MessageSinkHost" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MaHsBDyH2M" role="jymVt" />
    <node concept="2YIFZL" id="4MaHsBDyHz$" role="jymVt">
      <property role="TrG5h" value="set" />
      <node concept="37vLTG" id="4MaHsBDyJks" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4MaHsBDyJs1" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="4MaHsBDyJtZ" role="3clF46">
        <property role="TrG5h" value="messageListHost" />
        <node concept="3uibUv" id="4MaHsBDyJ_d" role="1tU5fm">
          <ref role="3uigEE" node="4MaHsBDyFQ8" resolve="MessageSinkHost" />
        </node>
      </node>
      <node concept="3clFbS" id="4MaHsBDyHyb" role="3clF47">
        <node concept="3clFbF" id="4MaHsBDyJJ2" role="3cqZAp">
          <node concept="2OqwBi" id="4MaHsBDyKgT" role="3clFbG">
            <node concept="37vLTw" id="4MaHsBDyJJ1" role="2Oq$k0">
              <ref role="3cqZAo" node="4MaHsBDyHaK" resolve="INSTANCES" />
            </node>
            <node concept="liA8E" id="4MaHsBDyMav" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.putIfAbsent(java.lang.Object,java.lang.Object)" resolve="putIfAbsent" />
              <node concept="37vLTw" id="4MaHsBDyMx0" role="37wK5m">
                <ref role="3cqZAo" node="4MaHsBDyJks" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="4MaHsBDyNx7" role="37wK5m">
                <ref role="3cqZAo" node="4MaHsBDyJtZ" resolve="messageListHost" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4MaHsBDyHy9" role="3clF45" />
      <node concept="3Tm1VV" id="4MaHsBDyHTR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4MaHsBDyHsQ" role="jymVt" />
    <node concept="2YIFZL" id="4MaHsBDMXkk" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="37vLTG" id="4MaHsBDMXkl" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4MaHsBDMXkm" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="4MaHsBDMXkp" role="3clF47">
        <node concept="3clFbF" id="4MaHsBDMXkq" role="3cqZAp">
          <node concept="2OqwBi" id="4MaHsBDMXkr" role="3clFbG">
            <node concept="37vLTw" id="4MaHsBDMXks" role="2Oq$k0">
              <ref role="3cqZAo" node="4MaHsBDyHaK" resolve="INSTANCES" />
            </node>
            <node concept="liA8E" id="4MaHsBDMXkt" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.remove(java.lang.Object)" resolve="remove" />
              <node concept="37vLTw" id="4MaHsBDMXku" role="37wK5m">
                <ref role="3cqZAo" node="4MaHsBDMXkl" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4MaHsBDMXkw" role="3clF45" />
      <node concept="3Tm1VV" id="4MaHsBDMXkx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4MaHsBDMXkj" role="jymVt" />
    <node concept="2YIFZL" id="4MaHsBDyI75" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="4MaHsBDyIhH" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4MaHsBDyItk" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3uibUv" id="4MaHsBDyIfq" role="3clF45">
        <ref role="3uigEE" node="4MaHsBDyFQ8" resolve="MessageSinkHost" />
      </node>
      <node concept="3Tm1VV" id="4MaHsBDyI78" role="1B3o_S" />
      <node concept="3clFbS" id="4MaHsBDyI79" role="3clF47">
        <node concept="3clFbF" id="4MaHsBDyNYD" role="3cqZAp">
          <node concept="2OqwBi" id="4MaHsBDyOwM" role="3clFbG">
            <node concept="37vLTw" id="4MaHsBDyNYC" role="2Oq$k0">
              <ref role="3cqZAo" node="4MaHsBDyHaK" resolve="INSTANCES" />
            </node>
            <node concept="liA8E" id="4MaHsBDyPLE" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="4MaHsBDyQgx" role="37wK5m">
                <ref role="3cqZAo" node="4MaHsBDyIhH" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MaHsBDySUE" role="jymVt" />
    <node concept="3clFb_" id="4MaHsBDyTr2" role="jymVt">
      <property role="TrG5h" value="getMessageSink" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="4MaHsBDzbHy" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="4MaHsBDzccR" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4MaHsBDyXuJ" role="3clF45">
        <ref role="3uigEE" node="4MaHsBDyVPn" resolve="MessageSink" />
      </node>
      <node concept="3Tm1VV" id="4MaHsBDyTr5" role="1B3o_S" />
      <node concept="3clFbS" id="4MaHsBDyTr6" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MaHsBDyFVZ" role="jymVt" />
    <node concept="3Tm1VV" id="4MaHsBDyFQ9" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4MaHsBDyVPn">
    <property role="TrG5h" value="MessageSink" />
    <property role="3GE5qa" value="messages" />
    <node concept="2tJIrI" id="4MaHsBDyVTb" role="jymVt" />
    <node concept="3clFb_" id="4MaHsBDyVZB" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3cqZAl" id="4MaHsBDyVZD" role="3clF45" />
      <node concept="3Tm1VV" id="4MaHsBDyVZE" role="1B3o_S" />
      <node concept="3clFbS" id="4MaHsBDyVZF" role="3clF47" />
      <node concept="37vLTG" id="4MaHsBDyWcx" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="4MaHsBDyWcw" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MaHsBDyVUe" role="jymVt" />
    <node concept="3Tm1VV" id="4MaHsBDyVPo" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4MaHsBDdlvx">
    <property role="3GE5qa" value="messages" />
    <property role="TrG5h" value="MessageLog" />
    <node concept="2tJIrI" id="4MaHsBDfN2w" role="jymVt" />
    <node concept="2YIFZL" id="4MaHsBDdmcG" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="4MaHsBDdmjI" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4MaHsBDdmjJ" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="4MaHsBDga9A" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="4MaHsBDgaik" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2ceN1hCF934" role="3clF45">
        <ref role="3uigEE" node="4MaHsBDdlvx" resolve="MessageLog" />
      </node>
      <node concept="3Tm1VV" id="4MaHsBDdmcK" role="1B3o_S" />
      <node concept="3clFbS" id="4MaHsBDdmcL" role="3clF47">
        <node concept="3clFbF" id="2ceN1hCEPT7" role="3cqZAp">
          <node concept="2ShNRf" id="2ceN1hCEPT3" role="3clFbG">
            <node concept="1pGfFk" id="2ceN1hCERze" role="2ShVmc">
              <ref role="37wK5l" node="4MaHsBDdmFz" resolve="MessageLog" />
              <node concept="37vLTw" id="2ceN1hCEZ$7" role="37wK5m">
                <ref role="3cqZAo" node="4MaHsBDdmjI" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="2ceN1hCF8R5" role="37wK5m">
                <ref role="3cqZAo" node="4MaHsBDga9A" resolve="title" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MaHsBDdl_6" role="jymVt" />
    <node concept="3clFbW" id="4MaHsBDdmFz" role="jymVt">
      <node concept="3cqZAl" id="4MaHsBDdmF_" role="3clF45" />
      <node concept="3Tm1VV" id="4MaHsBDdmFA" role="1B3o_S" />
      <node concept="3clFbS" id="4MaHsBDdmFB" role="3clF47">
        <node concept="3clFbF" id="2ceN1hCELdl" role="3cqZAp">
          <node concept="37vLTI" id="2ceN1hCELdn" role="3clFbG">
            <node concept="2OqwBi" id="2ceN1hCELIv" role="37vLTJ">
              <node concept="Xjq3P" id="2ceN1hCELL2" role="2Oq$k0" />
              <node concept="2OwXpG" id="2ceN1hCELIy" role="2OqNvi">
                <ref role="2Oxat5" node="2ceN1hCELdh" resolve="mpsProject" />
              </node>
            </node>
            <node concept="37vLTw" id="2ceN1hCELdr" role="37vLTx">
              <ref role="3cqZAo" node="2ceN1hCED7o" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ceN1hCELZs" role="3cqZAp">
          <node concept="37vLTI" id="2ceN1hCELZu" role="3clFbG">
            <node concept="2OqwBi" id="2ceN1hCEMdW" role="37vLTJ">
              <node concept="Xjq3P" id="2ceN1hCEMep" role="2Oq$k0" />
              <node concept="2OwXpG" id="2ceN1hCEMdZ" role="2OqNvi">
                <ref role="2Oxat5" node="2ceN1hCELZo" resolve="title" />
              </node>
            </node>
            <node concept="37vLTw" id="2ceN1hCELZy" role="37vLTx">
              <ref role="3cqZAo" node="2ceN1hCEDbn" resolve="title" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2ceN1hCED7o" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="2ceN1hCED7n" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="2ceN1hCEDbn" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="2ceN1hCEDin" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MaHsBDfmln" role="jymVt" />
    <node concept="3Tm1VV" id="4MaHsBDdlvy" role="1B3o_S" />
    <node concept="3clFb_" id="4MaHsBDgiaT" role="jymVt">
      <property role="TrG5h" value="handle" />
      <node concept="3Tm1VV" id="4MaHsBDgiaU" role="1B3o_S" />
      <node concept="3cqZAl" id="4MaHsBDgiaW" role="3clF45" />
      <node concept="37vLTG" id="4MaHsBDgiaX" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="4MaHsBDgiaY" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
        </node>
        <node concept="2AHcQZ" id="4MaHsBDgiaZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4MaHsBDgib0" role="3clF47">
        <node concept="3clFbF" id="2ceN1hCEMQE" role="3cqZAp">
          <node concept="2OqwBi" id="2ceN1hCEO91" role="3clFbG">
            <node concept="2OqwBi" id="2ceN1hCENng" role="2Oq$k0">
              <node concept="37vLTw" id="2ceN1hCEMQC" role="2Oq$k0">
                <ref role="3cqZAo" node="2ceN1hCELdh" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="2ceN1hCEO3z" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2ceN1hCEOlU" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
              <node concept="1bVj0M" id="2ceN1hCEOnW" role="37wK5m">
                <node concept="3clFbS" id="2ceN1hCEOnX" role="1bW5cS">
                  <node concept="3cpWs8" id="2ceN1hCEOyW" role="3cqZAp">
                    <node concept="3cpWsn" id="2ceN1hCEOyX" role="3cpWs9">
                      <property role="TrG5h" value="sink" />
                      <node concept="3uibUv" id="2ceN1hCEOyY" role="1tU5fm">
                        <ref role="3uigEE" node="4MaHsBDyVPn" resolve="MessageSink" />
                      </node>
                      <node concept="2OqwBi" id="2ceN1hCEOyZ" role="33vP2m">
                        <node concept="2YIFZM" id="2ceN1hCEOz0" role="2Oq$k0">
                          <ref role="1Pybhc" node="4MaHsBDyFQ8" resolve="MessageSinkHost" />
                          <ref role="37wK5l" node="4MaHsBDyI75" resolve="get" />
                          <node concept="37vLTw" id="2ceN1hCEOz1" role="37wK5m">
                            <ref role="3cqZAo" node="2ceN1hCELdh" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2ceN1hCEOz2" role="2OqNvi">
                          <ref role="37wK5l" node="4MaHsBDyTr2" resolve="getMessageSink" />
                          <node concept="37vLTw" id="2ceN1hCEOz3" role="37wK5m">
                            <ref role="3cqZAo" node="2ceN1hCELZo" resolve="title" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2ceN1hCEOKW" role="3cqZAp">
                    <node concept="2OqwBi" id="2ceN1hCEOSr" role="3clFbG">
                      <node concept="37vLTw" id="2ceN1hCEOKU" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ceN1hCEOyX" resolve="sink" />
                      </node>
                      <node concept="liA8E" id="2ceN1hCEP6l" role="2OqNvi">
                        <ref role="37wK5l" node="4MaHsBDyVZB" resolve="add" />
                        <node concept="37vLTw" id="2ceN1hCEPiv" role="37wK5m">
                          <ref role="3cqZAo" node="4MaHsBDgiaX" resolve="message" />
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
      <node concept="2AHcQZ" id="4MaHsBDgib1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MaHsBDgilN" role="jymVt" />
    <node concept="3uibUv" id="4MaHsBDgi3l" role="EKbjA">
      <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
    </node>
    <node concept="312cEg" id="2ceN1hCELdh" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="2ceN1hCELdi" role="1B3o_S" />
      <node concept="3uibUv" id="2ceN1hCELdk" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="2ceN1hCELZo" role="jymVt">
      <property role="TrG5h" value="title" />
      <node concept="3Tm6S6" id="2ceN1hCELZp" role="1B3o_S" />
      <node concept="17QB3L" id="2ceN1hCELZr" role="1tU5fm" />
    </node>
  </node>
</model>

