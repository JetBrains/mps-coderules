<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1514c681-0724-461e-a435-315a6af4b3b4(jetbrains.mps.coderules.typechecking.ui.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="-1" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="z3o9" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model.holders(MPS.Core/)" />
    <import index="b2d5" ref="r:1a2b3027-99d2-4946-917b-f185130ac75d(jetbrains.mps.ide.findusages.findalgorithm.finders)" />
    <import index="9erk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model(MPS.Core/)" />
    <import index="ngmm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.view(MPS.Core/)" />
    <import index="ngmn" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view(MPS.Platform/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="hhnx" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime(MPS.Editor/)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.coderules.typechecking.service)" />
    <import index="vmdq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.awt(MPS.IDEA/)" />
    <import index="gspm" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui.popup(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="1g4i" ref="r:102178da-67ba-49f6-ba73-eb29fa352fe7(jetbrains.mps.coderules.typechecking)" />
    <import index="1yqb" ref="r:bd76f794-cfad-45dd-9c1c-e3203d1c5c7a(jetbrains.mps.coderules.service)" />
    <import index="f4yq" ref="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c/java:hu.akarnokd.rxjava2.swing(jetbrains.mps.coderules/)" />
    <import index="unkn" ref="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c/java:io.reactivex(jetbrains.mps.coderules/)" />
    <import index="u46i" ref="r:c2760840-3210-4ad4-9e64-a2dfd53620e1(jetbrains.mps.lang.typechecking.aspect)" />
    <import index="o35r" ref="r:76281d8a-46ce-405f-8cfc-287ee8597b54(jetbrains.mps.coderules.ui.plugin)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="31yc" ref="r:0c18ff61-1cb9-4ff0-a899-c949ad03f97c(jetbrains.mps.coderules.plugin)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="ksgm" ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)" />
    <import index="psoy" ref="r:78313117-90ee-47a5-a91e-b5213df7f611(jetbrains.mps.coderules.runtime.result)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
        <property id="6785623076777470797" name="change" index="3hacHL" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
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
        <property id="8646726056720906098" name="isPluginXmlKeymap" index="Z2u3V" />
        <property id="1562714432501166281" name="keymap" index="Zd52Q" />
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ng" index="1bYyw_">
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348179" name="jetbrains.mps.lang.access.structure.ExecuteEDTCommandStatement" flags="nn" index="1QHqEQ" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
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
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="3Qp4N06byoy" />
  <node concept="tC5Ba" id="2Rw7mr8T72C">
    <property role="TrG5h" value="TypecheckingEditorGroup" />
    <property role="3GE5qa" value="action" />
    <node concept="ftmFs" id="2Rw7mr8T79R" role="ftER_">
      <node concept="tCFHf" id="7WKNeR8U80T" role="ftvYc">
        <ref role="tCJdB" node="7WKNeR8Q7e5" resolve="LaunchTypecheckingQuery" />
      </node>
      <node concept="tCFHf" id="3IIf9O_oSqi" role="ftvYc">
        <ref role="tCJdB" node="3IIf9O_okk0" resolve="LaunchTypecheckingQueryWithTrace" />
      </node>
      <node concept="tCFHf" id="41ox5VnrVW_" role="ftvYc">
        <ref role="tCJdB" node="41ox5VnrUX7" resolve="ClearTypes" />
      </node>
      <node concept="tCFHf" id="3YJ7yg2O3a6" role="ftvYc">
        <ref role="tCJdB" node="3YJ7yg2LgPI" resolve="FindApplicableTemplates" />
      </node>
    </node>
    <node concept="tT9cl" id="2Rw7mr8T789" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
      <ref role="2f8Tey" to="ekwn:1xsN4xJX8VY" resolve="debug" />
    </node>
  </node>
  <node concept="sE7Ow" id="41ox5VnrUX7">
    <property role="TrG5h" value="ClearTypes" />
    <property role="2uzpH1" value="Clear Types" />
    <property role="3GE5qa" value="action" />
    <node concept="1DS2jV" id="41ox5VnrVtS" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="41ox5VnrVtT" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3mz2_dYEr9_" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3mz2_dYEr9A" role="1oa70y" />
    </node>
    <node concept="tnohg" id="41ox5VnrUX8" role="tncku">
      <node concept="3clFbS" id="41ox5VnrUX9" role="2VODD2">
        <node concept="3clFbF" id="41ox5VnrV_Z" role="3cqZAp">
          <node concept="2YIFZM" id="6Yb9hAqxX1b" role="3clFbG">
            <ref role="37wK5l" to="o35r:41ox5VnrNu5" resolve="clear" />
            <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
            <node concept="2OqwBi" id="3mz2_dYErbN" role="37wK5m">
              <node concept="2WthIp" id="3mz2_dYErbQ" role="2Oq$k0" />
              <node concept="1DTwFV" id="3mz2_dYErbS" role="2OqNvi">
                <ref role="2WH_rO" node="3mz2_dYEr9_" resolve="mpsProject" />
              </node>
            </node>
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
  <node concept="Zd50a" id="3NRKQ2BK6Oq">
    <property role="TrG5h" value="TypecheckingKeymap" />
    <property role="3GE5qa" value="action" />
    <node concept="Zd509" id="4vBwiiVpIuo" role="Zd508">
      <ref role="1bYAoF" node="4vBwiiVgYfo" resolve="ShowNodeType" />
      <node concept="pLAjd" id="4vBwiiVpIuq" role="Zd501">
        <property role="pLAjc" value="ctrl+shift" />
        <property role="pLAjf" value="VK_P" />
      </node>
    </node>
    <node concept="Zd509" id="3IIf9O_pnHl" role="Zd508">
      <ref role="1bYAoF" node="7WKNeR8Q7e5" resolve="LaunchTypecheckingQuery" />
      <node concept="pLAjd" id="3IIf9O_pnHV" role="Zd501">
        <property role="pLAjc" value="ctrl" />
        <property role="pLAjf" value="VK_F7" />
      </node>
    </node>
    <node concept="Zd509" id="3IIf9O_pnHC" role="Zd508">
      <ref role="1bYAoF" node="3IIf9O_okk0" resolve="LaunchTypecheckingQueryWithTrace" />
      <node concept="pLAjd" id="3IIf9O_pnI9" role="Zd501">
        <property role="pLAjc" value="ctrl+alt" />
        <property role="pLAjf" value="VK_F7" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4n$QnzZQkF9">
    <property role="TrG5h" value="ApplicableTemplatesFinder" />
    <property role="3GE5qa" value="action" />
    <node concept="3Tm1VV" id="4n$QnzZQkFa" role="1B3o_S" />
    <node concept="3uibUv" id="3YJ7yg2MLNM" role="1zkMxy">
      <ref role="3uigEE" to="b2d5:1Fz6CCoeqzM" resolve="BaseFinder" />
    </node>
    <node concept="2tJIrI" id="4n$QnzZQmw6" role="jymVt" />
    <node concept="3clFbW" id="3YJ7yg2MSlk" role="jymVt">
      <node concept="37vLTG" id="20Ay2VeR4H3" role="3clF46">
        <property role="TrG5h" value="ruleTemplateIndex" />
        <node concept="3uibUv" id="20Ay2VeR5CJ" role="1tU5fm">
          <ref role="3uigEE" to="hano:6fdr4UgftiG" resolve="RuleTemplateIndex" />
        </node>
      </node>
      <node concept="37vLTG" id="6i42QSsgg1v" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6i42QSsggth" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="3YJ7yg2MSlm" role="3clF45" />
      <node concept="3Tm1VV" id="3YJ7yg2MSln" role="1B3o_S" />
      <node concept="3clFbS" id="3YJ7yg2MSlo" role="3clF47">
        <node concept="3clFbF" id="6i42QSsghp8" role="3cqZAp">
          <node concept="37vLTI" id="6i42QSsghpa" role="3clFbG">
            <node concept="2OqwBi" id="6i42QSsgi1O" role="37vLTJ">
              <node concept="Xjq3P" id="6i42QSsgihq" role="2Oq$k0" />
              <node concept="2OwXpG" id="6i42QSsgi1R" role="2OqNvi">
                <ref role="2Oxat5" node="6i42QSsghp4" resolve="mpsProject" />
              </node>
            </node>
            <node concept="37vLTw" id="6i42QSsghpe" role="37vLTx">
              <ref role="3cqZAo" node="6i42QSsgg1v" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20Ay2VeR5DA" role="3cqZAp">
          <node concept="37vLTI" id="20Ay2VeR5DC" role="3clFbG">
            <node concept="2OqwBi" id="20Ay2VeR6l9" role="37vLTJ">
              <node concept="Xjq3P" id="20Ay2VeR6$H" role="2Oq$k0" />
              <node concept="2OwXpG" id="20Ay2VeR6lc" role="2OqNvi">
                <ref role="2Oxat5" node="20Ay2VeR5Dy" resolve="ruleTemplateIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="20Ay2VeR5DG" role="37vLTx">
              <ref role="3cqZAo" node="20Ay2VeR4H3" resolve="ruleTemplateIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3YJ7yg2MRSP" role="jymVt" />
    <node concept="3clFb_" id="4n$QnzZQmz_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4n$QnzZQmzA" role="1B3o_S" />
      <node concept="3uibUv" id="4n$QnzZQmzB" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="4n$QnzZQmzJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4n$QnzZQmzK" role="3clF47">
        <node concept="3clFbF" id="4n$QnzZQnb8" role="3cqZAp">
          <node concept="Xl_RD" id="4n$QnzZQnb7" role="3clFbG">
            <property role="Xl_RC" value="Applicable Templates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4n$QnzZQmwm" role="jymVt" />
    <node concept="3clFb_" id="4n$QnzZQlSU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="find" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4n$QnzZQlSV" role="1B3o_S" />
      <node concept="3uibUv" id="3YJ7yg2MN8P" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
      </node>
      <node concept="37vLTG" id="4n$QnzZQlSY" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3uibUv" id="4n$QnzZQlSZ" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchQuery" resolve="SearchQuery" />
        </node>
      </node>
      <node concept="37vLTG" id="4n$QnzZQlT0" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="4n$QnzZQlT1" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3clFbS" id="4n$QnzZQlT4" role="3clF47">
        <node concept="3cpWs8" id="4n$QnzZQneo" role="3cqZAp">
          <node concept="3cpWsn" id="4n$QnzZQnen" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="4n$QnzZQo7Q" role="1tU5fm" />
            <node concept="10Nm6u" id="5mg4ZgLmDXt" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="5mg4ZgLlWdB" role="3cqZAp" />
        <node concept="3cpWs8" id="5mg4ZgLlR8d" role="3cqZAp">
          <node concept="3cpWsn" id="5mg4ZgLlR8e" role="3cpWs9">
            <property role="TrG5h" value="object" />
            <node concept="3uibUv" id="5mg4ZgLlR8a" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="5mg4ZgLlR8f" role="33vP2m">
              <node concept="2OqwBi" id="5mg4ZgLlR8g" role="2Oq$k0">
                <node concept="37vLTw" id="5mg4ZgLlR8h" role="2Oq$k0">
                  <ref role="3cqZAo" node="4n$QnzZQlSY" resolve="query" />
                </node>
                <node concept="liA8E" id="5mg4ZgLlR8i" role="2OqNvi">
                  <ref role="37wK5l" to="9erk:~SearchQuery.getObjectHolder()" resolve="getObjectHolder" />
                </node>
              </node>
              <node concept="liA8E" id="5mg4ZgLlR8j" role="2OqNvi">
                <ref role="37wK5l" to="z3o9:~IHolder.getObject()" resolve="getObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5mg4ZgLlSQW" role="3cqZAp">
          <node concept="3clFbS" id="5mg4ZgLlSQY" role="3clFbx">
            <node concept="3clFbF" id="5mg4ZgLlVl9" role="3cqZAp">
              <node concept="37vLTI" id="5mg4ZgLlVlb" role="3clFbG">
                <node concept="10QFUN" id="4n$QnzZQneq" role="37vLTx">
                  <node concept="37vLTw" id="5mg4ZgLlR8k" role="10QFUP">
                    <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
                  </node>
                  <node concept="3Tqbb2" id="4n$QnzZQoYF" role="10QFUM" />
                </node>
                <node concept="37vLTw" id="5mg4ZgLlVlf" role="37vLTJ">
                  <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5mg4ZgLlZla" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="5mg4ZgLlUu$" role="3clFbw">
            <node concept="3uibUv" id="5mg4ZgLm0dp" role="2ZW6by">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="5mg4ZgLlTJK" role="2ZW6bz">
              <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
            </node>
          </node>
          <node concept="3eNFk2" id="5mg4ZgLlYFy" role="3eNLev">
            <node concept="2ZW3vV" id="5mg4ZgLlZJ7" role="3eO9$A">
              <node concept="3uibUv" id="5mg4ZgLm03N" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
              </node>
              <node concept="37vLTw" id="5mg4ZgLlZl$" role="2ZW6bz">
                <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
              </node>
            </node>
            <node concept="3clFbS" id="5mg4ZgLlYF$" role="3eOfB_">
              <node concept="3clFbF" id="5mg4ZgLm0YY" role="3cqZAp">
                <node concept="37vLTI" id="5mg4ZgLm1r3" role="3clFbG">
                  <node concept="37vLTw" id="5mg4ZgLm0YX" role="37vLTJ">
                    <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
                  </node>
                  <node concept="2OqwBi" id="5mg4ZgLm5yy" role="37vLTx">
                    <node concept="1eOMI4" id="5mg4ZgLm5nQ" role="2Oq$k0">
                      <node concept="10QFUN" id="5mg4ZgLm5nN" role="1eOMHV">
                        <node concept="3uibUv" id="5mg4ZgLm5nS" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                        </node>
                        <node concept="37vLTw" id="5mg4ZgLm5nT" role="10QFUP">
                          <ref role="3cqZAo" node="5mg4ZgLlR8e" resolve="object" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5mg4ZgLm5Sb" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SNodePointer.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                      <node concept="2OqwBi" id="5mg4ZgLm7jM" role="37wK5m">
                        <node concept="37vLTw" id="5mg4ZgLm6qZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6i42QSsghp4" resolve="mpsProject" />
                        </node>
                        <node concept="liA8E" id="5mg4ZgLm87g" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5mg4ZgLmGtg" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="5mg4ZgLmEiv" role="9aQIa">
            <node concept="3clFbS" id="5mg4ZgLmEiw" role="9aQI4">
              <node concept="3cpWs6" id="5mg4ZgLmF6e" role="3cqZAp">
                <node concept="10Nm6u" id="5mg4ZgLmFUr" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5mg4ZgLlS4H" role="3cqZAp" />
        <node concept="3cpWs8" id="3YJ7yg2MBU8" role="3cqZAp">
          <node concept="3cpWsn" id="3YJ7yg2MBU9" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="3YJ7yg2MBU0" role="1tU5fm">
              <node concept="3uibUv" id="3YJ7yg2MBU3" role="_ZDj9">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
              </node>
            </node>
            <node concept="2ShNRf" id="3YJ7yg2MBUa" role="33vP2m">
              <node concept="Tc6Ow" id="3YJ7yg2MBUb" role="2ShVmc">
                <node concept="3uibUv" id="3YJ7yg2MBUc" role="HW$YZ">
                  <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSsgtgL" role="3cqZAp" />
        <node concept="1DcWWT" id="3YJ7yg2N2M2" role="3cqZAp">
          <node concept="3clFbS" id="3YJ7yg2N2M4" role="2LFqv$">
            <node concept="3cpWs8" id="1CcQBrPeqBt" role="3cqZAp">
              <node concept="3cpWsn" id="1CcQBrPeqBu" role="3cpWs9">
                <property role="TrG5h" value="template" />
                <node concept="3uibUv" id="3IIf9OADWM$" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                  <node concept="3qTvmN" id="3IIf9OADXsN" role="11_B2D" />
                </node>
                <node concept="37vLTw" id="6tPOoeTdjBM" role="33vP2m">
                  <ref role="3cqZAo" node="3YJ7yg2N2M5" resolve="tpl" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6i42QSsgfqS" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsgfqT" role="3cpWs9">
                <property role="TrG5h" value="templateRef" />
                <node concept="3uibUv" id="6i42QSsgfqP" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="6i42QSsgfqU" role="33vP2m">
                  <node concept="37vLTw" id="1CcQBrPeqBy" role="2Oq$k0">
                    <ref role="3cqZAo" node="1CcQBrPeqBu" resolve="template" />
                  </node>
                  <node concept="liA8E" id="6i42QSsgfqW" role="2OqNvi">
                    <ref role="37wK5l" to="i348:62MNP_kY8lD" resolve="getTemplateRef" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6i42QSsgpe6" role="3cqZAp">
              <node concept="3clFbS" id="6i42QSsgpe8" role="3clFbx">
                <node concept="3clFbF" id="3YJ7yg2NcOY" role="3cqZAp">
                  <node concept="2OqwBi" id="3YJ7yg2Nd$6" role="3clFbG">
                    <node concept="37vLTw" id="3YJ7yg2NcOW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3YJ7yg2MBU9" resolve="results" />
                    </node>
                    <node concept="TSZUe" id="3YJ7yg2Nf4Q" role="2OqNvi">
                      <node concept="2ShNRf" id="3YJ7yg2Nflx" role="25WWJ7">
                        <node concept="1pGfFk" id="3YJ7yg2Nhus" role="2ShVmc">
                          <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                          <node concept="2OqwBi" id="6i42QSsgo9q" role="37wK5m">
                            <node concept="37vLTw" id="6i42QSsgnKB" role="2Oq$k0">
                              <ref role="3cqZAo" node="6i42QSsgfqT" resolve="templateRef" />
                            </node>
                            <node concept="liA8E" id="6i42QSsgonT" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="6i42QSsgjMy" role="37wK5m">
                                <node concept="37vLTw" id="6i42QSsgiWf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6i42QSsghp4" resolve="mpsProject" />
                                </node>
                                <node concept="liA8E" id="6i42QSsgkvG" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="3YJ7yg2NlKI" role="37wK5m">
                            <property role="Xl_RC" value="Template" />
                          </node>
                          <node concept="3Tqbb2" id="6i42QSsgezD" role="1pMfVU" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6i42QSsgqc8" role="3clFbw">
                <node concept="10Nm6u" id="6i42QSsgqsn" role="3uHU7w" />
                <node concept="37vLTw" id="6i42QSsgpQH" role="3uHU7B">
                  <ref role="3cqZAo" node="6i42QSsgfqT" resolve="templateRef" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3YJ7yg2N2M5" role="1Duv9x">
            <property role="TrG5h" value="tpl" />
            <node concept="3uibUv" id="1ffsG7c4ezn" role="1tU5fm">
              <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
              <node concept="3qUE_q" id="7XdbJdyRKIf" role="11_B2D">
                <node concept="3uibUv" id="7XdbJdyRMGp" role="3qUE_r">
                  <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3YJ7yg2N55f" role="1DdaDG">
            <node concept="37vLTw" id="20Ay2VeR8np" role="2Oq$k0">
              <ref role="3cqZAo" node="20Ay2VeR5Dy" resolve="ruleTemplateIndex" />
            </node>
            <node concept="liA8E" id="3YJ7yg2N55j" role="2OqNvi">
              <ref role="37wK5l" to="hano:6fdr4UgfuGk" resolve="allRuleTemplates" />
              <node concept="37vLTw" id="3YJ7yg2N7pX" role="37wK5m">
                <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3YJ7yg2MREs" role="3cqZAp" />
        <node concept="3clFbF" id="3YJ7yg2MqON" role="3cqZAp">
          <node concept="2ShNRf" id="3YJ7yg2MqOJ" role="3clFbG">
            <node concept="1pGfFk" id="3YJ7yg2MRp0" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="2YIFZM" id="3YJ7yg2MyQB" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="3YJ7yg2Mztt" role="37wK5m">
                  <ref role="3cqZAo" node="4n$QnzZQnen" resolve="node" />
                </node>
              </node>
              <node concept="37vLTw" id="3YJ7yg2MCsL" role="37wK5m">
                <ref role="3cqZAo" node="3YJ7yg2MBU9" resolve="results" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4n$QnzZQlT5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4n$QnzZQmsZ" role="jymVt" />
    <node concept="312cEg" id="6i42QSsghp4" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="6i42QSsghp5" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsghp7" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="20Ay2VeR5Dy" role="jymVt">
      <property role="TrG5h" value="ruleTemplateIndex" />
      <node concept="3Tm6S6" id="20Ay2VeR5Dz" role="1B3o_S" />
      <node concept="3uibUv" id="20Ay2VeR5D_" role="1tU5fm">
        <ref role="3uigEE" to="hano:6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3YJ7yg2LgPI">
    <property role="TrG5h" value="FindApplicableTemplates" />
    <property role="2uzpH1" value="Find Applicable Templates" />
    <property role="3GE5qa" value="action" />
    <node concept="1DS2jV" id="3YJ7yg2OPyo" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="3YJ7yg2OPyp" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3YJ7yg2LgUn" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3YJ7yg2LgUo" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3YJ7yg2LgUp" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="3YJ7yg2LgUq" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3YJ7yg2LgPJ" role="tncku">
      <node concept="3clFbS" id="3YJ7yg2LgPK" role="2VODD2">
        <node concept="3cpWs8" id="6kREIVkWLqO" role="3cqZAp">
          <node concept="3cpWsn" id="6kREIVkWLqP" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="6kREIVkWMXC" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="6nFpYlun1LU" role="3cqZAp">
          <node concept="3cpWsn" id="6nFpYlun1LV" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="6nFpYlun1hO" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6nFpYlun1LW" role="33vP2m">
              <node concept="2OqwBi" id="6nFpYlun1LX" role="2Oq$k0">
                <node concept="2WthIp" id="6nFpYlun1LY" role="2Oq$k0" />
                <node concept="1DTwFV" id="6nFpYlun1LZ" role="2OqNvi">
                  <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="6nFpYlun1M0" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="3YJ7yg2LGli" role="3cqZAp">
          <node concept="1QHqEC" id="3YJ7yg2LGlj" role="1QHqEI">
            <node concept="3clFbS" id="3YJ7yg2LGlk" role="1bW5cS">
              <node concept="3clFbF" id="6kREIVkWNEb" role="3cqZAp">
                <node concept="37vLTI" id="6kREIVkWNEd" role="3clFbG">
                  <node concept="2OqwBi" id="6kREIVkWLqQ" role="37vLTx">
                    <node concept="2OqwBi" id="6kREIVkWLqR" role="2Oq$k0">
                      <node concept="2WthIp" id="6kREIVkWLqS" role="2Oq$k0" />
                      <node concept="1DTwFV" id="6kREIVkWLqT" role="2OqNvi">
                        <ref role="2WH_rO" node="3YJ7yg2LgUp" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6kREIVkWLqU" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6kREIVkWNEh" role="37vLTJ">
                    <ref role="3cqZAo" node="6kREIVkWLqP" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6nFpYlun1M2" role="ukAjM">
            <ref role="3cqZAo" node="6nFpYlun1LV" resolve="repository" />
          </node>
        </node>
        <node concept="3clFbH" id="6kREIVkXLDT" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4vCOBB" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4vCOBC" role="3cpWs9">
            <property role="TrG5h" value="aspectLookup" />
            <node concept="3uibUv" id="3KN3A4vCOjR" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
              <node concept="3uibUv" id="3KN3A4vCOjU" role="11_B2D">
                <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
            <node concept="2YIFZM" id="3KN3A4vCOBD" role="33vP2m">
              <ref role="37wK5l" to="u46i:78H58oeCAQS" resolve="aspectLookup" />
              <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4vCTIJ" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4vCTIK" role="3cpWs9">
            <property role="TrG5h" value="ac" />
            <node concept="3vKaQO" id="3KN3A4vCTGm" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4vCTGt" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3KN3A4vCTGu" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3KN3A4vCTIL" role="33vP2m">
              <node concept="37vLTw" id="3KN3A4vCTIM" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4vCOBC" resolve="aspectLookup" />
              </node>
              <node concept="liA8E" id="3KN3A4vCTIN" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:7mB3viLmii2" resolve="allForNodes" />
                <node concept="2ShNRf" id="3KN3A4vEAr_" role="37wK5m">
                  <node concept="2HTt$P" id="3KN3A4vECvI" role="2ShVmc">
                    <node concept="3Tqbb2" id="3KN3A4vEDpx" role="2HTBi0" />
                    <node concept="37vLTw" id="3KN3A4vEDNf" role="2HTEbv">
                      <ref role="3cqZAo" node="6kREIVkWLqP" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6nFpYlun1M3" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYlun1LV" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4vCYR8" role="3cqZAp" />
        <node concept="3cpWs8" id="6nFpYlun4Ee" role="3cqZAp">
          <node concept="3cpWsn" id="6nFpYlun4Ef" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="6nFpYlun4qm" role="1tU5fm">
              <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
            </node>
            <node concept="2ShNRf" id="6nFpYlun4Eg" role="33vP2m">
              <node concept="1pGfFk" id="6nFpYlun4Eh" role="2ShVmc">
                <ref role="37wK5l" to="hano:7DvO2M9VeM1" resolve="RuleProcessingSession" />
                <node concept="1eOMI4" id="6nFpYlun4Ei" role="37wK5m">
                  <node concept="10QFUN" id="6nFpYlun4Ej" role="1eOMHV">
                    <node concept="A3Dl8" id="6nFpYlun4Ek" role="10QFUM">
                      <node concept="3qUE_q" id="6nFpYlun4El" role="A3Ik2">
                        <node concept="3uibUv" id="6nFpYlun4Em" role="3qUE_r">
                          <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6nFpYlun4En" role="10QFUP">
                      <node concept="liA8E" id="6nFpYlun4Eo" role="2OqNvi">
                        <ref role="37wK5l" to="fqlx:3KN3A4uUhpW" resolve="aspects" />
                      </node>
                      <node concept="2OqwBi" id="6nFpYlun4Ep" role="2Oq$k0">
                        <node concept="37vLTw" id="6nFpYlun4Eq" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KN3A4vCTIK" resolve="ac" />
                        </node>
                        <node concept="1uHKPH" id="6nFpYlun4Er" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6nFpYlun4Es" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYlun1LV" resolve="repository" />
                </node>
                <node concept="2YIFZM" id="6nFpYlun4Et" role="37wK5m">
                  <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                  <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                  <node concept="2OqwBi" id="6nFpYlun4Eu" role="37wK5m">
                    <node concept="2WthIp" id="6nFpYlun4Ev" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6nFpYlun4Ew" role="2OqNvi">
                      <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6nFpYlun0w_" role="3cqZAp" />
        <node concept="3cpWs8" id="6kREIVkWRFp" role="3cqZAp">
          <node concept="3cpWsn" id="6kREIVkWRFq" role="3cpWs9">
            <property role="TrG5h" value="applyTemplatesStep" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6kREIVkWRFk" role="1tU5fm">
              <ref role="3uigEE" to="1yqb:1pPth$lAwc0" resolve="ApplyTemplatesStep" />
            </node>
            <node concept="2ShNRf" id="6kREIVkWRFr" role="33vP2m">
              <node concept="1pGfFk" id="6kREIVkWRFs" role="2ShVmc">
                <ref role="37wK5l" to="1yqb:7kTeLbPt4na" resolve="ApplyTemplatesStep" />
                <node concept="37vLTw" id="6nFpYlun6L_" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYlun4Ef" resolve="session" />
                </node>
                <node concept="2ShNRf" id="3IIf9O_rLCc" role="37wK5m">
                  <node concept="Tc6Ow" id="3IIf9O_rNYG" role="2ShVmc">
                    <node concept="3Tqbb2" id="3IIf9O_rQv1" role="HW$YZ" />
                    <node concept="37vLTw" id="3IIf9O_rSZY" role="HW$Y0">
                      <ref role="3cqZAo" node="6kREIVkWLqP" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6nFpYlun1M1" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYlun1LV" resolve="repository" />
                </node>
                <node concept="2ShNRf" id="6nFpYluqJHO" role="37wK5m">
                  <node concept="HV5vD" id="6nFpYluqNL_" role="2ShVmc">
                    <ref role="HV5vE" to="ksgm:7DvO2M9Uago" resolve="RulesListTable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6kREIVkWT7i" role="3cqZAp" />
        <node concept="3clFbF" id="6kREIVkX6vM" role="3cqZAp">
          <node concept="2OqwBi" id="6kREIVkX6vO" role="3clFbG">
            <node concept="2ShNRf" id="6kREIVkX8wA" role="2Oq$k0">
              <node concept="1pGfFk" id="6kREIVkX8wB" role="2ShVmc">
                <ref role="37wK5l" to="1yqb:1pPth$lK1ZL" resolve="CoderulesHelper" />
                <node concept="10Nm6u" id="5MNibEMWwxM" role="37wK5m" />
                <node concept="2ShNRf" id="6kREIVkX8wC" role="37wK5m">
                  <node concept="YeOm9" id="6kREIVkX8wD" role="2ShVmc">
                    <node concept="1Y3b0j" id="6kREIVkX8wE" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="1yqb:3F6vMxqaxpm" resolve="CoderulesHelper.ProgressCallback" />
                      <node concept="3Tm1VV" id="6kREIVkX8wF" role="1B3o_S" />
                      <node concept="3clFb_" id="3MwxBzG65AK" role="jymVt">
                        <property role="TrG5h" value="done" />
                        <node concept="37vLTG" id="3MwxBzG65AL" role="3clF46">
                          <property role="TrG5h" value="message" />
                          <node concept="17QB3L" id="3MwxBzG65AM" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="3MwxBzG65AN" role="3clF46">
                          <property role="TrG5h" value="result" />
                          <node concept="3uibUv" id="3MwxBzG65AO" role="1tU5fm">
                            <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
                          </node>
                        </node>
                        <node concept="3cqZAl" id="3MwxBzG65AP" role="3clF45" />
                        <node concept="3Tm1VV" id="3MwxBzG65AQ" role="1B3o_S" />
                        <node concept="3clFbS" id="3MwxBzG65AT" role="3clF47">
                          <node concept="3clFbJ" id="3MwxBzG69bJ" role="3cqZAp">
                            <node concept="3clFbS" id="3MwxBzG69bL" role="3clFbx">
                              <node concept="3cpWs8" id="6kREIVkXHNY" role="3cqZAp">
                                <node concept="3cpWsn" id="6kREIVkXHNZ" role="3cpWs9">
                                  <property role="TrG5h" value="finder" />
                                  <node concept="3uibUv" id="6kREIVkXHNK" role="1tU5fm">
                                    <ref role="3uigEE" node="4n$QnzZQkF9" resolve="ApplicableTemplatesFinder" />
                                  </node>
                                  <node concept="2ShNRf" id="6kREIVkXHO0" role="33vP2m">
                                    <node concept="1pGfFk" id="6kREIVkXHO1" role="2ShVmc">
                                      <ref role="37wK5l" node="3YJ7yg2MSlk" resolve="ApplicableTemplatesFinder" />
                                      <node concept="2OqwBi" id="6kREIVkXHO2" role="37wK5m">
                                        <node concept="37vLTw" id="6kREIVkXHO3" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6kREIVkWRFq" resolve="applyTemplatesStep" />
                                        </node>
                                        <node concept="liA8E" id="6kREIVkXHO4" role="2OqNvi">
                                          <ref role="37wK5l" to="1yqb:20Ay2VeR9qk" resolve="ruleTemplates" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="6kREIVkXHO5" role="37wK5m">
                                        <node concept="2WthIp" id="6kREIVkXHO6" role="2Oq$k0" />
                                        <node concept="1DTwFV" id="6kREIVkXHO7" role="2OqNvi">
                                          <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="6kREIVkXK5h" role="3cqZAp">
                                <node concept="3cpWsn" id="6kREIVkXK5i" role="3cpWs9">
                                  <property role="TrG5h" value="query" />
                                  <node concept="3uibUv" id="6kREIVkXK57" role="1tU5fm">
                                    <ref role="3uigEE" to="9erk:~SearchQuery" resolve="SearchQuery" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1QHqEK" id="5upUcEtjDdE" role="3cqZAp">
                                <node concept="1QHqEC" id="5upUcEtjDdG" role="1QHqEI">
                                  <node concept="3clFbS" id="5upUcEtjDdI" role="1bW5cS">
                                    <node concept="3clFbF" id="5upUcEtiRpS" role="3cqZAp">
                                      <node concept="37vLTI" id="5upUcEtiRpU" role="3clFbG">
                                        <node concept="2ShNRf" id="6kREIVkXK5j" role="37vLTx">
                                          <node concept="1pGfFk" id="6kREIVkXK5k" role="2ShVmc">
                                            <ref role="37wK5l" to="9erk:~SearchQuery.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SearchScope)" resolve="SearchQuery" />
                                            <node concept="2OqwBi" id="6kREIVkXK5l" role="37wK5m">
                                              <node concept="2WthIp" id="6kREIVkXK5m" role="2Oq$k0" />
                                              <node concept="1DTwFV" id="6kREIVkXK5n" role="2OqNvi">
                                                <ref role="2WH_rO" node="3YJ7yg2LgUp" resolve="node" />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="6kREIVkXK5o" role="37wK5m">
                                              <node concept="2OqwBi" id="6kREIVkXK5p" role="2Oq$k0">
                                                <node concept="2WthIp" id="6kREIVkXK5q" role="2Oq$k0" />
                                                <node concept="1DTwFV" id="6kREIVkXK5r" role="2OqNvi">
                                                  <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="6kREIVkXK5s" role="2OqNvi">
                                                <ref role="37wK5l" to="z1c3:~Project.getScope()" resolve="getScope" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="5upUcEtiRpY" role="37vLTJ">
                                          <ref role="3cqZAo" node="6kREIVkXK5i" resolve="query" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5upUcEtjF_F" role="ukAjM">
                                  <node concept="2OqwBi" id="5upUcEtjEoy" role="2Oq$k0">
                                    <node concept="2WthIp" id="5upUcEtjEo_" role="2Oq$k0">
                                      <ref role="32nkFo" node="3YJ7yg2LgPI" resolve="FindApplicableTemplates" />
                                    </node>
                                    <node concept="1DTwFV" id="5upUcEtjEoB" role="2OqNvi">
                                      <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="5upUcEtjHoz" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="6kREIVkX8wN" role="3cqZAp">
                                <node concept="3cpWsn" id="6kREIVkX8wO" role="3cpWs9">
                                  <property role="TrG5h" value="opt" />
                                  <node concept="3uibUv" id="6kREIVkX8wP" role="1tU5fm">
                                    <ref role="3uigEE" to="ngmn:~UsageToolOptions" resolve="UsageToolOptions" />
                                  </node>
                                  <node concept="2OqwBi" id="6kREIVkX8wQ" role="33vP2m">
                                    <node concept="2OqwBi" id="6kREIVkX8wR" role="2Oq$k0">
                                      <node concept="2OqwBi" id="6kREIVkX8wS" role="2Oq$k0">
                                        <node concept="2OqwBi" id="6kREIVkX8wT" role="2Oq$k0">
                                          <node concept="2ShNRf" id="6kREIVkX8wU" role="2Oq$k0">
                                            <node concept="1pGfFk" id="6kREIVkX8wV" role="2ShVmc">
                                              <ref role="37wK5l" to="ngmn:~UsageToolOptions.&lt;init&gt;()" resolve="UsageToolOptions" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6kREIVkX8wW" role="2OqNvi">
                                            <ref role="37wK5l" to="ngmn:~UsageToolOptions.allowRunAgain(boolean)" resolve="allowRunAgain" />
                                            <node concept="3clFbT" id="6kREIVkX8wX" role="37wK5m" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="6kREIVkX8wY" role="2OqNvi">
                                          <ref role="37wK5l" to="ngmn:~UsageToolOptions.navigateIfSingle(boolean)" resolve="navigateIfSingle" />
                                          <node concept="3clFbT" id="6kREIVkX8wZ" role="37wK5m">
                                            <property role="3clFbU" value="false" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="6kREIVkX8x0" role="2OqNvi">
                                        <ref role="37wK5l" to="ngmn:~UsageToolOptions.forceNewTab(boolean)" resolve="forceNewTab" />
                                        <node concept="3clFbT" id="6kREIVkX8x1" role="37wK5m">
                                          <property role="3clFbU" value="false" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="6kREIVkX8x2" role="2OqNvi">
                                      <ref role="37wK5l" to="ngmn:~UsageToolOptions.notFoundMessage(java.lang.String)" resolve="notFoundMessage" />
                                      <node concept="Xl_RD" id="6kREIVkX8x3" role="37wK5m">
                                        <property role="Xl_RC" value="no applicable templates found" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="6kREIVkX8x4" role="3cqZAp">
                                <node concept="2YIFZM" id="6kREIVkX8x5" role="3clFbG">
                                  <ref role="1Pybhc" to="ngmn:~UsagesViewTool" resolve="UsagesViewTool" />
                                  <ref role="37wK5l" to="ngmn:~UsagesViewTool.showUsages(com.intellij.openapi.project.Project,jetbrains.mps.ide.findusages.model.IResultProvider,jetbrains.mps.ide.findusages.model.SearchQuery,jetbrains.mps.ide.findusages.view.UsageToolOptions)" resolve="showUsages" />
                                  <node concept="2OqwBi" id="6kREIVkX8x6" role="37wK5m">
                                    <node concept="2WthIp" id="6kREIVkX8x7" role="2Oq$k0" />
                                    <node concept="1DTwFV" id="6kREIVkX8x8" role="2OqNvi">
                                      <ref role="2WH_rO" node="3YJ7yg2OPyo" resolve="ideaProject" />
                                    </node>
                                  </node>
                                  <node concept="2YIFZM" id="6kREIVkX8x9" role="37wK5m">
                                    <ref role="37wK5l" to="ngmm:~FindUtils.makeProvider(jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder...)" resolve="makeProvider" />
                                    <ref role="1Pybhc" to="ngmm:~FindUtils" resolve="FindUtils" />
                                    <node concept="37vLTw" id="6kREIVkXHO8" role="37wK5m">
                                      <ref role="3cqZAo" node="6kREIVkXHNZ" resolve="finder" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="6kREIVkXK5t" role="37wK5m">
                                    <ref role="3cqZAo" node="6kREIVkXK5i" resolve="query" />
                                  </node>
                                  <node concept="37vLTw" id="6kREIVkX8xj" role="37wK5m">
                                    <ref role="3cqZAo" node="6kREIVkX8wO" resolve="opt" />
                                  </node>
                                </node>
                                <node concept="15s5l7" id="6kREIVkX8xk" role="lGtFl" />
                              </node>
                              <node concept="3clFbH" id="3MwxBzG6dqk" role="3cqZAp" />
                            </node>
                            <node concept="2OqwBi" id="3MwxBzG6aHK" role="3clFbw">
                              <node concept="37vLTw" id="3MwxBzG69IR" role="2Oq$k0">
                                <ref role="3cqZAo" node="3MwxBzG65AN" resolve="result" />
                              </node>
                              <node concept="liA8E" id="3MwxBzG6bvY" role="2OqNvi">
                                <ref role="37wK5l" to="psoy:7Oc59RS_hsj" resolve="isSuccessful" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="3MwxBzG6cPI" role="9aQIa">
                              <node concept="3clFbS" id="3MwxBzG6cPJ" role="9aQI4">
                                <node concept="3clFbF" id="6kREIVkX8xs" role="3cqZAp">
                                  <node concept="2YIFZM" id="6kREIVkX8xt" role="3clFbG">
                                    <ref role="37wK5l" to="jkm4:~Messages.showWarningDialog(java.lang.String,java.lang.String)" resolve="showWarningDialog" />
                                    <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                    <node concept="37vLTw" id="3MwxBzG6fXK" role="37wK5m">
                                      <ref role="3cqZAo" node="3MwxBzG65AL" resolve="message" />
                                    </node>
                                    <node concept="Xl_RD" id="6kREIVkX8xv" role="37wK5m">
                                      <property role="Xl_RC" value="Find Applicable Templates" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3MwxBzG65AU" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6kREIVkX8xw" role="37wK5m">
                  <ref role="3cqZAo" node="6kREIVkWRFq" resolve="applyTemplatesStep" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6kREIVkX6vQ" role="2OqNvi">
              <ref role="37wK5l" to="1yqb:1pPth$lNVW2" resolve="executeAsync" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6kREIVkX3RG" role="3cqZAp" />
      </node>
    </node>
    <node concept="2ScWuX" id="3YJ7yg2LDPl" role="tmbBb">
      <node concept="3clFbS" id="3YJ7yg2LDPm" role="2VODD2">
        <node concept="3cpWs8" id="3YJ7yg2LDWy" role="3cqZAp">
          <node concept="3cpWsn" id="3YJ7yg2LDWz" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="3YJ7yg2LDW$" role="1tU5fm" />
            <node concept="2OqwBi" id="3YJ7yg2LDW_" role="33vP2m">
              <node concept="2OqwBi" id="3YJ7yg2LDWA" role="2Oq$k0">
                <node concept="2WthIp" id="3YJ7yg2LDWB" role="2Oq$k0" />
                <node concept="1DTwFV" id="3YJ7yg2LDWC" role="2OqNvi">
                  <ref role="2WH_rO" node="3YJ7yg2LgUp" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="3YJ7yg2LDWD" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KN3A4v4utG" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4v4utI" role="3clFbx">
            <node concept="3cpWs6" id="3KN3A4v4xym" role="3cqZAp">
              <node concept="3clFbT" id="3KN3A4v4xSZ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3KN3A4v4wI0" role="3clFbw">
            <node concept="10Nm6u" id="3KN3A4v4x7o" role="3uHU7w" />
            <node concept="2OqwBi" id="3KN3A4v4vGA" role="3uHU7B">
              <node concept="37vLTw" id="3KN3A4v4uPi" role="2Oq$k0">
                <ref role="3cqZAo" node="3YJ7yg2LDWz" resolve="containingRoot" />
              </node>
              <node concept="I4A8Y" id="3KN3A4v4wo8" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4v4yCo" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4v4yZT" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4v4yZU" role="3cpWs9">
            <property role="TrG5h" value="allForModel" />
            <node concept="3vKaQO" id="3KN3A4v4yPq" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4v4yPx" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3KN3A4v4yPy" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3KN3A4v4yZV" role="33vP2m">
              <ref role="37wK5l" to="u46i:7P_FdVPW9uU" resolve="allForModel" />
              <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              <node concept="2OqwBi" id="3KN3A4v4yZW" role="37wK5m">
                <node concept="37vLTw" id="3KN3A4v4yZX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3YJ7yg2LDWz" resolve="containingRoot" />
                </node>
                <node concept="I4A8Y" id="3KN3A4v4yZY" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="3KN3A4v4yZZ" role="37wK5m">
                <node concept="2OqwBi" id="3KN3A4v4z00" role="2Oq$k0">
                  <node concept="2WthIp" id="3KN3A4v4z01" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3KN3A4v4z02" role="2OqNvi">
                    <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="3KN3A4v4z03" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4v4BxV" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4v4BxW" role="3cpWs9">
            <property role="TrG5h" value="hasTypeAspect" />
            <node concept="10P_77" id="3KN3A4v4Bmf" role="1tU5fm" />
            <node concept="2OqwBi" id="3KN3A4v4BxX" role="33vP2m">
              <node concept="37vLTw" id="3KN3A4v4BxY" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4v4yZU" resolve="allForModel" />
              </node>
              <node concept="3GX2aA" id="3KN3A4v4BxZ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Ei6D4B8VLF" role="3cqZAp">
          <node concept="3cpWsn" id="2Ei6D4B8VLG" role="3cpWs9">
            <property role="TrG5h" value="msc" />
            <node concept="3uibUv" id="2Ei6D4B8VLH" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
            </node>
            <node concept="2OqwBi" id="2Ei6D4B8VLI" role="33vP2m">
              <node concept="2OqwBi" id="2Ei6D4B8WD9" role="2Oq$k0">
                <node concept="2WthIp" id="2Ei6D4B8WDc" role="2Oq$k0" />
                <node concept="1DTwFV" id="2Ei6D4B8WDe" role="2OqNvi">
                  <ref role="2WH_rO" node="3YJ7yg2LgUn" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="2Ei6D4B8VLK" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="2Ei6D4B8VLL" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YJ7yg2LDX6" role="3cqZAp">
          <node concept="1Wc70l" id="3YJ7yg2LDX7" role="3clFbG">
            <node concept="37vLTw" id="3KN3A4v4DyL" role="3uHU7B">
              <ref role="3cqZAo" node="3KN3A4v4BxW" resolve="hasTypeAspect" />
            </node>
            <node concept="1eOMI4" id="2Ei6D4B8Yqx" role="3uHU7w">
              <node concept="22lmx$" id="2Ei6D4B8Yqy" role="1eOMHV">
                <node concept="3fqX7Q" id="2Ei6D4B8Yqz" role="3uHU7w">
                  <node concept="2OqwBi" id="2Ei6D4B8Yq$" role="3fr31v">
                    <node concept="37vLTw" id="2Ei6D4B8Yq_" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Ei6D4B8VLG" resolve="msc" />
                    </node>
                    <node concept="liA8E" id="2Ei6D4B8YqA" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2Ei6D4B8YqB" role="3uHU7B">
                  <node concept="37vLTw" id="2Ei6D4B8YqC" role="3uHU7B">
                    <ref role="3cqZAo" node="2Ei6D4B8VLG" resolve="msc" />
                  </node>
                  <node concept="10Nm6u" id="2Ei6D4B8YqD" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1pPth$lC1vN">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="HighlightingStep" />
    <property role="3GE5qa" value="launch.step" />
    <node concept="2tJIrI" id="52a_GfIQ21d" role="jymVt" />
    <node concept="3clFbW" id="1pPth$lGTrm" role="jymVt">
      <node concept="37vLTG" id="1pPth$lGTEd" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="1pPth$lGU5$" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="6kREIVkNEO2" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6kREIVkNFmB" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="1pPth$lGTro" role="3clF45" />
      <node concept="3Tm1VV" id="6kREIVkRzQN" role="1B3o_S" />
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
        <node concept="3clFbF" id="6kREIVkNFsh" role="3cqZAp">
          <node concept="37vLTI" id="6kREIVkNFsj" role="3clFbG">
            <node concept="2OqwBi" id="6kREIVkNHt8" role="37vLTJ">
              <node concept="Xjq3P" id="6kREIVkNHHt" role="2Oq$k0" />
              <node concept="2OwXpG" id="6kREIVkNHtb" role="2OqNvi">
                <ref role="2Oxat5" node="6kREIVkNFsd" resolve="mpsProject" />
              </node>
            </node>
            <node concept="37vLTw" id="6kREIVkNFsn" role="37vLTx">
              <ref role="3cqZAo" node="6kREIVkNEO2" resolve="mpsProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3F6vMxq_3wR" role="jymVt" />
    <node concept="3clFb_" id="Hg6EncbkRR" role="jymVt">
      <property role="TrG5h" value="schedule" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="Hg6EncbkRS" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3uibUv" id="Hg6EncbkRT" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
          <node concept="3uibUv" id="3bpBM3Puk6I" role="11_B2D">
            <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6kREIVkNB3d" role="3clF46">
        <property role="TrG5h" value="subscribeScheduler" />
        <node concept="3uibUv" id="6kREIVkNB3e" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Scheduler" resolve="Scheduler" />
        </node>
      </node>
      <node concept="3uibUv" id="Hg6EncbkRV" role="3clF45">
        <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
        <node concept="3uibUv" id="3bpBM3Puioq" role="11_B2D">
          <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
        </node>
      </node>
      <node concept="3Tmbuc" id="Hg6EncFQZO" role="1B3o_S" />
      <node concept="3clFbS" id="Hg6EncbkS1" role="3clF47">
        <node concept="3clFbF" id="5lxnBcU04KQ" role="3cqZAp">
          <node concept="2OqwBi" id="5lxnBcU05yI" role="3clFbG">
            <node concept="37vLTw" id="5lxnBcU04KO" role="2Oq$k0">
              <ref role="3cqZAo" node="Hg6EncbkRS" resolve="input" />
            </node>
            <node concept="liA8E" id="5lxnBcU085M" role="2OqNvi">
              <ref role="37wK5l" to="unkn:~Single.flatMap(io.reactivex.functions.Function)" resolve="flatMap" />
              <node concept="1bVj0M" id="5lxnBcU08CP" role="37wK5m">
                <node concept="37vLTG" id="5lxnBcU09rm" role="1bW2Oz">
                  <property role="TrG5h" value="inEff" />
                  <node concept="3uibUv" id="3bpBM3Pupvg" role="1tU5fm">
                    <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
                  </node>
                </node>
                <node concept="3clFbS" id="5lxnBcU08CQ" role="1bW5cS">
                  <node concept="3clFbH" id="q1hCixY6_U" role="3cqZAp" />
                  <node concept="3cpWs8" id="78H58of3fK6" role="3cqZAp">
                    <node concept="3cpWsn" id="78H58of3fK7" role="3cpWs9">
                      <property role="TrG5h" value="task" />
                      <node concept="3uibUv" id="78H58of3fJn" role="1tU5fm">
                        <ref role="3uigEE" to="o35r:78H58oeT9Hs" resolve="HighlightingTask" />
                      </node>
                      <node concept="2ShNRf" id="78H58of3fKb" role="33vP2m">
                        <node concept="1pGfFk" id="78H58of3fKc" role="2ShVmc">
                          <ref role="37wK5l" to="o35r:78H58oeTywK" resolve="HighlightingTask" />
                          <node concept="2OqwBi" id="78H58of3fKd" role="37wK5m">
                            <node concept="2OqwBi" id="78H58of3fKe" role="2Oq$k0">
                              <node concept="Xjq3P" id="78H58of3fKf" role="2Oq$k0" />
                              <node concept="2OwXpG" id="78H58of3fKg" role="2OqNvi">
                                <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
                              </node>
                            </node>
                            <node concept="liA8E" id="78H58of3fKh" role="2OqNvi">
                              <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="78H58of3fKi" role="37wK5m">
                            <node concept="Xjq3P" id="78H58of3fKj" role="2Oq$k0" />
                            <node concept="2OwXpG" id="78H58of3fKk" role="2OqNvi">
                              <ref role="2Oxat5" node="1pPth$lGU8f" resolve="editorComponent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1FOQehx4b_Y" role="3cqZAp">
                    <node concept="37vLTI" id="1FOQehx4b_Z" role="3clFbG">
                      <node concept="2OqwBi" id="1FOQehx4bA0" role="37vLTx">
                        <node concept="37vLTw" id="1FOQehx4bA1" role="2Oq$k0">
                          <ref role="3cqZAo" node="78H58of3fK7" resolve="task" />
                        </node>
                        <node concept="liA8E" id="1FOQehx4bA2" role="2OqNvi">
                          <ref role="37wK5l" to="o35r:1FOQehx0V$P" resolve="withReportItems" />
                          <node concept="2OqwBi" id="3bpBM3Pu$$N" role="37wK5m">
                            <node concept="37vLTw" id="1FOQehx4bA4" role="2Oq$k0">
                              <ref role="3cqZAo" node="5lxnBcU09rm" resolve="inEff" />
                            </node>
                            <node concept="liA8E" id="3bpBM3Pu_sp" role="2OqNvi">
                              <ref role="37wK5l" to="1yqb:2daneBOX8cN" resolve="getValue" />
                              <node concept="10M0yZ" id="3bpBM3PuCdZ" role="37wK5m">
                                <ref role="3cqZAo" to="tj24:2daneBP_Jiy" resolve="REPORT_ITEMS" />
                                <ref role="1PxDUh" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1FOQehx4bA6" role="37vLTJ">
                        <ref role="3cqZAo" node="78H58of3fK7" resolve="task" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="78H58of3v9B" role="3cqZAp" />
                  <node concept="3clFbF" id="5lxnBcU0aba" role="3cqZAp">
                    <node concept="2OqwBi" id="5lxnBcU0d7B" role="3clFbG">
                      <node concept="2YIFZM" id="6Yb9hAqxX1a" role="2Oq$k0">
                        <ref role="37wK5l" to="o35r:78H58of26Si" resolve="scheduleHighlighting" />
                        <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
                        <node concept="37vLTw" id="78H58of3wcK" role="37wK5m">
                          <ref role="3cqZAo" node="6kREIVkNFsd" resolve="mpsProject" />
                        </node>
                        <node concept="37vLTw" id="78H58of3wcL" role="37wK5m">
                          <ref role="3cqZAo" node="78H58of3fK7" resolve="task" />
                        </node>
                        <node concept="37vLTw" id="78H58of3wcM" role="37wK5m">
                          <ref role="3cqZAo" node="6kREIVkNB3d" resolve="subscribeScheduler" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5lxnBcU0eq5" role="2OqNvi">
                        <ref role="37wK5l" to="unkn:~Completable.andThen(io.reactivex.SingleSource)" resolve="andThen" />
                        <node concept="2YIFZM" id="5lxnBcU0gP7" role="37wK5m">
                          <ref role="37wK5l" to="unkn:~Single.fromCallable(java.util.concurrent.Callable)" resolve="fromCallable" />
                          <ref role="1Pybhc" to="unkn:~Single" resolve="Single" />
                          <node concept="1bVj0M" id="5lxnBcU0iBX" role="37wK5m">
                            <node concept="3clFbS" id="5lxnBcU0iBY" role="1bW5cS">
                              <node concept="3clFbH" id="3bpBM3QaoLJ" role="3cqZAp" />
                              <node concept="3clFbF" id="q1hCixYKM3" role="3cqZAp">
                                <node concept="2OqwBi" id="q1hCixYLlm" role="3clFbG">
                                  <node concept="37vLTw" id="q1hCixYKM1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5lxnBcU09rm" resolve="inEff" />
                                  </node>
                                  <node concept="liA8E" id="q1hCixYM6v" role="2OqNvi">
                                    <ref role="37wK5l" to="1yqb:51ek2rQD9Pw" resolve="compose" />
                                    <node concept="1bVj0M" id="51ek2rQIyq1" role="37wK5m">
                                      <node concept="3clFbS" id="51ek2rQIyq3" role="1bW5cS">
                                        <node concept="3clFbF" id="51ek2rQNLR3" role="3cqZAp">
                                          <node concept="2YIFZM" id="51ek2rQNMBs" role="3clFbG">
                                            <ref role="37wK5l" to="1yqb:51ek2rQN_SC" resolve="nullOf" />
                                            <ref role="1Pybhc" to="1yqb:2daneBOWXQd" resolve="Effect" />
                                            <node concept="Xl_RD" id="51ek2rQNNlI" role="37wK5m">
                                              <property role="Xl_RC" value="highlighting results" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="3bpBM3Qahlw" role="3cqZAp" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5lxnBcU08SE" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Hg6EncbkS2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Hg6EncbjnH" role="jymVt" />
    <node concept="3Tm1VV" id="3F6vMxq_2US" role="1B3o_S" />
    <node concept="3uibUv" id="1pPth$lC2Ed" role="1zkMxy">
      <ref role="3uigEE" to="1yqb:1pPth$lAzAx" resolve="Step" />
      <node concept="3uibUv" id="7eK3Dxvl0l7" role="11_B2D">
        <ref role="3uigEE" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
      </node>
    </node>
    <node concept="312cEg" id="1pPth$lGU8f" role="jymVt">
      <property role="TrG5h" value="editorComponent" />
      <node concept="3Tm6S6" id="1pPth$lGU8g" role="1B3o_S" />
      <node concept="3uibUv" id="1pPth$lGU8i" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="6kREIVkNFsd" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="6kREIVkNFse" role="1B3o_S" />
      <node concept="3uibUv" id="6kREIVkNFsg" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="55Q$YFtIVEP">
    <property role="3GE5qa" value="launch.step" />
    <property role="TrG5h" value="TypecheckingWithTraceStep" />
    <node concept="2tJIrI" id="55Q$YFtIVLz" role="jymVt" />
    <node concept="3clFbW" id="55Q$YFtIVZ9" role="jymVt">
      <node concept="37vLTG" id="6IQb_Rxsk$b" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="6IQb_Rxsk$c" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="55Q$YFtIX9v" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="55Q$YFtIX9w" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3cqZAl" id="55Q$YFtIVZb" role="3clF45" />
      <node concept="3Tm1VV" id="55Q$YFtIVZc" role="1B3o_S" />
      <node concept="3clFbS" id="55Q$YFtIVZd" role="3clF47">
        <node concept="XkiVB" id="55Q$YFtIXBZ" role="3cqZAp">
          <ref role="37wK5l" to="tj24:3KN3A4vHiEF" resolve="TypecheckingStep" />
          <node concept="2OqwBi" id="443LGHBSD_r" role="37wK5m">
            <node concept="37vLTw" id="55Q$YFtIYbT" role="2Oq$k0">
              <ref role="3cqZAo" node="55Q$YFtIX9v" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="443LGHBSEHm" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
          <node concept="10Nm6u" id="5gVsyvERlHX" role="37wK5m" />
        </node>
        <node concept="3clFbF" id="7Mte5SKkuX2" role="3cqZAp">
          <node concept="37vLTI" id="7Mte5SKkwQa" role="3clFbG">
            <node concept="37vLTw" id="7Mte5SKkxsg" role="37vLTx">
              <ref role="3cqZAo" node="55Q$YFtIX9v" resolve="mpsProject" />
            </node>
            <node concept="2OqwBi" id="7Mte5SKkvl0" role="37vLTJ">
              <node concept="Xjq3P" id="7Mte5SKkuX0" role="2Oq$k0" />
              <node concept="2OwXpG" id="7Mte5SKkvWJ" role="2OqNvi">
                <ref role="2Oxat5" node="443LGHBSGGx" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BMBBPCZ0vC" role="jymVt" />
    <node concept="3clFb_" id="Hg6Enc6pha" role="jymVt">
      <property role="TrG5h" value="schedule" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="Hg6Enc6phb" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3uibUv" id="Hg6Enc6phc" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
          <node concept="3uibUv" id="2daneBPWjy6" role="11_B2D">
            <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6kREIVkNs$S" role="3clF46">
        <property role="TrG5h" value="subscribeScheduler" />
        <node concept="3uibUv" id="6kREIVkNs$T" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Scheduler" resolve="Scheduler" />
        </node>
      </node>
      <node concept="3uibUv" id="Hg6Enc6phe" role="3clF45">
        <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
        <node concept="3uibUv" id="2daneBPWfh1" role="11_B2D">
          <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
        </node>
      </node>
      <node concept="3Tmbuc" id="Hg6EncFIBw" role="1B3o_S" />
      <node concept="3clFbS" id="Hg6Enc6phk" role="3clF47">
        <node concept="3cpWs8" id="51ek2rQQCB3" role="3cqZAp">
          <node concept="3cpWsn" id="51ek2rQQCB4" role="3cpWs9">
            <property role="TrG5h" value="preconfigure" />
            <node concept="3uibUv" id="51ek2rQQAtC" role="1tU5fm">
              <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
              <node concept="3uibUv" id="51ek2rQQAtF" role="11_B2D">
                <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
              </node>
            </node>
            <node concept="1rXfSq" id="51ek2rQQCB5" role="33vP2m">
              <ref role="37wK5l" to="1yqb:51ek2rQHvJ1" resolve="composeEffect" />
              <node concept="37vLTw" id="51ek2rQQCB6" role="37wK5m">
                <ref role="3cqZAo" node="Hg6Enc6phb" resolve="input" />
              </node>
              <node concept="1bVj0M" id="51ek2rQQCB7" role="37wK5m">
                <node concept="37vLTG" id="51ek2rQQCB8" role="1bW2Oz">
                  <property role="TrG5h" value="inEff" />
                  <node concept="3uibUv" id="51ek2rQQCB9" role="1tU5fm">
                    <ref role="3uigEE" to="1yqb:2daneBOWXQd" resolve="Effect" />
                  </node>
                </node>
                <node concept="3clFbS" id="51ek2rQQCBa" role="1bW5cS">
                  <node concept="3clFbH" id="51ek2rQQCBb" role="3cqZAp" />
                  <node concept="3cpWs8" id="51ek2rQQCBc" role="3cqZAp">
                    <node concept="3cpWsn" id="51ek2rQQCBd" role="3cpWs9">
                      <property role="TrG5h" value="program" />
                      <node concept="3uibUv" id="51ek2rQQCBe" role="1tU5fm">
                        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
                      </node>
                      <node concept="2OqwBi" id="51ek2rQQCBf" role="33vP2m">
                        <node concept="2OqwBi" id="51ek2rQQCBg" role="2Oq$k0">
                          <node concept="liA8E" id="51ek2rQQCBh" role="2OqNvi">
                            <ref role="37wK5l" to="1yqb:2daneBOX8cN" resolve="getValue" />
                            <node concept="10M0yZ" id="51ek2rQQCBi" role="37wK5m">
                              <ref role="1PxDUh" to="1yqb:1pPth$lAwc0" resolve="ApplyTemplatesStep" />
                              <ref role="3cqZAo" to="1yqb:2daneBPSu1V" resolve="PROGRAM_PRODUCER" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="51ek2rQQCBj" role="2Oq$k0">
                            <ref role="3cqZAo" node="51ek2rQQCB8" resolve="inEff" />
                          </node>
                        </node>
                        <node concept="liA8E" id="51ek2rQQCBk" role="2OqNvi">
                          <ref role="37wK5l" to="hano:3GlpCDSyO$P" resolve="getProgram" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="51ek2rQQCBl" role="3cqZAp">
                    <node concept="37vLTI" id="51ek2rQQCBm" role="3clFbG">
                      <node concept="2ShNRf" id="51ek2rQQCBn" role="37vLTx">
                        <node concept="1pGfFk" id="51ek2rQQCBo" role="2ShVmc">
                          <ref role="37wK5l" to="31yc:2daneBOSyP4" resolve="TraceEvents" />
                          <node concept="2OqwBi" id="51ek2rQQCBp" role="37wK5m">
                            <node concept="37vLTw" id="51ek2rQQCBq" role="2Oq$k0">
                              <ref role="3cqZAo" node="51ek2rQQCBd" resolve="program" />
                            </node>
                            <node concept="liA8E" id="51ek2rQQCBr" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Program.name()" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="51ek2rQQCBs" role="37vLTJ">
                        <node concept="Xjq3P" id="51ek2rQQCBt" role="2Oq$k0" />
                        <node concept="2OwXpG" id="51ek2rQQCBu" role="2OqNvi">
                          <ref role="2Oxat5" node="2daneBOT6rC" resolve="traceEvents" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="51ek2rQQCBv" role="3cqZAp">
                    <node concept="37vLTI" id="51ek2rQQCBw" role="3clFbG">
                      <node concept="2OqwBi" id="51ek2rQQCBx" role="37vLTJ">
                        <node concept="Xjq3P" id="51ek2rQQCBy" role="2Oq$k0" />
                        <node concept="2OwXpG" id="51ek2rQQCBz" role="2OqNvi">
                          <ref role="2Oxat5" node="3F6vMxqv_px" resolve="msgtrace" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="51ek2rQQCB$" role="37vLTx">
                        <node concept="1pGfFk" id="51ek2rQQCB_" role="2ShVmc">
                          <ref role="37wK5l" to="o35r:4i4XGQZmLRe" resolve="MessageViewInfoTracer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="51ek2rQQCBA" role="3cqZAp">
                    <node concept="2YIFZM" id="51ek2rQQCBB" role="3clFbG">
                      <ref role="1Pybhc" to="1yqb:2daneBOWXQd" resolve="Effect" />
                      <ref role="37wK5l" to="1yqb:6BMBBPCUL2C" resolve="of" />
                      <node concept="2OqwBi" id="51ek2rQQCBC" role="37wK5m">
                        <node concept="10M0yZ" id="51ek2rQQCBD" role="2Oq$k0">
                          <ref role="1PxDUh" to="1yqb:RZQG98UNsT" resolve="ConfigureEvalStep" />
                          <ref role="3cqZAo" to="1yqb:RZQG98Ve3Q" resolve="TRACE" />
                        </node>
                        <node concept="liA8E" id="51ek2rQQCBE" role="2OqNvi">
                          <ref role="37wK5l" to="1yqb:6BMBBPCRIcz" resolve="is" />
                          <node concept="2ShNRf" id="51ek2rQQCBF" role="37wK5m">
                            <node concept="1pGfFk" id="51ek2rQQCBG" role="2ShVmc">
                              <ref role="37wK5l" to="1yqb:7nPD14NbIzp" resolve="MultiTrace" />
                              <node concept="2OqwBi" id="51ek2rQQCBH" role="37wK5m">
                                <node concept="37vLTw" id="51ek2rQQCBI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2daneBOT6rC" resolve="traceEvents" />
                                </node>
                                <node concept="liA8E" id="51ek2rQQCBJ" role="2OqNvi">
                                  <ref role="37wK5l" to="31yc:YGS68MEx_L" resolve="trace" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="51ek2rQQCBK" role="37wK5m">
                                <ref role="3cqZAo" node="3F6vMxqv_px" resolve="msgtrace" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="51ek2rQQCBL" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51ek2rQQHfa" role="3cqZAp" />
        <node concept="3clFbF" id="6BMBBPCZdEG" role="3cqZAp">
          <node concept="2OqwBi" id="6BMBBPCZkfO" role="3clFbG">
            <node concept="2OqwBi" id="6BMBBPCZn_f" role="2Oq$k0">
              <node concept="3nyPlj" id="6BMBBPCZdEE" role="2Oq$k0">
                <ref role="37wK5l" to="tj24:RZQG98YN6h" resolve="schedule" />
                <node concept="37vLTw" id="51ek2rQQCBM" role="37wK5m">
                  <ref role="3cqZAo" node="51ek2rQQCB4" resolve="preconfigure" />
                </node>
                <node concept="37vLTw" id="6BMBBPCZh$$" role="37wK5m">
                  <ref role="3cqZAo" node="6kREIVkNs$S" resolve="subscribeScheduler" />
                </node>
              </node>
              <node concept="liA8E" id="6BMBBPCZq4$" role="2OqNvi">
                <ref role="37wK5l" to="unkn:~Single.observeOn(io.reactivex.Scheduler)" resolve="observeOn" />
                <node concept="2YIFZM" id="6BMBBPCZvvZ" role="37wK5m">
                  <ref role="37wK5l" to="f4yq:~SwingSchedulers.edt()" resolve="edt" />
                  <ref role="1Pybhc" to="f4yq:~SwingSchedulers" resolve="SwingSchedulers" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6BMBBPCZm$1" role="2OqNvi">
              <ref role="37wK5l" to="unkn:~Single.doFinally(io.reactivex.functions.Action)" resolve="doFinally" />
              <node concept="1bVj0M" id="6IQb_Rxswo2" role="37wK5m">
                <node concept="3clFbS" id="6IQb_Rxswo3" role="1bW5cS">
                  <node concept="3clFbH" id="2daneBOT3gq" role="3cqZAp" />
                  <node concept="3cpWs8" id="2daneBOT1Ck" role="3cqZAp">
                    <node concept="3cpWsn" id="2daneBOT1Cl" role="3cpWs9">
                      <property role="TrG5h" value="activationTrace" />
                      <node concept="3uibUv" id="2daneBOT1Cm" role="1tU5fm">
                        <ref role="3uigEE" to="o35r:7nPD14Nbbbe" resolve="TraceComponent" />
                      </node>
                      <node concept="2YIFZM" id="2daneBOT1Cn" role="33vP2m">
                        <ref role="1Pybhc" to="o35r:7nPD14Nbbbe" resolve="TraceComponent" />
                        <ref role="37wK5l" to="o35r:7nPD14Nboty" resolve="get" />
                        <node concept="37vLTw" id="2daneBOT1Co" role="37wK5m">
                          <ref role="3cqZAo" node="443LGHBSGGx" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2daneBOUCgQ" role="3cqZAp">
                    <node concept="3clFbS" id="2daneBOUCgS" role="3clFbx">
                      <node concept="3cpWs8" id="2daneBOT1Cp" role="3cqZAp">
                        <node concept="3cpWsn" id="2daneBOT1Cq" role="3cpWs9">
                          <property role="TrG5h" value="openedTab" />
                          <node concept="3uibUv" id="2daneBOT1Cr" role="1tU5fm">
                            <ref role="3uigEE" to="o35r:5X6ji59z5Fa" resolve="TraceTab" />
                          </node>
                          <node concept="2OqwBi" id="2daneBOT1Cs" role="33vP2m">
                            <node concept="37vLTw" id="2daneBOT1Ct" role="2Oq$k0">
                              <ref role="3cqZAo" node="2daneBOT1Cl" resolve="activationTrace" />
                            </node>
                            <node concept="liA8E" id="2daneBOT1Cu" role="2OqNvi">
                              <ref role="37wK5l" to="o35r:7nPD14Nb$fz" resolve="openTab" />
                              <node concept="2OqwBi" id="2daneBOT1Cv" role="37wK5m">
                                <node concept="37vLTw" id="2daneBOTMcC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2daneBOT6rC" resolve="traceEvents" />
                                </node>
                                <node concept="liA8E" id="2daneBOTNRu" role="2OqNvi">
                                  <ref role="37wK5l" to="31yc:2daneBOTzUn" resolve="name" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2daneBOTK_4" role="37wK5m">
                                <ref role="3cqZAo" node="2daneBOT6rC" resolve="traceEvents" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2ceN1hCIpLA" role="3cqZAp" />
                      <node concept="1QHqEK" id="6IQb_Rxsy5D" role="3cqZAp">
                        <node concept="1QHqEC" id="6IQb_Rxsy5E" role="1QHqEI">
                          <node concept="3clFbS" id="6IQb_Rxsy5F" role="1bW5cS">
                            <node concept="3SKdUt" id="6IQb_Rxsy5M" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYyhQ" role="1aUNEU">
                                <node concept="3oM_SD" id="589APehYyhR" role="1PaTwD">
                                  <property role="3oM_SC" value="actually" />
                                </node>
                                <node concept="3oM_SD" id="589APehYyhS" role="1PaTwD">
                                  <property role="3oM_SC" value="show" />
                                </node>
                                <node concept="3oM_SD" id="589APehYyhT" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="589APehYyhU" role="1PaTwD">
                                  <property role="3oM_SC" value="trace" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6IQb_Rxsy5T" role="3cqZAp">
                              <node concept="2OqwBi" id="6IQb_Rxsy5U" role="3clFbG">
                                <node concept="37vLTw" id="2daneBOUwlg" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2daneBOT1Cq" resolve="openedTab" />
                                </node>
                                <node concept="liA8E" id="6IQb_Rxsy5W" role="2OqNvi">
                                  <ref role="37wK5l" to="o35r:5X6ji59xVZa" resolve="refreshActivation" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6IQb_Rxsy6l" role="ukAjM">
                          <node concept="37vLTw" id="443LGHBSNej" role="2Oq$k0">
                            <ref role="3cqZAo" node="443LGHBSGGx" resolve="mpsProject" />
                          </node>
                          <node concept="liA8E" id="6IQb_Rxsy6n" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="2daneBOUDJ6" role="3clFbw">
                      <node concept="10Nm6u" id="2daneBOUEku" role="3uHU7w" />
                      <node concept="37vLTw" id="2daneBOUCRq" role="3uHU7B">
                        <ref role="3cqZAo" node="2daneBOT1Cl" resolve="activationTrace" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2daneBOUGNA" role="3cqZAp" />
                  <node concept="3clFbF" id="2ceN1hCIoTH" role="3cqZAp">
                    <node concept="2OqwBi" id="2ceN1hCIqJG" role="3clFbG">
                      <node concept="37vLTw" id="2ceN1hCIoTF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3F6vMxqv_px" resolve="msgtrace" />
                      </node>
                      <node concept="liA8E" id="2ceN1hCIseF" role="2OqNvi">
                        <ref role="37wK5l" to="o35r:2ceN1hCFYVI" resolve="dump" />
                        <node concept="37vLTw" id="2ceN1hCIt59" role="37wK5m">
                          <ref role="3cqZAo" node="443LGHBSGGx" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2daneBOUafM" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="Hg6Enc6phl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="55Q$YFtIVL_" role="jymVt" />
    <node concept="312cEg" id="443LGHBSGGx" role="jymVt">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="443LGHBSGGy" role="1B3o_S" />
      <node concept="3uibUv" id="443LGHBSIBM" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="3F6vMxqv_px" role="jymVt">
      <property role="TrG5h" value="msgtrace" />
      <node concept="3Tm6S6" id="6kREIVkHFzh" role="1B3o_S" />
      <node concept="3uibUv" id="6IQb_Rx4498" role="1tU5fm">
        <ref role="3uigEE" to="o35r:6IQb_Rx3pZ8" resolve="MessageViewInfoTracer" />
      </node>
    </node>
    <node concept="312cEg" id="2daneBOT6rC" role="jymVt">
      <property role="TrG5h" value="traceEvents" />
      <node concept="3Tm6S6" id="2daneBOT6rD" role="1B3o_S" />
      <node concept="3uibUv" id="2daneBOT8sK" role="1tU5fm">
        <ref role="3uigEE" to="31yc:2ceN1hCYUQN" resolve="TraceEvents" />
      </node>
    </node>
    <node concept="3Tm1VV" id="55Q$YFtIVEQ" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yn8c2j" role="1zkMxy">
      <ref role="3uigEE" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
    </node>
  </node>
  <node concept="312cEu" id="6hqFpWnf9Mu">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="TypecheckingActions" />
    <node concept="2tJIrI" id="6hqFpWnfb0U" role="jymVt" />
    <node concept="2YIFZL" id="6hqFpWnfbeu" role="jymVt">
      <property role="TrG5h" value="isTypecheckingAvailable" />
      <node concept="37vLTG" id="6hqFpWnfbqG" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6hqFpWnfiW4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6hqFpWnfcD1" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="6hqFpWnfLje" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="6hqFpWnfhk_" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="6hqFpWnfhNL" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="10P_77" id="6hqFpWnfblF" role="3clF45" />
      <node concept="3Tm1VV" id="6hqFpWnfbex" role="1B3o_S" />
      <node concept="3clFbS" id="6hqFpWnfbey" role="3clF47">
        <node concept="3cpWs8" id="6hqFpWnfbDx" role="3cqZAp">
          <node concept="3cpWsn" id="6hqFpWnfbDy" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="6hqFpWnfbDz" role="1tU5fm" />
            <node concept="2OqwBi" id="6hqFpWnfbD$" role="33vP2m">
              <node concept="liA8E" id="6hqFpWnfbDC" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
              <node concept="37vLTw" id="6hqFpWnfcn_" role="2Oq$k0">
                <ref role="3cqZAo" node="6hqFpWnfbqG" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7WKNeR8ULi0" role="3cqZAp">
          <node concept="3cpWsn" id="7WKNeR8ULi1" role="3cpWs9">
            <property role="TrG5h" value="acs" />
            <node concept="3vKaQO" id="7WKNeR8ULhW" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4v4O7l" role="3O5elw">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3KN3A4v4O$I" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="NKt6yomRVQ" role="33vP2m">
              <ref role="37wK5l" to="u46i:7P_FdVPW9uU" resolve="allForModel" />
              <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              <node concept="2OqwBi" id="7WKNeR8ULi3" role="37wK5m">
                <node concept="37vLTw" id="7WKNeR8ULi4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6hqFpWnfbDy" resolve="containingRoot" />
                </node>
                <node concept="I4A8Y" id="7WKNeR8ULi5" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8ULi6" role="37wK5m">
                <node concept="37vLTw" id="7WKNeR8ULi7" role="2Oq$k0">
                  <ref role="3cqZAo" node="6hqFpWnfhk_" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="7WKNeR8ULi8" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6hqFpWnfbDM" role="3cqZAp">
          <node concept="3cpWsn" id="6hqFpWnfbDN" role="3cpWs9">
            <property role="TrG5h" value="hasTypeAspect" />
            <node concept="10P_77" id="6hqFpWnfbDO" role="1tU5fm" />
            <node concept="2OqwBi" id="7WKNeR8UNGb" role="33vP2m">
              <node concept="37vLTw" id="7WKNeR8UN2f" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8ULi1" resolve="acs" />
              </node>
              <node concept="3GX2aA" id="7WKNeR8UOJy" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Ei6D4B8QsA" role="3cqZAp">
          <node concept="3cpWsn" id="2Ei6D4B8QsB" role="3cpWs9">
            <property role="TrG5h" value="msc" />
            <node concept="3uibUv" id="2Ei6D4B8QpY" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
            </node>
            <node concept="2OqwBi" id="2Ei6D4B8QsC" role="33vP2m">
              <node concept="37vLTw" id="2Ei6D4B8QsD" role="2Oq$k0">
                <ref role="3cqZAo" node="6hqFpWnfhk_" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="2Ei6D4B8QsE" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="2Ei6D4B8QsF" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6hqFpWnfbE7" role="3cqZAp">
          <node concept="1Wc70l" id="6hqFpWnfbE8" role="3clFbG">
            <node concept="1Wc70l" id="6hqFpWnfbE9" role="3uHU7B">
              <node concept="3clFbC" id="6hqFpWnfbEa" role="3uHU7w">
                <node concept="37vLTw" id="6hqFpWnfbEb" role="3uHU7B">
                  <ref role="3cqZAo" node="6hqFpWnfbDy" resolve="containingRoot" />
                </node>
                <node concept="2OqwBi" id="6hqFpWnfbEc" role="3uHU7w">
                  <node concept="37vLTw" id="6hqFpWnfgLE" role="2Oq$k0">
                    <ref role="3cqZAo" node="6hqFpWnfcD1" resolve="editorComponent" />
                  </node>
                  <node concept="liA8E" id="6hqFpWnfbEg" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6hqFpWnfbEh" role="3uHU7B">
                <ref role="3cqZAo" node="6hqFpWnfbDN" resolve="hasTypeAspect" />
              </node>
            </node>
            <node concept="1eOMI4" id="2Ei6D4B8QRH" role="3uHU7w">
              <node concept="22lmx$" id="2Ei6D4B8Ro1" role="1eOMHV">
                <node concept="3fqX7Q" id="2Ei6D4B8S1_" role="3uHU7w">
                  <node concept="2OqwBi" id="2Ei6D4B8S1B" role="3fr31v">
                    <node concept="37vLTw" id="2Ei6D4B8S1C" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Ei6D4B8QsB" resolve="msc" />
                    </node>
                    <node concept="liA8E" id="2Ei6D4B8S1D" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:IIVxgkMGh8" resolve="isSessionActive" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2Ei6D4B8ReR" role="3uHU7B">
                  <node concept="37vLTw" id="2Ei6D4B8QYG" role="3uHU7B">
                    <ref role="3cqZAo" node="2Ei6D4B8QsB" resolve="msc" />
                  </node>
                  <node concept="10Nm6u" id="2Ei6D4B8Rlu" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6hqFpWnfb0Z" role="jymVt" />
    <node concept="2YIFZL" id="4vBwiiVBaJD" role="jymVt">
      <property role="TrG5h" value="showType" />
      <node concept="37vLTG" id="4vBwiiVBdC0" role="3clF46">
        <property role="TrG5h" value="editorCell" />
        <node concept="3uibUv" id="4vBwiiVBdQ_" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="4vBwiiVBaJE" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="4vBwiiVBaJF" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="4vBwiiVBaJG" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="4vBwiiVBaJH" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="4vBwiiVBaJI" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="4vBwiiVBaJJ" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="4vBwiiVBdws" role="3clF45">
        <ref role="3uigEE" node="4vBwiiVz_UL" resolve="TypecheckingActions.ShowType" />
      </node>
      <node concept="3Tm1VV" id="4vBwiiVBaJL" role="1B3o_S" />
      <node concept="3clFbS" id="4vBwiiVBaJM" role="3clF47">
        <node concept="3clFbF" id="6kEuChzYI_x" role="3cqZAp">
          <node concept="2ShNRf" id="6kEuChzYI_v" role="3clFbG">
            <node concept="1pGfFk" id="6kEuChzZ59o" role="2ShVmc">
              <ref role="37wK5l" node="4vBwiiVz_UN" resolve="TypecheckingActions.ShowType" />
              <node concept="37vLTw" id="6kEuChzZ8dK" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBdC0" resolve="editorCell" />
              </node>
              <node concept="37vLTw" id="6kEuChzZ5Xz" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBaJE" resolve="editorComponent" />
              </node>
              <node concept="37vLTw" id="6kEuChzZ8RA" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBaJG" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="6kEuChzZ9ac" role="37wK5m">
                <ref role="3cqZAo" node="4vBwiiVBaJI" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8RgMN" role="jymVt" />
    <node concept="2YIFZL" id="7WKNeR8SP2E" role="jymVt">
      <property role="TrG5h" value="launchQuery" />
      <node concept="37vLTG" id="5EDW3XEpvo4" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3uibUv" id="5EDW3XEpvC1" role="1tU5fm">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR8SP2H" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="7WKNeR8SP2I" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR8SP2J" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7WKNeR8SP2K" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR8SP2L" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="7WKNeR8SP2M" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="7WKNeR8T4zY" role="3clF45">
        <ref role="3uigEE" node="7WKNeR8SQxg" resolve="TypecheckingActions.LaunchQuery" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR8SP2O" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR8SP2P" role="3clF47">
        <node concept="3clFbF" id="7WKNeR8SP2Q" role="3cqZAp">
          <node concept="2ShNRf" id="7WKNeR8SP2R" role="3clFbG">
            <node concept="1pGfFk" id="7WKNeR8SP2S" role="2ShVmc">
              <ref role="37wK5l" node="7WKNeR8SQxi" resolve="TypecheckingActions.LaunchQuery" />
              <node concept="37vLTw" id="5EDW3XEpw0l" role="37wK5m">
                <ref role="3cqZAo" node="5EDW3XEpvo4" resolve="query" />
              </node>
              <node concept="37vLTw" id="7WKNeR8SP2U" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8SP2H" resolve="editorComponent" />
              </node>
              <node concept="37vLTw" id="7WKNeR8SP2V" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8SP2J" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="7WKNeR8SP2W" role="37wK5m">
                <ref role="3cqZAo" node="7WKNeR8SP2L" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8SP2D" role="jymVt" />
    <node concept="312cEu" id="7WKNeR8RiDf" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="AbstractAction" />
      <property role="1sVAO0" value="true" />
      <node concept="2tJIrI" id="7WKNeR8Rk5Y" role="jymVt" />
      <node concept="3clFbW" id="7WKNeR8SByE" role="jymVt">
        <node concept="37vLTG" id="7WKNeR8SEgi" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="7WKNeR8SEgj" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SEgk" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="7WKNeR8SEgl" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SEgm" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="7WKNeR8SEgn" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3cqZAl" id="7WKNeR8SByG" role="3clF45" />
        <node concept="3Tmbuc" id="7WKNeR8SCRm" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8SByI" role="3clF47">
          <node concept="3clFbF" id="7WKNeR8SEkn" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8SEko" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8SEkp" role="37vLTx">
                <ref role="3cqZAo" node="7WKNeR8SEgi" resolve="editorComponent" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SEkq" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8SEkr" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8SEks" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfwwm" resolve="editorComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8SEkA" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8SEkB" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8SEkC" role="37vLTx">
                <ref role="3cqZAo" node="7WKNeR8SEgk" resolve="mpsProject" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SEkD" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8SEkE" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8SEkF" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfkNg" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8SEkP" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8SEkQ" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8SEkR" role="37vLTx">
                <ref role="3cqZAo" node="7WKNeR8SEgm" resolve="ideaProject" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SEkS" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8SEkT" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8SEkU" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfoA9" resolve="ideaProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8SCTJ" role="jymVt" />
      <node concept="3clFb_" id="7WKNeR8RobH" role="jymVt">
        <property role="TrG5h" value="withTrace" />
        <node concept="3uibUv" id="7WKNeR8RprK" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="7WKNeR8RobJ" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8RobK" role="3clF47">
          <node concept="3clFbF" id="7WKNeR8RobL" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR8RobM" role="3clFbG">
              <node concept="3clFbT" id="7WKNeR8RobN" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8RobO" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR8RobP" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR8RobQ" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnjd0A" resolve="trace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8RobR" role="3cqZAp">
            <node concept="Xjq3P" id="7WKNeR8RobS" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8RY$m" role="jymVt" />
      <node concept="3clFb_" id="6hqFpWniBeE" role="jymVt">
        <property role="TrG5h" value="forNodes" />
        <node concept="37vLTG" id="6hqFpWniEgR" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="6hqFpWniZ5l" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="7WKNeR8S032" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="6hqFpWniBeH" role="1B3o_S" />
        <node concept="3clFbS" id="6hqFpWniBeI" role="3clF47">
          <node concept="3clFbJ" id="3IIf9O_lehC" role="3cqZAp">
            <node concept="3clFbS" id="3IIf9O_lehE" role="3clFbx">
              <node concept="YS8fn" id="3IIf9O_lg_W" role="3cqZAp">
                <node concept="2ShNRf" id="3IIf9O_lgQd" role="YScLw">
                  <node concept="1pGfFk" id="3IIf9O_ljbB" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="3IIf9O_n04f" role="37wK5m">
                      <property role="Xl_RC" value="parameter already set" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3IIf9O_lfWl" role="3clFbw">
              <node concept="10Nm6u" id="3IIf9O_lgcl" role="3uHU7w" />
              <node concept="2OqwBi" id="3IIf9O_mZn_" role="3uHU7B">
                <node concept="Xjq3P" id="3IIf9O_mZ1Q" role="2Oq$k0" />
                <node concept="2OwXpG" id="3IIf9O_mZzO" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfpcc" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6hqFpWniFVp" role="3cqZAp">
            <node concept="37vLTI" id="6hqFpWniIps" role="3clFbG">
              <node concept="37vLTw" id="6hqFpWniIHR" role="37vLTx">
                <ref role="3cqZAo" node="6hqFpWniEgR" resolve="nodes" />
              </node>
              <node concept="2OqwBi" id="6hqFpWniGgy" role="37vLTJ">
                <node concept="Xjq3P" id="6hqFpWniFVo" role="2Oq$k0" />
                <node concept="2OwXpG" id="6hqFpWniI3i" role="2OqNvi">
                  <ref role="2Oxat5" node="6hqFpWnfpcc" resolve="nodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6hqFpWniJaS" role="3cqZAp">
            <node concept="Xjq3P" id="6hqFpWniJaQ" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8SaXX" role="jymVt" />
      <node concept="3clFb_" id="6hqFpWnimEi" role="jymVt">
        <property role="TrG5h" value="forNode" />
        <node concept="37vLTG" id="6hqFpWnirzt" role="3clF46">
          <property role="TrG5h" value="root" />
          <node concept="3Tqbb2" id="6hqFpWnisvm" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="7WKNeR8ScAf" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="6hqFpWnimEl" role="1B3o_S" />
        <node concept="3clFbS" id="6hqFpWnimEm" role="3clF47">
          <node concept="3clFbF" id="3IIf9O_lDlI" role="3cqZAp">
            <node concept="2OqwBi" id="3IIf9O_lDPs" role="3clFbG">
              <node concept="Xjq3P" id="3IIf9O_lDlG" role="2Oq$k0" />
              <node concept="liA8E" id="3IIf9O_lE4n" role="2OqNvi">
                <ref role="37wK5l" node="6hqFpWniBeE" resolve="forNodes" />
                <node concept="2ShNRf" id="3IIf9O_lEdv" role="37wK5m">
                  <node concept="Tc6Ow" id="3IIf9O_lEdw" role="2ShVmc">
                    <node concept="3Tqbb2" id="3IIf9O_lEdx" role="HW$YZ" />
                    <node concept="37vLTw" id="3IIf9O_lEdy" role="HW$Y0">
                      <ref role="3cqZAo" node="6hqFpWnirzt" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8Rk61" role="jymVt" />
      <node concept="3clFb_" id="7WKNeR8RsrK" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="true" />
        <node concept="3cqZAl" id="7WKNeR8RsrM" role="3clF45" />
        <node concept="3Tm1VV" id="7WKNeR8RsrN" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8RsrO" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7WKNeR8RiMd" role="jymVt" />
      <node concept="3Tm1VV" id="7WKNeR8RiDg" role="1B3o_S" />
      <node concept="312cEg" id="6hqFpWnjd0A" role="jymVt">
        <property role="TrG5h" value="trace" />
        <node concept="3Tmbuc" id="7WKNeR8Ro7Y" role="1B3o_S" />
        <node concept="10P_77" id="6hqFpWnjeks" role="1tU5fm" />
        <node concept="3clFbT" id="6hqFpWnjeCv" role="33vP2m">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="312cEg" id="6hqFpWnfpcc" role="jymVt">
        <property role="TrG5h" value="nodes" />
        <node concept="3Tmbuc" id="7WKNeR8RUdJ" role="1B3o_S" />
        <node concept="2I9FWS" id="6hqFpWniSgs" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="7WKNeR8Syrl" role="jymVt" />
      <node concept="312cEg" id="6hqFpWnfwwm" role="jymVt">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3Tmbuc" id="7WKNeR8Sxpp" role="1B3o_S" />
        <node concept="3uibUv" id="6hqFpWnfKMX" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="312cEg" id="6hqFpWnfkNg" role="jymVt">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3Tmbuc" id="7WKNeR8SxI_" role="1B3o_S" />
        <node concept="3uibUv" id="6hqFpWnflog" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="312cEg" id="6hqFpWnfoA9" role="jymVt">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3Tmbuc" id="7WKNeR8SyiE" role="1B3o_S" />
        <node concept="3uibUv" id="6hqFpWnfoT0" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vBwiiVApeL" role="jymVt" />
    <node concept="312cEu" id="4vBwiiVz_UL" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ShowType" />
      <node concept="2tJIrI" id="4vBwiiVz_UM" role="jymVt" />
      <node concept="3clFbW" id="4vBwiiVz_UN" role="jymVt">
        <node concept="37vLTG" id="4vBwiiV$35z" role="3clF46">
          <property role="TrG5h" value="cell" />
          <node concept="3uibUv" id="4vBwiiV$3AG" role="1tU5fm">
            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
        <node concept="37vLTG" id="4vBwiiVz_UO" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="4vBwiiVz_UP" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="4vBwiiVz_UQ" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="4vBwiiVz_UR" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
        <node concept="37vLTG" id="4vBwiiVz_US" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="4vBwiiVz_UT" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3cqZAl" id="4vBwiiVz_UU" role="3clF45" />
        <node concept="3Tm1VV" id="4vBwiiVz_UV" role="1B3o_S" />
        <node concept="3clFbS" id="4vBwiiVz_UW" role="3clF47">
          <node concept="XkiVB" id="7WKNeR8SHAV" role="3cqZAp">
            <ref role="37wK5l" node="7WKNeR8SByE" resolve="TypecheckingActions.AbstractAction" />
            <node concept="37vLTw" id="7WKNeR8SHAW" role="37wK5m">
              <ref role="3cqZAo" node="4vBwiiVz_UO" resolve="editorComponent" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SHAX" role="37wK5m">
              <ref role="3cqZAo" node="4vBwiiVz_UQ" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SHAY" role="37wK5m">
              <ref role="3cqZAo" node="4vBwiiVz_US" resolve="ideaProject" />
            </node>
          </node>
          <node concept="3clFbF" id="4vBwiiV$3BJ" role="3cqZAp">
            <node concept="37vLTI" id="4vBwiiV$3BL" role="3clFbG">
              <node concept="2OqwBi" id="4vBwiiV$4A1" role="37vLTJ">
                <node concept="Xjq3P" id="4vBwiiV$4PN" role="2Oq$k0" />
                <node concept="2OwXpG" id="4vBwiiV$4A4" role="2OqNvi">
                  <ref role="2Oxat5" node="4vBwiiV$3BF" resolve="editorCell" />
                </node>
              </node>
              <node concept="37vLTw" id="4vBwiiV$3BP" role="37vLTx">
                <ref role="3cqZAo" node="4vBwiiV$35z" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4vBwiiVz_Vf" role="jymVt" />
      <node concept="3clFb_" id="3IIf9O_ljeT" role="jymVt">
        <property role="TrG5h" value="forNodes" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3IIf9O_ljeU" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="2I9FWS" id="3IIf9O_ljeV" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="3IIf9O_ljeW" role="3clF45">
          <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
        </node>
        <node concept="3Tm1VV" id="3IIf9O_ljeX" role="1B3o_S" />
        <node concept="3clFbS" id="3IIf9O_ljff" role="3clF47">
          <node concept="3clFbJ" id="3IIf9O_llrt" role="3cqZAp">
            <node concept="3y3z36" id="3IIf9O_lwte" role="3clFbw">
              <node concept="2OqwBi" id="3IIf9O_lpwZ" role="3uHU7B">
                <node concept="37vLTw" id="3IIf9O_llFW" role="2Oq$k0">
                  <ref role="3cqZAo" node="3IIf9O_ljeU" resolve="nodes" />
                </node>
                <node concept="34oBXx" id="3IIf9O_lu6f" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="3IIf9O_lwiI" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="3clFbS" id="3IIf9O_llrv" role="3clFbx">
              <node concept="YS8fn" id="3IIf9O_lwWe" role="3cqZAp">
                <node concept="2ShNRf" id="3IIf9O_lxcH" role="YScLw">
                  <node concept="1pGfFk" id="3IIf9O_lzy5" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="3IIf9O_lzPa" role="37wK5m">
                      <property role="Xl_RC" value="expecting exactly one argument" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3IIf9O_l$PQ" role="3cqZAp">
            <node concept="3nyPlj" id="3IIf9O_l_6i" role="3cqZAk">
              <ref role="37wK5l" node="6hqFpWniBeE" resolve="forNodes" />
              <node concept="37vLTw" id="3IIf9O_lAZ5" role="37wK5m">
                <ref role="3cqZAo" node="3IIf9O_ljeU" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3IIf9O_ljfg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3IIf9O_lk82" role="jymVt" />
      <node concept="3clFb_" id="4vBwiiVz_VV" role="jymVt">
        <property role="TrG5h" value="execute" />
        <node concept="3cqZAl" id="4vBwiiVz_VW" role="3clF45" />
        <node concept="3Tm1VV" id="4vBwiiVz_VX" role="1B3o_S" />
        <node concept="3clFbS" id="4vBwiiVz_VY" role="3clF47">
          <node concept="3clFbH" id="2cnGCY$nZpw" role="3cqZAp" />
          <node concept="3cpWs8" id="2cnGCY$oywT" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$oywU" role="3cpWs9">
              <property role="TrG5h" value="text" />
              <node concept="17QB3L" id="2cnGCY$oywV" role="1tU5fm" />
              <node concept="Xl_RD" id="2cnGCY$oywW" role="33vP2m">
                <property role="Xl_RC" value="no type" />
              </node>
            </node>
          </node>
          <node concept="1QHqEK" id="2cnGCY$ouRq" role="3cqZAp">
            <node concept="1QHqEC" id="2cnGCY$ouRs" role="1QHqEI">
              <node concept="3clFbS" id="2cnGCY$ouRu" role="1bW5cS">
                <node concept="3clFbH" id="2cnGCY$oCxX" role="3cqZAp" />
                <node concept="3cpWs8" id="2cnGCY$rO2f" role="3cqZAp">
                  <node concept="3cpWsn" id="2cnGCY$rO2g" role="3cpWs9">
                    <property role="TrG5h" value="repository" />
                    <node concept="3uibUv" id="2cnGCY$oDAL" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                    </node>
                    <node concept="2OqwBi" id="2cnGCY$rO2h" role="33vP2m">
                      <node concept="37vLTw" id="2cnGCY$rO2i" role="2Oq$k0">
                        <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="2cnGCY$rO2j" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1z4$59iLPYJ" role="3cqZAp">
                  <node concept="3cpWsn" id="1z4$59iLPYK" role="3cpWs9">
                    <property role="TrG5h" value="typecheckingService" />
                    <node concept="3uibUv" id="1z4$59iLOH4" role="1tU5fm">
                      <ref role="3uigEE" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                    </node>
                    <node concept="2YIFZM" id="1z4$59iLRGn" role="33vP2m">
                      <ref role="37wK5l" to="tj24:1z4$59iHmYH" resolve="create" />
                      <ref role="1Pybhc" to="tj24:7kaxm0sEy3e" resolve="TypecheckingService" />
                      <node concept="37vLTw" id="1z4$59iLRGo" role="37wK5m">
                        <ref role="3cqZAo" node="2cnGCY$rO2g" resolve="repository" />
                      </node>
                      <node concept="2YIFZM" id="1z4$59iLTYN" role="37wK5m">
                        <ref role="37wK5l" to="31yc:7iCybvTs3lI" resolve="getInstance" />
                        <ref role="1Pybhc" to="31yc:7iCybvToiT5" resolve="Config" />
                      </node>
                      <node concept="2YIFZM" id="1z4$59iLPYY" role="37wK5m">
                        <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                        <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                        <node concept="37vLTw" id="1z4$59iLPYZ" role="37wK5m">
                          <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59iLRgW" role="3cqZAp" />
                <node concept="3cpWs8" id="2cnGCY$o4N4" role="3cqZAp">
                  <node concept="3cpWsn" id="2cnGCY$o4N5" role="3cpWs9">
                    <property role="TrG5h" value="typeNode" />
                    <node concept="3Tqbb2" id="2cnGCY$o4BH" role="1tU5fm" />
                    <node concept="2OqwBi" id="1z4$59iTR9q" role="33vP2m">
                      <node concept="2OqwBi" id="2cnGCY$rSBu" role="2Oq$k0">
                        <node concept="37vLTw" id="1z4$59iLPZ0" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59iLPYK" resolve="typecheckingService" />
                        </node>
                        <node concept="liA8E" id="2cnGCY$rT84" role="2OqNvi">
                          <ref role="37wK5l" to="tj24:1z4$59iIgeQ" resolve="localTypeOf" />
                          <node concept="2OqwBi" id="2cnGCY$rUzz" role="37wK5m">
                            <node concept="37vLTw" id="2cnGCY$rTTO" role="2Oq$k0">
                              <ref role="3cqZAo" node="6hqFpWnfpcc" resolve="nodes" />
                            </node>
                            <node concept="1uHKPH" id="2cnGCY$rVKS" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1z4$59iTRP0" role="2OqNvi">
                        <ref role="37wK5l" to="tj24:1z4$59ivhO1" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="61G6TdDEwDI" role="3cqZAp" />
                <node concept="3clFbJ" id="2cnGCY$oyx1" role="3cqZAp">
                  <node concept="3clFbS" id="2cnGCY$oyx2" role="3clFbx">
                    <node concept="3cpWs8" id="2cnGCY$oyx3" role="3cqZAp">
                      <node concept="3cpWsn" id="2cnGCY$oyx4" role="3cpWs9">
                        <property role="TrG5h" value="renderComponent" />
                        <node concept="3uibUv" id="2cnGCY$oyx5" role="1tU5fm">
                          <ref role="3uigEE" to="hhnx:~HeadlessEditorComponent" resolve="HeadlessEditorComponent" />
                        </node>
                        <node concept="2ShNRf" id="2cnGCY$oyx6" role="33vP2m">
                          <node concept="1pGfFk" id="2cnGCY$oyx7" role="2ShVmc">
                            <ref role="37wK5l" to="hhnx:~HeadlessEditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="HeadlessEditorComponent" />
                            <node concept="37vLTw" id="2cnGCY$oyxY" role="37wK5m">
                              <ref role="3cqZAo" node="2cnGCY$o4N5" resolve="typeNode" />
                            </node>
                            <node concept="37vLTw" id="2cnGCY$rO2k" role="37wK5m">
                              <ref role="3cqZAo" node="2cnGCY$rO2g" resolve="repository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2cnGCY$oyxc" role="3cqZAp">
                      <node concept="3cpWsn" id="2cnGCY$oyxd" role="3cpWs9">
                        <property role="TrG5h" value="renderText" />
                        <node concept="3uibUv" id="2cnGCY$oyxe" role="1tU5fm">
                          <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
                        </node>
                        <node concept="2OqwBi" id="2cnGCY$oyxf" role="33vP2m">
                          <node concept="2OqwBi" id="2cnGCY$oyxg" role="2Oq$k0">
                            <node concept="37vLTw" id="2cnGCY$oyxh" role="2Oq$k0">
                              <ref role="3cqZAo" node="2cnGCY$oyx4" resolve="renderComponent" />
                            </node>
                            <node concept="liA8E" id="2cnGCY$oyxi" role="2OqNvi">
                              <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2cnGCY$oyxj" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell.renderText()" resolve="renderText" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2cnGCY$oyxk" role="3cqZAp">
                      <node concept="3clFbS" id="2cnGCY$oyxl" role="3clFbx">
                        <node concept="3clFbF" id="2cnGCY$oyxm" role="3cqZAp">
                          <node concept="37vLTI" id="2cnGCY$oyxn" role="3clFbG">
                            <node concept="3cpWs3" id="2cnGCY$oyxo" role="37vLTx">
                              <node concept="Xl_RD" id="2cnGCY$oyxp" role="3uHU7w">
                                <property role="Xl_RC" value="..." />
                              </node>
                              <node concept="2OqwBi" id="2cnGCY$oyxq" role="3uHU7B">
                                <node concept="2OqwBi" id="2cnGCY$oyxr" role="2Oq$k0">
                                  <node concept="2OqwBi" id="2cnGCY$oyxs" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2cnGCY$oyxt" role="2Oq$k0">
                                      <node concept="37vLTw" id="2cnGCY$oyxu" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2cnGCY$oyxd" resolve="renderText" />
                                      </node>
                                      <node concept="liA8E" id="2cnGCY$oyxv" role="2OqNvi">
                                        <ref role="37wK5l" to="cj4x:~TextBuilder.getLines()" resolve="getLines" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="2cnGCY$oyxw" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2cnGCY$oyxx" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2cnGCY$oyxy" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~CharSequence.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="2cnGCY$oyxz" role="37vLTJ">
                              <ref role="3cqZAo" node="2cnGCY$oywU" resolve="text" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eOSWO" id="2cnGCY$oyx$" role="3clFbw">
                        <node concept="3cmrfG" id="2cnGCY$oyx_" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="2cnGCY$oyxA" role="3uHU7B">
                          <node concept="37vLTw" id="2cnGCY$oyxB" role="2Oq$k0">
                            <ref role="3cqZAo" node="2cnGCY$oyxd" resolve="renderText" />
                          </node>
                          <node concept="liA8E" id="2cnGCY$oyxC" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~TextBuilder.getSize()" resolve="getSize" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="2cnGCY$oyxD" role="9aQIa">
                        <node concept="3clFbS" id="2cnGCY$oyxE" role="9aQI4">
                          <node concept="3clFbF" id="2cnGCY$oyxF" role="3cqZAp">
                            <node concept="37vLTI" id="2cnGCY$oyxG" role="3clFbG">
                              <node concept="2OqwBi" id="2cnGCY$oyxH" role="37vLTx">
                                <node concept="37vLTw" id="2cnGCY$oyxI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2cnGCY$oyxd" resolve="renderText" />
                                </node>
                                <node concept="liA8E" id="2cnGCY$oyxJ" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~TextBuilder.getText()" resolve="getText" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2cnGCY$oyxK" role="37vLTJ">
                                <ref role="3cqZAo" node="2cnGCY$oywU" resolve="text" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2cnGCY$oyxL" role="3cqZAp">
                      <node concept="2OqwBi" id="2cnGCY$oyxM" role="3clFbG">
                        <node concept="37vLTw" id="2cnGCY$oyxN" role="2Oq$k0">
                          <ref role="3cqZAo" node="2cnGCY$oyx4" resolve="renderComponent" />
                        </node>
                        <node concept="liA8E" id="2cnGCY$oyxO" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.dispose()" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="2cnGCY$oyxP" role="3clFbw">
                    <node concept="37vLTw" id="2cnGCY$oyxZ" role="3uHU7B">
                      <ref role="3cqZAo" node="2cnGCY$o4N5" resolve="typeNode" />
                    </node>
                    <node concept="10Nm6u" id="2cnGCY$oyxR" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbH" id="2cnGCY$oCks" role="3cqZAp" />
              </node>
            </node>
            <node concept="2OqwBi" id="2cnGCY$owb9" role="ukAjM">
              <node concept="37vLTw" id="2cnGCY$ovwy" role="2Oq$k0">
                <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="2cnGCY$ox1M" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2cnGCY$ocHn" role="3cqZAp">
            <node concept="1rXfSq" id="2cnGCY$ocHo" role="3clFbG">
              <ref role="37wK5l" node="2cnGCY$o8jf" resolve="displayBalloon" />
              <node concept="37vLTw" id="2cnGCY$oA_t" role="37wK5m">
                <ref role="3cqZAo" node="2cnGCY$oywU" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2cnGCY$o8je" role="jymVt" />
      <node concept="3clFb_" id="2cnGCY$o8jf" role="jymVt">
        <property role="TrG5h" value="displayBalloon" />
        <node concept="37vLTG" id="2cnGCY$o8jg" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="2cnGCY$o8jh" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="2cnGCY$o8ji" role="3clF45" />
        <node concept="3Tm6S6" id="2cnGCY$o8jj" role="1B3o_S" />
        <node concept="3clFbS" id="2cnGCY$o8jk" role="3clF47">
          <node concept="3cpWs8" id="2cnGCY$o8jl" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$o8jm" role="3cpWs9">
              <property role="TrG5h" value="point" />
              <node concept="3uibUv" id="2cnGCY$o8jn" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
              <node concept="2ShNRf" id="2cnGCY$o8jo" role="33vP2m">
                <node concept="1pGfFk" id="2cnGCY$o8jp" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                  <node concept="3cpWs3" id="2cnGCY$o8jq" role="37wK5m">
                    <node concept="2OqwBi" id="2cnGCY$o8jr" role="3uHU7B">
                      <node concept="37vLTw" id="2cnGCY$obAd" role="2Oq$k0">
                        <ref role="3cqZAo" node="4vBwiiV$3BF" resolve="editorCell" />
                      </node>
                      <node concept="liA8E" id="2cnGCY$o8jt" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="2cnGCY$o8ju" role="3uHU7w">
                      <node concept="FJ1c_" id="2cnGCY$o8jv" role="1eOMHV">
                        <node concept="3cmrfG" id="2cnGCY$o8jw" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="2cnGCY$o8jx" role="3uHU7B">
                          <node concept="37vLTw" id="2cnGCY$oc9Z" role="2Oq$k0">
                            <ref role="3cqZAo" node="4vBwiiV$3BF" resolve="editorCell" />
                          </node>
                          <node concept="liA8E" id="2cnGCY$o8jz" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell.getWidth()" resolve="getWidth" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2cnGCY$o8j$" role="37wK5m">
                    <node concept="37vLTw" id="2cnGCY$ocuF" role="2Oq$k0">
                      <ref role="3cqZAo" node="4vBwiiV$3BF" resolve="editorCell" />
                    </node>
                    <node concept="liA8E" id="2cnGCY$o8jA" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2cnGCY$o8jB" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$o8jC" role="3cpWs9">
              <property role="TrG5h" value="relPoint" />
              <node concept="3uibUv" id="2cnGCY$o8jD" role="1tU5fm">
                <ref role="3uigEE" to="vmdq:~RelativePoint" resolve="RelativePoint" />
              </node>
              <node concept="2ShNRf" id="2cnGCY$o8jE" role="33vP2m">
                <node concept="1pGfFk" id="2cnGCY$o8jF" role="2ShVmc">
                  <ref role="37wK5l" to="vmdq:~RelativePoint.&lt;init&gt;(java.awt.Component,java.awt.Point)" resolve="RelativePoint" />
                  <node concept="37vLTw" id="2cnGCY$o8jG" role="37wK5m">
                    <ref role="3cqZAo" node="6hqFpWnfwwm" resolve="editorComponent" />
                  </node>
                  <node concept="37vLTw" id="2cnGCY$o8jH" role="37wK5m">
                    <ref role="3cqZAo" node="2cnGCY$o8jm" resolve="point" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2cnGCY$o8jI" role="3cqZAp" />
          <node concept="3cpWs8" id="2cnGCY$o8jJ" role="3cqZAp">
            <node concept="3cpWsn" id="2cnGCY$o8jK" role="3cpWs9">
              <property role="TrG5h" value="balloon" />
              <node concept="3uibUv" id="2cnGCY$o8jL" role="1tU5fm">
                <ref role="3uigEE" to="gspm:~Balloon" resolve="Balloon" />
              </node>
              <node concept="2OqwBi" id="2cnGCY$o8jM" role="33vP2m">
                <node concept="2OqwBi" id="2cnGCY$o8jN" role="2Oq$k0">
                  <node concept="2YIFZM" id="2cnGCY$o8jO" role="2Oq$k0">
                    <ref role="37wK5l" to="gspm:~JBPopupFactory.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="gspm:~JBPopupFactory" resolve="JBPopupFactory" />
                  </node>
                  <node concept="liA8E" id="2cnGCY$o8jP" role="2OqNvi">
                    <ref role="37wK5l" to="gspm:~JBPopupFactory.createHtmlTextBalloonBuilder(java.lang.String,javax.swing.Icon,java.awt.Color,javax.swing.event.HyperlinkListener)" resolve="createHtmlTextBalloonBuilder" />
                    <node concept="2YIFZM" id="2cnGCY$o8jQ" role="37wK5m">
                      <ref role="37wK5l" to="o35r:4vBwiiVrVPy" resolve="escapeHtml" />
                      <ref role="1Pybhc" to="o35r:4vBwiiVrUlG" resolve="HtmlUtil" />
                      <node concept="37vLTw" id="2cnGCY$o8jR" role="37wK5m">
                        <ref role="3cqZAo" node="2cnGCY$o8jg" resolve="text" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="2cnGCY$o8jS" role="37wK5m" />
                    <node concept="2OqwBi" id="2cnGCY$o8jT" role="37wK5m">
                      <node concept="10M0yZ" id="2cnGCY$o8jU" role="2Oq$k0">
                        <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                        <ref role="3cqZAo" to="jkm4:~MessageType.INFO" resolve="INFO" />
                      </node>
                      <node concept="liA8E" id="2cnGCY$o8jV" role="2OqNvi">
                        <ref role="37wK5l" to="jkm4:~MessageType.getPopupBackground()" resolve="getPopupBackground" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="2cnGCY$o8jW" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="2cnGCY$o8jX" role="2OqNvi">
                  <ref role="37wK5l" to="gspm:~BalloonBuilder.createBalloon()" resolve="createBalloon" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2cnGCY$o8jY" role="3cqZAp">
            <node concept="2YIFZM" id="2cnGCY$o8jZ" role="3clFbG">
              <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
              <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
              <node concept="37vLTw" id="2cnGCY$o8k0" role="37wK5m">
                <ref role="3cqZAo" node="6hqFpWnfoA9" resolve="ideaProject" />
              </node>
              <node concept="37vLTw" id="2cnGCY$o8k1" role="37wK5m">
                <ref role="3cqZAo" node="2cnGCY$o8jK" resolve="balloon" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2cnGCY$o8k2" role="3cqZAp">
            <node concept="2OqwBi" id="2cnGCY$o8k3" role="3clFbG">
              <node concept="37vLTw" id="2cnGCY$o8k4" role="2Oq$k0">
                <ref role="3cqZAo" node="2cnGCY$o8jK" resolve="balloon" />
              </node>
              <node concept="liA8E" id="2cnGCY$o8k5" role="2OqNvi">
                <ref role="37wK5l" to="gspm:~Balloon.show(com.intellij.ui.awt.RelativePoint,com.intellij.openapi.ui.popup.Balloon$Position)" resolve="show" />
                <node concept="37vLTw" id="2cnGCY$o8k6" role="37wK5m">
                  <ref role="3cqZAo" node="2cnGCY$o8jC" resolve="relPoint" />
                </node>
                <node concept="Rm8GO" id="2cnGCY$o8k7" role="37wK5m">
                  <ref role="1Px2BO" to="gspm:~Balloon$Position" resolve="Balloon.Position" />
                  <ref role="Rm8GQ" to="gspm:~Balloon$Position.above" resolve="above" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2cnGCY$o75C" role="jymVt" />
      <node concept="2tJIrI" id="4vBwiiVz_XR" role="jymVt" />
      <node concept="312cEg" id="4vBwiiV$3BF" role="jymVt">
        <property role="TrG5h" value="editorCell" />
        <node concept="3Tm6S6" id="4vBwiiV$3BG" role="1B3o_S" />
        <node concept="3uibUv" id="4vBwiiV$3BI" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4vBwiiVz_Yb" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR8RCvp" role="1zkMxy">
        <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR8SUdS" role="jymVt" />
    <node concept="312cEu" id="7WKNeR8SQxg" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="LaunchQuery" />
      <node concept="2tJIrI" id="7WKNeR8SQxh" role="jymVt" />
      <node concept="3clFbW" id="7WKNeR8SQxi" role="jymVt">
        <node concept="37vLTG" id="5EDW3XEpavu" role="3clF46">
          <property role="TrG5h" value="query" />
          <node concept="3uibUv" id="5EDW3XEpaP1" role="1tU5fm">
            <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SQxl" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="7WKNeR8SQxm" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SQxn" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="7WKNeR8SQxo" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
        <node concept="37vLTG" id="7WKNeR8SQxp" role="3clF46">
          <property role="TrG5h" value="ideaProject" />
          <node concept="3uibUv" id="7WKNeR8SQxq" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3cqZAl" id="7WKNeR8SQxr" role="3clF45" />
        <node concept="3Tm1VV" id="7WKNeR8SQxs" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8SQxt" role="3clF47">
          <node concept="XkiVB" id="7WKNeR8SQxu" role="3cqZAp">
            <ref role="37wK5l" node="7WKNeR8SByE" resolve="TypecheckingActions.AbstractAction" />
            <node concept="37vLTw" id="7WKNeR8SQxv" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR8SQxl" resolve="editorComponent" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SQxw" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR8SQxn" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="7WKNeR8SQxx" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR8SQxp" resolve="ideaProject" />
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR9fm7f" role="3cqZAp">
            <node concept="37vLTI" id="7WKNeR9fm7h" role="3clFbG">
              <node concept="2OqwBi" id="7WKNeR9fnha" role="37vLTJ">
                <node concept="Xjq3P" id="7WKNeR9fnxk" role="2Oq$k0" />
                <node concept="2OwXpG" id="7WKNeR9fnhd" role="2OqNvi">
                  <ref role="2Oxat5" node="7WKNeR9fm7b" resolve="query" />
                </node>
              </node>
              <node concept="37vLTw" id="5EDW3XEpbSj" role="37vLTx">
                <ref role="3cqZAo" node="5EDW3XEpavu" resolve="query" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8SQxC" role="jymVt" />
      <node concept="3clFb_" id="7WKNeR8SQxD" role="jymVt">
        <property role="TrG5h" value="execute" />
        <node concept="3cqZAl" id="7WKNeR8SQxE" role="3clF45" />
        <node concept="3Tm1VV" id="7WKNeR8SQxF" role="1B3o_S" />
        <node concept="3clFbS" id="7WKNeR8SQxG" role="3clF47">
          <node concept="3cpWs8" id="7WKNeR8SQxH" role="3cqZAp">
            <node concept="3cpWsn" id="7WKNeR8SQxI" role="3cpWs9">
              <property role="TrG5h" value="repository" />
              <node concept="3uibUv" id="7WKNeR8SQxJ" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
              <node concept="2OqwBi" id="7WKNeR8SQxK" role="33vP2m">
                <node concept="2OqwBi" id="7WKNeR8SQxL" role="2Oq$k0">
                  <node concept="Xjq3P" id="7WKNeR8SQxM" role="2Oq$k0" />
                  <node concept="2OwXpG" id="7WKNeR8SQxN" role="2OqNvi">
                    <ref role="2Oxat5" node="6hqFpWnfkNg" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="7WKNeR8SQxO" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7WKNeR8TcXr" role="3cqZAp">
            <node concept="3cpWsn" id="7WKNeR8TcXs" role="3cpWs9">
              <property role="TrG5h" value="steps" />
              <node concept="_YKpA" id="7WKNeR8TcXt" role="1tU5fm">
                <node concept="3uibUv" id="7WKNeR8TcXu" role="_ZDj9">
                  <ref role="3uigEE" to="1yqb:1pPth$lAzAx" resolve="Step" />
                </node>
              </node>
              <node concept="2ShNRf" id="7WKNeR8TcXv" role="33vP2m">
                <node concept="Tc6Ow" id="7WKNeR8TcXw" role="2ShVmc">
                  <node concept="3uibUv" id="7WKNeR8TcXx" role="HW$YZ">
                    <ref role="3uigEE" to="1yqb:1pPth$lAzAx" resolve="Step" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KN3A4vDf1F" role="3cqZAp">
            <node concept="3cpWsn" id="3KN3A4vDf1G" role="3cpWs9">
              <property role="TrG5h" value="aspectLookup" />
              <node concept="3uibUv" id="3KN3A4vCI3a" role="1tU5fm">
                <ref role="3uigEE" to="fqlx:NKt6ynorWQ" resolve="AspectLookup" />
                <node concept="3uibUv" id="3KN3A4vCI3d" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
              <node concept="2YIFZM" id="3KN3A4vDf1H" role="33vP2m">
                <ref role="37wK5l" to="u46i:78H58oeCAQS" resolve="aspectLookup" />
                <ref role="1Pybhc" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KN3A4vDlEg" role="3cqZAp">
            <node concept="3cpWsn" id="3KN3A4vDlEh" role="3cpWs9">
              <property role="TrG5h" value="clique" />
              <node concept="2OqwBi" id="3KN3A4vDlEi" role="33vP2m">
                <node concept="37vLTw" id="3KN3A4vDlEj" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4vDf1G" resolve="aspectLookup" />
                </node>
                <node concept="liA8E" id="3KN3A4vDlEk" role="2OqNvi">
                  <ref role="37wK5l" to="fqlx:7W7Inqm5F$e" resolve="relevantForNodes" />
                  <node concept="37vLTw" id="3KN3A4vDlEm" role="37wK5m">
                    <ref role="3cqZAo" node="6hqFpWnfpcc" resolve="nodes" />
                  </node>
                  <node concept="2OqwBi" id="3KN3A4vDlEo" role="37wK5m">
                    <node concept="37vLTw" id="3KN3A4vDlEp" role="2Oq$k0">
                      <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                    </node>
                    <node concept="liA8E" id="3KN3A4vDlEq" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="3KN3A4vDl$Q" role="1tU5fm">
                <ref role="3uigEE" to="fqlx:3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="3uibUv" id="3KN3A4vDl$R" role="11_B2D">
                  <ref role="3uigEE" to="u46i:7km57Pkjxf4" resolve="TypecheckingAspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6nFpYluogsH" role="3cqZAp" />
          <node concept="3cpWs8" id="6nFpYluoeMU" role="3cqZAp">
            <node concept="3cpWsn" id="6nFpYluoeMV" role="3cpWs9">
              <property role="TrG5h" value="session" />
              <node concept="3uibUv" id="6nFpYluoeMW" role="1tU5fm">
                <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
              </node>
              <node concept="2ShNRf" id="6nFpYluoeMX" role="33vP2m">
                <node concept="1pGfFk" id="6nFpYluoeMY" role="2ShVmc">
                  <ref role="37wK5l" to="hano:7DvO2M9VeM1" resolve="RuleProcessingSession" />
                  <node concept="1eOMI4" id="6nFpYluoeMZ" role="37wK5m">
                    <node concept="10QFUN" id="6nFpYluoeN0" role="1eOMHV">
                      <node concept="A3Dl8" id="6nFpYluoeN1" role="10QFUM">
                        <node concept="3qUE_q" id="6nFpYluoeN2" role="A3Ik2">
                          <node concept="3uibUv" id="6nFpYluoeN3" role="3qUE_r">
                            <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6nFpYluoeN4" role="10QFUP">
                        <node concept="liA8E" id="6nFpYluoeN5" role="2OqNvi">
                          <ref role="37wK5l" to="fqlx:3KN3A4uUhpW" resolve="aspects" />
                        </node>
                        <node concept="37vLTw" id="7W7Inqm62iI" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KN3A4vDlEh" resolve="clique" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6nFpYluoeN9" role="37wK5m">
                    <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                  </node>
                  <node concept="2YIFZM" id="2Y70AYEc4aH" role="37wK5m">
                    <ref role="37wK5l" to="31yc:2mhJggjuVj0" resolve="get" />
                    <ref role="1Pybhc" to="31yc:4MaHsBDdlvx" resolve="MessageLog" />
                    <node concept="37vLTw" id="2Y70AYEc4nY" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="61G6TdBDyzK" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdBDyzL" role="3cpWs9">
              <property role="TrG5h" value="macroProcessing" />
              <node concept="3uibUv" id="61G6TdBDyzJ" role="1tU5fm">
                <ref role="3uigEE" to="ksgm:7DvO2M9IiKB" resolve="MacroProcessing" />
              </node>
              <node concept="2ShNRf" id="61G6TdBDyzM" role="33vP2m">
                <node concept="YeOm9" id="61G6TdBDyzN" role="2ShVmc">
                  <node concept="1Y3b0j" id="61G6TdBDyzO" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="ksgm:7DvO2Ma0h_M" resolve="MacroProcessing" />
                    <ref role="1Y3XeK" to="ksgm:7DvO2M9IiKB" resolve="MacroProcessing" />
                    <node concept="3Tm1VV" id="61G6TdBDyzP" role="1B3o_S" />
                    <node concept="37vLTw" id="61G6TdBDyzQ" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                    </node>
                    <node concept="2OqwBi" id="61G6TdBDyzR" role="37wK5m">
                      <node concept="37vLTw" id="61G6TdBDyzS" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nFpYluoeMV" resolve="session" />
                      </node>
                      <node concept="liA8E" id="61G6TdBDyzT" role="2OqNvi">
                        <ref role="37wK5l" to="hano:7DvO2M9Icas" resolve="macroTemplates" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="61G6TdBDyzU" role="jymVt">
                      <property role="TrG5h" value="provideFeedback" />
                      <node concept="37vLTG" id="61G6TdBDyzV" role="3clF46">
                        <property role="TrG5h" value="feedback" />
                        <node concept="3uibUv" id="61G6TdBDyzW" role="1tU5fm">
                          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                        </node>
                      </node>
                      <node concept="3cqZAl" id="61G6TdBDyzX" role="3clF45" />
                      <node concept="3Tm1VV" id="61G6TdBDyzY" role="1B3o_S" />
                      <node concept="3clFbS" id="61G6TdBDyzZ" role="3clF47">
                        <node concept="3SKdUt" id="61G6TdBDy$0" role="3cqZAp">
                          <node concept="1PaTwC" id="61G6TdBDy$1" role="1aUNEU">
                            <node concept="3oM_SD" id="61G6TdBDy$2" role="1PaTwD">
                              <property role="3oM_SC" value="FIXME" />
                            </node>
                            <node concept="3oM_SD" id="61G6TdBDy$3" role="1PaTwD">
                              <property role="3oM_SC" value="provide" />
                            </node>
                            <node concept="3oM_SD" id="61G6TdBDy$4" role="1PaTwD">
                              <property role="3oM_SC" value="appropriate" />
                            </node>
                            <node concept="3oM_SD" id="61G6TdBDy$5" role="1PaTwD">
                              <property role="3oM_SC" value="reporting" />
                            </node>
                            <node concept="3oM_SD" id="61G6TdBDy$6" role="1PaTwD">
                              <property role="3oM_SC" value="for" />
                            </node>
                            <node concept="3oM_SD" id="61G6TdBDy$7" role="1PaTwD">
                              <property role="3oM_SC" value="typechecking" />
                            </node>
                            <node concept="3oM_SD" id="61G6TdBDy$8" role="1PaTwD">
                              <property role="3oM_SC" value="errors" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="61G6TdBDy$9" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8TcXy" role="3cqZAp">
            <node concept="2OqwBi" id="7WKNeR8TcXz" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8TcX$" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="7WKNeR8TcX_" role="2OqNvi">
                <node concept="2ShNRf" id="7WKNeR8TcXE" role="25WWJ7">
                  <node concept="1pGfFk" id="7WKNeR8TcXF" role="2ShVmc">
                    <ref role="37wK5l" to="1yqb:5EDW3XEoy55" resolve="ApplyTemplatesStep" />
                    <node concept="37vLTw" id="6nFpYluoiGj" role="37wK5m">
                      <ref role="3cqZAo" node="6nFpYluoeMV" resolve="session" />
                    </node>
                    <node concept="37vLTw" id="61G6TdBDzLl" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdBDyzL" resolve="macroProcessing" />
                    </node>
                    <node concept="2OqwBi" id="7WKNeR8TcXG" role="37wK5m">
                      <node concept="Xjq3P" id="7WKNeR8TcXH" role="2Oq$k0" />
                      <node concept="2OwXpG" id="7WKNeR8TcXI" role="2OqNvi">
                        <ref role="2Oxat5" node="6hqFpWnfpcc" resolve="nodes" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="61G6TdE2zqb" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="7WKNeR8ThOi" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                    </node>
                    <node concept="2ShNRf" id="6nFpYluqYB0" role="37wK5m">
                      <node concept="HV5vD" id="6nFpYluqZMB" role="2ShVmc">
                        <ref role="HV5vE" to="ksgm:7DvO2M9Uago" resolve="RulesListTable" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5EDW3XEprPs" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR9fm7b" resolve="query" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2j1FRbwV8JT" role="3cqZAp">
            <node concept="2OqwBi" id="2j1FRbwVaoF" role="3clFbG">
              <node concept="37vLTw" id="2j1FRbwV8JR" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="2j1FRbwVbRl" role="2OqNvi">
                <node concept="2ShNRf" id="2j1FRbwVc6W" role="25WWJ7">
                  <node concept="1pGfFk" id="2j1FRbwVdcq" role="2ShVmc">
                    <ref role="37wK5l" to="1yqb:RZQG98V8sL" resolve="ConfigureEvalStep" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5tAk4yVTBui" role="3cqZAp">
            <node concept="3cpWsn" id="5tAk4yVTBuj" role="3cpWs9">
              <property role="TrG5h" value="tcStep" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="5tAk4yVTBuk" role="1tU5fm">
                <ref role="3uigEE" to="tj24:NKt6yn81z$" resolve="TypecheckingStep" />
              </node>
              <node concept="3K4zz7" id="7WKNeR8TcYc" role="33vP2m">
                <node concept="37vLTw" id="7WKNeR8TcYd" role="3K4Cdx">
                  <ref role="3cqZAo" node="6hqFpWnjd0A" resolve="trace" />
                </node>
                <node concept="2ShNRf" id="7WKNeR8TcYe" role="3K4GZi">
                  <node concept="1pGfFk" id="7WKNeR8TcYf" role="2ShVmc">
                    <ref role="37wK5l" to="tj24:3KN3A4vHiEF" resolve="TypecheckingStep" />
                    <node concept="37vLTw" id="7WKNeR8TiOp" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                    </node>
                    <node concept="10Nm6u" id="5gVsyvFbxl6" role="37wK5m" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7WKNeR8TcYh" role="3K4E3e">
                  <node concept="1pGfFk" id="7WKNeR8TcYi" role="2ShVmc">
                    <ref role="37wK5l" node="55Q$YFtIVZ9" resolve="TypecheckingWithTraceStep" />
                    <node concept="37vLTw" id="7WKNeR8Ti$q" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfwwm" resolve="editorComponent" />
                    </node>
                    <node concept="37vLTw" id="7WKNeR8TcYk" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8TcY8" role="3cqZAp">
            <node concept="2OqwBi" id="7WKNeR8TcY9" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8TcYa" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="7WKNeR8TcYb" role="2OqNvi">
                <node concept="2OqwBi" id="5tAk4yVTE76" role="25WWJ7">
                  <node concept="37vLTw" id="5tAk4yVTD2S" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tAk4yVTBuj" resolve="tcStep" />
                  </node>
                  <node concept="liA8E" id="5tAk4yVTxg2" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:5tAk4yVSZ1V" resolve="withProgramSpec" />
                    <node concept="2OqwBi" id="5tAk4yVTy59" role="37wK5m">
                      <node concept="37vLTw" id="5tAk4yVTxAu" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nFpYluoeMV" resolve="session" />
                      </node>
                      <node concept="liA8E" id="5tAk4yVTyvs" role="2OqNvi">
                        <ref role="37wK5l" to="hano:2WtKs4tZfgb" resolve="programSpec" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2U4rQ68z06q" role="3cqZAp">
            <node concept="2OqwBi" id="2U4rQ68z1BS" role="3clFbG">
              <node concept="37vLTw" id="2U4rQ68z06o" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="2U4rQ68z2Qc" role="2OqNvi">
                <node concept="2ShNRf" id="2U4rQ68z2XA" role="25WWJ7">
                  <node concept="1pGfFk" id="2U4rQ68zt8i" role="2ShVmc">
                    <ref role="37wK5l" to="tj24:HOeeeUbp1O" resolve="ComputeBaselineTimeStep" />
                    <node concept="37vLTw" id="2U4rQ68ztjO" role="37wK5m">
                      <ref role="3cqZAo" node="7WKNeR8SQxI" resolve="repository" />
                    </node>
                    <node concept="2OqwBi" id="2U4rQ68ztqp" role="37wK5m">
                      <node concept="2OqwBi" id="2U4rQ68ztqq" role="2Oq$k0">
                        <node concept="37vLTw" id="2U4rQ68ztqr" role="2Oq$k0">
                          <ref role="3cqZAo" node="6hqFpWnfpcc" resolve="nodes" />
                        </node>
                        <node concept="1uHKPH" id="2U4rQ68ztqs" role="2OqNvi" />
                      </node>
                      <node concept="2Rxl7S" id="2U4rQ68ztqt" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7WKNeR8TcYx" role="3cqZAp">
            <node concept="2OqwBi" id="7WKNeR8TcYy" role="3clFbG">
              <node concept="37vLTw" id="7WKNeR8TcYz" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
              </node>
              <node concept="TSZUe" id="7WKNeR8TcY$" role="2OqNvi">
                <node concept="2ShNRf" id="7WKNeR8TcY_" role="25WWJ7">
                  <node concept="1pGfFk" id="7WKNeR8TcYA" role="2ShVmc">
                    <ref role="37wK5l" node="1pPth$lGTrm" resolve="HighlightingStep" />
                    <node concept="37vLTw" id="7WKNeR8TjKr" role="37wK5m">
                      <ref role="3cqZAo" node="6hqFpWnfwwm" resolve="editorComponent" />
                    </node>
                    <node concept="2OqwBi" id="7WKNeR8TcYC" role="37wK5m">
                      <node concept="Xjq3P" id="7WKNeR8TcYD" role="2Oq$k0" />
                      <node concept="2OwXpG" id="7WKNeR8TcYE" role="2OqNvi">
                        <ref role="2Oxat5" node="6hqFpWnfkNg" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7WKNeR8SQyz" role="3cqZAp" />
          <node concept="3clFbF" id="7WKNeR8SQy$" role="3cqZAp">
            <node concept="2OqwBi" id="7WKNeR8SQy_" role="3clFbG">
              <node concept="2ShNRf" id="7WKNeR8SQyA" role="2Oq$k0">
                <node concept="1pGfFk" id="7WKNeR8SQyB" role="2ShVmc">
                  <ref role="37wK5l" to="1yqb:1pPth$lK1ZL" resolve="CoderulesHelper" />
                  <node concept="37vLTw" id="7W7Inqm62NJ" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4vDlEh" resolve="clique" />
                  </node>
                  <node concept="2ShNRf" id="7WKNeR8SQyC" role="37wK5m">
                    <node concept="YeOm9" id="7WKNeR8SQyD" role="2ShVmc">
                      <node concept="1Y3b0j" id="7WKNeR8SQyE" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="1yqb:3F6vMxqaxpm" resolve="CoderulesHelper.ProgressCallback" />
                        <node concept="3Tm1VV" id="7WKNeR8SQyF" role="1B3o_S" />
                        <node concept="3clFb_" id="3MwxBzG61n7" role="jymVt">
                          <property role="TrG5h" value="done" />
                          <node concept="37vLTG" id="3MwxBzG61n8" role="3clF46">
                            <property role="TrG5h" value="message" />
                            <node concept="17QB3L" id="3MwxBzG61n9" role="1tU5fm" />
                          </node>
                          <node concept="37vLTG" id="3MwxBzG61na" role="3clF46">
                            <property role="TrG5h" value="result" />
                            <node concept="3uibUv" id="3MwxBzG61nb" role="1tU5fm">
                              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
                            </node>
                          </node>
                          <node concept="3cqZAl" id="3MwxBzG61nc" role="3clF45" />
                          <node concept="3Tm1VV" id="3MwxBzG61nd" role="1B3o_S" />
                          <node concept="3clFbS" id="3MwxBzG61ng" role="3clF47">
                            <node concept="1QHqEQ" id="7WKNeR8SQyM" role="3cqZAp">
                              <node concept="1QHqEC" id="7WKNeR8SQyN" role="1QHqEI">
                                <node concept="3clFbS" id="7WKNeR8SQyO" role="1bW5cS">
                                  <node concept="3cpWs8" id="3MwxBzG5WQO" role="3cqZAp">
                                    <node concept="3cpWsn" id="3MwxBzG5WQP" role="3cpWs9">
                                      <property role="TrG5h" value="type" />
                                      <node concept="3uibUv" id="3MwxBzG5WKh" role="1tU5fm">
                                        <ref role="3uigEE" to="jkm4:~MessageType" resolve="MessageType" />
                                      </node>
                                      <node concept="3K4zz7" id="3MwxBzG5XUq" role="33vP2m">
                                        <node concept="1eOMI4" id="3MwxBzG5Y8h" role="3K4E3e">
                                          <node concept="3K4zz7" id="3MwxBzG5Z0d" role="1eOMHV">
                                            <node concept="2OqwBi" id="3MwxBzG5YpR" role="3K4Cdx">
                                              <node concept="37vLTw" id="3MwxBzG5Ydb" role="2Oq$k0">
                                                <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                              </node>
                                              <node concept="liA8E" id="3MwxBzG5YFa" role="2OqNvi">
                                                <ref role="37wK5l" to="psoy:2gw7OvgCNSM" resolve="hasErrors" />
                                              </node>
                                            </node>
                                            <node concept="10M0yZ" id="3MwxBzG5Zes" role="3K4E3e">
                                              <ref role="3cqZAo" to="jkm4:~MessageType.WARNING" resolve="WARNING" />
                                              <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                                            </node>
                                            <node concept="10M0yZ" id="3MwxBzG5WQQ" role="3K4GZi">
                                              <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                                              <ref role="3cqZAo" to="jkm4:~MessageType.INFO" resolve="INFO" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="3MwxBzG5Xhs" role="3K4Cdx">
                                          <node concept="37vLTw" id="3MwxBzG5X50" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3MwxBzG61na" resolve="result" />
                                          </node>
                                          <node concept="liA8E" id="3MwxBzG5Xyj" role="2OqNvi">
                                            <ref role="37wK5l" to="psoy:7Oc59RS_hsj" resolve="isSuccessful" />
                                          </node>
                                        </node>
                                        <node concept="10M0yZ" id="3MwxBzG5ZpH" role="3K4GZi">
                                          <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                                          <ref role="3cqZAo" to="jkm4:~MessageType.ERROR" resolve="ERROR" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="7WKNeR8SQyP" role="3cqZAp">
                                    <node concept="2OqwBi" id="7WKNeR8SQyQ" role="3clFbG">
                                      <node concept="2YIFZM" id="7WKNeR8SQyR" role="2Oq$k0">
                                        <ref role="1Pybhc" to="jkny:~ToolWindowManager" resolve="ToolWindowManager" />
                                        <ref role="37wK5l" to="jkny:~ToolWindowManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                        <node concept="37vLTw" id="7WKNeR8SQyS" role="37wK5m">
                                          <ref role="3cqZAo" node="6hqFpWnfoA9" resolve="ideaProject" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7WKNeR8SQyT" role="2OqNvi">
                                        <ref role="37wK5l" to="jkny:~ToolWindowManager.notifyByBalloon(java.lang.String,com.intellij.openapi.ui.MessageType,java.lang.String)" resolve="notifyByBalloon" />
                                        <node concept="Xl_RD" id="7WKNeR8SQyU" role="37wK5m">
                                          <property role="Xl_RC" value="Activation Trace" />
                                        </node>
                                        <node concept="37vLTw" id="3MwxBzG62ZC" role="37wK5m">
                                          <ref role="3cqZAo" node="3MwxBzG5WQP" resolve="type" />
                                        </node>
                                        <node concept="37vLTw" id="3MwxBzG62uZ" role="37wK5m">
                                          <ref role="3cqZAo" node="3MwxBzG61n8" resolve="message" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7WKNeR8SQyX" role="ukAjM">
                                <node concept="37vLTw" id="7WKNeR8SQyY" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6hqFpWnfkNg" resolve="mpsProject" />
                                </node>
                                <node concept="liA8E" id="7WKNeR8SQyZ" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="3MwxBzG61nh" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7WKNeR8Tofu" role="37wK5m">
                    <node concept="37vLTw" id="7WKNeR8Tofv" role="2Oq$k0">
                      <ref role="3cqZAo" node="7WKNeR8TcXs" resolve="steps" />
                    </node>
                    <node concept="3_kTaI" id="7WKNeR8Tofw" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7WKNeR8SQzo" role="2OqNvi">
                <ref role="37wK5l" to="1yqb:1pPth$lNVW2" resolve="executeAsync" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7WKNeR8SQzp" role="3cqZAp" />
        </node>
      </node>
      <node concept="2tJIrI" id="7WKNeR8T3De" role="jymVt" />
      <node concept="3Tm1VV" id="7WKNeR8SQzu" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR8SQzv" role="1zkMxy">
        <ref role="3uigEE" node="7WKNeR8RiDf" resolve="TypecheckingActions.AbstractAction" />
      </node>
      <node concept="312cEg" id="7WKNeR9fm7b" role="jymVt">
        <property role="TrG5h" value="query" />
        <node concept="3Tm6S6" id="7WKNeR9fm7c" role="1B3o_S" />
        <node concept="3uibUv" id="5EDW3XEpb$m" role="1tU5fm">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6hqFpWnfjsp" role="jymVt" />
    <node concept="3Tm1VV" id="6hqFpWnf9Mv" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="4vBwiiVgYfo">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="ShowNodeType" />
    <property role="2uzpH1" value="Show Node Type" />
    <property role="72QZ$" value="true" />
    <node concept="1DS2jV" id="4vBwiiVi7Nn" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="4vBwiiVi7No" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XQ" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4vBwiiVh1XR" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XS" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4vBwiiVh1XT" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XU" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="4vBwiiVh1XV" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4vBwiiVh1XW" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="4vBwiiVh1XX" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4vBwiiVgYfp" role="tncku">
      <node concept="3clFbS" id="4vBwiiVgYfq" role="2VODD2">
        <node concept="3clFbF" id="6kEuChzZGOa" role="3cqZAp">
          <node concept="2OqwBi" id="6kEuChzZOFq" role="3clFbG">
            <node concept="2OqwBi" id="6kEuChzZNVb" role="2Oq$k0">
              <node concept="2YIFZM" id="6kEuChzZIqo" role="2Oq$k0">
                <ref role="37wK5l" node="4vBwiiVBaJD" resolve="showType" />
                <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
                <node concept="2OqwBi" id="6kEuChzZN20" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZN23" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZN25" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVi7Nn" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kEuChzZMUe" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZMUh" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZMUj" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XW" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kEuChzZNcL" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZNcO" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZNcQ" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XS" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kEuChzZNmh" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZNmk" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZNmm" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XQ" resolve="ideaProject" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6kEuChzZO9y" role="2OqNvi">
                <ref role="37wK5l" node="6hqFpWnimEi" resolve="forNode" />
                <node concept="2OqwBi" id="6kEuChzZOhj" role="37wK5m">
                  <node concept="2WthIp" id="6kEuChzZOhm" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kEuChzZOho" role="2OqNvi">
                    <ref role="2WH_rO" node="4vBwiiVh1XU" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6kEuChzZPaJ" role="2OqNvi">
              <ref role="37wK5l" node="7WKNeR8RsrK" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="4vBwiiVq9ko">
    <property role="TrG5h" value="MacOSX" />
    <property role="Zd52Q" value="1mJS7WEAV1T/Mac_OS_X" />
    <property role="Z2u3V" value="false" />
    <node concept="Zd509" id="4vBwiiVq9kp" role="Zd508">
      <ref role="1bYAoF" node="4vBwiiVgYfo" resolve="ShowNodeType" />
      <node concept="pLAjd" id="4vBwiiVq9kq" role="Zd501">
        <property role="pLAjc" value="ctrl+shift" />
        <property role="pLAjf" value="VK_P" />
        <property role="3hacHL" value="5SFo3Mf0QpD/replace_all" />
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="4vBwiiVq9kr">
    <property role="TrG5h" value="MacOSX105" />
    <property role="Zd52Q" value="2HiVo5PakU7/Mac_OS_X_10_5_" />
    <property role="Z2u3V" value="false" />
    <node concept="Zd509" id="4vBwiiVq9ks" role="Zd508">
      <ref role="1bYAoF" node="4vBwiiVgYfo" resolve="ShowNodeType" />
      <node concept="pLAjd" id="4vBwiiVq9kt" role="Zd501">
        <property role="pLAjc" value="ctrl+shift" />
        <property role="pLAjf" value="VK_P" />
        <property role="3hacHL" value="5SFo3Mf0QpD/replace_all" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7WKNeR8Q7e5">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="LaunchTypecheckingQuery" />
    <property role="2uzpH1" value="Launch Typechecking" />
    <node concept="1DS2jV" id="7WKNeR8Ragq" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7WKNeR8Ragr" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7WKNeR8Rags" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7WKNeR8Ragt" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7WKNeR8Ragu" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="7WKNeR8Ragv" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7WKNeR8Ragw" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="7WKNeR8Ragx" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7WKNeR8Q7e6" role="tncku">
      <node concept="3clFbS" id="7WKNeR8Q7e7" role="2VODD2">
        <node concept="3clFbF" id="7WKNeR8RdQp" role="3cqZAp">
          <node concept="2YIFZM" id="6Yb9hAqxX1d" role="3clFbG">
            <ref role="37wK5l" to="o35r:3WU9yfAbTWe" resolve="clearAll" />
            <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
            <node concept="2OqwBi" id="7WKNeR8RdQr" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdQs" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdQt" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Rags" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR8RdQN" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR8RdQO" role="3clFbG">
            <node concept="2OqwBi" id="7WKNeR8RdQP" role="2Oq$k0">
              <node concept="2YIFZM" id="7WKNeR8TaPY" role="2Oq$k0">
                <ref role="37wK5l" node="7WKNeR8SP2E" resolve="launchQuery" />
                <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
                <node concept="2YIFZM" id="5EDW3XEpy4e" role="37wK5m">
                  <ref role="37wK5l" to="tj24:5EDW3XDYggE" resolve="check" />
                  <ref role="1Pybhc" to="tj24:5EDW3XDYg8Y" resolve="TypecheckingQueries" />
                  <node concept="1bVj0M" id="5EDW3XEpy8I" role="37wK5m">
                    <node concept="3clFbS" id="5EDW3XEpy8J" role="1bW5cS" />
                    <node concept="37vLTG" id="5EDW3XEpycy" role="1bW2Oz">
                      <property role="TrG5h" value="p" />
                      <node concept="2sp9CU" id="5EDW3XEpypg" role="1tU5fm" />
                    </node>
                    <node concept="37vLTG" id="5EDW3XEpyuG" role="1bW2Oz">
                      <property role="TrG5h" value="n" />
                      <node concept="3Tqbb2" id="5EDW3XEpyE1" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7WKNeR8TaPZ" role="37wK5m">
                  <node concept="2WthIp" id="7WKNeR8TaQ0" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7WKNeR8TaQ1" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Ragw" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7WKNeR8TaQ2" role="37wK5m">
                  <node concept="2WthIp" id="7WKNeR8TaQ3" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7WKNeR8TaQ4" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Rags" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7WKNeR8TaQ5" role="37wK5m">
                  <node concept="2WthIp" id="7WKNeR8TaQ6" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7WKNeR8TaQ7" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Ragq" resolve="ideaProject" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7WKNeR8RdR0" role="2OqNvi">
                <ref role="37wK5l" node="6hqFpWnimEi" resolve="forNode" />
                <node concept="2OqwBi" id="3IIf9O_ojlD" role="37wK5m">
                  <node concept="2WthIp" id="3IIf9O_oiXp" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3IIf9O_ojGc" role="2OqNvi">
                    <ref role="2WH_rO" node="7WKNeR8Ragu" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7WKNeR8RdR2" role="2OqNvi">
              <ref role="37wK5l" node="7WKNeR8RsrK" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7WKNeR8R9wl" role="tmbBb">
      <node concept="3clFbS" id="7WKNeR8R9wm" role="2VODD2">
        <node concept="3clFbF" id="7WKNeR8RdaM" role="3cqZAp">
          <node concept="2YIFZM" id="7WKNeR8RdaN" role="3clFbG">
            <ref role="37wK5l" node="6hqFpWnfbeu" resolve="isTypecheckingAvailable" />
            <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
            <node concept="2OqwBi" id="7WKNeR8RdaO" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdaP" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdaQ" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Ragu" resolve="node" />
              </node>
            </node>
            <node concept="2OqwBi" id="7WKNeR8RdaR" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdaS" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdaT" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Ragw" resolve="editorComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="7WKNeR8RdaU" role="37wK5m">
              <node concept="2WthIp" id="7WKNeR8RdaV" role="2Oq$k0" />
              <node concept="1DTwFV" id="7WKNeR8RdaW" role="2OqNvi">
                <ref role="2WH_rO" node="7WKNeR8Rags" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3IIf9O_okk0">
    <property role="3GE5qa" value="action" />
    <property role="TrG5h" value="LaunchTypecheckingQueryWithTrace" />
    <property role="2uzpH1" value="Launch Typechecking with Trace" />
    <node concept="1DS2jV" id="3IIf9O_okk1" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="3IIf9O_okk2" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3IIf9O_okk3" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3IIf9O_okk4" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3IIf9O_okk5" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="3IIf9O_okk6" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3IIf9O_okk7" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="3IIf9O_okk8" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3IIf9O_okk9" role="tncku">
      <node concept="3clFbS" id="3IIf9O_okka" role="2VODD2">
        <node concept="3clFbF" id="3IIf9O_okkb" role="3cqZAp">
          <node concept="2YIFZM" id="6Yb9hAqxX1c" role="3clFbG">
            <ref role="37wK5l" to="o35r:3WU9yfAbTWe" resolve="clearAll" />
            <ref role="1Pybhc" to="o35r:41ox5VnpFrR" resolve="HighlightingPlugin" />
            <node concept="2OqwBi" id="3IIf9O_okkd" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okke" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okkf" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk3" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3IIf9O_okkF" role="3cqZAp">
          <node concept="2OqwBi" id="3IIf9O_okkG" role="3clFbG">
            <node concept="2OqwBi" id="3IIf9O_oo3r" role="2Oq$k0">
              <node concept="2OqwBi" id="3IIf9O_okkH" role="2Oq$k0">
                <node concept="2YIFZM" id="3IIf9O_okkI" role="2Oq$k0">
                  <ref role="37wK5l" node="7WKNeR8SP2E" resolve="launchQuery" />
                  <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
                  <node concept="2YIFZM" id="5EDW3XEpzdD" role="37wK5m">
                    <ref role="1Pybhc" to="tj24:5EDW3XDYg8Y" resolve="TypecheckingQueries" />
                    <ref role="37wK5l" to="tj24:5EDW3XDYggE" resolve="check" />
                    <node concept="1bVj0M" id="5EDW3XEpzdE" role="37wK5m">
                      <node concept="3clFbS" id="5EDW3XEpzdF" role="1bW5cS" />
                      <node concept="37vLTG" id="5EDW3XEpzdG" role="1bW2Oz">
                        <property role="TrG5h" value="p" />
                        <node concept="2sp9CU" id="5EDW3XEpzdH" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="5EDW3XEpzdI" role="1bW2Oz">
                        <property role="TrG5h" value="n" />
                        <node concept="3Tqbb2" id="5EDW3XEpzdJ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3IIf9O_okkK" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkL" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkM" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk7" resolve="editorComponent" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3IIf9O_okkN" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkO" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkP" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk3" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3IIf9O_okkQ" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkR" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkS" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk1" resolve="ideaProject" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3IIf9O_okkT" role="2OqNvi">
                  <ref role="37wK5l" node="6hqFpWnimEi" resolve="forNode" />
                  <node concept="2OqwBi" id="3IIf9O_okkU" role="37wK5m">
                    <node concept="2WthIp" id="3IIf9O_okkV" role="2Oq$k0" />
                    <node concept="1DTwFV" id="3IIf9O_okkW" role="2OqNvi">
                      <ref role="2WH_rO" node="3IIf9O_okk5" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3IIf9O_oot0" role="2OqNvi">
                <ref role="37wK5l" node="7WKNeR8RobH" resolve="withTrace" />
              </node>
            </node>
            <node concept="liA8E" id="3IIf9O_okkX" role="2OqNvi">
              <ref role="37wK5l" node="7WKNeR8RsrK" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3IIf9O_okkY" role="tmbBb">
      <node concept="3clFbS" id="3IIf9O_okkZ" role="2VODD2">
        <node concept="3clFbF" id="3IIf9O_okl0" role="3cqZAp">
          <node concept="2YIFZM" id="3IIf9O_okl1" role="3clFbG">
            <ref role="37wK5l" node="6hqFpWnfbeu" resolve="isTypecheckingAvailable" />
            <ref role="1Pybhc" node="6hqFpWnf9Mu" resolve="TypecheckingActions" />
            <node concept="2OqwBi" id="3IIf9O_okl2" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okl3" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okl4" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk5" resolve="node" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IIf9O_okl5" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okl6" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okl7" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk7" resolve="editorComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IIf9O_okl8" role="37wK5m">
              <node concept="2WthIp" id="3IIf9O_okl9" role="2Oq$k0" />
              <node concept="1DTwFV" id="3IIf9O_okla" role="2OqNvi">
                <ref role="2WH_rO" node="3IIf9O_okk3" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

