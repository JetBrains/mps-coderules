<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c9607a7c-25a7-4d1b-994d-f264b3e77eff(jetbrains.mps.coderules.incrementality@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="15" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="1" />
    <use id="cba985fe-1e96-4f16-9f8d-b07434405d4f" name="jetbrains.mps.lang.smodel.types" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="3a1f0f04-b5e0-43be-884e-b856bfdeca21" name="jetbrains.mps.typechecking.testlang" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
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
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
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
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
        <child id="7256306938026143676" name="child" index="2aWVGa" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
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
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
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
              <node concept="3clFbH" id="tyIfzBBip1" role="3cqZAp" />
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
                    <ref role="3uigEE" node="tyIfzC0ZNj" resolve="IncrementalLaunchHelper" />
                  </node>
                  <node concept="2ShNRf" id="tyIfzC3Sr4" role="33vP2m">
                    <node concept="1pGfFk" id="tyIfzC3Sr3" role="2ShVmc">
                      <ref role="37wK5l" node="tyIfzC0ZVq" resolve="IncrementalLaunchHelper" />
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
                      <ref role="37wK5l" node="tyIfzC3x3f" resolve="produce" />
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
                      <ref role="37wK5l" node="tyIfzC3lMP" resolve="getProgramGenInfo" />
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
        <node concept="3clFbF" id="tyIfzBEgKv" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBEi8B" role="3clFbG">
            <node concept="10M0yZ" id="tyIfzBEhL7" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="tyIfzBEiOI" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object)" resolve="println" />
              <node concept="2OqwBi" id="tyIfzBEjhc" role="37wK5m">
                <node concept="37vLTw" id="tyIfzBIZVN" role="2Oq$k0">
                  <ref role="3cqZAo" node="tyIfzBIxtI" resolve="info" />
                </node>
                <node concept="liA8E" id="tyIfzBEjwp" role="2OqNvi">
                  <ref role="37wK5l" to="xnrr:1H_6AUSSL_8" resolve="getPrincipalRulesTags" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzBEojC" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBEojD" role="3clFbG">
            <node concept="10M0yZ" id="tyIfzBEojE" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="tyIfzBEojF" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object)" resolve="println" />
              <node concept="2OqwBi" id="tyIfzBEojG" role="37wK5m">
                <node concept="37vLTw" id="tyIfzBJ0Yg" role="2Oq$k0">
                  <ref role="3cqZAo" node="tyIfzBIxtI" resolve="info" />
                </node>
                <node concept="liA8E" id="tyIfzBEpOW" role="2OqNvi">
                  <ref role="37wK5l" to="xnrr:1H_6AUST2Uz" resolve="getStartingRulesTags" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBKJyu" role="3cqZAp" />
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
          <node concept="37vLTw" id="tyIfzBLcId" role="3tpDZB">
            <ref role="3cqZAo" node="tyIfzBL35v" resolve="principalCtrs" />
          </node>
          <node concept="37vLTw" id="tyIfzBM5Bi" role="3tpDZA">
            <ref role="3cqZAo" node="tyIfzBLg7V" resolve="expectedPCtrs" />
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBEabb" role="3cqZAp" />
      </node>
    </node>
    <node concept="1LZb2c" id="tyIfzBQ_NP" role="1SL9yI">
      <property role="TrG5h" value="testModify" />
      <node concept="3cqZAl" id="tyIfzBQ_NQ" role="3clF45" />
      <node concept="3clFbS" id="tyIfzBQ_NU" role="3clF47">
        <node concept="3cpWs8" id="tyIfzBYTm1" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBYTm4" role="3cpWs9">
            <property role="TrG5h" value="demoCopy" />
            <node concept="3Tqbb2" id="tyIfzBYTlZ" role="1tU5fm">
              <ref role="ehGHo" to="qulx:7lt0LtPHOlU" resolve="Root" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="tyIfzBZ7o4" role="3cqZAp">
          <node concept="1QHqEC" id="tyIfzBZ7o6" role="1QHqEI">
            <node concept="3clFbS" id="tyIfzBZ7o8" role="1bW5cS">
              <node concept="3cpWs8" id="tyIfzBQsWV" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBQsWW" role="3cpWs9">
                  <property role="TrG5h" value="repo" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="tyIfzBQsWX" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="2OqwBi" id="tyIfzBQsWY" role="33vP2m">
                    <node concept="1jxXqW" id="tyIfzBQsWZ" role="2Oq$k0" />
                    <node concept="liA8E" id="tyIfzBQsX0" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="tyIfzBQsX1" role="3cqZAp">
                <node concept="3cpWsn" id="tyIfzBQsX2" role="3cpWs9">
                  <property role="TrG5h" value="demo" />
                  <node concept="3Tqbb2" id="tyIfzBQsX3" role="1tU5fm">
                    <ref role="ehGHo" to="qulx:7lt0LtPHOlU" resolve="Root" />
                  </node>
                  <node concept="2OqwBi" id="tyIfzBQsX4" role="33vP2m">
                    <node concept="2tJFMh" id="tyIfzBQsX5" role="2Oq$k0">
                      <node concept="ZC_QK" id="tyIfzBQsX6" role="2tJFKM">
                        <ref role="2aWVGs" to="sppd:7lt0LtPHRY$" resolve="Demo" />
                      </node>
                    </node>
                    <node concept="Vyspw" id="tyIfzBQsX7" role="2OqNvi">
                      <node concept="37vLTw" id="tyIfzBQsX8" role="Vysub">
                        <ref role="3cqZAo" node="tyIfzBQsWW" resolve="repo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="tyIfzBZfta" role="3cqZAp">
                <node concept="37vLTI" id="tyIfzBZfA7" role="3clFbG">
                  <node concept="2OqwBi" id="tyIfzBZfK2" role="37vLTx">
                    <node concept="37vLTw" id="tyIfzBZfBr" role="2Oq$k0">
                      <ref role="3cqZAo" node="tyIfzBQsX2" resolve="demo" />
                    </node>
                    <node concept="1$rogu" id="tyIfzBZfVY" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBZft8" role="37vLTJ">
                    <ref role="3cqZAo" node="tyIfzBYTm4" resolve="demoCopy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="tyIfzBZ7F4" role="ukAjM">
            <node concept="1jxXqW" id="tyIfzBZ7q8" role="2Oq$k0" />
            <node concept="liA8E" id="tyIfzBZbGH" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBYX9u" role="3cqZAp" />
        <node concept="3cpWs8" id="tyIfzBTkje" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBTkjh" role="3cpWs9">
            <property role="TrG5h" value="rmTargets" />
            <node concept="2OqwBi" id="tyIfzBTlNA" role="33vP2m">
              <node concept="2OqwBi" id="tyIfzBTlNB" role="2Oq$k0">
                <node concept="37vLTw" id="tyIfzBVkPm" role="2Oq$k0">
                  <ref role="3cqZAo" node="tyIfzBYTm4" resolve="demoCopy" />
                </node>
                <node concept="2Rf3mk" id="tyIfzBTlND" role="2OqNvi">
                  <node concept="1xMEDy" id="tyIfzBTlNE" role="1xVPHs">
                    <node concept="chp4Y" id="tyIfzBTlNF" role="ri$Ld">
                      <ref role="cht4Q" to="qulx:7mB3viLbaW$" resolve="VarDeclStmt" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="tyIfzBTlNG" role="2OqNvi">
                <node concept="1bVj0M" id="tyIfzBTlNH" role="23t8la">
                  <node concept="3clFbS" id="tyIfzBTlNI" role="1bW5cS">
                    <node concept="3clFbF" id="tyIfzBTlNJ" role="3cqZAp">
                      <node concept="2OqwBi" id="tyIfzBX5ji" role="3clFbG">
                        <node concept="2OqwBi" id="tyIfzBTlNM" role="2Oq$k0">
                          <node concept="2OqwBi" id="tyIfzBTlNN" role="2Oq$k0">
                            <node concept="37vLTw" id="tyIfzBTlNO" role="2Oq$k0">
                              <ref role="3cqZAo" node="tyIfzBTlNR" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="tyIfzBTlNP" role="2OqNvi">
                              <ref role="3Tt5mk" to="qulx:7mB3viLbaWO" resolve="decl" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="tyIfzBTlNQ" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="tyIfzBXafZ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="Xl_RD" id="tyIfzBXaNk" role="37wK5m">
                            <property role="Xl_RC" value="bar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="tyIfzBTlNR" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="tyIfzBTlNS" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="A3Dl8" id="tyIfzBTrRh" role="1tU5fm">
              <node concept="3Tqbb2" id="tyIfzBTsni" role="A3Ik2">
                <ref role="ehGHo" to="qulx:7mB3viLbaW$" resolve="VarDeclStmt" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="tyIfzBYdKQ" role="3cqZAp">
          <node concept="3eOSWO" id="tyIfzBYl2t" role="3vwVQn">
            <node concept="3cmrfG" id="tyIfzBYqsA" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="tyIfzBYjpd" role="3uHU7B">
              <node concept="37vLTw" id="tyIfzBYiQC" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBTkjh" resolve="rmTargets" />
              </node>
              <node concept="34oBXx" id="tyIfzBYjK_" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBZs$I" role="3cqZAp" />
        <node concept="3cpWs8" id="tyIfzBS6KK" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBS6KN" role="3cpWs9">
            <property role="TrG5h" value="childrenBefore" />
            <node concept="10Oyi0" id="tyIfzBS6KI" role="1tU5fm" />
            <node concept="2OqwBi" id="tyIfzBSeov" role="33vP2m">
              <node concept="2OqwBi" id="tyIfzBS8As" role="2Oq$k0">
                <node concept="37vLTw" id="tyIfzBZbVk" role="2Oq$k0">
                  <ref role="3cqZAo" node="tyIfzBYTm4" resolve="demoCopy" />
                </node>
                <node concept="32TBzR" id="tyIfzBSdib" role="2OqNvi" />
              </node>
              <node concept="34oBXx" id="tyIfzBSkbQ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzBQsX9" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzBR1zq" role="3clFbG">
            <node concept="2es0OD" id="tyIfzBR5GK" role="2OqNvi">
              <node concept="1bVj0M" id="tyIfzBR5GM" role="23t8la">
                <node concept="3clFbS" id="tyIfzBR5GN" role="1bW5cS">
                  <node concept="3clFbF" id="tyIfzBR5ZI" role="3cqZAp">
                    <node concept="2OqwBi" id="tyIfzBR6bu" role="3clFbG">
                      <node concept="37vLTw" id="tyIfzBR5ZH" role="2Oq$k0">
                        <ref role="3cqZAo" node="tyIfzBR5GO" resolve="it" />
                      </node>
                      <node concept="3YRAZt" id="tyIfzBRiM$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="tyIfzBR5GO" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="tyIfzBR5GP" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="tyIfzBU$3N" role="2Oq$k0">
              <ref role="3cqZAo" node="tyIfzBTkjh" resolve="rmTargets" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="tyIfzBSF2Z" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzBSF30" role="3cpWs9">
            <property role="TrG5h" value="childrenAfter" />
            <node concept="10Oyi0" id="tyIfzBSF31" role="1tU5fm" />
            <node concept="2OqwBi" id="tyIfzBSF32" role="33vP2m">
              <node concept="2OqwBi" id="tyIfzBSF33" role="2Oq$k0">
                <node concept="37vLTw" id="tyIfzBZbTl" role="2Oq$k0">
                  <ref role="3cqZAo" node="tyIfzBYTm4" resolve="demoCopy" />
                </node>
                <node concept="32TBzR" id="tyIfzBSF35" role="2OqNvi" />
              </node>
              <node concept="34oBXx" id="tyIfzBSF36" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBZsDi" role="3cqZAp" />
        <node concept="3vlDli" id="tyIfzBSxz9" role="3cqZAp">
          <node concept="3cpWsd" id="tyIfzBSUGR" role="3tpDZA">
            <node concept="37vLTw" id="tyIfzBSTke" role="3uHU7B">
              <ref role="3cqZAo" node="tyIfzBS6KN" resolve="childrenBefore" />
            </node>
            <node concept="2OqwBi" id="tyIfzBY7Oc" role="3uHU7w">
              <node concept="37vLTw" id="tyIfzBY7fE" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBTkjh" resolve="rmTargets" />
              </node>
              <node concept="34oBXx" id="tyIfzBY8zl" role="2OqNvi" />
            </node>
          </node>
          <node concept="37vLTw" id="tyIfzBSPow" role="3tpDZB">
            <ref role="3cqZAo" node="tyIfzBSF30" resolve="childrenAfter" />
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzBYWF0" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="3s_ewN" id="tyIfzBA5fA">
    <property role="3s_ewP" value="SubstituteUtil" />
    <node concept="2tJIrI" id="tyIfzBA5fB" role="jymVt" />
    <node concept="312cEg" id="tyIfzBA5fC" role="jymVt">
      <property role="TrG5h" value="eqSolver" />
      <node concept="3Tm6S6" id="tyIfzBA5fO" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzBA5fP" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
      </node>
      <node concept="2ShNRf" id="tyIfzBA5fQ" role="33vP2m">
        <node concept="HV5vD" id="tyIfzBA5gd" role="2ShVmc">
          <ref role="HV5vE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzBA5fD" role="jymVt" />
    <node concept="312cEg" id="tyIfzBA5fE" role="jymVt">
      <property role="TrG5h" value="uniSolver" />
      <node concept="3Tm6S6" id="tyIfzBA5fR" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzBA5fS" role="1tU5fm">
        <ref role="3uigEE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
      </node>
      <node concept="2ShNRf" id="tyIfzBA5fT" role="33vP2m">
        <node concept="HV5vD" id="tyIfzBA5ge" role="2ShVmc">
          <ref role="HV5vE" to="mqqo:6yEjedm5WkE" resolve="TestingUnificationSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzBA5fF" role="jymVt" />
    <node concept="3clFb_" id="tyIfzBA5fG" role="jymVt">
      <property role="TrG5h" value="termvar" />
      <node concept="37vLTG" id="tyIfzBA5fU" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="tyIfzBA5gf" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="tyIfzBA5fV" role="3clF45">
        <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tmbuc" id="tyIfzBA5fW" role="1B3o_S" />
      <node concept="3clFbS" id="tyIfzBA5fX" role="3clF47">
        <node concept="3clFbF" id="tyIfzBA5gg" role="3cqZAp">
          <node concept="10QFUN" id="tyIfzBA5gF" role="3clFbG">
            <node concept="3uibUv" id="tyIfzBA5ix" role="10QFUM">
              <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
            </node>
            <node concept="2YIFZM" id="tyIfzBA5iy" role="10QFUP">
              <ref role="37wK5l" to="oy3s:4TCblo5YI1H" resolve="asVariable" />
              <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
              <node concept="2YIFZM" id="tyIfzBA5jR" role="37wK5m">
                <ref role="37wK5l" to="z9ve:~LogicalImplKt.namedLogical(java.lang.String)" resolve="namedLogical" />
                <ref role="1Pybhc" to="z9ve:~LogicalImplKt" resolve="LogicalImplKt" />
                <node concept="37vLTw" id="tyIfzBA5mu" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fU" resolve="name" />
                </node>
                <node concept="3uibUv" id="tyIfzBA5mv" role="3PaCim">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzBA5fH" role="jymVt" />
    <node concept="3clFb_" id="tyIfzBA5fI" role="jymVt">
      <property role="TrG5h" value="asTermLogical" />
      <node concept="3uibUv" id="tyIfzBA5fY" role="3clF45">
        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
        <node concept="3uibUv" id="tyIfzBA5gh" role="11_B2D">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3Tmbuc" id="tyIfzBA5fZ" role="1B3o_S" />
      <node concept="3clFbS" id="tyIfzBA5g0" role="3clF47">
        <node concept="3clFbF" id="tyIfzBA5gi" role="3cqZAp">
          <node concept="10QFUN" id="tyIfzBA5gG" role="3clFbG">
            <node concept="2OqwBi" id="tyIfzBA5iz" role="10QFUP">
              <node concept="1eOMI4" id="tyIfzBA5jS" role="2Oq$k0">
                <node concept="10QFUN" id="tyIfzBA5mw" role="1eOMHV">
                  <node concept="3uibUv" id="tyIfzBA5ou" role="10QFUM">
                    <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                    <node concept="3uibUv" id="tyIfzBA5pC" role="11_B2D">
                      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5ov" role="10QFUP">
                    <ref role="3cqZAo" node="tyIfzBA5g1" resolve="v" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBA5jT" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
              </node>
            </node>
            <node concept="3uibUv" id="tyIfzBA5i$" role="10QFUM">
              <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
              <node concept="3uibUv" id="tyIfzBA5jU" role="11_B2D">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tyIfzBA5g1" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="3uibUv" id="tyIfzBA5gj" role="1tU5fm">
          <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzBA5fJ" role="jymVt" />
    <node concept="312cEg" id="tyIfzBA5fK" role="jymVt">
      <property role="TrG5h" value="NO_CONTEXT" />
      <node concept="3Tm6S6" id="tyIfzBA5g2" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzBA5g3" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
      </node>
      <node concept="2ShNRf" id="tyIfzBA5g4" role="33vP2m">
        <node concept="YeOm9" id="tyIfzBA5gk" role="2ShVmc">
          <node concept="1Y3b0j" id="tyIfzBA5gH" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="bj13:~LogicalContext" resolve="LogicalContext" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="tyIfzBA5i_" role="1B3o_S" />
            <node concept="3clFb_" id="tyIfzBA5iA" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="variable" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="tyIfzBA5jV" role="1B3o_S" />
              <node concept="16euLQ" id="tyIfzBA5jW" role="16eVyc">
                <property role="TrG5h" value="V" />
              </node>
              <node concept="3uibUv" id="tyIfzBA5jX" role="3clF45">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="16syzq" id="tyIfzBA5mx" role="11_B2D">
                  <ref role="16sUi3" node="tyIfzBA5jW" resolve="V" />
                </node>
              </node>
              <node concept="37vLTG" id="tyIfzBA5jY" role="3clF46">
                <property role="TrG5h" value="p0" />
                <node concept="3uibUv" id="tyIfzBA5my" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  <node concept="16syzq" id="tyIfzBA5ow" role="11_B2D">
                    <ref role="16sUi3" node="tyIfzBA5jW" resolve="V" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="tyIfzBA5jZ" role="3clF47">
                <node concept="YS8fn" id="tyIfzBA5mz" role="3cqZAp">
                  <node concept="2ShNRf" id="tyIfzBA5ox" role="YScLw">
                    <node concept="1pGfFk" id="tyIfzBA5pD" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="tyIfzBA5qw" role="37wK5m">
                        <property role="Xl_RC" value="not implemented" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="tyIfzBA5k0" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="tyIfzBA5fL" role="1B3o_S" />
    <node concept="3s_gsd" id="tyIfzBA5fM" role="3s_ewO">
      <node concept="3s$Bmu" id="tyIfzBA5g5" role="3s_gse">
        <property role="3s$Bm0" value="val_to_var" />
        <node concept="3cqZAl" id="tyIfzBA5gl" role="3clF45" />
        <node concept="3Tm1VV" id="tyIfzBA5gm" role="1B3o_S" />
        <node concept="3clFbS" id="tyIfzBA5gn" role="3clF47">
          <node concept="3cpWs8" id="tyIfzBA5gI" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iB" role="3cpWs9">
              <property role="TrG5h" value="orig" />
              <node concept="3uibUv" id="tyIfzBA5k1" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5k2" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5m$" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5oy" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="tyIfzBA5pE" role="1oi5TL">
                      <node concept="1oi5Wm" id="tyIfzBA5qx" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="tyIfzBA5r0" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oz" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pF" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5gJ" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iC" role="3cpWs9">
              <property role="TrG5h" value="ptn" />
              <node concept="3uibUv" id="tyIfzBA5k3" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5k4" role="33vP2m">
                <node concept="1oi5XN" id="tyIfzBA5m_" role="1oi0x0">
                  <property role="1oi5yK" value="xyz" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5gK" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5gL" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iD" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="tyIfzBA5k5" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5k6" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5mA" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5gM" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iE" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="tyIfzBA5k7" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5k8" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5mB" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5o$" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="tyIfzBA5pG" role="1oi5TL">
                      <node concept="1oi5Wm" id="tyIfzBA5qy" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="tyIfzBA5r1" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="tyIfzBA5r_" role="lGtFl">
                            <node concept="37vLTw" id="tyIfzBA5rS" role="22Ky0K">
                              <ref role="3cqZAo" node="tyIfzBA5iD" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5o_" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pH" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5gN" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5gO" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iF" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5k9" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fE" resolve="uniSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5ka" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="tyIfzBA5mC" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iE" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mD" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iB" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5gP" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iG" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5kb" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5kc" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5mE" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iE" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mF" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iB" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5gQ" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5gR" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iH" role="3cpWs9">
              <property role="TrG5h" value="subst" />
              <node concept="3uibUv" id="tyIfzBA5kd" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2YIFZM" id="tyIfzBA5ke" role="33vP2m">
                <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                <node concept="37vLTw" id="tyIfzBA5mG" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iB" resolve="orig" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mH" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iC" resolve="ptn" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mI" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iD" resolve="x" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mJ" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5gS" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5gT" role="3cqZAp">
            <node concept="2ZW3vV" id="tyIfzBA5iI" role="3vwVQn">
              <node concept="3uibUv" id="tyIfzBA5kf" role="2ZW6by">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="tyIfzBA5kg" role="2ZW6bz">
                <ref role="3cqZAo" node="tyIfzBA5iH" resolve="subst" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5gU" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iJ" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5kh" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5ki" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5mK" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iE" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mL" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iH" resolve="subst" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="tyIfzBA5g6" role="3s_gse">
        <property role="3s$Bm0" value="term_to_var" />
        <node concept="3cqZAl" id="tyIfzBA5go" role="3clF45" />
        <node concept="3Tm1VV" id="tyIfzBA5gp" role="1B3o_S" />
        <node concept="3clFbS" id="tyIfzBA5gq" role="3clF47">
          <node concept="3cpWs8" id="tyIfzBA5gV" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iK" role="3cpWs9">
              <property role="TrG5h" value="orig" />
              <node concept="3uibUv" id="tyIfzBA5kj" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kk" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5mM" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5oA" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="tyIfzBA5pI" role="1oi5TL">
                      <node concept="1oi5ST" id="tyIfzBA5qz" role="1ojpOf">
                        <property role="TrG5h" value="bazz" />
                        <node concept="1oi5XN" id="tyIfzBA5r2" role="1oi5TL">
                          <property role="1oi5yK" value="abc" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="tyIfzBA5q$" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="tyIfzBA5r3" role="1oi5zu">
                          <property role="1oi5yK" value="xyz" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oB" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pJ" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5gW" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iL" role="3cpWs9">
              <property role="TrG5h" value="ptn" />
              <node concept="3uibUv" id="tyIfzBA5kl" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5km" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5mN" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5oC" role="1ojpOf">
                    <property role="TrG5h" value="bazz" />
                    <node concept="1oi5XN" id="tyIfzBA5pK" role="1oi5TL">
                      <property role="1oi5yK" value="abc" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oD" role="1ojpOf">
                    <property role="TrG5h" value="bar" />
                    <node concept="1oi5XN" id="tyIfzBA5pL" role="1oi5zu">
                      <property role="1oi5yK" value="xyz" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5gX" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5gY" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iM" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="tyIfzBA5kn" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5ko" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5mO" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5gZ" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iN" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="tyIfzBA5kp" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kq" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5mP" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5oE" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="tyIfzBA5pM" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5q_" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5r4" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5iM" resolve="x" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oF" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pN" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5h0" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5h1" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iO" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5kr" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fE" resolve="uniSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5ks" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="tyIfzBA5mQ" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iN" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mR" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iK" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5h2" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iP" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5kt" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5ku" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5mS" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iN" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mT" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iK" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5h3" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5h4" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iQ" role="3cpWs9">
              <property role="TrG5h" value="subst" />
              <node concept="3uibUv" id="tyIfzBA5kv" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2YIFZM" id="tyIfzBA5kw" role="33vP2m">
                <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                <node concept="37vLTw" id="tyIfzBA5mU" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iK" resolve="orig" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mV" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iL" resolve="ptn" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mW" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iM" resolve="x" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mX" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5h5" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5h6" role="3cqZAp">
            <node concept="2ZW3vV" id="tyIfzBA5iR" role="3vwVQn">
              <node concept="3uibUv" id="tyIfzBA5kx" role="2ZW6by">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="tyIfzBA5ky" role="2ZW6bz">
                <ref role="3cqZAo" node="tyIfzBA5iQ" resolve="subst" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5h7" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iS" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5kz" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5k$" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5mY" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iN" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5mZ" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iQ" resolve="subst" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="tyIfzBA5g7" role="3s_gse">
        <property role="3s$Bm0" value="term_to_term_ground" />
        <node concept="3cqZAl" id="tyIfzBA5gr" role="3clF45" />
        <node concept="3Tm1VV" id="tyIfzBA5gs" role="1B3o_S" />
        <node concept="3clFbS" id="tyIfzBA5gt" role="3clF47">
          <node concept="3cpWs8" id="tyIfzBA5h8" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iT" role="3cpWs9">
              <property role="TrG5h" value="orig" />
              <node concept="3uibUv" id="tyIfzBA5k_" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kA" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5n0" role="1oi0x0">
                  <node concept="38e3lM" id="tyIfzBA5oG" role="1ojpOf">
                    <property role="TrG5h" value="mem" />
                    <node concept="KCUsM" id="tyIfzBA5pO" role="38e3mL">
                      <node concept="1oi5UN" id="tyIfzBA5qA" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5r5" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rA" role="1oi5zu">
                            <property role="1oi5yK" value="fun" />
                          </node>
                        </node>
                        <node concept="1oi5ST" id="tyIfzBA5r6" role="1ojpOf">
                          <property role="TrG5h" value="obj" />
                          <node concept="1oi5UN" id="tyIfzBA5rB" role="1oi5TL">
                            <node concept="1oi5Wm" id="tyIfzBA5rT" role="1ojpOf">
                              <property role="TrG5h" value="name" />
                              <node concept="1oi5XN" id="tyIfzBA5rZ" role="1oi5zu">
                                <property role="1oi5yK" value="FOO" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="tyIfzBA5qB" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5r7" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rC" role="1oi5zu">
                            <property role="1oi5yK" value="BAR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oH" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pP" role="1oi5zu">
                      <property role="1oi5yK" value="rel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5h9" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5ha" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iU" role="3cpWs9">
              <property role="TrG5h" value="ptn" />
              <node concept="3uibUv" id="tyIfzBA5kB" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kC" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5n1" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5oI" role="1ojpOf">
                    <property role="TrG5h" value="obj" />
                    <node concept="1oi5UN" id="tyIfzBA5pQ" role="1oi5TL">
                      <node concept="1oi5Wm" id="tyIfzBA5qC" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="tyIfzBA5r8" role="1oi5zu">
                          <property role="1oi5yK" value="FOO" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oJ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pR" role="1oi5zu">
                      <property role="1oi5yK" value="fun" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hb" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hc" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iV" role="3cpWs9">
              <property role="TrG5h" value="repl" />
              <node concept="3uibUv" id="tyIfzBA5kD" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kE" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5n2" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5oK" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pS" role="1oi5zu">
                      <property role="1oi5yK" value="val" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oL" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="tyIfzBA5pT" role="1oi5zu">
                      <property role="1oi5yK" value="BAZZ" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hd" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5he" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iW" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="tyIfzBA5kF" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kG" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5n3" role="1oi0x0">
                  <node concept="38e3lM" id="tyIfzBA5oM" role="1ojpOf">
                    <property role="TrG5h" value="mem" />
                    <node concept="KCUsM" id="tyIfzBA5pU" role="38e3mL">
                      <node concept="1oi5UN" id="tyIfzBA5qD" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5r9" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rD" role="1oi5zu">
                            <property role="1oi5yK" value="val" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="tyIfzBA5ra" role="1ojpOf">
                          <property role="TrG5h" value="val" />
                          <node concept="1oi5XN" id="tyIfzBA5rE" role="1oi5zu">
                            <property role="1oi5yK" value="BAZZ" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="tyIfzBA5qE" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5rb" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rF" role="1oi5zu">
                            <property role="1oi5yK" value="BAR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oN" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pV" role="1oi5zu">
                      <property role="1oi5yK" value="rel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hf" role="3cqZAp" />
          <node concept="3vFxKo" id="tyIfzBA5hg" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iX" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5kH" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fE" resolve="uniSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5kI" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="tyIfzBA5n4" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iW" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5n5" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iT" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5hh" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5iY" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5kJ" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5kK" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5n6" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iW" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5n7" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iT" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hi" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hj" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5iZ" role="3cpWs9">
              <property role="TrG5h" value="subst" />
              <node concept="3uibUv" id="tyIfzBA5kL" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2YIFZM" id="tyIfzBA5kM" role="33vP2m">
                <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                <node concept="37vLTw" id="tyIfzBA5n8" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iT" resolve="orig" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5n9" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iU" resolve="ptn" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5na" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iV" resolve="repl" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nb" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hk" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5hl" role="3cqZAp">
            <node concept="2ZW3vV" id="tyIfzBA5j0" role="3vwVQn">
              <node concept="3uibUv" id="tyIfzBA5kN" role="2ZW6by">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="tyIfzBA5kO" role="2ZW6bz">
                <ref role="3cqZAo" node="tyIfzBA5iZ" resolve="subst" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5hm" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5j1" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5kP" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5kQ" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5nc" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iW" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nd" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5iZ" resolve="subst" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="tyIfzBA5g8" role="3s_gse">
        <property role="3s$Bm0" value="term_to_term_logical" />
        <node concept="3cqZAl" id="tyIfzBA5gu" role="3clF45" />
        <node concept="3Tm1VV" id="tyIfzBA5gv" role="1B3o_S" />
        <node concept="3clFbS" id="tyIfzBA5gw" role="3clF47">
          <node concept="3cpWs8" id="tyIfzBA5hn" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j2" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="tyIfzBA5kR" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5kS" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5ne" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5ho" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j3" role="3cpWs9">
              <property role="TrG5h" value="foo1" />
              <node concept="3uibUv" id="tyIfzBA5kT" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kU" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5nf" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5oO" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pW" role="1oi5zu">
                      <property role="1oi5yK" value="FOO" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5hp" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j4" role="3cpWs9">
              <property role="TrG5h" value="orig" />
              <node concept="3uibUv" id="tyIfzBA5kV" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5kW" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5ng" role="1oi0x0">
                  <node concept="38e3lM" id="tyIfzBA5oP" role="1ojpOf">
                    <property role="TrG5h" value="mem" />
                    <node concept="KCUsM" id="tyIfzBA5pX" role="38e3mL">
                      <node concept="1oi5UN" id="tyIfzBA5qF" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5rc" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rG" role="1oi5zu">
                            <property role="1oi5yK" value="fun" />
                          </node>
                        </node>
                        <node concept="1oi5ST" id="tyIfzBA5rd" role="1ojpOf">
                          <property role="TrG5h" value="obj" />
                          <node concept="1oi5UN" id="tyIfzBA5rH" role="1oi5TL">
                            <node concept="22Ky0T" id="tyIfzBA5rU" role="lGtFl">
                              <node concept="37vLTw" id="tyIfzBA5s0" role="22Ky0K">
                                <ref role="3cqZAo" node="tyIfzBA5j2" resolve="x" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="tyIfzBA5qG" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5re" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rI" role="1oi5zu">
                            <property role="1oi5yK" value="BAR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oQ" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pY" role="1oi5zu">
                      <property role="1oi5yK" value="rel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hq" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hr" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j5" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="tyIfzBA5kX" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5kY" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5nh" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5hs" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j6" role="3cpWs9">
              <property role="TrG5h" value="foo2" />
              <node concept="3uibUv" id="tyIfzBA5kZ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5l0" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5ni" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5oR" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5pZ" role="1oi5zu">
                      <property role="1oi5yK" value="FOO" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5ht" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j7" role="3cpWs9">
              <property role="TrG5h" value="ptn" />
              <node concept="3uibUv" id="tyIfzBA5l1" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5l2" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5nj" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5oS" role="1ojpOf">
                    <property role="TrG5h" value="obj" />
                    <node concept="1oi5UN" id="tyIfzBA5q0" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qH" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5rf" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5j5" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oT" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5q1" role="1oi5zu">
                      <property role="1oi5yK" value="fun" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hu" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hv" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j8" role="3cpWs9">
              <property role="TrG5h" value="repl" />
              <node concept="3uibUv" id="tyIfzBA5l3" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5l4" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5nk" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5oU" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5q2" role="1oi5zu">
                      <property role="1oi5yK" value="val" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oV" role="1ojpOf">
                    <property role="TrG5h" value="val" />
                    <node concept="1oi5XN" id="tyIfzBA5q3" role="1oi5zu">
                      <property role="1oi5yK" value="BAZZ" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hw" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hx" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j9" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="tyIfzBA5l5" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5l6" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5nl" role="1oi0x0">
                  <node concept="38e3lM" id="tyIfzBA5oW" role="1ojpOf">
                    <property role="TrG5h" value="mem" />
                    <node concept="KCUsM" id="tyIfzBA5q4" role="38e3mL">
                      <node concept="1oi5UN" id="tyIfzBA5qI" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5rg" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rJ" role="1oi5zu">
                            <property role="1oi5yK" value="val" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="tyIfzBA5rh" role="1ojpOf">
                          <property role="TrG5h" value="val" />
                          <node concept="1oi5XN" id="tyIfzBA5rK" role="1oi5zu">
                            <property role="1oi5yK" value="BAZZ" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="tyIfzBA5qJ" role="KCVpo">
                        <node concept="1oi5Wm" id="tyIfzBA5ri" role="1ojpOf">
                          <property role="TrG5h" value="name" />
                          <node concept="1oi5XN" id="tyIfzBA5rL" role="1oi5zu">
                            <property role="1oi5yK" value="BAR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5oX" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5q5" role="1oi5zu">
                      <property role="1oi5yK" value="rel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hy" role="3cqZAp" />
          <node concept="3vFxKo" id="tyIfzBA5hz" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5ja" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5l7" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fE" resolve="uniSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5l8" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="tyIfzBA5nm" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j9" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nn" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j4" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5h$" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jb" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5l9" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5la" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5no" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j9" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5np" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j4" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5h_" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hA" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jc" role="3cpWs9">
              <property role="TrG5h" value="subst1" />
              <node concept="3uibUv" id="tyIfzBA5lb" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2YIFZM" id="tyIfzBA5lc" role="33vP2m">
                <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                <node concept="37vLTw" id="tyIfzBA5nq" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j4" resolve="orig" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nr" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j7" resolve="ptn" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5ns" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j8" resolve="repl" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nt" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5hB" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jd" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5ld" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5le" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5nu" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j9" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nv" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jc" resolve="subst1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hC" role="3cqZAp" />
          <node concept="3clFbF" id="tyIfzBA5hD" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5je" role="3clFbG">
              <node concept="1eOMI4" id="tyIfzBA5lf" role="2Oq$k0">
                <node concept="10QFUN" id="tyIfzBA5nw" role="1eOMHV">
                  <node concept="3uibUv" id="tyIfzBA5oY" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                    <node concept="3uibUv" id="tyIfzBA5q6" role="11_B2D">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="tyIfzBA5oZ" role="10QFUP">
                    <node concept="1eOMI4" id="tyIfzBA5q7" role="2Oq$k0">
                      <node concept="10QFUN" id="tyIfzBA5qK" role="1eOMHV">
                        <node concept="3uibUv" id="tyIfzBA5rj" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                          <node concept="3uibUv" id="tyIfzBA5rM" role="11_B2D">
                            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="tyIfzBA5rk" role="10QFUP">
                          <ref role="3cqZAo" node="tyIfzBA5j2" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="tyIfzBA5q8" role="2OqNvi">
                      <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBA5lg" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MutableLogical.setValue(java.lang.Object)" resolve="setValue" />
                <node concept="37vLTw" id="tyIfzBA5nx" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j3" resolve="foo1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hE" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hF" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jf" role="3cpWs9">
              <property role="TrG5h" value="subst2" />
              <node concept="3uibUv" id="tyIfzBA5lh" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2YIFZM" id="tyIfzBA5li" role="33vP2m">
                <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                <node concept="37vLTw" id="tyIfzBA5ny" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j4" resolve="orig" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nz" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j7" resolve="ptn" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5n$" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j8" resolve="repl" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5n_" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5hG" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jg" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5lj" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5lk" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5nA" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j9" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nB" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jf" resolve="subst2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hH" role="3cqZAp" />
          <node concept="3clFbF" id="tyIfzBA5hI" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jh" role="3clFbG">
              <node concept="1eOMI4" id="tyIfzBA5ll" role="2Oq$k0">
                <node concept="10QFUN" id="tyIfzBA5nC" role="1eOMHV">
                  <node concept="3uibUv" id="tyIfzBA5p0" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                    <node concept="3uibUv" id="tyIfzBA5q9" role="11_B2D">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="tyIfzBA5p1" role="10QFUP">
                    <node concept="1eOMI4" id="tyIfzBA5qa" role="2Oq$k0">
                      <node concept="10QFUN" id="tyIfzBA5qL" role="1eOMHV">
                        <node concept="3uibUv" id="tyIfzBA5rl" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                          <node concept="3uibUv" id="tyIfzBA5rN" role="11_B2D">
                            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="tyIfzBA5rm" role="10QFUP">
                          <ref role="3cqZAo" node="tyIfzBA5j5" resolve="y" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="tyIfzBA5qb" role="2OqNvi">
                      <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBA5lm" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MutableLogical.setValue(java.lang.Object)" resolve="setValue" />
                <node concept="37vLTw" id="tyIfzBA5nD" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j6" resolve="foo2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hJ" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hK" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5ji" role="3cpWs9">
              <property role="TrG5h" value="subst3" />
              <node concept="3uibUv" id="tyIfzBA5ln" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2YIFZM" id="tyIfzBA5lo" role="33vP2m">
                <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                <node concept="37vLTw" id="tyIfzBA5nE" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j4" resolve="orig" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nF" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j7" resolve="ptn" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nG" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j8" resolve="repl" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nH" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5hL" role="3cqZAp">
            <node concept="2ZW3vV" id="tyIfzBA5jj" role="3vwVQn">
              <node concept="3uibUv" id="tyIfzBA5lp" role="2ZW6by">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="tyIfzBA5lq" role="2ZW6bz">
                <ref role="3cqZAo" node="tyIfzBA5ji" resolve="subst3" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5hM" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jk" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5lr" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5ls" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5nI" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5j9" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nJ" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5ji" resolve="subst3" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="tyIfzBA5g9" role="3s_gse">
        <property role="3s$Bm0" value="var_to_var" />
        <node concept="3cqZAl" id="tyIfzBA5gx" role="3clF45" />
        <node concept="3Tm1VV" id="tyIfzBA5gy" role="1B3o_S" />
        <node concept="3clFbS" id="tyIfzBA5gz" role="3clF47">
          <node concept="3cpWs8" id="tyIfzBA5hN" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jl" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="3uibUv" id="tyIfzBA5lt" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5lu" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5nK" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5hO" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jm" role="3cpWs9">
              <property role="TrG5h" value="orig" />
              <node concept="3uibUv" id="tyIfzBA5lv" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5lw" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5nL" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5p2" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="tyIfzBA5qc" role="1oi5TL">
                      <node concept="1oi5Wm" id="tyIfzBA5qM" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="tyIfzBA5rn" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="tyIfzBA5rO" role="lGtFl">
                            <node concept="37vLTw" id="tyIfzBA5rV" role="22Ky0K">
                              <ref role="3cqZAo" node="tyIfzBA5jl" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5p3" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qd" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5hP" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jn" role="3cpWs9">
              <property role="TrG5h" value="ptn" />
              <node concept="3uibUv" id="tyIfzBA5lx" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="tyIfzBA5ly" role="33vP2m">
                <ref role="3cqZAo" node="tyIfzBA5jl" resolve="x" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hQ" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hR" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jo" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="3uibUv" id="tyIfzBA5lz" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5l$" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5nM" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5hS" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jp" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="tyIfzBA5l_" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5lA" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5nN" role="1oi0x0">
                  <node concept="1oi5ST" id="tyIfzBA5p4" role="1ojpOf">
                    <property role="TrG5h" value="child" />
                    <node concept="1oi5UN" id="tyIfzBA5qe" role="1oi5TL">
                      <node concept="1oi5Wm" id="tyIfzBA5qN" role="1ojpOf">
                        <property role="TrG5h" value="bar" />
                        <node concept="1oi5XN" id="tyIfzBA5ro" role="1oi5zu">
                          <property role="1oi5yK" value="" />
                          <node concept="22Ky0T" id="tyIfzBA5rP" role="lGtFl">
                            <node concept="37vLTw" id="tyIfzBA5rW" role="22Ky0K">
                              <ref role="3cqZAo" node="tyIfzBA5jo" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="tyIfzBA5p5" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qf" role="1oi5zu">
                      <property role="1oi5yK" value="foo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hT" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5hU" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jq" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5lB" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fE" resolve="uniSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5lC" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6yEjedm5XWy" resolve="askUni" />
                <node concept="37vLTw" id="tyIfzBA5nO" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jp" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nP" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jm" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5hV" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jr" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5lD" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5lE" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5nQ" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jp" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nR" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jm" resolve="orig" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hW" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5hX" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5js" role="3cpWs9">
              <property role="TrG5h" value="subst" />
              <node concept="3uibUv" id="tyIfzBA5lF" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2YIFZM" id="tyIfzBA5lG" role="33vP2m">
                <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                <node concept="37vLTw" id="tyIfzBA5nS" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jm" resolve="orig" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nT" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jn" resolve="ptn" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nU" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jo" resolve="y" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nV" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5hY" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5hZ" role="3cqZAp">
            <node concept="2ZW3vV" id="tyIfzBA5jt" role="3vwVQn">
              <node concept="3uibUv" id="tyIfzBA5lH" role="2ZW6by">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="tyIfzBA5lI" role="2ZW6bz">
                <ref role="3cqZAo" node="tyIfzBA5js" resolve="subst" />
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5i0" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5ju" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5lJ" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5lK" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5nW" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jp" resolve="expect" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5nX" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5js" resolve="subst" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="tyIfzBA5ga" role="3s_gse">
        <property role="3s$Bm0" value="joinedVar_to_var" />
        <node concept="3cqZAl" id="tyIfzBA5g$" role="3clF45" />
        <node concept="3Tm1VV" id="tyIfzBA5g_" role="1B3o_S" />
        <node concept="3clFbS" id="tyIfzBA5gA" role="3clF47">
          <node concept="3cpWs8" id="tyIfzBA5i1" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jv" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="tyIfzBA5lL" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5lM" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5nY" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5i2" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jw" role="3cpWs9">
              <property role="TrG5h" value="Y" />
              <node concept="3uibUv" id="tyIfzBA5lN" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5lO" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5nZ" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5i3" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jx" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5lP" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5lQ" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5o0" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jv" resolve="X" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5o1" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jw" resolve="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5i4" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5i5" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jy" role="3cpWs9">
              <property role="TrG5h" value="origin" />
              <node concept="3uibUv" id="tyIfzBA5lR" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5lS" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5o2" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5p6" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qg" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5p7" role="1ojpOf">
                    <property role="TrG5h" value="first" />
                    <node concept="1oi5UN" id="tyIfzBA5qh" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qO" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5rp" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5jv" resolve="X" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5p8" role="1ojpOf">
                    <property role="TrG5h" value="second" />
                    <node concept="1oi5UN" id="tyIfzBA5qi" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qP" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5rq" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5jw" resolve="Y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5i6" role="3cqZAp" />
          <node concept="3clFbF" id="tyIfzBA5i7" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jz" role="3clFbG">
              <node concept="1rXfSq" id="tyIfzBA5lT" role="2Oq$k0">
                <ref role="37wK5l" node="tyIfzBA5fI" resolve="asTermLogical" />
                <node concept="37vLTw" id="tyIfzBA5o3" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jv" resolve="X" />
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBA5lU" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MutableLogical.union(jetbrains.mps.logic.reactor.logical.MutableLogical)" resolve="union" />
                <node concept="1rXfSq" id="tyIfzBA5o4" role="37wK5m">
                  <ref role="37wK5l" node="tyIfzBA5fI" resolve="asTermLogical" />
                  <node concept="37vLTw" id="tyIfzBA5p9" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jw" resolve="Y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5i8" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5j$" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5lV" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5lW" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5o5" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jv" resolve="X" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5o6" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jw" resolve="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5i9" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5ia" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5j_" role="3cpWs9">
              <property role="TrG5h" value="Z" />
              <node concept="3uibUv" id="tyIfzBA5lX" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5lY" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5o7" role="37wK5m">
                  <property role="Xl_RC" value="Z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5ib" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jA" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="tyIfzBA5lZ" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5m0" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5o8" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5pa" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qj" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5pb" role="1ojpOf">
                    <property role="TrG5h" value="first" />
                    <node concept="1oi5UN" id="tyIfzBA5qk" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qQ" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5rr" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5j_" resolve="Z" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5pc" role="1ojpOf">
                    <property role="TrG5h" value="second" />
                    <node concept="1oi5UN" id="tyIfzBA5ql" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qR" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5rs" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5j_" resolve="Z" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5ic" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5id" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jB" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5m1" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5m2" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5o9" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jA" resolve="expect" />
                </node>
                <node concept="2YIFZM" id="tyIfzBA5oa" role="37wK5m">
                  <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                  <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                  <node concept="37vLTw" id="tyIfzBA5pd" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jy" resolve="origin" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pe" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jv" resolve="X" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pf" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5j_" resolve="Z" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pg" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5ie" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jC" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5m3" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5m4" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5ob" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jA" resolve="expect" />
                </node>
                <node concept="2YIFZM" id="tyIfzBA5oc" role="37wK5m">
                  <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                  <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                  <node concept="37vLTw" id="tyIfzBA5ph" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jy" resolve="origin" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pi" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jw" resolve="Y" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pj" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5j_" resolve="Z" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pk" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="tyIfzBA5gb" role="3s_gse">
        <property role="3s$Bm0" value="termWithJoinedVar_to_var" />
        <node concept="3cqZAl" id="tyIfzBA5gB" role="3clF45" />
        <node concept="3Tm1VV" id="tyIfzBA5gC" role="1B3o_S" />
        <node concept="3clFbS" id="tyIfzBA5gD" role="3clF47">
          <node concept="3cpWs8" id="tyIfzBA5if" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jD" role="3cpWs9">
              <property role="TrG5h" value="X" />
              <node concept="3uibUv" id="tyIfzBA5m5" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5m6" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5od" role="37wK5m">
                  <property role="Xl_RC" value="X" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5ig" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jE" role="3cpWs9">
              <property role="TrG5h" value="Y" />
              <node concept="3uibUv" id="tyIfzBA5m7" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5m8" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5oe" role="37wK5m">
                  <property role="Xl_RC" value="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vFxKo" id="tyIfzBA5ih" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jF" role="3vFALc">
              <node concept="37vLTw" id="tyIfzBA5m9" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5ma" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5of" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jD" resolve="X" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5og" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jE" resolve="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5ii" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5ij" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jG" role="3cpWs9">
              <property role="TrG5h" value="origin" />
              <node concept="3uibUv" id="tyIfzBA5mb" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5mc" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5oh" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5pl" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qm" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5pm" role="1ojpOf">
                    <property role="TrG5h" value="first" />
                    <node concept="1oi5UN" id="tyIfzBA5qn" role="1oi5TL">
                      <node concept="1oi5Wm" id="tyIfzBA5qS" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="tyIfzBA5rt" role="1oi5zu">
                          <property role="1oi5yK" value="bar" />
                        </node>
                      </node>
                      <node concept="1oi5ST" id="tyIfzBA5qT" role="1ojpOf">
                        <property role="TrG5h" value="chd" />
                        <node concept="1oi5UN" id="tyIfzBA5ru" role="1oi5TL">
                          <node concept="22Ky0T" id="tyIfzBA5rQ" role="lGtFl">
                            <node concept="37vLTw" id="tyIfzBA5rX" role="22Ky0K">
                              <ref role="3cqZAo" node="tyIfzBA5jD" resolve="X" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5pn" role="1ojpOf">
                    <property role="TrG5h" value="second" />
                    <node concept="1oi5UN" id="tyIfzBA5qo" role="1oi5TL">
                      <node concept="1oi5Wm" id="tyIfzBA5qU" role="1ojpOf">
                        <property role="TrG5h" value="name" />
                        <node concept="1oi5XN" id="tyIfzBA5rv" role="1oi5zu">
                          <property role="1oi5yK" value="bar" />
                        </node>
                      </node>
                      <node concept="1oi5ST" id="tyIfzBA5qV" role="1ojpOf">
                        <property role="TrG5h" value="chd" />
                        <node concept="1oi5UN" id="tyIfzBA5rw" role="1oi5TL">
                          <node concept="22Ky0T" id="tyIfzBA5rR" role="lGtFl">
                            <node concept="37vLTw" id="tyIfzBA5rY" role="22Ky0K">
                              <ref role="3cqZAo" node="tyIfzBA5jE" resolve="Y" />
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
          <node concept="3clFbH" id="tyIfzBA5ik" role="3cqZAp" />
          <node concept="3clFbF" id="tyIfzBA5il" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jH" role="3clFbG">
              <node concept="1rXfSq" id="tyIfzBA5md" role="2Oq$k0">
                <ref role="37wK5l" node="tyIfzBA5fI" resolve="asTermLogical" />
                <node concept="37vLTw" id="tyIfzBA5oi" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jD" resolve="X" />
                </node>
              </node>
              <node concept="liA8E" id="tyIfzBA5me" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MutableLogical.union(jetbrains.mps.logic.reactor.logical.MutableLogical)" resolve="union" />
                <node concept="1rXfSq" id="tyIfzBA5oj" role="37wK5m">
                  <ref role="37wK5l" node="tyIfzBA5fI" resolve="asTermLogical" />
                  <node concept="37vLTw" id="tyIfzBA5po" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jE" resolve="Y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5im" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jI" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5mf" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5mg" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5ok" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jD" resolve="X" />
                </node>
                <node concept="37vLTw" id="tyIfzBA5ol" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jE" resolve="Y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5in" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5io" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jJ" role="3cpWs9">
              <property role="TrG5h" value="pattern1" />
              <node concept="3uibUv" id="tyIfzBA5mh" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5mi" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5om" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5pp" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qp" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5pq" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="tyIfzBA5qq" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qW" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5rx" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5jE" resolve="Y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5ip" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jK" role="3cpWs9">
              <property role="TrG5h" value="pattern2" />
              <node concept="3uibUv" id="tyIfzBA5mj" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5mk" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5on" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5pr" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qr" role="1oi5zu">
                      <property role="1oi5yK" value="bar" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5ps" role="1ojpOf">
                    <property role="TrG5h" value="chd" />
                    <node concept="1oi5UN" id="tyIfzBA5qs" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qX" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5ry" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5jE" resolve="Y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5iq" role="3cqZAp" />
          <node concept="3cpWs8" id="tyIfzBA5ir" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jL" role="3cpWs9">
              <property role="TrG5h" value="Z" />
              <node concept="3uibUv" id="tyIfzBA5ml" role="1tU5fm">
                <ref role="3uigEE" to="6exd:uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="1rXfSq" id="tyIfzBA5mm" role="33vP2m">
                <ref role="37wK5l" node="tyIfzBA5fG" resolve="termvar" />
                <node concept="Xl_RD" id="tyIfzBA5oo" role="37wK5m">
                  <property role="Xl_RC" value="Z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tyIfzBA5is" role="3cqZAp">
            <node concept="3cpWsn" id="tyIfzBA5jM" role="3cpWs9">
              <property role="TrG5h" value="expect" />
              <node concept="3uibUv" id="tyIfzBA5mn" role="1tU5fm">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="1oi1Uc" id="tyIfzBA5mo" role="33vP2m">
                <node concept="1oi5UN" id="tyIfzBA5op" role="1oi0x0">
                  <node concept="1oi5Wm" id="tyIfzBA5pt" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="tyIfzBA5qt" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5pu" role="1ojpOf">
                    <property role="TrG5h" value="first" />
                    <node concept="1oi5UN" id="tyIfzBA5qu" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qY" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5rz" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5jL" resolve="Z" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5ST" id="tyIfzBA5pv" role="1ojpOf">
                    <property role="TrG5h" value="second" />
                    <node concept="1oi5UN" id="tyIfzBA5qv" role="1oi5TL">
                      <node concept="22Ky0T" id="tyIfzBA5qZ" role="lGtFl">
                        <node concept="37vLTw" id="tyIfzBA5r$" role="22Ky0K">
                          <ref role="3cqZAo" node="tyIfzBA5jL" resolve="Z" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tyIfzBA5it" role="3cqZAp" />
          <node concept="3vwNmj" id="tyIfzBA5iu" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jN" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5mp" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5mq" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5oq" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jM" resolve="expect" />
                </node>
                <node concept="2YIFZM" id="tyIfzBA5or" role="37wK5m">
                  <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                  <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                  <node concept="37vLTw" id="tyIfzBA5pw" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jG" resolve="origin" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5px" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jJ" resolve="pattern1" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5py" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jL" resolve="Z" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pz" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3vwNmj" id="tyIfzBA5iv" role="3cqZAp">
            <node concept="2OqwBi" id="tyIfzBA5jO" role="3vwVQn">
              <node concept="37vLTw" id="tyIfzBA5mr" role="2Oq$k0">
                <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="tyIfzBA5ms" role="2OqNvi">
                <ref role="37wK5l" to="mqqo:6N2bvv_uxft" resolve="askEq" />
                <node concept="37vLTw" id="tyIfzBA5os" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzBA5jM" resolve="expect" />
                </node>
                <node concept="2YIFZM" id="tyIfzBA5ot" role="37wK5m">
                  <ref role="37wK5l" to="hano:3pMFS1zdqnu" resolve="subst" />
                  <ref role="1Pybhc" to="hano:3pMFS1zdqns" resolve="SubstituteUtil" />
                  <node concept="37vLTw" id="tyIfzBA5p$" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jG" resolve="origin" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5p_" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jK" resolve="pattern2" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pA" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5jL" resolve="Z" />
                  </node>
                  <node concept="37vLTw" id="tyIfzBA5pB" role="37wK5m">
                    <ref role="3cqZAo" node="tyIfzBA5fK" resolve="NO_CONTEXT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="tyIfzBA5fN" role="1KhZu4">
      <node concept="3clFbS" id="tyIfzBA5gc" role="2VODD2">
        <node concept="3clFbF" id="tyIfzBA5gE" role="3cqZAp">
          <node concept="37vLTI" id="tyIfzBA5iw" role="3clFbG">
            <node concept="2ShNRf" id="tyIfzBA5jP" role="37vLTx">
              <node concept="HV5vD" id="tyIfzBA5mt" role="2ShVmc">
                <ref role="HV5vE" to="mqqo:6yEjedm8s$A" resolve="TestingEqualsSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="tyIfzBA5jQ" role="37vLTJ">
              <ref role="3cqZAo" node="tyIfzBA5fC" resolve="eqSolver" />
            </node>
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
          <node concept="3uibUv" id="tyIfzBBtFx" role="8Xvag">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzBBAQg" role="jymVt" />
    <node concept="3Tm1VV" id="tyIfzBAB27" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="tyIfzC0ZNj">
    <property role="TrG5h" value="IncrementalLaunchHelper" />
    <node concept="2tJIrI" id="tyIfzC4jgp" role="jymVt" />
    <node concept="3clFbW" id="tyIfzC440j" role="jymVt">
      <node concept="37vLTG" id="tyIfzC440k" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="tyIfzC440l" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="tyIfzC440m" role="3clF46">
        <property role="TrG5h" value="demoModel" />
        <node concept="H_c77" id="tyIfzC440n" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="tyIfzC440q" role="3clF45" />
      <node concept="3Tm1VV" id="tyIfzC440r" role="1B3o_S" />
      <node concept="3clFbS" id="tyIfzC440s" role="3clF47">
        <node concept="3cpWs8" id="tyIfzC4hI7" role="3cqZAp">
          <node concept="3cpWsn" id="tyIfzC4hI8" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="tyIfzC4hI9" role="1tU5fm">
              <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
            </node>
            <node concept="2ShNRf" id="tyIfzC4hIa" role="33vP2m">
              <node concept="1pGfFk" id="tyIfzC4hIb" role="2ShVmc">
                <ref role="37wK5l" to="hano:7DvO2M9VeM1" resolve="RuleProcessingSession" />
                <node concept="1eOMI4" id="tyIfzC4hIc" role="37wK5m">
                  <node concept="10QFUN" id="tyIfzC4hId" role="1eOMHV">
                    <node concept="A3Dl8" id="tyIfzC4hIe" role="10QFUM">
                      <node concept="3qUE_q" id="tyIfzC4hIf" role="A3Ik2">
                        <node concept="3uibUv" id="tyIfzC4hIg" role="3qUE_r">
                          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="tyIfzC4hIh" role="10QFUP">
                      <ref role="37wK5l" to="u46i:7P_FdVPW9uU" resolve="allForModel" />
                      <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                      <node concept="37vLTw" id="tyIfzC4hIi" role="37wK5m">
                        <ref role="3cqZAo" node="tyIfzC440m" resolve="demoModel" />
                      </node>
                      <node concept="37vLTw" id="tyIfzC4hIj" role="37wK5m">
                        <ref role="3cqZAo" node="tyIfzC440k" resolve="repo" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="tyIfzC4hIk" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzC440k" resolve="repo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="15s5l7" id="tyIfzC57sq" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type collection&lt;TypecheckingAspect&gt; is not comparable with sequence&lt;? extends CoderulesAspect&gt;&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/1178271928127]&quot;;" />
            <property role="huDt6" value="Error: type collection&lt;TypecheckingAspect&gt; is not comparable with sequence&lt;? extends CoderulesAspect&gt;" />
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzC4hIu" role="3cqZAp">
          <node concept="37vLTI" id="tyIfzC4hIv" role="3clFbG">
            <node concept="2OqwBi" id="tyIfzC4hIw" role="37vLTJ">
              <node concept="Xjq3P" id="tyIfzC4hIx" role="2Oq$k0" />
              <node concept="2OwXpG" id="tyIfzC4hIy" role="2OqNvi">
                <ref role="2Oxat5" node="tyIfzC1aUL" resolve="tplApp" />
              </node>
            </node>
            <node concept="2ShNRf" id="tyIfzC4hIz" role="37vLTx">
              <node concept="1pGfFk" id="tyIfzC4hI$" role="2ShVmc">
                <ref role="37wK5l" to="hano:7DvO2M9pdut" resolve="ProgramProducer" />
                <node concept="Xl_RD" id="tyIfzC4hI_" role="37wK5m">
                  <property role="Xl_RC" value="test" />
                </node>
                <node concept="37vLTw" id="tyIfzC4hIA" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzC4hI8" resolve="session" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzC4hIG" role="3cqZAp">
          <node concept="37vLTI" id="tyIfzC4hIH" role="3clFbG">
            <node concept="2ShNRf" id="tyIfzC4hII" role="37vLTx">
              <node concept="1pGfFk" id="tyIfzC4hIJ" role="2ShVmc">
                <ref role="37wK5l" to="hano:HV6urVFjOl" resolve="ProgramEvaluator" />
                <node concept="2OqwBi" id="tyIfzC4hIK" role="37wK5m">
                  <node concept="Xjq3P" id="tyIfzC4hIL" role="2Oq$k0" />
                  <node concept="2OwXpG" id="tyIfzC4hIM" role="2OqNvi">
                    <ref role="2Oxat5" node="tyIfzC1bTY" resolve="reporting" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="tyIfzC4hIN" role="37vLTJ">
              <node concept="Xjq3P" id="tyIfzC4hIO" role="2Oq$k0" />
              <node concept="2OwXpG" id="tyIfzC4hIP" role="2OqNvi">
                <ref role="2Oxat5" node="tyIfzC1aZ5" resolve="evaluator" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzC0ZQK" role="jymVt" />
    <node concept="3clFbW" id="tyIfzC0ZVq" role="jymVt">
      <node concept="37vLTG" id="tyIfzC103X" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="tyIfzC1051" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="tyIfzC108H" role="3clF46">
        <property role="TrG5h" value="demoModel" />
        <node concept="H_c77" id="tyIfzC2wEW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tyIfzC106r" role="3clF46">
        <property role="TrG5h" value="qkind" />
        <node concept="3uibUv" id="tyIfzC107w" role="1tU5fm">
          <ref role="3uigEE" to="tj24:4t7Xo7inNgi" resolve="TypecheckingQueryKind" />
        </node>
      </node>
      <node concept="3cqZAl" id="tyIfzC0ZVs" role="3clF45" />
      <node concept="3Tm1VV" id="tyIfzC0ZVt" role="1B3o_S" />
      <node concept="3clFbS" id="tyIfzC0ZVu" role="3clF47">
        <node concept="3SKdUt" id="tyIfzC0ZXc" role="3cqZAp">
          <node concept="1PaTwC" id="tyIfzC103g" role="3ndbpf">
            <node concept="3oM_SD" id="tyIfzC0ZXt" role="1PaTwD">
              <property role="3oM_SC" value="Class" />
            </node>
            <node concept="3oM_SD" id="tyIfzC1010" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="tyIfzC0ZXB" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="tyIfzC0ZZ5" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="tyIfzC0ZZh" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="tyIfzC101D" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="tyIfzC2tpi" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzC2tt5" role="3cqZAp" />
        <node concept="3cpWs8" id="6OXbTD_o6iu" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTD_o6iv" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="6OXbTD_o6ic" role="1tU5fm">
              <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
            </node>
            <node concept="2ShNRf" id="5zsw4w31jsK" role="33vP2m">
              <node concept="1pGfFk" id="5zsw4w31jsL" role="2ShVmc">
                <ref role="37wK5l" to="hano:7DvO2M9VeM1" resolve="RuleProcessingSession" />
                <node concept="1eOMI4" id="5zsw4w31mBC" role="37wK5m">
                  <node concept="10QFUN" id="5zsw4w31mB_" role="1eOMHV">
                    <node concept="A3Dl8" id="5zsw4w31mBE" role="10QFUM">
                      <node concept="3qUE_q" id="5zsw4w31mBF" role="A3Ik2">
                        <node concept="3uibUv" id="5zsw4w31mBG" role="3qUE_r">
                          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="5zsw4w31mBK" role="10QFUP">
                      <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                      <ref role="37wK5l" to="u46i:7P_FdVPW9uU" resolve="allForModel" />
                      <node concept="37vLTw" id="tyIfzC21Od" role="37wK5m">
                        <ref role="3cqZAo" node="tyIfzC108H" resolve="demoModel" />
                      </node>
                      <node concept="37vLTw" id="5zsw4w31mBO" role="37wK5m">
                        <ref role="3cqZAo" node="tyIfzC103X" resolve="repo" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="72RDgIN4_KQ" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzC103X" resolve="repo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="15s5l7" id="tyIfzC587Q" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type collection&lt;TypecheckingAspect&gt; is not comparable with sequence&lt;? extends CoderulesAspect&gt;&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/1178271928127]&quot;;" />
            <property role="huDt6" value="Error: type collection&lt;TypecheckingAspect&gt; is not comparable with sequence&lt;? extends CoderulesAspect&gt;" />
          </node>
        </node>
        <node concept="3cpWs8" id="6OXbTD_oquh" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTD_oqui" role="3cpWs9">
            <property role="TrG5h" value="queryTemplate" />
            <node concept="3uibUv" id="6OXbTD_oqtX" role="1tU5fm">
              <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
            </node>
            <node concept="2OqwBi" id="6OXbTD_oquj" role="33vP2m">
              <node concept="2OqwBi" id="6OXbTD_oquk" role="2Oq$k0">
                <node concept="37vLTw" id="6OXbTD_oqul" role="2Oq$k0">
                  <ref role="3cqZAo" node="6OXbTD_o6iv" resolve="session" />
                </node>
                <node concept="liA8E" id="6OXbTD_oqum" role="2OqNvi">
                  <ref role="37wK5l" to="hano:7WKNeR9alW4" resolve="queryTemplates" />
                </node>
              </node>
              <node concept="liA8E" id="6OXbTD_oqun" role="2OqNvi">
                <ref role="37wK5l" to="hano:4t7Xo7inmSj" resolve="byKind" />
                <node concept="37vLTw" id="tyIfzC2u9A" role="37wK5m">
                  <ref role="3cqZAo" node="tyIfzC106r" resolve="qkind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzC1OO3" role="3cqZAp">
          <node concept="37vLTI" id="tyIfzC1PST" role="3clFbG">
            <node concept="2OqwBi" id="tyIfzC1P5D" role="37vLTJ">
              <node concept="Xjq3P" id="tyIfzC1OO1" role="2Oq$k0" />
              <node concept="2OwXpG" id="tyIfzC1PM7" role="2OqNvi">
                <ref role="2Oxat5" node="tyIfzC1aUL" resolve="tplApp" />
              </node>
            </node>
            <node concept="2ShNRf" id="6$7vuu2ugt4" role="37vLTx">
              <node concept="1pGfFk" id="6$7vuu2ugt5" role="2ShVmc">
                <ref role="37wK5l" to="hano:7WKNeR9bcL$" resolve="ProgramProducer" />
                <node concept="Xl_RD" id="6OXbTDxuaSu" role="37wK5m">
                  <property role="Xl_RC" value="test" />
                </node>
                <node concept="37vLTw" id="6OXbTD_oFoC" role="37wK5m">
                  <ref role="3cqZAo" node="6OXbTD_o6iv" resolve="session" />
                </node>
                <node concept="37vLTw" id="6OXbTD_ouEx" role="37wK5m">
                  <ref role="3cqZAo" node="6OXbTD_oqui" resolve="queryTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tyIfzC1z1z" role="3cqZAp">
          <node concept="37vLTI" id="tyIfzC1zHw" role="3clFbG">
            <node concept="2ShNRf" id="tyIfzC1$cx" role="37vLTx">
              <node concept="1pGfFk" id="tyIfzC1_Gr" role="2ShVmc">
                <ref role="37wK5l" to="hano:HV6urVFjOl" resolve="ProgramEvaluator" />
                <node concept="2OqwBi" id="tyIfzC1_Ov" role="37wK5m">
                  <node concept="Xjq3P" id="tyIfzC1_HM" role="2Oq$k0" />
                  <node concept="2OwXpG" id="tyIfzC1AsA" role="2OqNvi">
                    <ref role="2Oxat5" node="tyIfzC1bTY" resolve="reporting" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="tyIfzC1ziq" role="37vLTJ">
              <node concept="Xjq3P" id="tyIfzC1z1x" role="2Oq$k0" />
              <node concept="2OwXpG" id="tyIfzC1zAI" role="2OqNvi">
                <ref role="2Oxat5" node="tyIfzC1aZ5" resolve="evaluator" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzC10eX" role="jymVt" />
    <node concept="3clFb_" id="tyIfzC0ZRF" role="jymVt">
      <property role="TrG5h" value="launch" />
      <node concept="37vLTG" id="tyIfzC238z" role="3clF46">
        <property role="TrG5h" value="demo" />
        <node concept="3Tqbb2" id="tyIfzC23n9" role="1tU5fm">
          <ref role="ehGHo" to="qulx:7lt0LtPHOlU" resolve="Root" />
        </node>
      </node>
      <node concept="3clFbS" id="tyIfzC0ZRI" role="3clF47">
        <node concept="3SKdUt" id="tyIfzC10hN" role="3cqZAp">
          <node concept="1PaTwC" id="tyIfzC10jL" role="3ndbpf">
            <node concept="3oM_SD" id="tyIfzC10hU" role="1PaTwD">
              <property role="3oM_SC" value="Returns" />
            </node>
            <node concept="3oM_SD" id="tyIfzC25do" role="1PaTwD">
              <property role="3oM_SC" value="types" />
            </node>
          </node>
        </node>
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
        <node concept="3clFbH" id="tyIfzC25dR" role="3cqZAp" />
        <node concept="3cpWs8" id="6$7vuu2ujxQ" role="3cqZAp">
          <node concept="3cpWsn" id="6$7vuu2ujxR" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="6$7vuu2ujxH" role="1tU5fm">
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="1rXfSq" id="tyIfzC3A2R" role="33vP2m">
              <ref role="37wK5l" node="tyIfzC3x3f" resolve="produce" />
              <node concept="37vLTw" id="tyIfzC3A5n" role="37wK5m">
                <ref role="3cqZAo" node="tyIfzC238z" resolve="demo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="tyIfzC2Bqf" role="3cqZAp">
          <node concept="3clFbS" id="tyIfzC2Bqh" role="3clFbx">
            <node concept="3cpWs6" id="tyIfzC2Cx$" role="3cqZAp">
              <node concept="2ShNRf" id="tyIfzC2CMY" role="3cqZAk">
                <node concept="3rGOSV" id="tyIfzC2DJF" role="2ShVmc">
                  <node concept="3uibUv" id="tyIfzC2Ehe" role="3rHrn6">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                  <node concept="3Tqbb2" id="tyIfzC2EzB" role="3rHtpV" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="tyIfzC2BEA" role="3clFbw">
            <node concept="2OqwBi" id="tyIfzC2BO8" role="3fr31v">
              <node concept="37vLTw" id="tyIfzC2BES" role="2Oq$k0">
                <ref role="3cqZAo" node="6$7vuu2ujxR" resolve="res" />
              </node>
              <node concept="liA8E" id="tyIfzC2BXw" role="2OqNvi">
                <ref role="37wK5l" to="hano:7Oc59RS_hsj" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tyIfzC2ENo" role="3cqZAp" />
        <node concept="2GUZhq" id="tyIfzC28Y8" role="3cqZAp">
          <node concept="3clFbS" id="tyIfzC28Ya" role="2GV8ay">
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
            <node concept="3clFbF" id="tyIfzC2Rgt" role="3cqZAp">
              <node concept="37vLTI" id="tyIfzC3hE1" role="3clFbG">
                <node concept="2OqwBi" id="tyIfzC2THM" role="37vLTJ">
                  <node concept="2OqwBi" id="tyIfzC2R_5" role="2Oq$k0">
                    <node concept="Xjq3P" id="tyIfzC2Rgr" role="2Oq$k0" />
                    <node concept="2OwXpG" id="tyIfzC2TsK" role="2OqNvi">
                      <ref role="2Oxat5" node="tyIfzC1bTY" resolve="reporting" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="tyIfzC3hu9" role="2OqNvi">
                    <ref role="2Oxat5" node="tyIfzC1HJR" resolve="types" />
                  </node>
                </node>
                <node concept="2ShNRf" id="tyIfzC3ino" role="37vLTx">
                  <node concept="3rGOSV" id="tyIfzC3inp" role="2ShVmc">
                    <node concept="3uibUv" id="tyIfzC3inq" role="3rHrn6">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="3Tqbb2" id="tyIfzC3inr" role="3rHtpV" />
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
                        <ref role="3cqZAo" node="tyIfzC1aZ5" resolve="evaluator" />
                      </node>
                      <node concept="liA8E" id="6QH_LDtbV6f" role="2OqNvi">
                        <ref role="37wK5l" to="hano:HV6urVFrQ9" resolve="eval" />
                        <node concept="Xl_RD" id="6tPOoeTc4db" role="37wK5m">
                          <property role="Xl_RC" value=".initial" />
                        </node>
                        <node concept="2OqwBi" id="tyIfzC2VRN" role="37wK5m">
                          <node concept="37vLTw" id="tyIfzC2VIs" role="2Oq$k0">
                            <ref role="3cqZAo" node="tyIfzC1aUL" resolve="tplApp" />
                          </node>
                          <node concept="liA8E" id="tyIfzC2WHe" role="2OqNvi">
                            <ref role="37wK5l" to="hano:3GlpCDSyO$P" resolve="getProgram" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="4$YN6QuoGjt" role="37wK5m">
                          <ref role="1PxDUh" to="hano:qubcdtxBiR" resolve="EvaluationTraceExt" />
                          <ref role="3cqZAo" to="hano:24Vro6cS5rK" resolve="NULL" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="tyIfzC1RxE" role="3cqZAp">
              <node concept="2OqwBi" id="tyIfzC1UWo" role="3cqZAk">
                <node concept="2OqwBi" id="tyIfzC1RVz" role="2Oq$k0">
                  <node concept="Xjq3P" id="tyIfzC1RG6" role="2Oq$k0" />
                  <node concept="2OwXpG" id="tyIfzC1SJz" role="2OqNvi">
                    <ref role="2Oxat5" node="tyIfzC1bTY" resolve="reporting" />
                  </node>
                </node>
                <node concept="2OwXpG" id="tyIfzC3jqg" role="2OqNvi">
                  <ref role="2Oxat5" node="tyIfzC1HJR" resolve="types" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="tyIfzC28Y9" role="3cqZAp" />
          </node>
          <node concept="3clFbS" id="tyIfzC28Yb" role="2GVbov">
            <node concept="3clFbF" id="tyIfzC29cj" role="3cqZAp">
              <node concept="2OqwBi" id="tyIfzC29ck" role="3clFbG">
                <node concept="10M0yZ" id="tyIfzC29cl" role="2Oq$k0">
                  <ref role="3cqZAo" to="zx3l:~ReactorLifecycle.Companion" resolve="Companion" />
                  <ref role="1PxDUh" to="zx3l:~ReactorLifecycle" resolve="ReactorLifecycle" />
                </node>
                <node concept="liA8E" id="tyIfzC29jp" role="2OqNvi">
                  <ref role="37wK5l" to="zx3l:~ReactorLifecycle$Companion.deinit()" resolve="deinit" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tyIfzC0ZRn" role="1B3o_S" />
      <node concept="3rvAFt" id="tyIfzC10e4" role="3clF45">
        <node concept="3uibUv" id="tyIfzC10ey" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3Tqbb2" id="tyIfzC10eM" role="3rvSg0" />
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzC3uC1" role="jymVt" />
    <node concept="3clFb_" id="tyIfzC3x3f" role="jymVt">
      <property role="TrG5h" value="produce" />
      <node concept="37vLTG" id="tyIfzC3xp3" role="3clF46">
        <property role="TrG5h" value="demo" />
        <node concept="3Tqbb2" id="tyIfzC3xp4" role="1tU5fm">
          <ref role="ehGHo" to="qulx:7lt0LtPHOlU" resolve="Root" />
        </node>
      </node>
      <node concept="3clFbS" id="tyIfzC3x3i" role="3clF47">
        <node concept="3cpWs6" id="tyIfzC3$oV" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzC3yak" role="3cqZAk">
            <node concept="37vLTw" id="tyIfzC3yal" role="2Oq$k0">
              <ref role="3cqZAo" node="tyIfzC1aUL" resolve="tplApp" />
            </node>
            <node concept="liA8E" id="tyIfzC3yam" role="2OqNvi">
              <ref role="37wK5l" to="hano:7kTeLbPojCz" resolve="produce" />
              <node concept="2ShNRf" id="tyIfzC3yan" role="37wK5m">
                <node concept="2HTt$P" id="tyIfzC3yao" role="2ShVmc">
                  <node concept="3Tqbb2" id="tyIfzC3yap" role="2HTBi0" />
                  <node concept="2OqwBi" id="tyIfzC3yaq" role="2HTEbv">
                    <node concept="37vLTw" id="tyIfzC3yar" role="2Oq$k0">
                      <ref role="3cqZAo" node="tyIfzC3xp3" resolve="demo" />
                    </node>
                    <node concept="2Rxl7S" id="tyIfzC3yas" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tyIfzC3v$U" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzC3yja" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzC3kyB" role="jymVt" />
    <node concept="3clFb_" id="tyIfzC3lMP" role="jymVt">
      <property role="TrG5h" value="getProgramGenInfo" />
      <node concept="3clFbS" id="tyIfzC3lMS" role="3clF47">
        <node concept="3clFbF" id="tyIfzC3mGf" role="3cqZAp">
          <node concept="2OqwBi" id="tyIfzC3nve" role="3clFbG">
            <node concept="37vLTw" id="tyIfzC3no3" role="2Oq$k0">
              <ref role="3cqZAo" node="tyIfzC1aUL" resolve="tplApp" />
            </node>
            <node concept="liA8E" id="tyIfzC3oht" role="2OqNvi">
              <ref role="37wK5l" to="hano:tyIfzBDlP8" resolve="getProgramGenInfo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="tyIfzC3ltU" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzC3lMr" role="3clF45">
        <ref role="3uigEE" to="xnrr:1H_6AUSU96G" resolve="ProgramGenInfoBuilder.ProgramGenInfo" />
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzC25Q7" role="jymVt" />
    <node concept="2tJIrI" id="tyIfzC1b05" role="jymVt" />
    <node concept="312cEu" id="tyIfzC1BlE" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="CollectTypes" />
      <node concept="312cEg" id="tyIfzC1HJR" role="jymVt">
        <property role="TrG5h" value="types" />
        <node concept="3rvAFt" id="tyIfzC1GoX" role="1tU5fm">
          <node concept="3uibUv" id="tyIfzC1Gu_" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3Tqbb2" id="tyIfzC1GyB" role="3rvSg0" />
        </node>
        <node concept="2ShNRf" id="tyIfzC1HUS" role="33vP2m">
          <node concept="3rGOSV" id="tyIfzC1IyR" role="2ShVmc">
            <node concept="3uibUv" id="tyIfzC1IMD" role="3rHrn6">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="3Tqbb2" id="tyIfzC1IVh" role="3rHtpV" />
          </node>
        </node>
        <node concept="3Tm1VV" id="tyIfzC3g7p" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="tyIfzC1DZo" role="jymVt" />
      <node concept="3clFb_" id="3GEs5q_3o$P" role="jymVt">
        <property role="TrG5h" value="assignType" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3GEs5q_3o$Q" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3Tqbb2" id="3GEs5q_3o$R" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3GEs5q_3o$S" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3Tqbb2" id="3GEs5q_3o$T" role="1tU5fm" />
        </node>
        <node concept="10P_77" id="3GEs5q_3o$U" role="3clF45" />
        <node concept="3Tm1VV" id="3GEs5q_3o$V" role="1B3o_S" />
        <node concept="3clFbS" id="3GEs5q_3o$W" role="3clF47">
          <node concept="3clFbF" id="3GEs5q_3o$X" role="3cqZAp">
            <node concept="37vLTI" id="3GEs5q_3o$Y" role="3clFbG">
              <node concept="37vLTw" id="3GEs5q_3o$Z" role="37vLTx">
                <ref role="3cqZAo" node="3GEs5q_3o$S" resolve="type" />
              </node>
              <node concept="3EllGN" id="3GEs5q_3o_0" role="37vLTJ">
                <node concept="2OqwBi" id="3GEs5q_3o_1" role="3ElVtu">
                  <node concept="2JrnkZ" id="3GEs5q_3o_2" role="2Oq$k0">
                    <node concept="37vLTw" id="3GEs5q_3o_3" role="2JrQYb">
                      <ref role="3cqZAo" node="3GEs5q_3o$Q" resolve="target" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3GEs5q_3o_4" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
                <node concept="37vLTw" id="tyIfzC1Ls3" role="3ElQJh">
                  <ref role="3cqZAo" node="tyIfzC1HJR" resolve="types" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GEs5q_3o_6" role="3cqZAp">
            <node concept="3clFbT" id="3GEs5q_3o_7" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3GEs5q_3o_8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3GEs5q_3o_9" role="jymVt" />
      <node concept="3clFb_" id="3GEs5q_3o_a" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="contextRepository" />
        <node concept="3uibUv" id="3GEs5q_3o_b" role="3clF45">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="3Tm1VV" id="3GEs5q_3o_c" role="1B3o_S" />
        <node concept="3clFbS" id="3GEs5q_3o_d" role="3clF47">
          <node concept="3clFbF" id="3GEs5q_3o_e" role="3cqZAp">
            <node concept="37vLTw" id="3GEs5q_3o_f" role="3clFbG">
              <ref role="3cqZAo" node="tyIfzC1aQx" resolve="repo" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3GEs5q_3o_g" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3GEs5q_3o_h" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="report" />
        <node concept="37vLTG" id="3GEs5q_3o_i" role="3clF46">
          <property role="TrG5h" value="kind" />
          <node concept="3uibUv" id="3GEs5q_3o_j" role="1tU5fm">
            <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
          </node>
        </node>
        <node concept="37vLTG" id="3GEs5q_3o_k" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="2sp9CU" id="3GEs5q_3o_l" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3GEs5q_3o_m" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="3GEs5q_3o_n" role="1tU5fm" />
        </node>
        <node concept="10P_77" id="3GEs5q_3o_o" role="3clF45" />
        <node concept="3Tm1VV" id="3GEs5q_3o_p" role="1B3o_S" />
        <node concept="3clFbS" id="3GEs5q_3o_q" role="3clF47">
          <node concept="3clFbF" id="3GEs5q_3o_r" role="3cqZAp">
            <node concept="3clFbT" id="3GEs5q_3o_s" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3GEs5q_3o_t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="tyIfzC1BIe" role="jymVt" />
      <node concept="3Tm6S6" id="tyIfzC1BhD" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzC1BGS" role="EKbjA">
        <ref role="3uigEE" to="9x2e:oI9YrIZeS" resolve="Reporting" />
      </node>
    </node>
    <node concept="2tJIrI" id="tyIfzC1AUa" role="jymVt" />
    <node concept="312cEg" id="tyIfzC1bTY" role="jymVt">
      <property role="TrG5h" value="reporting" />
      <node concept="3Tm6S6" id="tyIfzC1bTZ" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzC1Uth" role="1tU5fm">
        <ref role="3uigEE" node="tyIfzC1BlE" resolve="IncrementalLaunchHelper.CollectTypes" />
      </node>
      <node concept="2ShNRf" id="3GEs5q_3o$L" role="33vP2m">
        <node concept="HV5vD" id="tyIfzC1Nq7" role="2ShVmc">
          <ref role="HV5vE" node="tyIfzC1BlE" resolve="IncrementalLaunchHelper.CollectTypes" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="tyIfzC1aQx" role="jymVt">
      <property role="TrG5h" value="repo" />
      <node concept="3uibUv" id="tyIfzC1aP6" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
      <node concept="3Tm6S6" id="tyIfzC1aRr" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="tyIfzC1aUL" role="jymVt">
      <property role="TrG5h" value="tplApp" />
      <node concept="3Tm6S6" id="tyIfzC1aT5" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzC1aUB" role="1tU5fm">
        <ref role="3uigEE" to="hano:3GlpCDSxTG7" resolve="ProgramProducer" />
      </node>
    </node>
    <node concept="312cEg" id="tyIfzC1aZ5" role="jymVt">
      <property role="TrG5h" value="evaluator" />
      <node concept="3Tm6S6" id="tyIfzC1aXj" role="1B3o_S" />
      <node concept="3uibUv" id="tyIfzC1aYV" role="1tU5fm">
        <ref role="3uigEE" to="hano:41ox5Vnk76a" resolve="ProgramEvaluator" />
      </node>
    </node>
    <node concept="3Tm1VV" id="tyIfzC0ZNk" role="1B3o_S" />
  </node>
</model>

