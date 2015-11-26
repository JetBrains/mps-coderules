<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fcdb37a4-4602-4a05-8d91-e439430734b8(jetbrains.mps.logic.jchr.program)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="xq5w" ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.var)" />
    <import index="e2ud" ref="r:86a12676-9e8d-407a-83b6-a911ff5a7cf8(jetbrains.mps.logic.builtin.java)" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7ISVfSIedQ">
    <property role="TrG5h" value="JchrEvaluationSession" />
    <node concept="2tJIrI" id="7ISVfSIeeg" role="jymVt" />
    <node concept="2YIFZL" id="7ISVfSIf0j" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="7ISVfSIf0l" role="3clF45" />
      <node concept="3Tm1VV" id="7ISVfSIf0m" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIf0n" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIf2T" role="3cqZAp">
          <node concept="2YIFZM" id="7ISVfSIf4g" role="3clFbG">
            <ref role="37wK5l" to="rchb:5uFPQ7Bwt$y" resolve="setBackend" />
            <ref role="1Pybhc" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
            <node concept="2ShNRf" id="7ISVfSIf5$" role="37wK5m">
              <node concept="HV5vD" id="7ISVfSIf8i" role="2ShVmc">
                <ref role="HV5vE" node="7ISVfSIeeZ" resolve="JchrEvaluationSession.Backend" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIeZi" role="jymVt" />
    <node concept="2YIFZL" id="7ISVfSIeIW" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="7ISVfSIeK_" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="7ISVfSIeMU" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
      </node>
      <node concept="3uibUv" id="7ISVfSIeJI" role="3clF45">
        <ref role="3uigEE" node="7ISVfSIedQ" resolve="JchrEvaluationSession" />
      </node>
      <node concept="3Tm6S6" id="7ISVfSIeUM" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIeJ0" role="3clF47">
        <node concept="3cpWs8" id="7ISVfSIkA4" role="3cqZAp">
          <node concept="3cpWsn" id="7ISVfSIkA5" role="3cpWs9">
            <property role="TrG5h" value="csession" />
            <node concept="3uibUv" id="7ISVfSIk_R" role="1tU5fm">
              <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
            </node>
            <node concept="2OqwBi" id="7ISVfSIkA6" role="33vP2m">
              <node concept="2YIFZM" id="7ISVfSIkA7" role="2Oq$k0">
                <ref role="37wK5l" to="qrld:6Kcfpq7BWKD" resolve="with" />
                <ref role="1Pybhc" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
                <node concept="2OqwBi" id="7ISVfSIkA8" role="37wK5m">
                  <node concept="37vLTw" id="7ISVfSIkA9" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ISVfSIeK_" resolve="config" />
                  </node>
                  <node concept="liA8E" id="7ISVfSIkAa" role="2OqNvi">
                    <ref role="37wK5l" to="rchb:7ISVfSIiZn" resolve="getPredicateSymbols" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7ISVfSIkAb" role="2OqNvi">
                <ref role="37wK5l" to="qrld:6Kcfpq7Cgrc" resolve="newSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ISVfSIeOH" role="3cqZAp">
          <node concept="2ShNRf" id="7ISVfSIeOF" role="3clFbG">
            <node concept="1pGfFk" id="7ISVfSIeUk" role="2ShVmc">
              <ref role="37wK5l" node="7ISVfSIeTk" resolve="JchrEvaluationSession" />
              <node concept="37vLTw" id="7ISVfSIkQC" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIkA5" resolve="csession" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIeRz" role="jymVt" />
    <node concept="3clFbW" id="7ISVfSIeTk" role="jymVt">
      <node concept="37vLTG" id="7ISVfSIkR3" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="7ISVfSIkVZ" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ISVfSIeTm" role="3clF45" />
      <node concept="3Tm6S6" id="7ISVfSIeU_" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIeTo" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIlkU" role="3cqZAp">
          <node concept="37vLTI" id="7ISVfSIlkW" role="3clFbG">
            <node concept="2OqwBi" id="7ISVfSIll0" role="37vLTJ">
              <node concept="Xjq3P" id="7ISVfSIll3" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ISVfSIlkZ" role="2OqNvi">
                <ref role="2Oxat5" node="7ISVfSIlkQ" resolve="computingSession" />
              </node>
            </node>
            <node concept="37vLTw" id="7ISVfSIll4" role="37vLTx">
              <ref role="3cqZAo" node="7ISVfSIkR3" resolve="computingSession" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIeep" role="jymVt" />
    <node concept="2tJIrI" id="7ISVfSIXEv" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIXWF" role="jymVt">
      <property role="TrG5h" value="computingTracer" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="7ISVfSIXWG" role="3clF45">
        <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="ComputingTracer" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSIXWH" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIXWJ" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIXWL" role="3cqZAp">
          <node concept="10Nm6u" id="7ISVfSIXWK" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIXIO" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIg2_" role="jymVt">
      <property role="TrG5h" value="computingSession" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="7ISVfSIg2A" role="3clF45">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSIg2B" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIg2D" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIo7v" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSIo7u" role="3clFbG">
            <ref role="3cqZAo" node="7ISVfSIlkQ" resolve="computingSession" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ISVfSIqPv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIhAc" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIg2G" role="jymVt">
      <property role="TrG5h" value="tell" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="7ISVfSIg2H" role="3clF45" />
      <node concept="3Tm1VV" id="7ISVfSIg2I" role="1B3o_S" />
      <node concept="37vLTG" id="7ISVfSIg2K" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="7ISVfSIqv7" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7B$mzX" resolve="Symbol" />
        </node>
      </node>
      <node concept="37vLTG" id="7ISVfSIg2M" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="7ISVfSIg2N" role="1tU5fm">
          <node concept="3uibUv" id="7ISVfSIg2O" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7ISVfSIg2P" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIob6" role="3cqZAp">
          <node concept="2OqwBi" id="7ISVfSIobF" role="3clFbG">
            <node concept="37vLTw" id="7ISVfSIob5" role="2Oq$k0">
              <ref role="3cqZAo" node="7ISVfSIlkQ" resolve="computingSession" />
            </node>
            <node concept="liA8E" id="7ISVfSIofH" role="2OqNvi">
              <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
              <node concept="37vLTw" id="7ISVfSIora" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIg2K" resolve="symbol" />
              </node>
              <node concept="37vLTw" id="7ISVfSIomK" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIg2M" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ISVfSIqVs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIhI1" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIg30" role="jymVt">
      <property role="TrG5h" value="ask" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="7ISVfSIg31" role="3clF45" />
      <node concept="3Tm1VV" id="7ISVfSIg32" role="1B3o_S" />
      <node concept="37vLTG" id="7ISVfSIg34" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="7ISVfSIg35" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="7ISVfSIrPy" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="7ISVfSIs2D" role="1tU5fm">
          <node concept="3uibUv" id="7ISVfSIrW_" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7ISVfSIg36" role="3clF47">
        <node concept="3clFbF" id="7ISVfSIrIB" role="3cqZAp">
          <node concept="2OqwBi" id="7ISVfSIrJc" role="3clFbG">
            <node concept="37vLTw" id="7ISVfSIrIA" role="2Oq$k0">
              <ref role="3cqZAo" node="7ISVfSIlkQ" resolve="computingSession" />
            </node>
            <node concept="liA8E" id="7ISVfSIrMb" role="2OqNvi">
              <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
              <node concept="37vLTw" id="7ISVfSIrMZ" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIg34" resolve="predicateSymbol" />
              </node>
              <node concept="37vLTw" id="7ISVfSIswq" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIrPy" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ISVfSIri5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIhXI" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIg37" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="7ISVfSIg38" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="7ISVfSIg39" role="11_B2D">
          <ref role="3uigEE" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ISVfSIg3a" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIg3c" role="3clF47">
        <node concept="3SKdUt" id="7ISVfSIrGX" role="3cqZAp">
          <node concept="3SKdUq" id="7ISVfSIrGZ" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="7ISVfSIr$n" role="3cqZAp">
          <node concept="2ShNRf" id="7ISVfSIr$H" role="YScLw">
            <node concept="1pGfFk" id="7ISVfSIrEh" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="7ISVfSIrEN" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ISVfSIrnZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIi5A" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIg3f" role="jymVt">
      <property role="TrG5h" value="constraintOccurrences" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="7ISVfSIg3g" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="7ISVfSIg3h" role="1tU5fm">
          <ref role="3uigEE" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="7ISVfSIg3i" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="7ISVfSIg3j" role="11_B2D">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ISVfSIg3k" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIg3m" role="3clF47">
        <node concept="3SKdUt" id="7ISVfSIrHa" role="3cqZAp">
          <node concept="3SKdUq" id="7ISVfSIrHb" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="7ISVfSIrHc" role="3cqZAp">
          <node concept="2ShNRf" id="7ISVfSIrHd" role="YScLw">
            <node concept="1pGfFk" id="7ISVfSIrHe" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="7ISVfSIrHf" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ISVfSIru0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIh11" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bs88" role="jymVt">
      <property role="TrG5h" value="registerHandler" />
      <node concept="37vLTG" id="7ISVfSIOyP" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="7ISVfSIOGX" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7B$mzX" resolve="Symbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7BtOW" role="3clF46">
        <property role="TrG5h" value="instructible" />
        <node concept="3uibUv" id="6Kcfpq7BtZc" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7AXVG" resolve="Instructible" />
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7Bs8a" role="3clF45" />
      <node concept="3Tmbuc" id="6Kcfpq7BskN" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bs8c" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Bu1B" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7Bu22" role="3clFbG">
            <node concept="37vLTw" id="7ISVfSIOWI" role="2Oq$k0">
              <ref role="3cqZAo" node="7ISVfSIlkQ" resolve="computingSession" />
            </node>
            <node concept="liA8E" id="6Kcfpq7Bu2G" role="2OqNvi">
              <ref role="37wK5l" to="qrld:6Kcfpq7B2yH" resolve="registerHandler" />
              <node concept="37vLTw" id="7ISVfSIOLP" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIOyP" resolve="symbol" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7Bu3W" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7BtOW" resolve="instructible" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BuLv" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Buzk" role="jymVt">
      <property role="TrG5h" value="registerSolver" />
      <node concept="37vLTG" id="7ISVfSIOZm" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="7ISVfSIPw0" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7Buzn" role="3clF46">
        <property role="TrG5h" value="queryable" />
        <node concept="3uibUv" id="6Kcfpq7Bw2C" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7Buzp" role="3clF45" />
      <node concept="3Tmbuc" id="6Kcfpq7Buzq" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Buzr" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Buzs" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7Buzt" role="3clFbG">
            <node concept="37vLTw" id="7ISVfSIPqq" role="2Oq$k0">
              <ref role="3cqZAo" node="7ISVfSIlkQ" resolve="computingSession" />
            </node>
            <node concept="liA8E" id="6Kcfpq7Buzv" role="2OqNvi">
              <ref role="37wK5l" to="qrld:6Kcfpq7B2LV" resolve="registerSolver" />
              <node concept="37vLTw" id="7ISVfSIPef" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIOZm" resolve="predicateSymbol" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7Buzx" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7Buzn" resolve="queryable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xBopTzylBh" role="3cqZAp">
          <node concept="2OqwBi" id="4xBopTzylBi" role="3clFbG">
            <node concept="37vLTw" id="7ISVfSIPtf" role="2Oq$k0">
              <ref role="3cqZAo" node="7ISVfSIlkQ" resolve="computingSession" />
            </node>
            <node concept="liA8E" id="4xBopTzylBk" role="2OqNvi">
              <ref role="37wK5l" to="qrld:6Kcfpq7B2yH" resolve="registerHandler" />
              <node concept="37vLTw" id="7ISVfSIPfC" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIOZm" resolve="predicateSymbol" />
              </node>
              <node concept="37vLTw" id="4xBopTzylH0" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7Buzn" resolve="queryable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIMqr" role="jymVt" />
    <node concept="312cEu" id="7ISVfSIeeZ" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Backend" />
      <node concept="3Tm6S6" id="7ISVfSIeVT" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSIeul" role="EKbjA">
        <ref role="3uigEE" to="rchb:5uFPQ7BwtoR" resolve="EvaluationSession.Backend" />
      </node>
      <node concept="2tJIrI" id="7ISVfSIewM" role="jymVt" />
      <node concept="Wx3nA" id="7ISVfSIeA4" role="jymVt">
        <property role="TrG5h" value="ourSession" />
        <node concept="3Tm6S6" id="7ISVfSIeA6" role="1B3o_S" />
        <node concept="3uibUv" id="7ISVfSIeBy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
          <node concept="3uibUv" id="7ISVfSIeDf" role="11_B2D">
            <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
          </node>
        </node>
        <node concept="2ShNRf" id="7ISVfSIeHb" role="33vP2m">
          <node concept="1pGfFk" id="7ISVfSIeH8" role="2ShVmc">
            <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
            <node concept="3uibUv" id="7ISVfSIeH9" role="1pMfVU">
              <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ISVfSIe$I" role="jymVt" />
      <node concept="3clFb_" id="7ISVfSIeuC" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="current" />
        <node concept="3uibUv" id="7ISVfSIeuD" role="3clF45">
          <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="7ISVfSIeuE" role="1B3o_S" />
        <node concept="3clFbS" id="7ISVfSIeuG" role="3clF47">
          <node concept="3cpWs8" id="7ISVfSIffS" role="3cqZAp">
            <node concept="3cpWsn" id="7ISVfSIffT" role="3cpWs9">
              <property role="TrG5h" value="session" />
              <node concept="3uibUv" id="7ISVfSIffN" role="1tU5fm">
                <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
              </node>
              <node concept="2OqwBi" id="7ISVfSIffU" role="33vP2m">
                <node concept="37vLTw" id="7ISVfSIffV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ISVfSIeA4" resolve="ourSession" />
                </node>
                <node concept="liA8E" id="7ISVfSIffW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ISVfSIflP" role="3cqZAp">
            <node concept="3clFbS" id="7ISVfSIflR" role="3clFbx">
              <node concept="YS8fn" id="7ISVfSIfsU" role="3cqZAp">
                <node concept="2ShNRf" id="7ISVfSIftv" role="YScLw">
                  <node concept="1pGfFk" id="7ISVfSIfyH" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="7ISVfSIfzq" role="37wK5m">
                      <property role="Xl_RC" value="no session" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7ISVfSIfrz" role="3clFbw">
              <node concept="10Nm6u" id="7ISVfSIfsb" role="3uHU7w" />
              <node concept="37vLTw" id="7ISVfSIfpH" role="3uHU7B">
                <ref role="3cqZAo" node="7ISVfSIffT" resolve="session" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ISVfSIfCX" role="3cqZAp">
            <node concept="37vLTw" id="7ISVfSIfCV" role="3clFbG">
              <ref role="3cqZAo" node="7ISVfSIffT" resolve="session" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ISVfSIexY" role="jymVt" />
      <node concept="3clFb_" id="7ISVfSIeuJ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="start" />
        <node concept="37vLTG" id="7ISVfSIeuK" role="3clF46">
          <property role="TrG5h" value="config" />
          <node concept="3uibUv" id="7ISVfSIeuL" role="1tU5fm">
            <ref role="3uigEE" to="rchb:5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
          </node>
        </node>
        <node concept="3uibUv" id="7ISVfSIeuM" role="3clF45">
          <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="7ISVfSIeuN" role="1B3o_S" />
        <node concept="3clFbS" id="7ISVfSIeuP" role="3clF47">
          <node concept="3cpWs8" id="7ISVfSIfLo" role="3cqZAp">
            <node concept="3cpWsn" id="7ISVfSIfLp" role="3cpWs9">
              <property role="TrG5h" value="session" />
              <node concept="3uibUv" id="7ISVfSIfLq" role="1tU5fm">
                <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
              </node>
              <node concept="2OqwBi" id="7ISVfSIfLr" role="33vP2m">
                <node concept="37vLTw" id="7ISVfSIfLv" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ISVfSIeA4" resolve="ourSession" />
                </node>
                <node concept="liA8E" id="7ISVfSIfLs" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ISVfSIfLx" role="3cqZAp">
            <node concept="3clFbS" id="7ISVfSIfLy" role="3clFbx">
              <node concept="YS8fn" id="7ISVfSIfLz" role="3cqZAp">
                <node concept="2ShNRf" id="7ISVfSIfL$" role="YScLw">
                  <node concept="1pGfFk" id="7ISVfSIfL_" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="7ISVfSIfLA" role="37wK5m">
                      <property role="Xl_RC" value="session already active" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7ISVfSIfPo" role="3clFbw">
              <node concept="37vLTw" id="7ISVfSIfLD" role="3uHU7B">
                <ref role="3cqZAo" node="7ISVfSIfLp" resolve="session" />
              </node>
              <node concept="10Nm6u" id="7ISVfSIfLC" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbH" id="7ISVfSIfKL" role="3cqZAp" />
          <node concept="3cpWs8" id="7ISVfSIfHb" role="3cqZAp">
            <node concept="3cpWsn" id="7ISVfSIfHc" role="3cpWs9">
              <property role="TrG5h" value="newSession" />
              <node concept="3uibUv" id="7ISVfSIfHa" role="1tU5fm">
                <ref role="3uigEE" node="7ISVfSIedQ" resolve="JchrEvaluationSession" />
              </node>
              <node concept="1rXfSq" id="7ISVfSIfHd" role="33vP2m">
                <ref role="37wK5l" node="7ISVfSIeIW" resolve="create" />
                <node concept="37vLTw" id="7ISVfSIfHe" role="37wK5m">
                  <ref role="3cqZAo" node="7ISVfSIeuK" resolve="config" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ISVfSIfUX" role="3cqZAp">
            <node concept="2OqwBi" id="7ISVfSIfXX" role="3clFbG">
              <node concept="37vLTw" id="7ISVfSIfUV" role="2Oq$k0">
                <ref role="3cqZAo" node="7ISVfSIeA4" resolve="ourSession" />
              </node>
              <node concept="liA8E" id="7ISVfSIfZG" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object):void" resolve="set" />
                <node concept="37vLTw" id="7ISVfSIg0Y" role="37wK5m">
                  <ref role="3cqZAo" node="7ISVfSIfHc" resolve="newSession" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ISVfSIfF0" role="3cqZAp">
            <node concept="37vLTw" id="7ISVfSIfHf" role="3clFbG">
              <ref role="3cqZAo" node="7ISVfSIfHc" resolve="newSession" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ISVfSIezb" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="7ISVfSIeeE" role="jymVt" />
    <node concept="312cEu" id="7ISVfSIxNO" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Symbols" />
      <node concept="2tJIrI" id="7ISVfSIy3T" role="jymVt" />
      <node concept="3clFb_" id="7ISVfSIy6a" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="37vLTG" id="7ISVfSISyb" role="3clF46">
          <property role="TrG5h" value="evaluationSession" />
          <node concept="3uibUv" id="7ISVfSISEz" role="1tU5fm">
            <ref role="3uigEE" node="7ISVfSIedQ" resolve="JchrEvaluationSession" />
          </node>
        </node>
        <node concept="37vLTG" id="7ISVfSIJee" role="3clF46">
          <property role="TrG5h" value="symbol" />
          <node concept="3uibUv" id="7ISVfSIJhR" role="1tU5fm">
            <ref role="3uigEE" to="qrld:5uFPQ7B$mzX" resolve="Symbol" />
          </node>
        </node>
        <node concept="3cqZAl" id="7ISVfSIy6c" role="3clF45" />
        <node concept="3Tm1VV" id="7ISVfSIy6d" role="1B3o_S" />
        <node concept="3clFbS" id="7ISVfSIy6e" role="3clF47">
          <node concept="3clFbH" id="7ISVfSIYKv" role="3cqZAp" />
          <node concept="3clFbJ" id="7ISVfSIIXN" role="3cqZAp">
            <node concept="3clFbS" id="7ISVfSIIXO" role="3clFbx">
              <node concept="3clFbF" id="7ISVfSIVrg" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSIVrQ" role="3clFbG">
                  <node concept="37vLTw" id="7ISVfSIVrf" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                  </node>
                  <node concept="liA8E" id="7ISVfSIVsU" role="2OqNvi">
                    <ref role="37wK5l" node="6Kcfpq7Buzk" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSIYFl" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSIYFj" role="10QFUM">
                        <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSIYFk" role="10QFUP">
                        <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSIVIp" role="37wK5m">
                      <node concept="1pGfFk" id="7ISVfSIWk9" role="2ShVmc">
                        <ref role="37wK5l" to="95zw:3HJTsBn5KhD" resolve="UnificationSolverImpl" />
                        <node concept="2OqwBi" id="7ISVfSIWne" role="37wK5m">
                          <node concept="37vLTw" id="7ISVfSIWm5" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                          </node>
                          <node concept="liA8E" id="7ISVfSIWoU" role="2OqNvi">
                            <ref role="37wK5l" node="7ISVfSIg2_" resolve="computingSession" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7ISVfSIY_8" role="37wK5m">
                          <node concept="37vLTw" id="7ISVfSIYzH" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                          </node>
                          <node concept="liA8E" id="7ISVfSIYB7" role="2OqNvi">
                            <ref role="37wK5l" node="7ISVfSIXWF" resolve="computingTracer" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSIYJ8" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7ISVfSIJwN" role="3clFbw">
              <node concept="10M0yZ" id="7ISVfSIJ9U" role="2Oq$k0">
                <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                <ref role="3cqZAo" to="oy3s:5uFPQ7C29mw" resolve="UNI_SYM" />
              </node>
              <node concept="liA8E" id="7ISVfSIJyd" role="2OqNvi">
                <ref role="37wK5l" to="qrld:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSIJzc" role="37wK5m">
                  <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="7ISVfSIJml" role="3eNLev">
              <node concept="2OqwBi" id="7ISVfSIJ_2" role="3eO9$A">
                <node concept="10M0yZ" id="7ISVfSIJrd" role="2Oq$k0">
                  <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                  <ref role="3cqZAo" to="oy3s:5uFPQ7C23RV" resolve="EQ_SYM" />
                </node>
                <node concept="liA8E" id="7ISVfSIJAs" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:54i3Fxd17bK" resolve="equals" />
                  <node concept="37vLTw" id="7ISVfSIJBV" role="37wK5m">
                    <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7ISVfSIJmn" role="3eOfB_">
                <node concept="3clFbF" id="7ISVfSIYOv" role="3cqZAp">
                  <node concept="2OqwBi" id="7ISVfSIYOw" role="3clFbG">
                    <node concept="37vLTw" id="7ISVfSIYOx" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                    </node>
                    <node concept="liA8E" id="7ISVfSIYOy" role="2OqNvi">
                      <ref role="37wK5l" node="6Kcfpq7Buzk" resolve="registerSolver" />
                      <node concept="10QFUN" id="7ISVfSIYOz" role="37wK5m">
                        <node concept="3uibUv" id="7ISVfSIYO$" role="10QFUM">
                          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                        </node>
                        <node concept="37vLTw" id="7ISVfSIYO_" role="10QFUP">
                          <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7ISVfSIYOA" role="37wK5m">
                        <node concept="1pGfFk" id="7ISVfSIYOB" role="2ShVmc">
                          <ref role="37wK5l" to="95zw:3HJTsBn5dl7" resolve="EqualsSolverImpl" />
                          <node concept="2OqwBi" id="7ISVfSIYOC" role="37wK5m">
                            <node concept="37vLTw" id="7ISVfSIYOD" role="2Oq$k0">
                              <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                            </node>
                            <node concept="liA8E" id="7ISVfSIYOE" role="2OqNvi">
                              <ref role="37wK5l" node="7ISVfSIg2_" resolve="computingSession" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7ISVfSIYSU" role="3cqZAp" />
              </node>
            </node>
            <node concept="3eNFk2" id="7ISVfSIJuG" role="3eNLev">
              <node concept="2OqwBi" id="7ISVfSIJGK" role="3eO9$A">
                <node concept="10M0yZ" id="7ISVfSIJCI" role="2Oq$k0">
                  <ref role="1PxDUh" to="oy3s:6infEALAfer" resolve="AssertBuiltinConstraint" />
                  <ref role="3cqZAo" to="oy3s:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
                </node>
                <node concept="liA8E" id="7ISVfSIJIa" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:54i3Fxd17bK" resolve="equals" />
                  <node concept="37vLTw" id="7ISVfSIJJb" role="37wK5m">
                    <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7ISVfSIJuI" role="3eOfB_">
                <node concept="3clFbF" id="7ISVfSIZhm" role="3cqZAp">
                  <node concept="2OqwBi" id="7ISVfSIZhn" role="3clFbG">
                    <node concept="37vLTw" id="7ISVfSIZho" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                    </node>
                    <node concept="liA8E" id="7ISVfSIZhp" role="2OqNvi">
                      <ref role="37wK5l" node="6Kcfpq7Buzk" resolve="registerSolver" />
                      <node concept="10QFUN" id="7ISVfSIZhq" role="37wK5m">
                        <node concept="3uibUv" id="7ISVfSIZhr" role="10QFUM">
                          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                        </node>
                        <node concept="37vLTw" id="7ISVfSIZhs" role="10QFUP">
                          <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7ISVfSIZht" role="37wK5m">
                        <node concept="1pGfFk" id="7ISVfSIZhu" role="2ShVmc">
                          <ref role="37wK5l" to="95zw:6infEALANZc" resolve="AssertSolverImpl" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7ISVfSIZlS" role="3cqZAp" />
              </node>
            </node>
            <node concept="3eNFk2" id="7ISVfSIJJE" role="3eNLev">
              <node concept="2OqwBi" id="7ISVfSIJJF" role="3eO9$A">
                <node concept="10M0yZ" id="7ISVfSIK8M" role="2Oq$k0">
                  <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
                  <ref role="3cqZAo" to="xq5w:5uFPQ7C26$b" resolve="BOUND_SYM" />
                </node>
                <node concept="liA8E" id="7ISVfSIJJH" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:54i3Fxd17bK" resolve="equals" />
                  <node concept="37vLTw" id="7ISVfSIJJI" role="37wK5m">
                    <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7ISVfSIJJJ" role="3eOfB_">
                <node concept="3clFbF" id="7ISVfSJ2P6" role="3cqZAp">
                  <node concept="2OqwBi" id="7ISVfSJ2P7" role="3clFbG">
                    <node concept="37vLTw" id="7ISVfSJ2P8" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                    </node>
                    <node concept="liA8E" id="7ISVfSJ2P9" role="2OqNvi">
                      <ref role="37wK5l" node="6Kcfpq7Buzk" resolve="registerSolver" />
                      <node concept="10QFUN" id="7ISVfSJ2Pa" role="37wK5m">
                        <node concept="3uibUv" id="7ISVfSJ2Pb" role="10QFUM">
                          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                        </node>
                        <node concept="37vLTw" id="7ISVfSJ2Pc" role="10QFUP">
                          <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7ISVfSJ2Pd" role="37wK5m">
                        <node concept="HV5vD" id="7ISVfSJ2Zy" role="2ShVmc">
                          <ref role="HV5vE" to="95zw:7ISVfSJ0DF" resolve="LogicalSolverImpl.Bound" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7ISVfSJ2Np" role="3cqZAp" />
              </node>
            </node>
            <node concept="3eNFk2" id="7ISVfSJ2Gd" role="3eNLev">
              <node concept="2OqwBi" id="7ISVfSJ2Ge" role="3eO9$A">
                <node concept="10M0yZ" id="7ISVfSJ2Gf" role="2Oq$k0">
                  <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
                  <ref role="3cqZAo" to="xq5w:5uFPQ7C279$" resolve="FREE_SYM" />
                </node>
                <node concept="liA8E" id="7ISVfSJ2Gg" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:54i3Fxd17bK" resolve="equals" />
                  <node concept="37vLTw" id="7ISVfSJ2Gh" role="37wK5m">
                    <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7ISVfSJ2Gi" role="3eOfB_">
                <node concept="3clFbF" id="7ISVfSJ30n" role="3cqZAp">
                  <node concept="2OqwBi" id="7ISVfSJ30o" role="3clFbG">
                    <node concept="37vLTw" id="7ISVfSJ30p" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ISVfSISyb" resolve="evaluationSession" />
                    </node>
                    <node concept="liA8E" id="7ISVfSJ30q" role="2OqNvi">
                      <ref role="37wK5l" node="6Kcfpq7Buzk" resolve="registerSolver" />
                      <node concept="10QFUN" id="7ISVfSJ30r" role="37wK5m">
                        <node concept="3uibUv" id="7ISVfSJ30s" role="10QFUM">
                          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                        </node>
                        <node concept="37vLTw" id="7ISVfSJ30t" role="10QFUP">
                          <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7ISVfSJ30u" role="37wK5m">
                        <node concept="HV5vD" id="7ISVfSJ3cx" role="2ShVmc">
                          <ref role="HV5vE" to="95zw:7ISVfSJ1oi" resolve="LogicalSolverImpl.Free" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7ISVfSJ2Nu" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7ISVfSJ3e6" role="3cqZAp" />
        </node>
      </node>
      <node concept="2tJIrI" id="7ISVfSIy3Y" role="jymVt" />
      <node concept="3Tm1VV" id="7ISVfSIxNP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7ISVfSIszY" role="jymVt" />
    <node concept="3Tm1VV" id="7ISVfSIedR" role="1B3o_S" />
    <node concept="3uibUv" id="7ISVfSIefW" role="1zkMxy">
      <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
    </node>
    <node concept="312cEg" id="7ISVfSIlkQ" role="jymVt">
      <property role="TrG5h" value="computingSession" />
      <node concept="3Tm6S6" id="7ISVfSIlkR" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSIlkT" role="1tU5fm">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
      </node>
    </node>
  </node>
</model>

