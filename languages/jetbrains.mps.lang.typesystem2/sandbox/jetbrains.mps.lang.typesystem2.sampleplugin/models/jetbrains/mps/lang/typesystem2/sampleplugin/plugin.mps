<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1514c681-0724-461e-a435-315a6af4b3b4(jetbrains.mps.lang.typesystem2.sampleplugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
  </languages>
  <imports>
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="bdf1" ref="r:22d5f1f3-a483-4725-abc3-c5e9c2c56292(jetbrains.mps.typechecking.rule.generator)" />
    <import index="nc4n" ref="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="qiww" ref="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
    <import index="810" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(MPS.IDEA/com.intellij.openapi.ui@java_stub)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="msyo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="138j" ref="r:d390cf6e-3a05-4c9d-8eb3-bcdfbfd3bf8f(jetbrains.mps.typechecking.rule.collection)" />
    <import index="9kr0" ref="r:0f58be42-48ea-45ab-99f8-158393a0f526(jetbrains.mps.typechecking.handler.producer)" />
    <import index="5xh9" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.actions(MPS.Platform/jetbrains.mps.ide.actions@java_stub)" />
    <import index="xq5w" ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.variable)" />
    <import index="cu2c" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="vsqj" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="odgu" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.make(MPS.Platform/jetbrains.mps.ide.make@java_stub)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="53gy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util.concurrent(JDK/java.util.concurrent@java_stub)" />
    <import index="i9so" ref="r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)" />
    <import index="dbrf" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" />
    <import index="88zw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="42ru" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.module(MPS.Core/jetbrains.mps.module@java_stub)" />
    <import index="wqua" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.classloading(MPS.Core/jetbrains.mps.classloading@java_stub)" />
    <import index="xqpa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang.reflect(JDK/java.lang.reflect@java_stub)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="w2rx" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="jo0n" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime.debug.graphical(jetbrains.mps.jchr.runtime/runtime.debug.graphical@java_stub)" />
    <import index="9a8" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(MPS.Editor/jetbrains.mps.nodeEditor@java_stub)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="ec5l" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="2vit" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor.message(MPS.Editor/jetbrains.mps.openapi.editor.message@java_stub)" />
    <import index="1t7x" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" />
    <import index="nax5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.errors(MPS.Core/jetbrains.mps.errors@java_stub)" />
    <import index="l0n4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.errors.messageTargets(MPS.Core/jetbrains.mps.errors.messageTargets@java_stub)" />
    <import index="1d7m" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.ide.editor(MPS.Editor/jetbrains.mps.ide.editor@java_stub)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1177326519037" name="jetbrains.mps.baseLanguage.structure.CommentedStatementsBlock" flags="nn" index="u8gfJ">
        <child id="1177326540772" name="statement" index="u8lrQ" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167228628751" name="hasException" index="34fQS0" />
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
        <child id="1167227561449" name="exception" index="34bMjA" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393041554" name="fqName" index="BaBD8" />
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
    </language>
  </registry>
  <node concept="312cEu" id="3Qp4N06byjn">
    <property role="TrG5h" value="CollectRuleTemplates" />
    <node concept="2tJIrI" id="3Qp4N06byjo" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06byjp" role="jymVt">
      <property role="TrG5h" value="collect" />
      <node concept="37vLTG" id="2Rw7mr8Siv1" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="2Rw7mr8SiGS" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="3xj1Uscu7dI" role="3clF45" />
      <node concept="3Tm1VV" id="3Qp4N06byju" role="1B3o_S" />
      <node concept="3clFbS" id="3Qp4N06byjv" role="3clF47">
        <node concept="3clFbH" id="3Qp4N06byjw" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06byjx" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjy" role="3cpWs9">
            <property role="TrG5h" value="templatesModel" />
            <node concept="H_c77" id="3Qp4N06byjz" role="1tU5fm" />
            <node concept="BaHAS" id="3Qp4N06byj$" role="33vP2m">
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.template" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Qp4N06byj_" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjA" role="3cpWs9">
            <property role="TrG5h" value="manifest" />
            <node concept="3uibUv" id="3Qp4N06byjB" role="1tU5fm">
              <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="2YIFZM" id="3Qp4N06byjC" role="33vP2m">
              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
              <ref role="37wK5l" node="3Qp4N06bynQ" resolve="getRuleManifest" />
              <node concept="37vLTw" id="3Qp4N06byjD" role="37wK5m">
                <ref role="3cqZAo" node="3Qp4N06byjy" resolve="templatesModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06byjE" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06byjF" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjG" role="3cpWs9">
            <property role="TrG5h" value="rtc" />
            <node concept="3uibUv" id="3Qp4N06byjH" role="1tU5fm">
              <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
            </node>
            <node concept="2ShNRf" id="3Qp4N06byjI" role="33vP2m">
              <node concept="1pGfFk" id="3Qp4N06byjJ" role="2ShVmc">
                <ref role="37wK5l" to="138j:6fdr4UgfyCL" resolve="RuleTemplateCollection" />
                <node concept="Xl_RD" id="3Qp4N06byjK" role="37wK5m">
                  <property role="Xl_RC" value="test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Qp4N06byjL" role="3cqZAp">
          <node concept="2OqwBi" id="3Qp4N06byjM" role="3clFbG">
            <node concept="37vLTw" id="3Qp4N06byjN" role="2Oq$k0">
              <ref role="3cqZAo" node="3Qp4N06byjG" resolve="rtc" />
            </node>
            <node concept="liA8E" id="3Qp4N06byjO" role="2OqNvi">
              <ref role="37wK5l" to="138j:12yN8Dyvyy6" resolve="collectTemplates" />
              <node concept="37vLTw" id="3Qp4N06byjP" role="37wK5m">
                <ref role="3cqZAo" node="3Qp4N06byjA" resolve="manifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06byjQ" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06byk3" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byk4" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="3Qp4N06byk5" role="1tU5fm">
              <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
            </node>
            <node concept="2ShNRf" id="3Qp4N06byk6" role="33vP2m">
              <node concept="1pGfFk" id="3Qp4N06byk7" role="2ShVmc">
                <ref role="37wK5l" to="nc4n:7eGEHDlcF69" resolve="ConstraintRulesHandler" />
                <node concept="Xl_RD" id="3Qp4N06byk8" role="37wK5m">
                  <property role="Xl_RC" value="testHandler" />
                </node>
                <node concept="2ShNRf" id="3Qp4N06byk9" role="37wK5m">
                  <node concept="YeOm9" id="3Qp4N06byka" role="2ShVmc">
                    <node concept="1Y3b0j" id="3Qp4N06bykb" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="nc4n:7eGEHDldgwf" resolve="ConstraintRegistry" />
                      <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="3Qp4N06bykc" role="1B3o_S" />
                      <node concept="3clFb_" id="3Qp4N06bykd" role="jymVt">
                        <property role="TrG5h" value="findSolver" />
                        <property role="1EzhhJ" value="false" />
                        <node concept="37vLTG" id="3Qp4N06byke" role="3clF46">
                          <property role="TrG5h" value="symbol" />
                          <node concept="3uibUv" id="54i3Fxd0k1k" role="1tU5fm">
                            <ref role="3uigEE" to="nc4n:54i3FxcZHHF" resolve="ConstraintSymbol" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="3Qp4N06bykg" role="3clF45">
                          <ref role="3uigEE" to="yg8f:2GO7tyJLLNE" resolve="SolverProxy" />
                          <node concept="3qTvmN" id="3Qp4N06bykh" role="11_B2D" />
                          <node concept="3qTvmN" id="5$WbtTP065P" role="11_B2D" />
                        </node>
                        <node concept="3Tm1VV" id="3Qp4N06byki" role="1B3o_S" />
                        <node concept="3clFbS" id="3Qp4N06bykj" role="3clF47">
                          <node concept="3SKdUt" id="3Qp4N06bykk" role="3cqZAp">
                            <node concept="3SKdUq" id="3Qp4N06bykl" role="3SKWNk">
                              <property role="3SKdUp" value="TODO: implement me" />
                            </node>
                          </node>
                          <node concept="3clFbJ" id="54i3Fxd0a$l" role="3cqZAp">
                            <node concept="3clFbS" id="54i3Fxd0a$n" role="3clFbx">
                              <node concept="3cpWs6" id="3Qp4N06byk$" role="3cqZAp">
                                <node concept="10M0yZ" id="3Qp4N06byk_" role="3cqZAk">
                                  <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                                  <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="54i3Fxd0a$m" role="3cqZAp" />
                            </node>
                            <node concept="3clFbC" id="54i3Fxd0bSB" role="3clFbw">
                              <node concept="37vLTw" id="54i3Fxd0bZz" role="3uHU7w">
                                <ref role="3cqZAo" node="3Qp4N06byke" resolve="symbol" />
                              </node>
                              <node concept="10M0yZ" id="54i3Fxd0aNo" role="3uHU7B">
                                <ref role="1PxDUh" to="nc4n:54i3FxcZHHF" resolve="ConstraintSymbol" />
                                <ref role="3cqZAo" to="nc4n:54i3FxcZMP2" resolve="EQUALS" />
                              </node>
                            </node>
                            <node concept="3eNFk2" id="54i3Fxd0l1C" role="3eNLev">
                              <node concept="3clFbS" id="54i3Fxd0l1E" role="3eOfB_">
                                <node concept="3cpWs6" id="5$WbtTP0VxD" role="3cqZAp">
                                  <node concept="10M0yZ" id="5$WbtTP1je9" role="3cqZAk">
                                    <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalConstraint" />
                                    <ref role="3cqZAo" to="xq5w:5$WbtTOYJJi" resolve="BOUND" />
                                  </node>
                                </node>
                                <node concept="3clFbH" id="54i3Fxd0pAI" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="54i3Fxd0n0K" role="3eO9$A">
                                <node concept="37vLTw" id="54i3Fxd0n0L" role="3uHU7w">
                                  <ref role="3cqZAo" node="3Qp4N06byke" resolve="symbol" />
                                </node>
                                <node concept="10M0yZ" id="54i3Fxd0n0M" role="3uHU7B">
                                  <ref role="1PxDUh" to="nc4n:54i3FxcZHHF" resolve="ConstraintSymbol" />
                                  <ref role="3cqZAo" to="nc4n:54i3FxcZO14" resolve="BOUND" />
                                </node>
                              </node>
                            </node>
                            <node concept="3eNFk2" id="54i3Fxd0oD5" role="3eNLev">
                              <node concept="3clFbS" id="54i3Fxd0oD6" role="3eOfB_">
                                <node concept="3cpWs6" id="5$WbtTP1jyU" role="3cqZAp">
                                  <node concept="10M0yZ" id="5$WbtTP1jyV" role="3cqZAk">
                                    <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalConstraint" />
                                    <ref role="3cqZAo" to="xq5w:5$WbtTOYVUg" resolve="FREE" />
                                  </node>
                                </node>
                                <node concept="3clFbH" id="54i3Fxd0uzF" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="54i3Fxd0oD9" role="3eO9$A">
                                <node concept="37vLTw" id="54i3Fxd0oDa" role="3uHU7w">
                                  <ref role="3cqZAo" node="3Qp4N06byke" resolve="symbol" />
                                </node>
                                <node concept="10M0yZ" id="54i3Fxd0oDb" role="3uHU7B">
                                  <ref role="1PxDUh" to="nc4n:54i3FxcZHHF" resolve="ConstraintSymbol" />
                                  <ref role="3cqZAo" to="nc4n:54i3FxcZNJp" resolve="FREE" />
                                </node>
                              </node>
                            </node>
                            <node concept="9aQIb" id="54i3Fxd0vve" role="9aQIa">
                              <node concept="3clFbS" id="54i3Fxd0vvf" role="9aQI4">
                                <node concept="YS8fn" id="3Qp4N06bykp" role="3cqZAp">
                                  <node concept="2ShNRf" id="3Qp4N06bykq" role="YScLw">
                                    <node concept="1pGfFk" id="3Qp4N06bykr" role="2ShVmc">
                                      <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                                      <node concept="3cpWs3" id="3Qp4N06byks" role="37wK5m">
                                        <node concept="Xl_RD" id="3Qp4N06bykt" role="3uHU7w">
                                          <property role="Xl_RC" value="'" />
                                        </node>
                                        <node concept="3cpWs3" id="3Qp4N06byku" role="3uHU7B">
                                          <node concept="Xl_RD" id="3Qp4N06bykv" role="3uHU7B">
                                            <property role="Xl_RC" value="uknown constraint symbol '" />
                                          </node>
                                          <node concept="37vLTw" id="3Qp4N06bykw" role="3uHU7w">
                                            <ref role="3cqZAo" node="3Qp4N06byke" resolve="symbol" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="54i3Fxd0wvd" role="3cqZAp" />
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
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscty2E" role="3cqZAp" />
        <node concept="3cpWs6" id="3xj1Uscu5Gi" role="3cqZAp">
          <node concept="2YIFZM" id="3xj1UscsvAf" role="3cqZAk">
            <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
            <ref role="37wK5l" node="3xj1UscsvAa" resolve="generateRules" />
            <node concept="37vLTw" id="2Rw7mr8SiU2" role="37wK5m">
              <ref role="3cqZAo" node="2Rw7mr8Siv1" resolve="root" />
            </node>
            <node concept="37vLTw" id="3xj1UscsvAd" role="37wK5m">
              <ref role="3cqZAo" node="3Qp4N06byjG" resolve="rtc" />
            </node>
            <node concept="37vLTw" id="3xj1UscsvAe" role="37wK5m">
              <ref role="3cqZAo" node="3Qp4N06byk4" resolve="handler" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3xj1UscsxoY" role="jymVt" />
    <node concept="2YIFZL" id="3xj1UscsvAa" role="jymVt">
      <property role="TrG5h" value="generateRules" />
      <node concept="3Tm1VV" id="3xj1UscsAEg" role="1B3o_S" />
      <node concept="10Oyi0" id="3xj1Uscu4XG" role="3clF45" />
      <node concept="37vLTG" id="2Rw7mr8Sa0e" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="2Rw7mr8Sb$V" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3xj1Uscsv_Y" role="3clF46">
        <property role="TrG5h" value="rtc" />
        <node concept="3uibUv" id="3xj1Uscsv_Z" role="1tU5fm">
          <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
        </node>
      </node>
      <node concept="37vLTG" id="3xj1UscsvA0" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="3xj1UscsvA1" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3xj1UscsvyC" role="3clF47">
        <node concept="3clFbH" id="3xj1UscsvyD" role="3cqZAp" />
        <node concept="3cpWs8" id="3xj1UscsvyK" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyL" role="3cpWs9">
            <property role="TrG5h" value="sampleModel" />
            <node concept="H_c77" id="3xj1UscsvyM" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1UscsvyN" role="33vP2m">
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.sample" />
              <property role="BaGAP" value="" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3xj1UscsvyO" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyP" role="3cpWs9">
            <property role="TrG5h" value="javaLangModel" />
            <node concept="H_c77" id="3xj1UscsvyQ" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1UscsvyR" role="33vP2m">
              <property role="BaHAW" value="java.lang" />
              <property role="BaGAP" value="java_stub" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3xj1UscsvyS" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyT" role="3cpWs9">
            <property role="TrG5h" value="javaIoModel" />
            <node concept="H_c77" id="3xj1UscsvyU" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1UscsvyV" role="33vP2m">
              <property role="BaHAW" value="java.io" />
              <property role="BaGAP" value="java_stub" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2KVRGowUt8z" role="3cqZAp">
          <node concept="3cpWsn" id="2KVRGowUt8$" role="3cpWs9">
            <property role="TrG5h" value="javaUtilModel" />
            <node concept="H_c77" id="2KVRGowUt8_" role="1tU5fm" />
            <node concept="BaHAS" id="2KVRGowUt8A" role="33vP2m">
              <property role="BaHAW" value="java.util" />
              <property role="BaGAP" value="java_stub" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvyW" role="3cqZAp" />
        <node concept="3cpWs8" id="3xj1UscsvyE" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyF" role="3cpWs9">
            <property role="TrG5h" value="generator" />
            <node concept="3uibUv" id="3xj1UscsvyG" role="1tU5fm">
              <ref role="3uigEE" to="bdf1:12yN8DyF_E1" resolve="TypecheckingRuleGenerator" />
            </node>
            <node concept="2ShNRf" id="3xj1UscsvyH" role="33vP2m">
              <node concept="1pGfFk" id="3xj1UscsvyI" role="2ShVmc">
                <ref role="37wK5l" to="bdf1:7Oc59RSy_Op" resolve="TypecheckingRuleGenerator" />
                <node concept="37vLTw" id="3xj1UscsvA6" role="37wK5m">
                  <ref role="3cqZAo" node="3xj1Uscsv_Y" resolve="rtc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvyX" role="3cqZAp" />
        <node concept="3cpWs8" id="3xj1UsctHLj" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UsctHLm" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="10Oyi0" id="3xj1UsctHLh" role="1tU5fm" />
            <node concept="3cmrfG" id="3xj1UsctHWs" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UsctHWG" role="3cqZAp" />
        <node concept="3clFbF" id="5NuEpF1r8KC" role="3cqZAp">
          <node concept="d57v9" id="5NuEpF1ra3T" role="3clFbG">
            <node concept="2YIFZM" id="5NuEpF1rq1d" role="37vLTx">
              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
              <ref role="37wK5l" node="5NuEpF1pEFm" resolve="generateRulesWithNoInput" />
              <node concept="37vLTw" id="5NuEpF1roHd" role="37wK5m">
                <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
              </node>
              <node concept="37vLTw" id="5NuEpF1rpvb" role="37wK5m">
                <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
              </node>
            </node>
            <node concept="37vLTw" id="5NuEpF1r8KA" role="37vLTJ">
              <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1r6$3" role="3cqZAp" />
        <node concept="3clFbF" id="3xj1UscsVnA" role="3cqZAp">
          <node concept="d57v9" id="3xj1UsctIbg" role="3clFbG">
            <node concept="37vLTw" id="3xj1UsctIwZ" role="37vLTJ">
              <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
            </node>
            <node concept="2YIFZM" id="3xj1UscsVn_" role="37vLTx">
              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
              <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
              <node concept="37vLTw" id="3xj1UscsVny" role="37wK5m">
                <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
              </node>
              <node concept="37vLTw" id="3xj1UscsVnz" role="37wK5m">
                <ref role="3cqZAo" node="2Rw7mr8Sa0e" resolve="root" />
              </node>
              <node concept="37vLTw" id="3xj1UscsVn$" role="37wK5m">
                <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvzJ" role="3cqZAp" />
        <node concept="u8gfJ" id="2Rw7mr8OyYc" role="3cqZAp">
          <node concept="1DcWWT" id="3xj1UscsvzK" role="u8lrQ">
            <node concept="3clFbS" id="3xj1UscsvzL" role="2LFqv$">
              <node concept="3clFbF" id="3xj1UsctIVX" role="3cqZAp">
                <node concept="d57v9" id="3xj1UsctIVY" role="3clFbG">
                  <node concept="37vLTw" id="3xj1UsctIVZ" role="37vLTJ">
                    <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
                  </node>
                  <node concept="2YIFZM" id="3xj1UsctIW0" role="37vLTx">
                    <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                    <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
                    <node concept="37vLTw" id="3xj1UsctIW1" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                    </node>
                    <node concept="37vLTw" id="3xj1UsctIW2" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1Uscsv$r" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="3xj1UsctIW3" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3xj1Uscsv$r" role="1Duv9x">
              <property role="TrG5h" value="root" />
              <node concept="3Tqbb2" id="3xj1Uscsv$s" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xj1Uscsv$u" role="1DdaDG">
              <node concept="37vLTw" id="3xj1Uscsv$v" role="2Oq$k0">
                <ref role="3cqZAo" node="3xj1UscsvyP" resolve="javaLangModel" />
              </node>
              <node concept="2RRcyG" id="3xj1Uscsv$w" role="2OqNvi">
                <ref role="2RRcyH" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3xj1Usct4p1" role="u8lrQ" />
          <node concept="1DcWWT" id="3xj1Uscsv$H" role="u8lrQ">
            <node concept="3clFbS" id="3xj1Uscsv$I" role="2LFqv$">
              <node concept="3clFbF" id="3xj1UsctOog" role="3cqZAp">
                <node concept="d57v9" id="3xj1UsctOoh" role="3clFbG">
                  <node concept="37vLTw" id="3xj1UsctOoi" role="37vLTJ">
                    <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
                  </node>
                  <node concept="2YIFZM" id="3xj1UsctOoj" role="37vLTx">
                    <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                    <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
                    <node concept="37vLTw" id="3xj1UsctOok" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                    </node>
                    <node concept="37vLTw" id="3xj1UsctOol" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1Uscsv_o" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="3xj1UsctOom" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3xj1Uscsv_o" role="1Duv9x">
              <property role="TrG5h" value="root" />
              <node concept="3Tqbb2" id="3xj1Uscsv_p" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="3xj1Uscsv_r" role="1DdaDG">
              <node concept="37vLTw" id="3xj1Uscsv_s" role="2Oq$k0">
                <ref role="3cqZAo" node="3xj1UscsvyT" resolve="javaIoModel" />
              </node>
              <node concept="2RRcyG" id="3xj1Uscsv_t" role="2OqNvi">
                <ref role="2RRcyH" to="tpee:fz12cDA" resolve="ClassConcept" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5NuEpF1rQrT" role="u8lrQ" />
          <node concept="1DcWWT" id="2KVRGowUxKR" role="u8lrQ">
            <node concept="3clFbS" id="2KVRGowUxKS" role="2LFqv$">
              <node concept="3clFbF" id="2KVRGowUxKT" role="3cqZAp">
                <node concept="d57v9" id="2KVRGowUxKU" role="3clFbG">
                  <node concept="37vLTw" id="2KVRGowUxKV" role="37vLTJ">
                    <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
                  </node>
                  <node concept="2YIFZM" id="2KVRGowUxKW" role="37vLTx">
                    <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                    <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
                    <node concept="37vLTw" id="2KVRGowUxKX" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                    </node>
                    <node concept="37vLTw" id="2KVRGowUxKY" role="37wK5m">
                      <ref role="3cqZAo" node="2KVRGowUxL0" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="2KVRGowUxKZ" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2KVRGowUxL0" role="1Duv9x">
              <property role="TrG5h" value="root" />
              <node concept="3Tqbb2" id="2KVRGowUxL1" role="1tU5fm">
                <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
              </node>
            </node>
            <node concept="2OqwBi" id="2KVRGowUxL3" role="1DdaDG">
              <node concept="37vLTw" id="2KVRGowU$ge" role="2Oq$k0">
                <ref role="3cqZAo" node="2KVRGowUt8$" resolve="javaUtilModel" />
              </node>
              <node concept="2RRcyG" id="2KVRGowUxL5" role="2OqNvi">
                <ref role="2RRcyH" to="tpee:g7HP654" resolve="Interface" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscsv_E" role="3cqZAp" />
        <node concept="34ab3g" id="3xj1Uscsv_F" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="3cpWs3" id="3xj1Uscsv_G" role="34bqiv">
            <node concept="37vLTw" id="3xj1UscsvA5" role="3uHU7w">
              <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
            </node>
            <node concept="Xl_RD" id="3xj1Uscsv_I" role="3uHU7B">
              <property role="Xl_RC" value="handler&gt; " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscsv_J" role="3cqZAp" />
        <node concept="3clFbF" id="3xj1Usct36R" role="3cqZAp">
          <node concept="2YIFZM" id="3xj1Usct36Q" role="3clFbG">
            <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
            <ref role="37wK5l" node="3xj1Usct36M" resolve="produceRules" />
            <node concept="37vLTw" id="3xj1Usct36P" role="37wK5m">
              <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscu48s" role="3cqZAp" />
        <node concept="3cpWs6" id="3xj1Uscu4fR" role="3cqZAp">
          <node concept="37vLTw" id="3xj1Uscu4hU" role="3cqZAk">
            <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3xj1Usct3GN" role="jymVt" />
    <node concept="2YIFZL" id="3xj1Usct36M" role="jymVt">
      <property role="TrG5h" value="produceRules" />
      <node concept="3Tm6S6" id="3xj1Usct36N" role="1B3o_S" />
      <node concept="3cqZAl" id="3xj1Usct36O" role="3clF45" />
      <node concept="37vLTG" id="3xj1Usct36H" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="3xj1Usct36I" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3xj1Usct36u" role="3clF47">
        <node concept="3cpWs8" id="3xj1Usct36y" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1Usct36z" role="3cpWs9">
            <property role="TrG5h" value="chrModel" />
            <node concept="H_c77" id="3xj1Usct36$" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1Usct36_" role="33vP2m">
              <property role="BaBD8" value="sand.jchr" />
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.chr" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Usct43r" role="3cqZAp" />
        <node concept="1QHqEM" id="3xj1Usct36v" role="3cqZAp">
          <node concept="1QHqEC" id="3xj1Usct36w" role="1QHqEI">
            <node concept="3clFbS" id="3xj1Usct36x" role="1bW5cS">
              <node concept="3clFbF" id="3xj1Usct36A" role="3cqZAp">
                <node concept="2OqwBi" id="3xj1Usct36B" role="3clFbG">
                  <node concept="2ShNRf" id="3xj1Usct36C" role="2Oq$k0">
                    <node concept="1pGfFk" id="3xj1Usct36D" role="2ShVmc">
                      <ref role="37wK5l" to="9kr0:ZqZbw4Qjv7" resolve="ChrHandlerProducer" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3xj1Usct36E" role="2OqNvi">
                    <ref role="37wK5l" to="9kr0:ZqZbw4Qjwa" resolve="produce" />
                    <node concept="37vLTw" id="3xj1Usct36F" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1Usct36z" resolve="chrModel" />
                    </node>
                    <node concept="37vLTw" id="3xj1Usct36J" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1Usct36H" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3xj1UscsVXP" role="jymVt" />
    <node concept="2YIFZL" id="3xj1UscsVnv" role="jymVt">
      <property role="TrG5h" value="generateRulesInRoot" />
      <node concept="3Tm6S6" id="3xj1UscsVnw" role="1B3o_S" />
      <node concept="10Oyi0" id="3xj1UsctHbY" role="3clF45" />
      <node concept="37vLTG" id="3xj1UscsVnj" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="3xj1UscsVnk" role="1tU5fm">
          <ref role="3uigEE" to="bdf1:12yN8DyF_E1" resolve="TypecheckingRuleGenerator" />
        </node>
      </node>
      <node concept="37vLTG" id="3xj1UscsVnl" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="3xj1UscsVnm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3xj1UscsVnn" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="3xj1UscsVno" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3xj1UscsVmD" role="3clF47">
        <node concept="3cpWs8" id="3xj1UscsVmE" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsVmF" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3xj1UscsVmG" role="1tU5fm">
              <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="3xj1UscsVmH" role="33vP2m">
              <node concept="37vLTw" id="3xj1UscsVns" role="2Oq$k0">
                <ref role="3cqZAo" node="3xj1UscsVnj" resolve="generator" />
              </node>
              <node concept="liA8E" id="3xj1UscsVmJ" role="2OqNvi">
                <ref role="37wK5l" to="bdf1:12yN8DyNqcj" resolve="generateAll" />
                <node concept="37vLTw" id="3xj1UscsVnr" role="37wK5m">
                  <ref role="3cqZAo" node="3xj1UscsVnl" resolve="root" />
                </node>
                <node concept="37vLTw" id="3xj1UscsVnq" role="37wK5m">
                  <ref role="3cqZAo" node="3xj1UscsVnn" resolve="handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3xj1UscsVmU" role="3cqZAp">
          <node concept="2OqwBi" id="3xj1UscsVng" role="3clFbw">
            <node concept="37vLTw" id="3xj1UscsVnh" role="2Oq$k0">
              <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
            </node>
            <node concept="liA8E" id="3xj1UscsVni" role="2OqNvi">
              <ref role="37wK5l" to="4t1t:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
          <node concept="3clFbS" id="3xj1Usct_75" role="3clFbx">
            <node concept="34ab3g" id="3xj1UscsVmM" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="3cpWs3" id="3xj1UscsVmN" role="34bqiv">
                <node concept="3cpWs3" id="3xj1UscsVmO" role="3uHU7B">
                  <node concept="3cpWs3" id="3xj1UscsVmP" role="3uHU7B">
                    <node concept="Xl_RD" id="3xj1UscsVmQ" role="3uHU7B">
                      <property role="Xl_RC" value="result&gt; " />
                    </node>
                    <node concept="37vLTw" id="3xj1UscsVmR" role="3uHU7w">
                      <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3xj1UscsVmS" role="3uHU7w">
                    <property role="Xl_RC" value=" @" />
                  </node>
                </node>
                <node concept="37vLTw" id="3xj1UscsVnp" role="3uHU7w">
                  <ref role="3cqZAo" node="3xj1UscsVnl" resolve="root" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3xj1UsctAdR" role="3cqZAp">
              <node concept="3cmrfG" id="3xj1UsctAu7" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1r5pl" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="3xj1Usct_Dk" role="9aQIa">
            <node concept="3clFbS" id="3xj1UscsVmV" role="9aQI4">
              <node concept="3clFbF" id="3xj1UscsVmW" role="3cqZAp">
                <node concept="2OqwBi" id="3xj1UscsVmX" role="3clFbG">
                  <node concept="2OqwBi" id="3xj1UscsVmY" role="2Oq$k0">
                    <node concept="2OqwBi" id="3xj1UscsVmZ" role="2Oq$k0">
                      <node concept="37vLTw" id="3xj1UscsVn0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
                      </node>
                      <node concept="liA8E" id="3xj1UscsVn1" role="2OqNvi">
                        <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                      </node>
                    </node>
                    <node concept="39bAoz" id="3xj1UscsVn2" role="2OqNvi" />
                  </node>
                  <node concept="2es0OD" id="3xj1UscsVn3" role="2OqNvi">
                    <node concept="1bVj0M" id="3xj1UscsVn4" role="23t8la">
                      <node concept="3clFbS" id="3xj1UscsVn5" role="1bW5cS">
                        <node concept="34ab3g" id="3xj1UscsVn6" role="3cqZAp">
                          <property role="35gtTG" value="warn" />
                          <property role="34fQS0" value="true" />
                          <node concept="3cpWs3" id="3xj1UscsVn7" role="34bqiv">
                            <node concept="37vLTw" id="3xj1UscsVn8" role="3uHU7w">
                              <ref role="3cqZAo" node="3xj1UscsVnd" resolve="e" />
                            </node>
                            <node concept="Xl_RD" id="3xj1UscsVn9" role="3uHU7B">
                              <property role="Xl_RC" value="error&gt; " />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3xj1UscsVna" role="34bMjA">
                            <node concept="37vLTw" id="3xj1UscsVnb" role="2Oq$k0">
                              <ref role="3cqZAo" node="3xj1UscsVnd" resolve="e" />
                            </node>
                            <node concept="liA8E" id="3xj1UscsVnc" role="2OqNvi">
                              <ref role="37wK5l" to="4t1t:7Oc59RSJGG8" resolve="exception" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3xj1UscsVnd" role="1bW2Oz">
                        <property role="TrG5h" value="e" />
                        <node concept="2jxLKc" id="3xj1UscsVne" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3xj1UsctAWM" role="3cqZAp">
                <node concept="2OqwBi" id="3xj1UsctFJ3" role="3cqZAk">
                  <node concept="2OqwBi" id="3xj1UsctEXP" role="2Oq$k0">
                    <node concept="37vLTw" id="3xj1UsctEqJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
                    </node>
                    <node concept="liA8E" id="3xj1UsctFsL" role="2OqNvi">
                      <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                    </node>
                  </node>
                  <node concept="1Rwk04" id="3xj1UsctGGJ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1pFrp" role="jymVt" />
    <node concept="2YIFZL" id="5NuEpF1pEFm" role="jymVt">
      <property role="TrG5h" value="generateRulesWithNoInput" />
      <node concept="3Tm6S6" id="5NuEpF1pEFn" role="1B3o_S" />
      <node concept="10Oyi0" id="5NuEpF1pEFo" role="3clF45" />
      <node concept="37vLTG" id="5NuEpF1pEFp" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="5NuEpF1pEFq" role="1tU5fm">
          <ref role="3uigEE" to="bdf1:12yN8DyF_E1" resolve="TypecheckingRuleGenerator" />
        </node>
      </node>
      <node concept="37vLTG" id="5NuEpF1pEFt" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="5NuEpF1pEFu" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="5NuEpF1pEFv" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1pEFw" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1pEFx" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="5NuEpF1pEFy" role="1tU5fm">
              <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="5NuEpF1pEFz" role="33vP2m">
              <node concept="37vLTw" id="5NuEpF1pEF$" role="2Oq$k0">
                <ref role="3cqZAo" node="5NuEpF1pEFp" resolve="generator" />
              </node>
              <node concept="liA8E" id="5NuEpF1pEF_" role="2OqNvi">
                <ref role="37wK5l" to="bdf1:5NuEpF1pL7f" resolve="generateAllWithNoInput" />
                <node concept="37vLTw" id="5NuEpF1pEFB" role="37wK5m">
                  <ref role="3cqZAo" node="5NuEpF1pEFt" resolve="handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5NuEpF1pEFC" role="3cqZAp">
          <node concept="2OqwBi" id="5NuEpF1pEFD" role="3clFbw">
            <node concept="37vLTw" id="5NuEpF1pEFE" role="2Oq$k0">
              <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
            </node>
            <node concept="liA8E" id="5NuEpF1pEFF" role="2OqNvi">
              <ref role="37wK5l" to="4t1t:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
          <node concept="3clFbS" id="5NuEpF1pEFG" role="3clFbx">
            <node concept="34ab3g" id="5NuEpF1pEFH" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="3cpWs3" id="5NuEpF1pEFK" role="34bqiv">
                <node concept="Xl_RD" id="5NuEpF1pEFL" role="3uHU7B">
                  <property role="Xl_RC" value="result&gt; " />
                </node>
                <node concept="37vLTw" id="5NuEpF1pEFM" role="3uHU7w">
                  <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5NuEpF1pEFP" role="3cqZAp">
              <node concept="3cmrfG" id="5NuEpF1pEFQ" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1r5bj" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="5NuEpF1pEFR" role="9aQIa">
            <node concept="3clFbS" id="5NuEpF1pEFS" role="9aQI4">
              <node concept="3clFbF" id="5NuEpF1pEFT" role="3cqZAp">
                <node concept="2OqwBi" id="5NuEpF1pEFU" role="3clFbG">
                  <node concept="2OqwBi" id="5NuEpF1pEFV" role="2Oq$k0">
                    <node concept="2OqwBi" id="5NuEpF1pEFW" role="2Oq$k0">
                      <node concept="37vLTw" id="5NuEpF1pEFX" role="2Oq$k0">
                        <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
                      </node>
                      <node concept="liA8E" id="5NuEpF1pEFY" role="2OqNvi">
                        <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                      </node>
                    </node>
                    <node concept="39bAoz" id="5NuEpF1pEFZ" role="2OqNvi" />
                  </node>
                  <node concept="2es0OD" id="5NuEpF1pEG0" role="2OqNvi">
                    <node concept="1bVj0M" id="5NuEpF1pEG1" role="23t8la">
                      <node concept="3clFbS" id="5NuEpF1pEG2" role="1bW5cS">
                        <node concept="34ab3g" id="5NuEpF1pEG3" role="3cqZAp">
                          <property role="35gtTG" value="warn" />
                          <property role="34fQS0" value="true" />
                          <node concept="3cpWs3" id="5NuEpF1pEG4" role="34bqiv">
                            <node concept="37vLTw" id="5NuEpF1pEG5" role="3uHU7w">
                              <ref role="3cqZAo" node="5NuEpF1pEGa" resolve="e" />
                            </node>
                            <node concept="Xl_RD" id="5NuEpF1pEG6" role="3uHU7B">
                              <property role="Xl_RC" value="error&gt; " />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5NuEpF1pEG7" role="34bMjA">
                            <node concept="37vLTw" id="5NuEpF1pEG8" role="2Oq$k0">
                              <ref role="3cqZAo" node="5NuEpF1pEGa" resolve="e" />
                            </node>
                            <node concept="liA8E" id="5NuEpF1pEG9" role="2OqNvi">
                              <ref role="37wK5l" to="4t1t:7Oc59RSJGG8" resolve="exception" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5NuEpF1pEGa" role="1bW2Oz">
                        <property role="TrG5h" value="e" />
                        <node concept="2jxLKc" id="5NuEpF1pEGb" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5NuEpF1pEGc" role="3cqZAp">
                <node concept="2OqwBi" id="5NuEpF1pEGd" role="3cqZAk">
                  <node concept="2OqwBi" id="5NuEpF1pEGe" role="2Oq$k0">
                    <node concept="37vLTw" id="5NuEpF1pEGf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
                    </node>
                    <node concept="liA8E" id="5NuEpF1pEGg" role="2OqNvi">
                      <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                    </node>
                  </node>
                  <node concept="1Rwk04" id="5NuEpF1pEGh" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Qp4N06bynP" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06bynQ" role="jymVt">
      <property role="TrG5h" value="getRuleManifest" />
      <node concept="3Tm6S6" id="3Qp4N06bynR" role="1B3o_S" />
      <node concept="3uibUv" id="3Qp4N06bynS" role="3clF45">
        <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
      </node>
      <node concept="37vLTG" id="3Qp4N06bynT" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="3Qp4N06bynU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3Qp4N06bynV" role="3clF47">
        <node concept="3cpWs8" id="3Qp4N06bynW" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06bynX" role="3cpWs9">
            <property role="TrG5h" value="fqClassName" />
            <node concept="17QB3L" id="3Qp4N06bynY" role="1tU5fm" />
            <node concept="2YIFZM" id="3Qp4N06bynZ" role="33vP2m">
              <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
              <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
              <node concept="37vLTw" id="3Qp4N06byo0" role="37wK5m">
                <ref role="3cqZAo" node="3Qp4N06bynT" resolve="model" />
              </node>
              <node concept="Xl_RD" id="3Qp4N06byo1" role="37wK5m">
                <property role="Xl_RC" value="RuleTemplateManifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Qp4N06byo2" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byo3" role="3cpWs9">
            <property role="TrG5h" value="manifest" />
            <node concept="3uibUv" id="3Qp4N06byo4" role="1tU5fm">
              <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="10Nm6u" id="3Qp4N06byo5" role="33vP2m" />
          </node>
        </node>
        <node concept="SfApY" id="3Qp4N06byo6" role="3cqZAp">
          <node concept="3clFbS" id="3Qp4N06byo7" role="SfCbr">
            <node concept="3cpWs8" id="3Qp4N06byo8" role="3cqZAp">
              <node concept="3cpWsn" id="3Qp4N06byo9" role="3cpWs9">
                <property role="TrG5h" value="clazz" />
                <node concept="3uibUv" id="3Qp4N06byoa" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                  <node concept="3uibUv" id="3Qp4N06byob" role="11_B2D">
                    <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
                  </node>
                </node>
                <node concept="10QFUN" id="3Qp4N06byoc" role="33vP2m">
                  <node concept="3uibUv" id="3Qp4N06byod" role="10QFUM">
                    <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                    <node concept="3uibUv" id="3Qp4N06byoe" role="11_B2D">
                      <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3Qp4N06byof" role="10QFUP">
                    <ref role="37wK5l" to="e2lb:~Class.forName(java.lang.String):java.lang.Class" resolve="forName" />
                    <ref role="1Pybhc" to="e2lb:~Class" resolve="Class" />
                    <node concept="37vLTw" id="3Qp4N06byog" role="37wK5m">
                      <ref role="3cqZAo" node="3Qp4N06bynX" resolve="fqClassName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Qp4N06byoh" role="3cqZAp">
              <node concept="37vLTI" id="3Qp4N06byoi" role="3clFbG">
                <node concept="2OqwBi" id="3Qp4N06byoj" role="37vLTx">
                  <node concept="37vLTw" id="3Qp4N06byok" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Qp4N06byo9" resolve="clazz" />
                  </node>
                  <node concept="liA8E" id="3Qp4N06byol" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Class.newInstance():java.lang.Object" resolve="newInstance" />
                  </node>
                </node>
                <node concept="37vLTw" id="3Qp4N06byom" role="37vLTJ">
                  <ref role="3cqZAo" node="3Qp4N06byo3" resolve="manifest" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="3Qp4N06byon" role="TEbGg">
            <node concept="3clFbS" id="3Qp4N06byoo" role="TDEfX">
              <node concept="34ab3g" id="3Qp4N06byop" role="3cqZAp">
                <property role="35gtTG" value="error" />
                <property role="34fQS0" value="true" />
                <node concept="Xl_RD" id="3Qp4N06byoq" role="34bqiv">
                  <property role="Xl_RC" value="WTF" />
                </node>
                <node concept="37vLTw" id="3Qp4N06byor" role="34bMjA">
                  <ref role="3cqZAo" node="3Qp4N06byos" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3Qp4N06byos" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="3Qp4N06byot" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3Qp4N06byou" role="3cqZAp">
          <node concept="37vLTw" id="3Qp4N06byov" role="3cqZAk">
            <ref role="3cqZAo" node="3Qp4N06byo3" resolve="manifest" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Qp4N06byow" role="jymVt" />
    <node concept="3Tm1VV" id="3Qp4N06byox" role="1B3o_S" />
  </node>
  <node concept="2DaZZR" id="3Qp4N06byoy" />
  <node concept="sE7Ow" id="3Qp4N06byoz">
    <property role="TrG5h" value="TestRuleTemplate" />
    <property role="2uzpH1" value="Mark Types" />
    <property role="72QZ$" value="true" />
    <node concept="2XrIbr" id="12TFIqWsK4U" role="32lrUH">
      <property role="TrG5h" value="stepOne" />
      <node concept="37vLTG" id="41ox5VnczTr" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3cpWsb" id="41ox5Vnc$fC" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="12TFIqWsK4V" role="3clF47">
        <node concept="3cpWs8" id="3xj1Uscu8ue" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1Uscu8uf" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="10Oyi0" id="3xj1Uscu8ud" role="1tU5fm" />
            <node concept="3cmrfG" id="7RDCjSXhexD" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1QHqEO" id="7RDCjSXiaXK" role="3cqZAp">
          <node concept="1QHqEC" id="7RDCjSXiaXM" role="1QHqEI">
            <node concept="3clFbS" id="7RDCjSXiaXO" role="1bW5cS">
              <node concept="SfApY" id="7RDCjSXheRk" role="3cqZAp">
                <node concept="3clFbS" id="7RDCjSXheRm" role="SfCbr">
                  <node concept="3clFbF" id="7RDCjSXhdM6" role="3cqZAp">
                    <node concept="37vLTI" id="7RDCjSXhdM8" role="3clFbG">
                      <node concept="2YIFZM" id="3xj1Uscu8ug" role="37vLTx">
                        <ref role="37wK5l" node="3Qp4N06byjp" resolve="collect" />
                        <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                        <node concept="2OqwBi" id="41ox5Vnpj5k" role="37wK5m">
                          <node concept="2OqwBi" id="41ox5Vnpj5l" role="2Oq$k0">
                            <node concept="2WthIp" id="41ox5Vnpj5m" role="2Oq$k0" />
                            <node concept="1DTwFV" id="41ox5Vnpj5n" role="2OqNvi">
                              <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="node" />
                            </node>
                          </node>
                          <node concept="liA8E" id="41ox5Vnpj5o" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="7RDCjSXhdMc" role="37vLTJ">
                        <ref role="3cqZAo" node="3xj1Uscu8uf" resolve="errors" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="TDmWw" id="7RDCjSXheRn" role="TEbGg">
                  <node concept="3cpWsn" id="7RDCjSXheRp" role="TDEfY">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="7RDCjSXhf1L" role="1tU5fm">
                      <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7RDCjSXheRt" role="TDEfX">
                    <node concept="34ab3g" id="7RDCjSXhfUY" role="3cqZAp">
                      <property role="35gtTG" value="error" />
                      <property role="34fQS0" value="true" />
                      <node concept="Xl_RD" id="7RDCjSXhfV0" role="34bqiv">
                        <property role="Xl_RC" value="exception during rules collection" />
                      </node>
                      <node concept="37vLTw" id="7RDCjSXhfV2" role="34bMjA">
                        <ref role="3cqZAo" node="7RDCjSXheRp" resolve="e" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="7RDCjSXipjO" role="3cqZAp">
                      <node concept="37vLTI" id="7RDCjSXiq2e" role="3clFbG">
                        <node concept="3cmrfG" id="7RDCjSXiq6B" role="37vLTx">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="7RDCjSXipjM" role="37vLTJ">
                          <ref role="3cqZAo" node="3xj1Uscu8uf" resolve="errors" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscub37" role="3cqZAp" />
        <node concept="3clFbJ" id="3xj1Uscudi7" role="3cqZAp">
          <node concept="3y3z36" id="12TFIqWv09O" role="3clFbw">
            <node concept="37vLTw" id="3xj1UscudkJ" role="3uHU7B">
              <ref role="3cqZAo" node="3xj1Uscu8uf" resolve="errors" />
            </node>
            <node concept="3cmrfG" id="3xj1UscudMk" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="3xj1UscufHF" role="3clFbx">
            <node concept="3clFbF" id="3xj1UscufJT" role="3cqZAp">
              <node concept="2YIFZM" id="3xj1UscufPG" role="3clFbG">
                <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                <ref role="37wK5l" to="810:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                <node concept="3cpWs3" id="3xj1Uscug0G" role="37wK5m">
                  <node concept="3cpWs3" id="3xj1UscuhcK" role="3uHU7B">
                    <node concept="Xl_RD" id="3xj1UscuheI" role="3uHU7B">
                      <property role="Xl_RC" value="Encountered " />
                    </node>
                    <node concept="37vLTw" id="3xj1Uscug2J" role="3uHU7w">
                      <ref role="3cqZAo" node="3xj1Uscu8uf" resolve="errors" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3xj1UscufPI" role="3uHU7w">
                    <property role="Xl_RC" value=" errors" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3xj1UscufPH" role="37wK5m">
                  <property role="Xl_RC" value="Collect Rules" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="12TFIqWv0lH" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="12TFIqWsVe0" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VncBkF" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VncBkG" role="3cpWs9">
            <property role="TrG5h" value="elapsed" />
            <node concept="10P55v" id="41ox5VncBkz" role="1tU5fm" />
            <node concept="FJ1c_" id="41ox5VncBkH" role="33vP2m">
              <node concept="3b6qkQ" id="41ox5VncD6l" role="3uHU7w">
                <property role="$nhwW" value="1000." />
              </node>
              <node concept="1eOMI4" id="41ox5VncCNH" role="3uHU7B">
                <node concept="3cpWsd" id="41ox5VncCNI" role="1eOMHV">
                  <node concept="37vLTw" id="41ox5VncCNJ" role="3uHU7w">
                    <ref role="3cqZAo" node="41ox5VnczTr" resolve="time" />
                  </node>
                  <node concept="2YIFZM" id="41ox5VncCNK" role="3uHU7B">
                    <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                    <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Qp4N06byoF" role="3cqZAp">
          <node concept="2YIFZM" id="3Qp4N06byoG" role="3clFbG">
            <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
            <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
            <node concept="2YIFZM" id="41ox5VncBFC" role="37wK5m">
              <ref role="37wK5l" to="e2lb:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <node concept="Xl_RD" id="3Qp4N06byoI" role="37wK5m">
                <property role="Xl_RC" value="OK -- collecting rules (took %2.1f sec.)" />
              </node>
              <node concept="37vLTw" id="41ox5VncBIE" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VncBkG" resolve="elapsed" />
              </node>
            </node>
            <node concept="Xl_RD" id="3Qp4N06byoH" role="37wK5m">
              <property role="Xl_RC" value="Collect Rules" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12TFIqWv0Sy" role="3cqZAp">
          <node concept="2OqwBi" id="12TFIqWv0Ss" role="3clFbG">
            <node concept="2WthIp" id="12TFIqWv0Sv" role="2Oq$k0" />
            <node concept="2XshWL" id="12TFIqWv0Sx" role="2OqNvi">
              <ref role="2WH_rO" node="12TFIqWsUfI" resolve="stepTwo" />
              <node concept="2YIFZM" id="41ox5VncEvO" role="2XxRq1">
                <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12TFIqWsPyi" role="3clF45" />
      <node concept="3Tm6S6" id="12TFIqWsPuW" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="12TFIqWsUfI" role="32lrUH">
      <property role="TrG5h" value="stepTwo" />
      <node concept="3clFbS" id="12TFIqWsUfJ" role="3clF47">
        <node concept="3clFbJ" id="41ox5VnbJZ4" role="3cqZAp">
          <node concept="3clFbS" id="41ox5VnbJZ6" role="3clFbx">
            <node concept="3clFbF" id="41ox5VnbKwT" role="3cqZAp">
              <node concept="2YIFZM" id="41ox5VnbKwU" role="3clFbG">
                <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                <ref role="37wK5l" to="810:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                <node concept="Xl_RD" id="41ox5VnbKwV" role="37wK5m">
                  <property role="Xl_RC" value="Could not start Make" />
                </node>
                <node concept="Xl_RD" id="41ox5VnbKwW" role="37wK5m">
                  <property role="Xl_RC" value="Make Rules" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnbKyk" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="41ox5VnbKaq" role="3clFbw">
            <node concept="2YIFZM" id="41ox5VnbKas" role="3fr31v">
              <ref role="37wK5l" node="7RDCjSXjQEP" resolve="make" />
              <ref role="1Pybhc" node="7RDCjSXgvZa" resolve="MakeCollectedRules" />
              <node concept="2OqwBi" id="41ox5VnbKat" role="37wK5m">
                <node concept="2WthIp" id="41ox5VnbKau" role="2Oq$k0" />
                <node concept="1DTwFV" id="41ox5VnbKav" role="2OqNvi">
                  <ref role="2WH_rO" node="7iCFfvQBVbg" resolve="mpsProject" />
                </node>
              </node>
              <node concept="1bVj0M" id="41ox5VnbKaw" role="37wK5m">
                <node concept="3clFbS" id="41ox5VnbKax" role="1bW5cS">
                  <node concept="3clFbJ" id="41ox5VnbKay" role="3cqZAp">
                    <node concept="3fqX7Q" id="41ox5VnbKaz" role="3clFbw">
                      <node concept="2OqwBi" id="41ox5VnbKa$" role="3fr31v">
                        <node concept="37vLTw" id="41ox5VnbKa_" role="2Oq$k0">
                          <ref role="3cqZAo" node="41ox5VnbKaP" resolve="res" />
                        </node>
                        <node concept="liA8E" id="41ox5VnbKaA" role="2OqNvi">
                          <ref role="37wK5l" to="i9so:17I1R__cQ6v" resolve="isSucessful" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="41ox5VnbKaB" role="3clFbx">
                      <node concept="3clFbF" id="41ox5VnbKaC" role="3cqZAp">
                        <node concept="2YIFZM" id="41ox5VnbKaD" role="3clFbG">
                          <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="810:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                          <node concept="Xl_RD" id="41ox5VnbKaE" role="37wK5m">
                            <property role="Xl_RC" value="Encountered errors" />
                          </node>
                          <node concept="Xl_RD" id="41ox5VnbKaF" role="37wK5m">
                            <property role="Xl_RC" value="Make Rules" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="41ox5VncFeq" role="3cqZAp" />
                  <node concept="3cpWs8" id="41ox5VncF20" role="3cqZAp">
                    <node concept="3cpWsn" id="41ox5VncF21" role="3cpWs9">
                      <property role="TrG5h" value="elapsed" />
                      <node concept="10P55v" id="41ox5VncF22" role="1tU5fm" />
                      <node concept="FJ1c_" id="41ox5VncF23" role="33vP2m">
                        <node concept="3b6qkQ" id="41ox5VncF24" role="3uHU7w">
                          <property role="$nhwW" value="1000." />
                        </node>
                        <node concept="1eOMI4" id="41ox5VncF25" role="3uHU7B">
                          <node concept="3cpWsd" id="41ox5VncF26" role="1eOMHV">
                            <node concept="37vLTw" id="41ox5VncF27" role="3uHU7w">
                              <ref role="3cqZAo" node="41ox5VncEJY" resolve="time" />
                            </node>
                            <node concept="2YIFZM" id="41ox5VncF28" role="3uHU7B">
                              <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                              <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="41ox5VncF29" role="3cqZAp">
                    <node concept="2YIFZM" id="41ox5VncF2a" role="3clFbG">
                      <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
                      <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                      <node concept="2YIFZM" id="41ox5VncF2b" role="37wK5m">
                        <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                        <ref role="37wK5l" to="e2lb:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                        <node concept="Xl_RD" id="41ox5VncF2c" role="37wK5m">
                          <property role="Xl_RC" value="OK -- making rules (took %2.1f sec.)" />
                        </node>
                        <node concept="37vLTw" id="41ox5VncF2d" role="37wK5m">
                          <ref role="3cqZAo" node="41ox5VncF21" resolve="elapsed" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="41ox5VncF2e" role="37wK5m">
                        <property role="Xl_RC" value="Make Rules" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="41ox5VnbKaL" role="3cqZAp">
                    <node concept="2OqwBi" id="41ox5VnbKaM" role="3clFbG">
                      <node concept="2WthIp" id="41ox5VnbKaN" role="2Oq$k0" />
                      <node concept="2XshWL" id="41ox5VnbKaO" role="2OqNvi">
                        <ref role="2WH_rO" node="12TFIqWsVRB" resolve="stepThree" />
                        <node concept="2YIFZM" id="41ox5VncGFU" role="2XxRq1">
                          <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                          <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="41ox5VnbKyI" role="3cqZAp" />
                </node>
                <node concept="37vLTG" id="41ox5VnbKaP" role="1bW2Oz">
                  <property role="TrG5h" value="res" />
                  <node concept="3uibUv" id="41ox5VnbKaQ" role="1tU5fm">
                    <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12TFIqWsUxV" role="3clF45" />
      <node concept="3Tm6S6" id="12TFIqWsUuX" role="1B3o_S" />
      <node concept="37vLTG" id="41ox5VncEJY" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3cpWsb" id="41ox5VncEJX" role="1tU5fm" />
      </node>
    </node>
    <node concept="2XrIbr" id="12TFIqWsVRB" role="32lrUH">
      <property role="TrG5h" value="stepThree" />
      <node concept="3clFbS" id="12TFIqWsVRC" role="3clF47">
        <node concept="3cpWs8" id="41ox5VnrfzL" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnrfzM" role="3cpWs9">
            <property role="TrG5h" value="types" />
            <node concept="3uibUv" id="41ox5VnrfzE" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
              <node concept="17QB3L" id="41ox5VnrfzJ" role="11_B2D" />
              <node concept="17QB3L" id="41ox5VnrfzK" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1zN1RIlfDRX" role="3cqZAp">
          <node concept="3cpWsn" id="1zN1RIlfDS0" role="3cpWs9">
            <property role="TrG5h" value="ok" />
            <node concept="10P_77" id="1zN1RIlfDRV" role="1tU5fm" />
            <node concept="3clFbT" id="1zN1RIlfDTq" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1zN1RIlfDTs" role="3cqZAp" />
        <node concept="1QHqEK" id="12TFIqWw7JD" role="3cqZAp">
          <node concept="1QHqEC" id="12TFIqWw7JF" role="1QHqEI">
            <node concept="3clFbS" id="12TFIqWw7JH" role="1bW5cS">
              <node concept="SfApY" id="41ox5VnkNls" role="3cqZAp">
                <node concept="TDmWw" id="1zN1RIlfccd" role="TEbGg">
                  <node concept="3cpWsn" id="1zN1RIlfcce" role="TDEfY">
                    <property role="TrG5h" value="fail" />
                    <node concept="3uibUv" id="1zN1RIlfcHz" role="1tU5fm">
                      <ref role="3uigEE" to="w2rx:~FailureException" resolve="FailureException" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1zN1RIlfccg" role="TDEfX">
                    <node concept="34ab3g" id="1zN1RIlfcHM" role="3cqZAp">
                      <property role="35gtTG" value="warn" />
                      <property role="34fQS0" value="true" />
                      <node concept="Xl_RD" id="1zN1RIlfcHN" role="34bqiv">
                        <property role="Xl_RC" value="failure during evaluation" />
                      </node>
                      <node concept="37vLTw" id="1zN1RIlfi0O" role="34bMjA">
                        <ref role="3cqZAo" node="1zN1RIlfcce" resolve="fail" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="1zN1RIlfFkh" role="3cqZAp">
                      <node concept="37vLTI" id="1zN1RIlfF_G" role="3clFbG">
                        <node concept="3clFbT" id="1zN1RIlfFK7" role="37vLTx">
                          <property role="3clFbU" value="false" />
                        </node>
                        <node concept="37vLTw" id="1zN1RIlfFkf" role="37vLTJ">
                          <ref role="3cqZAo" node="1zN1RIlfDS0" resolve="ok" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1zN1RIlfFWA" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbS" id="41ox5VnkNlu" role="SfCbr">
                  <node concept="3clFbF" id="41ox5Vnrj9Q" role="3cqZAp">
                    <node concept="37vLTI" id="41ox5Vnrj9S" role="3clFbG">
                      <node concept="2YIFZM" id="41ox5VnrfzN" role="37vLTx">
                        <ref role="37wK5l" node="41ox5Vnkht$" resolve="runTypecheckingRules" />
                        <ref role="1Pybhc" node="41ox5Vnk76a" resolve="RunTypecheckingRules" />
                        <node concept="2OqwBi" id="1zN1RIkMNQ0" role="37wK5m">
                          <node concept="2OqwBi" id="1zN1RIkMNv5" role="2Oq$k0">
                            <node concept="2WthIp" id="1zN1RIkMNv8" role="2Oq$k0" />
                            <node concept="1DTwFV" id="1zN1RIkMNva" role="2OqNvi">
                              <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="node" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1zN1RIkMOfA" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="41ox5Vnrj9W" role="37vLTJ">
                        <ref role="3cqZAo" node="41ox5VnrfzM" resolve="types" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="41ox5VnkWJT" role="3cqZAp" />
                </node>
                <node concept="TDmWw" id="41ox5VnkNlv" role="TEbGg">
                  <node concept="3cpWsn" id="41ox5VnkNlx" role="TDEfY">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="41ox5VnkQWm" role="1tU5fm">
                      <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="41ox5VnkNl_" role="TDEfX">
                    <node concept="34ab3g" id="41ox5VnkTaP" role="3cqZAp">
                      <property role="35gtTG" value="error" />
                      <property role="34fQS0" value="true" />
                      <node concept="Xl_RD" id="41ox5VnkTaQ" role="34bqiv">
                        <property role="Xl_RC" value="exception during evaluation" />
                      </node>
                      <node concept="37vLTw" id="41ox5VnkTaR" role="34bMjA">
                        <ref role="3cqZAo" node="41ox5VnkNlx" resolve="e" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="1zN1RIlfEFG" role="3cqZAp">
                      <node concept="37vLTI" id="1zN1RIlfF5j" role="3clFbG">
                        <node concept="3clFbT" id="1zN1RIlfFg4" role="37vLTx">
                          <property role="3clFbU" value="false" />
                        </node>
                        <node concept="37vLTw" id="1zN1RIlfEFE" role="37vLTJ">
                          <ref role="3cqZAo" node="1zN1RIlfDS0" resolve="ok" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1zN1RIlfEAi" role="3cqZAp" />
        <node concept="3clFbJ" id="1zN1RIlfE25" role="3cqZAp">
          <node concept="3clFbS" id="1zN1RIlfE27" role="3clFbx">
            <node concept="3clFbF" id="41ox5VnkTaS" role="3cqZAp">
              <node concept="2YIFZM" id="41ox5VnkTaT" role="3clFbG">
                <ref role="37wK5l" to="810:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                <node concept="Xl_RD" id="41ox5VnkTaU" role="37wK5m">
                  <property role="Xl_RC" value="Encountered errors" />
                </node>
                <node concept="Xl_RD" id="41ox5VnkTaV" role="37wK5m">
                  <property role="Xl_RC" value="Launch Rules" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="41ox5VnkTaW" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1zN1RIlfE3$" role="3clFbw">
            <node concept="37vLTw" id="1zN1RIlfE3Q" role="3fr31v">
              <ref role="3cqZAo" node="1zN1RIlfDS0" resolve="ok" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnrklW" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VncHNq" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VncHNr" role="3cpWs9">
            <property role="TrG5h" value="elapsed" />
            <node concept="10P55v" id="41ox5VncHNs" role="1tU5fm" />
            <node concept="FJ1c_" id="41ox5VncHNt" role="33vP2m">
              <node concept="3b6qkQ" id="41ox5VncHNu" role="3uHU7w">
                <property role="$nhwW" value="1000." />
              </node>
              <node concept="1eOMI4" id="41ox5VncHNv" role="3uHU7B">
                <node concept="3cpWsd" id="41ox5VncHNw" role="1eOMHV">
                  <node concept="37vLTw" id="41ox5VncHNx" role="3uHU7w">
                    <ref role="3cqZAo" node="41ox5VncH5A" resolve="time" />
                  </node>
                  <node concept="2YIFZM" id="41ox5VncHNy" role="3uHU7B">
                    <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                    <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="41ox5VncHNz" role="3cqZAp">
          <node concept="2YIFZM" id="41ox5VncHN$" role="3clFbG">
            <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
            <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
            <node concept="2YIFZM" id="41ox5VncHN_" role="37wK5m">
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <ref role="37wK5l" to="e2lb:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
              <node concept="Xl_RD" id="41ox5VncHNA" role="37wK5m">
                <property role="Xl_RC" value="OK -- launching rules (took %2.1f sec.)" />
              </node>
              <node concept="37vLTw" id="41ox5VncHNB" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VncHNr" resolve="elapsed" />
              </node>
            </node>
            <node concept="Xl_RD" id="41ox5VncHNC" role="37wK5m">
              <property role="Xl_RC" value="Launch Rules" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="41ox5VnrcxT" role="3cqZAp">
          <node concept="2OqwBi" id="41ox5VnrcxN" role="3clFbG">
            <node concept="2WthIp" id="41ox5VnrcxQ" role="2Oq$k0" />
            <node concept="2XshWL" id="41ox5VnrcxS" role="2OqNvi">
              <ref role="2WH_rO" node="41ox5VnrbxH" resolve="stepFour" />
              <node concept="37vLTw" id="41ox5VnrkxL" role="2XxRq1">
                <ref role="3cqZAo" node="41ox5VnrfzM" resolve="types" />
              </node>
              <node concept="2YIFZM" id="41ox5VnrcR0" role="2XxRq1">
                <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12TFIqWsWaJ" role="3clF45" />
      <node concept="3Tm6S6" id="12TFIqWsW79" role="1B3o_S" />
      <node concept="37vLTG" id="41ox5VncH5A" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3cpWsb" id="41ox5VncH5_" role="1tU5fm" />
      </node>
    </node>
    <node concept="2XrIbr" id="41ox5VnrbxH" role="32lrUH">
      <property role="TrG5h" value="stepFour" />
      <node concept="37vLTG" id="41ox5VnrgGk" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3uibUv" id="41ox5VnrgUP" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="41ox5VnrgUQ" role="11_B2D" />
          <node concept="17QB3L" id="41ox5VnrgUR" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5Vnrc77" role="3clF46">
        <property role="TrG5h" value="time" />
        <node concept="3cpWsb" id="41ox5Vnrccy" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="41ox5VnrbxI" role="3clF47">
        <node concept="1QHqEK" id="41ox5VnrlmH" role="3cqZAp">
          <node concept="1QHqEC" id="41ox5VnrlmJ" role="1QHqEI">
            <node concept="3clFbS" id="41ox5VnrlmL" role="1bW5cS">
              <node concept="3clFbF" id="41ox5VnrdIS" role="3cqZAp">
                <node concept="2YIFZM" id="41ox5VnrdL2" role="3clFbG">
                  <ref role="37wK5l" node="41ox5VnqukP" resolve="markAll" />
                  <ref role="1Pybhc" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
                  <node concept="2OqwBi" id="41ox5VnrdNA" role="37wK5m">
                    <node concept="2WthIp" id="41ox5VnrdND" role="2Oq$k0" />
                    <node concept="1DTwFV" id="41ox5VnrdNF" role="2OqNvi">
                      <ref role="2WH_rO" node="41ox5VnnCZG" resolve="editorComponent" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="41ox5VnrdSf" role="37wK5m">
                    <node concept="2OqwBi" id="41ox5VnrdRc" role="2Oq$k0">
                      <node concept="2WthIp" id="41ox5VnrdRf" role="2Oq$k0" />
                      <node concept="1DTwFV" id="41ox5VnrdRh" role="2OqNvi">
                        <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="41ox5VnrehC" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="41ox5VnrhOK" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5VnrgGk" resolve="types" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnrdjA" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5Vnrm_e" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5Vnrm_f" role="3cpWs9">
            <property role="TrG5h" value="elapsed" />
            <node concept="10P55v" id="41ox5Vnrm_g" role="1tU5fm" />
            <node concept="FJ1c_" id="41ox5Vnrm_h" role="33vP2m">
              <node concept="3b6qkQ" id="41ox5Vnrm_i" role="3uHU7w">
                <property role="$nhwW" value="1000." />
              </node>
              <node concept="1eOMI4" id="41ox5Vnrm_j" role="3uHU7B">
                <node concept="3cpWsd" id="41ox5Vnrm_k" role="1eOMHV">
                  <node concept="37vLTw" id="41ox5Vnrm_l" role="3uHU7w">
                    <ref role="3cqZAo" node="41ox5Vnrc77" resolve="time" />
                  </node>
                  <node concept="2YIFZM" id="41ox5Vnrm_m" role="3uHU7B">
                    <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                    <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="41ox5Vnrm_n" role="3cqZAp">
          <node concept="2YIFZM" id="41ox5Vnrm_o" role="3clFbG">
            <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
            <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
            <node concept="2YIFZM" id="41ox5Vnrm_p" role="37wK5m">
              <ref role="37wK5l" to="e2lb:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
              <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
              <node concept="Xl_RD" id="41ox5Vnrm_q" role="37wK5m">
                <property role="Xl_RC" value="OK -- highlighting types (took %2.1f sec.)" />
              </node>
              <node concept="37vLTw" id="41ox5Vnrm_r" role="37wK5m">
                <ref role="3cqZAo" node="41ox5Vnrm_f" resolve="elapsed" />
              </node>
            </node>
            <node concept="Xl_RD" id="41ox5Vnrm_s" role="37wK5m">
              <property role="Xl_RC" value="Highlighting Types" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5Vnrmso" role="3cqZAp" />
      </node>
      <node concept="3cqZAl" id="41ox5Vnrc44" role="3clF45" />
      <node concept="3Tm6S6" id="41ox5VnrbYH" role="1B3o_S" />
    </node>
    <node concept="tnohg" id="3Qp4N06byo$" role="tncku">
      <node concept="3clFbS" id="3Qp4N06byo_" role="2VODD2">
        <node concept="3cpWs8" id="41ox5VnnK08" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnnK09" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="41ox5VnnK04" role="1tU5fm">
              <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="41ox5VnnK0a" role="33vP2m">
              <node concept="2WthIp" id="41ox5VnnK0b" role="2Oq$k0" />
              <node concept="1DTwFV" id="41ox5VnnK0c" role="2OqNvi">
                <ref role="2WH_rO" node="41ox5VnnCZG" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12TFIqWsU3A" role="3cqZAp">
          <node concept="2OqwBi" id="12TFIqWsU3w" role="3clFbG">
            <node concept="2WthIp" id="12TFIqWsU3z" role="2Oq$k0" />
            <node concept="2XshWL" id="12TFIqWsU3_" role="2OqNvi">
              <ref role="2WH_rO" node="12TFIqWsK4U" resolve="stepOne" />
              <node concept="2YIFZM" id="41ox5Vnc$JH" role="2XxRq1">
                <ref role="37wK5l" to="e2lb:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7iCFfvQBVbg" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="5xh9:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQBVbh" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2Rw7mr8Sq3T" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="5xh9:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="2Rw7mr8Sq3U" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="41ox5VnnCZG" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="1d7m:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="41ox5VnnCZH" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="2Rw7mr8TSxK" role="tmbBb">
      <node concept="3clFbS" id="2Rw7mr8TSxL" role="2VODD2">
        <node concept="3cpWs8" id="41ox5Vnp7Bt" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5Vnp7Bu" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="41ox5Vnp7U9" role="1tU5fm" />
            <node concept="2OqwBi" id="41ox5Vnp7Bv" role="33vP2m">
              <node concept="2OqwBi" id="41ox5Vnp7Bw" role="2Oq$k0">
                <node concept="2WthIp" id="41ox5Vnp7Bx" role="2Oq$k0" />
                <node concept="1DTwFV" id="41ox5Vnp7By" role="2OqNvi">
                  <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="41ox5Vnp7Bz" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Rw7mr8TSMf" role="3cqZAp">
          <node concept="1Wc70l" id="7RDCjSXjOFl" role="3clFbG">
            <node concept="1Wc70l" id="41ox5VnphRn" role="3uHU7B">
              <node concept="3clFbC" id="41ox5Vnpi9e" role="3uHU7w">
                <node concept="37vLTw" id="41ox5Vnpi2l" role="3uHU7B">
                  <ref role="3cqZAo" node="41ox5Vnp7Bu" resolve="containingRoot" />
                </node>
                <node concept="2OqwBi" id="41ox5Vnpifo" role="3uHU7w">
                  <node concept="2OqwBi" id="41ox5Vnpifp" role="2Oq$k0">
                    <node concept="2WthIp" id="41ox5Vnpifq" role="2Oq$k0" />
                    <node concept="1DTwFV" id="41ox5Vnpifr" role="2OqNvi">
                      <ref role="2WH_rO" node="41ox5VnnCZG" resolve="editorComponent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="41ox5Vnpifs" role="2OqNvi">
                    <ref role="37wK5l" to="9a8:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2Rw7mr8TWBB" role="3uHU7B">
                <node concept="37vLTw" id="41ox5Vnp8ei" role="2Oq$k0">
                  <ref role="3cqZAo" node="41ox5Vnp7Bu" resolve="containingRoot" />
                </node>
                <node concept="1mIQ4w" id="2Rw7mr8TX6F" role="2OqNvi">
                  <node concept="chp4Y" id="2Rw7mr8TXrh" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7RDCjSXjOZH" role="3uHU7w">
              <node concept="2OqwBi" id="7RDCjSXjOZJ" role="3fr31v">
                <node concept="2YIFZM" id="7RDCjSXjOZK" role="2Oq$k0">
                  <ref role="37wK5l" to="hfuk:7yGn3z4MRr2" resolve="get" />
                  <ref role="1Pybhc" to="hfuk:7yGn3z4MRqM" resolve="IMakeService.INSTANCE" />
                </node>
                <node concept="liA8E" id="7RDCjSXjOZL" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:7yGn3z4N64o" resolve="isSessionActive" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="2Rw7mr8T72C">
    <property role="TrG5h" value="TestRuleTemplateGroup" />
    <node concept="ftmFs" id="2Rw7mr8T79R" role="ftER_">
      <node concept="tCFHf" id="2Rw7mr8T7aK" role="ftvYc">
        <ref role="tCJdB" node="3Qp4N06byoz" resolve="TestRuleTemplate" />
      </node>
      <node concept="tCFHf" id="41ox5VnrVW_" role="ftvYc">
        <ref role="tCJdB" node="41ox5VnrUX7" resolve="ClearMarks" />
      </node>
    </node>
    <node concept="tT9cl" id="2Rw7mr8T789" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
      <ref role="2f8Tey" to="ekwn:1xsN4xJX8VY" resolve="debug" />
    </node>
  </node>
  <node concept="312cEu" id="7RDCjSXgvZa">
    <property role="TrG5h" value="MakeCollectedRules" />
    <node concept="2tJIrI" id="7RDCjSXgw6p" role="jymVt" />
    <node concept="2YIFZL" id="7RDCjSXjQEP" role="jymVt">
      <property role="TrG5h" value="make" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7RDCjSXjN6S" role="3clF47">
        <node concept="3cpWs8" id="7RDCjSXjN6T" role="3cqZAp">
          <node concept="3cpWsn" id="7RDCjSXjN6U" role="3cpWs9">
            <property role="TrG5h" value="chrModel" />
            <node concept="H_c77" id="7RDCjSXjN6V" role="1tU5fm" />
            <node concept="BaHAS" id="7RDCjSXjN6W" role="33vP2m">
              <property role="BaBD8" value="sand.jchr" />
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.chr" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7RDCjSXjN6X" role="3cqZAp" />
        <node concept="3clFbF" id="7RDCjSXjUm3" role="3cqZAp">
          <node concept="1rXfSq" id="7RDCjSXjUm1" role="3clFbG">
            <ref role="37wK5l" node="7RDCjSXjQOU" resolve="doMake" />
            <node concept="37vLTw" id="7RDCjSXjUpk" role="37wK5m">
              <ref role="3cqZAo" node="7RDCjSXjN6U" resolve="chrModel" />
            </node>
            <node concept="37vLTw" id="7RDCjSXjUt5" role="37wK5m">
              <ref role="3cqZAo" node="7RDCjSXjN6K" resolve="mpsProject" />
            </node>
            <node concept="3clFbT" id="7RDCjSXjUvS" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="7RDCjSXjUyM" role="37wK5m">
              <ref role="3cqZAo" node="7RDCjSXjN6M" resolve="cont" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7RDCjSXjN6K" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7RDCjSXjN6L" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7RDCjSXjN6M" role="3clF46">
        <property role="TrG5h" value="cont" />
        <node concept="1ajhzC" id="7RDCjSXjN6N" role="1tU5fm">
          <node concept="3cqZAl" id="7RDCjSXjN6O" role="1ajl9A" />
          <node concept="3uibUv" id="7RDCjSXjN6P" role="1ajw0F">
            <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="41ox5VnbI$T" role="3clF45" />
      <node concept="3Tm1VV" id="7RDCjSXjN75" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7RDCjSXiqW3" role="jymVt" />
    <node concept="2YIFZL" id="7RDCjSXjQOU" role="jymVt">
      <property role="TrG5h" value="doMake" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7RDCjSXirkq" role="3clF47">
        <node concept="3clFbJ" id="1Y18t$8Yi_s" role="3cqZAp">
          <node concept="3clFbS" id="1Y18t$8Yi_v" role="3clFbx">
            <node concept="YS8fn" id="1Y18t$8YBiV" role="3cqZAp">
              <node concept="2ShNRf" id="1Y18t$8YBkF" role="YScLw">
                <node concept="1pGfFk" id="1Y18t$8YCHx" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7RDCjSXirrl" role="37wK5m">
                    <property role="Xl_RC" value="make must not be called from inside a command" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1Y18t$8YAKy" role="3clFbw">
            <node concept="2YIFZM" id="1Y18t$8YAsV" role="2Oq$k0">
              <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
              <ref role="37wK5l" to="cu2c:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
            </node>
            <node concept="liA8E" id="1Y18t$8YBcr" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~ModelCommandExecutor.isInsideCommand():boolean" resolve="isInsideCommand" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7RDCjSXiM5A" role="3cqZAp" />
        <node concept="3clFbF" id="5wEedBsf44S" role="3cqZAp">
          <node concept="2OqwBi" id="5wEedBsf6W2" role="3clFbG">
            <node concept="2OqwBi" id="5wEedBsf4g0" role="2Oq$k0">
              <node concept="liA8E" id="4j8HkbSLZ$3" role="2OqNvi">
                <ref role="37wK5l" to="vsqj:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
              <node concept="37vLTw" id="5wEedBsf44R" role="2Oq$k0">
                <ref role="3cqZAo" node="7RDCjSXiLWv" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="5wEedBsf7W$" role="2OqNvi">
              <ref role="37wK5l" to="88zw:~ModelAccess.executeCommand(java.lang.Runnable):void" resolve="executeCommand" />
              <node concept="1bVj0M" id="5wEedBsf8nZ" role="37wK5m">
                <node concept="3clFbS" id="5wEedBsf8o0" role="1bW5cS">
                  <node concept="3clFbF" id="5wEedBsf8X1" role="3cqZAp">
                    <node concept="2OqwBi" id="5wEedBsfahx" role="3clFbG">
                      <node concept="liA8E" id="5wEedBsfaR$" role="2OqNvi">
                        <ref role="37wK5l" to="88zw:~SRepository.saveAll():void" resolve="saveAll" />
                      </node>
                      <node concept="2OqwBi" id="5wEedBsf96I" role="2Oq$k0">
                        <node concept="liA8E" id="5wEedBsfaaj" role="2OqNvi">
                          <ref role="37wK5l" to="vsqj:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                        </node>
                        <node concept="37vLTw" id="5wEedBsf8X0" role="2Oq$k0">
                          <ref role="3cqZAo" node="7RDCjSXiLWv" resolve="project" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7RDCjSXirp3" role="3cqZAp" />
        <node concept="3cpWs8" id="7RDCjSXjvCO" role="3cqZAp">
          <node concept="3cpWsn" id="7RDCjSXjvCP" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="7RDCjSXjvCI" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="2ShNRf" id="7RDCjSXjvCQ" role="33vP2m">
              <node concept="1pGfFk" id="7RDCjSXjvCR" role="2ShVmc">
                <ref role="37wK5l" to="hfuk:2BjwmTxT7Q7" resolve="MakeSession" />
                <node concept="37vLTw" id="7RDCjSXjvCS" role="37wK5m">
                  <ref role="3cqZAo" node="7RDCjSXiLWv" resolve="project" />
                </node>
                <node concept="2ShNRf" id="7RDCjSXjvCT" role="37wK5m">
                  <node concept="1pGfFk" id="7RDCjSXjvCU" role="2ShVmc">
                    <ref role="37wK5l" to="odgu:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
                    <node concept="37vLTw" id="7RDCjSXjvCV" role="37wK5m">
                      <ref role="3cqZAo" node="7RDCjSXiLWv" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7RDCjSXjvCW" role="37wK5m">
                  <ref role="3cqZAo" node="7RDCjSXjv2d" resolve="clean" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7RDCjSXiMfL" role="3cqZAp" />
        <node concept="3clFbJ" id="1AfPmE4tJRS" role="3cqZAp">
          <node concept="2OqwBi" id="1AfPmE4tJRT" role="3clFbw">
            <node concept="2YIFZM" id="1AfPmE4tJRU" role="2Oq$k0">
              <ref role="1Pybhc" to="hfuk:7yGn3z4MRqM" resolve="IMakeService.INSTANCE" />
              <ref role="37wK5l" to="hfuk:7yGn3z4MRr2" resolve="get" />
            </node>
            <node concept="liA8E" id="1AfPmE4tJRV" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:7yGn3z4N63W" resolve="openNewSession" />
              <node concept="37vLTw" id="3GM_nagTyAS" role="37wK5m">
                <ref role="3cqZAo" node="7RDCjSXjvCP" resolve="session" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1AfPmE4tJRX" role="3clFbx">
            <node concept="3clFbH" id="7RDCjSXjDad" role="3cqZAp" />
            <node concept="3cpWs8" id="7RDCjSXjBjF" role="3cqZAp">
              <node concept="3cpWsn" id="7RDCjSXjBjG" role="3cpWs9">
                <property role="TrG5h" value="future" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="7RDCjSXjBjz" role="1tU5fm">
                  <ref role="3uigEE" to="53gy:~Future" resolve="Future" />
                  <node concept="3uibUv" id="7RDCjSXjBjA" role="11_B2D">
                    <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7RDCjSXjBjH" role="33vP2m">
                  <node concept="2YIFZM" id="7RDCjSXjBjI" role="2Oq$k0">
                    <ref role="37wK5l" to="hfuk:7yGn3z4MRr2" resolve="get" />
                    <ref role="1Pybhc" to="hfuk:7yGn3z4MRqM" resolve="IMakeService.INSTANCE" />
                  </node>
                  <node concept="liA8E" id="7RDCjSXjBjJ" role="2OqNvi">
                    <ref role="37wK5l" to="hfuk:7yGn3z4N64K" resolve="make" />
                    <node concept="37vLTw" id="7RDCjSXjBjK" role="37wK5m">
                      <ref role="3cqZAo" node="7RDCjSXjvCP" resolve="session" />
                    </node>
                    <node concept="1rXfSq" id="7RDCjSXjBjL" role="37wK5m">
                      <ref role="37wK5l" node="7RDCjSXjYVR" resolve="input" />
                      <node concept="37vLTw" id="7RDCjSXjBjM" role="37wK5m">
                        <ref role="3cqZAo" node="7RDCjSXiIOt" resolve="rulesModel" />
                      </node>
                      <node concept="37vLTw" id="7RDCjSXjBjN" role="37wK5m">
                        <ref role="3cqZAo" node="7RDCjSXjv2d" resolve="clean" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7RDCjSXl$O4" role="3cqZAp" />
            <node concept="3SKdUt" id="41ox5VnbG1p" role="3cqZAp">
              <node concept="3SKdUq" id="41ox5VnbG9_" role="3SKWNk">
                <property role="3SKdUp" value="await the make results from a separate thread so as no to block the EDT" />
              </node>
            </node>
            <node concept="3clFbF" id="7RDCjSXnhQ$" role="3cqZAp">
              <node concept="2OqwBi" id="7RDCjSXnjl3" role="3clFbG">
                <node concept="2ShNRf" id="7RDCjSXnhQw" role="2Oq$k0">
                  <node concept="YeOm9" id="7RDCjSXniEJ" role="2ShVmc">
                    <node concept="1Y3b0j" id="7RDCjSXniEM" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="e2lb:~Thread" resolve="Thread" />
                      <ref role="37wK5l" to="e2lb:~Thread.&lt;init&gt;(java.lang.String)" resolve="Thread" />
                      <node concept="3Tm1VV" id="7RDCjSXniEN" role="1B3o_S" />
                      <node concept="Xl_RD" id="7RDCjSXniB7" role="37wK5m">
                        <property role="Xl_RC" value="waiting for make result" />
                      </node>
                      <node concept="3clFb_" id="7RDCjSXniG8" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="run" />
                        <property role="DiZV1" value="false" />
                        <property role="IEkAT" value="false" />
                        <node concept="3Tm1VV" id="7RDCjSXniG9" role="1B3o_S" />
                        <node concept="3cqZAl" id="7RDCjSXniGb" role="3clF45" />
                        <node concept="3clFbS" id="7RDCjSXniGd" role="3clF47">
                          <node concept="SfApY" id="7RDCjSXk2C_" role="3cqZAp">
                            <node concept="3clFbS" id="7RDCjSXk2CB" role="SfCbr">
                              <node concept="3cpWs8" id="7RDCjSXjMeF" role="3cqZAp">
                                <node concept="3cpWsn" id="7RDCjSXjMeG" role="3cpWs9">
                                  <property role="TrG5h" value="res" />
                                  <node concept="3uibUv" id="7RDCjSXjMeg" role="1tU5fm">
                                    <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                                  </node>
                                  <node concept="2OqwBi" id="7RDCjSXjMeH" role="33vP2m">
                                    <node concept="37vLTw" id="7RDCjSXjMeI" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7RDCjSXjBjG" resolve="future" />
                                    </node>
                                    <node concept="liA8E" id="7RDCjSXjMeJ" role="2OqNvi">
                                      <ref role="37wK5l" to="53gy:~Future.get():java.lang.Object" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3SKdUt" id="41ox5VnbFBa" role="3cqZAp">
                                <node concept="3SKdUq" id="41ox5VnbFEl" role="3SKWNk">
                                  <property role="3SKdUp" value="call the continuation from the EDT" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="7RDCjSXjJy5" role="3cqZAp">
                                <node concept="2YIFZM" id="7RDCjSXjL3O" role="3clFbG">
                                  <ref role="37wK5l" to="dbrf:~SwingUtilities.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
                                  <ref role="1Pybhc" to="dbrf:~SwingUtilities" resolve="SwingUtilities" />
                                  <node concept="1bVj0M" id="7RDCjSXjL7F" role="37wK5m">
                                    <node concept="3clFbS" id="7RDCjSXjL7G" role="1bW5cS">
                                      <node concept="3clFbF" id="7RDCjSXjLdN" role="3cqZAp">
                                        <node concept="2Sg_IR" id="7RDCjSXjLtE" role="3clFbG">
                                          <node concept="37vLTw" id="7RDCjSXjLtF" role="2SgG2M">
                                            <ref role="3cqZAo" node="7RDCjSXjBWx" resolve="cont" />
                                          </node>
                                          <node concept="37vLTw" id="7RDCjSXjMsJ" role="2SgHGx">
                                            <ref role="3cqZAo" node="7RDCjSXjMeG" resolve="res" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="7RDCjSXk2CA" role="3cqZAp" />
                            </node>
                            <node concept="TDmWw" id="7RDCjSXk2CC" role="TEbGg">
                              <node concept="3cpWsn" id="7RDCjSXk2CE" role="TDEfY">
                                <property role="TrG5h" value="e" />
                                <node concept="3uibUv" id="7RDCjSXlXhD" role="1tU5fm">
                                  <ref role="3uigEE" to="e2lb:~Throwable" resolve="Throwable" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="7RDCjSXk2CI" role="TDEfX">
                                <node concept="34ab3g" id="7RDCjSXk39d" role="3cqZAp">
                                  <property role="35gtTG" value="error" />
                                  <property role="34fQS0" value="true" />
                                  <node concept="Xl_RD" id="7RDCjSXk39f" role="34bqiv">
                                    <property role="Xl_RC" value="Exception during make" />
                                  </node>
                                  <node concept="37vLTw" id="7RDCjSXk39h" role="34bMjA">
                                    <ref role="3cqZAo" node="7RDCjSXk2CE" resolve="e" />
                                  </node>
                                </node>
                                <node concept="3clFbH" id="7RDCjSXk3e9" role="3cqZAp" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7RDCjSXniGe" role="2AJF6D">
                          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7RDCjSXnjII" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~Thread.start():void" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnbGlv" role="3cqZAp" />
            <node concept="3cpWs6" id="41ox5VnbGyI" role="3cqZAp">
              <node concept="3clFbT" id="41ox5VnbGMv" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnbHj3" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="41ox5VnbHuN" role="9aQIa">
            <node concept="3clFbS" id="41ox5VnbHuO" role="9aQI4">
              <node concept="3cpWs6" id="41ox5VnbHGK" role="3cqZAp">
                <node concept="3clFbT" id="41ox5VnbHI3" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7RDCjSXiIOt" role="3clF46">
        <property role="TrG5h" value="rulesModel" />
        <node concept="H_c77" id="7RDCjSXiITg" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7RDCjSXiLWv" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7RDCjSXiM1x" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7RDCjSXjv2d" role="3clF46">
        <property role="TrG5h" value="clean" />
        <node concept="10P_77" id="7RDCjSXjv8A" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7RDCjSXjBWx" role="3clF46">
        <property role="TrG5h" value="cont" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="7RDCjSXjBWy" role="1tU5fm">
          <node concept="3cqZAl" id="7RDCjSXjBWz" role="1ajl9A" />
          <node concept="3uibUv" id="7RDCjSXjBW$" role="1ajw0F">
            <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="41ox5VnbIkL" role="3clF45" />
      <node concept="3Tm6S6" id="7RDCjSXirl4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7RDCjSXg_hu" role="jymVt" />
    <node concept="2YIFZL" id="7RDCjSXjYVR" role="jymVt">
      <property role="TrG5h" value="input" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7RDCjSXis5p" role="3clF47">
        <node concept="3clFbF" id="7RDCjSXitVM" role="3cqZAp">
          <node concept="2OqwBi" id="7RDCjSXiIwQ" role="3clFbG">
            <node concept="2ShNRf" id="7RDCjSXitVK" role="2Oq$k0">
              <node concept="1pGfFk" id="7RDCjSXiHUA" role="2ShVmc">
                <ref role="37wK5l" to="fn29:6zsZmIC0WqK" resolve="ModelsToResources" />
                <node concept="2ShNRf" id="7RDCjSXiHV9" role="37wK5m">
                  <node concept="2HTt$P" id="7RDCjSXiIfW" role="2ShVmc">
                    <node concept="37vLTw" id="7RDCjSXiIvM" role="2HTEbv">
                      <ref role="3cqZAo" node="7RDCjSXitI4" resolve="rulesModel" />
                    </node>
                    <node concept="H_c77" id="7RDCjSXiIrD" role="2HTBi0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7RDCjSXiIDD" role="2OqNvi">
              <ref role="37wK5l" to="fn29:6gLh390ElAV" resolve="resources" />
              <node concept="37vLTw" id="7RDCjSXjvu3" role="37wK5m">
                <ref role="3cqZAo" node="7RDCjSXjvmf" resolve="clean" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7RDCjSXitI4" role="3clF46">
        <property role="TrG5h" value="rulesModel" />
        <node concept="H_c77" id="7RDCjSXitO9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7RDCjSXjvmf" role="3clF46">
        <property role="TrG5h" value="clean" />
        <node concept="10P_77" id="7RDCjSXjvrE" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="7RDCjSXisc5" role="3clF45">
        <node concept="3uibUv" id="7RDCjSXjARY" role="A3Ik2">
          <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7RDCjSXis5o" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7RDCjSXirYJ" role="jymVt" />
    <node concept="3Tm1VV" id="7RDCjSXgvZb" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="41ox5Vnk76a">
    <property role="TrG5h" value="RunTypecheckingRules" />
    <node concept="2tJIrI" id="41ox5Vnk7ln" role="jymVt" />
    <node concept="2YIFZL" id="41ox5Vnkht$" role="jymVt">
      <property role="TrG5h" value="runTypecheckingRules" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="41ox5VnkgxM" role="3clF47">
        <node concept="3clFbF" id="41ox5VnkYST" role="3cqZAp">
          <node concept="2YIFZM" id="41ox5VnkZgE" role="3clFbG">
            <ref role="37wK5l" to="cu2c:~ModelAccess.assertLegalRead():void" resolve="assertLegalRead" />
            <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnkhIX" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VnkhLu" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnkhLv" role="3cpWs9">
            <property role="TrG5h" value="handlerMdl" />
            <node concept="H_c77" id="41ox5VnkhLw" role="1tU5fm" />
            <node concept="BaHAS" id="41ox5VnkhLx" role="33vP2m">
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.chr" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="41ox5VnkhLy" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnkhLz" role="3cpWs9">
            <property role="TrG5h" value="handlerMod" />
            <node concept="3uibUv" id="41ox5VnkhL$" role="1tU5fm">
              <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="41ox5VnkhL_" role="33vP2m">
              <node concept="2JrnkZ" id="41ox5VnkhLA" role="2Oq$k0">
                <node concept="37vLTw" id="41ox5VnkhLB" role="2JrQYb">
                  <ref role="3cqZAo" node="41ox5VnkhLv" resolve="handlerMdl" />
                </node>
              </node>
              <node concept="liA8E" id="41ox5VnkhLC" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnkhLD" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VnkhLE" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnkhLF" role="3cpWs9">
            <property role="TrG5h" value="sample" />
            <node concept="3uibUv" id="41ox5VnkhLG" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="1zN1RIkMMBr" role="33vP2m">
              <ref role="37wK5l" to="4t1t:4peSo3CD1Kr" resolve="anchorTree" />
              <ref role="1Pybhc" to="4t1t:4peSo3CD1Kp" resolve="AnchorUtil" />
              <node concept="37vLTw" id="1zN1RIkMMBs" role="37wK5m">
                <ref role="3cqZAo" node="1zN1RIkMJJI" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1zN1RIkMLph" role="3cqZAp" />
        <node concept="SfApY" id="41ox5Vnkj0Z" role="3cqZAp">
          <node concept="3clFbS" id="41ox5Vnkj10" role="SfCbr">
            <node concept="3cpWs8" id="41ox5Vnki5M" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5Vnki5N" role="3cpWs9">
                <property role="TrG5h" value="handlerCls" />
                <node concept="3uibUv" id="41ox5Vnki5O" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                  <node concept="3uibUv" id="41ox5Vnl$GR" role="11_B2D">
                    <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
                  </node>
                </node>
                <node concept="10QFUN" id="41ox5Vnl_aU" role="33vP2m">
                  <node concept="3uibUv" id="41ox5Vnl_aJ" role="10QFUM">
                    <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                    <node concept="3uibUv" id="41ox5Vnl_aK" role="11_B2D">
                      <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="41ox5Vnl_aL" role="10QFUP">
                    <node concept="1eOMI4" id="41ox5Vnl_aM" role="2Oq$k0">
                      <node concept="10QFUN" id="41ox5Vnl_aN" role="1eOMHV">
                        <node concept="37vLTw" id="41ox5Vnl_aO" role="10QFUP">
                          <ref role="3cqZAo" node="41ox5VnkhLz" resolve="handlerMod" />
                        </node>
                        <node concept="3uibUv" id="41ox5Vnl_aP" role="10QFUM">
                          <ref role="3uigEE" to="42ru:~ReloadableModuleBase" resolve="ReloadableModuleBase" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="41ox5Vnl_aQ" role="2OqNvi">
                      <ref role="37wK5l" to="42ru:~ReloadableModuleBase.getClass(java.lang.String):java.lang.Class" resolve="getClass" />
                      <node concept="2YIFZM" id="41ox5Vnl_aR" role="37wK5m">
                        <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
                        <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
                        <node concept="37vLTw" id="41ox5Vnl_aS" role="37wK5m">
                          <ref role="3cqZAo" node="41ox5VnkhLv" resolve="handlerMdl" />
                        </node>
                        <node concept="Xl_RD" id="41ox5Vnl_aT" role="37wK5m">
                          <property role="Xl_RC" value="TestHandlerHandler" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5Vnki5Z" role="3cqZAp" />
            <node concept="3cpWs8" id="41ox5Vnmwca" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5Vnmwcb" role="3cpWs9">
                <property role="TrG5h" value="handler" />
                <node concept="3uibUv" id="41ox5Vnmwcc" role="1tU5fm">
                  <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
                </node>
                <node concept="1rXfSq" id="41ox5Vnmwcd" role="33vP2m">
                  <ref role="37wK5l" node="41ox5Vnkbyp" resolve="callTellCheck" />
                  <node concept="37vLTw" id="41ox5Vnmwce" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5Vnki5N" resolve="handlerCls" />
                  </node>
                  <node concept="37vLTw" id="41ox5Vnmwcf" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5VnkhLF" resolve="sample" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnmKCw" role="3cqZAp" />
            <node concept="3cpWs6" id="41ox5VnmOH8" role="3cqZAp">
              <node concept="2YIFZM" id="3gJBs5syWo7" role="3cqZAk">
                <ref role="1Pybhc" node="41ox5Vnk76a" resolve="RunTypecheckingRules" />
                <ref role="37wK5l" node="3gJBs5syUqI" resolve="collectTypes" />
                <node concept="37vLTw" id="3gJBs5syWo8" role="37wK5m">
                  <ref role="3cqZAo" node="41ox5Vnmwcb" resolve="handler" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnkhTV" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="41ox5Vnkj0R" role="TEbGg">
            <node concept="3clFbS" id="41ox5Vnkj0S" role="TDEfX">
              <node concept="YS8fn" id="41ox5VnktR8" role="3cqZAp">
                <node concept="2ShNRf" id="41ox5VnktRu" role="YScLw">
                  <node concept="1pGfFk" id="41ox5VnkEqN" role="2ShVmc">
                    <ref role="37wK5l" to="e2lb:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="41ox5VnkEDR" role="37wK5m">
                      <ref role="3cqZAo" node="41ox5Vnkj0T" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="41ox5Vnkj0T" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="41ox5Vnkj0U" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~ClassNotFoundException" resolve="ClassNotFoundException" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="41ox5Vnm$cc" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="41ox5VnmMle" role="11_B2D" />
        <node concept="17QB3L" id="41ox5VnmMpG" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="41ox5VnkgxL" role="1B3o_S" />
      <node concept="37vLTG" id="1zN1RIkMJJI" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="1zN1RIkMJJH" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gJBs5syXew" role="jymVt" />
    <node concept="2YIFZL" id="3gJBs5syUqI" role="jymVt">
      <property role="TrG5h" value="collectTypes" />
      <node concept="3Tm6S6" id="3gJBs5syUqJ" role="1B3o_S" />
      <node concept="3uibUv" id="3gJBs5syUqK" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="3gJBs5syUqL" role="11_B2D" />
        <node concept="17QB3L" id="3gJBs5syUqM" role="11_B2D" />
      </node>
      <node concept="37vLTG" id="3gJBs5syUq$" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="3gJBs5syUq_" role="1tU5fm">
          <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3clFbS" id="3gJBs5syUmj" role="3clF47">
        <node concept="3cpWs8" id="3gJBs5syUmm" role="3cqZAp">
          <node concept="3cpWsn" id="3gJBs5syUmn" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3gJBs5syUmo" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
              <node concept="17QB3L" id="3gJBs5syUmp" role="11_B2D" />
              <node concept="17QB3L" id="3gJBs5syUmq" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="3gJBs5syUmr" role="33vP2m">
              <node concept="1pGfFk" id="3gJBs5syUms" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="3gJBs5syUmt" role="1pMfVU" />
                <node concept="17QB3L" id="3gJBs5syUmu" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3gJBs5syUmv" role="3cqZAp">
          <node concept="3cpWsn" id="3gJBs5syUmw" role="3cpWs9">
            <property role="TrG5h" value="varnames" />
            <node concept="3uibUv" id="3gJBs5syUmx" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
              <node concept="17QB3L" id="3gJBs5syUmy" role="11_B2D" />
              <node concept="17QB3L" id="3gJBs5syUmz" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="3gJBs5syUm$" role="33vP2m">
              <node concept="1pGfFk" id="3gJBs5syUm_" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="3gJBs5syUmA" role="1pMfVU" />
                <node concept="17QB3L" id="3gJBs5syUmB" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3gJBs5syUmC" role="3cqZAp">
          <node concept="3cpWsn" id="3gJBs5syUmD" role="3cpWs9">
            <property role="TrG5h" value="ubounds" />
            <node concept="3uibUv" id="3gJBs5syUmE" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
              <node concept="17QB3L" id="3gJBs5syUmF" role="11_B2D" />
              <node concept="3uibUv" id="3gJBs5syUmG" role="11_B2D">
                <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
              </node>
            </node>
            <node concept="2ShNRf" id="3gJBs5syUmH" role="33vP2m">
              <node concept="1pGfFk" id="3gJBs5syUmI" role="2ShVmc">
                <ref role="37wK5l" to="k7g3:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="3gJBs5syUmJ" role="1pMfVU" />
                <node concept="3uibUv" id="3gJBs5syUmK" role="1pMfVU">
                  <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3gJBs5syUmL" role="3cqZAp" />
        <node concept="1DcWWT" id="3gJBs5syUmM" role="3cqZAp">
          <node concept="3clFbS" id="3gJBs5syUmN" role="2LFqv$">
            <node concept="3clFbJ" id="3gJBs5syUmO" role="3cqZAp">
              <node concept="3clFbS" id="3gJBs5syUmP" role="3clFbx">
                <node concept="3cpWs8" id="3gJBs5syUmQ" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUmR" role="3cpWs9">
                    <property role="TrG5h" value="args" />
                    <node concept="10Q1$e" id="3gJBs5syUmS" role="1tU5fm">
                      <node concept="3uibUv" id="3gJBs5syUmT" role="10Q1$1">
                        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3gJBs5syUmU" role="33vP2m">
                      <node concept="37vLTw" id="3gJBs5syUmV" role="2Oq$k0">
                        <ref role="3cqZAo" node="3gJBs5syUo1" resolve="c" />
                      </node>
                      <node concept="liA8E" id="3gJBs5syUmW" role="2OqNvi">
                        <ref role="37wK5l" to="w2rx:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3gJBs5syUmX" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUmY" role="3cpWs9">
                    <property role="TrG5h" value="typeLogical" />
                    <node concept="3uibUv" id="3gJBs5syUmZ" role="1tU5fm">
                      <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                    </node>
                    <node concept="10QFUN" id="3gJBs5syUn0" role="33vP2m">
                      <node concept="3uibUv" id="3gJBs5syUn1" role="10QFUM">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                      </node>
                      <node concept="AH0OO" id="3gJBs5syUn2" role="10QFUP">
                        <node concept="3cmrfG" id="3gJBs5syUn3" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="3gJBs5syUn4" role="AHHXb">
                          <ref role="3cqZAo" node="3gJBs5syUmR" resolve="args" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3gJBs5syUn5" role="3cqZAp">
                  <node concept="2OqwBi" id="3gJBs5syUn6" role="3clFbG">
                    <node concept="37vLTw" id="3gJBs5syUn7" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUmw" resolve="varnames" />
                    </node>
                    <node concept="liA8E" id="3gJBs5syUn8" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                      <node concept="2OqwBi" id="3gJBs5syUn9" role="37wK5m">
                        <node concept="2OqwBi" id="3gJBs5syUna" role="2Oq$k0">
                          <node concept="37vLTw" id="3gJBs5syUnb" role="2Oq$k0">
                            <ref role="3cqZAo" node="3gJBs5syUmY" resolve="typeLogical" />
                          </node>
                          <node concept="liA8E" id="3gJBs5syUnc" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3gJBs5syUnd" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:3HJTsBmCy5P" resolve="name" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="3gJBs5syUne" role="37wK5m">
                        <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                        <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                        <node concept="AH0OO" id="3gJBs5syUnf" role="37wK5m">
                          <node concept="3cmrfG" id="3gJBs5syUng" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="3gJBs5syUnh" role="AHHXb">
                            <ref role="3cqZAo" node="3gJBs5syUmR" resolve="args" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3gJBs5syUni" role="3clFbw">
                <node concept="Xl_RD" id="3gJBs5syUnj" role="2Oq$k0">
                  <property role="Xl_RC" value="varname" />
                </node>
                <node concept="liA8E" id="3gJBs5syUnk" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="3gJBs5syUnl" role="37wK5m">
                    <node concept="37vLTw" id="3gJBs5syUnm" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUo1" resolve="c" />
                    </node>
                    <node concept="liA8E" id="3gJBs5syUnn" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3gJBs5syUno" role="3cqZAp">
              <node concept="3clFbS" id="3gJBs5syUnp" role="3clFbx">
                <node concept="3cpWs8" id="3gJBs5syUnq" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUnr" role="3cpWs9">
                    <property role="TrG5h" value="args" />
                    <node concept="10Q1$e" id="3gJBs5syUns" role="1tU5fm">
                      <node concept="3uibUv" id="3gJBs5syUnt" role="10Q1$1">
                        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3gJBs5syUnu" role="33vP2m">
                      <node concept="37vLTw" id="3gJBs5syUnv" role="2Oq$k0">
                        <ref role="3cqZAo" node="3gJBs5syUo1" resolve="c" />
                      </node>
                      <node concept="liA8E" id="3gJBs5syUnw" role="2OqNvi">
                        <ref role="37wK5l" to="w2rx:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3gJBs5syUnx" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUny" role="3cpWs9">
                    <property role="TrG5h" value="typeLogical" />
                    <node concept="3uibUv" id="3gJBs5syUnz" role="1tU5fm">
                      <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                    </node>
                    <node concept="10QFUN" id="3gJBs5syUn$" role="33vP2m">
                      <node concept="3uibUv" id="3gJBs5syUn_" role="10QFUM">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                      </node>
                      <node concept="AH0OO" id="3gJBs5syUnA" role="10QFUP">
                        <node concept="3cmrfG" id="3gJBs5syUnB" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="3gJBs5syUnC" role="AHHXb">
                          <ref role="3cqZAo" node="3gJBs5syUnr" resolve="args" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3gJBs5syUnD" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUnE" role="3cpWs9">
                    <property role="TrG5h" value="boundLogical" />
                    <node concept="3uibUv" id="3gJBs5syUnF" role="1tU5fm">
                      <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                    </node>
                    <node concept="10QFUN" id="3gJBs5syUnG" role="33vP2m">
                      <node concept="3uibUv" id="3gJBs5syUnH" role="10QFUM">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                      </node>
                      <node concept="AH0OO" id="3gJBs5syUnI" role="10QFUP">
                        <node concept="3cmrfG" id="3gJBs5syUnJ" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="3gJBs5syUnK" role="AHHXb">
                          <ref role="3cqZAo" node="3gJBs5syUnr" resolve="args" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3gJBs5syUnL" role="3cqZAp">
                  <node concept="2OqwBi" id="3gJBs5syUnM" role="3clFbG">
                    <node concept="liA8E" id="3gJBs5syUnN" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                      <node concept="2OqwBi" id="3gJBs5syUnO" role="37wK5m">
                        <node concept="2OqwBi" id="3gJBs5syUnP" role="2Oq$k0">
                          <node concept="37vLTw" id="3gJBs5syUnQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3gJBs5syUny" resolve="typeLogical" />
                          </node>
                          <node concept="liA8E" id="3gJBs5syUnR" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3gJBs5syUnS" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:3HJTsBmCy5P" resolve="name" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3gJBs5syUnT" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5syUnE" resolve="boundLogical" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3gJBs5syUnU" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUmD" resolve="ubounds" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3gJBs5syUnV" role="3clFbw">
                <node concept="Xl_RD" id="3gJBs5syUnW" role="2Oq$k0">
                  <property role="Xl_RC" value="ubound" />
                </node>
                <node concept="liA8E" id="3gJBs5syUnX" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="3gJBs5syUnY" role="37wK5m">
                    <node concept="37vLTw" id="3gJBs5syUnZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUo1" resolve="c" />
                    </node>
                    <node concept="liA8E" id="3gJBs5syUo0" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3gJBs5syUo1" role="1Duv9x">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="3gJBs5syUo2" role="1tU5fm">
              <ref role="3uigEE" to="w2rx:~IConstraint" resolve="IConstraint" />
            </node>
          </node>
          <node concept="37vLTw" id="3gJBs5syUqB" role="1DdaDG">
            <ref role="3cqZAo" node="3gJBs5syUq$" resolve="handler" />
          </node>
        </node>
        <node concept="3clFbH" id="3gJBs5s_oFd" role="3cqZAp" />
        <node concept="3cpWs8" id="3gJBs5s_rPf" role="3cqZAp">
          <node concept="3cpWsn" id="3gJBs5s_rPg" role="3cpWs9">
            <property role="TrG5h" value="varSym" />
            <node concept="3uibUv" id="3gJBs5s_rOL" role="1tU5fm">
              <ref role="3uigEE" node="3gJBs5s_5u0" resolve="RunTypecheckingRules.TypeVarSymbol" />
            </node>
            <node concept="2ShNRf" id="3gJBs5s_rPh" role="33vP2m">
              <node concept="1pGfFk" id="3gJBs5s_rPi" role="2ShVmc">
                <ref role="37wK5l" node="3gJBs5s_a9H" resolve="RunTypecheckingRules.TypeVarSymbol" />
                <node concept="37vLTw" id="3gJBs5s_rPj" role="37wK5m">
                  <ref role="3cqZAo" node="3gJBs5syUmw" resolve="varnames" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3gJBs5syUo4" role="3cqZAp" />
        <node concept="1DcWWT" id="3gJBs5syUo5" role="3cqZAp">
          <node concept="3clFbS" id="3gJBs5syUo6" role="2LFqv$">
            <node concept="3clFbJ" id="3gJBs5syUo7" role="3cqZAp">
              <node concept="3clFbS" id="3gJBs5syUo8" role="3clFbx">
                <node concept="3cpWs8" id="3gJBs5syUo9" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUoa" role="3cpWs9">
                    <property role="TrG5h" value="args" />
                    <node concept="10Q1$e" id="3gJBs5syUob" role="1tU5fm">
                      <node concept="3uibUv" id="3gJBs5syUoc" role="10Q1$1">
                        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3gJBs5syUod" role="33vP2m">
                      <node concept="37vLTw" id="3gJBs5syUoe" role="2Oq$k0">
                        <ref role="3cqZAo" node="3gJBs5syUqv" resolve="c" />
                      </node>
                      <node concept="liA8E" id="3gJBs5syUof" role="2OqNvi">
                        <ref role="37wK5l" to="w2rx:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gJBs5syUog" role="3cqZAp" />
                <node concept="3cpWs8" id="3gJBs5syUoh" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUoi" role="3cpWs9">
                    <property role="TrG5h" value="typeLogical" />
                    <node concept="3uibUv" id="3gJBs5syUoj" role="1tU5fm">
                      <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                    </node>
                    <node concept="10QFUN" id="3gJBs5syUok" role="33vP2m">
                      <node concept="3uibUv" id="3gJBs5syUol" role="10QFUM">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                      </node>
                      <node concept="AH0OO" id="3gJBs5syUom" role="10QFUP">
                        <node concept="3cmrfG" id="3gJBs5syUon" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="3gJBs5syUoo" role="AHHXb">
                          <ref role="3cqZAo" node="3gJBs5syUoa" resolve="args" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3gJBs5syUop" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUoq" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="3uibUv" id="3gJBs5syUor" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                    <node concept="2OqwBi" id="3gJBs5syUos" role="33vP2m">
                      <node concept="2OqwBi" id="3gJBs5syUot" role="2Oq$k0">
                        <node concept="37vLTw" id="3gJBs5syUou" role="2Oq$k0">
                          <ref role="3cqZAo" node="3gJBs5syUoi" resolve="typeLogical" />
                        </node>
                        <node concept="liA8E" id="3gJBs5syUov" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3gJBs5syUow" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3gJBs5syUox" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUoy" role="3cpWs9">
                    <property role="TrG5h" value="var" />
                    <node concept="17QB3L" id="3gJBs5syUoz" role="1tU5fm" />
                    <node concept="2OqwBi" id="3gJBs5syUo$" role="33vP2m">
                      <node concept="2OqwBi" id="3gJBs5syUo_" role="2Oq$k0">
                        <node concept="37vLTw" id="3gJBs5syUoA" role="2Oq$k0">
                          <ref role="3cqZAo" node="3gJBs5syUoi" resolve="typeLogical" />
                        </node>
                        <node concept="liA8E" id="3gJBs5syUoB" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3gJBs5syUoC" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmCy5P" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gJBs5syUoD" role="3cqZAp" />
                <node concept="3cpWs8" id="3gJBs5syUoE" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUoF" role="3cpWs9">
                    <property role="TrG5h" value="prettyVar" />
                    <node concept="3uibUv" id="3gJBs5syUoG" role="1tU5fm">
                      <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
                    </node>
                    <node concept="2ShNRf" id="3gJBs5syUoH" role="33vP2m">
                      <node concept="1pGfFk" id="3gJBs5syUoI" role="2ShVmc">
                        <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                        <node concept="37vLTw" id="3gJBs5syUoJ" role="37wK5m">
                          <ref role="3cqZAo" node="3gJBs5syUoy" resolve="var" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3gJBs5syUoK" role="3cqZAp">
                  <node concept="3clFbS" id="3gJBs5syUoL" role="3clFbx">
                    <node concept="3clFbF" id="3gJBs5syUoM" role="3cqZAp">
                      <node concept="2OqwBi" id="3gJBs5syUoN" role="3clFbG">
                        <node concept="2OqwBi" id="3gJBs5syUoO" role="2Oq$k0">
                          <node concept="2OqwBi" id="3gJBs5syUoP" role="2Oq$k0">
                            <node concept="37vLTw" id="3gJBs5syUoQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gJBs5syUoF" resolve="prettyVar" />
                            </node>
                            <node concept="liA8E" id="3gJBs5syUoR" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="Xl_RD" id="3gJBs5syUoS" role="37wK5m">
                                <property role="Xl_RC" value=" \&quot;" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3gJBs5syUoT" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="2OqwBi" id="3gJBs5syUoU" role="37wK5m">
                              <node concept="37vLTw" id="3gJBs5syUoV" role="2Oq$k0">
                                <ref role="3cqZAo" node="3gJBs5syUmw" resolve="varnames" />
                              </node>
                              <node concept="liA8E" id="3gJBs5syUoW" role="2OqNvi">
                                <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                <node concept="37vLTw" id="3gJBs5syUoX" role="37wK5m">
                                  <ref role="3cqZAo" node="3gJBs5syUoy" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3gJBs5syUoY" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="Xl_RD" id="3gJBs5syUoZ" role="37wK5m">
                            <property role="Xl_RC" value="\&quot;" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3gJBs5syUp0" role="3clFbw">
                    <node concept="37vLTw" id="3gJBs5syUp1" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUmw" resolve="varnames" />
                    </node>
                    <node concept="liA8E" id="3gJBs5syUp2" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                      <node concept="37vLTw" id="3gJBs5syUp3" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5syUoy" resolve="var" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gJBs5sAMam" role="3cqZAp" />
                <node concept="3clFbJ" id="3gJBs5syUp4" role="3cqZAp">
                  <node concept="3clFbS" id="3gJBs5syUp5" role="3clFbx">
                    <node concept="3clFbF" id="3gJBs5sAFEs" role="3cqZAp">
                      <node concept="2OqwBi" id="3gJBs5sAFEu" role="3clFbG">
                        <node concept="37vLTw" id="3gJBs5sAFEv" role="2Oq$k0">
                          <ref role="3cqZAo" node="3gJBs5syUoF" resolve="prettyVar" />
                        </node>
                        <node concept="liA8E" id="3gJBs5sAFEw" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="Xl_RD" id="3gJBs5sAFEx" role="37wK5m">
                            <property role="Xl_RC" value=" &lt;: " />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3gJBs5sAPyV" role="3cqZAp" />
                    <node concept="3cpWs8" id="3gJBs5syUp6" role="3cqZAp">
                      <node concept="3cpWsn" id="3gJBs5syUp7" role="3cpWs9">
                        <property role="TrG5h" value="boundLogical" />
                        <node concept="3uibUv" id="3gJBs5syUp8" role="1tU5fm">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                        </node>
                        <node concept="2OqwBi" id="3gJBs5syUp9" role="33vP2m">
                          <node concept="37vLTw" id="3gJBs5syUpa" role="2Oq$k0">
                            <ref role="3cqZAo" node="3gJBs5syUmD" resolve="ubounds" />
                          </node>
                          <node concept="liA8E" id="3gJBs5syUpb" role="2OqNvi">
                            <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                            <node concept="37vLTw" id="3gJBs5syUpc" role="37wK5m">
                              <ref role="3cqZAo" node="3gJBs5syUoy" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3gJBs5sABMC" role="3cqZAp">
                      <node concept="3cpWsn" id="3gJBs5sABMD" role="3cpWs9">
                        <property role="TrG5h" value="boundVar" />
                        <node concept="17QB3L" id="3gJBs5sABJW" role="1tU5fm" />
                        <node concept="2OqwBi" id="3gJBs5sABME" role="33vP2m">
                          <node concept="2OqwBi" id="3gJBs5sABMF" role="2Oq$k0">
                            <node concept="37vLTw" id="3gJBs5sABMG" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gJBs5syUp7" resolve="boundLogical" />
                            </node>
                            <node concept="liA8E" id="3gJBs5sABMH" role="2OqNvi">
                              <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3gJBs5sABMI" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:3HJTsBmCy5P" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3gJBs5syUpd" role="3cqZAp">
                      <node concept="3cpWsn" id="3gJBs5syUpe" role="3cpWs9">
                        <property role="TrG5h" value="boundValue" />
                        <node concept="3uibUv" id="3gJBs5syUpf" role="1tU5fm">
                          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                        </node>
                        <node concept="2OqwBi" id="3gJBs5syUpg" role="33vP2m">
                          <node concept="2OqwBi" id="3gJBs5syUph" role="2Oq$k0">
                            <node concept="37vLTw" id="3gJBs5syUpi" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gJBs5syUp7" resolve="boundLogical" />
                            </node>
                            <node concept="liA8E" id="3gJBs5syUpj" role="2OqNvi">
                              <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3gJBs5syUpk" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3gJBs5sACsO" role="3cqZAp" />
                    <node concept="3clFbJ" id="3gJBs5sADIQ" role="3cqZAp">
                      <node concept="3clFbS" id="3gJBs5sADIS" role="3clFbx">
                        <node concept="3clFbF" id="3gJBs5syUpA" role="3cqZAp">
                          <node concept="2OqwBi" id="3gJBs5syUpB" role="3clFbG">
                            <node concept="37vLTw" id="3gJBs5syUpD" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gJBs5syUoF" resolve="prettyVar" />
                            </node>
                            <node concept="liA8E" id="3gJBs5syUpG" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="2YIFZM" id="4peSo3D1oTW" role="37wK5m">
                                <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                                <ref role="37wK5l" to="4t1t:4peSo3D04j7" resolve="print" />
                                <node concept="2OqwBi" id="4peSo3D1oTX" role="37wK5m">
                                  <node concept="37vLTw" id="4peSo3D1oTY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gJBs5syUpe" resolve="boundValue" />
                                  </node>
                                  <node concept="liA8E" id="4peSo3D1oTZ" role="2OqNvi">
                                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="4peSo3D1oU0" role="37wK5m">
                                  <ref role="3cqZAo" node="3gJBs5s_rPg" resolve="varSym" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="3gJBs5sAQg_" role="3cqZAp" />
                      </node>
                      <node concept="3y3z36" id="3gJBs5sADTR" role="3clFbw">
                        <node concept="10Nm6u" id="3gJBs5sADUy" role="3uHU7w" />
                        <node concept="37vLTw" id="3gJBs5sADSV" role="3uHU7B">
                          <ref role="3cqZAo" node="3gJBs5syUpe" resolve="boundValue" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="3gJBs5sAEv4" role="9aQIa">
                        <node concept="3clFbS" id="3gJBs5sAEv5" role="9aQI4">
                          <node concept="3clFbF" id="3gJBs5sAE$P" role="3cqZAp">
                            <node concept="2OqwBi" id="3gJBs5sAEFX" role="3clFbG">
                              <node concept="37vLTw" id="3gJBs5sAE$S" role="2Oq$k0">
                                <ref role="3cqZAo" node="3gJBs5syUoF" resolve="prettyVar" />
                              </node>
                              <node concept="liA8E" id="3gJBs5sAHv5" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                <node concept="37vLTw" id="3gJBs5sAHUq" role="37wK5m">
                                  <ref role="3cqZAo" node="3gJBs5sABMD" resolve="boundVar" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="3gJBs5sAI47" role="3cqZAp">
                            <node concept="3clFbS" id="3gJBs5sAI49" role="3clFbx">
                              <node concept="3clFbF" id="3gJBs5sAKRn" role="3cqZAp">
                                <node concept="2OqwBi" id="3gJBs5sAKRo" role="3clFbG">
                                  <node concept="2OqwBi" id="3gJBs5sAKRp" role="2Oq$k0">
                                    <node concept="2OqwBi" id="3gJBs5sAKRq" role="2Oq$k0">
                                      <node concept="37vLTw" id="3gJBs5sAKRr" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3gJBs5syUoF" resolve="prettyVar" />
                                      </node>
                                      <node concept="liA8E" id="3gJBs5sAKRs" role="2OqNvi">
                                        <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                        <node concept="Xl_RD" id="3gJBs5sAKRt" role="37wK5m">
                                          <property role="Xl_RC" value=" \&quot;" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3gJBs5sAKRu" role="2OqNvi">
                                      <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                      <node concept="2OqwBi" id="3gJBs5sAKRv" role="37wK5m">
                                        <node concept="37vLTw" id="3gJBs5sAKRw" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3gJBs5syUmw" resolve="varnames" />
                                        </node>
                                        <node concept="liA8E" id="3gJBs5sAKRx" role="2OqNvi">
                                          <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                          <node concept="37vLTw" id="3gJBs5sAL9t" role="37wK5m">
                                            <ref role="3cqZAo" node="3gJBs5sABMD" resolve="boundVar" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3gJBs5sAKRz" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                    <node concept="Xl_RD" id="3gJBs5sAKR$" role="37wK5m">
                                      <property role="Xl_RC" value="\&quot;" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3gJBs5sAIhx" role="3clFbw">
                              <node concept="37vLTw" id="3gJBs5sAI5x" role="2Oq$k0">
                                <ref role="3cqZAo" node="3gJBs5syUmw" resolve="varnames" />
                              </node>
                              <node concept="liA8E" id="3gJBs5sAKii" role="2OqNvi">
                                <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                                <node concept="37vLTw" id="3gJBs5sAKoX" role="37wK5m">
                                  <ref role="3cqZAo" node="3gJBs5sABMD" resolve="boundVar" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3gJBs5syUpI" role="3clFbw">
                    <node concept="37vLTw" id="3gJBs5syUpJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUmD" resolve="ubounds" />
                    </node>
                    <node concept="liA8E" id="3gJBs5syUpK" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                      <node concept="37vLTw" id="3gJBs5syUpL" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5syUoy" resolve="var" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gJBs5syUpM" role="3cqZAp" />
                <node concept="3cpWs8" id="3gJBs5syUpN" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUpO" role="3cpWs9">
                    <property role="TrG5h" value="prettyType" />
                    <node concept="17QB3L" id="3gJBs5syUpP" role="1tU5fm" />
                    <node concept="3K4zz7" id="3gJBs5syUpQ" role="33vP2m">
                      <node concept="2OqwBi" id="3gJBs5syUpR" role="3K4GZi">
                        <node concept="37vLTw" id="3gJBs5syUpS" role="2Oq$k0">
                          <ref role="3cqZAo" node="3gJBs5syUoF" resolve="prettyVar" />
                        </node>
                        <node concept="liA8E" id="3gJBs5syUpT" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
                        </node>
                      </node>
                      <node concept="3y3z36" id="3gJBs5syUpU" role="3K4Cdx">
                        <node concept="10Nm6u" id="3gJBs5syUpV" role="3uHU7w" />
                        <node concept="37vLTw" id="3gJBs5syUpW" role="3uHU7B">
                          <ref role="3cqZAo" node="3gJBs5syUoq" resolve="value" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="4peSo3D1Ia5" role="3K4E3e">
                        <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                        <ref role="37wK5l" to="4t1t:4peSo3D04j7" resolve="print" />
                        <node concept="2OqwBi" id="4peSo3D1Ia6" role="37wK5m">
                          <node concept="37vLTw" id="4peSo3D1Ia7" role="2Oq$k0">
                            <ref role="3cqZAo" node="3gJBs5syUoq" resolve="value" />
                          </node>
                          <node concept="liA8E" id="4peSo3D1Ia8" role="2OqNvi">
                            <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4peSo3D1Iaa" role="37wK5m">
                          <ref role="3cqZAo" node="3gJBs5s_rPg" resolve="varSym" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gJBs5syUq2" role="3cqZAp" />
                <node concept="3cpWs8" id="3gJBs5syUq3" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5syUq4" role="3cpWs9">
                    <property role="TrG5h" value="anchor" />
                    <node concept="3uibUv" id="3gJBs5syUq5" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                    <node concept="10QFUN" id="3gJBs5syUq6" role="33vP2m">
                      <node concept="3uibUv" id="3gJBs5syUq7" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      </node>
                      <node concept="AH0OO" id="3gJBs5syUq8" role="10QFUP">
                        <node concept="3cmrfG" id="3gJBs5syUq9" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="3gJBs5syUqa" role="AHHXb">
                          <ref role="3cqZAo" node="3gJBs5syUoa" resolve="args" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3gJBs5syUqb" role="3cqZAp">
                  <node concept="2OqwBi" id="3gJBs5syUqc" role="3clFbG">
                    <node concept="37vLTw" id="3gJBs5syUqd" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUmn" resolve="result" />
                    </node>
                    <node concept="liA8E" id="3gJBs5syUqe" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                      <node concept="2YIFZM" id="3gJBs5syUqf" role="37wK5m">
                        <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                        <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                        <node concept="2OqwBi" id="3gJBs5syUqg" role="37wK5m">
                          <node concept="2YIFZM" id="3gJBs5syUqh" role="2Oq$k0">
                            <ref role="37wK5l" to="ie8e:3JgCwkqd8va" resolve="findValue" />
                            <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                            <node concept="2OqwBi" id="3gJBs5syUqi" role="37wK5m">
                              <node concept="37vLTw" id="3gJBs5syUqj" role="2Oq$k0">
                                <ref role="3cqZAo" node="3gJBs5syUq4" resolve="anchor" />
                              </node>
                              <node concept="liA8E" id="3gJBs5syUqk" role="2OqNvi">
                                <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="3gJBs5syUql" role="37wK5m">
                              <property role="Xl_RC" value="node" />
                            </node>
                            <node concept="Xl_RD" id="3gJBs5syUqm" role="37wK5m">
                              <property role="Xl_RC" value="id" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3gJBs5syUqn" role="2OqNvi">
                            <ref role="37wK5l" to="ie8e:3JgCwkqkUL2" resolve="result" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3gJBs5syUqo" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5syUpO" resolve="prettyType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3gJBs5syUqp" role="3clFbw">
                <node concept="Xl_RD" id="3gJBs5syUqq" role="2Oq$k0">
                  <property role="Xl_RC" value="typeOf" />
                </node>
                <node concept="liA8E" id="3gJBs5syUqr" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="3gJBs5syUqs" role="37wK5m">
                    <node concept="37vLTw" id="3gJBs5syUqt" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5syUqv" resolve="c" />
                    </node>
                    <node concept="liA8E" id="3gJBs5syUqu" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3gJBs5syUqv" role="1Duv9x">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="3gJBs5syUqw" role="1tU5fm">
              <ref role="3uigEE" to="w2rx:~IConstraint" resolve="IConstraint" />
            </node>
          </node>
          <node concept="37vLTw" id="3gJBs5syUqA" role="1DdaDG">
            <ref role="3cqZAo" node="3gJBs5syUq$" resolve="handler" />
          </node>
        </node>
        <node concept="3cpWs6" id="3gJBs5syUqy" role="3cqZAp">
          <node concept="37vLTw" id="3gJBs5syUqz" role="3cqZAk">
            <ref role="3cqZAo" node="3gJBs5syUmn" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnkcmA" role="jymVt" />
    <node concept="2tJIrI" id="41ox5Vnk7sg" role="jymVt" />
    <node concept="2YIFZL" id="41ox5Vnkbyp" role="jymVt">
      <property role="TrG5h" value="callTellCheck" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="41ox5VndW1m" role="3clF47">
        <node concept="3clFbH" id="41ox5Vne48y" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5Vne9hH" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5Vne9hI" role="3cpWs9">
            <property role="TrG5h" value="farm" />
            <node concept="2ShNRf" id="41ox5Vne9hJ" role="33vP2m">
              <node concept="1pGfFk" id="41ox5Vne9hK" role="2ShVmc">
                <ref role="37wK5l" to="yg8f:2GO7tyK97tX" resolve="SolverFarm" />
                <node concept="10M0yZ" id="41ox5Vne9hL" role="37wK5m">
                  <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                  <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                </node>
                <node concept="10M0yZ" id="41ox5Vne9hM" role="37wK5m">
                  <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                  <ref role="3cqZAo" to="oy3s:3HJTsBn4kQs" resolve="INSTANCE" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="41ox5Vne9hN" role="1tU5fm">
              <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5Vne4N9" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VneSgB" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VneSgC" role="3cpWs9">
            <property role="TrG5h" value="exception" />
            <node concept="3uibUv" id="41ox5VneSyK" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~Throwable" resolve="Throwable" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="41ox5Vne9Fa" role="3cqZAp">
          <node concept="3clFbS" id="41ox5Vne9Fb" role="SfCbr">
            <node concept="3cpWs8" id="41ox5Vneaba" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5Vneabb" role="3cpWs9">
                <property role="TrG5h" value="handler" />
                <node concept="3uibUv" id="41ox5VneaaN" role="1tU5fm">
                  <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
                </node>
                <node concept="1rXfSq" id="41ox5Vneabc" role="33vP2m">
                  <ref role="37wK5l" node="41ox5Vnkagy" resolve="createHandler" />
                  <node concept="37vLTw" id="41ox5Vneabd" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5Vne69N" resolve="handlerCls" />
                  </node>
                  <node concept="2OqwBi" id="41ox5Vneabe" role="37wK5m">
                    <node concept="10M0yZ" id="41ox5Vneabf" role="2Oq$k0">
                      <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    </node>
                    <node concept="liA8E" id="41ox5Vneabg" role="2OqNvi">
                      <ref role="37wK5l" to="oy3s:2GO7tyJVnuU" resolve="createSolver" />
                      <node concept="37vLTw" id="41ox5Vneabh" role="37wK5m">
                        <ref role="3cqZAo" node="41ox5Vne9hI" resolve="farm" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="41ox5Vneabi" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VndSdC" role="3cqZAp" />
            <node concept="3cpWs8" id="41ox5VndUbJ" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5VndUbK" role="3cpWs9">
                <property role="TrG5h" value="tellMeth" />
                <node concept="3uibUv" id="41ox5VndUbE" role="1tU5fm">
                  <ref role="3uigEE" to="xqpa:~Method" resolve="Method" />
                </node>
                <node concept="2OqwBi" id="41ox5VndUbL" role="33vP2m">
                  <node concept="37vLTw" id="41ox5VndUbM" role="2Oq$k0">
                    <ref role="3cqZAo" node="41ox5Vne69N" resolve="handlerCls" />
                  </node>
                  <node concept="liA8E" id="41ox5VndUbN" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Class.getMethod(java.lang.String,java.lang.Class...):java.lang.reflect.Method" resolve="getMethod" />
                    <node concept="Xl_RD" id="41ox5VndUbO" role="37wK5m">
                      <property role="Xl_RC" value="tellCheck" />
                    </node>
                    <node concept="3VsKOn" id="41ox5VndUbP" role="37wK5m">
                      <ref role="3VsUkX" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="41ox5VndSwj" role="3cqZAp">
              <node concept="2OqwBi" id="41ox5VndULY" role="3clFbG">
                <node concept="37vLTw" id="41ox5VndUbQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="41ox5VndUbK" resolve="tellMeth" />
                </node>
                <node concept="liA8E" id="41ox5VndUV7" role="2OqNvi">
                  <ref role="37wK5l" to="xqpa:~Method.invoke(java.lang.Object,java.lang.Object...):java.lang.Object" resolve="invoke" />
                  <node concept="37vLTw" id="41ox5VndUYO" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5Vneabb" resolve="handler" />
                  </node>
                  <node concept="37vLTw" id="41ox5Vnednh" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5VnecVQ" resolve="treeToCheck" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VneDLS" role="3cqZAp" />
            <node concept="3cpWs6" id="41ox5VneE6i" role="3cqZAp">
              <node concept="37vLTw" id="41ox5VneEiF" role="3cqZAk">
                <ref role="3cqZAo" node="41ox5Vneabb" resolve="handler" />
              </node>
            </node>
            <node concept="3clFbH" id="41ox5Vne9PM" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="41ox5Vnee8L" role="TEbGg">
            <node concept="3clFbS" id="41ox5Vnee8M" role="TDEfX">
              <node concept="3clFbF" id="41ox5VneSFr" role="3cqZAp">
                <node concept="37vLTI" id="41ox5VneSFt" role="3clFbG">
                  <node concept="2OqwBi" id="1zN1RIlg3Ft" role="37vLTx">
                    <node concept="37vLTw" id="41ox5VneSgD" role="2Oq$k0">
                      <ref role="3cqZAo" node="41ox5Vnee8N" resolve="e" />
                    </node>
                    <node concept="liA8E" id="1zN1RIlg40a" role="2OqNvi">
                      <ref role="37wK5l" to="xqpa:~InvocationTargetException.getCause():java.lang.Throwable" resolve="getCause" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="41ox5VneSFx" role="37vLTJ">
                    <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="41ox5Vnee8N" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="41ox5Vnee8O" role="1tU5fm">
                <ref role="3uigEE" to="xqpa:~InvocationTargetException" resolve="InvocationTargetException" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="41ox5Vnee8P" role="TEbGg">
            <node concept="3clFbS" id="41ox5Vnee8Q" role="TDEfX">
              <node concept="3clFbF" id="41ox5VneTHA" role="3cqZAp">
                <node concept="37vLTI" id="41ox5VneTHB" role="3clFbG">
                  <node concept="37vLTw" id="41ox5VneTHC" role="37vLTx">
                    <ref role="3cqZAo" node="41ox5Vnee8R" resolve="e" />
                  </node>
                  <node concept="37vLTw" id="41ox5VneTHD" role="37vLTJ">
                    <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="41ox5Vnee8R" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="41ox5Vnee8S" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~IllegalAccessException" resolve="IllegalAccessException" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="41ox5Vneg1h" role="TEbGg">
            <node concept="3clFbS" id="41ox5Vneg1i" role="TDEfX">
              <node concept="3clFbF" id="41ox5VneTS8" role="3cqZAp">
                <node concept="37vLTI" id="41ox5VneTS9" role="3clFbG">
                  <node concept="37vLTw" id="41ox5VneTSa" role="37vLTx">
                    <ref role="3cqZAo" node="41ox5Vneg1j" resolve="e" />
                  </node>
                  <node concept="37vLTw" id="41ox5VneTSb" role="37vLTJ">
                    <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="41ox5Vneg1j" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="41ox5Vneg1k" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~NoSuchMethodException" resolve="NoSuchMethodException" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="41ox5Vnesq8" role="TEbGg">
            <node concept="3clFbS" id="41ox5Vnesq9" role="TDEfX">
              <node concept="3clFbF" id="41ox5VneUaI" role="3cqZAp">
                <node concept="37vLTI" id="41ox5VneUaJ" role="3clFbG">
                  <node concept="37vLTw" id="41ox5VneUaK" role="37vLTx">
                    <ref role="3cqZAo" node="41ox5Vnesqa" resolve="e" />
                  </node>
                  <node concept="37vLTw" id="41ox5VneUaL" role="37vLTJ">
                    <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="41ox5Vnesqa" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="41ox5Vnesqb" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~InstantiationException" resolve="InstantiationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1zN1RIlg4ZW" role="3cqZAp">
          <node concept="3clFbS" id="1zN1RIlg4ZY" role="3clFbx">
            <node concept="YS8fn" id="1zN1RIlg5pb" role="3cqZAp">
              <node concept="10QFUN" id="1zN1RIlgapt" role="YScLw">
                <node concept="37vLTw" id="1zN1RIlgaps" role="10QFUP">
                  <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
                </node>
                <node concept="3uibUv" id="1zN1RIlgaxg" role="10QFUM">
                  <ref role="3uigEE" to="e2lb:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1zN1RIlg5d9" role="3clFbw">
            <node concept="3uibUv" id="1zN1RIlg5l0" role="2ZW6by">
              <ref role="3uigEE" to="e2lb:~RuntimeException" resolve="RuntimeException" />
            </node>
            <node concept="37vLTw" id="1zN1RIlg51O" role="2ZW6bz">
              <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="41ox5Vnmt_x" role="3cqZAp">
          <node concept="2ShNRf" id="41ox5VnmtWl" role="YScLw">
            <node concept="1pGfFk" id="41ox5Vnmv6s" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
              <node concept="37vLTw" id="41ox5Vnmvv0" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5Vne69N" role="3clF46">
        <property role="TrG5h" value="handlerCls" />
        <node concept="3uibUv" id="41ox5Vne69O" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
          <node concept="3uibUv" id="41ox5Vne7FW" role="11_B2D">
            <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnecVQ" role="3clF46">
        <property role="TrG5h" value="treeToCheck" />
        <node concept="3uibUv" id="41ox5Vned96" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3uibUv" id="41ox5VneEwq" role="3clF45">
        <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
      </node>
      <node concept="3Tm6S6" id="41ox5VnftVr" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="41ox5VnkaGt" role="jymVt" />
    <node concept="2tJIrI" id="41ox5VnkaHc" role="jymVt" />
    <node concept="2YIFZL" id="41ox5Vnkagy" role="jymVt">
      <property role="TrG5h" value="createHandler" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="41ox5VndCIc" role="3clF47">
        <node concept="3cpWs8" id="41ox5VndLGD" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VndLGE" role="3cpWs9">
            <property role="TrG5h" value="ctor" />
            <node concept="3uibUv" id="41ox5VndLGa" role="1tU5fm">
              <ref role="3uigEE" to="xqpa:~Constructor" resolve="Constructor" />
              <node concept="3uibUv" id="41ox5Vne8qd" role="11_B2D">
                <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
              </node>
            </node>
            <node concept="2OqwBi" id="41ox5VndLGF" role="33vP2m">
              <node concept="37vLTw" id="41ox5VndLGG" role="2Oq$k0">
                <ref role="3cqZAo" node="41ox5VndDLn" resolve="handlerCls" />
              </node>
              <node concept="liA8E" id="41ox5VndLGH" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~Class.getConstructor(java.lang.Class...):java.lang.reflect.Constructor" resolve="getConstructor" />
                <node concept="3VsKOn" id="41ox5VndLGI" role="37wK5m">
                  <ref role="3VsUkX" to="oy3s:6njqcfQVO0n" resolve="UnificationSolver" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="41ox5VndPls" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VndPlt" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="41ox5VndPlu" role="1tU5fm">
              <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
            </node>
            <node concept="2OqwBi" id="41ox5VndPlv" role="33vP2m">
              <node concept="37vLTw" id="41ox5VndPlw" role="2Oq$k0">
                <ref role="3cqZAo" node="41ox5VndLGE" resolve="ctor" />
              </node>
              <node concept="liA8E" id="41ox5VndPlx" role="2OqNvi">
                <ref role="37wK5l" to="xqpa:~Constructor.newInstance(java.lang.Object...):java.lang.Object" resolve="newInstance" />
                <node concept="37vLTw" id="41ox5VndPly" role="37wK5m">
                  <ref role="3cqZAo" node="41ox5VndODy" resolve="uniSolver" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VndQcp" role="3cqZAp" />
        <node concept="3clFbF" id="41ox5VnecD$" role="3cqZAp">
          <node concept="37vLTw" id="41ox5VnecDy" role="3clFbG">
            <ref role="3cqZAo" node="41ox5VndPlt" resolve="handler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VndDLn" role="3clF46">
        <property role="TrG5h" value="handlerCls" />
        <node concept="3uibUv" id="41ox5VndE6M" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
          <node concept="3uibUv" id="41ox5Vne7Xi" role="11_B2D">
            <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VndODy" role="3clF46">
        <property role="TrG5h" value="uniSolver" />
        <node concept="3uibUv" id="41ox5VndOZy" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:6njqcfQVO0n" resolve="UnificationSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VndQtV" role="3clF46">
        <property role="TrG5h" value="attachTracer" />
        <node concept="10P_77" id="41ox5VndQOG" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="41ox5VndY2j" role="3clF45">
        <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
      </node>
      <node concept="3uibUv" id="41ox5Vnefex" role="Sfmx6">
        <ref role="3uigEE" to="e2lb:~NoSuchMethodException" resolve="NoSuchMethodException" />
      </node>
      <node concept="3uibUv" id="41ox5Vnefz5" role="Sfmx6">
        <ref role="3uigEE" to="e2lb:~InstantiationException" resolve="InstantiationException" />
      </node>
      <node concept="3uibUv" id="41ox5Vnegr7" role="Sfmx6">
        <ref role="3uigEE" to="xqpa:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="41ox5VnegXa" role="Sfmx6">
        <ref role="3uigEE" to="e2lb:~IllegalAccessException" resolve="IllegalAccessException" />
      </node>
      <node concept="3Tm6S6" id="41ox5VndXtW" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="41ox5Vnk7ss" role="jymVt" />
    <node concept="312cEu" id="3gJBs5s_5u0" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TypeVarSymbol" />
      <node concept="2tJIrI" id="3gJBs5s_6yN" role="jymVt" />
      <node concept="3clFbW" id="3gJBs5s_a9H" role="jymVt">
        <node concept="37vLTG" id="3gJBs5s_an7" role="3clF46">
          <property role="TrG5h" value="varnames" />
          <node concept="3uibUv" id="3gJBs5s_arM" role="1tU5fm">
            <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
            <node concept="17QB3L" id="3gJBs5s_axk" role="11_B2D" />
            <node concept="17QB3L" id="3gJBs5s_a_O" role="11_B2D" />
          </node>
        </node>
        <node concept="3cqZAl" id="3gJBs5s_a9J" role="3clF45" />
        <node concept="3Tm1VV" id="3gJBs5s_a9K" role="1B3o_S" />
        <node concept="3clFbS" id="3gJBs5s_a9L" role="3clF47">
          <node concept="3clFbF" id="3gJBs5s_aBm" role="3cqZAp">
            <node concept="37vLTI" id="3gJBs5s_aBo" role="3clFbG">
              <node concept="2OqwBi" id="3gJBs5s_aBs" role="37vLTJ">
                <node concept="Xjq3P" id="3gJBs5s_aBv" role="2Oq$k0" />
                <node concept="2OwXpG" id="3gJBs5s_aBr" role="2OqNvi">
                  <ref role="2Oxat5" node="3gJBs5s_aBg" resolve="varnames" />
                </node>
              </node>
              <node concept="37vLTw" id="3gJBs5s_aBw" role="37vLTx">
                <ref role="3cqZAo" node="3gJBs5s_an7" resolve="varnames" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3gJBs5s_6yZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="variableSymbol" />
        <node concept="37vLTG" id="3gJBs5s_6z0" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="3gJBs5s_6z1" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="17QB3L" id="4peSo3D1hha" role="3clF45" />
        <node concept="3Tm1VV" id="3gJBs5s_6z3" role="1B3o_S" />
        <node concept="3clFbS" id="3gJBs5s_6z9" role="3clF47">
          <node concept="3clFbJ" id="3gJBs5s_6EV" role="3cqZAp">
            <node concept="3clFbS" id="3gJBs5s_6EW" role="3clFbx">
              <node concept="3cpWs8" id="3gJBs5s_7Ie" role="3cqZAp">
                <node concept="3cpWsn" id="3gJBs5s_7If" role="3cpWs9">
                  <property role="TrG5h" value="logical" />
                  <node concept="3uibUv" id="3gJBs5s_7I4" role="1tU5fm">
                    <ref role="3uigEE" to="yg8f:1mP5b6jQP$C" resolve="ILogical" />
                    <node concept="3qTvmN" id="3gJBs5s_7I7" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="3gJBs5s_7Ig" role="33vP2m">
                    <node concept="1eOMI4" id="3gJBs5s_7Ih" role="2Oq$k0">
                      <node concept="10QFUN" id="3gJBs5s_7Ii" role="1eOMHV">
                        <node concept="3uibUv" id="3gJBs5s_7Ij" role="10QFUM">
                          <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                        </node>
                        <node concept="37vLTw" id="3gJBs5s_7Ik" role="10QFUP">
                          <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3gJBs5s_7Il" role="2OqNvi">
                      <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3gJBs5s_dtW" role="3cqZAp">
                <node concept="3cpWsn" id="3gJBs5s_dtX" role="3cpWs9">
                  <property role="TrG5h" value="var" />
                  <node concept="17QB3L" id="3gJBs5s_dtV" role="1tU5fm" />
                  <node concept="2OqwBi" id="3gJBs5s_dtY" role="33vP2m">
                    <node concept="2OqwBi" id="3gJBs5s_dtZ" role="2Oq$k0">
                      <node concept="37vLTw" id="3gJBs5s_du0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3gJBs5s_7If" resolve="logical" />
                      </node>
                      <node concept="liA8E" id="3gJBs5s_du1" role="2OqNvi">
                        <ref role="37wK5l" to="yg8f:dfChU1eNVy" resolve="findRoot" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3gJBs5s_du2" role="2OqNvi">
                      <ref role="37wK5l" to="yg8f:677NV56hh2k" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3gJBs5s_ngZ" role="3cqZAp" />
              <node concept="3cpWs8" id="3gJBs5s_fIH" role="3cqZAp">
                <node concept="3cpWsn" id="3gJBs5s_fII" role="3cpWs9">
                  <property role="TrG5h" value="prettyVar" />
                  <node concept="3uibUv" id="3gJBs5s_fIJ" role="1tU5fm">
                    <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
                  </node>
                  <node concept="2ShNRf" id="3gJBs5s_fIK" role="33vP2m">
                    <node concept="1pGfFk" id="3gJBs5s_fIL" role="2ShVmc">
                      <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                      <node concept="37vLTw" id="3gJBs5s_fIM" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5s_dtX" resolve="var" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3gJBs5s_aPm" role="3cqZAp">
                <node concept="3clFbS" id="3gJBs5s_aPn" role="3clFbx">
                  <node concept="3clFbF" id="3gJBs5s_aPo" role="3cqZAp">
                    <node concept="2OqwBi" id="3gJBs5s_aPp" role="3clFbG">
                      <node concept="2OqwBi" id="3gJBs5s_aPq" role="2Oq$k0">
                        <node concept="2OqwBi" id="3gJBs5s_aPr" role="2Oq$k0">
                          <node concept="37vLTw" id="3gJBs5s_aPs" role="2Oq$k0">
                            <ref role="3cqZAo" node="3gJBs5s_fII" resolve="prettyVar" />
                          </node>
                          <node concept="liA8E" id="3gJBs5s_aPt" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="Xl_RD" id="3gJBs5s_aPu" role="37wK5m">
                              <property role="Xl_RC" value=" \&quot;" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3gJBs5s_aPv" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="2OqwBi" id="3gJBs5s_aPw" role="37wK5m">
                            <node concept="37vLTw" id="3gJBs5s_aPx" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gJBs5s_aBg" resolve="varnames" />
                            </node>
                            <node concept="liA8E" id="3gJBs5s_aPy" role="2OqNvi">
                              <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                              <node concept="37vLTw" id="3gJBs5s_aPz" role="37wK5m">
                                <ref role="3cqZAo" node="3gJBs5s_dtX" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3gJBs5s_aP$" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="Xl_RD" id="3gJBs5s_aP_" role="37wK5m">
                          <property role="Xl_RC" value="\&quot;" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3gJBs5s_aPA" role="3clFbw">
                  <node concept="37vLTw" id="3gJBs5s_aPB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3gJBs5s_aBg" resolve="varnames" />
                  </node>
                  <node concept="liA8E" id="3gJBs5s_aPC" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                    <node concept="37vLTw" id="3gJBs5s_foc" role="37wK5m">
                      <ref role="3cqZAo" node="3gJBs5s_dtX" resolve="var" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3gJBs5s_loM" role="3cqZAp">
                <node concept="2OqwBi" id="3gJBs5s_lTD" role="3cqZAk">
                  <node concept="37vLTw" id="3gJBs5s_lJ9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3gJBs5s_fII" resolve="prettyVar" />
                  </node>
                  <node concept="liA8E" id="3gJBs5s_mK7" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3gJBs5s_nxx" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="3gJBs5s_6UT" role="3clFbw">
              <node concept="3uibUv" id="3gJBs5s_78A" role="2ZW6by">
                <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
              </node>
              <node concept="37vLTw" id="3gJBs5s_6FT" role="2ZW6bz">
                <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
              </node>
            </node>
            <node concept="9aQIb" id="3gJBs5s_7KK" role="9aQIa">
              <node concept="3clFbS" id="3gJBs5s_7KL" role="9aQI4">
                <node concept="3cpWs6" id="3gJBs5s_7Qc" role="3cqZAp">
                  <node concept="2YIFZM" id="4peSo3D1kYQ" role="3cqZAk">
                    <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                    <node concept="2OqwBi" id="4peSo3D0$Pp" role="37wK5m">
                      <node concept="37vLTw" id="4peSo3D0$zo" role="2Oq$k0">
                        <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
                      </node>
                      <node concept="liA8E" id="4peSo3D0AYC" role="2OqNvi">
                        <ref role="37wK5l" to="ie8e:56MMu0Ark7d" resolve="symbol" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3gJBs5s_6za" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3gJBs5s_o1A" role="jymVt" />
      <node concept="3Tm1VV" id="3gJBs5s_5u1" role="1B3o_S" />
      <node concept="312cEg" id="3gJBs5s_aBg" role="jymVt">
        <property role="TrG5h" value="varnames" />
        <node concept="3Tm6S6" id="3gJBs5s_aBh" role="1B3o_S" />
        <node concept="3uibUv" id="3gJBs5s_aBj" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="3gJBs5s_aBk" role="11_B2D" />
          <node concept="17QB3L" id="3gJBs5s_aBl" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="4peSo3D1gxU" role="1zkMxy">
        <ref role="3uigEE" to="4t1t:3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5Vnk7lH" role="jymVt" />
    <node concept="3Tm1VV" id="41ox5Vnk76b" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="41ox5VnpFrR">
    <property role="TrG5h" value="MarkTypesAndErrors" />
    <node concept="Wx3nA" id="41ox5VnsV1U" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NODE" />
      <node concept="3Tm6S6" id="41ox5VnsV1Q" role="1B3o_S" />
      <node concept="3uibUv" id="41ox5VnsV1R" role="1tU5fm">
        <ref role="3uigEE" to="l0n4:~NodeMessageTarget" resolve="NodeMessageTarget" />
      </node>
      <node concept="2ShNRf" id="41ox5VnsV1S" role="33vP2m">
        <node concept="1pGfFk" id="41ox5VnsV1T" role="2ShVmc">
          <ref role="37wK5l" to="l0n4:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnpGsA" role="jymVt" />
    <node concept="Wx3nA" id="41ox5VnpGIS" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="41ox5VnpGIU" role="1B3o_S" />
      <node concept="3uibUv" id="41ox5VnpGSM" role="1tU5fm">
        <ref role="3uigEE" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
      </node>
      <node concept="2ShNRf" id="41ox5VnpGV4" role="33vP2m">
        <node concept="HV5vD" id="41ox5VnqtRs" role="2ShVmc">
          <ref role="HV5vE" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5Vnquax" role="jymVt" />
    <node concept="2YIFZL" id="41ox5VnqukP" role="jymVt">
      <property role="TrG5h" value="markAll" />
      <node concept="37vLTG" id="41ox5VnqumW" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="41ox5VnquuM" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnqWuQ" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="41ox5VnqWBh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="41ox5VnqWGh" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3uibUv" id="41ox5VnqWGi" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="41ox5VnqWGj" role="11_B2D" />
          <node concept="17QB3L" id="41ox5VnqWGk" role="11_B2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="41ox5VnqukR" role="3clF45" />
      <node concept="3Tm1VV" id="41ox5VnqukS" role="1B3o_S" />
      <node concept="3clFbS" id="41ox5VnqukT" role="3clF47">
        <node concept="3clFbF" id="41ox5VnqVuL" role="3cqZAp">
          <node concept="2OqwBi" id="41ox5VnqV_b" role="3clFbG">
            <node concept="10M0yZ" id="41ox5VnqVyp" role="2Oq$k0">
              <ref role="1PxDUh" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
              <ref role="3cqZAo" node="41ox5VnpGIS" resolve="INSTANCE" />
            </node>
            <node concept="liA8E" id="41ox5VnqVQk" role="2OqNvi">
              <ref role="37wK5l" node="41ox5VnqGYM" resolve="doMarkAll" />
              <node concept="37vLTw" id="41ox5VnqWau" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VnqumW" resolve="editorComponent" />
              </node>
              <node concept="37vLTw" id="41ox5VnqWI2" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VnqWuQ" resolve="root" />
              </node>
              <node concept="37vLTw" id="41ox5Vnr5A4" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VnqWGh" resolve="types" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnrMYE" role="jymVt" />
    <node concept="2YIFZL" id="41ox5VnrNu5" role="jymVt">
      <property role="TrG5h" value="clearAll" />
      <node concept="37vLTG" id="41ox5VnrN$A" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="41ox5VnrN$B" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3cqZAl" id="41ox5VnrNu7" role="3clF45" />
      <node concept="3Tm1VV" id="41ox5VnrNu8" role="1B3o_S" />
      <node concept="3clFbS" id="41ox5VnrNu9" role="3clF47">
        <node concept="3clFbF" id="41ox5VnrU84" role="3cqZAp">
          <node concept="2OqwBi" id="41ox5VnrU9L" role="3clFbG">
            <node concept="10M0yZ" id="41ox5VnrU83" role="2Oq$k0">
              <ref role="1PxDUh" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
              <ref role="3cqZAo" node="41ox5VnpGIS" resolve="INSTANCE" />
            </node>
            <node concept="liA8E" id="41ox5VnrUpy" role="2OqNvi">
              <ref role="37wK5l" node="41ox5VnrO6$" resolve="doClearAll" />
              <node concept="37vLTw" id="41ox5VnrUqU" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VnrN$A" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnqvKL" role="jymVt" />
    <node concept="3clFb_" id="41ox5VnqGYM" role="jymVt">
      <property role="TrG5h" value="doMarkAll" />
      <node concept="3cqZAl" id="41ox5VnqGYO" role="3clF45" />
      <node concept="3Tm1VV" id="41ox5VnqGYP" role="1B3o_S" />
      <node concept="3clFbS" id="41ox5VnqGYQ" role="3clF47">
        <node concept="3clFbH" id="41ox5VnqIak" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VnqGc9" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnqGca" role="3cpWs9">
            <property role="TrG5h" value="highlightManager" />
            <node concept="3uibUv" id="41ox5VnqGc7" role="1tU5fm">
              <ref role="3uigEE" to="9a8:~NodeHighlightManager" resolve="NodeHighlightManager" />
            </node>
            <node concept="2OqwBi" id="41ox5VnqGcb" role="33vP2m">
              <node concept="37vLTw" id="41ox5VnqGcc" role="2Oq$k0">
                <ref role="3cqZAo" node="41ox5VnqHMs" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="41ox5VnqGcd" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getHighlightManager():jetbrains.mps.nodeEditor.NodeHighlightManager" resolve="getHighlightManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="41ox5Vnq__J" role="3cqZAp">
          <node concept="2OqwBi" id="41ox5VnqGdR" role="3clFbG">
            <node concept="37vLTw" id="41ox5VnqGce" role="2Oq$k0">
              <ref role="3cqZAo" node="41ox5VnqGca" resolve="highlightManager" />
            </node>
            <node concept="liA8E" id="41ox5VnqG_K" role="2OqNvi">
              <ref role="37wK5l" to="9a8:~NodeHighlightManager.clearForOwner(jetbrains.mps.openapi.editor.message.EditorMessageOwner):boolean" resolve="clearForOwner" />
              <node concept="Xjq3P" id="41ox5VnqGAs" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnqvKH" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VnqNFH" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnqNFI" role="3cpWs9">
            <property role="TrG5h" value="mdl" />
            <node concept="H_c77" id="41ox5VnqNFG" role="1tU5fm" />
            <node concept="2OqwBi" id="41ox5VnqNFJ" role="33vP2m">
              <node concept="37vLTw" id="41ox5VnqNFK" role="2Oq$k0">
                <ref role="3cqZAo" node="41ox5VnqLKO" resolve="root" />
              </node>
              <node concept="I4A8Y" id="41ox5VnqNFL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnqM$z" role="3cqZAp" />
        <node concept="1DcWWT" id="41ox5VnqI$h" role="3cqZAp">
          <node concept="3clFbS" id="41ox5VnqI$j" role="2LFqv$">
            <node concept="3cpWs8" id="41ox5VnqPm6" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5VnqPm7" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="41ox5VnqPm4" role="1tU5fm">
                  <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="41ox5VnqPm8" role="33vP2m">
                  <node concept="2JrnkZ" id="41ox5VnqPm9" role="2Oq$k0">
                    <node concept="37vLTw" id="41ox5VnqPma" role="2JrQYb">
                      <ref role="3cqZAo" node="41ox5VnqNFI" resolve="mdl" />
                    </node>
                  </node>
                  <node concept="liA8E" id="41ox5VnqPmb" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                    <node concept="2YIFZM" id="41ox5VnqPmc" role="37wK5m">
                      <ref role="37wK5l" to="cu2c:~SNodeId.fromString(java.lang.String):jetbrains.mps.smodel.SNodeId" resolve="fromString" />
                      <ref role="1Pybhc" to="cu2c:~SNodeId" resolve="SNodeId" />
                      <node concept="2OqwBi" id="41ox5VnqPmd" role="37wK5m">
                        <node concept="37vLTw" id="41ox5VnqPme" role="2Oq$k0">
                          <ref role="3cqZAo" node="41ox5VnqI$l" resolve="e" />
                        </node>
                        <node concept="liA8E" id="41ox5VnqPmf" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="41ox5VnqUco" role="3cqZAp">
              <node concept="3clFbS" id="41ox5VnqUcq" role="3clFbx">
                <node concept="3N13vt" id="41ox5VnqUqz" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="41ox5VnqUhk" role="3clFbw">
                <node concept="10Nm6u" id="41ox5VnqUhT" role="3uHU7w" />
                <node concept="37vLTw" id="41ox5VnqUgp" role="3uHU7B">
                  <ref role="3cqZAo" node="41ox5VnqPm7" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnqUqD" role="3cqZAp" />
            <node concept="3clFbF" id="41ox5VnqScg" role="3cqZAp">
              <node concept="2OqwBi" id="41ox5VnqSf1" role="3clFbG">
                <node concept="37vLTw" id="41ox5VnqSce" role="2Oq$k0">
                  <ref role="3cqZAo" node="41ox5VnqGca" resolve="highlightManager" />
                </node>
                <node concept="liA8E" id="41ox5VnqSv1" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~NodeHighlightManager.mark(jetbrains.mps.openapi.editor.message.SimpleEditorMessage):void" resolve="mark" />
                  <node concept="2ShNRf" id="41ox5VnqSwq" role="37wK5m">
                    <node concept="1pGfFk" id="41ox5VnqTlu" role="2ShVmc">
                      <ref role="37wK5l" node="41ox5VnqPPQ" resolve="MarkTypesAndErrors.Message" />
                      <node concept="37vLTw" id="41ox5VnqTnn" role="37wK5m">
                        <ref role="3cqZAo" node="41ox5VnqPm7" resolve="node" />
                      </node>
                      <node concept="2OqwBi" id="41ox5VnqTqj" role="37wK5m">
                        <node concept="37vLTw" id="41ox5VnqToA" role="2Oq$k0">
                          <ref role="3cqZAo" node="41ox5VnqI$l" resolve="e" />
                        </node>
                        <node concept="liA8E" id="41ox5VnqU2m" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="41ox5VnqI$l" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="41ox5VnqIJj" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Map$Entry" resolve="Map.Entry" />
              <node concept="17QB3L" id="41ox5VnqISy" role="11_B2D" />
              <node concept="17QB3L" id="41ox5VnqIYh" role="11_B2D" />
            </node>
          </node>
          <node concept="2OqwBi" id="41ox5VnqJ89" role="1DdaDG">
            <node concept="37vLTw" id="41ox5VnqI$s" role="2Oq$k0">
              <ref role="3cqZAo" node="41ox5VnqIf$" resolve="types" />
            </node>
            <node concept="liA8E" id="41ox5VnqLeU" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.entrySet():java.util.Set" resolve="entrySet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnqHMs" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="41ox5VnqHMr" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnqLKO" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="41ox5VnqMa$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="41ox5VnqIf$" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3uibUv" id="41ox5VnqIkv" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="41ox5VnqIoy" role="11_B2D" />
          <node concept="17QB3L" id="41ox5VnqIsG" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnqvLK" role="jymVt" />
    <node concept="3clFb_" id="41ox5VnrO6$" role="jymVt">
      <property role="TrG5h" value="doClearAll" />
      <node concept="3cqZAl" id="41ox5VnrO6A" role="3clF45" />
      <node concept="3Tm1VV" id="41ox5VnrO6B" role="1B3o_S" />
      <node concept="3clFbS" id="41ox5VnrO6C" role="3clF47">
        <node concept="3clFbF" id="41ox5VnrOOY" role="3cqZAp">
          <node concept="2OqwBi" id="41ox5VnrTjY" role="3clFbG">
            <node concept="2OqwBi" id="41ox5VnrP3s" role="2Oq$k0">
              <node concept="37vLTw" id="41ox5VnrOOX" role="2Oq$k0">
                <ref role="3cqZAo" node="41ox5VnrOyq" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="41ox5VnrTiU" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getHighlightManager():jetbrains.mps.nodeEditor.NodeHighlightManager" resolve="getHighlightManager" />
              </node>
            </node>
            <node concept="liA8E" id="41ox5VnrTCV" role="2OqNvi">
              <ref role="37wK5l" to="9a8:~NodeHighlightManager.clearForOwner(jetbrains.mps.openapi.editor.message.EditorMessageOwner):boolean" resolve="clearForOwner" />
              <node concept="Xjq3P" id="41ox5VnrTEk" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnrOyq" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="41ox5VnrOyp" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnrOAa" role="jymVt" />
    <node concept="312cEu" id="41ox5VnqPFM" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Message" />
      <node concept="3clFbW" id="41ox5VnqPPQ" role="jymVt">
        <node concept="37vLTG" id="41ox5VnqPZj" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="41ox5VnqQ7f" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="41ox5VnqRBg" role="3clF46">
          <property role="TrG5h" value="msg" />
          <node concept="17QB3L" id="41ox5VnqRFE" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="41ox5VnqPPS" role="3clF45" />
        <node concept="3Tm1VV" id="41ox5VnqPPT" role="1B3o_S" />
        <node concept="3clFbS" id="41ox5VnqPPU" role="3clF47">
          <node concept="XkiVB" id="41ox5VnsRxm" role="3cqZAp">
            <ref role="37wK5l" to="9a8:~HighlighterMessage.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.errors.MessageStatus,jetbrains.mps.errors.messageTargets.MessageTarget,java.awt.Color,java.lang.String,jetbrains.mps.openapi.editor.message.EditorMessageOwner)" resolve="HighlighterMessage" />
            <node concept="37vLTw" id="41ox5VnsRyX" role="37wK5m">
              <ref role="3cqZAo" node="41ox5VnqPZj" resolve="node" />
            </node>
            <node concept="Rm8GO" id="41ox5VnsSF6" role="37wK5m">
              <ref role="Rm8GQ" to="nax5:~MessageStatus.OK" resolve="OK" />
              <ref role="1Px2BO" to="nax5:~MessageStatus" resolve="MessageStatus" />
            </node>
            <node concept="37vLTw" id="41ox5VnsV20" role="37wK5m">
              <ref role="3cqZAo" node="41ox5VnsV1U" resolve="NODE" />
            </node>
            <node concept="10M0yZ" id="41ox5VnsVyS" role="37wK5m">
              <ref role="1PxDUh" to="1t7x:~Color" resolve="Color" />
              <ref role="3cqZAo" to="1t7x:~Color.GREEN" resolve="GREEN" />
            </node>
            <node concept="37vLTw" id="41ox5VnsV__" role="37wK5m">
              <ref role="3cqZAo" node="41ox5VnqRBg" resolve="msg" />
            </node>
            <node concept="Xjq3P" id="41ox5VnsVEf" role="37wK5m">
              <ref role="1HBi2w" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="41ox5VnqPFN" role="1B3o_S" />
      <node concept="3uibUv" id="41ox5VnsR0T" role="1zkMxy">
        <ref role="3uigEE" to="9a8:~HighlighterMessage" resolve="HighlighterMessage" />
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnpGsF" role="jymVt" />
    <node concept="3Tm1VV" id="41ox5VnpFrS" role="1B3o_S" />
    <node concept="3uibUv" id="41ox5VnpFsi" role="EKbjA">
      <ref role="3uigEE" to="2vit:~EditorMessageOwner" resolve="EditorMessageOwner" />
    </node>
  </node>
  <node concept="sE7Ow" id="41ox5VnrUX7">
    <property role="TrG5h" value="ClearMarks" />
    <property role="2uzpH1" value="Clear Types" />
    <node concept="1DS2jV" id="41ox5VnrVtS" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="1d7m:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="41ox5VnrVtT" role="1oa70y" />
    </node>
    <node concept="tnohg" id="41ox5VnrUX8" role="tncku">
      <node concept="3clFbS" id="41ox5VnrUX9" role="2VODD2">
        <node concept="3clFbF" id="41ox5VnrV_Z" role="3cqZAp">
          <node concept="2YIFZM" id="41ox5VnrVAA" role="3clFbG">
            <ref role="37wK5l" node="41ox5VnrNu5" resolve="clearAll" />
            <ref role="1Pybhc" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
            <node concept="2OqwBi" id="41ox5VnrVBn" role="37wK5m">
              <node concept="2WthIp" id="41ox5VnrVBq" role="2Oq$k0" />
              <node concept="1DTwFV" id="41ox5VnrVBs" role="2OqNvi">
                <ref role="2WH_rO" node="41ox5VnrVtS" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

