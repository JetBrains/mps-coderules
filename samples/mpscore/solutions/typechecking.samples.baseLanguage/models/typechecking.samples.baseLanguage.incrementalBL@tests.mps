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
    <import index="xnrr" ref="r:4fd33103-fc30-42f4-a8cf-d1e858f21988(jetbrains.mps.lang.coderules.program.analysis)" />
    <import index="ksgm" ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="2325284917965760583" name="jetbrains.mps.lang.test.structure.BeforeTestsMethod" flags="ig" index="0EjCn" />
      <concept id="2325284917965760584" name="jetbrains.mps.lang.test.structure.AfterTestsMethod" flags="ig" index="0EjCo" />
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="2325284917965993569" name="beforeTests" index="0EEgL" />
        <child id="2325284917965993580" name="afterTests" index="0EEgW" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
        <child id="2820489544402271667" name="typeParameter" index="HU9BZ" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790191" name="jetbrains.mps.baseLanguage.structure.Expression" flags="nn" index="33vP2n" />
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
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
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171983834376" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" flags="nn" index="3vFxKo">
        <child id="1171983854940" name="condition" index="3vFALc" />
      </concept>
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1172664342967" name="jetbrains.mps.baseLanguage.collections.structure.TakeOperation" flags="nn" index="8ftyA">
        <child id="1172664372046" name="elementsToTake" index="8f$Dv" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="1lH9Xt" id="2FNFm8neJtc">
    <property role="TrG5h" value="BLIncrTypecheck" />
    <node concept="2XrIbr" id="2u_o41fDobw" role="1qtyYc">
      <property role="TrG5h" value="initLaunch" />
      <node concept="37vLTG" id="2u_o41fDobx" role="3clF46">
        <property role="TrG5h" value="typecheckRoot" />
        <node concept="3Tqbb2" id="2u_o41fDoby" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2u_o41fEBH_" role="3clF45">
        <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
      </node>
      <node concept="3clFbS" id="2u_o41fDobG" role="3clF47">
        <node concept="3cpWs8" id="2u_o41fDobH" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fDobI" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2u_o41fDobJ" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="2u_o41fDobK" role="33vP2m">
              <node concept="2JrnkZ" id="2u_o41fDobL" role="2Oq$k0">
                <node concept="2OqwBi" id="2u_o41fDobM" role="2JrQYb">
                  <node concept="I4A8Y" id="2u_o41fDobN" role="2OqNvi" />
                  <node concept="37vLTw" id="2u_o41fDobO" role="2Oq$k0">
                    <ref role="3cqZAo" node="2u_o41fDobx" resolve="typecheckRoot" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2u_o41fDobP" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2u_o41fDobQ" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fDobR" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="2u_o41fDobS" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="2u_o41fDobT" role="33vP2m">
              <node concept="1pGfFk" id="2u_o41fDobU" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="2u_o41fDobV" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fDobI" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="2u_o41fDobW" role="37wK5m">
                  <node concept="I4A8Y" id="2u_o41fDobX" role="2OqNvi" />
                  <node concept="37vLTw" id="2u_o41fDobY" role="2Oq$k0">
                    <ref role="3cqZAo" node="2u_o41fDobx" resolve="typecheckRoot" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2u_o41fDobZ" role="37wK5m">
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fDoc0" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fDoc1" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fDoc2" role="3cpWs9">
            <property role="TrG5h" value="types00" />
            <node concept="3rvAFt" id="2u_o41fDoc3" role="1tU5fm">
              <node concept="3uibUv" id="2u_o41fDoc4" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2u_o41fDoc5" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="2u_o41fDoc6" role="33vP2m">
              <node concept="37vLTw" id="2u_o41fDoc7" role="2Oq$k0">
                <ref role="3cqZAo" node="2u_o41fDobR" resolve="launcher" />
              </node>
              <node concept="liA8E" id="2u_o41fDoc8" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="37vLTw" id="2u_o41fDoc9" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fDobx" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fHlTA" role="3cqZAp">
          <node concept="2YIFZM" id="2u_o41fHmeo" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="2u_o41fHmgC" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fDobI" resolve="repo" />
            </node>
            <node concept="37vLTw" id="2u_o41fHotc" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fDoc2" resolve="types00" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fED3F" role="3cqZAp" />
        <node concept="3cpWs6" id="2u_o41fE_6e" role="3cqZAp">
          <node concept="37vLTw" id="2u_o41fEBwk" role="3cqZAk">
            <ref role="3cqZAo" node="2u_o41fDobR" resolve="launcher" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2u_o41fDodk" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3vh3iHvpMrp" role="1qtyYc">
      <property role="TrG5h" value="replaceTest" />
      <node concept="37vLTG" id="3vh3iHvpPwl" role="3clF46">
        <property role="TrG5h" value="typecheckRoot" />
        <node concept="3Tqbb2" id="3vh3iHvpPH9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vh3iHvpWtY" role="3clF46">
        <property role="TrG5h" value="testNode" />
        <node concept="3Tqbb2" id="3vh3iHvpWEO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vh3iHvpXsv" role="3clF46">
        <property role="TrG5h" value="newTestNodeType" />
        <node concept="3Tqbb2" id="3vh3iHvpXBl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vh3iHvpWGc" role="3clF46">
        <property role="TrG5h" value="replacedNode" />
        <node concept="3Tqbb2" id="3vh3iHvpX0C" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vh3iHvpX1Q" role="3clF46">
        <property role="TrG5h" value="replaceWith" />
        <node concept="3Tqbb2" id="3vh3iHvpXeu" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3vh3iHvpMXf" role="3clF45" />
      <node concept="3clFbS" id="3vh3iHvpMrr" role="3clF47">
        <node concept="3cpWs8" id="3vh3iHvpN2p" role="3cqZAp">
          <node concept="3cpWsn" id="3vh3iHvpN2q" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3vh3iHvpN2r" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="3vh3iHvpN2s" role="33vP2m">
              <node concept="2JrnkZ" id="3vh3iHvpN2t" role="2Oq$k0">
                <node concept="2OqwBi" id="3vh3iHvpN2u" role="2JrQYb">
                  <node concept="I4A8Y" id="3vh3iHvpN2v" role="2OqNvi" />
                  <node concept="37vLTw" id="3vh3iHvpTWS" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vh3iHvpPwl" resolve="typecheckRoot" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3vh3iHvpN2x" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3vh3iHvpN2y" role="3cqZAp">
          <node concept="3cpWsn" id="3vh3iHvpN2z" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="3vh3iHvpN2$" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="3vh3iHvpN2_" role="33vP2m">
              <node concept="1pGfFk" id="3vh3iHvpN2A" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="3vh3iHvpN2B" role="37wK5m">
                  <ref role="3cqZAo" node="3vh3iHvpN2q" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="3vh3iHvpN2C" role="37wK5m">
                  <node concept="I4A8Y" id="3vh3iHvpN2D" role="2OqNvi" />
                  <node concept="37vLTw" id="3vh3iHvpW94" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vh3iHvpPwl" resolve="typecheckRoot" />
                  </node>
                </node>
                <node concept="10M0yZ" id="3vh3iHvpN2F" role="37wK5m">
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3vh3iHvpN2G" role="3cqZAp" />
        <node concept="3cpWs8" id="3vh3iHvpN2H" role="3cqZAp">
          <node concept="3cpWsn" id="3vh3iHvpN2I" role="3cpWs9">
            <property role="TrG5h" value="types1" />
            <node concept="3rvAFt" id="3vh3iHvpN2J" role="1tU5fm">
              <node concept="3uibUv" id="3vh3iHvpN2K" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3vh3iHvpN2L" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="3vh3iHvpN2M" role="33vP2m">
              <node concept="37vLTw" id="3vh3iHvpN2N" role="2Oq$k0">
                <ref role="3cqZAo" node="3vh3iHvpN2z" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3vh3iHvpN2O" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="37vLTw" id="3vh3iHvpWjK" role="37wK5m">
                  <ref role="3cqZAo" node="3vh3iHvpPwl" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3vh3iHvpN2Q" role="3cqZAp">
          <node concept="3cpWsn" id="3vh3iHvpN2R" role="3cpWs9">
            <property role="TrG5h" value="testNodeRef" />
            <node concept="3uibUv" id="3vh3iHvpN2S" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="3vh3iHvpN2T" role="33vP2m">
              <node concept="1eOMI4" id="3vh3iHvpN2U" role="2Oq$k0">
                <node concept="10QFUN" id="3vh3iHvpN2V" role="1eOMHV">
                  <node concept="3uibUv" id="3vh3iHvpN2W" role="10QFUM">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="37vLTw" id="3vh3iHvpWT3" role="10QFUP">
                    <ref role="3cqZAo" node="3vh3iHvpWtY" resolve="testNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3vh3iHvpN2Y" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3vh3iHvpN35" role="3cqZAp" />
        <node concept="3clFbF" id="3vh3iHvpN36" role="3cqZAp">
          <node concept="2OqwBi" id="3vh3iHvpN37" role="3clFbG">
            <node concept="37vLTw" id="3vh3iHvpXPU" role="2Oq$k0">
              <ref role="3cqZAo" node="3vh3iHvpWGc" resolve="replacedNode" />
            </node>
            <node concept="1P9Npp" id="3vh3iHvpN39" role="2OqNvi">
              <node concept="37vLTw" id="3vh3iHvpZVV" role="1P9ThW">
                <ref role="3cqZAo" node="3vh3iHvpX1Q" resolve="replaceWith" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3vh3iHvpN3c" role="3cqZAp" />
        <node concept="3cpWs8" id="3vh3iHvpN3d" role="3cqZAp">
          <node concept="3cpWsn" id="3vh3iHvpN3e" role="3cpWs9">
            <property role="TrG5h" value="typesDelta" />
            <node concept="2OqwBi" id="3vh3iHvpN3f" role="33vP2m">
              <node concept="37vLTw" id="3vh3iHvpN3g" role="2Oq$k0">
                <ref role="3cqZAo" node="3vh3iHvpN2z" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3vh3iHvpN3h" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="3vh3iHvpWov" role="37wK5m">
                  <ref role="3cqZAo" node="3vh3iHvpPwl" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="3vh3iHvpN3j" role="1tU5fm">
              <node concept="3uibUv" id="3vh3iHvpN3k" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3vh3iHvpN3l" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3vh3iHvpN3m" role="3cqZAp" />
        <node concept="3clFbF" id="3vh3iHvpN3n" role="3cqZAp">
          <node concept="2YIFZM" id="3vh3iHvpN3o" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeirf" resolve="printRulesDiff" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="2OqwBi" id="3vh3iHvpN3p" role="37wK5m">
              <node concept="37vLTw" id="3vh3iHvpN3q" role="2Oq$k0">
                <ref role="3cqZAo" node="3vh3iHvpN2z" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3vh3iHvpN3r" role="2OqNvi">
                <ref role="37wK5l" to="hfva:4VntlICr0sg" resolve="getRulesDiff" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vh3iHvpN3s" role="3cqZAp">
          <node concept="2YIFZM" id="3vh3iHvpN3t" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="3vh3iHvpN3u" role="37wK5m">
              <ref role="3cqZAo" node="3vh3iHvpN2q" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3vh3iHvpN3v" role="37wK5m">
              <ref role="3cqZAo" node="3vh3iHvpN2I" resolve="types1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vh3iHvpN3w" role="3cqZAp">
          <node concept="2YIFZM" id="3vh3iHvpN3x" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="3vh3iHvpN3y" role="37wK5m">
              <ref role="3cqZAo" node="3vh3iHvpN2q" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3vh3iHvpN3z" role="37wK5m">
              <ref role="3cqZAo" node="3vh3iHvpN3e" resolve="typesDelta" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3vh3iHvpN3$" role="3cqZAp" />
        <node concept="3SKdUt" id="3vh3iHvpN3_" role="3cqZAp">
          <node concept="1PaTwC" id="3vh3iHvpN3A" role="3ndbpf">
            <node concept="3oM_SD" id="3vh3iHvpN3B" role="1PaTwD">
              <property role="3oM_SC" value="relaunch" />
            </node>
            <node concept="3oM_SD" id="3vh3iHvpN3C" role="1PaTwD">
              <property role="3oM_SC" value="recomputes" />
            </node>
            <node concept="3oM_SD" id="3vh3iHvpN3D" role="1PaTwD">
              <property role="3oM_SC" value="less" />
            </node>
            <node concept="3oM_SD" id="3vh3iHvpN3E" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="3vh3iHvpN3F" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3vh3iHvpN3G" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="3vh3iHvpN3H" role="1PaTwD">
              <property role="3oM_SC" value="program" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="3vh3iHvpN3I" role="3cqZAp">
          <node concept="3eOVzh" id="3vh3iHvpN3J" role="3vwVQn">
            <node concept="2OqwBi" id="3vh3iHvpN3K" role="3uHU7w">
              <node concept="37vLTw" id="3vh3iHvpN3L" role="2Oq$k0">
                <ref role="3cqZAo" node="3vh3iHvpN2I" resolve="types1" />
              </node>
              <node concept="34oBXx" id="3vh3iHvpN3M" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3vh3iHvpN3N" role="3uHU7B">
              <node concept="37vLTw" id="3vh3iHvpN3O" role="2Oq$k0">
                <ref role="3cqZAo" node="3vh3iHvpN3e" resolve="typesDelta" />
              </node>
              <node concept="34oBXx" id="3vh3iHvpN3P" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="3vh3iHvpN3Q" role="3cqZAp">
          <node concept="2OqwBi" id="3vh3iHvpN3R" role="3vwVQn">
            <node concept="37vLTw" id="3vh3iHvpN3S" role="2Oq$k0">
              <ref role="3cqZAo" node="3vh3iHvpN3e" resolve="typesDelta" />
            </node>
            <node concept="2Nt0df" id="3vh3iHvpN3T" role="2OqNvi">
              <node concept="37vLTw" id="3vh3iHvpN3U" role="38cxEo">
                <ref role="3cqZAo" node="3vh3iHvpN2R" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="3vh3iHvpN3V" role="3cqZAp">
          <node concept="2YFouu" id="3vh3iHvpN3W" role="3vwVQn">
            <node concept="3EllGN" id="3vh3iHvpN3Z" role="3uHU7w">
              <node concept="37vLTw" id="3vh3iHvpN40" role="3ElVtu">
                <ref role="3cqZAo" node="3vh3iHvpN2R" resolve="testNodeRef" />
              </node>
              <node concept="37vLTw" id="3vh3iHvpN41" role="3ElQJh">
                <ref role="3cqZAo" node="3vh3iHvpN3e" resolve="typesDelta" />
              </node>
            </node>
            <node concept="37vLTw" id="3vh3iHvq1Jp" role="3uHU7B">
              <ref role="3cqZAo" node="3vh3iHvpXsv" resolve="newTestNodeType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vh3iHvpN42" role="3cqZAp">
          <node concept="2OqwBi" id="3vh3iHvpN43" role="3clFbG">
            <node concept="2WthIp" id="3vh3iHvpN44" role="2Oq$k0" />
            <node concept="2XshWL" id="3vh3iHvpN45" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJtd" resolve="assertSameAsGroundTruth" />
              <node concept="37vLTw" id="3vh3iHvpWtz" role="2XxRq1">
                <ref role="3cqZAo" node="3vh3iHvpPwl" resolve="typecheckRoot" />
              </node>
              <node concept="37vLTw" id="3vh3iHvpN47" role="2XxRq1">
                <ref role="3cqZAo" node="3vh3iHvpN2z" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3vh3iHvq1Ke" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="3o9wrC3yMuL" role="1qtyYc">
      <property role="TrG5h" value="replaceFailTest" />
      <node concept="37vLTG" id="3o9wrC3yMuM" role="3clF46">
        <property role="TrG5h" value="typecheckRoot" />
        <node concept="3Tqbb2" id="3o9wrC3yMuN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3o9wrC3yMuO" role="3clF46">
        <property role="TrG5h" value="failingNode" />
        <node concept="3Tqbb2" id="3o9wrC3yMuP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3o9wrC3yMuS" role="3clF46">
        <property role="TrG5h" value="replacedNode" />
        <node concept="3Tqbb2" id="3o9wrC3yMuT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3o9wrC3yMuU" role="3clF46">
        <property role="TrG5h" value="replaceWith" />
        <node concept="3Tqbb2" id="3o9wrC3yMuV" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3o9wrC3yMuW" role="3clF45" />
      <node concept="3clFbS" id="3o9wrC3yMuX" role="3clF47">
        <node concept="3cpWs8" id="3o9wrC3yMuY" role="3cqZAp">
          <node concept="3cpWsn" id="3o9wrC3yMuZ" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3o9wrC3yMv0" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3yMv1" role="33vP2m">
              <node concept="2JrnkZ" id="3o9wrC3yMv2" role="2Oq$k0">
                <node concept="2OqwBi" id="3o9wrC3yMv3" role="2JrQYb">
                  <node concept="I4A8Y" id="3o9wrC3yMv4" role="2OqNvi" />
                  <node concept="37vLTw" id="3o9wrC3yMv5" role="2Oq$k0">
                    <ref role="3cqZAo" node="3o9wrC3yMuM" resolve="typecheckRoot" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3o9wrC3yMv6" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3o9wrC3yMv7" role="3cqZAp">
          <node concept="3cpWsn" id="3o9wrC3yMv8" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="3o9wrC3yMv9" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="3o9wrC3yMva" role="33vP2m">
              <node concept="1pGfFk" id="3o9wrC3yMvb" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="3o9wrC3yMvc" role="37wK5m">
                  <ref role="3cqZAo" node="3o9wrC3yMuZ" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="3o9wrC3yMvd" role="37wK5m">
                  <node concept="I4A8Y" id="3o9wrC3yMve" role="2OqNvi" />
                  <node concept="37vLTw" id="3o9wrC3yMvf" role="2Oq$k0">
                    <ref role="3cqZAo" node="3o9wrC3yMuM" resolve="typecheckRoot" />
                  </node>
                </node>
                <node concept="10M0yZ" id="3o9wrC3yMvg" role="37wK5m">
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3o9wrC3yMvh" role="3cqZAp" />
        <node concept="3cpWs8" id="3o9wrC3yMvi" role="3cqZAp">
          <node concept="3cpWsn" id="3o9wrC3yMvj" role="3cpWs9">
            <property role="TrG5h" value="types1" />
            <node concept="3rvAFt" id="3o9wrC3yMvk" role="1tU5fm">
              <node concept="3uibUv" id="3o9wrC3yMvl" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3o9wrC3yMvm" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3yMvn" role="33vP2m">
              <node concept="37vLTw" id="3o9wrC3yMvo" role="2Oq$k0">
                <ref role="3cqZAo" node="3o9wrC3yMv8" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3o9wrC3yMvp" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="37vLTw" id="3o9wrC3yMvq" role="37wK5m">
                  <ref role="3cqZAo" node="3o9wrC3yMuM" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3o9wrC3yMv$" role="3cqZAp" />
        <node concept="3clFbF" id="3o9wrC3yMv_" role="3cqZAp">
          <node concept="2OqwBi" id="3o9wrC3yMvA" role="3clFbG">
            <node concept="37vLTw" id="3o9wrC3yMvB" role="2Oq$k0">
              <ref role="3cqZAo" node="3o9wrC3yMuS" resolve="replacedNode" />
            </node>
            <node concept="1P9Npp" id="3o9wrC3yMvC" role="2OqNvi">
              <node concept="37vLTw" id="3o9wrC3yMvD" role="1P9ThW">
                <ref role="3cqZAo" node="3o9wrC3yMuU" resolve="replaceWith" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3o9wrC3yMvE" role="3cqZAp" />
        <node concept="3cpWs8" id="3o9wrC3yMvF" role="3cqZAp">
          <node concept="3cpWsn" id="3o9wrC3yMvG" role="3cpWs9">
            <property role="TrG5h" value="typesDelta" />
            <node concept="2OqwBi" id="3o9wrC3yMvH" role="33vP2m">
              <node concept="37vLTw" id="3o9wrC3yMvI" role="2Oq$k0">
                <ref role="3cqZAo" node="3o9wrC3yMv8" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3o9wrC3yMvJ" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="3o9wrC3yMvK" role="37wK5m">
                  <ref role="3cqZAo" node="3o9wrC3yMuM" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="3o9wrC3yMvL" role="1tU5fm">
              <node concept="3uibUv" id="3o9wrC3yMvM" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3o9wrC3yMvN" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3o9wrC3yMvO" role="3cqZAp" />
        <node concept="3clFbF" id="3o9wrC3yMvU" role="3cqZAp">
          <node concept="2YIFZM" id="3o9wrC3yMvV" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="3o9wrC3yMvW" role="37wK5m">
              <ref role="3cqZAo" node="3o9wrC3yMuZ" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3o9wrC3yMvX" role="37wK5m">
              <ref role="3cqZAo" node="3o9wrC3yMvj" resolve="types1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3o9wrC3yMvY" role="3cqZAp">
          <node concept="2YIFZM" id="3o9wrC3yMvZ" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="3o9wrC3yMw0" role="37wK5m">
              <ref role="3cqZAo" node="3o9wrC3yMuZ" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3o9wrC3yMw1" role="37wK5m">
              <ref role="3cqZAo" node="3o9wrC3yMvG" resolve="typesDelta" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3o9wrC3_Dgr" role="3cqZAp" />
        <node concept="3SKdUt" id="3o9wrC3yMw3" role="3cqZAp">
          <node concept="1PaTwC" id="3o9wrC3yMw4" role="3ndbpf">
            <node concept="3oM_SD" id="3o9wrC3yMw5" role="1PaTwD">
              <property role="3oM_SC" value="relaunch" />
            </node>
            <node concept="3oM_SD" id="3o9wrC3yMw6" role="1PaTwD">
              <property role="3oM_SC" value="recomputes" />
            </node>
            <node concept="3oM_SD" id="3o9wrC3yMw7" role="1PaTwD">
              <property role="3oM_SC" value="less" />
            </node>
            <node concept="3oM_SD" id="3o9wrC3yMw8" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="3o9wrC3yMw9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3o9wrC3yMwa" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="3o9wrC3yMwb" role="1PaTwD">
              <property role="3oM_SC" value="program" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="3o9wrC3yMwc" role="3cqZAp">
          <node concept="3eOVzh" id="3o9wrC3yMwd" role="3vwVQn">
            <node concept="2OqwBi" id="3o9wrC3yMwe" role="3uHU7w">
              <node concept="37vLTw" id="3o9wrC3yMwf" role="2Oq$k0">
                <ref role="3cqZAo" node="3o9wrC3yMvj" resolve="types1" />
              </node>
              <node concept="34oBXx" id="3o9wrC3yMwg" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3yMwh" role="3uHU7B">
              <node concept="37vLTw" id="3o9wrC3yMwi" role="2Oq$k0">
                <ref role="3cqZAo" node="3o9wrC3yMvG" resolve="typesDelta" />
              </node>
              <node concept="34oBXx" id="3o9wrC3yMwj" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="3o9wrC3_5SP" role="3cqZAp">
          <node concept="2OqwBi" id="3o9wrC3_686" role="3vFALc">
            <node concept="37vLTw" id="3o9wrC3_687" role="2Oq$k0">
              <ref role="3cqZAo" node="3o9wrC3yMvG" resolve="typesDelta" />
            </node>
            <node concept="2Nt0df" id="3o9wrC3_688" role="2OqNvi">
              <node concept="2OqwBi" id="3o9wrC3_9U4" role="38cxEo">
                <node concept="liA8E" id="3o9wrC3_dBv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="3o9wrC3_9U9" role="2Oq$k0">
                  <node concept="37vLTw" id="3o9wrC3_9Nx" role="2JrQYb">
                    <ref role="3cqZAo" node="3o9wrC3yMuO" resolve="failingNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="3o9wrC3$v_W" role="3cqZAp">
          <node concept="2OqwBi" id="3o9wrC3$$bG" role="3vwVQn">
            <node concept="2OqwBi" id="3o9wrC3$vOt" role="2Oq$k0">
              <node concept="37vLTw" id="3o9wrC3$vIy" role="2Oq$k0">
                <ref role="3cqZAo" node="3o9wrC3yMv8" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3o9wrC3$zF3" role="2OqNvi">
                <ref role="37wK5l" to="hfva:3o9wrC3y$h_" resolve="getFailedNodes" />
              </node>
            </node>
            <node concept="3JPx81" id="3o9wrC3$CCI" role="2OqNvi">
              <node concept="2OqwBi" id="3o9wrC3$GuH" role="25WWJ7">
                <node concept="37vLTw" id="3o9wrC3$CEb" role="2Oq$k0">
                  <ref role="3cqZAo" node="3o9wrC3yMuO" resolve="failingNode" />
                </node>
                <node concept="iZEcu" id="3o9wrC3$GCn" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3o9wrC3yMwv" role="3cqZAp">
          <node concept="2OqwBi" id="3o9wrC3yMww" role="3clFbG">
            <node concept="2WthIp" id="3o9wrC3yMwx" role="2Oq$k0" />
            <node concept="2XshWL" id="3o9wrC3yMwy" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJtd" resolve="assertSameAsGroundTruth" />
              <node concept="37vLTw" id="3o9wrC3yMwz" role="2XxRq1">
                <ref role="3cqZAo" node="3o9wrC3yMuM" resolve="typecheckRoot" />
              </node>
              <node concept="37vLTw" id="3o9wrC3yMw$" role="2XxRq1">
                <ref role="3cqZAo" node="3o9wrC3yMv8" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3o9wrC3yMw_" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="7eQMSyzli7C" role="1qtyYc">
      <property role="TrG5h" value="findRulesForNode" />
      <node concept="37vLTG" id="7eQMSyzlkY9" role="3clF46">
        <property role="TrG5h" value="allRules" />
        <node concept="A3Dl8" id="7eQMSyzlkZl" role="1tU5fm">
          <node concept="3uibUv" id="7eQMSyzll0z" role="A3Ik2">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eQMSyzljNe" role="3clF46">
        <property role="TrG5h" value="nodeRef" />
        <node concept="3uibUv" id="7eQMSyzljOp" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="A3Dl8" id="7eQMSyzlipp" role="3clF45">
        <node concept="3uibUv" id="7eQMSyzlipV" role="A3Ik2">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3clFbS" id="7eQMSyzli7E" role="3clF47">
        <node concept="3cpWs8" id="7eQMSyzl_DD" role="3cqZAp">
          <node concept="3cpWsn" id="7eQMSyzl_DG" role="3cpWs9">
            <property role="TrG5h" value="filtered" />
            <node concept="_YKpA" id="7eQMSyzl_D_" role="1tU5fm">
              <node concept="3uibUv" id="7eQMSyzl_E0" role="_ZDj9">
                <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
              </node>
            </node>
            <node concept="2ShNRf" id="7eQMSyzl_R_" role="33vP2m">
              <node concept="Tc6Ow" id="7eQMSyzlBd0" role="2ShVmc">
                <node concept="3uibUv" id="7eQMSyzlBw7" role="HW$YZ">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7eQMSyzlE6I" role="3cqZAp" />
        <node concept="2Gpval" id="7eQMSyzlE7j" role="3cqZAp">
          <node concept="2GrKxI" id="7eQMSyzlE7l" role="2Gsz3X">
            <property role="TrG5h" value="rule" />
          </node>
          <node concept="37vLTw" id="7eQMSyzlGpj" role="2GsD0m">
            <ref role="3cqZAo" node="7eQMSyzlkY9" resolve="allRules" />
          </node>
          <node concept="3clFbS" id="7eQMSyzlE7p" role="2LFqv$">
            <node concept="3cpWs8" id="6uUkLpHmXYF" role="3cqZAp">
              <node concept="3cpWsn" id="6uUkLpHmXYI" role="3cpWs9">
                <property role="TrG5h" value="body" />
                <node concept="A3Dl8" id="6uUkLpHmXYC" role="1tU5fm">
                  <node concept="3uibUv" id="6uUkLpHmY4G" role="A3Ik2">
                    <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6uUkLpHn4vC" role="33vP2m">
                  <node concept="2OqwBi" id="6uUkLpHn23f" role="2Oq$k0">
                    <node concept="2OqwBi" id="6uUkLpHmT9m" role="2Oq$k0">
                      <node concept="2GrUjf" id="7eQMSyzlQ1A" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7eQMSyzlE7l" resolve="rule" />
                      </node>
                      <node concept="liA8E" id="6uUkLpHmTk1" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Rule.bodyAlternation()" resolve="bodyAlternation" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6uUkLpHn4dS" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6uUkLpHn51z" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="6uUkLpHnwXv" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="6uUkLpHnumQ" role="8Wnug">
                <node concept="3cpWsn" id="6uUkLpHnumR" role="3cpWs9">
                  <property role="TrG5h" value="searchIn" />
                  <node concept="A3Dl8" id="6uUkLpHnumS" role="1tU5fm">
                    <node concept="3uibUv" id="6uUkLpHnumT" role="A3Ik2">
                      <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6uUkLpHnwUF" role="33vP2m">
                    <ref role="3cqZAo" node="6uUkLpHmXYI" resolve="body" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6uUkLpHnmPA" role="3cqZAp">
              <node concept="3cpWsn" id="6uUkLpHnmPD" role="3cpWs9">
                <property role="TrG5h" value="searchIn" />
                <node concept="A3Dl8" id="6uUkLpHnmPz" role="1tU5fm">
                  <node concept="3uibUv" id="6uUkLpHnn2O" role="A3Ik2">
                    <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6uUkLpHnoX7" role="33vP2m">
                  <node concept="2GrUjf" id="6uUkLpHnoT6" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7eQMSyzlE7l" resolve="rule" />
                  </node>
                  <node concept="liA8E" id="6uUkLpHnpdX" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Rule.all()" resolve="all" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7eQMSyzlIT6" role="3cqZAp">
              <node concept="3cpWsn" id="7eQMSyzlIT9" role="3cpWs9">
                <property role="TrG5h" value="found" />
                <node concept="2hMVRd" id="7eQMSyzlIT2" role="1tU5fm">
                  <node concept="3uibUv" id="7eQMSyzm3WB" role="2hN53Y">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2YIFZM" id="tc9pc3yXDL" role="33vP2m">
                  <ref role="37wK5l" to="i348:tc9pc3yoGz" resolve="collect" />
                  <ref role="1Pybhc" to="i348:tc9pc3z7a_" resolve="ArgumentsCollector" />
                  <node concept="1bVj0M" id="7eQMSyzlWvK" role="37wK5m">
                    <node concept="3clFbS" id="7eQMSyzlWvM" role="1bW5cS">
                      <node concept="3clFbF" id="7eQMSyzlZB_" role="3cqZAp">
                        <node concept="2ZW3vV" id="7eQMSyzlZLM" role="3clFbG">
                          <node concept="3uibUv" id="7eQMSyzlZUm" role="2ZW6by">
                            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                          </node>
                          <node concept="37vLTw" id="7eQMSyzlZB$" role="2ZW6bz">
                            <ref role="3cqZAo" node="7eQMSyzlXNJ" resolve="arg" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="7eQMSyzlXNJ" role="1bW2Oz">
                      <property role="TrG5h" value="arg" />
                      <node concept="3uibUv" id="7eQMSyzlXXa" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6uUkLpHnrvF" role="37wK5m">
                    <ref role="3cqZAo" node="6uUkLpHnmPD" resolve="searchIn" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7eQMSyzmk80" role="3cqZAp" />
            <node concept="3clFbJ" id="7eQMSyzlHHV" role="3cqZAp">
              <node concept="2OqwBi" id="7eQMSyzmcUe" role="3clFbw">
                <node concept="37vLTw" id="7eQMSyzm9W8" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eQMSyzlIT9" resolve="found" />
                </node>
                <node concept="3JPx81" id="7eQMSyzmet5" role="2OqNvi">
                  <node concept="37vLTw" id="7eQMSyzmeuQ" role="25WWJ7">
                    <ref role="3cqZAo" node="7eQMSyzljNe" resolve="nodeRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7eQMSyzlHHX" role="3clFbx">
                <node concept="3clFbF" id="7eQMSyzmfNg" role="3cqZAp">
                  <node concept="2OqwBi" id="7eQMSyzmgjs" role="3clFbG">
                    <node concept="37vLTw" id="7eQMSyzmfNf" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eQMSyzl_DG" resolve="filtered" />
                    </node>
                    <node concept="TSZUe" id="7eQMSyzmh6V" role="2OqNvi">
                      <node concept="2GrUjf" id="7eQMSyzmiwc" role="25WWJ7">
                        <ref role="2Gs0qQ" node="7eQMSyzlE7l" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7eQMSyzlGpY" role="3cqZAp" />
        <node concept="3cpWs6" id="7eQMSyzlHFW" role="3cqZAp">
          <node concept="37vLTw" id="7eQMSyzlHGy" role="3cqZAk">
            <ref role="3cqZAo" node="7eQMSyzl_DG" resolve="filtered" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7eQMSyzljPV" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="55idZnEysUQ" role="1SL9yI">
      <property role="TrG5h" value="dependentRulesInfo" />
      <node concept="3cqZAl" id="55idZnEysUR" role="3clF45" />
      <node concept="3clFbS" id="55idZnEysUV" role="3clF47">
        <node concept="3cpWs8" id="55idZnEyEoG" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEyEoH" role="3cpWs9">
            <property role="TrG5h" value="testCase" />
            <node concept="3Tqbb2" id="55idZnEyEoI" role="1tU5fm" />
            <node concept="3xONca" id="55idZnEyEoJ" role="33vP2m">
              <ref role="3xOPvv" node="6gZak$B1XHR" resolve="iVarDecl" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55idZnEyEoK" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEyEoL" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="55idZnEyEoM" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="55idZnEyEoN" role="33vP2m">
              <node concept="2JrnkZ" id="55idZnEyEoO" role="2Oq$k0">
                <node concept="2OqwBi" id="55idZnEyEoP" role="2JrQYb">
                  <node concept="I4A8Y" id="55idZnEyEoQ" role="2OqNvi" />
                  <node concept="37vLTw" id="55idZnEyEoR" role="2Oq$k0">
                    <ref role="3cqZAo" node="55idZnEyEoH" resolve="testCase" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="55idZnEyEoS" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55idZnEyEoT" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEyEoU" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="55idZnEyEoV" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="55idZnEyEoW" role="33vP2m">
              <node concept="1pGfFk" id="55idZnEyEoX" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="55idZnEyEoY" role="37wK5m">
                  <ref role="3cqZAo" node="55idZnEyEoL" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="55idZnEyEoZ" role="37wK5m">
                  <node concept="I4A8Y" id="55idZnEyEp0" role="2OqNvi" />
                  <node concept="37vLTw" id="55idZnEyEp1" role="2Oq$k0">
                    <ref role="3cqZAo" node="55idZnEyEoH" resolve="testCase" />
                  </node>
                </node>
                <node concept="10M0yZ" id="55idZnEyEp2" role="37wK5m">
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="55idZnEyFRm" role="3cqZAp">
          <node concept="2OqwBi" id="55idZnEyFYp" role="3clFbG">
            <node concept="37vLTw" id="55idZnEyFRk" role="2Oq$k0">
              <ref role="3cqZAo" node="55idZnEyEoU" resolve="launcher" />
            </node>
            <node concept="liA8E" id="55idZnEyHHR" role="2OqNvi">
              <ref role="37wK5l" to="hfva:tyIfzC3x3f" resolve="produceProgram" />
              <node concept="37vLTw" id="55idZnEyHJ5" role="37wK5m">
                <ref role="3cqZAo" node="55idZnEyEoH" resolve="testCase" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55idZnEyCw_" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEyCwA" role="3cpWs9">
            <property role="TrG5h" value="info" />
            <node concept="3uibUv" id="55idZnEyD3Q" role="1tU5fm">
              <ref role="3uigEE" to="xnrr:1H_6AUSU96G" resolve="ProgramGenInfoBuilder.ProgramGenInfo" />
            </node>
            <node concept="2OqwBi" id="55idZnEyK3y" role="33vP2m">
              <node concept="37vLTw" id="55idZnEyJZj" role="2Oq$k0">
                <ref role="3cqZAo" node="55idZnEyEoU" resolve="launcher" />
              </node>
              <node concept="liA8E" id="55idZnEyKW1" role="2OqNvi">
                <ref role="37wK5l" to="hfva:tyIfzC3lMP" resolve="getProgramGenInfo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55idZnEzgZZ" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEzh00" role="3cpWs9">
            <property role="TrG5h" value="prog" />
            <node concept="3uibUv" id="55idZnEzh01" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
            </node>
            <node concept="2OqwBi" id="55idZnEzhO4" role="33vP2m">
              <node concept="37vLTw" id="55idZnEzhJP" role="2Oq$k0">
                <ref role="3cqZAo" node="55idZnEyEoU" resolve="launcher" />
              </node>
              <node concept="liA8E" id="55idZnEziCw" role="2OqNvi">
                <ref role="37wK5l" to="hfva:55idZnEz6lV" resolve="getProgram" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7eQMSyzmyNI" role="3cqZAp" />
        <node concept="3SKdUt" id="7eQMSyzn9jT" role="3cqZAp">
          <node concept="1PaTwC" id="7eQMSyzn9jU" role="3ndbpf">
            <node concept="3oM_SD" id="7eQMSyzn9wX" role="1PaTwD">
              <property role="3oM_SC" value="filter" />
            </node>
            <node concept="3oM_SD" id="7eQMSyzn9wZ" role="1PaTwD">
              <property role="3oM_SC" value="rules" />
            </node>
            <node concept="3oM_SD" id="7eQMSyznaT6" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="7eQMSyznaTa" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="7eQMSyznaTf" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="7eQMSyznaTl" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="7eQMSyznci4" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="7eQMSyznaTs" role="1PaTwD">
              <property role="3oM_SC" value="string" />
            </node>
            <node concept="3oM_SD" id="7eQMSyznaTQ" role="1PaTwD">
              <property role="3oM_SC" value="tag" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7eQMSyzmudp" role="3cqZAp">
          <node concept="3cpWsn" id="7eQMSyzmuds" role="3cpWs9">
            <property role="TrG5h" value="testNode" />
            <node concept="3Tqbb2" id="7eQMSyzmudn" role="1tU5fm" />
            <node concept="3xONca" id="7eQMSyzniOS" role="33vP2m">
              <ref role="3xOPvv" node="3evPR3Ef1La" resolve="const0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55idZnEznnF" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEznnI" role="3cpWs9">
            <property role="TrG5h" value="nodeRules" />
            <node concept="A3Dl8" id="55idZnEznnC" role="1tU5fm">
              <node concept="3uibUv" id="55idZnEznsT" role="A3Ik2">
                <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
              </node>
            </node>
            <node concept="2OqwBi" id="7eQMSyzmCxQ" role="33vP2m">
              <node concept="2WthIp" id="7eQMSyzmCxT" role="2Oq$k0" />
              <node concept="2XshWL" id="7eQMSyzmCxV" role="2OqNvi">
                <ref role="2WH_rO" node="7eQMSyzli7C" resolve="findRulesForNode" />
                <node concept="2OqwBi" id="55idZnEzojl" role="2XxRq1">
                  <node concept="37vLTw" id="55idZnEzoc7" role="2Oq$k0">
                    <ref role="3cqZAo" node="55idZnEzh00" resolve="prog" />
                  </node>
                  <node concept="liA8E" id="55idZnEzoq5" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Program.rules()" resolve="rules" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7eQMSyzn28l" role="2XxRq1">
                  <node concept="1eOMI4" id="7eQMSyzmXCY" role="2Oq$k0">
                    <node concept="10QFUN" id="7eQMSyzmXXY" role="1eOMHV">
                      <node concept="3uibUv" id="7eQMSyzmY88" role="10QFUM">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="37vLTw" id="7eQMSyzmXih" role="10QFUP">
                        <ref role="3cqZAo" node="7eQMSyzmuds" resolve="testNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7eQMSyzn3Yf" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eQMSyz5aGH" role="3cqZAp">
          <node concept="2YIFZM" id="7eQMSyz5b6V" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3EemvM" resolve="printRules" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="7eQMSyz5baj" role="37wK5m">
              <ref role="3cqZAo" node="55idZnEznnI" resolve="nodeRules" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55idZnEz9pA" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEz9pD" role="3cpWs9">
            <property role="TrG5h" value="testRulePrefix" />
            <node concept="17QB3L" id="55idZnEz9p$" role="1tU5fm" />
            <node concept="Xl_RD" id="55idZnEzddR" role="33vP2m">
              <property role="Xl_RC" value="typeOf_expression" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="55idZnEzjw1" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEzjw2" role="3cpWs9">
            <property role="TrG5h" value="testRule" />
            <node concept="3uibUv" id="55idZnEzjw3" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
            </node>
            <node concept="2OqwBi" id="55idZnEzrJd" role="33vP2m">
              <node concept="1z4cxt" id="55idZnEzsHS" role="2OqNvi">
                <node concept="1bVj0M" id="55idZnEzsHU" role="23t8la">
                  <node concept="3clFbS" id="55idZnEzsHV" role="1bW5cS">
                    <node concept="3clFbF" id="55idZnEzt$c" role="3cqZAp">
                      <node concept="2OqwBi" id="55idZnEzu50" role="3clFbG">
                        <node concept="2OqwBi" id="55idZnEztGv" role="2Oq$k0">
                          <node concept="37vLTw" id="55idZnEzt$b" role="2Oq$k0">
                            <ref role="3cqZAo" node="55idZnEzsHW" resolve="it" />
                          </node>
                          <node concept="liA8E" id="55idZnEztOE" role="2OqNvi">
                            <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                          </node>
                        </node>
                        <node concept="liA8E" id="55idZnEzvdR" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                          <node concept="37vLTw" id="55idZnEzvgG" role="37wK5m">
                            <ref role="3cqZAo" node="55idZnEz9pD" resolve="testRulePrefix" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="55idZnEzsHW" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="55idZnEzsHX" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7eQMSyzmPlQ" role="2Oq$k0">
                <ref role="3cqZAo" node="55idZnEznnI" resolve="nodeRules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="55idZnEzyha" role="3cqZAp">
          <node concept="37vLTw" id="55idZnEzynj" role="2Hmdds">
            <ref role="3cqZAo" node="55idZnEzjw2" resolve="testRule" />
          </node>
        </node>
        <node concept="3clFbH" id="7eQMSyzn7y2" role="3cqZAp" />
        <node concept="3cpWs8" id="55idZnEzH_B" role="3cqZAp">
          <node concept="3cpWsn" id="55idZnEzH_E" role="3cpWs9">
            <property role="TrG5h" value="depRulesTags" />
            <node concept="A3Dl8" id="55idZnEzH_$" role="1tU5fm">
              <node concept="3uibUv" id="55idZnEzHFT" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="55idZnEzAHN" role="33vP2m">
              <node concept="37vLTw" id="55idZnEyO1r" role="2Oq$k0">
                <ref role="3cqZAo" node="55idZnEyCwA" resolve="info" />
              </node>
              <node concept="liA8E" id="55idZnEzAT0" role="2OqNvi">
                <ref role="37wK5l" to="xnrr:4I7t_Uez2gb" resolve="getDependentRules" />
                <node concept="37vLTw" id="55idZnEzATQ" role="37wK5m">
                  <ref role="3cqZAo" node="55idZnEzjw2" resolve="testRule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7eQMSyz6kN7" role="3cqZAp">
          <node concept="1PaTwC" id="7eQMSyz6kN8" role="3ndbpf">
            <node concept="3oM_SD" id="7eQMSyz6li6" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="7eQMSyz6mqa" role="1PaTwD">
              <property role="3oM_SC" value="TestNode" />
            </node>
            <node concept="3oM_SD" id="7eQMSyz6mqv" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7eQMSyz5X87" role="3cqZAp">
          <node concept="3cpWsn" id="7eQMSyz5X8a" role="3cpWs9">
            <property role="TrG5h" value="nancestors" />
            <node concept="10Oyi0" id="7eQMSyz5X85" role="1tU5fm" />
            <node concept="3cpWsd" id="7eQMSyz6kcj" role="33vP2m">
              <node concept="3cmrfG" id="7eQMSyz6kx2" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="7eQMSyz5YtX" role="3uHU7B">
                <node concept="2OqwBi" id="7eQMSyz5YtY" role="2Oq$k0">
                  <node concept="z$bX8" id="7eQMSyz5Yu0" role="2OqNvi" />
                  <node concept="37vLTw" id="7eQMSyzn5xk" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eQMSyzmuds" resolve="testNode" />
                  </node>
                </node>
                <node concept="34oBXx" id="7eQMSyz5Yu1" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6uUkLpHnDhd" role="3cqZAp" />
        <node concept="3clFbF" id="55idZnE$5im" role="3cqZAp">
          <node concept="2OqwBi" id="55idZnE$5Gc" role="3clFbG">
            <node concept="10M0yZ" id="55idZnE$5qP" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="55idZnE$6XB" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="7eQMSyz5Vr4" role="37wK5m">
                <node concept="3cpWs3" id="7eQMSyz5TsW" role="3uHU7B">
                  <node concept="3cpWs3" id="55idZnE$a0d" role="3uHU7B">
                    <node concept="3cpWs3" id="55idZnE$7rc" role="3uHU7B">
                      <node concept="2OqwBi" id="55idZnE$73y" role="3uHU7B">
                        <node concept="37vLTw" id="55idZnE$6Ya" role="2Oq$k0">
                          <ref role="3cqZAo" node="55idZnEzjw2" resolve="testRule" />
                        </node>
                        <node concept="liA8E" id="55idZnE$7bm" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="55idZnE$8kR" role="3uHU7w">
                        <property role="Xl_RC" value=" #depRules=" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="55idZnE$cUo" role="3uHU7w">
                      <node concept="37vLTw" id="55idZnE$cFN" role="2Oq$k0">
                        <ref role="3cqZAo" node="55idZnEzH_E" resolve="depRulesTags" />
                      </node>
                      <node concept="34oBXx" id="55idZnE$daq" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7eQMSyz5UGX" role="3uHU7w">
                    <property role="Xl_RC" value=" #ancestors=" />
                  </node>
                </node>
                <node concept="37vLTw" id="7eQMSyz64pV" role="3uHU7w">
                  <ref role="3cqZAo" node="7eQMSyz5X8a" resolve="nancestors" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="55idZnEzZfb" role="3cqZAp">
          <node concept="2d3UOw" id="55idZnE$1WH" role="3vwVQn">
            <node concept="2OqwBi" id="55idZnE$0jU" role="3uHU7B">
              <node concept="37vLTw" id="55idZnE$0aw" role="2Oq$k0">
                <ref role="3cqZAo" node="55idZnEzH_E" resolve="depRulesTags" />
              </node>
              <node concept="34oBXx" id="55idZnE$1mW" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7eQMSyz61KZ" role="3uHU7w">
              <ref role="3cqZAo" node="7eQMSyz5X8a" resolve="nancestors" />
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="7eQMSyz5GHW" role="3cqZAp">
          <node concept="2OqwBi" id="7eQMSyz5Hg8" role="3vFALc">
            <node concept="37vLTw" id="7eQMSyz5GTb" role="2Oq$k0">
              <ref role="3cqZAo" node="55idZnEzH_E" resolve="depRulesTags" />
            </node>
            <node concept="3JPx81" id="7eQMSyz5IJx" role="2OqNvi">
              <node concept="2OqwBi" id="7eQMSyz5IPf" role="25WWJ7">
                <node concept="37vLTw" id="7eQMSyz5IK4" role="2Oq$k0">
                  <ref role="3cqZAo" node="55idZnEzjw2" resolve="testRule" />
                </node>
                <node concept="liA8E" id="7eQMSyz5KII" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6uUkLpHlwuj" role="3cqZAp" />
        <node concept="3cpWs8" id="6uUkLpHlflv" role="3cqZAp">
          <node concept="3cpWsn" id="6uUkLpHlflw" role="3cpWs9">
            <property role="TrG5h" value="recoverRulePrefix" />
            <node concept="17QB3L" id="6uUkLpHlflx" role="1tU5fm" />
            <node concept="Xl_RD" id="6uUkLpHlfly" role="33vP2m">
              <property role="Xl_RC" value="expect_typeOf" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6uUkLpHl17L" role="3cqZAp">
          <node concept="2GrKxI" id="6uUkLpHl17N" role="2Gsz3X">
            <property role="TrG5h" value="ancestor" />
          </node>
          <node concept="2OqwBi" id="6uUkLpHlUQT" role="2GsD0m">
            <node concept="2OqwBi" id="6uUkLpHl3xr" role="2Oq$k0">
              <node concept="37vLTw" id="6uUkLpHl36B" role="2Oq$k0">
                <ref role="3cqZAo" node="7eQMSyzmuds" resolve="testNode" />
              </node>
              <node concept="z$bX8" id="6uUkLpHl5aw" role="2OqNvi" />
            </node>
            <node concept="8ftyA" id="6uUkLpHlY4y" role="2OqNvi">
              <node concept="37vLTw" id="6uUkLpHlY5Y" role="8f$Dv">
                <ref role="3cqZAo" node="7eQMSyz5X8a" resolve="nancestors" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6uUkLpHl17R" role="2LFqv$">
            <node concept="3cpWs8" id="6uUkLpHllkC" role="3cqZAp">
              <node concept="3cpWsn" id="6uUkLpHllkD" role="3cpWs9">
                <property role="TrG5h" value="recNodeRules" />
                <node concept="A3Dl8" id="6uUkLpHllkE" role="1tU5fm">
                  <node concept="3uibUv" id="6uUkLpHllkF" role="A3Ik2">
                    <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6uUkLpHllkG" role="33vP2m">
                  <node concept="2WthIp" id="6uUkLpHllkH" role="2Oq$k0" />
                  <node concept="2XshWL" id="6uUkLpHllkI" role="2OqNvi">
                    <ref role="2WH_rO" node="7eQMSyzli7C" resolve="findRulesForNode" />
                    <node concept="2OqwBi" id="6uUkLpHllkJ" role="2XxRq1">
                      <node concept="37vLTw" id="6uUkLpHllkK" role="2Oq$k0">
                        <ref role="3cqZAo" node="55idZnEzh00" resolve="prog" />
                      </node>
                      <node concept="liA8E" id="6uUkLpHllkL" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Program.rules()" resolve="rules" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6uUkLpHllkM" role="2XxRq1">
                      <node concept="1eOMI4" id="6uUkLpHllkN" role="2Oq$k0">
                        <node concept="10QFUN" id="6uUkLpHllkO" role="1eOMHV">
                          <node concept="3uibUv" id="6uUkLpHllkP" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2GrUjf" id="6uUkLpHm4ez" role="10QFUP">
                            <ref role="2Gs0qQ" node="6uUkLpHl17N" resolve="ancestor" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6uUkLpHllkR" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6uUkLpHlflz" role="3cqZAp">
              <node concept="3cpWsn" id="6uUkLpHlfl$" role="3cpWs9">
                <property role="TrG5h" value="recRule" />
                <node concept="3uibUv" id="6uUkLpHlfl_" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
                <node concept="2OqwBi" id="6uUkLpHlflA" role="33vP2m">
                  <node concept="1z4cxt" id="6uUkLpHlflB" role="2OqNvi">
                    <node concept="1bVj0M" id="6uUkLpHlflC" role="23t8la">
                      <node concept="3clFbS" id="6uUkLpHlflD" role="1bW5cS">
                        <node concept="3clFbF" id="6uUkLpHlflE" role="3cqZAp">
                          <node concept="2OqwBi" id="6uUkLpHlflF" role="3clFbG">
                            <node concept="2OqwBi" id="6uUkLpHlflG" role="2Oq$k0">
                              <node concept="37vLTw" id="6uUkLpHlflH" role="2Oq$k0">
                                <ref role="3cqZAo" node="6uUkLpHlflL" resolve="it" />
                              </node>
                              <node concept="liA8E" id="6uUkLpHlflI" role="2OqNvi">
                                <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6uUkLpHlflJ" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                              <node concept="37vLTw" id="6uUkLpHlt1t" role="37wK5m">
                                <ref role="3cqZAo" node="6uUkLpHlflw" resolve="recoverRulePrefix" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6uUkLpHlflL" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6uUkLpHlflM" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6uUkLpHlsYX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6uUkLpHllkD" resolve="recNodeRules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="dgjrbRr95v" role="3cqZAp">
              <node concept="3clFbS" id="dgjrbRr95x" role="3clFbx">
                <node concept="3N13vt" id="2hCtUrOHo$B" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="dgjrbRrbG3" role="3clFbw">
                <node concept="37vLTw" id="dgjrbRr9AD" role="3uHU7B">
                  <ref role="3cqZAo" node="6uUkLpHlfl$" resolve="recRule" />
                </node>
                <node concept="10Nm6u" id="dgjrbRrbFD" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbH" id="6uUkLpHmpNO" role="3cqZAp" />
            <node concept="3clFbF" id="6uUkLpHlGgd" role="3cqZAp">
              <node concept="2OqwBi" id="6uUkLpHlGBp" role="3clFbG">
                <node concept="10M0yZ" id="6uUkLpHlGmz" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="6uUkLpHlJb5" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="6uUkLpHmjXl" role="37wK5m">
                    <node concept="2OqwBi" id="6uUkLpHlJqQ" role="3uHU7w">
                      <node concept="37vLTw" id="6uUkLpHlJlu" role="2Oq$k0">
                        <ref role="3cqZAo" node="6uUkLpHlfl$" resolve="recRule" />
                      </node>
                      <node concept="liA8E" id="6uUkLpHlJzS" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="6uUkLpHmm5M" role="3uHU7B">
                      <node concept="Xl_RD" id="6uUkLpHmmpq" role="3uHU7w">
                        <property role="Xl_RC" value=" rule: " />
                      </node>
                      <node concept="3cpWs3" id="6uUkLpHmoq$" role="3uHU7B">
                        <node concept="Xl_RD" id="6uUkLpHmoIj" role="3uHU7B">
                          <property role="Xl_RC" value="node: " />
                        </node>
                        <node concept="2YIFZM" id="6uUkLpHmh8Z" role="3uHU7w">
                          <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
                          <ref role="37wK5l" to="hfva:6uUkLpHm8V7" resolve="nodeToString" />
                          <node concept="2GrUjf" id="6uUkLpHmhb$" role="37wK5m">
                            <ref role="2Gs0qQ" node="6uUkLpHl17N" resolve="ancestor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vwNmj" id="6uUkLpHkLaB" role="3cqZAp">
              <node concept="2OqwBi" id="6uUkLpHkNbX" role="3vwVQn">
                <node concept="37vLTw" id="6uUkLpHkMKp" role="2Oq$k0">
                  <ref role="3cqZAo" node="55idZnEzH_E" resolve="depRulesTags" />
                </node>
                <node concept="3JPx81" id="6uUkLpHl8yG" role="2OqNvi">
                  <node concept="37vLTw" id="6uUkLpHlw5l" role="25WWJ7">
                    <ref role="3cqZAo" node="6uUkLpHlfl$" resolve="recRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
            <node concept="3xLA65" id="55idZnEzOte" role="lGtFl">
              <property role="TrG5h" value="plusOp" />
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
        <node concept="10Oyi0" id="2u_o41fEL8h" role="3clF45" />
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
              </node>
              <node concept="3cpWs3" id="2u_o41fMfsm" role="37vLTx">
                <node concept="3cpWs3" id="6gZak$B1UDC" role="3uHU7B">
                  <node concept="3xLA65" id="2u_o41fENyK" role="lGtFl">
                    <property role="TrG5h" value="plusOp1" />
                  </node>
                  <node concept="33vP2n" id="2u_o41fJllX" role="3uHU7B" />
                  <node concept="3cmrfG" id="2u_o41fMfEk" role="3uHU7w">
                    <property role="3cmrfH" value="42" />
                  </node>
                </node>
                <node concept="3xLA65" id="2u_o41fMimX" role="lGtFl">
                  <property role="TrG5h" value="plusOp2" />
                </node>
                <node concept="33vP2n" id="2u_o41fMixX" role="3uHU7w" />
              </node>
              <node concept="3xLA65" id="2u_o41fEPHL" role="lGtFl">
                <property role="TrG5h" value="assign_i1" />
              </node>
            </node>
            <node concept="15s5l7" id="2u_o41fOoi_" role="lGtFl">
              <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
              <property role="huDt6" value="all typesystem messages" />
            </node>
          </node>
          <node concept="3cpWs6" id="2u_o41fELhr" role="3cqZAp">
            <node concept="37vLTw" id="2u_o41fELio" role="3cqZAk">
              <ref role="3cqZAo" node="6gZak$B1UDx" resolve="i" />
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
        <node concept="3cpWs8" id="2u_o41fIfID" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fIfIG" role="3cpWs9">
            <property role="TrG5h" value="withTraceLog" />
            <node concept="10P_77" id="2u_o41fIfIB" role="1tU5fm" />
            <node concept="3clFbT" id="2u_o41fIfNj" role="33vP2m" />
          </node>
        </node>
        <node concept="3SKdUt" id="2u_o41fIVMv" role="3cqZAp">
          <node concept="1PaTwC" id="2u_o41fIVMw" role="3ndbpf">
            <node concept="3oM_SD" id="2u_o41fIVQK" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="2u_o41fIVQM" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="2u_o41fIVQP" role="1PaTwD">
              <property role="3oM_SC" value="incremental" />
            </node>
            <node concept="3oM_SD" id="2u_o41fIVR9" role="1PaTwD">
              <property role="3oM_SC" value="launcher" />
            </node>
            <node concept="3oM_SD" id="2u_o41fIY15" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="2u_o41fIY1b" role="1PaTwD">
              <property role="3oM_SC" value="been" />
            </node>
            <node concept="3oM_SD" id="2u_o41fIY1i" role="1PaTwD">
              <property role="3oM_SC" value="launched" />
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
              <node concept="37vLTw" id="2u_o41fIhNn" role="37wK5m">
                <ref role="3cqZAo" node="2u_o41fIfIG" resolve="withTraceLog" />
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
                  <node concept="37vLTw" id="2u_o41fIRq_" role="37wK5m">
                    <ref role="3cqZAo" node="2u_o41fIfIG" resolve="withTraceLog" />
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
    <node concept="2XrIbr" id="7612DkLHs6O" role="1qtyYc">
      <property role="TrG5h" value="assertPresentationsEqual" />
      <node concept="37vLTG" id="7612DkLHtzB" role="3clF46">
        <property role="TrG5h" value="typeA" />
        <node concept="3Tqbb2" id="7612DkLHtzQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7612DkLHt$n" role="3clF46">
        <property role="TrG5h" value="typeB" />
        <node concept="3Tqbb2" id="7612DkLHt$C" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7612DkLHtyG" role="3clF45" />
      <node concept="3clFbS" id="7612DkLHs6Q" role="3clF47">
        <node concept="3vlDli" id="7612DkLHwVA" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLH$vq" role="3tpDZB">
            <node concept="37vLTw" id="7612DkLH$tA" role="2Oq$k0">
              <ref role="3cqZAo" node="7612DkLHtzB" resolve="typeA" />
            </node>
            <node concept="2qgKlT" id="7612DkLHBYf" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
          <node concept="2OqwBi" id="7612DkLHC3E" role="3tpDZA">
            <node concept="37vLTw" id="7612DkLHC1G" role="2Oq$k0">
              <ref role="3cqZAo" node="7612DkLHt$n" resolve="typeB" />
            </node>
            <node concept="2qgKlT" id="7612DkLHC4Q" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="2FNFm8neJtj" role="1SKRRt">
      <node concept="312cEu" id="2FNFm8neJtJ" role="1qenE9">
        <property role="TrG5h" value="BLDemo" />
        <node concept="3clFb_" id="2FNFm8neJuk" role="jymVt">
          <property role="TrG5h" value="foo" />
          <node concept="37vLTG" id="2FNFm8neJvC" role="3clF46">
            <property role="TrG5h" value="b" />
            <node concept="10P_77" id="2FNFm8neJwO" role="1tU5fm" />
            <node concept="3xLA65" id="2u_o41fMFB9" role="lGtFl">
              <property role="TrG5h" value="fooPar" />
            </node>
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
              <node concept="3clFbS" id="2FNFm8neJyA" role="3clFbx" />
              <node concept="37vLTw" id="2FNFm8neJyB" role="3clFbw">
                <ref role="3cqZAo" node="2FNFm8neJvC" resolve="b" />
              </node>
              <node concept="9aQIb" id="2FNFm8neJyC" role="9aQIa">
                <node concept="3clFbS" id="2FNFm8neJ$c" role="9aQI4">
                  <node concept="3clFbF" id="2FNFm8neJ$Y" role="3cqZAp">
                    <node concept="37vLTI" id="2FNFm8neJ_r" role="3clFbG">
                      <node concept="37vLTw" id="2FNFm8neJ_G" role="37vLTJ">
                        <ref role="3cqZAo" node="2FNFm8neJy_" resolve="i" />
                      </node>
                      <node concept="3cpWs3" id="2FNFm8neJ_H" role="37vLTx">
                        <node concept="37vLTw" id="2FNFm8neJA0" role="3uHU7B">
                          <ref role="3cqZAo" node="2FNFm8neJy_" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="2FNFm8neJA1" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                          <node concept="3xLA65" id="2FNFm8neJAf" role="lGtFl">
                            <property role="TrG5h" value="const2" />
                          </node>
                        </node>
                      </node>
                      <node concept="3xLA65" id="3vh3iHvrHij" role="lGtFl">
                        <property role="TrG5h" value="assign_i2" />
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
        <node concept="2tJIrI" id="2u_o41fMAn0" role="jymVt" />
        <node concept="3clFb_" id="2u_o41fMAts" role="jymVt">
          <property role="TrG5h" value="bar" />
          <node concept="3clFbS" id="2u_o41fMAtv" role="3clF47">
            <node concept="3cpWs8" id="4gFYEnZAa9s" role="3cqZAp">
              <node concept="3cpWsn" id="4gFYEnZAa9v" role="3cpWs9">
                <property role="TrG5h" value="bArg" />
                <node concept="10P_77" id="4gFYEnZAa9q" role="1tU5fm" />
                <node concept="3clFbT" id="4gFYEnZAar_" role="33vP2m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2u_o41fMAvo" role="3cqZAp">
              <node concept="1rXfSq" id="2u_o41fMAx5" role="3cqZAk">
                <ref role="37wK5l" node="2FNFm8neJuk" resolve="foo" />
                <node concept="3xLA65" id="2u_o41fMOlW" role="lGtFl">
                  <property role="TrG5h" value="fooCall" />
                </node>
                <node concept="37vLTw" id="4gFYEnZAb7$" role="37wK5m">
                  <ref role="3cqZAo" node="4gFYEnZAa9v" resolve="bArg" />
                  <node concept="3xLA65" id="4gFYEnZAdZk" role="lGtFl">
                    <property role="TrG5h" value="fooArg" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="2u_o41fMAqR" role="1B3o_S" />
          <node concept="10Oyi0" id="2u_o41fMAtf" role="3clF45" />
        </node>
        <node concept="3Tm1VV" id="2FNFm8neJul" role="1B3o_S" />
        <node concept="3xLA65" id="2FNFm8neJum" role="lGtFl">
          <property role="TrG5h" value="demo2" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="7612DkLDcvD" role="1SKRRt">
      <node concept="312cEu" id="7612DkLDcvE" role="1qenE9">
        <property role="TrG5h" value="DemoBounds" />
        <node concept="312cEu" id="7612DkLGx_j" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="A" />
          <node concept="3Tm1VV" id="7612DkLGx_k" role="1B3o_S" />
        </node>
        <node concept="2tJIrI" id="7612DkLGx_l" role="jymVt" />
        <node concept="312cEu" id="7612DkLGx_m" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="B" />
          <node concept="3Tm1VV" id="7612DkLGx_n" role="1B3o_S" />
          <node concept="3uibUv" id="7612DkLGx_o" role="1zkMxy">
            <ref role="3uigEE" node="7612DkLGx_j" resolve="DemoBounds.A" />
          </node>
        </node>
        <node concept="2tJIrI" id="7612DkLGx_p" role="jymVt" />
        <node concept="312cEu" id="7612DkLGx_q" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="C" />
          <node concept="3Tm1VV" id="7612DkLGx_r" role="1B3o_S" />
          <node concept="3uibUv" id="7612DkLGx_s" role="1zkMxy">
            <ref role="3uigEE" node="7612DkLGx_m" resolve="DemoBounds.B" />
          </node>
        </node>
        <node concept="2tJIrI" id="7612DkLGx_t" role="jymVt" />
        <node concept="312cEu" id="7612DkLGx_u" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="Box" />
          <node concept="3clFb_" id="7612DkLGx_v" role="jymVt">
            <property role="TrG5h" value="get" />
            <node concept="16syzq" id="7612DkLGx_w" role="3clF45">
              <ref role="16sUi3" node="7612DkLGx_G" resolve="T" />
            </node>
            <node concept="3Tm1VV" id="7612DkLGx_x" role="1B3o_S" />
            <node concept="3clFbS" id="7612DkLGx_y" role="3clF47">
              <node concept="3clFbF" id="7612DkLGx_z" role="3cqZAp">
                <node concept="10Nm6u" id="7612DkLGx_$" role="3clFbG" />
              </node>
            </node>
          </node>
          <node concept="3clFb_" id="7612DkLGx__" role="jymVt">
            <property role="TrG5h" value="set" />
            <node concept="3cqZAl" id="7612DkLGx_A" role="3clF45" />
            <node concept="3Tm1VV" id="7612DkLGx_B" role="1B3o_S" />
            <node concept="3clFbS" id="7612DkLGx_C" role="3clF47" />
            <node concept="37vLTG" id="7612DkLGx_D" role="3clF46">
              <property role="TrG5h" value="t" />
              <node concept="16syzq" id="7612DkLGx_E" role="1tU5fm">
                <ref role="16sUi3" node="7612DkLGx_G" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="7612DkLGx_F" role="1B3o_S" />
          <node concept="16euLQ" id="7612DkLGx_G" role="16eVyc">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="2tJIrI" id="3qSM7lhADaG" role="jymVt" />
        <node concept="3clFb_" id="7612DkLDcvF" role="jymVt">
          <property role="TrG5h" value="foo" />
          <node concept="37vLTG" id="7612DkLDcvG" role="3clF46">
            <property role="TrG5h" value="b" />
            <node concept="3xLA65" id="7612DkLDcvI" role="lGtFl">
              <property role="TrG5h" value="fooBox" />
            </node>
            <node concept="3uibUv" id="7612DkLDngR" role="1tU5fm">
              <ref role="3uigEE" node="7612DkLGx_u" resolve="DemoBounds.Box" />
              <node concept="16syzq" id="7612DkLDDlR" role="11_B2D">
                <ref role="16sUi3" node="7612DkLDDer" resolve="T1" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="7612DkLDcvK" role="1B3o_S" />
          <node concept="3clFbS" id="7612DkLDcvL" role="3clF47">
            <node concept="3cpWs6" id="7612DkLDGlk" role="3cqZAp">
              <node concept="2OqwBi" id="7612DkLDGxF" role="3cqZAk">
                <node concept="37vLTw" id="7612DkLDGn3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7612DkLDcvG" resolve="b" />
                </node>
                <node concept="liA8E" id="7612DkLDHlP" role="2OqNvi">
                  <ref role="37wK5l" node="7612DkLGx_v" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="16euLQ" id="7612DkLDDer" role="16eVyc">
            <property role="TrG5h" value="T1" />
            <node concept="3uibUv" id="7612DkLDGgG" role="3ztrMU">
              <ref role="3uigEE" node="7612DkLGx_j" resolve="DemoBounds.A" />
              <node concept="3xLA65" id="7612DkLDOAN" role="lGtFl">
                <property role="TrG5h" value="fooTypePar" />
              </node>
            </node>
          </node>
          <node concept="16syzq" id="7612DkLDGiz" role="3clF45">
            <ref role="16sUi3" node="7612DkLDDer" resolve="T1" />
          </node>
        </node>
        <node concept="2tJIrI" id="7612DkLDcw5" role="jymVt" />
        <node concept="3clFb_" id="7612DkLDcw6" role="jymVt">
          <property role="TrG5h" value="bar" />
          <node concept="3clFbS" id="7612DkLDcw7" role="3clF47">
            <node concept="3cpWs8" id="7612DkLDsVK" role="3cqZAp">
              <node concept="3cpWsn" id="7612DkLDsVQ" role="3cpWs9">
                <property role="TrG5h" value="fooArg" />
                <node concept="3uibUv" id="7612DkLDsVS" role="1tU5fm">
                  <ref role="3uigEE" node="7612DkLGx_u" resolve="DemoBounds.Box" />
                  <node concept="3xLA65" id="7612DkLFOZX" role="lGtFl">
                    <property role="TrG5h" value="newBoxType" />
                  </node>
                  <node concept="3uibUv" id="7612DkLG$mo" role="11_B2D">
                    <ref role="3uigEE" node="7612DkLGx_q" resolve="DemoBounds.C" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7612DkLDnVJ" role="33vP2m">
                  <node concept="HV5vD" id="7612DkLDpDk" role="2ShVmc">
                    <ref role="HV5vE" node="7612DkLGx_u" resolve="DemoBounds.Box" />
                    <node concept="3uibUv" id="7612DkLG$E5" role="HU9BZ">
                      <ref role="3uigEE" node="7612DkLGx_q" resolve="DemoBounds.C" />
                    </node>
                    <node concept="3xLA65" id="7612DkLDA03" role="lGtFl">
                      <property role="TrG5h" value="newBox" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7612DkLDnU2" role="3cqZAp">
              <node concept="1rXfSq" id="7612DkLDnU0" role="3clFbG">
                <ref role="37wK5l" node="7612DkLDcvF" resolve="foo" />
                <node concept="37vLTw" id="7612DkLDt4H" role="37wK5m">
                  <ref role="3cqZAo" node="7612DkLDsVQ" resolve="fooArg" />
                </node>
                <node concept="3xLA65" id="7612DkLDSDr" role="lGtFl">
                  <property role="TrG5h" value="fooCall2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="7612DkLDcwh" role="1B3o_S" />
          <node concept="3cqZAl" id="7612DkLDsMM" role="3clF45" />
        </node>
        <node concept="3Tm1VV" id="7612DkLDcwj" role="1B3o_S" />
        <node concept="3xLA65" id="7612DkLDcwk" role="lGtFl">
          <property role="TrG5h" value="demoBounds" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3vh3iHvq6qg" role="1SL9yI">
      <property role="TrG5h" value="replaceSingleNode" />
      <node concept="3cqZAl" id="3vh3iHvq6qh" role="3clF45" />
      <node concept="3clFbS" id="3vh3iHvq6ql" role="3clF47">
        <node concept="3clFbF" id="3vh3iHvq8Wx" role="3cqZAp">
          <node concept="2OqwBi" id="3vh3iHvq8Wr" role="3clFbG">
            <node concept="2WthIp" id="3vh3iHvq8Wu" role="2Oq$k0" />
            <node concept="2XshWL" id="3vh3iHvq8Ww" role="2OqNvi">
              <ref role="2WH_rO" node="3vh3iHvpMrp" resolve="replaceTest" />
              <node concept="3xONca" id="3vh3iHvq8Xg" role="2XxRq1">
                <ref role="3xOPvv" node="6gZak$B1XHR" resolve="iVarDecl" />
              </node>
              <node concept="3xONca" id="3vh3iHvqaM7" role="2XxRq1">
                <ref role="3xOPvv" node="55idZnEzOte" resolve="plusOp" />
              </node>
              <node concept="2c44tf" id="3vh3iHvqkpe" role="2XxRq1">
                <node concept="10Oyi0" id="3vh3iHvqmis" role="2c44tc" />
              </node>
              <node concept="3xONca" id="3vh3iHvqod8" role="2XxRq1">
                <ref role="3xOPvv" node="3evPR3Ef1La" resolve="const0" />
              </node>
              <node concept="2c44tf" id="3vh3iHvqBs4" role="2XxRq1">
                <node concept="3cmrfG" id="3vh3iHvqBs5" role="2c44tc">
                  <property role="3cmrfH" value="42" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3vh3iHvqKT6" role="1SL9yI">
      <property role="TrG5h" value="replaceIncorrectlyFail" />
      <node concept="3cqZAl" id="3vh3iHvqKT7" role="3clF45" />
      <node concept="3clFbS" id="3vh3iHvqKT8" role="3clF47">
        <node concept="3clFbF" id="3vh3iHvqKT9" role="3cqZAp">
          <node concept="2OqwBi" id="3vh3iHvqKTa" role="3clFbG">
            <node concept="2WthIp" id="3vh3iHvqKTb" role="2Oq$k0" />
            <node concept="2XshWL" id="3vh3iHvqKTc" role="2OqNvi">
              <ref role="2WH_rO" node="3o9wrC3yMuL" resolve="replaceFailTest" />
              <node concept="3xONca" id="3vh3iHvqKTd" role="2XxRq1">
                <ref role="3xOPvv" node="6gZak$B1XHR" resolve="iVarDecl" />
              </node>
              <node concept="3xONca" id="3vh3iHvqNCd" role="2XxRq1">
                <ref role="3xOPvv" node="6gZak$B1XHR" resolve="iVarDecl" />
              </node>
              <node concept="3xONca" id="3vh3iHvqPB5" role="2XxRq1">
                <ref role="3xOPvv" node="55idZnEzOte" resolve="plusOp" />
              </node>
              <node concept="2c44tf" id="3vh3iHvqKTi" role="2XxRq1">
                <node concept="Xl_RD" id="3vh3iHvqRGn" role="2c44tc">
                  <property role="Xl_RC" value="foobar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3vh3iHvqXSj" role="1SL9yI">
      <property role="TrG5h" value="baseLangReplaceSingle3" />
      <node concept="3cqZAl" id="3vh3iHvqXSk" role="3clF45" />
      <node concept="3clFbS" id="3vh3iHvqXSl" role="3clF47">
        <node concept="3clFbF" id="3vh3iHvqXSm" role="3cqZAp">
          <node concept="2OqwBi" id="3vh3iHvqXSn" role="3clFbG">
            <node concept="2WthIp" id="3vh3iHvqXSo" role="2Oq$k0" />
            <node concept="2XshWL" id="3vh3iHvqXSp" role="2OqNvi">
              <ref role="2WH_rO" node="3vh3iHvpMrp" resolve="replaceTest" />
              <node concept="3xONca" id="3vh3iHvqZty" role="2XxRq1">
                <ref role="3xOPvv" node="2FNFm8neJum" resolve="demo2" />
              </node>
              <node concept="3xONca" id="3vh3iHvrHsN" role="2XxRq1">
                <ref role="3xOPvv" node="3vh3iHvrHij" resolve="assign_i2" />
              </node>
              <node concept="2c44tf" id="3vh3iHvqXSs" role="2XxRq1">
                <node concept="10Oyi0" id="3vh3iHvr1y8" role="2c44tc" />
              </node>
              <node concept="3xONca" id="3vh3iHvr1_e" role="2XxRq1">
                <ref role="3xOPvv" node="2FNFm8neJAf" resolve="const2" />
              </node>
              <node concept="2c44tf" id="3vh3iHvrtBK" role="2XxRq1">
                <node concept="37vLTw" id="3vh3iHvrtEP" role="2c44tc">
                  <ref role="3cqZAo" node="2FNFm8neJy_" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3qSM7lhEqRK" role="1SL9yI">
      <property role="TrG5h" value="tcheckInvalidNode" />
      <node concept="3cqZAl" id="3qSM7lhEqRL" role="3clF45" />
      <node concept="3clFbS" id="3qSM7lhEqRM" role="3clF47">
        <node concept="3cpWs8" id="3qSM7lhEqRN" role="3cqZAp">
          <node concept="3cpWsn" id="3qSM7lhEqRO" role="3cpWs9">
            <property role="TrG5h" value="typecheckRoot" />
            <node concept="3Tqbb2" id="3qSM7lhEqRP" role="1tU5fm" />
            <node concept="3xONca" id="3qSM7lhEqRQ" role="33vP2m">
              <ref role="3xOPvv" node="6gZak$B1UDG" resolve="demo1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3qSM7lhEqRR" role="3cqZAp">
          <node concept="3cpWsn" id="3qSM7lhEqRS" role="3cpWs9">
            <property role="TrG5h" value="testNode" />
            <node concept="3Tqbb2" id="3qSM7lhEqRT" role="1tU5fm" />
            <node concept="3xONca" id="3qSM7lhEqRU" role="33vP2m">
              <ref role="3xOPvv" node="2u_o41fEPHL" resolve="assign_i1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEqRV" role="3cqZAp" />
        <node concept="3cpWs8" id="3qSM7lhEqRW" role="3cqZAp">
          <node concept="3cpWsn" id="3qSM7lhEqRX" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3qSM7lhEqRY" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="3qSM7lhEqRZ" role="33vP2m">
              <node concept="2JrnkZ" id="3qSM7lhEqS0" role="2Oq$k0">
                <node concept="2OqwBi" id="3qSM7lhEqS1" role="2JrQYb">
                  <node concept="I4A8Y" id="3qSM7lhEqS2" role="2OqNvi" />
                  <node concept="37vLTw" id="3qSM7lhEqS3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3qSM7lhEqRO" resolve="typecheckRoot" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3qSM7lhEqS4" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3qSM7lhEqS5" role="3cqZAp">
          <node concept="3cpWsn" id="3qSM7lhEqS6" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="3qSM7lhEqS7" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="3qSM7lhEqS8" role="33vP2m">
              <node concept="1pGfFk" id="3qSM7lhEqS9" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="3qSM7lhEqSa" role="37wK5m">
                  <ref role="3cqZAo" node="3qSM7lhEqRX" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="3qSM7lhEqSb" role="37wK5m">
                  <node concept="I4A8Y" id="3qSM7lhEqSc" role="2OqNvi" />
                  <node concept="37vLTw" id="3qSM7lhEqSd" role="2Oq$k0">
                    <ref role="3cqZAo" node="3qSM7lhEqRO" resolve="typecheckRoot" />
                  </node>
                </node>
                <node concept="10M0yZ" id="3qSM7lhEqSe" role="37wK5m">
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEuuq" role="3cqZAp" />
        <node concept="3SKdUt" id="3qSM7lhEzep" role="3cqZAp">
          <node concept="1PaTwC" id="3qSM7lhESII" role="3ndbpf">
            <node concept="3oM_SD" id="3qSM7lhEzvH" role="1PaTwD">
              <property role="3oM_SC" value="Make" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhEzvJ" role="1PaTwD">
              <property role="3oM_SC" value="inner" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhEB3U" role="1PaTwD">
              <property role="3oM_SC" value="expression" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhELF4" role="1PaTwD">
              <property role="3oM_SC" value="valid" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhEP50" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhEP56" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhEWs2" role="1PaTwD">
              <property role="3oM_SC" value="typechecking" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3qSM7lhEWQT" role="3cqZAp">
          <node concept="1PaTwC" id="3qSM7lhEWQU" role="3ndbpf">
            <node concept="3oM_SD" id="3qSM7lhF0IP" role="1PaTwD">
              <property role="3oM_SC" value="while" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhF0IR" role="1PaTwD">
              <property role="3oM_SC" value="outer" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhGen2" role="1PaTwD">
              <property role="3oM_SC" value="expr" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhF0Ja" role="1PaTwD">
              <property role="3oM_SC" value="won't" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhF4eN" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhF4f0" role="1PaTwD">
              <property role="3oM_SC" value="typechecking" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhF4f6" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhF7Jn" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhF7Jv" role="1PaTwD">
              <property role="3oM_SC" value="incompleteness" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhEyjO" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhEyjP" role="3clFbG">
            <node concept="2OqwBi" id="3qSM7lhEyjQ" role="2Oq$k0">
              <node concept="3xONca" id="3qSM7lhEyjR" role="2Oq$k0">
                <ref role="3xOPvv" node="2u_o41fENyK" resolve="plusOp1" />
              </node>
              <node concept="3TrEf2" id="3qSM7lhEyjS" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
              </node>
            </node>
            <node concept="1P9Npp" id="3qSM7lhEyjT" role="2OqNvi">
              <node concept="2c44tf" id="3qSM7lhEyjU" role="1P9ThW">
                <node concept="37vLTw" id="3qSM7lhEyjV" role="2c44tc">
                  <ref role="3cqZAo" node="6gZak$B1UDx" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEqSf" role="3cqZAp" />
        <node concept="3cpWs8" id="3qSM7lhEqSg" role="3cqZAp">
          <node concept="3cpWsn" id="3qSM7lhEqSh" role="3cpWs9">
            <property role="TrG5h" value="testNodeRef" />
            <node concept="3uibUv" id="3qSM7lhEqSi" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="3qSM7lhEqSj" role="33vP2m">
              <node concept="liA8E" id="3qSM7lhEqSk" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
              <node concept="2JrnkZ" id="3qSM7lhEqSl" role="2Oq$k0">
                <node concept="37vLTw" id="3qSM7lhEqSm" role="2JrQYb">
                  <ref role="3cqZAo" node="3qSM7lhEqRS" resolve="testNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3qSM7lhEqSn" role="3cqZAp">
          <node concept="3cpWsn" id="3qSM7lhEqSo" role="3cpWs9">
            <property role="TrG5h" value="types0" />
            <node concept="3rvAFt" id="3qSM7lhEqSp" role="1tU5fm">
              <node concept="3uibUv" id="3qSM7lhEqSq" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3qSM7lhEqSr" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="3qSM7lhEqSs" role="33vP2m">
              <node concept="liA8E" id="3qSM7lhEqSt" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="37vLTw" id="3qSM7lhEqSu" role="37wK5m">
                  <ref role="3cqZAo" node="3qSM7lhEqRO" resolve="typecheckRoot" />
                </node>
              </node>
              <node concept="37vLTw" id="3qSM7lhEqSv" role="2Oq$k0">
                <ref role="3cqZAo" node="3qSM7lhEqS6" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhEqSw" role="3cqZAp">
          <node concept="2YIFZM" id="3qSM7lhEqSx" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="3qSM7lhEqSy" role="37wK5m">
              <ref role="3cqZAo" node="3qSM7lhEqRX" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3qSM7lhEqSz" role="37wK5m">
              <ref role="3cqZAo" node="3qSM7lhEqSo" resolve="types0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEqS$" role="3cqZAp" />
        <node concept="3vwNmj" id="3qSM7lhG3Vy" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhEqSA" role="3vwVQn">
            <node concept="37vLTw" id="3qSM7lhEqSB" role="2Oq$k0">
              <ref role="3cqZAo" node="3qSM7lhEqSo" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="3qSM7lhEqSC" role="2OqNvi">
              <node concept="2OqwBi" id="3qSM7lhEqSD" role="38cxEo">
                <node concept="liA8E" id="3qSM7lhEqSE" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="3qSM7lhEqSF" role="2Oq$k0">
                  <node concept="3xONca" id="3qSM7lhEqSG" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fENyK" resolve="plusOp1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="3qSM7lhEqSH" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhEqSI" role="3vFALc">
            <node concept="37vLTw" id="3qSM7lhEqSJ" role="2Oq$k0">
              <ref role="3cqZAo" node="3qSM7lhEqSo" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="3qSM7lhEqSK" role="2OqNvi">
              <node concept="2OqwBi" id="3qSM7lhEqSL" role="38cxEo">
                <node concept="liA8E" id="3qSM7lhEqSM" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="3qSM7lhEqSN" role="2Oq$k0">
                  <node concept="3xONca" id="3qSM7lhEqSO" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fMimX" resolve="plusOp2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="3qSM7lhEqSP" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhEqSQ" role="3vFALc">
            <node concept="37vLTw" id="3qSM7lhEqSR" role="2Oq$k0">
              <ref role="3cqZAo" node="3qSM7lhEqSo" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="3qSM7lhEqSS" role="2OqNvi">
              <node concept="37vLTw" id="3qSM7lhEqST" role="38cxEo">
                <ref role="3cqZAo" node="3qSM7lhEqSh" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEqTB" role="3cqZAp" />
        <node concept="3SKdUt" id="3qSM7lhFg5o" role="3cqZAp">
          <node concept="1PaTwC" id="3qSM7lhFg5p" role="3ndbpf">
            <node concept="3oM_SD" id="3qSM7lhFgnT" role="1PaTwD">
              <property role="3oM_SC" value="Make" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFgo3" role="1PaTwD">
              <property role="3oM_SC" value="inner" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhG7Dk" role="1PaTwD">
              <property role="3oM_SC" value="expr" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFjS7" role="1PaTwD">
              <property role="3oM_SC" value="invalid" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFjSr" role="1PaTwD">
              <property role="3oM_SC" value="again" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFnpC" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFnpI" role="1PaTwD">
              <property role="3oM_SC" value="removing" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFqWI" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFuu5" role="1PaTwD">
              <property role="3oM_SC" value="child" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFuum" role="1PaTwD">
              <property role="3oM_SC" value="&amp;" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFuuw" role="1PaTwD">
              <property role="3oM_SC" value="try" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFuuN" role="1PaTwD">
              <property role="3oM_SC" value="typechecking" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhFxX0" role="1PaTwD">
              <property role="3oM_SC" value="outer" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhGaXW" role="1PaTwD">
              <property role="3oM_SC" value="expr" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhFfaq" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhFfar" role="3clFbG">
            <node concept="2OqwBi" id="3qSM7lhFfas" role="2Oq$k0">
              <node concept="3xONca" id="3qSM7lhFfat" role="2Oq$k0">
                <ref role="3xOPvv" node="2u_o41fENyK" resolve="plusOp1" />
              </node>
              <node concept="3TrEf2" id="3qSM7lhFfau" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
              </node>
            </node>
            <node concept="3YRAZt" id="3qSM7lhFDdJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3ykFI1" id="3qSM7lhFH2l" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhFL4R" role="3ykU8v">
            <node concept="3xONca" id="3qSM7lhFKQW" role="2Oq$k0">
              <ref role="3xOPvv" node="2u_o41fENyK" resolve="plusOp1" />
            </node>
            <node concept="3TrEf2" id="3qSM7lhFP2B" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhEqTC" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhEqTD" role="3clFbG">
            <node concept="2OqwBi" id="3qSM7lhEqTE" role="2Oq$k0">
              <node concept="3xONca" id="3qSM7lhEqTF" role="2Oq$k0">
                <ref role="3xOPvv" node="2u_o41fMimX" resolve="plusOp2" />
              </node>
              <node concept="3TrEf2" id="3qSM7lhEqTG" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" resolve="rightExpression" />
              </node>
            </node>
            <node concept="1P9Npp" id="3qSM7lhEqTH" role="2OqNvi">
              <node concept="2c44tf" id="3qSM7lhEqTI" role="1P9ThW">
                <node concept="3cmrfG" id="3qSM7lhEqTJ" role="2c44tc">
                  <property role="3cmrfH" value="43" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEqTK" role="3cqZAp" />
        <node concept="3cpWs8" id="3qSM7lhEqTL" role="3cqZAp">
          <node concept="3cpWsn" id="3qSM7lhEqTM" role="3cpWs9">
            <property role="TrG5h" value="typesDelta2" />
            <node concept="2OqwBi" id="3qSM7lhEqTN" role="33vP2m">
              <node concept="37vLTw" id="3qSM7lhEqTO" role="2Oq$k0">
                <ref role="3cqZAo" node="3qSM7lhEqS6" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3qSM7lhEqTP" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="3qSM7lhEqTQ" role="37wK5m">
                  <ref role="3cqZAo" node="3qSM7lhEqRO" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="3qSM7lhEqTR" role="1tU5fm">
              <node concept="3uibUv" id="3qSM7lhEqTS" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3qSM7lhEqTT" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhEqTU" role="3cqZAp">
          <node concept="2YIFZM" id="3qSM7lhEqTV" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="3qSM7lhEqTW" role="37wK5m">
              <ref role="3cqZAo" node="3qSM7lhEqRX" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3qSM7lhEqTX" role="37wK5m">
              <ref role="3cqZAo" node="3qSM7lhEqTM" resolve="typesDelta2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEqTY" role="3cqZAp" />
        <node concept="3SKdUt" id="3qSM7lhHxCd" role="3cqZAp">
          <node concept="1PaTwC" id="3qSM7lhHxCe" role="3ndbpf">
            <node concept="3oM_SD" id="3qSM7lhH_hk" role="1PaTwD">
              <property role="3oM_SC" value="See" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhH_hm" role="1PaTwD">
              <property role="3oM_SC" value="whether" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhH_hp" role="1PaTwD">
              <property role="3oM_SC" value="old" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhH_hH" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHN3q" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHQuN" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHQv7" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHQvs" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHQvE" role="1PaTwD">
              <property role="3oM_SC" value="valid" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHCLZ" role="1PaTwD">
              <property role="3oM_SC" value="influence" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHGih" role="1PaTwD">
              <property role="3oM_SC" value="subsequent" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHGiw" role="1PaTwD">
              <property role="3oM_SC" value="relaunches." />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHJ_T" role="1PaTwD">
              <property role="3oM_SC" value="They" />
            </node>
            <node concept="3oM_SD" id="3qSM7lhHJA2" role="1PaTwD">
              <property role="3oM_SC" value="shouldn't." />
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="3qSM7lhHh6R" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhEqU0" role="3vFALc">
            <node concept="37vLTw" id="3qSM7lhEqU1" role="2Oq$k0">
              <ref role="3cqZAo" node="3qSM7lhEqTM" resolve="typesDelta2" />
            </node>
            <node concept="2Nt0df" id="3qSM7lhEqU2" role="2OqNvi">
              <node concept="2OqwBi" id="3qSM7lhEqU3" role="38cxEo">
                <node concept="liA8E" id="3qSM7lhEqU4" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="3qSM7lhEqU5" role="2Oq$k0">
                  <node concept="3xONca" id="3qSM7lhEqU6" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fMimX" resolve="plusOp2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="3qSM7lhHcI6" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3vwNmj" id="3qSM7lhEqU7" role="8Wnug">
            <node concept="2OqwBi" id="3qSM7lhEqU8" role="3vwVQn">
              <node concept="37vLTw" id="3qSM7lhEqU9" role="2Oq$k0">
                <ref role="3cqZAo" node="3qSM7lhEqTM" resolve="typesDelta2" />
              </node>
              <node concept="2Nt0df" id="3qSM7lhEqUa" role="2OqNvi">
                <node concept="37vLTw" id="3qSM7lhEqUb" role="38cxEo">
                  <ref role="3cqZAo" node="3qSM7lhEqSh" resolve="testNodeRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="3qSM7lhHcWP" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3vwNmj" id="3qSM7lhEqUc" role="8Wnug">
            <node concept="2YFouu" id="3qSM7lhEqUd" role="3vwVQn">
              <node concept="3EllGN" id="3qSM7lhEqUe" role="3uHU7w">
                <node concept="37vLTw" id="3qSM7lhEqUf" role="3ElVtu">
                  <ref role="3cqZAo" node="3qSM7lhEqSh" resolve="testNodeRef" />
                </node>
                <node concept="37vLTw" id="3qSM7lhEqUg" role="3ElQJh">
                  <ref role="3cqZAo" node="3qSM7lhEqTM" resolve="typesDelta2" />
                </node>
              </node>
              <node concept="2c44tf" id="3qSM7lhEqUh" role="3uHU7B">
                <node concept="10Oyi0" id="3qSM7lhEqUi" role="2c44tc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qSM7lhEqUj" role="3cqZAp" />
        <node concept="3clFbF" id="3qSM7lhEqUk" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhEqUl" role="3clFbG">
            <node concept="2WthIp" id="3qSM7lhEqUm" role="2Oq$k0" />
            <node concept="2XshWL" id="3qSM7lhEqUn" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJtd" resolve="assertSameAsGroundTruth" />
              <node concept="37vLTw" id="3qSM7lhEqUo" role="2XxRq1">
                <ref role="3cqZAo" node="3qSM7lhEqRO" resolve="typecheckRoot" />
              </node>
              <node concept="37vLTw" id="3qSM7lhEqUp" role="2XxRq1">
                <ref role="3cqZAo" node="3qSM7lhEqS6" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2u_o41fEn6H" role="1SL9yI">
      <property role="TrG5h" value="changeSignature" />
      <node concept="3cqZAl" id="2u_o41fEn6I" role="3clF45" />
      <node concept="3clFbS" id="2u_o41fEn6M" role="3clF47">
        <node concept="3cpWs8" id="2u_o41fG4sZ" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fG4t2" role="3cpWs9">
            <property role="TrG5h" value="typecheckRoot" />
            <node concept="3Tqbb2" id="2u_o41fG4sX" role="1tU5fm" />
            <node concept="3xONca" id="2u_o41fOd8n" role="33vP2m">
              <ref role="3xOPvv" node="2FNFm8neJum" resolve="demo2" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2u_o41fEU8v" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fEU8y" role="3cpWs9">
            <property role="TrG5h" value="testNode" />
            <node concept="3Tqbb2" id="2u_o41fEU8t" role="1tU5fm" />
            <node concept="3xONca" id="2u_o41fMUxp" role="33vP2m">
              <ref role="3xOPvv" node="2u_o41fMOlW" resolve="fooCall" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fDJTt" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fL1Ck" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fL1Cl" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2u_o41fL1Cm" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="2u_o41fL1Cn" role="33vP2m">
              <node concept="2JrnkZ" id="2u_o41fL1Co" role="2Oq$k0">
                <node concept="2OqwBi" id="2u_o41fL1Cp" role="2JrQYb">
                  <node concept="I4A8Y" id="2u_o41fL1Cq" role="2OqNvi" />
                  <node concept="37vLTw" id="2u_o41fL1Cr" role="2Oq$k0">
                    <ref role="3cqZAo" node="2u_o41fG4t2" resolve="typecheckRoot" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2u_o41fL1Cs" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2u_o41fL1Ct" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fL1Cu" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="2u_o41fL1Cv" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="2u_o41fL1Cw" role="33vP2m">
              <node concept="1pGfFk" id="2u_o41fL1Cx" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="2u_o41fL1Cy" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fL1Cl" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="2u_o41fL1Cz" role="37wK5m">
                  <node concept="I4A8Y" id="2u_o41fL1C$" role="2OqNvi" />
                  <node concept="37vLTw" id="2u_o41fL1C_" role="2Oq$k0">
                    <ref role="3cqZAo" node="2u_o41fG4t2" resolve="typecheckRoot" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2u_o41fL1CA" role="37wK5m">
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fERJq" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fDoca" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fDocb" role="3cpWs9">
            <property role="TrG5h" value="testNodeRef" />
            <node concept="3uibUv" id="2u_o41fDocc" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="2u_o41fJ_L4" role="33vP2m">
              <node concept="liA8E" id="2u_o41fJC48" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
              <node concept="2JrnkZ" id="2u_o41fJ_L9" role="2Oq$k0">
                <node concept="37vLTw" id="2u_o41fJ_BQ" role="2JrQYb">
                  <ref role="3cqZAo" node="2u_o41fEU8y" resolve="testNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2u_o41fDYKz" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fDYKA" role="3cpWs9">
            <property role="TrG5h" value="types0" />
            <node concept="3rvAFt" id="2u_o41fDYKB" role="1tU5fm">
              <node concept="3uibUv" id="2u_o41fDYKC" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2u_o41fDYKD" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="2u_o41fDYKE" role="33vP2m">
              <node concept="liA8E" id="2u_o41fL4pH" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="37vLTw" id="2u_o41fL4wC" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fG4t2" resolve="typecheckRoot" />
                </node>
              </node>
              <node concept="37vLTw" id="2u_o41fL45C" role="2Oq$k0">
                <ref role="3cqZAo" node="2u_o41fL1Cu" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fLa9g" role="3cqZAp">
          <node concept="2YIFZM" id="2u_o41fLa9h" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="2u_o41fLa9i" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fL1Cl" resolve="repo" />
            </node>
            <node concept="37vLTw" id="2u_o41fLfzB" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fDYKA" resolve="types0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fOCYV" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fODvk" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fODvn" role="3cpWs9">
            <property role="TrG5h" value="testNodeRules" />
            <node concept="A3Dl8" id="2u_o41fODvh" role="1tU5fm">
              <node concept="3uibUv" id="2u_o41fODFl" role="A3Ik2">
                <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
              </node>
            </node>
            <node concept="2OqwBi" id="2u_o41fOtVt" role="33vP2m">
              <node concept="2WthIp" id="2u_o41fOtVw" role="2Oq$k0" />
              <node concept="2XshWL" id="2u_o41fOtVy" role="2OqNvi">
                <ref role="2WH_rO" node="7eQMSyzli7C" resolve="findRulesForNode" />
                <node concept="2OqwBi" id="2u_o41fOwQm" role="2XxRq1">
                  <node concept="2OqwBi" id="2u_o41fOu3Y" role="2Oq$k0">
                    <node concept="37vLTw" id="2u_o41fOtYh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2u_o41fL1Cu" resolve="launcher" />
                    </node>
                    <node concept="liA8E" id="2u_o41fOwI4" role="2OqNvi">
                      <ref role="37wK5l" to="hfva:55idZnEz6lV" resolve="getProgram" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2u_o41fOx0a" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Program.rules()" resolve="rules" />
                  </node>
                </node>
                <node concept="37vLTw" id="2u_o41fOzsT" role="2XxRq1">
                  <ref role="3cqZAo" node="2u_o41fDocb" resolve="testNodeRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fOGqU" role="3cqZAp">
          <node concept="2YIFZM" id="2u_o41fOM47" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3EemvM" resolve="printRules" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="2u_o41fOMbm" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fODvn" resolve="testNodeRules" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fJnHr" role="3cqZAp" />
        <node concept="3vwNmj" id="2u_o41fKHvb" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fKHvc" role="3vwVQn">
            <node concept="37vLTw" id="2u_o41fMXEo" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fDYKA" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="2u_o41fKHve" role="2OqNvi">
              <node concept="37vLTw" id="2u_o41fKK4L" role="38cxEo">
                <ref role="3cqZAo" node="2u_o41fDocb" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2u_o41fDod8" role="3cqZAp">
          <node concept="2YFouu" id="2u_o41fDod9" role="3vwVQn">
            <node concept="3EllGN" id="2u_o41fDoda" role="3uHU7w">
              <node concept="37vLTw" id="2u_o41fDodb" role="3ElVtu">
                <ref role="3cqZAo" node="2u_o41fDocb" resolve="testNodeRef" />
              </node>
              <node concept="37vLTw" id="2u_o41fMXFj" role="3ElQJh">
                <ref role="3cqZAo" node="2u_o41fDYKA" resolve="types0" />
              </node>
            </node>
            <node concept="2c44tf" id="2u_o41fGc6z" role="3uHU7B">
              <node concept="10Oyi0" id="2u_o41fGebQ" role="2c44tc" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fF8f8" role="3cqZAp" />
        <node concept="3clFbF" id="2u_o41fNeRA" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fNfdD" role="3clFbG">
            <node concept="3xONca" id="4gFYEnZAf5_" role="2Oq$k0">
              <ref role="3xOPvv" node="4gFYEnZAdZk" resolve="fooArg" />
            </node>
            <node concept="1P9Npp" id="2u_o41fNi8B" role="2OqNvi">
              <node concept="2c44tf" id="2u_o41fNiaB" role="1P9ThW">
                <node concept="3cmrfG" id="2u_o41fNiaC" role="2c44tc">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fNq3_" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fNqvs" role="3clFbG">
            <node concept="2OqwBi" id="2u_o41fNwi5" role="2Oq$k0">
              <node concept="3xONca" id="2u_o41fNq3z" role="2Oq$k0">
                <ref role="3xOPvv" node="2u_o41fMFB9" resolve="fooPar" />
              </node>
              <node concept="3TrEf2" id="2u_o41fNzpy" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
              </node>
            </node>
            <node concept="1P9Npp" id="2u_o41fNtzP" role="2OqNvi">
              <node concept="2c44tf" id="2u_o41fNt_S" role="1P9ThW">
                <node concept="10Oyi0" id="2u_o41fNw7a" role="2c44tc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fNeBu" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fDocq" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fDocr" role="3cpWs9">
            <property role="TrG5h" value="typesDelta1" />
            <node concept="2OqwBi" id="2u_o41fDocs" role="33vP2m">
              <node concept="37vLTw" id="2u_o41fL4aw" role="2Oq$k0">
                <ref role="3cqZAo" node="2u_o41fL1Cu" resolve="launcher" />
              </node>
              <node concept="liA8E" id="2u_o41fDocu" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="2u_o41fG7e4" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fG4t2" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="2u_o41fDocw" role="1tU5fm">
              <node concept="3uibUv" id="2u_o41fDocx" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2u_o41fDocy" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fLas7" role="3cqZAp">
          <node concept="2YIFZM" id="2u_o41fLas8" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="2u_o41fLas9" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fL1Cl" resolve="repo" />
            </node>
            <node concept="37vLTw" id="2u_o41fLfxH" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fDocr" resolve="typesDelta1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fK$wT" role="3cqZAp" />
        <node concept="3vwNmj" id="2u_o41fNCFK" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fNCFL" role="3vwVQn">
            <node concept="37vLTw" id="2u_o41fNCVO" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fDocr" resolve="typesDelta1" />
            </node>
            <node concept="2Nt0df" id="2u_o41fNCFN" role="2OqNvi">
              <node concept="37vLTw" id="2u_o41fNCFO" role="38cxEo">
                <ref role="3cqZAo" node="2u_o41fDocb" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2u_o41fNCFP" role="3cqZAp">
          <node concept="2YFouu" id="2u_o41fNCFQ" role="3vwVQn">
            <node concept="3EllGN" id="2u_o41fNCFR" role="3uHU7w">
              <node concept="37vLTw" id="2u_o41fNCFS" role="3ElVtu">
                <ref role="3cqZAo" node="2u_o41fDocb" resolve="testNodeRef" />
              </node>
              <node concept="37vLTw" id="2u_o41fNCWJ" role="3ElQJh">
                <ref role="3cqZAo" node="2u_o41fDocr" resolve="typesDelta1" />
              </node>
            </node>
            <node concept="2c44tf" id="2u_o41fNCFU" role="3uHU7B">
              <node concept="10Oyi0" id="2u_o41fNCFV" role="2c44tc" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fJGLG" role="3cqZAp" />
        <node concept="3clFbF" id="2u_o41fDode" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fDodf" role="3clFbG">
            <node concept="2WthIp" id="2u_o41fDodg" role="2Oq$k0" />
            <node concept="2XshWL" id="2u_o41fDodh" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJtd" resolve="assertSameAsGroundTruth" />
              <node concept="37vLTw" id="2u_o41fGedq" role="2XxRq1">
                <ref role="3cqZAo" node="2u_o41fG4t2" resolve="typecheckRoot" />
              </node>
              <node concept="37vLTw" id="2u_o41fL4iu" role="2XxRq1">
                <ref role="3cqZAo" node="2u_o41fL1Cu" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7612DkLDHKs" role="1SL9yI">
      <property role="TrG5h" value="replaceTypeParam" />
      <node concept="3cqZAl" id="7612DkLDHKt" role="3clF45" />
      <node concept="3clFbS" id="7612DkLDHKu" role="3clF47">
        <node concept="3cpWs8" id="7612DkLDHKv" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLDHKw" role="3cpWs9">
            <property role="TrG5h" value="typecheckRoot" />
            <node concept="3Tqbb2" id="7612DkLDHKx" role="1tU5fm" />
            <node concept="3xONca" id="7612DkLDOHr" role="33vP2m">
              <ref role="3xOPvv" node="7612DkLDcwk" resolve="demoBounds" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7612DkLDHKz" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLDHK$" role="3cpWs9">
            <property role="TrG5h" value="testNode" />
            <node concept="3Tqbb2" id="7612DkLDHK_" role="1tU5fm" />
            <node concept="3xONca" id="7612DkLDSRh" role="33vP2m">
              <ref role="3xOPvv" node="7612DkLDSDr" resolve="fooCall2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLDHKB" role="3cqZAp" />
        <node concept="3cpWs8" id="7612DkLDHKC" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLDHKD" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7612DkLDHKE" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="7612DkLDHKF" role="33vP2m">
              <node concept="2JrnkZ" id="7612DkLDHKG" role="2Oq$k0">
                <node concept="2OqwBi" id="7612DkLDHKH" role="2JrQYb">
                  <node concept="I4A8Y" id="7612DkLDHKI" role="2OqNvi" />
                  <node concept="37vLTw" id="7612DkLDHKJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7612DkLDHKw" resolve="typecheckRoot" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7612DkLDHKK" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7612DkLDHKL" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLDHKM" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="7612DkLDHKN" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="7612DkLDHKO" role="33vP2m">
              <node concept="1pGfFk" id="7612DkLDHKP" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="7612DkLDHKQ" role="37wK5m">
                  <ref role="3cqZAo" node="7612DkLDHKD" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="7612DkLDHKR" role="37wK5m">
                  <node concept="I4A8Y" id="7612DkLDHKS" role="2OqNvi" />
                  <node concept="37vLTw" id="7612DkLDHKT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7612DkLDHKw" resolve="typecheckRoot" />
                  </node>
                </node>
                <node concept="10M0yZ" id="7612DkLDHKU" role="37wK5m">
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLDHKV" role="3cqZAp" />
        <node concept="3cpWs8" id="7612DkLDHKW" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLDHKX" role="3cpWs9">
            <property role="TrG5h" value="testNodeRef" />
            <node concept="3uibUv" id="7612DkLDHKY" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="7612DkLDHKZ" role="33vP2m">
              <node concept="liA8E" id="7612DkLDHL0" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
              <node concept="2JrnkZ" id="7612DkLDHL1" role="2Oq$k0">
                <node concept="37vLTw" id="7612DkLDHL2" role="2JrQYb">
                  <ref role="3cqZAo" node="7612DkLDHK$" resolve="testNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7612DkLDHL3" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLDHL4" role="3cpWs9">
            <property role="TrG5h" value="types0" />
            <node concept="3rvAFt" id="7612DkLDHL5" role="1tU5fm">
              <node concept="3uibUv" id="7612DkLDHL6" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="7612DkLDHL7" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="7612DkLDHL8" role="33vP2m">
              <node concept="liA8E" id="7612DkLDHL9" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="37vLTw" id="7612DkLDHLa" role="37wK5m">
                  <ref role="3cqZAo" node="7612DkLDHKw" resolve="typecheckRoot" />
                </node>
              </node>
              <node concept="37vLTw" id="7612DkLDHLb" role="2Oq$k0">
                <ref role="3cqZAo" node="7612DkLDHKM" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7612DkLDHLc" role="3cqZAp">
          <node concept="2YIFZM" id="7612DkLDHLd" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="7612DkLDHLe" role="37wK5m">
              <ref role="3cqZAo" node="7612DkLDHKD" resolve="repo" />
            </node>
            <node concept="37vLTw" id="7612DkLDHLf" role="37wK5m">
              <ref role="3cqZAo" node="7612DkLDHL4" resolve="types0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhBI2m" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhBI2n" role="3clFbG">
            <node concept="2OqwBi" id="3qSM7lhBI2o" role="2Oq$k0">
              <node concept="37vLTw" id="3qSM7lhBI2p" role="2Oq$k0">
                <ref role="3cqZAo" node="7612DkLDHKM" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3qSM7lhBI2q" role="2OqNvi">
                <ref role="37wK5l" to="hfva:4aLjyB0Y$ev" resolve="getTrace" />
              </node>
            </node>
            <node concept="liA8E" id="3qSM7lhBI2r" role="2OqNvi">
              <ref role="37wK5l" to="hfva:3qSM7lhB99o" resolve="logStats" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLDHLx" role="3cqZAp" />
        <node concept="3vwNmj" id="7612DkLDHLy" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLDHLz" role="3vwVQn">
            <node concept="37vLTw" id="7612DkLDHL$" role="2Oq$k0">
              <ref role="3cqZAo" node="7612DkLDHL4" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="7612DkLDHL_" role="2OqNvi">
              <node concept="37vLTw" id="7612DkLDHLA" role="38cxEo">
                <ref role="3cqZAo" node="7612DkLDHKX" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vlDli" id="7612DkLGLV5" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLH1TT" role="3tpDZB">
            <node concept="2c44tf" id="7612DkLGPwC" role="2Oq$k0">
              <node concept="3uibUv" id="7612DkLGPwD" role="2c44tc">
                <ref role="3uigEE" node="7612DkLGx_q" resolve="DemoBounds.C" />
              </node>
            </node>
            <node concept="2qgKlT" id="7612DkLH5rP" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
          <node concept="2OqwBi" id="7612DkLH5B$" role="3tpDZA">
            <node concept="3EllGN" id="7612DkLGSO_" role="2Oq$k0">
              <node concept="37vLTw" id="7612DkLGSOA" role="3ElVtu">
                <ref role="3cqZAo" node="7612DkLDHKX" resolve="testNodeRef" />
              </node>
              <node concept="37vLTw" id="7612DkLGSOB" role="3ElQJh">
                <ref role="3cqZAo" node="7612DkLDHL4" resolve="types0" />
              </node>
            </node>
            <node concept="2qgKlT" id="7612DkLH9dq" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7612DkLHWyv" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3vwNmj" id="7612DkLFjuM" role="8Wnug">
            <node concept="2YFouu" id="7612DkLFjuN" role="3vwVQn">
              <node concept="3EllGN" id="7612DkLFjuO" role="3uHU7w">
                <node concept="37vLTw" id="7612DkLFjuP" role="3ElVtu">
                  <ref role="3cqZAo" node="7612DkLDHKX" resolve="testNodeRef" />
                </node>
                <node concept="37vLTw" id="7612DkLFjuQ" role="3ElQJh">
                  <ref role="3cqZAo" node="7612DkLDHLZ" resolve="typesDelta1" />
                </node>
              </node>
              <node concept="2c44tf" id="7612DkLFjuR" role="3uHU7B">
                <node concept="3uibUv" id="7612DkLHSQp" role="2c44tc">
                  <ref role="3uigEE" node="7612DkLGx_q" resolve="DemoBounds.C" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLDHLI" role="3cqZAp" />
        <node concept="3clFbF" id="7612DkLDHLJ" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLDHLK" role="3clFbG">
            <node concept="1P9Npp" id="7612DkLDHLM" role="2OqNvi">
              <node concept="2c44tf" id="7612DkLDHLN" role="1P9ThW">
                <node concept="3uibUv" id="7612DkLG$QL" role="2c44tc">
                  <ref role="3uigEE" node="7612DkLGx_m" resolve="DemoBounds.B" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7612DkLG2UR" role="2Oq$k0">
              <node concept="2OqwBi" id="7612DkLFQfC" role="2Oq$k0">
                <node concept="3xONca" id="7612DkLFQ3X" role="2Oq$k0">
                  <ref role="3xOPvv" node="7612DkLFOZX" resolve="newBoxType" />
                </node>
                <node concept="3Tsc0h" id="7612DkLFWVo" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:g91_B6F" resolve="parameter" />
                </node>
              </node>
              <node concept="1uHKPH" id="7612DkLG8i7" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLDHLX" role="3cqZAp" />
        <node concept="3cpWs8" id="7612DkLDHLY" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLDHLZ" role="3cpWs9">
            <property role="TrG5h" value="typesDelta1" />
            <node concept="2OqwBi" id="7612DkLDHM0" role="33vP2m">
              <node concept="37vLTw" id="7612DkLDHM1" role="2Oq$k0">
                <ref role="3cqZAo" node="7612DkLDHKM" resolve="launcher" />
              </node>
              <node concept="liA8E" id="7612DkLDHM2" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="7612DkLDHM3" role="37wK5m">
                  <ref role="3cqZAo" node="7612DkLDHKw" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="7612DkLDHM4" role="1tU5fm">
              <node concept="3uibUv" id="7612DkLDHM5" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="7612DkLDHM6" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7612DkLDHM7" role="3cqZAp">
          <node concept="2YIFZM" id="7612DkLDHM8" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="7612DkLDHM9" role="37wK5m">
              <ref role="3cqZAo" node="7612DkLDHKD" resolve="repo" />
            </node>
            <node concept="37vLTw" id="7612DkLDHMa" role="37wK5m">
              <ref role="3cqZAo" node="7612DkLDHLZ" resolve="typesDelta1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhBEow" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhByYl" role="3clFbG">
            <node concept="2OqwBi" id="3qSM7lhBuJ$" role="2Oq$k0">
              <node concept="37vLTw" id="3qSM7lhBuE7" role="2Oq$k0">
                <ref role="3cqZAo" node="7612DkLDHKM" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3qSM7lhBygC" role="2OqNvi">
                <ref role="37wK5l" to="hfva:4aLjyB0Y$ev" resolve="getTrace" />
              </node>
            </node>
            <node concept="liA8E" id="3qSM7lhBADr" role="2OqNvi">
              <ref role="37wK5l" to="hfva:3qSM7lhB99o" resolve="logStats" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLEkGZ" role="3cqZAp" />
        <node concept="3vwNmj" id="7612DkLDHMc" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLDHMd" role="3vwVQn">
            <node concept="37vLTw" id="7612DkLDHMe" role="2Oq$k0">
              <ref role="3cqZAo" node="7612DkLDHLZ" resolve="typesDelta1" />
            </node>
            <node concept="2Nt0df" id="7612DkLDHMf" role="2OqNvi">
              <node concept="37vLTw" id="7612DkLDHMg" role="38cxEo">
                <ref role="3cqZAo" node="7612DkLDHKX" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vlDli" id="7612DkLHGeg" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLHGeh" role="3tpDZB">
            <node concept="2c44tf" id="7612DkLHGei" role="2Oq$k0">
              <node concept="3uibUv" id="7612DkLHGum" role="2c44tc">
                <ref role="3uigEE" node="7612DkLGx_m" resolve="DemoBounds.B" />
              </node>
            </node>
            <node concept="2qgKlT" id="7612DkLHGek" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
          <node concept="2OqwBi" id="7612DkLHGel" role="3tpDZA">
            <node concept="3EllGN" id="7612DkLHGem" role="2Oq$k0">
              <node concept="37vLTw" id="7612DkLHGen" role="3ElVtu">
                <ref role="3cqZAo" node="7612DkLDHKX" resolve="testNodeRef" />
              </node>
              <node concept="37vLTw" id="7612DkLHGvd" role="3ElQJh">
                <ref role="3cqZAo" node="7612DkLDHLZ" resolve="typesDelta1" />
              </node>
            </node>
            <node concept="2qgKlT" id="7612DkLHGep" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLF5dy" role="3cqZAp" />
        <node concept="3clFbF" id="7612DkLEUwZ" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLEUQh" role="3clFbG">
            <node concept="3xONca" id="7612DkLEUwX" role="2Oq$k0">
              <ref role="3xOPvv" node="7612DkLDOAN" resolve="fooTypePar" />
            </node>
            <node concept="1P9Npp" id="7612DkLEYCG" role="2OqNvi">
              <node concept="2c44tf" id="7612DkLF1PP" role="1P9ThW">
                <node concept="3uibUv" id="7612DkLG$Uq" role="2c44tc">
                  <ref role="3uigEE" node="7612DkLGx_m" resolve="DemoBounds.B" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLF9Ek" role="3cqZAp" />
        <node concept="3cpWs8" id="7612DkLF9lF" role="3cqZAp">
          <node concept="3cpWsn" id="7612DkLF9lG" role="3cpWs9">
            <property role="TrG5h" value="typesDelta2" />
            <node concept="2OqwBi" id="7612DkLF9lH" role="33vP2m">
              <node concept="37vLTw" id="7612DkLF9lI" role="2Oq$k0">
                <ref role="3cqZAo" node="7612DkLDHKM" resolve="launcher" />
              </node>
              <node concept="liA8E" id="7612DkLF9lJ" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="7612DkLF9lK" role="37wK5m">
                  <ref role="3cqZAo" node="7612DkLDHKw" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="7612DkLF9lL" role="1tU5fm">
              <node concept="3uibUv" id="7612DkLF9lM" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="7612DkLF9lN" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7612DkLF9lO" role="3cqZAp">
          <node concept="2YIFZM" id="7612DkLF9lP" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="7612DkLF9lQ" role="37wK5m">
              <ref role="3cqZAo" node="7612DkLDHKD" resolve="repo" />
            </node>
            <node concept="37vLTw" id="7612DkLF9lR" role="37wK5m">
              <ref role="3cqZAo" node="7612DkLF9lG" resolve="typesDelta2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qSM7lhBItP" role="3cqZAp">
          <node concept="2OqwBi" id="3qSM7lhBItQ" role="3clFbG">
            <node concept="2OqwBi" id="3qSM7lhBItR" role="2Oq$k0">
              <node concept="37vLTw" id="3qSM7lhBItS" role="2Oq$k0">
                <ref role="3cqZAo" node="7612DkLDHKM" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3qSM7lhBItT" role="2OqNvi">
                <ref role="37wK5l" to="hfva:4aLjyB0Y$ev" resolve="getTrace" />
              </node>
            </node>
            <node concept="liA8E" id="3qSM7lhBItU" role="2OqNvi">
              <ref role="37wK5l" to="hfva:3qSM7lhB99o" resolve="logStats" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLFjKs" role="3cqZAp" />
        <node concept="3vwNmj" id="7612DkLFjuH" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLFjuI" role="3vwVQn">
            <node concept="37vLTw" id="7612DkLFjuJ" role="2Oq$k0">
              <ref role="3cqZAo" node="7612DkLDHLZ" resolve="typesDelta1" />
            </node>
            <node concept="2Nt0df" id="7612DkLFjuK" role="2OqNvi">
              <node concept="37vLTw" id="7612DkLFjuL" role="38cxEo">
                <ref role="3cqZAo" node="7612DkLDHKX" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vlDli" id="7612DkLHO2q" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLHO2r" role="3tpDZB">
            <node concept="2c44tf" id="7612DkLHO2s" role="2Oq$k0">
              <node concept="3uibUv" id="7612DkLHO2t" role="2c44tc">
                <ref role="3uigEE" node="7612DkLGx_m" resolve="DemoBounds.B" />
              </node>
            </node>
            <node concept="2qgKlT" id="7612DkLHO2u" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
          <node concept="2OqwBi" id="7612DkLHO2v" role="3tpDZA">
            <node concept="3EllGN" id="7612DkLHO2w" role="2Oq$k0">
              <node concept="37vLTw" id="7612DkLHO2x" role="3ElVtu">
                <ref role="3cqZAo" node="7612DkLDHKX" resolve="testNodeRef" />
              </node>
              <node concept="37vLTw" id="7612DkLHO2y" role="3ElQJh">
                <ref role="3cqZAo" node="7612DkLDHLZ" resolve="typesDelta1" />
              </node>
            </node>
            <node concept="2qgKlT" id="7612DkLHO2z" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7612DkLHS84" role="3cqZAp" />
        <node concept="3clFbF" id="7612DkLDHMp" role="3cqZAp">
          <node concept="2OqwBi" id="7612DkLDHMq" role="3clFbG">
            <node concept="2WthIp" id="7612DkLDHMr" role="2Oq$k0" />
            <node concept="2XshWL" id="7612DkLDHMs" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJtd" resolve="assertSameAsGroundTruth" />
              <node concept="37vLTw" id="7612DkLDHMt" role="2XxRq1">
                <ref role="3cqZAo" node="7612DkLDHKw" resolve="typecheckRoot" />
              </node>
              <node concept="37vLTw" id="7612DkLDHMu" role="2XxRq1">
                <ref role="3cqZAo" node="7612DkLDHKM" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2u_o41fMFKt" role="1SL9yI">
      <property role="TrG5h" value="addChildToIncompleteNode" />
      <node concept="3cqZAl" id="2u_o41fMFKu" role="3clF45" />
      <node concept="3clFbS" id="2u_o41fMFKv" role="3clF47">
        <node concept="3cpWs8" id="2u_o41fMFKw" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFKx" role="3cpWs9">
            <property role="TrG5h" value="typecheckRoot" />
            <node concept="3Tqbb2" id="2u_o41fMFKy" role="1tU5fm" />
            <node concept="3xONca" id="2u_o41fN38d" role="33vP2m">
              <ref role="3xOPvv" node="6gZak$B1UDG" resolve="demo1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2u_o41fMFK$" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFK_" role="3cpWs9">
            <property role="TrG5h" value="testNode" />
            <node concept="3Tqbb2" id="2u_o41fMFKA" role="1tU5fm" />
            <node concept="3xONca" id="2u_o41fMFKB" role="33vP2m">
              <ref role="3xOPvv" node="2u_o41fEPHL" resolve="assign_i1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFKC" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fMFKD" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFKE" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2u_o41fMFKF" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="2u_o41fMFKG" role="33vP2m">
              <node concept="2JrnkZ" id="2u_o41fMFKH" role="2Oq$k0">
                <node concept="2OqwBi" id="2u_o41fMFKI" role="2JrQYb">
                  <node concept="I4A8Y" id="2u_o41fMFKJ" role="2OqNvi" />
                  <node concept="37vLTw" id="2u_o41fMFKK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2u_o41fMFKx" resolve="typecheckRoot" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2u_o41fMFKL" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2u_o41fMFKM" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFKN" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="2u_o41fMFKO" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="2u_o41fMFKP" role="33vP2m">
              <node concept="1pGfFk" id="2u_o41fMFKQ" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="2u_o41fMFKR" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fMFKE" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="2u_o41fMFKS" role="37wK5m">
                  <node concept="I4A8Y" id="2u_o41fMFKT" role="2OqNvi" />
                  <node concept="37vLTw" id="2u_o41fMFKU" role="2Oq$k0">
                    <ref role="3cqZAo" node="2u_o41fMFKx" resolve="typecheckRoot" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2u_o41fMFKV" role="37wK5m">
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFKW" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fMFKX" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFKY" role="3cpWs9">
            <property role="TrG5h" value="testNodeRef" />
            <node concept="3uibUv" id="2u_o41fMFKZ" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="2u_o41fMFL0" role="33vP2m">
              <node concept="liA8E" id="2u_o41fMFL1" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
              <node concept="2JrnkZ" id="2u_o41fMFL2" role="2Oq$k0">
                <node concept="37vLTw" id="2u_o41fMFL3" role="2JrQYb">
                  <ref role="3cqZAo" node="2u_o41fMFK_" resolve="testNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2u_o41fMFL4" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFL5" role="3cpWs9">
            <property role="TrG5h" value="types0" />
            <node concept="3rvAFt" id="2u_o41fMFL6" role="1tU5fm">
              <node concept="3uibUv" id="2u_o41fMFL7" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2u_o41fMFL8" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="2u_o41fMFL9" role="33vP2m">
              <node concept="liA8E" id="2u_o41fMFLa" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="37vLTw" id="2u_o41fMFLb" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fMFKx" resolve="typecheckRoot" />
                </node>
              </node>
              <node concept="37vLTw" id="2u_o41fMFLc" role="2Oq$k0">
                <ref role="3cqZAo" node="2u_o41fMFKN" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fMFLd" role="3cqZAp">
          <node concept="2YIFZM" id="2u_o41fMFLe" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="2u_o41fMFLf" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fMFKE" resolve="repo" />
            </node>
            <node concept="37vLTw" id="2u_o41fMFLg" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fMFL5" resolve="types0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFLh" role="3cqZAp" />
        <node concept="3vFxKo" id="2u_o41fMFLi" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFLj" role="3vFALc">
            <node concept="37vLTw" id="2u_o41fMFLk" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFL5" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFLl" role="2OqNvi">
              <node concept="2OqwBi" id="2u_o41fMFLm" role="38cxEo">
                <node concept="liA8E" id="2u_o41fMFLn" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="2u_o41fMFLo" role="2Oq$k0">
                  <node concept="3xONca" id="2u_o41fMFLp" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fENyK" resolve="plusOp1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="2u_o41fMFLq" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFLr" role="3vFALc">
            <node concept="37vLTw" id="2u_o41fMFLs" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFL5" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFLt" role="2OqNvi">
              <node concept="2OqwBi" id="2u_o41fMFLu" role="38cxEo">
                <node concept="liA8E" id="2u_o41fMFLv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="2u_o41fMFLw" role="2Oq$k0">
                  <node concept="3xONca" id="2u_o41fMFLx" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fMimX" resolve="plusOp2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="2u_o41fMFLy" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFLz" role="3vFALc">
            <node concept="37vLTw" id="2u_o41fMFL$" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFL5" resolve="types0" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFL_" role="2OqNvi">
              <node concept="37vLTw" id="2u_o41fMFLA" role="38cxEo">
                <ref role="3cqZAo" node="2u_o41fMFKY" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFLB" role="3cqZAp" />
        <node concept="3clFbF" id="2u_o41fMFLC" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFLD" role="3clFbG">
            <node concept="2OqwBi" id="2u_o41fMFLE" role="2Oq$k0">
              <node concept="3xONca" id="2u_o41fMFLF" role="2Oq$k0">
                <ref role="3xOPvv" node="2u_o41fENyK" resolve="plusOp1" />
              </node>
              <node concept="3TrEf2" id="2u_o41fMFLG" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
              </node>
            </node>
            <node concept="1P9Npp" id="2u_o41fMFLH" role="2OqNvi">
              <node concept="2c44tf" id="2u_o41fMFLI" role="1P9ThW">
                <node concept="37vLTw" id="2u_o41fMFLJ" role="2c44tc">
                  <ref role="3cqZAo" node="6gZak$B1UDx" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fN92Q" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fMFLK" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFLL" role="3cpWs9">
            <property role="TrG5h" value="typesDelta1" />
            <node concept="2OqwBi" id="2u_o41fMFLM" role="33vP2m">
              <node concept="37vLTw" id="2u_o41fMFLN" role="2Oq$k0">
                <ref role="3cqZAo" node="2u_o41fMFKN" resolve="launcher" />
              </node>
              <node concept="liA8E" id="2u_o41fMFLO" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="2u_o41fMFLP" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fMFKx" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="2u_o41fMFLQ" role="1tU5fm">
              <node concept="3uibUv" id="2u_o41fMFLR" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2u_o41fMFLS" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fMFLT" role="3cqZAp">
          <node concept="2YIFZM" id="2u_o41fMFLU" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="2u_o41fMFLV" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fMFKE" resolve="repo" />
            </node>
            <node concept="37vLTw" id="2u_o41fMFLW" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fMFLL" resolve="typesDelta1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFLX" role="3cqZAp" />
        <node concept="3vwNmj" id="2u_o41fMFLY" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFLZ" role="3vwVQn">
            <node concept="37vLTw" id="2u_o41fMFM0" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFLL" resolve="typesDelta1" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFM1" role="2OqNvi">
              <node concept="2OqwBi" id="2u_o41fMFM2" role="38cxEo">
                <node concept="liA8E" id="2u_o41fMFM3" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="2u_o41fMFM4" role="2Oq$k0">
                  <node concept="3xONca" id="2u_o41fMFM5" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fENyK" resolve="plusOp1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="2u_o41fMFM6" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFM7" role="3vFALc">
            <node concept="37vLTw" id="2u_o41fMFM8" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFLL" resolve="typesDelta1" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFM9" role="2OqNvi">
              <node concept="2OqwBi" id="2u_o41fMFMa" role="38cxEo">
                <node concept="liA8E" id="2u_o41fMFMb" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="2u_o41fMFMc" role="2Oq$k0">
                  <node concept="3xONca" id="2u_o41fMFMd" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fMimX" resolve="plusOp2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vFxKo" id="2u_o41fMFMe" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFMf" role="3vFALc">
            <node concept="37vLTw" id="2u_o41fMFMg" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFLL" resolve="typesDelta1" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFMh" role="2OqNvi">
              <node concept="37vLTw" id="2u_o41fMFMi" role="38cxEo">
                <ref role="3cqZAo" node="2u_o41fMFKY" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFMj" role="3cqZAp" />
        <node concept="3clFbF" id="2u_o41fMFMk" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFMl" role="3clFbG">
            <node concept="2OqwBi" id="2u_o41fMFMm" role="2Oq$k0">
              <node concept="3xONca" id="2u_o41fMFMn" role="2Oq$k0">
                <ref role="3xOPvv" node="2u_o41fMimX" resolve="plusOp2" />
              </node>
              <node concept="3TrEf2" id="2u_o41fMFMo" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fJuHU4r" resolve="rightExpression" />
              </node>
            </node>
            <node concept="1P9Npp" id="2u_o41fMFMp" role="2OqNvi">
              <node concept="2c44tf" id="2u_o41fMFMq" role="1P9ThW">
                <node concept="3cmrfG" id="2u_o41fMFMr" role="2c44tc">
                  <property role="3cmrfH" value="43" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fNbNc" role="3cqZAp" />
        <node concept="3cpWs8" id="2u_o41fMFMs" role="3cqZAp">
          <node concept="3cpWsn" id="2u_o41fMFMt" role="3cpWs9">
            <property role="TrG5h" value="typesDelta2" />
            <node concept="2OqwBi" id="2u_o41fMFMu" role="33vP2m">
              <node concept="37vLTw" id="2u_o41fMFMv" role="2Oq$k0">
                <ref role="3cqZAo" node="2u_o41fMFKN" resolve="launcher" />
              </node>
              <node concept="liA8E" id="2u_o41fMFMw" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="37vLTw" id="2u_o41fMFMx" role="37wK5m">
                  <ref role="3cqZAo" node="2u_o41fMFKx" resolve="typecheckRoot" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="2u_o41fMFMy" role="1tU5fm">
              <node concept="3uibUv" id="2u_o41fMFMz" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="2u_o41fMFM$" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u_o41fMFM_" role="3cqZAp">
          <node concept="2YIFZM" id="2u_o41fMFMA" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="37vLTw" id="2u_o41fMFMB" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fMFKE" resolve="repo" />
            </node>
            <node concept="37vLTw" id="2u_o41fMFMC" role="37wK5m">
              <ref role="3cqZAo" node="2u_o41fMFMt" resolve="typesDelta2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFMD" role="3cqZAp" />
        <node concept="3vwNmj" id="2u_o41fMFME" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFMF" role="3vwVQn">
            <node concept="37vLTw" id="2u_o41fMFMG" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFMt" resolve="typesDelta2" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFMH" role="2OqNvi">
              <node concept="2OqwBi" id="2u_o41fMFMI" role="38cxEo">
                <node concept="liA8E" id="2u_o41fMFMJ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
                <node concept="2JrnkZ" id="2u_o41fMFMK" role="2Oq$k0">
                  <node concept="3xONca" id="2u_o41fMFML" role="2JrQYb">
                    <ref role="3xOPvv" node="2u_o41fMimX" resolve="plusOp2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2u_o41fMFMM" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFMN" role="3vwVQn">
            <node concept="37vLTw" id="2u_o41fMFMO" role="2Oq$k0">
              <ref role="3cqZAo" node="2u_o41fMFMt" resolve="typesDelta2" />
            </node>
            <node concept="2Nt0df" id="2u_o41fMFMP" role="2OqNvi">
              <node concept="37vLTw" id="2u_o41fMFMQ" role="38cxEo">
                <ref role="3cqZAo" node="2u_o41fMFKY" resolve="testNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2u_o41fMFMR" role="3cqZAp">
          <node concept="2YFouu" id="2u_o41fMFMS" role="3vwVQn">
            <node concept="3EllGN" id="2u_o41fMFMT" role="3uHU7w">
              <node concept="37vLTw" id="2u_o41fMFMU" role="3ElVtu">
                <ref role="3cqZAo" node="2u_o41fMFKY" resolve="testNodeRef" />
              </node>
              <node concept="37vLTw" id="2u_o41fMFMV" role="3ElQJh">
                <ref role="3cqZAo" node="2u_o41fMFMt" resolve="typesDelta2" />
              </node>
            </node>
            <node concept="2c44tf" id="2u_o41fMFMW" role="3uHU7B">
              <node concept="10Oyi0" id="2u_o41fMFMX" role="2c44tc" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2u_o41fMFMY" role="3cqZAp" />
        <node concept="3clFbF" id="2u_o41fMFMZ" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fMFN0" role="3clFbG">
            <node concept="2WthIp" id="2u_o41fMFN1" role="2Oq$k0" />
            <node concept="2XshWL" id="2u_o41fMFN2" role="2OqNvi">
              <ref role="2WH_rO" node="2FNFm8neJtd" resolve="assertSameAsGroundTruth" />
              <node concept="37vLTw" id="2u_o41fMFN3" role="2XxRq1">
                <ref role="3cqZAo" node="2u_o41fMFKx" resolve="typecheckRoot" />
              </node>
              <node concept="37vLTw" id="2u_o41fMFN4" role="2XxRq1">
                <ref role="3cqZAo" node="2u_o41fMFKN" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0EjCn" id="2u_o41fGD3w" role="0EEgL">
      <node concept="3clFbS" id="2u_o41fGD3x" role="2VODD2">
        <node concept="3clFbF" id="YbzkzLckMI" role="3cqZAp">
          <node concept="2OqwBi" id="YbzkzLcpjZ" role="3clFbG">
            <node concept="10M0yZ" id="YbzkzLcocA" role="2Oq$k0">
              <ref role="3cqZAo" to="zx3l:~ReactorLifecycle.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="zx3l:~ReactorLifecycle" resolve="ReactorLifecycle" />
            </node>
            <node concept="liA8E" id="YbzkzLcu3A" role="2OqNvi">
              <ref role="37wK5l" to="zx3l:~ReactorLifecycle$Companion.init()" resolve="init" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="0EjCo" id="2u_o41fGGYg" role="0EEgW">
      <node concept="3clFbS" id="2u_o41fGGYh" role="2VODD2">
        <node concept="3clFbF" id="2u_o41fGHHt" role="3cqZAp">
          <node concept="2OqwBi" id="2u_o41fGHHu" role="3clFbG">
            <node concept="10M0yZ" id="2u_o41fGHHv" role="2Oq$k0">
              <ref role="1PxDUh" to="zx3l:~ReactorLifecycle" resolve="ReactorLifecycle" />
              <ref role="3cqZAo" to="zx3l:~ReactorLifecycle.Companion" resolve="Companion" />
            </node>
            <node concept="liA8E" id="2u_o41fGHOA" role="2OqNvi">
              <ref role="37wK5l" to="zx3l:~ReactorLifecycle$Companion.deinit()" resolve="deinit" />
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

