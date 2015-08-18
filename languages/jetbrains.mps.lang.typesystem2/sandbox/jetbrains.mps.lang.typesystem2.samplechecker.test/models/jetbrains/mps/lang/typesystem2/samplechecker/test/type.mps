<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a2b9c5e8-1c86-4372-9a3f-35db5f00994a(jetbrains.mps.lang.typesystem2.samplechecker.test.type)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="-1" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.lang.typesystem2.samplechecker.template)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="j8ec" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.baseLanguage.tuples.runtime(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tp68" ref="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1216993439383" name="methods" index="1qtyYc" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173990517731" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticMethodCall" flags="nn" index="1niqFM">
        <property id="1173992444083" name="methodName" index="1npL6y" />
        <property id="1173992483054" name="fqClassName" index="1npUBZ" />
        <child id="319021450862604085" name="actualArgument" index="2U24H$" />
        <child id="1175794062018" name="returnType" index="32Mpfj" />
      </concept>
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1240934738108" name="parameter" index="3HumAs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
    </language>
  </registry>
  <node concept="1lH9Xt" id="7t5VLKGANqt">
    <property role="TrG5h" value="Subclassing" />
    <node concept="2XrIbr" id="7t5VLKGS9tZ" role="1qtyYc">
      <property role="TrG5h" value="same" />
      <node concept="3clFbS" id="7t5VLKGS9u0" role="3clF47">
        <node concept="3cpWs8" id="7t5VLKGSekk" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGSekn" role="3cpWs9">
            <property role="TrG5h" value="xs" />
            <node concept="_YKpA" id="7t5VLKGSekg" role="1tU5fm">
              <node concept="3uibUv" id="7t5VLKGSp_W" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="7t5VLKGSemC" role="33vP2m">
              <node concept="2WthIp" id="7t5VLKGSemF" role="2Oq$k0" />
              <node concept="2XshWL" id="7t5VLKGSemH" role="2OqNvi">
                <ref role="2WH_rO" node="7t5VLKGSbUg" resolve="maybeList" />
                <node concept="37vLTw" id="7t5VLKGSenr" role="2XxRq1">
                  <ref role="3cqZAo" node="7t5VLKGS9Qm" resolve="left" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7t5VLKGSeo3" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGSeo4" role="3cpWs9">
            <property role="TrG5h" value="ys" />
            <node concept="_YKpA" id="7t5VLKGSeo5" role="1tU5fm">
              <node concept="3uibUv" id="7t5VLKGSpB4" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="7t5VLKGSeo7" role="33vP2m">
              <node concept="2WthIp" id="7t5VLKGSeo8" role="2Oq$k0" />
              <node concept="2XshWL" id="7t5VLKGSeo9" role="2OqNvi">
                <ref role="2WH_rO" node="7t5VLKGSbUg" resolve="maybeList" />
                <node concept="37vLTw" id="7t5VLKGSers" role="2XxRq1">
                  <ref role="3cqZAo" node="7t5VLKGS9QN" resolve="right" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1_o_46" id="7t5VLKGS9Rv" role="3cqZAp">
          <node concept="3clFbS" id="7t5VLKGS9Rw" role="2LFqv$">
            <node concept="3clFbJ" id="7t5VLKGSeBE" role="3cqZAp">
              <node concept="3clFbS" id="7t5VLKGSeBF" role="3clFbx">
                <node concept="3cpWs6" id="7t5VLKGSeII" role="3cqZAp">
                  <node concept="3clFbT" id="7t5VLKGSeKZ" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7t5VLKGSeDv" role="3clFbw">
                <node concept="2OqwBi" id="7t5VLKGSeDJ" role="3fr31v">
                  <node concept="2WthIp" id="7t5VLKGSeDM" role="2Oq$k0" />
                  <node concept="2XshWL" id="7t5VLKGSeDO" role="2OqNvi">
                    <ref role="2WH_rO" node="7t5VLKGS9tZ" resolve="same" />
                    <node concept="3M$PaV" id="7t5VLKGSeEo" role="2XxRq1">
                      <ref role="3M$S_o" node="7t5VLKGS9Rz" resolve="x" />
                    </node>
                    <node concept="3M$PaV" id="7t5VLKGSeHg" role="2XxRq1">
                      <ref role="3M$S_o" node="7t5VLKGS9SL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1_o_bx" id="7t5VLKGS9Rx" role="1_o_by">
            <node concept="37vLTw" id="7t5VLKGSuMw" role="1_o_bz">
              <ref role="3cqZAo" node="7t5VLKGSekn" resolve="xs" />
            </node>
            <node concept="1_o_bG" id="7t5VLKGS9Rz" role="1_o_aQ">
              <property role="TrG5h" value="x" />
            </node>
          </node>
          <node concept="1_o_bx" id="7t5VLKGS9SJ" role="1_o_by">
            <node concept="37vLTw" id="7t5VLKGSetj" role="1_o_bz">
              <ref role="3cqZAo" node="7t5VLKGSeo4" resolve="ys" />
            </node>
            <node concept="1_o_bG" id="7t5VLKGS9SL" role="1_o_aQ">
              <property role="TrG5h" value="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7t5VLKGSi3n" role="3cqZAp" />
        <node concept="3cpWs8" id="7t5VLKGShy5" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGShy6" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="3Tqbb2" id="7t5VLKGShy2" role="1tU5fm" />
            <node concept="2OqwBi" id="7t5VLKGShy7" role="33vP2m">
              <node concept="2WthIp" id="7t5VLKGShy8" role="2Oq$k0" />
              <node concept="2XshWL" id="7t5VLKGShy9" role="2OqNvi">
                <ref role="2WH_rO" node="7t5VLKGSeXk" resolve="maybeNode" />
                <node concept="37vLTw" id="7t5VLKGShya" role="2XxRq1">
                  <ref role="3cqZAo" node="7t5VLKGS9Qm" resolve="left" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7t5VLKGShAk" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGShAl" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3Tqbb2" id="7t5VLKGShAm" role="1tU5fm" />
            <node concept="2OqwBi" id="7t5VLKGShAn" role="33vP2m">
              <node concept="2WthIp" id="7t5VLKGShAo" role="2Oq$k0" />
              <node concept="2XshWL" id="7t5VLKGShAp" role="2OqNvi">
                <ref role="2WH_rO" node="7t5VLKGSeXk" resolve="maybeNode" />
                <node concept="37vLTw" id="7t5VLKGSxXA" role="2XxRq1">
                  <ref role="3cqZAo" node="7t5VLKGS9QN" resolve="right" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7t5VLKGShMS" role="3cqZAp">
          <node concept="3clFbS" id="7t5VLKGShMU" role="3clFbx">
            <node concept="3cpWs6" id="7t5VLKGShVR" role="3cqZAp">
              <node concept="3clFbT" id="7t5VLKGShW3" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7t5VLKGShVd" role="3clFbw">
            <node concept="1eOMI4" id="7t5VLKGShVh" role="3fr31v">
              <node concept="2YFouu" id="7t5VLKGShVe" role="1eOMHV">
                <node concept="37vLTw" id="7t5VLKGShVf" role="3uHU7w">
                  <ref role="3cqZAo" node="7t5VLKGShAl" resolve="b" />
                </node>
                <node concept="37vLTw" id="7t5VLKGShVg" role="3uHU7B">
                  <ref role="3cqZAo" node="7t5VLKGShy6" resolve="a" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7t5VLKGSuAF" role="3cqZAp" />
        <node concept="3clFbF" id="7t5VLKGSeQp" role="3cqZAp">
          <node concept="3clFbT" id="7t5VLKGSeQo" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7t5VLKGS9Qg" role="3clF45" />
      <node concept="37vLTG" id="7t5VLKGS9Qm" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="7t5VLKGSbQe" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="7t5VLKGS9QN" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="7t5VLKGSbSL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7t5VLKGS9Rr" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="7t5VLKGSbUg" role="1qtyYc">
      <property role="TrG5h" value="maybeList" />
      <node concept="3clFbS" id="7t5VLKGSbUh" role="3clF47">
        <node concept="3clFbF" id="7t5VLKGSgOI" role="3cqZAp">
          <node concept="3K4zz7" id="7t5VLKGSh02" role="3clFbG">
            <node concept="10Nm6u" id="7t5VLKGSh2D" role="3K4GZi" />
            <node concept="2ZW3vV" id="7t5VLKGSgOK" role="3K4Cdx">
              <node concept="3uibUv" id="7t5VLKGSgOL" role="2ZW6by">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
              </node>
              <node concept="37vLTw" id="7t5VLKGSgOM" role="2ZW6bz">
                <ref role="3cqZAo" node="7t5VLKGSckg" resolve="o" />
              </node>
            </node>
            <node concept="10QFUN" id="7t5VLKGSh0X" role="3K4E3e">
              <node concept="_YKpA" id="7t5VLKGSh0Y" role="10QFUM">
                <node concept="3uibUv" id="7t5VLKGSpz1" role="_ZDj9">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="7t5VLKGSh10" role="10QFUP">
                <ref role="3cqZAo" node="7t5VLKGSckg" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7t5VLKGSck4" role="3clF45">
        <node concept="3uibUv" id="7t5VLKGSpr1" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7t5VLKGSck1" role="1B3o_S" />
      <node concept="37vLTG" id="7t5VLKGSckg" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="7t5VLKGSckf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="7t5VLKGSeXk" role="1qtyYc">
      <property role="TrG5h" value="maybeNode" />
      <node concept="37vLTG" id="7t5VLKGSfgU" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="7t5VLKGSfh1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="7t5VLKGSeXl" role="3clF47">
        <node concept="3clFbF" id="7t5VLKGShcd" role="3cqZAp">
          <node concept="3K4zz7" id="7t5VLKGShkh" role="3clFbG">
            <node concept="10Nm6u" id="7t5VLKGShlA" role="3K4GZi" />
            <node concept="2ZW3vV" id="7t5VLKGShcf" role="3K4Cdx">
              <node concept="3uibUv" id="7t5VLKGShcg" role="2ZW6by">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="37vLTw" id="7t5VLKGShch" role="2ZW6bz">
                <ref role="3cqZAo" node="7t5VLKGSfgU" resolve="o" />
              </node>
            </node>
            <node concept="10QFUN" id="7t5VLKGShkY" role="3K4E3e">
              <node concept="3Tqbb2" id="7t5VLKGShkZ" role="10QFUM" />
              <node concept="37vLTw" id="7t5VLKGShl0" role="10QFUP">
                <ref role="3cqZAo" node="7t5VLKGSfgU" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7t5VLKGSfgR" role="3clF45" />
      <node concept="3Tm6S6" id="7t5VLKGSfgN" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="7t5VLKGB11U" role="1SL9yI">
      <property role="TrG5h" value="subclassing_C" />
      <node concept="3cqZAl" id="7t5VLKGB11V" role="3clF45" />
      <node concept="3clFbS" id="7t5VLKGB11Z" role="3clF47">
        <node concept="3clFbH" id="7t5VLKGT7Ki" role="3cqZAp" />
        <node concept="3cpWs8" id="7t5VLKGThb5" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGThb6" role="3cpWs9">
            <property role="TrG5h" value="expected" />
            <node concept="_YKpA" id="7t5VLKGThaQ" role="1tU5fm">
              <node concept="2I9FWS" id="7t5VLKGThaT" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="7t5VLKGThb7" role="33vP2m">
              <node concept="2OqwBi" id="7t5VLKGThb8" role="2Oq$k0">
                <node concept="2OqwBi" id="7t5VLKGThb9" role="2Oq$k0">
                  <node concept="3xONca" id="7t5VLKGTHya" role="2Oq$k0">
                    <ref role="3xOPvv" node="7t5VLKGT7IR" resolve="expected_C" />
                  </node>
                  <node concept="3Tsc0h" id="7t5VLKGThbb" role="2OqNvi">
                    <ref role="3TtcxE" to="tp68:hHp56YpiWP" />
                  </node>
                </node>
                <node concept="3$u5V9" id="7t5VLKGThbc" role="2OqNvi">
                  <node concept="1bVj0M" id="7t5VLKGThbd" role="23t8la">
                    <node concept="3clFbS" id="7t5VLKGThbe" role="1bW5cS">
                      <node concept="3clFbF" id="7t5VLKGThbf" role="3cqZAp">
                        <node concept="2OqwBi" id="7t5VLKGThbg" role="3clFbG">
                          <node concept="1PxgMI" id="7t5VLKGThbh" role="2Oq$k0">
                            <ref role="1PxNhF" to="tp68:h5nCRdH" resolve="InternalNewExpression" />
                            <node concept="37vLTw" id="7t5VLKGThbi" role="1PxMeX">
                              <ref role="3cqZAo" node="7t5VLKGThbk" resolve="it" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7t5VLKGThbj" role="2OqNvi">
                            <ref role="3TtcxE" to="tp68:i3HumyW" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7t5VLKGThbk" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7t5VLKGThbl" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7t5VLKGThbm" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4JRKVCvax8H" role="3cqZAp" />
        <node concept="3vwNmj" id="7t5VLKGSich" role="3cqZAp">
          <node concept="2OqwBi" id="7t5VLKGSj7i" role="3vwVQn">
            <node concept="2WthIp" id="7t5VLKGSj7l" role="2Oq$k0" />
            <node concept="2XshWL" id="7t5VLKGSj7n" role="2OqNvi">
              <ref role="2WH_rO" node="7t5VLKGS9tZ" resolve="same" />
              <node concept="37vLTw" id="7t5VLKGSjv4" role="2XxRq1">
                <ref role="3cqZAo" node="7t5VLKGThb6" resolve="expected" />
              </node>
              <node concept="2YIFZM" id="7t5VLKGSupd" role="2XxRq1">
                <ref role="37wK5l" to="kqnc:5H6hZahiCgu" resolve="allSubtypePathsTo" />
                <ref role="1Pybhc" to="kqnc:tIwzd2cJHD" resolve="SubclassingUtil" />
                <node concept="3xONca" id="7t5VLKGTHPX" role="37wK5m">
                  <ref role="3xOPvv" node="7t5VLKGTHET" resolve="C" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7t5VLKGTHe8" role="1SL9yI">
      <property role="TrG5h" value="subclassing_D" />
      <node concept="3cqZAl" id="7t5VLKGTHe9" role="3clF45" />
      <node concept="3clFbS" id="7t5VLKGTHea" role="3clF47">
        <node concept="3clFbH" id="7t5VLKGTHeb" role="3cqZAp" />
        <node concept="3cpWs8" id="7t5VLKGTHec" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGTHed" role="3cpWs9">
            <property role="TrG5h" value="expected" />
            <node concept="_YKpA" id="7t5VLKGTHee" role="1tU5fm">
              <node concept="2I9FWS" id="7t5VLKGTHef" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="7t5VLKGTHeg" role="33vP2m">
              <node concept="2OqwBi" id="7t5VLKGTHeh" role="2Oq$k0">
                <node concept="2OqwBi" id="7t5VLKGTHei" role="2Oq$k0">
                  <node concept="3xONca" id="7t5VLKGTHej" role="2Oq$k0">
                    <ref role="3xOPvv" node="7t5VLKGTGo8" resolve="expected_D" />
                  </node>
                  <node concept="3Tsc0h" id="7t5VLKGTHek" role="2OqNvi">
                    <ref role="3TtcxE" to="tp68:hHp56YpiWP" />
                  </node>
                </node>
                <node concept="3$u5V9" id="7t5VLKGTHel" role="2OqNvi">
                  <node concept="1bVj0M" id="7t5VLKGTHem" role="23t8la">
                    <node concept="3clFbS" id="7t5VLKGTHen" role="1bW5cS">
                      <node concept="3clFbF" id="7t5VLKGTHeo" role="3cqZAp">
                        <node concept="2OqwBi" id="7t5VLKGTHep" role="3clFbG">
                          <node concept="1PxgMI" id="7t5VLKGTHeq" role="2Oq$k0">
                            <ref role="1PxNhF" to="tp68:h5nCRdH" resolve="InternalNewExpression" />
                            <node concept="37vLTw" id="7t5VLKGTHer" role="1PxMeX">
                              <ref role="3cqZAo" node="7t5VLKGTHet" resolve="it" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7t5VLKGTHes" role="2OqNvi">
                            <ref role="3TtcxE" to="tp68:i3HumyW" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7t5VLKGTHet" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7t5VLKGTHeu" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7t5VLKGTHev" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7t5VLKGTHew" role="3cqZAp" />
        <node concept="3vwNmj" id="7t5VLKGTHex" role="3cqZAp">
          <node concept="2OqwBi" id="7t5VLKGTHey" role="3vwVQn">
            <node concept="2WthIp" id="7t5VLKGTHez" role="2Oq$k0" />
            <node concept="2XshWL" id="7t5VLKGTHe$" role="2OqNvi">
              <ref role="2WH_rO" node="7t5VLKGS9tZ" resolve="same" />
              <node concept="37vLTw" id="7t5VLKGTHe_" role="2XxRq1">
                <ref role="3cqZAo" node="7t5VLKGTHed" resolve="expected" />
              </node>
              <node concept="2YIFZM" id="7t5VLKGTHeA" role="2XxRq1">
                <ref role="37wK5l" to="kqnc:5H6hZahiCgu" resolve="allSubtypePathsTo" />
                <ref role="1Pybhc" to="kqnc:tIwzd2cJHD" resolve="SubclassingUtil" />
                <node concept="3xONca" id="7t5VLKGTHeB" role="37wK5m">
                  <ref role="3xOPvv" node="7t5VLKGGsK4" resolve="D" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="4JRKVCv9wTk" role="1SL9yI">
      <property role="TrG5h" value="subclassing_String" />
      <node concept="3cqZAl" id="4JRKVCv9wTl" role="3clF45" />
      <node concept="3clFbS" id="4JRKVCv9wTm" role="3clF47">
        <node concept="3clFbH" id="4JRKVCv9wTn" role="3cqZAp" />
        <node concept="3cpWs8" id="4JRKVCv9wTo" role="3cqZAp">
          <node concept="3cpWsn" id="4JRKVCv9wTp" role="3cpWs9">
            <property role="TrG5h" value="expected" />
            <node concept="_YKpA" id="4JRKVCv9wTq" role="1tU5fm">
              <node concept="2I9FWS" id="4JRKVCv9wTr" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="4JRKVCv9wTs" role="33vP2m">
              <node concept="2OqwBi" id="4JRKVCv9wTt" role="2Oq$k0">
                <node concept="2OqwBi" id="4JRKVCv9wTu" role="2Oq$k0">
                  <node concept="3xONca" id="4JRKVCv9xsD" role="2Oq$k0">
                    <ref role="3xOPvv" node="4JRKVCv8K6n" resolve="expected_String" />
                  </node>
                  <node concept="3Tsc0h" id="4JRKVCv9wTw" role="2OqNvi">
                    <ref role="3TtcxE" to="tp68:hHp56YpiWP" />
                  </node>
                </node>
                <node concept="3$u5V9" id="4JRKVCv9wTx" role="2OqNvi">
                  <node concept="1bVj0M" id="4JRKVCv9wTy" role="23t8la">
                    <node concept="3clFbS" id="4JRKVCv9wTz" role="1bW5cS">
                      <node concept="3clFbF" id="4JRKVCv9wT$" role="3cqZAp">
                        <node concept="2OqwBi" id="4JRKVCv9wT_" role="3clFbG">
                          <node concept="1PxgMI" id="4JRKVCv9wTA" role="2Oq$k0">
                            <ref role="1PxNhF" to="tp68:h5nCRdH" resolve="InternalNewExpression" />
                            <node concept="37vLTw" id="4JRKVCv9wTB" role="1PxMeX">
                              <ref role="3cqZAo" node="4JRKVCv9wTD" resolve="it" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="4JRKVCv9wTC" role="2OqNvi">
                            <ref role="3TtcxE" to="tp68:i3HumyW" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4JRKVCv9wTD" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4JRKVCv9wTE" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="4JRKVCv9wTF" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4JRKVCv9wTG" role="3cqZAp" />
        <node concept="3vwNmj" id="4JRKVCv9wTH" role="3cqZAp">
          <node concept="2OqwBi" id="4JRKVCv9wTI" role="3vwVQn">
            <node concept="2WthIp" id="4JRKVCv9wTJ" role="2Oq$k0" />
            <node concept="2XshWL" id="4JRKVCv9wTK" role="2OqNvi">
              <ref role="2WH_rO" node="7t5VLKGS9tZ" resolve="same" />
              <node concept="37vLTw" id="4JRKVCv9wTL" role="2XxRq1">
                <ref role="3cqZAo" node="4JRKVCv9wTp" resolve="expected" />
              </node>
              <node concept="2YIFZM" id="4JRKVCv9wTM" role="2XxRq1">
                <ref role="37wK5l" to="kqnc:5H6hZahiCgu" resolve="allSubtypePathsTo" />
                <ref role="1Pybhc" to="kqnc:tIwzd2cJHD" resolve="SubclassingUtil" />
                <node concept="3B5_sB" id="4JRKVCv9xP4" role="37wK5m">
                  <ref role="3B5MYn" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7t5VLKGAWWi" role="1SKRRt">
      <node concept="312cEu" id="7t5VLKGAXcp" role="1qenE9">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="Container" />
        <node concept="2tJIrI" id="7t5VLKGAXc_" role="jymVt" />
        <node concept="312cEu" id="7t5VLKGB10f" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="A" />
          <node concept="3Tm1VV" id="7t5VLKGB10g" role="1B3o_S" />
          <node concept="3xLA65" id="7t5VLKGB12r" role="lGtFl">
            <property role="TrG5h" value="A" />
          </node>
        </node>
        <node concept="2tJIrI" id="7t5VLKGAXcM" role="jymVt" />
        <node concept="312cEu" id="7t5VLKGB117" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="B" />
          <node concept="3Tm1VV" id="7t5VLKGB118" role="1B3o_S" />
          <node concept="3xLA65" id="7t5VLKGB12B" role="lGtFl">
            <property role="TrG5h" value="B" />
          </node>
          <node concept="3uibUv" id="7t5VLKGB130" role="1zkMxy">
            <ref role="3uigEE" node="7t5VLKGB10f" resolve="Container.A" />
          </node>
        </node>
        <node concept="2tJIrI" id="7t5VLKGB10U" role="jymVt" />
        <node concept="3HP615" id="7t5VLKGGqF7" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="I" />
          <node concept="3Tm1VV" id="7t5VLKGGqF8" role="1B3o_S" />
        </node>
        <node concept="2tJIrI" id="7t5VLKGGqYR" role="jymVt" />
        <node concept="3HP615" id="7t5VLKGGqYv" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="J" />
          <node concept="3Tm1VV" id="7t5VLKGGqYw" role="1B3o_S" />
          <node concept="3uibUv" id="7t5VLKGGr0m" role="3HQHJm">
            <ref role="3uigEE" node="7t5VLKGGqF7" resolve="Container.I" />
          </node>
        </node>
        <node concept="2tJIrI" id="7t5VLKGGqZG" role="jymVt" />
        <node concept="3HP615" id="7t5VLKGGqZh" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="K" />
          <node concept="3Tm1VV" id="7t5VLKGGqZi" role="1B3o_S" />
        </node>
        <node concept="2tJIrI" id="7t5VLKGGqXM" role="jymVt" />
        <node concept="312cEu" id="7t5VLKGGr0Y" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="C" />
          <node concept="3Tm1VV" id="7t5VLKGGr0Z" role="1B3o_S" />
          <node concept="3uibUv" id="7t5VLKGGr1J" role="1zkMxy">
            <ref role="3uigEE" node="7t5VLKGB117" resolve="Container.B" />
          </node>
          <node concept="3uibUv" id="7t5VLKGGr24" role="EKbjA">
            <ref role="3uigEE" node="7t5VLKGGqYv" resolve="Container.J" />
          </node>
          <node concept="3xLA65" id="7t5VLKGTHET" role="lGtFl">
            <property role="TrG5h" value="C" />
          </node>
        </node>
        <node concept="2tJIrI" id="7t5VLKGGr31" role="jymVt" />
        <node concept="312cEu" id="7t5VLKGGr2e" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="D" />
          <node concept="3Tm1VV" id="7t5VLKGGr2f" role="1B3o_S" />
          <node concept="3uibUv" id="7t5VLKGGr3G" role="1zkMxy">
            <ref role="3uigEE" node="7t5VLKGGr0Y" resolve="Container.C" />
          </node>
          <node concept="3uibUv" id="7t5VLKGGr3X" role="EKbjA">
            <ref role="3uigEE" node="7t5VLKGGqZh" resolve="Container.K" />
          </node>
          <node concept="3xLA65" id="7t5VLKGGsK4" role="lGtFl">
            <property role="TrG5h" value="D" />
          </node>
        </node>
        <node concept="2tJIrI" id="7t5VLKGNThL" role="jymVt" />
        <node concept="3Tm1VV" id="7t5VLKGAXcq" role="1B3o_S" />
      </node>
    </node>
    <node concept="1qefOq" id="7t5VLKGT5Ga" role="1SKRRt">
      <node concept="1niqFM" id="7t5VLKGT7Ag" role="1qenE9">
        <property role="1npL6y" value="expect" />
        <property role="1npUBZ" value="_" />
        <node concept="1nCR9W" id="7t5VLKGTkLF" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8f92" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTkUn" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGqF7" resolve="Container.I" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTkV4" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGqYv" resolve="Container.J" />
          </node>
        </node>
        <node concept="1nCR9W" id="7t5VLKGTkW3" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8f9O" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTl50" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGB10f" resolve="Container.A" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTl5$" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGB117" resolve="Container.B" />
          </node>
        </node>
        <node concept="3cqZAl" id="7t5VLKGT7Fw" role="32Mpfj" />
        <node concept="3xLA65" id="7t5VLKGT7IR" role="lGtFl">
          <property role="TrG5h" value="expected_C" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7t5VLKGTGnV" role="1SKRRt">
      <node concept="1niqFM" id="7t5VLKGTGnW" role="1qenE9">
        <property role="1npL6y" value="expect" />
        <property role="1npUBZ" value="_" />
        <node concept="1nCR9W" id="7t5VLKGTGnX" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8faA" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTGnY" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGqZh" resolve="Container.K" />
          </node>
        </node>
        <node concept="1nCR9W" id="7t5VLKGTGnZ" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8fbq" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTGo0" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGqF7" resolve="Container.I" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTGo1" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGqYv" resolve="Container.J" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTGo2" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGr0Y" resolve="Container.C" />
          </node>
        </node>
        <node concept="1nCR9W" id="7t5VLKGTGo3" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8fch" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTGo4" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGB10f" resolve="Container.A" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTGo5" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGB117" resolve="Container.B" />
          </node>
          <node concept="3uibUv" id="7t5VLKGTGo6" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGr0Y" resolve="Container.C" />
          </node>
        </node>
        <node concept="3cqZAl" id="7t5VLKGTGo7" role="32Mpfj" />
        <node concept="3xLA65" id="7t5VLKGTGo8" role="lGtFl">
          <property role="TrG5h" value="expected_D" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4JRKVCv8K67" role="1SKRRt">
      <node concept="1niqFM" id="4JRKVCv8K68" role="1qenE9">
        <property role="1npL6y" value="expect" />
        <property role="1npUBZ" value="_" />
        <node concept="1nCR9W" id="4JRKVCv8K69" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8K6a" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="4JRKVCv9wxb" role="3HumAs">
            <ref role="3uigEE" to="guwi:~Serializable" resolve="Serializable" />
          </node>
          <node concept="3uibUv" id="4JRKVCv9wI_" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="1nCR9W" id="4JRKVCv8K6c" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8K6d" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="4JRKVCv9wJR" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Comparable" resolve="Comparable" />
            <node concept="3uibUv" id="4JRKVCvcS53" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="3uibUv" id="4JRKVCv9wKg" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="1nCR9W" id="4JRKVCv8K6h" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv8K6i" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="4JRKVCv9wLP" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
          </node>
          <node concept="3uibUv" id="4JRKVCv9wMh" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="1nCR9W" id="4JRKVCv9wNK" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv9wNL" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="4JRKVCv9wNN" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3cqZAl" id="4JRKVCv8K6m" role="32Mpfj" />
        <node concept="3xLA65" id="4JRKVCv8K6n" role="lGtFl">
          <property role="TrG5h" value="expected_String" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="7t5VLKGQVAO">
    <property role="2XOHcw" value="." />
  </node>
</model>

