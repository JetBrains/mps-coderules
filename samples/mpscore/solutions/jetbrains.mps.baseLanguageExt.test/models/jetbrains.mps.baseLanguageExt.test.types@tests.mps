<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fa6dd7ac-0e7d-4b3f-be36-f9e40c08eea0(jetbrains.mps.baseLanguageExt.test.types@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tp68" ref="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.baseLanguageExt.types)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)" />
    <import index="mqqo" ref="r:82cec6f7-ddec-440c-961c-1c598267be42(jetbrains.mps.logic.test.unification)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
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
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="6694277639409954681" name="jetbrains.mps.logic.structure.ListRole" flags="ng" index="38e3lM">
        <child id="6694277639409954746" name="list" index="38e3mL" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.DataNodeExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
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
        <node concept="3clFbJ" id="2shrukTDcgC" role="3cqZAp">
          <node concept="3clFbS" id="2shrukTDcgE" role="3clFbx">
            <node concept="3cpWs6" id="2shrukTDf$T" role="3cqZAp">
              <node concept="3clFbT" id="2shrukTDfJ5" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2shrukTDe5t" role="3clFbw">
            <node concept="2OqwBi" id="2shrukTDerF" role="3uHU7w">
              <node concept="37vLTw" id="2shrukTDe6p" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGSeo4" resolve="ys" />
              </node>
              <node concept="34oBXx" id="2shrukTDfzB" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="2shrukTDcEv" role="3uHU7B">
              <node concept="37vLTw" id="2shrukTDcqG" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGSekn" resolve="xs" />
              </node>
              <node concept="34oBXx" id="2shrukTDddU" role="2OqNvi" />
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
        <node concept="3cpWs8" id="7t5VLKGThb5" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGThb6" role="3cpWs9">
            <property role="TrG5h" value="expected" />
            <node concept="_YKpA" id="7t5VLKGThaQ" role="1tU5fm">
              <node concept="_YKpA" id="2shrukTDgQW" role="_ZDj9">
                <node concept="3Tqbb2" id="2shrukTDgQX" role="_ZDj9" />
              </node>
            </node>
            <node concept="2OqwBi" id="7t5VLKGThb7" role="33vP2m">
              <node concept="2OqwBi" id="7t5VLKGThb8" role="2Oq$k0">
                <node concept="2OqwBi" id="7t5VLKGThb9" role="2Oq$k0">
                  <node concept="3xONca" id="7t5VLKGTHya" role="2Oq$k0">
                    <ref role="3xOPvv" node="7t5VLKGT7IR" resolve="expected_C" />
                  </node>
                  <node concept="3Tsc0h" id="7t5VLKGThbb" role="2OqNvi">
                    <ref role="3TtcxE" to="tp68:hHp56YpiWP" resolve="actualArgument" />
                  </node>
                </node>
                <node concept="3$u5V9" id="7t5VLKGThbc" role="2OqNvi">
                  <node concept="1bVj0M" id="7t5VLKGThbd" role="23t8la">
                    <node concept="3clFbS" id="7t5VLKGThbe" role="1bW5cS">
                      <node concept="3clFbF" id="7t5VLKGThbf" role="3cqZAp">
                        <node concept="2OqwBi" id="7t5VLKGThbg" role="3clFbG">
                          <node concept="1PxgMI" id="7t5VLKGThbh" role="2Oq$k0">
                            <node concept="37vLTw" id="7t5VLKGThbi" role="1m5AlR">
                              <ref role="3cqZAo" node="7t5VLKGThbk" resolve="it" />
                            </node>
                            <node concept="chp4Y" id="6fXjIfxgngw" role="3oSUPX">
                              <ref role="cht4Q" to="tp68:h5nCRdH" resolve="InternalNewExpression" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7t5VLKGThbj" role="2OqNvi">
                            <ref role="3TtcxE" to="tp68:i3HumyW" resolve="parameter" />
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
        <node concept="3cpWs8" id="2shrukTDvVU" role="3cqZAp">
          <node concept="3cpWsn" id="2shrukTDvVV" role="3cpWs9">
            <property role="TrG5h" value="found" />
            <node concept="_YKpA" id="2shrukTDvVL" role="1tU5fm">
              <node concept="_YKpA" id="2shrukTDvVS" role="_ZDj9">
                <node concept="3Tqbb2" id="2shrukTDvVT" role="_ZDj9">
                  <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2shrukTDvVW" role="33vP2m">
              <ref role="37wK5l" to="kqnc:5H6hZahiCgu" resolve="allSubtypePathsTo" />
              <ref role="1Pybhc" to="kqnc:tIwzd2cJHD" resolve="SubclassingUtil" />
              <node concept="3xONca" id="2shrukTDvVX" role="37wK5m">
                <ref role="3xOPvv" node="7t5VLKGTHET" resolve="C" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="7t5VLKGSich" role="3cqZAp">
          <node concept="2OqwBi" id="7t5VLKGSj7i" role="3vwVQn">
            <node concept="2WthIp" id="7t5VLKGSj7l" role="2Oq$k0" />
            <node concept="2XshWL" id="7t5VLKGSj7n" role="2OqNvi">
              <ref role="2WH_rO" node="7t5VLKGS9tZ" resolve="same" />
              <node concept="37vLTw" id="7t5VLKGSjv4" role="2XxRq1">
                <ref role="3cqZAo" node="7t5VLKGThb6" resolve="expected" />
              </node>
              <node concept="37vLTw" id="2shrukTDvVY" role="2XxRq1">
                <ref role="3cqZAo" node="2shrukTDvVV" resolve="found" />
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
        <node concept="3cpWs8" id="7t5VLKGTHec" role="3cqZAp">
          <node concept="3cpWsn" id="7t5VLKGTHed" role="3cpWs9">
            <property role="TrG5h" value="expected" />
            <node concept="_YKpA" id="7t5VLKGTHee" role="1tU5fm">
              <node concept="_YKpA" id="2shrukTDgsO" role="_ZDj9">
                <node concept="3Tqbb2" id="2shrukTDgE0" role="_ZDj9" />
              </node>
            </node>
            <node concept="2OqwBi" id="7t5VLKGTHeg" role="33vP2m">
              <node concept="2OqwBi" id="7t5VLKGTHeh" role="2Oq$k0">
                <node concept="2OqwBi" id="7t5VLKGTHei" role="2Oq$k0">
                  <node concept="3xONca" id="7t5VLKGTHej" role="2Oq$k0">
                    <ref role="3xOPvv" node="7t5VLKGTGo8" resolve="expected_D" />
                  </node>
                  <node concept="3Tsc0h" id="7t5VLKGTHek" role="2OqNvi">
                    <ref role="3TtcxE" to="tp68:hHp56YpiWP" resolve="actualArgument" />
                  </node>
                </node>
                <node concept="3$u5V9" id="7t5VLKGTHel" role="2OqNvi">
                  <node concept="1bVj0M" id="7t5VLKGTHem" role="23t8la">
                    <node concept="3clFbS" id="7t5VLKGTHen" role="1bW5cS">
                      <node concept="3clFbF" id="7t5VLKGTHeo" role="3cqZAp">
                        <node concept="2OqwBi" id="7t5VLKGTHep" role="3clFbG">
                          <node concept="1PxgMI" id="7t5VLKGTHeq" role="2Oq$k0">
                            <node concept="37vLTw" id="7t5VLKGTHer" role="1m5AlR">
                              <ref role="3cqZAo" node="7t5VLKGTHet" resolve="it" />
                            </node>
                            <node concept="chp4Y" id="6fXjIfxgngx" role="3oSUPX">
                              <ref role="cht4Q" to="tp68:h5nCRdH" resolve="InternalNewExpression" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7t5VLKGTHes" role="2OqNvi">
                            <ref role="3TtcxE" to="tp68:i3HumyW" resolve="parameter" />
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
        <node concept="3cpWs8" id="2shrukTC76x" role="3cqZAp">
          <node concept="3cpWsn" id="2shrukTC76y" role="3cpWs9">
            <property role="TrG5h" value="found" />
            <node concept="_YKpA" id="2shrukTC76n" role="1tU5fm">
              <node concept="_YKpA" id="2shrukTC76u" role="_ZDj9">
                <node concept="3Tqbb2" id="2shrukTC76v" role="_ZDj9">
                  <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2shrukTDfVZ" role="33vP2m">
              <ref role="37wK5l" to="kqnc:5H6hZahiCgu" resolve="allSubtypePathsTo" />
              <ref role="1Pybhc" to="kqnc:tIwzd2cJHD" resolve="SubclassingUtil" />
              <node concept="3xONca" id="2shrukTDfW0" role="37wK5m">
                <ref role="3xOPvv" node="7t5VLKGGsK4" resolve="D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="7t5VLKGTHex" role="3cqZAp">
          <node concept="2OqwBi" id="7t5VLKGTHey" role="3vwVQn">
            <node concept="2WthIp" id="7t5VLKGTHez" role="2Oq$k0" />
            <node concept="2XshWL" id="7t5VLKGTHe$" role="2OqNvi">
              <ref role="2WH_rO" node="7t5VLKGS9tZ" resolve="same" />
              <node concept="37vLTw" id="7t5VLKGTHe_" role="2XxRq1">
                <ref role="3cqZAo" node="7t5VLKGTHed" resolve="expected" />
              </node>
              <node concept="37vLTw" id="2shrukTC76_" role="2XxRq1">
                <ref role="3cqZAo" node="2shrukTC76y" resolve="found" />
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
        <node concept="3cpWs8" id="4JRKVCv9wTo" role="3cqZAp">
          <node concept="3cpWsn" id="4JRKVCv9wTp" role="3cpWs9">
            <property role="TrG5h" value="expected" />
            <node concept="_YKpA" id="4JRKVCv9wTq" role="1tU5fm">
              <node concept="_YKpA" id="2shrukTDh0H" role="_ZDj9">
                <node concept="3Tqbb2" id="2shrukTDh0I" role="_ZDj9" />
              </node>
            </node>
            <node concept="2OqwBi" id="4JRKVCv9wTs" role="33vP2m">
              <node concept="2OqwBi" id="4JRKVCv9wTt" role="2Oq$k0">
                <node concept="2OqwBi" id="4JRKVCv9wTu" role="2Oq$k0">
                  <node concept="3xONca" id="4JRKVCv9xsD" role="2Oq$k0">
                    <ref role="3xOPvv" node="4JRKVCv8K6n" resolve="expected_String" />
                  </node>
                  <node concept="3Tsc0h" id="4JRKVCv9wTw" role="2OqNvi">
                    <ref role="3TtcxE" to="tp68:hHp56YpiWP" resolve="actualArgument" />
                  </node>
                </node>
                <node concept="3$u5V9" id="4JRKVCv9wTx" role="2OqNvi">
                  <node concept="1bVj0M" id="4JRKVCv9wTy" role="23t8la">
                    <node concept="3clFbS" id="4JRKVCv9wTz" role="1bW5cS">
                      <node concept="3clFbF" id="4JRKVCv9wT$" role="3cqZAp">
                        <node concept="2OqwBi" id="4JRKVCv9wT_" role="3clFbG">
                          <node concept="1PxgMI" id="4JRKVCv9wTA" role="2Oq$k0">
                            <node concept="37vLTw" id="4JRKVCv9wTB" role="1m5AlR">
                              <ref role="3cqZAo" node="4JRKVCv9wTD" resolve="it" />
                            </node>
                            <node concept="chp4Y" id="6fXjIfxgngy" role="3oSUPX">
                              <ref role="cht4Q" to="tp68:h5nCRdH" resolve="InternalNewExpression" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="4JRKVCv9wTC" role="2OqNvi">
                            <ref role="3TtcxE" to="tp68:i3HumyW" resolve="parameter" />
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
        <node concept="3cpWs8" id="2shrukTAX1n" role="3cqZAp">
          <node concept="3cpWsn" id="2shrukTAX1o" role="3cpWs9">
            <property role="TrG5h" value="found" />
            <node concept="_YKpA" id="2shrukTAX1d" role="1tU5fm">
              <node concept="_YKpA" id="2shrukTAX1k" role="_ZDj9">
                <node concept="3Tqbb2" id="2shrukTAX1l" role="_ZDj9">
                  <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2shrukTBZPV" role="33vP2m">
              <ref role="37wK5l" to="kqnc:5H6hZahiCgu" resolve="allSubtypePathsTo" />
              <ref role="1Pybhc" to="kqnc:tIwzd2cJHD" resolve="SubclassingUtil" />
              <node concept="2OqwBi" id="4cvvxaYgObv" role="37wK5m">
                <node concept="2tJFMh" id="4cvvxaYgM9x" role="2Oq$k0">
                  <node concept="ZC_QK" id="4cvvxaYgN$8" role="2tJFKM">
                    <ref role="2aWVGs" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="Vyspw" id="4cvvxaYgP1B" role="2OqNvi">
                  <node concept="2OqwBi" id="4cvvxaYgVNw" role="Vysub">
                    <node concept="2JrnkZ" id="4cvvxaYgVky" role="2Oq$k0">
                      <node concept="2OqwBi" id="4cvvxaYgR3E" role="2JrQYb">
                        <node concept="3xONca" id="4cvvxaYgQq8" role="2Oq$k0">
                          <ref role="3xOPvv" node="7t5VLKGB12r" resolve="A" />
                        </node>
                        <node concept="I4A8Y" id="4cvvxaYgT1r" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4cvvxaYgWs1" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="4JRKVCv9wTH" role="3cqZAp">
          <node concept="2OqwBi" id="4JRKVCv9wTI" role="3vwVQn">
            <node concept="2WthIp" id="4JRKVCv9wTJ" role="2Oq$k0" />
            <node concept="2XshWL" id="4JRKVCv9wTK" role="2OqNvi">
              <ref role="2WH_rO" node="7t5VLKGS9tZ" resolve="same" />
              <node concept="37vLTw" id="4JRKVCv9wTL" role="2XxRq1">
                <ref role="3cqZAo" node="4JRKVCv9wTp" resolve="expected" />
              </node>
              <node concept="37vLTw" id="2shrukTAX1r" role="2XxRq1">
                <ref role="3cqZAo" node="2shrukTAX1o" resolve="found" />
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
          <node concept="3uibUv" id="2shrukTDfVx" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGr0Y" resolve="Container.C" />
          </node>
        </node>
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
          <node concept="3uibUv" id="2shrukTDfUF" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGr0Y" resolve="Container.C" />
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
          <node concept="3uibUv" id="2shrukTDfTh" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGr2e" resolve="Container.D" />
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
          <node concept="3uibUv" id="2shrukTDfUc" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGr2e" resolve="Container.D" />
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
          <node concept="3uibUv" id="2shrukTDfTH" role="3HumAs">
            <ref role="3uigEE" node="7t5VLKGGr2e" resolve="Container.D" />
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
        <node concept="1nCR9W" id="4JRKVCv9wNK" role="2U24H$">
          <property role="1nD$Q0" value="_" />
          <node concept="3uibUv" id="4JRKVCv9wNL" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="4JRKVCv9wNN" role="3HumAs">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
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
        <node concept="3cqZAl" id="4JRKVCv8K6m" role="32Mpfj" />
        <node concept="3xLA65" id="4JRKVCv8K6n" role="lGtFl">
          <property role="TrG5h" value="expected_String" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="7t5VLKGQVAO">
    <property role="2XOHcw" value="${mpscore_home}" />
  </node>
  <node concept="3s_ewN" id="7t5VLKGALSG">
    <property role="3s_ewP" value="Lub" />
    <node concept="312cEg" id="5jCHAT2dJM2" role="jymVt">
      <property role="TrG5h" value="NO_CONTEXT" />
      <node concept="3Tm6S6" id="5jCHAT2dJM3" role="1B3o_S" />
      <node concept="3uibUv" id="5jCHAT2dKeE" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
      </node>
      <node concept="2ShNRf" id="5jCHAT2dKg0" role="33vP2m">
        <node concept="YeOm9" id="5jCHAT2dKnF" role="2ShVmc">
          <node concept="1Y3b0j" id="5jCHAT2dKnI" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="bj13:~LogicalContext" resolve="LogicalContext" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5jCHAT2dKnJ" role="1B3o_S" />
            <node concept="3clFb_" id="5jCHAT2dKnK" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="variable" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="5jCHAT2dKnL" role="1B3o_S" />
              <node concept="16euLQ" id="5jCHAT2dKnN" role="16eVyc">
                <property role="TrG5h" value="V" />
              </node>
              <node concept="3uibUv" id="5jCHAT2dKnO" role="3clF45">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="16syzq" id="5jCHAT2dKnP" role="11_B2D">
                  <ref role="16sUi3" node="5jCHAT2dKnN" resolve="V" />
                </node>
              </node>
              <node concept="37vLTG" id="5jCHAT2dKnQ" role="3clF46">
                <property role="TrG5h" value="p0" />
                <node concept="3uibUv" id="5jCHAT2dKnR" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  <node concept="16syzq" id="5jCHAT2dKnS" role="11_B2D">
                    <ref role="16sUi3" node="5jCHAT2dKnN" resolve="V" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5jCHAT2dKnT" role="3clF47">
                <node concept="YS8fn" id="5jCHAT2dKwo" role="3cqZAp">
                  <node concept="2ShNRf" id="5jCHAT2dKxx" role="YScLw">
                    <node concept="1pGfFk" id="5jCHAT2dKLh" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="5jCHAT2dKOW" role="37wK5m">
                        <property role="Xl_RC" value="not implemented" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5jCHAT2dNAi" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7t5VLKGALSN" role="1B3o_S" />
    <node concept="3s_gsd" id="7t5VLKGALSO" role="3s_ewO">
      <node concept="3s$Bmu" id="7t5VLKGALSP" role="3s_gse">
        <property role="3s$Bm0" value="lub_no_lub" />
        <node concept="3cqZAl" id="7t5VLKGALSQ" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALSR" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALSS" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALST" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALSU" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALSV" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALSW" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySH" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGVBb" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTh" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGVD5" role="38e3mL">
                        <node concept="1oi5UN" id="4JRKVCv2hys" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2hyt" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2hyu" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2hyv" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2hyw" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALT3" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALT4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALT5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALT6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALT7" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALT8" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALT9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALTa" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALTb" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALTc" role="1oi5zu">
                              <property role="1oi5yK" value="List" />
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
          <node concept="3cpWs8" id="7t5VLKGALTd" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALTe" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALTf" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALTg" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyT2" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGVFg" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTy" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGVGG" role="38e3mL">
                        <node concept="1oi5UN" id="4JRKVCv896o" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv896p" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv896q" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv896r" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv896s" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALTn" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALTo" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALTp" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALTq" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALTr" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
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
          <node concept="3clFbH" id="7t5VLKGALTs" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALTt" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALTu" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7dtr" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7jXZ" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="7t5VLKGALTw" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7cy2" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7cQw" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7hYU" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7t5VLKGALTz" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALT$" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="7t5VLKGALT_" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qn" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="7t5VLKGALTB" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKGALTu" resolve="var" />
                </node>
                <node concept="2ShNRf" id="7t5VLKGALTC" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALTD" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="7t5VLKGALTE" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALSU" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7t5VLKGALTF" role="37wK5m">
                  <node concept="1pGfFk" id="7t5VLKGALTG" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="7t5VLKGALTH" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALTe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4JRKVCv8abP" role="3cqZAp" />
          <node concept="3vwNmj" id="4JRKVCv8a67" role="3cqZAp">
            <node concept="37vLTw" id="4JRKVCv8a68" role="3vwVQn">
              <ref role="3cqZAo" node="7t5VLKGALT$" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="4JRKVCv8a69" role="3cqZAp">
            <node concept="2OqwBi" id="4JRKVCv8a6a" role="3vwVQn">
              <node concept="37vLTw" id="4JRKVCv8a6b" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKGALTu" resolve="var" />
              </node>
              <node concept="liA8E" id="4JRKVCv8a6c" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4JRKVCv8a6d" role="3cqZAp" />
          <node concept="3cpWs8" id="4JRKVCv8a6e" role="3cqZAp">
            <node concept="3cpWsn" id="4JRKVCv8a6f" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="4JRKVCv8a6g" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="4JRKVCv8a6h" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTi" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGVIc" role="38e3mL">
                    <node concept="1oi5UN" id="4JRKVCv8a6l" role="KCVpo">
                      <node concept="1oi5Wm" id="4JRKVCv8a6m" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="4JRKVCv8a6n" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="4JRKVCv8a6o" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="4JRKVCv8a6p" role="1oi5zu">
                          <property role="1oi5yK" value="Object" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_vh_" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_vpp" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_vmP" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_vlo" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_voQ" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_vsV" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2i38C" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_vy4" role="37wK5m">
                    <ref role="3cqZAo" node="4JRKVCv8a6f" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_vy5" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKGALTu" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2i3xA" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALTP" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_list" />
        <node concept="3cqZAl" id="7t5VLKGALTQ" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALTR" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALTS" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALTT" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALTU" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALTV" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALTW" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySE" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGZ_4" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTe" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGZ_6" role="38e3mL">
                        <node concept="1oi5UN" id="3t7_2FgGZ_7" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZ_8" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_9" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZ_a" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_b" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZ_c" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZ_d" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_e" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZ_f" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_g" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZ_h" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZ_i" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_j" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZ_k" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZ_l" role="1oi5zu">
                              <property role="1oi5yK" value="List" />
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
          <node concept="3cpWs8" id="7t5VLKGALUd" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALUe" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALUf" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALUg" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTI" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGZG9" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyS_" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgGZGb" role="38e3mL">
                        <node concept="1oi5UN" id="3t7_2FgGZGc" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZGd" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZGe" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZGf" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZGg" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZGh" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZGi" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZGj" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZGk" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZGl" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgGZGm" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgGZGn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgGZGo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgGZGp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgGZGq" role="1oi5zu">
                              <property role="1oi5yK" value="List" />
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
          <node concept="3clFbH" id="7t5VLKGALUx" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7RDT" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7RDU" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7RDV" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7RDW" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7RDX" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7RDY" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7RDZ" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7RE0" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7RE1" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7RE2" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7RE3" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qh" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7RE5" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7RDU" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7RE6" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7RE7" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7RE8" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALTU" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7RE9" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7REa" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7REb" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALUe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALUN" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALUO" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALUP" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7RE2" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALUQ" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALUR" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALUS" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7RDU" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALUT" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALUU" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALUV" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALUW" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALUX" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALUY" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTz" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgGZHT" role="38e3mL">
                    <node concept="1oi5UN" id="7t5VLKGALV2" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALV3" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALV4" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALV5" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALV6" role="1oi5zu">
                          <property role="1oi5yK" value="List" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_vXh" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_vXi" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_vXj" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_vXk" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_vXl" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_vXm" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2i00V" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_vXo" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKGALUW" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_vXp" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7RDU" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2i0qO" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALVd" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_iterable" />
        <node concept="3cqZAl" id="7t5VLKGALVe" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALVf" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALVg" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALVh" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALVi" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALVj" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALVk" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyT3" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH1H$" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTq" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH1HA" role="38e3mL">
                        <node concept="1oi5UN" id="3t7_2FgH1HB" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1HC" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1HD" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1HE" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1HF" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH1HG" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1HH" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1HI" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1HJ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1HK" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH1HL" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1HM" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1HN" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1HO" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1HP" role="1oi5zu">
                              <property role="1oi5yK" value="List" />
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
          <node concept="3cpWs8" id="7t5VLKGALV_" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALVA" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALVB" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALVC" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyT8" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH1Jd" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyT6" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH1Jf" role="38e3mL">
                        <node concept="1oi5UN" id="3t7_2FgH1Jg" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1Jh" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1Ji" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1Jj" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1Jk" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH1Jl" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH1Jm" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH1Jn" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH1Jo" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH1Jp" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
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
          <node concept="3clFbH" id="7t5VLKGALVO" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7ovE" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7ovF" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7ovG" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7ovH" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7ovI" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7ovJ" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7ovK" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7ovL" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7ovM" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7ovN" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7ovO" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qo" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7ovQ" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7ovF" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7ovR" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7ovS" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7ovT" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALVi" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7ovU" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7ovV" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7ovW" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALVA" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALW6" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALW7" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALW8" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7ovN" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALW9" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALWa" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALWb" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7ovF" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALWc" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALWd" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALWe" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALWf" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALWg" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALWh" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyT$" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH1L7" role="38e3mL">
                    <node concept="1oi5UN" id="7t5VLKGALWl" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALWm" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALWn" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALWo" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALWp" role="1oi5zu">
                          <property role="1oi5yK" value="Iterable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_wc8" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_wc9" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_wca" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_wcb" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_wcc" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_wcd" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2i0CB" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_wcf" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKGALWf" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_wcg" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7ovF" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2i12C" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALWw" role="3s_gse">
        <property role="3s$Bm0" value="lub_list_abstractList" />
        <node concept="3cqZAl" id="7t5VLKGALWx" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALWy" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALWz" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALW$" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALW_" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALWA" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALWB" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySK" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH3LO" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySI" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH3LQ" role="38e3mL">
                        <node concept="1oi5UN" id="3t7_2FgH3LR" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3LS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3LT" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3LU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3LV" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3LW" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3LX" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3LY" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3LZ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3M0" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3M1" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3M2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3M3" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3M4" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3M5" role="1oi5zu">
                              <property role="1oi5yK" value="List" />
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
          <node concept="3cpWs8" id="7t5VLKGALWS" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALWT" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALWU" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALWV" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTH" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH3SO" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySB" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3t7_2FgH3SQ" role="38e3mL">
                        <node concept="1oi5UN" id="3t7_2FgH3SR" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3SS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3ST" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3SU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3SV" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3SW" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3SX" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3SY" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3SZ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3T0" role="1oi5zu">
                              <property role="1oi5yK" value="Iterable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3T1" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3T2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3T3" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3T4" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3T5" role="1oi5zu">
                              <property role="1oi5yK" value="List" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3t7_2FgH3T6" role="KCVpo">
                          <node concept="1oi5Wm" id="3t7_2FgH3T7" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3t7_2FgH3T8" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3t7_2FgH3T9" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3t7_2FgH3Ta" role="1oi5zu">
                              <property role="1oi5yK" value="AbstractList" />
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
          <node concept="3clFbH" id="7t5VLKGALXh" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7saE" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7saF" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7saG" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7saH" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7saI" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7saJ" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7saK" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7saL" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7saM" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7saN" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7saO" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qi" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7saQ" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7saF" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7saR" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7saS" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7saT" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALW_" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7saU" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7saV" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7saW" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALWT" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALXz" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALX$" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALX_" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7saN" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALXA" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALXB" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALXC" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7saF" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALXD" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALXE" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALXF" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALXG" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALXH" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALXI" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySX" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH3YN" role="38e3mL">
                    <node concept="1oi5UN" id="7t5VLKGALXM" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALXN" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALXO" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALXP" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALXQ" role="1oi5zu">
                          <property role="1oi5yK" value="List" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_w_e" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_w_f" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_w_g" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_w_h" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_w_i" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_w_j" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2i2vU" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_w_l" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKGALXG" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_w_m" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7saF" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2i2Uj" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="7t5VLKGALXX" role="3s_gse">
        <property role="3s$Bm0" value="lub_string_integer" />
        <node concept="3cqZAl" id="7t5VLKGALXY" role="3clF45" />
        <node concept="3Tm1VV" id="7t5VLKGALXZ" role="1B3o_S" />
        <node concept="3clFbS" id="7t5VLKGALY0" role="3clF47">
          <node concept="3cpWs8" id="7t5VLKGALY1" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALY2" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="7t5VLKGALY3" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALY4" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyT7" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3t7_2FgH5ZX" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTj" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYa" role="38e3mL">
                        <node concept="1oi5UN" id="4JRKVCv2hzS" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2hzT" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2hzU" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2hzV" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2hzW" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYb" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYd" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYe" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYf" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYg" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYh" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYi" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYj" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYk" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySJ" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYn" role="38e3mL">
                        <node concept="1oi5UN" id="4JRKVCv2h$c" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h$d" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h$e" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h$f" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h$g" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYo" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYp" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYq" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYr" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYs" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYt" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYu" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYv" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYw" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYx" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
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
          <node concept="3cpWs8" id="7t5VLKGALYy" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALYz" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="7t5VLKGALY$" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALY_" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySF" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="7t5VLKGALYC" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTg" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYF" role="38e3mL">
                        <node concept="1oi5UN" id="4JRKVCv2h$w" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h$x" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h$y" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h$z" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h$$" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYG" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYH" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYI" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYJ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYK" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYL" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYM" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYN" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYO" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYP" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYQ" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYR" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALYS" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALYT" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALYU" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyT5" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALYX" role="38e3mL">
                        <node concept="1oi5UN" id="4JRKVCv2h$T" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h$U" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h$V" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h$W" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h$X" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALYY" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALYZ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZ0" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZ1" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZ2" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALZ3" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALZ4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZ5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZ6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZ7" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySZ" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="7t5VLKGALZa" role="38e3mL">
                        <node concept="1oi5UN" id="4JRKVCv2h_d" role="KCVpo">
                          <node concept="1oi5Wm" id="4JRKVCv2h_e" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4JRKVCv2h_f" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="4JRKVCv2h_g" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="4JRKVCv2h_h" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALZb" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALZc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZd" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZe" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZf" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="7t5VLKGALZg" role="KCVpo">
                          <node concept="1oi5Wm" id="7t5VLKGALZh" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="7t5VLKGALZi" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="7t5VLKGALZj" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="7t5VLKGALZk" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
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
          <node concept="3clFbH" id="7t5VLKGALZl" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7vK3" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7vK4" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7vK5" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7vK6" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7vK7" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7vK8" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7vK9" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7vKa" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7vKb" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7vKc" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7vKd" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qf" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7vKf" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7vK4" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7vKg" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7vKh" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7vKi" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALY2" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7vKj" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7vKk" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7vKl" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKGALYz" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6yEjedm7vHC" role="3cqZAp" />
          <node concept="3vwNmj" id="7t5VLKGALZC" role="3cqZAp">
            <node concept="37vLTw" id="7t5VLKGALZD" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7vKc" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="7t5VLKGALZE" role="3cqZAp">
            <node concept="2OqwBi" id="7t5VLKGALZF" role="3vwVQn">
              <node concept="37vLTw" id="7t5VLKGALZG" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7vK4" resolve="var" />
              </node>
              <node concept="liA8E" id="7t5VLKGALZH" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7t5VLKGALZI" role="3cqZAp" />
          <node concept="3cpWs8" id="7t5VLKGALZJ" role="3cqZAp">
            <node concept="3cpWsn" id="7t5VLKGALZK" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="7t5VLKGALZL" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="7t5VLKGALZM" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyST" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="7t5VLKGALZP" role="38e3mL">
                    <node concept="1oi5UN" id="7t5VLKGALZQ" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALZR" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALZS" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALZT" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALZU" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="7t5VLKGALZV" role="KCVpo">
                      <node concept="1oi5Wm" id="7t5VLKGALZW" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="7t5VLKGALZX" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="7t5VLKGALZY" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="7t5VLKGALZZ" role="1oi5zu">
                          <property role="1oi5yK" value="Comparable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_wPq" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_wPr" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_wPs" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_wPt" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_wPu" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_wPv" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2hZnc" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_wPx" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKGALZK" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_wPy" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7vK4" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2hZNg" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3hfdu5cNgqx" role="3s_gse">
        <property role="3s$Bm0" value="lub_boxed_boxed" />
        <node concept="3cqZAl" id="3hfdu5cNgqy" role="3clF45" />
        <node concept="3Tm1VV" id="3hfdu5cNgqz" role="1B3o_S" />
        <node concept="3clFbS" id="3hfdu5cNgq$" role="3clF47">
          <node concept="3SKdUt" id="4kzL_z3qz1z" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz6r" role="3SKWNk">
              <property role="3SKdUp" value="the tests boxed_boxed, boxed_prim, and prim_prim are in fact identical for now" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzd1" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzi4" role="3SKWNk">
              <property role="3SKdUp" value="this is because the boxed types behave differently from ordinary classifier types" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzoG" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qztL" role="3SKWNk">
              <property role="3SKdUp" value="for example, lub(Long,Double)=double" />
            </node>
          </node>
          <node concept="3clFbH" id="4kzL_z3qzDL" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cNgq_" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgqA" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3hfdu5cNgqB" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cNgqC" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTf" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cNgqE" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySU" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2m2H" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2m2I" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2m2J" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2m2K" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2m2L" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2m2M" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2m2N" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2m2O" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2m2P" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2m2Q" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTG" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNgVC" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cNgVD" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgVE" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgVF" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgVG" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgVH" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgVI" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgVJ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgVK" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgVL" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgVM" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgVN" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgVO" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgVP" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgVQ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgVR" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3qyf$" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3qyf_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3qyfA" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySG" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNgqG" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cNgqH" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgqI" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgqJ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgqK" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgqL" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgqM" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgqN" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgqO" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgqP" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgqQ" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgqR" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgqS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgqT" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgqU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgqV" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNgTf" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNgTg" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNgTh" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cNgTi" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cNgTj" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3qyfT" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3qyfU" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3qyfV" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3hfdu5cNgrd" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgre" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3hfdu5cNgrf" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cNgrg" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySL" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cNgri" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTx" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNhbE" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cNAgM" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAgN" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAgO" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNAil" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAim" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAin" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNhbV" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNhbW" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNhbX" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNhc4" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNhc5" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNhc6" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2pms" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2pmt" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2pmu" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2pmv" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2pmw" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTa" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2mIR" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2mIS" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mIT" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mIU" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mIV" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mIW" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mIX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mIY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mIZ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJ0" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJ1" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJ2" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJ3" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJ4" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJ5" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJ6" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySY" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2mJp" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2mJq" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJr" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJs" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJt" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJu" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJv" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJw" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJx" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJy" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJz" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJ$" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJ_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJA" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJB" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJC" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2mJD" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2mJE" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2mJF" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2mJG" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2mJH" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
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
          <node concept="3clFbH" id="3hfdu5cNgsb" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7zh9" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7zha" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7zhb" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7zhc" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7zhd" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7zhe" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7zhf" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7zhg" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7zhh" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7zhi" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7zhj" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3ql" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7zhl" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7zha" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7zhm" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7zhn" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7zho" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cNgqA" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7zhp" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7zhq" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7zhr" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cNgre" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cNgst" role="3cqZAp" />
          <node concept="3vwNmj" id="3hfdu5cNgsu" role="3cqZAp">
            <node concept="37vLTw" id="3hfdu5cNgsv" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7zhi" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3hfdu5cNgsw" role="3cqZAp">
            <node concept="2OqwBi" id="3hfdu5cNgsx" role="3vwVQn">
              <node concept="37vLTw" id="3hfdu5cNgsy" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7zha" resolve="var" />
              </node>
              <node concept="liA8E" id="3hfdu5cNgsz" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cNgs$" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cNgs_" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cNgsA" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3hfdu5cNgsB" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cNgsC" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySC" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cNgsE" role="38e3mL">
                    <node concept="1oi5UN" id="3KV3FXk2o5M" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2o5N" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2o5O" role="1oi5zu">
                          <property role="1oi5yK" value="LongType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_x7_" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_x7A" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_x7B" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_x7C" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_x7D" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_x7E" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2hYBO" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_x7G" role="37wK5m">
                    <ref role="3cqZAo" node="3hfdu5cNgsA" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_x7H" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7zha" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2hZ15" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3KV3FXk2oHI" role="3s_gse">
        <property role="3s$Bm0" value="lub_boxed_prim" />
        <node concept="3cqZAl" id="3KV3FXk2oHJ" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXk2oHK" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXk2oHL" role="3clF47">
          <node concept="3SKdUt" id="4kzL_z3qz$g" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz$h" role="3SKWNk">
              <property role="3SKdUp" value="the tests boxed_boxed, boxed_prim, and prim_prim are in fact identical for now" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qz$i" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz$j" role="3SKWNk">
              <property role="3SKdUp" value="this is because the boxed types behave differently from ordinary classifier types" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qz$k" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qz$l" role="3SKWNk">
              <property role="3SKdUp" value="for example, lub(Long,Double)=double" />
            </node>
          </node>
          <node concept="3clFbH" id="4kzL_z3qzv8" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2oHM" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oHN" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3KV3FXk2oHO" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2oHP" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTt" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2oHR" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTJ" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oHT" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2oHU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oHV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oHW" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oHX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oHY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oHZ" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oI0" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oI1" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oI2" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySz" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oI9" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2oIa" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIb" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIc" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oId" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIe" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIf" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIg" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIh" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIi" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIj" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIk" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIl" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIm" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIn" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIo" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3q$$G" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3q$$H" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3q$$I" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTn" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oIq" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2oIr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIs" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIv" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oI$" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oI_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIB" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIC" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oID" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3q$_1" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3q$_2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3q$_3" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTE" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oIF" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2oIG" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIH" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oII" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIJ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIK" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIL" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIM" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIN" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIO" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIP" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIQ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIR" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIS" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIT" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIU" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oIV" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oIW" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oIX" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oIY" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oIZ" role="1oi5zu">
                              <property role="1oi5yK" value="Double" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="4kzL_z3q$_m" role="KCVpo">
                          <node concept="1oi5Wm" id="4kzL_z3q$_n" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="4kzL_z3q$_o" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXk2oJ0" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oJ1" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3KV3FXk2oJ2" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2oJ3" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTD" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2oJ5" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySV" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oJ7" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2oJ8" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJ9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJa" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJb" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJd" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJe" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJf" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJg" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJh" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJi" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJj" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySS" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oJl" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2oJm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJq" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJs" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJv" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJ$" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJ_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJB" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySW" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2oJD" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2oJE" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJF" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJG" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJH" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJI" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJJ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJK" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJL" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJM" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJN" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJS" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJT" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJU" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oJV" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2oJW" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2oJX" role="1oi5zu">
                              <property role="1oi5yK" value="Integer" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2oJY" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2oJZ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2oK0" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
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
          <node concept="3clFbH" id="3KV3FXk2oK1" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7AXW" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7AXX" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7AXY" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7AXZ" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7AY0" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7AY1" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7AY2" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7AY3" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7AY4" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7AY5" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7AY6" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qe" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7AY8" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7AXX" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7AY9" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7AYa" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7AYb" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2oHN" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7AYc" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7AYd" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7AYe" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2oJ1" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2oKj" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXk2oKk" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXk2oKl" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7AY5" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXk2oKm" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk2oKn" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXk2oKo" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7AXX" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXk2oKp" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2oKq" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2oKr" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2oKs" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXk2oKt" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2oKu" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTc" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2oKw" role="38e3mL">
                    <node concept="1oi5UN" id="3KV3FXk2oKx" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2oKy" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2oKz" role="1oi5zu">
                          <property role="1oi5yK" value="LongType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_xqP" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_xqQ" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_xqR" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_xqS" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_xqT" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_xqU" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2i1gz" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_xqW" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXk2oKs" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_xqX" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7AXX" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2i1EG" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3hfdu5cN_JR" role="3s_gse">
        <property role="3s$Bm0" value="lub_primitive_primitive" />
        <node concept="3cqZAl" id="3hfdu5cN_JS" role="3clF45" />
        <node concept="3Tm1VV" id="3hfdu5cN_JT" role="1B3o_S" />
        <node concept="3clFbS" id="3hfdu5cN_JU" role="3clF47">
          <node concept="3SKdUt" id="4kzL_z3qzNA" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzNB" role="3SKWNk">
              <property role="3SKdUp" value="the tests boxed_boxed, boxed_prim, and prim_prim are in fact identical for now" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzNC" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzND" role="3SKWNk">
              <property role="3SKdUp" value="this is because the boxed types behave differently from ordinary classifier types" />
            </node>
          </node>
          <node concept="3SKdUt" id="4kzL_z3qzNE" role="3cqZAp">
            <node concept="3SKdUq" id="4kzL_z3qzNF" role="3SKWNk">
              <property role="3SKdUp" value="for example, lub(Long,Double)=double" />
            </node>
          </node>
          <node concept="3clFbH" id="4kzL_z3qzIR" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cN_JV" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_JW" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3hfdu5cN_JX" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cN_JY" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyT4" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cN_K0" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTs" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cNAep" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cNAgi" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAgj" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAgk" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNAhR" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAhS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAhT" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cNAet" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cNAeu" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cNAev" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyT9" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_K2" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cN_K3" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_K4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_K5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_K6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_K7" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_K8" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_K9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ka" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Kb" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Kc" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Kd" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Ke" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Kf" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Kg" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Kh" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjZ5jx" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjZ5jy" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjZ5jz" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTA" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_K$" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cN_K_" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KB" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KC" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KD" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_KE" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KF" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KG" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KH" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KI" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_KJ" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KK" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KL" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KM" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KN" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_KO" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_KP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_KQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_KR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_KS" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjZ5k$" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjZ5k_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjZ5kA" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3hfdu5cN_KT" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_KU" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3hfdu5cN_KV" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cN_KW" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTk" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cN_KY" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyTp" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_L0" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cN_L4" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_L5" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_L6" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTr" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_Lb" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cN_Lc" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Ld" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Le" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Lf" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lg" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Lh" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Li" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lj" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Lk" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ll" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Lm" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Ln" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Lp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Lq" role="1oi5zu">
                              <property role="1oi5yK" value="Double" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Lw" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Lx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ly" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTu" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3hfdu5cN_LX" role="38e3mL">
                        <node concept="1oi5UN" id="3hfdu5cN_LY" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_LZ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_M0" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_M1" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_M2" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_M3" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_M4" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_M5" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_M6" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_M7" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_M8" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_M9" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Ma" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Mb" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mc" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Md" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Me" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mf" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3hfdu5cN_Mg" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mh" role="1oi5zu">
                              <property role="1oi5yK" value="Double" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3hfdu5cN_Mn" role="KCVpo">
                          <node concept="1oi5Wm" id="3hfdu5cN_Mo" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3hfdu5cN_Mp" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
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
          <node concept="3clFbH" id="3hfdu5cN_Mq" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7Eju" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7Ejv" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7Ejw" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7Ejx" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7Ejy" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7Ejz" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7Ej$" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7Ej_" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7EjA" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7EjB" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7EjC" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qk" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7EjE" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7Ejv" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7EjF" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7EjG" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7EjH" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cN_JW" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7EjI" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7EjJ" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7EjK" role="37wK5m">
                      <ref role="3cqZAo" node="3hfdu5cN_KU" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cN_MG" role="3cqZAp" />
          <node concept="3vwNmj" id="3hfdu5cN_MH" role="3cqZAp">
            <node concept="37vLTw" id="3hfdu5cN_MI" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7EjB" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3hfdu5cN_MJ" role="3cqZAp">
            <node concept="2OqwBi" id="3hfdu5cN_MK" role="3vwVQn">
              <node concept="37vLTw" id="3hfdu5cN_ML" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7Ejv" resolve="var" />
              </node>
              <node concept="liA8E" id="3hfdu5cN_MM" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3hfdu5cN_MN" role="3cqZAp" />
          <node concept="3cpWs8" id="3hfdu5cN_MO" role="3cqZAp">
            <node concept="3cpWsn" id="3hfdu5cN_MP" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3hfdu5cN_MQ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3hfdu5cN_MR" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyT_" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3hfdu5cN_MT" role="38e3mL">
                    <node concept="1oi5UN" id="3hfdu5cN_MU" role="KCVpo">
                      <node concept="1oi5Wm" id="3hfdu5cN_MV" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3hfdu5cN_MW" role="1oi5zu">
                          <property role="1oi5yK" value="DoubleType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_xIi" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_xIj" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_xIk" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_xIl" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_xIm" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_xIn" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2hXW8" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_xIp" role="37wK5m">
                    <ref role="3cqZAo" node="3hfdu5cN_MP" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_xIq" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7Ejv" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2hYqp" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3KV3FXjXcp7" role="3s_gse">
        <property role="3s$Bm0" value="lub_primitive_string" />
        <node concept="3cqZAl" id="3KV3FXjXcp8" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXjXcp9" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXjXcpa" role="3clF47">
          <node concept="3cpWs8" id="3KV3FXjXcpb" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcpc" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3KV3FXjXcpd" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXjXcpe" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySM" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXjXcpg" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySP" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcpi" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXjXcpm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpo" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpp" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpq" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpr" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcps" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpt" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpu" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyT1" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcpw" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXjXcpx" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpy" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpz" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcp$" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcp_" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpA" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpB" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpC" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpD" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpE" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpF" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpG" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpH" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpI" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpJ" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2lnv" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2lnw" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2lnx" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTl" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcpL" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXjXcpM" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpN" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpO" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpP" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpQ" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpR" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpS" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpT" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpU" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcpV" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcpW" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcpX" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcpY" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcpZ" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcq0" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcq1" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcq2" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcq3" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcq4" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcq5" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2lnO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2lnP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2lnQ" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXjXcq6" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcq7" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3KV3FXjXcq8" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXjXcq9" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyS$" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXjXcqb" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbyT0" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcql" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXjXcqm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqq" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqs" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqv" role="1oi5zu">
                              <property role="1oi5yK" value="CharSequence" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcq$" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcq_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqB" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTB" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcVT" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXjXcVU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcVV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcVW" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcVX" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcVY" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcVZ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcW0" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcW1" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcW2" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcW3" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcW4" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcW5" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcW6" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcW7" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcW8" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcW9" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcWa" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcWb" role="1oi5zu">
                              <property role="1oi5yK" value="IntegerType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbySQ" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXjXcqD" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXjXcqE" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqF" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqG" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqH" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqI" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqJ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqK" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqL" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqM" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqN" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXjXcqO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXjXcqP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXjXcqQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXjXcqR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXjXcqS" role="1oi5zu">
                              <property role="1oi5yK" value="String" />
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
          <node concept="3clFbH" id="3KV3FXjXcr1" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7HxM" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7HxN" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7HxO" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7HxP" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7HxQ" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7HxR" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7HxS" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7HxT" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7HxU" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7HxV" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7HxW" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qm" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7HxY" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7HxN" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7HxZ" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7Hy0" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7Hy1" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXjXcpc" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7Hy2" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7Hy3" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7Hy4" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXjXcq7" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXjXcrj" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXjXcrk" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXjXcrl" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7HxV" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXjXcrm" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXjXcrn" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXjXcro" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7HxN" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXjXcrp" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXjXcrq" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXjXcrr" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXjXcrs" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXjXcrt" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXjXcru" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTw" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXjXcrw" role="38e3mL">
                    <node concept="1oi5UN" id="3KV3FXjZ28E" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXjZ28F" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXjZ28G" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXjZ28H" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXjZ28I" role="1oi5zu">
                          <property role="1oi5yK" value="Comparable" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXjZ291" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXjZ292" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXjZ293" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXjZ294" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXjZ295" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_y0W" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_y0X" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_y0Y" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_y0Z" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_y10" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_y11" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2i1SJ" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_y13" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXjXcrs" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_y14" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7HxN" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2i2hH" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3KV3FXk18N8" role="3s_gse">
        <property role="3s$Bm0" value="lub_primitive_serializable" />
        <node concept="3cqZAl" id="3KV3FXk18N9" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXk18Na" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXk18Nb" role="3clF47">
          <node concept="3cpWs8" id="3KV3FXk18Nc" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18Nd" role="3cpWs9">
              <property role="TrG5h" value="left" />
              <node concept="3uibUv" id="3KV3FXk18Ne" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk18Nf" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTm" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk18Nh" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySN" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18Nj" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk18Nk" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18Nl" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Nm" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18Nn" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18No" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Np" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18Nq" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18Nr" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Ns" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTo" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18Nu" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk18Nv" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18Nw" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18Nx" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18Ny" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18Nz" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18N$" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18N_" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NA" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NB" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NC" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18ND" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NE" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NF" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NG" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NH" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2kGt" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2kGu" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2kGv" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTd" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18NJ" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk18NK" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NL" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NM" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NN" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NO" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18NP" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NQ" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NR" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NS" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NT" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18NU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18NV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18NW" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18NX" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18NY" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18NZ" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18O0" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18O1" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18O2" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18O3" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2kHX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2kHY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2kHZ" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXk18O4" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18O5" role="3cpWs9">
              <property role="TrG5h" value="right" />
              <node concept="3uibUv" id="3KV3FXk18O6" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk18O7" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySO" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk18O9" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySD" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk18ON" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk18OO" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18OP" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18OQ" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18OR" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18OS" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk18OT" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk18OU" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk18OV" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk18OW" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk18OX" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
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
          <node concept="3clFbH" id="3KV3FXk18P3" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7KDB" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7KDC" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7KDD" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7KDE" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7KDF" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7KDG" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7KDH" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7KDI" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6yEjedm7KDJ" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7KDK" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="6yEjedm7KDL" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qg" role="33vP2m">
                <ref role="37wK5l" to="kqnc:5H6hZahmloU" resolve="findLub" />
                <ref role="1Pybhc" to="kqnc:5H6hZahmlon" resolve="LubSolver" />
                <node concept="37vLTw" id="6yEjedm7KDN" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7KDC" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7KDO" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7KDP" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7KDQ" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk18Nd" resolve="left" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7KDR" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7KDS" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7KDT" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk18O5" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk18Pl" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXk18Pm" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXk18Pn" role="3vwVQn">
              <ref role="3cqZAo" node="6yEjedm7KDK" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXk18Po" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk18Pp" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXk18Pq" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7KDC" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXk18Pr" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk18Ps" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk18Pt" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk18Pu" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXk18Pv" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk18Pw" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTC" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk18Py" role="38e3mL">
                    <node concept="1oi5UN" id="3KV3FXk18PC" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk18PD" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk18PE" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk18PF" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk18PG" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_yj3" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_yj4" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_yj5" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_yj6" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_yj7" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_yj8" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2hXkk" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_yja" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXk18Pu" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_yjb" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7KDC" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2hXHQ" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2dJM2" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="5jPBdK_uGO" role="1KhZu4">
      <node concept="3clFbS" id="5jPBdK_uGP" role="2VODD2">
        <node concept="3clFbF" id="5jPBdK_uPf" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_uPM" role="3clFbG">
            <ref role="37wK5l" to="mqqo:7ISVfSIf0j" resolve="init" />
            <ref role="1Pybhc" to="mqqo:5jPBdK_dIS" resolve="TestingEvaluationSession" />
          </node>
        </node>
        <node concept="3clFbH" id="5jPBdK_uQ_" role="3cqZAp" />
        <node concept="3clFbF" id="5jPBdK_uRs" role="3cqZAp">
          <node concept="2OqwBi" id="5jPBdK_uYD" role="3clFbG">
            <node concept="2OqwBi" id="5jPBdK_uUg" role="2Oq$k0">
              <node concept="2YIFZM" id="5jPBdK_uTI" role="2Oq$k0">
                <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                <ref role="37wK5l" to="w7la:~EvaluationSession.newSession(jetbrains.mps.logic.reactor.program.Program):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="newSession" />
                <node concept="10Nm6u" id="6X5F0NgIltC" role="37wK5m" />
              </node>
              <node concept="liA8E" id="5jPBdK_uVI" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withPredicates(jetbrains.mps.logic.reactor.program.PredicateSymbol...):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="withPredicates" />
                <node concept="10M0yZ" id="5jPBdK_uXa" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                  <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                </node>
                <node concept="10M0yZ" id="5jPBdK_uXd" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5jPBdK_v1h" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~EvaluationSession$Config.start(jetbrains.mps.logic.reactor.evaluation.SessionSolver):jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="start" />
              <node concept="10Nm6u" id="2UGjFq4L8wv" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhZuU" id="5jPBdK_M4W" role="1KhZu3">
      <node concept="3clFbS" id="5jPBdK_M4X" role="2VODD2">
        <node concept="3clFbF" id="5jPBdK_M6G" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_M7s" role="3clFbG">
            <ref role="37wK5l" to="mqqo:5jPBdK_KqB" resolve="deinit" />
            <ref role="1Pybhc" to="mqqo:5jPBdK_dIS" resolve="TestingEvaluationSession" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="3KV3FXk2b2J">
    <property role="3s_ewP" value="SubtypePath" />
    <node concept="312cEg" id="5jCHAT2i6xk" role="jymVt">
      <property role="TrG5h" value="NO_CONTEXT" />
      <node concept="3Tm6S6" id="5jCHAT2i6xl" role="1B3o_S" />
      <node concept="3uibUv" id="5jCHAT2i6xm" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
      </node>
      <node concept="2ShNRf" id="5jCHAT2i6xn" role="33vP2m">
        <node concept="YeOm9" id="5jCHAT2i6xo" role="2ShVmc">
          <node concept="1Y3b0j" id="5jCHAT2i6xp" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="bj13:~LogicalContext" resolve="LogicalContext" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5jCHAT2i6xq" role="1B3o_S" />
            <node concept="3clFb_" id="5jCHAT2i6xr" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="variable" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="5jCHAT2i6xs" role="1B3o_S" />
              <node concept="16euLQ" id="5jCHAT2i6xt" role="16eVyc">
                <property role="TrG5h" value="V" />
              </node>
              <node concept="3uibUv" id="5jCHAT2i6xu" role="3clF45">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="16syzq" id="5jCHAT2i6xv" role="11_B2D">
                  <ref role="16sUi3" node="5jCHAT2i6xt" resolve="V" />
                </node>
              </node>
              <node concept="37vLTG" id="5jCHAT2i6xw" role="3clF46">
                <property role="TrG5h" value="p0" />
                <node concept="3uibUv" id="5jCHAT2i6xx" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  <node concept="16syzq" id="5jCHAT2i6xy" role="11_B2D">
                    <ref role="16sUi3" node="5jCHAT2i6xt" resolve="V" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5jCHAT2i6xz" role="3clF47">
                <node concept="YS8fn" id="5jCHAT2i6x$" role="3cqZAp">
                  <node concept="2ShNRf" id="5jCHAT2i6x_" role="YScLw">
                    <node concept="1pGfFk" id="5jCHAT2i6xA" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="5jCHAT2i6xB" role="37wK5m">
                        <property role="Xl_RC" value="not implemented" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5jCHAT2i6xC" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3KV3FXk2b2K" role="1B3o_S" />
    <node concept="3s_gsd" id="3KV3FXk2b2L" role="3s_ewO">
      <node concept="3s$Bmu" id="3KV3FXk2boI" role="3s_gse">
        <property role="3s$Bm0" value="subtype_primitive_serializable" />
        <node concept="3cqZAl" id="3KV3FXk2boJ" role="3clF45" />
        <node concept="3Tm1VV" id="3KV3FXk2boK" role="1B3o_S" />
        <node concept="3clFbS" id="3KV3FXk2boL" role="3clF47">
          <node concept="3cpWs8" id="3KV3FXk2boM" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2boN" role="3cpWs9">
              <property role="TrG5h" value="fullPaths" />
              <node concept="3uibUv" id="3KV3FXk2boO" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2boP" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbySA" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2boR" role="38e3mL">
                    <node concept="38e3lM" id="428_4iYbySR" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2boT" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2boU" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2boV" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2boW" role="1oi5zu">
                              <property role="1oi5yK" value="DoubleType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2boX" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2boY" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2boZ" role="1oi5zu">
                              <property role="1oi5yK" value="FloatType" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bp0" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bp1" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bp2" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTb" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2bp4" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2bp5" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bp6" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bp7" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bp8" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bp9" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpa" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpb" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpc" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpd" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpe" role="1oi5zu">
                              <property role="1oi5yK" value="Comparable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpf" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpg" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bph" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpi" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpj" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2iIb" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2iIc" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2iId" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="38e3lM" id="428_4iYbyTv" role="KCVpo">
                      <property role="TrG5h" value="list" />
                      <node concept="KCUsM" id="3KV3FXk2bpl" role="38e3mL">
                        <node concept="1oi5UN" id="3KV3FXk2bpm" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpn" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpo" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpp" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpq" role="1oi5zu">
                              <property role="1oi5yK" value="Object" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpr" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bps" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpt" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpu" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpv" role="1oi5zu">
                              <property role="1oi5yK" value="Serializable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bpw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpy" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpz" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bp$" role="1oi5zu">
                              <property role="1oi5yK" value="Number" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2bp_" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2bpA" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2bpB" role="1oi5zu">
                              <property role="1oi5yK" value="ClassifierType" />
                            </node>
                          </node>
                          <node concept="1oi5Wm" id="3KV3FXk2bpC" role="1ojpOf">
                            <property role="TrG5h" value="classifier" />
                            <node concept="1oi5XN" id="3KV3FXk2bpD" role="1oi5zu">
                              <property role="1oi5yK" value="Long" />
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5UN" id="3KV3FXk2iIw" role="KCVpo">
                          <node concept="1oi5Wm" id="3KV3FXk2iIx" role="1ojpOf">
                            <property role="TrG5h" value="concept" />
                            <node concept="1oi5XN" id="3KV3FXk2iIy" role="1oi5zu">
                              <property role="1oi5yK" value="LongType" />
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
          <node concept="3cpWs8" id="3KV3FXk2bpE" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2bpF" role="3cpWs9">
              <property role="TrG5h" value="startFrom" />
              <node concept="3uibUv" id="3KV3FXk2bpG" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2bpH" role="33vP2m">
                <node concept="1oi5UN" id="3KV3FXk2bpR" role="1oi0x0">
                  <node concept="1oi5Wm" id="3KV3FXk2bpS" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="3KV3FXk2bpT" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="3KV3FXk2bpU" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="3KV3FXk2bpV" role="1oi5zu">
                      <property role="1oi5yK" value="Serializable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2bpW" role="3cqZAp" />
          <node concept="3cpWs8" id="6yEjedm7VYv" role="3cqZAp">
            <node concept="3cpWsn" id="6yEjedm7VYw" role="3cpWs9">
              <property role="TrG5h" value="var" />
              <node concept="3uibUv" id="6yEjedm7VYx" role="1tU5fm">
                <ref role="3uigEE" to="zx3l:~LogicalImpl" resolve="LogicalImpl" />
                <node concept="3uibUv" id="6yEjedm7VYy" role="11_B2D">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
              </node>
              <node concept="2ShNRf" id="6yEjedm7VYz" role="33vP2m">
                <node concept="1pGfFk" id="6yEjedm7VY$" role="2ShVmc">
                  <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.String)" resolve="LogicalImpl" />
                  <node concept="Xl_RD" id="6yEjedm7VY_" role="37wK5m">
                    <property role="Xl_RC" value="var" />
                  </node>
                  <node concept="3uibUv" id="6yEjedm7VYA" role="1pMfVU">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KV3FXk2bq3" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2bq4" role="3cpWs9">
              <property role="TrG5h" value="success" />
              <node concept="10P_77" id="3KV3FXk2bq5" role="1tU5fm" />
              <node concept="2YIFZM" id="20Ay2Vfc3qp" role="33vP2m">
                <ref role="37wK5l" to="kqnc:3KV3FXk1fGe" resolve="findSubtypingPath" />
                <ref role="1Pybhc" to="kqnc:3KV3FXk1fjd" resolve="SubtypePathSolver" />
                <node concept="37vLTw" id="6yEjedm7XtE" role="37wK5m">
                  <ref role="3cqZAo" node="6yEjedm7VYw" resolve="var" />
                </node>
                <node concept="2ShNRf" id="6yEjedm7XtF" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7XtG" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7Xvm" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2boN" resolve="fullPaths" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6yEjedm7XtI" role="37wK5m">
                  <node concept="1pGfFk" id="6yEjedm7XtJ" role="2ShVmc">
                    <ref role="37wK5l" to="zx3l:~LogicalImpl.&lt;init&gt;(java.lang.Object)" resolve="LogicalImpl" />
                    <node concept="37vLTw" id="6yEjedm7XAR" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk2bpF" resolve="startFrom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2bqe" role="3cqZAp" />
          <node concept="3vwNmj" id="3KV3FXk2bqf" role="3cqZAp">
            <node concept="37vLTw" id="3KV3FXk2bqg" role="3vwVQn">
              <ref role="3cqZAo" node="3KV3FXk2bq4" resolve="success" />
            </node>
          </node>
          <node concept="3vwNmj" id="3KV3FXk2bqh" role="3cqZAp">
            <node concept="2OqwBi" id="3KV3FXk2bqi" role="3vwVQn">
              <node concept="37vLTw" id="3KV3FXk2bqj" role="2Oq$k0">
                <ref role="3cqZAo" node="6yEjedm7VYw" resolve="var" />
              </node>
              <node concept="liA8E" id="3KV3FXk2bqk" role="2OqNvi">
                <ref role="37wK5l" to="zx3l:~LogicalImpl.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3KV3FXk2bql" role="3cqZAp" />
          <node concept="3cpWs8" id="3KV3FXk2bqm" role="3cqZAp">
            <node concept="3cpWsn" id="3KV3FXk2bqn" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="3KV3FXk2bqo" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="3KV3FXk2bqp" role="33vP2m">
                <node concept="38e3lM" id="428_4iYbyTF" role="1oi0x0">
                  <property role="TrG5h" value="list" />
                  <node concept="KCUsM" id="3KV3FXk2bqr" role="38e3mL">
                    <node concept="1oi5UN" id="3KV3FXk2iIU" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2iIV" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2iIW" role="1oi5zu">
                          <property role="1oi5yK" value="LongType" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXk2bS6" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2bS7" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2bS8" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk2bS9" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk2bSa" role="1oi5zu">
                          <property role="1oi5yK" value="Long" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXk2bRR" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2bRS" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2bRT" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk2bRU" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk2bRV" role="1oi5zu">
                          <property role="1oi5yK" value="Number" />
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5UN" id="3KV3FXk2bqs" role="KCVpo">
                      <node concept="1oi5Wm" id="3KV3FXk2bqt" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="3KV3FXk2bqu" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="3KV3FXk2bqv" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="3KV3FXk2bqw" role="1oi5zu">
                          <property role="1oi5yK" value="Serializable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jPBdK_R$R" role="3cqZAp">
            <node concept="2OqwBi" id="5jPBdK_R$S" role="3clFbG">
              <node concept="2OqwBi" id="5jPBdK_R$T" role="2Oq$k0">
                <node concept="2YIFZM" id="5jPBdK_R$U" role="2Oq$k0">
                  <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                  <ref role="37wK5l" to="w7la:~EvaluationSession.current():jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="current" />
                </node>
                <node concept="liA8E" id="5jPBdK_R$V" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationSession.sessionSolver():jetbrains.mps.logic.reactor.evaluation.SessionSolver" resolve="sessionSolver" />
                </node>
              </node>
              <node concept="liA8E" id="5jPBdK_R$W" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~SessionSolver.tell(jetbrains.mps.logic.reactor.program.AndItem,jetbrains.mps.logic.reactor.logical.LogicalContext):void" resolve="tell" />
                <node concept="2YIFZM" id="5jCHAT2i4iC" role="37wK5m">
                  <ref role="37wK5l" to="cxk7:5jCHAT29qgV" resolve="unifies" />
                  <ref role="1Pybhc" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <node concept="37vLTw" id="5jPBdK_R$Y" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXk2bqn" resolve="expect" />
                  </node>
                  <node concept="37vLTw" id="5jPBdK_R$Z" role="37wK5m">
                    <ref role="3cqZAo" node="6yEjedm7VYw" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="5jCHAT2i7ks" role="37wK5m">
                  <ref role="3cqZAo" node="5jCHAT2i6xk" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="5jPBdK_QIy" role="1KhZu4">
      <node concept="3clFbS" id="5jPBdK_QIz" role="2VODD2">
        <node concept="3clFbF" id="5jPBdK_QKi" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_QKj" role="3clFbG">
            <ref role="37wK5l" to="mqqo:7ISVfSIf0j" resolve="init" />
            <ref role="1Pybhc" to="mqqo:5jPBdK_dIS" resolve="TestingEvaluationSession" />
          </node>
        </node>
        <node concept="3clFbH" id="5jPBdK_QKk" role="3cqZAp" />
        <node concept="3clFbF" id="5jPBdK_QKl" role="3cqZAp">
          <node concept="2OqwBi" id="5jPBdK_QKm" role="3clFbG">
            <node concept="2OqwBi" id="5jPBdK_QKn" role="2Oq$k0">
              <node concept="2YIFZM" id="5jPBdK_QKo" role="2Oq$k0">
                <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                <ref role="37wK5l" to="w7la:~EvaluationSession.newSession(jetbrains.mps.logic.reactor.program.Program):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="newSession" />
                <node concept="10Nm6u" id="6X5F0NgIlBS" role="37wK5m" />
              </node>
              <node concept="liA8E" id="5jPBdK_QKp" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withPredicates(jetbrains.mps.logic.reactor.program.PredicateSymbol...):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="withPredicates" />
                <node concept="10M0yZ" id="5jPBdK_QKq" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                  <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                </node>
                <node concept="10M0yZ" id="5jPBdK_QKr" role="37wK5m">
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5jPBdK_QKs" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~EvaluationSession$Config.start(jetbrains.mps.logic.reactor.evaluation.SessionSolver):jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="start" />
              <node concept="10Nm6u" id="2UGjFq4L8GP" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhZuU" id="5jPBdK_R9y" role="1KhZu3">
      <node concept="3clFbS" id="5jPBdK_R9z" role="2VODD2">
        <node concept="3clFbF" id="5jPBdK_RbA" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdK_RbB" role="3clFbG">
            <ref role="37wK5l" to="mqqo:5jPBdK_KqB" resolve="deinit" />
            <ref role="1Pybhc" to="mqqo:5jPBdK_dIS" resolve="TestingEvaluationSession" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

