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
    <import index="yuoi" ref="r:da4ad9c6-d9f4-46fe-9e8f-894315bef3a9(jetbrains.mps.lang.typesystem2.samplechecker.sample)" />
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
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="wqua" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.classloading(MPS.Core/jetbrains.mps.classloading@java_stub)" />
    <import index="xqpa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang.reflect(JDK/java.lang.reflect@java_stub)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
    <import index="ec5l" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" implicit="true" />
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
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
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
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
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
    <property role="2uzpH1" value="Collect Rules" />
    <property role="72QZ$" value="true" />
    <node concept="2XrIbr" id="12TFIqWsK4U" role="32lrUH">
      <property role="TrG5h" value="stepOne" />
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
                        <node concept="2OqwBi" id="2Rw7mr8Sqyb" role="37wK5m">
                          <node concept="2WthIp" id="2Rw7mr8Sqye" role="2Oq$k0" />
                          <node concept="1DTwFV" id="2Rw7mr8Sqyg" role="2OqNvi">
                            <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="root" />
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
        <node concept="3clFbF" id="3Qp4N06byoF" role="3cqZAp">
          <node concept="2YIFZM" id="3Qp4N06byoG" role="3clFbG">
            <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
            <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
            <node concept="Xl_RD" id="3Qp4N06byoI" role="37wK5m">
              <property role="Xl_RC" value="Finished without errors" />
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
        <node concept="3clFbF" id="7RDCjSXjQjS" role="3cqZAp">
          <node concept="2YIFZM" id="7RDCjSXjRlr" role="3clFbG">
            <ref role="37wK5l" node="7RDCjSXjQEP" resolve="make" />
            <ref role="1Pybhc" node="7RDCjSXgvZa" resolve="MakeCollectedRules" />
            <node concept="2OqwBi" id="7RDCjSXjSwA" role="37wK5m">
              <node concept="2WthIp" id="7RDCjSXjSwD" role="2Oq$k0" />
              <node concept="1DTwFV" id="7RDCjSXjSwF" role="2OqNvi">
                <ref role="2WH_rO" node="7iCFfvQBVbg" resolve="mpsProject" />
              </node>
            </node>
            <node concept="1bVj0M" id="7RDCjSXjSzD" role="37wK5m">
              <node concept="3clFbS" id="7RDCjSXjSzF" role="1bW5cS">
                <node concept="3clFbJ" id="7RDCjSXjTcD" role="3cqZAp">
                  <node concept="3fqX7Q" id="12TFIqWuZEu" role="3clFbw">
                    <node concept="2OqwBi" id="12TFIqWuZEv" role="3fr31v">
                      <node concept="37vLTw" id="12TFIqWuZEw" role="2Oq$k0">
                        <ref role="3cqZAo" node="7RDCjSXjSY$" resolve="res" />
                      </node>
                      <node concept="liA8E" id="12TFIqWuZEx" role="2OqNvi">
                        <ref role="37wK5l" to="i9so:17I1R__cQ6v" resolve="isSucessful" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7RDCjSXjTyj" role="3clFbx">
                    <node concept="3clFbF" id="7RDCjSXjT$h" role="3cqZAp">
                      <node concept="2YIFZM" id="7RDCjSXjT$i" role="3clFbG">
                        <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                        <ref role="37wK5l" to="810:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                        <node concept="Xl_RD" id="7RDCjSXjVhZ" role="37wK5m">
                          <property role="Xl_RC" value="Encountered errors" />
                        </node>
                        <node concept="Xl_RD" id="7RDCjSXjT$o" role="37wK5m">
                          <property role="Xl_RC" value="Make Rules" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="12TFIqWuZC9" role="3cqZAp" />
                <node concept="3clFbF" id="7RDCjSXjTvY" role="3cqZAp">
                  <node concept="2YIFZM" id="7RDCjSXjTvZ" role="3clFbG">
                    <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                    <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
                    <node concept="Xl_RD" id="7RDCjSXjTw0" role="37wK5m">
                      <property role="Xl_RC" value="Finished without errors" />
                    </node>
                    <node concept="Xl_RD" id="7RDCjSXjTw1" role="37wK5m">
                      <property role="Xl_RC" value="Make Rules" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="12TFIqWuZzT" role="3cqZAp">
                  <node concept="2OqwBi" id="12TFIqWuZzN" role="3clFbG">
                    <node concept="2WthIp" id="12TFIqWuZzQ" role="2Oq$k0" />
                    <node concept="2XshWL" id="12TFIqWuZzS" role="2OqNvi">
                      <ref role="2WH_rO" node="12TFIqWsVRB" resolve="stepThree" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="7RDCjSXjSY$" role="1bW2Oz">
                <property role="TrG5h" value="res" />
                <node concept="3uibUv" id="7RDCjSXjT6_" role="1tU5fm">
                  <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12TFIqWsUxV" role="3clF45" />
      <node concept="3Tm6S6" id="12TFIqWsUuX" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="12TFIqWsVRB" role="32lrUH">
      <property role="TrG5h" value="stepThree" />
      <node concept="3clFbS" id="12TFIqWsVRC" role="3clF47">
        <node concept="1QHqEK" id="12TFIqWw7JD" role="3cqZAp">
          <node concept="1QHqEC" id="12TFIqWw7JF" role="1QHqEI">
            <node concept="3clFbS" id="12TFIqWw7JH" role="1bW5cS">
              <node concept="3cpWs8" id="12TFIqWtQO9" role="3cqZAp">
                <node concept="3cpWsn" id="12TFIqWtQOa" role="3cpWs9">
                  <property role="TrG5h" value="runnerModel" />
                  <node concept="H_c77" id="12TFIqWtQO8" role="1tU5fm" />
                  <node concept="BaHAS" id="12TFIqWtQOb" role="33vP2m">
                    <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.runner" />
                    <property role="BaGAP" value="" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="12TFIqWsWj6" role="3cqZAp">
                <node concept="3cpWsn" id="12TFIqWsWj7" role="3cpWs9">
                  <property role="TrG5h" value="runnerModule" />
                  <node concept="3uibUv" id="12TFIqWsWj5" role="1tU5fm">
                    <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                  </node>
                  <node concept="2OqwBi" id="12TFIqWtRYs" role="33vP2m">
                    <node concept="2JrnkZ" id="12TFIqWtRYt" role="2Oq$k0">
                      <node concept="37vLTw" id="12TFIqWtRYu" role="2JrQYb">
                        <ref role="3cqZAo" node="12TFIqWtQOa" resolve="runnerModel" />
                      </node>
                    </node>
                    <node concept="liA8E" id="12TFIqWtRYv" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="12TFIqWtQBX" role="3cqZAp" />
              <node concept="SfApY" id="12TFIqWtT8q" role="3cqZAp">
                <node concept="3clFbS" id="12TFIqWtT8r" role="SfCbr">
                  <node concept="3cpWs8" id="12TFIqWuAyV" role="3cqZAp">
                    <node concept="3cpWsn" id="12TFIqWuAyW" role="3cpWs9">
                      <property role="TrG5h" value="cls" />
                      <node concept="3uibUv" id="12TFIqWuAyG" role="1tU5fm">
                        <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                        <node concept="3qTvmN" id="12TFIqWuAyJ" role="11_B2D" />
                      </node>
                      <node concept="2OqwBi" id="12TFIqWuAyX" role="33vP2m">
                        <node concept="1eOMI4" id="12TFIqWuAyY" role="2Oq$k0">
                          <node concept="10QFUN" id="12TFIqWuAyZ" role="1eOMHV">
                            <node concept="37vLTw" id="12TFIqWuAz0" role="10QFUP">
                              <ref role="3cqZAo" node="12TFIqWsWj7" resolve="runnerModule" />
                            </node>
                            <node concept="3uibUv" id="12TFIqWuAz1" role="10QFUM">
                              <ref role="3uigEE" to="42ru:~ReloadableModuleBase" resolve="ReloadableModuleBase" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="12TFIqWuAz2" role="2OqNvi">
                          <ref role="37wK5l" to="42ru:~ReloadableModuleBase.getClass(java.lang.String):java.lang.Class" resolve="getClass" />
                          <node concept="2YIFZM" id="12TFIqWuAz3" role="37wK5m">
                            <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
                            <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
                            <node concept="37vLTw" id="12TFIqWuAz4" role="37wK5m">
                              <ref role="3cqZAo" node="12TFIqWtQOa" resolve="runnerModel" />
                            </node>
                            <node concept="2OqwBi" id="12TFIqWuAz5" role="37wK5m">
                              <node concept="2OqwBi" id="12TFIqWuAz6" role="2Oq$k0">
                                <node concept="2OqwBi" id="12TFIqWuAz7" role="2Oq$k0">
                                  <node concept="37vLTw" id="12TFIqWuAz8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="12TFIqWtQOa" resolve="runnerModel" />
                                  </node>
                                  <node concept="2RRcyG" id="12TFIqWuAz9" role="2OqNvi">
                                    <ref role="2RRcyH" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="12TFIqWuAza" role="2OqNvi" />
                              </node>
                              <node concept="3TrcHB" id="12TFIqWuAzb" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="12TFIqWuw2b" role="3cqZAp" />
                  <node concept="3cpWs8" id="12TFIqWuChp" role="3cqZAp">
                    <node concept="3cpWsn" id="12TFIqWuChq" role="3cpWs9">
                      <property role="TrG5h" value="mainMethod" />
                      <node concept="3uibUv" id="12TFIqWuCh0" role="1tU5fm">
                        <ref role="3uigEE" to="xqpa:~Method" resolve="Method" />
                      </node>
                      <node concept="2OqwBi" id="12TFIqWuFYN" role="33vP2m">
                        <node concept="2OqwBi" id="12TFIqWuD9u" role="2Oq$k0">
                          <node concept="2OqwBi" id="12TFIqWuCht" role="2Oq$k0">
                            <node concept="37vLTw" id="12TFIqWuChu" role="2Oq$k0">
                              <ref role="3cqZAo" node="12TFIqWuAyW" resolve="cls" />
                            </node>
                            <node concept="liA8E" id="12TFIqWuChv" role="2OqNvi">
                              <ref role="37wK5l" to="e2lb:~Class.getMethods():java.lang.reflect.Method[]" resolve="getMethods" />
                            </node>
                          </node>
                          <node concept="39bAoz" id="12TFIqWuEXH" role="2OqNvi" />
                        </node>
                        <node concept="1z4cxt" id="12TFIqWuIQy" role="2OqNvi">
                          <node concept="1bVj0M" id="12TFIqWuIQ$" role="23t8la">
                            <node concept="3clFbS" id="12TFIqWuIQ_" role="1bW5cS">
                              <node concept="3clFbF" id="12TFIqWuIYA" role="3cqZAp">
                                <node concept="2OqwBi" id="12TFIqWuJt0" role="3clFbG">
                                  <node concept="Xl_RD" id="12TFIqWuIY_" role="2Oq$k0">
                                    <property role="Xl_RC" value="main" />
                                  </node>
                                  <node concept="liA8E" id="12TFIqWuKJb" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="2OqwBi" id="12TFIqWuL2j" role="37wK5m">
                                      <node concept="37vLTw" id="12TFIqWuKOq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="12TFIqWuIQA" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="12TFIqWuMX3" role="2OqNvi">
                                        <ref role="37wK5l" to="xqpa:~Method.getName():java.lang.String" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="12TFIqWuIQA" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="12TFIqWuIQB" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="12TFIqWx6HC" role="3cqZAp">
                    <node concept="3cpWsn" id="12TFIqWx6HD" role="3cpWs9">
                      <property role="TrG5h" value="arg" />
                      <node concept="3uibUv" id="12TFIqWx76N" role="1tU5fm">
                        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                      </node>
                      <node concept="2ShNRf" id="12TFIqWx6HE" role="33vP2m">
                        <node concept="3$_iS1" id="12TFIqWx6HF" role="2ShVmc">
                          <node concept="3$GHV9" id="12TFIqWx6HG" role="3$GQph">
                            <node concept="3cmrfG" id="12TFIqWx6HH" role="3$I4v7">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="17QB3L" id="12TFIqWx6HI" role="3$_nBY" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="12TFIqWuB5E" role="3cqZAp">
                    <node concept="2OqwBi" id="12TFIqWuNjJ" role="3clFbG">
                      <node concept="37vLTw" id="12TFIqWuChw" role="2Oq$k0">
                        <ref role="3cqZAo" node="12TFIqWuChq" resolve="mainMethod" />
                      </node>
                      <node concept="liA8E" id="12TFIqWuNO3" role="2OqNvi">
                        <ref role="37wK5l" to="xqpa:~Method.invoke(java.lang.Object,java.lang.Object...):java.lang.Object" resolve="invoke" />
                        <node concept="10Nm6u" id="12TFIqWuO5Z" role="37wK5m" />
                        <node concept="37vLTw" id="12TFIqWx6HJ" role="37wK5m">
                          <ref role="3cqZAo" node="12TFIqWx6HD" resolve="arg" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="12TFIqWuCRw" role="3cqZAp" />
                </node>
                <node concept="TDmWw" id="12TFIqWtT8i" role="TEbGg">
                  <node concept="3clFbS" id="12TFIqWtT8j" role="TDEfX">
                    <node concept="34ab3g" id="12TFIqWtUhk" role="3cqZAp">
                      <property role="35gtTG" value="error" />
                      <property role="34fQS0" value="true" />
                      <node concept="Xl_RD" id="12TFIqWtUhm" role="34bqiv">
                        <property role="Xl_RC" value="exception during evaluation" />
                      </node>
                      <node concept="37vLTw" id="12TFIqWtUho" role="34bMjA">
                        <ref role="3cqZAo" node="12TFIqWtT8k" resolve="e" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="12TFIqWuYuO" role="3cqZAp">
                      <node concept="2YIFZM" id="12TFIqWuYuP" role="3clFbG">
                        <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                        <ref role="37wK5l" to="810:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                        <node concept="Xl_RD" id="12TFIqWuYuQ" role="37wK5m">
                          <property role="Xl_RC" value="Encountered errors" />
                        </node>
                        <node concept="Xl_RD" id="12TFIqWuYuR" role="37wK5m">
                          <property role="Xl_RC" value="Launch Rules" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="12TFIqWuYLH" role="3cqZAp" />
                  </node>
                  <node concept="3cpWsn" id="12TFIqWtT8k" role="TDEfY">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="12TFIqWvK7q" role="1tU5fm">
                      <ref role="3uigEE" to="e2lb:~Throwable" resolve="Throwable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="12TFIqWsWcp" role="3cqZAp" />
              <node concept="3clFbF" id="12TFIqWuYUd" role="3cqZAp">
                <node concept="2YIFZM" id="12TFIqWuYUe" role="3clFbG">
                  <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                  <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
                  <node concept="Xl_RD" id="12TFIqWuYUf" role="37wK5m">
                    <property role="Xl_RC" value="Finished without errors" />
                  </node>
                  <node concept="Xl_RD" id="12TFIqWuYUg" role="37wK5m">
                    <property role="Xl_RC" value="Launch Rules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12TFIqWsWaJ" role="3clF45" />
      <node concept="3Tm6S6" id="12TFIqWsW79" role="1B3o_S" />
    </node>
    <node concept="tnohg" id="3Qp4N06byo$" role="tncku">
      <node concept="3clFbS" id="3Qp4N06byo_" role="2VODD2">
        <node concept="3clFbF" id="12TFIqWsU3A" role="3cqZAp">
          <node concept="2OqwBi" id="12TFIqWsU3w" role="3clFbG">
            <node concept="2WthIp" id="12TFIqWsU3z" role="2Oq$k0" />
            <node concept="2XshWL" id="12TFIqWsU3_" role="2OqNvi">
              <ref role="2WH_rO" node="12TFIqWsK4U" resolve="stepOne" />
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
      <property role="TrG5h" value="root" />
      <ref role="1DUlNI" to="5xh9:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="2Rw7mr8Sq3U" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="2Rw7mr8TSxK" role="tmbBb">
      <node concept="3clFbS" id="2Rw7mr8TSxL" role="2VODD2">
        <node concept="3clFbF" id="2Rw7mr8TSMf" role="3cqZAp">
          <node concept="1Wc70l" id="7RDCjSXjOFl" role="3clFbG">
            <node concept="2OqwBi" id="2Rw7mr8TWBB" role="3uHU7B">
              <node concept="1eOMI4" id="2Rw7mr8TV$J" role="2Oq$k0">
                <node concept="10QFUN" id="2Rw7mr8TV$G" role="1eOMHV">
                  <node concept="3Tqbb2" id="2Rw7mr8TVXQ" role="10QFUM" />
                  <node concept="2OqwBi" id="2Rw7mr8TWh$" role="10QFUP">
                    <node concept="2WthIp" id="2Rw7mr8TWhB" role="2Oq$k0" />
                    <node concept="1DTwFV" id="2Rw7mr8TWhD" role="2OqNvi">
                      <ref role="2WH_rO" node="2Rw7mr8Sq3T" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1mIQ4w" id="2Rw7mr8TX6F" role="2OqNvi">
                <node concept="chp4Y" id="2Rw7mr8TXrh" role="cj9EA">
                  <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
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
    </node>
    <node concept="tT9cl" id="2Rw7mr8T789" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:28s6IYZxj4I" resolve="showGeneratedText" />
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
      <node concept="3cqZAl" id="7RDCjSXjNjW" role="3clF45" />
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
                              <node concept="3clFbH" id="7RDCjSXlcKg" role="3cqZAp" />
                              <node concept="34ab3g" id="7RDCjSXkJED" role="3cqZAp">
                                <property role="35gtTG" value="warn" />
                                <node concept="Xl_RD" id="7RDCjSXkJEG" role="34bqiv">
                                  <property role="Xl_RC" value="*** WAITING FOR RESULT" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="7RDCjSXkJ$F" role="3cqZAp" />
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
                              <node concept="3clFbH" id="7RDCjSXkpxj" role="3cqZAp" />
                              <node concept="34ab3g" id="7RDCjSXkpKg" role="3cqZAp">
                                <property role="35gtTG" value="warn" />
                                <node concept="3cpWs3" id="7RDCjSXkq9S" role="34bqiv">
                                  <node concept="37vLTw" id="7RDCjSXkqbb" role="3uHU7w">
                                    <ref role="3cqZAo" node="7RDCjSXjMeG" resolve="res" />
                                  </node>
                                  <node concept="Xl_RD" id="7RDCjSXkpKi" role="3uHU7B">
                                    <property role="Xl_RC" value="*** RESULT: " />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="7RDCjSXkpCe" role="3cqZAp" />
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
      <node concept="3cqZAl" id="7RDCjSXirko" role="3clF45" />
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
</model>

