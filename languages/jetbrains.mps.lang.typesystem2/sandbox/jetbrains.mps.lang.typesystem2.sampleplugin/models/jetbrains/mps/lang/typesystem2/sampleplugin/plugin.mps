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
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
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
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
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
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="lg" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
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
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
        <child id="363746191845183793" name="loopLabel" index="3Wmhwa" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4">
        <child id="9056323058805176516" name="loopLabelReference" index="2mV7Oi" />
      </concept>
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt">
        <child id="9056323058805226429" name="loopLabelReference" index="2mVjTF" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
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
      <concept id="363746191845183785" name="jetbrains.mps.baseLanguage.structure.LoopLabelReference" flags="ng" index="3Wmhwi">
        <reference id="363746191845183786" name="loopLabel" index="3Wmhwh" />
      </concept>
      <concept id="363746191845175146" name="jetbrains.mps.baseLanguage.structure.LoopLabel" flags="ng" index="3Wmmph" />
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
        <ref role="3uigEE" to="i8dg:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
      </node>
      <node concept="3clFbS" id="4boqC9dMlgg" role="3clF47">
        <node concept="3cpWs6" id="4boqC9dMlhp" role="3cqZAp">
          <node concept="2ShNRf" id="4boqC9dMlgm" role="3cqZAk">
            <node concept="1pGfFk" id="4boqC9dMlgn" role="2ShVmc">
              <ref role="37wK5l" to="i8dg:7eGEHDlcF69" resolve="ConstraintRulesHandler" />
              <node concept="3cpWs3" id="4boqC9dNrXk" role="37wK5m">
                <node concept="Xl_RD" id="4boqC9dNs3q" role="3uHU7B">
                  <property role="Xl_RC" value="typechecking" />
                </node>
                <node concept="37vLTw" id="4boqC9dMnMu" role="3uHU7w">
                  <ref role="3cqZAo" node="4boqC9dMnsk" resolve="nameHint" />
                </node>
              </node>
              <node concept="2ShNRf" id="4boqC9dMlgp" role="37wK5m">
                <node concept="YeOm9" id="4boqC9dMlgq" role="2ShVmc">
                  <node concept="1Y3b0j" id="4boqC9dMlgr" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="i8dg:7eGEHDldgwf" resolve="ConstraintRegistry" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="4boqC9dMlgs" role="1B3o_S" />
                    <node concept="3clFb_" id="4boqC9dMlgt" role="jymVt">
                      <property role="TrG5h" value="findConstraint" />
                      <property role="1EzhhJ" value="false" />
                      <node concept="37vLTG" id="4boqC9dMlgu" role="3clF46">
                        <property role="TrG5h" value="symbol" />
                        <node concept="3uibUv" id="4boqC9dMlgv" role="1tU5fm">
                          <ref role="3uigEE" to="i8dg:54i3FxcZHHF" resolve="ConstraintSymbol" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="4boqC9dMlgw" role="3clF45">
                        <ref role="3uigEE" to="qrld:6Kcfpq7Bj7q" resolve="AutoConstraint" />
                      </node>
                      <node concept="3Tm1VV" id="4boqC9dMlgx" role="1B3o_S" />
                      <node concept="3clFbS" id="4boqC9dMlgy" role="3clF47">
                        <node concept="3SKdUt" id="4boqC9dMlgz" role="3cqZAp">
                          <node concept="3SKdUq" id="4boqC9dMlg$" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: implement me" />
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4boqC9dMlg_" role="3cqZAp">
                          <node concept="3clFbS" id="4boqC9dMlgA" role="3clFbx">
                            <node concept="3cpWs6" id="4boqC9dMlgB" role="3cqZAp">
                              <node concept="10M0yZ" id="4boqC9dMlgC" role="3cqZAk">
                                <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                                <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                              </node>
                            </node>
                            <node concept="3clFbH" id="4boqC9dMlgD" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="4boqC9dMlgE" role="3clFbw">
                            <node concept="37vLTw" id="4boqC9dMlgF" role="3uHU7w">
                              <ref role="3cqZAo" node="4boqC9dMlgu" resolve="symbol" />
                            </node>
                            <node concept="10M0yZ" id="4boqC9dMlgG" role="3uHU7B">
                              <ref role="1PxDUh" to="i8dg:54i3FxcZHHF" resolve="ConstraintSymbol" />
                              <ref role="3cqZAo" to="i8dg:54i3FxcZMP2" resolve="UNIFICATION" />
                            </node>
                          </node>
                          <node concept="3eNFk2" id="4boqC9dMlgH" role="3eNLev">
                            <node concept="3clFbC" id="4boqC9dMlgI" role="3eO9$A">
                              <node concept="37vLTw" id="4boqC9dMlgJ" role="3uHU7w">
                                <ref role="3cqZAo" node="4boqC9dMlgu" resolve="symbol" />
                              </node>
                              <node concept="10M0yZ" id="4boqC9dMlgK" role="3uHU7B">
                                <ref role="1PxDUh" to="i8dg:54i3FxcZHHF" resolve="ConstraintSymbol" />
                                <ref role="3cqZAo" to="i8dg:2DKqMqO$zFW" resolve="EQUALS" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="4boqC9dMlgL" role="3eOfB_">
                              <node concept="3cpWs6" id="4boqC9dMlgM" role="3cqZAp">
                                <node concept="10M0yZ" id="4boqC9dMlgN" role="3cqZAk">
                                  <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                                  <ref role="3cqZAo" to="oy3s:3HJTsBn4kQs" resolve="INSTANCE" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="4boqC9dMlgO" role="3cqZAp" />
                            </node>
                          </node>
                          <node concept="3eNFk2" id="4boqC9dMlgP" role="3eNLev">
                            <node concept="3clFbC" id="4boqC9dMlgQ" role="3eO9$A">
                              <node concept="37vLTw" id="4boqC9dMlgR" role="3uHU7w">
                                <ref role="3cqZAo" node="4boqC9dMlgu" resolve="symbol" />
                              </node>
                              <node concept="10M0yZ" id="4boqC9dMlgS" role="3uHU7B">
                                <ref role="1PxDUh" to="i8dg:54i3FxcZHHF" resolve="ConstraintSymbol" />
                                <ref role="3cqZAo" to="i8dg:6infEALBQ$y" resolve="ASSERT" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="4boqC9dMlgT" role="3eOfB_">
                              <node concept="3cpWs6" id="4boqC9dMlgU" role="3cqZAp">
                                <node concept="10M0yZ" id="4boqC9dMlgV" role="3cqZAk">
                                  <ref role="1PxDUh" to="oy3s:6infEALAfer" resolve="AssertBuiltinConstraint" />
                                  <ref role="3cqZAo" to="oy3s:6infEALAhFy" resolve="INSTANCE" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="4boqC9dMlgW" role="3cqZAp" />
                            </node>
                          </node>
                          <node concept="3eNFk2" id="4boqC9dMlgX" role="3eNLev">
                            <node concept="3clFbS" id="4boqC9dMlgY" role="3eOfB_">
                              <node concept="3cpWs6" id="4boqC9dMlgZ" role="3cqZAp">
                                <node concept="10M0yZ" id="4boqC9dMlh0" role="3cqZAk">
                                  <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
                                  <ref role="3cqZAo" to="xq5w:5$WbtTOYJJi" resolve="BOUND" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="4boqC9dMlh1" role="3cqZAp" />
                            </node>
                            <node concept="3clFbC" id="4boqC9dMlh2" role="3eO9$A">
                              <node concept="37vLTw" id="4boqC9dMlh3" role="3uHU7w">
                                <ref role="3cqZAo" node="4boqC9dMlgu" resolve="symbol" />
                              </node>
                              <node concept="10M0yZ" id="4boqC9dMlh4" role="3uHU7B">
                                <ref role="1PxDUh" to="i8dg:54i3FxcZHHF" resolve="ConstraintSymbol" />
                                <ref role="3cqZAo" to="i8dg:54i3FxcZO14" resolve="BOUND" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="4boqC9dMlh5" role="3eNLev">
                            <node concept="3clFbS" id="4boqC9dMlh6" role="3eOfB_">
                              <node concept="3cpWs6" id="4boqC9dMlh7" role="3cqZAp">
                                <node concept="10M0yZ" id="4boqC9dMlh8" role="3cqZAk">
                                  <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
                                  <ref role="3cqZAo" to="xq5w:5$WbtTOYVUg" resolve="FREE" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="4boqC9dMlh9" role="3cqZAp" />
                            </node>
                            <node concept="3clFbC" id="4boqC9dMlha" role="3eO9$A">
                              <node concept="37vLTw" id="4boqC9dMlhb" role="3uHU7w">
                                <ref role="3cqZAo" node="4boqC9dMlgu" resolve="symbol" />
                              </node>
                              <node concept="10M0yZ" id="4boqC9dMlhc" role="3uHU7B">
                                <ref role="1PxDUh" to="i8dg:54i3FxcZHHF" resolve="ConstraintSymbol" />
                                <ref role="3cqZAo" to="i8dg:54i3FxcZNJp" resolve="FREE" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="4boqC9dMlhd" role="9aQIa">
                            <node concept="3clFbS" id="4boqC9dMlhe" role="9aQI4">
                              <node concept="YS8fn" id="4boqC9dMlhf" role="3cqZAp">
                                <node concept="2ShNRf" id="4boqC9dMlhg" role="YScLw">
                                  <node concept="1pGfFk" id="4boqC9dMlhh" role="2ShVmc">
                                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                                    <node concept="3cpWs3" id="4boqC9dMlhi" role="37wK5m">
                                      <node concept="Xl_RD" id="4boqC9dMlhj" role="3uHU7w">
                                        <property role="Xl_RC" value="'" />
                                      </node>
                                      <node concept="3cpWs3" id="4boqC9dMlhk" role="3uHU7B">
                                        <node concept="Xl_RD" id="4boqC9dMlhl" role="3uHU7B">
                                          <property role="Xl_RC" value="uknown constraint symbol '" />
                                        </node>
                                        <node concept="37vLTw" id="4boqC9dMlhm" role="3uHU7w">
                                          <ref role="3cqZAo" node="4boqC9dMlgu" resolve="symbol" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="4boqC9dMlhn" role="3cqZAp" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4boqC9dMlho" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
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
          <ref role="3uigEE" to="i8dg:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
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
          <ref role="3uigEE" to="i8dg:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
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
                <node concept="Xl_RD" id="7nkyKX7mVqV" role="37wK5m">
                  <property role="Xl_RC" value="main" />
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
              <node concept="2YIFZM" id="7nkyKX7sWMr" role="37wK5m">
                <ref role="37wK5l" to="i8dg:7nkyKX7sUU5" resolve="singleton" />
                <ref role="1Pybhc" to="i8dg:7eGEHDlc$f7" resolve="UserConstraint" />
                <node concept="Xl_RD" id="7nkyKX7sWT3" role="37wK5m">
                  <property role="Xl_RC" value="main" />
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
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
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
  </node>
  <node concept="tC5Ba" id="2Rw7mr8T72C">
    <property role="TrG5h" value="TypecheckingEditorGroup" />
    <node concept="ftmFs" id="2Rw7mr8T79R" role="ftER_">
      <node concept="tCFHf" id="2Rw7mr8T7aK" role="ftvYc">
        <ref role="tCJdB" node="3Qp4N06byoz" resolve="MarkTypes" />
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
              <node concept="2OqwBi" id="7dgRGU4oBBg" role="25WWJ7">
                <node concept="2OqwBi" id="7dgRGU4oA9t" role="2Oq$k0">
                  <node concept="2YIFZM" id="7dgRGU4oztL" role="2Oq$k0">
                    <ref role="37wK5l" to="i348:4OKkcnfu_$d" resolve="typeOf" />
                    <ref role="1Pybhc" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
                    <node concept="2ShNRf" id="7dgRGU4o$_U" role="37wK5m">
                      <node concept="1pGfFk" id="7dgRGU4o_NJ" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7dgRGU4oA4h" role="37wK5m">
                      <node concept="1pGfFk" id="7dgRGU4oA4g" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7dgRGU4oAmR" role="2OqNvi">
                    <ref role="37wK5l" to="i8dg:7eGEHDlc$8G" resolve="symbol" />
                  </node>
                </node>
                <node concept="liA8E" id="7dgRGU4oBJU" role="2OqNvi">
                  <ref role="37wK5l" to="i8dg:54i3FxcZMvt" resolve="symbol" />
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
        <node concept="3clFbH" id="41ox5VnkhLD" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VnkhLE" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnkhLF" role="3cpWs9">
            <property role="TrG5h" value="sample" />
            <node concept="3uibUv" id="41ox5VnkhLG" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2YIFZM" id="1zN1RIkMMBr" role="33vP2m">
              <ref role="37wK5l" to="i348:4OKkcnfu_xq" resolve="anchorAtom" />
              <ref role="1Pybhc" to="i348:4OKkcnfu_xo" resolve="AnchorUtil" />
              <node concept="37vLTw" id="1zN1RIkMMBs" role="37wK5m">
                <ref role="3cqZAo" node="1zN1RIkMJJI" resolve="root" />
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
        <node concept="SfApY" id="41ox5Vnkj0Z" role="3cqZAp">
          <node concept="3clFbS" id="41ox5Vnkj10" role="SfCbr">
            <node concept="3cpWs8" id="41ox5Vnki5M" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5Vnki5N" role="3cpWs9">
                <property role="TrG5h" value="handlerCls" />
                <node concept="3uibUv" id="41ox5Vnki5O" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3uibUv" id="41ox5Vnl$GR" role="11_B2D">
                    <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
                  </node>
                </node>
                <node concept="10QFUN" id="41ox5Vnl_aU" role="33vP2m">
                  <node concept="3uibUv" id="41ox5Vnl_aJ" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3uibUv" id="41ox5Vnl_aK" role="11_B2D">
                      <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="41ox5Vnl_aL" role="10QFUP">
                    <node concept="1eOMI4" id="41ox5Vnl_aM" role="2Oq$k0">
                      <node concept="10QFUN" id="41ox5Vnl_aN" role="1eOMHV">
                        <node concept="37vLTw" id="41ox5Vnl_aO" role="10QFUP">
                          <ref role="3cqZAo" node="41ox5VnkhLz" resolve="handlerMod" />
                        </node>
                        <node concept="3uibUv" id="41ox5Vnl_aP" role="10QFUM">
                          <ref role="3uigEE" to="j8aq:~ReloadableModuleBase" resolve="ReloadableModuleBase" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="41ox5Vnl_aQ" role="2OqNvi">
                      <ref role="37wK5l" to="j8aq:~ReloadableModuleBase.getClass(java.lang.String):java.lang.Class" resolve="getClass" />
                      <node concept="2YIFZM" id="41ox5Vnl_aR" role="37wK5m">
                        <ref role="37wK5l" to="18ew:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
                        <ref role="1Pybhc" to="18ew:~JavaNameUtil" resolve="JavaNameUtil" />
                        <node concept="37vLTw" id="41ox5Vnl_aS" role="37wK5m">
                          <ref role="3cqZAo" node="41ox5VnkhLv" resolve="handlerMdl" />
                        </node>
                        <node concept="3cpWs3" id="4boqC9dOGeU" role="37wK5m">
                          <node concept="Xl_RD" id="4boqC9dOGjo" role="3uHU7w">
                            <property role="Xl_RC" value="Handler" />
                          </node>
                          <node concept="3cpWs3" id="4boqC9dOaGS" role="3uHU7B">
                            <node concept="Xl_RD" id="41ox5Vnl_aT" role="3uHU7B">
                              <property role="Xl_RC" value="Typechecking" />
                            </node>
                            <node concept="37vLTw" id="4boqC9dOdDe" role="3uHU7w">
                              <ref role="3cqZAo" node="4boqC9dOcYh" resolve="name" />
                            </node>
                          </node>
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
                  <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
                </node>
                <node concept="1rXfSq" id="41ox5Vnmwcd" role="33vP2m">
                  <ref role="37wK5l" node="41ox5Vnkbyp" resolve="callTellCheck" />
                  <node concept="37vLTw" id="41ox5Vnmwce" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5Vnki5N" resolve="handlerCls" />
                  </node>
                  <node concept="37vLTw" id="4i4XGQZnwa3" role="37wK5m">
                    <ref role="3cqZAo" node="4i4XGQZnvKs" resolve="tracer" />
                  </node>
                  <node concept="37vLTw" id="24Vro6cQL47" role="37wK5m">
                    <ref role="3cqZAo" node="24Vro6cQKgF" resolve="cstracer" />
                  </node>
                  <node concept="37vLTw" id="41ox5Vnmwcf" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5VnkhLF" resolve="sample" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnmKCw" role="3cqZAp" />
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
            <node concept="3clFbH" id="7dgRGU4oCrm" role="3cqZAp" />
            <node concept="3cpWs8" id="7dgRGU4oLq0" role="3cqZAp">
              <node concept="3cpWsn" id="7dgRGU4oLq3" role="3cpWs9">
                <property role="TrG5h" value="remainingOk" />
                <node concept="10P_77" id="7dgRGU4oLpY" role="1tU5fm" />
                <node concept="3clFbT" id="7dgRGU4oLWC" role="33vP2m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7FtwPOZH5ZC" role="3cqZAp">
              <node concept="3clFbS" id="7FtwPOZH5ZD" role="2LFqv$">
                <node concept="3clFbJ" id="7dgRGU4oMPa" role="3cqZAp">
                  <node concept="2OqwBi" id="7nkyKX7hbMh" role="3clFbw">
                    <node concept="37vLTw" id="7nkyKX7hbMi" role="2Oq$k0">
                      <ref role="3cqZAo" node="7dgRGU4oEID" resolve="remainingAllowed" />
                    </node>
                    <node concept="3JPx81" id="7nkyKX7hbMj" role="2OqNvi">
                      <node concept="2OqwBi" id="7nkyKX7hbMk" role="25WWJ7">
                        <node concept="37vLTw" id="7nkyKX7hbMl" role="2Oq$k0">
                          <ref role="3cqZAo" node="7FtwPOZH60R" resolve="c" />
                        </node>
                        <node concept="liA8E" id="7nkyKX7hbMm" role="2OqNvi">
                          <ref role="37wK5l" to="eifs:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
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
                          <node concept="37vLTw" id="7nkyKX7hbl3" role="37wK5m">
                            <ref role="3cqZAo" node="7FtwPOZH60R" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
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
                            <node concept="37vLTw" id="7nkyKX7hbp$" role="37wK5m">
                              <ref role="3cqZAo" node="7FtwPOZH60R" resolve="c" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7FtwPOZH60R" role="1Duv9x">
                <property role="TrG5h" value="c" />
                <node concept="3uibUv" id="7FtwPOZH60S" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
                </node>
              </node>
              <node concept="37vLTw" id="7FtwPOZH60T" role="1DdaDG">
                <ref role="3cqZAo" node="41ox5Vnmwcb" resolve="handler" />
              </node>
            </node>
            <node concept="3clFbH" id="1CgWc1Tkrhh" role="3cqZAp" />
            <node concept="3cpWs8" id="6HT7BWBUcvI" role="3cqZAp">
              <node concept="3cpWsn" id="6HT7BWBUcvJ" role="3cpWs9">
                <property role="TrG5h" value="formatter" />
                <node concept="3uibUv" id="6HT7BWBUcvK" role="1tU5fm">
                  <ref role="3uigEE" node="6HT7BWBSFOV" resolve="RunTypecheckingRules.TypeFormatter" />
                </node>
                <node concept="2ShNRf" id="6HT7BWBUcvL" role="33vP2m">
                  <node concept="1pGfFk" id="6HT7BWBUcvM" role="2ShVmc">
                    <ref role="37wK5l" node="6HT7BWBSKlD" resolve="RunTypecheckingRules.TypeFormatter" />
                    <node concept="37vLTw" id="6HT7BWBUcvY" role="37wK5m">
                      <ref role="3cqZAo" node="41ox5Vnmwcb" resolve="handler" />
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
            <node concept="3cpWs6" id="7dgRGU4prm1" role="3cqZAp">
              <node concept="37vLTw" id="7dgRGU4psnb" role="3cqZAk">
                <ref role="3cqZAo" node="7dgRGU4oLq3" resolve="remainingOk" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="41ox5Vnkj0R" role="TEbGg">
            <node concept="3clFbS" id="41ox5Vnkj0S" role="TDEfX">
              <node concept="YS8fn" id="41ox5VnktR8" role="3cqZAp">
                <node concept="2ShNRf" id="41ox5VnktRu" role="YScLw">
                  <node concept="1pGfFk" id="41ox5VnkEqN" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
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
                <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
              </node>
            </node>
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
    <node concept="2tJIrI" id="3gJBs5syXew" role="jymVt" />
    <node concept="2YIFZL" id="41ox5Vnkbyp" role="jymVt">
      <property role="TrG5h" value="callTellCheck" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="41ox5VndW1m" role="3clF47">
        <node concept="3clFbH" id="41ox5Vne48y" role="3cqZAp" />
        <node concept="3cpWs8" id="4xBopTzsdV_" role="3cqZAp">
          <node concept="3cpWsn" id="4xBopTzsdVA" role="3cpWs9">
            <property role="TrG5h" value="newSession" />
            <node concept="3uibUv" id="4xBopTzsdVr" role="1tU5fm">
              <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
            </node>
            <node concept="2OqwBi" id="4xBopTzsdVB" role="33vP2m">
              <node concept="2OqwBi" id="24Vro6cQH8W" role="2Oq$k0">
                <node concept="2YIFZM" id="4xBopTzsdVC" role="2Oq$k0">
                  <ref role="37wK5l" to="qrld:6Kcfpq7BWKD" resolve="with" />
                  <ref role="1Pybhc" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
                  <node concept="10M0yZ" id="4xBopTzsdVD" role="37wK5m">
                    <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                  </node>
                  <node concept="10M0yZ" id="4xBopTzsdVE" role="37wK5m">
                    <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                    <ref role="3cqZAo" to="oy3s:3HJTsBn4kQs" resolve="INSTANCE" />
                  </node>
                  <node concept="10M0yZ" id="4xBopTzsdVF" role="37wK5m">
                    <ref role="3cqZAo" to="oy3s:6infEALAhFy" resolve="INSTANCE" />
                    <ref role="1PxDUh" to="oy3s:6infEALAfer" resolve="AssertBuiltinConstraint" />
                  </node>
                  <node concept="10M0yZ" id="5i7izgNi7KH" role="37wK5m">
                    <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
                    <ref role="3cqZAo" to="xq5w:5$WbtTOYJJi" resolve="BOUND" />
                  </node>
                  <node concept="10M0yZ" id="5i7izgNincb" role="37wK5m">
                    <ref role="1PxDUh" to="xq5w:5$WbtTOYoMb" resolve="LogicalBuiltinConstraint" />
                    <ref role="3cqZAo" to="xq5w:5$WbtTOYVUg" resolve="FREE" />
                  </node>
                </node>
                <node concept="liA8E" id="24Vro6cQHqz" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:24Vro6cQjzH" resolve="withTracer" />
                  <node concept="37vLTw" id="24Vro6cQHSh" role="37wK5m">
                    <ref role="3cqZAo" node="24Vro6cQG1d" resolve="cstracer" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4xBopTzsdVG" role="2OqNvi">
                <ref role="37wK5l" to="qrld:6Kcfpq7Cgrc" resolve="newSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xBopTzsckb" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VneSgB" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VneSgC" role="3cpWs9">
            <property role="TrG5h" value="exception" />
            <node concept="3uibUv" id="41ox5VneSyK" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="41ox5Vne9Fa" role="3cqZAp">
          <node concept="3clFbS" id="41ox5Vne9Fb" role="SfCbr">
            <node concept="3cpWs8" id="41ox5Vneaba" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5Vneabb" role="3cpWs9">
                <property role="TrG5h" value="handler" />
                <node concept="3uibUv" id="41ox5VneaaN" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
                </node>
                <node concept="1rXfSq" id="41ox5Vneabc" role="33vP2m">
                  <ref role="37wK5l" node="41ox5Vnkagy" resolve="createHandler" />
                  <node concept="37vLTw" id="41ox5Vneabd" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5Vne69N" resolve="handlerCls" />
                  </node>
                  <node concept="37vLTw" id="4xBopTzsfuQ" role="37wK5m">
                    <ref role="3cqZAo" node="4xBopTzsdVA" resolve="newSession" />
                  </node>
                  <node concept="3clFbT" id="41ox5Vneabi" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VndSdC" role="3cqZAp" />
            <node concept="3clFbF" id="4i4XGQZnpg9" role="3cqZAp">
              <node concept="2OqwBi" id="4i4XGQZnpZ_" role="3clFbG">
                <node concept="37vLTw" id="4i4XGQZnpg7" role="2Oq$k0">
                  <ref role="3cqZAo" node="41ox5Vneabb" resolve="handler" />
                </node>
                <node concept="liA8E" id="4i4XGQZnsYP" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Handler.setTracer(runtime.debug.Tracer):void" resolve="setTracer" />
                  <node concept="37vLTw" id="4i4XGQZnv0r" role="37wK5m">
                    <ref role="3cqZAo" node="4i4XGQZntw9" resolve="tracer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4i4XGQZnoMX" role="3cqZAp" />
            <node concept="3cpWs8" id="41ox5VndUbJ" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5VndUbK" role="3cpWs9">
                <property role="TrG5h" value="tellMeth" />
                <node concept="3uibUv" id="41ox5VndUbE" role="1tU5fm">
                  <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                </node>
                <node concept="2OqwBi" id="41ox5VndUbL" role="33vP2m">
                  <node concept="37vLTw" id="41ox5VndUbM" role="2Oq$k0">
                    <ref role="3cqZAo" node="41ox5Vne69N" resolve="handlerCls" />
                  </node>
                  <node concept="liA8E" id="41ox5VndUbN" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getMethod(java.lang.String,java.lang.Class...):java.lang.reflect.Method" resolve="getMethod" />
                    <node concept="Xl_RD" id="41ox5VndUbO" role="37wK5m">
                      <property role="Xl_RC" value="tellMain" />
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
                  <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...):java.lang.Object" resolve="invoke" />
                  <node concept="37vLTw" id="41ox5VndUYO" role="37wK5m">
                    <ref role="3cqZAo" node="41ox5Vneabb" resolve="handler" />
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
                      <ref role="37wK5l" to="t6h5:~InvocationTargetException.getCause():java.lang.Throwable" resolve="getCause" />
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
                <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
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
              <node concept="3uibUv" id="4XdxyAO6z9O" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xBopTzsbXv" role="3cqZAp" />
        <node concept="3clFbJ" id="1zN1RIlg4ZW" role="3cqZAp">
          <node concept="3clFbS" id="1zN1RIlg4ZY" role="3clFbx">
            <node concept="YS8fn" id="1zN1RIlg5pb" role="3cqZAp">
              <node concept="10QFUN" id="1zN1RIlgapt" role="YScLw">
                <node concept="37vLTw" id="1zN1RIlgaps" role="10QFUP">
                  <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
                </node>
                <node concept="3uibUv" id="1zN1RIlgaxg" role="10QFUM">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1zN1RIlg5d9" role="3clFbw">
            <node concept="3uibUv" id="1zN1RIlg5l0" role="2ZW6by">
              <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
            </node>
            <node concept="37vLTw" id="1zN1RIlg51O" role="2ZW6bz">
              <ref role="3cqZAo" node="41ox5VneSgC" resolve="exception" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="41ox5Vnmt_x" role="3cqZAp">
          <node concept="2ShNRf" id="41ox5VnmtWl" role="YScLw">
            <node concept="1pGfFk" id="41ox5Vnmv6s" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
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
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3uibUv" id="41ox5Vne7FW" role="11_B2D">
            <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4i4XGQZntw9" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="4i4XGQZntYc" role="1tU5fm">
          <ref role="3uigEE" to="iawt:~Tracer" resolve="Tracer" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQG1d" role="3clF46">
        <property role="TrG5h" value="cstracer" />
        <node concept="3uibUv" id="24Vro6cQGEp" role="1tU5fm">
          <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VnecVQ" role="3clF46">
        <property role="TrG5h" value="atomToCheck" />
        <node concept="3uibUv" id="41ox5Vned96" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3uibUv" id="41ox5VneEwq" role="3clF45">
        <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
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
        <node concept="3clFbH" id="4XdxyAO6yLG" role="3cqZAp" />
        <node concept="3cpWs8" id="4XdxyAO6yvK" role="3cqZAp">
          <node concept="3cpWsn" id="4XdxyAO6yvL" role="3cpWs9">
            <property role="TrG5h" value="ctor" />
            <node concept="3uibUv" id="4XdxyAO6yvh" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Constructor" resolve="Constructor" />
              <node concept="3qTvmN" id="4XdxyAO6yvk" role="11_B2D" />
            </node>
            <node concept="10Nm6u" id="4XdxyAO9XfE" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="4XdxyAO9ZPa" role="3cqZAp">
          <node concept="3clFbS" id="4XdxyAO9ZPc" role="2LFqv$">
            <node concept="1DcWWT" id="4XdxyAOa3da" role="3cqZAp">
              <node concept="3clFbS" id="4XdxyAOa3dc" role="2LFqv$">
                <node concept="3clFbJ" id="4XdxyAOa3We" role="3cqZAp">
                  <node concept="3clFbS" id="4XdxyAOa3Wg" role="3clFbx">
                    <node concept="3N13vt" id="4XdxyAOb0vG" role="3cqZAp">
                      <node concept="3Wmhwi" id="4XdxyAObLGs" role="2mVjTF">
                        <ref role="3Wmhwh" node="4XdxyAObKLx" resolve="withCtors" />
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="4XdxyAOaYyO" role="3clFbw">
                    <node concept="2OqwBi" id="4XdxyAOaYOf" role="3uHU7w">
                      <node concept="3VsKOn" id="4XdxyAOaYFW" role="2Oq$k0">
                        <ref role="3VsUkX" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
                      </node>
                      <node concept="liA8E" id="4XdxyAOb0ev" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                        <node concept="37vLTw" id="4XdxyAOb0lS" role="37wK5m">
                          <ref role="3cqZAo" node="4XdxyAOa3dd" resolve="pt" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4XdxyAOaWTj" role="3uHU7B">
                      <node concept="3VsKOn" id="4XdxyAOaWDk" role="2Oq$k0">
                        <ref role="3VsUkX" to="iawt:~Tracer" resolve="Tracer" />
                      </node>
                      <node concept="liA8E" id="4XdxyAOaYgO" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                        <node concept="37vLTw" id="4XdxyAOaYnd" role="37wK5m">
                          <ref role="3cqZAo" node="4XdxyAOa3dd" resolve="pt" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4XdxyAOa3dd" role="1Duv9x">
                <property role="TrG5h" value="pt" />
                <node concept="3uibUv" id="4XdxyAOa3p6" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3qTvmN" id="4XdxyAOa3$j" role="11_B2D" />
                </node>
              </node>
              <node concept="2OqwBi" id="4XdxyAOa2bH" role="1DdaDG">
                <node concept="37vLTw" id="4XdxyAOa26$" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XdxyAO9ZPd" resolve="ct" />
                </node>
                <node concept="liA8E" id="4XdxyAOa2Pz" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Constructor.getParameterTypes():java.lang.Class[]" resolve="getParameterTypes" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4XdxyAOb0ER" role="3cqZAp">
              <node concept="37vLTI" id="4XdxyAOb0Qb" role="3clFbG">
                <node concept="37vLTw" id="4XdxyAOb0Tx" role="37vLTx">
                  <ref role="3cqZAo" node="4XdxyAO9ZPd" resolve="ct" />
                </node>
                <node concept="37vLTw" id="4XdxyAOb0EP" role="37vLTJ">
                  <ref role="3cqZAo" node="4XdxyAO6yvL" resolve="ctor" />
                </node>
              </node>
            </node>
            <node concept="3zACq4" id="4XdxyAOb14F" role="3cqZAp">
              <node concept="3Wmhwi" id="4XdxyAObM8M" role="2mV7Oi">
                <ref role="3Wmhwh" node="4XdxyAObKLx" resolve="withCtors" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4XdxyAO9ZPd" role="1Duv9x">
            <property role="TrG5h" value="ct" />
            <node concept="3uibUv" id="4XdxyAOa0vg" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Constructor" resolve="Constructor" />
              <node concept="3qTvmN" id="4XdxyAOa0Ei" role="11_B2D" />
            </node>
          </node>
          <node concept="2OqwBi" id="4XdxyAOa1q1" role="1DdaDG">
            <node concept="37vLTw" id="4XdxyAOa1q2" role="2Oq$k0">
              <ref role="3cqZAo" node="41ox5VndDLn" resolve="handlerCls" />
            </node>
            <node concept="liA8E" id="4XdxyAOa1q3" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getConstructors():java.lang.reflect.Constructor[]" resolve="getConstructors" />
            </node>
          </node>
          <node concept="3Wmmph" id="4XdxyAObKLx" role="3Wmhwa">
            <property role="TrG5h" value="withCtors" />
          </node>
        </node>
        <node concept="3clFbJ" id="4XdxyAOb2hj" role="3cqZAp">
          <node concept="3clFbS" id="4XdxyAOb2hl" role="3clFbx">
            <node concept="YS8fn" id="4XdxyAOb3hM" role="3cqZAp">
              <node concept="2ShNRf" id="4XdxyAOb3iN" role="YScLw">
                <node concept="1pGfFk" id="4XdxyAOb49p" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~NoSuchMethodException.&lt;init&gt;(java.lang.String)" resolve="NoSuchMethodException" />
                  <node concept="3cpWs3" id="4XdxyAOb4WB" role="37wK5m">
                    <node concept="37vLTw" id="4XdxyAOb4Y7" role="3uHU7w">
                      <ref role="3cqZAo" node="41ox5VndDLn" resolve="handlerCls" />
                    </node>
                    <node concept="Xl_RD" id="4XdxyAOb4b9" role="3uHU7B">
                      <property role="Xl_RC" value="constructor not found: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4XdxyAOb2Xa" role="3clFbw">
            <node concept="10Nm6u" id="4XdxyAOb38$" role="3uHU7w" />
            <node concept="37vLTw" id="4XdxyAOb2F_" role="3uHU7B">
              <ref role="3cqZAo" node="4XdxyAO6yvL" resolve="ctor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4XdxyAOb1Ma" role="3cqZAp" />
        <node concept="3cpWs8" id="4XdxyAO8f9X" role="3cqZAp">
          <node concept="3cpWsn" id="4XdxyAO8f9Y" role="3cpWs9">
            <property role="TrG5h" value="declParams" />
            <node concept="10Q1$e" id="4XdxyAO8f9p" role="1tU5fm">
              <node concept="3uibUv" id="4XdxyAO8f9w" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                <node concept="3qTvmN" id="4XdxyAO8f9x" role="11_B2D" />
              </node>
            </node>
            <node concept="2OqwBi" id="4XdxyAO8f9Z" role="33vP2m">
              <node concept="37vLTw" id="4XdxyAO8fa0" role="2Oq$k0">
                <ref role="3cqZAo" node="4XdxyAO6yvL" resolve="ctor" />
              </node>
              <node concept="liA8E" id="4XdxyAO8fa1" role="2OqNvi">
                <ref role="37wK5l" to="t6h5:~Constructor.getParameterTypes():java.lang.Class[]" resolve="getParameterTypes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4XdxyAO7SpN" role="3cqZAp">
          <node concept="3cpWsn" id="4XdxyAO7SpO" role="3cpWs9">
            <property role="TrG5h" value="ctorParams" />
            <node concept="10Q1$e" id="4XdxyAO7Spm" role="1tU5fm">
              <node concept="3uibUv" id="4XdxyAO7Spp" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="4XdxyAO7SpP" role="33vP2m">
              <node concept="3$_iS1" id="4XdxyAO7SpQ" role="2ShVmc">
                <node concept="3$GHV9" id="4XdxyAO7SpR" role="3$GQph">
                  <node concept="2OqwBi" id="4XdxyAO8gFi" role="3$I4v7">
                    <node concept="37vLTw" id="4XdxyAO8gy1" role="2Oq$k0">
                      <ref role="3cqZAo" node="4XdxyAO8f9Y" resolve="declParams" />
                    </node>
                    <node concept="1Rwk04" id="4XdxyAO8iaf" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="4XdxyAO7SpT" role="3$_nBY">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4XdxyAO8crx" role="3cqZAp" />
        <node concept="1Dw8fO" id="4XdxyAO7SVV" role="3cqZAp">
          <node concept="3clFbS" id="4XdxyAO7SVX" role="2LFqv$">
            <node concept="3cpWs8" id="4XdxyAO8bB$" role="3cqZAp">
              <node concept="3cpWsn" id="4XdxyAO8bB_" role="3cpWs9">
                <property role="TrG5h" value="autoConstraint" />
                <node concept="3uibUv" id="4xBopTzsiwb" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:6Kcfpq7Bj7q" resolve="AutoConstraint" />
                </node>
                <node concept="2OqwBi" id="4xBopTzsMVj" role="33vP2m">
                  <node concept="37vLTw" id="4xBopTzsMSX" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xBopTzsgb1" resolve="computingSession" />
                  </node>
                  <node concept="liA8E" id="4xBopTzsN2B" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:4xBopTzsxxs" resolve="lookupAutoConstraint" />
                    <node concept="AH0OO" id="4xBopTzsNgy" role="37wK5m">
                      <node concept="37vLTw" id="4xBopTzsNjV" role="AHEQo">
                        <ref role="3cqZAo" node="4XdxyAO7SVY" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="4xBopTzsN7c" role="AHHXb">
                        <ref role="3cqZAo" node="4XdxyAO8f9Y" resolve="declParams" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4XdxyAO7UB2" role="3cqZAp">
              <node concept="37vLTI" id="4XdxyAO7UHq" role="3clFbG">
                <node concept="AH0OO" id="4XdxyAO7UEq" role="37vLTJ">
                  <node concept="37vLTw" id="4XdxyAO7UFS" role="AHEQo">
                    <ref role="3cqZAo" node="4XdxyAO7SVY" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="4XdxyAO7UB0" role="AHHXb">
                    <ref role="3cqZAo" node="4XdxyAO7SpO" resolve="ctorParams" />
                  </node>
                </node>
                <node concept="3K4zz7" id="4XdxyAO8o42" role="37vLTx">
                  <node concept="10Nm6u" id="4XdxyAO8o9s" role="3K4GZi" />
                  <node concept="3y3z36" id="4XdxyAO8o0C" role="3K4Cdx">
                    <node concept="10Nm6u" id="4XdxyAO8o2k" role="3uHU7w" />
                    <node concept="37vLTw" id="4XdxyAO8nYM" role="3uHU7B">
                      <ref role="3cqZAo" node="4XdxyAO8bB_" resolve="autoConstraint" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4XdxyAO7VHl" role="3K4E3e">
                    <node concept="37vLTw" id="4XdxyAO8bBD" role="2Oq$k0">
                      <ref role="3cqZAo" node="4XdxyAO8bB_" resolve="autoConstraint" />
                    </node>
                    <node concept="liA8E" id="4XdxyAO7VY2" role="2OqNvi">
                      <ref role="37wK5l" to="qrld:6Kcfpq7Bj9q" resolve="solver" />
                      <node concept="37vLTw" id="4xBopTzsiCA" role="37wK5m">
                        <ref role="3cqZAo" node="4xBopTzsgb1" resolve="computingSession" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4XdxyAO7SVY" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4XdxyAO7Tb0" role="1tU5fm" />
            <node concept="3cmrfG" id="4XdxyAO7Tdl" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="4XdxyAO7T_V" role="1Dwp0S">
            <node concept="37vLTw" id="4XdxyAO7Tem" role="3uHU7B">
              <ref role="3cqZAo" node="4XdxyAO7SVY" resolve="i" />
            </node>
            <node concept="2OqwBi" id="4XdxyAO8ibr" role="3uHU7w">
              <node concept="37vLTw" id="4XdxyAO8ibs" role="2Oq$k0">
                <ref role="3cqZAo" node="4XdxyAO8f9Y" resolve="declParams" />
              </node>
              <node concept="1Rwk04" id="4XdxyAO8ibt" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="4XdxyAO7TZI" role="1Dwrff">
            <node concept="37vLTw" id="4XdxyAO7TZK" role="2$L3a6">
              <ref role="3cqZAo" node="4XdxyAO7SVY" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4XdxyAO8oCZ" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VndPls" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VndPlt" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="41ox5VndPlu" role="1tU5fm">
              <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
            </node>
            <node concept="10QFUN" id="4XdxyAO9eEk" role="33vP2m">
              <node concept="3uibUv" id="4XdxyAO9eEf" role="10QFUM">
                <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
              </node>
              <node concept="2OqwBi" id="4XdxyAO9eEg" role="10QFUP">
                <node concept="37vLTw" id="4XdxyAO9eEh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XdxyAO6yvL" resolve="ctor" />
                </node>
                <node concept="liA8E" id="4XdxyAO9eEi" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...):java.lang.Object" resolve="newInstance" />
                  <node concept="37vLTw" id="4XdxyAO9eEj" role="37wK5m">
                    <ref role="3cqZAo" node="4XdxyAO7SpO" resolve="ctorParams" />
                  </node>
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
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3uibUv" id="41ox5Vne7Xi" role="11_B2D">
            <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTzsgb1" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="4xBopTzsgXB" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="41ox5VndQtV" role="3clF46">
        <property role="TrG5h" value="attachTracer" />
        <node concept="10P_77" id="41ox5VndQOG" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="41ox5VndY2j" role="3clF45">
        <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
      </node>
      <node concept="3uibUv" id="41ox5Vnefex" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~NoSuchMethodException" resolve="NoSuchMethodException" />
      </node>
      <node concept="3uibUv" id="41ox5Vnefz5" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InstantiationException" resolve="InstantiationException" />
      </node>
      <node concept="3uibUv" id="41ox5Vnegr7" role="Sfmx6">
        <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
      </node>
      <node concept="3uibUv" id="41ox5VnegXa" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
      </node>
      <node concept="3Tm6S6" id="41ox5VndXtW" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="41ox5Vnk7ss" role="jymVt" />
    <node concept="312cEu" id="6HT7BWBSFOV" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TypeFormatter" />
      <node concept="312cEg" id="6HT7BWBSIh7" role="jymVt">
        <property role="TrG5h" value="handler" />
        <node concept="3Tm6S6" id="6HT7BWBSIh8" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBSIRP" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="312cEg" id="6HT7BWBSGym" role="jymVt">
        <property role="TrG5h" value="varnames" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="6HT7BWBSGyn" role="1B3o_S" />
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
        <node concept="3Tm6S6" id="6HT7BWBSGyt" role="1B3o_S" />
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
      <node concept="2tJIrI" id="6HT7BWBSGy6" role="jymVt" />
      <node concept="3clFbW" id="6HT7BWBSKlD" role="jymVt">
        <node concept="3cqZAl" id="6HT7BWBSKlF" role="3clF45" />
        <node concept="3Tm6S6" id="6HT7BWBSKlG" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBSKlH" role="3clF47">
          <node concept="3clFbF" id="6HT7BWBSLlb" role="3cqZAp">
            <node concept="37vLTI" id="6HT7BWBSLGf" role="3clFbG">
              <node concept="37vLTw" id="6HT7BWBSLZs" role="37vLTx">
                <ref role="3cqZAo" node="6HT7BWBSKVT" resolve="handler" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBSLl_" role="37vLTJ">
                <node concept="Xjq3P" id="6HT7BWBSLla" role="2Oq$k0" />
                <node concept="2OwXpG" id="6HT7BWBSLsM" role="2OqNvi">
                  <ref role="2Oxat5" node="6HT7BWBSIh7" resolve="handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6HT7BWBSKVT" role="3clF46">
          <property role="TrG5h" value="handler" />
          <node concept="3uibUv" id="6HT7BWBSKVS" role="1tU5fm">
            <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6HT7BWBTAaM" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBSGZH" role="jymVt">
        <property role="TrG5h" value="initialize" />
        <node concept="3cqZAl" id="6HT7BWBSGZJ" role="3clF45" />
        <node concept="3Tm6S6" id="6HT7BWBSGZK" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBSGZL" role="3clF47">
          <node concept="1DcWWT" id="6HT7BWBSIS_" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBSISA" role="2LFqv$">
              <node concept="3clFbJ" id="6HT7BWBSISB" role="3cqZAp">
                <node concept="3clFbS" id="6HT7BWBSISC" role="3clFbx">
                  <node concept="3cpWs8" id="6HT7BWBSISD" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSISE" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="10Q1$e" id="6HT7BWBSISF" role="1tU5fm">
                        <node concept="3uibUv" id="6HT7BWBSISG" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6HT7BWBSISH" role="33vP2m">
                        <node concept="37vLTw" id="6HT7BWBSISI" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSITO" resolve="c" />
                        </node>
                        <node concept="liA8E" id="6HT7BWBSISJ" role="2OqNvi">
                          <ref role="37wK5l" to="eifs:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
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
                        <node concept="AH0OO" id="6HT7BWBSISP" role="10QFUP">
                          <node concept="3cmrfG" id="6HT7BWBSISQ" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="6HT7BWBSISR" role="AHHXb">
                            <ref role="3cqZAo" node="6HT7BWBSISE" resolve="args" />
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
                          <node concept="AH0OO" id="6HT7BWBSIT2" role="37wK5m">
                            <node concept="3cmrfG" id="6HT7BWBSIT3" role="AHEQo">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="6HT7BWBSIT4" role="AHHXb">
                              <ref role="3cqZAo" node="6HT7BWBSISE" resolve="args" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6HT7BWBSIT5" role="3clFbw">
                  <node concept="Xl_RD" id="6HT7BWBSIT6" role="2Oq$k0">
                    <property role="Xl_RC" value="varname" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBSIT7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="6HT7BWBSIT8" role="37wK5m">
                      <node concept="37vLTw" id="6HT7BWBSIT9" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSITO" resolve="c" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSITa" role="2OqNvi">
                        <ref role="37wK5l" to="eifs:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6HT7BWBSITb" role="3cqZAp">
                <node concept="3clFbS" id="6HT7BWBSITc" role="3clFbx">
                  <node concept="3cpWs8" id="6HT7BWBSITd" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSITe" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="10Q1$e" id="6HT7BWBSITf" role="1tU5fm">
                        <node concept="3uibUv" id="6HT7BWBSITg" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6HT7BWBSITh" role="33vP2m">
                        <node concept="37vLTw" id="6HT7BWBSITi" role="2Oq$k0">
                          <ref role="3cqZAo" node="6HT7BWBSITO" resolve="c" />
                        </node>
                        <node concept="liA8E" id="6HT7BWBSITj" role="2OqNvi">
                          <ref role="37wK5l" to="eifs:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
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
                        <node concept="AH0OO" id="6HT7BWBSITp" role="10QFUP">
                          <node concept="3cmrfG" id="6HT7BWBSITq" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="6HT7BWBSITr" role="AHHXb">
                            <ref role="3cqZAo" node="6HT7BWBSITe" resolve="args" />
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
                        <node concept="AH0OO" id="6HT7BWBSITx" role="10QFUP">
                          <node concept="3cmrfG" id="6HT7BWBSITy" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="6HT7BWBSITz" role="AHHXb">
                            <ref role="3cqZAo" node="6HT7BWBSITe" resolve="args" />
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
                  <node concept="Xl_RD" id="6HT7BWBSITJ" role="2Oq$k0">
                    <property role="Xl_RC" value="ubound" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBSITK" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="6HT7BWBSITL" role="37wK5m">
                      <node concept="37vLTw" id="6HT7BWBSITM" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSITO" resolve="c" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSITN" role="2OqNvi">
                        <ref role="37wK5l" to="eifs:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6HT7BWBSITO" role="1Duv9x">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="6HT7BWBSITP" role="1tU5fm">
                <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
              </node>
            </node>
            <node concept="37vLTw" id="6HT7BWBSITQ" role="1DdaDG">
              <ref role="3cqZAo" node="6HT7BWBSIh7" resolve="handler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6HT7BWBSJtL" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBSMTp" role="jymVt">
        <property role="TrG5h" value="collectTypes" />
        <node concept="3cqZAl" id="6HT7BWBSMTr" role="3clF45" />
        <node concept="3Tm6S6" id="6HT7BWBSMTs" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBSMTt" role="3clF47">
          <node concept="1DcWWT" id="6HT7BWBSNt2" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBSNt3" role="2LFqv$">
              <node concept="3clFbJ" id="6HT7BWBSNt4" role="3cqZAp">
                <node concept="3clFbS" id="6HT7BWBSNt5" role="3clFbx">
                  <node concept="3cpWs8" id="6HT7BWBSNtB" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSNtC" role="3cpWs9">
                      <property role="TrG5h" value="formatted" />
                      <node concept="3uibUv" id="6HT7BWBSNtD" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6HT7BWBSNtE" role="33vP2m">
                        <node concept="1pGfFk" id="6HT7BWBSNtF" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6HT7BWBTmXe" role="3cqZAp" />
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
                        <node concept="AH0OO" id="6HT7BWBSNtj" role="10QFUP">
                          <node concept="3cmrfG" id="6HT7BWBSNtk" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="6HT7BWBT_Hd" role="AHHXb">
                            <node concept="37vLTw" id="6HT7BWBT_He" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBSNvV" resolve="c" />
                            </node>
                            <node concept="liA8E" id="6HT7BWBT_Hf" role="2OqNvi">
                              <ref role="37wK5l" to="eifs:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6HT7BWBSNtm" role="3cqZAp">
                    <node concept="3cpWsn" id="6HT7BWBSNtn" role="3cpWs9">
                      <property role="TrG5h" value="value" />
                      <node concept="3uibUv" id="6HT7BWBSNto" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="2OqwBi" id="6HT7BWBSNtp" role="33vP2m">
                        <node concept="2OqwBi" id="6HT7BWBSNtq" role="2Oq$k0">
                          <node concept="37vLTw" id="6HT7BWBSNtr" role="2Oq$k0">
                            <ref role="3cqZAo" node="6HT7BWBSNtf" resolve="typeLogical" />
                          </node>
                          <node concept="liA8E" id="6HT7BWBSNts" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6HT7BWBSNtt" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6HT7BWBTrGn" role="3cqZAp" />
                  <node concept="3clFbJ" id="6HT7BWBTgVc" role="3cqZAp">
                    <node concept="3clFbS" id="6HT7BWBTgVe" role="3clFbx">
                      <node concept="3clFbF" id="6HT7BWBTr1y" role="3cqZAp">
                        <node concept="2OqwBi" id="6HT7BWBTrg1" role="3clFbG">
                          <node concept="37vLTw" id="6HT7BWBTr1w" role="2Oq$k0">
                            <ref role="3cqZAo" node="6HT7BWBSNtC" resolve="formatted" />
                          </node>
                          <node concept="liA8E" id="6HT7BWBTrv5" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="2YIFZM" id="6HT7BWBTrvu" role="37wK5m">
                              <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                              <ref role="37wK5l" to="4t1t:4peSo3D04j7" resolve="print" />
                              <node concept="2YIFZM" id="4UfmwCBLEk" role="37wK5m">
                                <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                                <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
                                <node concept="37vLTw" id="4UfmwCBLO3" role="37wK5m">
                                  <ref role="3cqZAo" node="6HT7BWBSNtn" resolve="value" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="5kEUewdD8NS" role="37wK5m">
                                <node concept="HV5vD" id="5kEUewdDaed" role="2ShVmc">
                                  <ref role="HV5vE" node="3gJBs5s_5u0" resolve="RunTypecheckingRules.TypeFormatter.TypeVarSymbol" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6HT7BWBTqaU" role="3cqZAp" />
                    </node>
                    <node concept="3y3z36" id="6HT7BWBTpvB" role="3clFbw">
                      <node concept="37vLTw" id="6HT7BWBThsW" role="3uHU7B">
                        <ref role="3cqZAo" node="6HT7BWBSNtn" resolve="value" />
                      </node>
                      <node concept="10Nm6u" id="6HT7BWBThPH" role="3uHU7w" />
                    </node>
                    <node concept="9aQIb" id="6HT7BWBTnVa" role="9aQIa">
                      <node concept="3clFbS" id="6HT7BWBTnVb" role="9aQI4">
                        <node concept="3cpWs8" id="6HT7BWBSNtu" role="3cqZAp">
                          <node concept="3cpWsn" id="6HT7BWBSNtv" role="3cpWs9">
                            <property role="TrG5h" value="var" />
                            <node concept="17QB3L" id="6HT7BWBSNtw" role="1tU5fm" />
                            <node concept="2OqwBi" id="6HT7BWBSNtx" role="33vP2m">
                              <node concept="2OqwBi" id="6HT7BWBSNty" role="2Oq$k0">
                                <node concept="37vLTw" id="6HT7BWBSNtz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6HT7BWBSNtf" resolve="typeLogical" />
                                </node>
                                <node concept="liA8E" id="6HT7BWBSNt$" role="2OqNvi">
                                  <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6HT7BWBSNt_" role="2OqNvi">
                                <ref role="37wK5l" to="oy3s:3HJTsBmCy5P" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6HT7BWBTiHb" role="3cqZAp">
                          <node concept="2OqwBi" id="6HT7BWBTiR2" role="3clFbG">
                            <node concept="37vLTw" id="6HT7BWBTiH9" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBSNtC" resolve="formatted" />
                            </node>
                            <node concept="liA8E" id="6HT7BWBTj5Y" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="37vLTw" id="6HT7BWBTjeO" role="37wK5m">
                                <ref role="3cqZAo" node="6HT7BWBSNtv" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6HT7BWBSNtH" role="3cqZAp">
                          <node concept="3clFbS" id="6HT7BWBSNtI" role="3clFbx">
                            <node concept="3clFbF" id="6HT7BWBSNtJ" role="3cqZAp">
                              <node concept="2OqwBi" id="6HT7BWBSNtK" role="3clFbG">
                                <node concept="2OqwBi" id="6HT7BWBSNtL" role="2Oq$k0">
                                  <node concept="2OqwBi" id="6HT7BWBSNtM" role="2Oq$k0">
                                    <node concept="37vLTw" id="6HT7BWBSNtN" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6HT7BWBSNtC" resolve="formatted" />
                                    </node>
                                    <node concept="liA8E" id="6HT7BWBSNtO" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                      <node concept="Xl_RD" id="6HT7BWBSNtP" role="37wK5m">
                                        <property role="Xl_RC" value=" \&quot;" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6HT7BWBSNtQ" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                    <node concept="2OqwBi" id="6HT7BWBSNtR" role="37wK5m">
                                      <node concept="37vLTw" id="6HT7BWBSNtS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                                      </node>
                                      <node concept="liA8E" id="6HT7BWBSNtT" role="2OqNvi">
                                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                        <node concept="37vLTw" id="6HT7BWBSNtU" role="37wK5m">
                                          <ref role="3cqZAo" node="6HT7BWBSNtv" resolve="var" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="6HT7BWBSNtV" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                  <node concept="Xl_RD" id="6HT7BWBSNtW" role="37wK5m">
                                    <property role="Xl_RC" value="\&quot;" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6HT7BWBSNtX" role="3clFbw">
                            <node concept="37vLTw" id="6HT7BWBSNtY" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBSGym" resolve="varnames" />
                            </node>
                            <node concept="liA8E" id="6HT7BWBSNtZ" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                              <node concept="37vLTw" id="6HT7BWBSNu0" role="37wK5m">
                                <ref role="3cqZAo" node="6HT7BWBSNtv" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6HT7BWBSNu1" role="3cqZAp" />
                  <node concept="3clFbF" id="6HT7BWBSP0f" role="3cqZAp">
                    <node concept="1rXfSq" id="6HT7BWBSP0e" role="3clFbG">
                      <ref role="37wK5l" node="6HT7BWBSP09" resolve="appendBound" />
                      <node concept="37vLTw" id="6HT7BWBSP0c" role="37wK5m">
                        <ref role="3cqZAo" node="6HT7BWBSNtf" resolve="typeLogical" />
                      </node>
                      <node concept="37vLTw" id="6HT7BWBSP0d" role="37wK5m">
                        <ref role="3cqZAo" node="6HT7BWBSNtC" resolve="formatted" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6HT7BWBSNvi" role="3cqZAp" />
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
                        <node concept="AH0OO" id="6HT7BWBSNvA" role="10QFUP">
                          <node concept="3cmrfG" id="6HT7BWBSNvB" role="AHEQo">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="6HT7BWBT_NW" role="AHHXb">
                            <node concept="37vLTw" id="6HT7BWBT_NX" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBSNvV" resolve="c" />
                            </node>
                            <node concept="liA8E" id="6HT7BWBT_NY" role="2OqNvi">
                              <ref role="37wK5l" to="eifs:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
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
                        <node concept="2YIFZM" id="6HT7BWBSNvH" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <node concept="2OqwBi" id="6HT7BWBSNvI" role="37wK5m">
                            <node concept="2YIFZM" id="6HT7BWBSNvJ" role="2Oq$k0">
                              <ref role="37wK5l" to="ie8e:3JgCwkqd8va" resolve="findValue" />
                              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                              <node concept="37vLTw" id="6HT7BWBSNvK" role="37wK5m">
                                <ref role="3cqZAo" node="6HT7BWBSNvy" resolve="anchor" />
                              </node>
                              <node concept="Xl_RD" id="6HT7BWBSNvL" role="37wK5m">
                                <property role="Xl_RC" value="node" />
                              </node>
                              <node concept="Xl_RD" id="6HT7BWBSNvM" role="37wK5m">
                                <property role="Xl_RC" value="id" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6HT7BWBSNvN" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:3JgCwkqkUL2" resolve="result" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6HT7BWBT_jU" role="37wK5m">
                          <node concept="37vLTw" id="6HT7BWBTt2e" role="2Oq$k0">
                            <ref role="3cqZAo" node="6HT7BWBSNtC" resolve="formatted" />
                          </node>
                          <node concept="liA8E" id="6HT7BWBT_Cq" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6HT7BWBSNvP" role="3clFbw">
                  <node concept="Xl_RD" id="6HT7BWBSNvQ" role="2Oq$k0">
                    <property role="Xl_RC" value="typeOf" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBSNvR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="6HT7BWBSNvS" role="37wK5m">
                      <node concept="37vLTw" id="6HT7BWBSNvT" role="2Oq$k0">
                        <ref role="3cqZAo" node="6HT7BWBSNvV" resolve="c" />
                      </node>
                      <node concept="liA8E" id="6HT7BWBSNvU" role="2OqNvi">
                        <ref role="37wK5l" to="eifs:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6HT7BWBSNvV" role="1Duv9x">
              <property role="TrG5h" value="c" />
              <node concept="3uibUv" id="6HT7BWBSNvW" role="1tU5fm">
                <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
              </node>
            </node>
            <node concept="37vLTw" id="6HT7BWBSNvX" role="1DdaDG">
              <ref role="3cqZAo" node="6HT7BWBSIh7" resolve="handler" />
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
                      <ref role="37wK5l" to="oy3s:3HJTsBmCy5P" resolve="name" />
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
                      <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
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
                          <ref role="37wK5l" to="4t1t:4peSo3D04j7" resolve="print" />
                          <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                          <node concept="2YIFZM" id="4UfmwCMJfy" role="37wK5m">
                            <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                            <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
                            <node concept="37vLTw" id="4UfmwCMJFX" role="37wK5m">
                              <ref role="3cqZAo" node="6HT7BWBSOZ7" resolve="boundValue" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="5kEUewdDee1" role="37wK5m">
                            <node concept="HV5vD" id="5kEUewdDeX_" role="2ShVmc">
                              <ref role="HV5vE" node="3gJBs5s_5u0" resolve="RunTypecheckingRules.TypeFormatter.TypeVarSymbol" />
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
      <node concept="3Tm6S6" id="6HT7BWBSGxC" role="1B3o_S" />
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
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(char[]):java.lang.String" resolve="valueOf" />
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
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
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
      <node concept="2tJIrI" id="41ox5Vnk7lH" role="jymVt" />
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
      </node>
    </node>
    <node concept="2tJIrI" id="24Vro6cQTbM" role="jymVt" />
    <node concept="3clFb_" id="24Vro6cQSyK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askSuccess" />
      <node concept="37vLTG" id="24Vro6cQSyL" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="24Vro6cQSyM" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7Bj7q" resolve="AutoConstraint" />
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
                    <property role="Xl_RC" value="[ OK ] /success/ " />
                  </node>
                  <node concept="2OqwBi" id="24Vro6cR42_" role="3uHU7w">
                    <node concept="37vLTw" id="24Vro6cR3Jo" role="2Oq$k0">
                      <ref role="3cqZAo" node="24Vro6cQSyL" resolve="autoConstraint" />
                    </node>
                    <node concept="liA8E" id="24Vro6cR4hF" role="2OqNvi">
                      <ref role="37wK5l" to="qrld:6Kcfpq7BgtC" resolve="name" />
                    </node>
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
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="24Vro6cQSyW" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7Bj7q" resolve="AutoConstraint" />
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
                    <property role="Xl_RC" value="[FAIL] /failure/ " />
                  </node>
                  <node concept="2OqwBi" id="24Vro6cR6X4" role="3uHU7w">
                    <node concept="37vLTw" id="24Vro6cR6X5" role="2Oq$k0">
                      <ref role="3cqZAo" node="24Vro6cQSyV" resolve="autoConstraint" />
                    </node>
                    <node concept="liA8E" id="24Vro6cR6X6" role="2OqNvi">
                      <ref role="37wK5l" to="qrld:6Kcfpq7BgtC" resolve="name" />
                    </node>
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
    <node concept="3clFb_" id="7FtwPOZHe8P" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="result" />
      <node concept="37vLTG" id="7FtwPOZHe8Q" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="7FtwPOZHrA1" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
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
        <node concept="3uibUv" id="7nkyKX7gYtL" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
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
    <node concept="Zd509" id="3NRKQ2BK6Ot" role="Zd508">
      <ref role="1bYAoF" node="3Qp4N06byoz" resolve="MarkTypes" />
      <node concept="pLAjd" id="3NRKQ2BK6Ov" role="Zd501">
        <property role="pLAjc" value="ctrl" />
        <property role="pLAjf" value="VK_F7" />
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
                              <ref role="3uigEE" to="i8dg:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
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
            <ref role="3uigEE" to="i8dg:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
          </node>
        </node>
        <node concept="2ShNRf" id="1pPth$lGhrs" role="33vP2m">
          <node concept="Tc6Ow" id="1pPth$lGhro" role="2ShVmc">
            <node concept="3uibUv" id="1pPth$lGhrp" role="HW$YZ">
              <ref role="3uigEE" to="i8dg:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
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
                                <ref role="3uigEE" to="i8dg:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
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
                      <node concept="10M0yZ" id="1pPth$l_ZjQ" role="37wK5m">
                        <ref role="3cqZAo" node="61vfVfp5OZI" resolve="ALL" />
                        <ref role="1PxDUh" node="4i4XGQZlbGA" resolve="MessageViewTracer" />
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
                        <node concept="SfApY" id="1pPth$lS0se" role="3cqZAp">
                          <node concept="3clFbS" id="1pPth$lS0sg" role="SfCbr">
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
                          <node concept="TDmWw" id="1pPth$l_ZjT" role="TEbGg">
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
                          <node concept="TDmWw" id="1pPth$l_ZkQ" role="TEbGg">
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
      <node concept="2tJIrI" id="1pPth$lG1ns" role="jymVt" />
      <node concept="312cEg" id="1pPth$lEGxq" role="jymVt">
        <property role="TrG5h" value="types" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tmbuc" id="1pPth$lFXOP" role="1B3o_S" />
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
        <node concept="3Tmbuc" id="1pPth$lFZ$_" role="1B3o_S" />
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
        <ref role="3uigEE" node="1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
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
          <node concept="3uibUv" id="1pPth$lGcn3" role="1tU5fm">
            <ref role="3uigEE" node="1pPth$lBNWG" resolve="TypecheckingHelper.RunTypechecking" />
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
                      <node concept="2OwXpG" id="1pPth$lGf85" role="2OqNvi">
                        <ref role="2Oxat5" node="1pPth$lEGxq" resolve="types" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1pPth$lGg56" role="37wK5m">
                      <node concept="37vLTw" id="1pPth$lGfNd" role="2Oq$k0">
                        <ref role="3cqZAo" node="1pPth$lGafk" resolve="prev" />
                      </node>
                      <node concept="2OwXpG" id="1pPth$lGgDQ" role="2OqNvi">
                        <ref role="2Oxat5" node="1pPth$lEGxt" resolve="errors" />
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
        <node concept="3uibUv" id="1pPth$lG6kP" role="11_B2D">
          <ref role="3uigEE" node="1pPth$lBNWG" resolve="TypecheckingHelper.RunTypechecking" />
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

