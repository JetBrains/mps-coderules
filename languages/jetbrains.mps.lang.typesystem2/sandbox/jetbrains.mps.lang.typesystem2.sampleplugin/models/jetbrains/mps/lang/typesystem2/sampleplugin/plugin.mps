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
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b" name="jetbrains.mps.make.script" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="bdf1" ref="r:22d5f1f3-a483-4725-abc3-c5e9c2c56292(jetbrains.mps.typechecking.rule.generator)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="138j" ref="r:d390cf6e-3a05-4c9d-8eb3-bcdfbfd3bf8f(jetbrains.mps.typechecking.rule.collection)" />
    <import index="9kr0" ref="r:0f58be42-48ea-45ab-99f8-158393a0f526(jetbrains.mps.typechecking.handler.producer)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="xq5w" ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.var)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="drpk" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.make(MPS.Platform/)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="i9so" ref="r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="stuq" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime.debug.graphical(jetbrains.mps.jchr.runtime/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="kpve" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.message(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="iawt" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime.debug(jetbrains.mps.jchr.runtime/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="57ty" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.messages(MPS.Platform/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.unification.tree/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.lang.typesystem2.samplechecker.template)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="i8dg" ref="r:e8529b97-a186-4c32-8f12-771b2a92b55a(jetbrains.mps.logic.reactor.rule)" />
    <import index="95zw" ref="r:f3ff7852-b9dd-4760-b213-a8a031c77d0e(jetbrains.mps.logic.jchr.predicate)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="stgg" ref="r:fcdb37a4-4602-4a05-8d91-e439430734b8(jetbrains.mps.logic.jchr.program)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
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
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
        <child id="1227011543811" name="actualParameter" index="2J__8u" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="lg" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="6193305307616734266" name="jetbrains.mps.lang.plugin.structure.ParameterizedShortcutChange" flags="in" index="1bYApB" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="8131292300541727132" name="jetbrains.mps.lang.plugin.structure.AddKeystrokeStatement" flags="nn" index="1ysbro">
        <child id="8131292300541905245" name="stroke" index="1ysQSp" />
      </concept>
      <concept id="1821622352985038318" name="jetbrains.mps.lang.plugin.structure.ActionParameterReference" flags="nn" index="3DOySe" />
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
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
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
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
      </concept>
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
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
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
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
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
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
        <child id="1423104411233404408" name="repo" index="up2gk" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="597763930871270009" name="jetbrains.mps.lang.smodel.structure.ChildNodeRefExpression" flags="nn" index="3fl2lp">
        <reference id="597763930871272016" name="targetNode" index="3fl3PK" />
        <child id="597763930871272014" name="parent" index="3fl3PI" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="3Qp4N06byjn">
    <property role="TrG5h" value="CollectRuleTemplates" />
    <node concept="2tJIrI" id="3Qp4N06byjo" role="jymVt" />
    <node concept="2YIFZL" id="4boqC9dMlht" role="jymVt">
      <property role="TrG5h" value="createRulesHandler" />
      <node concept="3Tm1VV" id="4boqC9dMnh$" role="1B3o_S" />
      <node concept="3uibUv" id="4boqC9dMlhv" role="3clF45">
        <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
      </node>
      <node concept="3clFbS" id="4boqC9dMlgg" role="3clF47">
        <node concept="3cpWs6" id="4boqC9dMlhp" role="3cqZAp">
          <node concept="2ShNRf" id="4boqC9dMlgm" role="3cqZAk">
            <node concept="1pGfFk" id="4boqC9dMlgn" role="2ShVmc">
              <ref role="37wK5l" to="9kr0:7eGEHDlcF69" resolve="ConstraintRulesHandler" />
              <node concept="3cpWs3" id="4boqC9dNrXk" role="37wK5m">
                <node concept="Xl_RD" id="4boqC9dNs3q" role="3uHU7B">
                  <property role="Xl_RC" value="typechecking" />
                </node>
                <node concept="37vLTw" id="4boqC9dMnMu" role="3uHU7w">
                  <ref role="3cqZAo" node="4boqC9dMnsk" resolve="nameHint" />
                </node>
              </node>
              <node concept="2ShNRf" id="7ISVfSJNAZ" role="37wK5m">
                <node concept="HV5vD" id="7ISVfSK4LO" role="2ShVmc">
                  <ref role="HV5vE" to="i8dg:7eGEHDldgwf" resolve="ConstraintRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4boqC9dMnsk" role="3clF46">
        <property role="TrG5h" value="nameHint" />
        <node concept="17QB3L" id="4boqC9dMnsj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3xj1UscsxoY" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06byjp" role="jymVt">
      <property role="TrG5h" value="collect" />
      <node concept="37vLTG" id="7rWjIq$Idyf" role="3clF46">
        <property role="TrG5h" value="templatesModel" />
        <node concept="H_c77" id="7rWjIq$Ie8n" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2Rw7mr8Siv1" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="2Rw7mr8SiGS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4boqC9dMoIo" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="4boqC9dMpvu" role="1tU5fm">
          <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="10Oyi0" id="3xj1Uscu7dI" role="3clF45" />
      <node concept="3Tm1VV" id="3Qp4N06byju" role="1B3o_S" />
      <node concept="3clFbS" id="3Qp4N06byjv" role="3clF47">
        <node concept="3cpWs8" id="3Qp4N06byj_" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjA" role="3cpWs9">
            <property role="TrG5h" value="manifest" />
            <node concept="3uibUv" id="3Qp4N06byjB" role="1tU5fm">
              <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="2YIFZM" id="3Qp4N06byjC" role="33vP2m">
              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
              <ref role="37wK5l" node="3Qp4N06bynQ" resolve="getRuleManifest" />
              <node concept="37vLTw" id="3Qp4N06byjD" role="37wK5m">
                <ref role="3cqZAo" node="7rWjIq$Idyf" resolve="templatesModel" />
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
        <node concept="3clFbH" id="3xj1Uscty2E" role="3cqZAp" />
        <node concept="3cpWs6" id="3xj1Uscu5Gi" role="3cqZAp">
          <node concept="2YIFZM" id="3xj1UscsvAf" role="3cqZAk">
            <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
            <ref role="37wK5l" node="3xj1UscsvAa" resolve="collectRules" />
            <node concept="37vLTw" id="2Rw7mr8SiU2" role="37wK5m">
              <ref role="3cqZAo" node="2Rw7mr8Siv1" resolve="root" />
            </node>
            <node concept="37vLTw" id="3xj1UscsvAd" role="37wK5m">
              <ref role="3cqZAo" node="3Qp4N06byjG" resolve="rtc" />
            </node>
            <node concept="37vLTw" id="4boqC9dMqD4" role="37wK5m">
              <ref role="3cqZAo" node="4boqC9dMoIo" resolve="handler" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4boqC9dMlM3" role="jymVt" />
    <node concept="2YIFZL" id="3xj1UscsvAa" role="jymVt">
      <property role="TrG5h" value="collectRules" />
      <node concept="3Tm6S6" id="7rWjIq$IdnS" role="1B3o_S" />
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
          <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3xj1UscsvyC" role="3clF47">
        <node concept="3cpWs8" id="7nkyKX7mVqR" role="3cqZAp">
          <node concept="3cpWsn" id="7nkyKX7mVqS" role="3cpWs9">
            <property role="TrG5h" value="main" />
            <node concept="3uibUv" id="7nkyKX7mVqP" role="1tU5fm">
              <ref role="3uigEE" to="i8dg:7eGEHDlc$ap" resolve="RuleBuilder" />
            </node>
            <node concept="2ShNRf" id="7nkyKX7mVqT" role="33vP2m">
              <node concept="1pGfFk" id="7nkyKX7mVqU" role="2ShVmc">
                <ref role="37wK5l" to="i8dg:6lpwCiZjdph" resolve="RuleBuilder" />
                <node concept="2OqwBi" id="4pWvZ2n6xEA" role="37wK5m">
                  <node concept="3fl2lp" id="4pWvZ2n6xu8" role="2Oq$k0">
                    <ref role="3fl3PK" to="kqnc:7nkyKX7rINS" resolve="main" />
                    <node concept="3B5_sB" id="4pWvZ2n6xiF" role="3fl3PI">
                      <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="4pWvZ2n8jRx" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nkyKX7sTVM" role="3cqZAp">
          <node concept="2OqwBi" id="7nkyKX7sU6W" role="3clFbG">
            <node concept="37vLTw" id="7nkyKX7sTVK" role="2Oq$k0">
              <ref role="3cqZAo" node="7nkyKX7mVqS" resolve="main" />
            </node>
            <node concept="liA8E" id="7nkyKX7sUg2" role="2OqNvi">
              <ref role="37wK5l" to="i8dg:7eGEHDlc$bq" resolve="appendHeadReplaced" />
              <node concept="2ShNRf" id="5uFPQ7CfYr4" role="37wK5m">
                <node concept="1pGfFk" id="5uFPQ7Cgcmh" role="2ShVmc">
                  <ref role="37wK5l" to="qrld:5uFPQ7BZtsU" resolve="AbstractConstraint" />
                  <node concept="2YIFZM" id="5uFPQ7CgepP" role="37wK5m">
                    <ref role="37wK5l" to="qrld:54i3FxcZQAb" resolve="symbol" />
                    <ref role="1Pybhc" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
                    <node concept="2OqwBi" id="4pWvZ2n7sTW" role="37wK5m">
                      <node concept="3fl2lp" id="4pWvZ2n7sTX" role="2Oq$k0">
                        <ref role="3fl3PK" to="kqnc:7nkyKX7rINS" resolve="main" />
                        <node concept="3B5_sB" id="4pWvZ2n7sTY" role="3fl3PI">
                          <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4pWvZ2n7sTZ" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5uFPQ7CgeEK" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7nkyKX7sWVX" role="3cqZAp" />
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
                <node concept="37vLTw" id="7nkyKX7mVQb" role="37wK5m">
                  <ref role="3cqZAo" node="7nkyKX7mVqS" resolve="main" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvyX" role="3cqZAp" />
        <node concept="3cpWs8" id="7nkyKX7vtmM" role="3cqZAp">
          <node concept="3cpWsn" id="7nkyKX7vtmN" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7nkyKX7vtmO" role="1tU5fm">
              <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7nkyKX7vtCO" role="33vP2m">
              <ref role="37wK5l" to="4t1t:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="4t1t:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UsctHWG" role="3cqZAp" />
        <node concept="3clFbF" id="7nkyKX7vEI8" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vEI9" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vEIa" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vEIb" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vEIc" role="2OqNvi">
                <ref role="37wK5l" to="4t1t:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="7nkyKX7vEId" role="37wK5m">
                  <node concept="37vLTw" id="7nkyKX7vEIe" role="2Oq$k0">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7vEIf" role="2OqNvi">
                    <ref role="37wK5l" to="bdf1:5NuEpF1pL7f" resolve="generateAllWithNoInput" />
                    <node concept="37vLTw" id="7nkyKX7vEIg" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                    </node>
                    <node concept="3clFbT" id="7nkyKX7vETc" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7vEIi" role="37vLTJ">
              <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3x8pcoFu_iw" role="3cqZAp" />
        <node concept="3clFbF" id="7nkyKX7vF3w" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vF3x" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vF3y" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vF3z" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vF3$" role="2OqNvi">
                <ref role="37wK5l" to="4t1t:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="7nkyKX7vF3_" role="37wK5m">
                  <node concept="37vLTw" id="7nkyKX7vF3A" role="2Oq$k0">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7vF3B" role="2OqNvi">
                    <ref role="37wK5l" to="bdf1:12yN8DyNqcj" resolve="generateAll" />
                    <node concept="37vLTw" id="7nkyKX7vF3C" role="37wK5m">
                      <ref role="3cqZAo" node="2Rw7mr8Sa0e" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="7nkyKX7vF3D" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7vF3E" role="37vLTJ">
              <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1r6$3" role="3cqZAp" />
        <node concept="3clFbF" id="7nkyKX7vFeZ" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vFf0" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vFf1" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vFf2" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vFf3" role="2OqNvi">
                <ref role="37wK5l" to="4t1t:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="7nkyKX7vFf4" role="37wK5m">
                  <node concept="37vLTw" id="7nkyKX7vFf5" role="2Oq$k0">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7vFf6" role="2OqNvi">
                    <ref role="37wK5l" to="bdf1:5NuEpF1pL7f" resolve="generateAllWithNoInput" />
                    <node concept="37vLTw" id="7nkyKX7vFf7" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                    </node>
                    <node concept="3clFbT" id="7nkyKX7vFq7" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7vFf9" role="37vLTJ">
              <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7nkyKX7nEHZ" role="3cqZAp" />
        <node concept="3clFbF" id="7nkyKX7vF$r" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vF$s" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vF$t" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vF$u" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vF$v" role="2OqNvi">
                <ref role="37wK5l" to="4t1t:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="7nkyKX7vF$w" role="37wK5m">
                  <node concept="37vLTw" id="7nkyKX7vF$x" role="2Oq$k0">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7vF$y" role="2OqNvi">
                    <ref role="37wK5l" to="bdf1:7nkyKX7ncaN" resolve="generateMain" />
                    <node concept="37vLTw" id="7nkyKX7vF$z" role="37wK5m">
                      <ref role="3cqZAo" node="2Rw7mr8Sa0e" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="7nkyKX7vF$$" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7vF$_" role="37vLTJ">
              <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvzJ" role="3cqZAp" />
        <node concept="3clFbF" id="7nkyKX7vyX_" role="3cqZAp">
          <node concept="1rXfSq" id="7nkyKX7vyXz" role="3clFbG">
            <ref role="37wK5l" node="7nkyKX7nByt" resolve="logFeedback" />
            <node concept="37vLTw" id="7nkyKX7vz93" role="37wK5m">
              <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="34ab3g" id="3xj1Uscsv_F" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="2YIFZM" id="7nkyKX7xHyq" role="34bqiv">
            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <node concept="37vLTw" id="7nkyKX7xHI0" role="37wK5m">
              <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscsv_J" role="3cqZAp" />
        <node concept="3cpWs6" id="3xj1Uscu4fR" role="3cqZAp">
          <node concept="2OqwBi" id="7nkyKX7v$pm" role="3cqZAk">
            <node concept="2OqwBi" id="7nkyKX7v$6J" role="2Oq$k0">
              <node concept="37vLTw" id="7nkyKX7vzWH" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7v$er" role="2OqNvi">
                <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
              </node>
            </node>
            <node concept="liA8E" id="7nkyKX7v$Nv" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.size():int" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7n5cc" role="jymVt" />
    <node concept="2YIFZL" id="7nkyKX7nByt" role="jymVt">
      <property role="TrG5h" value="logFeedback" />
      <node concept="3Tm6S6" id="7nkyKX7nByu" role="1B3o_S" />
      <node concept="3cqZAl" id="7nkyKX7vziR" role="3clF45" />
      <node concept="37vLTG" id="7nkyKX7nByl" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="7nkyKX7nBym" role="1tU5fm">
          <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
        </node>
      </node>
      <node concept="3clFbS" id="7nkyKX7nBxH" role="3clF47">
        <node concept="3clFbJ" id="7nkyKX7nBxI" role="3cqZAp">
          <node concept="2OqwBi" id="7nkyKX7nBxJ" role="3clFbw">
            <node concept="37vLTw" id="7nkyKX7nByo" role="2Oq$k0">
              <ref role="3cqZAo" node="7nkyKX7nByl" resolve="result" />
            </node>
            <node concept="liA8E" id="7nkyKX7nBxL" role="2OqNvi">
              <ref role="37wK5l" to="4t1t:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
          <node concept="3clFbS" id="7nkyKX7nBxM" role="3clFbx">
            <node concept="34ab3g" id="7nkyKX7nBxN" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="3cpWs3" id="7nkyKX7nBxO" role="34bqiv">
                <node concept="Xl_RD" id="7nkyKX7nBxP" role="3uHU7B">
                  <property role="Xl_RC" value="collecting rule templates: " />
                </node>
                <node concept="37vLTw" id="7nkyKX7nByn" role="3uHU7w">
                  <ref role="3cqZAo" node="7nkyKX7nByl" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7nkyKX7nBxT" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="7nkyKX7nBxU" role="9aQIa">
            <node concept="3clFbS" id="7nkyKX7nBxV" role="9aQI4">
              <node concept="1DcWWT" id="7nkyKX7vgRJ" role="3cqZAp">
                <node concept="3clFbS" id="7nkyKX7vgRL" role="2LFqv$">
                  <node concept="34ab3g" id="7nkyKX7nBy6" role="3cqZAp">
                    <property role="35gtTG" value="warn" />
                    <property role="34fQS0" value="true" />
                    <node concept="3cpWs3" id="7nkyKX7nBy7" role="34bqiv">
                      <node concept="37vLTw" id="7nkyKX7nBy8" role="3uHU7w">
                        <ref role="3cqZAo" node="7nkyKX7vgRN" resolve="e" />
                      </node>
                      <node concept="Xl_RD" id="7nkyKX7nBy9" role="3uHU7B">
                        <property role="Xl_RC" value="error collecting rule templates: " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7nkyKX7nBya" role="34bMjA">
                      <node concept="37vLTw" id="7nkyKX7nByb" role="2Oq$k0">
                        <ref role="3cqZAo" node="7nkyKX7vgRN" resolve="e" />
                      </node>
                      <node concept="liA8E" id="7nkyKX7nByc" role="2OqNvi">
                        <ref role="37wK5l" to="4t1t:7Oc59RSJGG8" resolve="exception" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="7nkyKX7vgRN" role="1Duv9x">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="7nkyKX7vgRR" role="1tU5fm">
                    <ref role="3uigEE" to="4t1t:7Oc59RSEjjA" resolve="ReportedError" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7nkyKX7vgRS" role="1DdaDG">
                  <node concept="37vLTw" id="7nkyKX7vgRT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7nkyKX7nByl" resolve="result" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7vgRU" role="2OqNvi">
                    <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7nkyKX7vzzr" role="3cqZAp">
                <node concept="2OqwBi" id="7nkyKX7nByg" role="3clFbG">
                  <node concept="2OqwBi" id="7nkyKX7nByh" role="2Oq$k0">
                    <node concept="37vLTw" id="7nkyKX7nByq" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nkyKX7nByl" resolve="result" />
                    </node>
                    <node concept="liA8E" id="7nkyKX7nByj" role="2OqNvi">
                      <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7nkyKX7vgdo" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7nCRK" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06bynQ" role="jymVt">
      <property role="TrG5h" value="getRuleManifest" />
      <node concept="3Tm6S6" id="3Qp4N06bynR" role="1B3o_S" />
      <node concept="3uibUv" id="3Qp4N06bynS" role="3clF45">
        <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
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
              <ref role="37wK5l" to="18ew:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
              <ref role="1Pybhc" to="18ew:~JavaNameUtil" resolve="JavaNameUtil" />
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
              <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
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
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3uibUv" id="3Qp4N06byob" role="11_B2D">
                    <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
                  </node>
                </node>
                <node concept="10QFUN" id="3Qp4N06byoc" role="33vP2m">
                  <node concept="3uibUv" id="3Qp4N06byod" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3uibUv" id="3Qp4N06byoe" role="11_B2D">
                      <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3Qp4N06byof" role="10QFUP">
                    <ref role="37wK5l" to="wyt6:~Class.forName(java.lang.String):java.lang.Class" resolve="forName" />
                    <ref role="1Pybhc" to="wyt6:~Class" resolve="Class" />
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
                    <ref role="37wK5l" to="wyt6:~Class.newInstance():java.lang.Object" resolve="newInstance" />
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
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
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
    <property role="TrG5h" value="MarkTypes" />
    <property role="2uzpH1" value="Mark Types" />
    <property role="72QZ$" value="true" />
    <node concept="2ScWuX" id="2Rw7mr8TSxK" role="tmbBb">
      <node concept="3clFbS" id="2Rw7mr8TSxL" role="2VODD2">
        <node concept="3clFbF" id="4pWvZ2nnfSm" role="3cqZAp">
          <node concept="2OqwBi" id="4pWvZ2nngFk" role="3clFbG">
            <node concept="2OqwBi" id="4pWvZ2nng8e" role="2Oq$k0">
              <node concept="tl45R" id="4pWvZ2nnfSk" role="2Oq$k0" />
              <node concept="liA8E" id="4pWvZ2nngsE" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation():com.intellij.openapi.actionSystem.Presentation" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="4pWvZ2nngY0" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String):void" resolve="setText" />
              <node concept="3K4zz7" id="4pWvZ2nnlFU" role="37wK5m">
                <node concept="Xl_RD" id="4pWvZ2nnlXQ" role="3K4E3e">
                  <property role="Xl_RC" value="Mark Types on the Fly" />
                </node>
                <node concept="Xl_RD" id="4pWvZ2nnrX2" role="3K4GZi">
                  <property role="Xl_RC" value="Mark Types" />
                </node>
                <node concept="2OqwBi" id="4pWvZ2nnljH" role="3K4Cdx">
                  <node concept="2WthIp" id="4pWvZ2nnljK" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="4pWvZ2nnljM" role="2OqNvi">
                    <ref role="2WH_rO" node="4pWvZ2nmH_C" resolve="onTheFly" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
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
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
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
                    <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
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
    <node concept="2JriF1" id="4pWvZ2nmH_C" role="2JrayB">
      <property role="TrG5h" value="onTheFly" />
      <node concept="3Tm6S6" id="4pWvZ2nmH_D" role="1B3o_S" />
      <node concept="10P_77" id="4pWvZ2nmIvm" role="1tU5fm" />
    </node>
    <node concept="tnohg" id="3Qp4N06byo$" role="tncku">
      <node concept="3clFbS" id="3Qp4N06byo_" role="2VODD2">
        <node concept="3clFbF" id="3NRKQ2BK6ed" role="3cqZAp">
          <node concept="2YIFZM" id="3NRKQ2BK6ee" role="3clFbG">
            <ref role="1Pybhc" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
            <ref role="37wK5l" node="41ox5VnrNu5" resolve="clearAll" />
            <node concept="2OqwBi" id="3NRKQ2BK6ef" role="37wK5m">
              <node concept="2WthIp" id="3NRKQ2BK6eg" role="2Oq$k0" />
              <node concept="1DTwFV" id="3NRKQ2BK6eh" role="2OqNvi">
                <ref role="2WH_rO" node="41ox5VnnCZG" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pPth$lN9L8" role="3cqZAp" />
        <node concept="3cpWs8" id="1pPth$lNMX3" role="3cqZAp">
          <node concept="3cpWsn" id="1pPth$lNMX4" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="1pPth$lNMX2" role="1tU5fm">
              <ref role="3uigEE" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
            </node>
            <node concept="2ShNRf" id="1pPth$lNMX5" role="33vP2m">
              <node concept="YeOm9" id="1pPth$lNMX6" role="2ShVmc">
                <node concept="1Y3b0j" id="1pPth$lNMX7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                  <ref role="37wK5l" node="1pPth$lK1ZL" resolve="TypecheckingHelper" />
                  <node concept="2OqwBi" id="1pPth$lNMX8" role="37wK5m">
                    <node concept="2WthIp" id="1pPth$lNMX9" role="2Oq$k0">
                      <ref role="32nkFo" node="3Qp4N06byoz" resolve="MarkTypes" />
                    </node>
                    <node concept="1DTwFV" id="1pPth$lNMXa" role="2OqNvi">
                      <ref role="2WH_rO" node="7iCFfvQBVbg" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="1pPth$lNMXb" role="1B3o_S" />
                  <node concept="3clFb_" id="1pPth$lNMXc" role="jymVt">
                    <property role="TrG5h" value="finished" />
                    <property role="1EzhhJ" value="false" />
                    <property role="IEkAT" value="false" />
                    <node concept="37vLTG" id="1pPth$lNMXd" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1pPth$lNMXe" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1pPth$lNMXf" role="3clF45" />
                    <node concept="3Tm1VV" id="1pPth$lNMXg" role="1B3o_S" />
                    <node concept="3clFbS" id="1pPth$lNMXh" role="3clF47">
                      <node concept="3clFbF" id="1pPth$lOa0n" role="3cqZAp">
                        <node concept="2YIFZM" id="1pPth$lOa0o" role="3clFbG">
                          <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <node concept="37vLTw" id="1pPth$lOad6" role="37wK5m">
                            <ref role="3cqZAo" node="1pPth$lNMXd" resolve="message" />
                          </node>
                          <node concept="Xl_RD" id="1pPth$lOa0s" role="37wK5m">
                            <property role="Xl_RC" value="Mark Types" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="1pPth$lNMXi" role="jymVt">
                    <property role="TrG5h" value="failed" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="37vLTG" id="1pPth$lNMXj" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1pPth$lNMXk" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1pPth$lNMXl" role="3clF45" />
                    <node concept="3Tm1VV" id="1pPth$lNMXm" role="1B3o_S" />
                    <node concept="3clFbS" id="1pPth$lNMXn" role="3clF47">
                      <node concept="3clFbF" id="1pPth$lO9Ku" role="3cqZAp">
                        <node concept="2YIFZM" id="1pPth$lO9Kv" role="3clFbG">
                          <ref role="37wK5l" to="jkm4:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <node concept="37vLTw" id="1pPth$lO9Xd" role="37wK5m">
                            <ref role="3cqZAo" node="1pPth$lNMXj" resolve="message" />
                          </node>
                          <node concept="Xl_RD" id="1pPth$lO9Kz" role="37wK5m">
                            <property role="Xl_RC" value="Mark Types" />
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
        <node concept="3clFbJ" id="4pWvZ2nmIQH" role="3cqZAp">
          <node concept="3clFbS" id="4pWvZ2nmIQJ" role="3clFbx">
            <node concept="3clFbF" id="4pWvZ2nmJf1" role="3cqZAp">
              <node concept="2OqwBi" id="4pWvZ2nmM3x" role="3clFbG">
                <node concept="37vLTw" id="4pWvZ2nmM3y" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                </node>
                <node concept="liA8E" id="4pWvZ2nmM3z" role="2OqNvi">
                  <ref role="37wK5l" node="1pPth$lNtBJ" resolve="withSteps" />
                  <node concept="2OqwBi" id="4pWvZ2nmM3$" role="37wK5m">
                    <node concept="37vLTw" id="4pWvZ2nmM3_" role="2Oq$k0">
                      <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2nmM3A" role="2OqNvi">
                      <ref role="37wK5l" node="1pPth$lBvOo" resolve="collectRules" />
                      <node concept="2YIFZM" id="4pWvZ2nmM3B" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                        <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                        <node concept="2OqwBi" id="4pWvZ2nmM3C" role="37wK5m">
                          <node concept="2WthIp" id="4pWvZ2nmM3D" role="2Oq$k0" />
                          <node concept="1DTwFV" id="4pWvZ2nmM3E" role="2OqNvi">
                            <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4pWvZ2nmM3F" role="37wK5m">
                    <node concept="37vLTw" id="4pWvZ2nmM3G" role="2Oq$k0">
                      <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2nmM3H" role="2OqNvi">
                      <ref role="37wK5l" node="4pWvZ2nlC2q" resolve="solveOnTheFly" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4pWvZ2nmM3I" role="37wK5m">
                    <node concept="37vLTw" id="4pWvZ2ngP$N" role="2Oq$k0">
                      <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2nmM3J" role="2OqNvi">
                      <ref role="37wK5l" node="1pPth$lDplP" resolve="highlightTypesAndErrors" />
                      <node concept="2OqwBi" id="4pWvZ2nmM3K" role="37wK5m">
                        <node concept="2WthIp" id="4pWvZ2nmM3L" role="2Oq$k0" />
                        <node concept="1DTwFV" id="4pWvZ2ngPVh" role="2OqNvi">
                          <ref role="2WH_rO" node="41ox5VnnCZG" resolve="editorComponent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4pWvZ2nmJ1c" role="3clFbw">
            <node concept="2WthIp" id="4pWvZ2nmJ1f" role="2Oq$k0" />
            <node concept="2BZ7hE" id="4pWvZ2nmJ1h" role="2OqNvi">
              <ref role="2WH_rO" node="4pWvZ2nmH_C" resolve="onTheFly" />
            </node>
          </node>
          <node concept="9aQIb" id="4pWvZ2nmMCk" role="9aQIa">
            <node concept="3clFbS" id="4pWvZ2nmMCl" role="9aQI4">
              <node concept="3clFbF" id="1pPth$lN9Sg" role="3cqZAp">
                <node concept="2OqwBi" id="1pPth$lNNLl" role="3clFbG">
                  <node concept="37vLTw" id="1pPth$lNMXo" role="2Oq$k0">
                    <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                  </node>
                  <node concept="liA8E" id="1pPth$lNNUb" role="2OqNvi">
                    <ref role="37wK5l" node="1pPth$lNtBJ" resolve="withSteps" />
                    <node concept="2OqwBi" id="1pPth$lNO07" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lNNYn" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="1pPth$lNO5j" role="2OqNvi">
                        <ref role="37wK5l" node="1pPth$lBvOo" resolve="collectRules" />
                        <node concept="2YIFZM" id="1pPth$lNOu_" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                          <node concept="2OqwBi" id="1pPth$lNOxh" role="37wK5m">
                            <node concept="2WthIp" id="1pPth$lNOxk" role="2Oq$k0" />
                            <node concept="1DTwFV" id="1pPth$lNOxm" role="2OqNvi">
                              <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lNPhW" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lNP6I" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="1pPth$lNPrk" role="2OqNvi">
                        <ref role="37wK5l" node="1pPth$lBwLp" resolve="produceHandler" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lNPGi" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lNPBe" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="1pPth$lNPU0" role="2OqNvi">
                        <ref role="37wK5l" node="1pPth$lD9_s" resolve="makeHandler" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lNQc0" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lNQ6_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="1pPth$lNQpZ" role="2OqNvi">
                        <ref role="37wK5l" node="1pPth$lDhou" resolve="runTypechecking" />
                        <node concept="2YIFZM" id="1pPth$lNQAI" role="37wK5m">
                          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                          <node concept="2OqwBi" id="1pPth$lNQAJ" role="37wK5m">
                            <node concept="2WthIp" id="1pPth$lNQAK" role="2Oq$k0" />
                            <node concept="1DTwFV" id="1pPth$lNQAL" role="2OqNvi">
                              <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lNR83" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lNQZ8" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
                      </node>
                      <node concept="liA8E" id="1pPth$lNRos" role="2OqNvi">
                        <ref role="37wK5l" node="1pPth$lDplP" resolve="highlightTypesAndErrors" />
                        <node concept="2OqwBi" id="1pPth$lNRya" role="37wK5m">
                          <node concept="2WthIp" id="1pPth$lNRyd" role="2Oq$k0" />
                          <node concept="1DTwFV" id="1pPth$lNRyf" role="2OqNvi">
                            <ref role="2WH_rO" node="41ox5VnnCZG" resolve="editorComponent" />
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
        <node concept="3clFbH" id="1pPth$lN9Mu" role="3cqZAp" />
        <node concept="3clFbF" id="1pPth$lO8Nq" role="3cqZAp">
          <node concept="2OqwBi" id="1pPth$lO8WY" role="3clFbG">
            <node concept="37vLTw" id="1pPth$lO8No" role="2Oq$k0">
              <ref role="3cqZAo" node="1pPth$lNMX4" resolve="helper" />
            </node>
            <node concept="liA8E" id="1pPth$lO9dC" role="2OqNvi">
              <ref role="37wK5l" node="1pPth$lNVW2" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7iCFfvQBVbg" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7iCFfvQBVbh" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2Rw7mr8Sq3T" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="2Rw7mr8Sq3U" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="41ox5VnnCZG" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="41ox5VnnCZH" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="2Rw7mr8T72C">
    <property role="TrG5h" value="TypecheckingEditorGroup" />
    <node concept="ftmFs" id="2Rw7mr8T79R" role="ftER_">
      <node concept="tCFHf" id="4pWvZ2nmSBc" role="ftvYc">
        <ref role="tCJdB" node="3Qp4N06byoz" resolve="MarkTypes" />
        <node concept="3clFbT" id="4pWvZ2nmSBd" role="2J__8u">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="tCFHf" id="2Rw7mr8T7aK" role="ftvYc">
        <ref role="tCJdB" node="3Qp4N06byoz" resolve="MarkTypes" />
        <node concept="3clFbT" id="4pWvZ2nmSBs" role="2J__8u">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="tCFHf" id="41ox5VnrVW_" role="ftvYc">
        <ref role="tCJdB" node="41ox5VnrUX7" resolve="ClearTypes" />
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
        <node concept="3clFbF" id="7RDCjSXjUm3" role="3cqZAp">
          <node concept="1rXfSq" id="7RDCjSXjUm1" role="3clFbG">
            <ref role="37wK5l" node="7RDCjSXjQOU" resolve="doMake" />
            <node concept="37vLTw" id="4boqC9dLM78" role="37wK5m">
              <ref role="3cqZAo" node="4boqC9dLFS2" resolve="toMake" />
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
      <node concept="37vLTG" id="4boqC9dLFS2" role="3clF46">
        <property role="TrG5h" value="toMake" />
        <node concept="H_c77" id="4boqC9dLGcE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7RDCjSXjN6K" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7RDCjSXjN6L" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
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
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="7RDCjSXirrl" role="37wK5m">
                    <property role="Xl_RC" value="make must not be called from inside a command" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1Y18t$8YAKy" role="3clFbw">
            <node concept="2YIFZM" id="1Y18t$8YAsV" role="2Oq$k0">
              <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
              <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
            </node>
            <node concept="liA8E" id="1Y18t$8YBcr" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.isInsideCommand():boolean" resolve="isInsideCommand" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7RDCjSXiM5A" role="3cqZAp" />
        <node concept="3clFbF" id="5wEedBsf44S" role="3cqZAp">
          <node concept="2OqwBi" id="5wEedBsf6W2" role="3clFbG">
            <node concept="2OqwBi" id="5wEedBsf4g0" role="2Oq$k0">
              <node concept="liA8E" id="4j8HkbSLZ$3" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
              <node concept="37vLTw" id="5wEedBsf44R" role="2Oq$k0">
                <ref role="3cqZAo" node="7RDCjSXiLWv" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="5wEedBsf7W$" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable):void" resolve="executeCommand" />
              <node concept="1bVj0M" id="5wEedBsf8nZ" role="37wK5m">
                <node concept="3clFbS" id="5wEedBsf8o0" role="1bW5cS">
                  <node concept="3clFbF" id="5wEedBsf8X1" role="3cqZAp">
                    <node concept="2OqwBi" id="5wEedBsfahx" role="3clFbG">
                      <node concept="liA8E" id="5wEedBsfaR$" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.saveAll():void" resolve="saveAll" />
                      </node>
                      <node concept="2OqwBi" id="5wEedBsf96I" role="2Oq$k0">
                        <node concept="liA8E" id="5wEedBsfaaj" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
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
                    <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
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
                  <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
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
                      <ref role="1Y3XeK" to="wyt6:~Thread" resolve="Thread" />
                      <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.String)" resolve="Thread" />
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
                                      <ref role="37wK5l" to="5zyv:~Future.get():java.lang.Object" resolve="get" />
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
                                  <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
                                  <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
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
                                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
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
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7RDCjSXnjII" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.start():void" resolve="start" />
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
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
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
    <node concept="2tJIrI" id="7dgRGU4ocQV" role="jymVt" />
    <node concept="Wx3nA" id="5mr7UHcbnci" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="PREDICATE_SYMBOLS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5mr7UHcbl_B" role="1B3o_S" />
      <node concept="10Q1$e" id="5mr7UHcbnc4" role="1tU5fm">
        <node concept="3uibUv" id="5mr7UHcbq0Z" role="10Q1$1">
          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="2ShNRf" id="5mr7UHcbowK" role="33vP2m">
        <node concept="3g6Rrh" id="5mr7UHcboy8" role="2ShVmc">
          <node concept="10M0yZ" id="5mr7UHcboyR" role="3g7hyw">
            <ref role="3cqZAo" to="oy3s:5uFPQ7C29mw" resolve="UNI_SYM" />
            <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboyX" role="3g7hyw">
            <ref role="3cqZAo" to="oy3s:5uFPQ7C23RV" resolve="EQ_SYM" />
            <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboz3" role="3g7hyw">
            <ref role="1PxDUh" to="oy3s:6infEALAfer" resolve="AssertBuiltinConstraint" />
            <ref role="3cqZAo" to="oy3s:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboz9" role="3g7hyw">
            <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
            <ref role="3cqZAo" to="xq5w:5uFPQ7C26$b" resolve="BOUND_SYM" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcbozf" role="3g7hyw">
            <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
            <ref role="3cqZAo" to="xq5w:5uFPQ7C279$" resolve="FREE_SYM" />
          </node>
          <node concept="3uibUv" id="5mr7UHcbqo2" role="3g7fb8">
            <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5mr7UHcbkql" role="jymVt" />
    <node concept="2YIFZL" id="7dgRGU4oCXw" role="jymVt">
      <property role="TrG5h" value="remainingAllowed" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7dgRGU4oeda" role="3clF47">
        <node concept="3cpWs8" id="7dgRGU4oxop" role="3cqZAp">
          <node concept="3cpWsn" id="7dgRGU4oxoq" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="7dgRGU4oxoh" role="1tU5fm">
              <node concept="17QB3L" id="7dgRGU4oxok" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="7dgRGU4oxor" role="33vP2m">
              <node concept="Tc6Ow" id="7dgRGU4oxos" role="2ShVmc">
                <node concept="17QB3L" id="7dgRGU4oxot" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7nkyKX7gPC3" role="3cqZAp">
          <node concept="3SKdUq" id="7nkyKX7gPCO" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: extract the flag &quot;resulting constraint&quot; to mark ones that constitute the results" />
          </node>
        </node>
        <node concept="3clFbF" id="1j288BfiKNQ" role="3cqZAp">
          <node concept="2OqwBi" id="1j288BfiKNR" role="3clFbG">
            <node concept="37vLTw" id="1j288BfiKNS" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="1j288BfiKNT" role="2OqNvi">
              <node concept="2OqwBi" id="1j288BfiKNU" role="25WWJ7">
                <node concept="3fl2lp" id="1j288BfiKNV" role="2Oq$k0">
                  <ref role="3fl3PK" to="kqnc:3Qp4N06bUPr" resolve="ubound" />
                  <node concept="3B5_sB" id="1j288BfiKNW" role="3fl3PI">
                    <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1j288BfiKNX" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1j288BfiKxk" role="3cqZAp">
          <node concept="2OqwBi" id="1j288BfiKxl" role="3clFbG">
            <node concept="37vLTw" id="1j288BfiKxm" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="1j288BfiKxn" role="2OqNvi">
              <node concept="2OqwBi" id="1j288BfiKxo" role="25WWJ7">
                <node concept="3fl2lp" id="1j288BfiKxp" role="2Oq$k0">
                  <ref role="3fl3PK" to="kqnc:3Qp4N06bUPs" resolve="lbound" />
                  <node concept="3B5_sB" id="1j288BfiKxq" role="3fl3PI">
                    <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1j288BfiKxr" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7dgRGU4ozaS" role="3cqZAp">
          <node concept="2OqwBi" id="7dgRGU4ozaT" role="3clFbG">
            <node concept="37vLTw" id="7dgRGU4ozaU" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="7dgRGU4ozaV" role="2OqNvi">
              <node concept="2OqwBi" id="7dgRGU4ozaW" role="25WWJ7">
                <node concept="3fl2lp" id="7dgRGU4ozaX" role="2Oq$k0">
                  <ref role="3fl3PK" to="kqnc:3Qp4N06bUPt" resolve="varname" />
                  <node concept="3B5_sB" id="7dgRGU4ozaY" role="3fl3PI">
                    <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                  </node>
                </node>
                <node concept="3TrcHB" id="7dgRGU4ozaZ" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7dgRGU4ot2Y" role="3cqZAp">
          <node concept="2OqwBi" id="7dgRGU4oxFW" role="3clFbG">
            <node concept="37vLTw" id="7dgRGU4oxou" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="7dgRGU4oyoh" role="2OqNvi">
              <node concept="2OqwBi" id="6UqNvvARseB" role="25WWJ7">
                <node concept="10M0yZ" id="5uFPQ7ClEIj" role="2Oq$k0">
                  <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
                  <ref role="3cqZAo" to="i348:5uFPQ7CgjLS" resolve="TYPEOF_SYM" />
                </node>
                <node concept="liA8E" id="6UqNvvARsi0" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7dgRGU4oz57" role="3cqZAp">
          <node concept="37vLTw" id="7dgRGU4oz55" role="3clFbG">
            <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7dgRGU4oFnF" role="3clF45">
        <node concept="17QB3L" id="7dgRGU4oFnH" role="_ZDj9" />
      </node>
      <node concept="3Tm1VV" id="7dgRGU4oed9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="41ox5Vnk7ln" role="jymVt" />
    <node concept="2YIFZL" id="41ox5Vnkht$" role="jymVt">
      <property role="TrG5h" value="runTypecheckingRules" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="10P_77" id="7dgRGU4pqKb" role="3clF45" />
      <node concept="3clFbS" id="41ox5VnkgxM" role="3clF47">
        <node concept="3clFbF" id="41ox5VnkYST" role="3cqZAp">
          <node concept="2YIFZM" id="41ox5VnkZgE" role="3clFbG">
            <ref role="37wK5l" to="w1kc:~ModelAccess.assertLegalRead():void" resolve="assertLegalRead" />
            <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnkhIX" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VnkhLu" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnkhLv" role="3cpWs9">
            <property role="TrG5h" value="handlerMdl" />
            <node concept="H_c77" id="41ox5VnkhLw" role="1tU5fm" />
            <node concept="37vLTw" id="4boqC9dOeXW" role="33vP2m">
              <ref role="3cqZAo" node="4boqC9dOdY9" resolve="rulesModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="41ox5VnkhLy" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnkhLz" role="3cpWs9">
            <property role="TrG5h" value="handlerMod" />
            <node concept="3uibUv" id="41ox5VnkhL$" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="41ox5VnkhL_" role="33vP2m">
              <node concept="2JrnkZ" id="41ox5VnkhLA" role="2Oq$k0">
                <node concept="37vLTw" id="41ox5VnkhLB" role="2JrQYb">
                  <ref role="3cqZAo" node="41ox5VnkhLv" resolve="handlerMdl" />
                </node>
              </node>
              <node concept="liA8E" id="41ox5VnkhLC" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4boqC9dOcYg" role="3cqZAp">
          <node concept="3cpWsn" id="4boqC9dOcYh" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="4boqC9dOcYe" role="1tU5fm" />
            <node concept="2OqwBi" id="4boqC9dOcYi" role="33vP2m">
              <node concept="1PxgMI" id="4boqC9dOcYj" role="2Oq$k0">
                <ref role="1PxNhF" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
                <node concept="37vLTw" id="4boqC9dOcYk" role="1PxMeX">
                  <ref role="3cqZAo" node="1zN1RIkMJJI" resolve="root" />
                </node>
              </node>
              <node concept="3TrcHB" id="4boqC9dOcYl" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5mr7UHcbMCj" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5Vnki5M" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5Vnki5N" role="3cpWs9">
            <property role="TrG5h" value="handlerCls" />
            <node concept="3uibUv" id="41ox5Vnki5O" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3uibUv" id="41ox5Vnl$GR" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
              </node>
            </node>
            <node concept="2YIFZM" id="5mr7UHcbKf3" role="33vP2m">
              <ref role="1Pybhc" node="41ox5Vnk76a" resolve="RunTypecheckingRules" />
              <ref role="37wK5l" node="5mr7UHcbKeS" resolve="findHandlerClass" />
              <node concept="37vLTw" id="5mr7UHcbKf0" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VnkhLz" resolve="handlerMod" />
              </node>
              <node concept="37vLTw" id="5mr7UHcbKf1" role="37wK5m">
                <ref role="3cqZAo" node="41ox5VnkhLv" resolve="handlerMdl" />
              </node>
              <node concept="37vLTw" id="5mr7UHcbKf2" role="37wK5m">
                <ref role="3cqZAo" node="4boqC9dOcYh" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5Vnki5Z" role="3cqZAp" />
        <node concept="3cpWs8" id="5mr7UHcbsDR" role="3cqZAp">
          <node concept="3cpWsn" id="5mr7UHcbsDS" role="3cpWs9">
            <property role="TrG5h" value="evaluationSession" />
            <node concept="3uibUv" id="5mr7UHcbsDe" role="1tU5fm">
              <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
            </node>
            <node concept="2OqwBi" id="5mr7UHcbsDT" role="33vP2m">
              <node concept="2OqwBi" id="5mr7UHcbsDU" role="2Oq$k0">
                <node concept="2OqwBi" id="5mr7UHcbsDV" role="2Oq$k0">
                  <node concept="2OqwBi" id="5jPBdKSAEU" role="2Oq$k0">
                    <node concept="2OqwBi" id="5mr7UHcbsDW" role="2Oq$k0">
                      <node concept="2YIFZM" id="5mr7UHcbsDX" role="2Oq$k0">
                        <ref role="37wK5l" to="rchb:7ISVfSIwfH" resolve="newSession" />
                        <ref role="1Pybhc" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
                      </node>
                      <node concept="liA8E" id="5mr7UHcbsDY" role="2OqNvi">
                        <ref role="37wK5l" to="rchb:5mr7UHcbbR2" resolve="withParam" />
                        <node concept="Xl_RD" id="5mr7UHcbsDZ" role="37wK5m">
                          <property role="Xl_RC" value="jchr.handler.class" />
                        </node>
                        <node concept="37vLTw" id="5mr7UHcbsE0" role="37wK5m">
                          <ref role="3cqZAo" node="41ox5Vnki5N" resolve="handlerCls" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5jPBdKSAMP" role="2OqNvi">
                      <ref role="37wK5l" to="rchb:5mr7UHcbbR2" resolve="withParam" />
                      <node concept="Xl_RD" id="5jPBdKSB5t" role="37wK5m">
                        <property role="Xl_RC" value="jchr.tracer" />
                      </node>
                      <node concept="37vLTw" id="5jPBdKSC2n" role="37wK5m">
                        <ref role="3cqZAo" node="4i4XGQZnvKs" resolve="tracer" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5mr7UHcbsE1" role="2OqNvi">
                    <ref role="37wK5l" to="rchb:5uFPQ7Bwu9Q" resolve="withPredicates" />
                    <node concept="37vLTw" id="5mr7UHcbsE2" role="37wK5m">
                      <ref role="3cqZAo" node="5mr7UHcbnci" resolve="PREDICATE_SYMBOLS" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5mr7UHcbsE3" role="2OqNvi">
                  <ref role="37wK5l" to="rchb:5uFPQ7Bwvg_" resolve="withTrace" />
                  <node concept="37vLTw" id="5mr7UHcbsE4" role="37wK5m">
                    <ref role="3cqZAo" node="24Vro6cQKgF" resolve="cstracer" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5mr7UHcbsE5" role="2OqNvi">
                <ref role="37wK5l" to="rchb:7ISVfSIuSh" resolve="start" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5mr7UHcbqIA" role="3cqZAp" />
        <node concept="3cpWs8" id="6HT7BWBUcvI" role="3cqZAp">
          <node concept="3cpWsn" id="6HT7BWBUcvJ" role="3cpWs9">
            <property role="TrG5h" value="formatter" />
            <node concept="3uibUv" id="6HT7BWBUcvK" role="1tU5fm">
              <ref role="3uigEE" node="6HT7BWBSFOV" resolve="RunTypecheckingRules.JchrTypeFormatter" />
            </node>
            <node concept="2ShNRf" id="6HT7BWBUcvL" role="33vP2m">
              <node concept="1pGfFk" id="6HT7BWBUcvM" role="2ShVmc">
                <ref role="37wK5l" node="4pWvZ2nDFIq" resolve="RunTypecheckingRules.JchrTypeFormatter" />
                <node concept="37vLTw" id="5mr7UHcd3hf" role="37wK5m">
                  <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HT7BWBUcvO" role="3cqZAp">
          <node concept="2OqwBi" id="6HT7BWBUcvP" role="3clFbG">
            <node concept="37vLTw" id="6HT7BWBUcvQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6HT7BWBUcvJ" resolve="formatter" />
            </node>
            <node concept="liA8E" id="6HT7BWBUcvR" role="2OqNvi">
              <ref role="37wK5l" node="6HT7BWBSGZH" resolve="initialize" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HT7BWBUcvS" role="3cqZAp">
          <node concept="2OqwBi" id="6HT7BWBUcvT" role="3clFbG">
            <node concept="37vLTw" id="6HT7BWBUcvU" role="2Oq$k0">
              <ref role="3cqZAo" node="6HT7BWBUcvJ" resolve="formatter" />
            </node>
            <node concept="liA8E" id="6HT7BWBUcvV" role="2OqNvi">
              <ref role="37wK5l" node="6HT7BWBSMTp" resolve="collectTypes" />
              <node concept="37vLTw" id="6HT7BWBUw0F" role="37wK5m">
                <ref role="3cqZAo" node="6HT7BWBUumb" resolve="types" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7feMCq_c8f2" role="3cqZAp" />
        <node concept="3cpWs8" id="7dgRGU4oEIC" role="3cqZAp">
          <node concept="3cpWsn" id="7dgRGU4oEID" role="3cpWs9">
            <property role="TrG5h" value="remainingAllowed" />
            <node concept="_YKpA" id="7dgRGU4oFv$" role="1tU5fm">
              <node concept="17QB3L" id="7dgRGU4oFvA" role="_ZDj9" />
            </node>
            <node concept="1rXfSq" id="7dgRGU4oEIE" role="33vP2m">
              <ref role="37wK5l" node="7dgRGU4oCXw" resolve="remainingAllowed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7dgRGU4oLq0" role="3cqZAp">
          <node concept="3cpWsn" id="7dgRGU4oLq3" role="3cpWs9">
            <property role="TrG5h" value="remainingOk" />
            <node concept="10P_77" id="7dgRGU4oLpY" role="1tU5fm" />
            <node concept="3clFbT" id="7dgRGU4oLWC" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5mr7UHcc5Jm" role="3cqZAp">
          <node concept="3clFbS" id="5mr7UHcc5Jo" role="2LFqv$">
            <node concept="1DcWWT" id="5mr7UHccsMF" role="3cqZAp">
              <node concept="3clFbS" id="5mr7UHccsMH" role="2LFqv$">
                <node concept="3clFbJ" id="7dgRGU4oMPa" role="3cqZAp">
                  <node concept="2OqwBi" id="7nkyKX7hbMh" role="3clFbw">
                    <node concept="37vLTw" id="7nkyKX7hbMi" role="2Oq$k0">
                      <ref role="3cqZAo" node="7dgRGU4oEID" resolve="remainingAllowed" />
                    </node>
                    <node concept="3JPx81" id="7nkyKX7hbMj" role="2OqNvi">
                      <node concept="2OqwBi" id="7nkyKX7hbMk" role="25WWJ7">
                        <node concept="37vLTw" id="5mr7UHcc7qX" role="2Oq$k0">
                          <ref role="3cqZAo" node="5mr7UHcc5Jp" resolve="cs" />
                        </node>
                        <node concept="liA8E" id="7nkyKX7hbMm" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7nkyKX7haqm" role="3clFbx">
                    <node concept="3clFbF" id="7nkyKX7hb0G" role="3cqZAp">
                      <node concept="2OqwBi" id="7nkyKX7hb5A" role="3clFbG">
                        <node concept="37vLTw" id="7nkyKX7hb0F" role="2Oq$k0">
                          <ref role="3cqZAo" node="24Vro6cQKgF" resolve="cstracer" />
                        </node>
                        <node concept="liA8E" id="7nkyKX7hbcb" role="2OqNvi">
                          <ref role="37wK5l" to="yg8f:7nkyKX7gU0T" resolve="result" />
                          <node concept="37vLTw" id="5mr7UHcctZW" role="37wK5m">
                            <ref role="3cqZAo" node="5mr7UHccsMI" resolve="co" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="5mr7UHcc7$D" role="3cqZAp" />
                  </node>
                  <node concept="9aQIb" id="7nkyKX7hav2" role="9aQIa">
                    <node concept="3clFbS" id="7dgRGU4oMPc" role="9aQI4">
                      <node concept="3clFbF" id="7nkyKX7hbpw" role="3cqZAp">
                        <node concept="2OqwBi" id="7nkyKX7hbpx" role="3clFbG">
                          <node concept="37vLTw" id="7nkyKX7hbpy" role="2Oq$k0">
                            <ref role="3cqZAo" node="24Vro6cQKgF" resolve="cstracer" />
                          </node>
                          <node concept="liA8E" id="7nkyKX7hbpz" role="2OqNvi">
                            <ref role="37wK5l" to="yg8f:7nkyKX7gU3L" resolve="garbage" />
                            <node concept="37vLTw" id="5mr7UHccu7a" role="37wK5m">
                              <ref role="3cqZAo" node="5mr7UHccsMI" resolve="co" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5mr7UHcc9ud" role="3cqZAp">
                        <node concept="37vLTI" id="5mr7UHcc9Bh" role="3clFbG">
                          <node concept="3clFbT" id="5mr7UHcc9IC" role="37vLTx">
                            <property role="3clFbU" value="false" />
                          </node>
                          <node concept="37vLTw" id="5mr7UHcc9ub" role="37vLTJ">
                            <ref role="3cqZAo" node="7dgRGU4oLq3" resolve="remainingOk" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5mr7UHccsMI" role="1Duv9x">
                <property role="TrG5h" value="co" />
                <node concept="3uibUv" id="5mr7UHcct7F" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="2OqwBi" id="5mr7UHcctx2" role="1DdaDG">
                <node concept="37vLTw" id="5mr7UHcctpr" role="2Oq$k0">
                  <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationSession" />
                </node>
                <node concept="liA8E" id="5mr7UHcct$i" role="2OqNvi">
                  <ref role="37wK5l" to="rchb:5mr7UHccvdG" resolve="constraintOccurrences" />
                  <node concept="37vLTw" id="5mr7UHcctGr" role="37wK5m">
                    <ref role="3cqZAo" node="5mr7UHcc5Jp" resolve="cs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5mr7UHcc5Jp" role="1Duv9x">
            <property role="TrG5h" value="cs" />
            <node concept="3uibUv" id="5mr7UHcc6gS" role="1tU5fm">
              <ref role="3uigEE" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
            </node>
          </node>
          <node concept="2OqwBi" id="5mr7UHcc6Lo" role="1DdaDG">
            <node concept="37vLTw" id="5mr7UHcc6_i" role="2Oq$k0">
              <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationSession" />
            </node>
            <node concept="liA8E" id="5mr7UHcc6U$" role="2OqNvi">
              <ref role="37wK5l" to="rchb:5uFPQ7BvQyO" resolve="constraintSymbols" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7dgRGU4prm1" role="3cqZAp">
          <node concept="37vLTw" id="7dgRGU4psnb" role="3cqZAk">
            <ref role="3cqZAo" node="7dgRGU4oLq3" resolve="remainingOk" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="41ox5VnkgxL" role="1B3o_S" />
      <node concept="37vLTG" id="1zN1RIkMJJI" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="1zN1RIkMJJH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4boqC9dOdY9" role="3clF46">
        <property role="TrG5h" value="rulesModel" />
        <node concept="H_c77" id="4boqC9dOeqA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4i4XGQZnvKs" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="4i4XGQZnw0C" role="1tU5fm">
          <ref role="3uigEE" to="iawt:~Tracer" resolve="Tracer" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQKgF" role="3clF46">
        <property role="TrG5h" value="cstracer" />
        <node concept="3uibUv" id="qubcdtxFI2" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:qubcdtxBiR" resolve="ComputingTracerExt" />
        </node>
      </node>
      <node concept="37vLTG" id="6HT7BWBUumb" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3uibUv" id="6HT7BWBUuyJ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="6HT7BWBUuNT" role="11_B2D" />
          <node concept="17QB3L" id="6HT7BWBUv0U" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="6HT7BWBUvp9" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="3uibUv" id="6HT7BWBUvpa" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="6HT7BWBUvpb" role="11_B2D" />
          <node concept="17QB3L" id="6HT7BWBUvpc" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5mr7UHcbL$V" role="jymVt" />
    <node concept="2YIFZL" id="5mr7UHcbKeS" role="jymVt">
      <property role="TrG5h" value="findHandlerClass" />
      <node concept="3Tm6S6" id="5mr7UHcbKeT" role="1B3o_S" />
      <node concept="3uibUv" id="5mr7UHcbKeU" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3uibUv" id="5mr7UHcbKeV" role="11_B2D">
          <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="37vLTG" id="5mr7UHcbKeF" role="3clF46">
        <property role="TrG5h" value="handlerMod" />
        <node concept="3uibUv" id="5mr7UHcbKeG" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="5mr7UHcbKeH" role="3clF46">
        <property role="TrG5h" value="handlerMdl" />
        <node concept="H_c77" id="5mr7UHcbKeI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5mr7UHcbKeJ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5mr7UHcbKeK" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5mr7UHcbKe5" role="3clF47">
        <node concept="3cpWs8" id="5mr7UHcbKe8" role="3cqZAp">
          <node concept="3cpWsn" id="5mr7UHcbKe9" role="3cpWs9">
            <property role="TrG5h" value="handlerCls" />
            <node concept="3uibUv" id="5mr7UHcbKea" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3uibUv" id="5mr7UHcbKeb" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="5mr7UHcbKec" role="3cqZAp">
          <node concept="3clFbS" id="5mr7UHcbKed" role="SfCbr">
            <node concept="3clFbF" id="5mr7UHcbKee" role="3cqZAp">
              <node concept="37vLTI" id="5mr7UHcbKef" role="3clFbG">
                <node concept="10QFUN" id="5mr7UHcbKeg" role="37vLTx">
                  <node concept="3uibUv" id="5mr7UHcbKeh" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3uibUv" id="5mr7UHcbKei" role="11_B2D">
                      <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5mr7UHcbKej" role="10QFUP">
                    <node concept="1eOMI4" id="5mr7UHcbKek" role="2Oq$k0">
                      <node concept="10QFUN" id="5mr7UHcbKel" role="1eOMHV">
                        <node concept="37vLTw" id="5mr7UHcbKeL" role="10QFUP">
                          <ref role="3cqZAo" node="5mr7UHcbKeF" resolve="handlerMod" />
                        </node>
                        <node concept="3uibUv" id="5mr7UHcbKen" role="10QFUM">
                          <ref role="3uigEE" to="j8aq:~ReloadableModuleBase" resolve="ReloadableModuleBase" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5mr7UHcbKeo" role="2OqNvi">
                      <ref role="37wK5l" to="j8aq:~ReloadableModuleBase.getClass(java.lang.String):java.lang.Class" resolve="getClass" />
                      <node concept="2YIFZM" id="5mr7UHcbKep" role="37wK5m">
                        <ref role="37wK5l" to="18ew:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
                        <ref role="1Pybhc" to="18ew:~JavaNameUtil" resolve="JavaNameUtil" />
                        <node concept="37vLTw" id="5mr7UHcbKeN" role="37wK5m">
                          <ref role="3cqZAo" node="5mr7UHcbKeH" resolve="handlerMdl" />
                        </node>
                        <node concept="3cpWs3" id="5mr7UHcbKer" role="37wK5m">
                          <node concept="Xl_RD" id="5mr7UHcbKes" role="3uHU7w">
                            <property role="Xl_RC" value="Handler" />
                          </node>
                          <node concept="3cpWs3" id="5mr7UHcbKet" role="3uHU7B">
                            <node concept="Xl_RD" id="5mr7UHcbKeu" role="3uHU7B">
                              <property role="Xl_RC" value="Typechecking" />
                            </node>
                            <node concept="37vLTw" id="5mr7UHcbKeM" role="3uHU7w">
                              <ref role="3cqZAo" node="5mr7UHcbKeJ" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5mr7UHcbKew" role="37vLTJ">
                  <ref role="3cqZAo" node="5mr7UHcbKe9" resolve="handlerCls" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5mr7UHcbKex" role="TEbGg">
            <node concept="3clFbS" id="5mr7UHcbKey" role="TDEfX">
              <node concept="YS8fn" id="5mr7UHcbKez" role="3cqZAp">
                <node concept="2ShNRf" id="5mr7UHcbKe$" role="YScLw">
                  <node concept="1pGfFk" id="5mr7UHcbKe_" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="5mr7UHcbKeA" role="37wK5m">
                      <ref role="3cqZAo" node="5mr7UHcbKeB" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5mr7UHcbKeB" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5mr7UHcbKeC" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5mr7UHcbKeD" role="3cqZAp">
          <node concept="37vLTw" id="5mr7UHcbKeE" role="3cqZAk">
            <ref role="3cqZAo" node="5mr7UHcbKe9" resolve="handlerCls" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4pWvZ2nDAjl" role="jymVt" />
    <node concept="312cEu" id="4pWvZ2nDCbU" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="AbstractFormatter" />
      <property role="1sVAO0" value="true" />
      <node concept="2tJIrI" id="4pWvZ2niWjp" role="jymVt" />
      <node concept="2YIFZL" id="4pWvZ2njtBV" role="jymVt">
        <property role="TrG5h" value="getNode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3clFbS" id="4pWvZ2njjN7" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2njpFl" role="3cqZAp">
            <node concept="2YIFZM" id="4pWvZ2njjOj" role="3clFbG">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="4pWvZ2njjOk" role="37wK5m">
                <node concept="2YIFZM" id="4pWvZ2njjOl" role="2Oq$k0">
                  <ref role="37wK5l" to="ie8e:3JgCwkqd8va" resolve="findValue" />
                  <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                  <node concept="37vLTw" id="4pWvZ2njjOm" role="37wK5m">
                    <ref role="3cqZAo" node="4pWvZ2njjOw" resolve="anchor" />
                  </node>
                  <node concept="Xl_RD" id="4pWvZ2njjOn" role="37wK5m">
                    <property role="Xl_RC" value="node" />
                  </node>
                  <node concept="Xl_RD" id="4pWvZ2njjOo" role="37wK5m">
                    <property role="Xl_RC" value="id" />
                  </node>
                </node>
                <node concept="liA8E" id="4pWvZ2njjOp" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:3JgCwkqkUL2" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4pWvZ2njjOw" role="3clF46">
          <property role="TrG5h" value="anchor" />
          <node concept="3uibUv" id="4pWvZ2njjOx" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
        <node concept="17QB3L" id="4pWvZ2njwIc" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2njxG_" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="4pWvZ2njipn" role="jymVt">
        <property role="TrG5h" value="getType" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="4pWvZ2njipr" role="3clF47">
          <node concept="3cpWs8" id="4pWvZ2njips" role="3cqZAp">
            <node concept="3cpWsn" id="4pWvZ2njipt" role="3cpWs9">
              <property role="TrG5h" value="formatted" />
              <node concept="3uibUv" id="4pWvZ2njipu" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
              </node>
              <node concept="2ShNRf" id="4pWvZ2njipv" role="33vP2m">
                <node concept="1pGfFk" id="4pWvZ2njipw" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4pWvZ2njipx" role="3cqZAp" />
          <node concept="3cpWs8" id="4pWvZ2njipy" role="3cqZAp">
            <node concept="3cpWsn" id="4pWvZ2njipz" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="3uibUv" id="4pWvZ2njip$" role="1tU5fm">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
              <node concept="2OqwBi" id="4pWvZ2njip_" role="33vP2m">
                <node concept="2OqwBi" id="4pWvZ2njipA" role="2Oq$k0">
                  <node concept="37vLTw" id="4pWvZ2njipB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4pWvZ2njiqL" resolve="typeLogical" />
                  </node>
                  <node concept="liA8E" id="4pWvZ2njipC" role="2OqNvi">
                    <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="4pWvZ2njipD" role="2OqNvi">
                  <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4pWvZ2njipE" role="3cqZAp" />
          <node concept="3clFbJ" id="4pWvZ2njipF" role="3cqZAp">
            <node concept="3clFbS" id="4pWvZ2njipG" role="3clFbx">
              <node concept="3clFbF" id="4pWvZ2njipH" role="3cqZAp">
                <node concept="2OqwBi" id="4pWvZ2njipI" role="3clFbG">
                  <node concept="37vLTw" id="4pWvZ2njipJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4pWvZ2njipt" resolve="formatted" />
                  </node>
                  <node concept="liA8E" id="4pWvZ2njipK" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="2YIFZM" id="4pWvZ2njipL" role="37wK5m">
                      <ref role="37wK5l" to="4t1t:4peSo3D04j7" resolve="print" />
                      <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                      <node concept="2YIFZM" id="4pWvZ2njipM" role="37wK5m">
                        <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
                        <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                        <node concept="37vLTw" id="4pWvZ2njipN" role="37wK5m">
                          <ref role="3cqZAo" node="4pWvZ2njipz" resolve="value" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="4pWvZ2njipO" role="37wK5m">
                        <node concept="HV5vD" id="4pWvZ2njipP" role="2ShVmc">
                          <ref role="HV5vE" node="3gJBs5s_5u0" resolve="RunTypecheckingRules.AbstractFormatter.TypeVarSymbol" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4pWvZ2njipQ" role="3cqZAp" />
            </node>
            <node concept="3y3z36" id="4pWvZ2njipR" role="3clFbw">
              <node concept="37vLTw" id="4pWvZ2njipS" role="3uHU7B">
                <ref role="3cqZAo" node="4pWvZ2njipz" resolve="value" />
              </node>
              <node concept="10Nm6u" id="4pWvZ2njipT" role="3uHU7w" />
            </node>
            <node concept="9aQIb" id="4pWvZ2njipU" role="9aQIa">
              <node concept="3clFbS" id="4pWvZ2njipV" role="9aQI4">
                <node concept="3cpWs8" id="4pWvZ2njipW" role="3cqZAp">
                  <node concept="3cpWsn" id="4pWvZ2njipX" role="3cpWs9">
                    <property role="TrG5h" value="var" />
                    <node concept="17QB3L" id="4pWvZ2njipY" role="1tU5fm" />
                    <node concept="2OqwBi" id="4pWvZ2njipZ" role="33vP2m">
                      <node concept="2OqwBi" id="4pWvZ2njiq0" role="2Oq$k0">
                        <node concept="37vLTw" id="4pWvZ2njiq1" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2njiqL" resolve="typeLogical" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2njiq2" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4pWvZ2njiq3" role="2OqNvi">
                        <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4pWvZ2njiq4" role="3cqZAp">
                  <node concept="2OqwBi" id="4pWvZ2njiq5" role="3clFbG">
                    <node concept="37vLTw" id="4pWvZ2njiq6" role="2Oq$k0">
                      <ref role="3cqZAo" node="4pWvZ2njipt" resolve="formatted" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2njiq7" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                      <node concept="37vLTw" id="4pWvZ2njiq8" role="37wK5m">
                        <ref role="3cqZAo" node="4pWvZ2njipX" resolve="var" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4pWvZ2njiq9" role="3cqZAp">
                  <node concept="3clFbS" id="4pWvZ2njiqa" role="3clFbx">
                    <node concept="3clFbF" id="4pWvZ2njiqb" role="3cqZAp">
                      <node concept="2OqwBi" id="4pWvZ2njiqc" role="3clFbG">
                        <node concept="2OqwBi" id="4pWvZ2njiqd" role="2Oq$k0">
                          <node concept="2OqwBi" id="4pWvZ2njiqe" role="2Oq$k0">
                            <node concept="37vLTw" id="4pWvZ2njiqf" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2njipt" resolve="formatted" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2njiqg" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="Xl_RD" id="4pWvZ2njiqh" role="37wK5m">
                                <property role="Xl_RC" value=" \&quot;" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4pWvZ2njiqi" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="2OqwBi" id="4pWvZ2njiqj" role="37wK5m">
                              <node concept="37vLTw" id="4pWvZ2njiqk" role="2Oq$k0">
                                <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                              </node>
                              <node concept="liA8E" id="4pWvZ2njiql" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                <node concept="37vLTw" id="4pWvZ2njiqm" role="37wK5m">
                                  <ref role="3cqZAo" node="4pWvZ2njipX" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4pWvZ2njiqn" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="Xl_RD" id="4pWvZ2njiqo" role="37wK5m">
                            <property role="Xl_RC" value="\&quot;" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4pWvZ2njiqp" role="3clFbw">
                    <node concept="37vLTw" id="4pWvZ2njiqq" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2njiqr" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                      <node concept="37vLTw" id="4pWvZ2njiqs" role="37wK5m">
                        <ref role="3cqZAo" node="4pWvZ2njipX" resolve="var" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4pWvZ2njiqt" role="3cqZAp" />
          <node concept="3clFbF" id="4pWvZ2njiqu" role="3cqZAp">
            <node concept="1rXfSq" id="4pWvZ2njiqv" role="3clFbG">
              <ref role="37wK5l" node="6HT7BWBSP09" resolve="appendBound" />
              <node concept="37vLTw" id="4pWvZ2njiqw" role="37wK5m">
                <ref role="3cqZAo" node="4pWvZ2njiqL" resolve="typeLogical" />
              </node>
              <node concept="37vLTw" id="4pWvZ2njiqx" role="37wK5m">
                <ref role="3cqZAo" node="4pWvZ2njipt" resolve="formatted" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4pWvZ2njqGw" role="3cqZAp">
            <node concept="2OqwBi" id="4pWvZ2njpYm" role="3clFbG">
              <node concept="37vLTw" id="4pWvZ2njpYn" role="2Oq$k0">
                <ref role="3cqZAo" node="4pWvZ2njipt" resolve="formatted" />
              </node>
              <node concept="liA8E" id="4pWvZ2njpYo" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="4pWvZ2njx9y" role="3clF45" />
        <node concept="37vLTG" id="4pWvZ2njiqL" role="3clF46">
          <property role="TrG5h" value="typeLogical" />
          <node concept="3uibUv" id="4pWvZ2njiqM" role="1tU5fm">
            <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
          </node>
        </node>
        <node concept="3Tmbuc" id="4pWvZ2nDYYz" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6HT7BWBSJtL" role="jymVt" />
      <node concept="2tJIrI" id="6HT7BWBSPW_" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBSP09" role="jymVt">
        <property role="TrG5h" value="appendBound" />
        <node concept="3Tm6S6" id="6HT7BWBSP0a" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBSRWz" role="3clF45">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
        <node concept="37vLTG" id="6HT7BWBSOZX" role="3clF46">
          <property role="TrG5h" value="typeLogical" />
          <node concept="3uibUv" id="6HT7BWBSOZY" role="1tU5fm">
            <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
          </node>
        </node>
        <node concept="37vLTG" id="6HT7BWBSOZZ" role="3clF46">
          <property role="TrG5h" value="builder" />
          <node concept="3uibUv" id="6HT7BWBSP00" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
          </node>
        </node>
        <node concept="3clFbS" id="6HT7BWBSOYG" role="3clF47">
          <node concept="3clFbJ" id="6HT7BWBSOYH" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBSOYI" role="3clFbx">
              <node concept="3clFbF" id="6HT7BWBSOYJ" role="3cqZAp">
                <node concept="2OqwBi" id="6HT7BWBSOYK" role="3clFbG">
                  <node concept="37vLTw" id="6HT7BWBSP06" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HT7BWBSOZZ" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBSOYM" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="Xl_RD" id="6HT7BWBSOYN" role="37wK5m">
                      <property role="Xl_RC" value=" &lt;: " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6HT7BWBSOYO" role="3cqZAp" />
              <node concept="3cpWs8" id="6HT7BWBSOYP" role="3cqZAp">
                <node concept="3cpWsn" id="6HT7BWBSOYQ" role="3cpWs9">
                  <property role="TrG5h" value="boundLogical" />
                  <node concept="3uibUv" id="6HT7BWBSOYR" role="1tU5fm">
                    <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                  </node>
                  <node concept="2OqwBi" id="6HT7BWBSOYS" role="33vP2m">
                    <node concept="37vLTw" id="6HT7BWBSOYT" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HT7BWBSGys" resolve="ubounds" />
                    </node>
                    <node concept="liA8E" id="6HT7BWBSOYU" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="2OqwBi" id="6HT7BWBSOYV" role="37wK5m">
                        <node concept="37vLTw" id="6HT7BWBSP02" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSOZX" resolve="typeLogical" />
                        </node>
                        <node concept="liA8E" id="6HT7BWBSOYX" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6HT7BWBSOYY" role="3cqZAp">
                <node concept="3cpWsn" id="6HT7BWBSOYZ" role="3cpWs9">
                  <property role="TrG5h" value="boundVar" />
                  <node concept="17QB3L" id="6HT7BWBSOZ0" role="1tU5fm" />
                  <node concept="2OqwBi" id="6HT7BWBSOZ1" role="33vP2m">
                    <node concept="2OqwBi" id="6HT7BWBSOZ2" role="2Oq$k0">
                      <node concept="37vLTw" id="6HT7BWBSOZ3" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSOYQ" resolve="boundLogical" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSOZ4" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6HT7BWBSOZ5" role="2OqNvi">
                      <ref role="37wK5l" to="95zw:3HJTsBmCy5P" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6HT7BWBSOZ6" role="3cqZAp">
                <node concept="3cpWsn" id="6HT7BWBSOZ7" role="3cpWs9">
                  <property role="TrG5h" value="boundValue" />
                  <node concept="3uibUv" id="6HT7BWBSOZ8" role="1tU5fm">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                  <node concept="2OqwBi" id="6HT7BWBSOZ9" role="33vP2m">
                    <node concept="2OqwBi" id="6HT7BWBSOZa" role="2Oq$k0">
                      <node concept="37vLTw" id="6HT7BWBSOZb" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSOYQ" resolve="boundLogical" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSOZc" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6HT7BWBSOZd" role="2OqNvi">
                      <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6HT7BWBSOZe" role="3cqZAp" />
              <node concept="3clFbJ" id="6HT7BWBSOZf" role="3cqZAp">
                <node concept="3clFbS" id="6HT7BWBSOZg" role="3clFbx">
                  <node concept="3clFbF" id="6HT7BWBSOZh" role="3cqZAp">
                    <node concept="2OqwBi" id="6HT7BWBSOZi" role="3clFbG">
                      <node concept="37vLTw" id="6HT7BWBSP01" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSOZZ" resolve="builder" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSOZk" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="2YIFZM" id="6HT7BWBSOZl" role="37wK5m">
                          <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                          <ref role="37wK5l" to="4t1t:4peSo3D04j7" resolve="print" />
                          <node concept="2YIFZM" id="4UfmwCMJfy" role="37wK5m">
                            <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                            <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
                            <node concept="37vLTw" id="4UfmwCMJFX" role="37wK5m">
                              <ref role="3cqZAo" node="6HT7BWBSOZ7" resolve="boundValue" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="5kEUewdDee1" role="37wK5m">
                            <node concept="HV5vD" id="5kEUewdDeX_" role="2ShVmc">
                              <ref role="HV5vE" node="3gJBs5s_5u0" resolve="RunTypecheckingRules.AbstractFormatter.TypeVarSymbol" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6HT7BWBSOZo" role="3cqZAp" />
                </node>
                <node concept="3y3z36" id="6HT7BWBSOZp" role="3clFbw">
                  <node concept="10Nm6u" id="6HT7BWBSOZq" role="3uHU7w" />
                  <node concept="37vLTw" id="6HT7BWBSOZr" role="3uHU7B">
                    <ref role="3cqZAo" node="6HT7BWBSOZ7" resolve="boundValue" />
                  </node>
                </node>
                <node concept="9aQIb" id="6HT7BWBSOZs" role="9aQIa">
                  <node concept="3clFbS" id="6HT7BWBSOZt" role="9aQI4">
                    <node concept="3clFbF" id="6HT7BWBSOZu" role="3cqZAp">
                      <node concept="2OqwBi" id="6HT7BWBSOZv" role="3clFbG">
                        <node concept="37vLTw" id="6HT7BWBSP05" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSOZZ" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="6HT7BWBSOZx" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="37vLTw" id="6HT7BWBSOZy" role="37wK5m">
                            <ref role="3cqZAo" node="6HT7BWBSOYZ" resolve="boundVar" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6HT7BWBSOZz" role="3cqZAp">
                      <node concept="3clFbS" id="6HT7BWBSOZ$" role="3clFbx">
                        <node concept="3clFbF" id="6HT7BWBSOZ_" role="3cqZAp">
                          <node concept="2OqwBi" id="6HT7BWBSOZA" role="3clFbG">
                            <node concept="2OqwBi" id="6HT7BWBSOZB" role="2Oq$k0">
                              <node concept="2OqwBi" id="6HT7BWBSOZC" role="2Oq$k0">
                                <node concept="37vLTw" id="6HT7BWBSP04" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6HT7BWBSOZZ" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="6HT7BWBSOZE" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                  <node concept="Xl_RD" id="6HT7BWBSOZF" role="37wK5m">
                                    <property role="Xl_RC" value=" \&quot;" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="6HT7BWBSOZG" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                <node concept="2OqwBi" id="6HT7BWBSOZH" role="37wK5m">
                                  <node concept="37vLTw" id="6HT7BWBSOZI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                                  </node>
                                  <node concept="liA8E" id="6HT7BWBSOZJ" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                    <node concept="37vLTw" id="6HT7BWBSOZK" role="37wK5m">
                                      <ref role="3cqZAo" node="6HT7BWBSOYZ" resolve="boundVar" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="6HT7BWBSOZL" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="Xl_RD" id="6HT7BWBSOZM" role="37wK5m">
                                <property role="Xl_RC" value="\&quot;" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6HT7BWBSOZN" role="3clFbw">
                        <node concept="37vLTw" id="6HT7BWBSOZO" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                        </node>
                        <node concept="liA8E" id="6HT7BWBSOZP" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                          <node concept="37vLTw" id="6HT7BWBSOZQ" role="37wK5m">
                            <ref role="3cqZAo" node="6HT7BWBSOYZ" resolve="boundVar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6HT7BWBSOZR" role="3clFbw">
              <node concept="37vLTw" id="6HT7BWBSOZS" role="2Oq$k0">
                <ref role="3cqZAo" node="6HT7BWBSGys" resolve="ubounds" />
              </node>
              <node concept="liA8E" id="6HT7BWBSOZT" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="2OqwBi" id="6HT7BWBSOZU" role="37wK5m">
                  <node concept="37vLTw" id="6HT7BWBSP03" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HT7BWBSOZX" resolve="typeLogical" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBSOZW" role="2OqNvi">
                    <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6HT7BWBSW3Y" role="3cqZAp">
            <node concept="37vLTw" id="6HT7BWBSW3W" role="3clFbG">
              <ref role="3cqZAo" node="6HT7BWBSOZZ" resolve="builder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6HT7BWBSWkq" role="jymVt" />
      <node concept="312cEu" id="3gJBs5s_5u0" role="jymVt">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="TypeVarSymbol" />
        <node concept="2tJIrI" id="3gJBs5s_6yN" role="jymVt" />
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
                      <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="ILogical" />
                      <node concept="3qTvmN" id="3gJBs5s_7I7" role="11_B2D" />
                    </node>
                    <node concept="2OqwBi" id="5kEUewdDk6_" role="33vP2m">
                      <node concept="2OqwBi" id="3gJBs5s_7Ig" role="2Oq$k0">
                        <node concept="1eOMI4" id="3gJBs5s_7Ih" role="2Oq$k0">
                          <node concept="10QFUN" id="3gJBs5s_7Ii" role="1eOMHV">
                            <node concept="3uibUv" id="3gJBs5s_7Ij" role="10QFUM">
                              <ref role="3uigEE" to="45ys:46l0wJhtOD_" resolve="ILogicalVar" />
                            </node>
                            <node concept="37vLTw" id="3gJBs5s_7Ik" role="10QFUP">
                              <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3gJBs5s_7Il" role="2OqNvi">
                          <ref role="37wK5l" to="45ys:46l0wJhtXlr" resolve="logical" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5kEUewdDkka" role="2OqNvi">
                        <ref role="37wK5l" to="45ys:dfChU1eNVy" resolve="findRoot" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gJBs5s_ngZ" role="3cqZAp" />
                <node concept="3cpWs8" id="3gJBs5s_fIH" role="3cqZAp">
                  <node concept="3cpWsn" id="3gJBs5s_fII" role="3cpWs9">
                    <property role="TrG5h" value="prettyVar" />
                    <node concept="3uibUv" id="3gJBs5s_fIJ" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                    </node>
                    <node concept="2ShNRf" id="3gJBs5s_fIK" role="33vP2m">
                      <node concept="1pGfFk" id="3gJBs5s_fIL" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                        <node concept="2YIFZM" id="5kEUewdD__8" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(char[]):java.lang.String" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="5kEUewdDo5I" role="37wK5m">
                            <node concept="37vLTw" id="3gJBs5s_fIM" role="2Oq$k0">
                              <ref role="3cqZAo" node="3gJBs5s_7If" resolve="logical" />
                            </node>
                            <node concept="liA8E" id="5kEUewdDoh_" role="2OqNvi">
                              <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                            </node>
                          </node>
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
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="Xl_RD" id="3gJBs5s_aPu" role="37wK5m">
                                <property role="Xl_RC" value=" \&quot;" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3gJBs5s_aPv" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="2OqwBi" id="3gJBs5s_aPw" role="37wK5m">
                              <node concept="37vLTw" id="3gJBs5s_aPx" role="2Oq$k0">
                                <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                              </node>
                              <node concept="liA8E" id="3gJBs5s_aPy" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                <node concept="37vLTw" id="3gJBs5s_aPz" role="37wK5m">
                                  <ref role="3cqZAo" node="3gJBs5s_7If" resolve="logical" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3gJBs5s_aP$" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="Xl_RD" id="3gJBs5s_aP_" role="37wK5m">
                            <property role="Xl_RC" value="\&quot;" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3gJBs5s_aPA" role="3clFbw">
                    <node concept="37vLTw" id="3gJBs5s_aPB" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                    </node>
                    <node concept="liA8E" id="3gJBs5s_aPC" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                      <node concept="37vLTw" id="3gJBs5s_foc" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5s_7If" resolve="logical" />
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
                      <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3gJBs5s_nxx" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="3gJBs5s_6UT" role="3clFbw">
                <node concept="3uibUv" id="3gJBs5s_78A" role="2ZW6by">
                  <ref role="3uigEE" to="45ys:46l0wJhtOD_" resolve="ILogicalVar" />
                </node>
                <node concept="37vLTw" id="3gJBs5s_6FT" role="2ZW6bz">
                  <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
                </node>
              </node>
              <node concept="9aQIb" id="3gJBs5s_7KK" role="9aQIa">
                <node concept="3clFbS" id="3gJBs5s_7KL" role="9aQI4">
                  <node concept="3cpWs6" id="3gJBs5s_7Qc" role="3cqZAp">
                    <node concept="2YIFZM" id="4peSo3D1kYQ" role="3cqZAk">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
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
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3Tm6S6" id="5kEUewdD8xu" role="1B3o_S" />
        <node concept="3uibUv" id="4peSo3D1gxU" role="1zkMxy">
          <ref role="3uigEE" to="4t1t:3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
        </node>
      </node>
      <node concept="2tJIrI" id="4pWvZ2nEaSo" role="jymVt" />
      <node concept="3clFb_" id="4pWvZ2nE22N" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="getConstraintOccurrences" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="4pWvZ2nE22Q" role="3clF47" />
        <node concept="3Tmbuc" id="4pWvZ2nE11g" role="1B3o_S" />
        <node concept="A3Dl8" id="4pWvZ2nE3xS" role="3clF45">
          <node concept="3uibUv" id="4pWvZ2nEpCj" role="A3Ik2">
            <ref role="3uigEE" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4pWvZ2nE0c5" role="jymVt" />
      <node concept="312cEg" id="6HT7BWBSGym" role="jymVt">
        <property role="TrG5h" value="varnames" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="4pWvZ2nDYKa" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBSGyp" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="2s5CcPapSKW" role="11_B2D">
            <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="ILogical" />
          </node>
          <node concept="17QB3L" id="6HT7BWBSGyr" role="11_B2D" />
        </node>
        <node concept="2ShNRf" id="6HT7BWBSGDQ" role="33vP2m">
          <node concept="1pGfFk" id="6HT7BWBSGDR" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
            <node concept="3uibUv" id="5kEUewdDhpK" role="1pMfVU">
              <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="ILogical" />
            </node>
            <node concept="17QB3L" id="6HT7BWBSGDT" role="1pMfVU" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="6HT7BWBSGys" role="jymVt">
        <property role="TrG5h" value="ubounds" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="4pWvZ2nDYma" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBSGyv" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="6HT7BWBSGyw" role="11_B2D">
            <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
          </node>
          <node concept="3uibUv" id="6HT7BWBSGyx" role="11_B2D">
            <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
          </node>
        </node>
        <node concept="2ShNRf" id="6HT7BWBSGI3" role="33vP2m">
          <node concept="1pGfFk" id="6HT7BWBSGI4" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
            <node concept="3uibUv" id="6HT7BWBSGI5" role="1pMfVU">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
            </node>
            <node concept="3uibUv" id="6HT7BWBSGI6" role="1pMfVU">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4pWvZ2nDCbV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="41ox5VnkaHc" role="jymVt" />
    <node concept="312cEu" id="4pWvZ2nEi3p" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="OnTheFlyTypeFormatter" />
      <node concept="312cEg" id="4pWvZ2nEnUY" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="solver" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="4pWvZ2nEnGh" role="1B3o_S" />
        <node concept="3uibUv" id="4pWvZ2nEnUy" role="1tU5fm">
          <ref role="3uigEE" to="9kr0:4pWvZ2n32be" resolve="ChrSolver" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4pWvZ2nEi3t" role="1B3o_S" />
      <node concept="3uibUv" id="4pWvZ2nEi3u" role="1zkMxy">
        <ref role="3uigEE" node="4pWvZ2nDCbU" resolve="RunTypecheckingRules.AbstractFormatter" />
      </node>
      <node concept="3clFbW" id="4pWvZ2nEi3v" role="jymVt">
        <node concept="3cqZAl" id="4pWvZ2nEi3w" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nEi3x" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nEi3y" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nEi3z" role="3cqZAp">
            <node concept="37vLTI" id="4pWvZ2nEi3$" role="3clFbG">
              <node concept="2OqwBi" id="4pWvZ2nEi3_" role="37vLTJ">
                <node concept="Xjq3P" id="4pWvZ2nEi3A" role="2Oq$k0" />
                <node concept="2OwXpG" id="4pWvZ2nEnZh" role="2OqNvi">
                  <ref role="2Oxat5" node="4pWvZ2nEnUY" resolve="solver" />
                </node>
              </node>
              <node concept="37vLTw" id="4pWvZ2nEi3C" role="37vLTx">
                <ref role="3cqZAo" node="4pWvZ2nEi3D" resolve="solver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4pWvZ2nEi3D" role="3clF46">
          <property role="TrG5h" value="solver" />
          <node concept="3uibUv" id="4pWvZ2nEnrg" role="1tU5fm">
            <ref role="3uigEE" to="9kr0:4pWvZ2n32be" resolve="ChrSolver" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nEi3F" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getConstraintOccurrences" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tmbuc" id="4pWvZ2nEi3G" role="1B3o_S" />
        <node concept="A3Dl8" id="4pWvZ2nEi3H" role="3clF45">
          <node concept="3uibUv" id="4pWvZ2nEq5W" role="A3Ik2">
            <ref role="3uigEE" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
          </node>
        </node>
        <node concept="3clFbS" id="4pWvZ2nEi3J" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nEi3K" role="3cqZAp">
            <node concept="2OqwBi" id="4pWvZ2nEotf" role="3clFbG">
              <node concept="2OqwBi" id="4pWvZ2nEi3L" role="2Oq$k0">
                <node concept="37vLTw" id="4pWvZ2nEoaU" role="2Oq$k0">
                  <ref role="3cqZAo" node="4pWvZ2nEnUY" resolve="solver" />
                </node>
                <node concept="2OwXpG" id="4pWvZ2nEofS" role="2OqNvi">
                  <ref role="2Oxat5" to="9kr0:4pWvZ2nh_ow" resolve="constraintsPool" />
                </node>
              </node>
              <node concept="3$u5V9" id="4pWvZ2nEoKy" role="2OqNvi">
                <node concept="1bVj0M" id="4pWvZ2nEoK$" role="23t8la">
                  <node concept="37vLTG" id="4pWvZ2nExzm" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="4pWvZ2nEy1M" role="1tU5fm">
                      <ref role="3uigEE" to="9kr0:4pWvZ2n8$0$" resolve="ChrSolver.ConstraintOccurence" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4pWvZ2nEoK_" role="1bW5cS">
                    <node concept="3clFbF" id="4pWvZ2nEpg1" role="3cqZAp">
                      <node concept="2ShNRf" id="4pWvZ2nEwtE" role="3clFbG">
                        <node concept="YeOm9" id="4pWvZ2nExeM" role="2ShVmc">
                          <node concept="1Y3b0j" id="4pWvZ2nExeP" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <node concept="3Tm1VV" id="4pWvZ2nExeQ" role="1B3o_S" />
                            <node concept="3clFb_" id="4pWvZ2nExeR" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="symbol" />
                              <node concept="3uibUv" id="4pWvZ2nExeS" role="3clF45">
                                <ref role="3uigEE" to="qrld:5uFPQ7B$mzX" resolve="Symbol" />
                              </node>
                              <node concept="3Tm1VV" id="4pWvZ2nExeT" role="1B3o_S" />
                              <node concept="3clFbS" id="4pWvZ2nExeV" role="3clF47">
                                <node concept="3clFbF" id="4pWvZ2nEz7B" role="3cqZAp">
                                  <node concept="1eOMI4" id="4pWvZ2nE$2x" role="3clFbG">
                                    <node concept="10QFUN" id="4pWvZ2nE$2y" role="1eOMHV">
                                      <node concept="2OqwBi" id="4pWvZ2nE$2s" role="10QFUP">
                                        <node concept="2OqwBi" id="4pWvZ2nE$2t" role="2Oq$k0">
                                          <node concept="37vLTw" id="4pWvZ2nE$2u" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4pWvZ2nExzm" resolve="it" />
                                          </node>
                                          <node concept="2OwXpG" id="4pWvZ2nE$2v" role="2OqNvi">
                                            <ref role="2Oxat5" to="9kr0:4pWvZ2n8$8b" resolve="myConstraint" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="4pWvZ2nE$2w" role="2OqNvi">
                                          <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="4pWvZ2nE$o3" role="10QFUM">
                                        <ref role="3uigEE" to="qrld:5uFPQ7B$mzX" resolve="Symbol" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFb_" id="4pWvZ2nExeX" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="arguments" />
                              <node concept="3uibUv" id="4pWvZ2nExeY" role="3clF45">
                                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                <node concept="3uibUv" id="4pWvZ2nExeZ" role="11_B2D">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="4pWvZ2nExf0" role="1B3o_S" />
                              <node concept="3clFbS" id="4pWvZ2nExf2" role="3clF47">
                                <node concept="3cpWs8" id="4pWvZ2nEDAM" role="3cqZAp">
                                  <node concept="3cpWsn" id="4pWvZ2nEDAN" role="3cpWs9">
                                    <property role="TrG5h" value="arguments" />
                                    <node concept="A3Dl8" id="4pWvZ2nEEqZ" role="1tU5fm">
                                      <node concept="3qUE_q" id="4pWvZ2nEEr1" role="A3Ik2">
                                        <node concept="3uibUv" id="4pWvZ2nEEr2" role="3qUE_r">
                                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="4pWvZ2nEDAO" role="33vP2m">
                                      <node concept="2OqwBi" id="4pWvZ2nEDAP" role="2Oq$k0">
                                        <node concept="37vLTw" id="4pWvZ2nEDAQ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4pWvZ2nExzm" resolve="it" />
                                        </node>
                                        <node concept="2OwXpG" id="4pWvZ2nEDAR" role="2OqNvi">
                                          <ref role="2Oxat5" to="9kr0:4pWvZ2n8$8b" resolve="myConstraint" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4pWvZ2nEDAS" role="2OqNvi">
                                        <ref role="37wK5l" to="yt73:~Term.arguments()" resolve="arguments" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="4pWvZ2nE_jw" role="3cqZAp">
                                  <node concept="2ShNRf" id="4pWvZ2nEAac" role="3clFbG">
                                    <node concept="Tc6Ow" id="4pWvZ2nEB8a" role="2ShVmc">
                                      <node concept="3uibUv" id="4pWvZ2nECLr" role="HW$YZ">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="4pWvZ2nEDAT" role="I$8f6">
                                        <ref role="3cqZAo" node="4pWvZ2nEDAN" resolve="arguments" />
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
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nHiCQ" role="jymVt">
        <property role="TrG5h" value="collectTypes" />
        <property role="1EzhhJ" value="false" />
        <node concept="3cqZAl" id="4pWvZ2nHiCR" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nHiCS" role="1B3o_S" />
        <node concept="37vLTG" id="4pWvZ2nHiDD" role="3clF46">
          <property role="TrG5h" value="nodeId2Type" />
          <node concept="3uibUv" id="4pWvZ2nHiDE" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="17QB3L" id="4pWvZ2nHiDF" role="11_B2D" />
            <node concept="17QB3L" id="4pWvZ2nHiDG" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="4pWvZ2nHiDH" role="3clF47">
          <node concept="1DcWWT" id="4pWvZ2nHjxJ" role="3cqZAp">
            <node concept="3clFbS" id="4pWvZ2nHjxK" role="2LFqv$">
              <node concept="3clFbJ" id="4pWvZ2nHjxL" role="3cqZAp">
                <node concept="3clFbS" id="4pWvZ2nHjxM" role="3clFbx">
                  <node concept="3cpWs8" id="4pWvZ2nHjxN" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2nHjxO" role="3cpWs9">
                      <property role="TrG5h" value="type" />
                      <node concept="3uibUv" id="4pWvZ2nHkdB" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2nHjxQ" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2nHkyp" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2nHjxS" role="10QFUP">
                          <node concept="2OqwBi" id="4pWvZ2nHjxT" role="2Oq$k0">
                            <node concept="37vLTw" id="4pWvZ2nHjxU" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2nHjyr" resolve="co" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2nHjxV" role="2OqNvi">
                              <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4pWvZ2nHjxW" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2nHjxX" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2nHjxY" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2nHjxZ" role="3cpWs9">
                      <property role="TrG5h" value="anchor" />
                      <node concept="3uibUv" id="4pWvZ2nHjy0" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2nHjy1" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2nHjy2" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2nHjy3" role="10QFUP">
                          <node concept="2OqwBi" id="4pWvZ2nHjy4" role="2Oq$k0">
                            <node concept="37vLTw" id="4pWvZ2nHjy5" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2nHjyr" resolve="co" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2nHjy6" role="2OqNvi">
                              <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4pWvZ2nHjy7" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2nHjy8" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4pWvZ2nHjy9" role="3cqZAp">
                    <node concept="2OqwBi" id="4pWvZ2nHjya" role="3clFbG">
                      <node concept="37vLTw" id="4pWvZ2nHjyb" role="2Oq$k0">
                        <ref role="3cqZAo" node="4pWvZ2nHiDD" resolve="nodeId2Type" />
                      </node>
                      <node concept="liA8E" id="4pWvZ2nHjyc" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2YIFZM" id="4pWvZ2nHjyd" role="37wK5m">
                          <ref role="37wK5l" node="4pWvZ2njtBV" resolve="getNode" />
                          <ref role="1Pybhc" node="4pWvZ2nDCbU" resolve="RunTypecheckingRules.AbstractFormatter" />
                          <node concept="37vLTw" id="4pWvZ2nHjye" role="37wK5m">
                            <ref role="3cqZAo" node="4pWvZ2nHjxZ" resolve="anchor" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="4pWvZ2nHjyf" role="37wK5m">
                          <ref role="37wK5l" node="4pWvZ2njipn" resolve="getType" />
                          <node concept="2ShNRf" id="4pWvZ2nHkQD" role="37wK5m">
                            <node concept="1pGfFk" id="4pWvZ2nHlB9" role="2ShVmc">
                              <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                              <node concept="37vLTw" id="4pWvZ2nHlNg" role="37wK5m">
                                <ref role="3cqZAo" node="4pWvZ2nHjxO" resolve="type" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4pWvZ2nHjyh" role="3clFbw">
                  <node concept="2OqwBi" id="4pWvZ2nHjyi" role="2Oq$k0">
                    <node concept="10M0yZ" id="4pWvZ2nHjyj" role="2Oq$k0">
                      <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
                      <ref role="3cqZAo" to="i348:5uFPQ7CgjLS" resolve="TYPEOF_SYM" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2nHjyk" role="2OqNvi">
                      <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4pWvZ2nHjyl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="4pWvZ2nHjym" role="37wK5m">
                      <node concept="2OqwBi" id="4pWvZ2nHjyn" role="2Oq$k0">
                        <node concept="37vLTw" id="4pWvZ2nHjyo" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2nHjyr" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2nHjyp" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4pWvZ2nHjyq" role="2OqNvi">
                        <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4pWvZ2nHjyr" role="1Duv9x">
              <property role="TrG5h" value="co" />
              <node concept="3uibUv" id="4pWvZ2nHjys" role="1tU5fm">
                <ref role="3uigEE" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
              </node>
            </node>
            <node concept="1rXfSq" id="4pWvZ2nHjyt" role="1DdaDG">
              <ref role="37wK5l" node="4pWvZ2nEi3F" resolve="getConstraintOccurrences" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2oeTmh" role="jymVt">
        <property role="TrG5h" value="initialize" />
        <node concept="3cqZAl" id="4pWvZ2oeTmi" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2oeTmj" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2oeTmk" role="3clF47">
          <node concept="1DcWWT" id="4pWvZ2oeTml" role="3cqZAp">
            <node concept="3clFbS" id="4pWvZ2oeTmm" role="2LFqv$">
              <node concept="3clFbJ" id="4pWvZ2oeTmn" role="3cqZAp">
                <node concept="3clFbS" id="4pWvZ2oeTmo" role="3clFbx">
                  <node concept="3cpWs8" id="4pWvZ2oeTmp" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTmq" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="3uibUv" id="4pWvZ2oeTmr" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="4pWvZ2oeTms" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4pWvZ2oeTmt" role="33vP2m">
                        <node concept="37vLTw" id="4pWvZ2oeTmu" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2oeTnK" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2oeTmv" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2oeTmw" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTmx" role="3cpWs9">
                      <property role="TrG5h" value="type" />
                      <node concept="3uibUv" id="4pWvZ2oeZl1" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="AtomLogical.AtomLogicalVar" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2oeTmz" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2oeZ38" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="AtomLogical.AtomLogicalVar" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTm_" role="10QFUP">
                          <node concept="37vLTw" id="4pWvZ2oeTmA" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTmq" resolve="args" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTmB" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2oeTmC" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4pWvZ2oeTmD" role="3cqZAp">
                    <node concept="2OqwBi" id="4pWvZ2oeTmE" role="3clFbG">
                      <node concept="37vLTw" id="4pWvZ2oeTmF" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                      </node>
                      <node concept="liA8E" id="4pWvZ2oeTmG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2OqwBi" id="4pWvZ2oeZK7" role="37wK5m">
                          <node concept="2OqwBi" id="4pWvZ2oeTmH" role="2Oq$k0">
                            <node concept="37vLTw" id="4pWvZ2oeTmI" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2oeTmx" resolve="type" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2oeZ$Z" role="2OqNvi">
                              <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4pWvZ2of0cK" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="4pWvZ2oeTmK" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <node concept="2OqwBi" id="4pWvZ2oeTmL" role="37wK5m">
                            <node concept="37vLTw" id="4pWvZ2oeTmM" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2oeTmq" resolve="args" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2oeTmN" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                              <node concept="3cmrfG" id="4pWvZ2oeTmO" role="37wK5m">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4pWvZ2oeTmP" role="3clFbw">
                  <node concept="liA8E" id="4pWvZ2oeTmQ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="4pWvZ2oeTmR" role="37wK5m">
                      <node concept="2OqwBi" id="4pWvZ2oeTmS" role="2Oq$k0">
                        <node concept="37vLTw" id="4pWvZ2oeTmT" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2oeTnK" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2oeTmU" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4pWvZ2oeTmV" role="2OqNvi">
                        <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4pWvZ2oeTmW" role="2Oq$k0">
                    <node concept="3fl2lp" id="4pWvZ2oeTmX" role="2Oq$k0">
                      <ref role="3fl3PK" to="kqnc:3Qp4N06bUPt" resolve="varname" />
                      <node concept="3B5_sB" id="4pWvZ2oeTmY" role="3fl3PI">
                        <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4pWvZ2oeTmZ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4pWvZ2oeTn0" role="3cqZAp">
                <node concept="3clFbS" id="4pWvZ2oeTn1" role="3clFbx">
                  <node concept="3cpWs8" id="4pWvZ2oeTn2" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTn3" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="3uibUv" id="4pWvZ2oeTn4" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="4pWvZ2oeTn5" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4pWvZ2oeTn6" role="33vP2m">
                        <node concept="37vLTw" id="4pWvZ2oeTn7" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2oeTnK" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2oeTn8" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2oeTn9" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTna" role="3cpWs9">
                      <property role="TrG5h" value="typeLogical" />
                      <node concept="3uibUv" id="4pWvZ2oeTnb" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2oeTnc" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2oeTnd" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTne" role="10QFUP">
                          <node concept="37vLTw" id="4pWvZ2oeTnf" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTn3" resolve="args" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTng" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2oeTnh" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2oeTni" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTnj" role="3cpWs9">
                      <property role="TrG5h" value="boundLogical" />
                      <node concept="3uibUv" id="4pWvZ2oeTnk" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2oeTnl" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2oeTnm" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTnn" role="10QFUP">
                          <node concept="37vLTw" id="4pWvZ2oeTno" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTn3" resolve="args" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTnp" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2oeTnq" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4pWvZ2oeTnr" role="3cqZAp">
                    <node concept="2OqwBi" id="4pWvZ2oeTns" role="3clFbG">
                      <node concept="liA8E" id="4pWvZ2oeTnt" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2OqwBi" id="4pWvZ2oeTnu" role="37wK5m">
                          <node concept="37vLTw" id="4pWvZ2oeTnv" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTna" resolve="typeLogical" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTnw" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTnx" role="37wK5m">
                          <node concept="37vLTw" id="4pWvZ2oeTny" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTnj" resolve="boundLogical" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTnz" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4pWvZ2oeTn$" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSGys" resolve="ubounds" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4pWvZ2oeTn_" role="3clFbw">
                  <node concept="2OqwBi" id="4pWvZ2oeTnA" role="2Oq$k0">
                    <node concept="3fl2lp" id="4pWvZ2oeTnB" role="2Oq$k0">
                      <ref role="3fl3PK" to="kqnc:3Qp4N06bUPr" resolve="ubound" />
                      <node concept="3B5_sB" id="4pWvZ2oeTnC" role="3fl3PI">
                        <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4pWvZ2oeTnD" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4pWvZ2oeTnE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="4pWvZ2oeTnF" role="37wK5m">
                      <node concept="2OqwBi" id="4pWvZ2oeTnG" role="2Oq$k0">
                        <node concept="37vLTw" id="4pWvZ2oeTnH" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2oeTnK" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2oeTnI" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4pWvZ2oeTnJ" role="2OqNvi">
                        <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4pWvZ2oeTnK" role="1Duv9x">
              <property role="TrG5h" value="co" />
              <node concept="3uibUv" id="4pWvZ2oeTnL" role="1tU5fm">
                <ref role="3uigEE" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
              </node>
            </node>
            <node concept="1rXfSq" id="4pWvZ2oeTnM" role="1DdaDG">
              <ref role="37wK5l" node="4pWvZ2nEi3F" resolve="getConstraintOccurrences" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4pWvZ2nEh6y" role="jymVt" />
    <node concept="312cEu" id="6HT7BWBSFOV" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="JchrTypeFormatter" />
      <node concept="312cEg" id="5mr7UHccA62" role="jymVt">
        <property role="TrG5h" value="session" />
        <node concept="3Tm6S6" id="5mr7UHccA63" role="1B3o_S" />
        <node concept="3uibUv" id="5mr7UHccA65" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4pWvZ2njGXi" role="1B3o_S" />
      <node concept="3uibUv" id="4pWvZ2nDFvw" role="1zkMxy">
        <ref role="3uigEE" node="4pWvZ2nDCbU" resolve="RunTypecheckingRules.AbstractFormatter" />
      </node>
      <node concept="3clFbW" id="4pWvZ2nDFIq" role="jymVt">
        <node concept="3cqZAl" id="4pWvZ2nDFIr" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nDFIs" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nDFIu" role="3clF47">
          <node concept="3clFbF" id="5mr7UHccA66" role="3cqZAp">
            <node concept="37vLTI" id="5mr7UHccA68" role="3clFbG">
              <node concept="2OqwBi" id="5mr7UHccA6c" role="37vLTJ">
                <node concept="Xjq3P" id="5mr7UHccA6f" role="2Oq$k0" />
                <node concept="2OwXpG" id="5mr7UHccA6b" role="2OqNvi">
                  <ref role="2Oxat5" node="5mr7UHccA62" resolve="session" />
                </node>
              </node>
              <node concept="37vLTw" id="5mr7UHccA6g" role="37vLTx">
                <ref role="3cqZAo" node="4pWvZ2nDFIx" resolve="session" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4pWvZ2nDFIx" role="3clF46">
          <property role="TrG5h" value="session" />
          <node concept="3uibUv" id="4pWvZ2nDFIz" role="1tU5fm">
            <ref role="3uigEE" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nE8iX" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getConstraintOccurrences" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tmbuc" id="4pWvZ2nE8iZ" role="1B3o_S" />
        <node concept="A3Dl8" id="4pWvZ2nE8j0" role="3clF45">
          <node concept="3uibUv" id="4pWvZ2nEqn8" role="A3Ik2">
            <ref role="3uigEE" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
          </node>
        </node>
        <node concept="3clFbS" id="4pWvZ2nE8j2" role="3clF47">
          <node concept="3cpWs8" id="4pWvZ2nEq_z" role="3cqZAp">
            <node concept="3cpWsn" id="4pWvZ2nEq_$" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="A3Dl8" id="4pWvZ2nEr3s" role="1tU5fm">
                <node concept="3uibUv" id="4pWvZ2nEr3u" role="A3Ik2">
                  <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="2OqwBi" id="4pWvZ2nEq__" role="33vP2m">
                <node concept="37vLTw" id="4pWvZ2nEq_A" role="2Oq$k0">
                  <ref role="3cqZAo" node="5mr7UHccA62" resolve="session" />
                </node>
                <node concept="liA8E" id="4pWvZ2nEq_B" role="2OqNvi">
                  <ref role="37wK5l" to="rchb:5uFPQ7BvQxv" resolve="constraintOccurrences" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4pWvZ2nE9u1" role="3cqZAp">
            <node concept="2OqwBi" id="4pWvZ2nErnl" role="3clFbG">
              <node concept="37vLTw" id="4pWvZ2nEq_C" role="2Oq$k0">
                <ref role="3cqZAo" node="4pWvZ2nEq_$" resolve="result" />
              </node>
              <node concept="3$u5V9" id="4pWvZ2nErs5" role="2OqNvi">
                <node concept="1bVj0M" id="4pWvZ2nErs7" role="23t8la">
                  <node concept="3clFbS" id="4pWvZ2nErs8" role="1bW5cS">
                    <node concept="3clFbF" id="4pWvZ2nEskF" role="3cqZAp">
                      <node concept="2ShNRf" id="4pWvZ2nEskD" role="3clFbG">
                        <node concept="YeOm9" id="4pWvZ2nEt3D" role="2ShVmc">
                          <node concept="1Y3b0j" id="4pWvZ2nEt3G" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <node concept="3Tm1VV" id="4pWvZ2nEt3H" role="1B3o_S" />
                            <node concept="3clFb_" id="4pWvZ2nEt3I" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="symbol" />
                              <node concept="3uibUv" id="4pWvZ2nEt3J" role="3clF45">
                                <ref role="3uigEE" to="qrld:5uFPQ7B$mzX" resolve="Symbol" />
                              </node>
                              <node concept="3Tm1VV" id="4pWvZ2nEt3K" role="1B3o_S" />
                              <node concept="3clFbS" id="4pWvZ2nEt3M" role="3clF47">
                                <node concept="3clFbF" id="4pWvZ2nEtXS" role="3cqZAp">
                                  <node concept="2OqwBi" id="4pWvZ2nEu11" role="3clFbG">
                                    <node concept="2OqwBi" id="4pWvZ2nEtYl" role="2Oq$k0">
                                      <node concept="37vLTw" id="4pWvZ2nEv3_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4pWvZ2nEu_j" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="4pWvZ2nEu08" role="2OqNvi">
                                        <ref role="37wK5l" to="qrld:5uFPQ7BZacZ" resolve="constraint" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4pWvZ2nEu3w" role="2OqNvi">
                                      <ref role="37wK5l" to="qrld:5uFPQ7B_aTC" resolve="symbol" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFb_" id="4pWvZ2nEt3O" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="arguments" />
                              <node concept="3uibUv" id="4pWvZ2nEt3P" role="3clF45">
                                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                                <node concept="3uibUv" id="4pWvZ2nEt3Q" role="11_B2D">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="4pWvZ2nEt3R" role="1B3o_S" />
                              <node concept="3clFbS" id="4pWvZ2nEt3T" role="3clF47">
                                <node concept="3clFbF" id="4pWvZ2nEvUp" role="3cqZAp">
                                  <node concept="2OqwBi" id="4pWvZ2nEvUT" role="3clFbG">
                                    <node concept="37vLTw" id="4pWvZ2nEvUo" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4pWvZ2nEu_j" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="4pWvZ2nEvWG" role="2OqNvi">
                                      <ref role="37wK5l" to="qrld:5uFPQ7BZafw" resolve="arguments" />
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
                  <node concept="37vLTG" id="4pWvZ2nEu_j" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="4pWvZ2nEu_i" role="1tU5fm">
                      <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6HT7BWBSMTp" role="jymVt">
        <property role="TrG5h" value="collectTypes" />
        <node concept="3cqZAl" id="6HT7BWBSMTr" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nEMmI" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBSMTt" role="3clF47">
          <node concept="1DcWWT" id="6HT7BWBSNt2" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBSNt3" role="2LFqv$">
              <node concept="3clFbJ" id="6HT7BWBSNt4" role="3cqZAp">
                <node concept="3clFbS" id="6HT7BWBSNt5" role="3clFbx">
                  <node concept="3cpWs8" id="6HT7BWBSNte" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSNtf" role="3cpWs9">
                      <property role="TrG5h" value="typeLogical" />
                      <node concept="3uibUv" id="6HT7BWBSNtg" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="6HT7BWBSNth" role="33vP2m">
                        <node concept="3uibUv" id="6HT7BWBSNti" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="5mr7UHcd1e8" role="10QFUP">
                          <node concept="2OqwBi" id="6HT7BWBT_Hd" role="2Oq$k0">
                            <node concept="37vLTw" id="6HT7BWBT_He" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBSNvV" resolve="co" />
                            </node>
                            <node concept="liA8E" id="5mr7UHcd0RC" role="2OqNvi">
                              <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5mr7UHcd1AO" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="5mr7UHcd1Wg" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6HT7BWBSNvx" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSNvy" role="3cpWs9">
                      <property role="TrG5h" value="anchor" />
                      <node concept="3uibUv" id="6HT7BWBSNvz" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="10QFUN" id="6HT7BWBSNv$" role="33vP2m">
                        <node concept="3uibUv" id="6HT7BWBSNv_" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="5mr7UHcd2oT" role="10QFUP">
                          <node concept="2OqwBi" id="6HT7BWBT_NW" role="2Oq$k0">
                            <node concept="37vLTw" id="6HT7BWBT_NX" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBSNvV" resolve="co" />
                            </node>
                            <node concept="liA8E" id="5mr7UHcd2ad" role="2OqNvi">
                              <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5mr7UHcd2Hq" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="5mr7UHcd2YZ" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6HT7BWBSNvD" role="3cqZAp">
                    <node concept="2OqwBi" id="6HT7BWBSNvE" role="3clFbG">
                      <node concept="37vLTw" id="6HT7BWBSNvF" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBUwf_" resolve="nodeId2Type" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSNvG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2YIFZM" id="4pWvZ2nDWq0" role="37wK5m">
                          <ref role="1Pybhc" node="4pWvZ2nDCbU" resolve="RunTypecheckingRules.AbstractFormatter" />
                          <ref role="37wK5l" node="4pWvZ2njtBV" resolve="getNode" />
                          <node concept="37vLTw" id="4pWvZ2njvYq" role="37wK5m">
                            <ref role="3cqZAo" node="6HT7BWBSNvy" resolve="anchor" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="4pWvZ2njwej" role="37wK5m">
                          <ref role="37wK5l" node="4pWvZ2njipn" resolve="getType" />
                          <node concept="37vLTw" id="4pWvZ2njwuF" role="37wK5m">
                            <ref role="3cqZAo" node="6HT7BWBSNtf" resolve="typeLogical" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6HT7BWBSNvP" role="3clFbw">
                  <node concept="2OqwBi" id="4pWvZ2nEU3r" role="2Oq$k0">
                    <node concept="10M0yZ" id="4pWvZ2nETHt" role="2Oq$k0">
                      <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
                      <ref role="3cqZAo" to="i348:5uFPQ7CgjLS" resolve="TYPEOF_SYM" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2nEU5T" role="2OqNvi">
                      <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6HT7BWBSNvR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="5mr7UHcd0DT" role="37wK5m">
                      <node concept="2OqwBi" id="5mr7UHcd0zT" role="2Oq$k0">
                        <node concept="37vLTw" id="6HT7BWBSNvT" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSNvV" resolve="co" />
                        </node>
                        <node concept="liA8E" id="5mr7UHcd0Cu" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5mr7UHcd0GT" role="2OqNvi">
                        <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6HT7BWBSNvV" role="1Duv9x">
              <property role="TrG5h" value="co" />
              <node concept="3uibUv" id="4pWvZ2nEL7U" role="1tU5fm">
                <ref role="3uigEE" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
              </node>
            </node>
            <node concept="1rXfSq" id="4pWvZ2nEex4" role="1DdaDG">
              <ref role="37wK5l" node="4pWvZ2nE8iX" resolve="getConstraintOccurrences" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6HT7BWBUwf_" role="3clF46">
          <property role="TrG5h" value="nodeId2Type" />
          <node concept="3uibUv" id="6HT7BWBUwf$" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="17QB3L" id="6HT7BWBUxmF" role="11_B2D" />
            <node concept="17QB3L" id="6HT7BWBUxD9" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6HT7BWBSGZH" role="jymVt">
        <property role="TrG5h" value="initialize" />
        <node concept="3cqZAl" id="6HT7BWBSGZJ" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nELuY" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBSGZL" role="3clF47">
          <node concept="1DcWWT" id="6HT7BWBSIS_" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBSISA" role="2LFqv$">
              <node concept="3clFbJ" id="6HT7BWBSISB" role="3cqZAp">
                <node concept="3clFbS" id="6HT7BWBSISC" role="3clFbx">
                  <node concept="3cpWs8" id="5mr7UHccPOE" role="3cqZAp">
                    <node concept="3cpWsn" id="5mr7UHccPOF" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="3uibUv" id="5mr7UHccPOw" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="5mr7UHccPOz" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5mr7UHccPOG" role="33vP2m">
                        <node concept="37vLTw" id="5mr7UHccPOH" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSITO" resolve="co" />
                        </node>
                        <node concept="liA8E" id="5mr7UHccPOI" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6HT7BWBSISK" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSISL" role="3cpWs9">
                      <property role="TrG5h" value="typeLogical" />
                      <node concept="3uibUv" id="6HT7BWBSISM" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="6HT7BWBSISN" role="33vP2m">
                        <node concept="3uibUv" id="6HT7BWBSISO" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="5mr7UHccT6M" role="10QFUP">
                          <node concept="37vLTw" id="6HT7BWBSISR" role="2Oq$k0">
                            <ref role="3cqZAo" node="5mr7UHccPOF" resolve="args" />
                          </node>
                          <node concept="liA8E" id="5mr7UHccTuz" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="5mr7UHccTNA" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6HT7BWBSISS" role="3cqZAp">
                    <node concept="2OqwBi" id="6HT7BWBSIST" role="3clFbG">
                      <node concept="37vLTw" id="6HT7BWBSISU" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSISV" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2OqwBi" id="6HT7BWBSISX" role="37wK5m">
                          <node concept="37vLTw" id="6HT7BWBSISY" role="2Oq$k0">
                            <ref role="3cqZAo" node="6HT7BWBSISL" resolve="typeLogical" />
                          </node>
                          <node concept="liA8E" id="6HT7BWBSISZ" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="6HT7BWBSIT1" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <node concept="2OqwBi" id="5mr7UHccUqz" role="37wK5m">
                            <node concept="37vLTw" id="6HT7BWBSIT4" role="2Oq$k0">
                              <ref role="3cqZAo" node="5mr7UHccPOF" resolve="args" />
                            </node>
                            <node concept="liA8E" id="5mr7UHccULM" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                              <node concept="3cmrfG" id="5mr7UHccV2G" role="37wK5m">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6HT7BWBSIT5" role="3clFbw">
                  <node concept="liA8E" id="6HT7BWBSIT7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="5mr7UHccPyE" role="37wK5m">
                      <node concept="2OqwBi" id="5mr7UHccPsf" role="2Oq$k0">
                        <node concept="37vLTw" id="6HT7BWBSIT9" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSITO" resolve="co" />
                        </node>
                        <node concept="liA8E" id="5mr7UHccPwp" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5mr7UHccP_E" role="2OqNvi">
                        <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4pWvZ2nEZvE" role="2Oq$k0">
                    <node concept="3fl2lp" id="4pWvZ2nEZvF" role="2Oq$k0">
                      <ref role="3fl3PK" to="kqnc:3Qp4N06bUPt" resolve="varname" />
                      <node concept="3B5_sB" id="4pWvZ2nEZvG" role="3fl3PI">
                        <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4pWvZ2nEZBY" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6HT7BWBSITb" role="3cqZAp">
                <node concept="3clFbS" id="6HT7BWBSITc" role="3clFbx">
                  <node concept="3cpWs8" id="5mr7UHccV_h" role="3cqZAp">
                    <node concept="3cpWsn" id="5mr7UHccV_i" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="3uibUv" id="5mr7UHccV_b" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="5mr7UHccV_e" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5mr7UHccV_j" role="33vP2m">
                        <node concept="37vLTw" id="5mr7UHccV_k" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSITO" resolve="co" />
                        </node>
                        <node concept="liA8E" id="5mr7UHccV_l" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7B_b06" resolve="arguments" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6HT7BWBSITk" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSITl" role="3cpWs9">
                      <property role="TrG5h" value="typeLogical" />
                      <node concept="3uibUv" id="6HT7BWBSITm" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="6HT7BWBSITn" role="33vP2m">
                        <node concept="3uibUv" id="6HT7BWBSITo" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="5mr7UHccWG7" role="10QFUP">
                          <node concept="37vLTw" id="5mr7UHccWi3" role="2Oq$k0">
                            <ref role="3cqZAo" node="5mr7UHccV_i" resolve="args" />
                          </node>
                          <node concept="liA8E" id="5mr7UHccWZ_" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="5mr7UHccXgl" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6HT7BWBSITs" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSITt" role="3cpWs9">
                      <property role="TrG5h" value="boundLogical" />
                      <node concept="3uibUv" id="6HT7BWBSITu" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="6HT7BWBSITv" role="33vP2m">
                        <node concept="3uibUv" id="6HT7BWBSITw" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="5mr7UHccXT1" role="10QFUP">
                          <node concept="37vLTw" id="5mr7UHccXzl" role="2Oq$k0">
                            <ref role="3cqZAo" node="5mr7UHccV_i" resolve="args" />
                          </node>
                          <node concept="liA8E" id="5mr7UHccYcv" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="5mr7UHccYsl" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6HT7BWBSIT$" role="3cqZAp">
                    <node concept="2OqwBi" id="6HT7BWBSIT_" role="3clFbG">
                      <node concept="liA8E" id="6HT7BWBSITA" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2OqwBi" id="6HT7BWBSITB" role="37wK5m">
                          <node concept="37vLTw" id="6HT7BWBSITC" role="2Oq$k0">
                            <ref role="3cqZAo" node="6HT7BWBSITl" resolve="typeLogical" />
                          </node>
                          <node concept="liA8E" id="6HT7BWBSITD" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6HT7BWBSITE" role="37wK5m">
                          <node concept="37vLTw" id="6HT7BWBSITF" role="2Oq$k0">
                            <ref role="3cqZAo" node="6HT7BWBSITt" resolve="boundLogical" />
                          </node>
                          <node concept="liA8E" id="6HT7BWBSITG" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6HT7BWBSITH" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSGys" resolve="ubounds" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6HT7BWBSITI" role="3clFbw">
                  <node concept="2OqwBi" id="4pWvZ2nEXdB" role="2Oq$k0">
                    <node concept="3fl2lp" id="4pWvZ2nEX6b" role="2Oq$k0">
                      <ref role="3fl3PK" to="kqnc:3Qp4N06bUPr" resolve="ubound" />
                      <node concept="3B5_sB" id="4pWvZ2nEWZQ" role="3fl3PI">
                        <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4pWvZ2nEXlu" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6HT7BWBSITK" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="5mr7UHccVjA" role="37wK5m">
                      <node concept="2OqwBi" id="5mr7UHccVdD" role="2Oq$k0">
                        <node concept="37vLTw" id="6HT7BWBSITM" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSITO" resolve="co" />
                        </node>
                        <node concept="liA8E" id="5mr7UHccVhB" role="2OqNvi">
                          <ref role="37wK5l" to="qrld:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5mr7UHccVn4" role="2OqNvi">
                        <ref role="37wK5l" to="qrld:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6HT7BWBSITO" role="1Duv9x">
              <property role="TrG5h" value="co" />
              <node concept="3uibUv" id="4pWvZ2nEK7K" role="1tU5fm">
                <ref role="3uigEE" to="qrld:5uFPQ7B$Pn9" resolve="AndItem" />
              </node>
            </node>
            <node concept="1rXfSq" id="4pWvZ2nEanQ" role="1DdaDG">
              <ref role="37wK5l" node="4pWvZ2nE8iX" resolve="getConstraintOccurrences" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6HT7BWBT8vT" role="jymVt" />
    <node concept="3Tm1VV" id="41ox5Vnk76b" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="41ox5VnpFrR">
    <property role="TrG5h" value="MarkTypesAndErrors" />
    <node concept="Wx3nA" id="41ox5VnsV1U" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NODE" />
      <node concept="3Tm6S6" id="41ox5VnsV1Q" role="1B3o_S" />
      <node concept="3uibUv" id="41ox5VnsV1R" role="1tU5fm">
        <ref role="3uigEE" to="zavc:~NodeMessageTarget" resolve="NodeMessageTarget" />
      </node>
      <node concept="2ShNRf" id="41ox5VnsV1S" role="33vP2m">
        <node concept="1pGfFk" id="41ox5VnsV1T" role="2ShVmc">
          <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
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
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnqWuQ" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="41ox5VnqWBh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="41ox5VnqWGh" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3uibUv" id="41ox5VnqWGi" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="41ox5VnqWGj" role="11_B2D" />
          <node concept="17QB3L" id="41ox5VnqWGk" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="6HT7BWBUjus" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="3uibUv" id="6HT7BWBUjut" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="6HT7BWBUjuu" role="11_B2D" />
          <node concept="17QB3L" id="6HT7BWBUjuv" role="11_B2D" />
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
              <node concept="37vLTw" id="6HT7BWBUjEd" role="37wK5m">
                <ref role="3cqZAo" node="6HT7BWBUjus" resolve="errors" />
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
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
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
              <ref role="3uigEE" to="exr9:~NodeHighlightManager" resolve="NodeHighlightManager" />
            </node>
            <node concept="2OqwBi" id="41ox5VnqGcb" role="33vP2m">
              <node concept="37vLTw" id="41ox5VnqGcc" role="2Oq$k0">
                <ref role="3cqZAo" node="41ox5VnqHMs" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="41ox5VnqGcd" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getHighlightManager():jetbrains.mps.nodeEditor.NodeHighlightManager" resolve="getHighlightManager" />
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
              <ref role="37wK5l" to="exr9:~NodeHighlightManager.clearForOwner(jetbrains.mps.openapi.editor.message.EditorMessageOwner):boolean" resolve="clearForOwner" />
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
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="41ox5VnqPm8" role="33vP2m">
                  <node concept="2JrnkZ" id="41ox5VnqPm9" role="2Oq$k0">
                    <node concept="37vLTw" id="41ox5VnqPma" role="2JrQYb">
                      <ref role="3cqZAo" node="41ox5VnqNFI" resolve="mdl" />
                    </node>
                  </node>
                  <node concept="liA8E" id="41ox5VnqPmb" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                    <node concept="2YIFZM" id="41ox5VnqPmc" role="37wK5m">
                      <ref role="37wK5l" to="w1kc:~SNodeId.fromString(java.lang.String):jetbrains.mps.smodel.SNodeId" resolve="fromString" />
                      <ref role="1Pybhc" to="w1kc:~SNodeId" resolve="SNodeId" />
                      <node concept="2OqwBi" id="41ox5VnqPmd" role="37wK5m">
                        <node concept="37vLTw" id="41ox5VnqPme" role="2Oq$k0">
                          <ref role="3cqZAo" node="41ox5VnqI$l" resolve="e" />
                        </node>
                        <node concept="liA8E" id="41ox5VnqPmf" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
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
                  <ref role="37wK5l" to="exr9:~NodeHighlightManager.mark(jetbrains.mps.openapi.editor.message.SimpleEditorMessage):void" resolve="mark" />
                  <node concept="2ShNRf" id="41ox5VnqSwq" role="37wK5m">
                    <node concept="1pGfFk" id="41ox5VnqTlu" role="2ShVmc">
                      <ref role="37wK5l" node="41ox5VnqPPQ" resolve="MarkTypesAndErrors.TypeMessage" />
                      <node concept="37vLTw" id="41ox5VnqTnn" role="37wK5m">
                        <ref role="3cqZAo" node="41ox5VnqPm7" resolve="node" />
                      </node>
                      <node concept="2OqwBi" id="41ox5VnqTqj" role="37wK5m">
                        <node concept="37vLTw" id="41ox5VnqToA" role="2Oq$k0">
                          <ref role="3cqZAo" node="41ox5VnqI$l" resolve="e" />
                        </node>
                        <node concept="liA8E" id="41ox5VnqU2m" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
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
              <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
              <node concept="17QB3L" id="41ox5VnqISy" role="11_B2D" />
              <node concept="17QB3L" id="41ox5VnqIYh" role="11_B2D" />
            </node>
          </node>
          <node concept="2OqwBi" id="41ox5VnqJ89" role="1DdaDG">
            <node concept="37vLTw" id="41ox5VnqI$s" role="2Oq$k0">
              <ref role="3cqZAo" node="41ox5VnqIf$" resolve="types" />
            </node>
            <node concept="liA8E" id="41ox5VnqLeU" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.entrySet():java.util.Set" resolve="entrySet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnqHMs" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="41ox5VnqHMr" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnqLKO" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="41ox5VnqMa$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="41ox5VnqIf$" role="3clF46">
        <property role="TrG5h" value="types" />
        <node concept="3uibUv" id="41ox5VnqIkv" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="41ox5VnqIoy" role="11_B2D" />
          <node concept="17QB3L" id="41ox5VnqIsG" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="6HT7BWBUij3" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="3uibUv" id="6HT7BWBUij4" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="6HT7BWBUij5" role="11_B2D" />
          <node concept="17QB3L" id="6HT7BWBUij6" role="11_B2D" />
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
                <ref role="37wK5l" to="exr9:~EditorComponent.getHighlightManager():jetbrains.mps.nodeEditor.NodeHighlightManager" resolve="getHighlightManager" />
              </node>
            </node>
            <node concept="liA8E" id="41ox5VnrTCV" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeHighlightManager.clearForOwner(jetbrains.mps.openapi.editor.message.EditorMessageOwner):boolean" resolve="clearForOwner" />
              <node concept="Xjq3P" id="41ox5VnrTEk" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnrOyq" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="41ox5VnrOyp" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnrOAa" role="jymVt" />
    <node concept="312cEu" id="41ox5VnqPFM" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TypeMessage" />
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
            <ref role="37wK5l" to="exr9:~HighlighterMessage.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.errors.MessageStatus,jetbrains.mps.errors.messageTargets.MessageTarget,java.awt.Color,java.lang.String,jetbrains.mps.openapi.editor.message.EditorMessageOwner)" resolve="HighlighterMessage" />
            <node concept="37vLTw" id="41ox5VnsRyX" role="37wK5m">
              <ref role="3cqZAo" node="41ox5VnqPZj" resolve="node" />
            </node>
            <node concept="Rm8GO" id="41ox5VnsSF6" role="37wK5m">
              <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
              <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
            </node>
            <node concept="37vLTw" id="41ox5VnsV20" role="37wK5m">
              <ref role="3cqZAo" node="41ox5VnsV1U" resolve="NODE" />
            </node>
            <node concept="10M0yZ" id="41ox5VnsVyS" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.GREEN" resolve="GREEN" />
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
        <ref role="3uigEE" to="exr9:~HighlighterMessage" resolve="HighlighterMessage" />
      </node>
    </node>
    <node concept="2tJIrI" id="6HT7BWBUi$Y" role="jymVt" />
    <node concept="312cEu" id="6HT7BWBUi$G" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ErrorMessage" />
      <node concept="3clFbW" id="6HT7BWBUi$H" role="jymVt">
        <node concept="37vLTG" id="6HT7BWBUi$I" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="6HT7BWBUi$J" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6HT7BWBUi$K" role="3clF46">
          <property role="TrG5h" value="msg" />
          <node concept="17QB3L" id="6HT7BWBUi$L" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6HT7BWBUi$M" role="3clF45" />
        <node concept="3Tm1VV" id="6HT7BWBUi$N" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBUi$O" role="3clF47">
          <node concept="XkiVB" id="6HT7BWBUi$P" role="3cqZAp">
            <ref role="37wK5l" to="exr9:~HighlighterMessage.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.errors.MessageStatus,jetbrains.mps.errors.messageTargets.MessageTarget,java.awt.Color,java.lang.String,jetbrains.mps.openapi.editor.message.EditorMessageOwner)" resolve="HighlighterMessage" />
            <node concept="37vLTw" id="6HT7BWBUi$Q" role="37wK5m">
              <ref role="3cqZAo" node="6HT7BWBUi$I" resolve="node" />
            </node>
            <node concept="Rm8GO" id="6HT7BWBUiL$" role="37wK5m">
              <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
              <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
            </node>
            <node concept="37vLTw" id="6HT7BWBUi$S" role="37wK5m">
              <ref role="3cqZAo" node="41ox5VnsV1U" resolve="NODE" />
            </node>
            <node concept="10M0yZ" id="6HT7BWBUi$T" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              <ref role="3cqZAo" to="z60i:~Color.RED" resolve="RED" />
            </node>
            <node concept="37vLTw" id="6HT7BWBUi$U" role="37wK5m">
              <ref role="3cqZAo" node="6HT7BWBUi$K" resolve="msg" />
            </node>
            <node concept="Xjq3P" id="6HT7BWBUi$V" role="37wK5m">
              <ref role="1HBi2w" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6HT7BWBUi$W" role="1B3o_S" />
      <node concept="3uibUv" id="6HT7BWBUi$X" role="1zkMxy">
        <ref role="3uigEE" to="exr9:~HighlighterMessage" resolve="HighlighterMessage" />
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnpGsF" role="jymVt" />
    <node concept="3Tm1VV" id="41ox5VnpFrS" role="1B3o_S" />
    <node concept="3uibUv" id="41ox5VnpFsi" role="EKbjA">
      <ref role="3uigEE" to="kpve:~EditorMessageOwner" resolve="EditorMessageOwner" />
    </node>
  </node>
  <node concept="sE7Ow" id="41ox5VnrUX7">
    <property role="TrG5h" value="ClearTypes" />
    <property role="2uzpH1" value="Clear Types" />
    <node concept="1DS2jV" id="41ox5VnrVtS" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
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
  <node concept="312cEu" id="4i4XGQZlbGA">
    <property role="TrG5h" value="MessageViewTracer" />
    <node concept="Wx3nA" id="2$F5QpuoU$X" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TAB_NAME" />
      <node concept="3Tm6S6" id="2$F5QpuoU$U" role="1B3o_S" />
      <node concept="17QB3L" id="2$F5QpuoU$V" role="1tU5fm" />
      <node concept="Xl_RD" id="2$F5QpuoU$W" role="33vP2m">
        <property role="Xl_RC" value="Constraint" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmEEY" role="jymVt" />
    <node concept="Wx3nA" id="61vfVfp5OZI" role="jymVt">
      <property role="TrG5h" value="ALL" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="61vfVfp5YUg" role="1B3o_S" />
      <node concept="10Q1$e" id="61vfVfp5PJu" role="1tU5fm">
        <node concept="3uibUv" id="61vfVfp5PFm" role="10Q1$1">
          <ref role="3uigEE" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
      <node concept="uiWXb" id="61vfVfp5PZ9" role="33vP2m">
        <ref role="uiZuM" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
      </node>
    </node>
    <node concept="Wx3nA" id="61vfVfp5Q32" role="jymVt">
      <property role="TrG5h" value="ONLY_FIRED" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="61vfVfp5YXI" role="1B3o_S" />
      <node concept="10Q1$e" id="61vfVfp5Q34" role="1tU5fm">
        <node concept="3uibUv" id="61vfVfp5Q35" role="10Q1$1">
          <ref role="3uigEE" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
      <node concept="2BsdOp" id="61vfVfp5QBQ" role="33vP2m">
        <node concept="Rm8GO" id="61vfVfp5R5D" role="2BsfMF">
          <ref role="Rm8GQ" node="61vfVfp5uU4" resolve="FIRED" />
          <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61vfVfp5Oke" role="jymVt" />
    <node concept="2YIFZL" id="4i4XGQZmHHg" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="4i4XGQZmI3o" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4i4XGQZmIQR" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="4i4XGQZn_IN" role="3clF45">
        <ref role="3uigEE" node="4i4XGQZlbGA" resolve="MessageViewTracer" />
      </node>
      <node concept="3Tm1VV" id="4i4XGQZmHHj" role="1B3o_S" />
      <node concept="3clFbS" id="4i4XGQZmHHk" role="3clF47">
        <node concept="3cpWs8" id="4i4XGQZmLGg" role="3cqZAp">
          <node concept="3cpWsn" id="4i4XGQZmLGh" role="3cpWs9">
            <property role="TrG5h" value="mvt" />
            <node concept="3uibUv" id="4i4XGQZmLGe" role="1tU5fm">
              <ref role="3uigEE" to="57ty:~MessagesViewTool" resolve="MessagesViewTool" />
            </node>
            <node concept="2OqwBi" id="4i4XGQZmLGi" role="33vP2m">
              <node concept="37vLTw" id="4i4XGQZmLGj" role="2Oq$k0">
                <ref role="3cqZAo" node="4i4XGQZmI3o" resolve="ideaProject" />
              </node>
              <node concept="liA8E" id="4i4XGQZmLGk" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                <node concept="3VsKOn" id="4i4XGQZmLGl" role="37wK5m">
                  <ref role="3VsUkX" to="57ty:~MessagesViewTool" resolve="MessagesViewTool" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4i4XGQZnIGH" role="3cqZAp">
          <node concept="3clFbS" id="4i4XGQZnIGJ" role="3clFbx">
            <node concept="YS8fn" id="4i4XGQZnIXU" role="3cqZAp">
              <node concept="2ShNRf" id="4i4XGQZnIYs" role="YScLw">
                <node concept="1pGfFk" id="4i4XGQZnJRi" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4i4XGQZnIOv" role="3clFbw">
            <node concept="10Nm6u" id="4i4XGQZnIP6" role="3uHU7w" />
            <node concept="37vLTw" id="4i4XGQZnIIJ" role="3uHU7B">
              <ref role="3cqZAo" node="4i4XGQZmLGh" resolve="mvt" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i4XGQZmMVO" role="3cqZAp">
          <node concept="2ShNRf" id="4i4XGQZmMVK" role="3clFbG">
            <node concept="1pGfFk" id="4i4XGQZnbG8" role="2ShVmc">
              <ref role="37wK5l" node="4i4XGQZmLRe" resolve="MessageViewTracer" />
              <node concept="37vLTw" id="4i4XGQZnbJQ" role="37wK5m">
                <ref role="3cqZAo" node="4i4XGQZmLGh" resolve="mvt" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmHlf" role="jymVt" />
    <node concept="3clFbW" id="4i4XGQZmLRe" role="jymVt">
      <node concept="37vLTG" id="4i4XGQZmM8k" role="3clF46">
        <property role="TrG5h" value="messagesViewTool" />
        <node concept="3uibUv" id="4i4XGQZmMxi" role="1tU5fm">
          <ref role="3uigEE" to="57ty:~MessagesViewTool" resolve="MessagesViewTool" />
        </node>
      </node>
      <node concept="3cqZAl" id="4i4XGQZmLRg" role="3clF45" />
      <node concept="3Tm6S6" id="4i4XGQZncwE" role="1B3o_S" />
      <node concept="3clFbS" id="4i4XGQZmLRi" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmMzk" role="3cqZAp">
          <node concept="37vLTI" id="4i4XGQZmMzm" role="3clFbG">
            <node concept="2OqwBi" id="4i4XGQZmMzq" role="37vLTJ">
              <node concept="Xjq3P" id="4i4XGQZmMzt" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i4XGQZmMzp" role="2OqNvi">
                <ref role="2Oxat5" node="4i4XGQZmMzg" resolve="messagesViewTool" />
              </node>
            </node>
            <node concept="37vLTw" id="4i4XGQZmMzu" role="37vLTx">
              <ref role="3cqZAo" node="4i4XGQZmM8k" resolve="messagesViewTool" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61vfVfp4hkS" role="3cqZAp">
          <node concept="2OqwBi" id="61vfVfp4hpF" role="3clFbG">
            <node concept="37vLTw" id="61vfVfp4hkQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4i4XGQZmM8k" resolve="messagesViewTool" />
            </node>
            <node concept="liA8E" id="61vfVfp4hDh" role="2OqNvi">
              <ref role="37wK5l" to="57ty:~MessagesViewTool.clear(java.lang.String):void" resolve="clear" />
              <node concept="37vLTw" id="2$F5QpuoU_3" role="37wK5m">
                <ref role="3cqZAo" node="2$F5QpuoU$X" resolve="TAB_NAME" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmGTb" role="jymVt" />
    <node concept="3clFb_" id="61vfVfp5zwA" role="jymVt">
      <property role="TrG5h" value="showEvents" />
      <node concept="37vLTG" id="61vfVfp5$TB" role="3clF46">
        <property role="TrG5h" value="events" />
        <node concept="8X2XB" id="61vfVfp5_y5" role="1tU5fm">
          <node concept="3uibUv" id="61vfVfp5_pj" role="8Xvag">
            <ref role="3uigEE" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="61vfVfp5zwC" role="3clF45" />
      <node concept="3Tm1VV" id="61vfVfp5zwD" role="1B3o_S" />
      <node concept="3clFbS" id="61vfVfp5zwE" role="3clF47">
        <node concept="3clFbF" id="61vfVfp5_IL" role="3cqZAp">
          <node concept="37vLTI" id="61vfVfp5_IN" role="3clFbG">
            <node concept="2OqwBi" id="61vfVfp5_IR" role="37vLTJ">
              <node concept="Xjq3P" id="61vfVfp5_IU" role="2Oq$k0" />
              <node concept="2OwXpG" id="61vfVfp5_IQ" role="2OqNvi">
                <ref role="2Oxat5" node="61vfVfp5_IG" resolve="eventsToDisplay" />
              </node>
            </node>
            <node concept="2YIFZM" id="61vfVfp5Guu" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="61vfVfp5Gxw" role="37wK5m">
                <ref role="3cqZAo" node="61vfVfp5$TB" resolve="events" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="623frvFBbdZ" role="jymVt" />
    <node concept="3clFb_" id="623frvFBcwl" role="jymVt">
      <property role="TrG5h" value="warning" />
      <node concept="37vLTG" id="623frvFBeMu" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="3uibUv" id="623frvFBfCT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="623frvFBfEi" role="3clF46">
        <property role="TrG5h" value="throwable" />
        <node concept="3uibUv" id="623frvFBgLl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3cqZAl" id="623frvFBcwn" role="3clF45" />
      <node concept="3Tm1VV" id="623frvFBcwo" role="1B3o_S" />
      <node concept="3clFbS" id="623frvFBcwp" role="3clF47">
        <node concept="3cpWs8" id="623frvFBjye" role="3cqZAp">
          <node concept="3cpWsn" id="623frvFBjyf" role="3cpWs9">
            <property role="TrG5h" value="msg" />
            <node concept="3uibUv" id="623frvFBjy8" role="1tU5fm">
              <ref role="3uigEE" to="et5u:~Message" resolve="Message" />
            </node>
            <node concept="2ShNRf" id="623frvFBjyg" role="33vP2m">
              <node concept="1pGfFk" id="623frvFBjyh" role="2ShVmc">
                <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String)" resolve="Message" />
                <node concept="Rm8GO" id="623frvFBjyi" role="37wK5m">
                  <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                  <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                </node>
                <node concept="37vLTw" id="623frvFBjyj" role="37wK5m">
                  <ref role="3cqZAo" node="623frvFBeMu" resolve="str" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623frvFBkfT" role="3cqZAp">
          <node concept="2OqwBi" id="623frvFBkvg" role="3clFbG">
            <node concept="37vLTw" id="623frvFBkfR" role="2Oq$k0">
              <ref role="3cqZAo" node="623frvFBjyf" resolve="msg" />
            </node>
            <node concept="liA8E" id="623frvFBkEw" role="2OqNvi">
              <ref role="37wK5l" to="et5u:~Message.setException(java.lang.Throwable):jetbrains.mps.messages.Message" resolve="setException" />
              <node concept="37vLTw" id="623frvFBl49" role="37wK5m">
                <ref role="3cqZAo" node="623frvFBfEi" resolve="throwable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623frvFBgMN" role="3cqZAp">
          <node concept="2OqwBi" id="623frvFBgMP" role="3clFbG">
            <node concept="37vLTw" id="623frvFBgMQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4i4XGQZmMzg" resolve="messagesViewTool" />
            </node>
            <node concept="liA8E" id="623frvFBgMR" role="2OqNvi">
              <ref role="37wK5l" to="57ty:~MessagesViewTool.add(jetbrains.mps.messages.IMessage,java.lang.String):void" resolve="add" />
              <node concept="37vLTw" id="623frvFBjyk" role="37wK5m">
                <ref role="3cqZAo" node="623frvFBjyf" resolve="msg" />
              </node>
              <node concept="37vLTw" id="2$F5QpuoU_9" role="37wK5m">
                <ref role="3cqZAo" node="2$F5QpuoU$X" resolve="TAB_NAME" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="623frvFC1kb" role="jymVt" />
    <node concept="3Tm1VV" id="4i4XGQZlbGB" role="1B3o_S" />
    <node concept="3uibUv" id="4i4XGQZlmNA" role="EKbjA">
      <ref role="3uigEE" to="iawt:~Tracer" resolve="Tracer" />
    </node>
    <node concept="3uibUv" id="qubcdtxCp8" role="EKbjA">
      <ref role="3uigEE" to="yg8f:qubcdtxBiR" resolve="ComputingTracerExt" />
    </node>
    <node concept="3clFb_" id="4i4XGQZlmRQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="activated" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmRR" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmRT" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmRU" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4i4XGQZlmRV" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmRW" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmfrX" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmfrW" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5Kv8" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5uey" resolve="ACTIVATED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="Xl_RD" id="4i4XGQZmfsz" role="37wK5m">
              <property role="Xl_RC" value="[+++] /activated/ " />
            </node>
            <node concept="37vLTw" id="4i4XGQZmfur" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmRU" resolve="constraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmEXo" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZlmRX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reactivated" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmRY" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmS0" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmS1" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4i4XGQZlmS2" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmS3" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmhlp" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmhlq" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5Ly$" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5uls" resolve="REACTIVATED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="Xl_RD" id="4i4XGQZmhlr" role="37wK5m">
              <property role="Xl_RC" value="[###] /re-activated/ " />
            </node>
            <node concept="37vLTw" id="4i4XGQZmhlt" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmS1" resolve="constraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmFdp" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZlmS4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="stored" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmS5" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmS7" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmS8" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4i4XGQZlmS9" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmSa" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmhOO" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmhOP" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5LH1" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5usz" resolve="STORED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="Xl_RD" id="4i4XGQZmhOQ" role="37wK5m">
              <property role="Xl_RC" value="[~~~] /stored/ " />
            </node>
            <node concept="37vLTw" id="4i4XGQZmhOS" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmS8" resolve="constraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmFtr" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZlmSb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="suspended" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmSc" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmSe" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmSf" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4i4XGQZlmSg" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmSh" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmi0i" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmi0j" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5LSa" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5uz_" resolve="SUSPENDED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="Xl_RD" id="4i4XGQZmi0k" role="37wK5m">
              <property role="Xl_RC" value="[===] /suspended/ " />
            </node>
            <node concept="37vLTw" id="4i4XGQZmi0m" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmSf" resolve="constraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmFHu" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZlmSi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removed" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmSj" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmSl" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmSm" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4i4XGQZlmSn" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmSo" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmibm" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmibn" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5M4O" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5uEI" resolve="REMOVED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="Xl_RD" id="4i4XGQZmibo" role="37wK5m">
              <property role="Xl_RC" value="[^^^] /removed/ " />
            </node>
            <node concept="37vLTw" id="4i4XGQZmibq" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmSm" resolve="constraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmFXy" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZlmSp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="terminated" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmSq" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmSs" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmSt" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4i4XGQZlmSu" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmSv" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmils" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmilt" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5Mi7" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5uLV" resolve="TERMINATED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="Xl_RD" id="4i4XGQZmilu" role="37wK5m">
              <property role="Xl_RC" value="[---] /terminated/ " />
            </node>
            <node concept="37vLTw" id="4i4XGQZmilw" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmSt" resolve="constraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmGdB" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZlmSw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="fires" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmSx" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmSz" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmS$" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="4i4XGQZlmS_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4i4XGQZlmSA" role="3clF46">
        <property role="TrG5h" value="activeIdx" />
        <node concept="10Oyi0" id="4i4XGQZlmSB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4i4XGQZlmSC" role="3clF46">
        <property role="TrG5h" value="constraints" />
        <node concept="8X2XB" id="4i4XGQZlmSD" role="1tU5fm">
          <node concept="3uibUv" id="4i4XGQZlmSE" role="8Xvag">
            <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmSF" role="3clF47">
        <node concept="3clFbF" id="61vfVfp2Vd_" role="3cqZAp">
          <node concept="3uNrnE" id="61vfVfp2V_f" role="3clFbG">
            <node concept="37vLTw" id="61vfVfp2V_h" role="2$L3a6">
              <ref role="3cqZAo" node="61vfVfp2SU5" resolve="lastRuleTriggered" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i4XGQZmm4T" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmm4S" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5ND2" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5uMw" resolve="TRIGGERED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="3cpWs3" id="4i4XGQZmoLd" role="37wK5m">
              <node concept="Xl_RD" id="4i4XGQZmoTh" role="3uHU7w">
                <property role="Xl_RC" value=") " />
              </node>
              <node concept="3cpWs3" id="4i4XGQZmpc8" role="3uHU7B">
                <node concept="37vLTw" id="4i4XGQZmpku" role="3uHU7w">
                  <ref role="3cqZAo" node="4i4XGQZlmSA" resolve="activeIdx" />
                </node>
                <node concept="3cpWs3" id="4i4XGQZmomO" role="3uHU7B">
                  <node concept="3cpWs3" id="4i4XGQZmmTU" role="3uHU7B">
                    <node concept="Xl_RD" id="4i4XGQZmm8R" role="3uHU7B">
                      <property role="Xl_RC" value="[&gt;&gt;&gt;] /triggered/ " />
                    </node>
                    <node concept="37vLTw" id="4i4XGQZmmXY" role="3uHU7w">
                      <ref role="3cqZAo" node="4i4XGQZlmS$" resolve="rule" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4i4XGQZmouE" role="3uHU7w">
                    <property role="Xl_RC" value=" (" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i4XGQZmqst" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmSC" resolve="constraints" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmGA6" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZlmSG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="fired" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4i4XGQZlmSH" role="1B3o_S" />
      <node concept="3cqZAl" id="4i4XGQZlmSJ" role="3clF45" />
      <node concept="37vLTG" id="4i4XGQZlmSK" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="4i4XGQZlmSL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4i4XGQZlmSM" role="3clF46">
        <property role="TrG5h" value="activeIdx" />
        <node concept="10Oyi0" id="4i4XGQZlmSN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4i4XGQZlmSO" role="3clF46">
        <property role="TrG5h" value="constraints" />
        <node concept="8X2XB" id="4i4XGQZlmSP" role="1tU5fm">
          <node concept="3uibUv" id="4i4XGQZlmSQ" role="8Xvag">
            <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4i4XGQZlmSR" role="3clF47">
        <node concept="3clFbF" id="4i4XGQZmqzZ" role="3cqZAp">
          <node concept="1rXfSq" id="4i4XGQZmq$0" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="61vfVfp5O1N" role="37wK5m">
              <ref role="Rm8GQ" node="61vfVfp5uU4" resolve="FIRED" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="3cpWs3" id="4i4XGQZmq$1" role="37wK5m">
              <node concept="Xl_RD" id="4i4XGQZmq$2" role="3uHU7w">
                <property role="Xl_RC" value=" " />
              </node>
              <node concept="3cpWs3" id="4i4XGQZmq$3" role="3uHU7B">
                <node concept="37vLTw" id="4i4XGQZmq$4" role="3uHU7w">
                  <ref role="3cqZAo" node="4i4XGQZlmSM" resolve="activeIdx" />
                </node>
                <node concept="3cpWs3" id="4i4XGQZmq$5" role="3uHU7B">
                  <node concept="3cpWs3" id="4i4XGQZmq$6" role="3uHU7B">
                    <node concept="Xl_RD" id="4i4XGQZmq$7" role="3uHU7B">
                      <property role="Xl_RC" value="[&lt;&lt;&lt;] /fired/ " />
                    </node>
                    <node concept="37vLTw" id="4i4XGQZmq$8" role="3uHU7w">
                      <ref role="3cqZAo" node="4i4XGQZlmSK" resolve="rule" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4i4XGQZmq$9" role="3uHU7w">
                    <property role="Xl_RC" value="#" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i4XGQZmq$a" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZlmSO" resolve="constraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7feMCq_v8KI" role="3cqZAp">
          <node concept="3uO5VW" id="7feMCq_v9B0" role="3clFbG">
            <node concept="37vLTw" id="7feMCq_v9B2" role="2$L3a6">
              <ref role="3cqZAo" node="61vfVfp2SU5" resolve="lastRuleTriggered" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="24Vro6cQTbM" role="jymVt" />
    <node concept="3clFb_" id="24Vro6cQSyK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askSuccess" />
      <node concept="37vLTG" id="24Vro6cQSyL" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C62Yl" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQSyN" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="24Vro6cQVZK" role="1tU5fm">
          <node concept="3uibUv" id="24Vro6cQSyP" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="24Vro6cQSyQ" role="3clF45" />
      <node concept="3Tm1VV" id="24Vro6cQSyR" role="1B3o_S" />
      <node concept="3clFbS" id="24Vro6cQSyT" role="3clF47">
        <node concept="3clFbF" id="24Vro6cQYOc" role="3cqZAp">
          <node concept="1rXfSq" id="24Vro6cQYOd" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="24Vro6cR2fG" role="37wK5m">
              <ref role="Rm8GQ" node="24Vro6cQUo9" resolve="ASK_SUCCESS" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="3cpWs3" id="24Vro6cR5wl" role="37wK5m">
              <node concept="2YIFZM" id="24Vro6cR63s" role="3uHU7w">
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="24Vro6cR6qD" role="37wK5m">
                  <ref role="3cqZAo" node="24Vro6cQSyN" resolve="args" />
                </node>
              </node>
              <node concept="3cpWs3" id="24Vro6cQYOj" role="3uHU7B">
                <node concept="3cpWs3" id="24Vro6cQYOk" role="3uHU7B">
                  <node concept="Xl_RD" id="24Vro6cQYOl" role="3uHU7B">
                    <property role="Xl_RC" value="[YES] /ask_success/ " />
                  </node>
                  <node concept="37vLTw" id="24Vro6cR3Jo" role="3uHU7w">
                    <ref role="3cqZAo" node="24Vro6cQSyL" resolve="predicateSymbol" />
                  </node>
                </node>
                <node concept="Xl_RD" id="24Vro6cQYOn" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="24Vro6cQTLX" role="jymVt" />
    <node concept="3clFb_" id="24Vro6cQSyU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askFailure" />
      <node concept="37vLTG" id="24Vro6cQSyV" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C63El" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQSyX" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="24Vro6cQWpv" role="1tU5fm">
          <node concept="3uibUv" id="24Vro6cQSyZ" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="24Vro6cQSz0" role="3clF45" />
      <node concept="3Tm1VV" id="24Vro6cQSz1" role="1B3o_S" />
      <node concept="3clFbS" id="24Vro6cQSz3" role="3clF47">
        <node concept="3clFbF" id="24Vro6cR6WV" role="3cqZAp">
          <node concept="1rXfSq" id="24Vro6cR6WW" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="3K_0akSrLxK" role="37wK5m">
              <ref role="Rm8GQ" node="24Vro6cQUIt" resolve="ASK_FAILURE" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="3cpWs3" id="24Vro6cR6WY" role="37wK5m">
              <node concept="2YIFZM" id="24Vro6cR6WZ" role="3uHU7w">
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                <node concept="37vLTw" id="24Vro6cR6X0" role="37wK5m">
                  <ref role="3cqZAo" node="24Vro6cQSyX" resolve="args" />
                </node>
              </node>
              <node concept="3cpWs3" id="24Vro6cR6X1" role="3uHU7B">
                <node concept="3cpWs3" id="24Vro6cR6X2" role="3uHU7B">
                  <node concept="Xl_RD" id="24Vro6cR6X3" role="3uHU7B">
                    <property role="Xl_RC" value="[ NO ] /ask_negative/ " />
                  </node>
                  <node concept="37vLTw" id="5uFPQ7BGWyi" role="3uHU7w">
                    <ref role="3cqZAo" node="24Vro6cQSyV" resolve="predicateSymbol" />
                  </node>
                </node>
                <node concept="Xl_RD" id="24Vro6cR6X7" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7FtwPOZHcYu" role="jymVt" />
    <node concept="3clFb_" id="7feMCq_cJcc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reportFailure" />
      <node concept="37vLTG" id="7feMCq_cJcd" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7feMCq_cJce" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7feMCq_cJcf" role="3clF45" />
      <node concept="3Tm1VV" id="7feMCq_cJcg" role="1B3o_S" />
      <node concept="3clFbS" id="7feMCq_cJcj" role="3clF47">
        <node concept="3clFbF" id="7feMCq_cKE9" role="3cqZAp">
          <node concept="1rXfSq" id="7feMCq_cKEa" role="3clFbG">
            <ref role="37wK5l" node="7nkyKX7h0Lx" resolve="displayWarning" />
            <node concept="Rm8GO" id="7feMCq_cLjW" role="37wK5m">
              <ref role="Rm8GQ" node="7feMCq_cKM_" resolve="FAILURE" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="3cpWs3" id="7feMCq_cKEc" role="37wK5m">
              <node concept="Xl_RD" id="7feMCq_cKEd" role="3uHU7B">
                <property role="Xl_RC" value="[!!!] /failure/ " />
              </node>
              <node concept="37vLTw" id="7feMCq_cMtb" role="3uHU7w">
                <ref role="3cqZAo" node="7feMCq_cJcd" resolve="message" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7feMCq_cJWb" role="jymVt" />
    <node concept="3clFb_" id="7FtwPOZHe8P" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="result" />
      <node concept="37vLTG" id="7FtwPOZHe8Q" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="5mr7UHcce83" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="7FtwPOZHe8V" role="3clF45" />
      <node concept="3Tm1VV" id="7FtwPOZHe8W" role="1B3o_S" />
      <node concept="3clFbS" id="7FtwPOZHe8X" role="3clF47">
        <node concept="3clFbF" id="7FtwPOZHe8Y" role="3cqZAp">
          <node concept="1rXfSq" id="7FtwPOZHe8Z" role="3clFbG">
            <ref role="37wK5l" node="4i4XGQZmbIk" resolve="displayInfo" />
            <node concept="Rm8GO" id="7FtwPOZHFjg" role="37wK5m">
              <ref role="Rm8GQ" node="7FtwPOZH$aW" resolve="RESULT" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="3cpWs3" id="7FtwPOZHe95" role="37wK5m">
              <node concept="Xl_RD" id="7FtwPOZHe96" role="3uHU7B">
                <property role="Xl_RC" value="[***] /result/ " />
              </node>
              <node concept="2OqwBi" id="7FtwPOZHe97" role="3uHU7w">
                <node concept="37vLTw" id="7FtwPOZHe98" role="2Oq$k0">
                  <ref role="3cqZAo" node="7FtwPOZHe8Q" resolve="constraint" />
                </node>
                <node concept="liA8E" id="7FtwPOZH_7f" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7gYtX" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gYtJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="garbage" />
      <node concept="37vLTG" id="7nkyKX7gYtK" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="5mr7UHccezE" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gYtM" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gYtN" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gYtO" role="3clF47">
        <node concept="3clFbF" id="7nkyKX7gYtP" role="3cqZAp">
          <node concept="1rXfSq" id="7nkyKX7gYtQ" role="3clFbG">
            <ref role="37wK5l" node="7nkyKX7h0Lx" resolve="displayWarning" />
            <node concept="Rm8GO" id="7nkyKX7h83X" role="37wK5m">
              <ref role="Rm8GQ" node="7nkyKX7gTui" resolve="GARBAGE" />
              <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
            </node>
            <node concept="3cpWs3" id="7nkyKX7gYtS" role="37wK5m">
              <node concept="Xl_RD" id="7nkyKX7gYtT" role="3uHU7B">
                <property role="Xl_RC" value="[???] /garbage/ " />
              </node>
              <node concept="2OqwBi" id="7nkyKX7gYtU" role="3uHU7w">
                <node concept="37vLTw" id="7nkyKX7gYtV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7nkyKX7gYtK" resolve="constraint" />
                </node>
                <node concept="liA8E" id="7nkyKX7gYtW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7dgRGU4oRFL" role="jymVt" />
    <node concept="3clFb_" id="4i4XGQZmbIk" role="jymVt">
      <property role="TrG5h" value="displayInfo" />
      <node concept="3cqZAl" id="4i4XGQZmbIn" role="3clF45" />
      <node concept="3Tm6S6" id="4i4XGQZmbT2" role="1B3o_S" />
      <node concept="3clFbS" id="4i4XGQZmbIp" role="3clF47">
        <node concept="3clFbF" id="7dgRGU4p1eI" role="3cqZAp">
          <node concept="1rXfSq" id="7dgRGU4p1eH" role="3clFbG">
            <ref role="37wK5l" node="7dgRGU4oSTZ" resolve="displayMessage" />
            <node concept="37vLTw" id="7dgRGU4p1xx" role="37wK5m">
              <ref role="3cqZAo" node="61vfVfp5G_l" resolve="evt" />
            </node>
            <node concept="Rm8GO" id="7dgRGU4p1K8" role="37wK5m">
              <ref role="Rm8GQ" to="et5u:~MessageKind.INFORMATION" resolve="INFORMATION" />
              <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
            </node>
            <node concept="37vLTw" id="7dgRGU4p2c9" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZmczu" resolve="message" />
            </node>
            <node concept="37vLTw" id="7dgRGU4p2v8" role="37wK5m">
              <ref role="3cqZAo" node="4i4XGQZmdAP" resolve="cts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="61vfVfp5G_l" role="3clF46">
        <property role="TrG5h" value="evt" />
        <node concept="3uibUv" id="61vfVfp5La7" role="1tU5fm">
          <ref role="3uigEE" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
      <node concept="37vLTG" id="4i4XGQZmczu" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="4i4XGQZmczt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4i4XGQZmdAP" role="3clF46">
        <property role="TrG5h" value="cts" />
        <node concept="8X2XB" id="4i4XGQZmjoV" role="1tU5fm">
          <node concept="3uibUv" id="4i4XGQZmj6m" role="8Xvag">
            <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7h2YI" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7h0Lx" role="jymVt">
      <property role="TrG5h" value="displayWarning" />
      <node concept="3cqZAl" id="7nkyKX7h0Ly" role="3clF45" />
      <node concept="3Tm6S6" id="7nkyKX7h0Lz" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7h0L$" role="3clF47">
        <node concept="3clFbF" id="7nkyKX7h0L_" role="3cqZAp">
          <node concept="1rXfSq" id="7nkyKX7h0LA" role="3clFbG">
            <ref role="37wK5l" node="7dgRGU4oSTZ" resolve="displayMessage" />
            <node concept="37vLTw" id="7nkyKX7h0LB" role="37wK5m">
              <ref role="3cqZAo" node="7nkyKX7h0LF" resolve="evt" />
            </node>
            <node concept="Rm8GO" id="7nkyKX7h6Sy" role="37wK5m">
              <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
              <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
            </node>
            <node concept="37vLTw" id="7nkyKX7h0LD" role="37wK5m">
              <ref role="3cqZAo" node="7nkyKX7h0LH" resolve="message" />
            </node>
            <node concept="37vLTw" id="7nkyKX7h0LE" role="37wK5m">
              <ref role="3cqZAo" node="7nkyKX7h0LJ" resolve="cts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nkyKX7h0LF" role="3clF46">
        <property role="TrG5h" value="evt" />
        <node concept="3uibUv" id="7nkyKX7h0LG" role="1tU5fm">
          <ref role="3uigEE" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
      <node concept="37vLTG" id="7nkyKX7h0LH" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7nkyKX7h0LI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nkyKX7h0LJ" role="3clF46">
        <property role="TrG5h" value="cts" />
        <node concept="8X2XB" id="7nkyKX7h0LK" role="1tU5fm">
          <node concept="3uibUv" id="7nkyKX7h0LL" role="8Xvag">
            <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmb7o" role="jymVt" />
    <node concept="3clFb_" id="7dgRGU4oSTZ" role="jymVt">
      <property role="TrG5h" value="displayMessage" />
      <node concept="37vLTG" id="7dgRGU4oWrI" role="3clF46">
        <property role="TrG5h" value="evt" />
        <node concept="3uibUv" id="7dgRGU4oWrJ" role="1tU5fm">
          <ref role="3uigEE" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
      <node concept="37vLTG" id="7dgRGU4oXm6" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="7dgRGU4oYDF" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~MessageKind" resolve="MessageKind" />
        </node>
      </node>
      <node concept="37vLTG" id="7dgRGU4oWrK" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7dgRGU4oWrL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7dgRGU4oWrM" role="3clF46">
        <property role="TrG5h" value="cts" />
        <node concept="8X2XB" id="7dgRGU4oWrN" role="1tU5fm">
          <node concept="3uibUv" id="7dgRGU4oWrO" role="8Xvag">
            <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7dgRGU4oSU1" role="3clF45" />
      <node concept="3Tm6S6" id="7dgRGU4p2yF" role="1B3o_S" />
      <node concept="3clFbS" id="7dgRGU4oSU3" role="3clF47">
        <node concept="3clFbJ" id="61vfVfp5I5n" role="3cqZAp">
          <node concept="3clFbS" id="61vfVfp5I5p" role="3clFbx">
            <node concept="3cpWs6" id="61vfVfp5K8T" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="61vfVfp5JWH" role="3clFbw">
            <node concept="2OqwBi" id="61vfVfp5JWJ" role="3fr31v">
              <node concept="37vLTw" id="61vfVfp5JWK" role="2Oq$k0">
                <ref role="3cqZAo" node="61vfVfp5_IG" resolve="eventsToDisplay" />
              </node>
              <node concept="liA8E" id="61vfVfp5JWL" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                <node concept="37vLTw" id="61vfVfp5JWM" role="37wK5m">
                  <ref role="3cqZAo" node="7dgRGU4oWrI" resolve="evt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="61vfVfp5K8Y" role="3cqZAp" />
        <node concept="3cpWs8" id="4i4XGQZmDsD" role="3cqZAp">
          <node concept="3cpWsn" id="4i4XGQZmDsE" role="3cpWs9">
            <property role="TrG5h" value="dbg" />
            <node concept="17QB3L" id="4i4XGQZmDsn" role="1tU5fm" />
            <node concept="2OqwBi" id="4i4XGQZmDsF" role="33vP2m">
              <node concept="2OqwBi" id="4i4XGQZmDsG" role="2Oq$k0">
                <node concept="2OqwBi" id="4i4XGQZmDsH" role="2Oq$k0">
                  <node concept="37vLTw" id="4i4XGQZmDsI" role="2Oq$k0">
                    <ref role="3cqZAo" node="7dgRGU4oWrM" resolve="cts" />
                  </node>
                  <node concept="39bAoz" id="4i4XGQZmDsJ" role="2OqNvi" />
                </node>
                <node concept="3$u5V9" id="4i4XGQZmDsK" role="2OqNvi">
                  <node concept="1bVj0M" id="4i4XGQZmDsL" role="23t8la">
                    <node concept="3clFbS" id="4i4XGQZmDsM" role="1bW5cS">
                      <node concept="3clFbF" id="4i4XGQZmDsN" role="3cqZAp">
                        <node concept="2OqwBi" id="4i4XGQZmDsO" role="3clFbG">
                          <node concept="37vLTw" id="4i4XGQZmDsP" role="2Oq$k0">
                            <ref role="3cqZAo" node="4i4XGQZmDsR" resolve="c" />
                          </node>
                          <node concept="liA8E" id="4i4XGQZmDsQ" role="2OqNvi">
                            <ref role="37wK5l" to="eifs:~Constraint.toDebugString():java.lang.String" resolve="toDebugString" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4i4XGQZmDsR" role="1bW2Oz">
                      <property role="TrG5h" value="c" />
                      <node concept="2jxLKc" id="4i4XGQZmDsS" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uJxvA" id="4i4XGQZmDsT" role="2OqNvi">
                <node concept="Xl_RD" id="4i4XGQZmDsU" role="3uJOhx">
                  <property role="Xl_RC" value=", " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i4XGQZmtTa" role="3cqZAp">
          <node concept="3cpWsn" id="4i4XGQZmtTd" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="4i4XGQZmtT9" role="1tU5fm" />
            <node concept="3cpWs3" id="61vfVfp2U_L" role="33vP2m">
              <node concept="3cpWs3" id="61vfVfp2UK2" role="3uHU7B">
                <node concept="37vLTw" id="61vfVfp2UMr" role="3uHU7B">
                  <ref role="3cqZAo" node="61vfVfp2SU5" resolve="lastRuleTriggered" />
                </node>
                <node concept="Xl_RD" id="61vfVfp2UBI" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
              <node concept="37vLTw" id="4i4XGQZmDzB" role="3uHU7w">
                <ref role="3cqZAo" node="7dgRGU4oWrK" resolve="message" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="24Vro6cSXNy" role="3cqZAp">
          <node concept="3clFbS" id="24Vro6cSXN$" role="3clFbx">
            <node concept="3clFbF" id="24Vro6cT0ss" role="3cqZAp">
              <node concept="37vLTI" id="24Vro6cT0y0" role="3clFbG">
                <node concept="3cpWs3" id="24Vro6cT2an" role="37vLTx">
                  <node concept="Xl_RD" id="24Vro6cT2n5" role="3uHU7w">
                    <property role="Xl_RC" value=")" />
                  </node>
                  <node concept="3cpWs3" id="24Vro6cT1Cx" role="3uHU7B">
                    <node concept="3cpWs3" id="24Vro6cT16E" role="3uHU7B">
                      <node concept="37vLTw" id="24Vro6cT0IV" role="3uHU7B">
                        <ref role="3cqZAo" node="4i4XGQZmtTd" resolve="str" />
                      </node>
                      <node concept="Xl_RD" id="24Vro6cT1lZ" role="3uHU7w">
                        <property role="Xl_RC" value=" (" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="24Vro6cT1Po" role="3uHU7w">
                      <ref role="3cqZAo" node="4i4XGQZmDsE" resolve="dbg" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="24Vro6cT0sq" role="37vLTJ">
                  <ref role="3cqZAo" node="4i4XGQZmtTd" resolve="str" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="24Vro6cSZBo" role="3clFbw">
            <node concept="3cmrfG" id="24Vro6cSZO6" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="24Vro6cSYBn" role="3uHU7B">
              <node concept="37vLTw" id="24Vro6cSYfr" role="2Oq$k0">
                <ref role="3cqZAo" node="4i4XGQZmDsE" resolve="dbg" />
              </node>
              <node concept="liA8E" id="24Vro6cSZiO" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i4XGQZnKvA" role="3cqZAp">
          <node concept="2OqwBi" id="4i4XGQZnK$E" role="3clFbG">
            <node concept="37vLTw" id="4i4XGQZnKv$" role="2Oq$k0">
              <ref role="3cqZAo" node="4i4XGQZmMzg" resolve="messagesViewTool" />
            </node>
            <node concept="liA8E" id="4i4XGQZnLlb" role="2OqNvi">
              <ref role="37wK5l" to="57ty:~MessagesViewTool.add(jetbrains.mps.messages.IMessage,java.lang.String):void" resolve="add" />
              <node concept="2ShNRf" id="4i4XGQZnLmt" role="37wK5m">
                <node concept="1pGfFk" id="4i4XGQZnNBp" role="2ShVmc">
                  <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String)" resolve="Message" />
                  <node concept="37vLTw" id="7dgRGU4p0Eq" role="37wK5m">
                    <ref role="3cqZAo" node="7dgRGU4oXm6" resolve="kind" />
                  </node>
                  <node concept="37vLTw" id="4i4XGQZnNGO" role="37wK5m">
                    <ref role="3cqZAo" node="4i4XGQZmtTd" resolve="str" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2$F5QpuoU_f" role="37wK5m">
                <ref role="3cqZAo" node="2$F5QpuoU$X" resolve="TAB_NAME" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i4XGQZmt1o" role="jymVt" />
    <node concept="Qs71p" id="61vfVfp5tJN" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Event" />
      <node concept="QsSxf" id="61vfVfp5uey" role="Qtgdg">
        <property role="TrG5h" value="ACTIVATED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="61vfVfp5uls" role="Qtgdg">
        <property role="TrG5h" value="REACTIVATED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="61vfVfp5usz" role="Qtgdg">
        <property role="TrG5h" value="STORED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="61vfVfp5uz_" role="Qtgdg">
        <property role="TrG5h" value="SUSPENDED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="61vfVfp5uEI" role="Qtgdg">
        <property role="TrG5h" value="REMOVED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="61vfVfp5uLV" role="Qtgdg">
        <property role="TrG5h" value="TERMINATED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="61vfVfp5uMw" role="Qtgdg">
        <property role="TrG5h" value="TRIGGERED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="61vfVfp5uU4" role="Qtgdg">
        <property role="TrG5h" value="FIRED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="24Vro6cQUo9" role="Qtgdg">
        <property role="TrG5h" value="ASK_SUCCESS" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="24Vro6cQUIt" role="Qtgdg">
        <property role="TrG5h" value="ASK_FAILURE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7FtwPOZH$aW" role="Qtgdg">
        <property role="TrG5h" value="RESULT" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7nkyKX7gTui" role="Qtgdg">
        <property role="TrG5h" value="GARBAGE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7feMCq_cKM_" role="Qtgdg">
        <property role="TrG5h" value="FAILURE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="61vfVfp5tJO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="61vfVfp5tdr" role="jymVt" />
    <node concept="312cEg" id="4i4XGQZmMzg" role="jymVt">
      <property role="TrG5h" value="messagesViewTool" />
      <node concept="3Tm6S6" id="4i4XGQZmMzh" role="1B3o_S" />
      <node concept="3uibUv" id="4i4XGQZmMzj" role="1tU5fm">
        <ref role="3uigEE" to="57ty:~MessagesViewTool" resolve="MessagesViewTool" />
      </node>
    </node>
    <node concept="2tJIrI" id="61vfVfp2TYA" role="jymVt" />
    <node concept="312cEg" id="61vfVfp2SU5" role="jymVt">
      <property role="TrG5h" value="lastRuleTriggered" />
      <node concept="3Tm6S6" id="61vfVfp2SU6" role="1B3o_S" />
      <node concept="10Oyi0" id="61vfVfp2TgW" role="1tU5fm" />
      <node concept="3cmrfG" id="61vfVfp2TCu" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="2tJIrI" id="61vfVfp2TFP" role="jymVt" />
    <node concept="312cEg" id="61vfVfp5_IG" role="jymVt">
      <property role="TrG5h" value="eventsToDisplay" />
      <node concept="3Tm6S6" id="61vfVfp5_IH" role="1B3o_S" />
      <node concept="3uibUv" id="61vfVfp5AOt" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="61vfVfp5GdC" role="11_B2D">
          <ref role="3uigEE" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
      <node concept="2YIFZM" id="61vfVfp5DWT" role="33vP2m">
        <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
        <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
        <node concept="uiWXb" id="61vfVfp5Fhw" role="37wK5m">
          <ref role="uiZuM" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="3NRKQ2BK6Oq">
    <property role="TrG5h" value="TypingKeymap" />
    <node concept="1bYApB" id="4pWvZ2nnzkA" role="Zd508">
      <ref role="1bYAoF" node="3Qp4N06byoz" resolve="MarkTypes" />
      <node concept="3clFbS" id="4pWvZ2nnzkC" role="2VODD2">
        <node concept="1ysbro" id="6$w_9FKh02J" role="3cqZAp">
          <node concept="3cpWs3" id="4pWvZ2nn$pT" role="1ysQSp">
            <node concept="Xl_RD" id="4pWvZ2nn$wh" role="3uHU7w">
              <property role="Xl_RC" value="F7" />
            </node>
            <node concept="3cpWs3" id="6$w_9FKh02K" role="3uHU7B">
              <node concept="Xl_RD" id="6$w_9FKh02M" role="3uHU7B">
                <property role="Xl_RC" value="ctrl " />
              </node>
              <node concept="1eOMI4" id="4pWvZ2nn$uI" role="3uHU7w">
                <node concept="3K4zz7" id="4pWvZ2nn$cD" role="1eOMHV">
                  <node concept="Xl_RD" id="4pWvZ2nn$e8" role="3K4E3e">
                    <property role="Xl_RC" value="alt " />
                  </node>
                  <node concept="Xl_RD" id="4pWvZ2nn$hQ" role="3K4GZi" />
                  <node concept="3DOySe" id="4pWvZ2nn$aa" role="3K4Cdx">
                    <ref role="3cqZAo" node="4pWvZ2nmH_C" resolve="onTheFly" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1pPth$l_TFV">
    <property role="TrG5h" value="TypecheckingHelper" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1pPth$l_Yy_" role="jymVt" />
    <node concept="3clFb_" id="1pPth$lBvOo" role="jymVt">
      <property role="TrG5h" value="collectRules" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1pPth$lDxMI" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="2I9FWS" id="1pPth$lDzfj" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1pPth$lBsf5" role="3clF47">
        <node concept="3clFbF" id="1pPth$lBtKi" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$lBtKg" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$lD$d$" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$lDzTR" resolve="TypecheckingHelper.CollectRules" />
              <node concept="37vLTw" id="1pPth$lD_5s" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$lDxMI" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1pPth$lBtrN" role="3clF45">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
      <node concept="3Tm1VV" id="1pPth$lBsf4" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1pPth$lBwLp" role="jymVt">
      <property role="TrG5h" value="produceHandler" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1pPth$lBwLq" role="3clF47">
        <node concept="3clFbF" id="1pPth$lBwLr" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$lBwLs" role="3clFbG">
            <node concept="HV5vD" id="1pPth$lBC63" role="2ShVmc">
              <ref role="HV5vE" node="1pPth$lB0Q2" resolve="TypecheckingHelper.ProduceHandler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1pPth$lBwLu" role="3clF45">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
      <node concept="3Tm1VV" id="1pPth$lBwLv" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="4pWvZ2nlC2q" role="jymVt">
      <property role="TrG5h" value="solveOnTheFly" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4pWvZ2nlC2r" role="3clF47">
        <node concept="3clFbF" id="4pWvZ2nlC2s" role="3cqZAp">
          <node concept="2ShNRf" id="4pWvZ2nlC2t" role="3clFbG">
            <node concept="HV5vD" id="4pWvZ2nm0jK" role="2ShVmc">
              <ref role="HV5vE" node="4pWvZ2nh4h1" resolve="TypecheckingHelper.SolveOnTheFly" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4pWvZ2nlC2v" role="3clF45">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
      <node concept="3Tm1VV" id="4pWvZ2nlC2w" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1pPth$lD9_s" role="jymVt">
      <property role="TrG5h" value="makeHandler" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1pPth$lD9_t" role="3clF47">
        <node concept="3clFbF" id="1pPth$lD9_u" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$lD9_v" role="3clFbG">
            <node concept="HV5vD" id="1pPth$lDhmk" role="2ShVmc">
              <ref role="HV5vE" node="1pPth$lBDcr" resolve="TypecheckingHelper.MakeHandler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1pPth$lD9_x" role="3clF45">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
      <node concept="3Tm1VV" id="1pPth$lD9_y" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1pPth$lDhou" role="jymVt">
      <property role="TrG5h" value="runTypechecking" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1pPth$lHmlH" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="2I9FWS" id="1pPth$lHmlI" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1pPth$lDhov" role="3clF47">
        <node concept="3clFbF" id="1pPth$lDhow" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$lDhox" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$lHqmS" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$lHpLU" resolve="TypecheckingHelper.RunTypechecking" />
              <node concept="37vLTw" id="1pPth$lHwyn" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$lHmlH" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1pPth$lDhoz" role="3clF45">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
      <node concept="3Tm1VV" id="1pPth$lDho$" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1pPth$lDplP" role="jymVt">
      <property role="TrG5h" value="highlightTypesAndErrors" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1pPth$lHcQy" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="1pPth$lHfXX" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="1pPth$lDplQ" role="3clF47">
        <node concept="3clFbF" id="1pPth$lDplR" role="3cqZAp">
          <node concept="2ShNRf" id="1pPth$lDplS" role="3clFbG">
            <node concept="1pGfFk" id="1pPth$lGTCg" role="2ShVmc">
              <ref role="37wK5l" node="1pPth$lGTrm" resolve="TypecheckingHelper.Highlighting" />
              <node concept="37vLTw" id="1pPth$lHiia" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$lHcQy" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1pPth$lDplU" role="3clF45">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
      <node concept="3Tm1VV" id="1pPth$lDplV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1pPth$lJVeH" role="jymVt" />
    <node concept="3clFbW" id="1pPth$lK1ZL" role="jymVt">
      <node concept="3cqZAl" id="1pPth$lK1ZN" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$lKoEj" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$lK1ZP" role="3clF47">
        <node concept="3clFbF" id="1pPth$lK4UE" role="3cqZAp">
          <node concept="37vLTI" id="1pPth$lK5cu" role="3clFbG">
            <node concept="37vLTw" id="1pPth$lK5sZ" role="37vLTx">
              <ref role="3cqZAo" node="1pPth$lK4DR" resolve="mpsProject" />
            </node>
            <node concept="2OqwBi" id="1pPth$lK4V4" role="37vLTJ">
              <node concept="Xjq3P" id="1pPth$lK4UD" role="2Oq$k0" />
              <node concept="2OwXpG" id="1pPth$lK4Zw" role="2OqNvi">
                <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1pPth$lK4DR" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="1pPth$lK4DQ" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lNpyq" role="jymVt" />
    <node concept="3clFb_" id="1pPth$lNtBJ" role="jymVt">
      <property role="TrG5h" value="withSteps" />
      <node concept="37vLTG" id="1pPth$lKvJ8" role="3clF46">
        <property role="TrG5h" value="steps" />
        <node concept="8X2XB" id="1pPth$lKwmf" role="1tU5fm">
          <node concept="3uibUv" id="1pPth$lKw20" role="8Xvag">
            <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1pPth$lNtBL" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$lNtBM" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$lNtBN" role="3clF47">
        <node concept="3cpWs8" id="1pPth$lKz88" role="3cqZAp">
          <node concept="3cpWsn" id="1pPth$lKz89" role="3cpWs9">
            <property role="TrG5h" value="prev" />
            <node concept="3uibUv" id="1pPth$lKz8a" role="1tU5fm">
              <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
            </node>
            <node concept="10Nm6u" id="1pPth$lKze7" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="1pPth$lKxCb" role="3cqZAp">
          <node concept="3clFbS" id="1pPth$lKxCd" role="2LFqv$">
            <node concept="3clFbJ" id="1pPth$lKztk" role="3cqZAp">
              <node concept="3clFbS" id="1pPth$lKztm" role="3clFbx">
                <node concept="3clFbF" id="1pPth$lK$0d" role="3cqZAp">
                  <node concept="37vLTI" id="1pPth$lK_Pk" role="3clFbG">
                    <node concept="37vLTw" id="1pPth$lK_WX" role="37vLTx">
                      <ref role="3cqZAo" node="1pPth$lKxCe" resolve="step" />
                    </node>
                    <node concept="2OqwBi" id="1pPth$lK$Zx" role="37vLTJ">
                      <node concept="37vLTw" id="1pPth$lK$0b" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lKz89" resolve="prev" />
                      </node>
                      <node concept="2OwXpG" id="1pPth$lK_vG" role="2OqNvi">
                        <ref role="2Oxat5" node="1pPth$lA_6T" resolve="nextStep" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1pPth$lKzFG" role="3clFbw">
                <node concept="10Nm6u" id="1pPth$lKzKT" role="3uHU7w" />
                <node concept="37vLTw" id="1pPth$lKzyv" role="3uHU7B">
                  <ref role="3cqZAo" node="1pPth$lKz89" resolve="prev" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1pPth$lKFVx" role="3cqZAp">
              <node concept="3clFbS" id="1pPth$lKFVz" role="3clFbx">
                <node concept="3clFbF" id="1pPth$lKGPw" role="3cqZAp">
                  <node concept="37vLTI" id="1pPth$lKH1H" role="3clFbG">
                    <node concept="37vLTw" id="1pPth$lKH7B" role="37vLTx">
                      <ref role="3cqZAo" node="1pPth$lKxCe" resolve="step" />
                    </node>
                    <node concept="37vLTw" id="1pPth$lKGPu" role="37vLTJ">
                      <ref role="3cqZAo" node="1pPth$lKAeY" resolve="firstStep" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1pPth$lKGgx" role="3clFbw">
                <node concept="10Nm6u" id="1pPth$lKGms" role="3uHU7w" />
                <node concept="37vLTw" id="1pPth$lKG6E" role="3uHU7B">
                  <ref role="3cqZAo" node="1pPth$lKAeY" resolve="firstStep" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1pPth$lKHpJ" role="3cqZAp">
              <node concept="37vLTI" id="1pPth$lKHzW" role="3clFbG">
                <node concept="37vLTw" id="1pPth$lKHD8" role="37vLTx">
                  <ref role="3cqZAo" node="1pPth$lKxCe" resolve="step" />
                </node>
                <node concept="37vLTw" id="1pPth$lKHpH" role="37vLTJ">
                  <ref role="3cqZAo" node="1pPth$lKz89" resolve="prev" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1pPth$lKxCe" role="1Duv9x">
            <property role="TrG5h" value="step" />
            <node concept="3uibUv" id="1pPth$lKxZV" role="1tU5fm">
              <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
            </node>
          </node>
          <node concept="37vLTw" id="1pPth$lKys0" role="1DdaDG">
            <ref role="3cqZAo" node="1pPth$lKvJ8" resolve="steps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lJZlM" role="jymVt" />
    <node concept="3clFb_" id="1pPth$lNVW2" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="3cqZAl" id="1pPth$lNVW4" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$lNVW5" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$lNVW6" role="3clF47">
        <node concept="3clFbF" id="1pPth$lO5eC" role="3cqZAp">
          <node concept="2OqwBi" id="1pPth$lO5kn" role="3clFbG">
            <node concept="37vLTw" id="1pPth$lO5eB" role="2Oq$k0">
              <ref role="3cqZAo" node="1pPth$lKAeY" resolve="firstStep" />
            </node>
            <node concept="liA8E" id="1pPth$lO5sb" role="2OqNvi">
              <ref role="37wK5l" node="1pPth$lLWAw" resolve="execute" />
              <node concept="2YIFZM" id="1pPth$lO6eJ" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
              </node>
              <node concept="10Nm6u" id="1pPth$lO5Nv" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lNTte" role="jymVt" />
    <node concept="3clFb_" id="1pPth$lIk6$" role="jymVt">
      <property role="TrG5h" value="finished" />
      <property role="1EzhhJ" value="true" />
      <property role="IEkAT" value="false" />
      <node concept="37vLTG" id="1pPth$lIwm_" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="1pPth$lIMF3" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1pPth$lIk6A" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$lIk6B" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$lIk6C" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1pPth$lIE2N" role="jymVt">
      <property role="TrG5h" value="failed" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="1pPth$lIKys" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="1pPth$lIMxd" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1pPth$lIE2P" role="3clF45" />
      <node concept="3Tm1VV" id="1pPth$lIE2Q" role="1B3o_S" />
      <node concept="3clFbS" id="1pPth$lIE2R" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1pPth$lIPgu" role="jymVt" />
    <node concept="312cEg" id="1pPth$lA2Na" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="1pPth$lA2Nb" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lA3PO" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="1pPth$lAEQs" role="jymVt">
      <property role="TrG5h" value="feedback" />
      <node concept="3Tmbuc" id="1pPth$lJoDF" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lAFQp" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
      </node>
      <node concept="2ShNRf" id="1pPth$lIiKx" role="33vP2m">
        <node concept="1pGfFk" id="1pPth$lIiGA" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1pPth$lKAeY" role="jymVt">
      <property role="TrG5h" value="firstStep" />
      <node concept="3Tm6S6" id="1pPth$lKAeZ" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lKD3r" role="1tU5fm">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lKDgn" role="jymVt" />
    <node concept="3clFb_" id="1pPth$lA589" role="jymVt">
      <property role="TrG5h" value="rulesModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="H_c77" id="1pPth$lA58b" role="3clF45" />
      <node concept="3clFbS" id="1pPth$lA58c" role="3clF47">
        <node concept="3clFbF" id="1pPth$lA58d" role="3cqZAp">
          <node concept="BaHAS" id="1pPth$lA58e" role="3clFbG">
            <property role="BaBD8" value="sand.jchr" />
            <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.chr" />
            <property role="BaGAP" value="" />
            <node concept="2OqwBi" id="1pPth$lA58f" role="up2gk">
              <node concept="2OqwBi" id="1pPth$lA58g" role="2Oq$k0">
                <node concept="Xjq3P" id="1pPth$lA58a" role="2Oq$k0" />
                <node concept="2OwXpG" id="1pPth$lA9tZ" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1pPth$lA58i" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1pPth$lIbCQ" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1pPth$lA58k" role="jymVt">
      <property role="TrG5h" value="templatesModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="H_c77" id="1pPth$lA58m" role="3clF45" />
      <node concept="3clFbS" id="1pPth$lA58n" role="3clF47">
        <node concept="3clFbF" id="1pPth$lA58o" role="3cqZAp">
          <node concept="BaHAS" id="1pPth$lA58p" role="3clFbG">
            <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.template" />
            <property role="BaGAP" value="" />
            <node concept="2OqwBi" id="1pPth$lA58q" role="up2gk">
              <node concept="2OqwBi" id="1pPth$lA58r" role="2Oq$k0">
                <node concept="Xjq3P" id="1pPth$lA58l" role="2Oq$k0" />
                <node concept="2OwXpG" id="1pPth$lA7ji" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1pPth$lA58t" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1pPth$lIdND" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1pPth$l_Zek" role="jymVt" />
    <node concept="312cEu" id="1pPth$lAzAx" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Step" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFb_" id="1pPth$lABj7" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="1pPth$lC3nn" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="16syzq" id="1pPth$lDN0$" role="1tU5fm">
            <ref role="16sUi3" node="1pPth$lD_uI" resolve="Prev" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lLK5X" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lLMis" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lABjb" role="3clF47" />
      </node>
      <node concept="3clFb_" id="1pPth$lL0jk" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="true" />
        <node concept="17QB3L" id="1pPth$lL2Ts" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lLOmJ" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lL0jo" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="1pPth$lLYG6" role="jymVt" />
      <node concept="3clFb_" id="1pPth$lLWAw" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="DiZV1" value="true" />
        <node concept="37vLTG" id="1pPth$lMaiK" role="3clF46">
          <property role="TrG5h" value="time" />
          <node concept="3cpWsb" id="1pPth$lMczv" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1pPth$lMiRh" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="16syzq" id="1pPth$lMl4k" role="1tU5fm">
            <ref role="16sUi3" node="1pPth$lD_uI" resolve="Prev" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lLWAy" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lLWAz" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lLWA$" role="3clF47">
          <node concept="3clFbF" id="1pPth$lMlMn" role="3cqZAp">
            <node concept="37vLTI" id="1pPth$lMmxW" role="3clFbG">
              <node concept="37vLTw" id="1pPth$lMmGp" role="37vLTx">
                <ref role="3cqZAo" node="1pPth$lMaiK" resolve="time" />
              </node>
              <node concept="2OqwBi" id="1pPth$lMlWf" role="37vLTJ">
                <node concept="Xjq3P" id="1pPth$lMlMm" role="2Oq$k0" />
                <node concept="2OwXpG" id="1pPth$lMm8d" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lLkEu" resolve="time" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1pPth$lMnLi" role="3cqZAp">
            <node concept="1rXfSq" id="1pPth$lMnLg" role="3clFbG">
              <ref role="37wK5l" node="1pPth$lABj7" resolve="execute" />
              <node concept="37vLTw" id="1pPth$lMo4$" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$lMiRh" resolve="prev" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1pPth$lMqse" role="jymVt" />
      <node concept="3clFb_" id="7dgRGU4MD7E" role="jymVt">
        <property role="TrG5h" value="done" />
        <node concept="3cqZAl" id="7dgRGU4MD7F" role="3clF45" />
        <node concept="3Tmbuc" id="7dgRGU4MD7G" role="1B3o_S" />
        <node concept="3clFbS" id="7dgRGU4MD7H" role="3clF47">
          <node concept="3cpWs8" id="7dgRGU4MD7I" role="3cqZAp">
            <node concept="3cpWsn" id="7dgRGU4MD7J" role="3cpWs9">
              <property role="TrG5h" value="elapsed" />
              <node concept="10P55v" id="7dgRGU4MD7K" role="1tU5fm" />
              <node concept="FJ1c_" id="7dgRGU4MD7L" role="33vP2m">
                <node concept="3b6qkQ" id="7dgRGU4MD7M" role="3uHU7w">
                  <property role="$nhwW" value="1000." />
                </node>
                <node concept="1eOMI4" id="7dgRGU4MD7N" role="3uHU7B">
                  <node concept="3cpWsd" id="7dgRGU4MD7O" role="1eOMHV">
                    <node concept="37vLTw" id="7dgRGU4MD7P" role="3uHU7w">
                      <ref role="3cqZAo" node="1pPth$lLkEu" resolve="time" />
                    </node>
                    <node concept="2YIFZM" id="7dgRGU4MD7Q" role="3uHU7B">
                      <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                      <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7dgRGU4MD7R" role="3cqZAp">
            <node concept="2OqwBi" id="7dgRGU4MD7S" role="3clFbG">
              <node concept="37vLTw" id="7dgRGU4MD7T" role="2Oq$k0">
                <ref role="3cqZAo" node="1pPth$lAEQs" resolve="feedback" />
              </node>
              <node concept="liA8E" id="7dgRGU4MD7U" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2YIFZM" id="7dgRGU4MD7V" role="37wK5m">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3cpWs3" id="7dgRGU4MD7W" role="37wK5m">
                    <node concept="Xl_RD" id="7dgRGU4MD7X" role="3uHU7w">
                      <property role="Xl_RC" value=" -- %s (took %2.2f sec.)\n" />
                    </node>
                    <node concept="1eOMI4" id="7dgRGU4MD7Y" role="3uHU7B">
                      <node concept="3K4zz7" id="7dgRGU4MD7Z" role="1eOMHV">
                        <node concept="Xl_RD" id="7dgRGU4MD80" role="3K4GZi">
                          <property role="Xl_RC" value="ERROR" />
                        </node>
                        <node concept="37vLTw" id="7dgRGU4MD81" role="3K4Cdx">
                          <ref role="3cqZAo" node="7dgRGU4MD8p" resolve="success" />
                        </node>
                        <node concept="Xl_RD" id="7dgRGU4MD82" role="3K4E3e">
                          <property role="Xl_RC" value="OK" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="7dgRGU4MD83" role="37wK5m">
                    <ref role="37wK5l" node="1pPth$lL0jk" resolve="info" />
                  </node>
                  <node concept="37vLTw" id="7dgRGU4MD84" role="37wK5m">
                    <ref role="3cqZAo" node="7dgRGU4MD7J" resolve="elapsed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7dgRGU4MD85" role="3cqZAp">
            <node concept="3clFbS" id="7dgRGU4MD86" role="3clFbx">
              <node concept="3clFbF" id="7dgRGU4MD87" role="3cqZAp">
                <node concept="2OqwBi" id="7dgRGU4MD88" role="3clFbG">
                  <node concept="37vLTw" id="7dgRGU4MD89" role="2Oq$k0">
                    <ref role="3cqZAo" node="1pPth$lA_6T" resolve="nextStep" />
                  </node>
                  <node concept="liA8E" id="7dgRGU4MD8a" role="2OqNvi">
                    <ref role="37wK5l" node="1pPth$lLWAw" resolve="execute" />
                    <node concept="2YIFZM" id="7dgRGU4MD8b" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
                    </node>
                    <node concept="Xjq3P" id="7dgRGU4MD8c" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7dgRGU4MD8d" role="3clFbw">
              <node concept="37vLTw" id="7dgRGU4MD8e" role="3uHU7w">
                <ref role="3cqZAo" node="7dgRGU4MD8r" resolve="canContinue" />
              </node>
              <node concept="3y3z36" id="7dgRGU4MD8f" role="3uHU7B">
                <node concept="37vLTw" id="7dgRGU4MD8g" role="3uHU7B">
                  <ref role="3cqZAo" node="1pPth$lA_6T" resolve="nextStep" />
                </node>
                <node concept="10Nm6u" id="7dgRGU4MD8h" role="3uHU7w" />
              </node>
            </node>
            <node concept="9aQIb" id="7dgRGU4MD8i" role="9aQIa">
              <node concept="3clFbS" id="7dgRGU4MD8j" role="9aQI4">
                <node concept="3clFbF" id="7dgRGU4MD8k" role="3cqZAp">
                  <node concept="1rXfSq" id="7dgRGU4MD8l" role="3clFbG">
                    <ref role="37wK5l" node="1pPth$lIk6$" resolve="finished" />
                    <node concept="2OqwBi" id="7dgRGU4MD8m" role="37wK5m">
                      <node concept="37vLTw" id="7dgRGU4MD8n" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lAEQs" resolve="feedback" />
                      </node>
                      <node concept="liA8E" id="7dgRGU4MD8o" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7dgRGU4MD8p" role="3clF46">
          <property role="TrG5h" value="success" />
          <node concept="10P_77" id="7dgRGU4MD8q" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7dgRGU4MD8r" role="3clF46">
          <property role="TrG5h" value="canContinue" />
          <node concept="10P_77" id="7dgRGU4MD8s" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="7dgRGU4Nmfr" role="jymVt">
        <property role="TrG5h" value="done" />
        <node concept="3cqZAl" id="7dgRGU4Nmfs" role="3clF45" />
        <node concept="3Tmbuc" id="7dgRGU4Nmft" role="1B3o_S" />
        <node concept="3clFbS" id="7dgRGU4Nmfu" role="3clF47">
          <node concept="3clFbF" id="7dgRGU4NsLj" role="3cqZAp">
            <node concept="1rXfSq" id="7dgRGU4NsLi" role="3clFbG">
              <ref role="37wK5l" node="7dgRGU4MD7E" resolve="done" />
              <node concept="37vLTw" id="7dgRGU4Nt0V" role="37wK5m">
                <ref role="3cqZAo" node="7dgRGU4Nmga" resolve="success" />
              </node>
              <node concept="37vLTw" id="7dgRGU4NtlX" role="37wK5m">
                <ref role="3cqZAo" node="7dgRGU4Nmga" resolve="success" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7dgRGU4Nmga" role="3clF46">
          <property role="TrG5h" value="success" />
          <node concept="10P_77" id="7dgRGU4Nmgb" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lA_Tp" role="jymVt">
        <property role="TrG5h" value="next" />
        <node concept="3cqZAl" id="1pPth$lA_Tr" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lABqh" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lA_Tt" role="3clF47">
          <node concept="3clFbF" id="7dgRGU4MQ0C" role="3cqZAp">
            <node concept="1rXfSq" id="7dgRGU4MQ0B" role="3clFbG">
              <ref role="37wK5l" node="7dgRGU4Nmfr" resolve="done" />
              <node concept="3clFbT" id="7dgRGU4MQfp" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lJc6B" role="jymVt">
        <property role="TrG5h" value="fail" />
        <node concept="3cqZAl" id="1pPth$lJc6D" role="3clF45" />
        <node concept="3Tmbuc" id="7dgRGU4LTOa" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lJc6F" role="3clF47">
          <node concept="3clFbF" id="7dgRGU4MQN$" role="3cqZAp">
            <node concept="1rXfSq" id="7dgRGU4MQNz" role="3clFbG">
              <ref role="37wK5l" node="7dgRGU4Nmfr" resolve="done" />
              <node concept="3clFbT" id="7dgRGU4MR2l" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1pPth$lMy7O" role="jymVt" />
      <node concept="3Tm1VV" id="1pPth$lAzAy" role="1B3o_S" />
      <node concept="312cEg" id="1pPth$lA_6T" role="jymVt">
        <property role="TrG5h" value="nextStep" />
        <node concept="3Tmbuc" id="1pPth$lK_by" role="1B3o_S" />
        <node concept="3uibUv" id="1pPth$lDQDU" role="1tU5fm">
          <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
          <node concept="3uibUv" id="1pPth$lE49m" role="11_B2D">
            <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="1pPth$lLkEu" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="time" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="1pPth$lLigd" role="1B3o_S" />
        <node concept="3cpWsb" id="1pPth$lLkA$" role="1tU5fm" />
      </node>
      <node concept="16euLQ" id="1pPth$lD_uI" role="16eVyc">
        <property role="TrG5h" value="Prev" />
        <node concept="3uibUv" id="1pPth$lDDZf" role="3ztrMU">
          <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lI95o" role="jymVt" />
    <node concept="312cEu" id="1pPth$lAwc0" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="CollectRules" />
      <node concept="3clFbW" id="1pPth$lDzTR" role="jymVt">
        <node concept="3cqZAl" id="1pPth$lDzTT" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lDzTU" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lDzTV" role="3clF47">
          <node concept="3clFbF" id="1pPth$lD$Fx" role="3cqZAp">
            <node concept="37vLTI" id="1pPth$lD$Fz" role="3clFbG">
              <node concept="2OqwBi" id="1pPth$lD$FB" role="37vLTJ">
                <node concept="Xjq3P" id="1pPth$lD$FE" role="2Oq$k0" />
                <node concept="2OwXpG" id="1pPth$lD$FA" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lD$Ft" resolve="nodes" />
                </node>
              </node>
              <node concept="37vLTw" id="1pPth$lD$FF" role="37vLTx">
                <ref role="3cqZAo" node="1pPth$lD$C7" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1pPth$lD$C7" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="1pPth$lD$C6" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="1pPth$lMApL" role="jymVt" />
      <node concept="3clFb_" id="1pPth$lMB$v" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="1pPth$lMB$w" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lMB$x" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lMB$z" role="3clF47">
          <node concept="3clFbF" id="1pPth$lMDbR" role="3cqZAp">
            <node concept="Xl_RD" id="1pPth$lMDbQ" role="3clFbG">
              <property role="Xl_RC" value="applying templates" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lAD7c" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="1pPth$lE62p" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="3uibUv" id="1pPth$lE6Nv" role="1tU5fm">
            <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lAD7d" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lAD7e" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lAD7g" role="3clF47">
          <node concept="3cpWs8" id="1pPth$l_ZeK" role="3cqZAp">
            <node concept="3cpWsn" id="1pPth$l_ZeL" role="3cpWs9">
              <property role="TrG5h" value="errors" />
              <node concept="10Oyi0" id="1pPth$l_ZeM" role="1tU5fm" />
              <node concept="3cmrfG" id="1pPth$l_ZeN" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="1QHqEO" id="1pPth$l_ZeS" role="3cqZAp">
            <node concept="1QHqEC" id="1pPth$l_ZeT" role="1QHqEI">
              <node concept="3clFbS" id="1pPth$l_ZeU" role="1bW5cS">
                <node concept="SfApY" id="1pPth$l_ZeV" role="3cqZAp">
                  <node concept="3clFbS" id="1pPth$l_ZeW" role="SfCbr">
                    <node concept="1DcWWT" id="1pPth$lGirV" role="3cqZAp">
                      <node concept="3clFbS" id="1pPth$lGirX" role="2LFqv$">
                        <node concept="3cpWs8" id="1pPth$l_ZeX" role="3cqZAp">
                          <node concept="3cpWsn" id="1pPth$l_ZeY" role="3cpWs9">
                            <property role="TrG5h" value="containingRoot" />
                            <node concept="3Tqbb2" id="1pPth$l_ZeZ" role="1tU5fm" />
                            <node concept="2OqwBi" id="1pPth$l_Zf0" role="33vP2m">
                              <node concept="37vLTw" id="1pPth$lGklN" role="2Oq$k0">
                                <ref role="3cqZAo" node="1pPth$lGirZ" resolve="node" />
                              </node>
                              <node concept="liA8E" id="1pPth$l_Zf3" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1pPth$l_ZeO" role="3cqZAp">
                          <node concept="3cpWsn" id="1pPth$l_ZeP" role="3cpWs9">
                            <property role="TrG5h" value="rh" />
                            <node concept="3uibUv" id="1pPth$l_ZeQ" role="1tU5fm">
                              <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
                            </node>
                            <node concept="2YIFZM" id="1pPth$l_Zf6" role="33vP2m">
                              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                              <ref role="37wK5l" node="4boqC9dMlht" resolve="createRulesHandler" />
                              <node concept="2OqwBi" id="1pPth$l_Zf7" role="37wK5m">
                                <node concept="1PxgMI" id="1pPth$l_Zf8" role="2Oq$k0">
                                  <ref role="1PxNhF" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
                                  <node concept="37vLTw" id="1pPth$l_Zf9" role="1PxMeX">
                                    <ref role="3cqZAo" node="1pPth$l_ZeY" resolve="containingRoot" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="1pPth$l_Zfa" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1pPth$l_Zfc" role="3cqZAp">
                          <node concept="d57v9" id="1pPth$lGttZ" role="3clFbG">
                            <node concept="37vLTw" id="1pPth$lGtu7" role="37vLTJ">
                              <ref role="3cqZAo" node="1pPth$l_ZeL" resolve="errors" />
                            </node>
                            <node concept="2YIFZM" id="1pPth$lGtu1" role="37vLTx">
                              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                              <ref role="37wK5l" node="3Qp4N06byjp" resolve="collect" />
                              <node concept="2OqwBi" id="1pPth$lGtu2" role="37wK5m">
                                <node concept="Xjq3P" id="1pPth$lGtu3" role="2Oq$k0">
                                  <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                                </node>
                                <node concept="liA8E" id="1pPth$lGtu4" role="2OqNvi">
                                  <ref role="37wK5l" node="1pPth$lA58k" resolve="templatesModel" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="1pPth$lGtu5" role="37wK5m">
                                <ref role="3cqZAo" node="1pPth$l_ZeY" resolve="containingRoot" />
                              </node>
                              <node concept="37vLTw" id="1pPth$lGtu6" role="37wK5m">
                                <ref role="3cqZAo" node="1pPth$l_ZeP" resolve="rh" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1pPth$lGzsJ" role="3cqZAp">
                          <node concept="2OqwBi" id="1pPth$lG$rZ" role="3clFbG">
                            <node concept="37vLTw" id="1pPth$lGzsH" role="2Oq$k0">
                              <ref role="3cqZAo" node="1pPth$lE8Xs" resolve="ruleHandlers" />
                            </node>
                            <node concept="TSZUe" id="1pPth$lGArx" role="2OqNvi">
                              <node concept="37vLTw" id="1pPth$lGBka" role="25WWJ7">
                                <ref role="3cqZAo" node="1pPth$l_ZeP" resolve="rh" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="1pPth$lGirZ" role="1Duv9x">
                        <property role="TrG5h" value="node" />
                        <node concept="3uibUv" id="1pPth$lGis3" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1pPth$lGis4" role="1DdaDG">
                        <ref role="3cqZAo" node="1pPth$lD$Ft" resolve="nodes" />
                      </node>
                    </node>
                  </node>
                  <node concept="TDmWw" id="1pPth$l_Zfk" role="TEbGg">
                    <node concept="3cpWsn" id="1pPth$l_Zfl" role="TDEfY">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="1pPth$l_Zfm" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1pPth$l_Zfn" role="TDEfX">
                      <node concept="34ab3g" id="1pPth$l_Zfo" role="3cqZAp">
                        <property role="35gtTG" value="error" />
                        <property role="34fQS0" value="true" />
                        <node concept="Xl_RD" id="1pPth$l_Zfp" role="34bqiv">
                          <property role="Xl_RC" value="exception during rules collection" />
                        </node>
                        <node concept="37vLTw" id="1pPth$l_Zfq" role="34bMjA">
                          <ref role="3cqZAo" node="1pPth$l_Zfl" resolve="e" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="1pPth$l_Zfr" role="3cqZAp">
                        <node concept="d57v9" id="1pPth$l_Zfs" role="3clFbG">
                          <node concept="37vLTw" id="1pPth$l_Zft" role="37vLTJ">
                            <ref role="3cqZAo" node="1pPth$l_ZeL" resolve="errors" />
                          </node>
                          <node concept="3cmrfG" id="1pPth$l_Zfu" role="37vLTx">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1pPth$l_Zfv" role="ukAjM">
              <node concept="2OqwBi" id="1pPth$l_Zfw" role="2Oq$k0">
                <node concept="Xjq3P" id="1pPth$l_ZeC" role="2Oq$k0">
                  <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                </node>
                <node concept="2OwXpG" id="1pPth$lA7So" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1pPth$l_Zfy" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1pPth$l_Zfz" role="3cqZAp" />
          <node concept="3clFbF" id="7dgRGU4Ny5I" role="3cqZAp">
            <node concept="1rXfSq" id="7dgRGU4Ny5G" role="3clFbG">
              <ref role="37wK5l" node="7dgRGU4Nmfr" resolve="done" />
              <node concept="3clFbC" id="7dgRGU4NzQf" role="37wK5m">
                <node concept="37vLTw" id="7dgRGU4NyXM" role="3uHU7B">
                  <ref role="3cqZAo" node="1pPth$l_ZeL" resolve="errors" />
                </node>
                <node concept="3cmrfG" id="7dgRGU4NzNJ" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1pPth$lAXYe" role="jymVt" />
      <node concept="3Tm6S6" id="1pPth$lNdQC" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lACR_" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        <node concept="3uibUv" id="1pPth$lE5hW" role="11_B2D">
          <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        </node>
      </node>
      <node concept="312cEg" id="1pPth$lD$Ft" role="jymVt">
        <property role="TrG5h" value="nodes" />
        <node concept="3Tmbuc" id="1pPth$lE73F" role="1B3o_S" />
        <node concept="2I9FWS" id="1pPth$lD$Fw" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="1pPth$lE8Xs" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="ruleHandlers" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="1pPth$lE7PF" role="1B3o_S" />
        <node concept="_YKpA" id="1pPth$lE8zt" role="1tU5fm">
          <node concept="3uibUv" id="1pPth$lE8WH" role="_ZDj9">
            <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
          </node>
        </node>
        <node concept="2ShNRf" id="1pPth$lGhrs" role="33vP2m">
          <node concept="Tc6Ow" id="1pPth$lGhro" role="2ShVmc">
            <node concept="3uibUv" id="1pPth$lGhrp" role="HW$YZ">
              <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lA1x2" role="jymVt" />
    <node concept="312cEu" id="1pPth$lB0Q2" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ProduceHandler" />
      <node concept="3clFb_" id="1pPth$lMJaQ" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="1pPth$lMJaR" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lMJaS" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lMJaU" role="3clF47">
          <node concept="3clFbF" id="1pPth$lMK0U" role="3cqZAp">
            <node concept="Xl_RD" id="1pPth$lMK0T" role="3clFbG">
              <property role="Xl_RC" value="producing rules handler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lB26u" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="1pPth$lEaxh" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="3uibUv" id="1pPth$lEbiS" role="1tU5fm">
            <ref role="3uigEE" node="1pPth$lAwc0" resolve="TypecheckingHelper.CollectRules" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lB26x" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lB26y" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lB26$" role="3clF47">
          <node concept="3clFbH" id="1pPth$lCaeF" role="3cqZAp" />
          <node concept="3cpWs8" id="1pPth$l_Zgt" role="3cqZAp">
            <node concept="3cpWsn" id="1pPth$l_Zgu" role="3cpWs9">
              <property role="TrG5h" value="errors" />
              <node concept="10Oyi0" id="1pPth$l_Zgv" role="1tU5fm" />
              <node concept="3cmrfG" id="1pPth$l_Zgw" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="1QHqEO" id="1pPth$l_Zgx" role="3cqZAp">
            <node concept="1QHqEC" id="1pPth$l_Zgy" role="1QHqEI">
              <node concept="3clFbS" id="1pPth$l_Zgz" role="1bW5cS">
                <node concept="1QHqEM" id="1pPth$l_Zg$" role="3cqZAp">
                  <node concept="1QHqEC" id="1pPth$l_Zg_" role="1QHqEI">
                    <node concept="3clFbS" id="1pPth$l_ZgA" role="1bW5cS">
                      <node concept="SfApY" id="1pPth$l_ZgB" role="3cqZAp">
                        <node concept="3clFbS" id="1pPth$l_ZgC" role="SfCbr">
                          <node concept="1DcWWT" id="1pPth$lEdgC" role="3cqZAp">
                            <node concept="3clFbS" id="1pPth$lEdgE" role="2LFqv$">
                              <node concept="3clFbF" id="1pPth$l_ZgD" role="3cqZAp">
                                <node concept="2OqwBi" id="1pPth$l_ZgE" role="3clFbG">
                                  <node concept="2ShNRf" id="1pPth$l_ZgF" role="2Oq$k0">
                                    <node concept="1pGfFk" id="1pPth$l_ZgG" role="2ShVmc">
                                      <ref role="37wK5l" to="9kr0:ZqZbw4Qjv7" resolve="ChrHandlerProducer" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1pPth$l_ZgH" role="2OqNvi">
                                    <ref role="37wK5l" to="9kr0:ZqZbw4Qjwa" resolve="produce" />
                                    <node concept="2OqwBi" id="1pPth$l_ZgI" role="37wK5m">
                                      <node concept="Xjq3P" id="1pPth$l_Zgh" role="2Oq$k0">
                                        <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                                      </node>
                                      <node concept="liA8E" id="1pPth$lA7a9" role="2OqNvi">
                                        <ref role="37wK5l" node="1pPth$lA589" resolve="rulesModel" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1pPth$lEe6e" role="37wK5m">
                                      <ref role="3cqZAo" node="1pPth$lEdgG" resolve="rh" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="1pPth$lEdgG" role="1Duv9x">
                              <property role="TrG5h" value="rh" />
                              <node concept="3uibUv" id="1pPth$lEdgK" role="1tU5fm">
                                <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1pPth$lEdgL" role="1DdaDG">
                              <node concept="37vLTw" id="1pPth$lEdgM" role="2Oq$k0">
                                <ref role="3cqZAo" node="1pPth$lEaxh" resolve="prev" />
                              </node>
                              <node concept="2OwXpG" id="1pPth$lEdgN" role="2OqNvi">
                                <ref role="2Oxat5" node="1pPth$lE8Xs" resolve="ruleHandlers" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="TDmWw" id="1pPth$l_ZgL" role="TEbGg">
                          <node concept="3cpWsn" id="1pPth$l_ZgM" role="TDEfY">
                            <property role="TrG5h" value="ex" />
                            <node concept="3uibUv" id="1pPth$l_ZgN" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="1pPth$l_ZgO" role="TDEfX">
                            <node concept="34ab3g" id="1pPth$l_ZgP" role="3cqZAp">
                              <property role="35gtTG" value="error" />
                              <property role="34fQS0" value="true" />
                              <node concept="Xl_RD" id="1pPth$l_ZgQ" role="34bqiv">
                                <property role="Xl_RC" value="exception during rules generating" />
                              </node>
                              <node concept="37vLTw" id="1pPth$l_ZgR" role="34bMjA">
                                <ref role="3cqZAo" node="1pPth$l_ZgM" resolve="ex" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="1pPth$l_ZgS" role="3cqZAp">
                              <node concept="d57v9" id="1pPth$l_ZgT" role="3clFbG">
                                <node concept="3cmrfG" id="1pPth$l_ZgU" role="37vLTx">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="37vLTw" id="1pPth$l_ZgV" role="37vLTJ">
                                  <ref role="3cqZAo" node="1pPth$l_Zgu" resolve="errors" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1pPth$l_ZgW" role="ukAjM">
                    <node concept="2OqwBi" id="1pPth$l_ZgX" role="2Oq$k0">
                      <node concept="Xjq3P" id="1pPth$l_Zgi" role="2Oq$k0">
                        <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                      </node>
                      <node concept="2OwXpG" id="1pPth$lA8Ka" role="2OqNvi">
                        <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1pPth$l_ZgZ" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1pPth$l_Zh0" role="ukAjM">
              <node concept="2OqwBi" id="1pPth$l_Zh1" role="2Oq$k0">
                <node concept="Xjq3P" id="1pPth$l_Zgj" role="2Oq$k0">
                  <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                </node>
                <node concept="2OwXpG" id="1pPth$lA8Tj" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1pPth$l_Zh3" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1pPth$l_Zh4" role="3cqZAp" />
          <node concept="3clFbF" id="7dgRGU4Nv9m" role="3cqZAp">
            <node concept="1rXfSq" id="7dgRGU4Nv9k" role="3clFbG">
              <ref role="37wK5l" node="7dgRGU4Nmfr" resolve="done" />
              <node concept="3clFbC" id="7dgRGU4NzTI" role="37wK5m">
                <node concept="37vLTw" id="7dgRGU4NvqZ" role="3uHU7B">
                  <ref role="3cqZAo" node="1pPth$l_Zgu" resolve="errors" />
                </node>
                <node concept="3cmrfG" id="7dgRGU4NweX" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1pPth$lNeRB" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lB20z" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        <node concept="3uibUv" id="1pPth$lE9Yx" role="11_B2D">
          <ref role="3uigEE" node="1pPth$lAwc0" resolve="TypecheckingHelper.CollectRules" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4pWvZ2nh3LO" role="jymVt" />
    <node concept="312cEu" id="4pWvZ2nh4h1" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SolveOnTheFly" />
      <node concept="3clFb_" id="4pWvZ2nh4h2" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="4pWvZ2nh4h3" role="3clF45" />
        <node concept="3Tmbuc" id="4pWvZ2nh4h4" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nh4h5" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nh4h6" role="3cqZAp">
            <node concept="Xl_RD" id="4pWvZ2nh4h7" role="3clFbG">
              <property role="Xl_RC" value="solving rules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nh4h8" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="4pWvZ2nh4h9" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="3uibUv" id="4pWvZ2nh4ha" role="1tU5fm">
            <ref role="3uigEE" node="1pPth$lAwc0" resolve="TypecheckingHelper.CollectRules" />
          </node>
        </node>
        <node concept="3cqZAl" id="4pWvZ2nh4hb" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nh4hc" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nh4hd" role="3clF47">
          <node concept="3clFbH" id="4pWvZ2nh4he" role="3cqZAp" />
          <node concept="3cpWs8" id="4pWvZ2nh4hf" role="3cqZAp">
            <node concept="3cpWsn" id="4pWvZ2nh4hg" role="3cpWs9">
              <property role="TrG5h" value="errors" />
              <node concept="10Oyi0" id="4pWvZ2nh4hh" role="1tU5fm" />
              <node concept="3cmrfG" id="4pWvZ2nh4hi" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="1QHqEO" id="4pWvZ2nh4hj" role="3cqZAp">
            <node concept="1QHqEC" id="4pWvZ2nh4hk" role="1QHqEI">
              <node concept="3clFbS" id="4pWvZ2nh4hl" role="1bW5cS">
                <node concept="1QHqEM" id="4pWvZ2nh4hm" role="3cqZAp">
                  <node concept="1QHqEC" id="4pWvZ2nh4hn" role="1QHqEI">
                    <node concept="3clFbS" id="4pWvZ2nh4ho" role="1bW5cS">
                      <node concept="SfApY" id="4pWvZ2nh4hp" role="3cqZAp">
                        <node concept="3clFbS" id="4pWvZ2nh4hq" role="SfCbr">
                          <node concept="3cpWs8" id="4pWvZ2nh4hr" role="3cqZAp">
                            <node concept="3cpWsn" id="4pWvZ2nh4hs" role="3cpWs9">
                              <property role="TrG5h" value="tracer" />
                              <node concept="3uibUv" id="4pWvZ2nh4ht" role="1tU5fm">
                                <ref role="3uigEE" node="4i4XGQZlbGA" resolve="MessageViewTracer" />
                              </node>
                              <node concept="2YIFZM" id="4pWvZ2nh4hu" role="33vP2m">
                                <ref role="1Pybhc" node="4i4XGQZlbGA" resolve="MessageViewTracer" />
                                <ref role="37wK5l" node="4i4XGQZmHHg" resolve="get" />
                                <node concept="2OqwBi" id="4pWvZ2nh4hv" role="37wK5m">
                                  <node concept="2OqwBi" id="4pWvZ2nh4hw" role="2Oq$k0">
                                    <node concept="Xjq3P" id="4pWvZ2nh4hx" role="2Oq$k0">
                                      <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                                    </node>
                                    <node concept="2OwXpG" id="4pWvZ2nh4hy" role="2OqNvi">
                                      <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4pWvZ2nh4hz" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c4:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4pWvZ2nh4h$" role="3cqZAp">
                            <node concept="2OqwBi" id="4pWvZ2nh4h_" role="3clFbG">
                              <node concept="37vLTw" id="4pWvZ2nh4hA" role="2Oq$k0">
                                <ref role="3cqZAo" node="4pWvZ2nh4hs" resolve="tracer" />
                              </node>
                              <node concept="liA8E" id="4pWvZ2nh4hB" role="2OqNvi">
                                <ref role="37wK5l" node="61vfVfp5zwA" resolve="showEvents" />
                                <node concept="Rm8GO" id="4pWvZ2nh4hC" role="37wK5m">
                                  <ref role="Rm8GQ" node="61vfVfp5uU4" resolve="FIRED" />
                                  <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4pWvZ2nh4hD" role="3cqZAp" />
                          <node concept="1DcWWT" id="4pWvZ2nh4hE" role="3cqZAp">
                            <node concept="3clFbS" id="4pWvZ2nh4hF" role="2LFqv$">
                              <node concept="3cpWs8" id="4pWvZ2nhNEK" role="3cqZAp">
                                <node concept="3cpWsn" id="4pWvZ2nhNEL" role="3cpWs9">
                                  <property role="TrG5h" value="solver" />
                                  <node concept="3uibUv" id="4pWvZ2nhNEC" role="1tU5fm">
                                    <ref role="3uigEE" to="9kr0:4pWvZ2n32be" resolve="ChrSolver" />
                                  </node>
                                  <node concept="2ShNRf" id="4pWvZ2nhNEM" role="33vP2m">
                                    <node concept="1pGfFk" id="4pWvZ2nhNEN" role="2ShVmc">
                                      <ref role="37wK5l" to="9kr0:4pWvZ2n32bg" resolve="ChrSolver" />
                                      <node concept="37vLTw" id="4pWvZ2nhNEO" role="37wK5m">
                                        <ref role="3cqZAo" node="4pWvZ2nh4hX" resolve="rh" />
                                      </node>
                                      <node concept="37vLTw" id="4pWvZ2nhNEP" role="37wK5m">
                                        <ref role="3cqZAo" node="4pWvZ2nh4hs" resolve="tracer" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4pWvZ2nh4hG" role="3cqZAp">
                                <node concept="2OqwBi" id="4pWvZ2nh4hH" role="3clFbG">
                                  <node concept="37vLTw" id="4pWvZ2nhNEQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4pWvZ2nhNEL" resolve="solver" />
                                  </node>
                                  <node concept="liA8E" id="4pWvZ2nh4hM" role="2OqNvi">
                                    <ref role="37wK5l" to="9kr0:4pWvZ2n3zcY" resolve="solve" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="4pWvZ2nFe3L" role="3cqZAp">
                                <node concept="3cpWsn" id="4pWvZ2nFe3M" role="3cpWs9">
                                  <property role="TrG5h" value="formatter" />
                                  <node concept="3uibUv" id="4pWvZ2nFe3B" role="1tU5fm">
                                    <ref role="3uigEE" node="4pWvZ2nEi3p" resolve="RunTypecheckingRules.OnTheFlyTypeFormatter" />
                                  </node>
                                  <node concept="2ShNRf" id="4pWvZ2nFe3N" role="33vP2m">
                                    <node concept="1pGfFk" id="4pWvZ2nFe3O" role="2ShVmc">
                                      <ref role="37wK5l" node="4pWvZ2nEi3v" resolve="RunTypecheckingRules.OnTheFlyTypeFormatter" />
                                      <node concept="37vLTw" id="4pWvZ2nFe3P" role="37wK5m">
                                        <ref role="3cqZAo" node="4pWvZ2nhNEL" resolve="solver" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4pWvZ2nFizm" role="3cqZAp">
                                <node concept="2OqwBi" id="4pWvZ2nFjmW" role="3clFbG">
                                  <node concept="37vLTw" id="4pWvZ2nFizk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4pWvZ2nFe3M" resolve="formatter" />
                                  </node>
                                  <node concept="liA8E" id="4pWvZ2nFk8R" role="2OqNvi">
                                    <ref role="37wK5l" node="4pWvZ2oeTmh" resolve="initialize" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4pWvZ2nFm5W" role="3cqZAp">
                                <node concept="2OqwBi" id="4pWvZ2nFmTN" role="3clFbG">
                                  <node concept="37vLTw" id="4pWvZ2nFm5U" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4pWvZ2nFe3M" resolve="formatter" />
                                  </node>
                                  <node concept="liA8E" id="4pWvZ2nFnGf" role="2OqNvi">
                                    <ref role="37wK5l" node="4pWvZ2nHiCQ" resolve="collectTypes" />
                                    <node concept="37vLTw" id="4pWvZ2nFp$4" role="37wK5m">
                                      <ref role="3cqZAo" node="4pWvZ2nhPRH" resolve="nodeId2Type" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="4pWvZ2nh4hX" role="1Duv9x">
                              <property role="TrG5h" value="rh" />
                              <node concept="3uibUv" id="4pWvZ2nh4hY" role="1tU5fm">
                                <ref role="3uigEE" to="9kr0:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4pWvZ2nh4hZ" role="1DdaDG">
                              <node concept="37vLTw" id="4pWvZ2nh4i0" role="2Oq$k0">
                                <ref role="3cqZAo" node="4pWvZ2nh4h9" resolve="prev" />
                              </node>
                              <node concept="2OwXpG" id="4pWvZ2nh4i1" role="2OqNvi">
                                <ref role="2Oxat5" node="1pPth$lE8Xs" resolve="ruleHandlers" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="TDmWw" id="4pWvZ2nh4i2" role="TEbGg">
                          <node concept="3cpWsn" id="4pWvZ2nh4i3" role="TDEfY">
                            <property role="TrG5h" value="ex" />
                            <node concept="3uibUv" id="4pWvZ2nh4i4" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4pWvZ2nh4i5" role="TDEfX">
                            <node concept="34ab3g" id="4pWvZ2nh4i6" role="3cqZAp">
                              <property role="35gtTG" value="error" />
                              <property role="34fQS0" value="true" />
                              <node concept="Xl_RD" id="4pWvZ2nh4i7" role="34bqiv">
                                <property role="Xl_RC" value="exception during rules solving" />
                              </node>
                              <node concept="37vLTw" id="4pWvZ2nh4i8" role="34bMjA">
                                <ref role="3cqZAo" node="4pWvZ2nh4i3" resolve="ex" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="4pWvZ2nh4i9" role="3cqZAp">
                              <node concept="d57v9" id="4pWvZ2nh4ia" role="3clFbG">
                                <node concept="3cmrfG" id="4pWvZ2nh4ib" role="37vLTx">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="37vLTw" id="4pWvZ2nh4ic" role="37vLTJ">
                                  <ref role="3cqZAo" node="4pWvZ2nh4hg" resolve="errors" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4pWvZ2nh4id" role="ukAjM">
                    <node concept="2OqwBi" id="4pWvZ2nh4ie" role="2Oq$k0">
                      <node concept="Xjq3P" id="4pWvZ2nh4if" role="2Oq$k0">
                        <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                      </node>
                      <node concept="2OwXpG" id="4pWvZ2nh4ig" role="2OqNvi">
                        <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4pWvZ2nh4ih" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4pWvZ2nh4ii" role="ukAjM">
              <node concept="2OqwBi" id="4pWvZ2nh4ij" role="2Oq$k0">
                <node concept="Xjq3P" id="4pWvZ2nh4ik" role="2Oq$k0">
                  <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                </node>
                <node concept="2OwXpG" id="4pWvZ2nh4il" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="4pWvZ2nh4im" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4pWvZ2nh4in" role="3cqZAp" />
          <node concept="3clFbF" id="4pWvZ2nh4io" role="3cqZAp">
            <node concept="1rXfSq" id="4pWvZ2nh4ip" role="3clFbG">
              <ref role="37wK5l" node="7dgRGU4Nmfr" resolve="done" />
              <node concept="3clFbC" id="4pWvZ2nh4iq" role="37wK5m">
                <node concept="37vLTw" id="4pWvZ2nh4ir" role="3uHU7B">
                  <ref role="3cqZAo" node="4pWvZ2nh4hg" resolve="errors" />
                </node>
                <node concept="3cmrfG" id="4pWvZ2nh4is" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4pWvZ2nl1_m" role="jymVt" />
      <node concept="3clFb_" id="4pWvZ2nl0ck" role="jymVt">
        <property role="TrG5h" value="getTypes" />
        <node concept="3rvAFt" id="4pWvZ2nl0cl" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nl0cm" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nl0cn" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nl0co" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nl0cp" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nl0cq" role="3cqZAp">
            <node concept="37vLTw" id="4pWvZ2nl348" role="3clFbG">
              <ref role="3cqZAo" node="4pWvZ2nhPRH" resolve="nodeId2Type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nl0cs" role="jymVt">
        <property role="TrG5h" value="getErrors" />
        <node concept="3rvAFt" id="4pWvZ2nl0ct" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nl0cu" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nl0cv" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nl0cw" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nl0cx" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nl50m" role="3cqZAp">
            <node concept="2ShNRf" id="4pWvZ2nl50g" role="3clFbG">
              <node concept="3rGOSV" id="4pWvZ2nl6Sw" role="2ShVmc">
                <node concept="17QB3L" id="4pWvZ2nl8u0" role="3rHrn6" />
                <node concept="17QB3L" id="4pWvZ2nl90e" role="3rHtpV" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4pWvZ2nkYHW" role="jymVt" />
      <node concept="2tJIrI" id="4pWvZ2nkZmq" role="jymVt" />
      <node concept="312cEg" id="4pWvZ2nhPRH" role="jymVt">
        <property role="TrG5h" value="nodeId2Type" />
        <node concept="3Tm1VV" id="4pWvZ2nhQSk" role="1B3o_S" />
        <node concept="3rvAFt" id="4pWvZ2niiaW" role="1tU5fm">
          <node concept="17QB3L" id="4pWvZ2niKl8" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2niK6w" role="3rvQeY" />
        </node>
        <node concept="2ShNRf" id="4pWvZ2niKH3" role="33vP2m">
          <node concept="3rGOSV" id="4pWvZ2niKCD" role="2ShVmc">
            <node concept="17QB3L" id="4pWvZ2niKCE" role="3rHrn6" />
            <node concept="17QB3L" id="4pWvZ2niKCF" role="3rHtpV" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4pWvZ2nh4it" role="1B3o_S" />
      <node concept="3uibUv" id="4pWvZ2nh4iu" role="1zkMxy">
        <ref role="3uigEE" node="4pWvZ2nk_q3" resolve="TypecheckingHelper.RunSolver" />
        <node concept="3uibUv" id="4pWvZ2nh4iv" role="11_B2D">
          <ref role="3uigEE" node="1pPth$lAwc0" resolve="TypecheckingHelper.CollectRules" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4pWvZ2nh41q" role="jymVt" />
    <node concept="2tJIrI" id="1pPth$lAZhe" role="jymVt" />
    <node concept="312cEu" id="1pPth$lBDcr" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MakeHandler" />
      <node concept="3clFb_" id="1pPth$lMMWH" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="1pPth$lMMWI" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lMMWJ" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lMMWL" role="3clF47">
          <node concept="3clFbF" id="1pPth$lMOpY" role="3cqZAp">
            <node concept="Xl_RD" id="1pPth$lMOpX" role="3clFbG">
              <property role="Xl_RC" value="making rules handler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lBEhE" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="1pPth$lEuZa" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="3uibUv" id="1pPth$lEx0N" role="1tU5fm">
            <ref role="3uigEE" node="1pPth$lB0Q2" resolve="TypecheckingHelper.ProduceHandler" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lBEhH" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lBEhI" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lBEhK" role="3clF47">
          <node concept="3clFbJ" id="1pPth$l_ZhV" role="3cqZAp">
            <node concept="3clFbS" id="1pPth$l_ZhW" role="3clFbx">
              <node concept="3clFbF" id="1pPth$lMQxX" role="3cqZAp">
                <node concept="1rXfSq" id="1pPth$lMQxV" role="3clFbG">
                  <ref role="37wK5l" node="1pPth$lJc6B" resolve="fail" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="1pPth$l_Zia" role="3clFbw">
              <node concept="2YIFZM" id="1pPth$l_Zib" role="3fr31v">
                <ref role="37wK5l" node="7RDCjSXjQEP" resolve="make" />
                <ref role="1Pybhc" node="7RDCjSXgvZa" resolve="MakeCollectedRules" />
                <node concept="2OqwBi" id="1pPth$l_Zic" role="37wK5m">
                  <node concept="Xjq3P" id="1pPth$l_ZhL" role="2Oq$k0">
                    <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                  </node>
                  <node concept="liA8E" id="1pPth$lA8aE" role="2OqNvi">
                    <ref role="37wK5l" node="1pPth$lA589" resolve="rulesModel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1pPth$l_Zie" role="37wK5m">
                  <node concept="Xjq3P" id="1pPth$l_ZhM" role="2Oq$k0">
                    <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                  </node>
                  <node concept="2OwXpG" id="1pPth$lA81x" role="2OqNvi">
                    <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="1bVj0M" id="1pPth$l_Zig" role="37wK5m">
                  <node concept="3clFbS" id="1pPth$l_Zih" role="1bW5cS">
                    <node concept="3clFbF" id="7dgRGU4Nj9E" role="3cqZAp">
                      <node concept="1rXfSq" id="7dgRGU4Nj9C" role="3clFbG">
                        <ref role="37wK5l" node="7dgRGU4Nmfr" resolve="done" />
                        <node concept="2OqwBi" id="7dgRGU4Nkqq" role="37wK5m">
                          <node concept="37vLTw" id="7dgRGU4Nkqr" role="2Oq$k0">
                            <ref role="3cqZAo" node="1pPth$l_ZiX" resolve="res" />
                          </node>
                          <node concept="liA8E" id="7dgRGU4Nkqs" role="2OqNvi">
                            <ref role="37wK5l" to="i9so:17I1R__cQ6v" resolve="isSucessful" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="1pPth$l_ZiX" role="1bW2Oz">
                    <property role="TrG5h" value="res" />
                    <node concept="3uibUv" id="1pPth$l_ZiY" role="1tU5fm">
                      <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1pPth$lNf1$" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lBEfy" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        <node concept="3uibUv" id="1pPth$lErhx" role="11_B2D">
          <ref role="3uigEE" node="1pPth$lB0Q2" resolve="TypecheckingHelper.ProduceHandler" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lBGJs" role="jymVt" />
    <node concept="312cEu" id="4pWvZ2nk_q3" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="true" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="RunSolver" />
      <node concept="3clFb_" id="4pWvZ2nla2K" role="jymVt">
        <property role="TrG5h" value="getTypes" />
        <property role="1EzhhJ" value="true" />
        <node concept="3rvAFt" id="4pWvZ2nla2L" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nla2M" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nla2N" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nla2O" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nla2P" role="3clF47" />
      </node>
      <node concept="3clFb_" id="4pWvZ2nla2S" role="jymVt">
        <property role="TrG5h" value="getErrors" />
        <property role="1EzhhJ" value="true" />
        <node concept="3rvAFt" id="4pWvZ2nla2T" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nla2U" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nla2V" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nla2W" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nla2X" role="3clF47" />
      </node>
      <node concept="3Tm6S6" id="4pWvZ2nkz8z" role="1B3o_S" />
      <node concept="3uibUv" id="4pWvZ2nkBQK" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        <node concept="16syzq" id="4pWvZ2nkMx_" role="11_B2D">
          <ref role="16sUi3" node="4pWvZ2nkLbC" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="4pWvZ2nkLbC" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="4pWvZ2nkLOD" role="3ztrMU">
          <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4pWvZ2nkwRu" role="jymVt" />
    <node concept="312cEu" id="1pPth$lBNWG" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="RunTypechecking" />
      <node concept="3clFbW" id="1pPth$lHpLU" role="jymVt">
        <node concept="3cqZAl" id="1pPth$lHpLW" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lHpLX" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lHpLY" role="3clF47">
          <node concept="3clFbF" id="1pPth$lHqTn" role="3cqZAp">
            <node concept="37vLTI" id="1pPth$lHqTp" role="3clFbG">
              <node concept="2OqwBi" id="1pPth$lHqTt" role="37vLTJ">
                <node concept="Xjq3P" id="1pPth$lHqTw" role="2Oq$k0" />
                <node concept="2OwXpG" id="1pPth$lHqTs" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lHqTj" resolve="nodes" />
                </node>
              </node>
              <node concept="37vLTw" id="1pPth$lHqTx" role="37vLTx">
                <ref role="3cqZAo" node="1pPth$lHqNZ" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1pPth$lHqNZ" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="1pPth$lHqNY" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lMSHK" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="1pPth$lMSHL" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lMSHM" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lMSHO" role="3clF47">
          <node concept="3clFbF" id="1pPth$lMU69" role="3cqZAp">
            <node concept="Xl_RD" id="1pPth$lMU68" role="3clFbG">
              <property role="Xl_RC" value="launching rules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lBP4o" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="1pPth$lEDHT" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="3uibUv" id="1pPth$lEEoo" role="1tU5fm">
            <ref role="3uigEE" node="1pPth$lBDcr" resolve="TypecheckingHelper.MakeHandler" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lBP4r" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lBP4s" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lBP4u" role="3clF47">
          <node concept="3cpWs8" id="1pPth$l_Zju" role="3cqZAp">
            <node concept="3cpWsn" id="1pPth$l_Zjv" role="3cpWs9">
              <property role="TrG5h" value="ok" />
              <node concept="10P_77" id="1pPth$l_Zjw" role="1tU5fm" />
              <node concept="3clFbT" id="1pPth$l_Zjx" role="33vP2m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7dgRGU4HPqw" role="3cqZAp">
            <node concept="3cpWsn" id="7dgRGU4HPqz" role="3cpWs9">
              <property role="TrG5h" value="canContinue" />
              <node concept="10P_77" id="7dgRGU4HPqu" role="1tU5fm" />
              <node concept="3clFbT" id="7dgRGU4HQcc" role="33vP2m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1pPth$l_Zjy" role="3cqZAp">
            <node concept="3cpWsn" id="1pPth$l_Zjz" role="3cpWs9">
              <property role="TrG5h" value="errmsg" />
              <node concept="17QB3L" id="1pPth$l_Zj$" role="1tU5fm" />
              <node concept="10Nm6u" id="1pPth$l_Zj_" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbH" id="1pPth$l_ZjA" role="3cqZAp" />
          <node concept="1QHqEK" id="1pPth$l_ZjB" role="3cqZAp">
            <node concept="1QHqEC" id="1pPth$l_ZjC" role="1QHqEI">
              <node concept="3clFbS" id="1pPth$l_ZjD" role="1bW5cS">
                <node concept="3cpWs8" id="1pPth$l_ZjE" role="3cqZAp">
                  <node concept="3cpWsn" id="1pPth$l_ZjF" role="3cpWs9">
                    <property role="TrG5h" value="tracer" />
                    <node concept="3uibUv" id="1pPth$l_ZjG" role="1tU5fm">
                      <ref role="3uigEE" node="4i4XGQZlbGA" resolve="MessageViewTracer" />
                    </node>
                    <node concept="2YIFZM" id="1pPth$l_ZjH" role="33vP2m">
                      <ref role="1Pybhc" node="4i4XGQZlbGA" resolve="MessageViewTracer" />
                      <ref role="37wK5l" node="4i4XGQZmHHg" resolve="get" />
                      <node concept="2OqwBi" id="1pPth$l_ZjI" role="37wK5m">
                        <node concept="2OqwBi" id="1pPth$l_ZjJ" role="2Oq$k0">
                          <node concept="Xjq3P" id="1pPth$l_Zj1" role="2Oq$k0">
                            <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                          </node>
                          <node concept="2OwXpG" id="1pPth$lA7_I" role="2OqNvi">
                            <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1pPth$l_ZjL" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1pPth$l_ZjM" role="3cqZAp">
                  <node concept="2OqwBi" id="1pPth$l_ZjN" role="3clFbG">
                    <node concept="37vLTw" id="1pPth$l_ZjO" role="2Oq$k0">
                      <ref role="3cqZAo" node="1pPth$l_ZjF" resolve="tracer" />
                    </node>
                    <node concept="liA8E" id="1pPth$l_ZjP" role="2OqNvi">
                      <ref role="37wK5l" node="61vfVfp5zwA" resolve="showEvents" />
                      <node concept="Rm8GO" id="7feMCq_wlXJ" role="37wK5m">
                        <ref role="Rm8GQ" node="61vfVfp5uMw" resolve="TRIGGERED" />
                        <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
                      </node>
                      <node concept="Rm8GO" id="4pWvZ2ohjnY" role="37wK5m">
                        <ref role="Rm8GQ" node="61vfVfp5uey" resolve="ACTIVATED" />
                        <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
                      </node>
                      <node concept="Rm8GO" id="4pWvZ2ohlh0" role="37wK5m">
                        <ref role="Rm8GQ" node="61vfVfp5usz" resolve="STORED" />
                        <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
                      </node>
                      <node concept="Rm8GO" id="4pWvZ2ohnak" role="37wK5m">
                        <ref role="Rm8GQ" node="61vfVfp5uEI" resolve="REMOVED" />
                        <ref role="1Px2BO" node="61vfVfp5tJN" resolve="MessageViewTracer.Event" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1pPth$l_ZjR" role="3cqZAp" />
                <node concept="2GUZhq" id="1pPth$lRVb9" role="3cqZAp">
                  <node concept="3clFbS" id="1pPth$l_Zkj" role="2GV8ay">
                    <node concept="3clFbF" id="1pPth$l_Zkk" role="3cqZAp">
                      <node concept="2YIFZM" id="1pPth$l_Zkl" role="3clFbG">
                        <ref role="1Pybhc" to="ie8e:4peSo3CLajR" resolve="PrintDelegate" />
                        <ref role="37wK5l" to="ie8e:4peSo3CM2Ms" resolve="pushDelegate" />
                        <node concept="2ShNRf" id="1pPth$l_Zkm" role="37wK5m">
                          <node concept="YeOm9" id="1pPth$l_Zkn" role="2ShVmc">
                            <node concept="1Y3b0j" id="1pPth$l_Zko" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="ie8e:4peSo3CLajR" resolve="PrintDelegate" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <node concept="3Tm1VV" id="1pPth$l_Zkp" role="1B3o_S" />
                              <node concept="3clFb_" id="1pPth$l_Zkq" role="jymVt">
                                <property role="TrG5h" value="doPrint" />
                                <property role="1EzhhJ" value="false" />
                                <node concept="37vLTG" id="1pPth$l_Zkr" role="3clF46">
                                  <property role="TrG5h" value="atom" />
                                  <node concept="3uibUv" id="1pPth$l_Zks" role="1tU5fm">
                                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                                  </node>
                                </node>
                                <node concept="17QB3L" id="1pPth$l_Zkt" role="3clF45" />
                                <node concept="3Tm1VV" id="1pPth$l_Zku" role="1B3o_S" />
                                <node concept="3clFbS" id="1pPth$l_Zkv" role="3clF47">
                                  <node concept="3clFbF" id="1pPth$l_Zkw" role="3cqZAp">
                                    <node concept="3cpWs3" id="1pPth$l_Zkx" role="3clFbG">
                                      <node concept="3cpWs3" id="1pPth$l_Zky" role="3uHU7B">
                                        <node concept="Xl_RD" id="1pPth$l_Zkz" role="3uHU7B">
                                          <property role="Xl_RC" value="{" />
                                        </node>
                                        <node concept="2YIFZM" id="1pPth$l_Zk$" role="3uHU7w">
                                          <ref role="37wK5l" to="4t1t:4peSo3CHBfF" resolve="print" />
                                          <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                                          <node concept="37vLTw" id="1pPth$l_Zk_" role="37wK5m">
                                            <ref role="3cqZAo" node="1pPth$l_Zkr" resolve="atom" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="1pPth$l_ZkA" role="3uHU7w">
                                        <property role="Xl_RC" value="}" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="1pPth$l_ZkB" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1pPth$lRU_j" role="3cqZAp" />
                    <node concept="1DcWWT" id="1pPth$lHseb" role="3cqZAp">
                      <node concept="3clFbS" id="1pPth$lHsed" role="2LFqv$">
                        <node concept="2GUZhq" id="5jPBdKCf3W" role="3cqZAp">
                          <node concept="3clFbS" id="1pPth$lS0sg" role="2GV8ay">
                            <node concept="3clFbH" id="5jPBdKCfJ1" role="3cqZAp" />
                            <node concept="3clFbF" id="5jPBdKCiIT" role="3cqZAp">
                              <node concept="2YIFZM" id="5jPBdKCktT" role="3clFbG">
                                <ref role="37wK5l" to="stgg:7ISVfSIf0j" resolve="init" />
                                <ref role="1Pybhc" to="stgg:7ISVfSIedQ" resolve="JchrEvaluationSession" />
                              </node>
                            </node>
                            <node concept="3clFbH" id="5jPBdKCgBM" role="3cqZAp" />
                            <node concept="3clFbJ" id="7dgRGU4HYuA" role="3cqZAp">
                              <node concept="3clFbS" id="7dgRGU4HYuC" role="3clFbx">
                                <node concept="3clFbF" id="7dgRGU4I2Bi" role="3cqZAp">
                                  <node concept="37vLTI" id="7dgRGU4I46i" role="3clFbG">
                                    <node concept="37vLTw" id="7dgRGU4I2Bh" role="37vLTJ">
                                      <ref role="3cqZAo" node="1pPth$l_Zjv" resolve="ok" />
                                    </node>
                                    <node concept="3clFbT" id="7dgRGU4I3vC" role="37vLTx">
                                      <property role="3clFbU" value="false" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="7dgRGU4I5Zb" role="3cqZAp">
                                  <node concept="37vLTI" id="7dgRGU4I6NP" role="3clFbG">
                                    <node concept="3clFbT" id="7dgRGU4I7su" role="37vLTx">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                    <node concept="37vLTw" id="7dgRGU4I5Z9" role="37vLTJ">
                                      <ref role="3cqZAo" node="7dgRGU4HPqz" resolve="canContinue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="7dgRGU4KU24" role="3clFbw">
                                <node concept="2YIFZM" id="7dgRGU4KU26" role="3fr31v">
                                  <ref role="1Pybhc" node="41ox5Vnk76a" resolve="RunTypecheckingRules" />
                                  <ref role="37wK5l" node="41ox5Vnkht$" resolve="runTypecheckingRules" />
                                  <node concept="2OqwBi" id="7dgRGU4KU27" role="37wK5m">
                                    <node concept="37vLTw" id="7dgRGU4KU28" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1pPth$lHsef" resolve="node" />
                                    </node>
                                    <node concept="liA8E" id="7dgRGU4KU29" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7dgRGU4KU2a" role="37wK5m">
                                    <node concept="Xjq3P" id="7dgRGU4KU2b" role="2Oq$k0">
                                      <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                                    </node>
                                    <node concept="liA8E" id="7dgRGU4KU2c" role="2OqNvi">
                                      <ref role="37wK5l" node="1pPth$lA589" resolve="rulesModel" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7dgRGU4KU2d" role="37wK5m">
                                    <ref role="3cqZAo" node="1pPth$l_ZjF" resolve="tracer" />
                                  </node>
                                  <node concept="37vLTw" id="7dgRGU4KU2e" role="37wK5m">
                                    <ref role="3cqZAo" node="1pPth$l_ZjF" resolve="tracer" />
                                  </node>
                                  <node concept="37vLTw" id="7dgRGU4KU2f" role="37wK5m">
                                    <ref role="3cqZAo" node="1pPth$lEGxq" resolve="types" />
                                  </node>
                                  <node concept="37vLTw" id="7dgRGU4KU2g" role="37wK5m">
                                    <ref role="3cqZAo" node="1pPth$lEGxt" resolve="errors" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="TDmWw" id="1pPth$l_ZjT" role="TEXxN">
                            <node concept="3cpWsn" id="1pPth$l_ZjU" role="TDEfY">
                              <property role="TrG5h" value="fail" />
                              <node concept="3uibUv" id="1pPth$l_ZjV" role="1tU5fm">
                                <ref role="3uigEE" to="eifs:~FailureException" resolve="FailureException" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="1pPth$l_ZjW" role="TDEfX">
                              <node concept="34ab3g" id="1pPth$l_ZjX" role="3cqZAp">
                                <property role="35gtTG" value="warn" />
                                <property role="34fQS0" value="true" />
                                <node concept="Xl_RD" id="1pPth$l_ZjY" role="34bqiv">
                                  <property role="Xl_RC" value="failure during evaluation" />
                                </node>
                                <node concept="37vLTw" id="1pPth$l_ZjZ" role="34bMjA">
                                  <ref role="3cqZAo" node="1pPth$l_ZjU" resolve="fail" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="1pPth$l_Zk0" role="3cqZAp">
                                <node concept="37vLTI" id="1pPth$l_Zk1" role="3clFbG">
                                  <node concept="2OqwBi" id="1pPth$l_Zk2" role="37vLTx">
                                    <node concept="37vLTw" id="1pPth$l_Zk3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1pPth$l_ZjU" resolve="fail" />
                                    </node>
                                    <node concept="liA8E" id="1pPth$l_Zk4" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1pPth$l_Zk5" role="37vLTJ">
                                    <ref role="3cqZAo" node="1pPth$l_Zjz" resolve="errmsg" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1pPth$l_Zk6" role="3cqZAp">
                                <node concept="2OqwBi" id="1pPth$l_Zk7" role="3clFbG">
                                  <node concept="37vLTw" id="1pPth$l_Zk8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1pPth$l_ZjF" resolve="tracer" />
                                  </node>
                                  <node concept="liA8E" id="1pPth$l_Zk9" role="2OqNvi">
                                    <ref role="37wK5l" node="623frvFBcwl" resolve="warning" />
                                    <node concept="2OqwBi" id="1pPth$l_Zka" role="37wK5m">
                                      <node concept="37vLTw" id="1pPth$l_Zkb" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1pPth$l_ZjU" resolve="fail" />
                                      </node>
                                      <node concept="liA8E" id="1pPth$l_Zkc" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1pPth$l_Zkd" role="37wK5m">
                                      <ref role="3cqZAo" node="1pPth$l_ZjU" resolve="fail" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1pPth$l_Zke" role="3cqZAp">
                                <node concept="37vLTI" id="1pPth$l_Zkf" role="3clFbG">
                                  <node concept="3clFbT" id="1pPth$l_Zkg" role="37vLTx">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                  <node concept="37vLTw" id="1pPth$l_Zkh" role="37vLTJ">
                                    <ref role="3cqZAo" node="1pPth$l_Zjv" resolve="ok" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7dgRGU4HRhl" role="3cqZAp">
                                <node concept="37vLTI" id="7dgRGU4HSc7" role="3clFbG">
                                  <node concept="3clFbT" id="7dgRGU4HSV6" role="37vLTx">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                  <node concept="37vLTw" id="7dgRGU4HRhj" role="37vLTJ">
                                    <ref role="3cqZAo" node="7dgRGU4HPqz" resolve="canContinue" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="TDmWw" id="1pPth$l_ZkQ" role="TEXxN">
                            <node concept="3cpWsn" id="1pPth$l_ZkR" role="TDEfY">
                              <property role="TrG5h" value="e" />
                              <node concept="3uibUv" id="1pPth$l_ZkS" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="1pPth$l_ZkT" role="TDEfX">
                              <node concept="34ab3g" id="1pPth$l_ZkU" role="3cqZAp">
                                <property role="35gtTG" value="error" />
                                <property role="34fQS0" value="true" />
                                <node concept="Xl_RD" id="1pPth$l_ZkV" role="34bqiv">
                                  <property role="Xl_RC" value="exception during evaluation" />
                                </node>
                                <node concept="37vLTw" id="1pPth$l_ZkW" role="34bMjA">
                                  <ref role="3cqZAo" node="1pPth$l_ZkR" resolve="e" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="1pPth$l_ZkX" role="3cqZAp">
                                <node concept="2OqwBi" id="1pPth$l_ZkY" role="3clFbG">
                                  <node concept="37vLTw" id="1pPth$l_ZkZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1pPth$l_ZjF" resolve="tracer" />
                                  </node>
                                  <node concept="liA8E" id="1pPth$l_Zl0" role="2OqNvi">
                                    <ref role="37wK5l" node="623frvFBcwl" resolve="warning" />
                                    <node concept="2OqwBi" id="1pPth$l_Zl1" role="37wK5m">
                                      <node concept="37vLTw" id="1pPth$l_Zl2" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1pPth$l_ZkR" resolve="e" />
                                      </node>
                                      <node concept="liA8E" id="1pPth$l_Zl3" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1pPth$l_Zl4" role="37wK5m">
                                      <ref role="3cqZAo" node="1pPth$l_ZkR" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1pPth$l_Zl5" role="3cqZAp">
                                <node concept="37vLTI" id="1pPth$l_Zl6" role="3clFbG">
                                  <node concept="3clFbT" id="1pPth$l_Zl7" role="37vLTx">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                  <node concept="37vLTw" id="1pPth$l_Zl8" role="37vLTJ">
                                    <ref role="3cqZAo" node="1pPth$l_Zjv" resolve="ok" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7dgRGU4HUjz" role="3cqZAp">
                                <node concept="37vLTI" id="7dgRGU4HV7m" role="3clFbG">
                                  <node concept="3clFbT" id="7dgRGU4I8cB" role="37vLTx">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                  <node concept="37vLTw" id="7dgRGU4HUjx" role="37vLTJ">
                                    <ref role="3cqZAo" node="7dgRGU4HPqz" resolve="canContinue" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="5jPBdKCpC1" role="3cqZAp" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5jPBdKCf3Z" role="2GVbov">
                            <node concept="3clFbF" id="5jPBdKCoDG" role="3cqZAp">
                              <node concept="2YIFZM" id="5jPBdKCp9e" role="3clFbG">
                                <ref role="37wK5l" to="stgg:5jPBdKCn3Z" resolve="deinit" />
                                <ref role="1Pybhc" to="stgg:7ISVfSIedQ" resolve="JchrEvaluationSession" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="1pPth$lHsef" role="1Duv9x">
                        <property role="TrG5h" value="node" />
                        <node concept="3uibUv" id="1pPth$lHsej" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1pPth$lHsek" role="1DdaDG">
                        <ref role="3cqZAo" node="1pPth$lHqTj" resolve="nodes" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="1pPth$l_ZkP" role="3cqZAp" />
                  </node>
                  <node concept="3clFbS" id="1pPth$lRVbc" role="2GVbov">
                    <node concept="3clFbF" id="1pPth$lRWOP" role="3cqZAp">
                      <node concept="2YIFZM" id="1pPth$lRXpX" role="3clFbG">
                        <ref role="37wK5l" to="ie8e:4peSo3CMbfh" resolve="popDelegate" />
                        <ref role="1Pybhc" to="ie8e:4peSo3CLajR" resolve="PrintDelegate" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1pPth$l_Zl9" role="ukAjM">
              <node concept="2OqwBi" id="1pPth$l_Zla" role="2Oq$k0">
                <node concept="Xjq3P" id="1pPth$l_Zj4" role="2Oq$k0">
                  <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                </node>
                <node concept="2OwXpG" id="1pPth$lA8sU" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1pPth$l_Zlc" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1pPth$l_Zld" role="3cqZAp" />
          <node concept="3clFbF" id="7dgRGU4NgnM" role="3cqZAp">
            <node concept="1rXfSq" id="7dgRGU4NgnK" role="3clFbG">
              <ref role="37wK5l" node="7dgRGU4MD7E" resolve="done" />
              <node concept="37vLTw" id="7dgRGU4NhdB" role="37wK5m">
                <ref role="3cqZAo" node="1pPth$l_Zjv" resolve="ok" />
              </node>
              <node concept="37vLTw" id="7dgRGU4Nhqi" role="37wK5m">
                <ref role="3cqZAo" node="7dgRGU4HPqz" resolve="canContinue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4pWvZ2nkSRh" role="jymVt" />
      <node concept="3clFb_" id="4pWvZ2nkUxb" role="jymVt">
        <property role="TrG5h" value="getTypes" />
        <node concept="3rvAFt" id="4pWvZ2nkUxc" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nkUxd" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nkUxe" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nkUxf" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nkUxg" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nkUxh" role="3cqZAp">
            <node concept="37vLTw" id="4pWvZ2nkUxa" role="3clFbG">
              <ref role="3cqZAo" node="1pPth$lEGxq" resolve="types" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nkUxj" role="jymVt">
        <property role="TrG5h" value="getErrors" />
        <node concept="3rvAFt" id="4pWvZ2nkUxk" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nkUxl" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nkUxm" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nkUxn" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nkUxo" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nkUxp" role="3cqZAp">
            <node concept="37vLTw" id="4pWvZ2nkUxi" role="3clFbG">
              <ref role="3cqZAo" node="1pPth$lEGxt" resolve="errors" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1pPth$lG1ns" role="jymVt" />
      <node concept="312cEg" id="1pPth$lEGxq" role="jymVt">
        <property role="TrG5h" value="types" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="4pWvZ2nkQUX" role="1B3o_S" />
        <node concept="3rvAFt" id="1pPth$lFCyv" role="1tU5fm">
          <node concept="17QB3L" id="1pPth$lFD5L" role="3rvSg0" />
          <node concept="17QB3L" id="1pPth$lFCOK" role="3rvQeY" />
        </node>
        <node concept="2ShNRf" id="1pPth$lEHoi" role="33vP2m">
          <node concept="3rGOSV" id="1pPth$lFEwJ" role="2ShVmc">
            <node concept="17QB3L" id="1pPth$lFFHG" role="3rHrn6" />
            <node concept="17QB3L" id="1pPth$lFGb8" role="3rHtpV" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="1pPth$lEGxt" role="jymVt">
        <property role="TrG5h" value="errors" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="4pWvZ2nkRSN" role="1B3o_S" />
        <node concept="3rvAFt" id="1pPth$lFGcS" role="1tU5fm">
          <node concept="17QB3L" id="1pPth$lFGcT" role="3rvSg0" />
          <node concept="17QB3L" id="1pPth$lFGcU" role="3rvQeY" />
        </node>
        <node concept="2ShNRf" id="1pPth$lFGyA" role="33vP2m">
          <node concept="3rGOSV" id="1pPth$lFGxs" role="2ShVmc">
            <node concept="17QB3L" id="1pPth$lFGxt" role="3rHrn6" />
            <node concept="17QB3L" id="1pPth$lFGxu" role="3rHtpV" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1pPth$lNgE8" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lBP1p" role="1zkMxy">
        <ref role="3uigEE" node="4pWvZ2nk_q3" resolve="TypecheckingHelper.RunSolver" />
        <node concept="3uibUv" id="1pPth$lED5d" role="11_B2D">
          <ref role="3uigEE" node="1pPth$lBDcr" resolve="TypecheckingHelper.MakeHandler" />
        </node>
      </node>
      <node concept="312cEg" id="1pPth$lHqTj" role="jymVt">
        <property role="TrG5h" value="nodes" />
        <node concept="3Tm6S6" id="1pPth$lHqTk" role="1B3o_S" />
        <node concept="2I9FWS" id="1pPth$lHqTm" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$lBWTD" role="jymVt" />
    <node concept="312cEu" id="1pPth$lC1vN" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Highlighting" />
      <node concept="3clFbW" id="1pPth$lGTrm" role="jymVt">
        <node concept="37vLTG" id="1pPth$lGTEd" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="1pPth$lGU5$" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lGTro" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lGTrp" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lGTrq" role="3clF47">
          <node concept="3clFbF" id="1pPth$lGU8j" role="3cqZAp">
            <node concept="37vLTI" id="1pPth$lGU8l" role="3clFbG">
              <node concept="2OqwBi" id="1pPth$lGU8p" role="37vLTJ">
                <node concept="Xjq3P" id="1pPth$lGU8s" role="2Oq$k0" />
                <node concept="2OwXpG" id="1pPth$lGU8o" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
                </node>
              </node>
              <node concept="37vLTw" id="1pPth$lGU8t" role="37vLTx">
                <ref role="3cqZAo" node="1pPth$lGTEd" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lN12z" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="1pPth$lN12$" role="3clF45" />
        <node concept="3Tmbuc" id="1pPth$lN12_" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lN12B" role="3clF47">
          <node concept="3clFbF" id="1pPth$lN1GX" role="3cqZAp">
            <node concept="Xl_RD" id="1pPth$lN1GW" role="3clFbG">
              <property role="Xl_RC" value="highlighting types" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1pPth$lC2U5" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="1pPth$lGafk" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="3uibUv" id="4pWvZ2nkObE" role="1tU5fm">
            <ref role="3uigEE" node="4pWvZ2nk_q3" resolve="TypecheckingHelper.RunSolver" />
          </node>
        </node>
        <node concept="3cqZAl" id="1pPth$lC2U8" role="3clF45" />
        <node concept="3Tm1VV" id="1pPth$lC2U9" role="1B3o_S" />
        <node concept="3clFbS" id="1pPth$lC2Ub" role="3clF47">
          <node concept="1QHqEK" id="1pPth$l_Zme" role="3cqZAp">
            <node concept="1QHqEC" id="1pPth$l_Zmf" role="1QHqEI">
              <node concept="3clFbS" id="1pPth$l_Zmg" role="1bW5cS">
                <node concept="3clFbF" id="1pPth$l_Zmh" role="3cqZAp">
                  <node concept="2YIFZM" id="1pPth$l_Zmi" role="3clFbG">
                    <ref role="37wK5l" node="41ox5VnqukP" resolve="markAll" />
                    <ref role="1Pybhc" node="41ox5VnpFrR" resolve="MarkTypesAndErrors" />
                    <node concept="2OqwBi" id="1pPth$l_Zmj" role="37wK5m">
                      <node concept="Xjq3P" id="1pPth$l_ZlX" role="2Oq$k0" />
                      <node concept="2OwXpG" id="1pPth$lAtmP" role="2OqNvi">
                        <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lH3U7" role="37wK5m">
                      <node concept="2OqwBi" id="1pPth$lH1DC" role="2Oq$k0">
                        <node concept="Xjq3P" id="1pPth$lH1lB" role="2Oq$k0" />
                        <node concept="2OwXpG" id="1pPth$lH2ep" role="2OqNvi">
                          <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1pPth$lH67K" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lGePq" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lGezH" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lGafk" resolve="prev" />
                      </node>
                      <node concept="liA8E" id="4pWvZ2nlhCn" role="2OqNvi">
                        <ref role="37wK5l" node="4pWvZ2nla2K" resolve="getTypes" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lGg56" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lGfNd" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lGafk" resolve="prev" />
                      </node>
                      <node concept="liA8E" id="4pWvZ2nlhUl" role="2OqNvi">
                        <ref role="37wK5l" node="4pWvZ2nla2S" resolve="getErrors" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1pPth$l_Zmr" role="ukAjM">
              <node concept="2OqwBi" id="1pPth$l_Zms" role="2Oq$k0">
                <node concept="Xjq3P" id="1pPth$l_ZlZ" role="2Oq$k0">
                  <ref role="1HBi2w" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                </node>
                <node concept="2OwXpG" id="1pPth$lA8A5" role="2OqNvi">
                  <ref role="2Oxat5" node="1pPth$lA2Na" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1pPth$l_Zmu" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1pPth$lN39R" role="3cqZAp">
            <node concept="1rXfSq" id="1pPth$lN39P" role="3clFbG">
              <ref role="37wK5l" node="1pPth$lA_Tp" resolve="next" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1pPth$lN3QC" role="jymVt" />
      <node concept="3Tm6S6" id="1pPth$lNhhP" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lC2Ed" role="1zkMxy">
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
        <node concept="3uibUv" id="4pWvZ2nkNOw" role="11_B2D">
          <ref role="3uigEE" node="4pWvZ2nk_q3" resolve="TypecheckingHelper.RunSolver" />
        </node>
      </node>
      <node concept="312cEg" id="1pPth$lGU8f" role="jymVt">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3Tm6S6" id="1pPth$lGU8g" role="1B3o_S" />
        <node concept="3uibUv" id="1pPth$lGU8i" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pPth$l_Zes" role="jymVt" />
    <node concept="3Tm1VV" id="1pPth$l_TFW" role="1B3o_S" />
  </node>
  <node concept="tC5Ba" id="1pPth$lSHcc">
    <property role="TrG5h" value="TypecheckingModelGroup" />
    <node concept="ftmFs" id="1pPth$lSHcy" role="ftER_">
      <node concept="tCFHf" id="1pPth$lSHc_" role="ftvYc">
        <ref role="tCJdB" node="1pPth$lPGVY" resolve="CheckTypes" />
      </node>
    </node>
    <node concept="tT9cl" id="1pPth$lSHcw" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
      <ref role="2f8Tey" to="tprs:1gEYwydCqUZ" resolve="check" />
    </node>
  </node>
  <node concept="sE7Ow" id="1pPth$lPGVY">
    <property role="TrG5h" value="CheckTypes" />
    <property role="2uzpH1" value="Check Types" />
    <property role="72QZ$" value="true" />
    <node concept="2XrIbr" id="1pPth$lSW5Z" role="32lrUH">
      <property role="TrG5h" value="roots" />
      <node concept="3clFbS" id="1pPth$lSW60" role="3clF47">
        <node concept="3cpWs8" id="1pPth$lUsEh" role="3cqZAp">
          <node concept="3cpWsn" id="1pPth$lUsEi" role="3cpWs9">
            <property role="TrG5h" value="retval" />
            <node concept="_YKpA" id="1pPth$lUsDW" role="1tU5fm">
              <node concept="3uibUv" id="1pPth$lUsDZ" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="10Nm6u" id="1pPth$lUvDZ" role="33vP2m" />
          </node>
        </node>
        <node concept="1QHqEK" id="1pPth$lUr_w" role="3cqZAp">
          <node concept="1QHqEC" id="1pPth$lUr_y" role="1QHqEI">
            <node concept="3clFbS" id="1pPth$lUr_$" role="1bW5cS">
              <node concept="3clFbJ" id="1pPth$lSgWp" role="3cqZAp">
                <node concept="3clFbS" id="1pPth$lSgWr" role="3clFbx">
                  <node concept="3cpWs8" id="1pPth$lT0fA" role="3cqZAp">
                    <node concept="3cpWsn" id="1pPth$lT0fB" role="3cpWs9">
                      <property role="TrG5h" value="list" />
                      <node concept="_YKpA" id="1pPth$lT1ex" role="1tU5fm">
                        <node concept="3uibUv" id="1pPth$lT1ez" role="_ZDj9">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1pPth$lT0fC" role="33vP2m">
                        <node concept="2WthIp" id="1pPth$lT0fD" role="2Oq$k0" />
                        <node concept="1DTwFV" id="1pPth$lT0fE" role="2OqNvi">
                          <ref role="2WH_rO" node="1pPth$lPLkN" resolve="nodes" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1pPth$lUtSc" role="3cqZAp">
                    <node concept="37vLTI" id="1pPth$lUtSe" role="3clFbG">
                      <node concept="2OqwBi" id="1pPth$lUsEj" role="37vLTx">
                        <node concept="2OqwBi" id="1pPth$lUsEk" role="2Oq$k0">
                          <node concept="37vLTw" id="1pPth$lUsEl" role="2Oq$k0">
                            <ref role="3cqZAo" node="1pPth$lT0fB" resolve="list" />
                          </node>
                          <node concept="3$u5V9" id="1pPth$lUsEm" role="2OqNvi">
                            <node concept="1bVj0M" id="1pPth$lUsEn" role="23t8la">
                              <node concept="3clFbS" id="1pPth$lUsEo" role="1bW5cS">
                                <node concept="3clFbF" id="1pPth$lUsEp" role="3cqZAp">
                                  <node concept="2OqwBi" id="1pPth$lUsEq" role="3clFbG">
                                    <node concept="37vLTw" id="1pPth$lUsEr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1pPth$lUsEt" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="1pPth$lUsEs" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="1pPth$lUsEt" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="1pPth$lUsEu" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="1pPth$lUsEv" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="1pPth$lUtSi" role="37vLTJ">
                        <ref role="3cqZAo" node="1pPth$lUsEi" resolve="retval" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1pPth$lU5Th" role="3clFbw">
                  <node concept="3fqX7Q" id="1pPth$lU6o6" role="3uHU7w">
                    <node concept="2OqwBi" id="1pPth$lU6Sv" role="3fr31v">
                      <node concept="2OqwBi" id="1pPth$lU6oo" role="2Oq$k0">
                        <node concept="2WthIp" id="1pPth$lU6or" role="2Oq$k0" />
                        <node concept="1DTwFV" id="1pPth$lU6ot" role="2OqNvi">
                          <ref role="2WH_rO" node="1pPth$lPLkN" resolve="nodes" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1pPth$lU8An" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1pPth$lShTe" role="3uHU7B">
                    <node concept="2OqwBi" id="1pPth$lShdw" role="3uHU7B">
                      <node concept="2WthIp" id="1pPth$lShdz" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1pPth$lShd_" role="2OqNvi">
                        <ref role="2WH_rO" node="1pPth$lPLkN" resolve="nodes" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="1pPth$lSi6P" role="3uHU7w" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1pPth$lSmmc" role="3cqZAp">
                <node concept="3clFbS" id="1pPth$lSmme" role="3clFbx">
                  <node concept="3cpWs8" id="1pPth$lSusA" role="3cqZAp">
                    <node concept="3cpWsn" id="1pPth$lSusB" role="3cpWs9">
                      <property role="TrG5h" value="list" />
                      <node concept="_YKpA" id="1pPth$lSuP$" role="1tU5fm">
                        <node concept="3uibUv" id="1pPth$lSuPA" role="_ZDj9">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1pPth$lSusC" role="33vP2m">
                        <node concept="2WthIp" id="1pPth$lSusD" role="2Oq$k0" />
                        <node concept="1DTwFV" id="1pPth$lSusE" role="2OqNvi">
                          <ref role="2WH_rO" node="1pPth$lSeX$" resolve="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1pPth$lUztl" role="3cqZAp">
                    <node concept="37vLTI" id="1pPth$lU_AA" role="3clFbG">
                      <node concept="37vLTw" id="1pPth$lUztj" role="37vLTJ">
                        <ref role="3cqZAo" node="1pPth$lUsEi" resolve="retval" />
                      </node>
                      <node concept="2OqwBi" id="1pPth$lU_ZD" role="37vLTx">
                        <node concept="2OqwBi" id="1pPth$lU_ZE" role="2Oq$k0">
                          <node concept="2OqwBi" id="1pPth$lU_ZF" role="2Oq$k0">
                            <node concept="37vLTw" id="1pPth$lU_ZG" role="2Oq$k0">
                              <ref role="3cqZAo" node="1pPth$lSusB" resolve="list" />
                            </node>
                            <node concept="3goQfb" id="1pPth$lU_ZH" role="2OqNvi">
                              <node concept="1bVj0M" id="1pPth$lU_ZI" role="23t8la">
                                <node concept="3clFbS" id="1pPth$lU_ZJ" role="1bW5cS">
                                  <node concept="3clFbF" id="1pPth$lU_ZK" role="3cqZAp">
                                    <node concept="2OqwBi" id="1pPth$lU_ZL" role="3clFbG">
                                      <node concept="37vLTw" id="1pPth$lU_ZM" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1pPth$lU_ZO" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="1pPth$lU_ZN" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getRootNodes():java.lang.Iterable" resolve="getRootNodes" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="1pPth$lU_ZO" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="1pPth$lU_ZP" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zZkjj" id="1pPth$lU_ZQ" role="2OqNvi">
                            <node concept="1bVj0M" id="1pPth$lU_ZR" role="23t8la">
                              <node concept="3clFbS" id="1pPth$lU_ZS" role="1bW5cS">
                                <node concept="3clFbF" id="1pPth$lU_ZT" role="3cqZAp">
                                  <node concept="2OqwBi" id="1pPth$lU_ZU" role="3clFbG">
                                    <node concept="1eOMI4" id="1pPth$lU_ZV" role="2Oq$k0">
                                      <node concept="10QFUN" id="1pPth$lU_ZW" role="1eOMHV">
                                        <node concept="3Tqbb2" id="1pPth$lU_ZX" role="10QFUM" />
                                        <node concept="37vLTw" id="1pPth$lU_ZY" role="10QFUP">
                                          <ref role="3cqZAo" node="1pPth$lUA01" resolve="it" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1mIQ4w" id="1pPth$lU_ZZ" role="2OqNvi">
                                      <node concept="chp4Y" id="1pPth$lUA00" role="cj9EA">
                                        <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="1pPth$lUA01" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="1pPth$lUA02" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="1pPth$lUA03" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1pPth$lU96G" role="3clFbw">
                  <node concept="3fqX7Q" id="1pPth$lU9xX" role="3uHU7w">
                    <node concept="2OqwBi" id="1pPth$lU9Zx" role="3fr31v">
                      <node concept="2OqwBi" id="1pPth$lU9zn" role="2Oq$k0">
                        <node concept="2WthIp" id="1pPth$lU9zq" role="2Oq$k0" />
                        <node concept="1DTwFV" id="1pPth$lU9zs" role="2OqNvi">
                          <ref role="2WH_rO" node="1pPth$lSeX$" resolve="models" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1pPth$lUbBI" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1pPth$lSnnD" role="3uHU7B">
                    <node concept="2OqwBi" id="1pPth$lSmDL" role="3uHU7B">
                      <node concept="2WthIp" id="1pPth$lSmDO" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1pPth$lSmDQ" role="2OqNvi">
                        <ref role="2WH_rO" node="1pPth$lSeX$" resolve="models" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="1pPth$lSnF8" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1pPth$lUwMl" role="ukAjM">
            <node concept="2OqwBi" id="1pPth$lUw7N" role="2Oq$k0">
              <node concept="2WthIp" id="1pPth$lUw7Q" role="2Oq$k0" />
              <node concept="1DTwFV" id="1pPth$lUw7S" role="2OqNvi">
                <ref role="2WH_rO" node="1pPth$lPK8J" resolve="mpsProject" />
              </node>
            </node>
            <node concept="liA8E" id="1pPth$lUxx0" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1pPth$lT8mW" role="3cqZAp">
          <node concept="37vLTw" id="1pPth$lUB7k" role="3cqZAk">
            <ref role="3cqZAo" node="1pPth$lUsEi" resolve="retval" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="1pPth$lSXvg" role="3clF45">
        <node concept="3Tqbb2" id="1pPth$lSXBi" role="_ZDj9" />
      </node>
      <node concept="3Tm6S6" id="1pPth$lSXnZ" role="1B3o_S" />
    </node>
    <node concept="1DS2jV" id="1pPth$lPK8J" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1pPth$lPK8K" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1pPth$lPLkN" role="1NuT2Z">
      <property role="TrG5h" value="nodes" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODES" resolve="NODES" />
    </node>
    <node concept="1DS2jV" id="1pPth$lSeX$" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="tnohg" id="1pPth$lPGVZ" role="tncku">
      <node concept="3clFbS" id="1pPth$lPGW0" role="2VODD2">
        <node concept="3cpWs8" id="1pPth$lQ3rS" role="3cqZAp">
          <node concept="3cpWsn" id="1pPth$lQ3rT" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="1pPth$lQ3rU" role="1tU5fm">
              <ref role="3uigEE" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
            </node>
            <node concept="2ShNRf" id="1pPth$lQ3rV" role="33vP2m">
              <node concept="YeOm9" id="1pPth$lQ3rW" role="2ShVmc">
                <node concept="1Y3b0j" id="1pPth$lQ3rX" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="1pPth$l_TFV" resolve="TypecheckingHelper" />
                  <ref role="37wK5l" node="1pPth$lK1ZL" resolve="TypecheckingHelper" />
                  <node concept="2OqwBi" id="1pPth$lQ3Tg" role="37wK5m">
                    <node concept="2WthIp" id="1pPth$lQ3Tj" role="2Oq$k0">
                      <ref role="32nkFo" node="1pPth$lPGVY" resolve="CheckTypes" />
                    </node>
                    <node concept="1DTwFV" id="1pPth$lQ3Tl" role="2OqNvi">
                      <ref role="2WH_rO" node="1pPth$lPK8J" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="1pPth$lQ3s1" role="1B3o_S" />
                  <node concept="3clFb_" id="1pPth$lQ3s2" role="jymVt">
                    <property role="TrG5h" value="finished" />
                    <property role="1EzhhJ" value="false" />
                    <property role="IEkAT" value="false" />
                    <node concept="37vLTG" id="1pPth$lQ3s3" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1pPth$lQ3s4" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1pPth$lQ3s5" role="3clF45" />
                    <node concept="3Tm1VV" id="1pPth$lQ3s6" role="1B3o_S" />
                    <node concept="3clFbS" id="1pPth$lQ3s7" role="3clF47">
                      <node concept="3clFbF" id="1pPth$lQ3s8" role="3cqZAp">
                        <node concept="2YIFZM" id="1pPth$lQ3s9" role="3clFbG">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
                          <node concept="37vLTw" id="1pPth$lQ3sa" role="37wK5m">
                            <ref role="3cqZAo" node="1pPth$lQ3s3" resolve="message" />
                          </node>
                          <node concept="Xl_RD" id="1pPth$lQ3sb" role="37wK5m">
                            <property role="Xl_RC" value="Check Types" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="1pPth$lQ3sc" role="jymVt">
                    <property role="TrG5h" value="failed" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="37vLTG" id="1pPth$lQ3sd" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1pPth$lQ3se" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1pPth$lQ3sf" role="3clF45" />
                    <node concept="3Tm1VV" id="1pPth$lQ3sg" role="1B3o_S" />
                    <node concept="3clFbS" id="1pPth$lQ3sh" role="3clF47">
                      <node concept="3clFbF" id="1pPth$lQ3si" role="3cqZAp">
                        <node concept="2YIFZM" id="1pPth$lQ3sj" role="3clFbG">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                          <node concept="37vLTw" id="1pPth$lQ3sk" role="37wK5m">
                            <ref role="3cqZAo" node="1pPth$lQ3sd" resolve="message" />
                          </node>
                          <node concept="Xl_RD" id="1pPth$lQ3sl" role="37wK5m">
                            <property role="Xl_RC" value="Check Types" />
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
        <node concept="3clFbH" id="1pPth$lQ3Xg" role="3cqZAp" />
        <node concept="3clFbF" id="1pPth$lQ3Z5" role="3cqZAp">
          <node concept="2OqwBi" id="1pPth$lQ3Z6" role="3clFbG">
            <node concept="37vLTw" id="1pPth$lQ3Z7" role="2Oq$k0">
              <ref role="3cqZAo" node="1pPth$lQ3rT" resolve="helper" />
            </node>
            <node concept="liA8E" id="1pPth$lQ3Z8" role="2OqNvi">
              <ref role="37wK5l" node="1pPth$lNtBJ" resolve="withSteps" />
              <node concept="2OqwBi" id="1pPth$lQ3Z9" role="37wK5m">
                <node concept="37vLTw" id="1pPth$lQ3Za" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pPth$lQ3rT" resolve="helper" />
                </node>
                <node concept="liA8E" id="1pPth$lQ3Zb" role="2OqNvi">
                  <ref role="37wK5l" node="1pPth$lBvOo" resolve="collectRules" />
                  <node concept="2OqwBi" id="1pPth$lTqX5" role="37wK5m">
                    <node concept="2WthIp" id="1pPth$lTqX8" role="2Oq$k0" />
                    <node concept="2XshWL" id="1pPth$lTqXa" role="2OqNvi">
                      <ref role="2WH_rO" node="1pPth$lSW5Z" resolve="roots" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1pPth$lQ3Zg" role="37wK5m">
                <node concept="37vLTw" id="1pPth$lQ3Zh" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pPth$lQ3rT" resolve="helper" />
                </node>
                <node concept="liA8E" id="1pPth$lQ3Zi" role="2OqNvi">
                  <ref role="37wK5l" node="1pPth$lBwLp" resolve="produceHandler" />
                </node>
              </node>
              <node concept="2OqwBi" id="1pPth$lQ3Zj" role="37wK5m">
                <node concept="37vLTw" id="1pPth$lQ3Zk" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pPth$lQ3rT" resolve="helper" />
                </node>
                <node concept="liA8E" id="1pPth$lQ3Zl" role="2OqNvi">
                  <ref role="37wK5l" node="1pPth$lD9_s" resolve="makeHandler" />
                </node>
              </node>
              <node concept="2OqwBi" id="1pPth$lQ3Zm" role="37wK5m">
                <node concept="37vLTw" id="1pPth$lQ3Zn" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pPth$lQ3rT" resolve="helper" />
                </node>
                <node concept="liA8E" id="1pPth$lQ3Zo" role="2OqNvi">
                  <ref role="37wK5l" node="1pPth$lDhou" resolve="runTypechecking" />
                  <node concept="2OqwBi" id="1pPth$lTrod" role="37wK5m">
                    <node concept="2WthIp" id="1pPth$lTrog" role="2Oq$k0" />
                    <node concept="2XshWL" id="1pPth$lTroi" role="2OqNvi">
                      <ref role="2WH_rO" node="1pPth$lSW5Z" resolve="roots" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pPth$lQ3Zz" role="3cqZAp" />
        <node concept="3clFbF" id="1pPth$lQ3Z$" role="3cqZAp">
          <node concept="2OqwBi" id="1pPth$lQ3Z_" role="3clFbG">
            <node concept="37vLTw" id="1pPth$lQ3ZA" role="2Oq$k0">
              <ref role="3cqZAo" node="1pPth$lQ3rT" resolve="helper" />
            </node>
            <node concept="liA8E" id="1pPth$lQ3ZB" role="2OqNvi">
              <ref role="37wK5l" node="1pPth$lNVW2" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="1pPth$lPPgp" role="tmbBb">
      <node concept="3clFbS" id="1pPth$lPPgq" role="2VODD2">
        <node concept="3clFbJ" id="1pPth$lQ22I" role="3cqZAp">
          <node concept="3clFbS" id="1pPth$lQ22K" role="3clFbx">
            <node concept="3cpWs6" id="1pPth$lQ2K5" role="3cqZAp">
              <node concept="3clFbT" id="1pPth$lQ2Ux" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1pPth$lQ2dE" role="3clFbw">
            <node concept="2YIFZM" id="1pPth$lQ2dF" role="2Oq$k0">
              <ref role="1Pybhc" to="hfuk:7yGn3z4MRqM" resolve="IMakeService.INSTANCE" />
              <ref role="37wK5l" to="hfuk:7yGn3z4MRr2" resolve="get" />
            </node>
            <node concept="liA8E" id="1pPth$lQ2dG" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:7yGn3z4N64o" resolve="isSessionActive" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1pPth$lTwPj" role="3cqZAp">
          <node concept="3clFbS" id="1pPth$lTwPl" role="3clFbx">
            <node concept="3cpWs6" id="1pPth$lT$TP" role="3cqZAp">
              <node concept="3clFbT" id="1pPth$lT_eF" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1pPth$lTxrR" role="3clFbw">
            <node concept="2OqwBi" id="1pPth$lTwWD" role="2Oq$k0">
              <node concept="2WthIp" id="1pPth$lTwWG" role="2Oq$k0" />
              <node concept="2XshWL" id="1pPth$lTwWI" role="2OqNvi">
                <ref role="2WH_rO" node="1pPth$lSW5Z" resolve="roots" />
              </node>
            </node>
            <node concept="1v1jN8" id="1pPth$lT$EA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1pPth$lS$S1" role="3cqZAp">
          <node concept="2OqwBi" id="1pPth$lSlo_" role="3clFbG">
            <node concept="2OqwBi" id="1pPth$lTcfM" role="2Oq$k0">
              <node concept="2WthIp" id="1pPth$lTcfP" role="2Oq$k0" />
              <node concept="2XshWL" id="1pPth$lTcfR" role="2OqNvi">
                <ref role="2WH_rO" node="1pPth$lSW5Z" resolve="roots" />
              </node>
            </node>
            <node concept="2HxqBE" id="1pPth$lSloN" role="2OqNvi">
              <node concept="1bVj0M" id="1pPth$lSloO" role="23t8la">
                <node concept="3clFbS" id="1pPth$lSloP" role="1bW5cS">
                  <node concept="3clFbF" id="1pPth$lSloQ" role="3cqZAp">
                    <node concept="2OqwBi" id="1pPth$lSloR" role="3clFbG">
                      <node concept="37vLTw" id="1pPth$lSloS" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lSloV" resolve="it" />
                      </node>
                      <node concept="1mIQ4w" id="1pPth$lSloT" role="2OqNvi">
                        <node concept="chp4Y" id="1pPth$lSloU" role="cj9EA">
                          <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1pPth$lSloV" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1pPth$lSloW" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="1pPth$lPGWm">
    <property role="TrG5h" value="TypecheckingNodeGroup" />
    <node concept="ftmFs" id="1pPth$lPGWJ" role="ftER_">
      <node concept="tCFHf" id="1pPth$lPGWM" role="ftvYc">
        <ref role="tCJdB" node="1pPth$lPGVY" resolve="CheckTypes" />
      </node>
    </node>
    <node concept="tT9cl" id="1pPth$lPGWH" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:14z8V6nEs7K" resolve="debug" />
    </node>
  </node>
</model>

