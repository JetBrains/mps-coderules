<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c9607a7c-25a7-4d1b-994d-f264b3e77eff(jetbrains.mps.coderules.incrementality@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="3" />
    <use id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="3a1f0f04-b5e0-43be-884e-b856bfdeca21" name="jetbrains.mps.typechecking.testlang" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="-1" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="qox2" ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.coderules.typechecking.plugin)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="1g4i" ref="r:102178da-67ba-49f6-ba73-eb29fa352fe7(jetbrains.mps.coderules.typechecking)" />
    <import index="u46i" ref="r:c2760840-3210-4ad4-9e64-a2dfd53620e1(jetbrains.mps.lang.typechecking.aspect)" />
    <import index="sppd" ref="r:0e60ac07-77c3-4d5c-b40d-73e8fd128592(jetbrains.mps.coderules.typechecking.testlang.sandbox.test)" />
    <import index="qulx" ref="r:ec0979fb-ae37-4823-9eaa-8550d9f5c6fd(jetbrains.mps.typechecking.testlang.structure)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="mqqo" ref="r:82cec6f7-ddec-440c-961c-1c598267be42(jetbrains.mps.logic.test.unification)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="z9ve" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core.internal(jetbrains.mps.logic.reactor/)" />
    <import index="9x2e" ref="r:0730b0d1-7e2f-4982-aac3-8069c5060a9c(jetbrains.mps.lang.typesystem2.reporting)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="xnrr" ref="r:4fd33103-fc30-42f4-a8cf-d1e858f21988(jetbrains.mps.lang.coderules.program.analysis)" />
    <import index="ksgm" ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)" />
    <import index="jknv" ref="r:cbfbe9a2-941f-4667-8e48-3bf39c5dad6d(jetbrains.mps.coderules.typechecking@tests)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="hfva" ref="r:20f81ae9-fed0-48fa-893d-6c6b658e3dee(jetbrains.mps.coderules.typechecking.test.util)" />
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
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="6339244025081158986" name="needsNoWriteAction" index="3OwPAg" />
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
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a1f0f04-b5e0-43be-884e-b856bfdeca21" name="jetbrains.mps.typechecking.testlang">
      <concept id="8456919074565735802" name="jetbrains.mps.typechecking.testlang.structure.Root" flags="ng" index="0U$pH">
        <child id="8456919074565735822" name="stmt" index="0U$qp" />
      </concept>
      <concept id="8477760168144047168" name="jetbrains.mps.typechecking.testlang.structure.Type" flags="ng" index="34yo6O">
        <property id="8477760168144047169" name="name" index="34yo6P" />
        <property id="8477760168145258292" name="val" index="34TwF0" />
      </concept>
      <concept id="8477760168143925028" name="jetbrains.mps.typechecking.testlang.structure.VarDeclStmt" flags="ng" index="34yUbg">
        <child id="8477760168143925044" name="decl" index="34yUb0" />
        <child id="8477760168143925046" name="init" index="34yUb2" />
      </concept>
      <concept id="8477760168143925029" name="jetbrains.mps.typechecking.testlang.structure.VarDecl" flags="ng" index="34yUbh" />
      <concept id="8477760168144492408" name="jetbrains.mps.typechecking.testlang.structure.StrConst" flags="ng" index="34$_Ec">
        <property id="8477760168144492409" name="val" index="34$_Ed" />
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
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
        <child id="7256306938026143676" name="child" index="2aWVGa" />
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
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.Splice" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="6694277639409954681" name="jetbrains.mps.logic.structure.ListRole" flags="ng" index="38e3lM">
        <child id="6694277639409954746" name="list" index="38e3mL" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.DataNodeExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.TermNode" flags="ng" index="1oi5UN">
        <child id="7571593955706284441" name="role" index="1ojpOf" />
      </concept>
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm">
        <child id="7571593955706137672" name="contents" index="1oi5zu" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.Value" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
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
    <language id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types">
      <concept id="7345257067587627589" name="jetbrains.mps.lang.smodel.types.structure.SNodeTypeOperation" flags="ng" index="2W$R8B" />
    </language>
  </registry>
  <node concept="2XOHcx" id="tyIfzBA53c">
    <property role="2XOHcw" value="${coderules_home}" />
  </node>
  <node concept="1lH9Xt" id="tyIfzBA5cK">
    <property role="TrG5h" value="Analyses" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="tyIfzBAafK" role="1SL9yI">
      <property role="TrG5h" value="principalConstraintChecker" />
      <node concept="3cqZAl" id="tyIfzBAafL" role="3clF45" />
      <node concept="3clFbS" id="tyIfzBAafP" role="3clF47">
        <node concept="1QHqEK" id="tyIfzBAcmt" role="3cqZAp">
          <node concept="1QHqEC" id="tyIfzBAcmu" role="1QHqEI">
            <node concept="3clFbS" id="tyIfzBAcmv" role="1bW5cS">
              <node concept="3cpWs8" id="tyIfzBAcmw" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBAcmx" role="3cpWs9">
                  <property role="TrG5h" value="fooRef" />
                  <node concept="2sp9CU" id="tyIfzBAcAI" role="1tU5fm" />
                  <node concept="2tJFMh" id="tyIfzBAcmA" role="33vP2m">
                    <node concept="ZC_QK" id="tyIfzBAcmB" role="2tJFKM">
                      <ref role="2aWVGs" to="sppd:7lt0LtPHRY$" resolve="Demo" />
                      <node concept="ZC_QK" id="tyIfzBAcmC" role="2aWVGa">
                        <ref role="2aWVGs" to="sppd:7mB3viLblk7" resolve="foo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="tyIfzBAjLv" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBAjLw" role="3cpWs9">
                  <property role="TrG5h" value="withSNode" />
                  <node concept="3uibUv" id="tyIfzBAjLx" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                  <node concept="2YIFZM" id="tyIfzBAMsy" role="33vP2m">
                    <ref role="1Pybhc" node="tyIfzBAB26" resolve="ProgAnalysisTestHelper" />
                    <ref role="37wK5l" node="tyIfzBAS0Q" resolve="getTypeOfConstraint" />
                    <node concept="37vLTw" id="tyIfzBAXo4" role="37wK5m">
                      <ref role="3cqZAo" node="tyIfzBAcmx" resolve="fooRef" />
                    </node>
                    <node concept="Xl_RD" id="tyIfzBAYpr" role="37wK5m">
                      <property role="Xl_RC" value="T" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="tyIfzBBnjA" role="3cqZAp" />
              <node concept="3cpWs8" id="tyIfzBBnAZ" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBBnB0" role="3cpWs9">
                  <property role="TrG5h" value="fooRefTerm" />
                  <node concept="3uibUv" id="tyIfzBBnB1" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                  <node concept="2YIFZM" id="tyIfzBBmWE" role="33vP2m">
                    <ref role="37wK5l" node="tyIfzBAM1K" resolve="getNodeRefTerm" />
                    <ref role="1Pybhc" node="tyIfzBAB26" resolve="ProgAnalysisTestHelper" />
                    <node concept="37vLTw" id="tyIfzBBmZo" role="37wK5m">
                      <ref role="3cqZAo" node="tyIfzBAcmx" resolve="fooRef" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="tyIfzBBqPp" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBBqPq" role="3cpWs9">
                  <property role="TrG5h" value="x" />
                  <node concept="3uibUv" id="tyIfzBBqPr" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                  <node concept="1oi1Uc" id="1OShD0IfW$N" role="33vP2m">
                    <node concept="1oi5UN" id="1OShD0IfW$O" role="1oi0x0">
                      <node concept="38e3lM" id="428_4iYbyL0" role="1ojpOf">
                        <property role="TrG5h" value="child" />
                        <node concept="KCUsM" id="1OShD0IfW$Q" role="38e3mL">
                          <node concept="1oi5UN" id="677NV56y2bs" role="KCVpo">
                            <node concept="22Ky0T" id="677NV56y2bt" role="lGtFl">
                              <node concept="37vLTw" id="tyIfzBBr$F" role="22Ky0K">
                                <ref role="3cqZAo" node="tyIfzBBnB0" resolve="fooRefTerm" />
                              </node>
                            </node>
                          </node>
                          <node concept="1oi5UN" id="1OShD0IfW$R" role="KCVpo">
                            <node concept="1oi5Wm" id="1OShD0IfW$S" role="1ojpOf">
                              <property role="TrG5h" value="name" />
                              <node concept="1oi5XN" id="1OShD0IfW$T" role="1oi5zu">
                                <property role="1oi5yK" value="bazz" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="1OShD0IfW$X" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="1OShD0IfW$Y" role="1oi5zu">
                          <property role="1oi5yK" value="foo" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="tyIfzBBmsa" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBBmsb" role="3cpWs9">
                  <property role="TrG5h" value="withSNodeDeeply" />
                  <node concept="3uibUv" id="tyIfzBBmsc" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                  <node concept="2YIFZM" id="tyIfzBB_a8" role="33vP2m">
                    <ref role="37wK5l" node="tyIfzBBsSR" resolve="ctrWithArgs" />
                    <ref role="1Pybhc" node="tyIfzBAB26" resolve="ProgAnalysisTestHelper" />
                    <node concept="Xl_RD" id="tyIfzBB_vr" role="37wK5m">
                      <property role="Xl_RC" value="foo" />
                    </node>
                    <node concept="37vLTw" id="tyIfzBBA4m" role="37wK5m">
                      <ref role="3cqZAo" node="tyIfzBBqPq" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="tyIfzBCYtt" role="3cqZAp" />
              <node concept="3cpWs8" id="3HJTsBn443f" role="3cqZAp">
                <node concept="3cpWsn" id="3HJTsBn443g" role="3cpWs9">
                  <property role="TrG5h" value="a" />
                  <node concept="3uibUv" id="3HJTsBn443h" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                  <node concept="1oi1Uc" id="3HJTsBn443i" role="33vP2m">
                    <node concept="1oi5UN" id="3HJTsBn443j" role="1oi0x0">
                      <node concept="1oi5ST" id="3HJTsBn443k" role="1ojpOf">
                        <property role="TrG5h" value="child" />
                        <node concept="1oi5UN" id="3HJTsBn443l" role="1oi5TL">
                          <node concept="1oi5Wm" id="3HJTsBn44Vy" role="1ojpOf">
                            <property role="TrG5h" value="bar" />
                            <node concept="1oi5XN" id="3HJTsBn45fv" role="1oi5zu">
                              <property role="1oi5yK" value="www" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3HJTsBn443o" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="3HJTsBn443p" role="1oi5zu">
                          <property role="1oi5yK" value="foo" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3HJTsBn443v" role="3cqZAp">
                <node concept="3cpWsn" id="3HJTsBn443w" role="3cpWs9">
                  <property role="TrG5h" value="b" />
                  <node concept="3uibUv" id="3HJTsBn443x" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                  <node concept="1oi1Uc" id="3HJTsBn443y" role="33vP2m">
                    <node concept="1oi5UN" id="3HJTsBn443z" role="1oi0x0">
                      <node concept="1oi5ST" id="3HJTsBn443$" role="1ojpOf">
                        <property role="TrG5h" value="child" />
                        <node concept="1oi5UN" id="3HJTsBn443_" role="1oi5TL">
                          <node concept="1oi5Wm" id="3HJTsBn4507" role="1ojpOf">
                            <property role="TrG5h" value="bar" />
                            <node concept="1oi5XN" id="3HJTsBn450b" role="1oi5zu">
                              <property role="1oi5yK" value="xyz" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3HJTsBn443C" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="3HJTsBn443D" role="1oi5zu">
                          <property role="1oi5yK" value="foo" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="tyIfzBCZ6D" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBCZ6E" role="3cpWs9">
                  <property role="TrG5h" value="withoutSNode" />
                  <node concept="3uibUv" id="tyIfzBCZ6F" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                  <node concept="2YIFZM" id="tyIfzBCZ6G" role="33vP2m">
                    <ref role="37wK5l" node="tyIfzBBsSR" resolve="ctrWithArgs" />
                    <ref role="1Pybhc" node="tyIfzBAB26" resolve="ProgAnalysisTestHelper" />
                    <node concept="Xl_RD" id="tyIfzBCZ6H" role="37wK5m">
                      <property role="Xl_RC" value="foo" />
                    </node>
                    <node concept="37vLTw" id="tyIfzBCZX1" role="37wK5m">
                      <ref role="3cqZAo" node="3HJTsBn443g" resolve="a" />
                    </node>
                    <node concept="37vLTw" id="tyIfzBD0iP" role="37wK5m">
                      <ref role="3cqZAo" node="3HJTsBn443w" resolve="b" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6gZak$AVCzz" role="3cqZAp" />
              <node concept="3cpWs8" id="6gZak$AVF$e" role="3cqZAp">
                <node concept="3cpWsn" id="6gZak$AVF$f" role="3cpWs9">
                  <property role="TrG5h" value="logicalSNode" />
                  <node concept="3uibUv" id="6gZak$AVF$g" role="1tU5fm">
                    <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                    <node concept="3uibUv" id="6gZak$AVJo_" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6gZak$AVH1r" role="33vP2m">
                    <ref role="37wK5l" to="oy3s:7nPD14NOCTS" resolve="metaLogical" />
                    <ref role="1Pybhc" to="oy3s:7nPD14NOCSa" resolve="MetaLogicalFactory" />
                    <node concept="Xl_RD" id="6gZak$AVH8D" role="37wK5m">
                      <property role="Xl_RC" value="Node" />
                    </node>
                    <node concept="3VsKOn" id="6gZak$AVIlk" role="37wK5m">
                      <ref role="3VsUkX" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6gZak$AVCqR" role="3cqZAp">
                <node concept="3cpWsn" id="6gZak$AVCqS" role="3cpWs9">
                  <property role="TrG5h" value="withPseudoSNode" />
                  <node concept="3uibUv" id="6gZak$AVCqT" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                  <node concept="2YIFZM" id="6gZak$AVCqU" role="33vP2m">
                    <ref role="1Pybhc" node="tyIfzBAB26" resolve="ProgAnalysisTestHelper" />
                    <ref role="37wK5l" node="tyIfzBBsSR" resolve="ctrWithArgs" />
                    <node concept="Xl_RD" id="6gZak$AVCqV" role="37wK5m">
                      <property role="Xl_RC" value="recover" />
                    </node>
                    <node concept="37vLTw" id="6gZak$AVLZv" role="37wK5m">
                      <ref role="3cqZAo" node="6gZak$AVF$f" resolve="logicalSNode" />
                    </node>
                    <node concept="37vLTw" id="6gZak$AVMPg" role="37wK5m">
                      <ref role="3cqZAo" node="3HJTsBn443w" resolve="b" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6gZak$AYVXJ" role="3cqZAp" />
              <node concept="3cpWs8" id="6gZak$AZ68N" role="3cqZAp">
                <node concept="3cpWsn" id="6gZak$AZ68O" role="3cpWs9">
                  <property role="TrG5h" value="sym" />
                  <node concept="3uibUv" id="6gZak$AZ68P" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                  </node>
                  <node concept="2YIFZM" id="6gZak$AZ8T3" role="33vP2m">
                    <ref role="37wK5l" to="av0y:~ConstraintSymbol.symbol(java.lang.String,int)" resolve="symbol" />
                    <ref role="1Pybhc" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                    <node concept="Xl_RD" id="6gZak$AZ9ej" role="37wK5m">
                      <property role="Xl_RC" value="pat" />
                    </node>
                    <node concept="3cmrfG" id="6gZak$AZdnV" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6gZak$AZj6B" role="3cqZAp">
                <node concept="3cpWsn" id="6gZak$AZj6C" role="3cpWs9">
                  <property role="TrG5h" value="pat" />
                  <node concept="3uibUv" id="6gZak$AZj6D" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                  <node concept="37vLTw" id="6gZak$AZkFU" role="33vP2m">
                    <ref role="3cqZAo" node="tyIfzBBqPq" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6gZak$AZqjK" role="3cqZAp">
                <node concept="3cpWsn" id="6gZak$AZqjL" role="3cpWs9">
                  <property role="TrG5h" value="patternLogical" />
                  <node concept="3uibUv" id="6gZak$AZqjM" role="1tU5fm">
                    <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                    <node concept="3uibUv" id="6gZak$AZtop" role="11_B2D">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6gZak$AZqjO" role="33vP2m">
                    <ref role="1Pybhc" to="oy3s:7nPD14NOCSa" resolve="MetaLogicalFactory" />
                    <ref role="37wK5l" to="oy3s:7nPD14NOCTS" resolve="metaLogical" />
                    <node concept="Xl_RD" id="6gZak$AZqjP" role="37wK5m">
                      <property role="Xl_RC" value="Type" />
                    </node>
                    <node concept="3VsKOn" id="6gZak$AZqjQ" role="37wK5m">
                      <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6gZak$AYXue" role="3cqZAp">
                <node concept="3cpWsn" id="6gZak$AYXuf" role="3cpWs9">
                  <property role="TrG5h" value="withSNodeInPattern" />
                  <node concept="3uibUv" id="6gZak$AYXug" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                  <node concept="2OqwBi" id="6gZak$AZ0n5" role="33vP2m">
                    <node concept="2OqwBi" id="6gZak$AZmbT" role="2Oq$k0">
                      <node concept="2OqwBi" id="6gZak$AZ0n6" role="2Oq$k0">
                        <node concept="2ShNRf" id="6gZak$AZ0n7" role="2Oq$k0">
                          <node concept="1pGfFk" id="6gZak$AZ0n8" role="2ShVmc">
                            <ref role="37wK5l" to="i348:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                            <node concept="37vLTw" id="6gZak$AZeh0" role="37wK5m">
                              <ref role="3cqZAo" node="6gZak$AZ68O" resolve="sym" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6gZak$AZ0nf" role="2OqNvi">
                          <ref role="37wK5l" to="i348:4sSe4$oM2sT" resolve="withArguments" />
                          <node concept="37vLTw" id="6gZak$AZlvb" role="37wK5m">
                            <ref role="3cqZAo" node="3HJTsBn443w" resolve="b" />
                          </node>
                          <node concept="37vLTw" id="6gZak$AZlRs" role="37wK5m">
                            <ref role="3cqZAo" node="6gZak$AZj6C" resolve="pat" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6gZak$AZnpN" role="2OqNvi">
                        <ref role="37wK5l" to="i348:4sSe4$oM05h" resolve="withPatternLogicals" />
                        <node concept="10Nm6u" id="6gZak$AZo10" role="37wK5m" />
                        <node concept="37vLTw" id="6gZak$AZuEt" role="37wK5m">
                          <ref role="3cqZAo" node="6gZak$AZqjL" resolve="patternLogical" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6gZak$AZ0nh" role="2OqNvi">
                      <ref role="37wK5l" to="i348:4sSe4$oM2zI" resolve="toConstraint" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6gZak$AZvrf" role="3cqZAp" />
              <node concept="3vwNmj" id="tyIfzBJ4SG" role="3cqZAp">
                <node concept="2YIFZM" id="tyIfzBBiUE" role="3vwVQn">
                  <ref role="37wK5l" to="xnrr:1H_6AUT0Wq9" resolve="check" />
                  <ref role="1Pybhc" to="xnrr:1H_6AUSGVEF" resolve="SimpleProgramAnalysis.SNodeAccessChecker" />
                  <node concept="37vLTw" id="tyIfzBBiX$" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBAjLw" resolve="withSNode" />
                  </node>
                </node>
              </node>
              <node concept="3vwNmj" id="tyIfzBJ565" role="3cqZAp">
                <node concept="2YIFZM" id="tyIfzBJ566" role="3vwVQn">
                  <ref role="37wK5l" to="xnrr:1H_6AUT0Wq9" resolve="check" />
                  <ref role="1Pybhc" to="xnrr:1H_6AUSGVEF" resolve="SimpleProgramAnalysis.SNodeAccessChecker" />
                  <node concept="37vLTw" id="tyIfzBJ5ya" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBBmsb" resolve="withSNodeDeeply" />
                  </node>
                </node>
              </node>
              <node concept="3vFxKo" id="tyIfzBJah3" role="3cqZAp">
                <node concept="2YIFZM" id="tyIfzBJ5d3" role="3vFALc">
                  <ref role="37wK5l" to="xnrr:1H_6AUT0Wq9" resolve="check" />
                  <ref role="1Pybhc" to="xnrr:1H_6AUSGVEF" resolve="SimpleProgramAnalysis.SNodeAccessChecker" />
                  <node concept="37vLTw" id="tyIfzBJ5tf" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBCZ6E" resolve="withoutSNode" />
                  </node>
                </node>
              </node>
              <node concept="3vFxKo" id="6gZak$AVW7f" role="3cqZAp">
                <node concept="2YIFZM" id="6gZak$AVW7g" role="3vFALc">
                  <ref role="37wK5l" to="xnrr:1H_6AUT0Wq9" resolve="check" />
                  <ref role="1Pybhc" to="xnrr:1H_6AUSGVEF" resolve="SimpleProgramAnalysis.SNodeAccessChecker" />
                  <node concept="37vLTw" id="6gZak$AVWfF" role="37wK5m">
                    <ref role="3cqZAo" node="6gZak$AVCqS" resolve="withPseudoSNode" />
                  </node>
                </node>
              </node>
              <node concept="3vFxKo" id="6gZak$AZvAd" role="3cqZAp">
                <node concept="2YIFZM" id="6gZak$AZvAe" role="3vFALc">
                  <ref role="1Pybhc" to="xnrr:1H_6AUSGVEF" resolve="SimpleProgramAnalysis.SNodeAccessChecker" />
                  <ref role="37wK5l" to="xnrr:1H_6AUT0Wq9" resolve="check" />
                  <node concept="37vLTw" id="6gZak$AZw5d" role="37wK5m">
                    <ref role="3cqZAo" node="6gZak$AYXuf" resolve="withSNodeInPattern" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="tyIfzBAcmU" role="ukAjM">
            <node concept="1jxXqW" id="tyIfzBAcmV" role="2Oq$k0" />
            <node concept="liA8E" id="tyIfzBAcmW" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="tyIfzBA5cL" role="1SL9yI">
      <property role="TrG5h" value="basicPrincipalConstraintsAnalysis" />
      <node concept="3uibUv" id="tyIfzBA5cM" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3cqZAl" id="tyIfzBA5cN" role="3clF45" />
      <node concept="3clFbS" id="tyIfzBA5cO" role="3clF47">
        <node concept="3clFbH" id="tyIfzBPkAU" role="3cqZAp" />
        <node concept="3cpWs8" id="tyIfzBIxtH" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBIxtI" role="3cpWs9">
            <property role="TrG5h" value="info" />
            <node concept="3uibUv" id="tyIfzBIxtJ" role="1tU5fm">
              <ref role="3uigEE" to="xnrr:1H_6AUSU96G" resolve="ProgramGenInfoBuilder.ProgramGenInfo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4VntlICnIHB" role="3cqZAp">
          <node concept="3cpWsn" id="4VntlICnIHC" role="3cpWs9">
            <property role="TrG5h" value="spec" />
            <node concept="3uibUv" id="4VntlICnIHD" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="tyIfzBIkFO" role="3cqZAp">
          <node concept="1QHqEC" id="tyIfzBIkFP" role="1QHqEI">
            <node concept="3clFbS" id="tyIfzBIkFQ" role="1bW5cS">
              <node concept="3cpWs8" id="tyIfzC3L69" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzC3L6a" role="3cpWs9">
                  <property role="TrG5h" value="repo" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="tyIfzC3L6b" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="2OqwBi" id="tyIfzC3L6c" role="33vP2m">
                    <node concept="1jxXqW" id="tyIfzC3L6d" role="2Oq$k0" />
                    <node concept="liA8E" id="tyIfzC3L6e" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="tyIfzC3L6f" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzC3L6g" role="3cpWs9">
                  <property role="TrG5h" value="demo" />
                  <node concept="3Tqbb2" id="tyIfzC3L6h" role="1tU5fm">
                    <ref role="ehGHo" to="qulx:7lt0LtPHOlU" resolve="Root" />
                  </node>
                  <node concept="2OqwBi" id="tyIfzC3L6i" role="33vP2m">
                    <node concept="2tJFMh" id="tyIfzC3L6j" role="2Oq$k0">
                      <node concept="ZC_QK" id="tyIfzC3L6k" role="2tJFKM">
                        <ref role="2aWVGs" to="sppd:7lt0LtPHRY$" resolve="Demo" />
                      </node>
                    </node>
                    <node concept="Vyspw" id="tyIfzC3L6l" role="2OqNvi">
                      <node concept="37vLTw" id="tyIfzC3L6m" role="Vysub">
                        <ref role="3cqZAo" node="tyIfzC3L6a" resolve="repo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="tyIfzC3OTB" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzC3OTC" role="3cpWs9">
                  <property role="TrG5h" value="launcher" />
                  <node concept="3uibUv" id="tyIfzC3OTD" role="1tU5fm">
                    <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
                  </node>
                  <node concept="2ShNRf" id="tyIfzC3Sr4" role="33vP2m">
                    <node concept="1pGfFk" id="tyIfzC3Sr3" role="2ShVmc">
                      <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                      <node concept="37vLTw" id="tyIfzC3W$o" role="37wK5m">
                        <ref role="3cqZAo" node="tyIfzC3L6a" resolve="repo" />
                      </node>
                      <node concept="2OqwBi" id="tyIfzC40lo" role="37wK5m">
                        <node concept="37vLTw" id="tyIfzC405c" role="2Oq$k0">
                          <ref role="3cqZAo" node="tyIfzC3L6g" resolve="demo" />
                        </node>
                        <node concept="I4A8Y" id="tyIfzC40_M" role="2OqNvi" />
                      </node>
                      <node concept="10M0yZ" id="tyIfzC5MVS" role="37wK5m">
                        <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                        <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="tyIfzC3Hzk" role="3cqZAp" />
              <node concept="3cpWs8" id="tyIfzC4r6g" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzC4r6h" role="3cpWs9">
                  <property role="TrG5h" value="res" />
                  <node concept="3uibUv" id="tyIfzC4r6i" role="1tU5fm">
                    <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
                  </node>
                  <node concept="2OqwBi" id="tyIfzC4uHe" role="33vP2m">
                    <node concept="37vLTw" id="tyIfzC4uuB" role="2Oq$k0">
                      <ref role="3cqZAo" node="tyIfzC3OTC" resolve="launcher" />
                    </node>
                    <node concept="liA8E" id="tyIfzC4y1T" role="2OqNvi">
                      <ref role="37wK5l" to="hfva:tyIfzC3x3f" resolve="produceProgram" />
                      <node concept="37vLTw" id="tyIfzC4Axv" role="37wK5m">
                        <ref role="3cqZAo" node="tyIfzC3L6g" resolve="demo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3vwNmj" id="tyIfzBIV7r" role="3cqZAp">
                <node concept="2OqwBi" id="tyIfzBIVFd" role="3vwVQn">
                  <node concept="37vLTw" id="tyIfzC4AF8" role="2Oq$k0">
                    <ref role="3cqZAo" node="tyIfzC4r6h" resolve="res" />
                  </node>
                  <node concept="liA8E" id="tyIfzBIVZ3" role="2OqNvi">
                    <ref role="37wK5l" to="hano:7Oc59RS_hsj" resolve="isSuccessful" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="tyIfzBILjT" role="3cqZAp">
                <node concept="37vLTI" id="tyIfzBILC1" role="3clFbG">
                  <node concept="2OqwBi" id="tyIfzBIXVS" role="37vLTx">
                    <node concept="liA8E" id="tyIfzBIZQi" role="2OqNvi">
                      <ref role="37wK5l" to="hfva:tyIfzC3lMP" resolve="getProgramGenInfo" />
                    </node>
                    <node concept="37vLTw" id="tyIfzC4E6Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="tyIfzC3OTC" resolve="launcher" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="tyIfzBILjR" role="37vLTJ">
                    <ref role="3cqZAo" node="tyIfzBIxtI" resolve="info" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4VntlICnIU5" role="3cqZAp">
                <node concept="37vLTI" id="4VntlICnJ3r" role="3clFbG">
                  <node concept="2OqwBi" id="4VntlICnLoq" role="37vLTx">
                    <node concept="37vLTw" id="4VntlICnLdD" role="2Oq$k0">
                      <ref role="3cqZAo" node="tyIfzC3OTC" resolve="launcher" />
                    </node>
                    <node concept="liA8E" id="4VntlICnMya" role="2OqNvi">
                      <ref role="37wK5l" to="hfva:4VntlICnjoD" resolve="getProgramSpec" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4VntlICnIU3" role="37vLTJ">
                    <ref role="3cqZAo" node="4VntlICnIHC" resolve="spec" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="tyIfzBIkGT" role="ukAjM">
            <node concept="1jxXqW" id="tyIfzBIkGU" role="2Oq$k0" />
            <node concept="liA8E" id="tyIfzBIkGV" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBIkEK" role="3cqZAp" />
        <node concept="3cpWs8" id="tyIfzBKNMI" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBKNMJ" role="3cpWs9">
            <property role="TrG5h" value="principalCtrsAnalysis" />
            <node concept="3uibUv" id="tyIfzBKNMK" role="1tU5fm">
              <ref role="3uigEE" to="xnrr:1H_6AUT0m_J" resolve="SimpleProgramAnalysis" />
            </node>
            <node concept="2ShNRf" id="tyIfzBKPxx" role="33vP2m">
              <node concept="1pGfFk" id="tyIfzBKRiT" role="2ShVmc">
                <ref role="37wK5l" to="xnrr:1H_6AUSTUb0" resolve="SimpleProgramAnalysis" />
                <node concept="37vLTw" id="tyIfzBKRji" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBIxtI" resolve="info" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzBKUeQ" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBKUPv" role="3clFbG">
            <node concept="37vLTw" id="tyIfzBKUeO" role="2Oq$k0">
              <ref role="3cqZAo" node="tyIfzBKNMJ" resolve="principalCtrsAnalysis" />
            </node>
            <node concept="liA8E" id="tyIfzBKWAN" role="2OqNvi">
              <ref role="37wK5l" to="xnrr:1H_6AUSXuxC" resolve="run" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="tyIfzBL35s" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBL35v" role="3cpWs9">
            <property role="TrG5h" value="principalCtrs" />
            <node concept="2hMVRd" id="tyIfzBL35o" role="1tU5fm">
              <node concept="3uibUv" id="tyIfzBL4y3" role="2hN53Y">
                <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
              </node>
            </node>
            <node concept="2OqwBi" id="tyIfzBL6fT" role="33vP2m">
              <node concept="37vLTw" id="tyIfzBL61G" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBKNMJ" resolve="principalCtrsAnalysis" />
              </node>
              <node concept="liA8E" id="tyIfzBL6EN" role="2OqNvi">
                <ref role="37wK5l" to="xnrr:1H_6AUSWw$W" resolve="getPrincipalCtrs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBLsJ0" role="3cqZAp" />
        <node concept="3cpWs8" id="tyIfzBLg7S" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBLg7V" role="3cpWs9">
            <property role="TrG5h" value="expectedPCtrs" />
            <node concept="2hMVRd" id="tyIfzBLg7O" role="1tU5fm">
              <node concept="3uibUv" id="tyIfzBLgpS" role="2hN53Y">
                <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
              </node>
            </node>
            <node concept="2ShNRf" id="tyIfzBLhVn" role="33vP2m">
              <node concept="2i4dXS" id="tyIfzBLkEC" role="2ShVmc">
                <node concept="3uibUv" id="tyIfzBLl0A" role="HW$YZ">
                  <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzBLpyj" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBLqpt" role="3clFbG">
            <node concept="37vLTw" id="tyIfzBLpyh" role="2Oq$k0">
              <ref role="3cqZAo" node="tyIfzBLg7V" resolve="expectedPCtrs" />
            </node>
            <node concept="TSZUe" id="tyIfzBLsC8" role="2OqNvi">
              <node concept="2ShNRf" id="tyIfzBLwbU" role="25WWJ7">
                <node concept="1pGfFk" id="tyIfzBLyk_" role="2ShVmc">
                  <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                  <node concept="Xl_RD" id="tyIfzBL$eY" role="37wK5m">
                    <property role="Xl_RC" value="typeof" />
                  </node>
                  <node concept="3cmrfG" id="tyIfzBL_9Z" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="tyIfzBN$sa" role="3cqZAp">
          <node concept="1PaTwC" id="tyIfzBN$sb" role="3ndbpf">
            <node concept="3oM_SD" id="tyIfzBNDWg" role="1PaTwD">
              <property role="3oM_SC" value="constraints" />
            </node>
            <node concept="3oM_SD" id="tyIfzBNDWq" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="tyIfzBNDW_" role="1PaTwD">
              <property role="3oM_SC" value="queries" />
            </node>
            <node concept="3oM_SD" id="tyIfzBNGTr" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="tyIfzBNGTK" role="1PaTwD">
              <property role="3oM_SC" value="principal" />
            </node>
            <node concept="3oM_SD" id="tyIfzBNJQw" role="1PaTwD">
              <property role="3oM_SC" value="too" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzBLC24" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBLC25" role="3clFbG">
            <node concept="37vLTw" id="tyIfzBLC26" role="2Oq$k0">
              <ref role="3cqZAo" node="tyIfzBLg7V" resolve="expectedPCtrs" />
            </node>
            <node concept="TSZUe" id="tyIfzBLC27" role="2OqNvi">
              <node concept="2ShNRf" id="tyIfzBLC28" role="25WWJ7">
                <node concept="1pGfFk" id="tyIfzBLC29" role="2ShVmc">
                  <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                  <node concept="Xl_RD" id="tyIfzBLC2a" role="37wK5m">
                    <property role="Xl_RC" value="recover" />
                  </node>
                  <node concept="3cmrfG" id="tyIfzBM0Bg" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="tyIfzBMK8j" role="3cqZAp">
          <node concept="1PaTwC" id="tyIfzBMK8k" role="3ndbpf">
            <node concept="3oM_SD" id="tyIfzBMNoA" role="1PaTwD">
              <property role="3oM_SC" value="'main'" />
            </node>
            <node concept="3oM_SD" id="tyIfzBMNoK" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="tyIfzBMNoN" role="1PaTwD">
              <property role="3oM_SC" value="always" />
            </node>
            <node concept="3oM_SD" id="tyIfzBMQlx" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="tyIfzBMQlI" role="1PaTwD">
              <property role="3oM_SC" value="principal" />
            </node>
            <node concept="3oM_SD" id="tyIfzBMQlW" role="1PaTwD">
              <property role="3oM_SC" value="constraint" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzBME_2" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBME_3" role="3clFbG">
            <node concept="37vLTw" id="tyIfzBME_4" role="2Oq$k0">
              <ref role="3cqZAo" node="tyIfzBLg7V" resolve="expectedPCtrs" />
            </node>
            <node concept="TSZUe" id="tyIfzBME_5" role="2OqNvi">
              <node concept="2ShNRf" id="tyIfzBME_6" role="25WWJ7">
                <node concept="1pGfFk" id="tyIfzBME_7" role="2ShVmc">
                  <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                  <node concept="Xl_RD" id="tyIfzBME_8" role="37wK5m">
                    <property role="Xl_RC" value="main" />
                  </node>
                  <node concept="3cmrfG" id="tyIfzBME_9" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBL6FW" role="3cqZAp" />
        <node concept="3vlDli" id="tyIfzBL9Mu" role="3cqZAp">
          <node concept="37vLTw" id="4VntlICn4CV" role="3tpDZB">
            <ref role="3cqZAo" node="tyIfzBLg7V" resolve="expectedPCtrs" />
          </node>
          <node concept="37vLTw" id="4VntlICn5Ks" role="3tpDZA">
            <ref role="3cqZAo" node="tyIfzBL35v" resolve="principalCtrs" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="tyIfzBAB26">
    <property role="TrG5h" value="ProgAnalysisTestHelper" />
    <node concept="2tJIrI" id="tyIfzBAB6g" role="jymVt" />
    <node concept="2YIFZL" id="tyIfzBALxE" role="jymVt">
      <property role="TrG5h" value="getTypeOfConstraint" />
      <node concept="3clFbS" id="tyIfzBAB5T" role="3clF47">
        <node concept="3cpWs6" id="tyIfzBAUpk" role="3cqZAp">
          <node concept="1rXfSq" id="tyIfzBAUrE" role="3cqZAk">
            <ref role="37wK5l" node="tyIfzBAS0Q" resolve="getTypeOfConstraint" />
            <node concept="2OqwBi" id="tyIfzBAVz7" role="37wK5m">
              <node concept="1eOMI4" id="tyIfzBAVlk" role="2Oq$k0">
                <node concept="10QFUN" id="tyIfzBAVlh" role="1eOMHV">
                  <node concept="3uibUv" id="tyIfzBAVon" role="10QFUM">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBAVgz" role="10QFUP">
                    <ref role="3cqZAo" node="tyIfzBAB7f" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBAWb5" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
            <node concept="37vLTw" id="tyIfzBAX8g" role="37wK5m">
              <ref role="3cqZAo" node="tyIfzBAHGA" resolve="metaLogicalName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tyIfzBAB7f" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="tyIfzBAB7J" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tyIfzBAHGA" role="3clF46">
        <property role="TrG5h" value="metaLogicalName" />
        <node concept="3uibUv" id="tyIfzBAHKm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3uibUv" id="tyIfzBAB6U" role="3clF45">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="tyIfzBAB4S" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="tyIfzBAS0Q" role="jymVt">
      <property role="TrG5h" value="getTypeOfConstraint" />
      <node concept="3clFbS" id="tyIfzBAS0R" role="3clF47">
        <node concept="3cpWs8" id="tyIfzBAS0S" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBAS0T" role="3cpWs9">
            <property role="TrG5h" value="T" />
            <node concept="3uibUv" id="tyIfzBAS0U" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
            </node>
            <node concept="2YIFZM" id="tyIfzBAS0V" role="33vP2m">
              <ref role="37wK5l" to="oy3s:7nPD14NOCTS" resolve="metaLogical" />
              <ref role="1Pybhc" to="oy3s:7nPD14NOCSa" resolve="MetaLogicalFactory" />
              <node concept="37vLTw" id="tyIfzBAS0W" role="37wK5m">
                <ref role="3cqZAo" node="tyIfzBAS1i" resolve="metaLogicalName" />
              </node>
              <node concept="3VsKOn" id="tyIfzBAS0X" role="37wK5m">
                <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="tyIfzBAS0Y" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBAS0Z" role="3cpWs9">
            <property role="TrG5h" value="typeOfSym" />
            <node concept="3uibUv" id="tyIfzBAS10" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
            </node>
            <node concept="2ShNRf" id="tyIfzBAS11" role="33vP2m">
              <node concept="1pGfFk" id="tyIfzBAS12" role="2ShVmc">
                <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                <node concept="Xl_RD" id="tyIfzBAS13" role="37wK5m">
                  <property role="Xl_RC" value="typeof" />
                </node>
                <node concept="3cmrfG" id="tyIfzBAS14" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="tyIfzBAS15" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBAS16" role="3cqZAk">
            <node concept="2OqwBi" id="tyIfzBAS17" role="2Oq$k0">
              <node concept="2ShNRf" id="tyIfzBAS18" role="2Oq$k0">
                <node concept="1pGfFk" id="tyIfzBAS19" role="2ShVmc">
                  <ref role="37wK5l" to="i348:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                  <node concept="37vLTw" id="tyIfzBAS1a" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBAS0Z" resolve="typeOfSym" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBAS1b" role="2OqNvi">
                <ref role="37wK5l" to="i348:4sSe4$oM2sT" resolve="withArguments" />
                <node concept="1rXfSq" id="tyIfzBAS1c" role="37wK5m">
                  <ref role="37wK5l" node="tyIfzBAM1K" resolve="getNodeRefTerm" />
                  <node concept="37vLTw" id="tyIfzBAS1d" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBAS1g" resolve="nodeptr" />
                  </node>
                </node>
                <node concept="37vLTw" id="tyIfzBAS1e" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBAS0T" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="tyIfzBAS1f" role="2OqNvi">
              <ref role="37wK5l" to="i348:4sSe4$oM2zI" resolve="toConstraint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tyIfzBAS1g" role="3clF46">
        <property role="TrG5h" value="nodeptr" />
        <node concept="2sp9CU" id="tyIfzBASdh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tyIfzBAS1i" role="3clF46">
        <property role="TrG5h" value="metaLogicalName" />
        <node concept="3uibUv" id="tyIfzBAS1j" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3uibUv" id="tyIfzBAS1k" role="3clF45">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="tyIfzBAS1l" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="tyIfzBABS4" role="jymVt" />
    <node concept="2YIFZL" id="tyIfzBAM1K" role="jymVt">
      <property role="TrG5h" value="getNodeRefTerm" />
      <node concept="3clFbS" id="tyIfzBABUc" role="3clF47">
        <node concept="3cpWs6" id="tyIfzBABVw" role="3cqZAp">
          <node concept="2YIFZM" id="tyIfzBA$a_" role="3cqZAk">
            <ref role="37wK5l" to="6exd:5JQSuNsxhfn" resolve="create" />
            <ref role="1Pybhc" to="6exd:5JQSuNswOXL" resolve="TermNode" />
            <node concept="2YIFZM" id="tyIfzBA$kf" role="37wK5m">
              <ref role="37wK5l" to="6exd:6YPNC4NI311" resolve="symbol" />
              <ref role="1Pybhc" to="6exd:5JQSuNswOXL" resolve="TermNode" />
              <node concept="3cmrfG" id="tyIfzBA$nH" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="2YIFZM" id="tyIfzBA$Ui" role="37wK5m">
              <ref role="1Pybhc" to="6exd:1msb0mq99GH" resolve="ValueRole" />
              <ref role="37wK5l" to="6exd:6cHSm2DiUE1" resolve="create" />
              <node concept="Xl_RD" id="tyIfzBA_cL" role="37wK5m">
                <property role="Xl_RC" value="id" />
              </node>
              <node concept="2YIFZM" id="tyIfzBAAeN" role="37wK5m">
                <ref role="37wK5l" to="6exd:5JQSuNsxb_I" resolve="create" />
                <ref role="1Pybhc" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                <node concept="37vLTw" id="tyIfzBAEkI" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBACkF" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tyIfzBACkF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="tyIfzBASo8" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="tyIfzBABTy" role="3clF45">
        <ref role="3uigEE" to="6exd:5JQSuNswOXL" resolve="TermNode" />
      </node>
      <node concept="3Tm1VV" id="tyIfzBABSR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="tyIfzBBsiW" role="jymVt" />
    <node concept="2YIFZL" id="tyIfzBBsSR" role="jymVt">
      <property role="TrG5h" value="ctrWithArgs" />
      <node concept="3clFbS" id="tyIfzBBsSU" role="3clF47">
        <node concept="3cpWs6" id="tyIfzBBts8" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBBts9" role="3cqZAk">
            <node concept="2OqwBi" id="tyIfzBBtsa" role="2Oq$k0">
              <node concept="2ShNRf" id="tyIfzBBtsb" role="2Oq$k0">
                <node concept="1pGfFk" id="tyIfzBBtsc" role="2ShVmc">
                  <ref role="37wK5l" to="i348:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                  <node concept="2ShNRf" id="tyIfzBBuWn" role="37wK5m">
                    <node concept="1pGfFk" id="tyIfzBBvPS" role="2ShVmc">
                      <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                      <node concept="37vLTw" id="tyIfzBBvSJ" role="37wK5m">
                        <ref role="3cqZAo" node="tyIfzBBtTS" resolve="sym" />
                      </node>
                      <node concept="2OqwBi" id="tyIfzBBwdt" role="37wK5m">
                        <node concept="37vLTw" id="tyIfzBBvVx" role="2Oq$k0">
                          <ref role="3cqZAo" node="429xoypV5Zn" resolve="args" />
                        </node>
                        <node concept="1Rwk04" id="tyIfzBBxIl" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBBtse" role="2OqNvi">
                <ref role="37wK5l" to="i348:4sSe4$oM2sT" resolve="withArguments" />
                <node concept="37vLTw" id="tyIfzBByOi" role="37wK5m">
                  <ref role="3cqZAo" node="429xoypV5Zn" resolve="args" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="tyIfzBBtsi" role="2OqNvi">
              <ref role="37wK5l" to="i348:4sSe4$oM2zI" resolve="toConstraint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tyIfzBBsn6" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzBBsRU" role="3clF45">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="37vLTG" id="tyIfzBBtTS" role="3clF46">
        <property role="TrG5h" value="sym" />
        <node concept="3uibUv" id="tyIfzBBu3a" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="429xoypV5Zn" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="429xoypV5Zo" role="1tU5fm">
          <node concept="3uibUv" id="6gZak$AVV6o" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="tyIfzBAB27" role="1B3o_S" />
  </node>
  <node concept="1lH9Xt" id="tyIfzC6NYI">
    <property role="TrG5h" value="IncrTypecheck" />
    <node concept="2XrIbr" id="4aLjyB0T71r" role="1qtyYc">
      <property role="TrG5h" value="assertSameAsGroundTruth" />
      <node concept="37vLTG" id="2FNFm8ncLMf" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="2FNFm8ncLT2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4aLjyB0T7UJ" role="3clF46">
        <property role="TrG5h" value="incremLauncher" />
        <node concept="3uibUv" id="4aLjyB0T7W8" role="1tU5fm">
          <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
        </node>
      </node>
      <node concept="3cqZAl" id="4aLjyB0W5bl" role="3clF45" />
      <node concept="3clFbS" id="4aLjyB0T71t" role="3clF47">
        <node concept="3cpWs8" id="4aLjyB0TlyG" role="3cqZAp">
          <node concept="3cpWsn" id="4aLjyB0TlyH" role="3cpWs9">
            <property role="TrG5h" value="cleanLauncher" />
            <node concept="3uibUv" id="4aLjyB0TlyI" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2YIFZM" id="3evPR3Eeeia" role="33vP2m">
              <ref role="37wK5l" to="hfva:2FNFm8neYtH" resolve="getLauncher" />
              <ref role="1Pybhc" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
              <node concept="37vLTw" id="3evPR3EeelH" role="37wK5m">
                <ref role="3cqZAo" node="2FNFm8ncLMf" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4aLjyB0Ta$S" role="3cqZAp">
          <node concept="2OqwBi" id="4aLjyB0TczB" role="3clFbG">
            <node concept="37vLTw" id="4aLjyB0Ta$R" role="2Oq$k0">
              <ref role="3cqZAo" node="4aLjyB0T7UJ" resolve="incremLauncher" />
            </node>
            <node concept="liA8E" id="4aLjyB0Tex4" role="2OqNvi">
              <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
              <node concept="37vLTw" id="2FNFm8ncM4m" role="37wK5m">
                <ref role="3cqZAo" node="2FNFm8ncLMf" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4aLjyB0W7lH" role="3cqZAp">
          <node concept="2OqwBi" id="4aLjyB0U4lD" role="3clFbG">
            <node concept="2WthIp" id="4aLjyB0U4lG" role="2Oq$k0" />
            <node concept="2XshWL" id="4aLjyB0U4lI" role="2OqNvi">
              <ref role="2WH_rO" node="4aLjyB0U0jg" resolve="cmpTypes" />
              <node concept="2OqwBi" id="4aLjyB0U6oa" role="2XxRq1">
                <node concept="37vLTw" id="4aLjyB0U6hf" role="2Oq$k0">
                  <ref role="3cqZAo" node="4aLjyB0TlyH" resolve="cleanLauncher" />
                </node>
                <node concept="liA8E" id="4aLjyB0U6q0" role="2OqNvi">
                  <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                  <node concept="37vLTw" id="2FNFm8ncM8d" role="37wK5m">
                    <ref role="3cqZAo" node="2FNFm8ncLMf" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4aLjyB0UaQl" role="2XxRq1">
                <node concept="37vLTw" id="4aLjyB0UaK8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4aLjyB0T7UJ" resolve="incremLauncher" />
                </node>
                <node concept="liA8E" id="4aLjyB0UcVK" role="2OqNvi">
                  <ref role="37wK5l" to="hfva:4aLjyB0SHom" resolve="getAllTypes" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4aLjyB0Ud6j" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4aLjyB0U0jg" role="1qtyYc">
      <property role="TrG5h" value="cmpTypes" />
      <node concept="37vLTG" id="4aLjyB0U15n" role="3clF46">
        <property role="TrG5h" value="groundTruth" />
        <node concept="3rvAFt" id="4aLjyB0U16C" role="1tU5fm">
          <node concept="3uibUv" id="4aLjyB0U18c" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3Tqbb2" id="4aLjyB0U1jr" role="3rvSg0" />
        </node>
      </node>
      <node concept="37vLTG" id="4aLjyB0U1l9" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3rvAFt" id="4aLjyB0U1mu" role="1tU5fm">
          <node concept="3uibUv" id="4aLjyB0U1o2" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3Tqbb2" id="4aLjyB0U2mY" role="3rvSg0" />
        </node>
      </node>
      <node concept="3cqZAl" id="4aLjyB0W4Zk" role="3clF45" />
      <node concept="3clFbS" id="4aLjyB0U0ji" role="3clF47">
        <node concept="3clFbF" id="4aLjyB0VRQQ" role="3cqZAp">
          <node concept="2OqwBi" id="4aLjyB0VRQR" role="3clFbG">
            <node concept="37vLTw" id="4aLjyB0VRQS" role="2Oq$k0">
              <ref role="3cqZAo" node="4aLjyB0U15n" resolve="groundTruth" />
            </node>
            <node concept="2es0OD" id="4aLjyB0W1n$" role="2OqNvi">
              <node concept="1bVj0M" id="4aLjyB0W1nA" role="23t8la">
                <node concept="3clFbS" id="4aLjyB0W1nB" role="1bW5cS">
                  <node concept="3vwNmj" id="4aLjyB0W1nC" role="3cqZAp">
                    <node concept="2OqwBi" id="4aLjyB0W1nD" role="3vwVQn">
                      <node concept="37vLTw" id="4aLjyB0W1nE" role="2Oq$k0">
                        <ref role="3cqZAo" node="4aLjyB0U1l9" resolve="types" />
                      </node>
                      <node concept="2Nt0df" id="4aLjyB0W1nF" role="2OqNvi">
                        <node concept="2OqwBi" id="4aLjyB0W1nG" role="38cxEo">
                          <node concept="37vLTw" id="4aLjyB0W1nH" role="2Oq$k0">
                            <ref role="3cqZAo" node="4aLjyB0W1nU" resolve="it" />
                          </node>
                          <node concept="3AY5_j" id="4aLjyB0W1nI" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vwNmj" id="4aLjyB0W4GM" role="3cqZAp">
                    <node concept="2YFouu" id="4aLjyB0W1nL" role="3vwVQn">
                      <node concept="3EllGN" id="4aLjyB0W1nM" role="3uHU7B">
                        <node concept="2OqwBi" id="4aLjyB0W1nN" role="3ElVtu">
                          <node concept="37vLTw" id="4aLjyB0W1nO" role="2Oq$k0">
                            <ref role="3cqZAo" node="4aLjyB0W1nU" resolve="it" />
                          </node>
                          <node concept="3AY5_j" id="4aLjyB0W1nP" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="4aLjyB0W1nQ" role="3ElQJh">
                          <ref role="3cqZAo" node="4aLjyB0U1l9" resolve="types" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4aLjyB0W1nR" role="3uHU7w">
                        <node concept="37vLTw" id="4aLjyB0W1nS" role="2Oq$k0">
                          <ref role="3cqZAo" node="4aLjyB0W1nU" resolve="it" />
                        </node>
                        <node concept="3AV6Ez" id="4aLjyB0W1nT" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4aLjyB0W1nU" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4aLjyB0W1nV" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4aLjyB0Ud9O" role="1B3o_S" />
    </node>
    <node concept="1qefOq" id="3irtEZPvyu6" role="1SKRRt">
      <node concept="0U$pH" id="3irtEZPvB3L" role="1qenE9">
        <property role="TrG5h" value="Demo" />
        <node concept="34yUbg" id="7mB3viLblk6" role="0U$qp">
          <node concept="34yUbh" id="7mB3viLblk7" role="34yUb0">
            <property role="TrG5h" value="foo" />
          </node>
          <node concept="34$_Ec" id="7mB3viLdvny" role="34yUb2">
            <property role="34$_Ed" value="test" />
          </node>
        </node>
        <node concept="34yUbg" id="7mB3viLdNfT" role="0U$qp">
          <node concept="34yUbh" id="7mB3viLdNfV" role="34yUb0">
            <property role="TrG5h" value="bar" />
          </node>
          <node concept="3xLA65" id="3irtEZPwgOA" role="lGtFl">
            <property role="TrG5h" value="barDecl" />
          </node>
          <node concept="34$_Ec" id="7lmVwpX$_oJ" role="34yUb2">
            <property role="34$_Ed" value="123" />
          </node>
        </node>
        <node concept="3xLA65" id="3irtEZPwc_y" role="lGtFl">
          <property role="TrG5h" value="demo" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3irtEZPwkBa" role="1SL9yI">
      <property role="TrG5h" value="testModifyLocal" />
      <node concept="3cqZAl" id="3irtEZPwkBb" role="3clF45" />
      <node concept="3clFbS" id="3irtEZPwkBf" role="3clF47">
        <node concept="3clFbF" id="3KwBCAABq$v" role="3cqZAp">
          <node concept="2OqwBi" id="3KwBCAABrUp" role="3clFbG">
            <node concept="2OqwBi" id="3KwBCAABrzy" role="2Oq$k0">
              <node concept="2OqwBi" id="3KwBCAABqXV" role="2Oq$k0">
                <node concept="1jxXqW" id="3KwBCAABq$t" role="2Oq$k0" />
                <node concept="liA8E" id="3KwBCAABrtK" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="3KwBCAABrOR" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3KwBCAABs8l" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkWriteAccess()" resolve="checkWriteAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KwBCAABwVT" role="3cqZAp">
          <node concept="3cpWsn" id="3KwBCAABwVU" role="3cpWs9">
            <property role="TrG5h" value="modelRepo" />
            <node concept="3uibUv" id="3KwBCAABwVS" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="3KwBCAABwVV" role="33vP2m">
              <node concept="2JrnkZ" id="3KwBCAABwVW" role="2Oq$k0">
                <node concept="2OqwBi" id="3KwBCAABwVX" role="2JrQYb">
                  <node concept="3xONca" id="7mB3viLoFFN" role="2Oq$k0">
                    <ref role="3xOPvv" node="3irtEZPwc_y" resolve="demo" />
                  </node>
                  <node concept="I4A8Y" id="3KwBCAABwVZ" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="3KwBCAABwW0" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Hmddi" id="3KwBCAAByZ5" role="3cqZAp">
          <node concept="37vLTw" id="3KwBCAAByZ6" role="2Hmdds">
            <ref role="3cqZAo" node="3KwBCAABwVU" resolve="modelRepo" />
          </node>
        </node>
        <node concept="3clFbH" id="3KwBCAABszG" role="3cqZAp" />
        <node concept="3cpWs8" id="3KwBCAAB$Q4" role="3cqZAp">
          <node concept="3cpWsn" id="3KwBCAAB$Q5" role="3cpWs9">
            <property role="TrG5h" value="typeOfExpr" />
            <node concept="3Tqbb2" id="3KwBCAAB$Q6" role="1tU5fm" />
            <node concept="2OqwBi" id="3KwBCAAB$Q7" role="33vP2m">
              <node concept="2OqwBi" id="3KwBCAAB$Q8" role="2Oq$k0">
                <node concept="3xONca" id="7mB3viLoFYP" role="2Oq$k0">
                  <ref role="3xOPvv" node="3irtEZPwgOA" resolve="barDecl" />
                </node>
                <node concept="3TrEf2" id="7mB3viLoGcs" role="2OqNvi">
                  <ref role="3Tt5mk" to="qulx:7mB3viLbaWQ" resolve="init" />
                </node>
              </node>
              <node concept="2W$R8B" id="3KwBCAAB$Qb" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="3KwBCAAB$Qc" role="3cqZAp">
          <node concept="2YFouu" id="3KwBCAAB$Qd" role="3vwVQn">
            <node concept="2c44tf" id="3KwBCAAB$Qe" role="3uHU7B">
              <node concept="34yo6O" id="7mB3viLoH6n" role="2c44tc">
                <property role="34yo6P" value="String" />
                <property role="34TwF0" value="123" />
              </node>
            </node>
            <node concept="37vLTw" id="3KwBCAAB$Qg" role="3uHU7w">
              <ref role="3cqZAo" node="3KwBCAAB$Q5" resolve="typeOfExpr" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4aLjyB0XFwJ" role="3cqZAp" />
        <node concept="3clFbF" id="3KwBCAACFUT" role="3cqZAp">
          <node concept="2OqwBi" id="3KwBCAACHJq" role="3clFbG">
            <node concept="2OqwBi" id="3KwBCAACGe7" role="2Oq$k0">
              <node concept="3xONca" id="7mB3viLoHMl" role="2Oq$k0">
                <ref role="3xOPvv" node="3irtEZPwgOA" resolve="barDecl" />
              </node>
              <node concept="3TrEf2" id="7mB3viLoIbz" role="2OqNvi">
                <ref role="3Tt5mk" to="qulx:7mB3viLbaWQ" resolve="init" />
              </node>
            </node>
            <node concept="2oxUTD" id="3KwBCAACIlI" role="2OqNvi">
              <node concept="2c44tf" id="7mB3viLoJb4" role="2oxUTC">
                <node concept="34$_Ec" id="7mB3viLoJMN" role="2c44tc">
                  <property role="34$_Ed" value="foo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tc9pc3uWi_" role="3cqZAp" />
        <node concept="3cpWs8" id="3KwBCAACJFA" role="3cqZAp">
          <node concept="3cpWsn" id="3KwBCAACJFB" role="3cpWs9">
            <property role="TrG5h" value="typeOfExpr3" />
            <node concept="3Tqbb2" id="3KwBCAACJFC" role="1tU5fm" />
            <node concept="2OqwBi" id="3KwBCAACJFD" role="33vP2m">
              <node concept="2OqwBi" id="3KwBCAACJFE" role="2Oq$k0">
                <node concept="3xONca" id="7mB3viLoKtZ" role="2Oq$k0">
                  <ref role="3xOPvv" node="3irtEZPwgOA" resolve="barDecl" />
                </node>
                <node concept="3TrEf2" id="7mB3viLoKFs" role="2OqNvi">
                  <ref role="3Tt5mk" to="qulx:7mB3viLbaWQ" resolve="init" />
                </node>
              </node>
              <node concept="2W$R8B" id="3KwBCAACJFH" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="JA50E" id="3KwBCAACMVi" role="3cqZAp">
          <node concept="37vLTw" id="3KwBCAACRXa" role="JAdkl">
            <ref role="3cqZAo" node="3KwBCAACJFB" resolve="typeOfExpr3" />
          </node>
          <node concept="2c44tf" id="3KwBCAACR1H" role="JA92f">
            <node concept="34yo6O" id="7mB3viLoL0e" role="2c44tc">
              <property role="34yo6P" value="String" />
              <property role="34TwF0" value="foo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3irtEZPla$M" role="1SL9yI">
      <property role="TrG5h" value="testLangReplaceSingle" />
      <node concept="3cqZAl" id="3irtEZPla$N" role="3clF45" />
      <node concept="3clFbS" id="3irtEZPla$O" role="3clF47">
        <node concept="3cpWs8" id="3irtEZPx816" role="3cqZAp">
          <node concept="3cpWsn" id="3irtEZPx817" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3irtEZPx818" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="3irtEZPx819" role="33vP2m">
              <node concept="2JrnkZ" id="3irtEZPx81a" role="2Oq$k0">
                <node concept="2OqwBi" id="3irtEZPx81b" role="2JrQYb">
                  <node concept="3xONca" id="3irtEZPx81c" role="2Oq$k0">
                    <ref role="3xOPvv" node="3irtEZPwc_y" resolve="demo" />
                  </node>
                  <node concept="I4A8Y" id="3irtEZPx81d" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="3irtEZPx81e" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3irtEZPxgDP" role="3cqZAp">
          <node concept="3cpWsn" id="3irtEZPxgDQ" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="3irtEZPxgDR" role="1tU5fm">
              <ref role="3uigEE" to="hfva:tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
            </node>
            <node concept="2ShNRf" id="3irtEZPxgDS" role="33vP2m">
              <node concept="1pGfFk" id="3irtEZPxgDT" role="2ShVmc">
                <ref role="37wK5l" to="hfva:tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
                <node concept="37vLTw" id="3irtEZPxgDU" role="37wK5m">
                  <ref role="3cqZAo" node="3irtEZPx817" resolve="repo" />
                </node>
                <node concept="2OqwBi" id="3irtEZPxgDV" role="37wK5m">
                  <node concept="3xONca" id="3irtEZPxhpI" role="2Oq$k0">
                    <ref role="3xOPvv" node="3irtEZPwc_y" resolve="demo" />
                  </node>
                  <node concept="I4A8Y" id="3irtEZPxgDX" role="2OqNvi" />
                </node>
                <node concept="10M0yZ" id="3irtEZPxgDY" role="37wK5m">
                  <ref role="3cqZAo" to="tj24:4t7Xo7inNvw" resolve="TYPECHECK" />
                  <ref role="1PxDUh" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3irtEZPz472" role="3cqZAp" />
        <node concept="3cpWs8" id="3irtEZPxo7s" role="3cqZAp">
          <node concept="3cpWsn" id="3irtEZPxo7t" role="3cpWs9">
            <property role="TrG5h" value="barRef" />
            <node concept="3uibUv" id="3irtEZPxo7u" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="3irtEZPxo7v" role="33vP2m">
              <node concept="1eOMI4" id="3irtEZPxo7w" role="2Oq$k0">
                <node concept="10QFUN" id="3irtEZPxo7x" role="1eOMHV">
                  <node concept="3uibUv" id="3irtEZPxo7y" role="10QFUM">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="2OqwBi" id="3irtEZPyLDw" role="10QFUP">
                    <node concept="3xONca" id="3irtEZPxprx" role="2Oq$k0">
                      <ref role="3xOPvv" node="3irtEZPwgOA" resolve="barDecl" />
                    </node>
                    <node concept="3TrEf2" id="3irtEZPyNyF" role="2OqNvi">
                      <ref role="3Tt5mk" to="qulx:7mB3viLbaWO" resolve="decl" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3irtEZPxo7$" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3irtEZPxo44" role="3cqZAp" />
        <node concept="3cpWs8" id="3irtEZPla_q" role="3cqZAp">
          <node concept="3cpWsn" id="3irtEZPla_r" role="3cpWs9">
            <property role="TrG5h" value="types1" />
            <node concept="3rvAFt" id="3irtEZPla_s" role="1tU5fm">
              <node concept="3uibUv" id="3irtEZPla_t" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3irtEZPla_u" role="3rvSg0" />
            </node>
            <node concept="2OqwBi" id="3irtEZPla_v" role="33vP2m">
              <node concept="37vLTw" id="3irtEZPla_w" role="2Oq$k0">
                <ref role="3cqZAo" node="3irtEZPxgDQ" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3irtEZPla_x" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fICWA" resolve="launch" />
                <node concept="3xONca" id="2FNFm8nb1JC" role="37wK5m">
                  <ref role="3xOPvv" node="3irtEZPwc_y" resolve="demo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3irtEZPsjnK" role="3cqZAp" />
        <node concept="3vwNmj" id="3irtEZPlaAd" role="3cqZAp">
          <node concept="2YFouu" id="3irtEZPlaAe" role="3vwVQn">
            <node concept="2c44tf" id="3irtEZPlaAf" role="3uHU7B">
              <node concept="34yo6O" id="3irtEZPlaAg" role="2c44tc">
                <property role="34yo6P" value="String" />
                <property role="34TwF0" value="123" />
              </node>
            </node>
            <node concept="3EllGN" id="3irtEZPlaAh" role="3uHU7w">
              <node concept="37vLTw" id="3irtEZPpLMK" role="3ElVtu">
                <ref role="3cqZAo" node="3irtEZPxo7t" resolve="barRef" />
              </node>
              <node concept="37vLTw" id="3irtEZPlaAj" role="3ElQJh">
                <ref role="3cqZAo" node="3irtEZPla_r" resolve="types1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3irtEZPlaAk" role="3cqZAp" />
        <node concept="3clFbF" id="3irtEZPlaAl" role="3cqZAp">
          <node concept="2OqwBi" id="3irtEZPlaAm" role="3clFbG">
            <node concept="2OqwBi" id="3irtEZPlaAn" role="2Oq$k0">
              <node concept="3xONca" id="3irtEZPxvkT" role="2Oq$k0">
                <ref role="3xOPvv" node="3irtEZPwgOA" resolve="barDecl" />
              </node>
              <node concept="3TrEf2" id="3irtEZPxvyH" role="2OqNvi">
                <ref role="3Tt5mk" to="qulx:7mB3viLbaWQ" resolve="init" />
              </node>
            </node>
            <node concept="1P9Npp" id="3irtEZPlaAq" role="2OqNvi">
              <node concept="2c44tf" id="3irtEZPlaAr" role="1P9ThW">
                <node concept="34$_Ec" id="3irtEZPoB61" role="2c44tc">
                  <property role="34$_Ed" value="test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3irtEZPt2sK" role="3cqZAp" />
        <node concept="3cpWs8" id="3irtEZPlaAz" role="3cqZAp">
          <node concept="3cpWsn" id="3irtEZPlaA$" role="3cpWs9">
            <property role="TrG5h" value="typesDelta" />
            <node concept="2OqwBi" id="3irtEZPlaA_" role="33vP2m">
              <node concept="37vLTw" id="3irtEZPlaAA" role="2Oq$k0">
                <ref role="3cqZAo" node="3irtEZPxgDQ" resolve="launcher" />
              </node>
              <node concept="liA8E" id="3irtEZPlaAB" role="2OqNvi">
                <ref role="37wK5l" to="hfva:2u_o41fHwMs" resolve="relaunch" />
                <node concept="3xONca" id="3irtEZPxv_1" role="37wK5m">
                  <ref role="3xOPvv" node="3irtEZPwc_y" resolve="demo" />
                </node>
              </node>
            </node>
            <node concept="3rvAFt" id="3irtEZPlaAD" role="1tU5fm">
              <node concept="3uibUv" id="3irtEZPlaAE" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tqbb2" id="3irtEZPlaAF" role="3rvSg0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4aLjyB101YZ" role="3cqZAp" />
        <node concept="3clFbF" id="4VntlICsDxZ" role="3cqZAp">
          <node concept="2YIFZM" id="3evPR3Ees6w" role="3clFbG">
            <ref role="37wK5l" to="hfva:3evPR3Eeirf" resolve="printRulesDiff" />
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <node concept="2OqwBi" id="4VntlICsGHW" role="37wK5m">
              <node concept="37vLTw" id="4VntlICsGAX" role="2Oq$k0">
                <ref role="3cqZAo" node="3irtEZPxgDQ" resolve="launcher" />
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
              <ref role="3cqZAo" node="3irtEZPx817" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3evPR3EeuMB" role="37wK5m">
              <ref role="3cqZAo" node="3irtEZPla_r" resolve="types1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3evPR3EeuRs" role="3cqZAp">
          <node concept="2YIFZM" id="3evPR3EeuRt" role="3clFbG">
            <ref role="1Pybhc" to="hfva:3evPR3EeeoU" resolve="TestInfoPrinter" />
            <ref role="37wK5l" to="hfva:3evPR3Eeopd" resolve="printTypes" />
            <node concept="37vLTw" id="3evPR3EeuRu" role="37wK5m">
              <ref role="3cqZAo" node="3irtEZPx817" resolve="repo" />
            </node>
            <node concept="37vLTw" id="3evPR3EevJG" role="37wK5m">
              <ref role="3cqZAo" node="3irtEZPlaA$" resolve="typesDelta" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4aLjyB0WbO6" role="3cqZAp" />
        <node concept="3SKdUt" id="tc9pc3tHEU" role="3cqZAp">
          <node concept="1PaTwC" id="tc9pc3tHEV" role="3ndbpf">
            <node concept="3oM_SD" id="tc9pc3tIl3" role="1PaTwD">
              <property role="3oM_SC" value="2" />
            </node>
            <node concept="3oM_SD" id="tc9pc3tOJG" role="1PaTwD">
              <property role="3oM_SC" value="updates:" />
            </node>
            <node concept="3oM_SD" id="tc9pc3tOJU" role="1PaTwD">
              <property role="3oM_SC" value="constant" />
            </node>
            <node concept="3oM_SD" id="tc9pc3tIld" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="tc9pc3tIlg" role="1PaTwD">
              <property role="3oM_SC" value="var" />
            </node>
            <node concept="3oM_SD" id="tc9pc3tLyY" role="1PaTwD">
              <property role="3oM_SC" value="decl" />
            </node>
          </node>
        </node>
        <node concept="3vlDli" id="3irtEZPlaAO" role="3cqZAp">
          <node concept="2OqwBi" id="3irtEZPp4_L" role="3tpDZA">
            <node concept="37vLTw" id="3irtEZPp0$l" role="2Oq$k0">
              <ref role="3cqZAo" node="3irtEZPlaA$" resolve="typesDelta" />
            </node>
            <node concept="34oBXx" id="3irtEZPp5nD" role="2OqNvi" />
          </node>
          <node concept="3cmrfG" id="tc9pc3tBlG" role="3tpDZB">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
        <node concept="3vwNmj" id="tc9pc3sNeB" role="3cqZAp">
          <node concept="2OqwBi" id="tc9pc3sVFM" role="3vwVQn">
            <node concept="37vLTw" id="tc9pc3sT0B" role="2Oq$k0">
              <ref role="3cqZAo" node="3irtEZPlaA$" resolve="typesDelta" />
            </node>
            <node concept="2Nt0df" id="tc9pc3tdov" role="2OqNvi">
              <node concept="37vLTw" id="tc9pc3tg_G" role="38cxEo">
                <ref role="3cqZAo" node="3irtEZPxo7t" resolve="barRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="3irtEZPlaAT" role="3cqZAp">
          <node concept="2YFouu" id="3irtEZPlaAU" role="3vwVQn">
            <node concept="2c44tf" id="3irtEZPlaAV" role="3uHU7B">
              <node concept="34yo6O" id="3irtEZPlaAW" role="2c44tc">
                <property role="34yo6P" value="String" />
                <property role="34TwF0" value="test" />
              </node>
            </node>
            <node concept="3EllGN" id="3irtEZPlaAX" role="3uHU7w">
              <node concept="37vLTw" id="3irtEZPoeTd" role="3ElVtu">
                <ref role="3cqZAo" node="3irtEZPxo7t" resolve="barRef" />
              </node>
              <node concept="37vLTw" id="3irtEZPlaB1" role="3ElQJh">
                <ref role="3cqZAo" node="3irtEZPlaA$" resolve="typesDelta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4aLjyB0WtG8" role="3cqZAp">
          <node concept="2OqwBi" id="4aLjyB0Vzpu" role="3clFbG">
            <node concept="2WthIp" id="4aLjyB0Vzpx" role="2Oq$k0" />
            <node concept="2XshWL" id="4aLjyB0Vzpz" role="2OqNvi">
              <ref role="2WH_rO" node="4aLjyB0T71r" resolve="assertSameAsGroundTruth" />
              <node concept="3xONca" id="2FNFm8ncQrw" role="2XxRq1">
                <ref role="3xOPvv" node="3irtEZPwc_y" resolve="demo" />
              </node>
              <node concept="37vLTw" id="4aLjyB0V$BV" role="2XxRq1">
                <ref role="3cqZAo" node="3irtEZPxgDQ" resolve="launcher" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

