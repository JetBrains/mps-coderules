<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:82cec6f7-ddec-440c-961c-1c598267be42(jetbrains.mps.logic.test.unification)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5jPBdK_dIS">
    <property role="TrG5h" value="TestingEvaluationSession" />
    <node concept="2tJIrI" id="5jPBdK_KTs" role="jymVt" />
    <node concept="Wx3nA" id="5jPBdK_KfB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ourBackend" />
      <node concept="3Tm6S6" id="5jPBdK_Kfz" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_Kf$" role="1tU5fm">
        <ref role="3uigEE" node="5jPBdK_dKd" resolve="TestingEvaluationSession.Backend" />
      </node>
      <node concept="2ShNRf" id="5jPBdK_Kf_" role="33vP2m">
        <node concept="HV5vD" id="5jPBdK_KfA" role="2ShVmc">
          <ref role="HV5vE" node="5jPBdK_dKd" resolve="TestingEvaluationSession.Backend" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_s6v" role="jymVt" />
    <node concept="Wx3nA" id="5jPBdK_nJi" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="5jPBdK_nJk" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_nNn" role="1tU5fm">
        <ref role="3uigEE" node="5jPBdK_dIS" resolve="TestingEvaluationSession" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_nzw" role="jymVt" />
    <node concept="2YIFZL" id="7ISVfSIf0j" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="7ISVfSIf0l" role="3clF45" />
      <node concept="3Tm1VV" id="7ISVfSIf0m" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIf0n" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIf2T" role="3cqZAp">
          <node concept="2YIFZM" id="7ISVfSIf4g" role="3clFbG">
            <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
            <ref role="37wK5l" to="w7la:~EvaluationSession.setBackend(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Backend):void" resolve="setBackend" />
            <node concept="37vLTw" id="5jPBdK_KfE" role="37wK5m">
              <ref role="3cqZAo" node="5jPBdK_KfB" resolve="ourBackend" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_KJw" role="jymVt" />
    <node concept="2YIFZL" id="5jPBdK_KqB" role="jymVt">
      <property role="TrG5h" value="deinit" />
      <node concept="3cqZAl" id="5jPBdK_KqC" role="3clF45" />
      <node concept="3Tm1VV" id="5jPBdK_KqD" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_KqE" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_KqF" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_KEq" role="3clFbG">
            <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
            <ref role="37wK5l" to="w7la:~EvaluationSession.clearBackend(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Backend):void" resolve="clearBackend" />
            <node concept="37vLTw" id="5jPBdK_KEr" role="37wK5m">
              <ref role="3cqZAo" node="5jPBdK_KfB" resolve="ourBackend" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jPBdK_NAE" role="3cqZAp">
          <node concept="37vLTI" id="5jPBdK_NDg" role="3clFbG">
            <node concept="10Nm6u" id="5jPBdK_NDW" role="37vLTx" />
            <node concept="37vLTw" id="5jPBdK_NAC" role="37vLTJ">
              <ref role="3cqZAo" node="5jPBdK_nJi" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_dK1" role="jymVt" />
    <node concept="3clFbW" id="5jPBdK_qM0" role="jymVt">
      <node concept="3cqZAl" id="5jPBdK_qM2" role="3clF45" />
      <node concept="3Tm6S6" id="5jPBdK_rSe" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_qM4" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_qYH" role="3cqZAp">
          <node concept="37vLTI" id="5jPBdK_qYJ" role="3clFbG">
            <node concept="2OqwBi" id="5jPBdK_qYN" role="37vLTJ">
              <node concept="Xjq3P" id="5jPBdK_qYQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="5jPBdK_qYM" role="2OqNvi">
                <ref role="2Oxat5" node="5jPBdK_qYD" resolve="sessionSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="5jPBdK_qYR" role="37vLTx">
              <ref role="3cqZAo" node="5jPBdK_qV5" resolve="sessionSolver" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jPBdK_qV5" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="5jPBdK_qV4" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_qFR" role="jymVt" />
    <node concept="3clFb_" id="5jPBdK_dWA" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="5jPBdK_dWB" role="3clF45">
        <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dWC" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dWE" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_r6i" role="3cqZAp">
          <node concept="37vLTw" id="5jPBdK_r6h" role="3clFbG">
            <ref role="3cqZAo" node="5jPBdK_qYD" resolve="sessionSolver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6TNz8" role="jymVt" />
    <node concept="3clFb_" id="60zk4o6TO0s" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="invocation" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6TO0t" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6TO0v" role="3clF45">
        <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
      </node>
      <node concept="37vLTG" id="60zk4o6TO0w" role="3clF46">
        <property role="TrG5h" value="predicate" />
        <node concept="3uibUv" id="60zk4o6TO0x" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
        </node>
      </node>
      <node concept="37vLTG" id="60zk4o6TO0y" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="60zk4o6TO0z" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="60zk4o6TO0$" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U5Mn" role="3cqZAp">
          <node concept="2ShNRf" id="60zk4o6U5Ml" role="3clFbG">
            <node concept="1pGfFk" id="60zk4o6U6ZH" role="2ShVmc">
              <ref role="37wK5l" node="60zk4o6U4c6" resolve="MockInvocation" />
              <node concept="37vLTw" id="60zk4o6U70O" role="37wK5m">
                <ref role="3cqZAo" node="60zk4o6TO0w" resolve="predicate" />
              </node>
              <node concept="2OqwBi" id="60zk4o6U7j1" role="37wK5m">
                <node concept="37vLTw" id="60zk4o6U7bt" role="2Oq$k0">
                  <ref role="3cqZAo" node="60zk4o6TO0w" resolve="predicate" />
                </node>
                <node concept="liA8E" id="60zk4o6U7oM" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6TO0_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6TOB4" role="jymVt" />
    <node concept="3clFb_" id="60zk4o6TO0C" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="occurrence" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6TO0D" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6TO0F" role="3clF45">
        <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
      </node>
      <node concept="37vLTG" id="60zk4o6TO0G" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="60zk4o6TO0H" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="60zk4o6TO0I" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="60zk4o6TO0J" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="60zk4o6TO0K" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U7vc" role="3cqZAp">
          <node concept="2ShNRf" id="60zk4o6U7va" role="3clFbG">
            <node concept="1pGfFk" id="60zk4o6U7Hl" role="2ShVmc">
              <ref role="37wK5l" node="60zk4o6U2_C" resolve="MockOccurrence" />
              <node concept="37vLTw" id="60zk4o6U7Is" role="37wK5m">
                <ref role="3cqZAo" node="60zk4o6TO0G" resolve="constraint" />
              </node>
              <node concept="2OqwBi" id="60zk4o6U7Uq" role="37wK5m">
                <node concept="37vLTw" id="60zk4o6U7Rb" role="2Oq$k0">
                  <ref role="3cqZAo" node="60zk4o6TO0G" resolve="constraint" />
                </node>
                <node concept="liA8E" id="60zk4o6U86l" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6TO0L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6TNLL" role="jymVt" />
    <node concept="3clFb_" id="5jCHAT1MMTz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="storeView" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5jCHAT1MMT$" role="1B3o_S" />
      <node concept="3uibUv" id="5jCHAT1MMTA" role="3clF45">
        <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
      </node>
      <node concept="3clFbS" id="5jCHAT1MMTB" role="3clF47">
        <node concept="3clFbF" id="5jCHAT1MMTE" role="3cqZAp">
          <node concept="10Nm6u" id="5jCHAT1MMTD" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5jCHAT1MMTC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5jPBdK_dX1" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="5jPBdK_dX2" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5jPBdK_dX3" role="11_B2D">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dX4" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dX6" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_dX8" role="3cqZAp">
          <node concept="10Nm6u" id="5jPBdK_dX7" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5jPBdK_dX9" role="jymVt">
      <property role="TrG5h" value="constraintOccurrences" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="5jPBdK_dXa" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5jPBdK_dXb" role="11_B2D">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dXc" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dXe" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_dXg" role="3cqZAp">
          <node concept="10Nm6u" id="5jPBdK_dXf" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5jPBdK_dXh" role="jymVt">
      <property role="TrG5h" value="constraintOccurrences" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="5jPBdK_dXi" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5jPBdK_dXj" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="5jPBdK_dXk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5jPBdK_dXl" role="11_B2D">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5jPBdK_dXm" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK_dXo" role="3clF47">
        <node concept="3clFbF" id="5jPBdK_dXq" role="3cqZAp">
          <node concept="10Nm6u" id="5jPBdK_dXp" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_dW3" role="jymVt" />
    <node concept="312cEu" id="5jPBdK_mRo" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Config" />
      <node concept="3Tm1VV" id="5jPBdK_mRp" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_n1a" role="1zkMxy">
        <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
      </node>
      <node concept="3clFbW" id="6X5F0NgIsD1" role="jymVt">
        <node concept="37vLTG" id="6X5F0NgIsWe" role="3clF46">
          <property role="TrG5h" value="program" />
          <node concept="3uibUv" id="6X5F0NgIt0n" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
          </node>
        </node>
        <node concept="3cqZAl" id="6X5F0NgIsD3" role="3clF45" />
        <node concept="3Tm1VV" id="6X5F0NgIsD4" role="1B3o_S" />
        <node concept="3clFbS" id="6X5F0NgIsD5" role="3clF47">
          <node concept="3clFbF" id="6X5F0NgIt2U" role="3cqZAp">
            <node concept="37vLTI" id="6X5F0NgIt2W" role="3clFbG">
              <node concept="2OqwBi" id="6X5F0NgIt30" role="37vLTJ">
                <node concept="Xjq3P" id="6X5F0NgIt33" role="2Oq$k0" />
                <node concept="2OwXpG" id="6X5F0NgIt2Z" role="2OqNvi">
                  <ref role="2Oxat5" node="6X5F0NgIt2Q" resolve="program" />
                </node>
              </node>
              <node concept="37vLTw" id="6X5F0NgIt34" role="37vLTx">
                <ref role="3cqZAo" node="6X5F0NgIsWe" resolve="program" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5jPBdK_npi" role="jymVt">
        <property role="TrG5h" value="withPredicates" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5jPBdK_npj" role="3clF46">
          <property role="TrG5h" value="predicateSymbols" />
          <node concept="8X2XB" id="5jPBdK_npk" role="1tU5fm">
            <node concept="3uibUv" id="5jPBdK_npl" role="8Xvag">
              <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_npm" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_npn" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_npp" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_qdG" role="3cqZAp">
            <node concept="37vLTI" id="5jPBdK_qdI" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_qdM" role="37vLTJ">
                <node concept="Xjq3P" id="5jPBdK_qdP" role="2Oq$k0" />
                <node concept="2OwXpG" id="5jPBdK_qdL" role="2OqNvi">
                  <ref role="2Oxat5" node="5jPBdK_qdB" resolve="predicateSymbols" />
                </node>
              </node>
              <node concept="37vLTw" id="5jPBdK_qdQ" role="37vLTx">
                <ref role="3cqZAo" node="5jPBdK_npj" resolve="predicateSymbols" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_rac" role="3cqZAp">
            <node concept="Xjq3P" id="5jPBdK_raa" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5jPBdK_nps" role="jymVt">
        <property role="TrG5h" value="withTrace" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5jPBdK_npt" role="3clF46">
          <property role="TrG5h" value="computingTracer" />
          <node concept="3uibUv" id="5jPBdK_npu" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~EvaluationTrace" resolve="EvaluationTrace" />
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_npv" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_npw" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_npy" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_np$" role="3cqZAp">
            <node concept="10Nm6u" id="5jPBdK_npz" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5jPBdK_np_" role="jymVt">
        <property role="TrG5h" value="withParam" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5jPBdK_npA" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="5jPBdK_npB" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5jPBdK_npC" role="3clF46">
          <property role="TrG5h" value="param" />
          <node concept="3uibUv" id="5jPBdK_npD" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_npE" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_npF" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_npH" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_npJ" role="3cqZAp">
            <node concept="10Nm6u" id="5jPBdK_npI" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6Qzc0KyFxsD" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="withStoreView" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6Qzc0KyFxsE" role="1B3o_S" />
        <node concept="3uibUv" id="6Qzc0KyFxsG" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
        <node concept="37vLTG" id="6Qzc0KyFxsH" role="3clF46">
          <property role="TrG5h" value="view" />
          <node concept="3uibUv" id="6Qzc0KyFxsI" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
          </node>
        </node>
        <node concept="3clFbS" id="6Qzc0KyFxsJ" role="3clF47">
          <node concept="3clFbF" id="6Qzc0KyFxsM" role="3cqZAp">
            <node concept="10Nm6u" id="6Qzc0KyFxsL" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6Qzc0KyFxsK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq4L4SC" role="jymVt">
        <property role="TrG5h" value="start" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="2UGjFq4L4SD" role="3clF46">
          <property role="TrG5h" value="sessionSolver" />
          <node concept="3uibUv" id="2UGjFq4L4SE" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
          </node>
        </node>
        <node concept="3uibUv" id="2UGjFq4L4SF" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="2UGjFq4L4SG" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq4L4SI" role="3clF47">
          <node concept="3cpWs8" id="2tcGHBEewJ$" role="3cqZAp">
            <node concept="3cpWsn" id="2tcGHBEewJ_" role="3cpWs9">
              <property role="TrG5h" value="csession" />
              <node concept="3uibUv" id="6yEjedmgUqt" role="1tU5fm">
                <ref role="3uigEE" to="cxk7:3F6vMxqo13Y" resolve="DefaultSessionSolver" />
              </node>
              <node concept="2ShNRf" id="2tcGHBEewJA" role="33vP2m">
                <node concept="1pGfFk" id="1ggxSI7$OLj" role="2ShVmc">
                  <ref role="37wK5l" to="cxk7:23c4kVtavpK" resolve="DefaultSessionSolver" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_B63" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_Bcd" role="3clFbG">
              <node concept="37vLTw" id="2tcGHBEewJE" role="2Oq$k0">
                <ref role="3cqZAo" node="2tcGHBEewJ_" resolve="csession" />
              </node>
              <node concept="liA8E" id="5jPBdK_Bhd" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.init(jetbrains.mps.logic.reactor.program.PredicateSymbol...):void" resolve="init" />
                <node concept="2OqwBi" id="2tcGHBEex4W" role="37wK5m">
                  <node concept="Xjq3P" id="2tcGHBEex4X" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2tcGHBEex4Y" role="2OqNvi">
                    <ref role="2Oxat5" node="5jPBdK_qdB" resolve="predicateSymbols" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_p5i" role="3cqZAp">
            <node concept="37vLTI" id="5jPBdK_p7U" role="3clFbG">
              <node concept="37vLTw" id="5jPBdK_p5h" role="37vLTJ">
                <ref role="3cqZAo" node="5jPBdK_nJi" resolve="INSTANCE" />
              </node>
              <node concept="2ShNRf" id="5jPBdK_pxU" role="37vLTx">
                <node concept="1pGfFk" id="5jPBdK_qS9" role="2ShVmc">
                  <ref role="37wK5l" node="5jPBdK_qM0" resolve="TestingEvaluationSession" />
                  <node concept="37vLTw" id="5jPBdK_DfM" role="37wK5m">
                    <ref role="3cqZAo" node="2tcGHBEewJ_" resolve="csession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="5jPBdK_qdB" role="jymVt">
        <property role="TrG5h" value="predicateSymbols" />
        <node concept="3Tm6S6" id="5jPBdK_qdC" role="1B3o_S" />
        <node concept="10Q1$e" id="5jPBdK_qn0" role="1tU5fm">
          <node concept="3uibUv" id="5jPBdK_qdF" role="10Q1$1">
            <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="6X5F0NgIt2Q" role="jymVt">
        <property role="TrG5h" value="program" />
        <node concept="3Tm6S6" id="6X5F0NgIt2R" role="1B3o_S" />
        <node concept="3uibUv" id="6X5F0NgIt2T" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_mO3" role="jymVt" />
    <node concept="312cEu" id="5jPBdK_dKd" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Backend" />
      <node concept="3Tm1VV" id="5jPBdK_dKe" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_dR3" role="EKbjA">
        <ref role="3uigEE" to="w7la:~EvaluationSession$Backend" resolve="EvaluationSession.Backend" />
      </node>
      <node concept="2tJIrI" id="5jPBdK_dUF" role="jymVt" />
      <node concept="3clFb_" id="5jPBdK_dRk" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="current" />
        <node concept="3uibUv" id="5jPBdK_dRl" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_dRm" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_dRo" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_nTT" role="3cqZAp">
            <node concept="37vLTw" id="5jPBdK_nTS" role="3clFbG">
              <ref role="3cqZAo" node="5jPBdK_nJi" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5jPBdK_dTD" role="jymVt" />
      <node concept="3clFb_" id="5jPBdK_dSh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="createConfig" />
        <node concept="37vLTG" id="6X5F0NgIslG" role="3clF46">
          <property role="TrG5h" value="program" />
          <node concept="3uibUv" id="6X5F0NgIsrs" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
          </node>
        </node>
        <node concept="3uibUv" id="5jPBdK_dSi" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5jPBdK_dSj" role="1B3o_S" />
        <node concept="3clFbS" id="5jPBdK_dSl" role="3clF47">
          <node concept="3clFbF" id="5jPBdK_nWq" role="3cqZAp">
            <node concept="2ShNRf" id="5jPBdK_nWo" role="3clFbG">
              <node concept="1pGfFk" id="6X5F0NgIsKG" role="2ShVmc">
                <ref role="37wK5l" node="6X5F0NgIsD1" resolve="TestingEvaluationSession.Config" />
                <node concept="37vLTw" id="6X5F0NgItsZ" role="37wK5m">
                  <ref role="3cqZAo" node="6X5F0NgIslG" resolve="program" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5jPBdK_dIT" role="1B3o_S" />
    <node concept="3uibUv" id="5jPBdK_dJd" role="1zkMxy">
      <ref role="3uigEE" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
    </node>
    <node concept="312cEg" id="5jPBdK_qYD" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <node concept="3Tm6S6" id="5jPBdK_qYE" role="1B3o_S" />
      <node concept="3uibUv" id="5jPBdK_qYG" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6yEjedm5WkE">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="TestingUnificationSolver" />
    <node concept="2tJIrI" id="6yEjedm5WFP" role="jymVt" />
    <node concept="3clFbW" id="6yEjedm5WI7" role="jymVt">
      <node concept="37vLTG" id="3FIATxbQcKV" role="3clF46">
        <property role="TrG5h" value="logicalUnification" />
        <node concept="3uibUv" id="5cDlfXsLvq0" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4xTpErjR15$" resolve="DefaultLogicalUnification" />
        </node>
      </node>
      <node concept="3cqZAl" id="6yEjedm5WI9" role="3clF45" />
      <node concept="3Tm1VV" id="6yEjedm5WIa" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm5WIb" role="3clF47">
        <node concept="XkiVB" id="6yEjedm5WNa" role="3cqZAp">
          <ref role="37wK5l" to="cxk7:5p8T3QHGKJ7" resolve="UnificationPredicate.UnificationSolver" />
          <node concept="37vLTw" id="6yEjedm5WTt" role="37wK5m">
            <ref role="3cqZAo" node="3FIATxbQcKV" resolve="logicalUnification" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6yEjedm5XCT" role="jymVt" />
    <node concept="3clFb_" id="6yEjedm5XWy" role="jymVt">
      <property role="TrG5h" value="askUni" />
      <node concept="10P_77" id="6yEjedm5ZZz" role="3clF45" />
      <node concept="3Tm1VV" id="6yEjedm5XW_" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm5XWA" role="3clF47">
        <node concept="3clFbF" id="6yEjedm6hex" role="3cqZAp">
          <node concept="1rXfSq" id="6yEjedm6hew" role="3clFbG">
            <ref role="37wK5l" to="cxk7:2UGjFq4lTDy" resolve="doAsk" />
            <node concept="37vLTw" id="6yEjedm6hnq" role="37wK5m">
              <ref role="3cqZAo" node="6yEjedm5Zmw" resolve="a" />
            </node>
            <node concept="37vLTw" id="6yEjedm6hE8" role="37wK5m">
              <ref role="3cqZAo" node="6yEjedm5ZEw" resolve="b" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6yEjedm5Zmw" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="6yEjedm5ZDk" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6yEjedm5ZEw" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="6yEjedm5ZXm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6yEjedm62ZU" role="jymVt" />
    <node concept="3clFb_" id="6yEjedm623c" role="jymVt">
      <property role="TrG5h" value="tellUni" />
      <node concept="3cqZAl" id="6yEjedm63W$" role="3clF45" />
      <node concept="3Tm1VV" id="6yEjedm623e" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm623f" role="3clF47">
        <node concept="3clFbF" id="6yEjedm6hJS" role="3cqZAp">
          <node concept="1rXfSq" id="6yEjedm6hJR" role="3clFbG">
            <ref role="37wK5l" to="cxk7:2UGjFq4mbmq" resolve="doTell" />
            <node concept="37vLTw" id="6yEjedm6hPb" role="37wK5m">
              <ref role="3cqZAo" node="6yEjedm623g" resolve="a" />
            </node>
            <node concept="37vLTw" id="6yEjedm6hWN" role="37wK5m">
              <ref role="3cqZAo" node="6yEjedm623i" resolve="b" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6yEjedm623g" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="6yEjedm623h" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6yEjedm623i" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="6yEjedm623j" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6yEjedm5WkF" role="1B3o_S" />
    <node concept="3uibUv" id="7lt0LtQwpQM" role="1zkMxy">
      <ref role="3uigEE" to="cxk7:6GYQG_Spvw5" resolve="UnificationPredicate.UnificationSolver" />
    </node>
  </node>
  <node concept="312cEu" id="6yEjedm8s$A">
    <property role="TrG5h" value="TestingEqualsSolver" />
    <node concept="2tJIrI" id="6yEjedm8s_T" role="jymVt" />
    <node concept="3clFb_" id="6yEjedm8tAi" role="jymVt">
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="6yEjedm8tDF" role="3clF46">
        <property role="TrG5h" value="a" />
        <node concept="3uibUv" id="6yEjedm8tFi" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6yEjedm8tGg" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="3uibUv" id="6yEjedm8tHT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="6yEjedm8tAk" role="3clF45" />
      <node concept="3Tm1VV" id="6yEjedm8tAl" role="1B3o_S" />
      <node concept="3clFbS" id="6yEjedm8tAm" role="3clF47">
        <node concept="3clFbF" id="6yEjedm8tOR" role="3cqZAp">
          <node concept="1rXfSq" id="6yEjedm8tOQ" role="3clFbG">
            <ref role="37wK5l" to="cxk7:2UGjFq4lGBW" resolve="_tell" />
            <node concept="37vLTw" id="6yEjedm8tTM" role="37wK5m">
              <ref role="3cqZAo" node="6yEjedm8tDF" resolve="a" />
            </node>
            <node concept="37vLTw" id="6yEjedm8u66" role="37wK5m">
              <ref role="3cqZAo" node="6yEjedm8tGg" resolve="b" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6yEjedm8sYi" role="jymVt" />
    <node concept="3Tm1VV" id="6yEjedm8s$B" role="1B3o_S" />
    <node concept="3uibUv" id="7lt0LtQw8s8" role="1zkMxy">
      <ref role="3uigEE" to="cxk7:3HJTsBn4ogZ" resolve="EqualsPredicate.EqualsSolver" />
    </node>
  </node>
  <node concept="312cEu" id="60zk4o6U2na">
    <property role="TrG5h" value="MockOccurrence" />
    <node concept="3clFbW" id="60zk4o6U2_C" role="jymVt">
      <node concept="37vLTG" id="60zk4o6U2NL" role="3clF46">
        <property role="TrG5h" value="ctr" />
        <node concept="3uibUv" id="60zk4o6U2WO" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="60zk4o6U2Cb" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="3uibUv" id="60zk4o6U2Gs" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="60zk4o6U2KY" role="11_B2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="60zk4o6U2_E" role="3clF45" />
      <node concept="3Tm1VV" id="60zk4o6U2_F" role="1B3o_S" />
      <node concept="3clFbS" id="60zk4o6U2_G" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U31S" role="3cqZAp">
          <node concept="37vLTI" id="60zk4o6U31U" role="3clFbG">
            <node concept="37vLTw" id="60zk4o6U31X" role="37vLTJ">
              <ref role="3cqZAo" node="60zk4o6U31O" resolve="myCtr" />
            </node>
            <node concept="37vLTw" id="60zk4o6U31Y" role="37vLTx">
              <ref role="3cqZAo" node="60zk4o6U2NL" resolve="ctr" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="60zk4o6U36n" role="3cqZAp">
          <node concept="37vLTI" id="60zk4o6U36p" role="3clFbG">
            <node concept="37vLTw" id="60zk4o6U36s" role="37vLTJ">
              <ref role="3cqZAo" node="60zk4o6U36i" resolve="myArgs" />
            </node>
            <node concept="37vLTw" id="60zk4o6U36t" role="37vLTx">
              <ref role="3cqZAo" node="60zk4o6U2Cb" resolve="args" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6U3gT" role="jymVt" />
    <node concept="3Tm1VV" id="60zk4o6U2nb" role="1B3o_S" />
    <node concept="3uibUv" id="60zk4o6U2rA" role="EKbjA">
      <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
    </node>
    <node concept="3clFb_" id="60zk4o6U2tG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="constraint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6U2tH" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U2tJ" role="3clF45">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="3clFbS" id="60zk4o6U2tK" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U3qP" role="3cqZAp">
          <node concept="37vLTw" id="60zk4o6U3qO" role="3clFbG">
            <ref role="3cqZAo" node="60zk4o6U31O" resolve="myCtr" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6U2tL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6U3wl" role="jymVt" />
    <node concept="3clFb_" id="60zk4o6U2tO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6U2tP" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U2tR" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="60zk4o6U2tS" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="60zk4o6U2tT" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U3F9" role="3cqZAp">
          <node concept="37vLTw" id="60zk4o6U3F8" role="3clFbG">
            <ref role="3cqZAo" node="60zk4o6U36i" resolve="myArgs" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6U2tU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6U3Mj" role="jymVt" />
    <node concept="3clFb_" id="60zk4o7hkDY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logicalContext" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o7hkDZ" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o7hkE1" role="3clF45">
        <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
      </node>
      <node concept="3clFbS" id="60zk4o7hkE2" role="3clF47">
        <node concept="YS8fn" id="60zk4o7hkQI" role="3cqZAp">
          <node concept="2ShNRf" id="60zk4o7hkRr" role="YScLw">
            <node concept="1pGfFk" id="60zk4o7hl6l" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o7hkE3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o7hl9b" role="jymVt" />
    <node concept="312cEg" id="60zk4o6U31O" role="jymVt">
      <property role="TrG5h" value="myCtr" />
      <node concept="3Tm6S6" id="60zk4o6U31P" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U31R" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
    </node>
    <node concept="312cEg" id="60zk4o6U36i" role="jymVt">
      <property role="TrG5h" value="myArgs" />
      <node concept="3Tm6S6" id="60zk4o6U36j" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U36l" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="60zk4o6U36m" role="11_B2D" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="60zk4o6U3Xk">
    <property role="TrG5h" value="MockInvocation" />
    <node concept="3Tm1VV" id="60zk4o6U3Xl" role="1B3o_S" />
    <node concept="3uibUv" id="60zk4o6U424" role="EKbjA">
      <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
    </node>
    <node concept="3clFbW" id="60zk4o6U4c6" role="jymVt">
      <node concept="37vLTG" id="60zk4o6U4eD" role="3clF46">
        <property role="TrG5h" value="predicate" />
        <node concept="3uibUv" id="60zk4o6U4j2" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
        </node>
      </node>
      <node concept="37vLTG" id="60zk4o6U4no" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="3uibUv" id="60zk4o6U4rF" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="60zk4o6U4wd" role="11_B2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="60zk4o6U4c8" role="3clF45" />
      <node concept="3Tm1VV" id="60zk4o6U4c9" role="1B3o_S" />
      <node concept="3clFbS" id="60zk4o6U4ca" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U4yT" role="3cqZAp">
          <node concept="37vLTI" id="60zk4o6U4yV" role="3clFbG">
            <node concept="37vLTw" id="60zk4o6U4yY" role="37vLTJ">
              <ref role="3cqZAo" node="60zk4o6U4yP" resolve="myPredicate" />
            </node>
            <node concept="37vLTw" id="60zk4o6U4yZ" role="37vLTx">
              <ref role="3cqZAo" node="60zk4o6U4eD" resolve="predicate" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="60zk4o6U4Bq" role="3cqZAp">
          <node concept="37vLTI" id="60zk4o6U4Bs" role="3clFbG">
            <node concept="37vLTw" id="60zk4o6U4Bv" role="37vLTJ">
              <ref role="3cqZAo" node="60zk4o6U4Bl" resolve="myArgs" />
            </node>
            <node concept="37vLTw" id="60zk4o6U4Bw" role="37vLTx">
              <ref role="3cqZAo" node="60zk4o6U4no" resolve="args" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6U4Lp" role="jymVt" />
    <node concept="3clFb_" id="60zk4o6U44a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6U44b" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U44d" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3clFbS" id="60zk4o6U44e" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U4VY" role="3cqZAp">
          <node concept="37vLTw" id="60zk4o6U4VX" role="3clFbG">
            <ref role="3cqZAo" node="60zk4o6U4yP" resolve="myPredicate" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6U44f" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6U4Z_" role="jymVt" />
    <node concept="3clFb_" id="60zk4o6U44i" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6U44j" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U44l" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="60zk4o6U44m" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="60zk4o6U44n" role="3clF47">
        <node concept="3clFbF" id="60zk4o6U5ar" role="3cqZAp">
          <node concept="37vLTw" id="60zk4o6U5aq" role="3clFbG">
            <ref role="3cqZAo" node="60zk4o6U4Bl" resolve="myArgs" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6U44o" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o6U5h_" role="jymVt" />
    <node concept="3clFb_" id="60zk4o7hjOZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logicalContext" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o7hjP0" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o7hjP2" role="3clF45">
        <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
      </node>
      <node concept="3clFbS" id="60zk4o7hjP3" role="3clF47">
        <node concept="YS8fn" id="60zk4o7hkda" role="3cqZAp">
          <node concept="2ShNRf" id="60zk4o7hkdR" role="YScLw">
            <node concept="1pGfFk" id="60zk4o7hksL" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o7hjP4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="60zk4o7hk1i" role="jymVt" />
    <node concept="312cEg" id="60zk4o6U4yP" role="jymVt">
      <property role="TrG5h" value="myPredicate" />
      <node concept="3Tm6S6" id="60zk4o6U4yQ" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U4yS" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
    </node>
    <node concept="312cEg" id="60zk4o6U4Bl" role="jymVt">
      <property role="TrG5h" value="myArgs" />
      <node concept="3Tm6S6" id="60zk4o6U4Bm" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6U4Bo" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="60zk4o6U4Bp" role="11_B2D" />
      </node>
    </node>
  </node>
</model>

