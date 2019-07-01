<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8d367edf-0e3f-479f-8b0f-bd4f712af3fc(typechecking.samples.baseLanguage.incrementalBL@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="15" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="1" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.baseLanguageExt" version="0" />
  </languages>
  <imports>
    <import index="hfva" ref="r:20f81ae9-fed0-48fa-893d-6c6b658e3dee(jetbrains.mps.coderules.typechecking.test.util)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1211979288880" name="jetbrains.mps.lang.test.structure.AssertMatch" flags="nn" index="JA50E">
        <child id="1211979305365" name="before" index="JA92f" />
        <child id="1211979322383" name="after" index="JAdkl" />
      </concept>
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="1lH9Xt" id="2FNFm8neJtc">
    <property role="TrG5h" value="BLIncrTypecheck" />
    <node concept="1qefOq" id="3evPR3Ef1GF" role="1SKRRt">
      <node concept="3cpWs8" id="6gZak$B1VoG" role="1qenE9">
        <node concept="3cpWsn" id="6gZak$B1VoH" role="3cpWs9">
          <property role="TrG5h" value="i" />
          <node concept="10Oyi0" id="6gZak$B1VoF" role="1tU5fm" />
          <node concept="3cpWs3" id="3evPR3Ef1L7" role="33vP2m">
            <node concept="3cmrfG" id="3evPR3Ef1L9" role="3uHU7w">
              <property role="3cmrfH" value="1" />
              <node concept="3xLA65" id="3evPR3Ef1La" role="lGtFl">
                <property role="TrG5h" value="const0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6gZak$B1Vpx" role="3uHU7B">
              <property role="3cmrfH" value="42" />
            </node>
          </node>
          <node concept="3xLA65" id="6gZak$B1XHR" role="lGtFl">
            <property role="TrG5h" value="iVarDecl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6gZak$B1UDr" role="1SKRRt">
      <node concept="3clFb_" id="6gZak$B1UDs" role="1qenE9">
        <property role="TrG5h" value="foo" />
        <node concept="3cqZAl" id="6gZak$B1UDt" role="3clF45" />
        <node concept="3Tm1VV" id="6gZak$B1UDu" role="1B3o_S" />
        <node concept="3clFbS" id="6gZak$B1UDv" role="3clF47">
          <node concept="3cpWs8" id="6gZak$B1UDw" role="3cqZAp">
            <node concept="3cpWsn" id="6gZak$B1UDx" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="6gZak$B1UDy" role="1tU5fm" />
              <node concept="3cmrfG" id="6gZak$B1UDz" role="33vP2m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6gZak$B1UD$" role="3cqZAp">
            <node concept="37vLTI" id="6gZak$B1UD_" role="3clFbG">
              <node concept="37vLTw" id="6gZak$B1UDA" role="37vLTJ">
                <ref role="3cqZAo" node="6gZak$B1UDx" resolve="i" />
                <node concept="3xLA65" id="6gZak$B1UDB" role="lGtFl">
                  <property role="TrG5h" value="iVar" />
                </node>
              </node>
              <node concept="3cpWs3" id="6gZak$B1UDC" role="37vLTx">
                <node concept="37vLTw" id="6gZak$B1UDD" role="3uHU7B">
                  <ref role="3cqZAo" node="6gZak$B1UDx" resolve="i" />
                </node>
                <node concept="3cmrfG" id="6gZak$B1UDE" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                  <node concept="3xLA65" id="6gZak$B1UDF" role="lGtFl">
                    <property role="TrG5h" value="const1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="6gZak$B1UDG" role="lGtFl">
          <property role="TrG5h" value="demo1" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="2FNFm8neJtd" role="1qtyYc">
      <property role="TrG5h" value="assertSameAsGroundTruth" />
      <node concept="37vLTG" id="2FNFm8neJto" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="2FNFm8neJtV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2FNFm8neJtp" role="3clF46">
        <property role="TrG5h" value="incremLauncher" />
        <node concept="3uibUv" id="2FNFm8neJtW" role="1tU5fm">
          <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
        </node>
      </node>
      <node concept="3cqZAl" id="2FNFm8neJtq" role="3clF45" />
      <node concept="3clFbS" id="2FNFm8neJtr" role="3clF47">
        <node concept="3cpWs8" id="2FNFm8neJtX" role="3cqZAp">
          <node concept="3cpWsn" id="2FNFm8neJvg" role="3cpWs9">
            <property role="TrG5h" value="cleanLauncher" />
            <node concept="3uibUv" id="2FNFm8neJwr" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2YIFZM" id="2FNFm8nf8Vz" role="33vP2m">
              <ref role="37wK5l" to="hfva:2FNFm8neYtH" resolve="getLauncher" />
              <ref role="1Pybhc" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
              <node concept="37vLTw" id="2FNFm8nf8Z6" role="37wK5m">
                <ref role="3cqZAo" node="2FNFm8neJto" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FNFm8neJtY" role="3cqZAp">
          <node concept="2OqwBi" id="2FNFm8neJvh" role="3clFbG">
            <node concept="37vLTw" id="2FNFm8neJwt" role="2Oq$k0">
              <ref role="3cqZAo" node="2FNFm8neJtp" resolve="incremLauncher" />
            </node>
            <node concept="liA8E" id="2FNFm8neJwu" role="2OqNvi">
              <ref role="37wK5l" to="hfva:tyIfzC0ZRF" resolve="relaunch" />
              <node concept="37vLTw" id="2FNFm8neJyk" role="37wK5m">
                <ref role="3cqZAo" node="2FNFm8neJto" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FNFm8neJtZ" role="3cqZAp">
          <node concept="2OqwBi" id="2FNFm8neJvi" role="3clFbG">
            <node concept="2WthIp" id="2FNFm8neJwv" role="2Oq$k0" />
            <node concept="2XshWL" id="2FNFm8neJww" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJte" resolve="cmpTypes" />
              <node concept="2OqwBi" id="2FNFm8neJyl" role="2XxRq1">
                <node concept="37vLTw" id="2FNFm8neJzT" role="2Oq$k0">
                  <ref role="3cqZAo" node="2FNFm8neJvg" resolve="cleanLauncher" />
                </node>
                <node concept="liA8E" id="2FNFm8neJzU" role="2OqNvi">
                  <ref role="37wK5l" to="hfva:4aLjyB0PyDl" resolve="launch" />
                  <node concept="37vLTw" id="2FNFm8neJ$M" role="37wK5m">
                    <ref role="3cqZAo" node="2FNFm8neJto" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2FNFm8neJym" role="2XxRq1">
                <node concept="37vLTw" id="2FNFm8neJzV" role="2Oq$k0">
                  <ref role="3cqZAo" node="2FNFm8neJtp" resolve="incremLauncher" />
                </node>
                <node concept="liA8E" id="2FNFm8neJzW" role="2OqNvi">
                  <ref role="37wK5l" to="hfva:4aLjyB0SHom" resolve="getAllTypes" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2FNFm8neJts" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2FNFm8neJte" role="1qtyYc">
      <property role="TrG5h" value="cmpTypes" />
      <node concept="37vLTG" id="2FNFm8neJtt" role="3clF46">
        <property role="TrG5h" value="groundTruth" />
        <node concept="3rvAFt" id="2FNFm8neJu0" role="1tU5fm">
          <node concept="3uibUv" id="2FNFm8neJvj" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3Tqbb2" id="2FNFm8neJvk" role="3rvSg0" />
        </node>
      </node>
      <node concept="37vLTG" id="2FNFm8neJtu" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3rvAFt" id="2FNFm8neJu1" role="1tU5fm">
          <node concept="3uibUv" id="2FNFm8neJvl" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3Tqbb2" id="2FNFm8neJvm" role="3rvSg0" />
        </node>
      </node>
      <node concept="3cqZAl" id="2FNFm8neJtv" role="3clF45" />
      <node concept="3clFbS" id="2FNFm8neJtw" role="3clF47">
        <node concept="3clFbF" id="2FNFm8neJu3" role="3cqZAp">
          <node concept="2OqwBi" id="2FNFm8neJvo" role="3clFbG">
            <node concept="37vLTw" id="2FNFm8neJwy" role="2Oq$k0">
              <ref role="3cqZAo" node="2FNFm8neJtt" resolve="groundTruth" />
            </node>
            <node concept="2es0OD" id="2FNFm8neJwz" role="2OqNvi">
              <node concept="1bVj0M" id="2FNFm8neJyp" role="23t8la">
                <node concept="3clFbS" id="2FNFm8neJzY" role="1bW5cS">
                  <node concept="3vwNmj" id="2FNFm8neJ$P" role="3cqZAp">
                    <node concept="2OqwBi" id="2FNFm8neJ_n" role="3vwVQn">
                      <node concept="37vLTw" id="2FNFm8neJ_B" role="2Oq$k0">
                        <ref role="3cqZAo" node="2FNFm8neJtu" resolve="types" />
                      </node>
                      <node concept="2Nt0df" id="2FNFm8neJ_C" role="2OqNvi">
                        <node concept="2OqwBi" id="2FNFm8neJ_S" role="38cxEo">
                          <node concept="37vLTw" id="2FNFm8neJAb" role="2Oq$k0">
                            <ref role="3cqZAo" node="2FNFm8neJzZ" resolve="it" />
                          </node>
                          <node concept="3AY5_j" id="2FNFm8neJAc" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vwNmj" id="2FNFm8neJ$Q" role="3cqZAp">
                    <node concept="2YFouu" id="2FNFm8neJ_o" role="3vwVQn">
                      <node concept="3EllGN" id="2FNFm8neJ_D" role="3uHU7B">
                        <node concept="2OqwBi" id="2FNFm8neJ_T" role="3ElVtu">
                          <node concept="37vLTw" id="2FNFm8neJAd" role="2Oq$k0">
                            <ref role="3cqZAo" node="2FNFm8neJzZ" resolve="it" />
                          </node>
                          <node concept="3AY5_j" id="2FNFm8neJAe" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="2FNFm8neJ_U" role="3ElQJh">
                          <ref role="3cqZAo" node="2FNFm8neJtu" resolve="types" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2FNFm8neJ_E" role="3uHU7w">
                        <node concept="37vLTw" id="2FNFm8neJ_V" role="2Oq$k0">
                          <ref role="3cqZAo" node="2FNFm8neJzZ" resolve="it" />
                        </node>
                        <node concept="3AV6Ez" id="2FNFm8neJ_W" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2FNFm8neJzZ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2FNFm8neJ$R" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2FNFm8neJtx" role="1B3o_S" />
    </node>
    <node concept="1X3_iC" id="6gZak$B1UIE" role="lGtFl">
      <property role="3V$3am" value="nodesToCheck" />
      <property role="3V$3ak" value="8585453e-6bfb-4d80-98de-b16074f1d86c/1216913645126/1217501822150" />
      <node concept="1qefOq" id="2FNFm8neJtj" role="8Wnug">
        <node concept="312cEu" id="2FNFm8neJtJ" role="1qenE9">
          <property role="TrG5h" value="BLDemo" />
          <node concept="3clFb_" id="2FNFm8neJuk" role="jymVt">
            <property role="TrG5h" value="foo" />
            <node concept="37vLTG" id="2FNFm8neJvC" role="3clF46">
              <property role="TrG5h" value="b" />
              <node concept="10P_77" id="2FNFm8neJwO" role="1tU5fm" />
            </node>
            <node concept="10Oyi0" id="2FNFm8neJvD" role="3clF45" />
            <node concept="3Tm1VV" id="2FNFm8neJvE" role="1B3o_S" />
            <node concept="3clFbS" id="2FNFm8neJvF" role="3clF47">
              <node concept="3cpWs8" id="2FNFm8neJwP" role="3cqZAp">
                <node concept="3cpWsn" id="2FNFm8neJy_" role="3cpWs9">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="2FNFm8neJ$9" role="1tU5fm" />
                  <node concept="3cmrfG" id="2FNFm8neJ$a" role="33vP2m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2FNFm8neJwQ" role="3cqZAp">
                <node concept="3clFbS" id="2FNFm8neJyA" role="3clFbx">
                  <node concept="3clFbH" id="2FNFm8neJ$b" role="3cqZAp" />
                </node>
                <node concept="37vLTw" id="2FNFm8neJyB" role="3clFbw">
                  <ref role="3cqZAo" node="2FNFm8neJvC" resolve="b" />
                </node>
                <node concept="9aQIb" id="2FNFm8neJyC" role="9aQIa">
                  <node concept="3clFbS" id="2FNFm8neJ$c" role="9aQI4">
                    <node concept="3clFbF" id="2FNFm8neJ$Y" role="3cqZAp">
                      <node concept="37vLTI" id="2FNFm8neJ_r" role="3clFbG">
                        <node concept="37vLTw" id="2FNFm8neJ_G" role="37vLTJ">
                          <ref role="3cqZAo" node="2FNFm8neJy_" resolve="i" />
                          <node concept="3xLA65" id="2FNFm8neJ_Z" role="lGtFl">
                            <property role="TrG5h" value="iiVar" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="2FNFm8neJ_H" role="37vLTx">
                          <node concept="37vLTw" id="2FNFm8neJA0" role="3uHU7B">
                            <ref role="3cqZAo" node="2FNFm8neJy_" resolve="i" />
                          </node>
                          <node concept="3cmrfG" id="2FNFm8neJA1" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                            <node concept="3xLA65" id="2FNFm8neJAf" role="lGtFl">
                              <property role="TrG5h" value="const111" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2FNFm8neJwR" role="3cqZAp">
                <node concept="37vLTw" id="2FNFm8neJyD" role="3clFbG">
                  <ref role="3cqZAo" node="2FNFm8neJy_" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="2FNFm8neJul" role="1B3o_S" />
          <node concept="3xLA65" id="2FNFm8neJum" role="lGtFl">
            <property role="TrG5h" value="demo2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2FNFm8neJtn" role="1SL9yI">
      <property role="TrG5h" value="baseLangReplaceSingle" />
      <node concept="3cqZAl" id="2FNFm8neJtT" role="3clF45" />
      <node concept="3clFbS" id="2FNFm8neJtU" role="3clF47">
        <node concept="3cpWs8" id="3evPR3Ef6Z3" role="3cqZAp">
          <node concept="3cpWsn" id="3evPR3Ef6Z6" role="3cpWs9">
            <property role="TrG5h" value="testCase" />
            <node concept="3Tqbb2" id="3evPR3Ef6Z1" role="1tU5fm" />
            <node concept="3xONca" id="6gZak$B1YT7" role="33vP2m">
              <ref role="3xOPvv" node="6gZak$B1XHR" resolve="iVarDecl" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2FNFm8neJuW" role="3cqZAp">
          <node concept="3cpWsn" id="2FNFm8neJwb" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2FNFm8neJxI" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="2FNFm8neJxJ" role="33vP2m">
              <node concept="2JrnkZ" id="2FNFm8neJzr" role="2Oq$k0">
                <node concept="2OqwBi" id="2FNFm8neJ$C" role="2JrQYb">
                  <node concept="I4A8Y" id="2FNFm8neJ_g" role="2OqNvi" />
                  <node concept="37vLTw" id="3evPR3Ef8dw" role="2Oq$k0">
                    <ref role="3cqZAo" node="3evPR3Ef6Z6" resolve="testCase" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2FNFm8neJzs" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2FNFm8neJuX" role="3cqZAp">
          <node concept="3cpWsn" id="2FNFm8neJwc" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="2FNFm8neJxK" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="2FNFm8neJxL" role="33vP2m">
              <node concept="1pGfFk" id="2FNFm8neJzt" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="2FNFm8neJ$D" role="37wK5m">
                  <ref role="3cqZAo" node="2FNFm8neJwb" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="2FNFm8neJ$E" role="37wK5m">
                  <node concept="I4A8Y" id="2FNFm8neJ_i" role="2OqNvi" />
                  <node concept="37vLTw" id="3evPR3Efa0r" role="2Oq$k0">
                    <ref role="3cqZAo" node="3evPR3Ef6Z6" resolve="testCase" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2FNFm8neJ$F" role="37wK5m">
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FNFm8neJuY" role="3cqZAp" />
        <node concept="3cpWs8" id="2FNFm8neJuZ" role="3cqZAp">
          <node concept="3cpWsn" id="2FNFm8neJwd" role="3cpWs9">
            <property role="TrG5h" value="types1" />
            <node concept="3rvAFt" id="2FNFm8neJxM" role="1tU5fm">
              <node concept="3uibUv" id="2FNFm8neJzu" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2FNFm8neJzv" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="2FNFm8neJxN" role="33vP2m">
              <node concept="37vLTw" id="2FNFm8neJzw" role="2Oq$k0">
                <ref role="3cqZAo" node="2FNFm8neJwc" resolve="launcher" />
              </node>
              <node concept="liA8E" id="2FNFm8neJzx" role="2OqNvi">
                <ref role="37wK5l" to="hfva:4aLjyB0PyDl" resolve="launch" />
                <node concept="37vLTw" id="3evPR3EfagA" role="37wK5m">
                  <ref role="3cqZAo" node="3evPR3Ef6Z6" resolve="testCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2FNFm8neJv0" role="3cqZAp">
          <node concept="3cpWsn" id="2FNFm8neJwe" role="3cpWs9">
            <property role="TrG5h" value="iVarRef" />
            <node concept="3uibUv" id="2FNFm8neJxO" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="2FNFm8neJxP" role="33vP2m">
              <node concept="1eOMI4" id="2FNFm8neJzy" role="2Oq$k0">
                <node concept="10QFUN" id="2FNFm8neJ$H" role="1eOMHV">
                  <node concept="3uibUv" id="2FNFm8neJ_j" role="10QFUM">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="3xONca" id="6gZak$B1YPb" role="10QFUP">
                    <ref role="3xOPvv" node="6gZak$B1XHR" resolve="iVarDecl" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2FNFm8neJzz" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="JA50E" id="3evPR3EeWZ_" role="3cqZAp">
          <node concept="2c44tf" id="2FNFm8neJwf" role="JA92f">
            <node concept="10Oyi0" id="2FNFm8neJxQ" role="2c44tc" />
          </node>
          <node concept="3EllGN" id="2FNFm8neJwg" role="JAdkl">
            <node concept="37vLTw" id="2FNFm8neJxR" role="3ElVtu">
              <ref role="3cqZAo" node="2FNFm8neJwe" resolve="iVarRef" />
            </node>
            <node concept="37vLTw" id="2FNFm8neJxS" role="3ElQJh">
              <ref role="3cqZAo" node="2FNFm8neJwd" resolve="types1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FNFm8neJv2" role="3cqZAp" />
        <node concept="3clFbF" id="2FNFm8neJv3" role="3cqZAp">
          <node concept="2OqwBi" id="2FNFm8neJwh" role="3clFbG">
            <node concept="3xONca" id="3evPR3Efeqe" role="2Oq$k0">
              <ref role="3xOPvv" node="3evPR3Ef1La" resolve="const0" />
            </node>
            <node concept="1P9Npp" id="2FNFm8neJxU" role="2OqNvi">
              <node concept="2c44tf" id="2FNFm8neJz$" role="1P9ThW">
                <node concept="3cmrfG" id="2FNFm8neJ$I" role="2c44tc">
                  <property role="3cmrfH" value="42" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FNFm8neJv4" role="3cqZAp" />
        <node concept="3cpWs8" id="2FNFm8neJv5" role="3cqZAp">
          <node concept="3cpWsn" id="2FNFm8neJwi" role="3cpWs9">
            <property role="TrG5h" value="typesDelta" />
            <node concept="2OqwBi" id="2FNFm8neJxV" role="33vP2m">
              <node concept="37vLTw" id="2FNFm8neJz_" role="2Oq$k0">
                <ref role="3cqZAo" node="2FNFm8neJwc" resolve="launcher" />
              </node>
              <node concept="liA8E" id="2FNFm8neJzA" role="2OqNvi">
                <ref role="37wK5l" to="hfva:tyIfzC0ZRF" resolve="relaunch" />
                <node concept="37vLTw" id="3evPR3Efayg" role="37wK5m">
                  <ref role="3cqZAo" node="3evPR3Ef6Z6" resolve="testCase" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="2FNFm8neJxW" role="1tU5fm">
              <node concept="3uibUv" id="2FNFm8neJzB" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2FNFm8neJzC" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FNFm8neJv6" role="3cqZAp" />
        <node concept="3clFbF" id="4VntlICsDxZ" role="3cqZAp">
          <node concept="2YIFZM" id="3evPR3Ees6w" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeirf" resolve="printRulesDiff" />
            <node concept="2OqwBi" id="4VntlICsGHW" role="37wK5m">
              <node concept="37vLTw" id="4VntlICsGAX" role="2Oq$k0">
                <ref role="3cqZAo" node="2FNFm8neJwc" resolve="launcher" />
              </node>
              <node concept="liA8E" id="4VntlICsIMt" role="2OqNvi">
                <ref role="37wK5l" to="hfva:4VntlICr0sg" resolve="getRulesDiff" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3evPR3EetN2" role="3cqZAp">
          <node concept="2YIFZM" id="3evPR3Eeua0" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="3evPR3Eeuht" role="37wK5m">
              <ref role="3cqZAo" node="2FNFm8neJwb" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3evPR3EeuMB" role="37wK5m">
              <ref role="3cqZAo" node="2FNFm8neJwd" resolve="types1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3evPR3EeuRs" role="3cqZAp">
          <node concept="2YIFZM" id="3evPR3EeuRt" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="3evPR3EeuRu" role="37wK5m">
              <ref role="3cqZAo" node="2FNFm8neJwb" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3evPR3EevJG" role="37wK5m">
              <ref role="3cqZAo" node="2FNFm8neJwi" resolve="typesDelta" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FNFm8neJva" role="3cqZAp" />
        <node concept="3SKdUt" id="2FNFm8neJvb" role="3cqZAp">
          <node concept="1PaTwC" id="2FNFm8neJwm" role="3ndbpf">
            <node concept="3oM_SD" id="2FNFm8neJy3" role="1PaTwD">
              <property role="3oM_SC" value="relaunch" />
            </node>
            <node concept="3oM_SD" id="2FNFm8neJy4" role="1PaTwD">
              <property role="3oM_SC" value="recomputes" />
            </node>
            <node concept="3oM_SD" id="2FNFm8neJy5" role="1PaTwD">
              <property role="3oM_SC" value="less" />
            </node>
            <node concept="3oM_SD" id="2FNFm8neJy6" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="2FNFm8neJy7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2FNFm8neJy8" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="2FNFm8neJy9" role="1PaTwD">
              <property role="3oM_SC" value="program" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2FNFm8neJvc" role="3cqZAp">
          <node concept="3eOVzh" id="2FNFm8neJwn" role="3vwVQn">
            <node concept="2OqwBi" id="2FNFm8neJya" role="3uHU7w">
              <node concept="37vLTw" id="2FNFm8neJzI" role="2Oq$k0">
                <ref role="3cqZAo" node="2FNFm8neJwd" resolve="types1" />
              </node>
              <node concept="34oBXx" id="2FNFm8neJzJ" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="2FNFm8neJyb" role="3uHU7B">
              <node concept="37vLTw" id="2FNFm8neJzK" role="2Oq$k0">
                <ref role="3cqZAo" node="2FNFm8neJwi" resolve="typesDelta" />
              </node>
              <node concept="34oBXx" id="2FNFm8neJzL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2FNFm8neJvd" role="3cqZAp">
          <node concept="2OqwBi" id="2FNFm8neJwo" role="3vwVQn">
            <node concept="37vLTw" id="2FNFm8neJyc" role="2Oq$k0">
              <ref role="3cqZAo" node="2FNFm8neJwi" resolve="typesDelta" />
            </node>
            <node concept="2Nt0df" id="2FNFm8neJyd" role="2OqNvi">
              <node concept="37vLTw" id="2FNFm8neJzM" role="38cxEo">
                <ref role="3cqZAo" node="2FNFm8neJwe" resolve="iVarRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2FNFm8neJve" role="3cqZAp">
          <node concept="2YFouu" id="2FNFm8neJwp" role="3vwVQn">
            <node concept="2c44tf" id="2FNFm8neJye" role="3uHU7B">
              <node concept="10Oyi0" id="2FNFm8neJzN" role="2c44tc" />
            </node>
            <node concept="3EllGN" id="2FNFm8neJyf" role="3uHU7w">
              <node concept="37vLTw" id="2FNFm8neJzO" role="3ElVtu">
                <ref role="3cqZAo" node="2FNFm8neJwe" resolve="iVarRef" />
              </node>
              <node concept="37vLTw" id="2FNFm8neJzP" role="3ElQJh">
                <ref role="3cqZAo" node="2FNFm8neJwi" resolve="typesDelta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FNFm8neJvf" role="3cqZAp">
          <node concept="2OqwBi" id="2FNFm8neJwq" role="3clFbG">
            <node concept="2WthIp" id="2FNFm8neJyg" role="2Oq$k0" />
            <node concept="2XshWL" id="2FNFm8neJyh" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJtd" resolve="assertSameAsGroundTruth" />
              <node concept="37vLTw" id="3evPR3Efbme" role="2XxRq1">
                <ref role="3cqZAo" node="3evPR3Ef6Z6" resolve="testCase" />
              </node>
              <node concept="37vLTw" id="2FNFm8neJzR" role="2XxRq1">
                <ref role="3cqZAo" node="2FNFm8neJwc" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="6gZak$ALGJE">
    <property role="2XOHcw" value="${mpscore_home}" />
  </node>
</model>

