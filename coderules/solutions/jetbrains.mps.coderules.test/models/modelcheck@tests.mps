<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cc1a7719-27fc-407d-bcc3-f0a29456923e(jetbrains.mps.coderules.test.modelcheck@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wsw7" ref="r:ba41e9c6-15ca-4a47-95f2-6a81c2318547(jetbrains.mps.checkers)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tp6m" ref="r:00000000-0000-4000-0000-011c895903a2(jetbrains.mps.lang.test.runtime)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="cvlm" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.runner(JUnit/)" />
    <import index="bbnd" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.runners(JUnit/)" />
    <import index="u132" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:junit.framework(JUnit/)" />
    <import index="a19p" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.rules(JUnit/)" />
    <import index="6if8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.validation(MPS.Core/)" />
    <import index="k2t0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.checkers(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="qox2" ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.coderules.typechecking.plugin)" />
    <import index="31yc" ref="r:0c18ff61-1cb9-4ff0-a899-c949ad03f97c(jetbrains.mps.coderules.plugin)" />
    <import index="fczk" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.hamcrest.core(JUnit/)" />
    <import index="m7o5" ref="r:835f8ea3-a800-4588-a80b-1de6d47c2098(jetbrains.mps.coderules.ideaplugin)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="rbkg" ref="63b449db-0918-4a4a-a891-2c430ab133e4/java:org.junit.jupiter.api.extension(org.junit.junit5/)" />
    <import index="yqm7" ref="63b449db-0918-4a4a-a891-2c430ab133e4/java:org.junit.jupiter.api(org.junit.junit5/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
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
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="361130699826193248" name="jetbrains.mps.lang.modelapi.structure.ModelPointer" flags="ng" index="1dCxOl">
        <property id="1863527487546097494" name="modelId" index="1XweGQ" />
        <child id="679099339649067980" name="name" index="1j$8Uc" />
      </concept>
      <concept id="679099339649053840" name="jetbrains.mps.lang.modelapi.structure.ModelName" flags="ng" index="1j_P7g">
        <property id="679099339649053841" name="value" index="1j_P7h" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
        <child id="8243879142738613220" name="afterTest" index="1KhZu3" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
      <concept id="8243879142738613213" name="jetbrains.mps.baseLanguage.unitTest.structure.AfterTest" flags="in" index="1KhZuU" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1863527487546129879" name="jetbrains.mps.lang.smodel.structure.ModelPointerExpression" flags="ng" index="1Xw6AR">
        <child id="1863527487546132519" name="modelRef" index="1XwpL7" />
      </concept>
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
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="2XOHcx" id="7t5VLKGQVAO">
    <property role="2XOHcw" value="${coderules_home}" />
  </node>
  <node concept="3s_ewN" id="1Lr58WFTBt2">
    <property role="3s_ewP" value="CheckProjectModules" />
    <node concept="3Tm1VV" id="1Lr58WFTBt3" role="1B3o_S" />
    <node concept="3s_gsd" id="1Lr58WFTBt4" role="3s_ewO">
      <node concept="3s$Bmu" id="1Lr58WFTHgk" role="3s_gse">
        <property role="3s$Bm0" value="doCheck" />
        <node concept="3cqZAl" id="1Lr58WFTHgl" role="3clF45" />
        <node concept="3Tm1VV" id="1Lr58WFTHgm" role="1B3o_S" />
        <node concept="3clFbS" id="1Lr58WFTHgn" role="3clF47">
          <node concept="3clFbF" id="RoBEH16bjs" role="3cqZAp">
            <node concept="2YIFZM" id="RoBEH16e3Q" role="3clFbG">
              <ref role="37wK5l" to="yqm7:~Assumptions.assumeTrue(java.util.function.BooleanSupplier,java.lang.String)" resolve="assumeTrue" />
              <ref role="1Pybhc" to="yqm7:~Assumptions" resolve="Assumptions" />
              <node concept="1bVj0M" id="RoBEH16e3R" role="37wK5m">
                <node concept="3clFbS" id="RoBEH16e3S" role="1bW5cS">
                  <node concept="3clFbF" id="RoBEH16e3T" role="3cqZAp">
                    <node concept="3y3z36" id="4ldrYjLWab8" role="3clFbG">
                      <node concept="2YIFZM" id="RoBEH16e3W" role="3uHU7B">
                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                        <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
                        <node concept="Xl_RD" id="RoBEH16e3X" role="37wK5m">
                          <property role="Xl_RC" value="TEAMCITY_VERSION" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="RoBEH16e3V" role="3uHU7w" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="RoBEH16e3Y" role="37wK5m">
                <property role="Xl_RC" value="Test is disabled in non-CI enviroment" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2$QckrE8z3$" role="3cqZAp">
            <node concept="1PaTwC" id="2$QckrE8z3_" role="1aUNEU">
              <node concept="3oM_SD" id="2$QckrE8zag" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="2$QckrE8zai" role="1PaTwD">
                <property role="3oM_SC" value="enable" />
              </node>
              <node concept="3oM_SD" id="2$QckrE8zal" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="2$QckrE8zap" role="1PaTwD">
                <property role="3oM_SC" value="test" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2$QckrE8xot" role="3cqZAp">
            <node concept="2YIFZM" id="2$QckrE8xou" role="3clFbG">
              <ref role="37wK5l" to="yqm7:~Assumptions.assumeTrue(java.util.function.BooleanSupplier,java.lang.String)" resolve="assumeTrue" />
              <ref role="1Pybhc" to="yqm7:~Assumptions" resolve="Assumptions" />
              <node concept="1bVj0M" id="2$QckrE8xov" role="37wK5m">
                <node concept="3clFbS" id="2$QckrE8xow" role="1bW5cS">
                  <node concept="3clFbF" id="2$QckrE8y9P" role="3cqZAp">
                    <node concept="3clFbT" id="2$QckrE8y9O" role="3clFbG" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2$QckrE8xoA" role="37wK5m">
                <property role="Xl_RC" value="Test is disabled until problems are fixed" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Lr58WFTNvO" role="3cqZAp">
            <node concept="2OqwBi" id="1Lr58WFTNvP" role="3clFbG">
              <node concept="2ShNRf" id="1Lr58WFTNvQ" role="2Oq$k0">
                <node concept="1pGfFk" id="1Lr58WFTNvR" role="2ShVmc">
                  <ref role="37wK5l" node="1Lr58WFTIGK" resolve="TestBody" />
                  <node concept="Xjq3P" id="1Lr58WFTNvS" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="1Lr58WFTNvT" role="2OqNvi">
                <ref role="37wK5l" node="1Lr58WFTIGS" resolve="test_doCheck" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="1Lr58WFTCVH" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="3uibUv" id="1Lr58WFTCWi" role="1zkMxy">
      <ref role="3uigEE" to="tp6m:e$hNri8RAJ" resolve="BaseTransformationTest" />
    </node>
    <node concept="2tJIrI" id="RoBEH15NIO" role="jymVt" />
    <node concept="Wx3nA" id="4dqLDEZ0eMU" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ourParametersCacheExtension" />
      <node concept="3Tm6S6" id="4dqLDEZ0eMW" role="1B3o_S" />
      <node concept="3uibUv" id="4dqLDEZ0gjZ" role="1tU5fm">
        <ref role="3uigEE" to="tp6m:4dqLDEYYwgD" resolve="TestParametersCacheExtension" />
      </node>
      <node concept="2ShNRf" id="4dqLDEZ0gCn" role="33vP2m">
        <node concept="1pGfFk" id="4dqLDEZ0gzP" role="2ShVmc">
          <ref role="37wK5l" to="tp6m:4dqLDEYYHvm" resolve="TestParametersCacheExtension" />
          <node concept="2ShNRf" id="4dqLDEZ0kEy" role="37wK5m">
            <node concept="1pGfFk" id="4dqLDEZ0kEz" role="2ShVmc">
              <ref role="37wK5l" to="tp6m:5LbRjS1nRFZ" resolve="TestParametersCache" />
              <node concept="3VsKOn" id="RoBEH15OOs" role="37wK5m">
                <ref role="3VsUkX" node="1Lr58WFTBt2" resolve="CheckProjectModules_Test" />
              </node>
              <node concept="Xl_RD" id="RoBEH15OYy" role="37wK5m">
                <property role="Xl_RC" value="${coderules_home}" />
              </node>
              <node concept="2YIFZM" id="RoBEH15OYz" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <node concept="1Xw6AR" id="RoBEH15OY$" role="37wK5m">
                  <node concept="1dCxOl" id="RoBEH15OY_" role="1XwpL7">
                    <property role="1XweGQ" value="r:cc1a7719-27fc-407d-bcc3-f0a29456923e" />
                    <node concept="1j_P7g" id="RoBEH15OYA" role="1j$8Uc">
                      <property role="1j_P7h" value="jetbrains.mps.coderules.test.modelcheck@tests" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbT" id="RoBEH15OYB" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4dqLDEZ0lE$" role="2AJF6D">
        <ref role="2AI5Lk" to="rbkg:~RegisterExtension" resolve="RegisterExtension" />
      </node>
      <node concept="z59LJ" id="RoBEH15PZQ" role="lGtFl">
        <node concept="TZ5HA" id="RoBEH15PZR" role="TZ5H$">
          <node concept="1dT_AC" id="RoBEH15PZS" role="1dT_Ay">
            <property role="1dT_AB" value="Enables data sharing b/w invocations of tests in this test case." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Lr58WFTFzZ" role="jymVt" />
    <node concept="312cEg" id="1Lr58WFTGDC" role="jymVt">
      <property role="TrG5h" value="myErrors" />
      <node concept="3Tm1VV" id="1Lr58WFTGDD" role="1B3o_S" />
      <node concept="3uibUv" id="1Lr58WFTGDE" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="2$QckrDY_Cl" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="1Lr58WFTGDF" role="33vP2m">
        <node concept="1pGfFk" id="2$QckrDYZeq" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="2$QckrDZ2zQ" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Lr58WFTF1t" role="jymVt" />
    <node concept="3clFbW" id="1Lr58WFTD1l" role="jymVt">
      <node concept="3cqZAl" id="1Lr58WFTD1m" role="3clF45" />
      <node concept="3Tm1VV" id="1Lr58WFTD1n" role="1B3o_S" />
      <node concept="3clFbS" id="1Lr58WFTD1o" role="3clF47">
        <node concept="XkiVB" id="1Lr58WFTHd2" role="3cqZAp">
          <ref role="37wK5l" to="tp6m:5LbRjS1pM4D" resolve="BaseTransformationTest" />
          <node concept="2OqwBi" id="RoBEH15PyX" role="37wK5m">
            <node concept="37vLTw" id="1Lr58WFTHfr" role="2Oq$k0">
              <ref role="3cqZAo" node="4dqLDEZ0eMU" resolve="ourParametersCacheExtension" />
            </node>
            <node concept="liA8E" id="RoBEH15PX_" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:4dqLDEYZ0EK" resolve="getParametersCache" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ldrYjMDDAb" role="jymVt" />
    <node concept="3clFb_" id="4ldrYjMDGKe" role="jymVt">
      <property role="TrG5h" value="getCheckers" />
      <node concept="37vLTG" id="4ldrYjMDM1P" role="3clF46">
        <property role="TrG5h" value="host" />
        <node concept="3uibUv" id="4ldrYjMDVXl" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3Tmbuc" id="4ldrYjMDHOx" role="1B3o_S" />
      <node concept="3clFbS" id="4ldrYjMDGKi" role="3clF47">
        <node concept="3clFbF" id="4ldrYjMDKeP" role="3cqZAp">
          <node concept="2ShNRf" id="4ldrYjMDKeR" role="3clFbG">
            <node concept="Tc6Ow" id="4ldrYjMDKeS" role="2ShVmc">
              <node concept="3uibUv" id="4ldrYjMDKeT" role="HW$YZ">
                <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
                <node concept="3qTvmN" id="4ldrYjMDKeU" role="11_B2D" />
                <node concept="3qTvmN" id="4ldrYjMDKeV" role="11_B2D" />
              </node>
              <node concept="2ShNRf" id="4ldrYjMDKeW" role="HW$Y0">
                <node concept="1pGfFk" id="4ldrYjMDKeX" role="2ShVmc">
                  <ref role="37wK5l" to="k2t0:~ConstraintsChecker.&lt;init&gt;(jetbrains.mps.components.ComponentHost)" resolve="ConstraintsChecker" />
                  <node concept="37vLTw" id="4ldrYjMDXQQ" role="37wK5m">
                    <ref role="3cqZAo" node="4ldrYjMDM1P" resolve="host" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="4ldrYjMDKeZ" role="HW$Y0">
                <node concept="1pGfFk" id="4ldrYjMDKf0" role="2ShVmc">
                  <ref role="37wK5l" to="wsw7:6qi2OtU3tVc" resolve="TargetConceptChecker" />
                </node>
              </node>
              <node concept="2ShNRf" id="4ldrYjMDKf1" role="HW$Y0">
                <node concept="HV5vD" id="4ldrYjMDKf2" role="2ShVmc">
                  <ref role="HV5vE" to="wsw7:3TJpIwQlqFz" resolve="UsedLanguagesChecker" />
                </node>
              </node>
              <node concept="2ShNRf" id="4ldrYjMDKf3" role="HW$Y0">
                <node concept="1pGfFk" id="4ldrYjMDKf4" role="2ShVmc">
                  <ref role="37wK5l" to="6if8:~StructureChecker.&lt;init&gt;(jetbrains.mps.components.ComponentHost)" resolve="StructureChecker" />
                  <node concept="37vLTw" id="4ldrYjME2Go" role="37wK5m">
                    <ref role="3cqZAo" node="4ldrYjMDM1P" resolve="host" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="4ldrYjMDKf5" role="HW$Y0">
                <node concept="1pGfFk" id="4ldrYjMDKf6" role="2ShVmc">
                  <ref role="37wK5l" to="k2t0:~ModuleChecker.&lt;init&gt;()" resolve="ModuleChecker" />
                </node>
              </node>
              <node concept="2ShNRf" id="4ldrYjMDKf7" role="HW$Y0">
                <node concept="1pGfFk" id="4ldrYjMDKf8" role="2ShVmc">
                  <ref role="37wK5l" to="k2t0:~RefScopeChecker.&lt;init&gt;(jetbrains.mps.components.ComponentHost)" resolve="RefScopeChecker" />
                  <node concept="37vLTw" id="4ldrYjMEa8x" role="37wK5m">
                    <ref role="3cqZAo" node="4ldrYjMDM1P" resolve="host" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="4ldrYjMDKf9" role="HW$Y0">
                <node concept="HV5vD" id="4ldrYjMDKfa" role="2ShVmc">
                  <ref role="HV5vE" to="wsw7:4c7y4qc4V7B" resolve="SuppressErrorsChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="4ldrYjMDIrs" role="3clF45">
        <node concept="3uibUv" id="4ldrYjMDIrt" role="_ZDj9">
          <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
          <node concept="3qTvmN" id="4ldrYjMDIru" role="11_B2D" />
          <node concept="3qTvmN" id="4ldrYjMDIrv" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Lr58WFZnr6" role="jymVt" />
    <node concept="312cEg" id="1Lr58WFX6Ys" role="jymVt">
      <property role="TrG5h" value="LOCATION_POINTER" />
      <node concept="3Tm6S6" id="1Lr58WFX6Yt" role="1B3o_S" />
      <node concept="3uibUv" id="1Lr58WFX9is" role="1tU5fm">
        <ref role="3uigEE" to="d6hs:~ReportItemBase$SimpleReportItemFlavour" resolve="ReportItemBase.SimpleReportItemFlavour" />
        <node concept="3uibUv" id="1Lr58WFXbw6" role="11_B2D">
          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
        </node>
        <node concept="3uibUv" id="1Lr58WFXdKO" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="1Lr58WFXgr0" role="33vP2m">
        <node concept="1pGfFk" id="1Lr58WFXfJu" role="2ShVmc">
          <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.&lt;init&gt;(java.lang.String,java.lang.Class,java.util.function.Function)" resolve="ReportItemBase.SimpleReportItemFlavour" />
          <node concept="3uibUv" id="1Lr58WFXfJw" role="1pMfVU">
            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
          <node concept="3uibUv" id="1Lr58WFXfJx" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="Xl_RD" id="1Lr58WFXj4F" role="37wK5m">
            <property role="Xl_RC" value="FLAVOUR_LOCATION_POINTER" />
          </node>
          <node concept="3VsKOn" id="1Lr58WFXlH9" role="37wK5m">
            <ref role="3VsUkX" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
          </node>
          <node concept="1bVj0M" id="1Lr58WFXqfF" role="37wK5m">
            <node concept="3clFbS" id="1Lr58WFXqfH" role="1bW5cS">
              <node concept="3clFbH" id="1Lr58WFXqTM" role="3cqZAp" />
              <node concept="3clFbJ" id="1Lr58WFXtff" role="3cqZAp">
                <node concept="3clFbS" id="1Lr58WFXtfh" role="3clFbx">
                  <node concept="3cpWs6" id="1Lr58WFXC02" role="3cqZAp">
                    <node concept="2OqwBi" id="1Lr58WFXEHI" role="3cqZAk">
                      <node concept="10M0yZ" id="1Lr58WFXEum" role="2Oq$k0">
                        <ref role="3cqZAo" to="d6hs:~NodeFlavouredItem.FLAVOUR_NODE" resolve="FLAVOUR_NODE" />
                        <ref role="1PxDUh" to="d6hs:~NodeFlavouredItem" resolve="NodeFlavouredItem" />
                      </node>
                      <node concept="liA8E" id="1Lr58WFXFJa" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.tryToGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="tryToGet" />
                        <node concept="37vLTw" id="1Lr58WFXIle" role="37wK5m">
                          <ref role="3cqZAo" node="1Lr58WFXqkn" resolve="reportItem" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1Lr58WFXyd$" role="3clFbw">
                  <node concept="10M0yZ" id="1Lr58WFXxZd" role="2Oq$k0">
                    <ref role="3cqZAo" to="d6hs:~NodeFlavouredItem.FLAVOUR_NODE" resolve="FLAVOUR_NODE" />
                    <ref role="1PxDUh" to="d6hs:~NodeFlavouredItem" resolve="NodeFlavouredItem" />
                  </node>
                  <node concept="liA8E" id="1Lr58WFX_tm" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.canGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="canGet" />
                    <node concept="37vLTw" id="1Lr58WFX__e" role="37wK5m">
                      <ref role="3cqZAo" node="1Lr58WFXqkn" resolve="reportItem" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1Lr58WFXIuN" role="3cqZAp">
                <node concept="3clFbS" id="1Lr58WFXIuO" role="3clFbx">
                  <node concept="3cpWs6" id="1Lr58WFXIuP" role="3cqZAp">
                    <node concept="2OqwBi" id="1Lr58WFXIuQ" role="3cqZAk">
                      <node concept="liA8E" id="1Lr58WFXIuS" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.tryToGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="tryToGet" />
                        <node concept="37vLTw" id="1Lr58WFXIuT" role="37wK5m">
                          <ref role="3cqZAo" node="1Lr58WFXqkn" resolve="reportItem" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="1Lr58WFXJ0Y" role="2Oq$k0">
                        <ref role="3cqZAo" to="d6hs:~ModelFlavouredItem.FLAVOUR_MODEL" resolve="FLAVOUR_MODEL" />
                        <ref role="1PxDUh" to="d6hs:~ModelFlavouredItem" resolve="ModelFlavouredItem" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1Lr58WFXIuU" role="3clFbw">
                  <node concept="10M0yZ" id="1Lr58WFXIQh" role="2Oq$k0">
                    <ref role="3cqZAo" to="d6hs:~ModelFlavouredItem.FLAVOUR_MODEL" resolve="FLAVOUR_MODEL" />
                    <ref role="1PxDUh" to="d6hs:~ModelFlavouredItem" resolve="ModelFlavouredItem" />
                  </node>
                  <node concept="liA8E" id="1Lr58WFXIuW" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.canGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="canGet" />
                    <node concept="37vLTw" id="1Lr58WFXIuX" role="37wK5m">
                      <ref role="3cqZAo" node="1Lr58WFXqkn" resolve="reportItem" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1Lr58WFXJev" role="3cqZAp">
                <node concept="3clFbS" id="1Lr58WFXJew" role="3clFbx">
                  <node concept="3cpWs6" id="1Lr58WFXJex" role="3cqZAp">
                    <node concept="2OqwBi" id="1Lr58WFXJey" role="3cqZAk">
                      <node concept="liA8E" id="1Lr58WFXJez" role="2OqNvi">
                        <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.tryToGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="tryToGet" />
                        <node concept="37vLTw" id="1Lr58WFXJe$" role="37wK5m">
                          <ref role="3cqZAo" node="1Lr58WFXqkn" resolve="reportItem" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="1Lr58WFXKer" role="2Oq$k0">
                        <ref role="3cqZAo" to="d6hs:~ModuleFlavouredItem.FLAVOUR_MODULE" resolve="FLAVOUR_MODULE" />
                        <ref role="1PxDUh" to="d6hs:~ModuleFlavouredItem" resolve="ModuleFlavouredItem" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1Lr58WFXJeA" role="3clFbw">
                  <node concept="10M0yZ" id="1Lr58WFXJYZ" role="2Oq$k0">
                    <ref role="3cqZAo" to="d6hs:~ModuleFlavouredItem.FLAVOUR_MODULE" resolve="FLAVOUR_MODULE" />
                    <ref role="1PxDUh" to="d6hs:~ModuleFlavouredItem" resolve="ModuleFlavouredItem" />
                  </node>
                  <node concept="liA8E" id="1Lr58WFXJeC" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemFlavour.canGet(jetbrains.mps.errors.item.FlavouredItem)" resolve="canGet" />
                    <node concept="37vLTw" id="1Lr58WFXJeD" role="37wK5m">
                      <ref role="3cqZAo" node="1Lr58WFXqkn" resolve="reportItem" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="1Lr58WFXN12" role="3cqZAp">
                <node concept="2ShNRf" id="1Lr58WFXNk8" role="YScLw">
                  <node concept="1pGfFk" id="1Lr58WFXQsQ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="1Lr58WFXUu8" role="37wK5m">
                      <node concept="37vLTw" id="1Lr58WFXUN$" role="3uHU7w">
                        <ref role="3cqZAo" node="1Lr58WFXqkn" resolve="reportItem" />
                      </node>
                      <node concept="Xl_RD" id="1Lr58WFXQLX" role="3uHU7B">
                        <property role="Xl_RC" value="no location can be extracted from " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="1Lr58WFXqkn" role="1bW2Oz">
              <property role="TrG5h" value="reportItem" />
              <node concept="3uibUv" id="1Lr58WFXqtm" role="1tU5fm">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Lr58WFWGVn" role="jymVt" />
    <node concept="2tJIrI" id="1Lr58WFWGY$" role="jymVt" />
    <node concept="312cEu" id="1Lr58WFTIGI" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TestBody" />
      <node concept="2tJIrI" id="1Lr58WFTIGJ" role="jymVt" />
      <node concept="3clFbW" id="1Lr58WFTIGK" role="jymVt">
        <node concept="3cqZAl" id="1Lr58WFTIGL" role="3clF45" />
        <node concept="3clFbS" id="1Lr58WFTIGM" role="3clF47">
          <node concept="XkiVB" id="1Lr58WFTIGN" role="3cqZAp">
            <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
            <node concept="37vLTw" id="1Lr58WFTIGO" role="37wK5m">
              <ref role="3cqZAo" node="1Lr58WFTIGP" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1Lr58WFTIGP" role="3clF46">
          <property role="TrG5h" value="owner" />
          <node concept="3uibUv" id="1Lr58WFTIGQ" role="1tU5fm">
            <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1Lr58WFTIGR" role="jymVt" />
      <node concept="3clFb_" id="1Lr58WFTIGS" role="jymVt">
        <property role="TrG5h" value="test_doCheck" />
        <node concept="3cqZAl" id="1Lr58WFTIGT" role="3clF45" />
        <node concept="3clFbS" id="1Lr58WFTIGU" role="3clF47">
          <node concept="3clFbF" id="RoBEH15Yda" role="3cqZAp">
            <node concept="1rXfSq" id="RoBEH15Yd8" role="3clFbG">
              <ref role="37wK5l" to="tp6m:ZcWKOigGgW" resolve="runWithinCommand" />
              <node concept="1bVj0M" id="RoBEH15Z2r" role="37wK5m">
                <node concept="3clFbS" id="RoBEH15Z2s" role="1bW5cS">
                  <node concept="3cpWs8" id="1Lr58WFTIHa" role="3cqZAp">
                    <node concept="3cpWsn" id="1Lr58WFTIHb" role="3cpWs9">
                      <property role="TrG5h" value="itemsToCheck" />
                      <node concept="3uibUv" id="1Lr58WFTIHc" role="1tU5fm">
                        <ref role="3uigEE" to="wsw7:4QJbmJH1Aa8" resolve="ItemsToCheck" />
                      </node>
                      <node concept="2ShNRf" id="1Lr58WFTIHd" role="33vP2m">
                        <node concept="HV5vD" id="1Lr58WFTIHe" role="2ShVmc">
                          <ref role="HV5vE" to="wsw7:4QJbmJH1Aa8" resolve="ItemsToCheck" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="1Lr58WFTIHf" role="3cqZAp">
                    <node concept="15s5l7" id="59P$gGfuucy" role="lGtFl">
                      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;constraints (cannot be child)&quot;;FLAVOUR_MESSAGE=&quot;There is no MPS 'project' in this kind of ITestable node&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)/7896212496293420315]&quot;;" />
                      <property role="huDt6" value="There is no MPS 'project' in this kind of ITestable node" />
                    </node>
                    <node concept="2GrKxI" id="1Lr58WFTIHg" role="2Gsz3X">
                      <property role="TrG5h" value="m" />
                    </node>
                    <node concept="2OqwBi" id="1Lr58WFTIHh" role="2GsD0m">
                      <node concept="1jxXqW" id="1Lr58WFTIHi" role="2Oq$k0" />
                      <node concept="liA8E" id="1Lr58WFTIHj" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1Lr58WFTIHk" role="2LFqv$">
                      <node concept="3clFbF" id="1Lr58WFTIHl" role="3cqZAp">
                        <node concept="2OqwBi" id="1Lr58WFTIHm" role="3clFbG">
                          <node concept="2OqwBi" id="1Lr58WFTIHn" role="2Oq$k0">
                            <node concept="37vLTw" id="1Lr58WFTIHo" role="2Oq$k0">
                              <ref role="3cqZAo" node="1Lr58WFTIHb" resolve="itemsToCheck" />
                            </node>
                            <node concept="2OwXpG" id="1Lr58WFTIHp" role="2OqNvi">
                              <ref role="2Oxat5" to="wsw7:4QJbmJH1DeO" resolve="modules" />
                            </node>
                          </node>
                          <node concept="TSZUe" id="1Lr58WFTIHq" role="2OqNvi">
                            <node concept="2GrUjf" id="1Lr58WFTIHr" role="25WWJ7">
                              <ref role="2Gs0qQ" node="1Lr58WFTIHg" resolve="m" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1Lr58WFTIHt" role="3cqZAp">
                    <node concept="3cpWsn" id="1Lr58WFTIHu" role="3cpWs9">
                      <property role="TrG5h" value="collectConsumer" />
                      <node concept="3uibUv" id="1Lr58WFTIHv" role="1tU5fm">
                        <ref role="3uigEE" to="18ew:~CollectConsumer" resolve="CollectConsumer" />
                        <node concept="3uibUv" id="1Lr58WFTIHw" role="11_B2D">
                          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="1Lr58WFTIHx" role="33vP2m">
                        <node concept="1pGfFk" id="1Lr58WFTIHy" role="2ShVmc">
                          <ref role="37wK5l" to="18ew:~CollectConsumer.&lt;init&gt;()" resolve="CollectConsumer" />
                          <node concept="3uibUv" id="1Lr58WFTIHz" role="1pMfVU">
                            <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4ldrYjMDxtC" role="3cqZAp" />
                  <node concept="3cpWs8" id="4ldrYjMDBLp" role="3cqZAp">
                    <node concept="3cpWsn" id="4ldrYjMDBLq" role="3cpWs9">
                      <property role="TrG5h" value="host" />
                      <node concept="3uibUv" id="4ldrYjMDBAL" role="1tU5fm">
                        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
                      </node>
                      <node concept="2OqwBi" id="4ldrYjMDBLr" role="33vP2m">
                        <node concept="1eOMI4" id="4ldrYjMDBLs" role="2Oq$k0">
                          <node concept="10QFUN" id="4ldrYjMDBLt" role="1eOMHV">
                            <node concept="1rXfSq" id="4ldrYjMDBLu" role="10QFUP">
                              <ref role="37wK5l" to="tp6m:e$hNri9Pga" resolve="getProject" />
                            </node>
                            <node concept="3uibUv" id="4ldrYjMDBLv" role="10QFUM">
                              <ref role="3uigEE" to="z1c3:~ProjectBase" resolve="ProjectBase" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4ldrYjMDBLw" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~ProjectBase.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1Lr58WFTIGW" role="3cqZAp">
                    <node concept="3cpWsn" id="1Lr58WFTIGX" role="3cpWs9">
                      <property role="TrG5h" value="checkers" />
                      <node concept="_YKpA" id="1Lr58WFTIGY" role="1tU5fm">
                        <node concept="3uibUv" id="1Lr58WFTIGZ" role="_ZDj9">
                          <ref role="3uigEE" to="wsw7:4r$i1_aEwSg" resolve="IChecker" />
                          <node concept="3qTvmN" id="1Lr58WFTIH0" role="11_B2D" />
                          <node concept="3qTvmN" id="1Lr58WFTIH1" role="11_B2D" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="4ldrYjMDUyY" role="33vP2m">
                        <ref role="37wK5l" node="4ldrYjMDGKe" resolve="getCheckers" />
                        <node concept="37vLTw" id="4ldrYjMDV8s" role="37wK5m">
                          <ref role="3cqZAo" node="4ldrYjMDBLq" resolve="host" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1Lr58WFTIH_" role="3cqZAp">
                    <node concept="15s5l7" id="59P$gGfuuSP" role="lGtFl">
                      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;constraints (cannot be child)&quot;;FLAVOUR_MESSAGE=&quot;There is no MPS 'project' in this kind of ITestable node&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)/7896212496293420315]&quot;;" />
                      <property role="huDt6" value="There is no MPS 'project' in this kind of ITestable node" />
                    </node>
                    <node concept="2OqwBi" id="1Lr58WFTIHA" role="3clFbG">
                      <node concept="2OqwBi" id="1Lr58WFTIHB" role="2Oq$k0">
                        <node concept="2ShNRf" id="1Lr58WFTIHC" role="2Oq$k0">
                          <node concept="1pGfFk" id="1Lr58WFTIHD" role="2ShVmc">
                            <ref role="37wK5l" to="wsw7:6bXa3O$ak8k" resolve="ModelCheckerBuilder" />
                            <node concept="3clFbT" id="1Lr58WFTIHE" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1Lr58WFTIHF" role="2OqNvi">
                          <ref role="37wK5l" to="wsw7:6bXa3O$aFCh" resolve="createChecker" />
                          <node concept="37vLTw" id="1Lr58WFTIHG" role="37wK5m">
                            <ref role="3cqZAo" node="1Lr58WFTIGX" resolve="checkers" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1Lr58WFTIHH" role="2OqNvi">
                        <ref role="37wK5l" to="wsw7:4SGXHKgYYAZ" resolve="check" />
                        <node concept="37vLTw" id="1Lr58WFTIHI" role="37wK5m">
                          <ref role="3cqZAo" node="1Lr58WFTIHb" resolve="itemsToCheck" />
                        </node>
                        <node concept="2OqwBi" id="1Lr58WFTIHJ" role="37wK5m">
                          <node concept="1jxXqW" id="1Lr58WFTIHK" role="2Oq$k0" />
                          <node concept="liA8E" id="1Lr58WFTIHL" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1Lr58WFTIHM" role="37wK5m">
                          <ref role="3cqZAo" node="1Lr58WFTIHu" resolve="collectConsumer" />
                        </node>
                        <node concept="2ShNRf" id="1Lr58WFTIHN" role="37wK5m">
                          <node concept="1pGfFk" id="1Lr58WFTIHO" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1Lr58WFTIHP" role="3cqZAp" />
                  <node concept="3cpWs8" id="1Lr58WFTIHQ" role="3cqZAp">
                    <node concept="3cpWsn" id="1Lr58WFTIHR" role="3cpWs9">
                      <property role="TrG5h" value="result" />
                      <node concept="3uibUv" id="1Lr58WFTIHS" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="1Lr58WFTIHT" role="11_B2D">
                          <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1Lr58WFTIHU" role="33vP2m">
                        <node concept="37vLTw" id="1Lr58WFTIHV" role="2Oq$k0">
                          <ref role="3cqZAo" node="1Lr58WFTIHu" resolve="collectConsumer" />
                        </node>
                        <node concept="liA8E" id="1Lr58WFTIHW" role="2OqNvi">
                          <ref role="37wK5l" to="18ew:~CollectConsumer.getResult()" resolve="getResult" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="1Lr58WFTIHX" role="3cqZAp">
                    <node concept="2GrKxI" id="1Lr58WFTIHY" role="2Gsz3X">
                      <property role="TrG5h" value="r" />
                    </node>
                    <node concept="37vLTw" id="1Lr58WFTIHZ" role="2GsD0m">
                      <ref role="3cqZAo" node="1Lr58WFTIHR" resolve="result" />
                    </node>
                    <node concept="3clFbS" id="1Lr58WFTII0" role="2LFqv$">
                      <node concept="3cpWs8" id="1Lr58WFTII1" role="3cqZAp">
                        <node concept="3cpWsn" id="1Lr58WFTII2" role="3cpWs9">
                          <property role="TrG5h" value="severity" />
                          <node concept="3uibUv" id="1Lr58WFTII3" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                          </node>
                          <node concept="2OqwBi" id="1Lr58WFTII4" role="33vP2m">
                            <node concept="2GrUjf" id="1Lr58WFTII5" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1Lr58WFTIHY" resolve="r" />
                            </node>
                            <node concept="liA8E" id="1Lr58WFTII6" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~ReportItem.getSeverity()" resolve="getSeverity" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="1Lr58WFTIIr" role="3cqZAp">
                        <node concept="3cpWsn" id="1Lr58WFTIIs" role="3cpWs9">
                          <property role="TrG5h" value="loc" />
                          <node concept="3uibUv" id="1Lr58WFW_v$" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="2OqwBi" id="1Lr58WFTIIx" role="33vP2m">
                            <node concept="liA8E" id="1Lr58WFTIIz" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.get(jetbrains.mps.errors.item.FlavouredItem)" resolve="get" />
                              <node concept="2GrUjf" id="1Lr58WFTII$" role="37wK5m">
                                <ref role="2Gs0qQ" node="1Lr58WFTIHY" resolve="r" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="1Lr58WFY2WS" role="2Oq$k0">
                              <ref role="3cqZAo" node="1Lr58WFX6Ys" resolve="LOCATION_POINTER" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2$QckrDYxFV" role="3cqZAp">
                        <node concept="3cpWsn" id="2$QckrDYxFW" role="3cpWs9">
                          <property role="TrG5h" value="message" />
                          <node concept="3uibUv" id="2$QckrDYxr3" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="2OqwBi" id="2$QckrDYxFX" role="33vP2m">
                            <node concept="2GrUjf" id="2$QckrDYxFY" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1Lr58WFTIHY" resolve="r" />
                            </node>
                            <node concept="liA8E" id="2$QckrDYxFZ" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1Lr58WFVgR1" role="3cqZAp" />
                      <node concept="3clFbJ" id="2$QckrDZqXq" role="3cqZAp">
                        <node concept="3clFbS" id="2$QckrDZqXs" role="3clFbx">
                          <node concept="3clFbF" id="2$QckrDZE5E" role="3cqZAp">
                            <node concept="2OqwBi" id="2$QckrDZG6J" role="3clFbG">
                              <node concept="37vLTw" id="2$QckrDZE5C" role="2Oq$k0">
                                <ref role="3cqZAo" node="1Lr58WFTGDC" resolve="myErrors" />
                              </node>
                              <node concept="liA8E" id="2$QckrDZJP5" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="3cpWs3" id="2$QckrDZOgr" role="37wK5m">
                                  <node concept="Xl_RD" id="2$QckrDZOgs" role="3uHU7w">
                                    <property role="Xl_RC" value=")" />
                                  </node>
                                  <node concept="3cpWs3" id="2$QckrDZOgt" role="3uHU7B">
                                    <node concept="37vLTw" id="2$QckrDZOgu" role="3uHU7w">
                                      <ref role="3cqZAo" node="1Lr58WFTIIs" resolve="loc" />
                                    </node>
                                    <node concept="3cpWs3" id="2$QckrDZOgv" role="3uHU7B">
                                      <node concept="37vLTw" id="2$QckrDZOgw" role="3uHU7B">
                                        <ref role="3cqZAo" node="2$QckrDYxFW" resolve="message" />
                                      </node>
                                      <node concept="Xl_RD" id="2$QckrDZOgx" role="3uHU7w">
                                        <property role="Xl_RC" value=" (" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="2$QckrDZyuI" role="3clFbw">
                          <node concept="Rm8GO" id="2$QckrDZCBX" role="3uHU7w">
                            <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                            <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                          </node>
                          <node concept="37vLTw" id="2$QckrDZsm1" role="3uHU7B">
                            <ref role="3cqZAo" node="1Lr58WFTII2" resolve="severity" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2$QckrE52Fc" role="3cqZAp" />
          <node concept="1DcWWT" id="2$QckrDZ6pM" role="3cqZAp">
            <node concept="3clFbS" id="2$QckrDZ6pP" role="2LFqv$">
              <node concept="3clFbF" id="4ldrYjMEt2k" role="3cqZAp">
                <node concept="2OqwBi" id="4ldrYjMEt2h" role="3clFbG">
                  <node concept="10M0yZ" id="4ldrYjMEt2i" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" />
                    <ref role="3cqZAo" to="wyt6:~System.err" />
                  </node>
                  <node concept="liA8E" id="4ldrYjMEt2j" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                    <node concept="3cpWs3" id="4ldrYjMEwfo" role="37wK5m">
                      <node concept="Xl_RD" id="4ldrYjMEu9t" role="3uHU7B">
                        <property role="Xl_RC" value="[ERROR] " />
                      </node>
                      <node concept="37vLTw" id="2$QckrDZeI2" role="3uHU7w">
                        <ref role="3cqZAo" node="2$QckrDZ6pQ" resolve="err" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2$QckrDZ6pQ" role="1Duv9x">
              <property role="TrG5h" value="err" />
              <node concept="17QB3L" id="2$QckrDZ6pU" role="1tU5fm" />
            </node>
            <node concept="37vLTw" id="2$QckrDZ6pV" role="1DdaDG">
              <ref role="3cqZAo" node="1Lr58WFTGDC" resolve="myErrors" />
            </node>
          </node>
          <node concept="3vwNmj" id="2$QckrDZi7a" role="3cqZAp">
            <node concept="2OqwBi" id="2$QckrDZkM5" role="3vwVQn">
              <node concept="37vLTw" id="2$QckrDZjf8" role="2Oq$k0">
                <ref role="3cqZAo" node="1Lr58WFTGDC" resolve="myErrors" />
              </node>
              <node concept="liA8E" id="2$QckrDZojU" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="1Lr58WFTIIU" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
      <node concept="2tJIrI" id="1Lr58WFTIIV" role="jymVt" />
      <node concept="3uibUv" id="1Lr58WFTIIW" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
    </node>
    <node concept="3UR2Jj" id="1Lr58WFYqNs" role="lGtFl">
      <node concept="TZ5HA" id="1Lr58WFYqNt" role="TZ5H$">
        <node concept="1dT_AC" id="1Lr58WFYqNu" role="1dT_Ay">
          <property role="1dT_AB" value="This tests launches ModelChecker with a default set of checkers on all modules in the project. " />
        </node>
      </node>
      <node concept="TZ5HA" id="1Lr58WFY$qC" role="TZ5H$">
        <node concept="1dT_AC" id="1Lr58WFY$qD" role="1dT_Ay">
          <property role="1dT_AB" value="Errors are collected by ErrorCollector, so that all problems are reported at once." />
        </node>
      </node>
      <node concept="TZ5HA" id="1Lr58WFYGfR" role="TZ5H$">
        <node concept="1dT_AC" id="1Lr58WFYGfS" role="1dT_Ay">
          <property role="1dT_AB" value="Only those issues reported that have severity MessageStatus.ERROR." />
        </node>
      </node>
      <node concept="TZ5HA" id="1Lr58WG4Tcu" role="TZ5H$">
        <node concept="1dT_AC" id="1Lr58WG4Tcv" role="1dT_Ay">
          <property role="1dT_AB" value="This class mimics the behaviour of NodeTest in order to reuse MPS launching and project opening functionality." />
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="xqbf82oxMb" role="1KhZu4">
      <node concept="3clFbS" id="xqbf82oxMc" role="2VODD2">
        <node concept="3clFbF" id="1a$$29AvYGM" role="3cqZAp">
          <node concept="2OqwBi" id="1a$$29AvYN5" role="3clFbG">
            <node concept="2YIFZM" id="1QxYy7KdHPS" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:7iCybvTs3lI" resolve="getInstance" />
              <ref role="1Pybhc" to="tj24:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="liA8E" id="1a$$29AvYUx" role="2OqNvi">
              <ref role="37wK5l" to="tj24:7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="1a$$29AvYXx" role="37wK5m">
                <ref role="1Px2BO" to="tj24:7iCybvToD3Z" resolve="Config.Level" />
                <ref role="Rm8GQ" to="tj24:5Ul706LbJYK" resolve="TEST" />
              </node>
              <node concept="10M0yZ" id="3zz62D5cwaF" role="37wK5m">
                <ref role="3cqZAo" to="tj24:7iCybvTzJGv" resolve="PREFIX" />
                <ref role="1PxDUh" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
              </node>
              <node concept="1bVj0M" id="1a$$29Aw4Um" role="37wK5m">
                <node concept="3clFbS" id="1a$$29Aw4Uo" role="1bW5cS">
                  <node concept="3clFbH" id="1a$$29Aw6ca" role="3cqZAp" />
                  <node concept="3clFbJ" id="1a$$29Aw6e0" role="3cqZAp">
                    <node concept="3clFbS" id="1a$$29Aw6e2" role="3clFbx">
                      <node concept="3cpWs6" id="1a$$29Aw783" role="3cqZAp">
                        <node concept="3clFbT" id="1a$$29Aw7aP" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1a$$29Aw6Dj" role="3clFbw">
                      <node concept="10M0yZ" id="3zz62D5cwaH" role="2Oq$k0">
                        <ref role="3cqZAo" to="tj24:7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                        <ref role="1PxDUh" to="tj24:7iCybvTy_Mb" resolve="TypecheckingOptions" />
                      </node>
                      <node concept="liA8E" id="1a$$29Aw72L" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="1a$$29Aw74U" role="37wK5m">
                          <ref role="3cqZAo" node="1a$$29Aw62z" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1a$$29Aw6cf" role="3cqZAp" />
                  <node concept="3clFbF" id="1a$$29Aw7pz" role="3cqZAp">
                    <node concept="10Nm6u" id="1a$$29Aw7px" role="3clFbG" />
                  </node>
                </node>
                <node concept="37vLTG" id="1a$$29Aw62z" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="1a$$29Aw691" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhZuU" id="xqbf82oyCP" role="1KhZu3">
      <node concept="3clFbS" id="xqbf82oyCQ" role="2VODD2">
        <node concept="3clFbF" id="xqbf82l6BV" role="3cqZAp">
          <node concept="2OqwBi" id="xqbf82l6Qn" role="3clFbG">
            <node concept="2YIFZM" id="1QxYy7KdHPT" role="2Oq$k0">
              <ref role="37wK5l" to="tj24:7iCybvTs3lI" resolve="getInstance" />
              <ref role="1Pybhc" to="tj24:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="liA8E" id="xqbf82l6Yd" role="2OqNvi">
              <ref role="37wK5l" to="tj24:xqbf82kuzw" resolve="reset" />
              <node concept="Rm8GO" id="1a$$29Aw7Pu" role="37wK5m">
                <ref role="1Px2BO" to="tj24:7iCybvToD3Z" resolve="Config.Level" />
                <ref role="Rm8GQ" to="tj24:5Ul706LbJYK" resolve="TEST" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

