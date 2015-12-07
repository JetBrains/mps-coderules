<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:86a12676-9e8d-407a-83b6-a911ff5a7cf8(jetbrains.mps.logic.builtin.java)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="xq5w" ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.var)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="f8dg" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:annotations(jetbrains.mps.jchr.runtime/)" />
    <import index="95zw" ref="r:f3ff7852-b9dd-4760-b213-a8a031c77d0e(jetbrains.mps.logic.jchr.predicate)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
  <node concept="312cEu" id="5$WbtTOYoMb">
    <property role="TrG5h" value="JavaPredicate" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="7ISVfSJp0R" role="jymVt" />
    <node concept="312cEg" id="7ISVfSJoWw" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="7ISVfSJoWu" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJoWv" role="1tU5fm">
        <ref role="3uigEE" to="qrld:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYpQU" role="jymVt" />
    <node concept="3clFbW" id="5$WbtTOYsLU" role="jymVt">
      <node concept="37vLTG" id="2KSgAgV9I6z" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2KSgAgV9I8P" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6X5F0Ngy7rA" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="6X5F0Ngy7t$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7Cj7nY" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="5uFPQ7Cj7rl" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7Cj7qg" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5$WbtTOYsLW" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7CjeLQ" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYsLY" role="3clF47">
        <node concept="XkiVB" id="4xBopTzr9fT" role="3cqZAp">
          <ref role="37wK5l" to="qrld:6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7Cj7IA" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7Cj7nY" resolve="args" />
          </node>
        </node>
        <node concept="3clFbF" id="6X5F0Ngy7tW" role="3cqZAp">
          <node concept="37vLTI" id="6X5F0Ngy7tY" role="3clFbG">
            <node concept="2OqwBi" id="6X5F0Ngy7u2" role="37vLTJ">
              <node concept="Xjq3P" id="6X5F0Ngy7u5" role="2Oq$k0" />
              <node concept="2OwXpG" id="6X5F0Ngy7u1" role="2OqNvi">
                <ref role="2Oxat5" node="6X5F0Ngy7tS" resolve="id" />
              </node>
            </node>
            <node concept="37vLTw" id="6X5F0Ngy7u6" role="37vLTx">
              <ref role="3cqZAo" node="6X5F0Ngy7rA" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ISVfSJoWG" role="3cqZAp">
          <node concept="37vLTI" id="7ISVfSJoWH" role="3clFbG">
            <node concept="2OqwBi" id="7ISVfSJoWI" role="37vLTJ">
              <node concept="Xjq3P" id="7ISVfSJoWJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ISVfSJoWK" role="2OqNvi">
                <ref role="2Oxat5" node="7ISVfSJoWw" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="2KSgAgV9Ict" role="37vLTx">
              <ref role="3cqZAo" node="2KSgAgV9I6z" resolve="predicateSymbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYoTe" role="jymVt" />
    <node concept="3clFb_" id="6X5F0Ngy7Gy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="id" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6X5F0Ngy7G_" role="3clF47">
        <node concept="3clFbF" id="6X5F0Ngy7L2" role="3cqZAp">
          <node concept="37vLTw" id="6X5F0Ngy7L1" role="3clFbG">
            <ref role="3cqZAo" node="6X5F0Ngy7tS" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6X5F0Ngy7C2" role="1B3o_S" />
      <node concept="3uibUv" id="6X5F0Ngy7G1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="6X5F0Ngy7$Q" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJoQm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJoQn" role="3clF45">
        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJoQo" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJoQr" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpbE" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpbD" role="3clFbG">
            <ref role="3cqZAo" node="7ISVfSJoWw" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5$WbtTOYoMc" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzr8gp" role="1zkMxy">
      <ref role="3uigEE" to="qrld:6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="312cEg" id="6X5F0Ngy7tS" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm6S6" id="6X5F0Ngy7tT" role="1B3o_S" />
      <node concept="3uibUv" id="6X5F0Ngy7tV" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
  </node>
</model>

