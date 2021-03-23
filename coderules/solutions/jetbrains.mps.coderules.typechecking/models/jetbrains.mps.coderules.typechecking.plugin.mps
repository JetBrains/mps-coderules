<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.coderules.typechecking.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
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
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="mpcv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.ref(JDK/)" />
    <import index="2eq1" ref="r:383be79d-d39d-4dc4-9df3-57e57bcac2b5(jetbrains.mps.ide.platform.watching)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
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
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="1224500764161" name="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression" flags="nn" index="pVHWs" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="7024111702304501416" name="jetbrains.mps.baseLanguage.structure.OrAssignmentExpression" flags="nn" index="3vZ8r8" />
      <concept id="7024111702304501418" name="jetbrains.mps.baseLanguage.structure.AndAssignmentExpression" flags="nn" index="3vZ8ra" />
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
      <concept id="1225892208569" name="jetbrains.mps.baseLanguage.structure.ShiftLeftExpression" flags="nn" index="1GRDU$" />
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="3055999550620853964" name="jetbrains.mps.baseLanguage.collections.structure.RemoveWhereOperation" flags="nn" index="1aUR6E" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="2DaZZR" id="2zU3cYqx4HT" />
  <node concept="312cEu" id="7Tj_ODDR37X">
    <property role="TrG5h" value="CoderulesTypecheckingProvider" />
    <node concept="2tJIrI" id="3LFq2p98DGJ" role="jymVt" />
    <node concept="Wx3nA" id="1T5MAgPdbbl" role="jymVt">
      <property role="TrG5h" value="SHARED_STATE" />
      <node concept="3Tm6S6" id="1T5MAgPdbbn" role="1B3o_S" />
      <node concept="3uibUv" id="1T5MAgPdeow" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="1LlUBW" id="3VwM5b5TqDk" role="11_B2D">
          <node concept="3uibUv" id="3VwM5b5TtI1" role="1Lm7xW">
            <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
          </node>
          <node concept="3uibUv" id="3VwM5b5TuAH" role="1Lm7xW">
            <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="1T5MAgPdgzm" role="33vP2m">
        <node concept="1pGfFk" id="1T5MAgPdgmH" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
          <node concept="1LlUBW" id="3VwM5b5Tvu1" role="1pMfVU">
            <node concept="3uibUv" id="3VwM5b5Tvu2" role="1Lm7xW">
              <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
            </node>
            <node concept="3uibUv" id="3VwM5b5Tvu3" role="1Lm7xW">
              <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1T5MAgPd7N1" role="jymVt" />
    <node concept="3clFbW" id="3LFq2p98DNK" role="jymVt">
      <node concept="37vLTG" id="2tFDlV2dRYj" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="2tFDlV2dSvR" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="37vLTG" id="51ek2rRX220" role="3clF46">
        <property role="TrG5h" value="languageRegistry" />
        <node concept="3uibUv" id="51ek2rRX2vn" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
        </node>
      </node>
      <node concept="3cqZAl" id="3LFq2p98DNM" role="3clF45" />
      <node concept="3Tm1VV" id="3LFq2p98DNN" role="1B3o_S" />
      <node concept="3clFbS" id="3LFq2p98DNO" role="3clF47">
        <node concept="3clFbF" id="6hpwxwirfrx" role="3cqZAp">
          <node concept="37vLTI" id="6hpwxwirfrz" role="3clFbG">
            <node concept="2OqwBi" id="6hpwxwirhVy" role="37vLTJ">
              <node concept="Xjq3P" id="6hpwxwiri4r" role="2Oq$k0" />
              <node concept="2OwXpG" id="6hpwxwirhV_" role="2OqNvi">
                <ref role="2Oxat5" node="6hpwxwirfrt" resolve="config" />
              </node>
            </node>
            <node concept="37vLTw" id="6hpwxwirfrB" role="37vLTx">
              <ref role="3cqZAo" node="2tFDlV2dRYj" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="51ek2rRX2EB" role="3cqZAp">
          <node concept="37vLTI" id="51ek2rRX2ED" role="3clFbG">
            <node concept="2OqwBi" id="51ek2rRX4Y2" role="37vLTJ">
              <node concept="Xjq3P" id="51ek2rRX57b" role="2Oq$k0" />
              <node concept="2OwXpG" id="51ek2rRX4Y5" role="2OqNvi">
                <ref role="2Oxat5" node="51ek2rRX2Ez" resolve="languageRegistry" />
              </node>
            </node>
            <node concept="37vLTw" id="51ek2rRX2EH" role="37vLTx">
              <ref role="3cqZAo" node="51ek2rRX220" resolve="languageRegistry" />
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
        <node concept="3clFbF" id="6hpwxwiriGb" role="3cqZAp">
          <node concept="37vLTI" id="6hpwxwirju9" role="3clFbG">
            <node concept="10Nm6u" id="6hpwxwirjBW" role="37vLTx" />
            <node concept="2OqwBi" id="6hpwxwiriXy" role="37vLTJ">
              <node concept="Xjq3P" id="6hpwxwiriGa" role="2Oq$k0" />
              <node concept="2OwXpG" id="6hpwxwirjdp" role="2OqNvi">
                <ref role="2Oxat5" node="6hpwxwirfrt" resolve="config" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61G6TdBKyPA" role="3cqZAp">
          <node concept="37vLTI" id="61G6TdBKzHN" role="3clFbG">
            <node concept="10Nm6u" id="61G6TdBKzRV" role="37vLTx" />
            <node concept="2OqwBi" id="61G6TdBKz8n" role="37vLTJ">
              <node concept="Xjq3P" id="61G6TdBKyP$" role="2Oq$k0" />
              <node concept="2OwXpG" id="61G6TdBKzoe" role="2OqNvi">
                <ref role="2Oxat5" node="51ek2rRX2Ez" resolve="languageRegistry" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd7BALm" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd7BC73" role="3clFbG">
            <node concept="2OqwBi" id="1RYTbd7BBcp" role="2Oq$k0">
              <node concept="Xjq3P" id="1RYTbd7BALk" role="2Oq$k0" />
              <node concept="2OwXpG" id="1RYTbd7BBrS" role="2OqNvi">
                <ref role="2Oxat5" node="1RYTbd7AOyL" resolve="states" />
              </node>
            </node>
            <node concept="2es0OD" id="1RYTbd7BDgd" role="2OqNvi">
              <node concept="1bVj0M" id="1RYTbd7BDgf" role="23t8la">
                <node concept="3clFbS" id="1RYTbd7BDgg" role="1bW5cS">
                  <node concept="3clFbF" id="1RYTbd7BDAv" role="3cqZAp">
                    <node concept="2OqwBi" id="1RYTbd7BDPq" role="3clFbG">
                      <node concept="37vLTw" id="1RYTbd7BDAu" role="2Oq$k0">
                        <ref role="3cqZAo" node="1RYTbd7BDgh" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1RYTbd7BE9H" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1RYTbd7BDgh" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1RYTbd7BDgi" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd7BEK9" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd7BG5b" role="3clFbG">
            <node concept="2OqwBi" id="1RYTbd7BFfm" role="2Oq$k0">
              <node concept="Xjq3P" id="1RYTbd7BEK7" role="2Oq$k0" />
              <node concept="2OwXpG" id="1RYTbd7BFvE" role="2OqNvi">
                <ref role="2Oxat5" node="1RYTbd7AOyL" resolve="states" />
              </node>
            </node>
            <node concept="2EZike" id="1RYTbd7BH2Z" role="2OqNvi" />
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
          <node concept="22lmx$" id="6gnqipLx4MG" role="3clFbw">
            <node concept="3clFbC" id="6gnqipLx8IZ" role="3uHU7B">
              <node concept="10Nm6u" id="6gnqipLx96_" role="3uHU7w" />
              <node concept="37vLTw" id="6gnqipLx8j0" role="3uHU7B">
                <ref role="3cqZAo" node="6hpwxwirfrt" resolve="config" />
              </node>
            </node>
            <node concept="3fqX7Q" id="6AP7iI4IxSj" role="3uHU7w">
              <node concept="2OqwBi" id="1z4$59ipyOG" role="3fr31v">
                <node concept="10M0yZ" id="1z4$59ipyOH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvT$FWp" resolve="TYPECHECKING_ENABLED" />
                  <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                </node>
                <node concept="liA8E" id="1z4$59ipyOI" role="2OqNvi">
                  <ref role="37wK5l" to="31yc:7iCybvT$ANq" resolve="get" />
                  <node concept="37vLTw" id="1z4$59ipyOJ" role="37wK5m">
                    <ref role="3cqZAo" node="6hpwxwirfrt" resolve="config" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="61G6TdBLdbt" role="3cqZAp" />
        <node concept="3SKdUt" id="61G6TdBL9Xu" role="3cqZAp">
          <node concept="1PaTwC" id="61G6TdBL9Xv" role="1aUNEU">
            <node concept="3oM_SD" id="61G6TdBL9Xw" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="61G6TdBLbRO" role="1PaTwD">
              <property role="3oM_SC" value="hack" />
            </node>
            <node concept="3oM_SD" id="61G6TdBLdbh" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61G6TdBKBsv" role="3cqZAp">
          <node concept="3cpWsn" id="61G6TdBKBsw" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="61G6TdBK_YB" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="1rXfSq" id="61G6TdBKBsx" role="33vP2m">
              <ref role="37wK5l" node="4MaHsBDes9w" resolve="discoverMPSProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61G6TdBKGqC" role="3cqZAp">
          <node concept="3cpWsn" id="61G6TdBKGqD" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="61G6TdBKGpY" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="61G6TdBKGqE" role="33vP2m">
              <node concept="37vLTw" id="61G6TdBKGqF" role="2Oq$k0">
                <ref role="3cqZAo" node="61G6TdBKBsw" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="61G6TdBKGqG" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="61G6TdBKNlF" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4uZFCY" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uZFCZ" role="3cpWs9">
            <property role="TrG5h" value="discoverable" />
            <node concept="3uibUv" id="3KN3A4uZFjJ" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:NKt6ynom3d" resolve="AspectDiscoverable" />
              <node concept="3uibUv" id="6nx4rRkXlnq" role="11_B2D">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
              <node concept="3uibUv" id="3KN3A4uZFjM" role="11_B2D">
                <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
            <node concept="2YIFZM" id="3KN3A4uZFD0" role="33vP2m">
              <ref role="37wK5l" to="fqlx:78H58oefoaA" resolve="discoverable" />
              <ref role="1Pybhc" to="fqlx:NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
              <node concept="3VsKOn" id="3KN3A4uZFD1" role="37wK5m">
                <ref role="3VsUkX" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ceN1hCDrNK" role="3cqZAp" />
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
        <node concept="3cpWs8" id="28pgdQnWgQ0" role="3cqZAp">
          <node concept="3cpWsn" id="28pgdQnWgQ1" role="3cpWs9">
            <property role="TrG5h" value="srcLangs" />
            <node concept="_YKpA" id="28pgdQnWgQ2" role="1tU5fm">
              <node concept="3uibUv" id="28pgdQnWgQ3" role="_ZDj9">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="51ek2rRvRTX" role="33vP2m">
              <node concept="Tc6Ow" id="51ek2rRvRL1" role="2ShVmc">
                <node concept="3uibUv" id="51ek2rRvRL2" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="51ek2rRvWC2" role="3cqZAp">
          <node concept="3clFbS" id="51ek2rRvWC4" role="3clFbx">
            <node concept="3clFbF" id="51ek2rRw7z0" role="3cqZAp">
              <node concept="2OqwBi" id="51ek2rRw917" role="3clFbG">
                <node concept="37vLTw" id="51ek2rRw7yY" role="2Oq$k0">
                  <ref role="3cqZAo" node="28pgdQnWgQ1" resolve="srcLangs" />
                </node>
                <node concept="X8dFx" id="51ek2rRwazc" role="2OqNvi">
                  <node concept="1rXfSq" id="51ek2rRwc8Q" role="25WWJ7">
                    <ref role="37wK5l" node="2ceN1hCDzto" resolve="directlyUsedLanguages" />
                    <node concept="37vLTw" id="51ek2rRwc8R" role="37wK5m">
                      <ref role="3cqZAo" node="uB9WAZ6Tj1" resolve="srcModel" />
                    </node>
                    <node concept="37vLTw" id="61G6TdBL5T7" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdBKGqD" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="51ek2rRw1hB" role="3clFbw">
            <node concept="10Nm6u" id="51ek2rRw2Io" role="3uHU7w" />
            <node concept="37vLTw" id="51ek2rRvZxH" role="3uHU7B">
              <ref role="3cqZAo" node="uB9WAZ6Tj1" resolve="srcModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14oWJ2NIVSo" role="3cqZAp">
          <node concept="2OqwBi" id="14oWJ2NIY1y" role="3clFbG">
            <node concept="37vLTw" id="14oWJ2NIVSm" role="2Oq$k0">
              <ref role="3cqZAo" node="28pgdQnWgQ1" resolve="srcLangs" />
            </node>
            <node concept="X8dFx" id="14oWJ2NJhQx" role="2OqNvi">
              <node concept="1rXfSq" id="14oWJ2NJj8S" role="25WWJ7">
                <ref role="37wK5l" node="14oWJ2NGjem" resolve="getAllLanguages" />
                <node concept="37vLTw" id="14oWJ2NJlBP" role="37wK5m">
                  <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ceN1hCDCZX" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDCZY" role="3cpWs9">
            <property role="TrG5h" value="srcCliques" />
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
              <node concept="37vLTw" id="28pgdQnWgQ6" role="37wK5m">
                <ref role="3cqZAo" node="28pgdQnWgQ1" resolve="srcLangs" />
              </node>
              <node concept="37vLTw" id="2ceN1hCDD02" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51ek2rR07P7" role="3cqZAp" />
        <node concept="3cpWs8" id="2ceN1hCE33i" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCE33j" role="3cpWs9">
            <property role="TrG5h" value="trgCliques" />
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
        <node concept="3cpWs8" id="28pgdQnWo0s" role="3cqZAp">
          <node concept="3cpWsn" id="28pgdQnWo0t" role="3cpWs9">
            <property role="TrG5h" value="trgLangs" />
            <node concept="_YKpA" id="28pgdQnWo0u" role="1tU5fm">
              <node concept="3uibUv" id="28pgdQnWo0v" role="_ZDj9">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="51ek2rR0$_y" role="33vP2m">
              <node concept="Tc6Ow" id="51ek2rR0$sA" role="2ShVmc">
                <node concept="3uibUv" id="51ek2rR0$sB" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="51ek2rR0SIF" role="3cqZAp">
          <node concept="3clFbS" id="51ek2rR0SIH" role="3clFbx">
            <node concept="3clFbJ" id="2ceN1hCE7dS" role="3cqZAp">
              <node concept="3clFbS" id="2ceN1hCE7dU" role="3clFbx">
                <node concept="3clFbF" id="51ek2rR0_Yh" role="3cqZAp">
                  <node concept="2OqwBi" id="51ek2rR0Ba2" role="3clFbG">
                    <node concept="37vLTw" id="51ek2rR0_Yf" role="2Oq$k0">
                      <ref role="3cqZAo" node="28pgdQnWo0t" resolve="trgLangs" />
                    </node>
                    <node concept="X8dFx" id="51ek2rR0C47" role="2OqNvi">
                      <node concept="1rXfSq" id="51ek2rR0C86" role="25WWJ7">
                        <ref role="37wK5l" node="2ceN1hCDzto" resolve="directlyUsedLanguages" />
                        <node concept="2OqwBi" id="51ek2rR1dB_" role="37wK5m">
                          <node concept="37vLTw" id="51ek2rR1dBA" role="2Oq$k0">
                            <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                          </node>
                          <node concept="liA8E" id="51ek2rR1dBB" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="61G6TdBL6HV" role="37wK5m">
                          <ref role="3cqZAo" node="61G6TdBKGqD" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2ceN1hCE9bq" role="3clFbw">
                <node concept="10Nm6u" id="2ceN1hCE9zs" role="3uHU7w" />
                <node concept="1eOMI4" id="51ek2rR1dB$" role="3uHU7B">
                  <node concept="2OqwBi" id="51ek2rR1dBx" role="1eOMHV">
                    <node concept="37vLTw" id="51ek2rR1dBy" role="2Oq$k0">
                      <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                    </node>
                    <node concept="liA8E" id="51ek2rR1dBz" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="14oWJ2NJt$W" role="3cqZAp">
              <node concept="2OqwBi" id="14oWJ2NJt$X" role="3clFbG">
                <node concept="37vLTw" id="Q_4x909Tkz" role="2Oq$k0">
                  <ref role="3cqZAo" node="28pgdQnWo0t" resolve="trgLangs" />
                </node>
                <node concept="X8dFx" id="14oWJ2NJt$Z" role="2OqNvi">
                  <node concept="1rXfSq" id="14oWJ2NJt_0" role="25WWJ7">
                    <ref role="37wK5l" node="14oWJ2NGjem" resolve="getAllLanguages" />
                    <node concept="37vLTw" id="Q_4x909U4N" role="37wK5m">
                      <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="51ek2rR0VpS" role="3clFbw">
            <node concept="10Nm6u" id="51ek2rR0XIF" role="3uHU7w" />
            <node concept="37vLTw" id="51ek2rR0UIU" role="3uHU7B">
              <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="14oWJ2NJ$j0" role="3cqZAp">
          <node concept="3clFbS" id="14oWJ2NJ$j2" role="3clFbx">
            <node concept="3clFbF" id="14oWJ2NJL7Q" role="3cqZAp">
              <node concept="2OqwBi" id="14oWJ2NJNf4" role="3clFbG">
                <node concept="37vLTw" id="Q_4x909ZDq" role="2Oq$k0">
                  <ref role="3cqZAo" node="28pgdQnWo0t" resolve="trgLangs" />
                </node>
                <node concept="TSZUe" id="14oWJ2NJWCu" role="2OqNvi">
                  <node concept="2OqwBi" id="51ek2rRXbXN" role="25WWJ7">
                    <node concept="37vLTw" id="51ek2rRXbXO" role="2Oq$k0">
                      <ref role="3cqZAo" node="51ek2rRX2Ez" resolve="languageRegistry" />
                    </node>
                    <node concept="liA8E" id="51ek2rRXbXP" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                      <node concept="2OqwBi" id="51ek2rRXbXQ" role="37wK5m">
                        <node concept="37vLTw" id="51ek2rRXbXR" role="2Oq$k0">
                          <ref role="3cqZAo" node="5BwsbZJDRzL" resolve="concept" />
                        </node>
                        <node concept="liA8E" id="51ek2rRXbXS" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="51ek2rR$gy8" role="3clFbw">
            <node concept="3y3z36" id="51ek2rR$h_S" role="3uHU7w">
              <node concept="10Nm6u" id="51ek2rR$hN0" role="3uHU7w" />
              <node concept="37vLTw" id="51ek2rR$hm3" role="3uHU7B">
                <ref role="3cqZAo" node="uB9WAZ6Tj1" resolve="srcModel" />
              </node>
            </node>
            <node concept="3y3z36" id="14oWJ2NJDx_" role="3uHU7B">
              <node concept="37vLTw" id="14oWJ2NJBz8" role="3uHU7B">
                <ref role="3cqZAo" node="5BwsbZJDRzL" resolve="concept" />
              </node>
              <node concept="10Nm6u" id="14oWJ2NJDE$" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="51ek2rR1I_8" role="3cqZAp">
          <node concept="3clFbS" id="51ek2rR1I_a" role="3clFbx">
            <node concept="3clFbF" id="2ceN1hCE4yF" role="3cqZAp">
              <node concept="37vLTI" id="2ceN1hCE4yH" role="3clFbG">
                <node concept="2YIFZM" id="2ceN1hCE33n" role="37vLTx">
                  <ref role="37wK5l" to="fqlx:3KN3A4uV0IR" resolve="discoverAspects" />
                  <ref role="1Pybhc" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                  <node concept="37vLTw" id="28pgdQnWo0y" role="37wK5m">
                    <ref role="3cqZAo" node="28pgdQnWo0t" resolve="trgLangs" />
                  </node>
                  <node concept="37vLTw" id="2ceN1hCE33r" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
                  </node>
                </node>
                <node concept="37vLTw" id="2ceN1hCE4yL" role="37vLTJ">
                  <ref role="3cqZAo" node="2ceN1hCE33j" resolve="trgCliques" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="51ek2rR1NXn" role="3clFbw">
            <node concept="37vLTw" id="51ek2rR1Mja" role="2Oq$k0">
              <ref role="3cqZAo" node="28pgdQnWo0t" resolve="trgLangs" />
            </node>
            <node concept="3GX2aA" id="51ek2rR1Pz5" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="51ek2rRUoYp" role="3cqZAp" />
        <node concept="3SKdUt" id="4ekZiHe5KcZ" role="3cqZAp">
          <node concept="1PaTwC" id="4ekZiHe5Kd0" role="1aUNEU">
            <node concept="3oM_SD" id="4ekZiHe5Kd2" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MDv" role="1PaTwD">
              <property role="3oM_SC" value="clique" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5ME2" role="1PaTwD">
              <property role="3oM_SC" value="lists" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MEe" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MEz" role="1PaTwD">
              <property role="3oM_SC" value="contain" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MGU" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MEL" role="1PaTwD">
              <property role="3oM_SC" value="non-empty" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MF0" role="1PaTwD">
              <property role="3oM_SC" value="cliques" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MFo" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MFx" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MHf" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MHz" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4ekZiHe5MHS" role="1PaTwD">
              <property role="3oM_SC" value="relevant" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51ek2rRUyTX" role="3cqZAp">
          <node concept="3cpWsn" id="51ek2rRUyU0" role="3cpWs9">
            <property role="TrG5h" value="applicable" />
            <node concept="10P_77" id="51ek2rRUyTV" role="1tU5fm" />
            <node concept="3fqX7Q" id="51ek2rRUDCe" role="33vP2m">
              <node concept="2OqwBi" id="51ek2rRUDCg" role="3fr31v">
                <node concept="37vLTw" id="51ek2rRUDCh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2ceN1hCDCZY" resolve="srcCliques" />
                </node>
                <node concept="2HxqBE" id="51ek2rRUDCi" role="2OqNvi">
                  <node concept="1bVj0M" id="51ek2rRUDCj" role="23t8la">
                    <node concept="3clFbS" id="51ek2rRUDCk" role="1bW5cS">
                      <node concept="3clFbF" id="51ek2rRUDCl" role="3cqZAp">
                        <node concept="2OqwBi" id="51ek2rRUDCm" role="3clFbG">
                          <node concept="37vLTw" id="51ek2rRUDCn" role="2Oq$k0">
                            <ref role="3cqZAo" node="51ek2rRUDCp" resolve="it" />
                          </node>
                          <node concept="liA8E" id="51ek2rRUDCo" role="2OqNvi">
                            <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="51ek2rRUDCp" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="51ek2rRUDCq" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="51ek2rR1D66" role="3cqZAp">
          <node concept="3clFbS" id="51ek2rR1D68" role="3clFbx">
            <node concept="3clFbF" id="51ek2rRUMsz" role="3cqZAp">
              <node concept="3vZ8ra" id="51ek2rRUQ9v" role="3clFbG">
                <node concept="37vLTw" id="51ek2rRUMsx" role="37vLTJ">
                  <ref role="3cqZAo" node="51ek2rRUyU0" resolve="applicable" />
                </node>
                <node concept="3fqX7Q" id="51ek2rRUQuj" role="37vLTx">
                  <node concept="2OqwBi" id="51ek2rRUQul" role="3fr31v">
                    <node concept="37vLTw" id="51ek2rRUQum" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ceN1hCE33j" resolve="trgCliques" />
                    </node>
                    <node concept="2HxqBE" id="51ek2rRUQun" role="2OqNvi">
                      <node concept="1bVj0M" id="51ek2rRUQuo" role="23t8la">
                        <node concept="3clFbS" id="51ek2rRUQup" role="1bW5cS">
                          <node concept="3clFbF" id="51ek2rRUQuq" role="3cqZAp">
                            <node concept="2OqwBi" id="51ek2rRUQur" role="3clFbG">
                              <node concept="37vLTw" id="51ek2rRUQus" role="2Oq$k0">
                                <ref role="3cqZAo" node="51ek2rRUQuu" resolve="it" />
                              </node>
                              <node concept="liA8E" id="51ek2rRUQut" role="2OqNvi">
                                <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="51ek2rRUQuu" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="51ek2rRUQuv" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="51ek2rR1Wfg" role="3clFbw">
            <node concept="3y3z36" id="51ek2rR1URh" role="3uHU7B">
              <node concept="37vLTw" id="51ek2rR1SXX" role="3uHU7B">
                <ref role="3cqZAo" node="2ceN1hCE33j" resolve="trgCliques" />
              </node>
              <node concept="10Nm6u" id="51ek2rR1W5t" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="51ek2rR1XIt" role="3uHU7w">
              <node concept="37vLTw" id="51ek2rR1XIu" role="2Oq$k0">
                <ref role="3cqZAo" node="2ceN1hCE33j" resolve="trgCliques" />
              </node>
              <node concept="2HxqBE" id="51ek2rR52s1" role="2OqNvi">
                <node concept="1bVj0M" id="51ek2rR52s3" role="23t8la">
                  <node concept="3clFbS" id="51ek2rR52s4" role="1bW5cS">
                    <node concept="3clFbF" id="51ek2rR52s5" role="3cqZAp">
                      <node concept="2OqwBi" id="51ek2rR52s6" role="3clFbG">
                        <node concept="37vLTw" id="51ek2rR52s7" role="2Oq$k0">
                          <ref role="3cqZAo" node="51ek2rR52s9" resolve="it" />
                        </node>
                        <node concept="liA8E" id="51ek2rR52s8" role="2OqNvi">
                          <ref role="37wK5l" to="fqlx:4ekZiHe4j$O" resolve="isEmpty" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="51ek2rR52s9" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="51ek2rR52sa" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51ek2rRV5zt" role="3cqZAp" />
        <node concept="3clFbF" id="51ek2rRV1wf" role="3cqZAp">
          <node concept="37vLTw" id="51ek2rRV1wc" role="3clFbG">
            <ref role="3cqZAo" node="51ek2rRUyU0" resolve="applicable" />
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
      <node concept="37vLTG" id="61G6TdBKQNM" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="61G6TdBKUr3" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="2ceN1hCDzsv" role="3clF47">
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
                  <node concept="37vLTw" id="51ek2rRXvSk" role="37wK5m">
                    <ref role="3cqZAo" node="51ek2rRX2Ez" resolve="languageRegistry" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBL0dN" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBKQNM" resolve="repository" />
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
                        <node concept="37vLTw" id="51ek2rRXz40" role="2Oq$k0">
                          <ref role="3cqZAo" node="51ek2rRX2Ez" resolve="languageRegistry" />
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
    <node concept="3clFb_" id="14oWJ2NGjem" role="jymVt">
      <property role="TrG5h" value="getAllLanguages" />
      <node concept="37vLTG" id="14oWJ2NGjen" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="51ek2rRXeGB" role="1tU5fm" />
      </node>
      <node concept="_YKpA" id="14oWJ2NGvfp" role="3clF45">
        <node concept="3uibUv" id="14oWJ2NGvfq" role="_ZDj9">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6gnqipLvz$l" role="1B3o_S" />
      <node concept="3clFbS" id="14oWJ2NGjet" role="3clF47">
        <node concept="3clFbF" id="14oWJ2NHm4r" role="3cqZAp">
          <node concept="2OqwBi" id="14oWJ2NI6aJ" role="3clFbG">
            <node concept="2OqwBi" id="Q_4x90a4xa" role="2Oq$k0">
              <node concept="2OqwBi" id="14oWJ2NHxBW" role="2Oq$k0">
                <node concept="2OqwBi" id="14oWJ2NHnUm" role="2Oq$k0">
                  <node concept="37vLTw" id="14oWJ2NHm4p" role="2Oq$k0">
                    <ref role="3cqZAo" node="14oWJ2NGjen" resolve="node" />
                  </node>
                  <node concept="2Rf3mk" id="51ek2rRXgpl" role="2OqNvi">
                    <node concept="1xIGOp" id="51ek2rRXgpn" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3$u5V9" id="14oWJ2NHCyS" role="2OqNvi">
                  <node concept="1bVj0M" id="14oWJ2NHCyU" role="23t8la">
                    <node concept="3clFbS" id="14oWJ2NHCyV" role="1bW5cS">
                      <node concept="3clFbF" id="14oWJ2NHDE7" role="3cqZAp">
                        <node concept="2OqwBi" id="14oWJ2NHDE9" role="3clFbG">
                          <node concept="37vLTw" id="51ek2rRXgWB" role="2Oq$k0">
                            <ref role="3cqZAo" node="51ek2rRX2Ez" resolve="languageRegistry" />
                          </node>
                          <node concept="liA8E" id="14oWJ2NHDEb" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                            <node concept="2OqwBi" id="14oWJ2NHWut" role="37wK5m">
                              <node concept="2OqwBi" id="14oWJ2NHDEc" role="2Oq$k0">
                                <node concept="2JrnkZ" id="HwwsI3nqYJ" role="2Oq$k0">
                                  <node concept="37vLTw" id="14oWJ2NHILp" role="2JrQYb">
                                    <ref role="3cqZAo" node="14oWJ2NHCyW" resolve="it" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="14oWJ2NHUB6" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                </node>
                              </node>
                              <node concept="liA8E" id="14oWJ2NI0_W" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="14oWJ2NHCyW" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="14oWJ2NHCyX" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1VAtEI" id="Q_4x90a5dP" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="14oWJ2NIc1a" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14oWJ2NGjel" role="jymVt" />
    <node concept="3clFb_" id="4MaHsBDes9w" role="jymVt">
      <property role="TrG5h" value="discoverMPSProject" />
      <node concept="3uibUv" id="4MaHsBDesQv" role="3clF45">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="3Tm6S6" id="4MaHsBDes9y" role="1B3o_S" />
      <node concept="3clFbS" id="4MaHsBDes9$" role="3clF47">
        <node concept="3SKdUt" id="4MaHsBDewQT" role="3cqZAp">
          <node concept="1PaTwC" id="4MaHsBDexlu" role="1aUNEU">
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
          <node concept="1PaTwC" id="4MaHsBDexBe" role="1aUNEU">
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
    <node concept="2tJIrI" id="14IknWHovsQ" role="jymVt" />
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
        <node concept="3uibUv" id="2mhJggj0Hz7" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
        </node>
      </node>
      <node concept="3clFbS" id="lvX$8VFrSg" role="3clF47">
        <node concept="3cpWs8" id="5cBWTAehT4F" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAehT4G" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="5cBWTAehS4q" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="1rXfSq" id="5cBWTAehT4H" role="33vP2m">
              <ref role="37wK5l" node="4MaHsBDes9w" resolve="discoverMPSProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1T5MAgPdL7n" role="3cqZAp">
          <node concept="3cpWsn" id="1T5MAgPdL7o" role="3cpWs9">
            <property role="TrG5h" value="typesModuleOwner" />
            <node concept="3uibUv" id="1T5MAgPdL0s" role="1tU5fm">
              <ref role="3uigEE" to="tj24:1z4$59jK85m" resolve="TypesModuleOwner" />
            </node>
            <node concept="2YIFZM" id="1T5MAgPdL7p" role="33vP2m">
              <ref role="1Pybhc" to="tj24:1z4$59jK85m" resolve="TypesModuleOwner" />
              <ref role="37wK5l" to="tj24:1z4$59jKaUN" resolve="get" />
              <node concept="2OqwBi" id="1T5MAgPdL7q" role="37wK5m">
                <node concept="37vLTw" id="1T5MAgPdL7r" role="2Oq$k0">
                  <ref role="3cqZAo" node="5cBWTAehT4G" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="1T5MAgPdL7s" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3VwM5b5TB$W" role="3cqZAp">
          <node concept="3cpWsn" id="3VwM5b5TB$X" role="3cpWs9">
            <property role="TrG5h" value="sharedStateFlags" />
            <node concept="3uibUv" id="3VwM5b5TB$Y" role="1tU5fm">
              <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
            </node>
            <node concept="10Nm6u" id="3VwM5b5TEZa" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5cBWTAejqot" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAejqou" role="3cpWs9">
            <property role="TrG5h" value="effectiveState" />
            <node concept="3uibUv" id="5cBWTAejqmm" role="1tU5fm">
              <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
            </node>
            <node concept="10Nm6u" id="17DrR$SXV9V" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="17DrR$SXIsg" role="3cqZAp">
          <node concept="3cpWsn" id="17DrR$SXIsj" role="3cpWs9">
            <property role="TrG5h" value="editorSession" />
            <node concept="10P_77" id="17DrR$SXIse" role="1tU5fm" />
            <node concept="1Wc70l" id="17DrR$SXJ3_" role="33vP2m">
              <node concept="3y3z36" id="17DrR$SXJ3A" role="3uHU7B">
                <node concept="10Nm6u" id="17DrR$SXJ3B" role="3uHU7w" />
                <node concept="2OqwBi" id="17DrR$SXJ3C" role="3uHU7B">
                  <node concept="37vLTw" id="17DrR$SXJ3D" role="2Oq$k0">
                    <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                  </node>
                  <node concept="liA8E" id="17DrR$SXJ3E" role="2OqNvi">
                    <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getRoot()" resolve="getRoot" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="17DrR$SXJ3F" role="3uHU7w">
                <node concept="37vLTw" id="17DrR$SXJ3G" role="2Oq$k0">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="liA8E" id="17DrR$SXJ3H" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.isIncremental()" resolve="isIncremental" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1T5MAgPlrgR" role="3cqZAp">
          <node concept="3cpWsn" id="1T5MAgPlrgS" role="3cpWs9">
            <property role="TrG5h" value="usingSharedState" />
            <node concept="10P_77" id="1T5MAgPlcJ5" role="1tU5fm" />
            <node concept="3clFbT" id="1T5MAgPlu7e" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5XNK1Yzpq3G" role="3cqZAp">
          <node concept="3cpWsn" id="5XNK1Yzpq3H" role="3cpWs9">
            <property role="TrG5h" value="createSharedState" />
            <node concept="10P_77" id="5XNK1Yzo0Jp" role="1tU5fm" />
            <node concept="22lmx$" id="17DrR$RvO9H" role="33vP2m">
              <node concept="2OqwBi" id="3VwM5b5SZPY" role="3uHU7B">
                <node concept="37vLTw" id="3VwM5b5SZPZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="liA8E" id="3VwM5b5SZQ0" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.isGenerator()" resolve="isGenerator" />
                </node>
              </node>
              <node concept="1eOMI4" id="17DrR$RvONZ" role="3uHU7w">
                <node concept="1Wc70l" id="17DrR$RvPNv" role="1eOMHV">
                  <node concept="3clFbC" id="17DrR$RvSXX" role="3uHU7w">
                    <node concept="10Nm6u" id="17DrR$RvTGI" role="3uHU7w" />
                    <node concept="2OqwBi" id="17DrR$RvS1h" role="3uHU7B">
                      <node concept="37vLTw" id="17DrR$RvQud" role="2Oq$k0">
                        <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                      </node>
                      <node concept="liA8E" id="17DrR$RvSvA" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="17DrR$RvPoo" role="3uHU7B">
                    <node concept="37vLTw" id="17DrR$RvP3x" role="2Oq$k0">
                      <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                    </node>
                    <node concept="liA8E" id="17DrR$RvPH2" role="2OqNvi">
                      <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.isBasic()" resolve="isBasic" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5XNK1Yzpq$u" role="3cqZAp">
          <node concept="3cpWsn" id="5XNK1Yzpq$v" role="3cpWs9">
            <property role="TrG5h" value="publishTypes" />
            <node concept="10P_77" id="5XNK1Yzpqea" role="1tU5fm" />
            <node concept="3clFbT" id="17DrR$RwTJN" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="1T5MAgPdhk4" role="3cqZAp">
          <node concept="3clFbS" id="1T5MAgPdhk6" role="3clFbx">
            <node concept="3clFbJ" id="1T5MAgPdkBj" role="3cqZAp">
              <node concept="3clFbS" id="1T5MAgPdkB_" role="3clFbx">
                <node concept="3cpWs8" id="1RYTbd7GbKf" role="3cqZAp">
                  <node concept="3cpWsn" id="1RYTbd7GbKg" role="3cpWs9">
                    <property role="TrG5h" value="sharedState" />
                    <node concept="3uibUv" id="1RYTbd7FZ9H" role="1tU5fm">
                      <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
                    </node>
                    <node concept="1LFfDK" id="1RYTbd7GbKh" role="33vP2m">
                      <node concept="3cmrfG" id="1RYTbd7GbKi" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="1RYTbd7GbKj" role="1LFl5Q">
                        <node concept="37vLTw" id="1RYTbd7GbKk" role="2Oq$k0">
                          <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                        </node>
                        <node concept="liA8E" id="1RYTbd7GbKl" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1T5MAgPdl2l" role="3cqZAp">
                  <node concept="2OqwBi" id="1T5MAgPdlfX" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7GbKm" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7GbKg" resolve="sharedState" />
                    </node>
                    <node concept="liA8E" id="1T5MAgPdlpj" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1RYTbd7GdTR" role="3cqZAp">
                  <node concept="2OqwBi" id="1RYTbd7GeMX" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7GdTP" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
                    </node>
                    <node concept="3dhRuq" id="1RYTbd7GfM$" role="2OqNvi">
                      <node concept="37vLTw" id="1RYTbd7GhgR" role="25WWJ7">
                        <ref role="3cqZAo" node="1RYTbd7GbKg" resolve="sharedState" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1T5MAgPdklu" role="3clFbw">
                <node concept="10Nm6u" id="1T5MAgPdkyz" role="3uHU7w" />
                <node concept="2OqwBi" id="1T5MAgPdQqg" role="3uHU7B">
                  <node concept="37vLTw" id="1T5MAgPdQqh" role="2Oq$k0">
                    <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                  </node>
                  <node concept="liA8E" id="1T5MAgPdQqi" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="17DrR$Rv$rl" role="3cqZAp">
              <node concept="37vLTI" id="17DrR$Rv$Rs" role="3clFbG">
                <node concept="37vLTw" id="17DrR$Rv_6Q" role="37vLTx">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="37vLTw" id="17DrR$Rv$rj" role="37vLTJ">
                  <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3VwM5b5TzE3" role="3cqZAp">
              <node concept="37vLTI" id="3VwM5b5T$81" role="3clFbG">
                <node concept="37vLTw" id="3VwM5b5TzE1" role="37vLTJ">
                  <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                </node>
                <node concept="1rXfSq" id="1RYTbd7BH65" role="37vLTx">
                  <ref role="37wK5l" node="1RYTbd7BH60" resolve="createState" />
                  <node concept="37vLTw" id="1RYTbd7BH63" role="37wK5m">
                    <ref role="3cqZAo" node="1T5MAgPdL7o" resolve="typesModuleOwner" />
                  </node>
                  <node concept="37vLTw" id="1RYTbd7BH64" role="37wK5m">
                    <ref role="3cqZAo" node="5XNK1Yzpq$v" resolve="publishTypes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1T5MAgPdlQl" role="3cqZAp">
              <node concept="2OqwBi" id="1T5MAgPdmkl" role="3clFbG">
                <node concept="37vLTw" id="1T5MAgPdlQj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                </node>
                <node concept="liA8E" id="1T5MAgPdmwq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                  <node concept="1Ls8ON" id="3VwM5b5TxAI" role="37wK5m">
                    <node concept="37vLTw" id="3VwM5b5Tye4" role="1Lso8e">
                      <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                    </node>
                    <node concept="37vLTw" id="3VwM5b5T$MY" role="1Lso8e">
                      <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1T5MAgPdUdH" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="5XNK1Yzpq3L" role="3clFbw">
            <ref role="3cqZAo" node="5XNK1Yzpq3H" resolve="createSharedState" />
          </node>
          <node concept="3eNFk2" id="17DrR$SXLKb" role="3eNLev">
            <node concept="3fqX7Q" id="17DrR$SXPPs" role="3eO9$A">
              <node concept="37vLTw" id="17DrR$SXQnY" role="3fr31v">
                <ref role="3cqZAo" node="17DrR$SXIsj" resolve="editorSession" />
              </node>
            </node>
            <node concept="3clFbS" id="17DrR$SXLKd" role="3eOfB_">
              <node concept="3clFbJ" id="1T5MAgPeeWU" role="3cqZAp">
                <node concept="3clFbS" id="1T5MAgPeeWV" role="3clFbx">
                  <node concept="3clFbF" id="3VwM5b5TD1Q" role="3cqZAp">
                    <node concept="37vLTI" id="3VwM5b5TD1R" role="3clFbG">
                      <node concept="37vLTw" id="3VwM5b5TDGg" role="37vLTJ">
                        <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
                      </node>
                      <node concept="1LFfDK" id="3VwM5b5TD1T" role="37vLTx">
                        <node concept="3cmrfG" id="3VwM5b5TD1U" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="2OqwBi" id="3VwM5b5TD1V" role="1LFl5Q">
                          <node concept="37vLTw" id="17DrR$SXOvq" role="2Oq$k0">
                            <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                          </node>
                          <node concept="liA8E" id="3VwM5b5TD1X" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1T5MAgPefUu" role="3cqZAp">
                    <node concept="37vLTI" id="1T5MAgPefUv" role="3clFbG">
                      <node concept="37vLTw" id="1T5MAgPefUw" role="37vLTJ">
                        <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                      </node>
                      <node concept="1LFfDK" id="3VwM5b5T_we" role="37vLTx">
                        <node concept="3cmrfG" id="3VwM5b5T_HK" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="1T5MAgPefUx" role="1LFl5Q">
                          <node concept="37vLTw" id="17DrR$SXOv$" role="2Oq$k0">
                            <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                          </node>
                          <node concept="liA8E" id="1T5MAgPefUy" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1T5MAgPluBw" role="3cqZAp">
                    <node concept="37vLTI" id="1T5MAgPlv0M" role="3clFbG">
                      <node concept="3clFbT" id="1T5MAgPlv9V" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="1T5MAgPluBu" role="37vLTJ">
                        <ref role="3cqZAo" node="1T5MAgPlrgS" resolve="usingSharedState" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1T5MAgPeeX1" role="3clFbw">
                  <node concept="10Nm6u" id="1T5MAgPeeX2" role="3uHU7w" />
                  <node concept="2OqwBi" id="1T5MAgPeeX3" role="3uHU7B">
                    <node concept="37vLTw" id="17DrR$SXOvI" role="2Oq$k0">
                      <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                    </node>
                    <node concept="liA8E" id="1T5MAgPeeX4" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="17DrR$SXR2A" role="3cqZAp" />
        <node concept="3clFbJ" id="17DrR$SXSiU" role="3cqZAp">
          <node concept="3clFbS" id="17DrR$SXSiW" role="3clFbx">
            <node concept="3clFbF" id="17DrR$SXU$U" role="3cqZAp">
              <node concept="37vLTI" id="17DrR$SXU$V" role="3clFbG">
                <node concept="1rXfSq" id="1RYTbd7BLkE" role="37vLTx">
                  <ref role="37wK5l" node="1RYTbd7BH60" resolve="createState" />
                  <node concept="37vLTw" id="1RYTbd7BLkC" role="37wK5m">
                    <ref role="3cqZAo" node="1T5MAgPdL7o" resolve="typesModuleOwner" />
                  </node>
                  <node concept="37vLTw" id="1RYTbd7BLkD" role="37wK5m">
                    <ref role="3cqZAo" node="5XNK1Yzpq$v" resolve="publishTypes" />
                  </node>
                </node>
                <node concept="37vLTw" id="17DrR$SXU_0" role="37vLTJ">
                  <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="17DrR$SXTY$" role="3clFbw">
            <node concept="10Nm6u" id="17DrR$SXU$o" role="3uHU7w" />
            <node concept="37vLTw" id="17DrR$SXTjX" role="3uHU7B">
              <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="17DrR$SXQqe" role="3cqZAp" />
        <node concept="3cpWs8" id="5cBWTAeigJk" role="3cqZAp">
          <node concept="3cpWsn" id="5cBWTAeigJl" role="3cpWs9">
            <property role="TrG5h" value="service" />
            <node concept="3uibUv" id="5cBWTAeifG1" role="1tU5fm">
              <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            </node>
            <node concept="2YIFZM" id="5cBWTAeigJm" role="33vP2m">
              <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
              <ref role="37wK5l" to="tj24:5cBWTAeiUJ$" resolve="create" />
              <node concept="37vLTw" id="5cBWTAejrkq" role="37wK5m">
                <ref role="3cqZAo" node="5cBWTAejqou" resolve="effectiveState" />
              </node>
              <node concept="2OqwBi" id="5cBWTAeigJn" role="37wK5m">
                <node concept="liA8E" id="5cBWTAeigJo" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
                <node concept="37vLTw" id="5cBWTAeigJp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5cBWTAehT4G" resolve="mpsProject" />
                </node>
              </node>
              <node concept="37vLTw" id="5cBWTAeigJq" role="37wK5m">
                <ref role="3cqZAo" node="6hpwxwirfrt" resolve="config" />
              </node>
              <node concept="2YIFZM" id="5cBWTAeigJr" role="37wK5m">
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                <node concept="37vLTw" id="5cBWTAeigJs" role="37wK5m">
                  <ref role="3cqZAo" node="5cBWTAehT4G" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5cBWTAeiiqd" role="3cqZAp" />
        <node concept="3cpWs8" id="5XNK1Yzr26a" role="3cqZAp">
          <node concept="3cpWsn" id="5XNK1Yzr26d" role="3cpWs9">
            <property role="TrG5h" value="bits" />
            <node concept="10Oyi0" id="5XNK1Yzr268" role="1tU5fm" />
            <node concept="3cmrfG" id="5XNK1Yzr2vv" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VwM5b5TFLr" role="3cqZAp">
          <node concept="3clFbS" id="3VwM5b5TFLt" role="3clFbx">
            <node concept="3clFbF" id="5XNK1Yzr50h" role="3cqZAp">
              <node concept="3vZ8r8" id="5XNK1Yzr5PA" role="3clFbG">
                <node concept="10M0yZ" id="5XNK1Yzr6OG" role="37vLTx">
                  <ref role="3cqZAo" node="5XNK1YzpJ9_" resolve="LOCAL_TYPES" />
                  <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                </node>
                <node concept="37vLTw" id="5XNK1Yzr50f" role="37vLTJ">
                  <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3VwM5b5TIez" role="3clFbw">
            <node concept="3y3z36" id="3VwM5b5THpq" role="3uHU7B">
              <node concept="37vLTw" id="3VwM5b5TGB2" role="3uHU7B">
                <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
              </node>
              <node concept="10Nm6u" id="3VwM5b5TI0E" role="3uHU7w" />
            </node>
            <node concept="1eOMI4" id="3VwM5b5TJ13" role="3uHU7w">
              <node concept="3clFbC" id="4XsNDZXGdLV" role="1eOMHV">
                <node concept="10Nm6u" id="4XsNDZXGeC2" role="3uHU7w" />
                <node concept="2OqwBi" id="3VwM5b5TIHd" role="3uHU7B">
                  <node concept="37vLTw" id="3VwM5b5TJYt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3VwM5b5TB$X" resolve="sharedStateFlags" />
                  </node>
                  <node concept="liA8E" id="4XsNDZXGdwN" role="2OqNvi">
                    <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getRoot()" resolve="getRoot" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5XNK1Yzr89Y" role="3cqZAp">
          <node concept="3clFbS" id="5XNK1Yzr8a0" role="3clFbx">
            <node concept="3clFbF" id="5XNK1Yzr8TY" role="3cqZAp">
              <node concept="3vZ8r8" id="5XNK1Yzr8TZ" role="3clFbG">
                <node concept="10M0yZ" id="5XNK1Yzra8a" role="37vLTx">
                  <ref role="3cqZAo" node="5XNK1YzpOxx" resolve="USING_SHARED_STATE" />
                  <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                </node>
                <node concept="37vLTw" id="5XNK1Yzr8U1" role="37vLTJ">
                  <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5XNK1Yzr8Hk" role="3clFbw">
            <ref role="3cqZAo" node="1T5MAgPlrgS" resolve="usingSharedState" />
          </node>
        </node>
        <node concept="3clFbJ" id="5XNK1Yzrd72" role="3cqZAp">
          <node concept="3clFbS" id="5XNK1Yzrd74" role="3clFbx">
            <node concept="3clFbF" id="5XNK1Yzre20" role="3cqZAp">
              <node concept="3vZ8r8" id="5XNK1YzreI_" role="3clFbG">
                <node concept="10M0yZ" id="5XNK1YzrfJf" role="37vLTx">
                  <ref role="3cqZAo" node="5XNK1Yzq1sR" resolve="CLEAR_SHARED_STATE" />
                  <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                </node>
                <node concept="37vLTw" id="5XNK1Yzre1Y" role="37vLTJ">
                  <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="17DrR$SXWfT" role="3clFbw">
            <node concept="37vLTw" id="17DrR$SXX7h" role="3uHU7w">
              <ref role="3cqZAo" node="17DrR$SXIsj" resolve="editorSession" />
            </node>
            <node concept="37vLTw" id="17DrR$RsGOO" role="3uHU7B">
              <ref role="3cqZAo" node="5XNK1Yzpq3H" resolve="createSharedState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1oUwjADnDmX" role="3cqZAp">
          <node concept="2ShNRf" id="1oUwjADnDmV" role="3clFbG">
            <node concept="1pGfFk" id="4MaHsBDeKk6" role="2ShVmc">
              <ref role="37wK5l" node="4duYm8_rntF" resolve="CoderulesTypecheckingProvider.Queries" />
              <node concept="37vLTw" id="5cBWTAeigJt" role="37wK5m">
                <ref role="3cqZAo" node="5cBWTAeigJl" resolve="service" />
              </node>
              <node concept="2OqwBi" id="4duYm8_rN9V" role="37wK5m">
                <node concept="37vLTw" id="4duYm8_rN9W" role="2Oq$k0">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="liA8E" id="4duYm8_rN9X" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getRoot()" resolve="getRoot" />
                </node>
              </node>
              <node concept="37vLTw" id="5XNK1Yzrb8H" role="37wK5m">
                <ref role="3cqZAo" node="5XNK1Yzr26d" resolve="bits" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="lvX$8VFrSh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1RYTbd7BMcS" role="jymVt" />
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
      <node concept="2AHcQZ" id="4gD$zlTLWiu" role="2AJF6D">
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
      <node concept="3clFbS" id="lvX$8VFrSr" role="3clF47">
        <node concept="3clFbJ" id="51ek2rS76hR" role="3cqZAp">
          <node concept="3clFbS" id="51ek2rS76hT" role="3clFbx">
            <node concept="3SKdUt" id="51ek2rS77vk" role="3cqZAp">
              <node concept="1PaTwC" id="51ek2rS77vl" role="1aUNEU">
                <node concept="3oM_SD" id="51ek2rS77vm" role="1PaTwD">
                  <property role="3oM_SC" value="disposed" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="51ek2rS77iS" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="51ek2rS76G9" role="3clFbw">
            <node concept="10Nm6u" id="51ek2rS775u" role="3uHU7w" />
            <node concept="37vLTw" id="51ek2rS76sd" role="3uHU7B">
              <ref role="3cqZAo" node="6hpwxwirfrt" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4duYm8_r$nY" role="3cqZAp">
          <node concept="3clFbS" id="4duYm8_r$o0" role="3clFbx">
            <node concept="3cpWs8" id="5XNK1YzriKg" role="3cqZAp">
              <node concept="3cpWsn" id="5XNK1YzriKh" role="3cpWs9">
                <property role="TrG5h" value="usingSharedState" />
                <node concept="10P_77" id="5XNK1YzqZX0" role="1tU5fm" />
                <node concept="3y3z36" id="5XNK1Yzrlia" role="33vP2m">
                  <node concept="1eOMI4" id="5XNK1YzriKk" role="3uHU7B">
                    <node concept="pVHWs" id="5XNK1YzriKl" role="1eOMHV">
                      <node concept="10M0yZ" id="5XNK1YzriKm" role="3uHU7w">
                        <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                        <ref role="3cqZAo" node="5XNK1YzpOxx" resolve="USING_SHARED_STATE" />
                      </node>
                      <node concept="2OqwBi" id="5XNK1YzriKn" role="3uHU7B">
                        <node concept="2OwXpG" id="5XNK1YzriKo" role="2OqNvi">
                          <ref role="2Oxat5" node="5XNK1YzpV_w" resolve="bits" />
                        </node>
                        <node concept="1eOMI4" id="5XNK1YzriKp" role="2Oq$k0">
                          <node concept="10QFUN" id="5XNK1YzriKq" role="1eOMHV">
                            <node concept="3uibUv" id="5XNK1YzriKr" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="5XNK1YzriKs" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5XNK1YzriKj" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5XNK1Yzrk1k" role="3cqZAp">
              <node concept="3cpWsn" id="5XNK1Yzrk1l" role="3cpWs9">
                <property role="TrG5h" value="clearSharedState" />
                <node concept="10P_77" id="5XNK1Yzrk1m" role="1tU5fm" />
                <node concept="3y3z36" id="5XNK1Yzrnpr" role="33vP2m">
                  <node concept="1eOMI4" id="5XNK1Yzrk1p" role="3uHU7B">
                    <node concept="pVHWs" id="5XNK1Yzrk1q" role="1eOMHV">
                      <node concept="10M0yZ" id="5XNK1Yzrmgq" role="3uHU7w">
                        <ref role="3cqZAo" node="5XNK1Yzq1sR" resolve="CLEAR_SHARED_STATE" />
                        <ref role="1PxDUh" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                      </node>
                      <node concept="2OqwBi" id="5XNK1Yzrk1s" role="3uHU7B">
                        <node concept="2OwXpG" id="5XNK1Yzrk1t" role="2OqNvi">
                          <ref role="2Oxat5" node="5XNK1YzpV_w" resolve="bits" />
                        </node>
                        <node concept="1eOMI4" id="5XNK1Yzrk1u" role="2Oq$k0">
                          <node concept="10QFUN" id="5XNK1Yzrk1v" role="1eOMHV">
                            <node concept="3uibUv" id="5XNK1Yzrk1w" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="5XNK1Yzrk1x" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5XNK1Yzrk1o" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1T5MAgPlvZa" role="3cqZAp">
              <node concept="3clFbS" id="1T5MAgPlvZc" role="3clFbx">
                <node concept="3cpWs8" id="4duYm8_rEe5" role="3cqZAp">
                  <node concept="3cpWsn" id="4duYm8_rEe6" role="3cpWs9">
                    <property role="TrG5h" value="root" />
                    <node concept="3Tqbb2" id="4duYm8_rE3C" role="1tU5fm" />
                    <node concept="2OqwBi" id="4duYm8_rEe7" role="33vP2m">
                      <node concept="1eOMI4" id="4duYm8_rEe8" role="2Oq$k0">
                        <node concept="10QFUN" id="4duYm8_rEe9" role="1eOMHV">
                          <node concept="3uibUv" id="4duYm8_rEea" role="10QFUM">
                            <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                          </node>
                          <node concept="37vLTw" id="4duYm8_rEeb" role="10QFUP">
                            <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OwXpG" id="4duYm8_rEec" role="2OqNvi">
                        <ref role="2Oxat5" node="4duYm8_rvM9" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1T5MAgPk_wB" role="3cqZAp">
                  <node concept="3clFbS" id="1T5MAgPk_wD" role="3clFbx">
                    <node concept="3clFbF" id="4duYm8_rHf4" role="3cqZAp">
                      <node concept="2OqwBi" id="4duYm8_rJMu" role="3clFbG">
                        <node concept="1eOMI4" id="4duYm8_rHf2" role="2Oq$k0">
                          <node concept="10QFUN" id="4duYm8_rHeZ" role="1eOMHV">
                            <node concept="3uibUv" id="4duYm8_rHmL" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="4duYm8_rJze" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4duYm8_rLLd" role="2OqNvi">
                          <ref role="37wK5l" node="6l3eCxofJGN" resolve="clearCache" />
                          <node concept="37vLTw" id="4duYm8_rM6V" role="37wK5m">
                            <ref role="3cqZAo" node="4duYm8_rEe6" resolve="root" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1T5MAgPk_Y7" role="3clFbw">
                    <node concept="10Nm6u" id="1T5MAgPkAcb" role="3uHU7w" />
                    <node concept="37vLTw" id="1T5MAgPk_Iq" role="3uHU7B">
                      <ref role="3cqZAo" node="4duYm8_rEe6" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1RYTbd7EegQ" role="3cqZAp">
                  <node concept="3cpWsn" id="1RYTbd7EegR" role="3cpWs9">
                    <property role="TrG5h" value="state" />
                    <node concept="3uibUv" id="1RYTbd7Ee7y" role="1tU5fm">
                      <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
                    </node>
                    <node concept="2OqwBi" id="1RYTbd7EegS" role="33vP2m">
                      <node concept="2OqwBi" id="1RYTbd7EegT" role="2Oq$k0">
                        <node concept="1eOMI4" id="1RYTbd7EegU" role="2Oq$k0">
                          <node concept="10QFUN" id="1RYTbd7EegV" role="1eOMHV">
                            <node concept="3uibUv" id="1RYTbd7EegW" role="10QFUM">
                              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
                            </node>
                            <node concept="37vLTw" id="1RYTbd7EegX" role="10QFUP">
                              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OwXpG" id="1RYTbd7EegY" role="2OqNvi">
                          <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1RYTbd7EegZ" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1RYTbd7Di6U" resolve="getState" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1T5MAgPlzmL" role="3cqZAp">
                  <node concept="2OqwBi" id="1T5MAgPl$Ke" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7Eeh0" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7EegR" resolve="state" />
                    </node>
                    <node concept="liA8E" id="1T5MAgPl_FV" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1RYTbd7EgL_" role="3cqZAp">
                  <node concept="2OqwBi" id="1RYTbd7EhKs" role="3clFbG">
                    <node concept="37vLTw" id="1RYTbd7EgLz" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
                    </node>
                    <node concept="3dhRuq" id="1RYTbd7EiWe" role="2OqNvi">
                      <node concept="37vLTw" id="1RYTbd7Ekvq" role="25WWJ7">
                        <ref role="3cqZAo" node="1RYTbd7EegR" resolve="state" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1T5MAgPlvZb" role="3cqZAp" />
                <node concept="3clFbJ" id="1T5MAgPectW" role="3cqZAp">
                  <node concept="3clFbS" id="1T5MAgPectX" role="3clFbx">
                    <node concept="3cpWs8" id="1RYTbd7G9D6" role="3cqZAp">
                      <node concept="3cpWsn" id="1RYTbd7G9D7" role="3cpWs9">
                        <property role="TrG5h" value="sharedState" />
                        <node concept="3uibUv" id="1RYTbd7FZ0z" role="1tU5fm">
                          <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
                        </node>
                        <node concept="1LFfDK" id="1RYTbd7G9D8" role="33vP2m">
                          <node concept="3cmrfG" id="1RYTbd7G9D9" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="1RYTbd7G9Da" role="1LFl5Q">
                            <node concept="37vLTw" id="1RYTbd7G9Db" role="2Oq$k0">
                              <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                            </node>
                            <node concept="liA8E" id="1RYTbd7G9Dc" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1T5MAgPectY" role="3cqZAp">
                      <node concept="2OqwBi" id="1T5MAgPectZ" role="3clFbG">
                        <node concept="37vLTw" id="1RYTbd7G9Dd" role="2Oq$k0">
                          <ref role="3cqZAo" node="1RYTbd7G9D7" resolve="sharedState" />
                        </node>
                        <node concept="liA8E" id="1T5MAgPk_2N" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1RYTbd7Ginx" role="3cqZAp">
                      <node concept="2OqwBi" id="1RYTbd7Gjhz" role="3clFbG">
                        <node concept="37vLTw" id="1RYTbd7Ginv" role="2Oq$k0">
                          <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
                        </node>
                        <node concept="3dhRuq" id="1RYTbd7Gkn$" role="2OqNvi">
                          <node concept="37vLTw" id="1RYTbd7GndZ" role="25WWJ7">
                            <ref role="3cqZAo" node="1RYTbd7G9D7" resolve="sharedState" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1T5MAgPedpp" role="3cqZAp">
                      <node concept="2OqwBi" id="1T5MAgPedpr" role="3clFbG">
                        <node concept="37vLTw" id="1T5MAgPedp_" role="2Oq$k0">
                          <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                        </node>
                        <node concept="liA8E" id="1T5MAgPeenO" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
                          <node concept="10Nm6u" id="1T5MAgPeezT" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="5XNK1Yzroh3" role="3clFbw">
                    <node concept="37vLTw" id="5XNK1YzroOG" role="3uHU7w">
                      <ref role="3cqZAo" node="5XNK1Yzrk1l" resolve="clearSharedState" />
                    </node>
                    <node concept="3y3z36" id="1T5MAgPlc7q" role="3uHU7B">
                      <node concept="2OqwBi" id="1T5MAgPecu5" role="3uHU7B">
                        <node concept="37vLTw" id="1T5MAgPecup" role="2Oq$k0">
                          <ref role="3cqZAo" node="1T5MAgPdbbl" resolve="SHARED_STATE" />
                        </node>
                        <node concept="liA8E" id="1T5MAgPecu6" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="1T5MAgPlczS" role="3uHU7w" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5XNK1Yzrm9L" role="3clFbw">
                <node concept="37vLTw" id="5XNK1Yzrm9N" role="3fr31v">
                  <ref role="3cqZAo" node="5XNK1YzriKh" resolve="usingSharedState" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1T5MAgPe8L9" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="4duYm8_r_ez" role="3clFbw">
            <node concept="3uibUv" id="4duYm8_r_Dh" role="2ZW6by">
              <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
            </node>
            <node concept="37vLTw" id="4duYm8_r$PT" role="2ZW6bz">
              <ref role="3cqZAo" node="lvX$8VFrSo" resolve="queries" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="lvX$8VFrSs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$gg4k_6BHa" role="jymVt" />
    <node concept="3clFb_" id="1RYTbd7BH60" role="jymVt">
      <property role="TrG5h" value="createState" />
      <node concept="3Tm6S6" id="1RYTbd7BH61" role="1B3o_S" />
      <node concept="3uibUv" id="1RYTbd7BH62" role="3clF45">
        <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
      </node>
      <node concept="37vLTG" id="1RYTbd7BH5O" role="3clF46">
        <property role="TrG5h" value="typesModuleOwner" />
        <node concept="3uibUv" id="1RYTbd7BH5P" role="1tU5fm">
          <ref role="3uigEE" to="tj24:1z4$59jK85m" resolve="TypesModuleOwner" />
        </node>
      </node>
      <node concept="37vLTG" id="1RYTbd7BH5Q" role="3clF46">
        <property role="TrG5h" value="publishTypes" />
        <node concept="10P_77" id="1RYTbd7BH5R" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1RYTbd7BH5I" role="3clF47">
        <node concept="3cpWs8" id="1RYTbd7BQR0" role="3cqZAp">
          <node concept="3cpWsn" id="1RYTbd7BQR1" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="1RYTbd7BJAf" role="1tU5fm">
              <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
            </node>
            <node concept="2ShNRf" id="1RYTbd7BQR2" role="33vP2m">
              <node concept="1pGfFk" id="1RYTbd7BQR3" role="2ShVmc">
                <ref role="37wK5l" to="tj24:5cBWTAehvV3" resolve="TypecheckingState" />
                <node concept="37vLTw" id="1RYTbd7BQR4" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd7BH5O" resolve="typesModuleOwner" />
                </node>
                <node concept="37vLTw" id="1RYTbd7BQR5" role="37wK5m">
                  <ref role="3cqZAo" node="1RYTbd7BH5Q" resolve="publishTypes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RYTbd7BXiO" role="3cqZAp">
          <node concept="2OqwBi" id="1RYTbd7C0Yo" role="3clFbG">
            <node concept="37vLTw" id="1RYTbd7BXiM" role="2Oq$k0">
              <ref role="3cqZAo" node="1RYTbd7AOyL" resolve="states" />
            </node>
            <node concept="TSZUe" id="1RYTbd7C3mt" role="2OqNvi">
              <node concept="37vLTw" id="1RYTbd7C4uE" role="25WWJ7">
                <ref role="3cqZAo" node="1RYTbd7BQR1" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1RYTbd7BH5J" role="3cqZAp">
          <node concept="37vLTw" id="1RYTbd7BQR6" role="3cqZAk">
            <ref role="3cqZAo" node="1RYTbd7BQR1" resolve="state" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3zIrswy0dov" role="jymVt" />
    <node concept="312cEu" id="5BwsbZJE17w" role="jymVt">
      <property role="TrG5h" value="Queries" />
      <node concept="2tJIrI" id="siuT5mm_XX" role="jymVt" />
      <node concept="Wx3nA" id="5XNK1YzpJ9_" role="jymVt">
        <property role="TrG5h" value="LOCAL_TYPES" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5XNK1YzpJ9B" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1YzpMfF" role="1tU5fm" />
        <node concept="1GRDU$" id="5XNK1YzpNZy" role="33vP2m">
          <node concept="3cmrfG" id="5XNK1YzpOhh" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2nou5x" id="5XNK1YzpN6l" role="3uHU7B">
            <property role="2noCCI" value="1" />
          </node>
        </node>
      </node>
      <node concept="Wx3nA" id="5XNK1YzpOxx" role="jymVt">
        <property role="TrG5h" value="USING_SHARED_STATE" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5XNK1YzpOxy" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1YzpOxz" role="1tU5fm" />
        <node concept="1GRDU$" id="5XNK1YzpOx$" role="33vP2m">
          <node concept="3cmrfG" id="5XNK1YzpOx_" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2nou5x" id="5XNK1YzpOxA" role="3uHU7B">
            <property role="2noCCI" value="1" />
          </node>
        </node>
      </node>
      <node concept="Wx3nA" id="5XNK1Yzq1sR" role="jymVt">
        <property role="TrG5h" value="CLEAR_SHARED_STATE" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5XNK1Yzq1sS" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1Yzq1sT" role="1tU5fm" />
        <node concept="1GRDU$" id="5XNK1Yzq1sU" role="33vP2m">
          <node concept="3cmrfG" id="5XNK1Yzq1sV" role="3uHU7w">
            <property role="3cmrfH" value="2" />
          </node>
          <node concept="2nou5x" id="5XNK1Yzq1sW" role="3uHU7B">
            <property role="2noCCI" value="1" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5XNK1YzpFW3" role="jymVt" />
      <node concept="3clFbW" id="4duYm8_rntF" role="jymVt">
        <node concept="3cqZAl" id="4duYm8_rntG" role="3clF45" />
        <node concept="3Tm6S6" id="61G6TdD0vqk" role="1B3o_S" />
        <node concept="3clFbS" id="4duYm8_rntI" role="3clF47">
          <node concept="3clFbF" id="1z4$59j5F_i" role="3cqZAp">
            <node concept="37vLTI" id="1z4$59j5F_j" role="3clFbG">
              <node concept="2OqwBi" id="1z4$59j5F_k" role="37vLTJ">
                <node concept="Xjq3P" id="1z4$59j5F_l" role="2Oq$k0" />
                <node concept="2OwXpG" id="1z4$59j5F_m" role="2OqNvi">
                  <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
              </node>
              <node concept="37vLTw" id="5cBWTAehO$s" role="37vLTx">
                <ref role="3cqZAo" node="5cBWTAehM6w" resolve="service" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4duYm8_rvMd" role="3cqZAp">
            <node concept="37vLTI" id="4duYm8_rvMf" role="3clFbG">
              <node concept="2OqwBi" id="4duYm8_rzzC" role="37vLTJ">
                <node concept="Xjq3P" id="4duYm8_rzOQ" role="2Oq$k0" />
                <node concept="2OwXpG" id="4duYm8_rzzF" role="2OqNvi">
                  <ref role="2Oxat5" node="4duYm8_rvM9" resolve="root" />
                </node>
              </node>
              <node concept="37vLTw" id="4duYm8_rvMj" role="37vLTx">
                <ref role="3cqZAo" node="4duYm8_rqLV" resolve="root" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5XNK1YzpZc0" role="3cqZAp">
            <node concept="37vLTI" id="5XNK1Yzq0jC" role="3clFbG">
              <node concept="37vLTw" id="5XNK1Yzq0_L" role="37vLTx">
                <ref role="3cqZAo" node="5XNK1YzpS40" resolve="bits" />
              </node>
              <node concept="2OqwBi" id="5XNK1YzpZlP" role="37vLTJ">
                <node concept="Xjq3P" id="5XNK1YzpZbY" role="2Oq$k0" />
                <node concept="2OwXpG" id="5XNK1YzpZw_" role="2OqNvi">
                  <ref role="2Oxat5" node="5XNK1YzpV_w" resolve="bits" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5cBWTAehM6w" role="3clF46">
          <property role="TrG5h" value="service" />
          <node concept="3uibUv" id="5cBWTAehNEW" role="1tU5fm">
            <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
          </node>
        </node>
        <node concept="37vLTG" id="4duYm8_rqLV" role="3clF46">
          <property role="TrG5h" value="root" />
          <node concept="3Tqbb2" id="4duYm8_rvDA" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5XNK1YzpS40" role="3clF46">
          <property role="TrG5h" value="bits" />
          <node concept="10Oyi0" id="5XNK1YzpSzE" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="4duYm8_rntE" role="jymVt" />
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
          <node concept="3cpWs8" id="3CzfQ_onIcS" role="3cqZAp">
            <node concept="3cpWsn" id="3CzfQ_onIcT" role="3cpWs9">
              <property role="TrG5h" value="listeners" />
              <node concept="_YKpA" id="3CzfQ_onGi7" role="1tU5fm">
                <node concept="3uibUv" id="3CzfQ_onGia" role="_ZDj9">
                  <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
                </node>
              </node>
              <node concept="2ShNRf" id="3CzfQ_onIcU" role="33vP2m">
                <node concept="Tc6Ow" id="3CzfQ_onIcV" role="2ShVmc">
                  <node concept="3uibUv" id="3CzfQ_onIcW" role="HW$YZ">
                    <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
                  </node>
                  <node concept="37vLTw" id="3CzfQ_onIcX" role="I$8f6">
                    <ref role="3cqZAo" node="3CzfQ_ohqQB" resolve="accessListeners" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3CzfQ_omgn6" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_onY85" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_onIcY" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_onIcT" resolve="listeners" />
              </node>
              <node concept="2es0OD" id="3CzfQ_oo7hA" role="2OqNvi">
                <node concept="1bVj0M" id="3CzfQ_oo7hC" role="23t8la">
                  <node concept="3clFbS" id="3CzfQ_oo7hD" role="1bW5cS">
                    <node concept="3clFbF" id="3CzfQ_oofi7" role="3cqZAp">
                      <node concept="2OqwBi" id="3CzfQ_oolB9" role="3clFbG">
                        <node concept="37vLTw" id="3CzfQ_oofi6" role="2Oq$k0">
                          <ref role="3cqZAo" node="3CzfQ_oo7hE" resolve="it" />
                        </node>
                        <node concept="liA8E" id="3CzfQ_oouwT" role="2OqNvi">
                          <ref role="37wK5l" to="1ka:~TypeAccessListener.typeAccessed(org.jetbrains.mps.openapi.model.SNode)" resolve="typeAccessed" />
                          <node concept="37vLTw" id="3CzfQ_ooALZ" role="37wK5m">
                            <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3CzfQ_oo7hE" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3CzfQ_oo7hF" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="61G6TdCYEzx" role="3cqZAp">
            <node concept="3clFbS" id="61G6TdCYEzz" role="3clFbx">
              <node concept="3cpWs6" id="61G6TdCYNOT" role="3cqZAp">
                <node concept="2OqwBi" id="1z4$59iR36p" role="3cqZAk">
                  <node concept="2OqwBi" id="1z4$59iQSXY" role="2Oq$k0">
                    <node concept="2OqwBi" id="1z4$59j6aPB" role="2Oq$k0">
                      <node concept="Xjq3P" id="1z4$59j6aPC" role="2Oq$k0" />
                      <node concept="2OwXpG" id="1z4$59j6aPD" role="2OqNvi">
                        <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1z4$59iQW9p" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1z4$59iIgeQ" resolve="localTypeOf" />
                      <node concept="37vLTw" id="1z4$59iR0my" role="37wK5m">
                        <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1z4$59iR6C1" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="61G6TdCZ4sz" role="3cqZAp" />
            </node>
            <node concept="9aQIb" id="61G6TdCYWa6" role="9aQIa">
              <node concept="3clFbS" id="61G6TdCYWa7" role="9aQI4">
                <node concept="3SKdUt" id="3CzfQ_ow6XI" role="3cqZAp">
                  <node concept="1PaTwC" id="3CzfQ_ow6XJ" role="1aUNEU">
                    <node concept="3oM_SD" id="3CzfQ_ow6XK" role="1PaTwD">
                      <property role="3oM_SC" value="FIXME" />
                    </node>
                    <node concept="3oM_SD" id="3CzfQ_ow6XL" role="1PaTwD">
                      <property role="3oM_SC" value="collect" />
                    </node>
                    <node concept="3oM_SD" id="3CzfQ_ow6XM" role="1PaTwD">
                      <property role="3oM_SC" value="nodes" />
                    </node>
                    <node concept="3oM_SD" id="3CzfQ_ow6XN" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                    </node>
                    <node concept="3oM_SD" id="3CzfQ_ow6XO" role="1PaTwD">
                      <property role="3oM_SC" value="changed" />
                    </node>
                    <node concept="3oM_SD" id="3CzfQ_ow6XP" role="1PaTwD">
                      <property role="3oM_SC" value="types" />
                    </node>
                    <node concept="3oM_SD" id="3CzfQ_ow6XQ" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="3CzfQ_ow6XR" role="1PaTwD">
                      <property role="3oM_SC" value="report" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="61G6TdCY$lg" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59iRoH8" role="3cqZAk">
                    <node concept="2OqwBi" id="61G6TdCY$lh" role="2Oq$k0">
                      <node concept="2OqwBi" id="1z4$59j6aPz" role="2Oq$k0">
                        <node concept="Xjq3P" id="1z4$59j6aP$" role="2Oq$k0" />
                        <node concept="2OwXpG" id="1z4$59j6aP_" role="2OqNvi">
                          <ref role="2Oxat5" node="1z4$59j5F_5" resolve="typecheckingService" />
                        </node>
                      </node>
                      <node concept="liA8E" id="61G6TdCY$lj" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1z4$59iI7cZ" resolve="typeOf" />
                        <node concept="37vLTw" id="61G6TdCY$lk" role="37wK5m">
                          <ref role="3cqZAo" node="siuT5mmA0c" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1z4$59iRsWk" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5XNK1YzqvhV" role="3clFbw">
              <node concept="3cmrfG" id="5XNK1YzqyeY" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1eOMI4" id="5XNK1Yzqs5v" role="3uHU7B">
                <node concept="pVHWs" id="5XNK1Yzqod$" role="1eOMHV">
                  <node concept="37vLTw" id="5XNK1Yzqr$j" role="3uHU7w">
                    <ref role="3cqZAo" node="5XNK1YzpJ9_" resolve="LOCAL_TYPES" />
                  </node>
                  <node concept="37vLTw" id="5XNK1YzqkwL" role="3uHU7B">
                    <ref role="3cqZAo" node="5XNK1YzpV_w" resolve="bits" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0g" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1oUwjADnFUb" role="jymVt" />
      <node concept="3clFb_" id="3$wk6sfEBR8" role="jymVt">
        <property role="TrG5h" value="getInferredType" />
        <node concept="3Tm1VV" id="3$wk6sfEBR9" role="1B3o_S" />
        <node concept="2AHcQZ" id="3$wk6sfEBRb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="3$wk6sfEBRc" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="3$wk6sfEBRd" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="3$wk6sfEBRe" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="3$wk6sfEBRk" role="3clF47">
          <node concept="YS8fn" id="3$wk6sfEVAQ" role="3cqZAp">
            <node concept="2ShNRf" id="3$wk6sfEW1x" role="YScLw">
              <node concept="1pGfFk" id="3$wk6sfFo$p" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3$wk6sfEBRl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_ogiKk" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_ogbFT" role="jymVt">
        <property role="TrG5h" value="getObservable" />
        <node concept="3Tm1VV" id="3CzfQ_ogbFV" role="1B3o_S" />
        <node concept="2AHcQZ" id="3CzfQ_ogbFX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="3CzfQ_ogbFY" role="3clF45">
          <ref role="3uigEE" to="1ka:~TypecheckingObservable" resolve="TypecheckingObservable" />
        </node>
        <node concept="3clFbS" id="3CzfQ_ogbG6" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_okKle" role="3cqZAp">
            <node concept="Xjq3P" id="3CzfQ_okKld" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_ogbG7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3$wk6sfEJ$w" role="jymVt" />
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
          <node concept="3clFbF" id="1z4$59iI6bk" role="3cqZAp">
            <node concept="2OqwBi" id="1z4$59iIHQB" role="3clFbG">
              <node concept="2OqwBi" id="1z4$59iI6Eo" role="2Oq$k0">
                <node concept="37vLTw" id="1z4$59j6jKc" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
                <node concept="liA8E" id="1z4$59iIF0B" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:1z4$59iIpuJ" resolve="convertsTo" />
                  <node concept="37vLTw" id="1z4$59iIHt6" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0n" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="1z4$59iIHt7" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0p" resolve="trgType" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1z4$59iRh_9" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
              </node>
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
          <node concept="3clFbF" id="1vxei$19mvT" role="3cqZAp">
            <node concept="2OqwBi" id="1z4$59iRBCP" role="3clFbG">
              <node concept="2OqwBi" id="1vxei$19Rfb" role="2Oq$k0">
                <node concept="37vLTw" id="1z4$59j6uUU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
                <node concept="liA8E" id="1vxei$19Rfs" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:1z4$59iIxBp" resolve="coerceTo" />
                  <node concept="37vLTw" id="2xx8OByk5tn" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0$" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="2xx8OByk7Nq" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0A" resolve="trgConcept" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1z4$59iRDco" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
              </node>
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
          <node concept="3cpWs8" id="4lCLOtwmUSP" role="3cqZAp">
            <node concept="3cpWsn" id="4lCLOtwmUSQ" role="3cpWs9">
              <property role="TrG5h" value="trgConcept" />
              <node concept="3uibUv" id="4lCLOtwmUSf" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
              </node>
              <node concept="2OqwBi" id="4lCLOtwmUSR" role="33vP2m">
                <node concept="37vLTw" id="4lCLOtwmUSS" role="2Oq$k0">
                  <ref role="3cqZAo" node="hEDrw1P5M4" resolve="pattern" />
                </node>
                <node concept="liA8E" id="4lCLOtwmUST" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~IMatchingPattern.getConcept()" resolve="getConcept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1RYTbd7Igwb" role="3cqZAp">
            <node concept="3cpWsn" id="1RYTbd7Igwc" role="3cpWs9">
              <property role="TrG5h" value="patternNode" />
              <node concept="3uibUv" id="1RYTbd7Ifcm" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="1RYTbd7Igwd" role="33vP2m">
                <node concept="37vLTw" id="1RYTbd7Igwe" role="2Oq$k0">
                  <ref role="3cqZAo" node="hEDrw1P5M4" resolve="pattern" />
                </node>
                <node concept="liA8E" id="1RYTbd7Igwf" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~INodeMatchingPattern.getPatternNode()" resolve="getPatternNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1RYTbd7N31X" role="3cqZAp">
            <node concept="3cpWsn" id="1RYTbd7N31Y" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="3Tqbb2" id="1RYTbd7N1oa" role="1tU5fm" />
              <node concept="10Nm6u" id="1RYTbd7NR70" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="1RYTbd7O2Zz" role="3cqZAp">
            <node concept="3clFbS" id="1RYTbd7O2Z_" role="3clFbx">
              <node concept="3clFbF" id="1RYTbd7NDCQ" role="3cqZAp">
                <node concept="37vLTI" id="1RYTbd7NDCS" role="3clFbG">
                  <node concept="2OqwBi" id="1RYTbd7N31Z" role="37vLTx">
                    <node concept="2OqwBi" id="1RYTbd7N320" role="2Oq$k0">
                      <node concept="37vLTw" id="1RYTbd7N321" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                      </node>
                      <node concept="liA8E" id="1RYTbd7N322" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1RYTbd7MH$g" resolve="coerceTo" />
                        <node concept="37vLTw" id="1RYTbd7N323" role="37wK5m">
                          <ref role="3cqZAo" node="hEDrw1P5M1" resolve="type" />
                        </node>
                        <node concept="37vLTw" id="1RYTbd7N324" role="37wK5m">
                          <ref role="3cqZAo" node="1RYTbd7Igwc" resolve="patternNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1RYTbd7N325" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1RYTbd7NDCW" role="37vLTJ">
                    <ref role="3cqZAo" node="1RYTbd7N31Y" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1RYTbd7OOrM" role="3cqZAp" />
            </node>
            <node concept="3y3z36" id="1RYTbd7OffN" role="3clFbw">
              <node concept="10Nm6u" id="1RYTbd7OfEh" role="3uHU7w" />
              <node concept="37vLTw" id="1RYTbd7Oa4D" role="3uHU7B">
                <ref role="3cqZAo" node="1RYTbd7Igwc" resolve="patternNode" />
              </node>
            </node>
            <node concept="9aQIb" id="1RYTbd7OwHt" role="9aQIa">
              <node concept="3clFbS" id="1RYTbd7OwHu" role="9aQI4">
                <node concept="3clFbF" id="1RYTbd7O$xe" role="3cqZAp">
                  <node concept="37vLTI" id="1RYTbd7O$xg" role="3clFbG">
                    <node concept="2OqwBi" id="1z4$59iRHQU" role="37vLTx">
                      <node concept="2OqwBi" id="2xx8OBylj0c" role="2Oq$k0">
                        <node concept="37vLTw" id="1z4$59j6CrG" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                        </node>
                        <node concept="liA8E" id="2xx8OBylj0t" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1z4$59iIxBp" resolve="coerceTo" />
                          <node concept="37vLTw" id="2xx8OBylj0u" role="37wK5m">
                            <ref role="3cqZAo" node="hEDrw1P5M1" resolve="type" />
                          </node>
                          <node concept="37vLTw" id="2xx8OBylj0v" role="37wK5m">
                            <ref role="3cqZAo" node="4lCLOtwmUSQ" resolve="trgConcept" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1z4$59iRLN8" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1RYTbd7OUqf" role="37vLTJ">
                      <ref role="3cqZAo" node="1RYTbd7N31Y" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4lCLOtwpAYj" role="3cqZAp">
            <node concept="3K4zz7" id="4lCLOtwpAYk" role="3cqZAk">
              <node concept="37vLTw" id="1RYTbd7P6A1" role="3K4E3e">
                <ref role="3cqZAo" node="1RYTbd7N31Y" resolve="result" />
              </node>
              <node concept="10Nm6u" id="4lCLOtwpAYm" role="3K4GZi" />
              <node concept="1Wc70l" id="22KCgTW0QSe" role="3K4Cdx">
                <node concept="3y3z36" id="22KCgTW0V53" role="3uHU7B">
                  <node concept="10Nm6u" id="22KCgTW0Vmn" role="3uHU7w" />
                  <node concept="37vLTw" id="1RYTbd7P5JR" role="3uHU7B">
                    <ref role="3cqZAo" node="1RYTbd7N31Y" resolve="result" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4lCLOtwpAYn" role="3uHU7w">
                  <node concept="37vLTw" id="4lCLOtwpAYo" role="2Oq$k0">
                    <ref role="3cqZAo" node="hEDrw1P5M4" resolve="pattern" />
                  </node>
                  <node concept="liA8E" id="4lCLOtwpAYp" role="2OqNvi">
                    <ref role="37wK5l" to="7jhi:~IMatchingPattern.match(org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                    <node concept="37vLTw" id="1RYTbd7P6bB" role="37wK5m">
                      <ref role="3cqZAo" node="1RYTbd7N31Y" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="hEDrw1P5M9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5BwsbZJE0Zx" role="jymVt" />
      <node concept="3Tm1VV" id="61G6TdD0ZwH" role="1B3o_S" />
      <node concept="3uibUv" id="lvX$8VFC52" role="EKbjA">
        <ref role="3uigEE" to="1ka:~TypecheckingQueries" resolve="TypecheckingQueries" />
      </node>
      <node concept="3uibUv" id="3CzfQ_oh_Ur" role="EKbjA">
        <ref role="3uigEE" to="1ka:~TypecheckingObservable" resolve="TypecheckingObservable" />
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
          <node concept="3SKdUt" id="2qsG4AwLBYw" role="3cqZAp">
            <node concept="1PaTwC" id="2qsG4AwLBYx" role="1aUNEU">
              <node concept="3oM_SD" id="2qsG4AwLBYz" role="1PaTwD">
                <property role="3oM_SC" value="FIXME:" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCq7" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="2qsG4AwLCqi" role="1PaTwD">
                <property role="3oM_SC" value="might" />
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
          <node concept="3clFbH" id="1z4$59iKE4F" role="3cqZAp" />
          <node concept="3SKdUt" id="3CzfQ_ovDAf" role="3cqZAp">
            <node concept="1PaTwC" id="3CzfQ_ovDAg" role="1aUNEU">
              <node concept="3oM_SD" id="3CzfQ_ovLFy" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="3CzfQ_ovLF$" role="1PaTwD">
                <property role="3oM_SC" value="collect" />
              </node>
              <node concept="3oM_SD" id="3CzfQ_ovLFB" role="1PaTwD">
                <property role="3oM_SC" value="nodes" />
              </node>
              <node concept="3oM_SD" id="3CzfQ_ovLFF" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="3CzfQ_ovLFK" role="1PaTwD">
                <property role="3oM_SC" value="changed" />
              </node>
              <node concept="3oM_SD" id="3CzfQ_ovLFQ" role="1PaTwD">
                <property role="3oM_SC" value="types" />
              </node>
              <node concept="3oM_SD" id="3CzfQ_ovLFX" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="3CzfQ_ovLG5" role="1PaTwD">
                <property role="3oM_SC" value="report" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="9dktABR$KP" role="3cqZAp">
            <node concept="3cpWsn" id="9dktABR$KQ" role="3cpWs9">
              <property role="TrG5h" value="typesIndex" />
              <node concept="3uibUv" id="9dktABRsfo" role="1tU5fm">
                <ref role="3uigEE" to="tj24:6QH_LDtcxgf" resolve="TypecheckingResultsCache" />
              </node>
              <node concept="2OqwBi" id="1z4$59iRR3C" role="33vP2m">
                <node concept="2OqwBi" id="9dktABR$KY" role="2Oq$k0">
                  <node concept="liA8E" id="9dktABR$KZ" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:1z4$59ixOPQ" resolve="check" />
                    <node concept="37vLTw" id="2xx8OBymBZP" role="37wK5m">
                      <ref role="3cqZAo" node="1oUwjADo$Xr" resolve="containingRoot" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1z4$59j6IZX" role="2Oq$k0">
                    <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                  </node>
                </node>
                <node concept="liA8E" id="1z4$59iRRQd" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3yEb0I3SBsd" role="3cqZAp" />
          <node concept="3SKdUt" id="5Qx6_660Hb_" role="3cqZAp">
            <node concept="1PaTwC" id="5Qx6_660HbA" role="1aUNEU">
              <node concept="3oM_SD" id="5Qx6_660HbC" role="1PaTwD">
                <property role="3oM_SC" value="forward" />
              </node>
              <node concept="3oM_SD" id="5Qx6_660IqB" role="1PaTwD">
                <property role="3oM_SC" value="all" />
              </node>
              <node concept="3oM_SD" id="5Qx6_660IqE" role="1PaTwD">
                <property role="3oM_SC" value="reported" />
              </node>
              <node concept="3oM_SD" id="5Qx6_660Iri" role="1PaTwD">
                <property role="3oM_SC" value="items" />
              </node>
              <node concept="3oM_SD" id="5Qx6_660Isc" role="1PaTwD">
                <property role="3oM_SC" value="always" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="1FOQehxolJD" role="3cqZAp">
            <node concept="3clFbS" id="1FOQehxolJE" role="2LFqv$">
              <node concept="3clFbJ" id="1FOQehxolJF" role="3cqZAp">
                <node concept="2ZW3vV" id="1FOQehxolJG" role="3clFbw">
                  <node concept="3uibUv" id="1FOQehxolJH" role="2ZW6by">
                    <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                  </node>
                  <node concept="37vLTw" id="1FOQehxolJI" role="2ZW6bz">
                    <ref role="3cqZAo" node="1FOQehxolJW" resolve="it" />
                  </node>
                </node>
                <node concept="3clFbS" id="1FOQehxolJJ" role="3clFbx">
                  <node concept="3cpWs8" id="1FOQehxolJK" role="3cqZAp">
                    <node concept="3cpWsn" id="1FOQehxolJL" role="3cpWs9">
                      <property role="TrG5h" value="nri" />
                      <node concept="3uibUv" id="1FOQehxolJM" role="1tU5fm">
                        <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                      </node>
                      <node concept="1eOMI4" id="1FOQehxolJN" role="33vP2m">
                        <node concept="10QFUN" id="1FOQehxolJO" role="1eOMHV">
                          <node concept="3uibUv" id="1FOQehxolJP" role="10QFUM">
                            <ref role="3uigEE" to="d6hs:~NodeReportItem" resolve="NodeReportItem" />
                          </node>
                          <node concept="37vLTw" id="1FOQehxolJQ" role="10QFUP">
                            <ref role="3cqZAo" node="1FOQehxolJW" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1FOQehxolJR" role="3cqZAp">
                    <node concept="2OqwBi" id="1FOQehxolJS" role="3clFbG">
                      <node concept="37vLTw" id="5Qx6_666Sb8" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Hyoxv0bBI" resolve="consumer" />
                      </node>
                      <node concept="liA8E" id="1FOQehxolJU" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                        <node concept="37vLTw" id="1FOQehxolJV" role="37wK5m">
                          <ref role="3cqZAo" node="1FOQehxolJL" resolve="nri" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="1FOQehxolJW" role="1Duv9x">
              <property role="TrG5h" value="it" />
              <node concept="3uibUv" id="1FOQehxolJX" role="1tU5fm">
                <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="5Qx6_660$sf" role="1DdaDG">
              <node concept="37vLTw" id="5Qx6_660zcn" role="2Oq$k0">
                <ref role="3cqZAo" node="9dktABR$KQ" resolve="typesIndex" />
              </node>
              <node concept="liA8E" id="5Qx6_660_60" role="2OqNvi">
                <ref role="37wK5l" to="tj24:3yEb0I3SXN3" resolve="allReportItems" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2Hyoxv0bBN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2mhJggjDlnt" role="jymVt" />
      <node concept="3clFb_" id="6l3eCxofJGN" role="jymVt">
        <property role="TrG5h" value="clearCache" />
        <node concept="3Tm1VV" id="6l3eCxofJGO" role="1B3o_S" />
        <node concept="3cqZAl" id="6l3eCxofJGQ" role="3clF45" />
        <node concept="37vLTG" id="6l3eCxofJGR" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1RYTbd7EG4k" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="6l3eCxofJGT" role="3clF47">
          <node concept="3clFbJ" id="3DPJ8QJpx$8" role="3cqZAp">
            <node concept="3clFbS" id="3DPJ8QJpx$a" role="3clFbx">
              <node concept="3clFbF" id="1z4$59j6KuM" role="3cqZAp">
                <node concept="2OqwBi" id="1z4$59j6L77" role="3clFbG">
                  <node concept="2OqwBi" id="1RYTbd7E_nx" role="2Oq$k0">
                    <node concept="37vLTw" id="1z4$59j6KuK" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                    </node>
                    <node concept="liA8E" id="1RYTbd7EBlX" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1RYTbd7Di6U" resolve="getState" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1z4$59j6LAx" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:4duYm8_mMNK" resolve="clearCaches" />
                    <node concept="2OqwBi" id="1RYTbd7EFwZ" role="37wK5m">
                      <node concept="37vLTw" id="1z4$59j6NEW" role="2Oq$k0">
                        <ref role="3cqZAo" node="6l3eCxofJGR" resolve="node" />
                      </node>
                      <node concept="iZEcu" id="1RYTbd7EIz6" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3DPJ8QJpz3r" role="3clFbw">
              <node concept="10Nm6u" id="3DPJ8QJpzAI" role="3uHU7w" />
              <node concept="37vLTw" id="3DPJ8QJpB_9" role="3uHU7B">
                <ref role="3cqZAo" node="6l3eCxofJGR" resolve="node" />
              </node>
            </node>
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
          <node concept="3SKdUt" id="19OC90nb5_" role="3cqZAp">
            <node concept="1PaTwC" id="19OC90nb5A" role="1aUNEU">
              <node concept="3oM_SD" id="19OC90nb5B" role="1PaTwD">
                <property role="3oM_SC" value="FIXME:" />
              </node>
              <node concept="3oM_SD" id="19OC90nb5C" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="19OC90nb5D" role="1PaTwD">
                <property role="3oM_SC" value="might" />
              </node>
              <node concept="3oM_SD" id="19OC90nb5E" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="19OC90nb5F" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="19OC90nb5G" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="19OC90nb5H" role="1PaTwD">
                <property role="3oM_SC" value="containing" />
              </node>
              <node concept="3oM_SD" id="19OC90nb5I" role="1PaTwD">
                <property role="3oM_SC" value="root!" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="19OC90nb5J" role="3cqZAp">
            <node concept="3cpWsn" id="19OC90nb5K" role="3cpWs9">
              <property role="TrG5h" value="containingRoot" />
              <node concept="3Tqbb2" id="19OC90nb5L" role="1tU5fm" />
              <node concept="2OqwBi" id="19OC90nb5M" role="33vP2m">
                <node concept="37vLTw" id="19OC90nb5N" role="2Oq$k0">
                  <ref role="3cqZAo" node="6l3eCxofJGZ" resolve="node" />
                </node>
                <node concept="liA8E" id="19OC90nb5O" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="At0yqMXSkh" role="3cqZAp">
            <node concept="2OqwBi" id="At0yqMXZs2" role="3clFbG">
              <node concept="37vLTw" id="At0yqMXSkf" role="2Oq$k0">
                <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
              </node>
              <node concept="liA8E" id="At0yqMY6Qp" role="2OqNvi">
                <ref role="37wK5l" to="tj24:At0yqMUA4l" resolve="isCacheUpToDate" />
                <node concept="37vLTw" id="At0yqMYnat" role="37wK5m">
                  <ref role="3cqZAo" node="19OC90nb5K" resolve="containingRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6l3eCxofJH2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2mhJggjDpQU" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nz" role="jymVt">
        <property role="TrG5h" value="addTypeAccessListener" />
        <node concept="3Tm1VV" id="3CzfQ_oh9n$" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nA" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nB" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9nC" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9nD" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_oi94q" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_oifqm" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_oi94p" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohqQB" resolve="accessListeners" />
              </node>
              <node concept="TSZUe" id="3CzfQ_oiogo" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_oiurv" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nB" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9nE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_okxHf" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nF" role="jymVt">
        <property role="TrG5h" value="removeTypeAccessListener" />
        <node concept="3Tm1VV" id="3CzfQ_oh9nG" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nI" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nJ" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9nK" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9nL" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_oi_e_" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_oiG0P" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_oi_e$" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohqQB" resolve="accessListeners" />
              </node>
              <node concept="3dhRuq" id="3CzfQ_oiMIR" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_oiUBf" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nJ" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9nM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_okr33" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nN" role="jymVt">
        <property role="TrG5h" value="addTypeInvalidationListener" />
        <node concept="3Tm1VV" id="3CzfQ_oh9nO" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nQ" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nR" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9nS" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9nT" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_oj2N6" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_oj9B2" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_oj2N5" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohu8F" resolve="invalidationListeners" />
              </node>
              <node concept="TSZUe" id="3CzfQ_ojhy3" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_ojGs_" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nR" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9nU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_okhKY" role="jymVt" />
      <node concept="3clFb_" id="3CzfQ_oh9nV" role="jymVt">
        <property role="TrG5h" value="removeTypeInvalidationListener" />
        <node concept="3Tm1VV" id="3CzfQ_oh9nW" role="1B3o_S" />
        <node concept="3cqZAl" id="3CzfQ_oh9nY" role="3clF45" />
        <node concept="37vLTG" id="3CzfQ_oh9nZ" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="3CzfQ_oh9o0" role="1tU5fm">
            <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
          </node>
        </node>
        <node concept="3clFbS" id="3CzfQ_oh9o1" role="3clF47">
          <node concept="3clFbF" id="3CzfQ_ojNJV" role="3cqZAp">
            <node concept="2OqwBi" id="3CzfQ_ojTUz" role="3clFbG">
              <node concept="37vLTw" id="3CzfQ_ojNJU" role="2Oq$k0">
                <ref role="3cqZAo" node="3CzfQ_ohu8F" resolve="invalidationListeners" />
              </node>
              <node concept="3dhRuq" id="3CzfQ_ok2e8" role="2OqNvi">
                <node concept="37vLTw" id="3CzfQ_oka_z" role="25WWJ7">
                  <ref role="3cqZAo" node="3CzfQ_oh9nZ" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3CzfQ_oh9o2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3CzfQ_ohMKC" role="jymVt" />
      <node concept="312cEg" id="3CzfQ_ohqQB" role="jymVt">
        <property role="TrG5h" value="accessListeners" />
        <node concept="3Tm6S6" id="3CzfQ_ohqQC" role="1B3o_S" />
        <node concept="2hMVRd" id="3CzfQ_ohrpR" role="1tU5fm">
          <node concept="3uibUv" id="3CzfQ_ohs5F" role="2hN53Y">
            <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
          </node>
        </node>
        <node concept="2ShNRf" id="3CzfQ_ohtx8" role="33vP2m">
          <node concept="2i4dXS" id="3CzfQ_ohsTo" role="2ShVmc">
            <node concept="3uibUv" id="3CzfQ_ohsTp" role="HW$YZ">
              <ref role="3uigEE" to="1ka:~TypeAccessListener" resolve="TypeAccessListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3CzfQ_ohu8F" role="jymVt">
        <property role="TrG5h" value="invalidationListeners" />
        <node concept="3Tm6S6" id="3CzfQ_ohu8G" role="1B3o_S" />
        <node concept="2hMVRd" id="3CzfQ_ohuG2" role="1tU5fm">
          <node concept="3uibUv" id="3CzfQ_ohvgv" role="2hN53Y">
            <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
          </node>
        </node>
        <node concept="2ShNRf" id="3CzfQ_ohwFW" role="33vP2m">
          <node concept="2i4dXS" id="3CzfQ_ohw4c" role="2ShVmc">
            <node concept="3uibUv" id="3CzfQ_ohw4d" role="HW$YZ">
              <ref role="3uigEE" to="1ka:~TypeInvalidationListener" resolve="TypeInvalidationListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="1z4$59j5F_5" role="jymVt">
        <property role="TrG5h" value="typecheckingService" />
        <node concept="3Tm6S6" id="1z4$59j5F_3" role="1B3o_S" />
        <node concept="3uibUv" id="1z4$59j5F_4" role="1tU5fm">
          <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
        </node>
      </node>
      <node concept="312cEg" id="4duYm8_rvM9" role="jymVt">
        <property role="TrG5h" value="root" />
        <node concept="3Tm6S6" id="4duYm8_rvMa" role="1B3o_S" />
        <node concept="3Tqbb2" id="4duYm8_rvMc" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5XNK1YzpV_w" role="jymVt">
        <property role="TrG5h" value="bits" />
        <node concept="3Tm6S6" id="5XNK1YzpV_x" role="1B3o_S" />
        <node concept="10Oyi0" id="5XNK1YzpY5D" role="1tU5fm" />
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
    <node concept="312cEg" id="6hpwxwirfrt" role="jymVt">
      <property role="TrG5h" value="config" />
      <node concept="3Tm6S6" id="6hpwxwirfru" role="1B3o_S" />
      <node concept="3uibUv" id="6hpwxwirfrw" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
      </node>
    </node>
    <node concept="312cEg" id="51ek2rRX2Ez" role="jymVt">
      <property role="TrG5h" value="languageRegistry" />
      <node concept="3Tm6S6" id="51ek2rRX2E$" role="1B3o_S" />
      <node concept="3uibUv" id="51ek2rRX2EA" role="1tU5fm">
        <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="1RYTbd7AOyL" role="jymVt">
      <property role="TrG5h" value="states" />
      <node concept="3Tm6S6" id="1RYTbd7AOyM" role="1B3o_S" />
      <node concept="2hMVRd" id="1RYTbd7B44M" role="1tU5fm">
        <node concept="3uibUv" id="1RYTbd7B$Q8" role="2hN53Y">
          <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
        </node>
      </node>
      <node concept="2ShNRf" id="1RYTbd7B4Xd" role="33vP2m">
        <node concept="2i4dXS" id="1RYTbd7BnTK" role="2ShVmc">
          <node concept="3uibUv" id="1RYTbd7B_$r" role="HW$YZ">
            <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="vVsDu9byFZ">
    <property role="3GE5qa" value="lifecycle" />
    <property role="TrG5h" value="TypecheckingProviderLifecycle" />
    <node concept="2BZ0e9" id="6gnqipLyo6c" role="2uRRBG">
      <property role="TrG5h" value="initToken" />
      <node concept="3Tm6S6" id="6gnqipLyo6d" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLyosH" role="1tU5fm">
        <ref role="3uigEE" node="6gnqipLxPUE" resolve="ProviderInitToken" />
      </node>
    </node>
    <node concept="2uRRBj" id="vVsDu9byG8" role="2uRRBE">
      <node concept="3clFbS" id="vVsDu9byG9" role="2VODD2">
        <node concept="3clFbF" id="6gnqipLy0oP" role="3cqZAp">
          <node concept="37vLTI" id="6gnqipLyoWg" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLypck" role="37vLTJ">
              <node concept="2WthIp" id="6gnqipLyp21" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6gnqipLypkq" role="2OqNvi">
                <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
              </node>
            </node>
            <node concept="2ShNRf" id="6gnqipLy0oL" role="37vLTx">
              <node concept="1pGfFk" id="6gnqipLyo3O" role="2ShVmc">
                <ref role="37wK5l" node="6gnqipLxXBF" resolve="ProviderInitToken" />
                <node concept="XUXob" id="6gnqipLyo4r" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLyp$H" role="3cqZAp">
          <node concept="2OqwBi" id="6gnqipLypLb" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLyp$B" role="2Oq$k0">
              <node concept="2WthIp" id="6gnqipLyp$E" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6gnqipLyp$G" role="2OqNvi">
                <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
              </node>
            </node>
            <node concept="liA8E" id="6gnqipLypT7" role="2OqNvi">
              <ref role="37wK5l" node="6gnqipLxUdr" resolve="init" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3LFq2p98rrf" role="2uRRBF">
      <node concept="3clFbS" id="3LFq2p98rrg" role="2VODD2">
        <node concept="3clFbF" id="6gnqipLyqwM" role="3cqZAp">
          <node concept="2OqwBi" id="6gnqipLyqwN" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLyqwO" role="2Oq$k0">
              <node concept="2WthIp" id="6gnqipLyqwP" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6gnqipLyqwQ" role="2OqNvi">
                <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
              </node>
            </node>
            <node concept="liA8E" id="6gnqipLyqIJ" role="2OqNvi">
              <ref role="37wK5l" node="6gnqipLxQ9r" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLyqNe" role="3cqZAp">
          <node concept="37vLTI" id="6gnqipLyrbx" role="3clFbG">
            <node concept="10Nm6u" id="6gnqipLyrda" role="37vLTx" />
            <node concept="2OqwBi" id="6gnqipLyqNg" role="37vLTJ">
              <node concept="2WthIp" id="6gnqipLyqNh" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6gnqipLyqNi" role="2OqNvi">
                <ref role="2WH_rO" node="6gnqipLyo6c" resolve="initToken" />
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
          <node concept="1PaTwC" id="589APehYyi8" role="1aUNEU">
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
          <node concept="1PaTwC" id="589APehYyif" role="1aUNEU">
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
    <node concept="34jfKJ" id="5Qx6_65jLtF" role="34lFYf">
      <property role="TrG5h" value="watchingEnabled" />
      <node concept="10P_77" id="5Qx6_65jLtG" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="14IknWHoSHp" role="34lFYf">
      <property role="TrG5h" value="incrementalityEnabled" />
      <node concept="10P_77" id="14IknWHoSOk" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="1JkMMuhfeuh" role="34lFYf">
      <property role="TrG5h" value="incrementalAssertionsEnabled" />
      <node concept="10P_77" id="1JkMMuhfeui" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="1z4$59hNjW4" role="34lFYf">
      <property role="TrG5h" value="reportingEnabled" />
      <node concept="10P_77" id="1z4$59hNjW5" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="7iCybvTnn8F" role="34lFYf">
      <property role="TrG5h" value="traceEnabled" />
      <node concept="10P_77" id="7iCybvTnn8G" role="1tU5fm" />
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
          <node concept="3cpWs8" id="5Qx6_65kTEF" role="3cqZAp">
            <node concept="3cpWsn" id="5Qx6_65kTEG" role="3cpWs9">
              <property role="TrG5h" value="watchMod" />
              <node concept="10P_77" id="5Qx6_65kTEH" role="1tU5fm" />
              <node concept="3y3z36" id="5Qx6_65kTEI" role="33vP2m">
                <node concept="2OqwBi" id="5Qx6_65kTEJ" role="3uHU7w">
                  <node concept="3yMSdA" id="5Qx6_65kTEK" role="2Oq$k0" />
                  <node concept="liA8E" id="5Qx6_65kVN0" role="2OqNvi">
                    <ref role="37wK5l" node="5Qx6_65jSEe" resolve="isWatchingEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5Qx6_65kTEM" role="3uHU7B">
                  <node concept="2OqwBi" id="5Qx6_65kTEN" role="2Oq$k0">
                    <node concept="2xqhHp" id="5Qx6_65kTEO" role="2Oq$k0" />
                    <node concept="LR4Ub" id="5Qx6_65kTEP" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="5Qx6_65kU_0" role="2OqNvi">
                    <ref role="2WH_rO" node="5Qx6_65jLtF" resolve="watchingEnabled" />
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
          <node concept="3cpWs8" id="1JkMMuhfrq_" role="3cqZAp">
            <node concept="3cpWsn" id="1JkMMuhfrqA" role="3cpWs9">
              <property role="TrG5h" value="incrAssertsMod" />
              <node concept="10P_77" id="1JkMMuhfrqB" role="1tU5fm" />
              <node concept="3y3z36" id="1JkMMuhfrqC" role="33vP2m">
                <node concept="2OqwBi" id="1JkMMuhfrqD" role="3uHU7w">
                  <node concept="3yMSdA" id="1JkMMuhfrqE" role="2Oq$k0" />
                  <node concept="liA8E" id="1JkMMuhfukB" role="2OqNvi">
                    <ref role="37wK5l" node="1JkMMuhevKK" resolve="isIncrementalityAssertionEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1JkMMuhfrqG" role="3uHU7B">
                  <node concept="2OqwBi" id="1JkMMuhfrqH" role="2Oq$k0">
                    <node concept="2xqhHp" id="1JkMMuhfrqI" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1JkMMuhfrqJ" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1JkMMuhfsXS" role="2OqNvi">
                    <ref role="2WH_rO" node="1JkMMuhfeuh" resolve="incrementalAssertionsEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7iCybvTnpmp" role="3cqZAp">
            <node concept="3cpWsn" id="7iCybvTnpmq" role="3cpWs9">
              <property role="TrG5h" value="reportMod" />
              <node concept="10P_77" id="7iCybvTnpmr" role="1tU5fm" />
              <node concept="3y3z36" id="7iCybvTnpms" role="33vP2m">
                <node concept="2OqwBi" id="7iCybvTnpmt" role="3uHU7w">
                  <node concept="3yMSdA" id="7iCybvTnpmu" role="2Oq$k0" />
                  <node concept="liA8E" id="1z4$59hNFhS" role="2OqNvi">
                    <ref role="37wK5l" node="1z4$59hGu4P" resolve="isReportingEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7iCybvTnpmw" role="3uHU7B">
                  <node concept="2OqwBi" id="7iCybvTnpmx" role="2Oq$k0">
                    <node concept="2xqhHp" id="7iCybvTnpmy" role="2Oq$k0" />
                    <node concept="LR4Ub" id="7iCybvTnpmz" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1z4$59hNEio" role="2OqNvi">
                    <ref role="2WH_rO" node="1z4$59hNjW4" resolve="reportingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1z4$59hNDlV" role="3cqZAp">
            <node concept="3cpWsn" id="1z4$59hNDlW" role="3cpWs9">
              <property role="TrG5h" value="traceMod" />
              <node concept="10P_77" id="1z4$59hNDlX" role="1tU5fm" />
              <node concept="3y3z36" id="1z4$59hNDlY" role="33vP2m">
                <node concept="2OqwBi" id="1z4$59hNDlZ" role="3uHU7w">
                  <node concept="3yMSdA" id="1z4$59hNDm0" role="2Oq$k0" />
                  <node concept="liA8E" id="1z4$59hNDm1" role="2OqNvi">
                    <ref role="37wK5l" node="7iCybvTn3it" resolve="isTraceEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1z4$59hNDm2" role="3uHU7B">
                  <node concept="2OqwBi" id="1z4$59hNDm3" role="2Oq$k0">
                    <node concept="2xqhHp" id="1z4$59hNDm4" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1z4$59hNDm5" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1z4$59hNDm6" role="2OqNvi">
                    <ref role="2WH_rO" node="7iCybvTnn8F" resolve="traceEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="14IknWHqK7i" role="3cqZAp" />
          <node concept="3clFbF" id="14pL6xi9c6u" role="3cqZAp">
            <node concept="22lmx$" id="1z4$59hNICp" role="3clFbG">
              <node concept="37vLTw" id="1z4$59hNJ1U" role="3uHU7w">
                <ref role="3cqZAo" node="1z4$59hNDlW" resolve="traceMod" />
              </node>
              <node concept="22lmx$" id="7iCybvTnrC7" role="3uHU7B">
                <node concept="22lmx$" id="1JkMMuhfuPy" role="3uHU7B">
                  <node concept="37vLTw" id="1JkMMuhfvvW" role="3uHU7w">
                    <ref role="3cqZAo" node="1JkMMuhfrqA" resolve="incrAssertsMod" />
                  </node>
                  <node concept="22lmx$" id="14IknWHqJHa" role="3uHU7B">
                    <node concept="22lmx$" id="5Qx6_65kWgd" role="3uHU7B">
                      <node concept="37vLTw" id="5Qx6_65kWrX" role="3uHU7w">
                        <ref role="3cqZAo" node="5Qx6_65kTEG" resolve="watchMod" />
                      </node>
                      <node concept="37vLTw" id="14IknWHqJpJ" role="3uHU7B">
                        <ref role="3cqZAo" node="14IknWHqGsM" resolve="tcMod" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="14IknWHqK29" role="3uHU7w">
                      <ref role="3cqZAo" node="14IknWHqHH1" resolve="incrMod" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7iCybvTnsbS" role="3uHU7w">
                  <ref role="3cqZAo" node="7iCybvTnpmq" resolve="reportMod" />
                </node>
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
          <node concept="3clFbF" id="5Qx6_65kPTE" role="3cqZAp">
            <node concept="2OqwBi" id="5Qx6_65kPTF" role="3clFbG">
              <node concept="3yMSdA" id="5Qx6_65kPTG" role="2Oq$k0" />
              <node concept="liA8E" id="5Qx6_65kPTH" role="2OqNvi">
                <ref role="37wK5l" node="5Qx6_65k3w9" resolve="setWatchingEnabled" />
                <node concept="2OqwBi" id="5Qx6_65kPTI" role="37wK5m">
                  <node concept="2OqwBi" id="5Qx6_65kPTJ" role="2Oq$k0">
                    <node concept="2xqhHp" id="5Qx6_65kPTK" role="2Oq$k0" />
                    <node concept="LR4Ub" id="5Qx6_65kPTL" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="5Qx6_65kRhu" role="2OqNvi">
                    <ref role="2WH_rO" node="5Qx6_65jLtF" resolve="watchingEnabled" />
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
          <node concept="3clFbF" id="1JkMMuhfcJ2" role="3cqZAp">
            <node concept="2OqwBi" id="1JkMMuhfcJ3" role="3clFbG">
              <node concept="3yMSdA" id="1JkMMuhfcJ4" role="2Oq$k0" />
              <node concept="liA8E" id="1JkMMuhfcJ5" role="2OqNvi">
                <ref role="37wK5l" node="1JkMMuheLw7" resolve="setIncrementalityAssertionEnabled" />
                <node concept="2OqwBi" id="1JkMMuhfcJ6" role="37wK5m">
                  <node concept="2OqwBi" id="1JkMMuhfcJ7" role="2Oq$k0">
                    <node concept="2xqhHp" id="1JkMMuhfcJ8" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1JkMMuhfcJ9" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1JkMMuhff98" role="2OqNvi">
                    <ref role="2WH_rO" node="1JkMMuhfeuh" resolve="incrementalAssertionsEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1z4$59hNoPu" role="3cqZAp">
            <node concept="2OqwBi" id="1z4$59hNoPv" role="3clFbG">
              <node concept="3yMSdA" id="1z4$59hNoPw" role="2Oq$k0" />
              <node concept="liA8E" id="1z4$59hNoPx" role="2OqNvi">
                <ref role="37wK5l" node="1z4$59hG6VL" resolve="setReportingEnabled" />
                <node concept="2OqwBi" id="1z4$59hNoPy" role="37wK5m">
                  <node concept="2OqwBi" id="1z4$59hNoPz" role="2Oq$k0">
                    <node concept="2xqhHp" id="1z4$59hNoP$" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1z4$59hNoP_" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1z4$59hNqaT" role="2OqNvi">
                    <ref role="2WH_rO" node="1z4$59hNjW4" resolve="reportingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7iCybvTnlvP" role="3cqZAp">
            <node concept="2OqwBi" id="7iCybvTnlvQ" role="3clFbG">
              <node concept="3yMSdA" id="7iCybvTnlvR" role="2Oq$k0" />
              <node concept="liA8E" id="7iCybvTnlvS" role="2OqNvi">
                <ref role="37wK5l" node="7iCybvTn6Vi" resolve="setTraceEnabled" />
                <node concept="2OqwBi" id="7iCybvTnlvT" role="37wK5m">
                  <node concept="2OqwBi" id="7iCybvTnlvU" role="2Oq$k0">
                    <node concept="2xqhHp" id="7iCybvTnlvV" role="2Oq$k0" />
                    <node concept="LR4Ub" id="7iCybvTnlvW" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="7iCybvTnnsV" role="2OqNvi">
                    <ref role="2WH_rO" node="7iCybvTnn8F" resolve="traceEnabled" />
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
          <node concept="3clFbF" id="5Qx6_65kRtc" role="3cqZAp">
            <node concept="37vLTI" id="5Qx6_65kRtd" role="3clFbG">
              <node concept="2OqwBi" id="5Qx6_65kRte" role="37vLTx">
                <node concept="3yMSdA" id="5Qx6_65kRtf" role="2Oq$k0" />
                <node concept="liA8E" id="5Qx6_65kTn0" role="2OqNvi">
                  <ref role="37wK5l" node="5Qx6_65jSEe" resolve="isWatchingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="5Qx6_65kRth" role="37vLTJ">
                <node concept="2OqwBi" id="5Qx6_65kRti" role="2Oq$k0">
                  <node concept="2xqhHp" id="5Qx6_65kRtj" role="2Oq$k0" />
                  <node concept="LR4Ub" id="5Qx6_65kRtk" role="2OqNvi">
                    <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                  </node>
                </node>
                <node concept="34pFcN" id="5Qx6_65kS$o" role="2OqNvi">
                  <ref role="2WH_rO" node="5Qx6_65jLtF" resolve="watchingEnabled" />
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
          <node concept="3clFbF" id="1JkMMuhffPS" role="3cqZAp">
            <node concept="37vLTI" id="1JkMMuhffPT" role="3clFbG">
              <node concept="2OqwBi" id="1JkMMuhffPU" role="37vLTx">
                <node concept="3yMSdA" id="1JkMMuhffPV" role="2Oq$k0" />
                <node concept="liA8E" id="1JkMMuhfhBj" role="2OqNvi">
                  <ref role="37wK5l" node="1JkMMuhevKK" resolve="isIncrementalityAssertionEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="1JkMMuhffPX" role="37vLTJ">
                <node concept="2OqwBi" id="1JkMMuhffPY" role="2Oq$k0">
                  <node concept="2xqhHp" id="1JkMMuhffPZ" role="2Oq$k0" />
                  <node concept="LR4Ub" id="1JkMMuhffQ0" role="2OqNvi">
                    <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                  </node>
                </node>
                <node concept="34pFcN" id="1JkMMuhfg_5" role="2OqNvi">
                  <ref role="2WH_rO" node="1JkMMuhfeuh" resolve="incrementalAssertionsEnabled" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1z4$59hNqtZ" role="3cqZAp">
            <node concept="37vLTI" id="1z4$59hNqu0" role="3clFbG">
              <node concept="2OqwBi" id="1z4$59hNqu1" role="37vLTx">
                <node concept="3yMSdA" id="1z4$59hNqu2" role="2Oq$k0" />
                <node concept="liA8E" id="1z4$59hNCyL" role="2OqNvi">
                  <ref role="37wK5l" node="1z4$59hGu4P" resolve="isReportingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="1z4$59hNqu4" role="37vLTJ">
                <node concept="2OqwBi" id="1z4$59hNqu5" role="2Oq$k0">
                  <node concept="2xqhHp" id="1z4$59hNqu6" role="2Oq$k0" />
                  <node concept="LR4Ub" id="1z4$59hNqu7" role="2OqNvi">
                    <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                  </node>
                </node>
                <node concept="34pFcN" id="1z4$59hNrOO" role="2OqNvi">
                  <ref role="2WH_rO" node="1z4$59hNjW4" resolve="reportingEnabled" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7iCybvTnn$$" role="3cqZAp">
            <node concept="37vLTI" id="7iCybvTnn$_" role="3clFbG">
              <node concept="2OqwBi" id="7iCybvTnn$A" role="37vLTx">
                <node concept="3yMSdA" id="7iCybvTnn$B" role="2Oq$k0" />
                <node concept="liA8E" id="1z4$59hNAcf" role="2OqNvi">
                  <ref role="37wK5l" node="7iCybvTn3it" resolve="isTraceEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="7iCybvTnn$D" role="37vLTJ">
                <node concept="2OqwBi" id="7iCybvTnn$E" role="2Oq$k0">
                  <node concept="2xqhHp" id="7iCybvTnn$F" role="2Oq$k0" />
                  <node concept="LR4Ub" id="7iCybvTnn$G" role="2OqNvi">
                    <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                  </node>
                </node>
                <node concept="34pFcN" id="7iCybvTnonV" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCybvTnn8F" resolve="traceEnabled" />
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
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="14pL6xi8ySR" role="37wK5m">
                  <property role="Xl_RC" value="Enable experimental typechecking with Coderules" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Qx6_65klcV" role="3cqZAp">
          <node concept="37vLTI" id="5Qx6_65klcW" role="3clFbG">
            <node concept="2OqwBi" id="5Qx6_65klcX" role="37vLTJ">
              <node concept="Xjq3P" id="5Qx6_65klcY" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Qx6_65kpPv" role="2OqNvi">
                <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Qx6_65kld0" role="37vLTx">
              <node concept="1pGfFk" id="5Qx6_65kld1" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="5Qx6_65kld2" role="37wK5m">
                  <property role="Xl_RC" value="Watch model changes and collect updates" />
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
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="14IknWHqlgE" role="37wK5m">
                  <property role="Xl_RC" value="Run typechecking incrementally" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JkMMuhelbb" role="3cqZAp">
          <node concept="37vLTI" id="1JkMMuhelbc" role="3clFbG">
            <node concept="2OqwBi" id="1JkMMuhelbd" role="37vLTJ">
              <node concept="Xjq3P" id="1JkMMuhelbe" role="2Oq$k0" />
              <node concept="2OwXpG" id="1JkMMuheq0M" role="2OqNvi">
                <ref role="2Oxat5" node="1JkMMuhenaD" resolve="enableIncrementalityAssertionCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="1JkMMuhelbg" role="37vLTx">
              <node concept="1pGfFk" id="1JkMMuhelbh" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="1JkMMuhelbi" role="37wK5m">
                  <property role="Xl_RC" value="Enable incremental contracts assertions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1z4$59hFKst" role="3cqZAp">
          <node concept="37vLTI" id="1z4$59hFKsu" role="3clFbG">
            <node concept="2OqwBi" id="1z4$59hFKsv" role="37vLTJ">
              <node concept="Xjq3P" id="1z4$59hFKsw" role="2Oq$k0" />
              <node concept="2OwXpG" id="1z4$59hFPiw" role="2OqNvi">
                <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="1z4$59hFKsy" role="37vLTx">
              <node concept="1pGfFk" id="1z4$59hFKsz" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="1z4$59hFKs$" role="37wK5m">
                  <property role="Xl_RC" value="Report evaluation results" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTmRjG" role="3cqZAp">
          <node concept="37vLTI" id="7iCybvTmRjH" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTmRjI" role="37vLTJ">
              <node concept="Xjq3P" id="7iCybvTmRjJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTmSMI" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="7iCybvTmRjL" role="37vLTx">
              <node concept="1pGfFk" id="7iCybvTmRjM" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="7iCybvTmRjN" role="37wK5m">
                  <property role="Xl_RC" value="Collect trace events" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7iCybvTkFQC" role="3cqZAp" />
        <node concept="3cpWs8" id="1z4$59hFUmX" role="3cqZAp">
          <node concept="3cpWsn" id="1z4$59hFUmY" role="3cpWs9">
            <property role="TrG5h" value="updater" />
            <node concept="3uibUv" id="1z4$59hFUlY" role="1tU5fm">
              <ref role="3uigEE" to="hyam:~ItemListener" resolve="ItemListener" />
            </node>
            <node concept="2ShNRf" id="1z4$59hFUmZ" role="33vP2m">
              <node concept="YeOm9" id="1z4$59hFUn0" role="2ShVmc">
                <node concept="1Y3b0j" id="1z4$59hFUn1" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="hyam:~ItemListener" resolve="ItemListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="1z4$59hFUn2" role="1B3o_S" />
                  <node concept="3clFb_" id="1z4$59hFUn3" role="jymVt">
                    <property role="TrG5h" value="itemStateChanged" />
                    <node concept="3Tm1VV" id="1z4$59hFUn4" role="1B3o_S" />
                    <node concept="3cqZAl" id="1z4$59hFUn5" role="3clF45" />
                    <node concept="37vLTG" id="1z4$59hFUn6" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="1z4$59hFUn7" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ItemEvent" resolve="ItemEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1z4$59hFUn8" role="3clF47">
                      <node concept="3clFbF" id="1z4$59hFUn9" role="3cqZAp">
                        <node concept="1rXfSq" id="1z4$59hFUna" role="3clFbG">
                          <ref role="37wK5l" node="7iCybvTmrHH" resolve="updateEnabledState" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1z4$59hFUnb" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTlUOM" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTlWji" role="3clFbG">
            <node concept="37vLTw" id="7iCybvTlUOK" role="2Oq$k0">
              <ref role="3cqZAo" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
            </node>
            <node concept="liA8E" id="7iCybvTm0pF" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
              <node concept="37vLTw" id="1z4$59hFUnc" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hFUmY" resolve="updater" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Qx6_65lIZ0" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65lLWu" role="3clFbG">
            <node concept="37vLTw" id="5Qx6_65lIYY" role="2Oq$k0">
              <ref role="3cqZAo" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
            </node>
            <node concept="liA8E" id="5Qx6_65lOFO" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
              <node concept="37vLTw" id="1z4$59hFUnd" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hFUmY" resolve="updater" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JkMMuhf5hu" role="3cqZAp">
          <node concept="2OqwBi" id="1JkMMuhf5hv" role="3clFbG">
            <node concept="37vLTw" id="4s_lMmGjCTY" role="2Oq$k0">
              <ref role="3cqZAo" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
            </node>
            <node concept="liA8E" id="1JkMMuhf5hx" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
              <node concept="37vLTw" id="1z4$59hFUne" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hFUmY" resolve="updater" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1z4$59hHh1s" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hHjBx" role="3clFbG">
            <node concept="37vLTw" id="1z4$59hHh1q" role="2Oq$k0">
              <ref role="3cqZAo" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
            </node>
            <node concept="liA8E" id="1z4$59hHms6" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
              <node concept="37vLTw" id="1z4$59hHoE2" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hFUmY" resolve="updater" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1z4$59hFZso" role="3cqZAp" />
        <node concept="9aQIb" id="7iCybvTkCGh" role="3cqZAp">
          <node concept="3clFbS" id="7iCybvTkCGj" role="9aQI4">
            <node concept="3cpWs8" id="7iCybvTjnnI" role="3cqZAp">
              <node concept="3cpWsn" id="7iCybvTjnnJ" role="3cpWs9">
                <property role="TrG5h" value="mainPanel" />
                <node concept="3uibUv" id="7iCybvTjnlw" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                </node>
                <node concept="2ShNRf" id="7iCybvTjnnK" role="33vP2m">
                  <node concept="1pGfFk" id="7iCybvTjnnL" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iCybvTjkK_" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTjomP" role="3clFbG">
                <node concept="37vLTw" id="7iCybvTjnnM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
                <node concept="liA8E" id="7iCybvTjpMi" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="7iCybvTjqvL" role="37wK5m">
                    <node concept="1pGfFk" id="7iCybvTjsO6" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                      <node concept="37vLTw" id="7iCybvTjwpt" role="37wK5m">
                        <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                      </node>
                      <node concept="10M0yZ" id="7iCybvTjxe$" role="37wK5m">
                        <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                        <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iCybvTjyb5" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTjz9U" role="3clFbG">
                <node concept="37vLTw" id="7iCybvTjyb3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
                <node concept="liA8E" id="7iCybvTj$nj" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="2YIFZM" id="7iCybvTjAgR" role="37wK5m">
                    <ref role="37wK5l" to="dxuu:~Box.createHorizontalGlue()" resolve="createHorizontalGlue" />
                    <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iCybvTjBrP" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTjCr4" role="3clFbG">
                <node concept="37vLTw" id="7iCybvTjBrN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
                <node concept="liA8E" id="7iCybvTjD9f" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                  <node concept="2YIFZM" id="7iCybvTjOBb" role="37wK5m">
                    <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                    <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createTitledBorder(java.lang.String,boolean)" resolve="createTitledBorder" />
                    <node concept="Xl_RD" id="7iCybvTjP92" role="37wK5m">
                      <property role="Xl_RC" value="Typechecking" />
                    </node>
                    <node concept="3clFbT" id="7iCybvTjPX0" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7iCybvTjxhU" role="3cqZAp" />
            <node concept="9aQIb" id="7iCybvTk$_1" role="3cqZAp">
              <node concept="3clFbS" id="7iCybvTk$_3" role="9aQI4">
                <node concept="3cpWs8" id="7iCybvTkl8R" role="3cqZAp">
                  <node concept="3cpWsn" id="7iCybvTkl8S" role="3cpWs9">
                    <property role="TrG5h" value="subpanel" />
                    <node concept="3uibUv" id="7iCybvTkl8T" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                    </node>
                    <node concept="2ShNRf" id="7iCybvTkl8U" role="33vP2m">
                      <node concept="1pGfFk" id="7iCybvTkl8V" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7iCybvTkl8W" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkl8X" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTkl8Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTkl8Z" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                      <node concept="2ShNRf" id="7iCybvTkl90" role="37wK5m">
                        <node concept="1pGfFk" id="7iCybvTkl91" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                          <node concept="37vLTw" id="7iCybvTkl92" role="37wK5m">
                            <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                          </node>
                          <node concept="10M0yZ" id="7iCybvTkl93" role="37wK5m">
                            <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                            <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7iCybvTkNiB" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkOv1" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTkNi_" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTkPav" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="7iCybvTl4la" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <node concept="3cmrfG" id="7iCybvTl4lb" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7iCybvTkm0f" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkm0g" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTko6a" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTkm0i" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                      <node concept="2YIFZM" id="7iCybvTlzox" role="37wK5m">
                        <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                        <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                        <node concept="3cmrfG" id="7iCybvTlzoy" role="37wK5m">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7iCybvTkkcT" role="3cqZAp" />
                <node concept="3clFbF" id="14IknWHqozV" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTjVIC" role="3clFbG">
                    <node concept="liA8E" id="7iCybvTjVIF" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2OqwBi" id="14IknWHqozX" role="37wK5m">
                        <node concept="Xjq3P" id="14IknWHqozY" role="2Oq$k0" />
                        <node concept="2OwXpG" id="14IknWHqozZ" role="2OqNvi">
                          <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1z4$59hKHWw" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7iCybvTkYB4" role="3cqZAp" />
                <node concept="3clFbF" id="7iCybvTkpO7" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkr5K" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTkpO5" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTksBm" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="37vLTw" id="7iCybvTktXR" role="37wK5m">
                        <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7iCybvTkxlt" role="3cqZAp" />
            <node concept="3clFbF" id="7iCybvTkds6" role="3cqZAp">
              <node concept="1rXfSq" id="7iCybvTkds4" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="7iCybvTkeSF" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hCLXL" role="3cqZAp" />
            <node concept="3SKdUt" id="1z4$59hCTR5" role="3cqZAp">
              <node concept="1PaTwC" id="1z4$59hCTR6" role="1aUNEU">
                <node concept="3oM_SD" id="1z4$59hCVD_" role="1PaTwD">
                  <property role="3oM_SC" value="----------" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hCWrQ" role="3cqZAp" />
            <node concept="3cpWs8" id="1z4$59hCOC2" role="3cqZAp">
              <node concept="3cpWsn" id="1z4$59hCOC3" role="3cpWs9">
                <property role="TrG5h" value="editorPanel" />
                <node concept="3uibUv" id="1z4$59hCOC4" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                </node>
                <node concept="2ShNRf" id="1z4$59hCOC5" role="33vP2m">
                  <node concept="1pGfFk" id="1z4$59hCOC6" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hCOC7" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hCOC8" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hCOC9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hCOCa" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="1z4$59hCOCb" role="37wK5m">
                    <node concept="1pGfFk" id="1z4$59hCOCc" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                      <node concept="37vLTw" id="1z4$59hCOCd" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                      </node>
                      <node concept="10M0yZ" id="1z4$59hCOCe" role="37wK5m">
                        <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                        <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hCOCg" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hCOCh" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hCOCi" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hCOCj" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="2YIFZM" id="1z4$59hCOCk" role="37wK5m">
                    <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                    <ref role="37wK5l" to="dxuu:~Box.createHorizontalGlue()" resolve="createHorizontalGlue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hCZbG" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hCZbH" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hD4Hu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hCZbJ" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                  <node concept="2YIFZM" id="1z4$59hCZbK" role="37wK5m">
                    <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createTitledBorder(java.lang.String,boolean)" resolve="createTitledBorder" />
                    <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                    <node concept="Xl_RD" id="1z4$59hCZbL" role="37wK5m">
                      <property role="Xl_RC" value="Editor integration" />
                    </node>
                    <node concept="3clFbT" id="1z4$59hCZbM" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hCM0A" role="3cqZAp" />
            <node concept="9aQIb" id="1z4$59hKKGS" role="3cqZAp">
              <node concept="3clFbS" id="1z4$59hKKGT" role="9aQI4">
                <node concept="3cpWs8" id="1z4$59hKKGU" role="3cqZAp">
                  <node concept="3cpWsn" id="1z4$59hKKGV" role="3cpWs9">
                    <property role="TrG5h" value="subpanel" />
                    <node concept="3uibUv" id="1z4$59hKKGW" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                    </node>
                    <node concept="2ShNRf" id="1z4$59hKKGX" role="33vP2m">
                      <node concept="1pGfFk" id="1z4$59hKKGY" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hKKGZ" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKH0" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hKKH1" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKH2" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                      <node concept="2ShNRf" id="1z4$59hKKH3" role="37wK5m">
                        <node concept="1pGfFk" id="1z4$59hKKH4" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                          <node concept="37vLTw" id="1z4$59hKKH5" role="37wK5m">
                            <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                          </node>
                          <node concept="10M0yZ" id="1z4$59hKKH6" role="37wK5m">
                            <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                            <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hKKH7" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKH8" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hKKH9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKHa" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="1z4$59hKKHb" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <node concept="3cmrfG" id="1z4$59hKKHc" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hKKHd" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKHe" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hKKHf" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKHg" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                      <node concept="2YIFZM" id="1z4$59hKKHh" role="37wK5m">
                        <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                        <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                        <node concept="3cmrfG" id="1z4$59hKKHi" role="37wK5m">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hKKHj" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hDIuv" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hDIuw" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hL01j" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hDIuy" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2OqwBi" id="1z4$59hDIuz" role="37wK5m">
                        <node concept="Xjq3P" id="1z4$59hDIu$" role="2Oq$k0" />
                        <node concept="2OwXpG" id="1z4$59hDIu_" role="2OqNvi">
                          <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hDIos" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hDPQ0" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hDPQ1" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hL1nq" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hDPQ3" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2OqwBi" id="1z4$59hDPQ4" role="37wK5m">
                        <node concept="Xjq3P" id="1z4$59hDPQ5" role="2Oq$k0" />
                        <node concept="2OwXpG" id="1z4$59hDPQ6" role="2OqNvi">
                          <ref role="2Oxat5" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hKKHr" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hKKHs" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKHt" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hLGgx" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKHv" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="37vLTw" id="1z4$59hKKHw" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hE$0v" role="3cqZAp" />
            <node concept="3clFbF" id="1z4$59hD5qG" role="3cqZAp">
              <node concept="1rXfSq" id="1z4$59hD5qH" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="1z4$59hDae1" role="37wK5m">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hD5nm" role="3cqZAp" />
            <node concept="3SKdUt" id="1z4$59hDcSO" role="3cqZAp">
              <node concept="1PaTwC" id="1z4$59hDcSP" role="1aUNEU">
                <node concept="3oM_SD" id="1z4$59hDcSQ" role="1PaTwD">
                  <property role="3oM_SC" value="---------" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hDhzL" role="3cqZAp" />
            <node concept="3cpWs8" id="1z4$59hDhzM" role="3cqZAp">
              <node concept="3cpWsn" id="1z4$59hDhzN" role="3cpWs9">
                <property role="TrG5h" value="advancedPanel" />
                <node concept="3uibUv" id="1z4$59hDhzO" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                </node>
                <node concept="2ShNRf" id="1z4$59hDhzP" role="33vP2m">
                  <node concept="1pGfFk" id="1z4$59hDhzQ" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hDhzR" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hDhzS" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hDhzT" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hDhzU" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="1z4$59hDhzV" role="37wK5m">
                    <node concept="1pGfFk" id="1z4$59hDhzW" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                      <node concept="37vLTw" id="1z4$59hDhzX" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                      </node>
                      <node concept="10M0yZ" id="1z4$59hDhzY" role="37wK5m">
                        <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                        <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hDh$0" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hDh$1" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hDh$2" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hDh$3" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="2YIFZM" id="1z4$59hDh$4" role="37wK5m">
                    <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                    <ref role="37wK5l" to="dxuu:~Box.createHorizontalGlue()" resolve="createHorizontalGlue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hDh$5" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hDh$6" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hDh$7" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hDh$8" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                  <node concept="2YIFZM" id="1z4$59hDh$9" role="37wK5m">
                    <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createTitledBorder(java.lang.String,boolean)" resolve="createTitledBorder" />
                    <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                    <node concept="Xl_RD" id="1z4$59hDh$a" role="37wK5m">
                      <property role="Xl_RC" value="Advanced" />
                    </node>
                    <node concept="3clFbT" id="1z4$59hDh$b" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hGYk$" role="3cqZAp" />
            <node concept="9aQIb" id="1z4$59hEUWx" role="3cqZAp">
              <node concept="3clFbS" id="1z4$59hEUWy" role="9aQI4">
                <node concept="3cpWs8" id="1z4$59hEUWz" role="3cqZAp">
                  <node concept="3cpWsn" id="1z4$59hEUW$" role="3cpWs9">
                    <property role="TrG5h" value="subpanel" />
                    <node concept="3uibUv" id="1z4$59hEUW_" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                    </node>
                    <node concept="2ShNRf" id="1z4$59hEUWA" role="33vP2m">
                      <node concept="1pGfFk" id="1z4$59hEUWB" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hEUWC" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUWD" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hEUWE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUWF" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                      <node concept="2ShNRf" id="1z4$59hEUWG" role="37wK5m">
                        <node concept="1pGfFk" id="1z4$59hEUWH" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                          <node concept="37vLTw" id="1z4$59hEUWI" role="37wK5m">
                            <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                          </node>
                          <node concept="10M0yZ" id="1z4$59hEUWJ" role="37wK5m">
                            <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                            <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hEUWK" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUWL" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hEUWM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUWN" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="1z4$59hEUWO" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <node concept="3cmrfG" id="1z4$59hEUWP" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hEUWQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUWR" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hEUWS" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUWT" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                      <node concept="2YIFZM" id="1z4$59hEUWU" role="37wK5m">
                        <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                        <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                        <node concept="3cmrfG" id="1z4$59hEUWV" role="37wK5m">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hIJhJ" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hI3rG" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hI7iZ" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hLham" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hIb09" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2ShNRf" id="1z4$59hIcYl" role="37wK5m">
                        <node concept="1pGfFk" id="1z4$59hIH8O" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                          <node concept="Xl_RD" id="1z4$59hIHHA" role="37wK5m">
                            <property role="Xl_RC" value="When evaluating Coderules program:" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hIMVB" role="3cqZAp" />
                <node concept="9aQIb" id="1z4$59hITIL" role="3cqZAp">
                  <node concept="3clFbS" id="1z4$59hITIM" role="9aQI4">
                    <node concept="3cpWs8" id="1z4$59hITIN" role="3cqZAp">
                      <node concept="3cpWsn" id="1z4$59hITIO" role="3cpWs9">
                        <property role="TrG5h" value="subsubpanel" />
                        <node concept="3uibUv" id="1z4$59hITIP" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                        </node>
                        <node concept="2ShNRf" id="1z4$59hITIQ" role="33vP2m">
                          <node concept="1pGfFk" id="1z4$59hITIR" role="2ShVmc">
                            <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hITIS" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITIT" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hITIU" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITIV" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                          <node concept="2ShNRf" id="1z4$59hITIW" role="37wK5m">
                            <node concept="1pGfFk" id="1z4$59hITIX" role="2ShVmc">
                              <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                              <node concept="37vLTw" id="1z4$59hITIY" role="37wK5m">
                                <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                              </node>
                              <node concept="10M0yZ" id="1z4$59hITIZ" role="37wK5m">
                                <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                                <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hITJ0" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITJ1" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hITJ2" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITJ3" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2YIFZM" id="1z4$59hITJ4" role="37wK5m">
                            <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                            <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                            <node concept="3cmrfG" id="1z4$59hITJ5" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hITJ6" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITJ7" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hITJ8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITJ9" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                          <node concept="2YIFZM" id="1z4$59hITJa" role="37wK5m">
                            <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                            <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                            <node concept="3cmrfG" id="1z4$59hITJb" role="37wK5m">
                              <property role="3cmrfH" value="20" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59hITJc" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hFcRU" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hFcRV" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hLopO" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hFcRX" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2OqwBi" id="1z4$59hFcRY" role="37wK5m">
                            <node concept="Xjq3P" id="1z4$59hFcRZ" role="2Oq$k0" />
                            <node concept="2OwXpG" id="1z4$59hGSii" role="2OqNvi">
                              <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59hLnmx" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hGO0c" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hGO0d" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hJboR" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hGO0f" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2OqwBi" id="1z4$59hGO0g" role="37wK5m">
                            <node concept="Xjq3P" id="1z4$59hGO0h" role="2Oq$k0" />
                            <node concept="2OwXpG" id="1z4$59hGO0i" role="2OqNvi">
                              <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59hJcQW" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hITJl" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITJm" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hJ1dL" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITJo" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="37vLTw" id="1z4$59hITJp" role="37wK5m">
                            <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hM08k" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hMN2P" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hMPpx" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hMN2N" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hMQon" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="1z4$59hMU_V" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <node concept="3cmrfG" id="1z4$59hMU_W" role="37wK5m">
                          <property role="3cmrfH" value="10" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hM0tS" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hM0tT" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hM0tU" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hM0tV" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2ShNRf" id="1z4$59hM0tW" role="37wK5m">
                        <node concept="1pGfFk" id="1z4$59hM0tX" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                          <node concept="Xl_RD" id="1z4$59hM0tY" role="37wK5m">
                            <property role="Xl_RC" value="Incremental typechecking options:" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hM09J" role="3cqZAp" />
                <node concept="9aQIb" id="1z4$59hM5S_" role="3cqZAp">
                  <node concept="3clFbS" id="1z4$59hM5SA" role="9aQI4">
                    <node concept="3cpWs8" id="1z4$59hM5SB" role="3cqZAp">
                      <node concept="3cpWsn" id="1z4$59hM5SC" role="3cpWs9">
                        <property role="TrG5h" value="subsubpanel" />
                        <node concept="3uibUv" id="1z4$59hM5SD" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                        </node>
                        <node concept="2ShNRf" id="1z4$59hM5SE" role="33vP2m">
                          <node concept="1pGfFk" id="1z4$59hM5SF" role="2ShVmc">
                            <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hM5SG" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hM5SH" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hM5SI" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hM5SC" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hM5SJ" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                          <node concept="2ShNRf" id="1z4$59hM5SK" role="37wK5m">
                            <node concept="1pGfFk" id="1z4$59hM5SL" role="2ShVmc">
                              <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                              <node concept="37vLTw" id="1z4$59hM5SM" role="37wK5m">
                                <ref role="3cqZAo" node="1z4$59hM5SC" resolve="subsubpanel" />
                              </node>
                              <node concept="10M0yZ" id="1z4$59hM5SN" role="37wK5m">
                                <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                                <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hM5SO" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hM5SP" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hM5SQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hM5SC" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hM5SR" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2YIFZM" id="1z4$59hM5SS" role="37wK5m">
                            <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                            <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                            <node concept="3cmrfG" id="1z4$59hM5ST" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hM5SU" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hM5SV" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hM5SW" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hM5SC" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hM5SX" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                          <node concept="2YIFZM" id="1z4$59hM5SY" role="37wK5m">
                            <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                            <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                            <node concept="3cmrfG" id="1z4$59hM5SZ" role="37wK5m">
                              <property role="3cmrfH" value="20" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59hM5T0" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hF1E7" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hF1E8" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hMjzi" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hM5SC" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hF1Ea" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2OqwBi" id="1z4$59hF1Eb" role="37wK5m">
                            <node concept="Xjq3P" id="1z4$59hF1Ec" role="2Oq$k0" />
                            <node concept="2OwXpG" id="1z4$59hF1Ed" role="2OqNvi">
                              <ref role="2Oxat5" node="1JkMMuhenaD" resolve="enableIncrementalityAssertionCheckbox" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59hMmI6" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hM5Th" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hM5Ti" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hM5Tj" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hM5Tk" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="37vLTw" id="1z4$59hM5Tl" role="37wK5m">
                            <ref role="3cqZAo" node="1z4$59hM5SC" resolve="subsubpanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hIMWo" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hEUYA" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUYB" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hHO5k" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUYD" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="37vLTw" id="1z4$59hEUYE" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hHZOu" role="3cqZAp" />
            <node concept="3clFbF" id="1z4$59hDh$e" role="3cqZAp">
              <node concept="1rXfSq" id="1z4$59hDh$f" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="1z4$59hDh$g" role="37wK5m">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14pL6xi8wOZ" role="jymVt" />
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
    <node concept="2tJIrI" id="14IknWHqqnx" role="jymVt" />
    <node concept="3clFb_" id="5Qx6_65jSEe" role="jymVt">
      <property role="TrG5h" value="isWatchingEnabled" />
      <node concept="10P_77" id="5Qx6_65jSEf" role="3clF45" />
      <node concept="3Tm1VV" id="5Qx6_65jSEg" role="1B3o_S" />
      <node concept="3clFbS" id="5Qx6_65jSEh" role="3clF47">
        <node concept="3clFbF" id="5Qx6_65jSEi" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65jSEj" role="3clFbG">
            <node concept="37vLTw" id="5Qx6_65k34s" role="2Oq$k0">
              <ref role="3cqZAo" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
            </node>
            <node concept="liA8E" id="5Qx6_65jSEl" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTn6Vh" role="jymVt" />
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
    <node concept="2tJIrI" id="1JkMMuheydc" role="jymVt" />
    <node concept="3clFb_" id="1JkMMuhevKK" role="jymVt">
      <property role="TrG5h" value="isIncrementalityAssertionEnabled" />
      <node concept="10P_77" id="1JkMMuhevKL" role="3clF45" />
      <node concept="3Tm1VV" id="1JkMMuhevKM" role="1B3o_S" />
      <node concept="3clFbS" id="1JkMMuhevKN" role="3clF47">
        <node concept="3clFbF" id="1JkMMuhevKO" role="3cqZAp">
          <node concept="2OqwBi" id="1JkMMuhevKP" role="3clFbG">
            <node concept="37vLTw" id="1JkMMuheL9F" role="2Oq$k0">
              <ref role="3cqZAo" node="1JkMMuhenaD" resolve="enableIncrementalityAssertionCheckbox" />
            </node>
            <node concept="liA8E" id="1JkMMuhevKR" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Qx6_65jSEd" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTn3it" role="jymVt">
      <property role="TrG5h" value="isTraceEnabled" />
      <node concept="10P_77" id="7iCybvTn3iu" role="3clF45" />
      <node concept="3Tm1VV" id="7iCybvTn3iv" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTn3iw" role="3clF47">
        <node concept="3clFbF" id="7iCybvTn3ix" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTn3iy" role="3clFbG">
            <node concept="37vLTw" id="7iCybvTn6mE" role="2Oq$k0">
              <ref role="3cqZAo" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
            </node>
            <node concept="liA8E" id="7iCybvTn3i$" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTmvNX" role="jymVt" />
    <node concept="3clFb_" id="1z4$59hGu4P" role="jymVt">
      <property role="TrG5h" value="isReportingEnabled" />
      <node concept="10P_77" id="1z4$59hGu4Q" role="3clF45" />
      <node concept="3Tm1VV" id="1z4$59hGu4R" role="1B3o_S" />
      <node concept="3clFbS" id="1z4$59hGu4S" role="3clF47">
        <node concept="3clFbF" id="1z4$59hGu4T" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hGu4U" role="3clFbG">
            <node concept="37vLTw" id="1z4$59hRZPW" role="2Oq$k0">
              <ref role="3cqZAo" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
            </node>
            <node concept="liA8E" id="1z4$59hGu4W" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1z4$59hGu4O" role="jymVt" />
    <node concept="3clFb_" id="14pL6xi8xeo" role="jymVt">
      <property role="TrG5h" value="setTypecheckingEnabled" />
      <node concept="37vLTG" id="14pL6xi8xnm" role="3clF46">
        <property role="TrG5h" value="yes" />
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
                <ref role="3cqZAo" node="14pL6xi8xnm" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTmrHM" role="3cqZAp">
          <node concept="1rXfSq" id="7iCybvTmrHL" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTmrHH" resolve="updateEnabledState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Qx6_65k3w8" role="jymVt" />
    <node concept="3clFb_" id="5Qx6_65k3w9" role="jymVt">
      <property role="TrG5h" value="setWatchingEnabled" />
      <node concept="37vLTG" id="5Qx6_65k3wa" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="5Qx6_65k3wb" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5Qx6_65k3wc" role="3clF45" />
      <node concept="3Tm1VV" id="5Qx6_65k3wd" role="1B3o_S" />
      <node concept="3clFbS" id="5Qx6_65k3we" role="3clF47">
        <node concept="3clFbF" id="5Qx6_65k3wf" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65k3wg" role="3clFbG">
            <node concept="2OqwBi" id="5Qx6_65k3wh" role="2Oq$k0">
              <node concept="Xjq3P" id="5Qx6_65k3wi" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Qx6_65kcoN" role="2OqNvi">
                <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="5Qx6_65k3wk" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="5Qx6_65k3wl" role="37wK5m">
                <ref role="3cqZAo" node="5Qx6_65k3wa" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Qx6_65kuJs" role="3cqZAp">
          <node concept="1rXfSq" id="5Qx6_65kuJt" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTmrHH" resolve="updateEnabledState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTn3is" role="jymVt" />
    <node concept="3clFb_" id="14IknWHqqMF" role="jymVt">
      <property role="TrG5h" value="setIncrementalityEnabled" />
      <node concept="37vLTG" id="14IknWHqqMG" role="3clF46">
        <property role="TrG5h" value="yes" />
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
                <ref role="3cqZAo" node="14IknWHqqMG" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JkMMuhf4w1" role="3cqZAp">
          <node concept="1rXfSq" id="1JkMMuhf4w2" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTmrHH" resolve="updateEnabledState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JkMMuheNqV" role="jymVt" />
    <node concept="3clFb_" id="1JkMMuheLw7" role="jymVt">
      <property role="TrG5h" value="setIncrementalityAssertionEnabled" />
      <node concept="37vLTG" id="1JkMMuheLw8" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="1JkMMuheLw9" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1JkMMuheLwa" role="3clF45" />
      <node concept="3Tm1VV" id="1JkMMuheLwb" role="1B3o_S" />
      <node concept="3clFbS" id="1JkMMuheLwc" role="3clF47">
        <node concept="3clFbF" id="1JkMMuheLwd" role="3cqZAp">
          <node concept="2OqwBi" id="1JkMMuheLwe" role="3clFbG">
            <node concept="2OqwBi" id="1JkMMuheLwf" role="2Oq$k0">
              <node concept="Xjq3P" id="1JkMMuheLwg" role="2Oq$k0" />
              <node concept="2OwXpG" id="1JkMMuheT5a" role="2OqNvi">
                <ref role="2Oxat5" node="1JkMMuhenaD" resolve="enableIncrementalityAssertionCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="1JkMMuheLwi" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="1JkMMuheLwj" role="37wK5m">
                <ref role="3cqZAo" node="1JkMMuheLw8" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTlGm0" role="jymVt" />
    <node concept="3clFb_" id="1z4$59hG6VL" role="jymVt">
      <property role="TrG5h" value="setReportingEnabled" />
      <node concept="37vLTG" id="1z4$59hG6VM" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="1z4$59hG6VN" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1z4$59hG6VO" role="3clF45" />
      <node concept="3Tm1VV" id="1z4$59hG6VP" role="1B3o_S" />
      <node concept="3clFbS" id="1z4$59hG6VQ" role="3clF47">
        <node concept="3clFbF" id="1z4$59hG6VR" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hG6VS" role="3clFbG">
            <node concept="2OqwBi" id="1z4$59hG6VT" role="2Oq$k0">
              <node concept="Xjq3P" id="1z4$59hG6VU" role="2Oq$k0" />
              <node concept="2OwXpG" id="1z4$59hRYR6" role="2OqNvi">
                <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="1z4$59hG6VW" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="1z4$59hG6VX" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hG6VM" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1z4$59hGphL" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTn6Vi" role="jymVt">
      <property role="TrG5h" value="setTraceEnabled" />
      <node concept="37vLTG" id="7iCybvTn6Vj" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="7iCybvTn6Vk" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7iCybvTn6Vl" role="3clF45" />
      <node concept="3Tm1VV" id="7iCybvTn6Vm" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTn6Vn" role="3clF47">
        <node concept="3clFbF" id="7iCybvTn6Vo" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTn6Vp" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTn6Vq" role="2Oq$k0">
              <node concept="Xjq3P" id="7iCybvTn6Vr" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTnb8U" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="7iCybvTn6Vt" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="7iCybvTn6Vu" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTn6Vj" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTneMw" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTmrHH" role="jymVt">
      <property role="TrG5h" value="updateEnabledState" />
      <node concept="3Tm6S6" id="7iCybvTmrHI" role="1B3o_S" />
      <node concept="3cqZAl" id="7iCybvTmrHJ" role="3clF45" />
      <node concept="3clFbS" id="7iCybvTmrHw" role="3clF47">
        <node concept="3clFbF" id="5Qx6_65kcAq" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65kcAr" role="3clFbG">
            <node concept="2OqwBi" id="5Qx6_65kcAs" role="2Oq$k0">
              <node concept="Xjq3P" id="5Qx6_65kcAt" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Qx6_65kgW3" role="2OqNvi">
                <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="5Qx6_65kcAv" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="5Qx6_65kcAw" role="37wK5m">
                <node concept="2OqwBi" id="5Qx6_65kcAx" role="2Oq$k0">
                  <node concept="Xjq3P" id="5Qx6_65kcAy" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5Qx6_65kcAz" role="2OqNvi">
                    <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                  </node>
                </node>
                <node concept="liA8E" id="5Qx6_65kcA$" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTmrHx" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTmrHy" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTmrHz" role="2Oq$k0">
              <node concept="Xjq3P" id="7iCybvTmrH$" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTmrH_" role="2OqNvi">
                <ref role="2Oxat5" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="7iCybvTmrHA" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="5Qx6_65kqUc" role="37wK5m">
                <node concept="2OqwBi" id="7iCybvTmyk6" role="3uHU7B">
                  <node concept="2OqwBi" id="7iCybvTmwOR" role="2Oq$k0">
                    <node concept="Xjq3P" id="7iCybvTmwOS" role="2Oq$k0" />
                    <node concept="2OwXpG" id="7iCybvTmwOT" role="2OqNvi">
                      <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCybvTmzHO" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5Qx6_65kslQ" role="3uHU7w">
                  <node concept="2OqwBi" id="5Qx6_65kslR" role="2Oq$k0">
                    <node concept="Xjq3P" id="5Qx6_65kslS" role="2Oq$k0" />
                    <node concept="2OwXpG" id="5Qx6_65kus4" role="2OqNvi">
                      <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5Qx6_65kslU" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JkMMuheTlY" role="3cqZAp">
          <node concept="2OqwBi" id="1JkMMuheTlZ" role="3clFbG">
            <node concept="2OqwBi" id="1JkMMuheTm0" role="2Oq$k0">
              <node concept="Xjq3P" id="1JkMMuheTm1" role="2Oq$k0" />
              <node concept="2OwXpG" id="1JkMMuheVXF" role="2OqNvi">
                <ref role="2Oxat5" node="1JkMMuhenaD" resolve="enableIncrementalityAssertionCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="1JkMMuheTm3" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="1JkMMuheW_6" role="37wK5m">
                <node concept="2OqwBi" id="1JkMMuhf1xK" role="3uHU7w">
                  <node concept="2OqwBi" id="1JkMMuheZqP" role="2Oq$k0">
                    <node concept="Xjq3P" id="1JkMMuheYxb" role="2Oq$k0" />
                    <node concept="2OwXpG" id="1JkMMuhf0pF" role="2OqNvi">
                      <ref role="2Oxat5" node="14IknWHoWnA" resolve="enableIncrementalityCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1JkMMuhf318" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
                <node concept="1Wc70l" id="1JkMMuheTm4" role="3uHU7B">
                  <node concept="2OqwBi" id="1JkMMuheTm5" role="3uHU7B">
                    <node concept="2OqwBi" id="1JkMMuheTm6" role="2Oq$k0">
                      <node concept="Xjq3P" id="1JkMMuheTm7" role="2Oq$k0" />
                      <node concept="2OwXpG" id="1JkMMuheTm8" role="2OqNvi">
                        <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1JkMMuheTm9" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1JkMMuheTma" role="3uHU7w">
                    <node concept="2OqwBi" id="1JkMMuheTmb" role="2Oq$k0">
                      <node concept="Xjq3P" id="1JkMMuheTmc" role="2Oq$k0" />
                      <node concept="2OwXpG" id="1JkMMuheTmd" role="2OqNvi">
                        <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1JkMMuheTme" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1z4$59hG2j3" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hG2j4" role="3clFbG">
            <node concept="2OqwBi" id="1z4$59hG2j5" role="2Oq$k0">
              <node concept="Xjq3P" id="1z4$59hG2j6" role="2Oq$k0" />
              <node concept="2OwXpG" id="1z4$59hG5vz" role="2OqNvi">
                <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="1z4$59hG2j8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="1z4$59hG2j9" role="37wK5m">
                <node concept="2OqwBi" id="1z4$59hG2ja" role="2Oq$k0">
                  <node concept="Xjq3P" id="1z4$59hG2jb" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1z4$59hG2jc" role="2OqNvi">
                    <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                  </node>
                </node>
                <node concept="liA8E" id="1z4$59hG2jd" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTmT9P" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTmT9Q" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTmT9R" role="2Oq$k0">
              <node concept="Xjq3P" id="7iCybvTmT9S" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTmUdF" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="7iCybvTmT9U" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="1z4$59hGGud" role="37wK5m">
                <node concept="2OqwBi" id="7iCybvTmT9V" role="3uHU7B">
                  <node concept="2OqwBi" id="7iCybvTmT9W" role="2Oq$k0">
                    <node concept="Xjq3P" id="7iCybvTmT9X" role="2Oq$k0" />
                    <node concept="2OwXpG" id="7iCybvTmT9Y" role="2OqNvi">
                      <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCybvTmT9Z" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1z4$59hGK__" role="3uHU7w">
                  <node concept="2OqwBi" id="1z4$59hGIOd" role="2Oq$k0">
                    <node concept="Xjq3P" id="1z4$59hGIOe" role="2Oq$k0" />
                    <node concept="2OwXpG" id="1z4$59hGIOf" role="2OqNvi">
                      <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1z4$59hGLY9" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14pL6xi8zvf" role="jymVt" />
    <node concept="312cEg" id="14pL6xi8ySB" role="jymVt">
      <property role="TrG5h" value="enableTypecheckingCheckbox" />
      <node concept="3Tm6S6" id="14pL6xi8yS_" role="1B3o_S" />
      <node concept="3uibUv" id="14pL6xi8ySA" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="5Qx6_65jMHg" role="jymVt">
      <property role="TrG5h" value="enableWatchingCheckbox" />
      <node concept="3Tm6S6" id="5Qx6_65jMHh" role="1B3o_S" />
      <node concept="3uibUv" id="5Qx6_65jMHi" role="1tU5fm">
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
    <node concept="312cEg" id="1JkMMuhenaD" role="jymVt">
      <property role="TrG5h" value="enableIncrementalityAssertionCheckbox" />
      <node concept="3Tm6S6" id="1JkMMuhenaE" role="1B3o_S" />
      <node concept="3uibUv" id="1JkMMuhenaF" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="1z4$59hFD5A" role="jymVt">
      <property role="TrG5h" value="enableReportingCheckbox" />
      <node concept="3Tm6S6" id="1z4$59hFD5B" role="1B3o_S" />
      <node concept="3uibUv" id="1z4$59hFD5C" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="7iCybvTmPrI" role="jymVt">
      <property role="TrG5h" value="enableTraceCheckbox" />
      <node concept="3Tm6S6" id="7iCybvTmPrJ" role="1B3o_S" />
      <node concept="3uibUv" id="7iCybvTmPrK" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="2tJIrI" id="uB9WAZaAFr" role="jymVt" />
    <node concept="3Tm1VV" id="uB9WAZaAyE" role="1B3o_S" />
    <node concept="3uibUv" id="uB9WAZaAEU" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
  <node concept="312cEu" id="7iCybvTy_Mb">
    <property role="TrG5h" value="TypecheckingOptions" />
    <node concept="Wx3nA" id="7iCybvTzJGv" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PREFIX" />
      <node concept="3Tm1VV" id="7iCybvTzJGs" role="1B3o_S" />
      <node concept="17QB3L" id="7iCybvTzJGt" role="1tU5fm" />
      <node concept="Xl_RD" id="7iCybvTzJGu" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking." />
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTyVm6" role="jymVt" />
    <node concept="Wx3nA" id="7iCybvTyUUs" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_ENABLED" />
      <node concept="3Tm1VV" id="7iCybvTyUUp" role="1B3o_S" />
      <node concept="17QB3L" id="7iCybvTyUUq" role="1tU5fm" />
      <node concept="Xl_RD" id="7iCybvTyUUr" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
      </node>
    </node>
    <node concept="Wx3nA" id="5Qx6_65jytE" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_WATCHING" />
      <node concept="3Tm1VV" id="5Qx6_65jytF" role="1B3o_S" />
      <node concept="17QB3L" id="5Qx6_65jytG" role="1tU5fm" />
      <node concept="Xl_RD" id="5Qx6_65jytH" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking.watching" />
      </node>
    </node>
    <node concept="Wx3nA" id="7iCybvTyVsX" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_INCREMENTAL" />
      <node concept="3Tm1VV" id="7iCybvTyVsU" role="1B3o_S" />
      <node concept="17QB3L" id="7iCybvTyVsV" role="1tU5fm" />
      <node concept="Xl_RD" id="7iCybvTyVsW" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking.incremental" />
      </node>
    </node>
    <node concept="Wx3nA" id="1JkMMuhe4_t" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_INCREMENTAL_ASSERTIONS" />
      <node concept="3Tm1VV" id="1JkMMuhe4_u" role="1B3o_S" />
      <node concept="17QB3L" id="1JkMMuhe4_v" role="1tU5fm" />
      <node concept="Xl_RD" id="1JkMMuhe4_w" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking.assertions" />
      </node>
    </node>
    <node concept="Wx3nA" id="1z4$59hO85X" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_REPORTING" />
      <node concept="3Tm1VV" id="1z4$59hO85Y" role="1B3o_S" />
      <node concept="17QB3L" id="1z4$59hO85Z" role="1tU5fm" />
      <node concept="Xl_RD" id="1z4$59hO860" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking.report" />
      </node>
    </node>
    <node concept="Wx3nA" id="7iCybvTyWot" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_TRACE" />
      <node concept="3Tm1VV" id="7iCybvT$4$v" role="1B3o_S" />
      <node concept="17QB3L" id="7iCybvTyWor" role="1tU5fm" />
      <node concept="Xl_RD" id="7iCybvTyWos" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking.trace" />
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvT$Dp5" role="jymVt" />
    <node concept="Wx3nA" id="7iCybvT$FWp" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_ENABLED" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7iCybvT$PdJ" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="7iCybvT$PCp" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCybvT_6Q$" role="1B3o_S" />
      <node concept="2ShNRf" id="7iCybvT$GNV" role="33vP2m">
        <node concept="YeOm9" id="7iCybvT$K45" role="2ShVmc">
          <node concept="1Y3b0j" id="7iCybvT$K48" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7iCybvT$K49" role="1B3o_S" />
            <node concept="3clFb_" id="7iCybvT$K4e" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="7iCybvT$K4f" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="7iCybvT$K4g" role="1tU5fm">
                  <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="7iCybvT$KFf" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="7iCybvT$K4i" role="1B3o_S" />
              <node concept="3clFbS" id="7iCybvT$K4k" role="3clF47">
                <node concept="3clFbF" id="5dfEAcSrdHu" role="3cqZAp">
                  <node concept="10QFUN" id="5dfEAcSrdHw" role="3clFbG">
                    <node concept="2OqwBi" id="5dfEAcSrdHx" role="10QFUP">
                      <node concept="37vLTw" id="7DmawKu6n_p" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvT$K4f" resolve="config" />
                      </node>
                      <node concept="liA8E" id="5dfEAcSrdHz" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="5dfEAcSrdHG" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="5dfEAcSrdH$" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7iCybvT$K4m" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="7iCybvT$KqT" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5Qx6_65jA5I" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_WATCHING" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5Qx6_65jA5J" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="5Qx6_65jA5K" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5Qx6_65jA5L" role="1B3o_S" />
      <node concept="2ShNRf" id="5Qx6_65jA5M" role="33vP2m">
        <node concept="YeOm9" id="5Qx6_65jA5N" role="2ShVmc">
          <node concept="1Y3b0j" id="5Qx6_65jA5O" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5Qx6_65jA5P" role="1B3o_S" />
            <node concept="3clFb_" id="5Qx6_65jA5Q" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="5Qx6_65jA5R" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="5Qx6_65jA5S" role="1tU5fm">
                  <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="5Qx6_65jA5T" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="5Qx6_65jA5U" role="1B3o_S" />
              <node concept="3clFbS" id="5Qx6_65jA5V" role="3clF47">
                <node concept="3clFbF" id="5Qx6_65jA5W" role="3cqZAp">
                  <node concept="10QFUN" id="5Qx6_65jA5X" role="3clFbG">
                    <node concept="3uibUv" id="5Qx6_65jA5Y" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="5Qx6_65jA5Z" role="10QFUP">
                      <node concept="37vLTw" id="5Qx6_65jA60" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Qx6_65jA5R" resolve="config" />
                      </node>
                      <node concept="liA8E" id="5Qx6_65jA61" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="5Qx6_65jIA3" role="37wK5m">
                          <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5Qx6_65jA63" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="5Qx6_65jA64" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="7iCybvT_b52" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_INCREMENTAL" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7iCybvT_b53" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="7iCybvT_b54" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCybvT_b55" role="1B3o_S" />
      <node concept="2ShNRf" id="7iCybvT_b56" role="33vP2m">
        <node concept="YeOm9" id="7iCybvT_b57" role="2ShVmc">
          <node concept="1Y3b0j" id="7iCybvT_b58" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7iCybvT_b59" role="1B3o_S" />
            <node concept="3clFb_" id="7iCybvT_b5a" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="7iCybvT_b5b" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="7iCybvT_b5c" role="1tU5fm">
                  <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="7iCybvT_b5d" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="7iCybvT_b5e" role="1B3o_S" />
              <node concept="3clFbS" id="7iCybvT_b5f" role="3clF47">
                <node concept="3clFbF" id="5dfEAcSreiP" role="3cqZAp">
                  <node concept="10QFUN" id="5dfEAcSreiQ" role="3clFbG">
                    <node concept="3uibUv" id="5dfEAcSreiV" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="5dfEAcSrfur" role="10QFUP">
                      <node concept="37vLTw" id="7DmawKu6fsl" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvT_b5b" resolve="config" />
                      </node>
                      <node concept="liA8E" id="5dfEAcSrfut" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="5dfEAcSrfu_" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyVsX" resolve="OPTION_TYPECHECKING_INCREMENTAL" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7iCybvT_b5n" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="7iCybvT_b5o" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1JkMMuhe8TT" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_INCREMENTAL_ASSERTIONS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1JkMMuhe8TU" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="1JkMMuhe8TV" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1JkMMuhe8TW" role="1B3o_S" />
      <node concept="2ShNRf" id="1JkMMuhe8TX" role="33vP2m">
        <node concept="YeOm9" id="1JkMMuhe8TY" role="2ShVmc">
          <node concept="1Y3b0j" id="1JkMMuhe8TZ" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="1JkMMuhe8U0" role="1B3o_S" />
            <node concept="3clFb_" id="1JkMMuhe8U1" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="1JkMMuhe8U2" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="1JkMMuhe8U3" role="1tU5fm">
                  <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="1JkMMuhe8U4" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="1JkMMuhe8U5" role="1B3o_S" />
              <node concept="3clFbS" id="1JkMMuhe8U6" role="3clF47">
                <node concept="3clFbF" id="1JkMMuhe8U7" role="3cqZAp">
                  <node concept="10QFUN" id="1JkMMuhe8U8" role="3clFbG">
                    <node concept="3uibUv" id="1JkMMuhe8U9" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="1JkMMuhe8Ua" role="10QFUP">
                      <node concept="37vLTw" id="1JkMMuhe8Ub" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JkMMuhe8U2" resolve="config" />
                      </node>
                      <node concept="liA8E" id="1JkMMuhe8Uc" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="1JkMMuhedVi" role="37wK5m">
                          <ref role="3cqZAo" node="1JkMMuhe4_t" resolve="OPTION_TYPECHECKING_INCREMENTAL_ASSERTIONS" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1JkMMuhe8Ue" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="1JkMMuhe8Uf" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1z4$59hOqxg" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_REPORTING" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1z4$59hOqxh" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="1z4$59hOqxi" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1z4$59hOqxj" role="1B3o_S" />
      <node concept="2ShNRf" id="1z4$59hOqxk" role="33vP2m">
        <node concept="YeOm9" id="1z4$59hOqxl" role="2ShVmc">
          <node concept="1Y3b0j" id="1z4$59hOqxm" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="1z4$59hOqxn" role="1B3o_S" />
            <node concept="3clFb_" id="1z4$59hOqxo" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="1z4$59hOqxp" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="1z4$59hOqxq" role="1tU5fm">
                  <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="1z4$59hOqxr" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="1z4$59hOqxs" role="1B3o_S" />
              <node concept="3clFbS" id="1z4$59hOqxt" role="3clF47">
                <node concept="3clFbF" id="1z4$59hOqxu" role="3cqZAp">
                  <node concept="10QFUN" id="1z4$59hOqxv" role="3clFbG">
                    <node concept="3uibUv" id="1z4$59hOqxw" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="1z4$59hOqxx" role="10QFUP">
                      <node concept="37vLTw" id="1z4$59hOqxy" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59hOqxp" resolve="config" />
                      </node>
                      <node concept="liA8E" id="1z4$59hOqxz" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="1z4$59hO_Go" role="37wK5m">
                          <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1z4$59hOqx_" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="1z4$59hOqxA" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="7iCybvT_hbE" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_TRACE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7iCybvT_hbF" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="7iCybvT_hbG" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCybvT_hbH" role="1B3o_S" />
      <node concept="2ShNRf" id="7iCybvT_hbI" role="33vP2m">
        <node concept="YeOm9" id="7iCybvT_hbJ" role="2ShVmc">
          <node concept="1Y3b0j" id="7iCybvT_hbK" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7iCybvT_hbL" role="1B3o_S" />
            <node concept="3clFb_" id="7iCybvT_hbM" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="7iCybvT_hbN" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="7iCybvT_hbO" role="1tU5fm">
                  <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="7iCybvT_hbP" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="7iCybvT_hbQ" role="1B3o_S" />
              <node concept="3clFbS" id="7iCybvT_hbR" role="3clF47">
                <node concept="3clFbF" id="5dfEAcSrgrR" role="3cqZAp">
                  <node concept="10QFUN" id="5dfEAcSrgrS" role="3clFbG">
                    <node concept="3uibUv" id="5dfEAcSrgrT" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="5dfEAcSrhjT" role="10QFUP">
                      <node concept="37vLTw" id="7DmawKu6gMj" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvT_hbN" resolve="config" />
                      </node>
                      <node concept="liA8E" id="5dfEAcSrhjV" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="5dfEAcSrhk3" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7iCybvT_hbZ" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="7iCybvT_hc0" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1T5MAgPtJgB" role="jymVt">
      <property role="TrG5h" value="COLLECT_TRACES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1T5MAgPtJgC" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="1T5MAgPtJgD" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1T5MAgPtJgE" role="1B3o_S" />
      <node concept="2ShNRf" id="1T5MAgPtJgF" role="33vP2m">
        <node concept="YeOm9" id="1T5MAgPtJgG" role="2ShVmc">
          <node concept="1Y3b0j" id="1T5MAgPtJgH" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="31yc:7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="1T5MAgPtJgI" role="1B3o_S" />
            <node concept="3clFb_" id="1T5MAgPtJgJ" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="1T5MAgPtJgK" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="1T5MAgPtJgL" role="1tU5fm">
                  <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="1T5MAgPtJgM" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="1T5MAgPtJgN" role="1B3o_S" />
              <node concept="3clFbS" id="1T5MAgPtJgO" role="3clF47">
                <node concept="3clFbJ" id="1T5MAgPtPgh" role="3cqZAp">
                  <node concept="3clFbS" id="1T5MAgPtPgj" role="3clFbx">
                    <node concept="3cpWs6" id="1T5MAgPtS5o" role="3cqZAp">
                      <node concept="10M0yZ" id="1T5MAgPtSIb" role="3cqZAk">
                        <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
                        <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1T5MAgPtQPR" role="3clFbw">
                    <node concept="10M0yZ" id="1T5MAgPtQ8_" role="3uHU7B">
                      <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                      <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="1T5MAgPtRxf" role="3uHU7w">
                      <node concept="37vLTw" id="1T5MAgPtRxg" role="2Oq$k0">
                        <ref role="3cqZAo" node="1T5MAgPtJgK" resolve="config" />
                      </node>
                      <node concept="liA8E" id="1T5MAgPtRxh" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="1T5MAgPtRxp" role="37wK5m">
                          <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1T5MAgPtJgP" role="3cqZAp">
                  <node concept="10QFUN" id="1T5MAgPtJgQ" role="3clFbG">
                    <node concept="3uibUv" id="1T5MAgPtJgR" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="1T5MAgPtJgS" role="10QFUP">
                      <node concept="37vLTw" id="1T5MAgPtJgT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1T5MAgPtJgK" resolve="config" />
                      </node>
                      <node concept="liA8E" id="1T5MAgPtJgU" role="2OqNvi">
                        <ref role="37wK5l" to="31yc:7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="1T5MAgPtJgV" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1T5MAgPtJgW" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="1T5MAgPtJgX" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvT_hbD" role="jymVt" />
    <node concept="Wx3nA" id="7iCybvTz01p" role="jymVt">
      <property role="TrG5h" value="ALL_INSTANCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7iCybvTz01r" role="1B3o_S" />
      <node concept="_YKpA" id="7iCybvTz0e1" role="1tU5fm">
        <node concept="3uibUv" id="7iCybvTz0p1" role="_ZDj9">
          <ref role="3uigEE" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
        </node>
      </node>
      <node concept="2ShNRf" id="7iCybvTz0$Z" role="33vP2m">
        <node concept="Tc6Ow" id="7iCybvTz0wF" role="2ShVmc">
          <node concept="3uibUv" id="7iCybvTz0wG" role="HW$YZ">
            <ref role="3uigEE" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTyZEE" role="jymVt" />
    <node concept="2YIFZL" id="7iCybvTyA01" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="7iCybvTyD30" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7iCybvTyDpm" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="6hpwxwiqEEK" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6hpwxwiqETV" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3clFbS" id="7iCybvTy_YW" role="3clF47">
        <node concept="1HWtB8" id="7prluhlIL1p" role="3cqZAp">
          <node concept="10M0yZ" id="1T5MAgPxu4d" role="1HWFw0">
            <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
            <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
          </node>
          <node concept="3clFbS" id="7prluhlIL1t" role="1HWHxc">
            <node concept="3cpWs8" id="7prluhlJ8Wb" role="3cqZAp">
              <node concept="3cpWsn" id="7prluhlJ8Wc" role="3cpWs9">
                <property role="TrG5h" value="options" />
                <node concept="3uibUv" id="1T5MAgPxuhw" role="1tU5fm">
                  <ref role="3uigEE" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                </node>
                <node concept="2ShNRf" id="7prluhlJ8Wd" role="33vP2m">
                  <node concept="1pGfFk" id="7prluhlJ8We" role="2ShVmc">
                    <ref role="37wK5l" node="7iCybvTyDLm" resolve="TypecheckingOptions" />
                    <node concept="37vLTw" id="1T5MAgPxwij" role="37wK5m">
                      <ref role="3cqZAo" node="7iCybvTyD30" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="1T5MAgPxwpV" role="37wK5m">
                      <ref role="3cqZAo" node="6hpwxwiqEEK" resolve="config" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iCybvTz0YR" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTz1Cs" role="3clFbG">
                <node concept="10M0yZ" id="1T5MAgPxuxG" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
                  <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                </node>
                <node concept="TSZUe" id="7iCybvTz2xx" role="2OqNvi">
                  <node concept="37vLTw" id="1T5MAgPxwzw" role="25WWJ7">
                    <ref role="3cqZAo" node="7prluhlJ8Wc" resolve="options" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7prluhlJoRb" role="3cqZAp">
              <node concept="1PaTwC" id="7prluhlJoRc" role="1aUNEU">
                <node concept="3oM_SD" id="7prluhlJoRe" role="1PaTwD">
                  <property role="3oM_SC" value="register" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoS8" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoSr" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoSB" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoSG" role="1PaTwD">
                  <property role="3oM_SC" value="opened" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoSU" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoT9" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoTh" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoTq" role="1PaTwD">
                  <property role="3oM_SC" value="options" />
                </node>
                <node concept="3oM_SD" id="7prluhlJoTO" role="1PaTwD">
                  <property role="3oM_SC" value="provider" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7prluhlJ9mq" role="3cqZAp">
              <node concept="3clFbS" id="7prluhlJ9ms" role="3clFbx">
                <node concept="3clFbF" id="7prluhlJdel" role="3cqZAp">
                  <node concept="2OqwBi" id="7prluhlJdn5" role="3clFbG">
                    <node concept="37vLTw" id="1T5MAgPxwGA" role="2Oq$k0">
                      <ref role="3cqZAo" node="7prluhlJ8Wc" resolve="options" />
                    </node>
                    <node concept="liA8E" id="1T5MAgPxwUG" role="2OqNvi">
                      <ref role="37wK5l" node="7prluhlILnV" resolve="activate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7prluhlJc$4" role="3clFbw">
                <node concept="3cmrfG" id="7prluhlJd5P" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7prluhlJakU" role="3uHU7B">
                  <node concept="10M0yZ" id="1T5MAgPxu$J" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
                    <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                  </node>
                  <node concept="34oBXx" id="7prluhlJbba" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7iCybvTy_YU" role="3clF45" />
      <node concept="3Tm1VV" id="7iCybvTy_YV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7iCybvTyIdy" role="jymVt" />
    <node concept="2YIFZL" id="7iCybvTyI_q" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="37vLTG" id="7iCybvTz2SK" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7iCybvTz34o" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="7iCybvTyI_s" role="3clF45" />
      <node concept="3Tm1VV" id="7iCybvTyI_t" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTyI_u" role="3clF47">
        <node concept="1HWtB8" id="7prluhlJ3C7" role="3cqZAp">
          <node concept="10M0yZ" id="1T5MAgPxwXP" role="1HWFw0">
            <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
            <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
          </node>
          <node concept="3clFbS" id="7prluhlJ3Cb" role="1HWHxc">
            <node concept="3clFbF" id="7iCybvTz70M" role="3cqZAp">
              <node concept="2EnYce" id="7iCybvTzbt6" role="3clFbG">
                <node concept="2OqwBi" id="7iCybvTz7_I" role="2Oq$k0">
                  <node concept="10M0yZ" id="1T5MAgPxxhN" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
                    <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                  </node>
                  <node concept="1z4cxt" id="7iCybvTzb2b" role="2OqNvi">
                    <node concept="1bVj0M" id="7iCybvTzb2d" role="23t8la">
                      <node concept="3clFbS" id="7iCybvTzb2e" role="1bW5cS">
                        <node concept="3clFbF" id="7iCybvTzb2f" role="3cqZAp">
                          <node concept="2OqwBi" id="7IY4rnUF7fO" role="3clFbG">
                            <node concept="2OqwBi" id="7iCybvTzb2i" role="2Oq$k0">
                              <node concept="37vLTw" id="1T5MAgPxxXL" role="2Oq$k0">
                                <ref role="3cqZAo" node="7iCybvTzb2l" resolve="it" />
                              </node>
                              <node concept="2OwXpG" id="1T5MAgPxy3x" role="2OqNvi">
                                <ref role="2Oxat5" node="7iCybvTyDYC" resolve="project" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7IY4rnUF7sE" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                              <node concept="37vLTw" id="1T5MAgPxyib" role="37wK5m">
                                <ref role="3cqZAo" node="7iCybvTz2SK" resolve="project" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7iCybvTzb2l" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7iCybvTzb2m" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7iCybvTzg77" role="2OqNvi">
                  <ref role="37wK5l" node="7iCybvTzc_q" resolve="deactivate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7IY4rnUG6Es" role="3cqZAp">
              <node concept="2OqwBi" id="7IY4rnUG7qE" role="3clFbG">
                <node concept="10M0yZ" id="1T5MAgPxxtb" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
                  <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                </node>
                <node concept="1aUR6E" id="7IY4rnUG8lG" role="2OqNvi">
                  <node concept="1bVj0M" id="7IY4rnUG8lI" role="23t8la">
                    <node concept="3clFbS" id="7IY4rnUG8lJ" role="1bW5cS">
                      <node concept="3clFbF" id="7IY4rnUG8qZ" role="3cqZAp">
                        <node concept="2OqwBi" id="7IY4rnUG8r1" role="3clFbG">
                          <node concept="2OqwBi" id="7IY4rnUG8r2" role="2Oq$k0">
                            <node concept="37vLTw" id="1T5MAgPxytE" role="2Oq$k0">
                              <ref role="3cqZAo" node="7IY4rnUG8lK" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="1T5MAgPxyF5" role="2OqNvi">
                              <ref role="2Oxat5" node="7iCybvTyDYC" resolve="project" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7IY4rnUG8r5" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="1T5MAgPxz2X" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTz2SK" resolve="project" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7IY4rnUG8lK" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7IY4rnUG8lL" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5dfEAcSqwj4" role="3cqZAp">
              <node concept="3fqX7Q" id="7prluhlJoXE" role="3clFbw">
                <node concept="2OqwBi" id="7prluhlJoXF" role="3fr31v">
                  <node concept="10M0yZ" id="1T5MAgPxxwe" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
                    <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                  </node>
                  <node concept="1v1jN8" id="7prluhlJoXH" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbS" id="7prluhlJoXK" role="3clFbx">
                <node concept="3clFbF" id="7prluhlJqM0" role="3cqZAp">
                  <node concept="2OqwBi" id="7prluhlJsmz" role="3clFbG">
                    <node concept="2OqwBi" id="7prluhlJrmW" role="2Oq$k0">
                      <node concept="10M0yZ" id="1T5MAgPxxyv" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTz01p" resolve="ALL_INSTANCES" />
                        <ref role="1PxDUh" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                      </node>
                      <node concept="1uHKPH" id="7prluhlJsd9" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="7prluhlJsyl" role="2OqNvi">
                      <ref role="37wK5l" node="7prluhlILnV" resolve="activate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTy_Nr" role="jymVt" />
    <node concept="2YIFZL" id="7DmawKu60xG" role="jymVt">
      <property role="TrG5h" value="registerDefaultProviders" />
      <node concept="37vLTG" id="2tFDlV2dY_r" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="2tFDlV2dYUi" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3cqZAl" id="7DmawKu60xI" role="3clF45" />
      <node concept="3Tmbuc" id="7DmawKu64TO" role="1B3o_S" />
      <node concept="3clFbS" id="7DmawKu60xK" role="3clF47">
        <node concept="3clFbF" id="1_Anebx$J8W" role="3cqZAp">
          <node concept="2YIFZM" id="1_Anebx$JAD" role="3clFbG">
            <ref role="37wK5l" to="31yc:1_Anebx$sLm" resolve="registerDefaultProviders" />
            <ref role="1Pybhc" to="31yc:39eNUjm3TK$" resolve="CoderulesOptions" />
            <node concept="37vLTw" id="1_Anebx$K2H" role="37wK5m">
              <ref role="3cqZAo" node="2tFDlV2dY_r" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_Anebx$K69" role="3cqZAp" />
        <node concept="3clFbF" id="7DmawKu61ZL" role="3cqZAp">
          <node concept="2OqwBi" id="7DmawKu61ZM" role="3clFbG">
            <node concept="37vLTw" id="2tFDlV2dZnV" role="2Oq$k0">
              <ref role="3cqZAo" node="2tFDlV2dY_r" resolve="config" />
            </node>
            <node concept="liA8E" id="7DmawKu61ZO" role="2OqNvi">
              <ref role="37wK5l" to="31yc:7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="7DmawKu61ZP" role="37wK5m">
                <ref role="1Px2BO" to="31yc:7iCybvToD3Z" resolve="Config.Level" />
                <ref role="Rm8GQ" to="31yc:7iCybvToHsq" resolve="USER" />
              </node>
              <node concept="37vLTw" id="7DmawKu620w" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
              </node>
              <node concept="1bVj0M" id="7DmawKu61ZQ" role="37wK5m">
                <node concept="37vLTG" id="7DmawKu61ZR" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="7DmawKu61ZS" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="7DmawKu61ZT" role="1bW5cS">
                  <node concept="3clFbH" id="7DmawKu61ZU" role="3cqZAp" />
                  <node concept="3clFbJ" id="7DmawKu61ZV" role="3cqZAp">
                    <node concept="3clFbS" id="7DmawKu61ZW" role="3clFbx">
                      <node concept="3cpWs6" id="7DmawKu61ZX" role="3cqZAp">
                        <node concept="2YIFZM" id="7DmawKu61ZY" role="3cqZAk">
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <node concept="2YIFZM" id="7DmawKu61ZZ" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <node concept="37vLTw" id="7DmawKu620$" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                            </node>
                            <node concept="Xl_RD" id="7DmawKu6200" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5Qx6_65kYQu" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7DmawKu6202" role="3clFbw">
                      <node concept="37vLTw" id="7DmawKu620C" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                      </node>
                      <node concept="liA8E" id="7DmawKu6203" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7DmawKu6204" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5Qx6_65jIEJ" role="3cqZAp" />
                  <node concept="3clFbJ" id="5Qx6_65jIEz" role="3cqZAp">
                    <node concept="3clFbS" id="5Qx6_65jIE$" role="3clFbx">
                      <node concept="3cpWs6" id="5Qx6_65jIE_" role="3cqZAp">
                        <node concept="2YIFZM" id="5Qx6_65jIEA" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <node concept="2YIFZM" id="5Qx6_65jIEB" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <node concept="37vLTw" id="5Qx6_65jJSO" role="37wK5m">
                              <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                            </node>
                            <node concept="Xl_RD" id="5Qx6_65jIED" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5Qx6_65jIEE" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="5Qx6_65jIEF" role="3clFbw">
                      <node concept="37vLTw" id="5Qx6_65jJF7" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                      </node>
                      <node concept="liA8E" id="5Qx6_65jIEH" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="5Qx6_65jIEI" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7DmawKu6205" role="3cqZAp" />
                  <node concept="3clFbJ" id="7DmawKu6206" role="3cqZAp">
                    <node concept="3clFbS" id="7DmawKu6207" role="3clFbx">
                      <node concept="3cpWs6" id="7DmawKu6208" role="3cqZAp">
                        <node concept="2YIFZM" id="7DmawKu6209" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <node concept="2YIFZM" id="7DmawKu620a" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <node concept="37vLTw" id="7DmawKu620G" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyVsX" resolve="OPTION_TYPECHECKING_INCREMENTAL" />
                            </node>
                            <node concept="Xl_RD" id="7DmawKu620b" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7DmawKu620c" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7DmawKu620d" role="3clFbw">
                      <node concept="37vLTw" id="7DmawKu620K" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyVsX" resolve="OPTION_TYPECHECKING_INCREMENTAL" />
                      </node>
                      <node concept="liA8E" id="7DmawKu620e" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7DmawKu620f" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1JkMMuheend" role="3cqZAp" />
                  <node concept="3clFbJ" id="1JkMMuhedZn" role="3cqZAp">
                    <node concept="3clFbS" id="1JkMMuhedZo" role="3clFbx">
                      <node concept="3cpWs6" id="1JkMMuhedZp" role="3cqZAp">
                        <node concept="2YIFZM" id="1JkMMuhedZq" role="3cqZAk">
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <node concept="2YIFZM" id="1JkMMuhedZr" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <node concept="37vLTw" id="1JkMMuheeYw" role="37wK5m">
                              <ref role="3cqZAo" node="1JkMMuhe4_t" resolve="OPTION_TYPECHECKING_INCREMENTAL_ASSERTIONS" />
                            </node>
                            <node concept="Xl_RD" id="1JkMMuhedZs" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1JkMMuhedZt" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="1JkMMuhedZu" role="3clFbw">
                      <node concept="37vLTw" id="1JkMMuheeDK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JkMMuhe4_t" resolve="OPTION_TYPECHECKING_INCREMENTAL_ASSERTIONS" />
                      </node>
                      <node concept="liA8E" id="1JkMMuhedZv" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="1JkMMuhedZw" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7DmawKu620g" role="3cqZAp" />
                  <node concept="3clFbJ" id="1z4$59hOA4r" role="3cqZAp">
                    <node concept="3clFbS" id="1z4$59hOA4s" role="3clFbx">
                      <node concept="3cpWs6" id="1z4$59hOA4t" role="3cqZAp">
                        <node concept="2YIFZM" id="1z4$59hOA4u" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <node concept="2YIFZM" id="1z4$59hOA4v" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <node concept="37vLTw" id="1z4$59hOAUJ" role="37wK5m">
                              <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                            </node>
                            <node concept="Xl_RD" id="1z4$59hOA4x" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1z4$59hOA4y" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="1z4$59hOA4z" role="3clFbw">
                      <node concept="37vLTw" id="1z4$59hOAAZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                      </node>
                      <node concept="liA8E" id="1z4$59hOA4_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="1z4$59hOA4A" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1z4$59hOA4q" role="3cqZAp" />
                  <node concept="3clFbJ" id="7DmawKu620h" role="3cqZAp">
                    <node concept="3clFbS" id="7DmawKu620i" role="3clFbx">
                      <node concept="3cpWs6" id="7DmawKu620j" role="3cqZAp">
                        <node concept="2YIFZM" id="7DmawKu620k" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <node concept="2YIFZM" id="7DmawKu620l" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <node concept="37vLTw" id="7DmawKu620O" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                            </node>
                            <node concept="Xl_RD" id="7DmawKu620m" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7DmawKu620n" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7DmawKu620o" role="3clFbw">
                      <node concept="37vLTw" id="7DmawKu620S" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                      </node>
                      <node concept="liA8E" id="7DmawKu620p" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7DmawKu620q" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7DmawKu620r" role="3cqZAp" />
                  <node concept="3clFbF" id="7DmawKu620s" role="3cqZAp">
                    <node concept="10Nm6u" id="7DmawKu620t" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DmawKu5YTL" role="jymVt" />
    <node concept="2YIFZL" id="7DmawKu66Fj" role="jymVt">
      <property role="TrG5h" value="clearDefaultProviders" />
      <node concept="3cqZAl" id="7DmawKu66Fl" role="3clF45" />
      <node concept="3Tmbuc" id="7DmawKu67I9" role="1B3o_S" />
      <node concept="3clFbS" id="7DmawKu66Fn" role="3clF47">
        <node concept="3clFbF" id="1_Anebx$McM" role="3cqZAp">
          <node concept="2YIFZM" id="1_Anebx$MDc" role="3clFbG">
            <ref role="37wK5l" to="31yc:1_Anebx$FrT" resolve="clearDefaultProviders" />
            <ref role="1Pybhc" to="31yc:39eNUjm3TK$" resolve="CoderulesOptions" />
            <node concept="37vLTw" id="1_Anebx$N5k" role="37wK5m">
              <ref role="3cqZAo" node="2tFDlV2e2or" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DmawKu6aiU" role="3cqZAp">
          <node concept="2OqwBi" id="7DmawKu6aiV" role="3clFbG">
            <node concept="37vLTw" id="2tFDlV2e2Va" role="2Oq$k0">
              <ref role="3cqZAo" node="2tFDlV2e2or" resolve="config" />
            </node>
            <node concept="liA8E" id="7DmawKu6aiX" role="2OqNvi">
              <ref role="37wK5l" to="31yc:7prluhlHqSp" resolve="clearProvider" />
              <node concept="Rm8GO" id="7DmawKu6axP" role="37wK5m">
                <ref role="Rm8GQ" to="31yc:7iCybvToHsq" resolve="USER" />
                <ref role="1Px2BO" to="31yc:7iCybvToD3Z" resolve="Config.Level" />
              </node>
              <node concept="37vLTw" id="7DmawKu6aj1" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2tFDlV2e2or" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="2tFDlV2e2oq" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DmawKu65cf" role="jymVt" />
    <node concept="3clFbW" id="7iCybvTyDLm" role="jymVt">
      <node concept="3cqZAl" id="7iCybvTyDLo" role="3clF45" />
      <node concept="3Tm6S6" id="7iCybvTyDMH" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTyDLq" role="3clF47">
        <node concept="3clFbF" id="7iCybvTyDYG" role="3cqZAp">
          <node concept="37vLTI" id="7iCybvTyDYI" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTyEdu" role="37vLTJ">
              <node concept="Xjq3P" id="7iCybvTyEhZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTyEdx" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTyDYC" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="7iCybvTyDYM" role="37vLTx">
              <ref role="3cqZAo" node="7iCybvTyDXA" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6hpwxwiq_4O" role="3cqZAp">
          <node concept="37vLTI" id="6hpwxwiq_s7" role="3clFbG">
            <node concept="37vLTw" id="6hpwxwiq_D1" role="37vLTx">
              <ref role="3cqZAo" node="6hpwxwiq5P7" resolve="config" />
            </node>
            <node concept="2OqwBi" id="6hpwxwiq_cJ" role="37vLTJ">
              <node concept="Xjq3P" id="6hpwxwiq_4M" role="2Oq$k0" />
              <node concept="2OwXpG" id="6hpwxwiq_km" role="2OqNvi">
                <ref role="2Oxat5" node="2tFDlV2e4Ua" resolve="config" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7iCybvTyDXA" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7iCybvTyDX_" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="6hpwxwiq5P7" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6hpwxwiq$Ep" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7prluhlIXbE" role="jymVt" />
    <node concept="3clFb_" id="7prluhlILnV" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3Tm6S6" id="7prluhlILnW" role="1B3o_S" />
      <node concept="3cqZAl" id="7prluhlILnX" role="3clF45" />
      <node concept="3clFbS" id="7prluhlILnQ" role="3clF47">
        <node concept="3clFbF" id="7prluhlILnR" role="3cqZAp">
          <node concept="1rXfSq" id="7prluhlILnS" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTyEuz" resolve="registerProjectProviders" />
            <node concept="37vLTw" id="6hpwxwiq_JT" role="37wK5m">
              <ref role="3cqZAo" node="2tFDlV2e4Ua" resolve="config" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7prluhlJ0rw" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTzc_q" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="7iCybvTzc_s" role="3clF45" />
      <node concept="3Tm6S6" id="7prluhlJg8T" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTzc_u" role="3clF47">
        <node concept="3clFbF" id="7prluhlIZ07" role="3cqZAp">
          <node concept="1rXfSq" id="7prluhlJ2ZO" role="3clFbG">
            <ref role="37wK5l" node="7prluhlIEv5" resolve="clearProjectProviders" />
            <node concept="37vLTw" id="6hpwxwiq_RD" role="37wK5m">
              <ref role="3cqZAo" node="2tFDlV2e4Ua" resolve="config" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7prluhlJn3m" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTyEuz" role="jymVt">
      <property role="TrG5h" value="registerProjectProviders" />
      <node concept="37vLTG" id="6hpwxwiq_U$" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6hpwxwiqBaG" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3cqZAl" id="7iCybvTyEu_" role="3clF45" />
      <node concept="3Tm6S6" id="7iCybvTyEx7" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTyEuB" role="3clF47">
        <node concept="3SKdUt" id="7iCybvTyI2H" role="3cqZAp">
          <node concept="1PaTwC" id="7iCybvTyI2I" role="1aUNEU">
            <node concept="3oM_SD" id="7iCybvTyI2K" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI7J" role="1PaTwD">
              <property role="3oM_SC" value="essentially" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI82" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI8e" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI8j" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI8p" role="1PaTwD">
              <property role="3oM_SC" value="hack:" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI8K" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI90" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI99" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI9r" role="1PaTwD">
              <property role="3oM_SC" value="initialized" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyI9I" role="1PaTwD">
              <property role="3oM_SC" value="installs" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyIai" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyIaB" role="1PaTwD">
              <property role="3oM_SC" value="provider" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyIb5" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyIbk" role="1PaTwD">
              <property role="3oM_SC" value="override" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyIcB" role="1PaTwD">
              <property role="3oM_SC" value="UI" />
            </node>
            <node concept="3oM_SD" id="7iCybvTyId0" role="1PaTwD">
              <property role="3oM_SC" value="options" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTyAh$" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTyAvh" role="3clFbG">
            <node concept="37vLTw" id="6hpwxwiqBEz" role="2Oq$k0">
              <ref role="3cqZAo" node="6hpwxwiq_U$" resolve="config" />
            </node>
            <node concept="liA8E" id="7iCybvTyAAH" role="2OqNvi">
              <ref role="37wK5l" to="31yc:7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="7iCybvTyARZ" role="37wK5m">
                <ref role="1Px2BO" to="31yc:7iCybvToD3Z" resolve="Config.Level" />
                <ref role="Rm8GQ" to="31yc:7iCybvToIZc" resolve="UI" />
              </node>
              <node concept="37vLTw" id="7iCybvTzJGy" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
              </node>
              <node concept="1bVj0M" id="7iCybvTyBsQ" role="37wK5m">
                <node concept="37vLTG" id="7iCybvTyBuB" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="7iCybvTyBEM" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="7iCybvTyBsS" role="1bW5cS">
                  <node concept="3clFbH" id="7iCybvTyBIw" role="3cqZAp" />
                  <node concept="3cpWs8" id="5gVsyvEZeb$" role="3cqZAp">
                    <node concept="3cpWsn" id="5gVsyvEZeb_" role="3cpWs9">
                      <property role="TrG5h" value="pref" />
                      <node concept="34_ZPX" id="5gVsyvEZ5zE" role="1tU5fm">
                        <ref role="34A7Nh" node="uB9WAZagv8" resolve="Typechecking" />
                      </node>
                      <node concept="10QFUN" id="7DmawKu3sHB" role="33vP2m">
                        <node concept="2EnYce" id="7DmawKu3sH$" role="10QFUP">
                          <node concept="37vLTw" id="7DmawKu3sH_" role="2Oq$k0">
                            <ref role="3cqZAo" node="7iCybvTyDYC" resolve="project" />
                          </node>
                          <node concept="LR4Ub" id="7DmawKu3sHA" role="2OqNvi">
                            <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                          </node>
                        </node>
                        <node concept="34_ZPX" id="7DmawKu3sHz" role="10QFUM">
                          <ref role="34A7Nh" node="uB9WAZagv8" resolve="Typechecking" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5gVsyvEZfcD" role="3cqZAp">
                    <node concept="3clFbS" id="5gVsyvEZfcF" role="3clFbx">
                      <node concept="3clFbJ" id="7iCybvTyBUS" role="3cqZAp">
                        <node concept="3clFbS" id="7iCybvTyBUU" role="3clFbx">
                          <node concept="3cpWs6" id="7iCybvTyCRL" role="3cqZAp">
                            <node concept="2OqwBi" id="7iCybvTyFDs" role="3cqZAk">
                              <node concept="37vLTw" id="5gVsyvEZebD" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gVsyvEZeb_" resolve="pref" />
                              </node>
                              <node concept="34pFcN" id="7iCybvTyFI4" role="2OqNvi">
                                <ref role="2WH_rO" node="14pL6xi901F" resolve="typecheckingEnabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7iCybvTyCd5" role="3clFbw">
                          <node concept="37vLTw" id="7iCybvTyUUv" role="2Oq$k0">
                            <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                          </node>
                          <node concept="liA8E" id="7iCybvTyCAG" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="7iCybvTyCHb" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7iCybvTyG2a" role="3cqZAp" />
                      <node concept="3clFbJ" id="5Qx6_65jK2f" role="3cqZAp">
                        <node concept="3clFbS" id="5Qx6_65jK2g" role="3clFbx">
                          <node concept="3cpWs6" id="5Qx6_65jK2h" role="3cqZAp">
                            <node concept="2OqwBi" id="5Qx6_65jK2i" role="3cqZAk">
                              <node concept="37vLTw" id="5Qx6_65jK2j" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gVsyvEZeb_" resolve="pref" />
                              </node>
                              <node concept="34pFcN" id="5Qx6_65jMk9" role="2OqNvi">
                                <ref role="2WH_rO" node="5Qx6_65jLtF" resolve="watchingEnabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5Qx6_65jK2l" role="3clFbw">
                          <node concept="37vLTw" id="5Qx6_65jKRG" role="2Oq$k0">
                            <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                          </node>
                          <node concept="liA8E" id="5Qx6_65jK2n" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="5Qx6_65jK2o" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5Qx6_65jK2e" role="3cqZAp" />
                      <node concept="3clFbJ" id="7iCybvTyFXl" role="3cqZAp">
                        <node concept="3clFbS" id="7iCybvTyFXm" role="3clFbx">
                          <node concept="3cpWs6" id="7iCybvTyFXn" role="3cqZAp">
                            <node concept="2OqwBi" id="7iCybvTyFXo" role="3cqZAk">
                              <node concept="37vLTw" id="5gVsyvEZebE" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gVsyvEZeb_" resolve="pref" />
                              </node>
                              <node concept="34pFcN" id="7iCybvTyGmp" role="2OqNvi">
                                <ref role="2WH_rO" node="14IknWHoSHp" resolve="incrementalityEnabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7iCybvTyFXt" role="3clFbw">
                          <node concept="37vLTw" id="7iCybvTyVt0" role="2Oq$k0">
                            <ref role="3cqZAo" node="7iCybvTyVsX" resolve="OPTION_TYPECHECKING_INCREMENTAL" />
                          </node>
                          <node concept="liA8E" id="7iCybvTyFXv" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="7iCybvTyFXw" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1JkMMuhf$a7" role="3cqZAp" />
                      <node concept="3clFbJ" id="1JkMMuhfzme" role="3cqZAp">
                        <node concept="3clFbS" id="1JkMMuhfzmf" role="3clFbx">
                          <node concept="3cpWs6" id="1JkMMuhfzmg" role="3cqZAp">
                            <node concept="2OqwBi" id="1JkMMuhfzmh" role="3cqZAk">
                              <node concept="37vLTw" id="1JkMMuhfzmi" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gVsyvEZeb_" resolve="pref" />
                              </node>
                              <node concept="34pFcN" id="1JkMMuhf$II" role="2OqNvi">
                                <ref role="2WH_rO" node="1JkMMuhfeuh" resolve="incrementalAssertionsEnabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1JkMMuhfzmk" role="3clFbw">
                          <node concept="37vLTw" id="1JkMMuhf$qQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1JkMMuhe4_t" resolve="OPTION_TYPECHECKING_INCREMENTAL_ASSERTIONS" />
                          </node>
                          <node concept="liA8E" id="1JkMMuhfzml" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="1JkMMuhfzmm" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7iCybvTyGG0" role="3cqZAp" />
                      <node concept="3clFbJ" id="1z4$59hOBBR" role="3cqZAp">
                        <node concept="3clFbS" id="1z4$59hOBBS" role="3clFbx">
                          <node concept="3cpWs6" id="1z4$59hOBBT" role="3cqZAp">
                            <node concept="2OqwBi" id="1z4$59hOBBU" role="3cqZAk">
                              <node concept="37vLTw" id="1z4$59hOBBV" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gVsyvEZeb_" resolve="pref" />
                              </node>
                              <node concept="34pFcN" id="1z4$59hODaR" role="2OqNvi">
                                <ref role="2WH_rO" node="1z4$59hNjW4" resolve="reportingEnabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1z4$59hOBBX" role="3clFbw">
                          <node concept="37vLTw" id="1z4$59hSAen" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                          </node>
                          <node concept="liA8E" id="1z4$59hOBBZ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="1z4$59hOBC0" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1z4$59hOCWg" role="3cqZAp" />
                      <node concept="3clFbJ" id="7iCybvTyGA8" role="3cqZAp">
                        <node concept="3clFbS" id="7iCybvTyGA9" role="3clFbx">
                          <node concept="3cpWs6" id="7iCybvTyGAa" role="3cqZAp">
                            <node concept="2OqwBi" id="7iCybvTyGAb" role="3cqZAk">
                              <node concept="37vLTw" id="5gVsyvEZebF" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gVsyvEZeb_" resolve="pref" />
                              </node>
                              <node concept="34pFcN" id="7iCybvTyGQe" role="2OqNvi">
                                <ref role="2WH_rO" node="7iCybvTnn8F" resolve="traceEnabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7iCybvTyGAg" role="3clFbw">
                          <node concept="37vLTw" id="7iCybvTyWow" role="2Oq$k0">
                            <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                          </node>
                          <node concept="liA8E" id="7iCybvTyGAi" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="7iCybvTyGAj" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1_Anebx$VWw" role="3cqZAp" />
                    </node>
                    <node concept="3y3z36" id="5gVsyvEZfAo" role="3clFbw">
                      <node concept="10Nm6u" id="5gVsyvEZfEJ" role="3uHU7w" />
                      <node concept="37vLTw" id="5gVsyvEZfhG" role="3uHU7B">
                        <ref role="3cqZAo" node="5gVsyvEZeb_" resolve="pref" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7iCybvTyBLJ" role="3cqZAp" />
                  <node concept="3clFbF" id="7iCybvTzmU3" role="3cqZAp">
                    <node concept="10Nm6u" id="7iCybvTzmU1" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_Anebx_roc" role="3cqZAp" />
        <node concept="3clFbH" id="1_Anebx$NF4" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="7prluhlIdif" role="jymVt" />
    <node concept="3clFb_" id="7prluhlIEv5" role="jymVt">
      <property role="TrG5h" value="clearProjectProviders" />
      <node concept="3cqZAl" id="7prluhlIEv7" role="3clF45" />
      <node concept="3Tm6S6" id="7prluhlIFxT" role="1B3o_S" />
      <node concept="3clFbS" id="7prluhlIEv9" role="3clF47">
        <node concept="3clFbF" id="7prluhlIINl" role="3cqZAp">
          <node concept="2OqwBi" id="7prluhlIJ8d" role="3clFbG">
            <node concept="37vLTw" id="6hpwxwiqDCG" role="2Oq$k0">
              <ref role="3cqZAo" node="6hpwxwiqC4I" resolve="config" />
            </node>
            <node concept="liA8E" id="7prluhlIJou" role="2OqNvi">
              <ref role="37wK5l" to="31yc:7prluhlHqSp" resolve="clearProvider" />
              <node concept="Rm8GO" id="7prluhlIK6J" role="37wK5m">
                <ref role="Rm8GQ" to="31yc:7iCybvToIZc" resolve="UI" />
                <ref role="1Px2BO" to="31yc:7iCybvToD3Z" resolve="Config.Level" />
              </node>
              <node concept="10M0yZ" id="1_Anebx_A1o" role="37wK5m">
                <ref role="3cqZAo" to="31yc:1_Anebx$$SU" resolve="PREFIX" />
                <ref role="1PxDUh" to="31yc:39eNUjm3TK$" resolve="CoderulesOptions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_Anebx_$H3" role="3cqZAp">
          <node concept="2OqwBi" id="1_Anebx_$H4" role="3clFbG">
            <node concept="37vLTw" id="1_Anebx_$H5" role="2Oq$k0">
              <ref role="3cqZAo" node="6hpwxwiqC4I" resolve="config" />
            </node>
            <node concept="liA8E" id="1_Anebx_$H6" role="2OqNvi">
              <ref role="37wK5l" to="31yc:7prluhlHqSp" resolve="clearProvider" />
              <node concept="Rm8GO" id="1_Anebx_$H7" role="37wK5m">
                <ref role="1Px2BO" to="31yc:7iCybvToD3Z" resolve="Config.Level" />
                <ref role="Rm8GQ" to="31yc:7iCybvToIZc" resolve="UI" />
              </node>
              <node concept="37vLTw" id="1_Anebx_$Ha" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6hpwxwiqC4I" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6hpwxwiqC4H" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTyXGW" role="jymVt" />
    <node concept="3Tm1VV" id="7iCybvTy_Mc" role="1B3o_S" />
    <node concept="312cEg" id="7iCybvTyDYC" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tmbuc" id="7iCybvTz2IL" role="1B3o_S" />
      <node concept="3uibUv" id="7iCybvTyDYF" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="2tFDlV2e4Ua" role="jymVt">
      <property role="TrG5h" value="config" />
      <node concept="3Tm6S6" id="2tFDlV2e4Ub" role="1B3o_S" />
      <node concept="3uibUv" id="2tFDlV2e5Kp" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTyHA6" role="jymVt" />
    <node concept="3uibUv" id="39eNUjm3VE3" role="1zkMxy">
      <ref role="3uigEE" to="31yc:39eNUjm3TK$" resolve="CoderulesOptions" />
    </node>
  </node>
  <node concept="2uRRBy" id="7iCybvTzg9q">
    <property role="TrG5h" value="TypecheckingOptionsLifecycle" />
    <property role="3GE5qa" value="lifecycle" />
    <node concept="2uRRBT" id="7iCybvTzg9W" role="2uRRB$">
      <node concept="3clFbS" id="7iCybvTzg9X" role="2VODD2">
        <node concept="3clFbF" id="7iCybvTzggN" role="3cqZAp">
          <node concept="2YIFZM" id="7iCybvTzghl" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTyA01" resolve="create" />
            <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
            <node concept="2OqwBi" id="7iCybvTzgTH" role="37wK5m">
              <node concept="1KvdUw" id="7iCybvTzghL" role="2Oq$k0" />
              <node concept="liA8E" id="7iCybvTzh_c" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="2YIFZM" id="6hpwxwiqEaO" role="37wK5m">
              <ref role="37wK5l" to="31yc:7iCybvTs3lI" resolve="getInstance" />
              <ref role="1Pybhc" to="31yc:7iCybvToiT5" resolve="Config" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7iCybvTzhA8" role="2uRRB_">
      <node concept="3clFbS" id="7iCybvTzhA9" role="2VODD2">
        <node concept="3clFbF" id="7iCybvTzhA$" role="3cqZAp">
          <node concept="2YIFZM" id="7iCybvTzhDU" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTyI_q" resolve="dispose" />
            <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
            <node concept="2OqwBi" id="7iCybvTzhDV" role="37wK5m">
              <node concept="1KvdUw" id="7iCybvTzhDW" role="2Oq$k0" />
              <node concept="liA8E" id="7iCybvTzhDX" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6gnqipLxPUE">
    <property role="3GE5qa" value="lifecycle" />
    <property role="TrG5h" value="ProviderInitToken" />
    <node concept="2tJIrI" id="6gnqipL$jCO" role="jymVt" />
    <node concept="3clFbW" id="6gnqipLxXBF" role="jymVt">
      <node concept="3cqZAl" id="6gnqipLxXBH" role="3clF45" />
      <node concept="3Tmbuc" id="6gnqipLyyvE" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLxXBJ" role="3clF47">
        <node concept="3clFbF" id="6gnqipLxYh_" role="3cqZAp">
          <node concept="37vLTI" id="6gnqipLxYhB" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLxYIy" role="37vLTJ">
              <node concept="Xjq3P" id="6gnqipLxYNb" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gnqipLxYI_" role="2OqNvi">
                <ref role="2Oxat5" node="6gnqipLxYhx" resolve="mpsPlatform" />
              </node>
            </node>
            <node concept="37vLTw" id="6gnqipLxYhF" role="37vLTx">
              <ref role="3cqZAo" node="6gnqipLxYgY" resolve="platform" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6gnqipLxYgY" role="3clF46">
        <property role="TrG5h" value="platform" />
        <node concept="3uibUv" id="6gnqipLxYgX" role="1tU5fm">
          <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLxPWG" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLxUdr" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="6gnqipLxUdt" role="3clF45" />
      <node concept="3Tmbuc" id="6gnqipLyxJH" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLxUdv" role="3clF47">
        <node concept="3clFbF" id="6gnqipLxUvY" role="3cqZAp">
          <node concept="37vLTI" id="6gnqipLxUvZ" role="3clFbG">
            <node concept="2ShNRf" id="6gnqipLxUw0" role="37vLTx">
              <node concept="YeOm9" id="6gnqipLxUw1" role="2ShVmc">
                <node concept="1Y3b0j" id="6gnqipLxUw2" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="2eq1:491od_XHIv7" resolve="ReloadListener" />
                  <node concept="3Tm1VV" id="6gnqipLxUw3" role="1B3o_S" />
                  <node concept="3clFb_" id="6gnqipLxUw4" role="jymVt">
                    <property role="TrG5h" value="reloadStarted" />
                    <node concept="3Tm1VV" id="6gnqipLxUw5" role="1B3o_S" />
                    <node concept="3cqZAl" id="6gnqipLxUw6" role="3clF45" />
                    <node concept="3clFbS" id="6gnqipLxUw7" role="3clF47">
                      <node concept="3clFbF" id="51ek2rS6c8z" role="3cqZAp">
                        <node concept="1rXfSq" id="51ek2rS6c8y" role="3clFbG">
                          <ref role="37wK5l" node="6gnqipLyY7q" resolve="deactivate" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6gnqipLxUwe" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="6gnqipLxUwf" role="jymVt" />
                  <node concept="3clFb_" id="6gnqipLxUwg" role="jymVt">
                    <property role="TrG5h" value="reloadFinished" />
                    <node concept="3Tm1VV" id="6gnqipLxUwh" role="1B3o_S" />
                    <node concept="3cqZAl" id="6gnqipLxUwi" role="3clF45" />
                    <node concept="3clFbS" id="6gnqipLxUwj" role="3clF47">
                      <node concept="3clFbJ" id="6gnqipL$PpR" role="3cqZAp">
                        <node concept="3clFbS" id="6gnqipL$PpT" role="3clFbx">
                          <node concept="3clFbF" id="6gnqipLyvLw" role="3cqZAp">
                            <node concept="1rXfSq" id="6gnqipLyvLv" role="3clFbG">
                              <ref role="37wK5l" node="6gnqipLysuY" resolve="activate" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="6gnqipL$PX7" role="3clFbw">
                          <node concept="10Nm6u" id="6gnqipL$QeL" role="3uHU7w" />
                          <node concept="37vLTw" id="6gnqipL$PC6" role="3uHU7B">
                            <ref role="3cqZAo" node="6gnqipLxRQE" resolve="config" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6gnqipLxUwn" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6gnqipLxUwo" role="37vLTJ">
              <node concept="Xjq3P" id="6gnqipLxVw_" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gnqipLyx1T" role="2OqNvi">
                <ref role="2Oxat5" node="6gnqipLxSgz" resolve="reloadListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6gnqipLzaiu" role="3cqZAp" />
        <node concept="3clFbF" id="6gnqipLyx8y" role="3cqZAp">
          <node concept="2OqwBi" id="6gnqipLyx8z" role="3clFbG">
            <node concept="2OqwBi" id="6gnqipLyx8$" role="2Oq$k0">
              <node concept="2YIFZM" id="6gnqipLyx8_" role="2Oq$k0">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
              <node concept="liA8E" id="6gnqipLyx8A" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="6gnqipLyx8B" role="37wK5m">
                  <ref role="3VsUkX" to="2eq1:491od_XJZeq" resolve="ReloadManager" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6gnqipLyx8C" role="2OqNvi">
              <ref role="37wK5l" to="2eq1:491od_YVjMw" resolve="addReloadListener" />
              <node concept="2OqwBi" id="6gnqipLyx8D" role="37wK5m">
                <node concept="Xjq3P" id="6gnqipLyxxY" role="2Oq$k0" />
                <node concept="2OwXpG" id="6gnqipLyxEO" role="2OqNvi">
                  <ref role="2Oxat5" node="6gnqipLxSgz" resolve="reloadListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLyvbs" role="3cqZAp">
          <node concept="1rXfSq" id="6gnqipLyvbq" role="3clFbG">
            <ref role="37wK5l" node="6gnqipLysuY" resolve="activate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLxTTY" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLxQ9r" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="6gnqipLxQ9t" role="3clF45" />
      <node concept="3Tmbuc" id="6gnqipLxQa8" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLxQ9v" role="3clF47">
        <node concept="3clFbF" id="6gnqipLz5zs" role="3cqZAp">
          <node concept="1rXfSq" id="6gnqipLz5zr" role="3clFbG">
            <ref role="37wK5l" node="6gnqipLyY7q" resolve="deactivate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLz4WZ" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLysuY" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3cqZAl" id="6gnqipLysv0" role="3clF45" />
      <node concept="3Tm6S6" id="6gnqipLysOv" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLysv2" role="3clF47">
        <node concept="3clFbF" id="6gnqipLxUvz" role="3cqZAp">
          <node concept="37vLTI" id="6gnqipLxUv$" role="3clFbG">
            <node concept="2YIFZM" id="6gnqipLxUv_" role="37vLTx">
              <ref role="1Pybhc" to="31yc:7iCybvToiT5" resolve="Config" />
              <ref role="37wK5l" to="31yc:7iCybvTs3lI" resolve="getInstance" />
            </node>
            <node concept="2OqwBi" id="6gnqipLxUvA" role="37vLTJ">
              <node concept="Xjq3P" id="6gnqipLxUSo" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gnqipLxV17" role="2OqNvi">
                <ref role="2Oxat5" node="6gnqipLxRQE" resolve="config" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6gnqipLxUvD" role="3cqZAp">
          <node concept="1PaTwC" id="6gnqipLxUvE" role="1aUNEU">
            <node concept="3oM_SD" id="6gnqipLxUvF" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="6gnqipLxUvG" role="1PaTwD">
              <property role="3oM_SC" value="options" />
            </node>
            <node concept="3oM_SD" id="6gnqipLxUvH" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="6gnqipLxUvI" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="6gnqipLxUvJ" role="1PaTwD">
              <property role="3oM_SC" value="registered" />
            </node>
            <node concept="3oM_SD" id="6gnqipLxUvK" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="6gnqipLxUvL" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6gnqipLxUvM" role="1PaTwD">
              <property role="3oM_SC" value="provider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLxUvN" role="3cqZAp">
          <node concept="2YIFZM" id="6gnqipLxUvO" role="3clFbG">
            <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
            <ref role="37wK5l" node="7DmawKu60xG" resolve="registerDefaultProviders" />
            <node concept="2OqwBi" id="6gnqipLxUvP" role="37wK5m">
              <node concept="Xjq3P" id="6gnqipLxV7W" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gnqipLxVgv" role="2OqNvi">
                <ref role="2Oxat5" node="6gnqipLxRQE" resolve="config" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLxUvT" role="3cqZAp">
          <node concept="2YIFZM" id="6gnqipLxUvU" role="3clFbG">
            <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            <ref role="37wK5l" to="tj24:6hpwxwitVpF" resolve="initFactory" />
            <node concept="2OqwBi" id="6gnqipLxUvV" role="37wK5m">
              <node concept="Xjq3P" id="6gnqipLxVmu" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gnqipLxVoD" role="2OqNvi">
                <ref role="2Oxat5" node="6gnqipLxRQE" resolve="config" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6gnqipLxUws" role="3cqZAp">
          <node concept="3cpWsn" id="6gnqipLxUwt" role="3cpWs9">
            <property role="TrG5h" value="backend" />
            <node concept="3uibUv" id="6gnqipLxUwu" role="1tU5fm">
              <ref role="3uigEE" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
            </node>
            <node concept="2OqwBi" id="6gnqipLxUwv" role="33vP2m">
              <node concept="37vLTw" id="6gnqipLxYTh" role="2Oq$k0">
                <ref role="3cqZAo" node="6gnqipLxYhx" resolve="mpsPlatform" />
              </node>
              <node concept="liA8E" id="6gnqipLxUwx" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="6gnqipLxUwy" role="37wK5m">
                  <ref role="3VsUkX" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="51ek2rRX0dK" role="3cqZAp">
          <node concept="3cpWsn" id="51ek2rRX0dL" role="3cpWs9">
            <property role="TrG5h" value="languageRegistry" />
            <node concept="3uibUv" id="51ek2rRX0ax" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
            </node>
            <node concept="2OqwBi" id="51ek2rRX0dM" role="33vP2m">
              <node concept="37vLTw" id="51ek2rRX0dN" role="2Oq$k0">
                <ref role="3cqZAo" node="6gnqipLxYhx" resolve="mpsPlatform" />
              </node>
              <node concept="liA8E" id="51ek2rRX0dO" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="51ek2rRX0dP" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gnqipLxUwz" role="3cqZAp">
          <node concept="3clFbS" id="6gnqipLxUw$" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLxUw_" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxUwA" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxUwB" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxZ3c" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxZbT" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6gnqipLxUwE" role="37vLTx">
                  <node concept="1pGfFk" id="6gnqipLxUwF" role="2ShVmc">
                    <ref role="37wK5l" node="3LFq2p98DNK" resolve="CoderulesTypecheckingProvider" />
                    <node concept="2OqwBi" id="6gnqipLxUwG" role="37wK5m">
                      <node concept="Xjq3P" id="6gnqipLxZjv" role="2Oq$k0" />
                      <node concept="2OwXpG" id="6gnqipLxZkG" role="2OqNvi">
                        <ref role="2Oxat5" node="6gnqipLxRQE" resolve="config" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="51ek2rRXR7q" role="37wK5m">
                      <ref role="3cqZAo" node="51ek2rRX0dL" resolve="languageRegistry" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLxUwJ" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxUwK" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxUwL" role="37vLTx">
                  <node concept="37vLTw" id="6gnqipLxUwM" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gnqipLxUwt" resolve="backend" />
                  </node>
                  <node concept="liA8E" id="6gnqipLxUwN" role="2OqNvi">
                    <ref role="37wK5l" to="ev0w:~TypecheckingBackend.installProvider(jetbrains.mps.typechecking.backend.TypecheckingProvider,jetbrains.mps.typechecking.backend.TypecheckingBackend$ProviderLevel)" resolve="installProvider" />
                    <node concept="2OqwBi" id="6gnqipLxUwO" role="37wK5m">
                      <node concept="Xjq3P" id="6gnqipLxZNe" role="2Oq$k0" />
                      <node concept="2OwXpG" id="6gnqipLxZQu" role="2OqNvi">
                        <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="6gnqipLxUwR" role="37wK5m">
                      <node concept="1pGfFk" id="6gnqipLxUwS" role="2ShVmc">
                        <ref role="37wK5l" node="siuT5mmS2P" resolve="CoderulesProviderLevel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6gnqipLxUwT" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxZtE" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxZDK" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxQXz" resolve="providerToken" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6gnqipLxUwW" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="6gnqipLxUwX" role="3clFbw">
            <node concept="10Nm6u" id="6gnqipLxUwY" role="3uHU7w" />
            <node concept="37vLTw" id="6gnqipLxUwZ" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxUwt" resolve="backend" />
            </node>
          </node>
          <node concept="9aQIb" id="6gnqipLxUx0" role="9aQIa">
            <node concept="3clFbS" id="6gnqipLxUx1" role="9aQI4">
              <node concept="RRSsy" id="6gnqipLxUx2" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="6gnqipLxUx3" role="RRSoy">
                  <property role="Xl_RC" value="Coderules failed to initialize: TypecheckingBackend component not found" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLxTVX" role="jymVt" />
    <node concept="3clFb_" id="6gnqipLyY7q" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="6gnqipLyY7s" role="3clF45" />
      <node concept="3Tm6S6" id="6gnqipLyYB4" role="1B3o_S" />
      <node concept="3clFbS" id="6gnqipLyY7u" role="3clF47">
        <node concept="3clFbF" id="1z4$59jNxF2" role="3cqZAp">
          <node concept="2YIFZM" id="1z4$59jNxMt" role="3clFbG">
            <ref role="37wK5l" to="tj24:1z4$59jKua2" resolve="clearAll" />
            <ref role="1Pybhc" to="tj24:1z4$59jK85m" resolve="TypesModuleOwner" />
          </node>
        </node>
        <node concept="3clFbJ" id="1z4$59h_Gkc" role="3cqZAp">
          <node concept="3clFbS" id="1z4$59h_Gke" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLxQat" role="3cqZAp">
              <node concept="2OqwBi" id="6gnqipLxQau" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxQav" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gnqipLxQyY" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxSJU" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxQXz" resolve="providerToken" />
                  </node>
                </node>
                <node concept="liA8E" id="6gnqipLxQay" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderToken.uninstall()" resolve="uninstall" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLxQaz" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxQa$" role="3clFbG">
                <node concept="10Nm6u" id="6gnqipLxQa_" role="37vLTx" />
                <node concept="2OqwBi" id="6gnqipLxQaA" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxSSE" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxSWg" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxQXz" resolve="providerToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1z4$59h_GX8" role="3clFbw">
            <node concept="10Nm6u" id="1z4$59h_H2t" role="3uHU7w" />
            <node concept="37vLTw" id="1z4$59h_GHU" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxQXz" resolve="providerToken" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1z4$59h_HB4" role="3cqZAp">
          <node concept="3clFbS" id="1z4$59h_HB6" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLxQaD" role="3cqZAp">
              <node concept="2OqwBi" id="6gnqipLxQaE" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLxQaF" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gnqipLxT24" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxTaS" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                  </node>
                </node>
                <node concept="liA8E" id="6gnqipLxQaI" role="2OqNvi">
                  <ref role="37wK5l" node="3KN3A4w9alp" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLxQaJ" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxQaK" role="3clFbG">
                <node concept="10Nm6u" id="6gnqipLxQaL" role="37vLTx" />
                <node concept="2OqwBi" id="6gnqipLxQaM" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxTl1" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxTlX" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRoW" resolve="provider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1z4$59h_Ih0" role="3clFbw">
            <node concept="10Nm6u" id="1z4$59h_Ixm" role="3uHU7w" />
            <node concept="37vLTw" id="1z4$59h_HRN" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxRoW" resolve="provider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gnqipLxQaP" role="3cqZAp">
          <node concept="2YIFZM" id="6gnqipLxQaQ" role="3clFbG">
            <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            <ref role="37wK5l" to="tj24:6hpwxwiuuCI" resolve="disposeFactory" />
          </node>
        </node>
        <node concept="3clFbJ" id="3DPJ8QI9jIe" role="3cqZAp">
          <node concept="3clFbS" id="3DPJ8QI9jIg" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLxQaR" role="3cqZAp">
              <node concept="2YIFZM" id="6gnqipLxQaS" role="3clFbG">
                <ref role="37wK5l" node="7DmawKu66Fj" resolve="clearDefaultProviders" />
                <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                <node concept="2OqwBi" id="6gnqipLxQaT" role="37wK5m">
                  <node concept="Xjq3P" id="6gnqipLxTr7" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxTuu" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRQE" resolve="config" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLxQaW" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLxQaX" role="3clFbG">
                <node concept="10Nm6u" id="6gnqipLxQaY" role="37vLTx" />
                <node concept="2OqwBi" id="6gnqipLxQaZ" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLxT$t" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLxTH1" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxRQE" resolve="config" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3DPJ8QI9kdq" role="3clFbw">
            <node concept="10Nm6u" id="3DPJ8QI9khP" role="3uHU7w" />
            <node concept="37vLTw" id="3DPJ8QI9jY5" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxRQE" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DPJ8QI9kOL" role="3cqZAp">
          <node concept="3clFbS" id="3DPJ8QI9kON" role="3clFbx">
            <node concept="3clFbF" id="6gnqipLz5Tw" role="3cqZAp">
              <node concept="2OqwBi" id="6gnqipLz5Tx" role="3clFbG">
                <node concept="2OqwBi" id="6gnqipLz5Ty" role="2Oq$k0">
                  <node concept="2YIFZM" id="6gnqipLz5Tz" role="2Oq$k0">
                    <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                    <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  </node>
                  <node concept="liA8E" id="6gnqipLz5T$" role="2OqNvi">
                    <ref role="37wK5l" to="1m72:~ComponentManager.getComponent(java.lang.Class)" resolve="getComponent" />
                    <node concept="3VsKOn" id="6gnqipLz5T_" role="37wK5m">
                      <ref role="3VsUkX" to="2eq1:491od_XJZeq" resolve="ReloadManager" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6gnqipLz5TA" role="2OqNvi">
                  <ref role="37wK5l" to="2eq1:491od_YVk7k" resolve="removeReloadListener" />
                  <node concept="2OqwBi" id="6gnqipLz5TB" role="37wK5m">
                    <node concept="Xjq3P" id="6gnqipLz6iu" role="2Oq$k0" />
                    <node concept="2OwXpG" id="6gnqipLz6sF" role="2OqNvi">
                      <ref role="2Oxat5" node="6gnqipLxSgz" resolve="reloadListener" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gnqipLyw47" role="3cqZAp">
              <node concept="37vLTI" id="6gnqipLywHn" role="3clFbG">
                <node concept="10Nm6u" id="6gnqipLywO5" role="37vLTx" />
                <node concept="2OqwBi" id="6gnqipLywiS" role="37vLTJ">
                  <node concept="Xjq3P" id="6gnqipLyw45" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gnqipLywy2" role="2OqNvi">
                    <ref role="2Oxat5" node="6gnqipLxSgz" resolve="reloadListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3DPJ8QI9lrv" role="3clFbw">
            <node concept="10Nm6u" id="3DPJ8QI9lDn" role="3uHU7w" />
            <node concept="37vLTw" id="3DPJ8QI9l5a" role="3uHU7B">
              <ref role="3cqZAo" node="6gnqipLxSgz" resolve="reloadListener" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gnqipLJmBa" role="jymVt" />
    <node concept="312cEg" id="6gnqipLxQXz" role="jymVt">
      <property role="TrG5h" value="providerToken" />
      <node concept="3Tm6S6" id="6gnqipLxQX$" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxR60" role="1tU5fm">
        <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderToken" resolve="TypecheckingBackend.ProviderToken" />
      </node>
      <node concept="10Nm6u" id="6gnqipLxRaU" role="33vP2m" />
    </node>
    <node concept="312cEg" id="6gnqipLxRoW" role="jymVt">
      <property role="TrG5h" value="provider" />
      <node concept="3Tm6S6" id="6gnqipLxRoX" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxRAq" role="1tU5fm">
        <ref role="3uigEE" node="7Tj_ODDR37X" resolve="CoderulesTypecheckingProvider" />
      </node>
      <node concept="10Nm6u" id="6gnqipLxRFs" role="33vP2m" />
    </node>
    <node concept="312cEg" id="6gnqipLxRQE" role="jymVt">
      <property role="TrG5h" value="config" />
      <node concept="3Tm6S6" id="6gnqipLxRQF" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxRYS" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="10Nm6u" id="6gnqipLxS5h" role="33vP2m" />
    </node>
    <node concept="312cEg" id="6gnqipLxSgz" role="jymVt">
      <property role="TrG5h" value="reloadListener" />
      <node concept="3Tm6S6" id="6gnqipLxSg$" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxSu2" role="1tU5fm">
        <ref role="3uigEE" to="2eq1:491od_XHIv7" resolve="ReloadListener" />
      </node>
      <node concept="10Nm6u" id="6gnqipLxSz6" role="33vP2m" />
    </node>
    <node concept="3Tm1VV" id="6gnqipLyyaG" role="1B3o_S" />
    <node concept="312cEg" id="6gnqipLxYhx" role="jymVt">
      <property role="TrG5h" value="mpsPlatform" />
      <node concept="3Tm6S6" id="6gnqipLxYhy" role="1B3o_S" />
      <node concept="3uibUv" id="6gnqipLxYh$" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
    </node>
  </node>
</model>

