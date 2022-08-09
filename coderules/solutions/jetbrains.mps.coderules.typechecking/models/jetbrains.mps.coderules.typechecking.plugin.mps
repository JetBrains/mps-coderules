<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.coderules.typechecking.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
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
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="j936" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.ui(MPS.IDEA/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
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
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
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
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
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
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1202838164916" name="jetbrains.mps.baseLanguageInternal.structure.InternalThisExpression" flags="nn" index="eJtiG" />
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
        <child id="1174318197094" name="actualArgument" index="1EOqxR" />
      </concept>
      <concept id="1176743162354" name="jetbrains.mps.baseLanguageInternal.structure.InternalVariableReference" flags="nn" index="3VmV3z">
        <property id="1176743296073" name="name" index="3VnrPo" />
        <child id="1176743202636" name="type" index="3Vn4Tt" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
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
      <node concept="3cqZAl" id="3LFq2p98DNM" role="3clF45" />
      <node concept="3Tm1VV" id="3LFq2p98DNN" role="1B3o_S" />
      <node concept="3clFbS" id="3LFq2p98DNO" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3KN3A4w99CG" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4w9alp" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="3KN3A4w9alr" role="3clF45" />
      <node concept="3Tm1VV" id="3KN3A4w9als" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4w9alt" role="3clF47">
        <node concept="3clFbF" id="7e$2hwaZR5c" role="3cqZAp">
          <node concept="37vLTI" id="7e$2hwb0_FF" role="3clFbG">
            <node concept="3clFbT" id="7e$2hwb0Het" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="7e$2hwaZYqD" role="37vLTJ">
              <node concept="Xjq3P" id="7e$2hwaZR5a" role="2Oq$k0" />
              <node concept="2OwXpG" id="7e$2hwb0844" role="2OqNvi">
                <ref role="2Oxat5" node="7e$2hwaZkiV" resolve="disposed" />
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
    <node concept="2tJIrI" id="1PdMG9ntUzB" role="jymVt" />
    <node concept="3clFb_" id="1PdMG9nu6bb" role="jymVt">
      <property role="TrG5h" value="clearAllCashes" />
      <node concept="3cqZAl" id="1PdMG9nu6bd" role="3clF45" />
      <node concept="3Tm1VV" id="1PdMG9nu6be" role="1B3o_S" />
      <node concept="3clFbS" id="1PdMG9nu6bf" role="3clF47">
        <node concept="3clFbF" id="1PdMG9nuAfs" role="3cqZAp">
          <node concept="2OqwBi" id="1PdMG9nuWhi" role="3clFbG">
            <node concept="2OqwBi" id="1PdMG9nuH9d" role="2Oq$k0">
              <node concept="Xjq3P" id="1PdMG9nuAfr" role="2Oq$k0" />
              <node concept="2OwXpG" id="1PdMG9nuOtj" role="2OqNvi">
                <ref role="2Oxat5" node="1RYTbd7AOyL" resolve="states" />
              </node>
            </node>
            <node concept="2es0OD" id="1PdMG9nv4TG" role="2OqNvi">
              <node concept="1bVj0M" id="1PdMG9nv4TI" role="23t8la">
                <node concept="3clFbS" id="1PdMG9nv4TJ" role="1bW5cS">
                  <node concept="3clFbF" id="1PdMG9nvdbc" role="3cqZAp">
                    <node concept="2OqwBi" id="1PdMG9nvj$i" role="3clFbG">
                      <node concept="37vLTw" id="1PdMG9nvdbb" role="2Oq$k0">
                        <ref role="3cqZAo" node="1PdMG9nv4TK" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1PdMG9nvqNo" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:5HVB6JS1Tc9" resolve="clearAllCaches" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1PdMG9nv4TK" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1PdMG9nv4TL" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ceN1hCD$TM" role="jymVt" />
    <node concept="3clFb_" id="4ot3PHQZkoY" role="jymVt">
      <property role="TrG5h" value="configure" />
      <node concept="3Tm1VV" id="4ot3PHQZkp0" role="1B3o_S" />
      <node concept="3uibUv" id="4ot3PHQZkp2" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4ot3PHQZkp3" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3uibUv" id="4ot3PHQZkp4" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4ot3PHQZkp5" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4ot3PHQZkp6" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="4ot3PHQZkpe" role="3clF47">
        <node concept="3clFbJ" id="7e$2hwaInMv" role="3cqZAp">
          <node concept="3clFbS" id="7e$2hwaInMx" role="3clFbx">
            <node concept="3cpWs8" id="7e$2hwaKUQ_" role="3cqZAp">
              <node concept="3cpWsn" id="7e$2hwaKUQA" role="3cpWs9">
                <property role="TrG5h" value="map" />
                <node concept="3uibUv" id="7e$2hwaKUQy" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
                  <node concept="3uibUv" id="7e$2hwaKUQz" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="7e$2hwaKUQ$" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7e$2hwaKUQB" role="33vP2m">
                  <node concept="1pGfFk" id="7e$2hwaKUQC" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7e$2hwaLkNH" role="3cqZAp">
              <node concept="2YIFZM" id="7e$2hwaL_Yk" role="3clFbG">
                <ref role="37wK5l" node="7e$2hwaJpO6" resolve="populateParametersMap" />
                <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
                <node concept="37vLTw" id="7e$2hwaLQq$" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwaKUQA" resolve="map" />
                </node>
                <node concept="1eOMI4" id="7e$2hwaMhYg" role="37wK5m">
                  <node concept="10QFUN" id="7e$2hwaMhYf" role="1eOMHV">
                    <node concept="37vLTw" id="7e$2hwaMhYe" role="10QFUP">
                      <ref role="3cqZAo" node="4ot3PHQZkp5" resolve="project" />
                    </node>
                    <node concept="3uibUv" id="7e$2hwaMhYd" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7e$2hwaMrTn" role="3cqZAp">
              <node concept="37vLTw" id="7e$2hwaKUQD" role="3cqZAk">
                <ref role="3cqZAo" node="7e$2hwaKUQA" resolve="map" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7e$2hwaICTO" role="3clFbw">
            <node concept="3uibUv" id="7e$2hwaIMQR" role="2ZW6by">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="37vLTw" id="7e$2hwaIxz6" role="2ZW6bz">
              <ref role="3cqZAo" node="4ot3PHQZkp5" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaIY22" role="3cqZAp">
          <node concept="2YIFZM" id="7e$2hwaJ6hc" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyMap()" resolve="emptyMap" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
          </node>
        </node>
        <node concept="3SKdUt" id="7e$2hwaHYQ6" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwaHYQ7" role="1aUNEU">
            <node concept="3oM_SD" id="7e$2hwaHYQe" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4ot3PHQZkpf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ot3PHQZE4R" role="jymVt" />
    <node concept="3clFb_" id="4ot3PHQY0cu" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3Tm1VV" id="4ot3PHQY0cv" role="1B3o_S" />
      <node concept="2AHcQZ" id="4ot3PHQY0cx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="10P_77" id="4ot3PHQY0cN" role="3clF45" />
      <node concept="37vLTG" id="4ot3PHQY0cO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4ot3PHQY0cP" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4ot3PHQY0cQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4ot3PHQY0cR" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="4ot3PHQY0cS" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4ot3PHQY0cT" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="4ot3PHQY0cU" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="4ot3PHQY0cV" role="3clF47">
        <node concept="YS8fn" id="4ot3PHQYruF" role="3cqZAp">
          <node concept="2ShNRf" id="4ot3PHQYzrC" role="YScLw">
            <node concept="1pGfFk" id="4ot3PHQYXM1" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="4ot3PHQZ5iK" role="37wK5m">
                <property role="Xl_RC" value="FIXME" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4ot3PHQY0cW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ot3PHQYgre" role="jymVt" />
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
      <node concept="37vLTG" id="4ot3PHQXNql" role="3clF46">
        <property role="TrG5h" value="flags" />
        <node concept="3uibUv" id="4ot3PHQXXlH" role="1tU5fm">
          <ref role="3uigEE" to="1ka:~TypecheckingSession$Flags" resolve="Flags" />
        </node>
      </node>
      <node concept="3clFbS" id="5BwsbZJDRzN" role="3clF47">
        <node concept="3cpWs8" id="7e$2hwaN3C$" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaN3C_" role="3cpWs9">
            <property role="TrG5h" value="paramsMap" />
            <node concept="3uibUv" id="7e$2hwaN1WY" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="7e$2hwaN1X3" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="7e$2hwaNhcY" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="10QFUN" id="7e$2hwaNrsn" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwaNrsk" role="10QFUP">
                <node concept="37vLTw" id="7e$2hwaNrsl" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ot3PHQXNql" resolve="flags" />
                </node>
                <node concept="liA8E" id="7e$2hwaNrsm" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getParamsMap()" resolve="getParamsMap" />
                </node>
              </node>
              <node concept="3uibUv" id="7e$2hwaNrsh" role="10QFUM">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                <node concept="3uibUv" id="7e$2hwaNrsi" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="7e$2hwaNrsj" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7e$2hwaNT1I" role="3cqZAp">
          <node concept="3clFbS" id="7e$2hwaNT1K" role="3clFbx">
            <node concept="3clFbF" id="7e$2hwaOpql" role="3cqZAp">
              <node concept="37vLTI" id="7e$2hwaOzEu" role="3clFbG">
                <node concept="2YIFZM" id="7e$2hwaOR$y" role="37vLTx">
                  <ref role="37wK5l" to="33ny:~Collections.emptyMap()" resolve="emptyMap" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                </node>
                <node concept="37vLTw" id="7e$2hwaOpqj" role="37vLTJ">
                  <ref role="3cqZAo" node="7e$2hwaN3C_" resolve="paramsMap" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7e$2hwaO9yt" role="3clFbw">
            <node concept="10Nm6u" id="7e$2hwaOgtZ" role="3uHU7w" />
            <node concept="37vLTw" id="7e$2hwaO2dV" role="3uHU7B">
              <ref role="3cqZAo" node="7e$2hwaN3C_" resolve="paramsMap" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaNJvE" role="3cqZAp" />
        <node concept="3cpWs8" id="7e$2hwaRm5C" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaRm5D" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7e$2hwaRjR3" role="1tU5fm">
              <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="2YIFZM" id="7e$2hwaRm5E" role="33vP2m">
              <ref role="37wK5l" node="7e$2hwaPkPY" resolve="getParamConfig" />
              <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
              <node concept="37vLTw" id="7e$2hwaRm5F" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwaN3C_" resolve="paramsMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaN_Tt" role="3cqZAp" />
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
                <ref role="3cqZAo" node="7e$2hwaRm5D" resolve="config" />
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
                    <ref role="3cqZAo" node="7e$2hwaRm5D" resolve="config" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwbn9q3" role="3cqZAp" />
        <node concept="3SKdUt" id="7e$2hwbn9q4" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwbn9q5" role="1aUNEU">
            <node concept="3oM_SD" id="7e$2hwbn9q6" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7e$2hwbn9q7" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="7e$2hwbn9q8" role="1PaTwD">
              <property role="3oM_SC" value="workaround" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7e$2hwbn9q9" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwbn9qa" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="7e$2hwbn9qb" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="10QFUN" id="7e$2hwbn9qc" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwbn9qd" role="10QFUP">
                <node concept="37vLTw" id="7e$2hwbn9qe" role="2Oq$k0">
                  <ref role="3cqZAo" node="7e$2hwaN3C_" resolve="paramsMap" />
                </node>
                <node concept="liA8E" id="7e$2hwbn9qf" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="Xl_RD" id="7e$2hwbn9qg" role="37wK5m">
                    <property role="Xl_RC" value="__REPOSITORY__" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7e$2hwbn9qh" role="10QFUM">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
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
        <node concept="3clFbF" id="IFW4V30XBv" role="3cqZAp">
          <node concept="2OqwBi" id="IFW4V31Fzl" role="3clFbG">
            <node concept="2YIFZM" id="IFW4V318L6" role="2Oq$k0">
              <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
              <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
              <node concept="37vLTw" id="IFW4V31qd3" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
              </node>
              <node concept="37vLTw" id="IFW4V31yGN" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
              </node>
            </node>
            <node concept="liA8E" id="IFW4V31ObN" role="2OqNvi">
              <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
              <node concept="37vLTw" id="9UUIHLO7_y" role="37wK5m">
                <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IFW4V30LEZ" role="3cqZAp" />
        <node concept="3cpWs8" id="2ceN1hCDCZX" role="3cqZAp">
          <node concept="3cpWsn" id="2ceN1hCDCZY" role="3cpWs9">
            <property role="TrG5h" value="srcCliques" />
            <node concept="3vKaQO" id="IFW4V339UR" role="1tU5fm">
              <node concept="3uibUv" id="IFW4V339UT" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="IFW4V339UU" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="IFW4V331HO" role="33vP2m">
              <node concept="2YIFZM" id="IFW4V331HP" role="2Oq$k0">
                <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
                <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                <node concept="37vLTw" id="IFW4V331HQ" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
                </node>
                <node concept="37vLTw" id="IFW4V331HR" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
                </node>
              </node>
              <node concept="liA8E" id="IFW4V331HS" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                <node concept="37vLTw" id="9UUIHLOvZQ" role="37wK5m">
                  <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IFW4V33FXK" role="3cqZAp" />
        <node concept="3cpWs8" id="IFW4V33x8N" role="3cqZAp">
          <node concept="3cpWsn" id="IFW4V33x8O" role="3cpWs9">
            <property role="TrG5h" value="trgCliques" />
            <node concept="3vKaQO" id="IFW4V33x8P" role="1tU5fm">
              <node concept="3uibUv" id="IFW4V33x8Q" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="IFW4V33x8R" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="IFW4V38zU$" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="IFW4V38LSo" role="3cqZAp">
          <node concept="3clFbS" id="IFW4V38LSq" role="3clFbx">
            <node concept="3clFbF" id="IFW4V39a9q" role="3cqZAp">
              <node concept="37vLTI" id="IFW4V39a9r" role="3clFbG">
                <node concept="2OqwBi" id="IFW4V39a9s" role="37vLTx">
                  <node concept="2YIFZM" id="IFW4V39a9t" role="2Oq$k0">
                    <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
                    <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                    <node concept="37vLTw" id="IFW4V39a9u" role="37wK5m">
                      <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
                    </node>
                    <node concept="37vLTw" id="IFW4V39a9v" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
                    </node>
                  </node>
                  <node concept="liA8E" id="IFW4V39a9w" role="2OqNvi">
                    <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                    <node concept="37vLTw" id="9UUIHLOR8O" role="37wK5m">
                      <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="IFW4V39a9J" role="37vLTJ">
                  <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="IFW4V3aZGE" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="IFW4V38X6s" role="3clFbw">
            <node concept="10Nm6u" id="IFW4V393dl" role="3uHU7w" />
            <node concept="37vLTw" id="IFW4V38QWp" role="3uHU7B">
              <ref role="3cqZAo" node="5BwsbZJDRzJ" resolve="trg" />
            </node>
          </node>
          <node concept="3eNFk2" id="IFW4V39IDM" role="3eNLev">
            <node concept="1Wc70l" id="IFW4V3ab7r" role="3eO9$A">
              <node concept="3y3z36" id="IFW4V3aMbq" role="3uHU7w">
                <node concept="10Nm6u" id="IFW4V3aSgi" role="3uHU7w" />
                <node concept="2OqwBi" id="IFW4V3anLj" role="3uHU7B">
                  <node concept="37vLTw" id="IFW4V3ahMd" role="2Oq$k0">
                    <ref role="3cqZAo" node="5BwsbZJDRzG" resolve="src" />
                  </node>
                  <node concept="liA8E" id="IFW4V3ava3" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="IFW4V39VqT" role="3uHU7B">
                <node concept="37vLTw" id="IFW4V39OCl" role="3uHU7B">
                  <ref role="3cqZAo" node="5BwsbZJDRzL" resolve="concept" />
                </node>
                <node concept="10Nm6u" id="IFW4V3a1TI" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="IFW4V39IDO" role="3eOfB_">
              <node concept="3clFbF" id="IFW4V38lQg" role="3cqZAp">
                <node concept="37vLTI" id="IFW4V38lQi" role="3clFbG">
                  <node concept="2OqwBi" id="IFW4V33x8S" role="37vLTx">
                    <node concept="2YIFZM" id="IFW4V33x8T" role="2Oq$k0">
                      <ref role="37wK5l" to="fqlx:78H58oefSjC" resolve="lookup" />
                      <ref role="1Pybhc" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                      <node concept="37vLTw" id="IFW4V33x8U" role="37wK5m">
                        <ref role="3cqZAo" node="7e$2hwbn9qa" resolve="repository" />
                      </node>
                      <node concept="37vLTw" id="IFW4V33x8V" role="37wK5m">
                        <ref role="3cqZAo" node="3KN3A4uZFCZ" resolve="discoverable" />
                      </node>
                    </node>
                    <node concept="liA8E" id="IFW4V33x8W" role="2OqNvi">
                      <ref role="37wK5l" to="fqlx:9UUIHLLQnW" resolve="allForSingleNode" />
                      <node concept="2OqwBi" id="IFW4V34L$g" role="37wK5m">
                        <node concept="1eOMI4" id="IFW4V35i5m" role="2Oq$k0">
                          <node concept="10QFUN" id="IFW4V35i5l" role="1eOMHV">
                            <node concept="37vLTw" id="IFW4V35i5k" role="10QFUP">
                              <ref role="3cqZAo" node="5BwsbZJDRzL" resolve="concept" />
                            </node>
                            <node concept="3bZ5Sz" id="IFW4V35rI2" role="10QFUM" />
                          </node>
                        </node>
                        <node concept="LFhST" id="IFW4V35zaD" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="IFW4V38lQm" role="37vLTJ">
                    <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IFW4V36N5l" role="3cqZAp" />
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
                    <node concept="37vLTw" id="IFW4V36ECt" role="2Oq$k0">
                      <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
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
              <node concept="37vLTw" id="IFW4V36rLa" role="3uHU7B">
                <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
              </node>
              <node concept="10Nm6u" id="51ek2rR1W5t" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="51ek2rR1XIt" role="3uHU7w">
              <node concept="37vLTw" id="IFW4V36z5N" role="2Oq$k0">
                <ref role="3cqZAo" node="IFW4V33x8O" resolve="trgCliques" />
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
        <node concept="3cpWs8" id="7e$2hwaS6EI" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaS6EJ" role="3cpWs9">
            <property role="TrG5h" value="paramsMap" />
            <node concept="3uibUv" id="7e$2hwaS6EK" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="7e$2hwaS6EL" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="7e$2hwaS6EM" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="10QFUN" id="7e$2hwaS6EN" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwaS6EO" role="10QFUP">
                <node concept="37vLTw" id="7e$2hwaS6EP" role="2Oq$k0">
                  <ref role="3cqZAo" node="lvX$8VFrSd" resolve="flags" />
                </node>
                <node concept="liA8E" id="7e$2hwaS6EQ" role="2OqNvi">
                  <ref role="37wK5l" to="1ka:~TypecheckingSession$Flags.getParamsMap()" resolve="getParamsMap" />
                </node>
              </node>
              <node concept="3uibUv" id="7e$2hwaS6ER" role="10QFUM">
                <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                <node concept="3uibUv" id="7e$2hwaS6ES" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="7e$2hwaS6ET" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7e$2hwaS6EU" role="3cqZAp">
          <node concept="3clFbS" id="7e$2hwaS6EV" role="3clFbx">
            <node concept="3clFbF" id="7e$2hwaS6EW" role="3cqZAp">
              <node concept="37vLTI" id="7e$2hwaS6EX" role="3clFbG">
                <node concept="2YIFZM" id="7e$2hwaS6EY" role="37vLTx">
                  <ref role="37wK5l" to="33ny:~Collections.emptyMap()" resolve="emptyMap" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                </node>
                <node concept="37vLTw" id="7e$2hwaS6EZ" role="37vLTJ">
                  <ref role="3cqZAo" node="7e$2hwaS6EJ" resolve="paramsMap" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7e$2hwaS6F0" role="3clFbw">
            <node concept="10Nm6u" id="7e$2hwaS6F1" role="3uHU7w" />
            <node concept="37vLTw" id="7e$2hwaS6F2" role="3uHU7B">
              <ref role="3cqZAo" node="7e$2hwaS6EJ" resolve="paramsMap" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaS6F3" role="3cqZAp" />
        <node concept="3cpWs8" id="7e$2hwaS6F4" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaS6F5" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7e$2hwaS6F6" role="1tU5fm">
              <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="2YIFZM" id="7e$2hwaS6F7" role="33vP2m">
              <ref role="37wK5l" node="7e$2hwaPkPY" resolve="getParamConfig" />
              <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
              <node concept="37vLTw" id="7e$2hwaS6F8" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwaS6EJ" resolve="paramsMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaXYjk" role="3cqZAp" />
        <node concept="3SKdUt" id="7e$2hwaXYqZ" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwaXYr0" role="1aUNEU">
            <node concept="3oM_SD" id="7e$2hwaXYr1" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYr2" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYr3" role="1PaTwD">
              <property role="3oM_SC" value="workaround" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7e$2hwaUBIb" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaUBIc" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="7e$2hwaU_pg" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="10QFUN" id="7e$2hwaViv9" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwaViv5" role="10QFUP">
                <node concept="37vLTw" id="7e$2hwaViv6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7e$2hwaS6EJ" resolve="paramsMap" />
                </node>
                <node concept="liA8E" id="7e$2hwaViv7" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="Xl_RD" id="7e$2hwaViv8" role="37wK5m">
                    <property role="Xl_RC" value="__REPOSITORY__" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7e$2hwaViv4" role="10QFUM">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="17DrR$SXQqe" role="3cqZAp" />
        <node concept="3SKdUt" id="7e$2hwaXOuX" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwaXOuY" role="1aUNEU">
            <node concept="3oM_SD" id="7e$2hwaXYhU" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYhW" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYhZ" role="1PaTwD">
              <property role="3oM_SC" value="hack" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYi3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYi8" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYie" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYil" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYit" role="1PaTwD">
              <property role="3oM_SC" value="necessary" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYiA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYiK" role="1PaTwD">
              <property role="3oM_SC" value="provide" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYiV" role="1PaTwD">
              <property role="3oM_SC" value="tracing" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaXYj7" role="1PaTwD">
              <property role="3oM_SC" value="reports" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7e$2hwaXjQ3" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaXjQ4" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="7e$2hwaXi4V" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="10QFUN" id="7e$2hwaXjQ5" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwaXjQ6" role="10QFUP">
                <node concept="1eOMI4" id="7e$2hwaXjQ7" role="2Oq$k0">
                  <node concept="10QFUN" id="7e$2hwaXjQ8" role="1eOMHV">
                    <node concept="37vLTw" id="7e$2hwaXjQ9" role="10QFUP">
                      <ref role="3cqZAo" node="7e$2hwaUBIc" resolve="repository" />
                    </node>
                    <node concept="3uibUv" id="7e$2hwaXjQa" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~ProjectRepository" resolve="ProjectRepository" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7e$2hwaXjQb" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~ProjectRepository.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="3uibUv" id="7e$2hwaXjQc" role="10QFUM">
                <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaVz9S" role="3cqZAp" />
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
                  <node concept="37vLTw" id="1C_jAsqmsx2" role="37wK5m">
                    <ref role="3cqZAo" node="7e$2hwaUBIc" resolve="repository" />
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
                  <node concept="37vLTw" id="1C_jAsqmI2y" role="37wK5m">
                    <ref role="3cqZAo" node="7e$2hwaUBIc" resolve="repository" />
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
        <node concept="3clFbH" id="7e$2hwaX$wQ" role="3cqZAp" />
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
              <node concept="37vLTw" id="7e$2hwaVOOK" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwaUBIc" resolve="repository" />
              </node>
              <node concept="37vLTw" id="5cBWTAeigJq" role="37wK5m">
                <ref role="3cqZAo" node="7e$2hwaS6F5" resolve="config" />
              </node>
              <node concept="2YIFZM" id="5cBWTAeigJr" role="37wK5m">
                <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                <node concept="37vLTw" id="7e$2hwaXjQd" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwaXjQ4" resolve="project" />
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
          <node concept="37vLTw" id="7e$2hwb0Z4k" role="3clFbw">
            <ref role="3cqZAo" node="7e$2hwaZkiV" resolve="disposed" />
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
      <node concept="37vLTG" id="1C_jAsql_X0" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1C_jAsqlOkq" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1RYTbd7BH61" role="1B3o_S" />
      <node concept="3uibUv" id="1RYTbd7BH62" role="3clF45">
        <ref role="3uigEE" to="tj24:4Z$O9mrQIzY" resolve="TypecheckingState" />
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
                <node concept="37vLTw" id="1C_jAsqm46v" role="37wK5m">
                  <ref role="3cqZAo" node="1C_jAsql_X0" resolve="repository" />
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
        <property role="od$2w" value="true" />
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
                    <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
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
                      <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
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
        <property role="od$2w" value="true" />
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
                  <node concept="3clFbT" id="51h1DIGptwC" role="37wK5m" />
                  <node concept="37vLTw" id="1z4$59iIHt6" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0n" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="1z4$59iIHt7" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0p" resolve="trgType" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1z4$59iRh_9" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6$gg4k_6B9G" role="jymVt" />
      <node concept="3clFb_" id="51h1DIGpAI8" role="jymVt">
        <property role="TrG5h" value="isSubtype" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="51h1DIGpAIa" role="1B3o_S" />
        <node concept="10P_77" id="51h1DIGpAIc" role="3clF45" />
        <node concept="37vLTG" id="51h1DIGpAId" role="3clF46">
          <property role="TrG5h" value="typeA" />
          <node concept="3uibUv" id="51h1DIGpAIe" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGpAIf" role="3clF46">
          <property role="TrG5h" value="typeB" />
          <node concept="3uibUv" id="51h1DIGpAIg" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGpAIo" role="3clF47">
          <node concept="3clFbJ" id="51h1DIGqoLh" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGqoLj" role="3clFbx">
              <node concept="3cpWs6" id="51h1DIGriyK" role="3cqZAp">
                <node concept="3clFbT" id="51h1DIGrqYp" role="3cqZAk" />
              </node>
            </node>
            <node concept="22lmx$" id="51h1DIGqPKr" role="3clFbw">
              <node concept="3clFbC" id="51h1DIGr4IV" role="3uHU7w">
                <node concept="10Nm6u" id="51h1DIGravY" role="3uHU7w" />
                <node concept="37vLTw" id="51h1DIGqWx5" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpAIf" resolve="typeB" />
                </node>
              </node>
              <node concept="3clFbC" id="51h1DIGqC04" role="3uHU7B">
                <node concept="37vLTw" id="51h1DIGqxkn" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpAId" resolve="typeA" />
                </node>
                <node concept="10Nm6u" id="51h1DIGqGTG" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="51h1DIGrJCA" role="3cqZAp">
            <node concept="2OqwBi" id="51h1DIGrJCB" role="3clFbG">
              <node concept="2OqwBi" id="51h1DIGrJCC" role="2Oq$k0">
                <node concept="37vLTw" id="51h1DIGrJCD" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
                <node concept="liA8E" id="51h1DIGrJCE" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:1z4$59iIpuJ" resolve="convertsTo" />
                  <node concept="3clFbT" id="51h1DIGrJCF" role="37wK5m" />
                  <node concept="37vLTw" id="51h1DIGrSKT" role="37wK5m">
                    <ref role="3cqZAo" node="51h1DIGpAId" resolve="typeA" />
                  </node>
                  <node concept="37vLTw" id="51h1DIGsllb" role="37wK5m">
                    <ref role="3cqZAo" node="51h1DIGpAIf" resolve="typeB" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="51h1DIGrJCI" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="51h1DIGpAIp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="51h1DIGpMAA" role="jymVt" />
      <node concept="3clFb_" id="51h1DIGpZ1D" role="jymVt">
        <property role="TrG5h" value="isStrongSubtype" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="51h1DIGpZ1F" role="1B3o_S" />
        <node concept="10P_77" id="51h1DIGpZ1H" role="3clF45" />
        <node concept="37vLTG" id="51h1DIGpZ1I" role="3clF46">
          <property role="TrG5h" value="typeA" />
          <node concept="3uibUv" id="51h1DIGpZ1J" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGpZ1K" role="3clF46">
          <property role="TrG5h" value="typeB" />
          <node concept="3uibUv" id="51h1DIGpZ1L" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGpZ1T" role="3clF47">
          <node concept="3clFbJ" id="51h1DIGst3L" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGst3M" role="3clFbx">
              <node concept="3cpWs6" id="51h1DIGst3N" role="3cqZAp">
                <node concept="3clFbT" id="51h1DIGst3O" role="3cqZAk" />
              </node>
            </node>
            <node concept="22lmx$" id="51h1DIGst3P" role="3clFbw">
              <node concept="3clFbC" id="51h1DIGst3Q" role="3uHU7w">
                <node concept="10Nm6u" id="51h1DIGst3R" role="3uHU7w" />
                <node concept="37vLTw" id="51h1DIGst3S" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpZ1K" resolve="typeB" />
                </node>
              </node>
              <node concept="3clFbC" id="51h1DIGst3T" role="3uHU7B">
                <node concept="37vLTw" id="51h1DIGst3U" role="3uHU7B">
                  <ref role="3cqZAo" node="51h1DIGpZ1I" resolve="typeA" />
                </node>
                <node concept="10Nm6u" id="51h1DIGst3V" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="51h1DIGst3W" role="3cqZAp">
            <node concept="2OqwBi" id="51h1DIGst3X" role="3clFbG">
              <node concept="2OqwBi" id="51h1DIGst3Y" role="2Oq$k0">
                <node concept="37vLTw" id="51h1DIGst3Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
                <node concept="liA8E" id="51h1DIGst40" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:1z4$59iIpuJ" resolve="convertsTo" />
                  <node concept="3clFbT" id="51h1DIGst41" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="51h1DIGst42" role="37wK5m">
                    <ref role="3cqZAo" node="51h1DIGpZ1I" resolve="typeA" />
                  </node>
                  <node concept="37vLTw" id="51h1DIGst43" role="37wK5m">
                    <ref role="3cqZAo" node="51h1DIGpZ1K" resolve="typeB" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="51h1DIGst44" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="51h1DIGpZ1U" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="51h1DIGq8gG" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA0w" role="jymVt">
        <property role="TrG5h" value="coerceType" />
        <property role="od$2w" value="true" />
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
                  <node concept="3clFbT" id="51h1DIGjORQ" role="37wK5m" />
                  <node concept="37vLTw" id="2xx8OByk5tn" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0$" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="2xx8OByk7Nq" role="37wK5m">
                    <ref role="3cqZAo" node="siuT5mmA0A" resolve="trgConcept" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1z4$59iRDco" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
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
        <property role="od$2w" value="true" />
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
          <node concept="3cpWs6" id="51h1DIGjVqU" role="3cqZAp">
            <node concept="1rXfSq" id="51h1DIGjVqT" role="3cqZAk">
              <ref role="37wK5l" node="51h1DIGjVqO" resolve="doCoerce" />
              <node concept="3clFbT" id="51h1DIGlLFy" role="37wK5m" />
              <node concept="37vLTw" id="51h1DIGjVqR" role="37wK5m">
                <ref role="3cqZAo" node="hEDrw1P5M4" resolve="pattern" />
              </node>
              <node concept="37vLTw" id="51h1DIGjVqS" role="37wK5m">
                <ref role="3cqZAo" node="hEDrw1P5M1" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="hEDrw1P5M9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="51h1DIGk4NV" role="jymVt" />
      <node concept="3clFb_" id="51h1DIGbrNo" role="jymVt">
        <property role="TrG5h" value="strongCoerceType" />
        <property role="od$2w" value="true" />
        <node concept="3Tm1VV" id="51h1DIGbrNq" role="1B3o_S" />
        <node concept="2AHcQZ" id="51h1DIGbrNs" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="51h1DIGbrNt" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="51h1DIGbrNu" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="51h1DIGbrNv" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGbrNw" role="3clF46">
          <property role="TrG5h" value="trgConcept" />
          <node concept="3uibUv" id="51h1DIGbrNx" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
          </node>
          <node concept="2AHcQZ" id="51h1DIGbrNy" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGbrNC" role="3clF47">
          <node concept="3clFbF" id="51h1DIGlYEB" role="3cqZAp">
            <node concept="2OqwBi" id="51h1DIGlYEC" role="3clFbG">
              <node concept="2OqwBi" id="51h1DIGlYED" role="2Oq$k0">
                <node concept="37vLTw" id="51h1DIGlYEE" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
                <node concept="liA8E" id="51h1DIGlYEF" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:1z4$59iIxBp" resolve="coerceTo" />
                  <node concept="3clFbT" id="51h1DIGlYEG" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="51h1DIGlYEH" role="37wK5m">
                    <ref role="3cqZAo" node="51h1DIGbrNu" resolve="type" />
                  </node>
                  <node concept="37vLTw" id="51h1DIGmgAH" role="37wK5m">
                    <ref role="3cqZAo" node="51h1DIGbrNw" resolve="trgConcept" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="51h1DIGlYEJ" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="51h1DIGbrND" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6v6oK28WiYU" role="jymVt" />
      <node concept="3clFb_" id="6v6oK28Wtdd" role="jymVt">
        <property role="TrG5h" value="evaluate" />
        <property role="od$2w" value="true" />
        <node concept="37vLTG" id="6v6oK28WUJW" role="3clF46">
          <property role="TrG5h" value="query" />
          <node concept="3uibUv" id="6v6oK28X2T8" role="1tU5fm">
            <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
          </node>
        </node>
        <node concept="37vLTG" id="6v6oK28Y4WE" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="6v6oK28Yd6M" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6v6oK28Wtdf" role="3clF45" />
        <node concept="3Tm1VV" id="6v6oK28Wtdg" role="1B3o_S" />
        <node concept="3clFbS" id="6v6oK28Wtdh" role="3clF47">
          <node concept="3clFbF" id="6v6oK28XnIc" role="3cqZAp">
            <node concept="2OqwBi" id="6v6oK28Ypa9" role="3clFbG">
              <node concept="2OqwBi" id="6v6oK28XvDU" role="2Oq$k0">
                <node concept="37vLTw" id="6v6oK28XnIb" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                </node>
                <node concept="liA8E" id="6v6oK28XBJC" role="2OqNvi">
                  <ref role="37wK5l" to="tj24:6v6oK28NWWP" resolve="customRequest" />
                  <node concept="37vLTw" id="6v6oK28XT7p" role="37wK5m">
                    <ref role="3cqZAo" node="6v6oK28WUJW" resolve="query" />
                  </node>
                  <node concept="37vLTw" id="6v6oK28YgHX" role="37wK5m">
                    <ref role="3cqZAo" node="6v6oK28Y4WE" resolve="nodes" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6v6oK28YxAs" role="2OqNvi">
                <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="51h1DIGbjx5" role="jymVt" />
      <node concept="3Tm1VV" id="61G6TdD0ZwH" role="1B3o_S" />
      <node concept="3uibUv" id="lvX$8VFC52" role="EKbjA">
        <ref role="3uigEE" to="1ka:~TypecheckingQueries" resolve="TypecheckingQueries" />
      </node>
      <node concept="3uibUv" id="3CzfQ_oh_Ur" role="EKbjA">
        <ref role="3uigEE" to="1ka:~TypecheckingObservable" resolve="TypecheckingObservable" />
      </node>
      <node concept="3clFb_" id="51h1DIGjVqO" role="jymVt">
        <property role="TrG5h" value="doCoerce" />
        <node concept="3Tm6S6" id="51h1DIGjVqP" role="1B3o_S" />
        <node concept="3uibUv" id="51h1DIGjVqQ" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="51h1DIGkcwR" role="3clF46">
          <property role="TrG5h" value="isStrong" />
          <node concept="10P_77" id="51h1DIGklc7" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="51h1DIGjVqB" role="3clF46">
          <property role="TrG5h" value="pattern" />
          <node concept="3uibUv" id="51h1DIGjVqC" role="1tU5fm">
            <ref role="3uigEE" to="7jhi:~INodeMatchingPattern" resolve="INodeMatchingPattern" />
          </node>
        </node>
        <node concept="37vLTG" id="51h1DIGjVqD" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="51h1DIGjVqE" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="51h1DIGjVn_" role="3clF47">
          <node concept="3cpWs8" id="51h1DIGjVnA" role="3cqZAp">
            <node concept="3cpWsn" id="51h1DIGjVnB" role="3cpWs9">
              <property role="TrG5h" value="trgConcept" />
              <node concept="3uibUv" id="51h1DIGjVnC" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
              </node>
              <node concept="2OqwBi" id="51h1DIGjVnD" role="33vP2m">
                <node concept="37vLTw" id="51h1DIGjVqJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
                </node>
                <node concept="liA8E" id="51h1DIGjVnF" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~IMatchingPattern.getConcept()" resolve="getConcept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="51h1DIGjVnG" role="3cqZAp">
            <node concept="3cpWsn" id="51h1DIGjVnH" role="3cpWs9">
              <property role="TrG5h" value="patternNode" />
              <node concept="3Tqbb2" id="51h1DIGjVnI" role="1tU5fm" />
              <node concept="2OqwBi" id="51h1DIGjVnJ" role="33vP2m">
                <node concept="37vLTw" id="51h1DIGjVqL" role="2Oq$k0">
                  <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
                </node>
                <node concept="liA8E" id="51h1DIGjVnL" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~INodeMatchingPattern.getPatternNode()" resolve="getPatternNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="51h1DIGjVnM" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGjVnN" role="3clFbx">
              <node concept="3SKdUt" id="51h1DIGjVnQ" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVnR" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVnS" role="1PaTwD">
                    <property role="3oM_SC" value="This" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnT" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnU" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnV" role="1PaTwD">
                    <property role="3oM_SC" value="hack:" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnW" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnX" role="1PaTwD">
                    <property role="3oM_SC" value="heuristic" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnY" role="1PaTwD">
                    <property role="3oM_SC" value="that" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVnZ" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo0" role="1PaTwD">
                    <property role="3oM_SC" value="pattern" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo1" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo2" role="1PaTwD">
                    <property role="3oM_SC" value="antiquotations" />
                  </node>
                  <node concept="3oM_SD" id="5BZU0S34HYM" role="1PaTwD">
                    <property role="3oM_SC" value="or" />
                  </node>
                  <node concept="3oM_SD" id="5BZU0S34HZ3" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo3" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo4" role="1PaTwD">
                    <property role="3oM_SC" value="likely" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo5" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo6" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVo7" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVo8" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVo9" role="1PaTwD">
                    <property role="3oM_SC" value="define" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoa" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVob" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoc" role="1PaTwD">
                    <property role="3oM_SC" value="top-level" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVod" role="1PaTwD">
                    <property role="3oM_SC" value="node," />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoe" role="1PaTwD">
                    <property role="3oM_SC" value="such" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVof" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVog" role="1PaTwD">
                    <property role="3oM_SC" value="classifier" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoh" role="1PaTwD">
                    <property role="3oM_SC" value="type," />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoi" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoj" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVok" role="1PaTwD">
                    <property role="3oM_SC" value="rest" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVol" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVom" role="1PaTwD">
                    <property role="3oM_SC" value="going" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVon" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVoo" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVop" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVoq" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVor" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVos" role="1PaTwD">
                    <property role="3oM_SC" value="capturing" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVot" role="1PaTwD">
                    <property role="3oM_SC" value="variable(s)." />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVou" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVov" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVow" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVox" role="1PaTwD">
                    <property role="3oM_SC" value="This" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoy" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoz" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo$" role="1PaTwD">
                    <property role="3oM_SC" value="workaround" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVo_" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoA" role="1PaTwD">
                    <property role="3oM_SC" value="certain" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoB" role="1PaTwD">
                    <property role="3oM_SC" value="unsound" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoC" role="1PaTwD">
                    <property role="3oM_SC" value="statements" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoD" role="1PaTwD">
                    <property role="3oM_SC" value="whereas" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoE" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoF" role="1PaTwD">
                    <property role="3oM_SC" value="classifier" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoG" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoH" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVoI" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVoJ" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVoK" role="1PaTwD">
                    <property role="3oM_SC" value="coerced" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoL" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoM" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoN" role="1PaTwD">
                    <property role="3oM_SC" value="classifier" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoO" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoP" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoQ" role="1PaTwD">
                    <property role="3oM_SC" value="parameter" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoR" role="1PaTwD">
                    <property role="3oM_SC" value="int" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoS" role="1PaTwD">
                    <property role="3oM_SC" value="type," />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoT" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoU" role="1PaTwD">
                    <property role="3oM_SC" value="happens" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoV" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoW" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoX" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVoY" role="1PaTwD">
                    <property role="3oM_SC" value="node" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVoZ" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVp0" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVp1" role="1PaTwD">
                    <property role="3oM_SC" value="hosting" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp2" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp3" role="1PaTwD">
                    <property role="3oM_SC" value="antiquotation." />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp4" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVp5" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVp6" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVp7" role="1PaTwD">
                    <property role="3oM_SC" value="TODO:" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp8" role="1PaTwD">
                    <property role="3oM_SC" value="provide" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVp9" role="1PaTwD">
                    <property role="3oM_SC" value="possibility" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpa" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpb" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpc" role="1PaTwD">
                    <property role="3oM_SC" value="info" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpd" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpe" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpf" role="1PaTwD">
                    <property role="3oM_SC" value="pattern" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpg" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVph" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpi" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpj" role="1PaTwD">
                    <property role="3oM_SC" value="nodes" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="51h1DIGjVpk" role="3cqZAp">
                <node concept="1PaTwC" id="51h1DIGjVpl" role="1aUNEU">
                  <node concept="3oM_SD" id="51h1DIGjVpm" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpn" role="1PaTwD">
                    <property role="3oM_SC" value="capturing" />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpo" role="1PaTwD">
                    <property role="3oM_SC" value="variables." />
                  </node>
                  <node concept="3oM_SD" id="51h1DIGjVpp" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="51h1DIGjVpq" role="3cqZAp">
                <node concept="37vLTI" id="51h1DIGjVpr" role="3clFbG">
                  <node concept="2OqwBi" id="51h1DIGjVps" role="37vLTx">
                    <node concept="37vLTw" id="51h1DIGjVpt" role="2Oq$k0">
                      <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                    </node>
                    <node concept="1$rogu" id="51h1DIGjVpu" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="51h1DIGjVpv" role="37vLTJ">
                    <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="51h1DIGjVpw" role="3cqZAp">
                <node concept="2OqwBi" id="51h1DIGjVpx" role="3clFbG">
                  <node concept="2OqwBi" id="51h1DIGjVpy" role="2Oq$k0">
                    <node concept="37vLTw" id="51h1DIGjVpz" role="2Oq$k0">
                      <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                    </node>
                    <node concept="32TBzR" id="51h1DIGjVp$" role="2OqNvi" />
                  </node>
                  <node concept="2es0OD" id="51h1DIGjVp_" role="2OqNvi">
                    <node concept="1bVj0M" id="51h1DIGjVpA" role="23t8la">
                      <node concept="3clFbS" id="51h1DIGjVpB" role="1bW5cS">
                        <node concept="3clFbF" id="51h1DIGjVpC" role="3cqZAp">
                          <node concept="2OqwBi" id="51h1DIGjVpD" role="3clFbG">
                            <node concept="37vLTw" id="51h1DIGjVpE" role="2Oq$k0">
                              <ref role="3cqZAo" node="51h1DIGjVpK" resolve="it" />
                            </node>
                            <node concept="1P9Npp" id="51h1DIGjVpF" role="2OqNvi">
                              <node concept="2ShNRf" id="51h1DIGjVpG" role="1P9ThW">
                                <node concept="3zrR0B" id="51h1DIGjVpH" role="2ShVmc">
                                  <node concept="3Tqbb2" id="51h1DIGjVpI" role="3zrR0E">
                                    <ref role="ehGHo" to="tpee:4ctkEngA$UD" resolve="UndefinedType" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="51h1DIGjVpJ" role="3cqZAp" />
                      </node>
                      <node concept="Rh6nW" id="51h1DIGjVpK" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="51h1DIGjVpL" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="51h1DIGjVpS" role="3clFbw">
              <node concept="3uibUv" id="51h1DIGjVpT" role="2ZW6by">
                <ref role="3uigEE" to="7jhi:~GeneratedMatchingPattern" resolve="GeneratedMatchingPattern" />
              </node>
              <node concept="37vLTw" id="51h1DIGjVqG" role="2ZW6bz">
                <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="51h1DIGjVpV" role="3cqZAp">
            <node concept="3cpWsn" id="51h1DIGjVpW" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="3Tqbb2" id="51h1DIGjVpX" role="1tU5fm" />
              <node concept="10Nm6u" id="51h1DIGjVpY" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="51h1DIGjVpZ" role="3cqZAp">
            <node concept="3clFbS" id="51h1DIGjVq0" role="3clFbx">
              <node concept="3clFbF" id="51h1DIGjVq1" role="3cqZAp">
                <node concept="37vLTI" id="51h1DIGjVq2" role="3clFbG">
                  <node concept="2OqwBi" id="51h1DIGjVq3" role="37vLTx">
                    <node concept="2OqwBi" id="51h1DIGjVq4" role="2Oq$k0">
                      <node concept="37vLTw" id="51h1DIGjVq5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                      </node>
                      <node concept="liA8E" id="51h1DIGjVq6" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1RYTbd7MH$g" resolve="coerceTo" />
                        <node concept="37vLTw" id="51h1DIGkLRW" role="37wK5m">
                          <ref role="3cqZAo" node="51h1DIGkcwR" resolve="isStrong" />
                        </node>
                        <node concept="37vLTw" id="51h1DIGjVqH" role="37wK5m">
                          <ref role="3cqZAo" node="51h1DIGjVqD" resolve="type" />
                        </node>
                        <node concept="37vLTw" id="51h1DIGjVq8" role="37wK5m">
                          <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="51h1DIGjVq9" role="2OqNvi">
                      <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="51h1DIGjVqa" role="37vLTJ">
                    <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="51h1DIGjVqb" role="3cqZAp" />
            </node>
            <node concept="3y3z36" id="51h1DIGjVqc" role="3clFbw">
              <node concept="10Nm6u" id="51h1DIGjVqd" role="3uHU7w" />
              <node concept="37vLTw" id="51h1DIGjVqe" role="3uHU7B">
                <ref role="3cqZAo" node="51h1DIGjVnH" resolve="patternNode" />
              </node>
            </node>
            <node concept="9aQIb" id="51h1DIGjVqf" role="9aQIa">
              <node concept="3clFbS" id="51h1DIGjVqg" role="9aQI4">
                <node concept="3clFbF" id="51h1DIGjVqh" role="3cqZAp">
                  <node concept="37vLTI" id="51h1DIGjVqi" role="3clFbG">
                    <node concept="2OqwBi" id="51h1DIGjVqj" role="37vLTx">
                      <node concept="2OqwBi" id="51h1DIGjVqk" role="2Oq$k0">
                        <node concept="37vLTw" id="51h1DIGjVql" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59j5F_5" resolve="typecheckingService" />
                        </node>
                        <node concept="liA8E" id="51h1DIGjVqm" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1z4$59iIxBp" resolve="coerceTo" />
                          <node concept="37vLTw" id="51h1DIGl1LD" role="37wK5m">
                            <ref role="3cqZAo" node="51h1DIGkcwR" resolve="isStrong" />
                          </node>
                          <node concept="37vLTw" id="51h1DIGjVqK" role="37wK5m">
                            <ref role="3cqZAo" node="51h1DIGjVqD" resolve="type" />
                          </node>
                          <node concept="37vLTw" id="51h1DIGjVqo" role="37wK5m">
                            <ref role="3cqZAo" node="51h1DIGjVnB" resolve="trgConcept" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="51h1DIGjVqp" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="51h1DIGjVqq" role="37vLTJ">
                      <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="51h1DIGjVqr" role="3cqZAp">
            <node concept="3K4zz7" id="51h1DIGjVqs" role="3cqZAk">
              <node concept="37vLTw" id="51h1DIGjVqt" role="3K4E3e">
                <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
              </node>
              <node concept="10Nm6u" id="51h1DIGjVqu" role="3K4GZi" />
              <node concept="1Wc70l" id="51h1DIGjVqv" role="3K4Cdx">
                <node concept="3y3z36" id="51h1DIGjVqw" role="3uHU7B">
                  <node concept="10Nm6u" id="51h1DIGjVqx" role="3uHU7w" />
                  <node concept="37vLTw" id="51h1DIGjVqy" role="3uHU7B">
                    <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                  </node>
                </node>
                <node concept="2OqwBi" id="51h1DIGjVqz" role="3uHU7w">
                  <node concept="37vLTw" id="51h1DIGjVqF" role="2Oq$k0">
                    <ref role="3cqZAo" node="51h1DIGjVqB" resolve="pattern" />
                  </node>
                  <node concept="liA8E" id="51h1DIGjVq_" role="2OqNvi">
                    <ref role="37wK5l" to="7jhi:~IMatchingPattern.match(org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                    <node concept="37vLTw" id="51h1DIGjVqA" role="37wK5m">
                      <ref role="3cqZAo" node="51h1DIGjVpW" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5BwsbZJE0Zx" role="jymVt" />
      <node concept="3clFb_" id="2Hyoxv0bBC" role="jymVt">
        <property role="TrG5h" value="checkRecursively" />
        <property role="od$2w" value="true" />
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
                  <ref role="37wK5l" to="tj24:1C_jAsqza5P" resolve="get" />
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
        <property role="od$2w" value="true" />
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
        <property role="od$2w" value="true" />
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
        <property role="od$2w" value="true" />
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
        <property role="od$2w" value="true" />
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
        <property role="od$2w" value="true" />
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
        <property role="od$2w" value="true" />
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
    <node concept="312cEg" id="7e$2hwaZkiV" role="jymVt">
      <property role="TrG5h" value="disposed" />
      <node concept="3Tm6S6" id="7e$2hwaZkiW" role="1B3o_S" />
      <node concept="10P_77" id="7e$2hwaZAMn" role="1tU5fm" />
      <node concept="3clFbT" id="7e$2hwaZCDl" role="33vP2m" />
    </node>
    <node concept="3Tm1VV" id="7Tj_ODDR37Y" role="1B3o_S" />
    <node concept="3uibUv" id="3LFq2p98ihg" role="EKbjA">
      <ref role="3uigEE" to="ev0w:~TypecheckingProvider" resolve="TypecheckingProvider" />
      <node concept="3uibUv" id="6u4W$ZKoB5z" role="11_B2D">
        <ref role="3uigEE" node="5BwsbZJE17w" resolve="CoderulesTypecheckingProvider.Queries" />
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
          <node concept="3cpWs8" id="1JGDidhu9fG" role="3cqZAp">
            <node concept="3cpWsn" id="1JGDidhu9fJ" role="3cpWs9">
              <property role="TrG5h" value="modified" />
              <node concept="10P_77" id="1JGDidhu9fE" role="1tU5fm" />
              <node concept="3clFbT" id="1JGDidhuafY" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbH" id="1JGDidhuwJC" role="3cqZAp" />
          <node concept="3clFbF" id="1JGDidhubez" role="3cqZAp">
            <node concept="3vZ8r8" id="1JGDidhubIi" role="3clFbG">
              <node concept="37vLTw" id="1JGDidhubex" role="37vLTJ">
                <ref role="3cqZAo" node="1JGDidhu9fJ" resolve="mod" />
              </node>
              <node concept="3y3z36" id="1JGDidhucfu" role="37vLTx">
                <node concept="2OqwBi" id="1JGDidhucfv" role="3uHU7w">
                  <node concept="3yMSdA" id="1JGDidhucfw" role="2Oq$k0" />
                  <node concept="liA8E" id="1JGDidhucfx" role="2OqNvi">
                    <ref role="37wK5l" node="14pL6xi8DQp" resolve="isTypecheckingEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1JGDidhucfy" role="3uHU7B">
                  <node concept="2OqwBi" id="1JGDidhucfz" role="2Oq$k0">
                    <node concept="2xqhHp" id="1JGDidhucf$" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1JGDidhucf_" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1JGDidhucfA" role="2OqNvi">
                    <ref role="2WH_rO" node="14pL6xi901F" resolve="typecheckingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1JGDidhudRR" role="3cqZAp">
            <node concept="3vZ8r8" id="1JGDidhueKt" role="3clFbG">
              <node concept="37vLTw" id="1JGDidhudRP" role="37vLTJ">
                <ref role="3cqZAo" node="1JGDidhu9fJ" resolve="mod" />
              </node>
              <node concept="3y3z36" id="1JGDidhuf9c" role="37vLTx">
                <node concept="2OqwBi" id="1JGDidhuf9d" role="3uHU7w">
                  <node concept="3yMSdA" id="1JGDidhuf9e" role="2Oq$k0" />
                  <node concept="liA8E" id="1JGDidhuf9f" role="2OqNvi">
                    <ref role="37wK5l" node="5Qx6_65jSEe" resolve="isWatchingEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1JGDidhuf9g" role="3uHU7B">
                  <node concept="2OqwBi" id="1JGDidhuf9h" role="2Oq$k0">
                    <node concept="2xqhHp" id="1JGDidhuf9i" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1JGDidhuf9j" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1JGDidhuf9k" role="2OqNvi">
                    <ref role="2WH_rO" node="5Qx6_65jLtF" resolve="watchingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1JGDidhuq2p" role="3cqZAp">
            <node concept="3vZ8r8" id="1JGDidhuqB8" role="3clFbG">
              <node concept="37vLTw" id="1JGDidhuq2n" role="37vLTJ">
                <ref role="3cqZAo" node="1JGDidhu9fJ" resolve="mod" />
              </node>
              <node concept="3y3z36" id="1JGDidhuqBg" role="37vLTx">
                <node concept="2OqwBi" id="1JGDidhuqBh" role="3uHU7w">
                  <node concept="3yMSdA" id="1JGDidhuqBi" role="2Oq$k0" />
                  <node concept="liA8E" id="1JGDidhuqBj" role="2OqNvi">
                    <ref role="37wK5l" node="1z4$59hGu4P" resolve="isReportingEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1JGDidhuqBk" role="3uHU7B">
                  <node concept="2OqwBi" id="1JGDidhuqBl" role="2Oq$k0">
                    <node concept="2xqhHp" id="1JGDidhuqBm" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1JGDidhuqBn" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1JGDidhuqBo" role="2OqNvi">
                    <ref role="2WH_rO" node="1z4$59hNjW4" resolve="reportingEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1JGDidhus_q" role="3cqZAp">
            <node concept="3vZ8r8" id="1JGDidhutqx" role="3clFbG">
              <node concept="37vLTw" id="1JGDidhus_o" role="37vLTJ">
                <ref role="3cqZAo" node="1JGDidhu9fJ" resolve="mod" />
              </node>
              <node concept="3y3z36" id="1JGDidhutY4" role="37vLTx">
                <node concept="2OqwBi" id="1JGDidhutY5" role="3uHU7w">
                  <node concept="3yMSdA" id="1JGDidhutY6" role="2Oq$k0" />
                  <node concept="liA8E" id="1JGDidhutY7" role="2OqNvi">
                    <ref role="37wK5l" node="7iCybvTn3it" resolve="isTraceEnabled" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1JGDidhutY8" role="3uHU7B">
                  <node concept="2OqwBi" id="1JGDidhutY9" role="2Oq$k0">
                    <node concept="2xqhHp" id="1JGDidhutYa" role="2Oq$k0" />
                    <node concept="LR4Ub" id="1JGDidhutYb" role="2OqNvi">
                      <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
                    </node>
                  </node>
                  <node concept="34pFcN" id="1JGDidhutYc" role="2OqNvi">
                    <ref role="2WH_rO" node="7iCybvTnn8F" resolve="traceEnabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="14IknWHqK7i" role="3cqZAp" />
          <node concept="3clFbF" id="1JGDidhuvGP" role="3cqZAp">
            <node concept="37vLTw" id="1JGDidhuvGN" role="3clFbG">
              <ref role="3cqZAo" node="1JGDidhu9fJ" resolve="mod" />
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
          <node concept="3cpWs8" id="4ot3PHR5UUV" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHR5UUW" role="3cpWs9">
              <property role="TrG5h" value="modified" />
              <node concept="10P_77" id="4ot3PHR5UU$" role="1tU5fm" />
              <node concept="1DoJHT" id="4ot3PHR5UUX" role="33vP2m">
                <property role="1Dpdpm" value="isModified" />
                <node concept="3VmV3z" id="4ot3PHR6aGa" role="1EOqxR">
                  <property role="3VnrPo" value="project" />
                  <node concept="3uibUv" id="4ot3PHR6et1" role="3Vn4Tt">
                    <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
                  </node>
                </node>
                <node concept="3VmV3z" id="4ot3PHR6aKM" role="1EOqxR">
                  <property role="3VnrPo" value="component" />
                  <node concept="3uibUv" id="4ot3PHR6b8k" role="3Vn4Tt">
                    <ref role="3uigEE" node="uB9WAZaAyD" resolve="TypecheckingSettingsPage" />
                  </node>
                </node>
                <node concept="10P_77" id="4ot3PHR5UUY" role="1Ez5kq" />
                <node concept="eJtiG" id="4ot3PHR6tOJ" role="1EMhIo" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ot3PHR5XCK" role="3cqZAp" />
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
          <node concept="3clFbH" id="4ot3PHR5XpG" role="3cqZAp" />
          <node concept="3clFbJ" id="4ot3PHR5VwE" role="3cqZAp">
            <node concept="3clFbS" id="4ot3PHR5VwR" role="3clFbx">
              <node concept="3clFbF" id="4ot3PHR5VT6" role="3cqZAp">
                <node concept="2OqwBi" id="4ot3PHR5Wlo" role="3clFbG">
                  <node concept="2YIFZM" id="4ot3PHR5VXu" role="2Oq$k0">
                    <ref role="37wK5l" to="j936:~UISettings.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="j936:~UISettings" resolve="UISettings" />
                  </node>
                  <node concept="liA8E" id="4ot3PHR5WMh" role="2OqNvi">
                    <ref role="37wK5l" to="j936:~UISettings.fireUISettingsChanged()" resolve="fireUISettingsChanged" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4ot3PHR5UV0" role="3clFbw">
              <ref role="3cqZAo" node="4ot3PHR5UUW" resolve="modified" />
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
                    <node concept="3clFbH" id="6v6oK22r1en" role="3cqZAp" />
                    <node concept="3cpWs8" id="6v6oK22vXMl" role="3cqZAp">
                      <node concept="3cpWsn" id="6v6oK22vXMm" role="3cpWs9">
                        <property role="TrG5h" value="warnPanel" />
                        <node concept="3uibUv" id="6v6oK22vXMn" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                        </node>
                        <node concept="2ShNRf" id="6v6oK22vXMo" role="33vP2m">
                          <node concept="1pGfFk" id="6v6oK22vXMp" role="2ShVmc">
                            <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6v6oK22wa4W" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wa4X" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wa4Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wa4Z" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                          <node concept="2ShNRf" id="6v6oK22wa50" role="37wK5m">
                            <node concept="1pGfFk" id="6v6oK22wa51" role="2ShVmc">
                              <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                              <node concept="37vLTw" id="6v6oK22wa52" role="37wK5m">
                                <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                              </node>
                              <node concept="10M0yZ" id="6v6oK22wa53" role="37wK5m">
                                <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                                <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6v6oK22wa55" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wa56" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wa57" role="2Oq$k0">
                          <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wa58" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2YIFZM" id="6v6oK22wa59" role="37wK5m">
                            <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                            <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                            <node concept="3cmrfG" id="6v6oK22wa5a" role="37wK5m">
                              <property role="3cmrfH" value="5" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6v6oK22wa5b" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wa5c" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wa5d" role="2Oq$k0">
                          <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wa5e" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                          <node concept="2YIFZM" id="6v6oK22wa5f" role="37wK5m">
                            <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                            <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="Borders" />
                            <node concept="3cmrfG" id="6v6oK22wa5g" role="37wK5m">
                              <property role="3cmrfH" value="25" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6v6oK22vKY2" role="3cqZAp" />
                    <node concept="9aQIb" id="6v6oK22wwoi" role="3cqZAp">
                      <node concept="3clFbS" id="6v6oK22wwok" role="9aQI4">
                        <node concept="3cpWs8" id="6v6oK22rd3p" role="3cqZAp">
                          <node concept="3cpWsn" id="6v6oK22rd3q" role="3cpWs9">
                            <property role="TrG5h" value="warnLabel" />
                            <node concept="3uibUv" id="6v6oK22rd3r" role="1tU5fm">
                              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
                            </node>
                            <node concept="2ShNRf" id="6v6oK22rj5r" role="33vP2m">
                              <node concept="1pGfFk" id="6v6oK22rixL" role="2ShVmc">
                                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                                <node concept="Xl_RD" id="6v6oK22rsaP" role="37wK5m">
                                  <property role="Xl_RC" value="Using this option may result in excessive memory consumption" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6v6oK22tQ_o" role="3cqZAp">
                          <node concept="3cpWsn" id="6v6oK22tQ_p" role="3cpWs9">
                            <property role="TrG5h" value="font" />
                            <node concept="3uibUv" id="6v6oK22tIZR" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
                            </node>
                            <node concept="2OqwBi" id="6v6oK22tQ_q" role="33vP2m">
                              <node concept="37vLTw" id="6v6oK22tQ_r" role="2Oq$k0">
                                <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                              </node>
                              <node concept="liA8E" id="6v6oK22tQ_s" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Component.getFont()" resolve="getFont" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6v6oK22skR3" role="3cqZAp">
                          <node concept="2OqwBi" id="6v6oK22smXu" role="3clFbG">
                            <node concept="37vLTw" id="6v6oK22skR1" role="2Oq$k0">
                              <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                            </node>
                            <node concept="liA8E" id="6v6oK22sutV" role="2OqNvi">
                              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
                              <node concept="2OqwBi" id="6v6oK22tcSM" role="37wK5m">
                                <node concept="37vLTw" id="6v6oK22tQ_t" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6v6oK22tQ_p" resolve="font" />
                                </node>
                                <node concept="liA8E" id="6v6oK22t_Eg" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                                  <node concept="17qRlL" id="6v6oK22u9UJ" role="37wK5m">
                                    <node concept="2$xPTn" id="6v6oK22uuIW" role="3uHU7w">
                                      <property role="2$xPTl" value="0.9f" />
                                    </node>
                                    <node concept="2OqwBi" id="6v6oK22tZl1" role="3uHU7B">
                                      <node concept="37vLTw" id="6v6oK22tXzr" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6v6oK22tQ_p" resolve="font" />
                                      </node>
                                      <node concept="liA8E" id="6v6oK22u0q_" role="2OqNvi">
                                        <ref role="37wK5l" to="z60i:~Font.getSize2D()" resolve="getSize2D" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6v6oK22sEUm" role="3cqZAp">
                          <node concept="2OqwBi" id="6v6oK22sH8v" role="3clFbG">
                            <node concept="37vLTw" id="6v6oK22sEUk" role="2Oq$k0">
                              <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                            </node>
                            <node concept="liA8E" id="6v6oK22sN0z" role="2OqNvi">
                              <ref role="37wK5l" to="dxuu:~JComponent.setEnabled(boolean)" resolve="setEnabled" />
                              <node concept="3clFbT" id="6v6oK22sQGW" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6v6oK22syN9" role="3cqZAp" />
                        <node concept="3clFbF" id="6v6oK22vaMH" role="3cqZAp">
                          <node concept="2OqwBi" id="6v6oK22veSE" role="3clFbG">
                            <node concept="37vLTw" id="6v6oK22vaMF" role="2Oq$k0">
                              <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                            </node>
                            <node concept="liA8E" id="6v6oK22vh$l" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                              <node concept="37vLTw" id="6v6oK22vlFr" role="37wK5m">
                                <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6v6oK22xFwk" role="3cqZAp" />
                    <node concept="3clFbF" id="6v6oK22wInv" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wInw" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wInx" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wIny" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="37vLTw" id="6v6oK22wInz" role="37wK5m">
                            <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6v6oK22uYND" role="3cqZAp" />
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
    <node concept="2tJIrI" id="1JkMMuheNqV" role="jymVt" />
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
    <node concept="Wx3nA" id="7e$2hwaBArb" role="jymVt">
      <property role="TrG5h" value="USER_CONFIG" />
      <node concept="3Tm6S6" id="7e$2hwaBArd" role="1B3o_S" />
      <node concept="3uibUv" id="7e$2hwaBE16" role="1tU5fm">
        <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
      </node>
    </node>
    <node concept="2tJIrI" id="7e$2hwaByyP" role="jymVt" />
    <node concept="3clFbW" id="7e$2hwaCZvC" role="jymVt">
      <node concept="3cqZAl" id="7e$2hwaCZvE" role="3clF45" />
      <node concept="3Tm6S6" id="7e$2hwaD1x4" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaCZvG" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7e$2hwaCWQt" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaAfGb" role="jymVt">
      <property role="TrG5h" value="getUserConfig" />
      <node concept="3uibUv" id="7e$2hwaAjiP" role="3clF45">
        <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="7e$2hwaAfGe" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaAfGf" role="3clF47">
        <node concept="3clFbJ" id="7e$2hwaBFbl" role="3cqZAp">
          <node concept="3clFbC" id="7e$2hwaBGcB" role="3clFbw">
            <node concept="10Nm6u" id="7e$2hwaBGGM" role="3uHU7w" />
            <node concept="37vLTw" id="7e$2hwaBFVK" role="3uHU7B">
              <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
            </node>
          </node>
          <node concept="3clFbS" id="7e$2hwaBFbn" role="3clFbx">
            <node concept="3clFbF" id="7e$2hwaBHwf" role="3cqZAp">
              <node concept="37vLTI" id="7e$2hwaBHLo" role="3clFbG">
                <node concept="2YIFZM" id="7e$2hwaBIV6" role="37vLTx">
                  <ref role="37wK5l" to="31yc:6hpwxwiHYr2" resolve="create" />
                  <ref role="1Pybhc" to="31yc:7iCybvToiT5" resolve="Config" />
                </node>
                <node concept="37vLTw" id="7e$2hwaBHwe" role="37vLTJ">
                  <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7e$2hwaBLcW" role="3cqZAp">
              <node concept="1rXfSq" id="7e$2hwaBLcU" role="3clFbG">
                <ref role="37wK5l" node="7DmawKu60xG" resolve="registerDefaultProviders" />
                <node concept="37vLTw" id="7e$2hwaBLM_" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaBMH6" role="3cqZAp">
          <node concept="37vLTw" id="7e$2hwaBMH4" role="3clFbG">
            <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7e$2hwaAneS" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaAjW0" role="jymVt">
      <property role="TrG5h" value="getProjectConfig" />
      <node concept="37vLTG" id="7e$2hwaApTs" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7e$2hwaAqK6" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="7e$2hwaAjW1" role="3clF45">
        <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="7e$2hwaAjW2" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaAjW3" role="3clF47">
        <node concept="3cpWs8" id="7e$2hwaCFhS" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaCFhT" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7e$2hwaCFaZ" role="1tU5fm">
              <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="2OqwBi" id="7e$2hwaCFhU" role="33vP2m">
              <node concept="1rXfSq" id="7e$2hwaSQow" role="2Oq$k0">
                <ref role="37wK5l" node="7e$2hwaAfGb" resolve="getUserConfig" />
              </node>
              <node concept="liA8E" id="7e$2hwaCFhW" role="2OqNvi">
                <ref role="37wK5l" to="31yc:7e$2hwauJ33" resolve="copy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaCHbL" role="3cqZAp">
          <node concept="1rXfSq" id="7e$2hwaCHbJ" role="3clFbG">
            <ref role="37wK5l" node="7e$2hwaBRzy" resolve="registerProjectProviders" />
            <node concept="37vLTw" id="7e$2hwaCHTa" role="37wK5m">
              <ref role="3cqZAo" node="7e$2hwaCFhT" resolve="config" />
            </node>
            <node concept="37vLTw" id="7e$2hwaCJN9" role="37wK5m">
              <ref role="3cqZAo" node="7e$2hwaApTs" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaCEGr" role="3cqZAp">
          <node concept="37vLTw" id="7e$2hwaCFhX" role="3clFbG">
            <ref role="3cqZAo" node="7e$2hwaCFhT" resolve="copy" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7e$2hwaOXtf" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaPkPY" role="jymVt">
      <property role="TrG5h" value="getParamConfig" />
      <node concept="37vLTG" id="7e$2hwaPyht" role="3clF46">
        <property role="TrG5h" value="paramMap" />
        <node concept="3uibUv" id="7e$2hwaPyKP" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="7e$2hwaPzYo" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
          <node concept="3uibUv" id="7e$2hwaP_7C" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7e$2hwaPwWW" role="3clF45">
        <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="7e$2hwaPkQ1" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaPkQ2" role="3clF47">
        <node concept="3cpWs8" id="7e$2hwaPBYX" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaPBYY" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7e$2hwaPBYZ" role="1tU5fm">
              <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="2OqwBi" id="7e$2hwaPBZ0" role="33vP2m">
              <node concept="1rXfSq" id="7e$2hwaSRAC" role="2Oq$k0">
                <ref role="37wK5l" node="7e$2hwaAfGb" resolve="getUserConfig" />
              </node>
              <node concept="liA8E" id="7e$2hwaPBZ1" role="2OqNvi">
                <ref role="37wK5l" to="31yc:7e$2hwauJ33" resolve="copy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaPBZ6" role="3cqZAp">
          <node concept="1rXfSq" id="7e$2hwaPBZ7" role="3clFbG">
            <ref role="37wK5l" node="7e$2hwaHyRo" resolve="registerParametersProvider" />
            <node concept="37vLTw" id="7e$2hwaPBZ8" role="37wK5m">
              <ref role="3cqZAo" node="7e$2hwaPBYY" resolve="config" />
            </node>
            <node concept="37vLTw" id="7e$2hwaPBZ9" role="37wK5m">
              <ref role="3cqZAo" node="7e$2hwaPyht" resolve="paramMap" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaPBZa" role="3cqZAp">
          <node concept="37vLTw" id="7e$2hwaPBZb" role="3clFbG">
            <ref role="3cqZAo" node="7e$2hwaPBYY" resolve="config" />
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
      <node concept="3Tm6S6" id="7e$2hwaBErR" role="1B3o_S" />
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
    <node concept="2tJIrI" id="7prluhlJn3m" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaBRzy" role="jymVt">
      <property role="TrG5h" value="registerProjectProvider" />
      <node concept="3clFbS" id="7iCybvTyEuB" role="3clF47">
        <node concept="3clFbH" id="7e$2hwaHL2_" role="3cqZAp" />
        <node concept="3clFbJ" id="7e$2hwaCmWI" role="3cqZAp">
          <node concept="3clFbS" id="7e$2hwaCmWK" role="3clFbx">
            <node concept="3clFbF" id="7iCybvTyAh$" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTyAvh" role="3clFbG">
                <node concept="37vLTw" id="6hpwxwiqBEz" role="2Oq$k0">
                  <ref role="3cqZAo" node="6hpwxwiq_U$" resolve="config" />
                </node>
                <node concept="liA8E" id="7iCybvTyAAH" role="2OqNvi">
                  <ref role="37wK5l" to="31yc:7iCybvTszk9" resolve="registerProvider" />
                  <node concept="Rm8GO" id="7iCybvTyARZ" role="37wK5m">
                    <ref role="1Px2BO" to="31yc:7iCybvToD3Z" resolve="Level" />
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
                          <node concept="2OqwBi" id="7e$2hwaC2fw" role="33vP2m">
                            <node concept="2OqwBi" id="7e$2hwaC44g" role="2Oq$k0">
                              <node concept="1eOMI4" id="7e$2hwaCy4v" role="2Oq$k0">
                                <node concept="10QFUN" id="7e$2hwaCy4u" role="1eOMHV">
                                  <node concept="37vLTw" id="7e$2hwaCy4t" role="10QFUP">
                                    <ref role="3cqZAo" node="7e$2hwaBMNF" resolve="mpsProject" />
                                  </node>
                                  <node concept="3uibUv" id="7e$2hwaC$gT" role="10QFUM">
                                    <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="7e$2hwaCAcx" role="2OqNvi">
                                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                              </node>
                            </node>
                            <node concept="LR4Ub" id="7e$2hwaCC5R" role="2OqNvi">
                              <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
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
                          <node concept="3clFbH" id="1JkMMuhf$a7" role="3cqZAp" />
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
          </node>
          <node concept="2ZW3vV" id="7e$2hwaCs1y" role="3clFbw">
            <node concept="3uibUv" id="7e$2hwaCtKw" role="2ZW6by">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="37vLTw" id="7e$2hwaCpTn" role="2ZW6bz">
              <ref role="3cqZAo" node="7e$2hwaBMNF" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6hpwxwiq_U$" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6hpwxwiqBaG" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="37vLTG" id="7e$2hwaBMNF" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7e$2hwaBPa$" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="7iCybvTyEu_" role="3clF45" />
      <node concept="3Tm6S6" id="7iCybvTyEx7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7e$2hwaJfwF" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaJpO6" role="jymVt">
      <property role="TrG5h" value="populateParametersMap" />
      <node concept="37vLTG" id="7e$2hwaJ_Ta" role="3clF46">
        <property role="TrG5h" value="paramMap" />
        <node concept="3uibUv" id="7e$2hwaJAoe" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="7e$2hwaJBoR" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
          <node concept="3uibUv" id="7e$2hwaJCC2" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7e$2hwaJF69" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7e$2hwaJFZx" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="7e$2hwaJpO8" role="3clF45" />
      <node concept="3Tm1VV" id="7e$2hwaJpO9" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaJpOa" role="3clF47">
        <node concept="3cpWs8" id="7e$2hwaJGyT" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaJGyU" role="3cpWs9">
            <property role="TrG5h" value="pref" />
            <node concept="34_ZPX" id="7e$2hwaJGyV" role="1tU5fm">
              <ref role="34A7Nh" node="uB9WAZagv8" resolve="Typechecking" />
            </node>
            <node concept="2OqwBi" id="7e$2hwaJGyW" role="33vP2m">
              <node concept="2OqwBi" id="7e$2hwaJGyX" role="2Oq$k0">
                <node concept="1eOMI4" id="7e$2hwaJGyY" role="2Oq$k0">
                  <node concept="10QFUN" id="7e$2hwaJGyZ" role="1eOMHV">
                    <node concept="37vLTw" id="7e$2hwaJGz0" role="10QFUP">
                      <ref role="3cqZAo" node="7e$2hwaJF69" resolve="mpsProject" />
                    </node>
                    <node concept="3uibUv" id="7e$2hwaJGz1" role="10QFUM">
                      <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7e$2hwaJGz2" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="LR4Ub" id="7e$2hwaJGz3" role="2OqNvi">
                <ref role="LR4Ua" node="uB9WAZagv8" resolve="Typechecking" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7e$2hwaJGz4" role="3cqZAp">
          <node concept="3clFbS" id="7e$2hwaJGz5" role="3clFbx">
            <node concept="3clFbF" id="7e$2hwaJMIb" role="3cqZAp">
              <node concept="2OqwBi" id="7e$2hwaJOdN" role="3clFbG">
                <node concept="37vLTw" id="7e$2hwaJMI9" role="2Oq$k0">
                  <ref role="3cqZAo" node="7e$2hwaJ_Ta" resolve="paramMap" />
                </node>
                <node concept="liA8E" id="7e$2hwaJQwK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="7e$2hwaJRwC" role="37wK5m">
                    <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                  </node>
                  <node concept="2OqwBi" id="7e$2hwaJT_2" role="37wK5m">
                    <node concept="37vLTw" id="7e$2hwaJT_3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7e$2hwaJGyU" resolve="pref" />
                    </node>
                    <node concept="34pFcN" id="7e$2hwaJT_4" role="2OqNvi">
                      <ref role="2WH_rO" node="14pL6xi901F" resolve="typecheckingEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7e$2hwaJWHQ" role="3cqZAp">
              <node concept="2OqwBi" id="7e$2hwaJWHR" role="3clFbG">
                <node concept="37vLTw" id="7e$2hwaJWHS" role="2Oq$k0">
                  <ref role="3cqZAo" node="7e$2hwaJ_Ta" resolve="paramMap" />
                </node>
                <node concept="liA8E" id="7e$2hwaJWHT" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="7e$2hwaJWHU" role="37wK5m">
                    <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                  </node>
                  <node concept="2OqwBi" id="7e$2hwaJWHV" role="37wK5m">
                    <node concept="37vLTw" id="7e$2hwaJWHW" role="2Oq$k0">
                      <ref role="3cqZAo" node="7e$2hwaJGyU" resolve="pref" />
                    </node>
                    <node concept="34pFcN" id="7e$2hwaJWHX" role="2OqNvi">
                      <ref role="2WH_rO" node="5Qx6_65jLtF" resolve="watchingEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7e$2hwaK1AZ" role="3cqZAp">
              <node concept="2OqwBi" id="7e$2hwaK1B0" role="3clFbG">
                <node concept="37vLTw" id="7e$2hwaK1B1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7e$2hwaJ_Ta" resolve="paramMap" />
                </node>
                <node concept="liA8E" id="7e$2hwaK1B2" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="7e$2hwaK1B3" role="37wK5m">
                    <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                  </node>
                  <node concept="2OqwBi" id="7e$2hwaK1B4" role="37wK5m">
                    <node concept="37vLTw" id="7e$2hwaK1B5" role="2Oq$k0">
                      <ref role="3cqZAo" node="7e$2hwaJGyU" resolve="pref" />
                    </node>
                    <node concept="34pFcN" id="7e$2hwaK1B6" role="2OqNvi">
                      <ref role="2WH_rO" node="1z4$59hNjW4" resolve="reportingEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7e$2hwaK7hH" role="3cqZAp">
              <node concept="2OqwBi" id="7e$2hwaK7hI" role="3clFbG">
                <node concept="37vLTw" id="7e$2hwaK7hJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7e$2hwaJ_Ta" resolve="paramMap" />
                </node>
                <node concept="liA8E" id="7e$2hwaK7hK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="7e$2hwaK7hL" role="37wK5m">
                    <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                  </node>
                  <node concept="2OqwBi" id="7e$2hwaK7hM" role="37wK5m">
                    <node concept="37vLTw" id="7e$2hwaK7hN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7e$2hwaJGyU" resolve="pref" />
                    </node>
                    <node concept="34pFcN" id="7e$2hwaK7hO" role="2OqNvi">
                      <ref role="2WH_rO" node="7iCybvTnn8F" resolve="traceEnabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7e$2hwaJGzI" role="3clFbw">
            <node concept="10Nm6u" id="7e$2hwaJGzJ" role="3uHU7w" />
            <node concept="37vLTw" id="7e$2hwaJGzK" role="3uHU7B">
              <ref role="3cqZAo" node="7e$2hwaJGyU" resolve="pref" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e$2hwaSS5g" role="3cqZAp" />
        <node concept="3SKdUt" id="7e$2hwaSU5z" role="3cqZAp">
          <node concept="1PaTwC" id="7e$2hwaSU5$" role="1aUNEU">
            <node concept="3oM_SD" id="7e$2hwaSU6q" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaSU6s" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="7e$2hwaSVPg" role="1PaTwD">
              <property role="3oM_SC" value="workaround" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaSYut" role="3cqZAp">
          <node concept="2OqwBi" id="7e$2hwaT02K" role="3clFbG">
            <node concept="37vLTw" id="7e$2hwaSYur" role="2Oq$k0">
              <ref role="3cqZAo" node="7e$2hwaJ_Ta" resolve="paramMap" />
            </node>
            <node concept="liA8E" id="7e$2hwaT3nS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="Xl_RD" id="7e$2hwaT4SF" role="37wK5m">
                <property role="Xl_RC" value="__REPOSITORY__" />
              </node>
              <node concept="2OqwBi" id="7e$2hwaTcyQ" role="37wK5m">
                <node concept="1eOMI4" id="7e$2hwaTcyR" role="2Oq$k0">
                  <node concept="10QFUN" id="7e$2hwaTcyS" role="1eOMHV">
                    <node concept="37vLTw" id="7e$2hwaTcyT" role="10QFUP">
                      <ref role="3cqZAo" node="7e$2hwaJF69" resolve="mpsProject" />
                    </node>
                    <node concept="3uibUv" id="7e$2hwaTcyU" role="10QFUM">
                      <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7e$2hwaTi3e" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7e$2hwaHoFM" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaHyRo" role="jymVt">
      <property role="TrG5h" value="registerParamMapProvider" />
      <node concept="37vLTG" id="7e$2hwaHMTz" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="7e$2hwaHNLb" role="1tU5fm">
          <ref role="3uigEE" to="31yc:7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="37vLTG" id="7e$2hwaHGqq" role="3clF46">
        <property role="TrG5h" value="paramMap" />
        <node concept="3rvAFt" id="7e$2hwaPHc5" role="1tU5fm">
          <node concept="17QB3L" id="7e$2hwaPKFT" role="3rvQeY" />
          <node concept="3uibUv" id="7e$2hwaPLN2" role="3rvSg0">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7e$2hwaHyRq" role="3clF45" />
      <node concept="3Tm1VV" id="7e$2hwaHyRr" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaHyRs" role="3clF47">
        <node concept="3clFbF" id="7e$2hwaHOwl" role="3cqZAp">
          <node concept="2OqwBi" id="7e$2hwaHOwm" role="3clFbG">
            <node concept="37vLTw" id="7e$2hwaHOwn" role="2Oq$k0">
              <ref role="3cqZAo" node="7e$2hwaHMTz" resolve="config" />
            </node>
            <node concept="liA8E" id="7e$2hwaHOwo" role="2OqNvi">
              <ref role="37wK5l" to="31yc:7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="7e$2hwaHPn_" role="37wK5m">
                <ref role="Rm8GQ" to="31yc:7iCybvToIZc" resolve="UI" />
                <ref role="1Px2BO" to="31yc:7iCybvToD3Z" resolve="Level" />
              </node>
              <node concept="37vLTw" id="7e$2hwaHOxf" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
              </node>
              <node concept="1bVj0M" id="7e$2hwaHOwq" role="37wK5m">
                <node concept="37vLTG" id="7e$2hwaHOwr" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="7e$2hwaHOws" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="7e$2hwaHOwt" role="1bW5cS">
                  <node concept="3clFbH" id="7e$2hwaHOwu" role="3cqZAp" />
                  <node concept="3clFbJ" id="7e$2hwaHOwv" role="3cqZAp">
                    <node concept="3clFbS" id="7e$2hwaHOww" role="3clFbx">
                      <node concept="3clFbH" id="7e$2hwaQiV_" role="3cqZAp" />
                      <node concept="3cpWs6" id="7e$2hwaQfAQ" role="3cqZAp">
                        <node concept="3K4zz7" id="7e$2hwaQgOs" role="3cqZAk">
                          <node concept="3clFbT" id="7e$2hwaQgOt" role="3K4GZi" />
                          <node concept="3y3z36" id="7e$2hwaQgOu" role="3K4Cdx">
                            <node concept="10Nm6u" id="7e$2hwaQgOv" role="3uHU7w" />
                            <node concept="3EllGN" id="7e$2hwaQgOw" role="3uHU7B">
                              <node concept="37vLTw" id="7e$2hwaQgOK" role="3ElVtu">
                                <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                              </node>
                              <node concept="37vLTw" id="7e$2hwaQgOx" role="3ElQJh">
                                <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                              </node>
                            </node>
                          </node>
                          <node concept="3EllGN" id="7e$2hwaQgOy" role="3K4E3e">
                            <node concept="37vLTw" id="7e$2hwaQgOY" role="3ElVtu">
                              <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                            </node>
                            <node concept="37vLTw" id="7e$2hwaQgOz" role="3ElQJh">
                              <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7e$2hwaHOwA" role="3clFbw">
                      <node concept="37vLTw" id="7e$2hwaHOxn" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                      </node>
                      <node concept="liA8E" id="7e$2hwaHOwB" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7e$2hwaHOwC" role="37wK5m">
                          <ref role="3cqZAo" node="7e$2hwaHOwr" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7e$2hwaHOwD" role="3cqZAp" />
                  <node concept="3clFbJ" id="7e$2hwaHOwE" role="3cqZAp">
                    <node concept="3clFbS" id="7e$2hwaHOwF" role="3clFbx">
                      <node concept="3cpWs6" id="7e$2hwaQk6u" role="3cqZAp">
                        <node concept="3K4zz7" id="7e$2hwaQk6v" role="3cqZAk">
                          <node concept="3clFbT" id="7e$2hwaQk6w" role="3K4GZi" />
                          <node concept="3y3z36" id="7e$2hwaQk6x" role="3K4Cdx">
                            <node concept="10Nm6u" id="7e$2hwaQk6y" role="3uHU7w" />
                            <node concept="3EllGN" id="7e$2hwaQk6z" role="3uHU7B">
                              <node concept="37vLTw" id="7e$2hwaQk6$" role="3ElVtu">
                                <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                              </node>
                              <node concept="37vLTw" id="7e$2hwaQk6_" role="3ElQJh">
                                <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                              </node>
                            </node>
                          </node>
                          <node concept="3EllGN" id="7e$2hwaQk6A" role="3K4E3e">
                            <node concept="37vLTw" id="7e$2hwaQk6B" role="3ElVtu">
                              <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                            </node>
                            <node concept="37vLTw" id="7e$2hwaQk6C" role="3ElQJh">
                              <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7e$2hwaHOwK" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7e$2hwaHOwL" role="3clFbw">
                      <node concept="37vLTw" id="7e$2hwaHOxv" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                      </node>
                      <node concept="liA8E" id="7e$2hwaHOwM" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7e$2hwaHOwN" role="37wK5m">
                          <ref role="3cqZAo" node="7e$2hwaHOwr" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7e$2hwaHOwO" role="3cqZAp" />
                  <node concept="3clFbJ" id="7e$2hwaHOwP" role="3cqZAp">
                    <node concept="3clFbS" id="7e$2hwaHOwQ" role="3clFbx">
                      <node concept="3cpWs6" id="7e$2hwaQrmf" role="3cqZAp">
                        <node concept="3K4zz7" id="7e$2hwaQrmg" role="3cqZAk">
                          <node concept="3clFbT" id="7e$2hwaQrmh" role="3K4GZi" />
                          <node concept="3y3z36" id="7e$2hwaQrmi" role="3K4Cdx">
                            <node concept="10Nm6u" id="7e$2hwaQrmj" role="3uHU7w" />
                            <node concept="3EllGN" id="7e$2hwaQrmk" role="3uHU7B">
                              <node concept="37vLTw" id="7e$2hwaQrml" role="3ElVtu">
                                <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                              </node>
                              <node concept="37vLTw" id="7e$2hwaQrmm" role="3ElQJh">
                                <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                              </node>
                            </node>
                          </node>
                          <node concept="3EllGN" id="7e$2hwaQrmn" role="3K4E3e">
                            <node concept="37vLTw" id="7e$2hwaQrmo" role="3ElVtu">
                              <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                            </node>
                            <node concept="37vLTw" id="7e$2hwaQrmp" role="3ElQJh">
                              <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7e$2hwaHOwV" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7e$2hwaHOwW" role="3clFbw">
                      <node concept="37vLTw" id="7e$2hwaHOxB" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                      </node>
                      <node concept="liA8E" id="7e$2hwaHOwX" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7e$2hwaHOwY" role="37wK5m">
                          <ref role="3cqZAo" node="7e$2hwaHOwr" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7e$2hwaHOwZ" role="3cqZAp" />
                  <node concept="3clFbJ" id="7e$2hwaHOx0" role="3cqZAp">
                    <node concept="3clFbS" id="7e$2hwaHOx1" role="3clFbx">
                      <node concept="3cpWs6" id="7e$2hwaQyem" role="3cqZAp">
                        <node concept="3K4zz7" id="7e$2hwaQyen" role="3cqZAk">
                          <node concept="3clFbT" id="7e$2hwaQyeo" role="3K4GZi" />
                          <node concept="3y3z36" id="7e$2hwaQyep" role="3K4Cdx">
                            <node concept="10Nm6u" id="7e$2hwaQyeq" role="3uHU7w" />
                            <node concept="3EllGN" id="7e$2hwaQyer" role="3uHU7B">
                              <node concept="37vLTw" id="7e$2hwaQyes" role="3ElVtu">
                                <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                              </node>
                              <node concept="37vLTw" id="7e$2hwaQyet" role="3ElQJh">
                                <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                              </node>
                            </node>
                          </node>
                          <node concept="3EllGN" id="7e$2hwaQyeu" role="3K4E3e">
                            <node concept="37vLTw" id="7e$2hwaQyev" role="3ElVtu">
                              <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                            </node>
                            <node concept="37vLTw" id="7e$2hwaQyew" role="3ElQJh">
                              <ref role="3cqZAo" node="7e$2hwaHGqq" resolve="paramMap" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7e$2hwaHOx6" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7e$2hwaHOx7" role="3clFbw">
                      <node concept="37vLTw" id="7e$2hwaHOxJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                      </node>
                      <node concept="liA8E" id="7e$2hwaHOx8" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7e$2hwaHOx9" role="37wK5m">
                          <ref role="3cqZAo" node="7e$2hwaHOwr" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7e$2hwaHOxa" role="3cqZAp" />
                  <node concept="3clFbF" id="7e$2hwaHOxb" role="3cqZAp">
                    <node concept="10Nm6u" id="7e$2hwaHOxc" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7iCybvTy_Mc" role="1B3o_S" />
    <node concept="2tJIrI" id="7iCybvTyHA6" role="jymVt" />
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
        <node concept="3clFbF" id="1PdMG9ntIAW" role="3cqZAp">
          <node concept="37vLTI" id="1PdMG9ntJXo" role="3clFbG">
            <node concept="2ShNRf" id="1PdMG9ntKiG" role="37vLTx">
              <node concept="YeOm9" id="1PdMG9ntLFd" role="2ShVmc">
                <node concept="1Y3b0j" id="1PdMG9ntLFg" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="3qmy:~DeployListener" resolve="DeployListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="1PdMG9ntLFh" role="1B3o_S" />
                  <node concept="3clFb_" id="1PdMG9nvQ$L" role="jymVt">
                    <property role="TrG5h" value="onUnloaded" />
                    <node concept="3Tm1VV" id="1PdMG9nvQ$N" role="1B3o_S" />
                    <node concept="3cqZAl" id="1PdMG9nvQ$P" role="3clF45" />
                    <node concept="37vLTG" id="1PdMG9nvQ$Q" role="3clF46">
                      <property role="TrG5h" value="unloadedModules" />
                      <node concept="3uibUv" id="1PdMG9nvQ$R" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                        <node concept="3uibUv" id="1PdMG9nvQ$S" role="11_B2D">
                          <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1PdMG9nvQ$T" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="1PdMG9nvQ$U" role="3clF46">
                      <property role="TrG5h" value="monitor" />
                      <node concept="3uibUv" id="1PdMG9nvQ$V" role="1tU5fm">
                        <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                      </node>
                      <node concept="2AHcQZ" id="1PdMG9nvQ$W" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1PdMG9nvQ_d" role="3clF47">
                      <node concept="3clFbJ" id="1PdMG9nvzMm" role="3cqZAp">
                        <node concept="3y3z36" id="1PdMG9nv_Kd" role="3clFbw">
                          <node concept="10Nm6u" id="1PdMG9nvAtw" role="3uHU7w" />
                          <node concept="37vLTw" id="51h1DIGa1_P" role="3uHU7B">
                            <ref role="3cqZAo" node="6gnqipLxRoW" resolve="provider" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1PdMG9nvzMo" role="3clFbx">
                          <node concept="3clFbF" id="1PdMG9nvB8w" role="3cqZAp">
                            <node concept="2OqwBi" id="1PdMG9nvBFB" role="3clFbG">
                              <node concept="37vLTw" id="51h1DIGa2dB" role="2Oq$k0">
                                <ref role="3cqZAo" node="6gnqipLxRoW" resolve="provider" />
                              </node>
                              <node concept="liA8E" id="51h1DIGa2N6" role="2OqNvi">
                                <ref role="37wK5l" node="1PdMG9nu6bb" resolve="clearAllCashes" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1PdMG9nvQ_e" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1PdMG9ntJaS" role="37vLTJ">
              <node concept="Xjq3P" id="1PdMG9ntIAU" role="2Oq$k0" />
              <node concept="2OwXpG" id="1PdMG9ntJwF" role="2OqNvi">
                <ref role="2Oxat5" node="1PdMG9ntGWW" resolve="deployListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1PdMG9nwWGG" role="3cqZAp">
          <node concept="2OqwBi" id="1PdMG9nwY8z" role="3clFbG">
            <node concept="2YIFZM" id="1PdMG9nwXFo" role="2Oq$k0">
              <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
            </node>
            <node concept="liA8E" id="1PdMG9nwYN0" role="2OqNvi">
              <ref role="37wK5l" to="3qmy:~ClassLoaderManager.addListener(jetbrains.mps.classloading.DeployListener)" resolve="addListener" />
              <node concept="37vLTw" id="1PdMG9nwZl_" role="37wK5m">
                <ref role="3cqZAo" node="1PdMG9ntGWW" resolve="deployListener" />
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
        <node concept="3clFbF" id="6gnqipLxUvT" role="3cqZAp">
          <node concept="2YIFZM" id="6gnqipLxUvU" role="3clFbG">
            <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
            <ref role="37wK5l" to="tj24:6hpwxwitVpF" resolve="initFactory" />
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
        <node concept="3clFbJ" id="1PdMG9nxAev" role="3cqZAp">
          <node concept="3clFbS" id="1PdMG9nxAex" role="3clFbx">
            <node concept="3clFbF" id="1PdMG9nxC7G" role="3cqZAp">
              <node concept="2OqwBi" id="1PdMG9nxCZS" role="3clFbG">
                <node concept="2YIFZM" id="1PdMG9nxCzJ" role="2Oq$k0">
                  <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                </node>
                <node concept="liA8E" id="1PdMG9nxDum" role="2OqNvi">
                  <ref role="37wK5l" to="3qmy:~ClassLoaderManager.removeListener(jetbrains.mps.classloading.DeployListener)" resolve="removeListener" />
                  <node concept="37vLTw" id="1PdMG9nxDZT" role="37wK5m">
                    <ref role="3cqZAo" node="1PdMG9ntGWW" resolve="deployListener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1PdMG9nxF4h" role="3cqZAp">
              <node concept="37vLTI" id="1PdMG9nxGvq" role="3clFbG">
                <node concept="10Nm6u" id="1PdMG9nxGXC" role="37vLTx" />
                <node concept="2OqwBi" id="1PdMG9nxFBG" role="37vLTJ">
                  <node concept="Xjq3P" id="1PdMG9nxF4f" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1PdMG9nxG42" role="2OqNvi">
                    <ref role="2Oxat5" node="1PdMG9ntGWW" resolve="deployListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1PdMG9nxBhz" role="3clFbw">
            <node concept="10Nm6u" id="1PdMG9nxBod" role="3uHU7w" />
            <node concept="37vLTw" id="1PdMG9nxAKq" role="3uHU7B">
              <ref role="3cqZAo" node="1PdMG9ntGWW" resolve="deployListener" />
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
    <node concept="312cEg" id="1PdMG9ntGWW" role="jymVt">
      <property role="TrG5h" value="deployListener" />
      <node concept="3Tm6S6" id="1PdMG9ntGWX" role="1B3o_S" />
      <node concept="3uibUv" id="1PdMG9ntH_M" role="1tU5fm">
        <ref role="3uigEE" to="3qmy:~DeployListener" resolve="DeployListener" />
      </node>
      <node concept="10Nm6u" id="1PdMG9ntHT$" role="33vP2m" />
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

