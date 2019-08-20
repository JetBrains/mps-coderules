<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.coderules.typechecking.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="p5xd" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking.internal(MPS.Core/)" />
    <import index="ev0w" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking.backend(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="h83j" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem(MPS.Core/)" />
    <import index="7jhi" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.pattern(MPS.Core/)" />
    <import index="1ka" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking(MPS.Core/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="c6va" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.languageScope(MPS.Core/)" />
    <import index="u46i" ref="r:c2760840-3210-4ad4-9e64-a2dfd53620e1(jetbrains.mps.lang.typechecking.aspect)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="1yqb" ref="r:bd76f794-cfad-45dd-9c1c-e3203d1c5c7a(jetbrains.mps.coderules.service)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="31yc" ref="r:0c18ff61-1cb9-4ff0-a899-c949ad03f97c(jetbrains.mps.coderules.plugin)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="1210179134063" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration" flags="ng" index="34j2dQ">
        <child id="1210179829398" name="persistenPropertyDeclaration" index="34lFYf" />
        <child id="1210676907584" name="afterReadBlock" index="3xXSXp" />
        <child id="1210676918600" name="beforeWriteBlock" index="3xXVxh" />
        <child id="1210684426855" name="preferencePage" index="3yq$HY" />
      </concept>
      <concept id="1210179190070" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyDeclaration" flags="ng" index="34jfKJ" />
      <concept id="1210180874794" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyReference" flags="nn" index="34pFcN" />
      <concept id="1210184105060" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentType" flags="in" index="34_ZPX">
        <reference id="1210184138184" name="componentDeclaration" index="34A7Nh" />
      </concept>
      <concept id="1210676672555" name="jetbrains.mps.lang.plugin.structure.OnBeforeWriteBlock" flags="in" index="3xWZ$M" />
      <concept id="1210676879526" name="jetbrains.mps.lang.plugin.structure.OnAfterReadBlock" flags="in" index="3xXM6Z" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <child id="1210686845551" name="component" index="3yzNdQ" />
        <child id="1210686936988" name="resetBlock" index="3y$9q5" />
        <child id="1210686956582" name="commitBlock" index="3y$ekZ" />
        <child id="1210763647050" name="isModifiedBlock" index="3B8L_j" />
      </concept>
      <concept id="1210686882550" name="jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock" flags="in" index="3yzWfJ" />
      <concept id="1210686969356" name="jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock" flags="in" index="3y$hsl" />
      <concept id="1210690798207" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_PreferencePage_component" flags="nn" index="3yMSdA" />
      <concept id="1210763550007" name="jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock" flags="in" index="3B8pKI" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="681855071694758168" name="jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation" flags="nn" index="LR4Ub">
        <reference id="681855071694758169" name="componentDeclaration" index="LR4Ua" />
      </concept>
      <concept id="3418954410726344423" name="jetbrains.mps.lang.plugin.standalone.structure.PlatformAccessExpression" flags="ng" index="XUXob" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="2zU3cYqx4HT" />
  <node concept="2uRRBy" id="443LGHBoF4R">
    <property role="TrG5h" value="TypesIndexCacheLifecycle" />
    <property role="3GE5qa" value="lifecycle" />
    <node concept="2uRRBT" id="443LGHBoF4U" role="2uRRB$">
      <node concept="3clFbS" id="443LGHBoF4V" role="2VODD2">
        <node concept="3clFbF" id="443LGHBoGH8" role="3cqZAp">
          <node concept="2YIFZM" id="6$gg4k_t5t4" role="3clFbG">
            <ref role="37wK5l" to="tj24:4Z$O9mrQIG1" resolve="get" />
            <ref role="1Pybhc" to="tj24:4Z$O9mrQIzY" resolve="TypesIndexCache" />
            <node concept="2OqwBi" id="443LGHBoGJY" role="37wK5m">
              <node concept="1KvdUw" id="443LGHBoGJZ" role="2Oq$k0" />
              <node concept="liA8E" id="443LGHBoGK0" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="443LGHBoGMS" role="2uRRB_">
      <node concept="3clFbS" id="443LGHBoGMT" role="2VODD2">
        <node concept="3clFbF" id="443LGHBoGNh" role="3cqZAp">
          <node concept="2YIFZM" id="6$gg4k_t5t6" role="3clFbG">
            <ref role="37wK5l" to="tj24:14$_tTxAmT8" resolve="dispose" />
            <ref role="1Pybhc" to="tj24:4Z$O9mrQIzY" resolve="TypesIndexCache" />
            <node concept="2OqwBi" id="443LGHBoGQ$" role="37wK5m">
              <node concept="1KvdUw" id="443LGHBoGQ_" role="2Oq$k0" />
              <node concept="liA8E" id="443LGHBoGQA" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7Tj_ODDR37X">
    <property role="TrG5h" value="CoderulesTypecheckingProvider" />
    <node concept="2tJIrI" id="3LFq2p98DGJ" role="jymVt" />
    <node concept="Wx3nA" id="3KN3A4w8XqJ" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3uibUv" id="3KN3A4w8WSs" role="1tU5fm">
        <ref role="3uigEE" node="7Tj_ODDR37X" resolve="CoderulesTypecheckingProvider" />
      </node>
      <node concept="3Tm6S6" id="3KN3A4w8W3C" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KN3A4w8XRE" role="jymVt" />
    <node concept="2YIFZL" id="3KN3A4w92b9" role="jymVt">
      <property role="TrG5h" value="setEnabled" />
      <node concept="37vLTG" id="3KN3A4w92DH" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="3KN3A4w92R8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3KN3A4w8YwC" role="3clF47">
        <node concept="3cpWs8" id="6AP7iI4IACM" role="3cqZAp">
          <node concept="3cpWsn" id="6AP7iI4IACN" role="3cpWs9">
            <property role="TrG5h" value="prevState" />
            <node concept="10P_77" id="6AP7iI4Ixp1" role="1tU5fm" />
            <node concept="2OqwBi" id="6AP7iI4IACO" role="33vP2m">
              <node concept="37vLTw" id="6AP7iI4IACP" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4w8XqJ" resolve="INSTANCE" />
              </node>
              <node concept="2OwXpG" id="6AP7iI4IACQ" role="2OqNvi">
                <ref role="2Oxat5" node="3KN3A4w94mo" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KN3A4w95G8" role="3cqZAp">
          <node concept="37vLTI" id="3KN3A4w96JL" role="3clFbG">
            <node concept="37vLTw" id="3KN3A4w977J" role="37vLTx">
              <ref role="3cqZAo" node="3KN3A4w92DH" resolve="enabled" />
            </node>
            <node concept="2OqwBi" id="6AP7iI4IAOV" role="37vLTJ">
              <node concept="37vLTw" id="6AP7iI4IAP4" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4w8XqJ" resolve="INSTANCE" />
              </node>
              <node concept="2OwXpG" id="6AP7iI4IAOW" role="2OqNvi">
                <ref role="2Oxat5" node="3KN3A4w94mo" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6AP7iI4IBw0" role="3cqZAp">
          <node concept="37vLTw" id="6AP7iI4IBvY" role="3clFbG">
            <ref role="3cqZAo" node="6AP7iI4IACN" resolve="prevState" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6AP7iI4I$Xv" role="3clF45" />
      <node concept="3Tm1VV" id="3KN3A4w8YwB" role="1B3o_S" />
      <node concept="P$JXv" id="3KN3A4w936p" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4w936q" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4w936r" role="1dT_Ay">
            <property role="1dT_AB" value="To be used from tests only. " />
          </node>
        </node>
        <node concept="TZ5HA" id="6AP7iI4I_5y" role="TZ5H$">
          <node concept="1dT_AC" id="6AP7iI4I_5z" role="1dT_Ay">
            <property role="1dT_AB" value="Returns the previous state." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4w8VuU" role="jymVt" />
    <node concept="312cEg" id="3KN3A4w94mo" role="jymVt">
      <property role="TrG5h" value="enabled" />
      <node concept="3Tm6S6" id="3KN3A4w94mp" role="1B3o_S" />
      <node concept="10P_77" id="3KN3A4w94U7" role="1tU5fm" />
      <node concept="2YIFZM" id="6JVMsxq9lWE" role="33vP2m">
        <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
        <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
        <node concept="2YIFZM" id="6JVMsxq9nQs" role="37wK5m">
          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
          <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
          <node concept="Xl_RD" id="6JVMsxq9o9n" role="37wK5m">
            <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
          </node>
          <node concept="Xl_RD" id="6JVMsxq9_wH" role="37wK5m">
            <property role="Xl_RC" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4w93ML" role="jymVt" />
    <node concept="3clFbW" id="3LFq2p98DNK" role="jymVt">
      <node concept="3cqZAl" id="3LFq2p98DNM" role="3clF45" />
      <node concept="3Tm1VV" id="3LFq2p98DNN" role="1B3o_S" />
      <node concept="3clFbS" id="3LFq2p98DNO" role="3clF47">
        <node concept="2xdQw9" id="1oUwjADmQvh" role="3cqZAp">
          <property role="2xdLsb" value="h1akgim/info" />
          <node concept="3cpWs3" id="6JVMsxqa3ul" role="9lYJi">
            <node concept="Xl_RD" id="6JVMsxqa44E" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="6JVMsxq9SPk" role="3uHU7B">
              <node concept="Xl_RD" id="1oUwjADmQvj" role="3uHU7B">
                <property role="Xl_RC" value="CoderulesTypecheckingProvider INITIALIZED [enabled=" />
              </node>
              <node concept="37vLTw" id="6JVMsxq9SWz" role="3uHU7w">
                <ref role="3cqZAo" node="3KN3A4w94mo" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KN3A4w97kn" role="3cqZAp">
          <node concept="37vLTI" id="3KN3A4w97Fj" role="3clFbG">
            <node concept="Xjq3P" id="3KN3A4w97MG" role="37vLTx" />
            <node concept="37vLTw" id="3KN3A4w97kl" role="37vLTJ">
              <ref role="3cqZAo" node="3KN3A4w8XqJ" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4w99CG" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4w9alp" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="3KN3A4w9alr" role="3clF45" />
      <node concept="3Tm1VV" id="3KN3A4w9als" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4w9alt" role="3clF47">
        <node concept="3clFbF" id="3KN3A4w9bXY" role="3cqZAp">
          <node concept="37vLTI" id="3KN3A4w9cl7" role="3clFbG">
            <node concept="10Nm6u" id="3KN3A4w9csw" role="37vLTx" />
            <node concept="37vLTw" id="3KN3A4w9bXX" role="37vLTJ">
              <ref role="3cqZAo" node="3KN3A4w8XqJ" resolve="INSTANCE" />
            </node>
          </node>
        </node>
        <node concept="2xdQw9" id="6JVMsxqaU2_" role="3cqZAp">
          <property role="2xdLsb" value="h1akgim/info" />
          <node concept="Xl_RD" id="6JVMsxqaU2D" role="9lYJi">
            <property role="Xl_RC" value="CoderulesTypecheckingProvider SHUTDOWN" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5BwsbZJDRw1" role="jymVt" />
    <node concept="3clFb_" id="5BwsbZJDRzC" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3Tm1VV" id="5BwsbZJDRzD" role="1B3o_S" />
      <node concept="10P_77" id="5BwsbZJDRzF" role="3clF45" />
      <node concept="37vLTG" id="5BwsbZJDRzG" role="3clF46">
        <property role="TrG5h" value="src" />
        <node concept="3uibUv" id="5BwsbZJDRzH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5BwsbZJDRzI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5BwsbZJDRzJ" role="3clF46">
        <property role="TrG5h" value="trg" />
        <node concept="3uibUv" id="5BwsbZJDRzK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5BwsbZJDRzL" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5BwsbZJDRzM" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="5BwsbZJDRzN" role="3clF47">
        <node concept="3clFbJ" id="5DUvKnrxqKo" role="3cqZAp">
          <node concept="3clFbS" id="5DUvKnrxqKq" role="3clFbx">
            <node concept="3cpWs6" id="5DUvKnrxsuo" role="3cqZAp">
              <node concept="3clFbT" id="5DUvKnrxsEA" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="3KN3A4w9ekB" role="3clFbw">
            <node concept="3fqX7Q" id="6AP7iI4IxSj" role="3uHU7B">
              <node concept="37vLTw" id="6AP7iI4IxSl" role="3fr31v">
                <ref role="3cqZAo" node="3KN3A4w94mo" resolve="enabled" />
              </node>
            </node>
            <node concept="3fqX7Q" id="6AP7iI4ICiP" role="3uHU7w">
              <node concept="1rXfSq" id="6AP7iI4ICiR" role="3fr31v">
                <ref role="37wK5l" node="5DUvKnrxdS1" resolve="checkEnabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ceN1hCDrNK" role="3cqZAp" />
        <node concept="3clFbJ" id="1oUwjADpiYn" role="3cqZAp">
          <node concept="3clFbS" id="1oUwjADpiYp" role="3clFbx">
            <node concept="3cpWs6" id="1oUwjADpkhz" role="3cqZAp">
              <node concept="3clFbT" id="1oUwjADpklz" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="6u4W$ZKpM_I" role="3clFbw">
            <node concept="3clFbC" id="1oUwjADpk3O" role="3uHU7B">
              <node concept="2OqwBi" id="1oUwjADpjTB" role="3uHU7B">
                <node concept="37vLTw" id="1oUwjADpjTC" role="2Oq$k0">
                  <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
                </node>
                <node concept="liA8E" id="1oUwjADpjTD" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
              </node>
              <node concept="10Nm6u" id="1oUwjADpk9M" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="6u4W$ZKpMXf" role="3uHU7w">
              <node concept="10Nm6u" id="6u4W$ZKpN1B" role="3uHU7w" />
              <node concept="2OqwBi" id="6u4W$ZKpMPs" role="3uHU7B">
                <node concept="2OqwBi" id="6u4W$ZKpNk7" role="2Oq$k0">
                  <node concept="37vLTw" id="6u4W$ZKpN5k" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
                  </node>
                  <node concept="liA8E" id="6u4W$ZKpNx6" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="liA8E" id="6u4W$ZKpMPv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uB9WAZ6Tj0" role="3cqZAp">
          <node concept="3cpWsn" id="uB9WAZ6Tj1" role="3cpWs9">
            <property role="TrG5h" value="srcModel" />
            <node concept="3uibUv" id="uB9WAZ6Tif" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="uB9WAZ6Tj2" role="33vP2m">
              <node concept="37vLTw" id="uB9WAZ6Tj3" role="2Oq$k0">
                <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
              </node>
              <node concept="liA8E" id="uB9WAZ6Tj4" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ceN1hCDJOq" role="3cqZAp" />
        <node concept="3cpWs8" id="2ceN1hCDJ1x" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDJ1y" role="3cpWs9">
            <property role="TrG5h" value="trgModel" />
            <node concept="3uibUv" id="2ceN1hCDJ1z" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="10Nm6u" id="2ceN1hCDOTG" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="2ceN1hCDPRO" role="3cqZAp">
          <node concept="3clFbS" id="2ceN1hCDPRQ" role="3clFbx">
            <node concept="3clFbF" id="2ceN1hCDNB8" role="3cqZAp">
              <node concept="37vLTI" id="2ceN1hCDNBa" role="3clFbG">
                <node concept="2OqwBi" id="2ceN1hCDJ1$" role="37vLTx">
                  <node concept="37vLTw" id="2ceN1hCDNsg" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                  </node>
                  <node concept="liA8E" id="2ceN1hCDJ1A" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="37vLTw" id="2ceN1hCDNBe" role="37vLTJ">
                  <ref role="3cqZAo" node="2ceN1hCDJ1y" resolve="trgModel" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2ceN1hCDUg2" role="3cqZAp">
              <node concept="3clFbS" id="2ceN1hCDUg4" role="3clFbx">
                <node concept="3cpWs6" id="2ceN1hCDXyt" role="3cqZAp">
                  <node concept="3clFbT" id="2ceN1hCDXMB" role="3cqZAk" />
                </node>
              </node>
              <node concept="3y3z36" id="2ceN1hCDWvK" role="3clFbw">
                <node concept="2OqwBi" id="2ceN1hCDX8z" role="3uHU7w">
                  <node concept="37vLTw" id="2ceN1hCDWNH" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ceN1hCDJ1y" resolve="trgModel" />
                  </node>
                  <node concept="liA8E" id="2ceN1hCDXla" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2ceN1hCDWdn" role="3uHU7B">
                  <node concept="37vLTw" id="2ceN1hCDVRi" role="2Oq$k0">
                    <ref role="3cqZAo" node="uB9WAZ6Tj1" resolve="srcModel" />
                  </node>
                  <node concept="liA8E" id="2ceN1hCDWnv" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2ceN1hCDSo5" role="3clFbw">
            <node concept="3y3z36" id="2ceN1hCDTHR" role="3uHU7w">
              <node concept="10Nm6u" id="2ceN1hCDU2U" role="3uHU7w" />
              <node concept="2OqwBi" id="2ceN1hCDTjw" role="3uHU7B">
                <node concept="2OqwBi" id="2ceN1hCDSSr" role="2Oq$k0">
                  <node concept="37vLTw" id="2ceN1hCDSIU" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                  </node>
                  <node concept="liA8E" id="2ceN1hCDTbN" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="liA8E" id="2ceN1hCDT_y" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="2ceN1hCEooY" role="3uHU7B">
              <node concept="3y3z36" id="2ceN1hCEowU" role="3uHU7B">
                <node concept="10Nm6u" id="2ceN1hCEoCC" role="3uHU7w" />
                <node concept="37vLTw" id="2ceN1hCEowO" role="3uHU7B">
                  <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                </node>
              </node>
              <node concept="3y3z36" id="2ceN1hCDRQF" role="3uHU7w">
                <node concept="2OqwBi" id="2ceN1hCDRnO" role="3uHU7B">
                  <node concept="37vLTw" id="2ceN1hCDQS3" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                  </node>
                  <node concept="liA8E" id="2ceN1hCDRJx" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2ceN1hCDSfe" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ceN1hCDHRW" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4uZFCY" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uZFCZ" role="3cpWs9">
            <property role="TrG5h" value="ad" />
            <node concept="3uibUv" id="3KN3A4uZFjJ" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:NKt6ynom3d" resolve="AspectDiscoverable" />
              <node concept="3uibUv" id="3KN3A4uZFjM" role="11_B2D">
                <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
            <node concept="2YIFZM" id="3KN3A4uZFD0" role="33vP2m">
              <ref role="37wK5l" to="fqlx:78H58oefoaA" resolve="discoverable" />
              <ref role="1Pybhc" to="fqlx:NKt6yp1COZ" resolve="DefaultCoderulesAspect" />
              <node concept="3VsKOn" id="3KN3A4uZFD1" role="37wK5m">
                <ref role="3VsUkX" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4v2PX6" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4v2PX7" role="3cpWs9">
            <property role="TrG5h" value="sd" />
            <node concept="3uibUv" id="3KN3A4v2PVb" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:3KN3A4uUig2" resolve="SidekickDetectable" />
            </node>
            <node concept="2YIFZM" id="3KN3A4v2PX8" role="33vP2m">
              <ref role="37wK5l" to="fqlx:3KN3A4uZLWT" resolve="sidekickDetectable" />
              <ref role="1Pybhc" to="fqlx:NKt6yp1COZ" resolve="DefaultCoderulesAspect" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ceN1hCDAA8" role="3cqZAp" />
        <node concept="3cpWs8" id="2ceN1hCDCZX" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDCZY" role="3cpWs9">
            <property role="TrG5h" value="srcAspects" />
            <node concept="_YKpA" id="2ceN1hCDCvP" role="1tU5fm">
              <node concept="3uibUv" id="2ceN1hCDCvW" role="_ZDj9">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="2ceN1hCDCvX" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="2ceN1hCDCZZ" role="33vP2m">
              <ref role="37wK5l" to="fqlx:3KN3A4uV0IR" resolve="discoverAspects" />
              <ref role="1Pybhc" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
              <node concept="1rXfSq" id="2ceN1hCDFQt" role="37wK5m">
                <ref role="37wK5l" node="2ceN1hCDzto" resolve="directlyUsedLanguages" />
                <node concept="37vLTw" id="2ceN1hCDFQu" role="37wK5m">
                  <ref role="3cqZAo" node="uB9WAZ6Tj1" resolve="srcModel" />
                </node>
              </node>
              <node concept="37vLTw" id="2ceN1hCDD01" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4v2PX7" resolve="sd" />
              </node>
              <node concept="37vLTw" id="2ceN1hCDD02" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="ad" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ceN1hCE33i" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCE33j" role="3cpWs9">
            <property role="TrG5h" value="trgAspects" />
            <node concept="_YKpA" id="2ceN1hCE33k" role="1tU5fm">
              <node concept="3uibUv" id="2ceN1hCE33l" role="_ZDj9">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="2ceN1hCE33m" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="2ceN1hCE655" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="2ceN1hCE7dS" role="3cqZAp">
          <node concept="3clFbS" id="2ceN1hCE7dU" role="3clFbx">
            <node concept="3clFbF" id="2ceN1hCE4yF" role="3cqZAp">
              <node concept="37vLTI" id="2ceN1hCE4yH" role="3clFbG">
                <node concept="2YIFZM" id="2ceN1hCE33n" role="37vLTx">
                  <ref role="37wK5l" to="fqlx:3KN3A4uV0IR" resolve="discoverAspects" />
                  <ref role="1Pybhc" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                  <node concept="1rXfSq" id="2ceN1hCE33o" role="37wK5m">
                    <ref role="37wK5l" node="2ceN1hCDzto" resolve="directlyUsedLanguages" />
                    <node concept="37vLTw" id="2ceN1hCEb9s" role="37wK5m">
                      <ref role="3cqZAo" node="2ceN1hCDJ1y" resolve="trgModel" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2ceN1hCE33q" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4v2PX7" resolve="sd" />
                  </node>
                  <node concept="37vLTw" id="2ceN1hCE33r" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="ad" />
                  </node>
                </node>
                <node concept="37vLTw" id="2ceN1hCE4yL" role="37vLTJ">
                  <ref role="3cqZAo" node="2ceN1hCE33j" resolve="trgAspects" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2ceN1hCE9bq" role="3clFbw">
            <node concept="10Nm6u" id="2ceN1hCE9zs" role="3uHU7w" />
            <node concept="37vLTw" id="2ceN1hCE8Kg" role="3uHU7B">
              <ref role="3cqZAo" node="2ceN1hCDJ1y" resolve="trgModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ceN1hCDE0Z" role="3cqZAp" />
        <node concept="3clFbF" id="3KN3A4v2TZi" role="3cqZAp">
          <node concept="1Wc70l" id="2ceN1hCE1KX" role="3clFbG">
            <node concept="1eOMI4" id="2ceN1hCE28H" role="3uHU7w">
              <node concept="22lmx$" id="2ceN1hCE2Zw" role="1eOMHV">
                <node concept="2OqwBi" id="2ceN1hCEcjD" role="3uHU7w">
                  <node concept="37vLTw" id="2ceN1hCEbwb" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ceN1hCE33j" resolve="trgAspects" />
                  </node>
                  <node concept="3GX2aA" id="2ceN1hCEdoW" role="2OqNvi" />
                </node>
                <node concept="3clFbC" id="2ceN1hCE2Fs" role="3uHU7B">
                  <node concept="37vLTw" id="2ceN1hCE2sE" role="3uHU7B">
                    <ref role="3cqZAo" node="2ceN1hCDJ1y" resolve="trgModel" />
                  </node>
                  <node concept="10Nm6u" id="2ceN1hCE2RB" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3KN3A4v2V5V" role="3uHU7B">
              <node concept="37vLTw" id="2ceN1hCDD03" role="2Oq$k0">
                <ref role="3cqZAo" node="2ceN1hCDCZY" resolve="srcAspects" />
              </node>
              <node concept="3GX2aA" id="3KN3A4v2W6t" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5BwsbZJDRzO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ceN1hCD$TM" role="jymVt" />
    <node concept="3clFb_" id="2ceN1hCDzto" role="jymVt">
      <property role="TrG5h" value="directlyUsedLanguages" />
      <node concept="3Tm6S6" id="2ceN1hCDztp" role="1B3o_S" />
      <node concept="_YKpA" id="2ceN1hCDztq" role="3clF45">
        <node concept="3uibUv" id="2ceN1hCDztr" role="_ZDj9">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="37vLTG" id="2ceN1hCDztg" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2ceN1hCDzth" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="2ceN1hCDzsv" role="3clF47">
        <node concept="3cpWs8" id="2ceN1hCDzsy" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDzsz" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="2ceN1hCDzs$" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="2ceN1hCDzs_" role="33vP2m">
              <node concept="37vLTw" id="2ceN1hCDzti" role="2Oq$k0">
                <ref role="3cqZAo" node="2ceN1hCDztg" resolve="model" />
              </node>
              <node concept="liA8E" id="2ceN1hCDzsB" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ceN1hCDzsC" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDzsD" role="3cpWs9">
            <property role="TrG5h" value="langRegistry" />
            <node concept="3uibUv" id="2ceN1hCDzsE" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
            </node>
            <node concept="2YIFZM" id="2ceN1hCDzsF" role="33vP2m">
              <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
              <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
              <node concept="37vLTw" id="2ceN1hCDzsG" role="37wK5m">
                <ref role="3cqZAo" node="2ceN1hCDzsz" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ceN1hCDzsO" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDzsP" role="3cpWs9">
            <property role="TrG5h" value="usedLanguages" />
            <node concept="3vKaQO" id="2ceN1hCDzsQ" role="1tU5fm">
              <node concept="3uibUv" id="2ceN1hCDzsR" role="3O5elw">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="2ceN1hCDzsS" role="33vP2m">
              <node concept="2ShNRf" id="2ceN1hCD_L_" role="2Oq$k0">
                <node concept="1pGfFk" id="2ceN1hCD_LA" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelDependencyResolver" />
                  <node concept="37vLTw" id="2ceN1hCD_LB" role="37wK5m">
                    <ref role="3cqZAo" node="2ceN1hCDzsD" resolve="langRegistry" />
                  </node>
                  <node concept="37vLTw" id="2ceN1hCD_LC" role="37wK5m">
                    <ref role="3cqZAo" node="2ceN1hCDzsz" resolve="repository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2ceN1hCDzsU" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                <node concept="37vLTw" id="2ceN1hCDztj" role="37wK5m">
                  <ref role="3cqZAo" node="2ceN1hCDztg" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2ceN1hCDzte" role="3cqZAp">
          <node concept="2OqwBi" id="2ceN1hCDzt0" role="3cqZAk">
            <node concept="2OqwBi" id="2ceN1hCDzt1" role="2Oq$k0">
              <node concept="37vLTw" id="2ceN1hCDzt2" role="2Oq$k0">
                <ref role="3cqZAo" node="2ceN1hCDzsP" resolve="usedLanguages" />
              </node>
              <node concept="3$u5V9" id="2ceN1hCDzt3" role="2OqNvi">
                <node concept="1bVj0M" id="2ceN1hCDzt4" role="23t8la">
                  <node concept="3clFbS" id="2ceN1hCDzt5" role="1bW5cS">
                    <node concept="3clFbF" id="2ceN1hCDzt6" role="3cqZAp">
                      <node concept="2OqwBi" id="2ceN1hCDzt7" role="3clFbG">
                        <node concept="37vLTw" id="2ceN1hCDzt8" role="2Oq$k0">
                          <ref role="3cqZAo" node="2ceN1hCDzsD" resolve="langRegistry" />
                        </node>
                        <node concept="liA8E" id="2ceN1hCDzt9" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                          <node concept="37vLTw" id="2ceN1hCDzta" role="37wK5m">
                            <ref role="3cqZAo" node="2ceN1hCDztb" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2ceN1hCDztb" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2ceN1hCDztc" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2ceN1hCDztd" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5DUvKnrxdc4" role="jymVt" />
    <node concept="3clFb_" id="5DUvKnrxdS1" role="jymVt">
      <property role="TrG5h" value="checkEnabled" />
      <node concept="10P_77" id="5DUvKnrxeQJ" role="3clF45" />
      <node concept="3Tm6S6" id="5DUvKnrxekO" role="1B3o_S" />
      <node concept="3clFbS" id="5DUvKnrxdS5" role="3clF47">
        <node concept="3SKdUt" id="5DUvKnrxgEv" role="3cqZAp">
          <node concept="1PaTwC" id="5DUvKnrxgEw" role="3ndbpf">
            <node concept="3oM_SD" id="5DUvKnrxgEx" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEy" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEz" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgE$" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgE_" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEA" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEB" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEC" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgED" role="1PaTwD">
              <property role="3oM_SC" value="stable" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEE" role="1PaTwD">
              <property role="3oM_SC" value="enough" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5DUvKnrxgEF" role="3cqZAp">
          <node concept="1PaTwC" id="5DUvKnrxgEG" role="3ndbpf">
            <node concept="3oM_SD" id="5DUvKnrxgEH" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEI" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEK" role="1PaTwD">
              <property role="3oM_SC" value="feature" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEM" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5DUvKnrxgEN" role="1PaTwD">
              <property role="3oM_SC" value="disabled" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4pwDyRAQPxJ" role="3cqZAp">
          <node concept="3cpWsn" id="4pwDyRAQPxK" role="3cpWs9">
            <property role="TrG5h" value="prefComponent" />
            <node concept="34_ZPX" id="4pwDyRAQPhN" role="1tU5fm">
              <ref role="34A7Nh" node="uB9WAZagv8" resolve="Typechecking" />
            </node>
            <node concept="1rXfSq" id="14IknWHoILo" role="33vP2m">
              <ref role="37wK5l" node="14IknWHozE8" resolve="getPreferenceComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4pwDyRAQQ_d" role="3cqZAp">
          <node concept="3K4zz7" id="4pwDyRAQU94" role="3cqZAk">
            <node concept="2OqwBi" id="4pwDyRAQVo6" role="3K4E3e">
              <node concept="37vLTw" id="4pwDyRAQUYS" role="2Oq$k0">
                <ref role="3cqZAo" node="4pwDyRAQPxK" resolve="prefComponent" />
              </node>
              <node concept="34pFcN" id="4pwDyRAQWjA" role="2OqNvi">
                <ref role="2WH_rO" node="14pL6xi901F" resolve="typecheckingEnabled" />
              </node>
            </node>
            <node concept="3clFbT" id="4pwDyRAQWvW" role="3K4GZi" />
            <node concept="3y3z36" id="4pwDyRAQSym" role="3K4Cdx">
              <node concept="10Nm6u" id="4pwDyRAQTcW" role="3uHU7w" />
              <node concept="37vLTw" id="4pwDyRAQROp" role="3uHU7B">
                <ref role="3cqZAo" node="4pwDyRAQPxK" resolve="prefComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6AP7iI4IC$p" role="lGtFl">
        <node concept="TZ5HA" id="6AP7iI4IC$q" role="TZ5H$">
          <node concept="1dT_AC" id="6AP7iI4IC$r" role="1dT_Ay">
            <property role="1dT_AB" value="Check if the plugin was explicitly enabled" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MaHsBDepPZ" role="jymVt" />
    <node concept="3clFb_" id="4MaHsBDes9w" role="jymVt">
      <property role="TrG5h" value="discoverMPSProject" />
      <node concept="3uibUv" id="4MaHsBDesQv" role="3clF45">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="3Tm6S6" id="4MaHsBDes9y" role="1B3o_S" />
      <node concept="3clFbS" id="4MaHsBDes9$" role="3clF47">
        <node concept="3SKdUt" id="4MaHsBDewQT" role="3cqZAp">
          <node concept="1PaTwC" id="4MaHsBDexlu" role="3ndbpf">
            <node concept="3oM_SD" id="4MaHsBDewQW" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDewTg" role="1PaTwD">
              <property role="3oM_SC" value="typechecking" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDewWw" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDewWZ" role="1PaTwD">
              <property role="3oM_SC" value="project-independent," />
            </node>
            <node concept="3oM_SD" id="4MaHsBDex62" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDex6F" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDex7d" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDex8A" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexbY" role="1PaTwD">
              <property role="3oM_SC" value="hack" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexcg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexdO" role="1PaTwD">
              <property role="3oM_SC" value="provide" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexpe" role="1PaTwD">
              <property role="3oM_SC" value="traceability" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MaHsBDexBd" role="3cqZAp">
          <node concept="1PaTwC" id="4MaHsBDexBe" role="3ndbpf">
            <node concept="3oM_SD" id="4MaHsBDexBg" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexDp" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexFN" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexIe" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexJG" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexKl" role="1PaTwD">
              <property role="3oM_SC" value="SNode" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexMN" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexMV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4MaHsBDexOt" role="1PaTwD">
              <property role="3oM_SC" value="future" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4MaHsBDexUO" role="3cqZAp">
          <node concept="3cpWsn" id="4MaHsBDexUP" role="3cpWs9">
            <property role="TrG5h" value="openedProjects" />
            <node concept="3uibUv" id="4MaHsBDexUQ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="4MaHsBDexUR" role="11_B2D">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
            </node>
            <node concept="2EnYce" id="4MaHsBDexUS" role="33vP2m">
              <node concept="2YIFZM" id="4MaHsBDexUT" role="2Oq$k0">
                <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="4MaHsBDexUU" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4MaHsBDeydl" role="3cqZAp">
          <node concept="3clFbS" id="4MaHsBDeydn" role="3clFbx">
            <node concept="3cpWs6" id="4MaHsBDez7F" role="3cqZAp">
              <node concept="10QFUN" id="4MaHsBDe$bF" role="3cqZAk">
                <node concept="3uibUv" id="4MaHsBDe$bG" role="10QFUM">
                  <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                </node>
                <node concept="2OqwBi" id="4MaHsBDe$bH" role="10QFUP">
                  <node concept="37vLTw" id="4MaHsBDe$bI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MaHsBDexUP" resolve="openedProjects" />
                  </node>
                  <node concept="liA8E" id="4MaHsBDe$bJ" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="4MaHsBDe$bK" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MaHsBDeGNp" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="4MaHsBDeyf$" role="3clFbw">
            <node concept="1Wc70l" id="4MaHsBDeyf_" role="3uHU7B">
              <node concept="3y3z36" id="4MaHsBDeyfA" role="3uHU7B">
                <node concept="10Nm6u" id="4MaHsBDeyfB" role="3uHU7w" />
                <node concept="37vLTw" id="4MaHsBDeyfC" role="3uHU7B">
                  <ref role="3cqZAo" node="4MaHsBDexUP" resolve="openedProjects" />
                </node>
              </node>
              <node concept="3clFbC" id="4MaHsBDeyfD" role="3uHU7w">
                <node concept="2OqwBi" id="4MaHsBDeyfE" role="3uHU7B">
                  <node concept="37vLTw" id="4MaHsBDeyfF" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MaHsBDexUP" resolve="openedProjects" />
                  </node>
                  <node concept="liA8E" id="4MaHsBDeyfG" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
                <node concept="3cmrfG" id="4MaHsBDeyfH" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="4MaHsBDeyfI" role="3uHU7w">
              <node concept="3uibUv" id="4MaHsBDeyfJ" role="2ZW6by">
                <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
              </node>
              <node concept="2OqwBi" id="4MaHsBDeyfK" role="2ZW6bz">
                <node concept="37vLTw" id="4MaHsBDeyfL" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MaHsBDexUP" resolve="openedProjects" />
                </node>
                <node concept="liA8E" id="4MaHsBDeyfM" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="4MaHsBDeyfN" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MaHsBDe$TC" role="3cqZAp">
          <node concept="10Nm6u" id="4MaHsBDe$TA" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14IknWHoNA0" role="jymVt" />
    <node concept="3clFb_" id="14IknWHoMvN" role="jymVt">
      <property role="TrG5h" value="checkIncrementalityEnabled" />
      <node concept="10P_77" id="14IknWHoMvO" role="3clF45" />
      <node concept="3Tm6S6" id="14IknWHoMvP" role="1B3o_S" />
      <node concept="3clFbS" id="14IknWHoMvQ" role="3clF47">
        <node concept="3SKdUt" id="14IknWHoMvR" role="3cqZAp">
          <node concept="1PaTwC" id="14IknWHoMvS" role="3ndbpf">
            <node concept="3oM_SD" id="14IknWHoMvT" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMvU" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMvV" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMvW" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMvX" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMvY" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMvZ" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMw0" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMw1" role="1PaTwD">
              <property role="3oM_SC" value="stable" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMw2" role="1PaTwD">
              <property role="3oM_SC" value="enough" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="14IknWHoMw3" role="3cqZAp">
          <node concept="1PaTwC" id="14IknWHoMw4" role="3ndbpf">
            <node concept="3oM_SD" id="14IknWHoMw5" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMw6" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMw7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMw8" role="1PaTwD">
              <property role="3oM_SC" value="feature" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMw9" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMwa" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="14IknWHoMwb" role="1PaTwD">
              <property role="3oM_SC" value="disabled" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="14IknWHoMwc" role="3cqZAp">
          <node concept="3cpWsn" id="14IknWHoMwd" role="3cpWs9">
            <property role="TrG5h" value="prefComponent" />
            <node concept="34_ZPX" id="14IknWHoMwe" role="1tU5fm">
              <ref role="34A7Nh" node="uB9WAZagv8" resolve="Typechecking" />
            </node>
            <node concept="1rXfSq" id="14IknWHoMwf" role="33vP2m">
              <ref role="37wK5l" node="14IknWHozE8" resolve="getPreferenceComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="14IknWHoMwg" role="3cqZAp">
          <node concept="3K4zz7" id="14IknWHoMwh" role="3cqZAk">
            <node concept="2OqwBi" id="14IknWHoMwi" role="3K4E3e">
              <node concept="37vLTw" id="14IknWHoMwj" role="2Oq$k0">
                <ref role="3cqZAo" node="14IknWHoMwd" resolve="prefComponent" />
              </node>
              <node concept="34pFcN" id="14IknWHoUog" role="2OqNvi">
                <ref role="2WH_rO" node="14IknWHoSHp" resolve="incrementalityEnabled" />
              </node>
            </node>
            <node concept="3clFbT" id="14IknWHoMwl" role="3K4GZi" />
            <node concept="3y3z36" id="14IknWHoMwm" role="3K4Cdx">
              <node concept="10Nm6u" id="14IknWHoMwn" role="3uHU7w" />
              <node concept="37vLTw" id="14IknWHoMwo" role="3uHU7B">
                <ref role="3cqZAo" node="14IknWHoMwd" resolve="prefComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="14IknWHoMwp" role="lGtFl">
        <node concept="TZ5HA" id="14IknWHoMwq" role="TZ5H$">
          <node concept="1dT_AC" id="14IknWHoMwr" role="1dT_Ay">
            <property role="1dT_AB" value="Check if the plugin was explicitly enabled" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14IknWHovsQ" role="jymVt" />
    <node concept="3clFb_" id="14IknWHozE8" role="jymVt">
      <property role="TrG5h" value="getPreferenceComponent" />
      <node concept="3clFbS" id="14IknWHozEb" role="3clF47">
        <node concept="3cpWs8" id="4MaHsBDenkr" role="3cqZAp">
          <node concept="3cpWsn" id="4MaHsBDenks" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="4MaHsBDek6Y" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="1rXfSq" id="4MaHsBDeBcB" role="33vP2m">
              <ref role="37wK5l" node="4MaHsBDes9w" resolve="discoverMPSProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rg9TXc$Akz" role="3cqZAp">
          <node concept="3K4zz7" id="7rg9TXc$Cfj" role="3clFbG">
            <node concept="2OqwBi" id="7rg9TXc$DWY" role="3K4E3e">
              <node concept="2OqwBi" id="7rg9TXc$CVv" role="2Oq$k0">
                <node concept="37vLTw" id="7rg9TXc$Cmv" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MaHsBDenks" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="7rg9TXc$DBW" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="LR4Ub" id="7rg9TXc$En1" role="2OqNvi">
                <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
              </node>
            </node>
            <node concept="10Nm6u" id="7rg9TXc$Eub" role="3K4GZi" />
            <node concept="3y3z36" id="7rg9TXc$BiA" role="3K4Cdx">
              <node concept="10Nm6u" id="7rg9TXc$BpL" role="3uHU7w" />
              <node concept="37vLTw" id="7rg9TXc$Akx" role="3uHU7B">
                <ref role="3cqZAo" node="4MaHsBDenks" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="14IknWHoxsG" role="1B3o_S" />
      <node concept="34_ZPX" id="14IknWHo$ly" role="3clF45">
        <ref role="34A7Nh" node="uB9WAZagv8" resolve="Typechecking" />
      </node>
    </node>
    <node concept="2tJIrI" id="lvX$8VFq7e" role="jymVt" />
    <node concept="2tJIrI" id="lvX$8VFqGV" role="jymVt" />
    <node concept="3clFb_" id="lvX$8VFrS8" role="jymVt">
      <property role="TrG5h" value="createQueries" />
      <node concept="3Tm1VV" id="lvX$8VFrS9" role="1B3o_S" />
      <node concept="2AHcQZ" id="lvX$8VFrSb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6u4W$ZKoWmI" role="3clF45">
        <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
      </node>
      <node concept="37vLTG" id="lvX$8VFrSd" role="3clF46">
        <property role="TrG5h" value="flags" />
        <node concept="2AHcQZ" id="lvX$8VFrSf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="3zIrswy0eS9" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
        </node>
      </node>
      <node concept="3clFbS" id="lvX$8VFrSg" role="3clF47">
        <node concept="3clFbF" id="1oUwjADnDmX" role="3cqZAp">
          <node concept="2ShNRf" id="1oUwjADnDmV" role="3clFbG">
            <node concept="1pGfFk" id="4MaHsBDeKk6" role="2ShVmc">
              <ref role="37wK5l" node="4MaHsBDeJMk" resolve="CoderulesTypecheckingProvider.Queries" />
              <node concept="1rXfSq" id="4MaHsBDeNGb" role="37wK5m">
                <ref role="37wK5l" node="4MaHsBDes9w" resolve="discoverMPSProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="lvX$8VFrSh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3zIrswy0dov" role="jymVt" />
    <node concept="3clFb_" id="3zIrswy0e2b" role="jymVt">
      <property role="TrG5h" value="getQueriesClass" />
      <node concept="3Tm1VV" id="3zIrswy0e2c" role="1B3o_S" />
      <node concept="3uibUv" id="3zIrswy0e2e" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3uibUv" id="3zIrswy0e2g" role="11_B2D">
          <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
        </node>
      </node>
      <node concept="3clFbS" id="3zIrswy0e2h" role="3clF47">
        <node concept="3clFbF" id="3zIrswy0g8o" role="3cqZAp">
          <node concept="3VsKOn" id="3zIrswy0gNb" role="3clFbG">
            <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3zIrswy0e2i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="lvX$8VFxhZ" role="jymVt" />
    <node concept="3clFb_" id="lvX$8VFrSk" role="jymVt">
      <property role="TrG5h" value="disposeQueries" />
      <node concept="3Tm1VV" id="lvX$8VFrSl" role="1B3o_S" />
      <node concept="3cqZAl" id="lvX$8VFrSn" role="3clF45" />
      <node concept="37vLTG" id="lvX$8VFrSo" role="3clF46">
        <property role="TrG5h" value="queries" />
        <node concept="3uibUv" id="lvX$8VFrSp" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingQueries" resolve="TypecheckingQueries" />
        </node>
        <node concept="2AHcQZ" id="lvX$8VFrSq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="lvX$8VFrSr" role="3clF47" />
      <node concept="2AHcQZ" id="lvX$8VFrSs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$gg4k_6BHa" role="jymVt" />
    <node concept="312cEu" id="5BwsbZJE17w" role="jymVt">
      <property role="TrG5h" value="Queries" />
      <node concept="2tJIrI" id="siuT5mm_XX" role="jymVt" />
      <node concept="3clFbW" id="4MaHsBDeJMk" role="jymVt">
        <node concept="3cqZAl" id="4MaHsBDeJMm" role="3clF45" />
        <node concept="3Tm1VV" id="4MaHsBDeJMn" role="1B3o_S" />
        <node concept="3clFbS" id="4MaHsBDeJMo" role="3clF47">
          <node concept="3clFbF" id="4MaHsBDeL9x" role="3cqZAp">
            <node concept="37vLTI" id="4MaHsBDeL9z" role="3clFbG">
              <node concept="2OqwBi" id="4MaHsBDeMus" role="37vLTJ">
                <node concept="Xjq3P" id="4MaHsBDeMGJ" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MaHsBDeMuv" role="2OqNvi">
                  <ref role="2Oxat5" node="4MaHsBDeL9t" resolve="mpsProject" />
                </node>
              </node>
              <node concept="37vLTw" id="4MaHsBDeL9B" role="37vLTx">
                <ref role="3cqZAo" node="4MaHsBDeKVS" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4MaHsBDeKVS" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="4MaHsBDeKVR" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MaHsBDeIUW" role="jymVt" />
      <node concept="3clFb_" id="MFuM6RlFvN" role="jymVt">
        <property role="TrG5h" value="options" />
        <node concept="3uibUv" id="MFuM6RlIKq" role="3clF45">
          <ref role="3uigEE" to="1yqb:MFuM6QJLE2" resolve="Step.Options" />
        </node>
        <node concept="3Tm1VV" id="MFuM6RlFvQ" role="1B3o_S" />
        <node concept="3clFbS" id="MFuM6RlFvR" role="3clF47">
          <node concept="3clFbF" id="MFuM6RlNn6" role="3cqZAp">
            <node concept="2ShNRf" id="MFuM6RlNn4" role="3clFbG">
              <node concept="YeOm9" id="MFuM6RlQo1" role="2ShVmc">
                <node concept="1Y3b0j" id="MFuM6RlQo4" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="1yqb:MFuM6QJLE2" resolve="Step.Options" />
                  <node concept="3Tm1VV" id="MFuM6RlQo5" role="1B3o_S" />
                  <node concept="3clFb_" id="MFuM6RlRm8" role="jymVt">
                    <property role="TrG5h" value="getOption" />
                    <node concept="37vLTG" id="MFuM6RlRm9" role="3clF46">
                      <property role="TrG5h" value="key" />
                      <node concept="17QB3L" id="MFuM6RlRma" role="1tU5fm" />
                    </node>
                    <node concept="3uibUv" id="MFuM6RlRmb" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="3Tm1VV" id="MFuM6RlRmc" role="1B3o_S" />
                    <node concept="3clFbS" id="MFuM6RlRmf" role="3clF47">
                      <node concept="3clFbJ" id="MFuM6RlSCX" role="3cqZAp">
                        <node concept="2OqwBi" id="MFuM6RlTh0" role="3clFbw">
                          <node concept="Xl_RD" id="MFuM6RlSYv" role="2Oq$k0">
                            <property role="Xl_RC" value="typechecking.trace" />
                          </node>
                          <node concept="liA8E" id="MFuM6RlTCV" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="MFuM6RlTZf" role="37wK5m">
                              <ref role="3cqZAo" node="MFuM6RlRm9" resolve="key" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="MFuM6RlSCZ" role="3clFbx">
                          <node concept="3cpWs6" id="MFuM6RlUrh" role="3cqZAp">
                            <node concept="10M0yZ" id="MFuM6RlUSx" role="3cqZAk">
                              <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                              <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="MFuM6RlVnw" role="3cqZAp">
                        <node concept="10Nm6u" id="MFuM6RlVnu" role="3clFbG" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="MFuM6RlRmg" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="MFuM6RlDGR" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA08" role="jymVt">
        <property role="TrG5h" value="getTypeOf" />
        <node concept="3Tm1VV" id="siuT5mmA09" role="1B3o_S" />
        <node concept="3uibUv" id="siuT5mmA0b" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="siuT5mmA0c" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="siuT5mmA0d" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0f" role="3clF47">
          <node concept="3clFbF" id="7rg9TXc$F69" role="3cqZAp">
            <node concept="1rXfSq" id="7rg9TXc$F67" role="3clFbG">
              <ref role="37wK5l" node="7wSJS_gAMh5" resolve="decideAboutIncrementality" />
              <node concept="37vLTw" id="7rg9TXc$Fk8" role="37wK5m">
                <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2qsG4AwJYbS" role="3cqZAp">
            <node concept="3cpWsn" id="2qsG4AwJYbT" role="3cpWs9">
              <property role="TrG5h" value="to" />
              <node concept="3uibUv" id="2qsG4AwJY7J" role="1tU5fm">
                <ref role="3uigEE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
              </node>
              <node concept="2ShNRf" id="2qsG4AwJYbU" role="33vP2m">
                <node concept="HV5vD" id="2qsG4AwJYbV" role="2ShVmc">
                  <ref role="HV5vE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4MaHsBE6dDW" role="3cqZAp">
            <node concept="3cpWsn" id="4MaHsBE6dDX" role="3cpWs9">
              <property role="TrG5h" value="typeOf" />
              <node concept="3Tqbb2" id="4MaHsBE64Yq" role="1tU5fm" />
              <node concept="2OqwBi" id="2qsG4AwK3fF" role="33vP2m">
                <node concept="2OqwBi" id="MFuM6RlVxv" role="2Oq$k0">
                  <node concept="2OqwBi" id="2qsG4AwK3fG" role="2Oq$k0">
                    <node concept="2YIFZM" id="2qsG4AwK3fH" role="2Oq$k0">
                      <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                      <ref role="37wK5l" to="tj24:3IIf9O_Z6Ip" resolve="forNode" />
                      <node concept="37vLTw" id="2qsG4AwK3fI" role="37wK5m">
                        <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2qsG4AwK3fJ" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1G9Y_Qvby8B" resolve="withTraceObject" />
                      <node concept="37vLTw" id="2qsG4AwK3fK" role="37wK5m">
                        <ref role="3cqZAo" node="2qsG4AwJYbT" resolve="to" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="MFuM6RlW_g" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:MFuM6Rlhvn" resolve="withOptions" />
                    <node concept="1rXfSq" id="MFuM6RlXBs" role="37wK5m">
                      <ref role="37wK5l" node="MFuM6RlFvN" resolve="options" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2qsG4AwK3fL" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:3IIf9O_tkwF" resolve="calcTypeOf" />
                  <node concept="37vLTw" id="2qsG4AwK3fM" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwIYzg" role="3cqZAp" />
          <node concept="3clFbF" id="4MaHsBE5WCw" role="3cqZAp">
            <node concept="2OqwBi" id="4MaHsBE5XSU" role="3clFbG">
              <node concept="2YIFZM" id="4MaHsBE5WXh" role="2Oq$k0">
                <ref role="37wK5l" to="31yc:4MaHsBDdmcG" resolve="get" />
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <node concept="37vLTw" id="4MaHsBE64CI" role="37wK5m">
                  <ref role="3cqZAo" node="4MaHsBDeL9t" resolve="mpsProject" />
                </node>
                <node concept="Xl_RD" id="4MaHsBE5XHn" role="37wK5m">
                  <property role="Xl_RC" value="Typechecking" />
                </node>
              </node>
              <node concept="liA8E" id="4MaHsBE5Y5q" role="2OqNvi">
                <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                <node concept="2YIFZM" id="4MaHsBE5Z7s" role="37wK5m">
                  <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                  <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String,java.lang.Object)" resolve="createMessage" />
                  <node concept="Rm8GO" id="4MaHsBE5ZDy" role="37wK5m">
                    <ref role="Rm8GQ" to="et5u:~MessageKind.INFORMATION" resolve="INFORMATION" />
                    <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                  </node>
                  <node concept="2OqwBi" id="4MaHsBE629o" role="37wK5m">
                    <node concept="3VsKOn" id="4MaHsBE61_M" role="2Oq$k0">
                      <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                    </node>
                    <node concept="liA8E" id="4MaHsBE630f" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4MaHsBE6fZu" role="37wK5m">
                    <node concept="37vLTw" id="4MaHsBE6gEa" role="3uHU7w">
                      <ref role="3cqZAo" node="4MaHsBE6dDX" resolve="typeOf" />
                    </node>
                    <node concept="3cpWs3" id="4MaHsBE6eWz" role="3uHU7B">
                      <node concept="3cpWs3" id="4MaHsBE65xA" role="3uHU7B">
                        <node concept="Xl_RD" id="4MaHsBE63oQ" role="3uHU7B">
                          <property role="Xl_RC" value="getTypeOf(" />
                        </node>
                        <node concept="37vLTw" id="4MaHsBE65Qc" role="3uHU7w">
                          <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4MaHsBE6faP" role="3uHU7w">
                        <property role="Xl_RC" value=") = " />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2qsG4AwK55F" role="37wK5m">
                    <ref role="3cqZAo" node="2qsG4AwJYbT" resolve="to" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwK5I3" role="3cqZAp" />
          <node concept="3clFbF" id="1oUwjADnRbu" role="3cqZAp">
            <node concept="37vLTw" id="4MaHsBE6dE0" role="3clFbG">
              <ref role="3cqZAo" node="4MaHsBE6dDX" resolve="typeOf" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0g" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1oUwjADnFUb" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA0j" role="jymVt">
        <property role="TrG5h" value="convertsTo" />
        <node concept="3Tm1VV" id="siuT5mmA0k" role="1B3o_S" />
        <node concept="10P_77" id="siuT5mmA0m" role="3clF45" />
        <node concept="37vLTG" id="siuT5mmA0n" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="siuT5mmA0o" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="siuT5mmA0p" role="3clF46">
          <property role="TrG5h" value="trgType" />
          <node concept="3uibUv" id="siuT5mmA0q" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0s" role="3clF47">
          <node concept="3cpWs8" id="2qsG4AwKAtU" role="3cqZAp">
            <node concept="3cpWsn" id="2qsG4AwKAtV" role="3cpWs9">
              <property role="TrG5h" value="to" />
              <node concept="3uibUv" id="2qsG4AwKAtW" role="1tU5fm">
                <ref role="3uigEE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
              </node>
              <node concept="2ShNRf" id="2qsG4AwKAtX" role="33vP2m">
                <node concept="HV5vD" id="2qsG4AwKAtY" role="2ShVmc">
                  <ref role="HV5vE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2qsG4AwKAtZ" role="3cqZAp">
            <node concept="3cpWsn" id="2qsG4AwKAu0" role="3cpWs9">
              <property role="TrG5h" value="convertsTo" />
              <node concept="10P_77" id="2qsG4AwKFoY" role="1tU5fm" />
              <node concept="2OqwBi" id="2qsG4AwKAu2" role="33vP2m">
                <node concept="2OqwBi" id="MFuM6RlY9h" role="2Oq$k0">
                  <node concept="2OqwBi" id="2qsG4AwKAu3" role="2Oq$k0">
                    <node concept="2YIFZM" id="2qsG4AwKB6p" role="2Oq$k0">
                      <ref role="37wK5l" to="tj24:2qsG4AwIYLn" resolve="for2Node" />
                      <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                      <node concept="37vLTw" id="2qsG4AwKBBk" role="37wK5m">
                        <ref role="3cqZAo" node="siuT5mmA0n" resolve="type" />
                      </node>
                      <node concept="37vLTw" id="2qsG4AwKCh1" role="37wK5m">
                        <ref role="3cqZAo" node="siuT5mmA0p" resolve="trgType" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2qsG4AwKAu6" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1G9Y_Qvby8B" resolve="withTraceObject" />
                      <node concept="37vLTw" id="2qsG4AwKAu7" role="37wK5m">
                        <ref role="3cqZAo" node="2qsG4AwKAtV" resolve="to" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="MFuM6RlY9L" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:MFuM6Rlhvn" resolve="withOptions" />
                    <node concept="1rXfSq" id="MFuM6RlY9M" role="37wK5m">
                      <ref role="37wK5l" node="MFuM6RlFvN" resolve="options" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2qsG4AwKAu8" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:3IIf9OAgpFT" resolve="calcConverts" />
                  <node concept="37vLTw" id="2qsG4AwKEfL" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0n" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="2qsG4AwKF0$" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0p" resolve="trgType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKA4n" role="3cqZAp" />
          <node concept="3clFbF" id="4MaHsBE6h3p" role="3cqZAp">
            <node concept="2OqwBi" id="4MaHsBE6h3q" role="3clFbG">
              <node concept="2YIFZM" id="4MaHsBE6h3r" role="2Oq$k0">
                <ref role="37wK5l" to="31yc:4MaHsBDdmcG" resolve="get" />
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <node concept="37vLTw" id="4MaHsBE6h3s" role="37wK5m">
                  <ref role="3cqZAo" node="4MaHsBDeL9t" resolve="mpsProject" />
                </node>
                <node concept="Xl_RD" id="4MaHsBE6h3t" role="37wK5m">
                  <property role="Xl_RC" value="Typechecking" />
                </node>
              </node>
              <node concept="liA8E" id="4MaHsBE6h3u" role="2OqNvi">
                <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                <node concept="2YIFZM" id="4MaHsBE6h3v" role="37wK5m">
                  <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                  <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String,java.lang.Object)" resolve="createMessage" />
                  <node concept="Rm8GO" id="4MaHsBE6h3w" role="37wK5m">
                    <ref role="Rm8GQ" to="et5u:~MessageKind.INFORMATION" resolve="INFORMATION" />
                    <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                  </node>
                  <node concept="2OqwBi" id="4MaHsBE6h3x" role="37wK5m">
                    <node concept="3VsKOn" id="4MaHsBE6h3y" role="2Oq$k0">
                      <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                    </node>
                    <node concept="liA8E" id="4MaHsBE6h3z" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4MaHsBE6h3$" role="37wK5m">
                    <node concept="37vLTw" id="2qsG4AwKHpA" role="3uHU7w">
                      <ref role="3cqZAo" node="2qsG4AwKAu0" resolve="convertsTo" />
                    </node>
                    <node concept="3cpWs3" id="4MaHsBE6j3g" role="3uHU7B">
                      <node concept="3cpWs3" id="4MaHsBE6jOA" role="3uHU7B">
                        <node concept="37vLTw" id="4MaHsBE6kxy" role="3uHU7w">
                          <ref role="3cqZAo" node="siuT5mmA0p" resolve="trgType" />
                        </node>
                        <node concept="3cpWs3" id="4MaHsBE6h3A" role="3uHU7B">
                          <node concept="3cpWs3" id="4MaHsBE6h3B" role="3uHU7B">
                            <node concept="Xl_RD" id="4MaHsBE6h3C" role="3uHU7B">
                              <property role="Xl_RC" value="convertsTo(" />
                            </node>
                            <node concept="37vLTw" id="4MaHsBE6iwC" role="3uHU7w">
                              <ref role="3cqZAo" node="siuT5mmA0n" resolve="type" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="4MaHsBE6j3m" role="3uHU7w">
                            <property role="Xl_RC" value=", " />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4MaHsBE6j3o" role="3uHU7w">
                        <property role="Xl_RC" value=" ) = " />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2qsG4AwKDcO" role="37wK5m">
                    <ref role="3cqZAo" node="2qsG4AwKAtV" resolve="to" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKHF$" role="3cqZAp" />
          <node concept="3clFbF" id="1oUwjADo1wN" role="3cqZAp">
            <node concept="37vLTw" id="2qsG4AwKGR$" role="3clFbG">
              <ref role="3cqZAo" node="2qsG4AwKAu0" resolve="convertsTo" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6$gg4k_6B9G" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA0w" role="jymVt">
        <property role="TrG5h" value="coerceType" />
        <node concept="3Tm1VV" id="siuT5mmA0x" role="1B3o_S" />
        <node concept="3uibUv" id="siuT5mmA0z" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="siuT5mmA0$" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="siuT5mmA0_" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="siuT5mmA0A" role="3clF46">
          <property role="TrG5h" value="trgConcept" />
          <node concept="3uibUv" id="siuT5mmA0B" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0D" role="3clF47">
          <node concept="3cpWs8" id="2qsG4AwKIeD" role="3cqZAp">
            <node concept="3cpWsn" id="2qsG4AwKIeE" role="3cpWs9">
              <property role="TrG5h" value="to" />
              <node concept="3uibUv" id="2qsG4AwKIeF" role="1tU5fm">
                <ref role="3uigEE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
              </node>
              <node concept="2ShNRf" id="2qsG4AwKIeG" role="33vP2m">
                <node concept="HV5vD" id="2qsG4AwKIeH" role="2ShVmc">
                  <ref role="HV5vE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2qsG4AwKIeI" role="3cqZAp">
            <node concept="3cpWsn" id="2qsG4AwKIeJ" role="3cpWs9">
              <property role="TrG5h" value="coerceTo" />
              <node concept="3Tqbb2" id="2qsG4AwKKKV" role="1tU5fm" />
              <node concept="2OqwBi" id="2qsG4AwKIeL" role="33vP2m">
                <node concept="2OqwBi" id="MFuM6RlYRr" role="2Oq$k0">
                  <node concept="2OqwBi" id="2qsG4AwKIeM" role="2Oq$k0">
                    <node concept="2YIFZM" id="2qsG4AwKIRV" role="2Oq$k0">
                      <ref role="37wK5l" to="tj24:2qsG4AwKdr0" resolve="forNodeAndConcept" />
                      <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                      <node concept="37vLTw" id="2qsG4AwKIRW" role="37wK5m">
                        <ref role="3cqZAo" node="siuT5mmA0$" resolve="type" />
                      </node>
                      <node concept="37vLTw" id="2qsG4AwKJrR" role="37wK5m">
                        <ref role="3cqZAo" node="siuT5mmA0A" resolve="trgConcept" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2qsG4AwKIeQ" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1G9Y_Qvby8B" resolve="withTraceObject" />
                      <node concept="37vLTw" id="2qsG4AwKIeR" role="37wK5m">
                        <ref role="3cqZAo" node="2qsG4AwKIeE" resolve="to" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="MFuM6RlZd2" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:MFuM6Rlhvn" resolve="withOptions" />
                    <node concept="1rXfSq" id="MFuM6RlZd3" role="37wK5m">
                      <ref role="37wK5l" node="MFuM6RlFvN" resolve="options" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2qsG4AwKIeS" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:7Bx7XgEiqaI" resolve="calcCoerce" />
                  <node concept="37vLTw" id="2qsG4AwKIeT" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0$" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="2qsG4AwKK9o" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0A" resolve="trgConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKHP0" role="3cqZAp" />
          <node concept="3clFbF" id="4MaHsBE6r$X" role="3cqZAp">
            <node concept="2OqwBi" id="4MaHsBE6r$Y" role="3clFbG">
              <node concept="2YIFZM" id="4MaHsBE6r$Z" role="2Oq$k0">
                <ref role="37wK5l" to="31yc:4MaHsBDdmcG" resolve="get" />
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <node concept="37vLTw" id="4MaHsBE6r_0" role="37wK5m">
                  <ref role="3cqZAo" node="4MaHsBDeL9t" resolve="mpsProject" />
                </node>
                <node concept="Xl_RD" id="4MaHsBE6r_1" role="37wK5m">
                  <property role="Xl_RC" value="Typechecking" />
                </node>
              </node>
              <node concept="liA8E" id="4MaHsBE6r_2" role="2OqNvi">
                <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                <node concept="2YIFZM" id="4MaHsBE6r_3" role="37wK5m">
                  <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                  <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String,java.lang.Object)" resolve="createMessage" />
                  <node concept="Rm8GO" id="4MaHsBE6r_4" role="37wK5m">
                    <ref role="Rm8GQ" to="et5u:~MessageKind.INFORMATION" resolve="INFORMATION" />
                    <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                  </node>
                  <node concept="2OqwBi" id="4MaHsBE6r_5" role="37wK5m">
                    <node concept="3VsKOn" id="4MaHsBE6r_6" role="2Oq$k0">
                      <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                    </node>
                    <node concept="liA8E" id="4MaHsBE6r_7" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4MaHsBE6r_8" role="37wK5m">
                    <node concept="37vLTw" id="2qsG4AwKLIF" role="3uHU7w">
                      <ref role="3cqZAo" node="2qsG4AwKIeJ" resolve="coerceTo" />
                    </node>
                    <node concept="3cpWs3" id="4MaHsBE6r_a" role="3uHU7B">
                      <node concept="3cpWs3" id="4MaHsBE6r_b" role="3uHU7B">
                        <node concept="37vLTw" id="4MaHsBE6vs_" role="3uHU7w">
                          <ref role="3cqZAo" node="siuT5mmA0A" resolve="trgConcept" />
                        </node>
                        <node concept="3cpWs3" id="4MaHsBE6r_d" role="3uHU7B">
                          <node concept="3cpWs3" id="4MaHsBE6r_e" role="3uHU7B">
                            <node concept="Xl_RD" id="4MaHsBE6r_f" role="3uHU7B">
                              <property role="Xl_RC" value="coerceType(" />
                            </node>
                            <node concept="37vLTw" id="4MaHsBE6r_g" role="3uHU7w">
                              <ref role="3cqZAo" node="siuT5mmA0$" resolve="type" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="4MaHsBE6r_h" role="3uHU7w">
                            <property role="Xl_RC" value=", " />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4MaHsBE6r_i" role="3uHU7w">
                        <property role="Xl_RC" value=") = " />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2qsG4AwKMvI" role="37wK5m">
                    <ref role="3cqZAo" node="2qsG4AwKIeE" resolve="to" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKOqM" role="3cqZAp" />
          <node concept="3clFbF" id="4pwDyRARaCS" role="3cqZAp">
            <node concept="37vLTw" id="2qsG4AwKNqg" role="3clFbG">
              <ref role="3cqZAo" node="2qsG4AwKIeJ" resolve="coerceTo" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="hEDrw1P7L3" role="jymVt" />
      <node concept="3clFb_" id="hEDrw1P5LW" role="jymVt">
        <property role="TrG5h" value="coerceType" />
        <node concept="3Tm1VV" id="hEDrw1P5LX" role="1B3o_S" />
        <node concept="3uibUv" id="hEDrw1P5M0" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="hEDrw1P5M1" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="hEDrw1P5M2" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="hEDrw1P5M4" role="3clF46">
          <property role="TrG5h" value="pattern" />
          <node concept="3uibUv" id="hEDrw1P5M5" role="1tU5fm">
            <ref role="3uigEE" to="7jhi:~INodeMatchingPattern" resolve="INodeMatchingPattern" />
          </node>
          <node concept="2AHcQZ" id="hEDrw1P5M6" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="hEDrw1P5M8" role="3clF47">
          <node concept="3clFbH" id="2qsG4AwKOJU" role="3cqZAp" />
          <node concept="3clFbF" id="4MaHsBE6SoO" role="3cqZAp">
            <node concept="2OqwBi" id="4MaHsBE6SoP" role="3clFbG">
              <node concept="2YIFZM" id="4MaHsBE6SoQ" role="2Oq$k0">
                <ref role="37wK5l" to="31yc:4MaHsBDdmcG" resolve="get" />
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <node concept="37vLTw" id="4MaHsBE6SoR" role="37wK5m">
                  <ref role="3cqZAo" node="4MaHsBDeL9t" resolve="mpsProject" />
                </node>
                <node concept="Xl_RD" id="4MaHsBE6SoS" role="37wK5m">
                  <property role="Xl_RC" value="Typechecking" />
                </node>
              </node>
              <node concept="liA8E" id="4MaHsBE6SoT" role="2OqNvi">
                <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                <node concept="2YIFZM" id="4MaHsBE6SoU" role="37wK5m">
                  <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String)" resolve="createMessage" />
                  <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                  <node concept="Rm8GO" id="4MaHsBE6T9B" role="37wK5m">
                    <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                    <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                  </node>
                  <node concept="2OqwBi" id="4MaHsBE6SoW" role="37wK5m">
                    <node concept="3VsKOn" id="4MaHsBE6SoX" role="2Oq$k0">
                      <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                    </node>
                    <node concept="liA8E" id="4MaHsBE6SoY" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4MaHsBE6WSR" role="37wK5m">
                    <node concept="3cpWs3" id="4MaHsBE6Y1A" role="3uHU7B">
                      <node concept="37vLTw" id="4MaHsBE6Z0h" role="3uHU7w">
                        <ref role="3cqZAo" node="hEDrw1P5M4" resolve="pattern" />
                      </node>
                      <node concept="3cpWs3" id="4MaHsBE6SoZ" role="3uHU7B">
                        <node concept="3cpWs3" id="4MaHsBE6Sp0" role="3uHU7B">
                          <node concept="Xl_RD" id="4MaHsBE6Sp1" role="3uHU7B">
                            <property role="Xl_RC" value="NOT IMPLEMENTED: coerceType(" />
                          </node>
                          <node concept="37vLTw" id="4MaHsBE6Wbh" role="3uHU7w">
                            <ref role="3cqZAo" node="hEDrw1P5M1" resolve="type" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="4MaHsBE6WSX" role="3uHU7w">
                          <property role="Xl_RC" value=", " />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4MaHsBE6WSZ" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKOW8" role="3cqZAp" />
          <node concept="3clFbF" id="hEDrw1P5Mb" role="3cqZAp">
            <node concept="10Nm6u" id="hEDrw1P5Ma" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="hEDrw1P5M9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5BwsbZJE0Zx" role="jymVt" />
      <node concept="3Tm1VV" id="5BwsbZJE17x" role="1B3o_S" />
      <node concept="3uibUv" id="lvX$8VFC52" role="EKbjA">
        <ref role="3uigEE" to="1ka:~TypecheckingQueries" resolve="TypecheckingQueries" />
      </node>
      <node concept="3clFb_" id="2Hyoxv0bBC" role="jymVt">
        <property role="TrG5h" value="checkRecursively" />
        <node concept="3Tm1VV" id="2Hyoxv0bBD" role="1B3o_S" />
        <node concept="3cqZAl" id="2Hyoxv0bBF" role="3clF45" />
        <node concept="37vLTG" id="2Hyoxv0bBG" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="2Hyoxv0bBH" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="2Hyoxv0bBI" role="3clF46">
          <property role="TrG5h" value="consumer" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="2Hyoxv0bBJ" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
            <node concept="3qUtgH" id="2Hyoxv0bBK" role="11_B2D">
              <node concept="3uibUv" id="2Hyoxv0bBL" role="3qUvdb">
                <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2Hyoxv0bBM" role="3clF47">
          <node concept="3cpWs8" id="2qsG4AwKPDx" role="3cqZAp">
            <node concept="3cpWsn" id="2qsG4AwKPDy" role="3cpWs9">
              <property role="TrG5h" value="to" />
              <node concept="3uibUv" id="2qsG4AwKPDz" role="1tU5fm">
                <ref role="3uigEE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
              </node>
              <node concept="2ShNRf" id="2qsG4AwKPD$" role="33vP2m">
                <node concept="HV5vD" id="2qsG4AwKPD_" role="2ShVmc">
                  <ref role="HV5vE" to="1yqb:1G9Y_Qvb1CP" resolve="TraceObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1oUwjADot3A" role="3cqZAp">
            <node concept="3cpWsn" id="1oUwjADot3B" role="3cpWs9">
              <property role="TrG5h" value="sink" />
              <node concept="3uibUv" id="1oUwjADot3_" role="1tU5fm">
                <ref role="3uigEE" to="1yqb:5KrJ7UHMRRs" resolve="ReportSink" />
              </node>
              <node concept="2ShNRf" id="1oUwjADot3C" role="33vP2m">
                <node concept="YeOm9" id="1oUwjADot3D" role="2ShVmc">
                  <node concept="1Y3b0j" id="1oUwjADot3E" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="1yqb:5KrJ7UHMRRs" resolve="ReportSink" />
                    <node concept="3Tm1VV" id="1oUwjADot3F" role="1B3o_S" />
                    <node concept="3clFb_" id="1oUwjADot3G" role="jymVt">
                      <property role="TrG5h" value="report" />
                      <node concept="37vLTG" id="1oUwjADot3H" role="3clF46">
                        <property role="TrG5h" value="reportItem" />
                        <node concept="3uibUv" id="1oUwjADot3I" role="1tU5fm">
                          <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
                        </node>
                      </node>
                      <node concept="3cqZAl" id="1oUwjADot3J" role="3clF45" />
                      <node concept="3Tm1VV" id="1oUwjADot3K" role="1B3o_S" />
                      <node concept="3clFbS" id="1oUwjADot3L" role="3clF47">
                        <node concept="3clFbJ" id="1oUwjADot3M" role="3cqZAp">
                          <node concept="3clFbS" id="1oUwjADot3N" role="3clFbx">
                            <node concept="3clFbF" id="1oUwjADot3O" role="3cqZAp">
                              <node concept="2OqwBi" id="1oUwjADot3P" role="3clFbG">
                                <node concept="37vLTw" id="2qsG4AwKTID" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2Hyoxv0bBI" resolve="consumer" />
                                </node>
                                <node concept="liA8E" id="1oUwjADot3R" role="2OqNvi">
                                  <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                                  <node concept="10QFUN" id="1oUwjADot3S" role="37wK5m">
                                    <node concept="3uibUv" id="1oUwjADot3T" role="10QFUM">
                                      <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                                    </node>
                                    <node concept="37vLTw" id="1oUwjADot3U" role="10QFUP">
                                      <ref role="3cqZAo" node="1oUwjADot3H" resolve="reportItem" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1oUwjADot3V" role="3clFbw">
                            <node concept="3uibUv" id="1oUwjADot3W" role="2ZW6by">
                              <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                            </node>
                            <node concept="37vLTw" id="1oUwjADot3X" role="2ZW6bz">
                              <ref role="3cqZAo" node="1oUwjADot3H" resolve="reportItem" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1oUwjADot3Y" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKRZQ" role="3cqZAp" />
          <node concept="3SKdUt" id="2qsG4AwLBYw" role="3cqZAp">
            <node concept="1PaTwC" id="2qsG4AwLBYx" role="3ndbpf">
              <node concept="3oM_SD" id="2qsG4AwLBYz" role="1PaTwD">
                <property role="3oM_SC" value="FIXME:" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCq7" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCqi" role="1PaTwD">
                <property role="3oM_SC" value="must" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCqu" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCqF" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCqL" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCqS" role="1PaTwD">
                <property role="3oM_SC" value="containing" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCr8" role="1PaTwD">
                <property role="3oM_SC" value="root!" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1oUwjADo$Xq" role="3cqZAp">
            <node concept="3cpWsn" id="1oUwjADo$Xr" role="3cpWs9">
              <property role="TrG5h" value="containingRoot" />
              <node concept="3Tqbb2" id="1oUwjADo$SV" role="1tU5fm" />
              <node concept="2OqwBi" id="1oUwjADoAIm" role="33vP2m">
                <node concept="37vLTw" id="2qsG4AwLCRt" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Hyoxv0bBG" resolve="node" />
                </node>
                <node concept="liA8E" id="2qsG4AwLDpf" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2qsG4AwKYP$" role="3cqZAp">
            <node concept="2OqwBi" id="2qsG4AwKZwC" role="3clFbG">
              <node concept="2OqwBi" id="2qsG4AwL2gk" role="2Oq$k0">
                <node concept="2OqwBi" id="MFuM6RlZUf" role="2Oq$k0">
                  <node concept="2OqwBi" id="2qsG4AwL2gl" role="2Oq$k0">
                    <node concept="2YIFZM" id="2qsG4AwL2gm" role="2Oq$k0">
                      <ref role="37wK5l" to="tj24:3IIf9O_Z6Ip" resolve="forNode" />
                      <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                      <node concept="37vLTw" id="2qsG4AwL2gn" role="37wK5m">
                        <ref role="3cqZAo" node="2Hyoxv0bBG" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2qsG4AwL2go" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1G9Y_Qvby8B" resolve="withTraceObject" />
                      <node concept="37vLTw" id="2qsG4AwL2gp" role="37wK5m">
                        <ref role="3cqZAo" node="2qsG4AwKPDy" resolve="to" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="MFuM6RlZUF" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:MFuM6Rlhvn" resolve="withOptions" />
                    <node concept="1rXfSq" id="MFuM6RlZUG" role="37wK5m">
                      <ref role="37wK5l" node="MFuM6RlFvN" resolve="options" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2qsG4AwL2gq" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:5KrJ7UHN1Lk" resolve="withReportSink" />
                  <node concept="37vLTw" id="2qsG4AwL2gr" role="37wK5m">
                    <ref role="3cqZAo" node="1oUwjADot3B" resolve="sink" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2qsG4AwL01V" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1FOQehxdXIx" resolve="checkTypes" />
                <node concept="37vLTw" id="2qsG4AwLEpJ" role="37wK5m">
                  <ref role="3cqZAo" node="1oUwjADo$Xr" resolve="containingRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKPll" role="3cqZAp" />
          <node concept="3clFbF" id="4MaHsBE6CBx" role="3cqZAp">
            <node concept="2OqwBi" id="4MaHsBE6CBy" role="3clFbG">
              <node concept="2YIFZM" id="4MaHsBE6CBz" role="2Oq$k0">
                <ref role="37wK5l" to="31yc:4MaHsBDdmcG" resolve="get" />
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <node concept="37vLTw" id="4MaHsBE6CB$" role="37wK5m">
                  <ref role="3cqZAo" node="4MaHsBDeL9t" resolve="mpsProject" />
                </node>
                <node concept="Xl_RD" id="4MaHsBE6CB_" role="37wK5m">
                  <property role="Xl_RC" value="Typechecking" />
                </node>
              </node>
              <node concept="liA8E" id="4MaHsBE6CBA" role="2OqNvi">
                <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                <node concept="2YIFZM" id="4MaHsBE6CBB" role="37wK5m">
                  <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                  <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String,java.lang.Object)" resolve="createMessage" />
                  <node concept="Rm8GO" id="4MaHsBE6CBC" role="37wK5m">
                    <ref role="Rm8GQ" to="et5u:~MessageKind.INFORMATION" resolve="INFORMATION" />
                    <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                  </node>
                  <node concept="2OqwBi" id="4MaHsBE6CBD" role="37wK5m">
                    <node concept="3VsKOn" id="4MaHsBE6CBE" role="2Oq$k0">
                      <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                    </node>
                    <node concept="liA8E" id="4MaHsBE6CBF" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4MaHsBE6CBI" role="37wK5m">
                    <node concept="3cpWs3" id="4MaHsBE6CBJ" role="3uHU7B">
                      <node concept="Xl_RD" id="4MaHsBE6CBK" role="3uHU7B">
                        <property role="Xl_RC" value="checkRecursively(" />
                      </node>
                      <node concept="37vLTw" id="4MaHsBE6CBL" role="3uHU7w">
                        <ref role="3cqZAo" node="2Hyoxv0bBG" resolve="node" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4MaHsBE6CBM" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2qsG4AwL4i6" role="37wK5m">
                    <ref role="3cqZAo" node="2qsG4AwKPDy" resolve="to" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2qsG4AwKP16" role="3cqZAp" />
          <node concept="3clFbF" id="7wSJS_gDEks" role="3cqZAp">
            <node concept="1rXfSq" id="7wSJS_gDEkt" role="3clFbG">
              <ref role="37wK5l" node="7wSJS_gAMh5" resolve="decideAboutIncrementality" />
              <node concept="37vLTw" id="7wSJS_gDEku" role="37wK5m">
                <ref role="3cqZAo" node="2Hyoxv0bBG" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1oUwjADoC3X" role="3cqZAp">
            <node concept="2YIFZM" id="1oUwjADoC7W" role="3clFbG">
              <ref role="37wK5l" to="tj24:1oUwjADoavi" resolve="checkRoot" />
              <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
              <node concept="37vLTw" id="1oUwjADoOeB" role="37wK5m">
                <ref role="3cqZAo" node="2Hyoxv0bBG" resolve="node" />
              </node>
              <node concept="37vLTw" id="1oUwjADp1Jc" role="37wK5m">
                <ref role="3cqZAo" node="2Hyoxv0bBI" resolve="consumer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2Hyoxv0bBN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6l3eCxofJWR" role="jymVt" />
      <node concept="3clFb_" id="6l3eCxofJGN" role="jymVt">
        <property role="TrG5h" value="clearCache" />
        <node concept="3Tm1VV" id="6l3eCxofJGO" role="1B3o_S" />
        <node concept="3cqZAl" id="6l3eCxofJGQ" role="3clF45" />
        <node concept="37vLTG" id="6l3eCxofJGR" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6l3eCxofJGS" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="6l3eCxofJGT" role="3clF47">
          <node concept="3SKdUt" id="2qsG4AwLTT$" role="3cqZAp">
            <node concept="1PaTwC" id="2qsG4AwLTT_" role="3ndbpf">
              <node concept="3oM_SD" id="2qsG4AwLTTB" role="1PaTwD">
                <property role="3oM_SC" value="TODO:" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLTU0" role="1PaTwD">
                <property role="3oM_SC" value="introduce" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLU2Z" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLU4U" role="1PaTwD">
                <property role="3oM_SC" value="flag" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2qsG4AwLyh2" role="3cqZAp">
            <node concept="3clFbS" id="2qsG4AwLyh4" role="3clFbx">
              <node concept="3clFbF" id="2qsG4AwL68J" role="3cqZAp">
                <node concept="2OqwBi" id="2qsG4AwL68K" role="3clFbG">
                  <node concept="2YIFZM" id="2qsG4AwL68L" role="2Oq$k0">
                    <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                    <ref role="37wK5l" to="31yc:4MaHsBDdmcG" resolve="get" />
                    <node concept="37vLTw" id="2qsG4AwL68M" role="37wK5m">
                      <ref role="3cqZAo" node="4MaHsBDeL9t" resolve="mpsProject" />
                    </node>
                    <node concept="Xl_RD" id="2qsG4AwL68N" role="37wK5m">
                      <property role="Xl_RC" value="Typechecking" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2qsG4AwL68O" role="2OqNvi">
                    <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                    <node concept="2YIFZM" id="2qsG4AwL68P" role="37wK5m">
                      <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                      <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String)" resolve="createMessage" />
                      <node concept="Rm8GO" id="2qsG4AwL68Q" role="37wK5m">
                        <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                        <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                      </node>
                      <node concept="2OqwBi" id="2qsG4AwL68R" role="37wK5m">
                        <node concept="3VsKOn" id="2qsG4AwL68S" role="2Oq$k0">
                          <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                        </node>
                        <node concept="liA8E" id="2qsG4AwL68T" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2qsG4AwL68U" role="37wK5m">
                        <node concept="3cpWs3" id="2qsG4AwL68Y" role="3uHU7B">
                          <node concept="Xl_RD" id="2qsG4AwL68Z" role="3uHU7B">
                            <property role="Xl_RC" value="NOT IMPLEMENTED: clearCache" />
                          </node>
                          <node concept="37vLTw" id="2qsG4AwL7yW" role="3uHU7w">
                            <ref role="3cqZAo" node="6l3eCxofJGR" resolve="node" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2qsG4AwL692" role="3uHU7w">
                          <property role="Xl_RC" value=")" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbT" id="2qsG4AwLyCv" role="3clFbw" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6l3eCxofJGU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2qsG4AwL4R$" role="jymVt" />
      <node concept="3clFb_" id="6l3eCxofJGV" role="jymVt">
        <property role="TrG5h" value="isCacheUpToDate" />
        <node concept="3Tm1VV" id="6l3eCxofJGW" role="1B3o_S" />
        <node concept="10P_77" id="6l3eCxofJGY" role="3clF45" />
        <node concept="37vLTG" id="6l3eCxofJGZ" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6l3eCxofJH0" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="6l3eCxofJH1" role="3clF47">
          <node concept="3SKdUt" id="2qsG4AwLUCj" role="3cqZAp">
            <node concept="1PaTwC" id="2qsG4AwLUCk" role="3ndbpf">
              <node concept="3oM_SD" id="2qsG4AwLUCm" role="1PaTwD">
                <property role="3oM_SC" value="TODO:" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLULI" role="1PaTwD">
                <property role="3oM_SC" value="introduce" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLULT" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLULX" role="1PaTwD">
                <property role="3oM_SC" value="flag" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2qsG4AwLwgs" role="3cqZAp">
            <node concept="3clFbS" id="2qsG4AwLwgu" role="3clFbx">
              <node concept="3clFbF" id="2qsG4AwL8lq" role="3cqZAp">
                <node concept="2OqwBi" id="2qsG4AwL8lr" role="3clFbG">
                  <node concept="2YIFZM" id="2qsG4AwL8ls" role="2Oq$k0">
                    <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                    <ref role="37wK5l" to="31yc:4MaHsBDdmcG" resolve="get" />
                    <node concept="37vLTw" id="2qsG4AwL8lt" role="37wK5m">
                      <ref role="3cqZAo" node="4MaHsBDeL9t" resolve="mpsProject" />
                    </node>
                    <node concept="Xl_RD" id="2qsG4AwL8lu" role="37wK5m">
                      <property role="Xl_RC" value="Typechecking" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2qsG4AwL8lv" role="2OqNvi">
                    <ref role="37wK5l" to="31yc:4MaHsBDgiaT" resolve="handle" />
                    <node concept="2YIFZM" id="2qsG4AwL8lw" role="37wK5m">
                      <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                      <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String)" resolve="createMessage" />
                      <node concept="Rm8GO" id="2qsG4AwL8lx" role="37wK5m">
                        <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                        <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                      </node>
                      <node concept="2OqwBi" id="2qsG4AwL8ly" role="37wK5m">
                        <node concept="3VsKOn" id="2qsG4AwL8lz" role="2Oq$k0">
                          <ref role="3VsUkX" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                        </node>
                        <node concept="liA8E" id="2qsG4AwL8l$" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2qsG4AwL8l_" role="37wK5m">
                        <node concept="3cpWs3" id="2qsG4AwL8lA" role="3uHU7B">
                          <node concept="Xl_RD" id="2qsG4AwL8lB" role="3uHU7B">
                            <property role="Xl_RC" value="NOT IMPLEMENTED: isCacheUpToDate" />
                          </node>
                          <node concept="37vLTw" id="2qsG4AwL8lC" role="3uHU7w">
                            <ref role="3cqZAo" node="6l3eCxofJGZ" resolve="node" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2qsG4AwL8lD" role="3uHU7w">
                          <property role="Xl_RC" value=")" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbT" id="2qsG4AwLwBW" role="3clFbw" />
          </node>
          <node concept="3clFbH" id="2qsG4AwL8lm" role="3cqZAp" />
          <node concept="3clFbF" id="6l3eCxofJH4" role="3cqZAp">
            <node concept="3clFbT" id="6l3eCxofJH3" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6l3eCxofJH2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MaHsBDeMSf" role="jymVt" />
      <node concept="312cEg" id="4MaHsBDeL9t" role="jymVt">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3Tm6S6" id="4MaHsBDeL9u" role="1B3o_S" />
        <node concept="3uibUv" id="4MaHsBDeL9w" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="2tJIrI" id="7wSJS_gDBID" role="jymVt" />
      <node concept="3clFb_" id="7wSJS_gAMh5" role="jymVt">
        <property role="TrG5h" value="decideAboutIncrementality" />
        <node concept="37vLTG" id="7wSJS_gD_uV" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="7wSJS_gDA0h" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7wSJS_gAMh8" role="3clF47">
          <node concept="3clFbJ" id="7wSJS_gAMU4" role="3cqZAp">
            <node concept="3fqX7Q" id="7wSJS_gAN8i" role="3clFbw">
              <node concept="37vLTw" id="7wSJS_gAN$u" role="3fr31v">
                <ref role="3cqZAo" node="7wSJS_gAHJf" resolve="incrementalEnabled" />
              </node>
            </node>
            <node concept="3clFbS" id="7wSJS_gAMU6" role="3clFbx">
              <node concept="3clFbF" id="7wSJS_gAO_R" role="3cqZAp">
                <node concept="2YIFZM" id="7wSJS_gD_lB" role="3clFbG">
                  <ref role="37wK5l" to="tj24:7wSJS_gB_Oi" resolve="resetSession" />
                  <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                  <node concept="37vLTw" id="7wSJS_gDAi0" role="37wK5m">
                    <ref role="3cqZAo" node="7wSJS_gD_uV" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7wSJS_gALFH" role="1B3o_S" />
        <node concept="3cqZAl" id="7wSJS_gAM9y" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="7wSJS_gDB0L" role="jymVt" />
      <node concept="312cEg" id="7wSJS_gAHJf" role="jymVt">
        <property role="TrG5h" value="incrementalEnabled" />
        <node concept="3Tm6S6" id="7wSJS_gAFwd" role="1B3o_S" />
        <node concept="10P_77" id="7wSJS_gAHBG" role="1tU5fm" />
        <node concept="3clFbT" id="7wSJS_gAJU4" role="33vP2m" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmBCy" role="jymVt" />
    <node concept="3Tm1VV" id="7Tj_ODDR37Y" role="1B3o_S" />
    <node concept="3uibUv" id="3LFq2p98ihg" role="EKbjA">
      <ref role="3uigEE" to="ev0w:~TypecheckingProvider" resolve="TypecheckingProvider" />
      <node concept="3uibUv" id="6u4W$ZKoB5z" role="11_B2D">
        <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="vVsDu9byFZ">
    <property role="3GE5qa" value="lifecycle" />
    <property role="TrG5h" value="TypecheckingProviderInit" />
    <node concept="2BZ0e9" id="7cQXRE6zO_k" role="2uRRBG">
      <property role="TrG5h" value="providerToken" />
      <node concept="3Tm6S6" id="7cQXRE6zO_l" role="1B3o_S" />
      <node concept="3uibUv" id="7cQXRE6zOG3" role="1tU5fm">
        <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderToken" resolve="TypecheckingBackend.ProviderToken" />
      </node>
      <node concept="10Nm6u" id="7cQXRE6zOGh" role="33vP2m" />
    </node>
    <node concept="2BZ0e9" id="3KN3A4w983R" role="2uRRBG">
      <property role="TrG5h" value="provider" />
      <node concept="3Tm6S6" id="3KN3A4w983S" role="1B3o_S" />
      <node concept="3uibUv" id="3KN3A4w98gI" role="1tU5fm">
        <ref role="3uigEE" node="7Tj_ODDR37X" resolve="CoderulesTypecheckingProvider" />
      </node>
      <node concept="10Nm6u" id="3KN3A4w983U" role="33vP2m" />
    </node>
    <node concept="2uRRBj" id="vVsDu9byG8" role="2uRRBE">
      <node concept="3clFbS" id="vVsDu9byG9" role="2VODD2">
        <node concept="3cpWs8" id="3LFq2p98mmp" role="3cqZAp">
          <node concept="3cpWsn" id="3LFq2p98mmq" role="3cpWs9">
            <property role="TrG5h" value="backend" />
            <node concept="3uibUv" id="3LFq2p98mmm" role="1tU5fm">
              <ref role="3uigEE" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
            </node>
            <node concept="2OqwBi" id="3LFq2p98mmr" role="33vP2m">
              <node concept="XUXob" id="3LFq2p98mms" role="2Oq$k0" />
              <node concept="liA8E" id="3LFq2p98mmt" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="3LFq2p98mmu" role="37wK5m">
                  <ref role="3VsUkX" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3LFq2p98mt_" role="3cqZAp">
          <node concept="3clFbS" id="3LFq2p98mtB" role="3clFbx">
            <node concept="3clFbF" id="6UfJe1lK1zt" role="3cqZAp">
              <node concept="37vLTI" id="6UfJe1lK26b" role="3clFbG">
                <node concept="2OqwBi" id="6UfJe1lK1Jg" role="37vLTJ">
                  <node concept="2WthIp" id="6UfJe1lK1zr" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="6UfJe1lK1WD" role="2OqNvi">
                    <ref role="2WH_rO" node="3KN3A4w983R" resolve="provider" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3LFq2p98pcv" role="37vLTx">
                  <node concept="1pGfFk" id="7cQXRE6zO$E" role="2ShVmc">
                    <ref role="37wK5l" node="3LFq2p98DNK" resolve="CoderulesTypecheckingProvider" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="vVsDu9bz1N" role="3cqZAp">
              <node concept="37vLTI" id="7cQXRE6zOUc" role="3clFbG">
                <node concept="2OqwBi" id="3LFq2p98mKu" role="37vLTx">
                  <node concept="37vLTw" id="3LFq2p98mmv" role="2Oq$k0">
                    <ref role="3cqZAo" node="3LFq2p98mmq" resolve="backend" />
                  </node>
                  <node concept="liA8E" id="3LFq2p98p9v" role="2OqNvi">
                    <ref role="37wK5l" to="ev0w:~TypecheckingBackend.installProvider(jetbrains.mps.typechecking.backend.TypecheckingProvider,jetbrains.mps.typechecking.backend.TypecheckingBackend$ProviderLevel)" resolve="installProvider" />
                    <node concept="2OqwBi" id="6UfJe1lK2dj" role="37wK5m">
                      <node concept="2WthIp" id="6UfJe1lK2dm" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="6UfJe1lK2do" role="2OqNvi">
                        <ref role="2WH_rO" node="3KN3A4w983R" resolve="provider" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="siuT5mnemS" role="37wK5m">
                      <node concept="1pGfFk" id="siuT5mnjyc" role="2ShVmc">
                        <ref role="37wK5l" node="siuT5mmS2P" resolve="CoderulesProviderLevel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7cQXRE6zP9m" role="37vLTJ">
                  <node concept="2WthIp" id="7cQXRE6zP9p" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7cQXRE6zP9r" role="2OqNvi">
                    <ref role="2WH_rO" node="7cQXRE6zO_k" resolve="providerToken" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3LFq2p98r7F" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="3LFq2p98mCZ" role="3clFbw">
            <node concept="10Nm6u" id="3LFq2p98mDx" role="3uHU7w" />
            <node concept="37vLTw" id="3LFq2p98mwt" role="3uHU7B">
              <ref role="3cqZAo" node="3LFq2p98mmq" resolve="backend" />
            </node>
          </node>
          <node concept="9aQIb" id="3LFq2p98r6e" role="9aQIa">
            <node concept="3clFbS" id="3LFq2p98r6f" role="9aQI4">
              <node concept="RRSsy" id="3LFq2p98rfn" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="3LFq2p98rfp" role="RRSoy">
                  <property role="Xl_RC" value="Coderules failed to initialize: TypecheckingBackend component not found" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3LFq2p98rrf" role="2uRRBF">
      <node concept="3clFbS" id="3LFq2p98rrg" role="2VODD2">
        <node concept="3clFbF" id="7cQXRE6zPjl" role="3cqZAp">
          <node concept="2OqwBi" id="7cQXRE6zPBU" role="3clFbG">
            <node concept="2OqwBi" id="7cQXRE6zPjf" role="2Oq$k0">
              <node concept="2WthIp" id="7cQXRE6zPji" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7cQXRE6zPjk" role="2OqNvi">
                <ref role="2WH_rO" node="7cQXRE6zO_k" resolve="providerToken" />
              </node>
            </node>
            <node concept="liA8E" id="7cQXRE6zQ8v" role="2OqNvi">
              <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderToken.uninstall()" resolve="uninstall" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cQXRE6zQgm" role="3cqZAp">
          <node concept="37vLTI" id="7cQXRE6zQ$E" role="3clFbG">
            <node concept="10Nm6u" id="7cQXRE6zQ_p" role="37vLTx" />
            <node concept="2OqwBi" id="7cQXRE6zQgg" role="37vLTJ">
              <node concept="2WthIp" id="7cQXRE6zQgj" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7cQXRE6zQgl" role="2OqNvi">
                <ref role="2WH_rO" node="7cQXRE6zO_k" resolve="providerToken" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KN3A4w98mK" role="3cqZAp">
          <node concept="2OqwBi" id="3KN3A4w98HL" role="3clFbG">
            <node concept="2OqwBi" id="3KN3A4w98tm" role="2Oq$k0">
              <node concept="2WthIp" id="3KN3A4w98mI" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3KN3A4w98$U" role="2OqNvi">
                <ref role="2WH_rO" node="3KN3A4w983R" resolve="provider" />
              </node>
            </node>
            <node concept="liA8E" id="3KN3A4w9cQ1" role="2OqNvi">
              <ref role="37wK5l" node="3KN3A4w9alp" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KN3A4w9cVJ" role="3cqZAp">
          <node concept="37vLTI" id="3KN3A4w9dkV" role="3clFbG">
            <node concept="10Nm6u" id="3KN3A4w9dlZ" role="37vLTx" />
            <node concept="2OqwBi" id="3KN3A4w9d2I" role="37vLTJ">
              <node concept="2WthIp" id="3KN3A4w9cVH" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3KN3A4w9dbo" role="2OqNvi">
                <ref role="2WH_rO" node="3KN3A4w983R" resolve="provider" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="siuT5mmCnU">
    <property role="TrG5h" value="CoderulesProviderLevel" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="siuT5mmF3e" role="jymVt" />
    <node concept="Wx3nA" id="siuT5mmFgw" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_CODERULES" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="siuT5mmEPA" role="1tU5fm" />
      <node concept="3Tm6S6" id="siuT5mmEP_" role="1B3o_S" />
      <node concept="Xl_RD" id="siuT5mmEPB" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.typechecking.coderules" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmZWY" role="jymVt" />
    <node concept="Wx3nA" id="siuT5mmZ4J" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_DEFAULT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="siuT5mmZ4K" role="1tU5fm" />
      <node concept="3Tm6S6" id="siuT5mmZ4L" role="1B3o_S" />
      <node concept="Xl_RD" id="siuT5mmZ4M" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.typechecking.default" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCrl" role="jymVt" />
    <node concept="3clFbW" id="siuT5mmS2P" role="jymVt">
      <node concept="3cqZAl" id="siuT5mmS2R" role="3clF45" />
      <node concept="3Tmbuc" id="siuT5mmT8o" role="1B3o_S" />
      <node concept="3clFbS" id="siuT5mmS2T" role="3clF47">
        <node concept="3SKdUt" id="siuT5mmUs1" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYyi8" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYyi9" role="1PaTwD">
              <property role="3oM_SC" value="available" />
            </node>
            <node concept="3oM_SD" id="589APehYyia" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="589APehYyib" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYyic" role="1PaTwD">
              <property role="3oM_SC" value="local" />
            </node>
            <node concept="3oM_SD" id="589APehYyid" role="1PaTwD">
              <property role="3oM_SC" value="package" />
            </node>
            <node concept="3oM_SD" id="589APehYyie" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmTj6" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCrR" role="jymVt">
      <property role="TrG5h" value="getLevelID" />
      <node concept="3Tm1VV" id="siuT5mmCrS" role="1B3o_S" />
      <node concept="17QB3L" id="siuT5mmHif" role="3clF45" />
      <node concept="3clFbS" id="siuT5mmCrV" role="3clF47">
        <node concept="3clFbF" id="siuT5mmFQe" role="3cqZAp">
          <node concept="37vLTw" id="siuT5mmFQc" role="3clFbG">
            <ref role="3cqZAo" node="siuT5mmFgw" resolve="TYPECHECKING_CODERULES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCrW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCZD" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCrZ" role="jymVt">
      <property role="TrG5h" value="compareTo" />
      <node concept="3Tm1VV" id="siuT5mmCs0" role="1B3o_S" />
      <node concept="10Oyi0" id="siuT5mmCs2" role="3clF45" />
      <node concept="37vLTG" id="siuT5mmCs3" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="siuT5mmCs7" role="1tU5fm">
          <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderLevel" resolve="TypecheckingBackend.ProviderLevel" />
        </node>
      </node>
      <node concept="3clFbS" id="siuT5mmCs8" role="3clF47">
        <node concept="3clFbJ" id="siuT5mn6k6" role="3cqZAp">
          <node concept="3clFbS" id="siuT5mn6k8" role="3clFbx">
            <node concept="3cpWs6" id="siuT5mnazL" role="3cqZAp">
              <node concept="3cmrfG" id="siuT5mna$o" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="siuT5mn7Mr" role="3clFbw">
            <node concept="37vLTw" id="siuT5mn7kn" role="2Oq$k0">
              <ref role="3cqZAo" node="siuT5mmFgw" resolve="TYPECHECKING_CODERULES" />
            </node>
            <node concept="liA8E" id="siuT5mn91i" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="siuT5mn9wE" role="37wK5m">
                <node concept="37vLTw" id="siuT5mn92$" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCs3" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mnajq" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderLevel.getLevelID()" resolve="getLevelID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="siuT5mmUwP" role="3cqZAp">
          <node concept="3clFbS" id="siuT5mmUwR" role="3clFbx">
            <node concept="3cpWs6" id="siuT5mn3pW" role="3cqZAp">
              <node concept="3cmrfG" id="siuT5mn4_K" role="3cqZAk">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="siuT5mn0WF" role="3clFbw">
            <node concept="37vLTw" id="siuT5mn0wk" role="2Oq$k0">
              <ref role="3cqZAo" node="siuT5mmZ4J" resolve="TYPECHECKING_DEFAULT" />
            </node>
            <node concept="liA8E" id="siuT5mn29P" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="siuT5mn2n3" role="37wK5m">
                <node concept="37vLTw" id="siuT5mn2aZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCs3" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mn39J" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderLevel.getLevelID()" resolve="getLevelID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="siuT5mndzv" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYyif" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYyig" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="589APehYyih" role="1PaTwD">
              <property role="3oM_SC" value="others" />
            </node>
            <node concept="3oM_SD" id="589APehYyii" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="589APehYyij" role="1PaTwD">
              <property role="3oM_SC" value="going" />
            </node>
            <node concept="3oM_SD" id="589APehYyik" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="589APehYyil" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="589APehYyim" role="1PaTwD">
              <property role="3oM_SC" value="lower" />
            </node>
            <node concept="3oM_SD" id="589APehYyin" role="1PaTwD">
              <property role="3oM_SC" value="priority" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="siuT5mnbcc" role="3cqZAp">
          <node concept="3cmrfG" id="siuT5mnbLf" role="3cqZAk">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCs9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCxF" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCAx" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="siuT5mmCAy" role="1B3o_S" />
      <node concept="10Oyi0" id="siuT5mmCA$" role="3clF45" />
      <node concept="3clFbS" id="siuT5mmCAB" role="3clF47">
        <node concept="3cpWs6" id="siuT5mmKLa" role="3cqZAp">
          <node concept="3cpWs3" id="siuT5mmKLb" role="3cqZAk">
            <node concept="17qRlL" id="siuT5mmKLc" role="3uHU7B">
              <node concept="2OqwBi" id="siuT5mmKLd" role="3uHU7B">
                <node concept="1rXfSq" id="siuT5mmKLe" role="2Oq$k0">
                  <ref role="37wK5l" node="siuT5mmCrR" resolve="getLevelID" />
                </node>
                <node concept="liA8E" id="siuT5mmKLf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="siuT5mmKLg" role="3uHU7w">
                <property role="3cmrfH" value="43" />
              </node>
            </node>
            <node concept="3cmrfG" id="siuT5mmKLh" role="3uHU7w">
              <property role="3cmrfH" value="23" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCAC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmHuz" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCAF" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="siuT5mmCAG" role="1B3o_S" />
      <node concept="10P_77" id="siuT5mmCAI" role="3clF45" />
      <node concept="37vLTG" id="siuT5mmCAJ" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="siuT5mmCAK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="siuT5mmCAN" role="3clF47">
        <node concept="3clFbF" id="siuT5mmMsw" role="3cqZAp">
          <node concept="1Wc70l" id="siuT5mmMUD" role="3clFbG">
            <node concept="2OqwBi" id="siuT5mmOkR" role="3uHU7w">
              <node concept="2OqwBi" id="siuT5mmNlK" role="2Oq$k0">
                <node concept="37vLTw" id="siuT5mmN6h" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCAJ" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mmNOV" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="liA8E" id="siuT5mmQmp" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="3VsKOn" id="siuT5mmR62" role="37wK5m">
                  <ref role="3VsUkX" node="siuT5mmCnU" resolve="CoderulesProviderLevel" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="siuT5mmMF5" role="3uHU7B">
              <node concept="37vLTw" id="siuT5mmMsv" role="3uHU7B">
                <ref role="3cqZAo" node="siuT5mmCAJ" resolve="that" />
              </node>
              <node concept="10Nm6u" id="siuT5mmMQp" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCAO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCro" role="jymVt" />
    <node concept="3Tm1VV" id="siuT5mmCnV" role="1B3o_S" />
    <node concept="3uibUv" id="siuT5mmCr1" role="EKbjA">
      <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderLevel" resolve="TypecheckingBackend.ProviderLevel" />
    </node>
  </node>
  <node concept="34j2dQ" id="uB9WAZagv8">
    <property role="TrG5h" value="Typechecking" />
    <node concept="34jfKJ" id="14pL6xi901F" role="34lFYf">
      <property role="TrG5h" value="typecheckingEnabled" />
      <node concept="10P_77" id="14pL6xi908u" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="14IknWHoSHp" role="34lFYf">
      <property role="TrG5h" value="incrementalityEnabled" />
      <node concept="10P_77" id="14IknWHoSOk" role="1tU5fm" />
    </node>
    <node concept="3yqqq6" id="uB9WAZagv9" role="3yq$HY">
      <property role="TrG5h" value="Typechecking" />
      <node concept="3B8pKI" id="uB9WAZagvb" role="3B8L_j">
        <node concept="3clFbS" id="uB9WAZagvc" role="2VODD2">
          <node concept="3cpWs8" id="14IknWHqGsJ" role="3cqZAp">
            <node concept="3cpWsn" id="14IknWHqGsM" role="3cpWs9">
              <property role="TrG5h" value="tcMod" />
              <node concept="10P_77" id="14IknWHqGsH" role="1tU5fm" />
              <node concept="3y3z36" id="14pL6xi9dkK" role="33vP2m">
                <node concept="2OqwBi" id="14pL6xi9emP" role="3uHU7w">
                  <node concept="3yMSdA" id="14pL6xi9dCf" role="2Oq$k0" />
                  <node concept="liA8E" id="14pL6xi9fo3" role="2OqNvi">
                    <ref role="37wK5l" node="14pL6xi8DQp" resolve="isTypecheckingEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="14pL6xi9cQu" role="3uHU7B">
                  <node concept="2OqwBi" id="14pL6xi9crN" role="2Oq$k0">
                    <node concept="2xqhHp" id="14pL6xi9c6t" role="2Oq$k0" />
                    <node concept="LR4Ub" id="14pL6xi9cLo" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="14pL6xi9cVA" role="2OqNvi">
                    <ref role="2WH_rO" node="14pL6xi901F" resolve="typecheckingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="14IknWHqHH0" role="3cqZAp">
            <node concept="3cpWsn" id="14IknWHqHH1" role="3cpWs9">
              <property role="TrG5h" value="incrMod" />
              <node concept="10P_77" id="14IknWHqHH2" role="1tU5fm" />
              <node concept="3y3z36" id="14IknWHqHH3" role="33vP2m">
                <node concept="2OqwBi" id="14IknWHqHH4" role="3uHU7w">
                  <node concept="3yMSdA" id="14IknWHqHH5" role="2Oq$k0" />
                  <node concept="liA8E" id="14IknWHqJ4P" role="2OqNvi">
                    <ref role="37wK5l" node="14IknWHqqMT" resolve="isIncrementalityEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="14IknWHqHH7" role="3uHU7B">
                  <node concept="2OqwBi" id="14IknWHqHH8" role="2Oq$k0">
                    <node concept="2xqhHp" id="14IknWHqHH9" role="2Oq$k0" />
                    <node concept="LR4Ub" id="14IknWHqHHa" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="14IknWHqIip" role="2OqNvi">
                    <ref role="2WH_rO" node="14IknWHoSHp" resolve="incrementalityEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="14IknWHqK7i" role="3cqZAp" />
          <node concept="3clFbF" id="14pL6xi9c6u" role="3cqZAp">
            <node concept="22lmx$" id="14IknWHqJHa" role="3clFbG">
              <node concept="37vLTw" id="14IknWHqK29" role="3uHU7w">
                <ref role="3cqZAo" node="14IknWHqHH1" resolve="incrMod" />
              </node>
              <node concept="37vLTw" id="14IknWHqJpJ" role="3uHU7B">
                <ref role="3cqZAo" node="14IknWHqGsM" resolve="tcMod" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="uB9WAZagvd" role="3y$9q5">
        <node concept="3clFbS" id="uB9WAZagve" role="2VODD2">
          <node concept="3clFbF" id="14pL6xi90$v" role="3cqZAp">
            <node concept="2OqwBi" id="14pL6xi9142" role="3clFbG">
              <node concept="3yMSdA" id="14pL6xi90$u" role="2Oq$k0" />
              <node concept="liA8E" id="14pL6xi91Mh" role="2OqNvi">
                <ref role="37wK5l" node="14pL6xi8xeo" resolve="setTypecheckingEnabled" />
                <node concept="2OqwBi" id="14pL6xi92Bg" role="37wK5m">
                  <node concept="2OqwBi" id="14pL6xi929V" role="2Oq$k0">
                    <node concept="2xqhHp" id="14pL6xi91Ni" role="2Oq$k0" />
                    <node concept="LR4Ub" id="14pL6xi92xW" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="14pL6xi92Hv" role="2OqNvi">
                    <ref role="2WH_rO" node="14pL6xi901F" resolve="typecheckingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="14IknWHqDJg" role="3cqZAp">
            <node concept="2OqwBi" id="14IknWHqDJh" role="3clFbG">
              <node concept="3yMSdA" id="14IknWHqDJi" role="2Oq$k0" />
              <node concept="liA8E" id="14IknWHqDJj" role="2OqNvi">
                <ref role="37wK5l" node="14IknWHqqMF" resolve="setIncrementalityEnabled" />
                <node concept="2OqwBi" id="14IknWHqDJk" role="37wK5m">
                  <node concept="2OqwBi" id="14IknWHqDJl" role="2Oq$k0">
                    <node concept="2xqhHp" id="14IknWHqDJm" role="2Oq$k0" />
                    <node concept="LR4Ub" id="14IknWHqDJn" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="14IknWHqEx_" role="2OqNvi">
                    <ref role="2WH_rO" node="14IknWHoSHp" resolve="incrementalityEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3y$hsl" id="uB9WAZagvf" role="3y$ekZ">
        <node concept="3clFbS" id="uB9WAZagvg" role="2VODD2">
          <node concept="3clFbF" id="14pL6xi95Ts" role="3cqZAp">
            <node concept="37vLTI" id="14pL6xi96W4" role="3clFbG">
              <node concept="2OqwBi" id="14pL6xi983E" role="37vLTx">
                <node concept="3yMSdA" id="14pL6xi97eH" role="2Oq$k0" />
                <node concept="liA8E" id="14pL6xi98Pn" role="2OqNvi">
                  <ref role="37wK5l" node="14pL6xi8DQp" resolve="isTypecheckingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="14pL6xi96zH" role="37vLTJ">
                <node concept="2OqwBi" id="14pL6xi96ae" role="2Oq$k0">
                  <node concept="2xqhHp" id="14pL6xi95Tr" role="2Oq$k0" />
                  <node concept="LR4Ub" id="14pL6xi96vL" role="2OqNvi">
                    <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                  </node>
                </node>
                <node concept="34pFcN" id="14pL6xi96CJ" role="2OqNvi">
                  <ref role="2WH_rO" node="14pL6xi901F" resolve="typecheckingEnabled" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="14IknWHqEAK" role="3cqZAp">
            <node concept="37vLTI" id="14IknWHqEAL" role="3clFbG">
              <node concept="2OqwBi" id="14IknWHqEAM" role="37vLTx">
                <node concept="3yMSdA" id="14IknWHqEAN" role="2Oq$k0" />
                <node concept="liA8E" id="14IknWHqFX8" role="2OqNvi">
                  <ref role="37wK5l" node="14IknWHqqMT" resolve="isIncrementalityEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="14IknWHqEAP" role="37vLTJ">
                <node concept="2OqwBi" id="14IknWHqEAQ" role="2Oq$k0">
                  <node concept="2xqhHp" id="14IknWHqEAR" role="2Oq$k0" />
                  <node concept="LR4Ub" id="14IknWHqEAS" role="2OqNvi">
                    <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                  </node>
                </node>
                <node concept="34pFcN" id="14IknWHqF82" role="2OqNvi">
                  <ref role="2WH_rO" node="14IknWHoSHp" resolve="incrementalityEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="uB9WAZaxl_" role="3yzNdQ">
        <node concept="1pGfFk" id="uB9WAZaB42" role="2ShVmc">
          <ref role="37wK5l" node="uB9WAZaAPl" resolve="TypecheckingSettingsPage" />
        </node>
      </node>
    </node>
    <node concept="3xWZ$M" id="5DUvKnrvIS3" role="3xXVxh">
      <node concept="3clFbS" id="5DUvKnrvIS4" role="2VODD2" />
    </node>
    <node concept="3xXM6Z" id="5DUvKnrvJbK" role="3xXSXp">
      <node concept="3clFbS" id="5DUvKnrvJbL" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="uB9WAZaAyD">
    <property role="TrG5h" value="TypecheckingSettingsPage" />
    <node concept="2tJIrI" id="uB9WAZaAFm" role="jymVt" />
    <node concept="3clFbW" id="uB9WAZaAPl" role="jymVt">
      <node concept="3cqZAl" id="uB9WAZaAPn" role="3clF45" />
      <node concept="3Tm1VV" id="uB9WAZaAPo" role="1B3o_S" />
      <node concept="3clFbS" id="uB9WAZaAPp" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8hJP" role="3cqZAp">
          <node concept="1rXfSq" id="14pL6xi8hJO" role="3clFbG">
            <ref role="37wK5l" node="14pL6xi8cOf" resolve="init" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14pL6xi8cEx" role="jymVt" />
    <node concept="3clFb_" id="14pL6xi8cOf" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="14pL6xi8cOh" role="3clF45" />
      <node concept="3Tm6S6" id="14pL6xi8cPL" role="1B3o_S" />
      <node concept="3clFbS" id="14pL6xi8cOj" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8lqD" role="3cqZAp">
          <node concept="1rXfSq" id="14pL6xi8lqB" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="14pL6xi8lQw" role="37wK5m">
              <node concept="1pGfFk" id="14pL6xi8pZx" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                <node concept="Xjq3P" id="14pL6xi8TH2" role="37wK5m" />
                <node concept="10M0yZ" id="14pL6xi8U_W" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                  <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="14pL6xi8cQr" role="3cqZAp" />
        <node concept="3clFbF" id="14pL6xi8ySK" role="3cqZAp">
          <node concept="37vLTI" id="14pL6xi8ySL" role="3clFbG">
            <node concept="2OqwBi" id="14pL6xi8ySM" role="37vLTJ">
              <node concept="Xjq3P" id="14pL6xi8ySN" role="2Oq$k0" />
              <node concept="2OwXpG" id="14pL6xi8ySO" role="2OqNvi">
                <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="14pL6xi8ySP" role="37vLTx">
              <node concept="1pGfFk" id="14pL6xi8ySQ" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                <node concept="Xl_RD" id="14pL6xi8ySR" role="37wK5m">
                  <property role="Xl_RC" value="Enable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14IknWHqlgz" role="3cqZAp">
          <node concept="37vLTI" id="14IknWHqlg$" role="3clFbG">
            <node concept="2OqwBi" id="14IknWHqlg_" role="37vLTJ">
              <node concept="Xjq3P" id="14IknWHqlgA" role="2Oq$k0" />
              <node concept="2OwXpG" id="14IknWHqmPx" role="2OqNvi">
                <ref role="2Oxat5" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="14IknWHqlgC" role="37vLTx">
              <node concept="1pGfFk" id="14IknWHqlgD" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                <node concept="Xl_RD" id="14IknWHqlgE" role="37wK5m">
                  <property role="Xl_RC" value="Enable incrementality" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="14pL6xi8JJi" role="3cqZAp" />
        <node concept="3clFbF" id="14pL6xi8KdM" role="3cqZAp">
          <node concept="1rXfSq" id="14pL6xi8KdK" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="2ShNRf" id="14pL6xi8KX9" role="37wK5m">
              <node concept="1pGfFk" id="14pL6xi8MpN" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="Xl_RD" id="14pL6xi8Odr" role="37wK5m">
                  <property role="Xl_RC" value="These options control the experimental typechecking feature." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14IknWHqozV" role="3cqZAp">
          <node concept="1rXfSq" id="14IknWHqozW" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="2OqwBi" id="14IknWHqozX" role="37wK5m">
              <node concept="Xjq3P" id="14IknWHqozY" role="2Oq$k0" />
              <node concept="2OwXpG" id="14IknWHqozZ" role="2OqNvi">
                <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14pL6xi8gJm" role="3cqZAp">
          <node concept="1rXfSq" id="14pL6xi8gJk" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="2OqwBi" id="14pL6xi8JqY" role="37wK5m">
              <node concept="Xjq3P" id="14pL6xi8JqZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="14IknWHqpZv" role="2OqNvi">
                <ref role="2Oxat5" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14pL6xi8wOZ" role="jymVt" />
    <node concept="3clFb_" id="14pL6xi8xeo" role="jymVt">
      <property role="TrG5h" value="setTypecheckingEnabled" />
      <node concept="37vLTG" id="14pL6xi8xnm" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="14pL6xi8yrw" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="14pL6xi8xeq" role="3clF45" />
      <node concept="3Tm1VV" id="14pL6xi8xer" role="1B3o_S" />
      <node concept="3clFbS" id="14pL6xi8xes" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8zZd" role="3cqZAp">
          <node concept="2OqwBi" id="14pL6xi8A$O" role="3clFbG">
            <node concept="2OqwBi" id="14pL6xi8$RA" role="2Oq$k0">
              <node concept="Xjq3P" id="14pL6xi8zZc" role="2Oq$k0" />
              <node concept="2OwXpG" id="14pL6xi8_E_" role="2OqNvi">
                <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="14pL6xi8CB8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="14pL6xi9qLK" role="37wK5m">
                <ref role="3cqZAo" node="14pL6xi8xnm" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14pL6xi8DQp" role="jymVt">
      <property role="TrG5h" value="isTypecheckingEnabled" />
      <node concept="10P_77" id="14pL6xi8EFZ" role="3clF45" />
      <node concept="3Tm1VV" id="14pL6xi8DQs" role="1B3o_S" />
      <node concept="3clFbS" id="14pL6xi8DQt" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8Gmw" role="3cqZAp">
          <node concept="2OqwBi" id="14pL6xi8HzU" role="3clFbG">
            <node concept="37vLTw" id="14pL6xi8Gmv" role="2Oq$k0">
              <ref role="3cqZAo" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
            </node>
            <node concept="liA8E" id="14pL6xi8IRQ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14IknWHqrtM" role="jymVt" />
    <node concept="3clFb_" id="14IknWHqqMF" role="jymVt">
      <property role="TrG5h" value="setIncrementalityEnabled" />
      <node concept="37vLTG" id="14IknWHqqMG" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="14IknWHqqMH" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="14IknWHqqMI" role="3clF45" />
      <node concept="3Tm1VV" id="14IknWHqqMJ" role="1B3o_S" />
      <node concept="3clFbS" id="14IknWHqqMK" role="3clF47">
        <node concept="3clFbF" id="14IknWHqqML" role="3cqZAp">
          <node concept="2OqwBi" id="14IknWHqqMM" role="3clFbG">
            <node concept="2OqwBi" id="14IknWHqqMN" role="2Oq$k0">
              <node concept="Xjq3P" id="14IknWHqqMO" role="2Oq$k0" />
              <node concept="2OwXpG" id="14IknWHqyC8" role="2OqNvi">
                <ref role="2Oxat5" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="14IknWHqqMQ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="14IknWHqqMR" role="37wK5m">
                <ref role="3cqZAo" node="14IknWHqqMG" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14IknWHqqMT" role="jymVt">
      <property role="TrG5h" value="isIncrementalityEnabled" />
      <node concept="10P_77" id="14IknWHqqMU" role="3clF45" />
      <node concept="3Tm1VV" id="14IknWHqqMV" role="1B3o_S" />
      <node concept="3clFbS" id="14IknWHqqMW" role="3clF47">
        <node concept="3clFbF" id="14IknWHqqMX" role="3cqZAp">
          <node concept="2OqwBi" id="14IknWHqqMY" role="3clFbG">
            <node concept="37vLTw" id="14IknWHqzBQ" role="2Oq$k0">
              <ref role="3cqZAo" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
            </node>
            <node concept="liA8E" id="14IknWHqqN0" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14IknWHqqnx" role="jymVt" />
    <node concept="2tJIrI" id="14pL6xi8zvf" role="jymVt" />
    <node concept="312cEg" id="14pL6xi8ySB" role="jymVt">
      <property role="TrG5h" value="enableTypecheckingCheckbox" />
      <node concept="3Tm6S6" id="14pL6xi8yS_" role="1B3o_S" />
      <node concept="3uibUv" id="14pL6xi8ySA" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="14IknWHoWnA" role="jymVt">
      <property role="TrG5h" value="enableIncrementalityCheckbox" />
      <node concept="3Tm6S6" id="14IknWHoWnB" role="1B3o_S" />
      <node concept="3uibUv" id="14IknWHoWnC" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="2tJIrI" id="uB9WAZaAFr" role="jymVt" />
    <node concept="3Tm1VV" id="uB9WAZaAyE" role="1B3o_S" />
    <node concept="3uibUv" id="uB9WAZaAEU" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
</model>

