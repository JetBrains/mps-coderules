<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cbfbe9a2-941f-4667-8e48-3bf39c5dad6d(jetbrains.mps.typechecking@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
    <use id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types" version="0" />
    <use id="0fda14cc-a416-4c81-869a-2175d8b3325d" name="jetbrains.mps.baseLanguageExt" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.typesystem2.evaluation)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.typechecking.service)" />
    <import index="tlxd" ref="r:bc54949b-877a-412d-bb6d-5859d76db7ae(jetbrains.mps.lang.typechecking.test.data)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="qox2" ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.typechecking.plugin)" />
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
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <property id="6489343236075007666" name="label" index="3hQQBS" />
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1216130694486" name="jetbrains.mps.baseLanguage.unitTest.structure.ITestCase" flags="ng" index="B2rLd">
        <property id="6427619394892729757" name="canNotRunInProcess" index="26Nn1l" />
      </concept>
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1171985735491" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertSame" flags="nn" index="3vMLTj" />
      <concept id="1172028177041" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNull" flags="nn" index="3ykFI1">
        <child id="1172028236559" name="expression" index="3ykU8v" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="597763930871270009" name="jetbrains.mps.lang.smodel.structure.ChildNodeRefExpression" flags="nn" index="3fl2lp">
        <reference id="597763930871272016" name="targetNode" index="3fl3PK" />
        <child id="597763930871272014" name="parent" index="3fl3PI" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
      <concept id="1828409047608048457" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="nn" index="1N_AGu">
        <reference id="1828409047608048458" name="referentNode" index="1N_AGt" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types">
      <concept id="7345257067587627589" name="jetbrains.mps.lang.smodel.types.structure.SNodeTypeOperation" flags="ng" index="2W$R8B" />
    </language>
  </registry>
  <node concept="2XOHcx" id="7t5VLKGQVAO">
    <property role="2XOHcw" value="${logic_home}" />
  </node>
  <node concept="1lH9Xt" id="6QH_LDtdSk3">
    <property role="TrG5h" value="TypeCache" />
    <property role="3OwPAg" value="true" />
    <property role="26Nn1l" value="true" />
    <node concept="1LZb2c" id="6QH_LDtdSlj" role="1SL9yI">
      <property role="TrG5h" value="typeInitCache" />
      <node concept="3cqZAl" id="6QH_LDtdSlk" role="3clF45" />
      <node concept="3clFbS" id="6QH_LDtdSlo" role="3clF47">
        <node concept="1QHqEK" id="14$_tTxzYFT" role="3cqZAp">
          <node concept="1QHqEC" id="14$_tTxzYFV" role="1QHqEI">
            <node concept="3clFbS" id="14$_tTxzYFX" role="1bW5cS">
              <node concept="3cpWs8" id="14$_tTxzPUB" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxzPUC" role="3cpWs9">
                  <property role="TrG5h" value="cls" />
                  <node concept="3Tqbb2" id="14$_tTxzQ78" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                  <node concept="1PxgMI" id="14$_tTx$u1V" role="33vP2m">
                    <node concept="chp4Y" id="14$_tTx$uBy" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                    </node>
                    <node concept="2OqwBi" id="14$_tTx$rok" role="1m5AlR">
                      <node concept="1N_AGu" id="14$_tTx$qwT" role="2Oq$k0">
                        <ref role="1N_AGt" to="tlxd:6$7vuu2uamo" resolve="Foo" />
                      </node>
                      <node concept="liA8E" id="14$_tTx$rYh" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                        <node concept="2OqwBi" id="14$_tTx$syv" role="37wK5m">
                          <node concept="1jxXqW" id="14$_tTx$sfe" role="2Oq$k0" />
                          <node concept="liA8E" id="14$_tTx$tAG" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="14$_tTxzUrg" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxzUrh" role="3cpWs9">
                  <property role="TrG5h" value="unit" />
                  <node concept="H_c77" id="14$_tTxzUr8" role="1tU5fm" />
                  <node concept="2OqwBi" id="14$_tTxzUri" role="33vP2m">
                    <node concept="37vLTw" id="14$_tTxzUrj" role="2Oq$k0">
                      <ref role="3cqZAo" node="14$_tTxzPUC" resolve="cls" />
                    </node>
                    <node concept="I4A8Y" id="14$_tTxzUrk" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="14$_tTxzTDv" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxzTDw" role="3cpWs9">
                  <property role="TrG5h" value="modelRepo" />
                  <node concept="3uibUv" id="14$_tTxzTDj" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="2OqwBi" id="14$_tTxzTDx" role="33vP2m">
                    <node concept="2JrnkZ" id="14$_tTxzTDy" role="2Oq$k0">
                      <node concept="37vLTw" id="14$_tTxzUrl" role="2JrQYb">
                        <ref role="3cqZAo" node="14$_tTxzUrh" resolve="unit" />
                      </node>
                    </node>
                    <node concept="liA8E" id="14$_tTxzTDA" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="14$_tTxzNf1" role="3cqZAp" />
              <node concept="3cpWs8" id="6QH_LDtdTgr" role="3cqZAp">
                <node concept="3cpWsn" id="6QH_LDtdTgs" role="3cpWs9">
                  <property role="TrG5h" value="tc" />
                  <node concept="3uibUv" id="6QH_LDtdTgp" role="1tU5fm">
                    <ref role="3uigEE" to="qox2:4Z$O9mrQIzY" resolve="TypecheckingCache" />
                  </node>
                  <node concept="2YIFZM" id="443LGHBoCc7" role="33vP2m">
                    <ref role="37wK5l" to="qox2:4Z$O9mrQIG1" resolve="get" />
                    <ref role="1Pybhc" to="qox2:4Z$O9mrQIzY" resolve="TypecheckingCache" />
                    <node concept="37vLTw" id="14$_tTxzVwH" role="37wK5m">
                      <ref role="3cqZAo" node="14$_tTxzTDw" resolve="modelRepo" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6QH_LDtdVHj" role="3cqZAp">
                <node concept="3cpWsn" id="6QH_LDtdVHk" role="3cpWs9">
                  <property role="TrG5h" value="typesCache" />
                  <node concept="3uibUv" id="443LGHByist" role="1tU5fm">
                    <ref role="3uigEE" to="qox2:443LGHBxJ1f" resolve="TypecheckingCache.Clearable" />
                  </node>
                  <node concept="2OqwBi" id="6QH_LDtdVHl" role="33vP2m">
                    <node concept="37vLTw" id="6QH_LDtdVHm" role="2Oq$k0">
                      <ref role="3cqZAo" node="6QH_LDtdTgs" resolve="tc" />
                    </node>
                    <node concept="liA8E" id="6QH_LDtdVHn" role="2OqNvi">
                      <ref role="37wK5l" to="qox2:4Z$O9mrQJgp" resolve="cachedTypes" />
                      <node concept="2OqwBi" id="443LGHB5OH6" role="37wK5m">
                        <node concept="2JrnkZ" id="443LGHB5Olz" role="2Oq$k0">
                          <node concept="37vLTw" id="14$_tTxzVDX" role="2JrQYb">
                            <ref role="3cqZAo" node="14$_tTxzUrh" resolve="unit" />
                          </node>
                        </node>
                        <node concept="liA8E" id="443LGHB5PwJ" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3ykFI1" id="6QH_LDtdYpJ" role="3cqZAp">
                <node concept="37vLTw" id="6QH_LDtdYsF" role="3ykU8v">
                  <ref role="3cqZAo" node="6QH_LDtdVHk" resolve="typesCache" />
                </node>
              </node>
              <node concept="3clFbH" id="14$_tTx$ElE" role="3cqZAp" />
              <node concept="2GUZhq" id="14$_tTx$j9K" role="3cqZAp">
                <node concept="3clFbS" id="14$_tTx$j9M" role="2GV8ay">
                  <node concept="3cpWs8" id="6QH_LDtdXLJ" role="3cqZAp">
                    <node concept="3cpWsn" id="6QH_LDtdXLK" role="3cpWs9">
                      <property role="TrG5h" value="typeCache2" />
                      <node concept="3uibUv" id="443LGHBynwC" role="1tU5fm">
                        <ref role="3uigEE" to="qox2:443LGHBxJ1f" resolve="TypecheckingCache.Clearable" />
                      </node>
                      <node concept="2OqwBi" id="6QH_LDtdXLL" role="33vP2m">
                        <node concept="37vLTw" id="6QH_LDtdXLM" role="2Oq$k0">
                          <ref role="3cqZAo" node="6QH_LDtdTgs" resolve="tc" />
                        </node>
                        <node concept="liA8E" id="6QH_LDtdXLN" role="2OqNvi">
                          <ref role="37wK5l" to="qox2:6QH_LDtbsGz" resolve="updateCachedTypes" />
                          <node concept="2OqwBi" id="443LGHB5G43" role="37wK5m">
                            <node concept="2JrnkZ" id="443LGHB5FG9" role="2Oq$k0">
                              <node concept="37vLTw" id="14$_tTxzVPf" role="2JrQYb">
                                <ref role="3cqZAo" node="14$_tTxzUrh" resolve="unit" />
                              </node>
                            </node>
                            <node concept="liA8E" id="443LGHB5GzS" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                            </node>
                          </node>
                          <node concept="1bVj0M" id="6QH_LDtdXLP" role="37wK5m">
                            <node concept="3clFbS" id="6QH_LDtdXLQ" role="1bW5cS">
                              <node concept="3clFbH" id="6QH_LDtet4b" role="3cqZAp" />
                              <node concept="3cpWs8" id="443LGHBykAJ" role="3cqZAp">
                                <node concept="3cpWsn" id="443LGHBykAK" role="3cpWs9">
                                  <property role="TrG5h" value="typeCache" />
                                  <node concept="3uibUv" id="443LGHBykAL" role="1tU5fm">
                                    <ref role="3uigEE" to="tj24:6QH_LDtcxgf" resolve="ModelTypeCache" />
                                  </node>
                                  <node concept="2ShNRf" id="443LGHBylz3" role="33vP2m">
                                    <node concept="1pGfFk" id="443LGHByldO" role="2ShVmc">
                                      <ref role="37wK5l" to="tj24:6QH_LDtcxgh" resolve="ModelTypeCache" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="443LGHByqV0" role="3cqZAp" />
                              <node concept="3cpWs8" id="443LGHBd5m9" role="3cqZAp">
                                <node concept="3cpWsn" id="443LGHBd5ma" role="3cpWs9">
                                  <property role="TrG5h" value="typesModelOwner" />
                                  <node concept="3uibUv" id="443LGHBd5m3" role="1tU5fm">
                                    <ref role="3uigEE" to="qox2:2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
                                  </node>
                                  <node concept="2OqwBi" id="443LGHBd5mb" role="33vP2m">
                                    <node concept="2YIFZM" id="443LGHBd5mc" role="2Oq$k0">
                                      <ref role="37wK5l" to="qox2:2zU3cYqxb_u" resolve="get" />
                                      <ref role="1Pybhc" to="qox2:2zU3cYqxbbL" resolve="TypesModelManager" />
                                      <node concept="2OqwBi" id="443LGHBd5md" role="37wK5m">
                                        <node concept="1jxXqW" id="443LGHBd5me" role="2Oq$k0" />
                                        <node concept="liA8E" id="443LGHBd5mf" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="443LGHBd5mg" role="2OqNvi">
                                      <ref role="37wK5l" to="qox2:2zU3cYq$52j" resolve="emptyModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="6QH_LDteuBg" role="3cqZAp">
                                <node concept="3cpWsn" id="6QH_LDteuBh" role="3cpWs9">
                                  <property role="TrG5h" value="typesModel" />
                                  <node concept="H_c77" id="6QH_LDteuBc" role="1tU5fm" />
                                  <node concept="2OqwBi" id="443LGHBd97r" role="33vP2m">
                                    <node concept="37vLTw" id="443LGHBd8QT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="443LGHBd5ma" resolve="typesModelOwner" />
                                    </node>
                                    <node concept="liA8E" id="443LGHBd9Gw" role="2OqNvi">
                                      <ref role="37wK5l" to="qox2:2zU3cYq$9HD" resolve="model" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="443LGHBdkrI" role="3cqZAp">
                                <node concept="2OqwBi" id="443LGHBdkO9" role="3clFbG">
                                  <node concept="37vLTw" id="443LGHBdkrG" role="2Oq$k0">
                                    <ref role="3cqZAo" node="443LGHBykAK" resolve="typeCache" />
                                  </node>
                                  <node concept="liA8E" id="443LGHBdlgw" role="2OqNvi">
                                    <ref role="37wK5l" to="tj24:6QH_LDtcxgx" resolve="setTypesModel" />
                                    <node concept="37vLTw" id="443LGHBdlWG" role="37wK5m">
                                      <ref role="3cqZAo" node="443LGHBd5ma" resolve="typesModelOwner" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="6QH_LDtewyr" role="3cqZAp">
                                <node concept="3cpWsn" id="6QH_LDtewys" role="3cpWs9">
                                  <property role="TrG5h" value="clsType" />
                                  <node concept="3Tqbb2" id="6QH_LDtewyh" role="1tU5fm">
                                    <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                                  </node>
                                  <node concept="2OqwBi" id="6QH_LDtewyt" role="33vP2m">
                                    <node concept="37vLTw" id="6QH_LDtewyu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6QH_LDteuBh" resolve="typesModel" />
                                    </node>
                                    <node concept="3BYIHo" id="6QH_LDtewyv" role="2OqNvi">
                                      <node concept="2ShNRf" id="6QH_LDtewyw" role="3BYIHq">
                                        <node concept="3zrR0B" id="6QH_LDtewyx" role="2ShVmc">
                                          <node concept="3Tqbb2" id="6QH_LDtewyy" role="3zrR0E">
                                            <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="6QH_LDtetXP" role="3cqZAp">
                                <node concept="37vLTI" id="6QH_LDteyw3" role="3clFbG">
                                  <node concept="37vLTw" id="14$_tTxzWyW" role="37vLTx">
                                    <ref role="3cqZAo" node="14$_tTxzPUC" resolve="cls" />
                                  </node>
                                  <node concept="2OqwBi" id="6QH_LDtewUA" role="37vLTJ">
                                    <node concept="37vLTw" id="6QH_LDtewyz" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6QH_LDtewys" resolve="clsType" />
                                    </node>
                                    <node concept="3TrEf2" id="6QH_LDtexF8" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="6QH_LDtetG2" role="3cqZAp" />
                              <node concept="3clFbF" id="6QH_LDtesyR" role="3cqZAp">
                                <node concept="2OqwBi" id="6QH_LDtesDH" role="3clFbG">
                                  <node concept="37vLTw" id="6QH_LDtesyP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="443LGHBykAK" resolve="typeCache" />
                                  </node>
                                  <node concept="liA8E" id="6QH_LDtesSt" role="2OqNvi">
                                    <ref role="37wK5l" to="tj24:6QH_LDtcYUC" resolve="putType" />
                                    <node concept="2OqwBi" id="6QH_LDteGcY" role="37wK5m">
                                      <node concept="2JrnkZ" id="6QH_LDteEw4" role="2Oq$k0">
                                        <node concept="37vLTw" id="14$_tTxzY11" role="2JrQYb">
                                          <ref role="3cqZAo" node="14$_tTxzPUC" resolve="cls" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="6QH_LDteGDm" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="6QH_LDte_a_" role="37wK5m">
                                      <ref role="3cqZAo" node="6QH_LDtewys" resolve="clsType" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="443LGHBypT4" role="3cqZAp">
                                <node concept="37vLTw" id="443LGHBypT2" role="3clFbG">
                                  <ref role="3cqZAo" node="443LGHBykAK" resolve="typeCache" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="443LGHByq9z" role="3cqZAp" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="14$_tTx$z38" role="3cqZAp" />
                  <node concept="2Hmddi" id="6QH_LDtdY5q" role="3cqZAp">
                    <node concept="37vLTw" id="6QH_LDtdYCG" role="2Hmdds">
                      <ref role="3cqZAo" node="6QH_LDtdXLK" resolve="typeCache2" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6QH_LDtdW91" role="3cqZAp" />
                  <node concept="3cpWs8" id="6QH_LDtdZNt" role="3cqZAp">
                    <node concept="3cpWsn" id="6QH_LDtdZNu" role="3cpWs9">
                      <property role="TrG5h" value="typesCache3" />
                      <node concept="3uibUv" id="443LGHByr8Z" role="1tU5fm">
                        <ref role="3uigEE" to="qox2:443LGHBxJ1f" resolve="TypecheckingCache.Clearable" />
                      </node>
                      <node concept="2OqwBi" id="6QH_LDtdZNv" role="33vP2m">
                        <node concept="37vLTw" id="6QH_LDtdZNw" role="2Oq$k0">
                          <ref role="3cqZAo" node="6QH_LDtdTgs" resolve="tc" />
                        </node>
                        <node concept="liA8E" id="6QH_LDtdZNx" role="2OqNvi">
                          <ref role="37wK5l" to="qox2:4Z$O9mrQJgp" resolve="cachedTypes" />
                          <node concept="2OqwBi" id="443LGHB5Q2V" role="37wK5m">
                            <node concept="2JrnkZ" id="443LGHB5Q2W" role="2Oq$k0">
                              <node concept="37vLTw" id="443LGHB5Q2X" role="2JrQYb">
                                <ref role="3cqZAo" node="14$_tTxzUrh" resolve="unit" />
                              </node>
                            </node>
                            <node concept="liA8E" id="443LGHB5Q2Y" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vMLTj" id="6QH_LDte06l" role="3cqZAp">
                    <node concept="37vLTw" id="6QH_LDte0h9" role="3tpDZB">
                      <ref role="3cqZAo" node="6QH_LDtdXLK" resolve="typeCache2" />
                    </node>
                    <node concept="37vLTw" id="6QH_LDte0rc" role="3tpDZA">
                      <ref role="3cqZAo" node="6QH_LDtdZNu" resolve="typesCache3" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6QH_LDteGYQ" role="3cqZAp" />
                  <node concept="3cpWs8" id="6QH_LDteITH" role="3cqZAp">
                    <node concept="3cpWsn" id="6QH_LDteITI" role="3cpWs9">
                      <property role="TrG5h" value="typeOfFoo" />
                      <node concept="3Tqbb2" id="6QH_LDteITC" role="1tU5fm" />
                      <node concept="2OqwBi" id="6QH_LDteITJ" role="33vP2m">
                        <node concept="1eOMI4" id="443LGHByrov" role="2Oq$k0">
                          <node concept="10QFUN" id="443LGHByros" role="1eOMHV">
                            <node concept="3uibUv" id="443LGHByrB9" role="10QFUM">
                              <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
                            </node>
                            <node concept="37vLTw" id="443LGHByrox" role="10QFUP">
                              <ref role="3cqZAo" node="6QH_LDtdZNu" resolve="typesCache3" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6QH_LDteITL" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:6QH_LDtffJj" resolve="typeOf" />
                          <node concept="2OqwBi" id="443LGHBdJJ$" role="37wK5m">
                            <node concept="2JrnkZ" id="443LGHBdJjh" role="2Oq$k0">
                              <node concept="37vLTw" id="14$_tTxzWlq" role="2JrQYb">
                                <ref role="3cqZAo" node="14$_tTxzPUC" resolve="cls" />
                              </node>
                            </node>
                            <node concept="liA8E" id="443LGHBdKCp" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vwNmj" id="6QH_LDteJJk" role="3cqZAp">
                    <node concept="2YFouu" id="6QH_LDtfLOH" role="3vwVQn">
                      <node concept="37vLTw" id="6QH_LDtfLOI" role="3uHU7w">
                        <ref role="3cqZAo" node="6QH_LDteITI" resolve="typeOfFoo" />
                      </node>
                      <node concept="2c44tf" id="6QH_LDtfLOJ" role="3uHU7B">
                        <node concept="3uibUv" id="6QH_LDtfLOK" role="2c44tc">
                          <node concept="2c44tb" id="6QH_LDtfLOL" role="lGtFl">
                            <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107535904670/1107535924139" />
                            <property role="2qtEX8" value="classifier" />
                            <property role="3hQQBS" value="ClassifierType" />
                            <node concept="37vLTw" id="14$_tTxzWkW" role="2c44t1">
                              <ref role="3cqZAo" node="14$_tTxzPUC" resolve="cls" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="443LGHBypkG" role="3cqZAp" />
                </node>
                <node concept="3clFbS" id="14$_tTx$j9N" role="2GVbov">
                  <node concept="3clFbF" id="14$_tTxAMey" role="3cqZAp">
                    <node concept="2YIFZM" id="443LGHBoCcb" role="3clFbG">
                      <ref role="37wK5l" to="qox2:14$_tTxAmT8" resolve="dispose" />
                      <ref role="1Pybhc" to="qox2:4Z$O9mrQIzY" resolve="TypecheckingCache" />
                      <node concept="37vLTw" id="14$_tTxAP4p" role="37wK5m">
                        <ref role="3cqZAo" node="14$_tTxzTDw" resolve="modelRepo" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="14$_tTx$kBI" role="3cqZAp">
                    <node concept="2YIFZM" id="14$_tTx$kBJ" role="3clFbG">
                      <ref role="1Pybhc" to="qox2:2zU3cYqxbbL" resolve="TypesModelManager" />
                      <ref role="37wK5l" to="qox2:2zU3cYqyg2V" resolve="dispose" />
                      <node concept="37vLTw" id="14$_tTx$kBK" role="37wK5m">
                        <ref role="3cqZAo" node="14$_tTxzTDw" resolve="modelRepo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="14$_tTx$1gb" role="ukAjM">
            <node concept="1jxXqW" id="14$_tTx$0Xb" role="2Oq$k0" />
            <node concept="liA8E" id="14$_tTx$20w" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6$7vuu2u9rP">
    <property role="TrG5h" value="TypecheckingFacade" />
    <property role="3OwPAg" value="true" />
    <property role="26Nn1l" value="true" />
    <node concept="1LZb2c" id="6$7vuu2ubul" role="1SL9yI">
      <property role="TrG5h" value="typecheckingSteps" />
      <node concept="3cqZAl" id="6$7vuu2ubum" role="3clF45" />
      <node concept="3clFbS" id="6$7vuu2ubuq" role="3clF47">
        <node concept="1QHqEK" id="4BHjwwGUr4u" role="3cqZAp">
          <node concept="1QHqEC" id="4BHjwwGUr4w" role="1QHqEI">
            <node concept="3clFbS" id="4BHjwwGUr4y" role="1bW5cS">
              <node concept="3cpWs8" id="4BHjwwGUyPL" role="3cqZAp">
                <node concept="3cpWsn" id="4BHjwwGUyPM" role="3cpWs9">
                  <property role="TrG5h" value="cls" />
                  <node concept="3Tqbb2" id="4BHjwwGUySV" role="1tU5fm" />
                  <node concept="2OqwBi" id="4BHjwwGUyPN" role="33vP2m">
                    <node concept="1N_AGu" id="4BHjwwGUyPO" role="2Oq$k0">
                      <ref role="1N_AGt" to="tlxd:6$7vuu2uamo" resolve="Foo" />
                    </node>
                    <node concept="liA8E" id="4BHjwwGUyPP" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                      <node concept="2OqwBi" id="4BHjwwGUyPQ" role="37wK5m">
                        <node concept="1jxXqW" id="4BHjwwGUyPR" role="2Oq$k0" />
                        <node concept="liA8E" id="4BHjwwGUyPS" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="14$_tTxzuR6" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxzuR7" role="3cpWs9">
                  <property role="TrG5h" value="modelRepo" />
                  <node concept="3uibUv" id="14$_tTxzuQX" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="2OqwBi" id="14$_tTxzuR8" role="33vP2m">
                    <node concept="2JrnkZ" id="14$_tTxzuR9" role="2Oq$k0">
                      <node concept="2OqwBi" id="14$_tTxzuRa" role="2JrQYb">
                        <node concept="37vLTw" id="14$_tTxzuRb" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BHjwwGUyPM" resolve="cls" />
                        </node>
                        <node concept="I4A8Y" id="14$_tTxzuRc" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="14$_tTxzuRd" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="14$_tTxzzvw" role="3cqZAp" />
              <node concept="3cpWs8" id="6$7vuu2ugt2" role="3cqZAp">
                <node concept="3cpWsn" id="6$7vuu2ugt3" role="3cpWs9">
                  <property role="TrG5h" value="tplApp" />
                  <node concept="3uibUv" id="6$7vuu2ugsZ" role="1tU5fm">
                    <ref role="3uigEE" to="tj24:3GlpCDSxTG7" resolve="TypecheckingTemplates" />
                  </node>
                  <node concept="2ShNRf" id="6$7vuu2ugt4" role="33vP2m">
                    <node concept="1pGfFk" id="6$7vuu2ugt5" role="2ShVmc">
                      <ref role="37wK5l" to="tj24:3GlpCDSychS" resolve="TypecheckingTemplates" />
                      <node concept="37vLTw" id="14$_tTxzmFL" role="37wK5m">
                        <ref role="3cqZAo" node="14$_tTxzuR7" resolve="modelRepo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6$7vuu2ujxQ" role="3cqZAp">
                <node concept="3cpWsn" id="6$7vuu2ujxR" role="3cpWs9">
                  <property role="TrG5h" value="res" />
                  <node concept="3uibUv" id="6$7vuu2ujxH" role="1tU5fm">
                    <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
                  </node>
                  <node concept="2OqwBi" id="6$7vuu2ujxS" role="33vP2m">
                    <node concept="37vLTw" id="6$7vuu2ujxT" role="2Oq$k0">
                      <ref role="3cqZAo" node="6$7vuu2ugt3" resolve="tplApp" />
                    </node>
                    <node concept="liA8E" id="6$7vuu2ujxU" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:3GlpCDSxTKz" resolve="applyTemplates" />
                      <node concept="2OqwBi" id="6$7vuu2ujxV" role="37wK5m">
                        <node concept="37vLTw" id="4BHjwwGVaCH" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BHjwwGUyPM" resolve="cls" />
                        </node>
                        <node concept="2Rxl7S" id="6$7vuu2ujxX" role="2OqNvi" />
                      </node>
                      <node concept="Xl_RD" id="6$7vuu2ujxY" role="37wK5m">
                        <property role="Xl_RC" value="test" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3vwNmj" id="6$7vuu2usrD" role="3cqZAp">
                <node concept="2OqwBi" id="6$7vuu2usrE" role="3vwVQn">
                  <node concept="37vLTw" id="6$7vuu2usrF" role="2Oq$k0">
                    <ref role="3cqZAo" node="6$7vuu2ujxR" resolve="res" />
                  </node>
                  <node concept="liA8E" id="6$7vuu2usrG" role="2OqNvi">
                    <ref role="37wK5l" to="hano:7Oc59RS_hsj" resolve="isSuccessful" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4BHjwwGU$9d" role="3cqZAp" />
              <node concept="3cpWs8" id="6QH_LDtbV5P" role="3cqZAp">
                <node concept="3cpWsn" id="6QH_LDtbV5Q" role="3cpWs9">
                  <property role="TrG5h" value="evaluator" />
                  <node concept="3uibUv" id="6QH_LDtbV5R" role="1tU5fm">
                    <ref role="3uigEE" to="hano:41ox5Vnk76a" resolve="ProgramEvaluator" />
                  </node>
                  <node concept="2ShNRf" id="6QH_LDtbV5S" role="33vP2m">
                    <node concept="1pGfFk" id="6QH_LDtbV5T" role="2ShVmc">
                      <ref role="37wK5l" to="hano:HV6urVFjOl" resolve="ProgramEvaluator" />
                      <node concept="2ShNRf" id="6QH_LDtbV5U" role="37wK5m">
                        <node concept="1pGfFk" id="6QH_LDtbV5V" role="2ShVmc">
                          <ref role="37wK5l" to="cxk7:3F6vMxqo1c$" resolve="DefaultSessionSolver" />
                          <node concept="2OqwBi" id="6QH_LDtbV5W" role="37wK5m">
                            <node concept="37vLTw" id="6QH_LDtbV5X" role="2Oq$k0">
                              <ref role="3cqZAo" node="6$7vuu2ugt3" resolve="tplApp" />
                            </node>
                            <node concept="liA8E" id="6QH_LDtbV5Y" role="2OqNvi">
                              <ref role="37wK5l" to="tj24:3GlpCDSyRnn" resolve="getExpressionSolver" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3F6vMxqjuT0" role="3cqZAp">
                <node concept="2OqwBi" id="3F6vMxqjuT1" role="3clFbG">
                  <node concept="10M0yZ" id="5cDlfXt5oVE" role="2Oq$k0">
                    <ref role="3cqZAo" to="zx3l:~EvaluationSessionImpl.Companion" resolve="Companion" />
                    <ref role="1PxDUh" to="zx3l:~EvaluationSessionImpl" resolve="EvaluationSessionImpl" />
                  </node>
                  <node concept="liA8E" id="3F6vMxqjuT3" role="2OqNvi">
                    <ref role="37wK5l" to="zx3l:~EvaluationSessionImpl$Companion.init():void" resolve="init" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4BHjwwGUJFm" role="3cqZAp" />
              <node concept="2GUZhq" id="6$7vuu2uPZO" role="3cqZAp">
                <node concept="3clFbS" id="6$7vuu2uPZQ" role="2GV8ay">
                  <node concept="3cpWs8" id="6QH_LDtbV6a" role="3cqZAp">
                    <node concept="3cpWsn" id="6QH_LDtbV6b" role="3cpWs9">
                      <property role="TrG5h" value="res2" />
                      <node concept="3uibUv" id="6QH_LDtbV6c" role="1tU5fm">
                        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
                      </node>
                      <node concept="2YIFZM" id="1CcQBrQs0eX" role="33vP2m">
                        <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
                        <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                      </node>
                    </node>
                  </node>
                  <node concept="1DcWWT" id="1CcQBrQrTBa" role="3cqZAp">
                    <node concept="3clFbS" id="1CcQBrQrTBd" role="2LFqv$">
                      <node concept="3cpWs8" id="6QH_LDtbV5I" role="3cqZAp">
                        <node concept="3cpWsn" id="6QH_LDtbV5J" role="3cpWs9">
                          <property role="TrG5h" value="config" />
                          <node concept="3uibUv" id="6QH_LDtbV5K" role="1tU5fm">
                            <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
                          </node>
                          <node concept="2YIFZM" id="6QH_LDtbV5L" role="33vP2m">
                            <ref role="37wK5l" to="w7la:~EvaluationSession.newSession(jetbrains.mps.logic.reactor.program.Program):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="newSession" />
                            <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                            <node concept="37vLTw" id="1CcQBrQrWi4" role="37wK5m">
                              <ref role="3cqZAo" node="1CcQBrQrTBe" resolve="program" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CcQBrQrYPT" role="3cqZAp">
                        <node concept="37vLTI" id="1CcQBrQrYPV" role="3clFbG">
                          <node concept="37vLTw" id="1CcQBrQrYPZ" role="37vLTJ">
                            <ref role="3cqZAo" node="6QH_LDtbV6b" resolve="res2" />
                          </node>
                          <node concept="2OqwBi" id="1CcQBrQs3mU" role="37vLTx">
                            <node concept="37vLTw" id="1CcQBrQs3e7" role="2Oq$k0">
                              <ref role="3cqZAo" node="6QH_LDtbV6b" resolve="res2" />
                            </node>
                            <node concept="liA8E" id="1CcQBrQs3tX" role="2OqNvi">
                              <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                              <node concept="2OqwBi" id="6QH_LDtbV6d" role="37wK5m">
                                <node concept="37vLTw" id="6QH_LDtbV6e" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6QH_LDtbV5Q" resolve="evaluator" />
                                </node>
                                <node concept="liA8E" id="6QH_LDtbV6f" role="2OqNvi">
                                  <ref role="37wK5l" to="hano:HV6urVFrQ9" resolve="eval" />
                                  <node concept="37vLTw" id="6QH_LDtbV6g" role="37wK5m">
                                    <ref role="3cqZAo" node="6QH_LDtbV5J" resolve="config" />
                                  </node>
                                  <node concept="10M0yZ" id="6QH_LDtbV6h" role="37wK5m">
                                    <ref role="1PxDUh" to="yg8f:qubcdtxBiR" resolve="EvaluationTraceExt" />
                                    <ref role="3cqZAo" to="yg8f:24Vro6cS5rK" resolve="NULL" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="1CcQBrQrTBe" role="1Duv9x">
                      <property role="TrG5h" value="program" />
                      <node concept="3uibUv" id="1CcQBrQrTBi" role="1tU5fm">
                        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1CcQBrQrTBj" role="1DdaDG">
                      <node concept="37vLTw" id="1CcQBrQrTBk" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$7vuu2ugt3" resolve="tplApp" />
                      </node>
                      <node concept="liA8E" id="1CcQBrQrTBl" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:3GlpCDSyO$P" resolve="getPrograms" />
                      </node>
                    </node>
                  </node>
                  <node concept="3vwNmj" id="6$7vuu2uk9h" role="3cqZAp">
                    <node concept="2OqwBi" id="6$7vuu2uktV" role="3vwVQn">
                      <node concept="37vLTw" id="6$7vuu2ut7B" role="2Oq$k0">
                        <ref role="3cqZAo" node="6QH_LDtbV6b" resolve="res2" />
                      </node>
                      <node concept="liA8E" id="6$7vuu2ukRI" role="2OqNvi">
                        <ref role="37wK5l" to="hano:7Oc59RS_hsj" resolve="isSuccessful" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4BHjwwGUGNB" role="3cqZAp" />
                  <node concept="3cpWs8" id="1CcQBrQng1x" role="3cqZAp">
                    <node concept="3cpWsn" id="1CcQBrQng1y" role="3cpWs9">
                      <property role="TrG5h" value="types" />
                      <node concept="3uibUv" id="1CcQBrQng1v" role="1tU5fm">
                        <ref role="3uigEE" to="tj24:6HT7BWBSFOV" resolve="TypeCollector" />
                      </node>
                      <node concept="2ShNRf" id="1CcQBrQng1z" role="33vP2m">
                        <node concept="1pGfFk" id="1CcQBrQng1$" role="2ShVmc">
                          <ref role="37wK5l" to="tj24:1CcQBrQmOiH" resolve="TypeCollector" />
                          <node concept="2OqwBi" id="1CcQBrQskR9" role="37wK5m">
                            <node concept="37vLTw" id="1CcQBrQskRa" role="2Oq$k0">
                              <ref role="3cqZAo" node="6QH_LDtbV5Q" resolve="evaluator" />
                            </node>
                            <node concept="liA8E" id="1CcQBrQskRb" role="2OqNvi">
                              <ref role="37wK5l" to="hano:5cnt3vh3pb_" resolve="storeView" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="14$_tTxxHOq" role="3cqZAp" />
                  <node concept="3cpWs8" id="14$_tTxxmeg" role="3cqZAp">
                    <node concept="3cpWsn" id="14$_tTxxmeh" role="3cpWs9">
                      <property role="TrG5h" value="varo" />
                      <node concept="3Tqbb2" id="14$_tTxxmed" role="1tU5fm">
                        <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                      </node>
                      <node concept="3fl2lp" id="14$_tTxxmei" role="33vP2m">
                        <ref role="3fl3PK" to="tlxd:14$_tTxxemt" resolve="o" />
                        <node concept="3fl2lp" id="14$_tTxxmej" role="3fl3PI">
                          <ref role="3fl3PK" to="tlxd:6$7vuu2uaoc" resolve="bar" />
                          <node concept="3B5_sB" id="14$_tTxxmek" role="3fl3PI">
                            <ref role="3B5MYn" to="tlxd:6$7vuu2uamo" resolve="Foo" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vwNmj" id="14$_tTxxtZU" role="3cqZAp">
                    <node concept="2YFouu" id="14$_tTxxtZV" role="3vwVQn">
                      <node concept="2c44tf" id="14$_tTxxtZW" role="3uHU7B">
                        <node concept="3uibUv" id="14$_tTxxtZX" role="2c44tc">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="14$_tTxxtZY" role="3uHU7w">
                        <node concept="37vLTw" id="14$_tTxxtZZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1CcQBrQng1y" resolve="types" />
                        </node>
                        <node concept="liA8E" id="14$_tTxxu00" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1CcQBrQmO_H" resolve="typeNode" />
                          <node concept="2OqwBi" id="14$_tTxxu01" role="37wK5m">
                            <node concept="2JrnkZ" id="14$_tTxxu02" role="2Oq$k0">
                              <node concept="2OqwBi" id="14$_tTxxDge" role="2JrQYb">
                                <node concept="37vLTw" id="14$_tTxxC04" role="2Oq$k0">
                                  <ref role="3cqZAo" node="14$_tTxxmeh" resolve="varo" />
                                </node>
                                <node concept="3TrEf2" id="14$_tTxxG5i" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="14$_tTxxu0e" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1CcQBrQslUW" role="3cqZAp" />
                </node>
                <node concept="3clFbS" id="6$7vuu2uPZR" role="2GVbov">
                  <node concept="3clFbF" id="6$7vuu2uR6h" role="3cqZAp">
                    <node concept="2OqwBi" id="6$7vuu2uR6i" role="3clFbG">
                      <node concept="10M0yZ" id="5cDlfXt5oWB" role="2Oq$k0">
                        <ref role="3cqZAo" to="zx3l:~EvaluationSessionImpl.Companion" resolve="Companion" />
                        <ref role="1PxDUh" to="zx3l:~EvaluationSessionImpl" resolve="EvaluationSessionImpl" />
                      </node>
                      <node concept="liA8E" id="6$7vuu2uR6k" role="2OqNvi">
                        <ref role="37wK5l" to="zx3l:~EvaluationSessionImpl$Companion.deinit():void" resolve="deinit" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4BHjwwGV8Ht" role="ukAjM">
            <node concept="1jxXqW" id="4BHjwwGV81_" role="2Oq$k0" />
            <node concept="liA8E" id="4BHjwwGVaBV" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6$7vuu2wFYI" role="1SL9yI">
      <property role="TrG5h" value="typecheckingFacade" />
      <node concept="3cqZAl" id="6$7vuu2wFYJ" role="3clF45" />
      <node concept="3clFbS" id="6$7vuu2wFYN" role="3clF47">
        <node concept="1QHqEK" id="14$_tTxxKuC" role="3cqZAp">
          <node concept="1QHqEC" id="14$_tTxxKuE" role="1QHqEI">
            <node concept="3clFbS" id="14$_tTxxKuG" role="1bW5cS">
              <node concept="3cpWs8" id="14$_tTxxL$m" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxxL$n" role="3cpWs9">
                  <property role="TrG5h" value="cls" />
                  <node concept="3Tqbb2" id="14$_tTxxL$o" role="1tU5fm" />
                  <node concept="2OqwBi" id="14$_tTxxL$p" role="33vP2m">
                    <node concept="1N_AGu" id="14$_tTxxL$q" role="2Oq$k0">
                      <ref role="1N_AGt" to="tlxd:6$7vuu2uamo" resolve="Foo" />
                    </node>
                    <node concept="liA8E" id="14$_tTxxL$r" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                      <node concept="2OqwBi" id="14$_tTxxL$s" role="37wK5m">
                        <node concept="1jxXqW" id="14$_tTxxL$t" role="2Oq$k0" />
                        <node concept="liA8E" id="14$_tTxxL$u" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="14$_tTxzzxG" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxzzxH" role="3cpWs9">
                  <property role="TrG5h" value="modelRepo" />
                  <node concept="3uibUv" id="14$_tTxzzxI" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="2OqwBi" id="14$_tTxzzxJ" role="33vP2m">
                    <node concept="2JrnkZ" id="14$_tTxzzxK" role="2Oq$k0">
                      <node concept="2OqwBi" id="14$_tTxzzxL" role="2JrQYb">
                        <node concept="37vLTw" id="14$_tTxzzxM" role="2Oq$k0">
                          <ref role="3cqZAo" node="14$_tTxxL$n" resolve="cls" />
                        </node>
                        <node concept="I4A8Y" id="14$_tTxzzxN" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="14$_tTxzzxO" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="14$_tTxzzxP" role="3cqZAp" />
              <node concept="3cpWs8" id="14$_tTxxQ5h" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxxQ5i" role="3cpWs9">
                  <property role="TrG5h" value="varo" />
                  <node concept="3Tqbb2" id="14$_tTxxQ5j" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                  </node>
                  <node concept="3fl2lp" id="14$_tTxxQ5k" role="33vP2m">
                    <ref role="3fl3PK" to="tlxd:14$_tTxxemt" resolve="o" />
                    <node concept="3fl2lp" id="14$_tTxxQ5l" role="3fl3PI">
                      <ref role="3fl3PK" to="tlxd:6$7vuu2uaoc" resolve="bar" />
                      <node concept="3B5_sB" id="14$_tTxxQ5m" role="3fl3PI">
                        <ref role="3B5MYn" to="tlxd:6$7vuu2uamo" resolve="Foo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2GUZhq" id="6$7vuu2xvuu" role="3cqZAp">
                <node concept="3clFbS" id="6$7vuu2xvuw" role="2GV8ay">
                  <node concept="3clFbH" id="6$7vuu2xEii" role="3cqZAp" />
                  <node concept="3cpWs8" id="6$7vuu2wZdq" role="3cqZAp">
                    <node concept="3cpWsn" id="6$7vuu2wZdr" role="3cpWs9">
                      <property role="TrG5h" value="typeOfExpr" />
                      <node concept="3Tqbb2" id="6$7vuu2wZdp" role="1tU5fm" />
                      <node concept="2OqwBi" id="6$7vuu2wZds" role="33vP2m">
                        <node concept="2YIFZM" id="55Q$YFtvvQc" role="2Oq$k0">
                          <ref role="37wK5l" to="tj24:7kaxm0sEy4A" resolve="getInstance" />
                          <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingFacade" />
                        </node>
                        <node concept="liA8E" id="6$7vuu2wZdu" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:7kaxm0sEBHs" resolve="typeOf" />
                          <node concept="2OqwBi" id="14$_tTxxSAt" role="37wK5m">
                            <node concept="37vLTw" id="14$_tTxxSjJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="14$_tTxxQ5i" resolve="varo" />
                            </node>
                            <node concept="3TrEf2" id="14$_tTxxUsB" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vwNmj" id="6$7vuu2wZgV" role="3cqZAp">
                    <node concept="2YFouu" id="6$7vuu2wZgW" role="3vwVQn">
                      <node concept="2c44tf" id="6$7vuu2wZh3" role="3uHU7B">
                        <node concept="3uibUv" id="6$7vuu2wZh4" role="2c44tc">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6$7vuu2x1Qn" role="3uHU7w">
                        <ref role="3cqZAo" node="6$7vuu2wZdr" resolve="typeOfExpr" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="14$_tTxxOY7" role="3cqZAp" />
                  <node concept="3cpWs8" id="6$7vuu2xGoA" role="3cqZAp">
                    <node concept="3cpWsn" id="6$7vuu2xGoB" role="3cpWs9">
                      <property role="TrG5h" value="typeOfExpr2" />
                      <node concept="3Tqbb2" id="6$7vuu2xGoC" role="1tU5fm" />
                      <node concept="2OqwBi" id="6$7vuu2xGoD" role="33vP2m">
                        <node concept="2YIFZM" id="55Q$YFtvvQd" role="2Oq$k0">
                          <ref role="37wK5l" to="tj24:7kaxm0sEy4A" resolve="getInstance" />
                          <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingFacade" />
                        </node>
                        <node concept="liA8E" id="6$7vuu2xGoF" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:7kaxm0sEBHs" resolve="typeOf" />
                          <node concept="2OqwBi" id="14$_tTxxVJD" role="37wK5m">
                            <node concept="37vLTw" id="14$_tTxxVJE" role="2Oq$k0">
                              <ref role="3cqZAo" node="14$_tTxxQ5i" resolve="varo" />
                            </node>
                            <node concept="3TrEf2" id="14$_tTxxVJF" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vMLTj" id="6$7vuu2xH$g" role="3cqZAp">
                    <node concept="37vLTw" id="6$7vuu2xIBQ" role="3tpDZB">
                      <ref role="3cqZAo" node="6$7vuu2wZdr" resolve="typeOfExpr" />
                    </node>
                    <node concept="37vLTw" id="6$7vuu2xJDk" role="3tpDZA">
                      <ref role="3cqZAo" node="6$7vuu2xGoB" resolve="typeOfExpr2" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6$7vuu2xDxg" role="3cqZAp" />
                </node>
                <node concept="3clFbS" id="6$7vuu2xvux" role="2GVbov">
                  <node concept="3clFbF" id="14$_tTxAR_w" role="3cqZAp">
                    <node concept="2YIFZM" id="443LGHBoCca" role="3clFbG">
                      <ref role="37wK5l" to="qox2:14$_tTxAmT8" resolve="dispose" />
                      <ref role="1Pybhc" to="qox2:4Z$O9mrQIzY" resolve="TypecheckingCache" />
                      <node concept="37vLTw" id="14$_tTxAR_y" role="37wK5m">
                        <ref role="3cqZAo" node="14$_tTxzzxH" resolve="modelRepo" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6$7vuu2xDxB" role="3cqZAp">
                    <node concept="2YIFZM" id="6$7vuu2xD$t" role="3clFbG">
                      <ref role="37wK5l" to="qox2:2zU3cYqyg2V" resolve="dispose" />
                      <ref role="1Pybhc" to="qox2:2zU3cYqxbbL" resolve="TypesModelManager" />
                      <node concept="37vLTw" id="14$_tTxz_y9" role="37wK5m">
                        <ref role="3cqZAo" node="14$_tTxzzxH" resolve="modelRepo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="14$_tTxxK$x" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="14$_tTxy4GA" role="ukAjM">
            <node concept="1jxXqW" id="14$_tTxy3dO" role="2Oq$k0" />
            <node concept="liA8E" id="14$_tTxy5mA" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="3u5wJtboAn" role="1SL9yI">
      <property role="TrG5h" value="typeOf" />
      <node concept="3cqZAl" id="3u5wJtboAo" role="3clF45" />
      <node concept="3clFbS" id="3u5wJtboAs" role="3clF47">
        <node concept="1QHqEK" id="14$_tTxy29I" role="3cqZAp">
          <node concept="1QHqEC" id="14$_tTxy29K" role="1QHqEI">
            <node concept="3clFbS" id="14$_tTxy29M" role="1bW5cS">
              <node concept="3cpWs8" id="14$_tTxycDZ" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxycE0" role="3cpWs9">
                  <property role="TrG5h" value="cls" />
                  <node concept="3Tqbb2" id="14$_tTxycE1" role="1tU5fm" />
                  <node concept="2OqwBi" id="14$_tTxycE2" role="33vP2m">
                    <node concept="1N_AGu" id="14$_tTxycE3" role="2Oq$k0">
                      <ref role="1N_AGt" to="tlxd:6$7vuu2uamo" resolve="Foo" />
                    </node>
                    <node concept="liA8E" id="14$_tTxycE4" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                      <node concept="2OqwBi" id="14$_tTxycE5" role="37wK5m">
                        <node concept="1jxXqW" id="14$_tTxycE6" role="2Oq$k0" />
                        <node concept="liA8E" id="14$_tTxycE7" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="14$_tTxz_CF" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxz_CG" role="3cpWs9">
                  <property role="TrG5h" value="modelRepo" />
                  <node concept="3uibUv" id="14$_tTxz_CH" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="2OqwBi" id="14$_tTxz_CI" role="33vP2m">
                    <node concept="2JrnkZ" id="14$_tTxz_CJ" role="2Oq$k0">
                      <node concept="2OqwBi" id="14$_tTxz_CK" role="2JrQYb">
                        <node concept="37vLTw" id="14$_tTxz_CL" role="2Oq$k0">
                          <ref role="3cqZAo" node="14$_tTxycE0" resolve="cls" />
                        </node>
                        <node concept="I4A8Y" id="14$_tTxz_CM" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="14$_tTxz_CN" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="14$_tTxz_CO" role="3cqZAp" />
              <node concept="3cpWs8" id="14$_tTxycE8" role="3cqZAp">
                <node concept="3cpWsn" id="14$_tTxycE9" role="3cpWs9">
                  <property role="TrG5h" value="varo" />
                  <node concept="3Tqbb2" id="14$_tTxycEa" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                  </node>
                  <node concept="3fl2lp" id="14$_tTxycEb" role="33vP2m">
                    <ref role="3fl3PK" to="tlxd:14$_tTxxemt" resolve="o" />
                    <node concept="3fl2lp" id="14$_tTxycEc" role="3fl3PI">
                      <ref role="3fl3PK" to="tlxd:6$7vuu2uaoc" resolve="bar" />
                      <node concept="3B5_sB" id="14$_tTxycEd" role="3fl3PI">
                        <ref role="3B5MYn" to="tlxd:6$7vuu2uamo" resolve="Foo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2GUZhq" id="3u5wJtbtkT" role="3cqZAp">
                <node concept="3clFbS" id="3u5wJtbtkV" role="2GV8ay">
                  <node concept="3cpWs8" id="3u5wJtbznu" role="3cqZAp">
                    <node concept="3cpWsn" id="3u5wJtbznv" role="3cpWs9">
                      <property role="TrG5h" value="typeOfExpr" />
                      <node concept="3Tqbb2" id="3u5wJtbznr" role="1tU5fm" />
                      <node concept="2OqwBi" id="3u5wJtbznw" role="33vP2m">
                        <node concept="2OqwBi" id="14$_tTxye4f" role="2Oq$k0">
                          <node concept="37vLTw" id="14$_tTxydMC" role="2Oq$k0">
                            <ref role="3cqZAo" node="14$_tTxycE9" resolve="varo" />
                          </node>
                          <node concept="3TrEf2" id="14$_tTxyfVz" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                          </node>
                        </node>
                        <node concept="2W$R8B" id="3u5wJtbzny" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3vwNmj" id="3u5wJtb$z3" role="3cqZAp">
                    <node concept="2YFouu" id="3u5wJtb$z4" role="3vwVQn">
                      <node concept="2c44tf" id="3u5wJtb$z5" role="3uHU7B">
                        <node concept="3uibUv" id="3u5wJtb$z6" role="2c44tc">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3u5wJtb$z7" role="3uHU7w">
                        <ref role="3cqZAo" node="3u5wJtbznv" resolve="typeOfExpr" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="3u5wJtb$yQ" role="3cqZAp" />
                  <node concept="3cpWs8" id="3u5wJtbATo" role="3cqZAp">
                    <node concept="3cpWsn" id="3u5wJtbATp" role="3cpWs9">
                      <property role="TrG5h" value="typeOfExpr2" />
                      <node concept="3Tqbb2" id="3u5wJtbATq" role="1tU5fm" />
                      <node concept="2OqwBi" id="3u5wJtbATr" role="33vP2m">
                        <node concept="2OqwBi" id="14$_tTxygln" role="2Oq$k0">
                          <node concept="37vLTw" id="14$_tTxyg4F" role="2Oq$k0">
                            <ref role="3cqZAo" node="14$_tTxycE9" resolve="varo" />
                          </node>
                          <node concept="3TrEf2" id="14$_tTxyh9l" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                          </node>
                        </node>
                        <node concept="2W$R8B" id="3u5wJtbATt" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3vMLTj" id="3u5wJtbAXi" role="3cqZAp">
                    <node concept="37vLTw" id="3u5wJtbAXj" role="3tpDZB">
                      <ref role="3cqZAo" node="3u5wJtbznv" resolve="typeOfExpr" />
                    </node>
                    <node concept="37vLTw" id="3u5wJtbAXk" role="3tpDZA">
                      <ref role="3cqZAo" node="3u5wJtbATp" resolve="typeOfExpr2" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="3u5wJtbAWB" role="3cqZAp" />
                </node>
                <node concept="3clFbS" id="3u5wJtbtkW" role="2GVbov">
                  <node concept="3clFbF" id="14$_tTxAQ_B" role="3cqZAp">
                    <node concept="2YIFZM" id="443LGHBoCc9" role="3clFbG">
                      <ref role="37wK5l" to="qox2:14$_tTxAmT8" resolve="dispose" />
                      <ref role="1Pybhc" to="qox2:4Z$O9mrQIzY" resolve="TypecheckingCache" />
                      <node concept="37vLTw" id="14$_tTxAQ_D" role="37wK5m">
                        <ref role="3cqZAo" node="14$_tTxz_CG" resolve="modelRepo" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3u5wJtbv_Y" role="3cqZAp">
                    <node concept="2YIFZM" id="3u5wJtbv_Z" role="3clFbG">
                      <ref role="1Pybhc" to="qox2:2zU3cYqxbbL" resolve="TypesModelManager" />
                      <ref role="37wK5l" to="qox2:2zU3cYqyg2V" resolve="dispose" />
                      <node concept="37vLTw" id="14$_tTxzB2G" role="37wK5m">
                        <ref role="3cqZAo" node="14$_tTxz_CG" resolve="modelRepo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="14$_tTxy6$j" role="ukAjM">
            <node concept="1jxXqW" id="14$_tTxy6oh" role="2Oq$k0" />
            <node concept="liA8E" id="14$_tTxy86J" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="4nxCIBqxR0M">
    <property role="TrG5h" value="SampleTypeAspect" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="7y50OW6TxjM" role="1SL9yI">
      <property role="TrG5h" value="typechecking" />
      <node concept="3uibUv" id="4BHjwwGTD0T" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3cqZAl" id="7y50OW6TxjN" role="3clF45" />
      <node concept="3clFbS" id="7y50OW6TxjR" role="3clF47">
        <node concept="3cpWs8" id="4BHjwwGTLX5" role="3cqZAp">
          <node concept="3cpWsn" id="4BHjwwGTLX6" role="3cpWs9">
            <property role="TrG5h" value="test" />
            <node concept="3Tqbb2" id="4BHjwwGTLX4" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="4BHjwwGTNou" role="3cqZAp">
          <node concept="1QHqEC" id="4BHjwwGTNow" role="1QHqEI">
            <node concept="3clFbS" id="4BHjwwGTNoy" role="1bW5cS">
              <node concept="3clFbF" id="4BHjwwGTMEi" role="3cqZAp">
                <node concept="37vLTI" id="4BHjwwGTMEk" role="3clFbG">
                  <node concept="1PxgMI" id="14$_tTxAWx6" role="37vLTx">
                    <node concept="chp4Y" id="14$_tTxAWHD" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                    </node>
                    <node concept="2OqwBi" id="14$_tTxAVKJ" role="1m5AlR">
                      <node concept="1N_AGu" id="14$_tTxAVtV" role="2Oq$k0">
                        <ref role="1N_AGt" to="tlxd:4nxCIBqyl_d" resolve="Test" />
                      </node>
                      <node concept="liA8E" id="14$_tTxAW0F" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                        <node concept="2OqwBi" id="14$_tTxAW4A" role="37wK5m">
                          <node concept="1jxXqW" id="14$_tTxAW4B" role="2Oq$k0" />
                          <node concept="liA8E" id="14$_tTxAW4C" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4BHjwwGTMEo" role="37vLTJ">
                    <ref role="3cqZAo" node="4BHjwwGTLX6" resolve="test" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4BHjwwGTOgy" role="ukAjM">
            <node concept="1jxXqW" id="4BHjwwGTO1x" role="2Oq$k0" />
            <node concept="liA8E" id="4BHjwwGTOPb" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BHjwwGU7wu" role="3cqZAp" />
        <node concept="3SKdUt" id="4BHjwwGU6Qg" role="3cqZAp">
          <node concept="3SKdUq" id="4BHjwwGU6Qi" role="3SKWNk">
            <property role="3SKdUp" value="this method throws exception and &quot;read action&quot; doesn't like that" />
          </node>
        </node>
        <node concept="3cpWs8" id="443LGHBj7CW" role="3cqZAp">
          <node concept="3cpWsn" id="443LGHBj7CX" role="3cpWs9">
            <property role="TrG5h" value="checkTypes" />
            <node concept="3uibUv" id="443LGHBj7CV" role="1tU5fm">
              <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
            </node>
            <node concept="2YIFZM" id="443LGHBj7CY" role="33vP2m">
              <ref role="37wK5l" to="tj24:7y50OW6XU7p" resolve="checkTypes" />
              <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
              <node concept="37vLTw" id="443LGHBj7CZ" role="37wK5m">
                <ref role="3cqZAo" node="4BHjwwGTLX6" resolve="test" />
              </node>
              <node concept="1jxXqW" id="443LGHBj7D0" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7y50OW6ZGv$" role="3cqZAp" />
        <node concept="1QHqEK" id="4BHjwwGTR8a" role="3cqZAp">
          <node concept="1QHqEC" id="4BHjwwGTR8c" role="1QHqEI">
            <node concept="3clFbS" id="4BHjwwGTR8e" role="1bW5cS">
              <node concept="3cpWs8" id="7y50OW6ZH4l" role="3cqZAp">
                <node concept="3cpWsn" id="7y50OW6ZH4m" role="3cpWs9">
                  <property role="TrG5h" value="typeA" />
                  <node concept="3Tqbb2" id="4BHjwwGqWQm" role="1tU5fm" />
                  <node concept="2OqwBi" id="7y50OW6ZH4n" role="33vP2m">
                    <node concept="37vLTw" id="443LGHBj7MB" role="2Oq$k0">
                      <ref role="3cqZAo" node="443LGHBj7CX" resolve="checkTypes" />
                    </node>
                    <node concept="liA8E" id="7y50OW6ZH4p" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:6QH_LDtffJj" resolve="typeOf" />
                      <node concept="2OqwBi" id="443LGHBjakV" role="37wK5m">
                        <node concept="2JrnkZ" id="443LGHBja6M" role="2Oq$k0">
                          <node concept="3fl2lp" id="4BHjwwGF1pq" role="2JrQYb">
                            <ref role="3fl3PK" to="tlxd:4BHjwwGxjLz" resolve="varA" />
                            <node concept="3fl2lp" id="4BHjwwGF14j" role="3fl3PI">
                              <ref role="3fl3PK" to="tlxd:4BHjwwGxjBc" resolve="foo" />
                              <node concept="3B5_sB" id="4BHjwwGF14k" role="3fl3PI">
                                <ref role="3B5MYn" to="tlxd:4nxCIBqyl_d" resolve="Test" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="443LGHBjaPK" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7y50OW701J0" role="3cqZAp">
                <node concept="3cpWsn" id="7y50OW701J1" role="3cpWs9">
                  <property role="TrG5h" value="typeB" />
                  <node concept="3Tqbb2" id="4BHjwwGqWVs" role="1tU5fm" />
                  <node concept="2OqwBi" id="7y50OW701J3" role="33vP2m">
                    <node concept="37vLTw" id="443LGHBj7W9" role="2Oq$k0">
                      <ref role="3cqZAo" node="443LGHBj7CX" resolve="checkTypes" />
                    </node>
                    <node concept="liA8E" id="7y50OW701J5" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:6QH_LDtffJj" resolve="typeOf" />
                      <node concept="2OqwBi" id="443LGHBjbvp" role="37wK5m">
                        <node concept="2JrnkZ" id="443LGHBjbk9" role="2Oq$k0">
                          <node concept="3fl2lp" id="4BHjwwGF2US" role="2JrQYb">
                            <ref role="3fl3PK" to="tlxd:4BHjwwGxjN$" resolve="varB" />
                            <node concept="3fl2lp" id="4BHjwwGF2UT" role="3fl3PI">
                              <ref role="3fl3PK" to="tlxd:4BHjwwGxjBc" resolve="foo" />
                              <node concept="3B5_sB" id="4BHjwwGF2UU" role="3fl3PI">
                                <ref role="3B5MYn" to="tlxd:4nxCIBqyl_d" resolve="Test" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="443LGHBjbUL" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JA50E" id="4BHjwwGEOwL" role="3cqZAp">
                <node concept="37vLTw" id="4BHjwwGEQGR" role="JAdkl">
                  <ref role="3cqZAo" node="7y50OW6ZH4m" resolve="typeA" />
                </node>
                <node concept="2c44tf" id="4BHjwwGERqO" role="JA92f">
                  <node concept="3uibUv" id="4BHjwwGESa4" role="2c44tc">
                    <ref role="3uigEE" to="tlxd:4cKdPpqIRLR" resolve="Test.A" />
                  </node>
                </node>
              </node>
              <node concept="JA50E" id="4BHjwwGESbj" role="3cqZAp">
                <node concept="37vLTw" id="4BHjwwGET3g" role="JAdkl">
                  <ref role="3cqZAo" node="7y50OW701J1" resolve="typeB" />
                </node>
                <node concept="2c44tf" id="4BHjwwGESbl" role="JA92f">
                  <node concept="3uibUv" id="4BHjwwGESgZ" role="2c44tc">
                    <ref role="3uigEE" to="tlxd:7y50OW6ZXcE" resolve="Test.B" />
                    <node concept="3uibUv" id="4BHjwwGET1S" role="11_B2D">
                      <ref role="3uigEE" to="tlxd:4cKdPpqIRLR" resolve="Test.A" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4BHjwwGTS2C" role="ukAjM">
            <node concept="1jxXqW" id="4BHjwwGTRMU" role="2Oq$k0" />
            <node concept="liA8E" id="4BHjwwGTTbX" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BHjwwGEMRI" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

