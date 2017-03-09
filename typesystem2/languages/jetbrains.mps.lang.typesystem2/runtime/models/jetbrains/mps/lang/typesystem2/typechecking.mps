<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.typesystem2.typechecking)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="4r4j" ref="r:94702bd0-f623-44e8-af0a-f2730f7d2518(jetbrains.mps.lang.typesystem2.samplechecker.handle.util)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)" />
    <import index="7n8k" ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.builtin.program)" />
    <import index="nz6g" ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.type)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="umch" ref="r:4caa22a9-5195-4617-8800-5f9f74cc4480(jetbrains.mps.lang.typesystem2.helper.plugin)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="6612597108003615641" name="jetbrains.mps.baseLanguage.javadoc.structure.HTMLElement" flags="ng" index="2U$1Ah">
        <property id="6612597108003615642" name="name" index="2U$1Ai" />
        <child id="6612597108003615643" name="line" index="2U$1Aj" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180457458947" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSuperConcepts" flags="nn" index="3oJPKh" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="41ox5Vnk76a">
    <property role="TrG5h" value="ProgramEvaluator" />
    <property role="3GE5qa" value="" />
    <node concept="2tJIrI" id="7dgRGU4ocQV" role="jymVt" />
    <node concept="Wx3nA" id="5mr7UHcbnci" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="PREDICATE_SYMBOLS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5mr7UHcbl_B" role="1B3o_S" />
      <node concept="10Q1$e" id="5mr7UHcbnc4" role="1tU5fm">
        <node concept="3uibUv" id="5mr7UHcbq0Z" role="10Q1$1">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="2ShNRf" id="5mr7UHcbowK" role="33vP2m">
        <node concept="3g6Rrh" id="5mr7UHcboy8" role="2ShVmc">
          <node concept="10M0yZ" id="5mr7UHcboyR" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboyX" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboz3" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboz9" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5uFPQ7C26$b" resolve="BOUND_SYM" />
            <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcbozf" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5uFPQ7C279$" resolve="FREE_SYM" />
            <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
          </node>
          <node concept="10M0yZ" id="7rf49Ngo$U5" role="3g7hyw">
            <ref role="1PxDUh" to="cxk7:7rf49NgkbDQ" resolve="NotPredicate" />
            <ref role="3cqZAo" to="cxk7:7rf49Ngke3n" resolve="NOT_SYM" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vXEc" role="3g7hyw">
            <ref role="1PxDUh" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
            <ref role="3cqZAo" to="av0y:~JavaPredicateSymbol.EXPRESSION0" resolve="EXPRESSION0" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vXSW" role="3g7hyw">
            <ref role="1PxDUh" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
            <ref role="3cqZAo" to="av0y:~JavaPredicateSymbol.EXPRESSION1" resolve="EXPRESSION1" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vY7W" role="3g7hyw">
            <ref role="1PxDUh" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
            <ref role="3cqZAo" to="av0y:~JavaPredicateSymbol.EXPRESSION2" resolve="EXPRESSION2" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vYn6" role="3g7hyw">
            <ref role="1PxDUh" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
            <ref role="3cqZAo" to="av0y:~JavaPredicateSymbol.EXPRESSION3" resolve="EXPRESSION3" />
          </node>
          <node concept="3uibUv" id="5mr7UHcbqo2" role="3g7fb8">
            <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
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
        <node concept="3clFbF" id="4hh0cTR9UBL" role="3cqZAp">
          <node concept="2OqwBi" id="4hh0cTR9Vlx" role="3clFbG">
            <node concept="37vLTw" id="4hh0cTR9UBJ" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="4hh0cTR9WTU" role="2OqNvi">
              <node concept="Xl_RD" id="4hh0cTR9X9H" role="25WWJ7">
                <property role="Xl_RC" value="ubound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4hh0cTR9Xig" role="3cqZAp">
          <node concept="2OqwBi" id="4hh0cTR9Xih" role="3clFbG">
            <node concept="37vLTw" id="4hh0cTR9Xii" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="4hh0cTR9Xij" role="2OqNvi">
              <node concept="Xl_RD" id="4hh0cTR9Xik" role="25WWJ7">
                <property role="Xl_RC" value="lbound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4hh0cTR9Xpt" role="3cqZAp">
          <node concept="2OqwBi" id="4hh0cTR9Xpu" role="3clFbG">
            <node concept="37vLTw" id="4hh0cTR9Xpv" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="4hh0cTR9Xpw" role="2OqNvi">
              <node concept="Xl_RD" id="4hh0cTR9Xpx" role="25WWJ7">
                <property role="Xl_RC" value="varname" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5cnt3vhk_Er" role="3cqZAp">
          <node concept="2OqwBi" id="5cnt3vhk_Es" role="3clFbG">
            <node concept="37vLTw" id="5cnt3vhk_Et" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="5cnt3vhk_Eu" role="2OqNvi">
              <node concept="Xl_RD" id="5cnt3vhk_Ev" role="25WWJ7">
                <property role="Xl_RC" value="recoverAll" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5cnt3vhk_TJ" role="3cqZAp">
          <node concept="2OqwBi" id="5cnt3vhk_TK" role="3clFbG">
            <node concept="37vLTw" id="5cnt3vhk_TL" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="5cnt3vhk_TM" role="2OqNvi">
              <node concept="Xl_RD" id="5cnt3vhk_TN" role="25WWJ7">
                <property role="Xl_RC" value="recover" />
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
                  <ref role="37wK5l" to="av0y:~Symbol.id():java.lang.String" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1CcQBrQl1Dg" role="3cqZAp">
          <node concept="2OqwBi" id="1CcQBrQl1Dh" role="3clFbG">
            <node concept="37vLTw" id="1CcQBrQl1Di" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="1CcQBrQl1Dj" role="2OqNvi">
              <node concept="2OqwBi" id="1CcQBrQl1Dk" role="25WWJ7">
                <node concept="10M0yZ" id="1CcQBrQl1P1" role="2Oq$k0">
                  <ref role="3cqZAo" to="i348:1CcQBrQgCB2" resolve="TYPENODE_SYM" />
                  <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
                </node>
                <node concept="liA8E" id="1CcQBrQl1Dm" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Symbol.id():java.lang.String" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tpkEj3JBzh" role="3cqZAp">
          <node concept="2OqwBi" id="5tpkEj3JBzi" role="3clFbG">
            <node concept="37vLTw" id="5tpkEj3JBzj" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="5tpkEj3JBzk" role="2OqNvi">
              <node concept="2OqwBi" id="5tpkEj3JBzl" role="25WWJ7">
                <node concept="10M0yZ" id="5tpkEj3JBKj" role="2Oq$k0">
                  <ref role="3cqZAo" to="i348:5tpkEj3JBli" resolve="ERROR_SYM" />
                  <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
                </node>
                <node concept="liA8E" id="5tpkEj3JBzn" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Symbol.id():java.lang.String" resolve="id" />
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
    <node concept="3clFbW" id="HV6urVFjOl" role="jymVt">
      <node concept="37vLTG" id="2UGjFq4Led0" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="2UGjFq4Les6" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
        </node>
      </node>
      <node concept="3cqZAl" id="HV6urVFjOn" role="3clF45" />
      <node concept="3Tm1VV" id="HV6urVFjOo" role="1B3o_S" />
      <node concept="3clFbS" id="HV6urVFjOp" role="3clF47">
        <node concept="1VxSAg" id="4F3SXIF5Y1f" role="3cqZAp">
          <ref role="37wK5l" node="4F3SXIF5Xa$" resolve="ProgramEvaluator" />
          <node concept="37vLTw" id="4F3SXIF5Y2w" role="37wK5m">
            <ref role="3cqZAo" node="2UGjFq4Led0" resolve="sessionSolver" />
          </node>
          <node concept="3clFbT" id="4F3SXIF5Y37" role="37wK5m">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4F3SXIF5Xmc" role="jymVt" />
    <node concept="3clFbW" id="4F3SXIF5Xa$" role="jymVt">
      <node concept="37vLTG" id="4F3SXIF5Xa_" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="4F3SXIF5XaA" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="4F3SXIF5Xx_" role="3clF46">
        <property role="TrG5h" value="profiling" />
        <node concept="10P_77" id="4F3SXIF5XyU" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4F3SXIF5XaB" role="3clF45" />
      <node concept="3Tm1VV" id="4F3SXIF5XaC" role="1B3o_S" />
      <node concept="3clFbS" id="4F3SXIF5XaD" role="3clF47">
        <node concept="3clFbF" id="4F3SXIF5XaE" role="3cqZAp">
          <node concept="37vLTI" id="4F3SXIF5XaF" role="3clFbG">
            <node concept="2OqwBi" id="4F3SXIF5XaG" role="37vLTJ">
              <node concept="Xjq3P" id="4F3SXIF5XaH" role="2Oq$k0" />
              <node concept="2OwXpG" id="4F3SXIF5XaI" role="2OqNvi">
                <ref role="2Oxat5" node="2UGjFq4Lesf" resolve="sessionSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="4F3SXIF5XaJ" role="37vLTx">
              <ref role="3cqZAo" node="4F3SXIF5Xa_" resolve="sessionSolver" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4F3SXIF5XzO" role="3cqZAp">
          <node concept="37vLTI" id="4F3SXIF5XzQ" role="3clFbG">
            <node concept="2OqwBi" id="4F3SXIF5XMn" role="37vLTJ">
              <node concept="Xjq3P" id="4F3SXIF5XN2" role="2Oq$k0" />
              <node concept="2OwXpG" id="4F3SXIF5XMq" role="2OqNvi">
                <ref role="2Oxat5" node="4F3SXIF5XzK" resolve="profiling" />
              </node>
            </node>
            <node concept="37vLTw" id="4F3SXIF5XzU" role="37vLTx">
              <ref role="3cqZAo" node="4F3SXIF5Xx_" resolve="profiling" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HV6urVFFCx" role="jymVt" />
    <node concept="3clFb_" id="HV6urVFrQ9" role="jymVt">
      <property role="TrG5h" value="eval" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3F6vMxqrzZY" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="3F6vMxqrBcz" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQKgF" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="qubcdtxFI2" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:qubcdtxBiR" resolve="EvaluationTraceExt" />
        </node>
      </node>
      <node concept="3clFbS" id="41ox5VnkgxM" role="3clF47">
        <node concept="3cpWs8" id="3GlpCDSBZnZ" role="3cqZAp">
          <node concept="3cpWsn" id="3GlpCDSBZo0" role="3cpWs9">
            <property role="TrG5h" value="profilingData" />
            <node concept="3rvAFt" id="3GlpCDSBZnL" role="1tU5fm">
              <node concept="17QB3L" id="3GlpCDSBZnR" role="3rvQeY" />
              <node concept="17QB3L" id="3GlpCDSBZnQ" role="3rvSg0" />
            </node>
            <node concept="10Nm6u" id="4F3SXIF6e39" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VnkhIX" role="3cqZAp" />
        <node concept="3clFbF" id="3GlpCDSC7RP" role="3cqZAp">
          <node concept="37vLTI" id="3GlpCDSC7RR" role="3clFbG">
            <node concept="2OqwBi" id="3GlpCDSC7E1" role="37vLTx">
              <node concept="37vLTw" id="3GlpCDSC7E2" role="2Oq$k0">
                <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
              </node>
              <node concept="liA8E" id="3GlpCDSC7E3" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withParam(java.lang.String,java.lang.Object):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="withParam" />
                <node concept="Xl_RD" id="3GlpCDSC7E4" role="37wK5m">
                  <property role="Xl_RC" value="main" />
                </node>
                <node concept="2OqwBi" id="3GlpCDSC7E5" role="37wK5m">
                  <node concept="2ShNRf" id="3GlpCDSC7E6" role="2Oq$k0">
                    <node concept="1pGfFk" id="3GlpCDSC7E7" role="2ShVmc">
                      <ref role="37wK5l" to="nz6g:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                      <node concept="2ShNRf" id="3GlpCDSC7E8" role="37wK5m">
                        <node concept="1pGfFk" id="3GlpCDSC7E9" role="2ShVmc">
                          <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                          <node concept="Xl_RD" id="3GlpCDSC7Ea" role="37wK5m">
                            <property role="Xl_RC" value="main" />
                          </node>
                          <node concept="3cmrfG" id="3GlpCDSC7Eb" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3GlpCDSC7Ec" role="2OqNvi">
                    <ref role="37wK5l" to="nz6g:4sSe4$oM2zI" resolve="toConstraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GlpCDSC862" role="37vLTJ">
              <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4F3SXIF61$$" role="3cqZAp">
          <node concept="3clFbS" id="4F3SXIF61$A" role="3clFbx">
            <node concept="3clFbF" id="4F3SXIF6570" role="3cqZAp">
              <node concept="37vLTI" id="4F3SXIF6572" role="3clFbG">
                <node concept="2ShNRf" id="3GlpCDSBZo1" role="37vLTx">
                  <node concept="32Fmki" id="3GlpCDSBZo2" role="2ShVmc">
                    <node concept="17QB3L" id="3GlpCDSBZo3" role="3rHrn6" />
                    <node concept="17QB3L" id="3GlpCDSBZo4" role="3rHtpV" />
                  </node>
                </node>
                <node concept="37vLTw" id="4F3SXIF6576" role="37vLTJ">
                  <ref role="3cqZAo" node="3GlpCDSBZo0" resolve="profilingData" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3GlpCDSC8ug" role="3cqZAp">
              <node concept="37vLTI" id="3GlpCDSC8uh" role="3clFbG">
                <node concept="2OqwBi" id="3GlpCDSC8ui" role="37vLTx">
                  <node concept="37vLTw" id="3GlpCDSC8uj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
                  </node>
                  <node concept="liA8E" id="3F6vMxqqwSs" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withParam(java.lang.String,java.lang.Object):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="withParam" />
                    <node concept="Xl_RD" id="3F6vMxqqzhz" role="37wK5m">
                      <property role="Xl_RC" value="profiling.data" />
                    </node>
                    <node concept="37vLTw" id="3F6vMxqqAtS" role="37wK5m">
                      <ref role="3cqZAo" node="3GlpCDSBZo0" resolve="profilingData" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GlpCDSC8uu" role="37vLTJ">
                  <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4F3SXIF62JV" role="3clFbw">
            <ref role="3cqZAo" node="4F3SXIF5XzK" resolve="profiling" />
          </node>
        </node>
        <node concept="3clFbF" id="3GlpCDSD2Ms" role="3cqZAp">
          <node concept="37vLTI" id="3GlpCDSD39k" role="3clFbG">
            <node concept="37vLTw" id="3GlpCDSD2Mq" role="37vLTJ">
              <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
            </node>
            <node concept="2OqwBi" id="3GlpCDSD3d1" role="37vLTx">
              <node concept="37vLTw" id="3GlpCDSD3d2" role="2Oq$k0">
                <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
              </node>
              <node concept="liA8E" id="3GlpCDSD3d3" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withTrace(jetbrains.mps.logic.reactor.evaluation.EvaluationTrace):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="withTrace" />
                <node concept="37vLTw" id="3GlpCDSD3d4" role="37wK5m">
                  <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3GlpCDSD3ry" role="3cqZAp">
          <node concept="37vLTI" id="3GlpCDSD3HK" role="3clFbG">
            <node concept="2OqwBi" id="3GlpCDSD3OA" role="37vLTx">
              <node concept="37vLTw" id="3GlpCDSD3Iy" role="2Oq$k0">
                <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
              </node>
              <node concept="liA8E" id="3GlpCDSD3Yx" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withPredicates(jetbrains.mps.logic.reactor.program.PredicateSymbol...):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="withPredicates" />
                <node concept="37vLTw" id="3GlpCDSD3Y$" role="37wK5m">
                  <ref role="3cqZAo" node="5mr7UHcbnci" resolve="PREDICATE_SYMBOLS" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GlpCDSD3rw" role="37vLTJ">
              <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5cnt3vh3_T4" role="3cqZAp">
          <node concept="3clFbS" id="5cnt3vh3_T6" role="3clFbx">
            <node concept="3clFbF" id="5cnt3vh3Fl7" role="3cqZAp">
              <node concept="37vLTI" id="5cnt3vh3Fvz" role="3clFbG">
                <node concept="2OqwBi" id="5cnt3vh3FAj" role="37vLTx">
                  <node concept="37vLTw" id="5cnt3vh3Fwi" role="2Oq$k0">
                    <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
                  </node>
                  <node concept="liA8E" id="5cnt3vh3FQa" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withStoreView(jetbrains.mps.logic.reactor.evaluation.StoreView):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="withStoreView" />
                    <node concept="37vLTw" id="5cnt3vh3FTs" role="37wK5m">
                      <ref role="3cqZAo" node="5cnt3vh3s4F" resolve="storeView" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5cnt3vh3Fl5" role="37vLTJ">
                  <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5cnt3vheYqQ" role="3cqZAp" />
            <node concept="1DcWWT" id="5cnt3vheYOL" role="3cqZAp">
              <node concept="3clFbS" id="5cnt3vheYOO" role="2LFqv$">
                <node concept="3clFbF" id="5cnt3vheYY_" role="3cqZAp">
                  <node concept="2OqwBi" id="5cnt3vheZ73" role="3clFbG">
                    <node concept="37vLTw" id="5cnt3vheYY$" role="2Oq$k0">
                      <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
                    </node>
                    <node concept="liA8E" id="5cnt3vhfbzQ" role="2OqNvi">
                      <ref role="37wK5l" to="yg8f:5cnt3vhfW9c" resolve="restored" />
                      <node concept="37vLTw" id="5cnt3vhfbAG" role="37wK5m">
                        <ref role="3cqZAo" node="5cnt3vheYOP" resolve="occ" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5cnt3vheYOP" role="1Duv9x">
                <property role="TrG5h" value="occ" />
                <node concept="3uibUv" id="5cnt3vheYOT" role="1tU5fm">
                  <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="2OqwBi" id="5cnt3vheYOU" role="1DdaDG">
                <node concept="37vLTw" id="5cnt3vheYOV" role="2Oq$k0">
                  <ref role="3cqZAo" node="5cnt3vh3s4F" resolve="storeView" />
                </node>
                <node concept="liA8E" id="5cnt3vheYOW" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~StoreView.allOccurrences():java.lang.Iterable" resolve="allOccurrences" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5cnt3vh3Dtf" role="3clFbw">
            <node concept="10Nm6u" id="5cnt3vh3F5J" role="3uHU7w" />
            <node concept="37vLTw" id="5cnt3vh3BJz" role="3uHU7B">
              <ref role="3cqZAo" node="5cnt3vh3s4F" resolve="storeView" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GlpCDSBYQN" role="3cqZAp" />
        <node concept="3clFbF" id="1Ry9kf2v6eb" role="3cqZAp">
          <node concept="2YIFZM" id="2FXL1yZvCpJ" role="3clFbG">
            <ref role="37wK5l" node="2k2r9bMbV$8" resolve="init" />
            <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
          </node>
        </node>
        <node concept="3clFbF" id="1Ry9kf2v6ed" role="3cqZAp">
          <node concept="2YIFZM" id="2FXL1yZvCpM" role="3clFbG">
            <ref role="37wK5l" node="2tjs8VC1byF" resolve="push" />
            <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
          </node>
        </node>
        <node concept="3cpWs8" id="5mr7UHcbsDR" role="3cqZAp">
          <node concept="3cpWsn" id="5mr7UHcbsDS" role="3cpWs9">
            <property role="TrG5h" value="evaluationSession" />
            <node concept="3uibUv" id="5mr7UHcbsDe" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
            </node>
            <node concept="10Nm6u" id="7rf49NgqS96" role="33vP2m" />
          </node>
        </node>
        <node concept="2GUZhq" id="1Ry9kf2vh7F" role="3cqZAp">
          <node concept="TDmWw" id="3GlpCDSFvLa" role="TEXxN">
            <node concept="3cpWsn" id="3GlpCDSFvLb" role="TDEfY">
              <property role="TrG5h" value="f" />
              <node concept="3uibUv" id="3GlpCDSFwLt" role="1tU5fm">
                <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
              </node>
            </node>
            <node concept="3clFbS" id="3GlpCDSFvLd" role="TDEfX">
              <node concept="3clFbF" id="3GlpCDSFx0K" role="3cqZAp">
                <node concept="2OqwBi" id="3GlpCDSFxdG" role="3clFbG">
                  <node concept="37vLTw" id="3GlpCDSFx0I" role="2Oq$k0">
                    <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
                  </node>
                  <node concept="liA8E" id="3GlpCDSFxxb" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationTrace.failure(jetbrains.mps.logic.reactor.evaluation.EvaluationFailureException):void" resolve="failure" />
                    <node concept="37vLTw" id="3GlpCDSFxz0" role="37wK5m">
                      <ref role="3cqZAo" node="3GlpCDSFvLb" resolve="f" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3GlpCDSFxHB" role="3cqZAp">
                <node concept="2YIFZM" id="3GlpCDSFzFH" role="3cqZAk">
                  <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                  <ref role="37wK5l" node="6i42QSsr2_r" resolve="FAIL" />
                  <node concept="2OqwBi" id="3GlpCDSFB1B" role="37wK5m">
                    <node concept="37vLTw" id="4F3SXIF5HDp" role="2Oq$k0">
                      <ref role="3cqZAo" node="3GlpCDSFvLb" resolve="f" />
                    </node>
                    <node concept="liA8E" id="3GlpCDSFC$Q" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4F3SXIF5FsS" role="37wK5m">
                    <ref role="3cqZAo" node="3GlpCDSFvLb" resolve="f" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3GlpCDSFwYK" role="3cqZAp" />
            </node>
          </node>
          <node concept="TDmWw" id="7rf49NgqSok" role="TEXxN">
            <node concept="3cpWsn" id="7rf49NgqSol" role="TDEfY">
              <property role="TrG5h" value="vmerr" />
              <node concept="3uibUv" id="7rf49NgqTpN" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~VirtualMachineError" resolve="VirtualMachineError" />
              </node>
            </node>
            <node concept="3clFbS" id="7rf49NgqSon" role="TDEfX">
              <node concept="34ab3g" id="7rf49NgqUfa" role="3cqZAp">
                <property role="35gtTG" value="warn" />
                <property role="34fQS0" value="true" />
                <node concept="Xl_RD" id="7rf49NgqUfc" role="34bqiv">
                  <property role="Xl_RC" value="error evaluating program" />
                </node>
                <node concept="37vLTw" id="7rf49NgqUfe" role="34bMjA">
                  <ref role="3cqZAo" node="7rf49NgqSol" resolve="vmerr" />
                </node>
              </node>
              <node concept="3cpWs6" id="7rf49NgqUQx" role="3cqZAp">
                <node concept="2YIFZM" id="7rf49NgqWOl" role="3cqZAk">
                  <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                  <ref role="37wK5l" node="6i42QSsr2_r" resolve="FAIL" />
                  <node concept="Xl_RD" id="7rf49NgqZJw" role="37wK5m">
                    <property role="Xl_RC" value="error during evaluation" />
                  </node>
                  <node concept="37vLTw" id="7rf49Ngr2H$" role="37wK5m">
                    <ref role="3cqZAo" node="7rf49NgqSol" resolve="vmerr" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7rf49NgqTGY" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="1Ry9kf2vh7H" role="2GV8ay">
            <node concept="3clFbF" id="1Ry9kf2vmS1" role="3cqZAp">
              <node concept="37vLTI" id="1Ry9kf2vmS3" role="3clFbG">
                <node concept="2OqwBi" id="5mr7UHcbsDT" role="37vLTx">
                  <node concept="37vLTw" id="3GlpCDSC8kM" role="2Oq$k0">
                    <ref role="3cqZAo" node="3F6vMxqrzZY" resolve="config" />
                  </node>
                  <node concept="liA8E" id="5mr7UHcbsE5" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.start(jetbrains.mps.logic.reactor.evaluation.SessionSolver):jetbrains.mps.logic.reactor.evaluation.EvaluationSession" resolve="start" />
                    <node concept="37vLTw" id="2UGjFq4Lf8i" role="37wK5m">
                      <ref role="3cqZAo" node="2UGjFq4Lesf" resolve="sessionSolver" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1Ry9kf2vmS7" role="37vLTJ">
                  <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationSession" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3GlpCDSF16f" role="3cqZAp">
              <node concept="37vLTI" id="3GlpCDSF3sl" role="3clFbG">
                <node concept="2OqwBi" id="3GlpCDSF22I" role="37vLTJ">
                  <node concept="Xjq3P" id="3GlpCDSF16d" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5cnt3vh3zW0" role="2OqNvi">
                    <ref role="2Oxat5" node="5cnt3vh3s4F" resolve="storeView" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5jCHAT1QTrY" role="37vLTx">
                  <node concept="37vLTw" id="3GlpCDSF4lt" role="2Oq$k0">
                    <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationSession" />
                  </node>
                  <node concept="liA8E" id="5jCHAT1QTDv" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession.storeView():jetbrains.mps.logic.reactor.evaluation.StoreView" resolve="storeView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1Ry9kf2vjSe" role="3cqZAp" />
          </node>
          <node concept="3clFbS" id="1Ry9kf2vh7I" role="2GVbov">
            <node concept="3SKdUt" id="4F3SXIF5S$a" role="3cqZAp">
              <node concept="3SKdUq" id="4F3SXIF5S$c" role="3SKWNk">
                <property role="3SKdUp" value="report profiling data before exiting" />
              </node>
            </node>
            <node concept="3clFbJ" id="4F3SXIF68VK" role="3cqZAp">
              <node concept="3clFbS" id="4F3SXIF68VM" role="3clFbx">
                <node concept="1DcWWT" id="4F3SXIF5J_9" role="3cqZAp">
                  <node concept="3clFbS" id="4F3SXIF5J_b" role="2LFqv$">
                    <node concept="3cpWs8" id="4ZcizIatOSD" role="3cqZAp">
                      <node concept="3cpWsn" id="4ZcizIatOSE" role="3cpWs9">
                        <property role="TrG5h" value="value" />
                        <node concept="3uibUv" id="4ZcizIatOSB" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="2OqwBi" id="4ZcizIatOSF" role="33vP2m">
                          <node concept="37vLTw" id="4ZcizIatOSG" role="2Oq$k0">
                            <ref role="3cqZAo" node="4F3SXIF5J_f" resolve="e" />
                          </node>
                          <node concept="liA8E" id="4ZcizIatOSH" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="4ZcizIatPiG" role="3cqZAp">
                      <node concept="3clFbS" id="4ZcizIatPiI" role="2LFqv$">
                        <node concept="3clFbF" id="4F3SXIF5J_d" role="3cqZAp">
                          <node concept="2OqwBi" id="4F3SXIF5J_7" role="3clFbG">
                            <node concept="37vLTw" id="4F3SXIF5J__" role="2Oq$k0">
                              <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
                            </node>
                            <node concept="liA8E" id="4F3SXIF5J_x" role="2OqNvi">
                              <ref role="37wK5l" to="yg8f:18cJbc1jRnT" resolve="info" />
                              <node concept="3cpWs3" id="4F3SXIF5J_D" role="37wK5m">
                                <node concept="37vLTw" id="4ZcizIatSHV" role="3uHU7w">
                                  <ref role="3cqZAo" node="4ZcizIatPiJ" resolve="s" />
                                </node>
                                <node concept="3cpWs3" id="4F3SXIF5J_v" role="3uHU7B">
                                  <node concept="2OqwBi" id="4F3SXIF5J_z" role="3uHU7B">
                                    <node concept="37vLTw" id="4F3SXIF5J_p" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4F3SXIF5J_f" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="4F3SXIF5J$V" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="4F3SXIF5J_B" role="3uHU7w">
                                    <property role="Xl_RC" value=": " />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="4ZcizIatPiJ" role="1Duv9x">
                        <property role="TrG5h" value="s" />
                        <node concept="17QB3L" id="4ZcizIatPB5" role="1tU5fm" />
                      </node>
                      <node concept="2OqwBi" id="4ZcizIatQgQ" role="1DdaDG">
                        <node concept="37vLTw" id="4ZcizIatPUV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4ZcizIatOSE" resolve="value" />
                        </node>
                        <node concept="liA8E" id="4ZcizIatRax" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                          <node concept="Xl_RD" id="4ZcizIatRvw" role="37wK5m">
                            <property role="Xl_RC" value="\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="4F3SXIF5J_f" role="1Duv9x">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="4F3SXIF5J_j" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                      <node concept="3uibUv" id="4F3SXIF5J_5" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                      <node concept="3uibUv" id="4F3SXIF5J_F" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4F3SXIF5J$T" role="1DdaDG">
                    <node concept="1eOMI4" id="4F3SXIF5J$X" role="2Oq$k0">
                      <node concept="10QFUN" id="4F3SXIF5J$Z" role="1eOMHV">
                        <node concept="3uibUv" id="4F3SXIF5J_n" role="10QFUM">
                          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                          <node concept="3uibUv" id="4F3SXIF5J_r" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3uibUv" id="4F3SXIF5J_t" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4F3SXIF5J_3" role="10QFUP">
                          <ref role="3cqZAo" node="3GlpCDSBZo0" resolve="profilingData" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4F3SXIF5J_H" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.entrySet():java.util.Set" resolve="entrySet" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4F3SXIF69NZ" role="3clFbw">
                <ref role="3cqZAo" node="4F3SXIF5XzK" resolve="profiling" />
              </node>
            </node>
            <node concept="3clFbH" id="4F3SXIF4mJi" role="3cqZAp" />
            <node concept="3clFbF" id="1Ry9kf2vk7J" role="3cqZAp">
              <node concept="2YIFZM" id="2FXL1yZvCpO" role="3clFbG">
                <ref role="37wK5l" node="2tjs8VC1f3O" resolve="pop" />
                <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
              </node>
            </node>
            <node concept="3clFbF" id="1Ry9kf2vk7L" role="3cqZAp">
              <node concept="2YIFZM" id="2FXL1yZvCpK" role="3clFbG">
                <ref role="37wK5l" node="2k2r9bMbWB2" resolve="dispose" />
                <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Ry9kf2vk8j" role="3cqZAp" />
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
        <node concept="3clFbH" id="3F6vMxqrhDU" role="3cqZAp" />
        <node concept="3cpWs8" id="5jCHAT1QROE" role="3cqZAp">
          <node concept="3cpWsn" id="5jCHAT1QROF" role="3cpWs9">
            <property role="TrG5h" value="storeView" />
            <node concept="3uibUv" id="5jCHAT1QROC" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
            </node>
            <node concept="2OqwBi" id="5jCHAT1QROG" role="33vP2m">
              <node concept="37vLTw" id="5jCHAT1QROH" role="2Oq$k0">
                <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationSession" />
              </node>
              <node concept="liA8E" id="5jCHAT1QROI" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession.storeView():jetbrains.mps.logic.reactor.evaluation.StoreView" resolve="storeView" />
              </node>
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
                          <ref role="37wK5l" to="av0y:~Symbol.id():java.lang.String" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7nkyKX7haqm" role="3clFbx">
                    <node concept="3clFbF" id="7nkyKX7hb0G" role="3cqZAp">
                      <node concept="2OqwBi" id="7nkyKX7hb5A" role="3clFbG">
                        <node concept="37vLTw" id="7nkyKX7hb0F" role="2Oq$k0">
                          <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
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
                            <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
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
                  <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="2OqwBi" id="5mr7UHcctx2" role="1DdaDG">
                <node concept="37vLTw" id="5jCHAT1QT8_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jCHAT1QROF" resolve="storeView" />
                </node>
                <node concept="liA8E" id="5mr7UHcct$i" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~StoreView.occurrences(jetbrains.mps.logic.reactor.program.ConstraintSymbol):java.lang.Iterable" resolve="occurrences" />
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
              <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
            </node>
          </node>
          <node concept="2OqwBi" id="5mr7UHcc6Lo" role="1DdaDG">
            <node concept="37vLTw" id="5jCHAT1QROJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5jCHAT1QROF" resolve="storeView" />
            </node>
            <node concept="liA8E" id="5mr7UHcc6U$" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~StoreView.constraintSymbols():java.lang.Iterable" resolve="constraintSymbols" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YVpdheub_T" role="3cqZAp" />
        <node concept="3cpWs6" id="5YVpdheuiav" role="3cqZAp">
          <node concept="3K4zz7" id="5YVpdheuo0H" role="3cqZAk">
            <node concept="2YIFZM" id="5YVpdheurg2" role="3K4GZi">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSH6VB" resolve="FAIL" />
              <node concept="Xl_RD" id="5YVpdheuskO" role="37wK5m">
                <property role="Xl_RC" value="garbage constraints" />
              </node>
            </node>
            <node concept="37vLTw" id="5YVpdheumBB" role="3K4Cdx">
              <ref role="3cqZAo" node="7dgRGU4oLq3" resolve="remainingOk" />
            </node>
            <node concept="2YIFZM" id="5YVpdheup5A" role="3K4E3e">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3GlpCDSFjwR" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="41ox5VnkgxL" role="1B3o_S" />
      <node concept="P$JXv" id="3GlpCDSBF3O" role="lGtFl">
        <node concept="TZ5HA" id="3GlpCDSBF3P" role="TZ5H$">
          <node concept="1dT_AC" id="3GlpCDSBF3Q" role="1dT_Ay">
            <property role="1dT_AB" value="Must be called in a read action." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OUp3PsW2D7" role="jymVt" />
    <node concept="3clFb_" id="3GlpCDSEY0I" role="jymVt">
      <property role="TrG5h" value="occurrences" />
      <node concept="3uibUv" id="3GlpCDSEYQC" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="3GlpCDSEZ0k" role="11_B2D">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3GlpCDSEY0L" role="1B3o_S" />
      <node concept="3clFbS" id="3GlpCDSEY0M" role="3clF47">
        <node concept="3clFbF" id="5cnt3vh3sGU" role="3cqZAp">
          <node concept="3K4zz7" id="5cnt3vh3t15" role="3clFbG">
            <node concept="2OqwBi" id="5cnt3vh3tae" role="3K4E3e">
              <node concept="37vLTw" id="5cnt3vh3t3e" role="2Oq$k0">
                <ref role="3cqZAo" node="5cnt3vh3s4F" resolve="storeView" />
              </node>
              <node concept="liA8E" id="5cnt3vh3tTA" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~StoreView.allOccurrences():java.lang.Iterable" resolve="allOccurrences" />
              </node>
            </node>
            <node concept="2YIFZM" id="5cnt3vh3x4Q" role="3K4GZi">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
            <node concept="3y3z36" id="5cnt3vh3sVs" role="3K4Cdx">
              <node concept="10Nm6u" id="5cnt3vh3sW0" role="3uHU7w" />
              <node concept="37vLTw" id="5cnt3vh3sGT" role="3uHU7B">
                <ref role="3cqZAo" node="5cnt3vh3s4F" resolve="storeView" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5cnt3vh3xC0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="5cnt3vh3owl" role="jymVt" />
    <node concept="3clFb_" id="5cnt3vh3pb_" role="jymVt">
      <property role="TrG5h" value="storeView" />
      <node concept="3uibUv" id="5cnt3vh3pNW" role="3clF45">
        <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
      </node>
      <node concept="3Tm1VV" id="5cnt3vh3pbC" role="1B3o_S" />
      <node concept="3clFbS" id="5cnt3vh3pbD" role="3clF47">
        <node concept="3clFbF" id="5cnt3vh3u1v" role="3cqZAp">
          <node concept="37vLTw" id="5cnt3vh3u1u" role="3clFbG">
            <ref role="3cqZAo" node="5cnt3vh3s4F" resolve="storeView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSEXkp" role="jymVt" />
    <node concept="3Tm1VV" id="41ox5Vnk76b" role="1B3o_S" />
    <node concept="312cEg" id="2UGjFq4Lesf" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <node concept="3Tm6S6" id="2UGjFq4Lesg" role="1B3o_S" />
      <node concept="3uibUv" id="2UGjFq4Lesi" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
      </node>
    </node>
    <node concept="312cEg" id="4F3SXIF5XzK" role="jymVt">
      <property role="TrG5h" value="profiling" />
      <node concept="3Tm6S6" id="4F3SXIF5XzL" role="1B3o_S" />
      <node concept="10P_77" id="4F3SXIF5XzN" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5cnt3vh3s4F" role="jymVt">
      <property role="TrG5h" value="storeView" />
      <node concept="3Tm6S6" id="5cnt3vh3s4G" role="1B3o_S" />
      <node concept="3uibUv" id="5cnt3vh3sD3" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6HT7BWBSFOV">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="TypeCollector" />
    <node concept="2tJIrI" id="18cJbc1jtVE" role="jymVt" />
    <node concept="3clFbW" id="1CcQBrQmOiH" role="jymVt">
      <node concept="37vLTG" id="1CcQBrQmOle" role="3clF46">
        <property role="TrG5h" value="storeView" />
        <node concept="3uibUv" id="1CcQBrQmOl$" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
        </node>
      </node>
      <node concept="3cqZAl" id="1CcQBrQmOiJ" role="3clF45" />
      <node concept="3Tm1VV" id="1CcQBrQmOiK" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrQmOiL" role="3clF47">
        <node concept="3clFbF" id="1CcQBrQmOm9" role="3cqZAp">
          <node concept="37vLTI" id="1CcQBrQmOmb" role="3clFbG">
            <node concept="2OqwBi" id="1CcQBrQmOsI" role="37vLTJ">
              <node concept="Xjq3P" id="1CcQBrQmOto" role="2Oq$k0" />
              <node concept="2OwXpG" id="1CcQBrQmOsL" role="2OqNvi">
                <ref role="2Oxat5" node="1CcQBrQmOm5" resolve="storeView" />
              </node>
            </node>
            <node concept="37vLTw" id="1CcQBrQmOmf" role="37vLTx">
              <ref role="3cqZAo" node="1CcQBrQmOle" resolve="storeView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1CcQBrQn8Qy" role="3cqZAp">
          <node concept="1rXfSq" id="1CcQBrQn8Qw" role="3clFbG">
            <ref role="37wK5l" node="6HT7BWBSMTp" resolve="collectTypes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrQmOem" role="jymVt" />
    <node concept="3clFb_" id="1CcQBrQnllM" role="jymVt">
      <property role="TrG5h" value="typedNodeReferences" />
      <node concept="3vKaQO" id="1CcQBrQnl_6" role="3clF45">
        <node concept="3uibUv" id="1CcQBrQnlKs" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1CcQBrQnllP" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrQnllQ" role="3clF47">
        <node concept="3clFbF" id="1CcQBrQnnx4" role="3cqZAp">
          <node concept="2OqwBi" id="1CcQBrQnocP" role="3clFbG">
            <node concept="37vLTw" id="2tI9bOlg7mE" role="2Oq$k0">
              <ref role="3cqZAo" node="1CcQBrQmTN$" resolve="nodeRef2Node" />
            </node>
            <node concept="3lbrtF" id="1CcQBrQnoGi" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrQnkS3" role="jymVt" />
    <node concept="3clFb_" id="5tpkEj3JFVt" role="jymVt">
      <property role="TrG5h" value="errorNodeReferences" />
      <node concept="3vKaQO" id="5tpkEj3JFVu" role="3clF45">
        <node concept="3uibUv" id="5tpkEj3JFVv" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5tpkEj3JFVw" role="1B3o_S" />
      <node concept="3clFbS" id="5tpkEj3JFVx" role="3clF47">
        <node concept="3clFbF" id="5tpkEj3JFVy" role="3cqZAp">
          <node concept="2OqwBi" id="5tpkEj3JFVz" role="3clFbG">
            <node concept="37vLTw" id="5tpkEj3JH5N" role="2Oq$k0">
              <ref role="3cqZAo" node="5tpkEj3JCKD" resolve="nodeRef2Error" />
            </node>
            <node concept="3lbrtF" id="5tpkEj3JFV_" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5tpkEj3JFVs" role="jymVt" />
    <node concept="3clFb_" id="1CcQBrQmO_H" role="jymVt">
      <property role="TrG5h" value="typeNode" />
      <node concept="37vLTG" id="1CcQBrQmP5n" role="3clF46">
        <property role="TrG5h" value="nodeReference" />
        <node concept="3uibUv" id="1CcQBrQmP79" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tqbb2" id="1CcQBrQmP2f" role="3clF45" />
      <node concept="3Tm1VV" id="1CcQBrQmO_K" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrQmO_L" role="3clF47">
        <node concept="3clFbF" id="1CcQBrQn6By" role="3cqZAp">
          <node concept="3EllGN" id="1CcQBrQn71p" role="3clFbG">
            <node concept="37vLTw" id="1CcQBrQn75L" role="3ElVtu">
              <ref role="3cqZAo" node="1CcQBrQmP5n" resolve="nodeReference" />
            </node>
            <node concept="37vLTw" id="1CcQBrQn6Bx" role="3ElQJh">
              <ref role="3cqZAo" node="1CcQBrQmTN$" resolve="nodeRef2Node" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrQmOUM" role="jymVt" />
    <node concept="3clFb_" id="1CcQBrQmOQT" role="jymVt">
      <property role="TrG5h" value="typeTerm" />
      <node concept="37vLTG" id="1CcQBrQmPfS" role="3clF46">
        <property role="TrG5h" value="nodeReference" />
        <node concept="3uibUv" id="1CcQBrQmPhE" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1CcQBrQmOQW" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrQmOQX" role="3clF47">
        <node concept="3clFbF" id="1CcQBrQn796" role="3cqZAp">
          <node concept="3EllGN" id="1CcQBrQn797" role="3clFbG">
            <node concept="37vLTw" id="1CcQBrQn8hN" role="3ElVtu">
              <ref role="3cqZAo" node="1CcQBrQmPfS" resolve="nodeReference" />
            </node>
            <node concept="37vLTw" id="1CcQBrQn8bQ" role="3ElQJh">
              <ref role="3cqZAo" node="1CcQBrQn5Nm" resolve="nodeRef2Term" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1CcQBrQmPcH" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrQmOxY" role="jymVt" />
    <node concept="3clFb_" id="5tpkEj3JHbg" role="jymVt">
      <property role="TrG5h" value="error" />
      <node concept="37vLTG" id="5tpkEj3JHbh" role="3clF46">
        <property role="TrG5h" value="nodeReference" />
        <node concept="3uibUv" id="5tpkEj3JHbi" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5tpkEj3JHbj" role="1B3o_S" />
      <node concept="3clFbS" id="5tpkEj3JHbk" role="3clF47">
        <node concept="3clFbF" id="5tpkEj3JHbl" role="3cqZAp">
          <node concept="3EllGN" id="5tpkEj3JHbm" role="3clFbG">
            <node concept="37vLTw" id="5tpkEj3JHbn" role="3ElVtu">
              <ref role="3cqZAo" node="5tpkEj3JHbh" resolve="nodeReference" />
            </node>
            <node concept="37vLTw" id="5tpkEj3JIPo" role="3ElQJh">
              <ref role="3cqZAo" node="5tpkEj3JCKD" resolve="nodeRef2Error" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5tpkEj3JHB6" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5tpkEj3JHbf" role="jymVt" />
    <node concept="3clFb_" id="6HT7BWBSMTp" role="jymVt">
      <property role="TrG5h" value="collectTypes" />
      <node concept="3cqZAl" id="6HT7BWBSMTr" role="3clF45" />
      <node concept="3Tm6S6" id="1CcQBrQn8nf" role="1B3o_S" />
      <node concept="3clFbS" id="6HT7BWBSMTt" role="3clF47">
        <node concept="3clFbH" id="1CcQBrQmR0D" role="3cqZAp" />
        <node concept="1DcWWT" id="HV6urVCESK" role="3cqZAp">
          <node concept="3clFbS" id="HV6urVCESL" role="2LFqv$">
            <node concept="3cpWs8" id="HV6urVCESM" role="3cqZAp">
              <node concept="3cpWsn" id="HV6urVCESN" role="3cpWs9">
                <property role="TrG5h" value="arguments" />
                <node concept="3uibUv" id="HV6urVCESO" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="HV6urVCESP" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2ShNRf" id="HV6urVCESQ" role="33vP2m">
                  <node concept="1pGfFk" id="HV6urVCESR" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="10QFUN" id="HV6urVCESS" role="37wK5m">
                      <node concept="3uibUv" id="HV6urVCEST" role="10QFUM">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="HV6urVCESU" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="HV6urVCESV" role="10QFUP">
                        <node concept="37vLTw" id="HV6urVCESW" role="2Oq$k0">
                          <ref role="3cqZAo" node="HV6urVCEUi" resolve="occ" />
                        </node>
                        <node concept="liA8E" id="HV6urVCESX" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~ConstraintOccurrence.arguments():java.util.List" resolve="arguments" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="HV6urVCESY" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="HV6urVCET2" role="3cqZAp">
              <node concept="3cpWsn" id="HV6urVCET3" role="3cpWs9">
                <property role="TrG5h" value="typeNodeArg" />
                <node concept="3uibUv" id="HV6urVCET4" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                  <node concept="3Tqbb2" id="1CcQBrQgHje" role="11_B2D" />
                </node>
                <node concept="10QFUN" id="HV6urVCET6" role="33vP2m">
                  <node concept="3uibUv" id="HV6urVCET7" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                    <node concept="3Tqbb2" id="1CcQBrQgHrP" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="HV6urVCET9" role="10QFUP">
                    <node concept="37vLTw" id="HV6urVCETa" role="2Oq$k0">
                      <ref role="3cqZAo" node="HV6urVCESN" resolve="arguments" />
                    </node>
                    <node concept="liA8E" id="HV6urVCETb" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="HV6urVCETc" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7y50OW6WgYY" role="3cqZAp">
              <node concept="3cpWsn" id="7y50OW6WgYZ" role="3cpWs9">
                <property role="TrG5h" value="refArg" />
                <node concept="3uibUv" id="7y50OW6WgUT" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="1rXfSq" id="1CcQBrQmZQP" role="33vP2m">
                  <ref role="37wK5l" node="1CcQBrQmZQL" resolve="getNodeReference" />
                  <node concept="2OqwBi" id="1CcQBrQn2zK" role="37wK5m">
                    <node concept="37vLTw" id="1CcQBrQn2zL" role="2Oq$k0">
                      <ref role="3cqZAo" node="HV6urVCESN" resolve="arguments" />
                    </node>
                    <node concept="liA8E" id="1CcQBrQn2zM" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="1CcQBrQn2zN" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="52a_GfIGHpf" role="3cqZAp" />
            <node concept="3cpWs8" id="52a_GfIHcNW" role="3cqZAp">
              <node concept="3cpWsn" id="52a_GfIHcNX" role="3cpWs9">
                <property role="TrG5h" value="typeNode" />
                <node concept="3Tqbb2" id="1CcQBrQgHdy" role="1tU5fm" />
                <node concept="2OqwBi" id="52a_GfIHcNY" role="33vP2m">
                  <node concept="2OqwBi" id="52a_GfIHcNZ" role="2Oq$k0">
                    <node concept="37vLTw" id="52a_GfIHcO0" role="2Oq$k0">
                      <ref role="3cqZAo" node="HV6urVCET3" resolve="typeNodeArg" />
                    </node>
                    <node concept="liA8E" id="52a_GfIHcO1" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                    </node>
                  </node>
                  <node concept="liA8E" id="52a_GfIHcO2" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YVpdhet4wU" role="3cqZAp">
              <node concept="3clFbS" id="5YVpdhet4wW" role="3clFbx">
                <node concept="3clFbF" id="52a_GfIIRh4" role="3cqZAp">
                  <node concept="37vLTI" id="1CcQBrQmX7w" role="3clFbG">
                    <node concept="37vLTw" id="1CcQBrQmX9P" role="37vLTx">
                      <ref role="3cqZAo" node="52a_GfIHcNX" resolve="typeNode" />
                    </node>
                    <node concept="3EllGN" id="1CcQBrQmWwm" role="37vLTJ">
                      <node concept="37vLTw" id="1CcQBrQmWwT" role="3ElVtu">
                        <ref role="3cqZAo" node="7y50OW6WgYZ" resolve="refArg" />
                      </node>
                      <node concept="37vLTw" id="1CcQBrQmW8W" role="3ElQJh">
                        <ref role="3cqZAo" node="1CcQBrQmTN$" resolve="nodeRef2Node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5YVpdhet5cF" role="3clFbw">
                <node concept="10Nm6u" id="5YVpdhet5ds" role="3uHU7w" />
                <node concept="37vLTw" id="5YVpdhet4zd" role="3uHU7B">
                  <ref role="3cqZAo" node="52a_GfIHcNX" resolve="typeNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="HV6urVCEUi" role="1Duv9x">
            <property role="TrG5h" value="occ" />
            <node concept="3uibUv" id="HV6urVCEUj" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
            </node>
          </node>
          <node concept="2OqwBi" id="1CcQBrQgDIi" role="1DdaDG">
            <node concept="37vLTw" id="HV6urVCEUk" role="2Oq$k0">
              <ref role="3cqZAo" node="1CcQBrQmOm5" resolve="storeView" />
            </node>
            <node concept="liA8E" id="1CcQBrQgEm0" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~StoreView.occurrences(jetbrains.mps.logic.reactor.program.ConstraintSymbol):java.lang.Iterable" resolve="occurrences" />
              <node concept="10M0yZ" id="1CcQBrQgErI" role="37wK5m">
                <ref role="3cqZAo" to="i348:1CcQBrQgCB2" resolve="TYPENODE_SYM" />
                <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1CcQBrQn4oQ" role="3cqZAp" />
        <node concept="1DcWWT" id="1CcQBrQn33x" role="3cqZAp">
          <node concept="3clFbS" id="1CcQBrQn33y" role="2LFqv$">
            <node concept="3cpWs8" id="1CcQBrQn33z" role="3cqZAp">
              <node concept="3cpWsn" id="1CcQBrQn33$" role="3cpWs9">
                <property role="TrG5h" value="arguments" />
                <node concept="3uibUv" id="1CcQBrQn33_" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="1CcQBrQn33A" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1CcQBrQn33B" role="33vP2m">
                  <node concept="1pGfFk" id="1CcQBrQn33C" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="10QFUN" id="1CcQBrQn33D" role="37wK5m">
                      <node concept="3uibUv" id="1CcQBrQn33E" role="10QFUM">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="1CcQBrQn33F" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1CcQBrQn33G" role="10QFUP">
                        <node concept="37vLTw" id="1CcQBrQn33H" role="2Oq$k0">
                          <ref role="3cqZAo" node="1CcQBrQn34p" resolve="occ" />
                        </node>
                        <node concept="liA8E" id="1CcQBrQn33I" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~ConstraintOccurrence.arguments():java.util.List" resolve="arguments" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1CcQBrQn33J" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1CcQBrQn33L" role="3cqZAp">
              <node concept="3cpWsn" id="1CcQBrQn33M" role="3cpWs9">
                <property role="TrG5h" value="typeTermArg" />
                <node concept="3uibUv" id="1CcQBrQn33N" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                  <node concept="3uibUv" id="1CcQBrQn5ma" role="11_B2D">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                  </node>
                </node>
                <node concept="10QFUN" id="1CcQBrQn33P" role="33vP2m">
                  <node concept="3uibUv" id="1CcQBrQn33Q" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                    <node concept="3uibUv" id="1CcQBrQn54E" role="11_B2D">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1CcQBrQn33S" role="10QFUP">
                    <node concept="37vLTw" id="1CcQBrQn33T" role="2Oq$k0">
                      <ref role="3cqZAo" node="1CcQBrQn33$" resolve="arguments" />
                    </node>
                    <node concept="liA8E" id="1CcQBrQn33U" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="1CcQBrQn33V" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1CcQBrQn33X" role="3cqZAp">
              <node concept="3cpWsn" id="1CcQBrQn33Y" role="3cpWs9">
                <property role="TrG5h" value="refArg" />
                <node concept="3uibUv" id="1CcQBrQn33Z" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="1rXfSq" id="1CcQBrQn340" role="33vP2m">
                  <ref role="37wK5l" node="1CcQBrQmZQL" resolve="getNodeReference" />
                  <node concept="2OqwBi" id="1CcQBrQn341" role="37wK5m">
                    <node concept="37vLTw" id="1CcQBrQn342" role="2Oq$k0">
                      <ref role="3cqZAo" node="1CcQBrQn33$" resolve="arguments" />
                    </node>
                    <node concept="liA8E" id="1CcQBrQn343" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="1CcQBrQn344" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1CcQBrQn345" role="3cqZAp" />
            <node concept="3cpWs8" id="1CcQBrQn346" role="3cqZAp">
              <node concept="3cpWsn" id="1CcQBrQn347" role="3cpWs9">
                <property role="TrG5h" value="typeTerm" />
                <node concept="3uibUv" id="1CcQBrQn5$N" role="1tU5fm">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                </node>
                <node concept="2OqwBi" id="1CcQBrQn349" role="33vP2m">
                  <node concept="2OqwBi" id="1CcQBrQn34a" role="2Oq$k0">
                    <node concept="37vLTw" id="1CcQBrQn34b" role="2Oq$k0">
                      <ref role="3cqZAo" node="1CcQBrQn33M" resolve="typeTermArg" />
                    </node>
                    <node concept="liA8E" id="1CcQBrQn34c" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1CcQBrQn34d" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1CcQBrQn34e" role="3cqZAp">
              <node concept="3clFbS" id="1CcQBrQn34f" role="3clFbx">
                <node concept="3clFbF" id="1CcQBrQn34g" role="3cqZAp">
                  <node concept="37vLTI" id="1CcQBrQn34h" role="3clFbG">
                    <node concept="37vLTw" id="1CcQBrQn34i" role="37vLTx">
                      <ref role="3cqZAo" node="1CcQBrQn347" resolve="typeTerm" />
                    </node>
                    <node concept="3EllGN" id="1CcQBrQn34j" role="37vLTJ">
                      <node concept="37vLTw" id="1CcQBrQn34k" role="3ElVtu">
                        <ref role="3cqZAo" node="1CcQBrQn33Y" resolve="refArg" />
                      </node>
                      <node concept="37vLTw" id="1CcQBrQn66g" role="3ElQJh">
                        <ref role="3cqZAo" node="1CcQBrQn5Nm" resolve="nodeRef2Term" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1CcQBrQn34m" role="3clFbw">
                <node concept="10Nm6u" id="1CcQBrQn34n" role="3uHU7w" />
                <node concept="37vLTw" id="1CcQBrQn34o" role="3uHU7B">
                  <ref role="3cqZAo" node="1CcQBrQn347" resolve="typeTerm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1CcQBrQn34p" role="1Duv9x">
            <property role="TrG5h" value="occ" />
            <node concept="3uibUv" id="1CcQBrQn34q" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
            </node>
          </node>
          <node concept="2OqwBi" id="1CcQBrQn34r" role="1DdaDG">
            <node concept="37vLTw" id="1CcQBrQn34s" role="2Oq$k0">
              <ref role="3cqZAo" node="1CcQBrQmOm5" resolve="storeView" />
            </node>
            <node concept="liA8E" id="1CcQBrQn34t" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~StoreView.occurrences(jetbrains.mps.logic.reactor.program.ConstraintSymbol):java.lang.Iterable" resolve="occurrences" />
              <node concept="10M0yZ" id="1CcQBrQn4OK" role="37wK5m">
                <ref role="3cqZAo" to="i348:5uFPQ7CgjLS" resolve="TYPEOF_SYM" />
                <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5tpkEj3JDcs" role="3cqZAp" />
        <node concept="1DcWWT" id="5tpkEj3JDbw" role="3cqZAp">
          <node concept="3clFbS" id="5tpkEj3JDbx" role="2LFqv$">
            <node concept="3cpWs8" id="5tpkEj3JDby" role="3cqZAp">
              <node concept="3cpWsn" id="5tpkEj3JDbz" role="3cpWs9">
                <property role="TrG5h" value="arguments" />
                <node concept="3uibUv" id="5tpkEj3JDb$" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="5tpkEj3JDb_" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5tpkEj3JDbA" role="33vP2m">
                  <node concept="1pGfFk" id="5tpkEj3JDbB" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="10QFUN" id="5tpkEj3JDbC" role="37wK5m">
                      <node concept="3uibUv" id="5tpkEj3JDbD" role="10QFUM">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="5tpkEj3JDbE" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5tpkEj3JDbF" role="10QFUP">
                        <node concept="37vLTw" id="5tpkEj3JDbG" role="2Oq$k0">
                          <ref role="3cqZAo" node="5tpkEj3JDcm" resolve="occ" />
                        </node>
                        <node concept="liA8E" id="5tpkEj3JDbH" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~ConstraintOccurrence.arguments():java.util.List" resolve="arguments" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="5tpkEj3JDbI" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5tpkEj3JDbJ" role="3cqZAp">
              <node concept="3cpWsn" id="5tpkEj3JDbK" role="3cpWs9">
                <property role="TrG5h" value="errorArg" />
                <node concept="3uibUv" id="5tpkEj3JDbL" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                  <node concept="17QB3L" id="5tpkEj3JEN_" role="11_B2D" />
                </node>
                <node concept="10QFUN" id="5tpkEj3JDbN" role="33vP2m">
                  <node concept="3uibUv" id="5tpkEj3JDbO" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                    <node concept="17QB3L" id="5tpkEj3JFqc" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="5tpkEj3JDbQ" role="10QFUP">
                    <node concept="37vLTw" id="5tpkEj3JDbR" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tpkEj3JDbz" resolve="arguments" />
                    </node>
                    <node concept="liA8E" id="5tpkEj3JDbS" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="5tpkEj3JDbT" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5tpkEj3JDbU" role="3cqZAp">
              <node concept="3cpWsn" id="5tpkEj3JDbV" role="3cpWs9">
                <property role="TrG5h" value="refArg" />
                <node concept="3uibUv" id="5tpkEj3JDbW" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="1rXfSq" id="5tpkEj3JDbX" role="33vP2m">
                  <ref role="37wK5l" node="1CcQBrQmZQL" resolve="getNodeReference" />
                  <node concept="2OqwBi" id="5tpkEj3JDbY" role="37wK5m">
                    <node concept="37vLTw" id="5tpkEj3JDbZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tpkEj3JDbz" resolve="arguments" />
                    </node>
                    <node concept="liA8E" id="5tpkEj3JDc0" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="5tpkEj3JDc1" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5tpkEj3JDc2" role="3cqZAp" />
            <node concept="3cpWs8" id="5tpkEj3JDc3" role="3cqZAp">
              <node concept="3cpWsn" id="5tpkEj3JDc4" role="3cpWs9">
                <property role="TrG5h" value="error" />
                <node concept="17QB3L" id="5tpkEj3JF$f" role="1tU5fm" />
                <node concept="2OqwBi" id="5tpkEj3JDc6" role="33vP2m">
                  <node concept="2OqwBi" id="5tpkEj3JDc7" role="2Oq$k0">
                    <node concept="37vLTw" id="5tpkEj3JDc8" role="2Oq$k0">
                      <ref role="3cqZAo" node="5tpkEj3JDbK" resolve="errorArg" />
                    </node>
                    <node concept="liA8E" id="5tpkEj3JDc9" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5tpkEj3JDca" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5tpkEj3JDcb" role="3cqZAp">
              <node concept="3clFbS" id="5tpkEj3JDcc" role="3clFbx">
                <node concept="3clFbF" id="5tpkEj3JDcd" role="3cqZAp">
                  <node concept="37vLTI" id="5tpkEj3JDce" role="3clFbG">
                    <node concept="37vLTw" id="5tpkEj3JDcf" role="37vLTx">
                      <ref role="3cqZAo" node="5tpkEj3JDc4" resolve="error" />
                    </node>
                    <node concept="3EllGN" id="5tpkEj3JDcg" role="37vLTJ">
                      <node concept="37vLTw" id="5tpkEj3JDch" role="3ElVtu">
                        <ref role="3cqZAo" node="5tpkEj3JDbV" resolve="refArg" />
                      </node>
                      <node concept="37vLTw" id="5tpkEj3JFSm" role="3ElQJh">
                        <ref role="3cqZAo" node="5tpkEj3JCKD" resolve="nodeRef2Error" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5tpkEj3JDcj" role="3clFbw">
                <node concept="10Nm6u" id="5tpkEj3JDck" role="3uHU7w" />
                <node concept="37vLTw" id="5tpkEj3JDcl" role="3uHU7B">
                  <ref role="3cqZAo" node="5tpkEj3JDc4" resolve="error" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5tpkEj3JDcm" role="1Duv9x">
            <property role="TrG5h" value="occ" />
            <node concept="3uibUv" id="5tpkEj3JDcn" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
            </node>
          </node>
          <node concept="2OqwBi" id="5tpkEj3JDco" role="1DdaDG">
            <node concept="37vLTw" id="5tpkEj3JDcp" role="2Oq$k0">
              <ref role="3cqZAo" node="1CcQBrQmOm5" resolve="storeView" />
            </node>
            <node concept="liA8E" id="5tpkEj3JDcq" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~StoreView.occurrences(jetbrains.mps.logic.reactor.program.ConstraintSymbol):java.lang.Iterable" resolve="occurrences" />
              <node concept="10M0yZ" id="5tpkEj3JEI5" role="37wK5m">
                <ref role="3cqZAo" to="i348:5tpkEj3JBli" resolve="ERROR_SYM" />
                <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrQn126" role="jymVt" />
    <node concept="3clFb_" id="1CcQBrQmZQL" role="jymVt">
      <property role="TrG5h" value="getNodeReference" />
      <node concept="3Tm6S6" id="1CcQBrQmZQM" role="1B3o_S" />
      <node concept="3uibUv" id="1CcQBrQmZQN" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="37vLTG" id="1CcQBrQmZQC" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="3uibUv" id="1CcQBrQmZQD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1CcQBrQmZPP" role="3clF47">
        <node concept="3cpWs8" id="1CcQBrQmZPS" role="3cqZAp">
          <node concept="3cpWsn" id="1CcQBrQmZPT" role="3cpWs9">
            <property role="TrG5h" value="anchor" />
            <node concept="3uibUv" id="1CcQBrQmZPU" role="1tU5fm">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1CcQBrQmZPV" role="3cqZAp">
          <node concept="3clFbS" id="1CcQBrQmZPW" role="3clFbx">
            <node concept="3clFbF" id="1CcQBrQmZPX" role="3cqZAp">
              <node concept="37vLTI" id="1CcQBrQmZPY" role="3clFbG">
                <node concept="10QFUN" id="1CcQBrQmZPZ" role="37vLTx">
                  <node concept="3uibUv" id="1CcQBrQmZQ0" role="10QFUM">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                  </node>
                  <node concept="37vLTw" id="1CcQBrQmZQG" role="10QFUP">
                    <ref role="3cqZAo" node="1CcQBrQmZQC" resolve="arg" />
                  </node>
                </node>
                <node concept="37vLTw" id="1CcQBrQmZQ2" role="37vLTJ">
                  <ref role="3cqZAo" node="1CcQBrQmZPT" resolve="anchor" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1CcQBrQmZQ3" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="1CcQBrQmZQ4" role="3clFbw">
            <node concept="3uibUv" id="1CcQBrQmZQ5" role="2ZW6by">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="37vLTw" id="1CcQBrQmZQH" role="2ZW6bz">
              <ref role="3cqZAo" node="1CcQBrQmZQC" resolve="arg" />
            </node>
          </node>
          <node concept="3eNFk2" id="1CcQBrQmZQ7" role="3eNLev">
            <node concept="2ZW3vV" id="1CcQBrQmZQ8" role="3eO9$A">
              <node concept="3uibUv" id="1CcQBrQmZQ9" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              </node>
              <node concept="37vLTw" id="1CcQBrQmZQF" role="2ZW6bz">
                <ref role="3cqZAo" node="1CcQBrQmZQC" resolve="arg" />
              </node>
            </node>
            <node concept="3clFbS" id="1CcQBrQmZQb" role="3eOfB_">
              <node concept="3clFbF" id="1CcQBrQmZQc" role="3cqZAp">
                <node concept="37vLTI" id="1CcQBrQmZQd" role="3clFbG">
                  <node concept="2OqwBi" id="1CcQBrQmZQe" role="37vLTx">
                    <node concept="2OqwBi" id="1CcQBrQmZQf" role="2Oq$k0">
                      <node concept="1eOMI4" id="1CcQBrQmZQg" role="2Oq$k0">
                        <node concept="10QFUN" id="1CcQBrQmZQh" role="1eOMHV">
                          <node concept="3uibUv" id="1CcQBrQmZQi" role="10QFUM">
                            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                            <node concept="3uibUv" id="1CcQBrQmZQj" role="11_B2D">
                              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1CcQBrQmZQI" role="10QFUP">
                            <ref role="3cqZAo" node="1CcQBrQmZQC" resolve="arg" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1CcQBrQmZQl" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1CcQBrQmZQm" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1CcQBrQmZQn" role="37vLTJ">
                    <ref role="3cqZAo" node="1CcQBrQmZPT" resolve="anchor" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1CcQBrQmZQo" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="1CcQBrQmZQp" role="9aQIa">
            <node concept="3clFbS" id="1CcQBrQmZQq" role="9aQI4">
              <node concept="YS8fn" id="1CcQBrQmZQr" role="3cqZAp">
                <node concept="2ShNRf" id="1CcQBrQmZQs" role="YScLw">
                  <node concept="1pGfFk" id="1CcQBrQmZQt" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="3cpWs3" id="1CcQBrQmZQu" role="37wK5m">
                      <node concept="37vLTw" id="1CcQBrQmZQE" role="3uHU7w">
                        <ref role="3cqZAo" node="1CcQBrQmZQC" resolve="arg" />
                      </node>
                      <node concept="Xl_RD" id="1CcQBrQmZQw" role="3uHU7B">
                        <property role="Xl_RC" value="unsupported argument: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1CcQBrQmZQA" role="3cqZAp">
          <node concept="2YIFZM" id="1CcQBrQmZQ$" role="3cqZAk">
            <ref role="37wK5l" to="4r4j:_04VjSrAA8" resolve="extractReference" />
            <ref role="1Pybhc" to="4r4j:4OKkcnfu_xo" resolve="AnchorUtil" />
            <node concept="37vLTw" id="1CcQBrQmZQ_" role="37wK5m">
              <ref role="3cqZAo" node="1CcQBrQmZPT" resolve="anchor" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18cJbc1jwop" role="jymVt" />
    <node concept="3Tm1VV" id="2FXL1yZmwzw" role="1B3o_S" />
    <node concept="312cEg" id="1CcQBrQmOm5" role="jymVt">
      <property role="TrG5h" value="storeView" />
      <node concept="3Tm6S6" id="1CcQBrQmOm6" role="1B3o_S" />
      <node concept="3uibUv" id="1CcQBrQmOm8" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
      </node>
    </node>
    <node concept="312cEg" id="1CcQBrQmTN$" role="jymVt">
      <property role="TrG5h" value="nodeRef2Node" />
      <node concept="3Tm6S6" id="1CcQBrQmTNw" role="1B3o_S" />
      <node concept="3rvAFt" id="1CcQBrQmTNx" role="1tU5fm">
        <node concept="3uibUv" id="1CcQBrQmTNy" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3Tqbb2" id="1CcQBrQmTNz" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="1CcQBrQmV5a" role="33vP2m">
        <node concept="3rGOSV" id="1CcQBrQmV5b" role="2ShVmc">
          <node concept="3uibUv" id="1CcQBrQmV5c" role="3rHrn6">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3Tqbb2" id="1CcQBrQmV5d" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1CcQBrQn5Nm" role="jymVt">
      <property role="TrG5h" value="nodeRef2Term" />
      <node concept="3Tm6S6" id="1CcQBrQn5Nn" role="1B3o_S" />
      <node concept="3rvAFt" id="1CcQBrQn5No" role="1tU5fm">
        <node concept="3uibUv" id="1CcQBrQn5Np" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3uibUv" id="1CcQBrQn6mV" role="3rvSg0">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="2ShNRf" id="1CcQBrQn5Nr" role="33vP2m">
        <node concept="3rGOSV" id="1CcQBrQn5Ns" role="2ShVmc">
          <node concept="3uibUv" id="1CcQBrQn5Nt" role="3rHrn6">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3uibUv" id="1CcQBrQn6zO" role="3rHtpV">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5tpkEj3JCKD" role="jymVt">
      <property role="TrG5h" value="nodeRef2Error" />
      <node concept="3Tm6S6" id="5tpkEj3JCKE" role="1B3o_S" />
      <node concept="3rvAFt" id="5tpkEj3JCKF" role="1tU5fm">
        <node concept="3uibUv" id="5tpkEj3JCKG" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="17QB3L" id="5tpkEj3JDau" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="5tpkEj3JCKI" role="33vP2m">
        <node concept="3rGOSV" id="5tpkEj3JCKJ" role="2ShVmc">
          <node concept="3uibUv" id="5tpkEj3JCKK" role="3rHrn6">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="17QB3L" id="5tpkEj3JD5B" role="3rHtpV" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2tjs8VC0K0m">
    <property role="TrG5h" value="Memoizer" />
    <node concept="2tJIrI" id="2tjs8VC0K2N" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC0VB5" role="jymVt">
      <property role="TrG5h" value="fromContext" />
      <node concept="3uibUv" id="2tjs8VC12Co" role="3clF45">
        <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC0VB8" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC0VB9" role="3clF47">
        <node concept="3clFbJ" id="2k2r9bMc1fJ" role="3cqZAp">
          <node concept="3clFbS" id="2k2r9bMc1fL" role="3clFbx">
            <node concept="YS8fn" id="2k2r9bMc2qm" role="3cqZAp">
              <node concept="2ShNRf" id="2k2r9bMc2Gn" role="YScLw">
                <node concept="1pGfFk" id="2k2r9bMc8hl" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="2k2r9bMc8Pw" role="37wK5m">
                    <property role="Xl_RC" value="not initialized" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2k2r9bMc1P1" role="3clFbw">
            <node concept="10Nm6u" id="2k2r9bMc26V" role="3uHU7w" />
            <node concept="37vLTw" id="2k2r9bMc1yi" role="3uHU7B">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1aA_" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1aJQ" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1aA$" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="liA8E" id="2tjs8VC1bcJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1ar1" role="jymVt" />
    <node concept="2YIFZL" id="2k2r9bMbV$8" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="2k2r9bMbV$a" role="3clF45" />
      <node concept="3Tm1VV" id="2k2r9bMbV$b" role="1B3o_S" />
      <node concept="3clFbS" id="2k2r9bMbV$c" role="3clF47">
        <node concept="3clFbF" id="2k2r9bMbZee" role="3cqZAp">
          <node concept="37vLTI" id="2k2r9bMbZwp" role="3clFbG">
            <node concept="37vLTw" id="2k2r9bMbZed" role="37vLTJ">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="2ShNRf" id="2k2r9bMbZMc" role="37vLTx">
              <node concept="YeOm9" id="2k2r9bMbZMd" role="2ShVmc">
                <node concept="1Y3b0j" id="2k2r9bMbZMe" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
                  <node concept="3Tm1VV" id="2k2r9bMbZMf" role="1B3o_S" />
                  <node concept="3uibUv" id="2k2r9bMbZMg" role="2Ghqu4">
                    <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
                  </node>
                  <node concept="3clFb_" id="2k2r9bMbZMh" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="initialValue" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tmbuc" id="2k2r9bMbZMi" role="1B3o_S" />
                    <node concept="3uibUv" id="2k2r9bMbZMj" role="3clF45">
                      <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
                    </node>
                    <node concept="3clFbS" id="2k2r9bMbZMk" role="3clF47">
                      <node concept="3clFbF" id="2k2r9bMbZMl" role="3cqZAp">
                        <node concept="10Nm6u" id="2k2r9bMbZMm" role="3clFbG" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2k2r9bMbZMn" role="2AJF6D">
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
    <node concept="2tJIrI" id="2k2r9bMbJxK" role="jymVt" />
    <node concept="2YIFZL" id="2k2r9bMbWB2" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2k2r9bMbWB4" role="3clF45" />
      <node concept="3Tm1VV" id="2k2r9bMbWB5" role="1B3o_S" />
      <node concept="3clFbS" id="2k2r9bMbWB6" role="3clF47">
        <node concept="3clFbF" id="2k2r9bMbXHl" role="3cqZAp">
          <node concept="37vLTI" id="2k2r9bMbXYY" role="3clFbG">
            <node concept="10Nm6u" id="2k2r9bMbYgf" role="37vLTx" />
            <node concept="37vLTw" id="2k2r9bMbXHk" role="37vLTJ">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2k2r9bMbJEn" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC1byF" role="jymVt">
      <property role="TrG5h" value="push" />
      <node concept="3cqZAl" id="2tjs8VC1byH" role="3clF45" />
      <node concept="3Tm1VV" id="2tjs8VC1byI" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1byJ" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC1cVW" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC1cVX" role="3cpWs9">
            <property role="TrG5h" value="curr" />
            <node concept="3uibUv" id="2tjs8VC1cVN" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC1cVY" role="33vP2m">
              <node concept="37vLTw" id="2tjs8VC1cVZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
              </node>
              <node concept="liA8E" id="2tjs8VC1cW0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1dCc" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1dMh" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1dCa" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="liA8E" id="2tjs8VC1dWX" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object):void" resolve="set" />
              <node concept="2ShNRf" id="2tjs8VC1e6B" role="37wK5m">
                <node concept="1pGfFk" id="2tjs8VC1exZ" role="2ShVmc">
                  <ref role="37wK5l" node="2tjs8VC15lz" resolve="Memoizer" />
                  <node concept="37vLTw" id="2tjs8VC1eFO" role="37wK5m">
                    <ref role="3cqZAo" node="2tjs8VC1cVX" resolve="curr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1eP8" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC1f3O" role="jymVt">
      <property role="TrG5h" value="pop" />
      <node concept="3cqZAl" id="2tjs8VC1f3Q" role="3clF45" />
      <node concept="3Tm1VV" id="2tjs8VC1f3R" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1f3S" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC1g0D" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC1g0E" role="3cpWs9">
            <property role="TrG5h" value="curr" />
            <node concept="3uibUv" id="2tjs8VC1g0h" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC1g0F" role="33vP2m">
              <node concept="37vLTw" id="2tjs8VC1g0G" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
              </node>
              <node concept="liA8E" id="2tjs8VC1g0H" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2tjs8VC1gvV" role="3cqZAp">
          <node concept="3clFbS" id="2tjs8VC1gvX" role="3clFbx">
            <node concept="YS8fn" id="2tjs8VC1hvu" role="3cqZAp">
              <node concept="2ShNRf" id="2tjs8VC1hZa" role="YScLw">
                <node concept="1pGfFk" id="2tjs8VC1iqO" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2tjs8VC1h9e" role="3clFbw">
            <node concept="10Nm6u" id="2tjs8VC1hjF" role="3uHU7w" />
            <node concept="37vLTw" id="2tjs8VC1gEu" role="3uHU7B">
              <ref role="3cqZAo" node="2tjs8VC1g0E" resolve="curr" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1jBY" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1jNz" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1jBW" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="liA8E" id="2tjs8VC1jZK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object):void" resolve="set" />
              <node concept="2OqwBi" id="2tjs8VC1km2" role="37wK5m">
                <node concept="37vLTw" id="2tjs8VC1kbj" role="2Oq$k0">
                  <ref role="3cqZAo" node="2tjs8VC1g0E" resolve="curr" />
                </node>
                <node concept="2OwXpG" id="2tjs8VC1kxK" role="2OqNvi">
                  <ref role="2Oxat5" node="2tjs8VC13tT" resolve="prev" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1mO1" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1mZE" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1mNZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC1g0E" resolve="curr" />
            </node>
            <node concept="liA8E" id="2tjs8VC1ncA" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC1kVc" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1bne" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC2_Fr" role="jymVt">
      <property role="TrG5h" value="set" />
      <node concept="37vLTG" id="2tjs8VC2De3" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC2DuA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC2EaW" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="2tjs8VC2Esr" role="1tU5fm">
          <ref role="16sUi3" node="2tjs8VC2AEZ" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="2tjs8VC2CJE" role="3clF45" />
      <node concept="3Tm1VV" id="2tjs8VC2_Fu" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC2_Fv" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC2FaW" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2FpB" role="3clFbG">
            <node concept="1rXfSq" id="2tjs8VC2FaV" role="2Oq$k0">
              <ref role="37wK5l" node="2tjs8VC0VB5" resolve="fromContext" />
            </node>
            <node concept="liA8E" id="2tjs8VC2FEp" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC0VJ9" resolve="setValue" />
              <node concept="37vLTw" id="2tjs8VC2FT$" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2De3" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC2Gnp" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2EaW" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC2AEZ" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC2Csg" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC2Csb" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="16syzq" id="2tjs8VC2Csc" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC2Csf" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC2Csd" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC2Cse" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC2GC4" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2GRi" role="3clFbG">
            <node concept="1rXfSq" id="2tjs8VC2GC3" role="2Oq$k0">
              <ref role="37wK5l" node="2tjs8VC0VB5" resolve="fromContext" />
            </node>
            <node concept="liA8E" id="2tjs8VC2H8_" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC1Yjc" resolve="getValue" />
              <node concept="37vLTw" id="2tjs8VC2ImB" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2HnC" resolve="token" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC2Csf" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="2tjs8VC2HnC" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC2HnB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC2BCo" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC2Blb" role="jymVt">
      <property role="TrG5h" value="getOrPut" />
      <node concept="16syzq" id="2tjs8VC2Blc" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC2Blf" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC2Bld" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC2Ble" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC2Lat" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2Lq8" role="3clFbG">
            <node concept="1rXfSq" id="2tjs8VC2Las" role="2Oq$k0">
              <ref role="37wK5l" node="2tjs8VC0VB5" resolve="fromContext" />
            </node>
            <node concept="liA8E" id="2tjs8VC2LFO" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC1NkJ" resolve="getOrSetValue" />
              <node concept="37vLTw" id="2tjs8VC2LVT" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2I_G" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC2Msa" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2J5M" resolve="defaultValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC2Blf" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="2tjs8VC2I_G" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC2I_F" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC2J5M" role="3clF46">
        <property role="TrG5h" value="defaultValue" />
        <node concept="3uibUv" id="2tjs8VC2Jol" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
          <node concept="16syzq" id="2tjs8VC2JVe" role="11_B2D">
            <ref role="16sUi3" node="2tjs8VC2Blf" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC2$R3" role="jymVt" />
    <node concept="3clFbW" id="2tjs8VC15lz" role="jymVt">
      <node concept="37vLTG" id="2tjs8VC15tB" role="3clF46">
        <property role="TrG5h" value="prev" />
        <node concept="3uibUv" id="2tjs8VC15AC" role="1tU5fm">
          <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
        </node>
      </node>
      <node concept="3cqZAl" id="2tjs8VC15l_" role="3clF45" />
      <node concept="3Tm6S6" id="2tjs8VC2_a2" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC15lB" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC163F" role="3cqZAp">
          <node concept="37vLTI" id="2tjs8VC16qj" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC16xR" role="37vLTx">
              <ref role="3cqZAo" node="2tjs8VC15tB" resolve="prev" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC16au" role="37vLTJ">
              <node concept="Xjq3P" id="2tjs8VC163E" role="2Oq$k0" />
              <node concept="2OwXpG" id="2tjs8VC16if" role="2OqNvi">
                <ref role="2Oxat5" node="2tjs8VC13tT" resolve="prev" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC15dh" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC0VJ9" role="jymVt">
      <property role="TrG5h" value="setValue" />
      <node concept="3Tm6S6" id="1Ry9kf2s1zO" role="1B3o_S" />
      <node concept="37vLTG" id="2tjs8VC0VXg" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC0W1X" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC0W8R" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="2tjs8VC0We0" role="1tU5fm">
          <ref role="16sUi3" node="2tjs8VC0WdA" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="2tjs8VC0VJb" role="3clF45" />
      <node concept="3clFbS" id="2tjs8VC0VJd" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC0Y5E" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC0YbR" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC0Y5D" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
            </node>
            <node concept="liA8E" id="2tjs8VC0Ymq" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2tjs8VC0Yrk" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC0VXg" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC0Y$c" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC0W8R" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC0WdA" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC0K2S" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC1Yjc" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3Tm6S6" id="1Ry9kf2s1SP" role="1B3o_S" />
      <node concept="37vLTG" id="2tjs8VC1Yjd" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC1Yje" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="16syzq" id="2tjs8VC1Yjf" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC1YjL" resolve="T" />
      </node>
      <node concept="3clFbS" id="2tjs8VC1Yjh" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC26Cx" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC26Cy" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="2tjs8VC26Cu" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="1rXfSq" id="2tjs8VC26Cz" role="33vP2m">
              <ref role="37wK5l" node="2tjs8VC22Ho" resolve="lookupOwner" />
              <node concept="37vLTw" id="2tjs8VC26C$" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC1Yjd" resolve="token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC26bV" role="3cqZAp">
          <node concept="3K4zz7" id="2tjs8VC27HS" role="3clFbG">
            <node concept="10QFUN" id="2tjs8VC29LP" role="3K4E3e">
              <node concept="2OqwBi" id="2tjs8VC29LJ" role="10QFUP">
                <node concept="2OqwBi" id="2tjs8VC29LK" role="2Oq$k0">
                  <node concept="37vLTw" id="2tjs8VC29LL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2tjs8VC26Cy" resolve="owner" />
                  </node>
                  <node concept="2OwXpG" id="2tjs8VC29LM" role="2OqNvi">
                    <ref role="2Oxat5" node="2tjs8VC0WHe" resolve="token2value" />
                  </node>
                </node>
                <node concept="liA8E" id="2tjs8VC29LN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="2tjs8VC29LO" role="37wK5m">
                    <ref role="3cqZAo" node="2tjs8VC1Yjd" resolve="token" />
                  </node>
                </node>
              </node>
              <node concept="16syzq" id="2tjs8VC2a1r" role="10QFUM">
                <ref role="16sUi3" node="2tjs8VC1YjL" resolve="T" />
              </node>
            </node>
            <node concept="10Nm6u" id="2tjs8VC29yP" role="3K4GZi" />
            <node concept="3y3z36" id="2tjs8VC27ik" role="3K4Cdx">
              <node concept="10Nm6u" id="2tjs8VC27w3" role="3uHU7w" />
              <node concept="37vLTw" id="2tjs8VC26C_" role="3uHU7B">
                <ref role="3cqZAo" node="2tjs8VC26Cy" resolve="owner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC1YjL" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1Yjb" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC1NkJ" role="jymVt">
      <property role="TrG5h" value="getOrSetValue" />
      <node concept="3Tm6S6" id="1Ry9kf2s2dQ" role="1B3o_S" />
      <node concept="37vLTG" id="2tjs8VC1OGQ" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC1OWd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC1Pmh" role="3clF46">
        <property role="TrG5h" value="defaultValue" />
        <node concept="3uibUv" id="2tjs8VC1QDR" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
          <node concept="16syzq" id="2tjs8VC1WlB" role="11_B2D">
            <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="2tjs8VC2eWo" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
      </node>
      <node concept="3clFbS" id="2tjs8VC1NkN" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC2b9c" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC2b9d" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="2tjs8VC2b9a" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="1rXfSq" id="2tjs8VC2b9e" role="33vP2m">
              <ref role="37wK5l" node="2tjs8VC22Ho" resolve="lookupOwner" />
              <node concept="37vLTw" id="2tjs8VC2b9f" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC1OGQ" resolve="token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2tjs8VC2bVQ" role="3cqZAp">
          <node concept="3clFbS" id="2tjs8VC2bVS" role="3clFbx">
            <node concept="3cpWs6" id="2tjs8VC2cKC" role="3cqZAp">
              <node concept="10QFUN" id="2tjs8VC2day" role="3cqZAk">
                <node concept="16syzq" id="2tjs8VC2dp6" role="10QFUM">
                  <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
                </node>
                <node concept="2OqwBi" id="2tjs8VC2dOP" role="10QFUP">
                  <node concept="37vLTw" id="2tjs8VC2dBv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2tjs8VC2b9d" resolve="owner" />
                  </node>
                  <node concept="liA8E" id="2tjs8VC2evJ" role="2OqNvi">
                    <ref role="37wK5l" node="2tjs8VC1Yjc" resolve="getValue" />
                    <node concept="37vLTw" id="2tjs8VC2eIi" role="37wK5m">
                      <ref role="3cqZAo" node="2tjs8VC1OGQ" resolve="token" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2tjs8VC2cmA" role="3clFbw">
            <node concept="10Nm6u" id="2tjs8VC2czs" role="3uHU7w" />
            <node concept="37vLTw" id="2tjs8VC2c8O" role="3uHU7B">
              <ref role="3cqZAo" node="2tjs8VC2b9d" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2tjs8VC22g$" role="3cqZAp" />
        <node concept="3cpWs8" id="2tjs8VC2iz1" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC2iz2" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="16syzq" id="2tjs8VC2iyR" role="1tU5fm">
              <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC2iz3" role="33vP2m">
              <node concept="37vLTw" id="2tjs8VC2iz4" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC1Pmh" resolve="defaultValue" />
              </node>
              <node concept="liA8E" id="2tjs8VC2iz5" role="2OqNvi">
                <ref role="37wK5l" to="18ew:~Computable.compute():java.lang.Object" resolve="compute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC2gjI" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2g_h" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC2gjG" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
            </node>
            <node concept="liA8E" id="2tjs8VC2h3S" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2tjs8VC2hxn" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC1OGQ" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC2iz6" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2iz2" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC2jfU" role="3cqZAp">
          <node concept="37vLTw" id="2tjs8VC2jfS" role="3clFbG">
            <ref role="3cqZAo" node="2tjs8VC2iz2" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC1Qh2" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC22rr" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC22Ho" role="jymVt">
      <property role="TrG5h" value="lookupOwner" />
      <node concept="37vLTG" id="2tjs8VC23ZY" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC24eE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="2tjs8VC23b8" role="3clF45">
        <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
      </node>
      <node concept="3Tm6S6" id="2tjs8VC22YH" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC22Hs" role="3clF47">
        <node concept="3clFbJ" id="2tjs8VC24Me" role="3cqZAp">
          <node concept="3clFbS" id="2tjs8VC24Mf" role="3clFbx">
            <node concept="3clFbJ" id="2tjs8VC24Mg" role="3cqZAp">
              <node concept="3clFbS" id="2tjs8VC24Mh" role="3clFbx">
                <node concept="3cpWs6" id="2tjs8VC24Mi" role="3cqZAp">
                  <node concept="2OqwBi" id="2tjs8VC24Mj" role="3cqZAk">
                    <node concept="37vLTw" id="2tjs8VC24Mk" role="2Oq$k0">
                      <ref role="3cqZAo" node="2tjs8VC13tT" resolve="prev" />
                    </node>
                    <node concept="liA8E" id="2tjs8VC24Ml" role="2OqNvi">
                      <ref role="37wK5l" node="2tjs8VC22Ho" resolve="lookupOwner" />
                      <node concept="37vLTw" id="2tjs8VC24Mm" role="37wK5m">
                        <ref role="3cqZAo" node="2tjs8VC23ZY" resolve="token" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2tjs8VC24Mn" role="3clFbw">
                <node concept="10Nm6u" id="2tjs8VC24Mo" role="3uHU7w" />
                <node concept="37vLTw" id="2tjs8VC24Mp" role="3uHU7B">
                  <ref role="3cqZAo" node="2tjs8VC13tT" resolve="prev" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2tjs8VC24Mq" role="3cqZAp" />
            <node concept="3cpWs6" id="2tjs8VC24Mr" role="3cqZAp">
              <node concept="10Nm6u" id="2tjs8VC24Ms" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="2tjs8VC24Mt" role="3clFbw">
            <node concept="2OqwBi" id="2tjs8VC24Mu" role="3fr31v">
              <node concept="37vLTw" id="2tjs8VC24Mv" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
              </node>
              <node concept="liA8E" id="2tjs8VC24Mw" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="2tjs8VC24Mx" role="37wK5m">
                  <ref role="3cqZAo" node="2tjs8VC23ZY" resolve="token" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC25Is" role="3cqZAp">
          <node concept="Xjq3P" id="2tjs8VC25Iq" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1N51" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC1kVc" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3cqZAl" id="2tjs8VC1kVe" role="3clF45" />
      <node concept="3Tm6S6" id="2tjs8VC1lc0" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1kVg" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC1lEc" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1lS_" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1lEb" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
            </node>
            <node concept="liA8E" id="2tjs8VC1mbI" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1mof" role="jymVt" />
    <node concept="Wx3nA" id="2tjs8VC16TI" role="jymVt">
      <property role="TrG5h" value="current" />
      <node concept="3Tm6S6" id="2tjs8VC16TK" role="1B3o_S" />
      <node concept="3uibUv" id="2tjs8VC172F" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="3uibUv" id="2tjs8VC17gT" role="11_B2D">
          <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
        </node>
      </node>
      <node concept="10Nm6u" id="2k2r9bMc0Fx" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="2tjs8VC19BF" role="jymVt" />
    <node concept="312cEg" id="2tjs8VC0WHe" role="jymVt">
      <property role="TrG5h" value="token2value" />
      <node concept="3Tm6S6" id="2tjs8VC0WHf" role="1B3o_S" />
      <node concept="3uibUv" id="2tjs8VC0WI8" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="2tjs8VC0WIJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="2tjs8VC0WJb" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="2tjs8VC0WLW" role="33vP2m">
        <node concept="1pGfFk" id="2tjs8VC0XV5" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="2tjs8VC0XZd" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="2tjs8VC0Y1s" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC0WGi" role="jymVt" />
    <node concept="312cEg" id="2tjs8VC13tT" role="jymVt">
      <property role="TrG5h" value="prev" />
      <node concept="3Tm6S6" id="2tjs8VC13tU" role="1B3o_S" />
      <node concept="3uibUv" id="2tjs8VC13_k" role="1tU5fm">
        <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC13mA" role="jymVt" />
    <node concept="3Tm1VV" id="2tjs8VC0K0n" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="12yN8DyNqdl">
    <property role="TrG5h" value="NodeWalker" />
    <node concept="2tJIrI" id="12yN8DyNqdN" role="jymVt" />
    <node concept="3HP615" id="12yN8DyNqe8" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="NodeAction" />
      <node concept="2tJIrI" id="12yN8DyNqeC" role="jymVt" />
      <node concept="3clFb_" id="12yN8DyNqeO" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="12yN8DyNqfm" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="12yN8DyNqgv" role="1tU5fm" />
        </node>
        <node concept="16syzq" id="tIwzd1IBoE" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="12yN8DyNqeR" role="1B3o_S" />
        <node concept="3clFbS" id="12yN8DyNqeS" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="tIwzd1IBNS" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IBXa" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="bind" />
        <node concept="37vLTG" id="tIwzd1IBZO" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="16syzq" id="tIwzd1IC03" role="1tU5fm">
            <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="tIwzd1IC0A" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="16syzq" id="tIwzd1IC1d" role="1tU5fm">
            <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
          </node>
        </node>
        <node concept="16syzq" id="tIwzd1IBZw" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="tIwzd1IBXe" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1IBXf" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="tIwzd1ILRQ" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1ILXm" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="initial" />
        <node concept="16syzq" id="tIwzd1IM3B" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="tIwzd1ILXp" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1ILXq" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="12yN8DyNqfE" role="jymVt" />
      <node concept="3Tm1VV" id="12yN8DyNqe9" role="1B3o_S" />
      <node concept="16euLQ" id="tIwzd1IBnx" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3UR2Jj" id="tIwzd1IT_8" role="lGtFl">
        <node concept="TZ5HA" id="tIwzd1IT_9" role="TZ5H$">
          <node concept="1dT_AC" id="tIwzd1IT_a" role="1dT_Ay">
            <property role="1dT_AB" value="Just a monoid." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GjA47" role="jymVt" />
    <node concept="3clFbW" id="12yN8DyNqja" role="jymVt">
      <node concept="37vLTG" id="12yN8DyNqjA" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="12yN8DyNqjI" role="1tU5fm">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="tIwzd1IBE1" role="11_B2D">
            <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8DyNqjc" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyNqjd" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqje" role="3clF47">
        <node concept="3clFbF" id="12yN8DyNqkk" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyNqkm" role="3clFbG">
            <node concept="2OqwBi" id="12yN8DyNqkq" role="37vLTJ">
              <node concept="Xjq3P" id="12yN8DyNqkt" role="2Oq$k0" />
              <node concept="2OwXpG" id="12yN8DyNqkp" role="2OqNvi">
                <ref role="2Oxat5" node="12yN8DyNqkg" resolve="action" />
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyNqku" role="37vLTx">
              <ref role="3cqZAo" node="12yN8DyNqjA" resolve="action" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqiy" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyNqZ$" role="jymVt">
      <property role="TrG5h" value="deepWalk" />
      <node concept="37vLTG" id="12yN8DyNrfg" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNrkx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1LkvH" role="3clF46">
        <property role="TrG5h" value="interfacePart" />
        <node concept="10P_77" id="tIwzd1LkJy" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="tIwzd1J3Vh" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="12yN8DyNqZB" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqZC" role="3clF47">
        <node concept="3SKdUt" id="4MqhgXUB2dU" role="3cqZAp">
          <node concept="3SKdUq" id="4MqhgXUB2dW" role="3SKWNk">
            <property role="3SKdUp" value="TODO: interface ???" />
          </node>
        </node>
        <node concept="3clFbF" id="5ntLU8GjygK" role="3cqZAp">
          <node concept="1rXfSq" id="5ntLU8GjygL" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1KZV6" resolve="walk" />
            <node concept="37vLTw" id="5ntLU8GjygM" role="37wK5m">
              <ref role="3cqZAo" node="12yN8DyNrfg" resolve="root" />
            </node>
            <node concept="3clFbT" id="5ntLU8GjygN" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqUW" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1L9h1" role="jymVt">
      <property role="TrG5h" value="surfaceWalk" />
      <node concept="37vLTG" id="tIwzd1Lb4K" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="tIwzd1LbgY" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1Lc8p" role="A3Ik2" />
        </node>
      </node>
      <node concept="16syzq" id="tIwzd1LapD" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="tIwzd1L9h4" role="1B3o_S" />
      <node concept="3clFbS" id="tIwzd1L9h5" role="3clF47">
        <node concept="3clFbF" id="tIwzd1Lce_" role="3cqZAp">
          <node concept="1rXfSq" id="tIwzd1Lce$" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1KVkc" resolve="visitAll" />
            <node concept="37vLTw" id="tIwzd1Lcgh" role="37wK5m">
              <ref role="3cqZAo" node="tIwzd1Lb4K" resolve="nodes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1L0E2" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1KZV6" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="37vLTG" id="tIwzd1KZV7" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="tIwzd1KZV8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1KZV9" role="3clF46">
        <property role="TrG5h" value="intefacePart" />
        <node concept="10P_77" id="tIwzd1KZVa" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="tIwzd1KZVb" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm6S6" id="tIwzd1KZVc" role="1B3o_S" />
      <node concept="3clFbS" id="tIwzd1KZVd" role="3clF47">
        <node concept="3clFbF" id="tIwzd1L1ch" role="3cqZAp">
          <node concept="1rXfSq" id="tIwzd1L1cf" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1KVkc" resolve="visitAll" />
            <node concept="2ShNRf" id="tIwzd1L1gz" role="37wK5m">
              <node concept="kMnCb" id="tIwzd1L1m4" role="2ShVmc">
                <node concept="3Tqbb2" id="tIwzd1L1mK" role="kMuH3" />
                <node concept="1bVj0M" id="tIwzd1L1ni" role="kMx8a">
                  <node concept="3clFbS" id="tIwzd1L1nj" role="1bW5cS">
                    <node concept="3cpWs8" id="tIwzd1KZVi" role="3cqZAp">
                      <node concept="3cpWsn" id="tIwzd1KZVj" role="3cpWs9">
                        <property role="TrG5h" value="queue" />
                        <node concept="3O6Q9H" id="tIwzd1KZVk" role="1tU5fm">
                          <node concept="3Tqbb2" id="tIwzd1KZVl" role="3O5elw" />
                        </node>
                        <node concept="2ShNRf" id="tIwzd1KZVm" role="33vP2m">
                          <node concept="2Jqq0_" id="tIwzd1KZVn" role="2ShVmc">
                            <node concept="3Tqbb2" id="tIwzd1KZVo" role="HW$YZ" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="tIwzd1KZVp" role="3cqZAp">
                      <node concept="2OqwBi" id="tIwzd1KZVq" role="3clFbG">
                        <node concept="37vLTw" id="tIwzd1KZVr" role="2Oq$k0">
                          <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                        </node>
                        <node concept="2Ke9KJ" id="tIwzd1KZVs" role="2OqNvi">
                          <node concept="37vLTw" id="tIwzd1KZVt" role="25WWJ7">
                            <ref role="3cqZAo" node="tIwzd1KZV7" resolve="root" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="tIwzd1L4x7" role="3cqZAp" />
                    <node concept="2$JKZl" id="tIwzd1KZVv" role="3cqZAp">
                      <node concept="3clFbS" id="tIwzd1KZVw" role="2LFqv$">
                        <node concept="3cpWs8" id="tIwzd1KZVx" role="3cqZAp">
                          <node concept="3cpWsn" id="tIwzd1KZVy" role="3cpWs9">
                            <property role="TrG5h" value="next" />
                            <node concept="3Tqbb2" id="tIwzd1KZVz" role="1tU5fm" />
                            <node concept="2OqwBi" id="tIwzd1KZV$" role="33vP2m">
                              <node concept="37vLTw" id="tIwzd1KZV_" role="2Oq$k0">
                                <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                              </node>
                              <node concept="2Kt2Hk" id="tIwzd1KZVA" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="tIwzd1KZVB" role="3cqZAp" />
                        <node concept="2n63Yl" id="tIwzd1L4pf" role="3cqZAp">
                          <node concept="37vLTw" id="tIwzd1L4tR" role="2n6tg2">
                            <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                          </node>
                        </node>
                        <node concept="3clFbH" id="tIwzd1KZVN" role="3cqZAp" />
                        <node concept="1DcWWT" id="tIwzd1KZVO" role="3cqZAp">
                          <node concept="3clFbS" id="tIwzd1KZVP" role="2LFqv$">
                            <node concept="3clFbJ" id="3g$8GQCjqwD" role="3cqZAp">
                              <node concept="3clFbS" id="3g$8GQCjqwF" role="3clFbx">
                                <node concept="3N13vt" id="3g$8GQCjqQk" role="3cqZAp" />
                              </node>
                              <node concept="2OqwBi" id="3g$8GQCjqAU" role="3clFbw">
                                <node concept="37vLTw" id="3g$8GQCjq$K" role="2Oq$k0">
                                  <ref role="3cqZAo" node="tIwzd1KZWc" resolve="ch" />
                                </node>
                                <node concept="1BlSNk" id="3g$8GQCjqI4" role="2OqNvi">
                                  <ref role="1BmUXE" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  <ref role="1Bn3mz" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="tIwzd1KZVQ" role="3cqZAp">
                              <property role="TyiWK" value="true" />
                              <property role="TyiWL" value="false" />
                              <node concept="3clFbS" id="tIwzd1KZVR" role="3clFbx">
                                <node concept="3N13vt" id="tIwzd1KZVS" role="3cqZAp" />
                              </node>
                              <node concept="1Wc70l" id="tIwzd1KZVT" role="3clFbw">
                                <node concept="1eOMI4" id="tIwzd1KZVU" role="3uHU7w">
                                  <node concept="1Wc70l" id="tIwzd1KZVV" role="1eOMHV">
                                    <node concept="3fqX7Q" id="tIwzd1KZVW" role="3uHU7B">
                                      <node concept="2OqwBi" id="tIwzd1KZVX" role="3fr31v">
                                        <node concept="37vLTw" id="tIwzd1KZVY" role="2Oq$k0">
                                          <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                                        </node>
                                        <node concept="1mIQ4w" id="tIwzd1KZVZ" role="2OqNvi">
                                          <node concept="chp4Y" id="tIwzd1KZW0" role="cj9EA">
                                            <ref role="cht4Q" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="tIwzd1KZW1" role="3uHU7w">
                                      <node concept="37vLTw" id="tIwzd1KZW2" role="2Oq$k0">
                                        <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                                      </node>
                                      <node concept="1mIQ4w" id="tIwzd1KZW3" role="2OqNvi">
                                        <node concept="chp4Y" id="tIwzd1KZW4" role="cj9EA">
                                          <ref role="cht4Q" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="tIwzd1KZW5" role="3uHU7B">
                                  <ref role="3cqZAo" node="tIwzd1KZV9" resolve="intefacePart" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="tIwzd1KZW6" role="3cqZAp" />
                            <node concept="3clFbF" id="tIwzd1KZW7" role="3cqZAp">
                              <node concept="2OqwBi" id="tIwzd1KZW8" role="3clFbG">
                                <node concept="37vLTw" id="tIwzd1KZW9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                                </node>
                                <node concept="2Ke9KJ" id="tIwzd1KZWa" role="2OqNvi">
                                  <node concept="37vLTw" id="tIwzd1KZWb" role="25WWJ7">
                                    <ref role="3cqZAo" node="tIwzd1KZWc" resolve="ch" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="tIwzd1KZWc" role="1Duv9x">
                            <property role="TrG5h" value="ch" />
                            <node concept="3Tqbb2" id="tIwzd1KZWd" role="1tU5fm" />
                          </node>
                          <node concept="2OqwBi" id="tIwzd1KZWe" role="1DdaDG">
                            <node concept="37vLTw" id="tIwzd1KZWf" role="2Oq$k0">
                              <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                            </node>
                            <node concept="32TBzR" id="tIwzd1KZWg" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="tIwzd1KZWh" role="2$JKZa">
                        <node concept="2OqwBi" id="tIwzd1KZWi" role="3fr31v">
                          <node concept="37vLTw" id="tIwzd1KZWj" role="2Oq$k0">
                            <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                          </node>
                          <node concept="1v1jN8" id="tIwzd1KZWk" role="2OqNvi" />
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
    <node concept="2tJIrI" id="tIwzd1KW0S" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1KVkc" role="jymVt">
      <property role="TrG5h" value="visitAll" />
      <node concept="37vLTG" id="tIwzd1KVkd" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="tIwzd1KZEw" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1KZEy" role="A3Ik2" />
        </node>
      </node>
      <node concept="16syzq" id="tIwzd1KVkh" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm6S6" id="tIwzd1KVki" role="1B3o_S" />
      <node concept="3clFbS" id="tIwzd1KVkj" role="3clF47">
        <node concept="3cpWs8" id="tIwzd1KVkk" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1KVkl" role="3cpWs9">
            <property role="TrG5h" value="accVal" />
            <node concept="16syzq" id="tIwzd1KVkm" role="1tU5fm">
              <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
            </node>
            <node concept="1rXfSq" id="tIwzd1KVkn" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1IMOE" resolve="initVal" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KVk$" role="3cqZAp" />
        <node concept="2Gpval" id="tIwzd1KYf$" role="3cqZAp">
          <node concept="2GrKxI" id="tIwzd1KYfA" role="2Gsz3X">
            <property role="TrG5h" value="next" />
          </node>
          <node concept="3clFbS" id="tIwzd1KYfC" role="2LFqv$">
            <node concept="3cpWs8" id="tIwzd1KVkI" role="3cqZAp">
              <node concept="3cpWsn" id="tIwzd1KVkJ" role="3cpWs9">
                <property role="TrG5h" value="nextVal" />
                <node concept="16syzq" id="tIwzd1KVkK" role="1tU5fm">
                  <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
                </node>
                <node concept="1rXfSq" id="tIwzd1KVkL" role="33vP2m">
                  <ref role="37wK5l" node="5ntLU8Gjd9b" resolve="nodeAction" />
                  <node concept="2GrUjf" id="tIwzd1KZp6" role="37wK5m">
                    <ref role="2Gs0qQ" node="tIwzd1KYfA" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="tIwzd1KVkN" role="3cqZAp">
              <node concept="37vLTI" id="tIwzd1KVkO" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1KVkP" role="37vLTJ">
                  <ref role="3cqZAo" node="tIwzd1KVkl" resolve="accVal" />
                </node>
                <node concept="1rXfSq" id="tIwzd1KVkQ" role="37vLTx">
                  <ref role="37wK5l" node="tIwzd1IFga" resolve="bindVal" />
                  <node concept="37vLTw" id="tIwzd1KVkR" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1KVkl" resolve="accVal" />
                  </node>
                  <node concept="37vLTw" id="tIwzd1KVkS" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1KVkJ" resolve="nextVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="tIwzd1KVkT" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="tIwzd1KYjj" role="2GsD0m">
            <ref role="3cqZAo" node="tIwzd1KVkd" resolve="nodes" />
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KYwf" role="3cqZAp" />
        <node concept="3clFbF" id="tIwzd1KVlr" role="3cqZAp">
          <node concept="37vLTw" id="tIwzd1KVls" role="3clFbG">
            <ref role="3cqZAo" node="tIwzd1KVkl" resolve="accVal" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1IFAt" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8Gjd9b" role="jymVt">
      <property role="TrG5h" value="nodeAction" />
      <node concept="3Tm6S6" id="5ntLU8Gjd9c" role="1B3o_S" />
      <node concept="16syzq" id="tIwzd1IDaH" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="37vLTG" id="5ntLU8Gjd96" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="3Tqbb2" id="5ntLU8Gjd97" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5ntLU8Gjd90" role="3clF47">
        <node concept="3SKdUt" id="5ntLU8GjdpF" role="3cqZAp">
          <node concept="3SKdUq" id="5ntLU8Gjdrq" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="5ntLU8Gjd91" role="3cqZAp">
          <node concept="2OqwBi" id="5ntLU8Gjd92" role="3clFbG">
            <node concept="37vLTw" id="5ntLU8Gjd93" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
            </node>
            <node concept="liA8E" id="5ntLU8Gjd94" role="2OqNvi">
              <ref role="37wK5l" node="12yN8DyNqeO" resolve="doAction" />
              <node concept="37vLTw" id="5ntLU8Gjd98" role="37wK5m">
                <ref role="3cqZAo" node="5ntLU8Gjd96" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqdS" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1IFga" role="jymVt">
      <property role="TrG5h" value="bindVal" />
      <node concept="3Tm6S6" id="tIwzd1IFgb" role="1B3o_S" />
      <node concept="16syzq" id="tIwzd1IFgc" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="37vLTG" id="tIwzd1IFaM" role="3clF46">
        <property role="TrG5h" value="prevVal" />
        <node concept="16syzq" id="tIwzd1IFaN" role="1tU5fm">
          <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1IFaO" role="3clF46">
        <property role="TrG5h" value="nextVal" />
        <node concept="16syzq" id="tIwzd1IFaP" role="1tU5fm">
          <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1IF5q" role="3clF47">
        <node concept="3SKdUt" id="tIwzd1IFpr" role="3cqZAp">
          <node concept="3SKdUq" id="tIwzd1IFps" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="tIwzd1IFwV" role="3cqZAp">
          <node concept="2OqwBi" id="tIwzd1IFaH" role="3clFbG">
            <node concept="37vLTw" id="tIwzd1IFaI" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
            </node>
            <node concept="liA8E" id="tIwzd1IFaJ" role="2OqNvi">
              <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
              <node concept="37vLTw" id="tIwzd1IFaQ" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1IFaM" resolve="prevVal" />
              </node>
              <node concept="37vLTw" id="tIwzd1IFaR" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1IFaO" resolve="nextVal" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1INIy" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1IMOE" role="jymVt">
      <property role="TrG5h" value="initVal" />
      <node concept="3Tm6S6" id="tIwzd1IMOF" role="1B3o_S" />
      <node concept="16syzq" id="tIwzd1IMOG" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3clFbS" id="tIwzd1IMN2" role="3clF47">
        <node concept="3SKdUt" id="tIwzd1INSy" role="3cqZAp">
          <node concept="3SKdUq" id="tIwzd1INSz" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3cpWs6" id="tIwzd1IMNO" role="3cqZAp">
          <node concept="2OqwBi" id="tIwzd1IMNP" role="3cqZAk">
            <node concept="37vLTw" id="tIwzd1IMNQ" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
            </node>
            <node concept="liA8E" id="tIwzd1IMNR" role="2OqNvi">
              <ref role="37wK5l" node="tIwzd1ILXm" resolve="initial" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GjdgN" role="jymVt" />
    <node concept="312cEg" id="12yN8DyNqkg" role="jymVt">
      <property role="TrG5h" value="action" />
      <node concept="3Tm6S6" id="12yN8DyNqkh" role="1B3o_S" />
      <node concept="3uibUv" id="12yN8DyNqkj" role="1tU5fm">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
        <node concept="16syzq" id="tIwzd1ID1q" role="11_B2D">
          <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="16euLQ" id="tIwzd1IC9f" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="12yN8DyF_E1">
    <property role="TrG5h" value="ProgramProducer" />
    <node concept="2tJIrI" id="5ntLU8GlxKW" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSy_Op" role="jymVt">
      <node concept="3cqZAl" id="7Oc59RSy_Or" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSy_Os" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSy_Ot" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSyA2f" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSyA3S" role="3clFbG">
            <node concept="37vLTw" id="7Oc59RSyA55" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSyA1q" resolve="rtc" />
            </node>
            <node concept="2OqwBi" id="4JJCDIn5IXc" role="37vLTJ">
              <node concept="Xjq3P" id="4JJCDIn5ILW" role="2Oq$k0" />
              <node concept="2OwXpG" id="4JJCDIn5Ja_" role="2OqNvi">
                <ref role="2Oxat5" node="5ntLU8GlznG" resolve="ruleTemplateIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6i42QSsjCSz" role="3cqZAp">
          <node concept="37vLTI" id="6i42QSsjDL9" role="3clFbG">
            <node concept="37vLTw" id="6i42QSsjE9y" role="37vLTx">
              <ref role="3cqZAo" node="6i42QSsjBGG" resolve="mainConstraint" />
            </node>
            <node concept="2OqwBi" id="6i42QSsjD1$" role="37vLTJ">
              <node concept="Xjq3P" id="6i42QSsjCSx" role="2Oq$k0" />
              <node concept="2OwXpG" id="6i42QSsjDpq" role="2OqNvi">
                <ref role="2Oxat5" node="6i42QSsj_y2" resolve="mainConstraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4JJCDIn5Tet" role="3cqZAp">
          <node concept="37vLTI" id="4JJCDIn5U74" role="3clFbG">
            <node concept="2OqwBi" id="4JJCDIn5Tmn" role="37vLTJ">
              <node concept="Xjq3P" id="4JJCDIn5Ter" role="2Oq$k0" />
              <node concept="2OwXpG" id="4JJCDIn5TKi" role="2OqNvi">
                <ref role="2Oxat5" node="4JJCDIn5QT7" resolve="applicationSession" />
              </node>
            </node>
            <node concept="2ShNRf" id="4JJCDIn5UgM" role="37vLTx">
              <node concept="1pGfFk" id="4JJCDIn5UgN" role="2ShVmc">
                <ref role="37wK5l" to="nz6g:4JJCDImSW0_" resolve="ApplicationSession" />
                <node concept="37vLTw" id="6i42QSsjGTa" role="37wK5m">
                  <ref role="3cqZAo" node="4JJCDIn5KUu" resolve="ttc" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Oc59RSyA1q" role="3clF46">
        <property role="TrG5h" value="rtc" />
        <node concept="3uibUv" id="7Oc59RSyA1p" role="1tU5fm">
          <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
        </node>
      </node>
      <node concept="37vLTG" id="4JJCDIn5KUu" role="3clF46">
        <property role="TrG5h" value="ttc" />
        <node concept="3uibUv" id="4JJCDIn5L5k" role="1tU5fm">
          <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateIndex" />
        </node>
      </node>
      <node concept="37vLTG" id="6i42QSsjBGG" role="3clF46">
        <property role="TrG5h" value="mainConstraint" />
        <node concept="3uibUv" id="6i42QSsjC0t" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6i42QSspmaL" role="jymVt" />
    <node concept="3clFb_" id="6i42QSspo7W" role="jymVt">
      <property role="TrG5h" value="produce" />
      <node concept="37vLTG" id="6i42QSsp$tv" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="6i42QSspKbC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CcQBrPhr84" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="3uibUv" id="1CcQBrPhugv" role="1tU5fm">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
      </node>
      <node concept="37vLTG" id="1CcQBrPhbPi" role="3clF46">
        <property role="TrG5h" value="programBuilder" />
        <node concept="3uibUv" id="1CcQBrPheye" role="1tU5fm">
          <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
        </node>
      </node>
      <node concept="3uibUv" id="6i42QSsppZ1" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="6i42QSspo7Z" role="1B3o_S" />
      <node concept="3clFbS" id="6i42QSspo80" role="3clF47">
        <node concept="3cpWs8" id="7nkyKX7vtmM" role="3cqZAp">
          <node concept="3cpWsn" id="7nkyKX7vtmN" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7nkyKX7vtmO" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7nkyKX7vtCO" role="33vP2m">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSspHmh" role="3cqZAp" />
        <node concept="3clFbF" id="7nkyKX7vEI8" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vEI9" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vEIa" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vEIb" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vEIc" role="2OqNvi">
                <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="7nkyKX7vEId" role="37wK5m">
                  <node concept="Xjq3P" id="6i42QSspJaU" role="2Oq$k0" />
                  <node concept="liA8E" id="7nkyKX7vEIf" role="2OqNvi">
                    <ref role="37wK5l" node="5NuEpF1pL7f" resolve="produceAllWithNoInput" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7vEIi" role="37vLTJ">
              <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nkyKX7vF3w" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vF3x" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vF3y" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vF3z" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vF3$" role="2OqNvi">
                <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="7nkyKX7vF3_" role="37wK5m">
                  <node concept="Xjq3P" id="6i42QSspJro" role="2Oq$k0" />
                  <node concept="liA8E" id="7nkyKX7vF3B" role="2OqNvi">
                    <ref role="37wK5l" node="12yN8DyNqcj" resolve="produceAll" />
                    <node concept="37vLTw" id="6i42QSspKvG" role="37wK5m">
                      <ref role="3cqZAo" node="6i42QSsp$tv" resolve="root" />
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
        <node concept="3clFbF" id="7nkyKX7vF$r" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vF$s" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vF$t" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vF$u" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vF$v" role="2OqNvi">
                <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="7nkyKX7vF$w" role="37wK5m">
                  <node concept="Xjq3P" id="6i42QSspK3e" role="2Oq$k0" />
                  <node concept="liA8E" id="7nkyKX7vF$y" role="2OqNvi">
                    <ref role="37wK5l" node="7nkyKX7ncaN" resolve="buildRules" />
                    <node concept="37vLTw" id="6i42QSspKIv" role="37wK5m">
                      <ref role="3cqZAo" node="6i42QSsp$tv" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="1CcQBrPhurM" role="37wK5m">
                      <ref role="3cqZAo" node="1CcQBrPhr84" resolve="stage" />
                    </node>
                    <node concept="37vLTw" id="1CcQBrPhePh" role="37wK5m">
                      <ref role="3cqZAo" node="1CcQBrPhbPi" resolve="programBuilder" />
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
        <node concept="3clFbH" id="6i42QSspAek" role="3cqZAp" />
        <node concept="3clFbF" id="6i42QSspHSV" role="3cqZAp">
          <node concept="37vLTw" id="6i42QSspHST" role="3clFbG">
            <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6i42QSspmA6" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7ncaN" role="jymVt">
      <property role="TrG5h" value="buildRules" />
      <node concept="37vLTG" id="7nkyKX7njPd" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="7nkyKX7njPe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CcQBrPheTn" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="3uibUv" id="1CcQBrPhiD6" role="1tU5fm">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
      </node>
      <node concept="37vLTG" id="1CcQBrPh8x2" role="3clF46">
        <property role="TrG5h" value="programBuilder" />
        <node concept="3uibUv" id="1CcQBrPhbzq" role="1tU5fm">
          <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
        </node>
      </node>
      <node concept="3uibUv" id="7nkyKX7nfei" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="6i42QSspAhH" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7ncaR" role="3clF47">
        <node concept="SfApY" id="7nkyKX7nl0O" role="3cqZAp">
          <node concept="3clFbS" id="7nkyKX7nl0Q" role="SfCbr">
            <node concept="1DcWWT" id="4MqhgXUSKVL" role="3cqZAp">
              <node concept="3clFbS" id="4MqhgXUSKVO" role="2LFqv$">
                <node concept="3clFbF" id="4MqhgXUSLTN" role="3cqZAp">
                  <node concept="2OqwBi" id="4MqhgXUSMc_" role="3clFbG">
                    <node concept="37vLTw" id="4MqhgXUSLTM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1CcQBrPh8x2" resolve="programBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUSMpw" role="2OqNvi">
                      <ref role="37wK5l" to="7n8k:4MqhgXUQoOL" resolve="addHandler" />
                      <node concept="37vLTw" id="4MqhgXUSMIv" role="37wK5m">
                        <ref role="3cqZAo" node="4MqhgXUSKVP" resolve="handler" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUSKVP" role="1Duv9x">
                <property role="TrG5h" value="handler" />
                <node concept="3uibUv" id="4MqhgXUSKVT" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXUSKVU" role="1DdaDG">
                <node concept="3EllGN" id="1CcQBrPhjgf" role="2Oq$k0">
                  <node concept="37vLTw" id="1CcQBrPhjkX" role="3ElVtu">
                    <ref role="3cqZAo" node="1CcQBrPheTn" resolve="stage" />
                  </node>
                  <node concept="37vLTw" id="4MqhgXUSKVV" role="3ElQJh">
                    <ref role="3cqZAo" node="4MqhgXUBtmF" resolve="ruleTables" />
                  </node>
                </node>
                <node concept="liA8E" id="4MqhgXUSKVW" role="2OqNvi">
                  <ref role="37wK5l" node="4MqhgXUM1FX" resolve="allHandlers" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUQekt" role="3cqZAp" />
            <node concept="3cpWs8" id="6i42QSskaRB" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSskaRC" role="3cpWs9">
                <property role="TrG5h" value="mainBuilder" />
                <node concept="3uibUv" id="6i42QSskaR_" role="1tU5fm">
                  <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
                <node concept="2ShNRf" id="6i42QSskaRD" role="33vP2m">
                  <node concept="1pGfFk" id="6i42QSskaRE" role="2ShVmc">
                    <ref role="37wK5l" to="nz6g:6lpwCiZjdph" resolve="RuleBuilder" />
                    <node concept="Xl_RD" id="6i42QSskaRF" role="37wK5m">
                      <property role="Xl_RC" value="main" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6i42QSskf4h" role="3cqZAp">
              <node concept="2OqwBi" id="6i42QSskfxe" role="3clFbG">
                <node concept="37vLTw" id="6i42QSskf4f" role="2Oq$k0">
                  <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainBuilder" />
                </node>
                <node concept="liA8E" id="6i42QSskfKn" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:7eGEHDlc$bq" resolve="appendHeadReplaced" />
                  <node concept="37vLTw" id="6i42QSskgaA" role="37wK5m">
                    <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6i42QSskgAG" role="3cqZAp">
              <node concept="2OqwBi" id="6i42QSskgZE" role="3clFbG">
                <node concept="37vLTw" id="6i42QSskgAE" role="2Oq$k0">
                  <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainBuilder" />
                </node>
                <node concept="liA8E" id="6i42QSskhfn" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:7eGEHDlc$aw" resolve="appendBody" />
                  <node concept="2ShNRf" id="6i42QSskpry" role="37wK5m">
                    <node concept="1pGfFk" id="6i42QSskq5F" role="2ShVmc">
                      <ref role="37wK5l" to="cxk7:4xBopTzrPWl" resolve="AssertPredicate" />
                      <node concept="10M0yZ" id="6i42QSskqiG" role="37wK5m">
                        <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                        <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUQmg3" role="3cqZAp" />
            <node concept="3cpWs8" id="4MqhgXUQinu" role="3cqZAp">
              <node concept="3cpWsn" id="4MqhgXUQinv" role="3cpWs9">
                <property role="TrG5h" value="mainHandlerBuilder" />
                <node concept="3uibUv" id="4MqhgXUQinf" role="1tU5fm">
                  <ref role="3uigEE" to="nz6g:4MqhgXUMauK" resolve="HandlerBuilder" />
                </node>
                <node concept="2ShNRf" id="4MqhgXUQinw" role="33vP2m">
                  <node concept="1pGfFk" id="4MqhgXUQinx" role="2ShVmc">
                    <ref role="37wK5l" to="nz6g:4MqhgXUMb4h" resolve="HandlerBuilder" />
                    <node concept="Xl_RD" id="4MqhgXUQiny" role="37wK5m">
                      <property role="Xl_RC" value="main" />
                    </node>
                    <node concept="2ShNRf" id="2TtA2rKaiYZ" role="37wK5m">
                      <node concept="kMnCb" id="2TtA2rKaiTa" role="2ShVmc">
                        <node concept="3uibUv" id="2TtA2rKaiTb" role="kMuH3">
                          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                        </node>
                      </node>
                    </node>
                    <node concept="2ShNRf" id="4MqhgXUQinA" role="37wK5m">
                      <node concept="2HTt$P" id="4MqhgXUQinB" role="2ShVmc">
                        <node concept="3uibUv" id="4MqhgXUQinC" role="2HTBi0">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="4MqhgXUQinD" role="2HTEbv">
                          <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4MqhgXUQeMk" role="3cqZAp">
              <node concept="2OqwBi" id="4MqhgXUQjy0" role="3clFbG">
                <node concept="37vLTw" id="4MqhgXUQinE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUQinv" resolve="mainHandlerBuilder" />
                </node>
                <node concept="liA8E" id="4MqhgXUQjH0" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:4MqhgXUMbtk" resolve="addRule" />
                  <node concept="37vLTw" id="4MqhgXUQmTK" role="37wK5m">
                    <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                  </node>
                  <node concept="2OqwBi" id="4MqhgXUQnL1" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUQn$6" role="2Oq$k0">
                      <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUQolJ" role="2OqNvi">
                      <ref role="37wK5l" to="nz6g:7eGEHDlc$ck" resolve="toRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUSRQp" role="3cqZAp" />
            <node concept="3clFbF" id="4MqhgXUSNRx" role="3cqZAp">
              <node concept="2OqwBi" id="4MqhgXUSOsg" role="3clFbG">
                <node concept="37vLTw" id="4MqhgXUSNRv" role="2Oq$k0">
                  <ref role="3cqZAo" node="1CcQBrPh8x2" resolve="programBuilder" />
                </node>
                <node concept="liA8E" id="4MqhgXUSOHT" role="2OqNvi">
                  <ref role="37wK5l" to="7n8k:4MqhgXUQoOL" resolve="addHandler" />
                  <node concept="2OqwBi" id="4MqhgXUSPwA" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUSPaX" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUQinv" resolve="mainHandlerBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUSPSg" role="2OqNvi">
                      <ref role="37wK5l" to="nz6g:4MqhgXUNDLG" resolve="toHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUSQVJ" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="7nkyKX7nl0R" role="TEbGg">
            <node concept="3cpWsn" id="7nkyKX7nl0T" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7nkyKX7nmdZ" role="1tU5fm">
                <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
              </node>
            </node>
            <node concept="3clFbS" id="7nkyKX7nl0X" role="TDEfX">
              <node concept="3cpWs8" id="7nkyKX7nmlg" role="3cqZAp">
                <node concept="3cpWsn" id="7nkyKX7nmlh" role="3cpWs9">
                  <property role="TrG5h" value="details" />
                  <node concept="17QB3L" id="7nkyKX7nmli" role="1tU5fm" />
                  <node concept="3K4zz7" id="7nkyKX7nmlj" role="33vP2m">
                    <node concept="Xl_RD" id="7nkyKX7nmlk" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="3y3z36" id="7nkyKX7nmll" role="3K4Cdx">
                      <node concept="10Nm6u" id="7nkyKX7nmlm" role="3uHU7w" />
                      <node concept="37vLTw" id="7nkyKX7nmln" role="3uHU7B">
                        <ref role="3cqZAo" node="7nkyKX7njPd" resolve="root" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7nkyKX7nmlo" role="3K4E3e">
                      <node concept="2OqwBi" id="7nkyKX7nmlp" role="3uHU7w">
                        <node concept="2JrnkZ" id="7nkyKX7nmlq" role="2Oq$k0">
                          <node concept="37vLTw" id="7nkyKX7nmlr" role="2JrQYb">
                            <ref role="3cqZAo" node="7nkyKX7njPd" resolve="root" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7nkyKX7nmls" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="7nkyKX7nmlt" role="3uHU7B">
                        <node concept="3cpWs3" id="7nkyKX7nmlu" role="3uHU7B">
                          <node concept="Xl_RD" id="7nkyKX7nmlv" role="3uHU7B">
                            <property role="Xl_RC" value=" triggered by " />
                          </node>
                          <node concept="2OqwBi" id="7nkyKX7nmlw" role="3uHU7w">
                            <node concept="37vLTw" id="7nkyKX7nmlx" role="2Oq$k0">
                              <ref role="3cqZAo" node="7nkyKX7njPd" resolve="root" />
                            </node>
                            <node concept="2qgKlT" id="7nkyKX7nmly" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7nkyKX7nmlz" role="3uHU7w">
                          <property role="Xl_RC" value="@" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6i42QSsp0NP" role="3cqZAp">
                <node concept="2YIFZM" id="6i42QSsp4Ua" role="3cqZAk">
                  <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                  <ref role="37wK5l" node="7Oc59RSH6VB" resolve="FAIL" />
                  <node concept="3cpWs3" id="6i42QSsp6Fi" role="37wK5m">
                    <node concept="37vLTw" id="6i42QSsp6Fj" role="3uHU7w">
                      <ref role="3cqZAo" node="7nkyKX7nmlh" resolve="details" />
                    </node>
                    <node concept="2OqwBi" id="6i42QSsp6Fk" role="3uHU7B">
                      <node concept="37vLTw" id="6i42QSsp6Fl" role="2Oq$k0">
                        <ref role="3cqZAo" node="7nkyKX7nl0T" resolve="e" />
                      </node>
                      <node concept="liA8E" id="6i42QSsp6Fm" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7nkyKX7nrdm" role="3cqZAp" />
        <node concept="3cpWs6" id="7nkyKX7nru7" role="3cqZAp">
          <node concept="2YIFZM" id="6i42QSspfHj" role="3cqZAk">
            <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
            <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSy_Bt" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1pL7f" role="jymVt">
      <property role="TrG5h" value="produceAllWithNoInput" />
      <node concept="3uibUv" id="5NuEpF1pL7k" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="6i42QSspC2P" role="1B3o_S" />
      <node concept="3clFbS" id="5NuEpF1pL7m" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1qhgB" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1qhgC" role="3cpWs9">
            <property role="TrG5h" value="triples" />
            <node concept="A3Dl8" id="5NuEpF1qhgD" role="1tU5fm">
              <node concept="1LlUBW" id="7t5VLKHaWTl" role="A3Ik2">
                <node concept="3uibUv" id="1CcQBrPgsgI" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="3uibUv" id="1ffsG7c4WcZ" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="3uibUv" id="7t5VLKHaZmN" role="1Lm7xW">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5NuEpF1qhgF" role="33vP2m">
              <node concept="37vLTw" id="5NuEpF1qhgG" role="2Oq$k0">
                <ref role="3cqZAo" node="5ntLU8GlznG" resolve="ruleTemplateIndex" />
              </node>
              <node concept="liA8E" id="5NuEpF1qhgH" role="2OqNvi">
                <ref role="37wK5l" node="5NuEpF1qn9x" resolve="allTemplatesWithNoInput" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6i42QSssmGd" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSssmGe" role="3cpWs9">
            <property role="TrG5h" value="res2reqd" />
            <node concept="1LlUBW" id="6i42QSssmEX" role="1tU5fm">
              <node concept="3uibUv" id="6i42QSssmF6" role="1Lm7xW">
                <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
              </node>
              <node concept="3vKaQO" id="6i42QSssmF7" role="1Lm7xW">
                <node concept="3Tqbb2" id="6i42QSssmF8" role="3O5elw" />
              </node>
            </node>
            <node concept="1rXfSq" id="6i42QSssmGf" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyAndCollectRequired" />
              <node concept="37vLTw" id="6i42QSssmGg" role="37wK5m">
                <ref role="3cqZAo" node="5NuEpF1qhgC" resolve="triples" />
              </node>
              <node concept="10Nm6u" id="6i42QSssmGh" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6i42QSsstIH" role="3cqZAp">
          <node concept="1LFfDK" id="6i42QSss$Iq" role="3cqZAk">
            <node concept="37vLTw" id="6i42QSssy_T" role="1LFl5Q">
              <ref role="3cqZAo" node="6i42QSssmGe" resolve="res2reqd" />
            </node>
            <node concept="3cmrfG" id="6i42QSssFNR" role="1LF_Uc">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3cHjmmLLzBm" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyNqcj" role="jymVt">
      <property role="TrG5h" value="produceAll" />
      <node concept="37vLTG" id="12yN8DyNqcH" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNqcW" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7Oc59RSFzo8" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="6i42QSspDOE" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqcn" role="3clF47">
        <node concept="3SKdUt" id="2JQZWxFb3w_" role="3cqZAp">
          <node concept="3SKdUq" id="2JQZWxFb4lU" role="3SKWNk">
            <property role="3SKdUp" value="walk the AST and apply templates" />
          </node>
        </node>
        <node concept="3cpWs8" id="2JQZWxFb1vW" role="3cqZAp">
          <node concept="3cpWsn" id="2JQZWxFb1vX" role="3cpWs9">
            <property role="TrG5h" value="applyingResult" />
            <node concept="1rXfSq" id="2JQZWxFb1vY" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1LouZ" resolve="walk" />
              <node concept="37vLTw" id="2JQZWxFb1w1" role="37wK5m">
                <ref role="3cqZAo" node="12yN8DyNqcH" resolve="root" />
              </node>
              <node concept="3clFbT" id="2JQZWxFb1w2" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
            <node concept="3uibUv" id="4MqhgXU_SOU" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6i42QSsvMaB" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSsvMaC" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6i42QSsvMa_" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="4MqhgXU_Uib" role="33vP2m">
              <node concept="37vLTw" id="4MqhgXU_TWF" role="2Oq$k0">
                <ref role="3cqZAo" node="2JQZWxFb1vX" resolve="applyingResult" />
              </node>
              <node concept="2OwXpG" id="4MqhgXU_UvP" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSswg8x" role="3cqZAp" />
        <node concept="3SKdUt" id="2JQZWxFb5kF" role="3cqZAp">
          <node concept="3SKdUq" id="2JQZWxFb6a2" role="3SKWNk">
            <property role="3SKdUp" value="process the required roots" />
          </node>
        </node>
        <node concept="3clFbF" id="6i42QSsw9Xa" role="3cqZAp">
          <node concept="2OqwBi" id="6i42QSsw9Xc" role="3clFbG">
            <node concept="37vLTw" id="6i42QSsw9Xd" role="2Oq$k0">
              <ref role="3cqZAo" node="6i42QSsvMaC" resolve="result" />
            </node>
            <node concept="liA8E" id="6i42QSsw9Xe" role="2OqNvi">
              <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
              <node concept="1rXfSq" id="6i42QSsw9Xf" role="37wK5m">
                <ref role="37wK5l" node="tIwzd1MM22" resolve="produceRequired" />
                <node concept="1Ls8ON" id="6i42QSsw9Xg" role="37wK5m">
                  <node concept="2OqwBi" id="4MqhgXU_Vnf" role="1Lso8e">
                    <node concept="37vLTw" id="4MqhgXU_V6z" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JQZWxFb1vX" resolve="applyingResult" />
                    </node>
                    <node concept="2OwXpG" id="4MqhgXU_VyO" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4MqhgXU_WkK" role="1Lso8e">
                    <node concept="37vLTw" id="4MqhgXU_W0R" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JQZWxFb1vX" resolve="applyingResult" />
                    </node>
                    <node concept="2OwXpG" id="4MqhgXU_WC3" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1LqJe" role="jymVt" />
    <node concept="3clFb_" id="3cHjmmLLyCb" role="jymVt">
      <property role="TrG5h" value="produceInterfacePart" />
      <node concept="37vLTG" id="3cHjmmLLyCc" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="3cHjmmLLyCd" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3cHjmmLLyCg" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="6i42QSspF_Y" role="1B3o_S" />
      <node concept="3clFbS" id="3cHjmmLLyCi" role="3clF47">
        <node concept="3SKdUt" id="6i42QSswp5A" role="3cqZAp">
          <node concept="3SKdUq" id="6i42QSswp5B" role="3SKWNk">
            <property role="3SKdUp" value="walk the AST and apply templates" />
          </node>
        </node>
        <node concept="3cpWs8" id="6i42QSswp5C" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSswp5D" role="3cpWs9">
            <property role="TrG5h" value="applyingResult" />
            <node concept="1rXfSq" id="6i42QSswp5K" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1LouZ" resolve="walk" />
              <node concept="37vLTw" id="6i42QSswp5L" role="37wK5m">
                <ref role="3cqZAo" node="3cHjmmLLyCc" resolve="root" />
              </node>
              <node concept="3clFbT" id="6i42QSswp5M" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="3uibUv" id="4MqhgXU_SCL" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6i42QSswp5N" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSswp5O" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6i42QSswp5P" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="4MqhgXU_XJN" role="33vP2m">
              <node concept="37vLTw" id="4MqhgXU_Xv$" role="2Oq$k0">
                <ref role="3cqZAo" node="6i42QSswp5D" resolve="applyingResult" />
              </node>
              <node concept="2OwXpG" id="4MqhgXU_XU9" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSswp5T" role="3cqZAp" />
        <node concept="3SKdUt" id="6i42QSswp5U" role="3cqZAp">
          <node concept="3SKdUq" id="6i42QSswp5V" role="3SKWNk">
            <property role="3SKdUp" value="process the required roots" />
          </node>
        </node>
        <node concept="3clFbF" id="6i42QSswp5W" role="3cqZAp">
          <node concept="2OqwBi" id="6i42QSswp5X" role="3clFbG">
            <node concept="37vLTw" id="6i42QSswp5Y" role="2Oq$k0">
              <ref role="3cqZAo" node="6i42QSswp5O" resolve="result" />
            </node>
            <node concept="liA8E" id="6i42QSswp5Z" role="2OqNvi">
              <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
              <node concept="1rXfSq" id="6i42QSswp60" role="37wK5m">
                <ref role="37wK5l" node="tIwzd1MM22" resolve="produceRequired" />
                <node concept="1Ls8ON" id="6i42QSswp61" role="37wK5m">
                  <node concept="2OqwBi" id="4MqhgXU_YJM" role="1Lso8e">
                    <node concept="37vLTw" id="4MqhgXU_Yiq" role="2Oq$k0">
                      <ref role="3cqZAo" node="6i42QSswp5D" resolve="applyingResult" />
                    </node>
                    <node concept="2OwXpG" id="4MqhgXU_Z0n" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4MqhgXU_ZMr" role="1Lso8e">
                    <node concept="37vLTw" id="4MqhgXU_Zuy" role="2Oq$k0">
                      <ref role="3cqZAo" node="6i42QSswp5D" resolve="applyingResult" />
                    </node>
                    <node concept="2OwXpG" id="4MqhgXUA05I" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1MNCr" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1MM22" role="jymVt">
      <property role="TrG5h" value="produceRequired" />
      <node concept="3Tm6S6" id="tIwzd1MM23" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsq0Nv" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="37vLTG" id="tIwzd1MM1I" role="3clF46">
        <property role="TrG5h" value="required_visited" />
        <node concept="1LlUBW" id="tIwzd1MM1J" role="1tU5fm">
          <node concept="3vKaQO" id="tIwzd1MM1K" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1MM1L" role="3O5elw" />
          </node>
          <node concept="3vKaQO" id="tIwzd1MM1M" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1MM1N" role="3O5elw" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1MM0J" role="3clF47">
        <node concept="3cpWs8" id="6i42QSsq4kW" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSsq4kX" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6i42QSsq4kV" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="6i42QSsq4kY" role="33vP2m">
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSsq4Td" role="3cqZAp" />
        <node concept="3cpWs8" id="tIwzd1MM0K" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1MM0L" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="tIwzd1MM0M" role="1tU5fm">
              <node concept="3Tqbb2" id="tIwzd1MM0N" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="tIwzd1MM0O" role="33vP2m">
              <node concept="2i4dXS" id="tIwzd1MM0P" role="2ShVmc">
                <node concept="3Tqbb2" id="tIwzd1MM0Q" role="HW$YZ" />
                <node concept="1LFfDK" id="6i42QSsvwZ4" role="I$8f6">
                  <node concept="3cmrfG" id="6i42QSsvwZ5" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="6i42QSsvwZ6" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1MM1I" resolve="required_visited" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="tIwzd1MM0Z" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1MM10" role="3cpWs9">
            <property role="TrG5h" value="allRequired" />
            <node concept="_YKpA" id="tIwzd1MM11" role="1tU5fm">
              <node concept="3Tqbb2" id="tIwzd1MM12" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="tIwzd1MM13" role="33vP2m">
              <node concept="2OqwBi" id="tIwzd1MM14" role="2Oq$k0">
                <node concept="2OqwBi" id="tIwzd1MM15" role="2Oq$k0">
                  <node concept="1LFfDK" id="tIwzd1MM16" role="2Oq$k0">
                    <node concept="3cmrfG" id="tIwzd1MM17" role="1LF_Uc">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="tIwzd1MM1X" role="1LFl5Q">
                      <ref role="3cqZAo" node="tIwzd1MM1I" resolve="required_visited" />
                    </node>
                  </node>
                  <node concept="1VAtEI" id="tIwzd1MM19" role="2OqNvi" />
                </node>
                <node concept="66VNe" id="tIwzd1MM1a" role="2OqNvi">
                  <node concept="37vLTw" id="tIwzd1MM1b" role="576Qk">
                    <ref role="3cqZAo" node="tIwzd1MM0L" resolve="visited" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="tIwzd1MM1c" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="tIwzd1MM1d" role="3cqZAp">
          <node concept="3clFbS" id="tIwzd1MM1e" role="2LFqv$">
            <node concept="3cpWs8" id="6i42QSsvfVc" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsvfVd" role="3cpWs9">
                <property role="TrG5h" value="applyingResult" />
                <node concept="1rXfSq" id="6i42QSsvfVe" role="33vP2m">
                  <ref role="37wK5l" node="tIwzd1LKZY" resolve="walk" />
                  <node concept="37vLTw" id="6i42QSsvfVg" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1MM10" resolve="allRequired" />
                  </node>
                </node>
                <node concept="3uibUv" id="4MqhgXU_RVs" role="1tU5fm">
                  <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6i42QSsvqpg" role="3cqZAp">
              <node concept="37vLTI" id="6i42QSsvqPG" role="3clFbG">
                <node concept="2OqwBi" id="6i42QSsvr5W" role="37vLTx">
                  <node concept="37vLTw" id="6i42QSsvr1D" role="2Oq$k0">
                    <ref role="3cqZAo" node="6i42QSsq4kX" resolve="result" />
                  </node>
                  <node concept="liA8E" id="6i42QSsvreX" role="2OqNvi">
                    <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="4MqhgXUA1zd" role="37wK5m">
                      <node concept="37vLTw" id="4MqhgXUA1j8" role="2Oq$k0">
                        <ref role="3cqZAo" node="6i42QSsvfVd" resolve="applyingResult" />
                      </node>
                      <node concept="2OwXpG" id="4MqhgXUA1Lz" role="2OqNvi">
                        <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6i42QSsvqpe" role="37vLTJ">
                  <ref role="3cqZAo" node="6i42QSsq4kX" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="tIwzd1MM1u" role="3cqZAp">
              <node concept="37vLTI" id="tIwzd1MM1v" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1MM1w" role="37vLTJ">
                  <ref role="3cqZAo" node="tIwzd1MM10" resolve="allRequired" />
                </node>
                <node concept="2OqwBi" id="tIwzd1MM1x" role="37vLTx">
                  <node concept="2OqwBi" id="tIwzd1MM1y" role="2Oq$k0">
                    <node concept="2OqwBi" id="tIwzd1MM1z" role="2Oq$k0">
                      <node concept="2OqwBi" id="4MqhgXUA2j$" role="2Oq$k0">
                        <node concept="37vLTw" id="4MqhgXUA24H" role="2Oq$k0">
                          <ref role="3cqZAo" node="6i42QSsvfVd" resolve="applyingResult" />
                        </node>
                        <node concept="2OwXpG" id="4MqhgXUA2ul" role="2OqNvi">
                          <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                        </node>
                      </node>
                      <node concept="1VAtEI" id="tIwzd1MM1B" role="2OqNvi" />
                    </node>
                    <node concept="66VNe" id="tIwzd1MM1C" role="2OqNvi">
                      <node concept="37vLTw" id="tIwzd1MM1D" role="576Qk">
                        <ref role="3cqZAo" node="tIwzd1MM0L" resolve="visited" />
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="tIwzd1MM1E" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="tIwzd1MM1n" role="3cqZAp">
              <node concept="2OqwBi" id="tIwzd1MM1o" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1MM1p" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1MM0L" resolve="visited" />
                </node>
                <node concept="X8dFx" id="tIwzd1MM1q" role="2OqNvi">
                  <node concept="2OqwBi" id="4MqhgXUA4gu" role="25WWJ7">
                    <node concept="37vLTw" id="4MqhgXUA3lG" role="2Oq$k0">
                      <ref role="3cqZAo" node="6i42QSsvfVd" resolve="applyingResult" />
                    </node>
                    <node concept="2OwXpG" id="4MqhgXUA4xx" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="tIwzd1MM1F" role="2$JKZa">
            <node concept="37vLTw" id="tIwzd1MM1G" role="2Oq$k0">
              <ref role="3cqZAo" node="tIwzd1MM10" resolve="allRequired" />
            </node>
            <node concept="3GX2aA" id="tIwzd1MM1H" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSstmT1" role="3cqZAp" />
        <node concept="3clFbF" id="6i42QSstn3v" role="3cqZAp">
          <node concept="37vLTw" id="6i42QSstn3t" role="3clFbG">
            <ref role="3cqZAo" node="6i42QSsq4kX" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RS_GdO" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1LouZ" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="3Tm6S6" id="tIwzd1Lov0" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXU_OfN" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
      </node>
      <node concept="37vLTG" id="tIwzd1LouK" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="tIwzd1LouL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1Luww" role="3clF46">
        <property role="TrG5h" value="interfaceOnly" />
        <node concept="10P_77" id="tIwzd1Lvg1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="tIwzd1Lou5" role="3clF47">
        <node concept="3clFbF" id="6i42QSsuWkf" role="3cqZAp">
          <node concept="2OqwBi" id="6i42QSsuWkh" role="3clFbG">
            <node concept="2ShNRf" id="6i42QSsuWki" role="2Oq$k0">
              <node concept="1pGfFk" id="6i42QSsuWkj" role="2ShVmc">
                <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
                <node concept="2ShNRf" id="6i42QSsuWkk" role="37wK5m">
                  <node concept="HV5vD" id="6i42QSsuWkl" role="2ShVmc">
                    <ref role="HV5vE" node="5ntLU8Glzc7" resolve="ProgramProducer.TemplateApplicator" />
                  </node>
                </node>
                <node concept="3uibUv" id="4MqhgXU_RyE" role="1pMfVU">
                  <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6i42QSsuWks" role="2OqNvi">
              <ref role="37wK5l" node="12yN8DyNqZ$" resolve="deepWalk" />
              <node concept="37vLTw" id="6i42QSsuWkt" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1LouK" resolve="root" />
              </node>
              <node concept="37vLTw" id="6i42QSsuWku" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1Luww" resolve="interfaceOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1pMvG" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1LKZY" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="3Tm6S6" id="tIwzd1LKZZ" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXU_Ik5" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
      </node>
      <node concept="37vLTG" id="tIwzd1LL0a" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="tIwzd1LOMY" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1LPAK" role="A3Ik2" />
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1LL0e" role="3clF47">
        <node concept="3clFbF" id="6i42QSsv5OB" role="3cqZAp">
          <node concept="2OqwBi" id="6i42QSsv5OD" role="3clFbG">
            <node concept="2ShNRf" id="6i42QSsv5OE" role="2Oq$k0">
              <node concept="1pGfFk" id="6i42QSsv5OF" role="2ShVmc">
                <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
                <node concept="2ShNRf" id="6i42QSsv5OG" role="37wK5m">
                  <node concept="HV5vD" id="6i42QSsv5OH" role="2ShVmc">
                    <ref role="HV5vE" node="5ntLU8Glzc7" resolve="ProgramProducer.TemplateApplicator" />
                  </node>
                </node>
                <node concept="3uibUv" id="4MqhgXU_RJ0" role="1pMfVU">
                  <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6i42QSsv5OO" role="2OqNvi">
              <ref role="37wK5l" node="tIwzd1L9h1" resolve="surfaceWalk" />
              <node concept="37vLTw" id="6i42QSsv5OP" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1LL0a" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1LKZX" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8GlSnU" role="jymVt">
      <property role="TrG5h" value="applyTemplate" />
      <node concept="3Tm6S6" id="5ntLU8GlSnV" role="1B3o_S" />
      <node concept="37vLTG" id="5ntLU8GlSnJ" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="1ffsG7c51iR" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="5ntLU8GlSnL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5ntLU8GlSnM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7t5VLKHaEJH" role="3clF46">
        <property role="TrG5h" value="boundParam" />
        <node concept="3uibUv" id="7t5VLKHaGkr" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="5ntLU8GlSnC" role="3clF47">
        <node concept="SfApY" id="7Oc59RSA9rg" role="3cqZAp">
          <node concept="3clFbS" id="7Oc59RSA9ri" role="SfCbr">
            <node concept="3cpWs8" id="6i42QSsqtxd" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsqtxe" role="3cpWs9">
                <property role="TrG5h" value="builders" />
                <node concept="A3Dl8" id="6i42QSsqtx6" role="1tU5fm">
                  <node concept="3uibUv" id="6i42QSsqtx9" role="A3Ik2">
                    <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6i42QSsqtxf" role="33vP2m">
                  <node concept="37vLTw" id="6i42QSsqtxg" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="6i42QSsqtxh" role="2OqNvi">
                    <ref role="37wK5l" to="i348:1ffsG7bWCVq" resolve="apply" />
                    <node concept="37vLTw" id="6i42QSsqtxi" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="6i42QSsqtxj" role="37wK5m">
                      <ref role="3cqZAo" node="7t5VLKHaEJH" resolve="boundParam" />
                    </node>
                    <node concept="37vLTw" id="6i42QSsqtxk" role="37wK5m">
                      <ref role="3cqZAo" node="4JJCDIn5QT7" resolve="applicationSession" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5MHpiyl_Uhz" role="3cqZAp">
              <node concept="1Ls8ON" id="6i42QSsqED_" role="3cqZAk">
                <node concept="2YIFZM" id="6i42QSsqLyn" role="1Lso8e">
                  <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
                  <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="37vLTw" id="6i42QSsqQ9m" role="1Lso8e">
                  <ref role="3cqZAo" node="6i42QSsqtxe" resolve="builders" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7Oc59RSFW0W" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="7Oc59RSA9rj" role="TEbGg">
            <node concept="3cpWsn" id="7Oc59RSA9rl" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="7Oc59RSA9CO" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
              </node>
            </node>
            <node concept="3clFbS" id="7Oc59RSA9rp" role="TDEfX">
              <node concept="3cpWs8" id="2DKqMqOkrp4" role="3cqZAp">
                <node concept="3cpWsn" id="2DKqMqOkrp7" role="3cpWs9">
                  <property role="TrG5h" value="details" />
                  <node concept="17QB3L" id="2DKqMqOkrp2" role="1tU5fm" />
                  <node concept="3K4zz7" id="2DKqMqOksLk" role="33vP2m">
                    <node concept="Xl_RD" id="2DKqMqOksZr" role="3K4GZi" />
                    <node concept="3y3z36" id="2DKqMqOkstt" role="3K4Cdx">
                      <node concept="10Nm6u" id="2DKqMqOksA7" role="3uHU7w" />
                      <node concept="37vLTw" id="2DKqMqOkssf" role="3uHU7B">
                        <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="2DKqMqOksM4" role="3K4E3e">
                      <node concept="2OqwBi" id="2DKqMqOksM5" role="3uHU7w">
                        <node concept="2JrnkZ" id="2DKqMqOksM6" role="2Oq$k0">
                          <node concept="37vLTw" id="2DKqMqOksM7" role="2JrQYb">
                            <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2DKqMqOksM8" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2DKqMqOksM9" role="3uHU7B">
                        <node concept="3cpWs3" id="2DKqMqOktGz" role="3uHU7B">
                          <node concept="Xl_RD" id="2DKqMqOktQj" role="3uHU7B">
                            <property role="Xl_RC" value=" to " />
                          </node>
                          <node concept="2OqwBi" id="2DKqMqOksMg" role="3uHU7w">
                            <node concept="37vLTw" id="2DKqMqOksMh" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                            </node>
                            <node concept="2qgKlT" id="2DKqMqOksMi" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2DKqMqOksMj" role="3uHU7w">
                          <property role="Xl_RC" value="@" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5MHpiylA5DD" role="3cqZAp">
                <node concept="1Ls8ON" id="6i42QSsqS_w" role="3cqZAk">
                  <node concept="2YIFZM" id="6i42QSsqYsb" role="1Lso8e">
                    <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                    <ref role="37wK5l" node="6i42QSsr2_r" resolve="FAIL" />
                    <node concept="3cpWs3" id="6i42QSsr0Ly" role="37wK5m">
                      <node concept="37vLTw" id="6i42QSsr0Lz" role="3uHU7w">
                        <ref role="3cqZAo" node="2DKqMqOkrp7" resolve="details" />
                      </node>
                      <node concept="3cpWs3" id="6i42QSsr0L$" role="3uHU7B">
                        <node concept="3cpWs3" id="6i42QSsr0L_" role="3uHU7B">
                          <node concept="Xl_RD" id="6i42QSsr0LA" role="3uHU7B">
                            <property role="Xl_RC" value="Error applying template (" />
                          </node>
                          <node concept="37vLTw" id="6i42QSsr0LB" role="3uHU7w">
                            <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6i42QSsr0LC" role="3uHU7w">
                          <property role="Xl_RC" value=")" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6i42QSsra4M" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RSA9rl" resolve="ex" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="6i42QSswDDK" role="1Lso8e">
                    <node concept="kMnCb" id="6i42QSswGko" role="2ShVmc">
                      <node concept="3uibUv" id="6i42QSswIdZ" role="kMuH3">
                        <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="6i42QSsqj9x" role="3clF45">
        <node concept="3uibUv" id="6i42QSsqniA" role="1Lm7xW">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="A3Dl8" id="5MHpiylC8T$" role="1Lm7xW">
          <node concept="3uibUv" id="5MHpiylCa5h" role="A3Ik2">
            <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8Glzbb" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1I3Xv" role="jymVt">
      <property role="TrG5h" value="applyAndCollectRequired" />
      <node concept="3Tm6S6" id="tIwzd1I3Xw" role="1B3o_S" />
      <node concept="37vLTG" id="tIwzd1I3Xm" role="3clF46">
        <property role="TrG5h" value="triples" />
        <node concept="A3Dl8" id="tIwzd1I3Xn" role="1tU5fm">
          <node concept="1LlUBW" id="7t5VLKHawYT" role="A3Ik2">
            <node concept="3uibUv" id="1CcQBrPeaZd" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
            </node>
            <node concept="3uibUv" id="1ffsG7c4WJ7" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            </node>
            <node concept="3uibUv" id="7t5VLKHayek" role="1Lm7xW">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1I3Xp" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="tIwzd1I3Xq" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="tIwzd1I3Wv" role="3clF47">
        <node concept="3cpWs8" id="6i42QSsrVMN" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSsrVMO" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6i42QSsrVMM" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="6i42QSsrVMP" role="33vP2m">
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="tIwzd1IbDQ" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1IbDT" role="3cpWs9">
            <property role="TrG5h" value="required" />
            <node concept="3vKaQO" id="6i42QSswSBa" role="1tU5fm">
              <node concept="3Tqbb2" id="6i42QSswSBc" role="3O5elw" />
            </node>
            <node concept="2ShNRf" id="tIwzd1Ic2T" role="33vP2m">
              <node concept="2i4dXS" id="tIwzd1Ic1R" role="2ShVmc">
                <node concept="3Tqbb2" id="tIwzd1Ic1S" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSsxa9S" role="3cqZAp" />
        <node concept="1DcWWT" id="tIwzd1I3Ww" role="3cqZAp">
          <node concept="3clFbS" id="tIwzd1I3Wx" role="2LFqv$">
            <node concept="3cpWs8" id="1CcQBrPen4r" role="3cqZAp">
              <node concept="3cpWsn" id="1CcQBrPen4s" role="3cpWs9">
                <property role="TrG5h" value="stage" />
                <node concept="3uibUv" id="1CcQBrPen46" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="1LFfDK" id="1CcQBrPen4t" role="33vP2m">
                  <node concept="3cmrfG" id="1CcQBrPen4u" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="1CcQBrPen4v" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4MqhgXUBzFn" role="3cqZAp">
              <node concept="3cpWsn" id="4MqhgXUBzFo" role="3cpWs9">
                <property role="TrG5h" value="template" />
                <node concept="3uibUv" id="4MqhgXUBzF7" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="1LFfDK" id="4MqhgXUBzFp" role="33vP2m">
                  <node concept="3cmrfG" id="4MqhgXUBzFq" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4MqhgXUBzFr" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7t5VLKHaCPl" role="3cqZAp">
              <node concept="3cpWsn" id="7t5VLKHaCPm" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="7t5VLKHaCP5" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="1LFfDK" id="7t5VLKHaCPn" role="33vP2m">
                  <node concept="3cmrfG" id="7t5VLKHaCPo" role="1LF_Uc">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="7t5VLKHaCPp" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUB$qu" role="3cqZAp" />
            <node concept="3cpWs8" id="6i42QSsrrpL" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsrrpM" role="3cpWs9">
                <property role="TrG5h" value="result_builder" />
                <node concept="1LlUBW" id="6i42QSsrrp$" role="1tU5fm">
                  <node concept="3uibUv" id="6i42QSsrrpJ" role="1Lm7xW">
                    <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
                  </node>
                  <node concept="A3Dl8" id="6i42QSsrrpH" role="1Lm7xW">
                    <node concept="3uibUv" id="6i42QSsrrpI" role="A3Ik2">
                      <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="6i42QSsrrpN" role="33vP2m">
                  <ref role="37wK5l" node="5ntLU8GlSnU" resolve="applyTemplate" />
                  <node concept="37vLTw" id="4MqhgXUBzFs" role="37wK5m">
                    <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                  </node>
                  <node concept="37vLTw" id="6i42QSsrrpR" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="6i42QSsrrpS" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKHaCPm" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6i42QSsrCE1" role="3cqZAp">
              <node concept="3clFbS" id="6i42QSsrCE3" role="3clFbx">
                <node concept="3cpWs8" id="4MqhgXUBix1" role="3cqZAp">
                  <node concept="3cpWsn" id="4MqhgXUBix2" role="3cpWs9">
                    <property role="TrG5h" value="builders" />
                    <node concept="3vKaQO" id="4MqhgXUBnCR" role="1tU5fm">
                      <node concept="3uibUv" id="4MqhgXUBprf" role="3O5elw">
                        <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="4MqhgXUBmIF" role="33vP2m">
                      <node concept="Tc6Ow" id="4MqhgXUBmIG" role="2ShVmc">
                        <node concept="3uibUv" id="4MqhgXUBmIH" role="HW$YZ">
                          <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
                        </node>
                        <node concept="1LFfDK" id="4MqhgXUBmII" role="I$8f6">
                          <node concept="3cmrfG" id="4MqhgXUBmIJ" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="4MqhgXUBmIK" role="1LFl5Q">
                            <ref role="3cqZAo" node="6i42QSsrrpM" resolve="result_builder" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="SfApY" id="tIwzd1I3W$" role="3cqZAp">
                  <node concept="3clFbS" id="tIwzd1I3W_" role="SfCbr">
                    <node concept="2Gpval" id="tIwzd1I3Wy" role="3cqZAp">
                      <node concept="3clFbS" id="tIwzd1I3Wz" role="2LFqv$">
                        <node concept="3clFbJ" id="6i42QSsjOPU" role="3cqZAp">
                          <node concept="3clFbS" id="6i42QSsjOPW" role="3clFbx">
                            <node concept="3SKdUt" id="4MqhgXUCa7a" role="3cqZAp">
                              <node concept="3SKdUq" id="4MqhgXUCa7c" role="3SKWNk">
                                <property role="3SKdUp" value="goals get triggered by the &quot;main&quot; constraint" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="6i42QSsByAx" role="3cqZAp">
                              <node concept="2OqwBi" id="6i42QSsByLa" role="3clFbG">
                                <node concept="2GrUjf" id="6i42QSsByAv" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="6i42QSsBzce" role="2OqNvi">
                                  <ref role="37wK5l" to="nz6g:7eGEHDlc$bR" resolve="appendHeadKept" />
                                  <node concept="37vLTw" id="6i42QSsBzX7" role="37wK5m">
                                    <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="6i42QSsjP5I" role="3clFbw">
                            <node concept="2OqwBi" id="6i42QSsjP$b" role="3fr31v">
                              <node concept="2GrUjf" id="6i42QSsjPkg" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                              </node>
                              <node concept="liA8E" id="6i42QSsjQ58" role="2OqNvi">
                                <ref role="37wK5l" to="nz6g:7nkyKX7mcq7" resolve="hasHead" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6i42QSsDtbA" role="3cqZAp">
                          <node concept="3clFbS" id="6i42QSsDtbC" role="3clFbx">
                            <node concept="3SKdUt" id="4MqhgXUCar2" role="3cqZAp">
                              <node concept="3SKdUq" id="4MqhgXUCar4" role="3SKWNk">
                                <property role="3SKdUp" value="facts have &quot;assert(true)&quot; in the body" />
                              </node>
                            </node>
                            <node concept="3SKdUt" id="4MqhgXUCaOO" role="3cqZAp">
                              <node concept="3SKdUq" id="4MqhgXUCaOQ" role="3SKWNk">
                                <property role="3SKdUp" value="TODO: support facts" />
                              </node>
                            </node>
                            <node concept="3SKdUt" id="6i42QSsDyfr" role="3cqZAp">
                              <node concept="3SKdUq" id="6i42QSsDyft" role="3SKWNk">
                                <property role="3SKdUp" value="FIXME: support rules that only add required roots instead of this hack!" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="6i42QSsDvfw" role="3cqZAp">
                              <node concept="2OqwBi" id="6i42QSsDvq9" role="3clFbG">
                                <node concept="2GrUjf" id="6i42QSsDvfu" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="6i42QSsDvRB" role="2OqNvi">
                                  <ref role="37wK5l" to="nz6g:7eGEHDlc$aw" resolve="appendBody" />
                                  <node concept="2ShNRf" id="6i42QSsDw$1" role="37wK5m">
                                    <node concept="1pGfFk" id="6i42QSsDx$h" role="2ShVmc">
                                      <ref role="37wK5l" to="cxk7:4xBopTzrPWl" resolve="AssertPredicate" />
                                      <node concept="10M0yZ" id="6i42QSsDxQe" role="37wK5m">
                                        <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                                        <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="6i42QSsDtnF" role="3clFbw">
                            <node concept="2OqwBi" id="6i42QSsDtDQ" role="3fr31v">
                              <node concept="2GrUjf" id="6i42QSsDttP" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                              </node>
                              <node concept="liA8E" id="6i42QSsDu6Z" role="2OqNvi">
                                <ref role="37wK5l" to="nz6g:7nkyKX7mnWq" resolve="hasBody" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4MqhgXUBix6" role="2GsD0m">
                        <ref role="3cqZAo" node="4MqhgXUBix2" resolve="builders" />
                      </node>
                      <node concept="2GrKxI" id="tIwzd1I3Xb" role="2Gsz3X">
                        <property role="TrG5h" value="builder" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="4MqhgXUBpUs" role="3cqZAp" />
                    <node concept="3cpWs8" id="1CcQBrPh2t3" role="3cqZAp">
                      <node concept="3cpWsn" id="1CcQBrPh2t4" role="3cpWs9">
                        <property role="TrG5h" value="ruleTable" />
                        <node concept="3uibUv" id="1CcQBrPh2s$" role="1tU5fm">
                          <ref role="3uigEE" node="4MqhgXUBidO" resolve="RuleTable" />
                        </node>
                        <node concept="3EllGN" id="1CcQBrPh2t5" role="33vP2m">
                          <node concept="37vLTw" id="1CcQBrPh2t6" role="3ElVtu">
                            <ref role="3cqZAo" node="1CcQBrPen4s" resolve="stage" />
                          </node>
                          <node concept="37vLTw" id="1CcQBrPh2t7" role="3ElQJh">
                            <ref role="3cqZAo" node="4MqhgXUBtmF" resolve="ruleTables" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1CcQBrPh3Pg" role="3cqZAp">
                      <node concept="3clFbS" id="1CcQBrPh3Po" role="3clFbx">
                        <node concept="3clFbF" id="1CcQBrPh4GF" role="3cqZAp">
                          <node concept="37vLTI" id="1CcQBrPh5MG" role="3clFbG">
                            <node concept="1eOMI4" id="1CcQBrPh67T" role="37vLTx">
                              <node concept="37vLTI" id="1CcQBrPh6FM" role="1eOMHV">
                                <node concept="2ShNRf" id="1CcQBrPh6MF" role="37vLTx">
                                  <node concept="HV5vD" id="1CcQBrPh7an" role="2ShVmc">
                                    <ref role="HV5vE" node="4MqhgXUBidO" resolve="RuleTable" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="1CcQBrPh6pe" role="37vLTJ">
                                  <ref role="3cqZAo" node="1CcQBrPh2t4" resolve="ruleTable" />
                                </node>
                              </node>
                            </node>
                            <node concept="3EllGN" id="1CcQBrPh5e7" role="37vLTJ">
                              <node concept="37vLTw" id="1CcQBrPh5uh" role="3ElVtu">
                                <ref role="3cqZAo" node="1CcQBrPen4s" resolve="stage" />
                              </node>
                              <node concept="37vLTw" id="1CcQBrPh4GE" role="3ElQJh">
                                <ref role="3cqZAo" node="4MqhgXUBtmF" resolve="ruleTables" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="1CcQBrPh4j8" role="3clFbw">
                        <node concept="10Nm6u" id="1CcQBrPh4j9" role="3uHU7w" />
                        <node concept="37vLTw" id="1CcQBrPh4ja" role="3uHU7B">
                          <ref role="3cqZAo" node="1CcQBrPh2t4" resolve="ruleTable" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4MqhgXUByvU" role="3cqZAp">
                      <node concept="2OqwBi" id="4MqhgXUBz8e" role="3clFbG">
                        <node concept="37vLTw" id="1CcQBrPh7vr" role="2Oq$k0">
                          <ref role="3cqZAo" node="1CcQBrPh2t4" resolve="ruleTable" />
                        </node>
                        <node concept="liA8E" id="4MqhgXUBzq2" role="2OqNvi">
                          <ref role="37wK5l" node="4MqhgXUBieI" resolve="update" />
                          <node concept="37vLTw" id="4MqhgXUBBcH" role="37wK5m">
                            <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                          </node>
                          <node concept="37vLTw" id="4MqhgXUBBMG" role="37wK5m">
                            <ref role="3cqZAo" node="4MqhgXUBix2" resolve="builders" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4MqhgXUC9fy" role="3cqZAp" />
                  </node>
                  <node concept="TDmWw" id="tIwzd1I3WM" role="TEbGg">
                    <node concept="3clFbS" id="tIwzd1I3WN" role="TDEfX">
                      <node concept="3cpWs8" id="2DKqMqOkbMY" role="3cqZAp">
                        <node concept="3cpWsn" id="2DKqMqOkbN1" role="3cpWs9">
                          <property role="TrG5h" value="details" />
                          <node concept="17QB3L" id="2DKqMqOkbMW" role="1tU5fm" />
                          <node concept="3K4zz7" id="2DKqMqOkc_J" role="33vP2m">
                            <node concept="Xl_RD" id="2DKqMqOkdoG" role="3K4GZi">
                              <property role="Xl_RC" value="" />
                            </node>
                            <node concept="3y3z36" id="2DKqMqOkcjZ" role="3K4Cdx">
                              <node concept="10Nm6u" id="2DKqMqOkcsQ" role="3uHU7w" />
                              <node concept="37vLTw" id="2DKqMqOkci$" role="3uHU7B">
                                <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                              </node>
                            </node>
                            <node concept="3cpWs3" id="2DKqMqOkcAG" role="3K4E3e">
                              <node concept="2OqwBi" id="2DKqMqOkcAH" role="3uHU7w">
                                <node concept="2JrnkZ" id="2DKqMqOkcAI" role="2Oq$k0">
                                  <node concept="37vLTw" id="2DKqMqOkcAJ" role="2JrQYb">
                                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2DKqMqOkcAK" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="2DKqMqOkcAL" role="3uHU7B">
                                <node concept="3cpWs3" id="2DKqMqOkcAM" role="3uHU7B">
                                  <node concept="Xl_RD" id="2DKqMqOkcB1" role="3uHU7B">
                                    <property role="Xl_RC" value=" triggered by " />
                                  </node>
                                  <node concept="2OqwBi" id="2DKqMqOkcB2" role="3uHU7w">
                                    <node concept="37vLTw" id="2DKqMqOkcB3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                    </node>
                                    <node concept="2qgKlT" id="2DKqMqOkcB4" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="2DKqMqOkcB5" role="3uHU7w">
                                  <property role="Xl_RC" value="@" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6i42QSss2Wh" role="3cqZAp">
                        <node concept="37vLTI" id="6i42QSss3uW" role="3clFbG">
                          <node concept="2OqwBi" id="6i42QSss3Rm" role="37vLTx">
                            <node concept="37vLTw" id="6i42QSss3D8" role="2Oq$k0">
                              <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                            </node>
                            <node concept="liA8E" id="6i42QSss41w" role="2OqNvi">
                              <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                              <node concept="2YIFZM" id="6i42QSss4Co" role="37wK5m">
                                <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                                <ref role="37wK5l" node="7Oc59RSH6VB" resolve="FAIL" />
                                <node concept="3cpWs3" id="6i42QSss4RR" role="37wK5m">
                                  <node concept="37vLTw" id="6i42QSss4RS" role="3uHU7w">
                                    <ref role="3cqZAo" node="2DKqMqOkbN1" resolve="details" />
                                  </node>
                                  <node concept="3cpWs3" id="6i42QSss4RT" role="3uHU7B">
                                    <node concept="3cpWs3" id="6i42QSss4RU" role="3uHU7B">
                                      <node concept="3cpWs3" id="6i42QSss4RV" role="3uHU7B">
                                        <node concept="2OqwBi" id="6i42QSss4RW" role="3uHU7B">
                                          <node concept="37vLTw" id="6i42QSss4RX" role="2Oq$k0">
                                            <ref role="3cqZAo" node="tIwzd1I3X5" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="6i42QSss4RY" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="6i42QSss4RZ" role="3uHU7w">
                                          <property role="Xl_RC" value="(" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="6i42QSss4S0" role="3uHU7w">
                                        <node concept="37vLTw" id="4MqhgXUBzFt" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                        </node>
                                        <node concept="liA8E" id="6i42QSss4S4" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="6i42QSss4S5" role="3uHU7w">
                                      <property role="Xl_RC" value=")" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="6i42QSss2Wf" role="37vLTJ">
                            <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="tIwzd1I3X5" role="TDEfY">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="tIwzd1I3X6" role="1tU5fm">
                        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6i42QSsrMxD" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6i42QSsrFkd" role="3clFbw">
                <node concept="1LFfDK" id="6i42QSsrEXD" role="2Oq$k0">
                  <node concept="3cmrfG" id="6i42QSsrFc5" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="6i42QSsrDXq" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSsrrpM" resolve="result_builder" />
                  </node>
                </node>
                <node concept="liA8E" id="6i42QSsrFxK" role="2OqNvi">
                  <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
              <node concept="9aQIb" id="6i42QSsrM8O" role="9aQIa">
                <node concept="3clFbS" id="6i42QSsrM8P" role="9aQI4">
                  <node concept="3clFbF" id="6i42QSsrZRl" role="3cqZAp">
                    <node concept="37vLTI" id="6i42QSss0c7" role="3clFbG">
                      <node concept="2OqwBi" id="6i42QSss0Fl" role="37vLTx">
                        <node concept="37vLTw" id="6i42QSss0pH" role="2Oq$k0">
                          <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                        </node>
                        <node concept="liA8E" id="6i42QSss0Nd" role="2OqNvi">
                          <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                          <node concept="1LFfDK" id="6i42QSss2au" role="37wK5m">
                            <node concept="3cmrfG" id="6i42QSss2rC" role="1LF_Uc">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="6i42QSss1bC" role="1LFl5Q">
                              <ref role="3cqZAo" node="6i42QSsrrpM" resolve="result_builder" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6i42QSsrZRk" role="37vLTJ">
                        <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="tIwzd2q_BT" role="3cqZAp" />
            <node concept="3clFbF" id="tIwzd1IckP" role="3cqZAp">
              <node concept="2OqwBi" id="tIwzd1IcEc" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1IckN" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1IbDT" resolve="required" />
                </node>
                <node concept="X8dFx" id="tIwzd1IefT" role="2OqNvi">
                  <node concept="2OqwBi" id="tIwzd1Ifxb" role="25WWJ7">
                    <node concept="37vLTw" id="4MqhgXUBzFu" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                    </node>
                    <node concept="liA8E" id="tIwzd1Igsq" role="2OqNvi">
                      <ref role="37wK5l" to="i348:2q0gzCFLe4l" resolve="required" />
                      <node concept="37vLTw" id="tIwzd1Z9kY" role="37wK5m">
                        <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="2q0gzCFMiDZ" role="37wK5m">
                        <ref role="3cqZAo" node="7t5VLKHaCPm" resolve="context" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="tIwzd1I3Xj" role="1Duv9x">
            <property role="TrG5h" value="tpl" />
            <node concept="1LlUBW" id="7t5VLKHazo3" role="1tU5fm">
              <node concept="3uibUv" id="1CcQBrPeewI" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
              </node>
              <node concept="3uibUv" id="1ffsG7c4Zfy" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
              </node>
              <node concept="3uibUv" id="7t5VLKHa_uS" role="1Lm7xW">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="tIwzd1I3Xs" role="1DdaDG">
            <ref role="3cqZAo" node="tIwzd1I3Xm" resolve="triples" />
          </node>
        </node>
        <node concept="3clFbH" id="6i42QSssfmM" role="3cqZAp" />
        <node concept="3clFbF" id="6i42QSssgtt" role="3cqZAp">
          <node concept="1Ls8ON" id="6i42QSssgtr" role="3clFbG">
            <node concept="37vLTw" id="6i42QSsshRB" role="1Lso8e">
              <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
            </node>
            <node concept="37vLTw" id="6i42QSssigH" role="1Lso8e">
              <ref role="3cqZAo" node="tIwzd1IbDT" resolve="required" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="6i42QSss8Ot" role="3clF45">
        <node concept="3uibUv" id="6i42QSssbTx" role="1Lm7xW">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3vKaQO" id="tIwzd1JBnD" role="1Lm7xW">
          <node concept="3Tqbb2" id="tIwzd1JBnF" role="3O5elw" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7nb0M" role="jymVt" />
    <node concept="312cEu" id="5ntLU8Glzc7" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TemplateApplicator" />
      <node concept="2tJIrI" id="5ntLU8Gl$$1" role="jymVt" />
      <node concept="3clFb_" id="5ntLU8GlzgF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="5ntLU8GlzgG" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="5ntLU8GlzgH" role="1tU5fm" />
        </node>
        <node concept="3Tm1VV" id="5ntLU8GlzgJ" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlzgL" role="3clF47">
          <node concept="3cpWs8" id="5ntLU8GlzSI" role="3cqZAp">
            <node concept="3cpWsn" id="5ntLU8GlzSJ" role="3cpWs9">
              <property role="TrG5h" value="triples" />
              <node concept="A3Dl8" id="5ntLU8GlzSt" role="1tU5fm">
                <node concept="1LlUBW" id="7t5VLKHavfN" role="A3Ik2">
                  <node concept="3uibUv" id="1CcQBrPe8g0" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="1ffsG7c5hrm" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                  <node concept="3uibUv" id="7t5VLKHaw07" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5ntLU8GlzSK" role="33vP2m">
                <node concept="37vLTw" id="5ntLU8GlzSL" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ntLU8GlznG" resolve="ruleTemplateIndex" />
                </node>
                <node concept="liA8E" id="5ntLU8GlzSM" role="2OqNvi">
                  <ref role="37wK5l" node="6fdr4UgfuGk" resolve="allTemplates" />
                  <node concept="37vLTw" id="5ntLU8GlzSN" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4MqhgXU$Tbl" role="3cqZAp" />
          <node concept="3cpWs8" id="tIwzd1Kh_Q" role="3cqZAp">
            <node concept="3cpWsn" id="tIwzd1Kh_R" role="3cpWs9">
              <property role="TrG5h" value="singleton" />
              <node concept="3vKaQO" id="tIwzd1KibV" role="1tU5fm">
                <node concept="3Tqbb2" id="tIwzd1KibX" role="3O5elw" />
              </node>
              <node concept="2ShNRf" id="tIwzd1Kh_S" role="33vP2m">
                <node concept="Tc6Ow" id="tIwzd1Kh_T" role="2ShVmc">
                  <node concept="3Tqbb2" id="tIwzd1Kh_U" role="HW$YZ" />
                  <node concept="37vLTw" id="tIwzd1Kh_V" role="HW$Y0">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6i42QSssRXW" role="3cqZAp">
            <node concept="3cpWsn" id="6i42QSssRXX" role="3cpWs9">
              <property role="TrG5h" value="res2reqd" />
              <node concept="1LlUBW" id="6i42QSssRXK" role="1tU5fm">
                <node concept="3uibUv" id="6i42QSssRXT" role="1Lm7xW">
                  <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="3vKaQO" id="6i42QSssRXU" role="1Lm7xW">
                  <node concept="3Tqbb2" id="6i42QSssRXV" role="3O5elw" />
                </node>
              </node>
              <node concept="1rXfSq" id="6i42QSssRXY" role="33vP2m">
                <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyAndCollectRequired" />
                <node concept="37vLTw" id="6i42QSssRXZ" role="37wK5m">
                  <ref role="3cqZAo" node="5ntLU8GlzSJ" resolve="triples" />
                </node>
                <node concept="37vLTw" id="6i42QSssRY0" role="37wK5m">
                  <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4MqhgXU_3BT" role="3cqZAp" />
          <node concept="3clFbF" id="4MqhgXU__BJ" role="3cqZAp">
            <node concept="2ShNRf" id="4MqhgXU__BF" role="3clFbG">
              <node concept="1pGfFk" id="4MqhgXU_A60" role="2ShVmc">
                <ref role="37wK5l" node="4MqhgXU_xEx" resolve="ProgramProducer.TemplateApplyingResult" />
                <node concept="1LFfDK" id="4MqhgXU_Aq9" role="37wK5m">
                  <node concept="3cmrfG" id="4MqhgXU_Aqa" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="4MqhgXU_Aqb" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSssRXX" resolve="res2reqd" />
                  </node>
                </node>
                <node concept="1LFfDK" id="4MqhgXU_Aqc" role="37wK5m">
                  <node concept="3cmrfG" id="4MqhgXU_Aqd" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4MqhgXU_Aqe" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSssRXX" resolve="res2reqd" />
                  </node>
                </node>
                <node concept="37vLTw" id="4MqhgXU_Aqf" role="37wK5m">
                  <ref role="3cqZAo" node="tIwzd1Kh_R" resolve="singleton" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4MqhgXU_2zy" role="3clF45">
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5ntLU8Glzld" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glzg8" role="EKbjA">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
        <node concept="3uibUv" id="4MqhgXU_ix8" role="11_B2D">
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSFIrK" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IJm5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="bind" />
        <node concept="37vLTG" id="tIwzd1IJm6" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="3uibUv" id="4MqhgXU_lQw" role="1tU5fm">
            <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
          </node>
        </node>
        <node concept="37vLTG" id="tIwzd1IJm8" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="3uibUv" id="4MqhgXU_mDE" role="1tU5fm">
            <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
          </node>
        </node>
        <node concept="3Tm1VV" id="tIwzd1IJmb" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1IJmj" role="3clF47">
          <node concept="3clFbF" id="4MqhgXU_n8c" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU_nGV" role="3clFbG">
              <node concept="2OqwBi" id="4MqhgXU_orI" role="37vLTx">
                <node concept="2OqwBi" id="4MqhgXU_nWa" role="2Oq$k0">
                  <node concept="37vLTw" id="4MqhgXU_nLN" role="2Oq$k0">
                    <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
                  </node>
                  <node concept="2OwXpG" id="4MqhgXU_oef" role="2OqNvi">
                    <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
                  </node>
                </node>
                <node concept="liA8E" id="4MqhgXU_oyu" role="2OqNvi">
                  <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                  <node concept="2OqwBi" id="4MqhgXU_oWF" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXU_oPW" role="2Oq$k0">
                      <ref role="3cqZAo" node="tIwzd1IJm8" resolve="b" />
                    </node>
                    <node concept="2OwXpG" id="4MqhgXU_pc8" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXU_nfw" role="37vLTJ">
                <node concept="37vLTw" id="4MqhgXU_n8a" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
                </node>
                <node concept="2OwXpG" id="4MqhgXU_nvQ" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXU_pni" role="3cqZAp">
            <node concept="2OqwBi" id="4MqhgXU_ql7" role="3clFbG">
              <node concept="2OqwBi" id="4MqhgXU_pw7" role="2Oq$k0">
                <node concept="37vLTw" id="4MqhgXU_png" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
                </node>
                <node concept="2OwXpG" id="4MqhgXU_pKF" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                </node>
              </node>
              <node concept="X8dFx" id="4MqhgXU_qY0" role="2OqNvi">
                <node concept="2OqwBi" id="4MqhgXU_rRi" role="25WWJ7">
                  <node concept="37vLTw" id="4MqhgXU_rga" role="2Oq$k0">
                    <ref role="3cqZAo" node="tIwzd1IJm8" resolve="b" />
                  </node>
                  <node concept="2OwXpG" id="4MqhgXU_suP" role="2OqNvi">
                    <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXU_sUf" role="3cqZAp">
            <node concept="2OqwBi" id="4MqhgXU_tSa" role="3clFbG">
              <node concept="2OqwBi" id="4MqhgXU_t34" role="2Oq$k0">
                <node concept="37vLTw" id="4MqhgXU_sUd" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
                </node>
                <node concept="2OwXpG" id="4MqhgXU_tjI" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                </node>
              </node>
              <node concept="X8dFx" id="4MqhgXU_uwN" role="2OqNvi">
                <node concept="2OqwBi" id="4MqhgXU_vfQ" role="25WWJ7">
                  <node concept="37vLTw" id="4MqhgXU_uNi" role="2Oq$k0">
                    <ref role="3cqZAo" node="tIwzd1IJm8" resolve="b" />
                  </node>
                  <node concept="2OwXpG" id="4MqhgXU_vVa" role="2OqNvi">
                    <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="tIwzd1Jmqu" role="3cqZAp">
            <node concept="37vLTw" id="tIwzd1Jmqs" role="3clFbG">
              <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4MqhgXU_kHc" role="3clF45">
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
        </node>
      </node>
      <node concept="2tJIrI" id="tIwzd1IJBd" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IQ9L" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="initial" />
        <node concept="3Tm1VV" id="tIwzd1IQ9N" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1IQ9R" role="3clF47">
          <node concept="3clFbF" id="4MqhgXU_aAO" role="3cqZAp">
            <node concept="2ShNRf" id="4MqhgXU_aAK" role="3clFbG">
              <node concept="1pGfFk" id="4MqhgXU_aVw" role="2ShVmc">
                <ref role="37wK5l" node="4MqhgXU_6Bn" resolve="ProgramProducer.TemplateApplyingResult" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4MqhgXU_59g" role="3clF45">
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
        </node>
      </node>
      <node concept="2tJIrI" id="1CcQBrPgAwx" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="5ntLU8GlzbG" role="jymVt" />
    <node concept="312cEu" id="4MqhgXU$YdP" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TemplateApplyingResult" />
      <node concept="2tJIrI" id="1CcQBrPgAXE" role="jymVt" />
      <node concept="3clFbW" id="4MqhgXU_6Bn" role="jymVt">
        <node concept="3cqZAl" id="4MqhgXU_6Bp" role="3clF45" />
        <node concept="3Tm6S6" id="4MqhgXU_6Bq" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXU_6Br" role="3clF47">
          <node concept="3clFbF" id="4MqhgXU_6Q4" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU_7co" role="3clFbG">
              <node concept="2YIFZM" id="4MqhgXU_7NE" role="37vLTx">
                <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
                <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              </node>
              <node concept="2OqwBi" id="4MqhgXU_6Vu" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXU_6Q3" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXU_70X" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXU_8m7" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU_9bf" role="3clFbG">
              <node concept="2OqwBi" id="4MqhgXU_8sx" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXU_8m5" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXU_8B6" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                </node>
              </node>
              <node concept="2ShNRf" id="4MqhgXU_9Uc" role="37vLTx">
                <node concept="Tc6Ow" id="4MqhgXU_9Ud" role="2ShVmc">
                  <node concept="3Tqbb2" id="4MqhgXU_9Ue" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXU_9Zw" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU_9Zx" role="3clFbG">
              <node concept="2OqwBi" id="4MqhgXU_9Zy" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXU_9Zz" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXU_ad8" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                </node>
              </node>
              <node concept="2ShNRf" id="4MqhgXU_9Z_" role="37vLTx">
                <node concept="Tc6Ow" id="4MqhgXU_9ZA" role="2ShVmc">
                  <node concept="3Tqbb2" id="4MqhgXU_9ZB" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1CcQBrPgCMt" role="jymVt" />
      <node concept="3clFbW" id="4MqhgXU_xEx" role="jymVt">
        <node concept="37vLTG" id="4MqhgXU_ypL" role="3clF46">
          <property role="TrG5h" value="result" />
          <node concept="3uibUv" id="4MqhgXU_yqB" role="1tU5fm">
            <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
        <node concept="37vLTG" id="4MqhgXU_yxm" role="3clF46">
          <property role="TrG5h" value="required" />
          <node concept="3vKaQO" id="4MqhgXU_yyo" role="1tU5fm">
            <node concept="3Tqbb2" id="4MqhgXU_yzn" role="3O5elw" />
          </node>
        </node>
        <node concept="37vLTG" id="4MqhgXU_y$h" role="3clF46">
          <property role="TrG5h" value="processed" />
          <node concept="3vKaQO" id="4MqhgXU_y_A" role="1tU5fm">
            <node concept="3Tqbb2" id="4MqhgXU_yA_" role="3O5elw" />
          </node>
        </node>
        <node concept="3cqZAl" id="4MqhgXU_xEz" role="3clF45" />
        <node concept="3Tm6S6" id="4MqhgXU_xE$" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXU_xE_" role="3clF47">
          <node concept="3clFbF" id="4MqhgXU_yF8" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU_z1G" role="3clFbG">
              <node concept="37vLTw" id="4MqhgXU_z6J" role="37vLTx">
                <ref role="3cqZAo" node="4MqhgXU_ypL" resolve="result" />
              </node>
              <node concept="2OqwBi" id="4MqhgXU_yKy" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXU_yF7" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXU_yQ1" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXU_zcI" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU_zX3" role="3clFbG">
              <node concept="37vLTw" id="4MqhgXU_$8K" role="37vLTx">
                <ref role="3cqZAo" node="4MqhgXU_yxm" resolve="required" />
              </node>
              <node concept="2OqwBi" id="4MqhgXU_zj5" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXU_zcG" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXU_zoG" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXU_$nx" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU__hD" role="3clFbG">
              <node concept="37vLTw" id="4MqhgXU__uL" role="37vLTx">
                <ref role="3cqZAo" node="4MqhgXU_y$h" resolve="processed" />
              </node>
              <node concept="2OqwBi" id="4MqhgXU_$yz" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXU_$nv" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXU_$Hg" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1CcQBrPgE_P" role="jymVt" />
      <node concept="312cEg" id="4MqhgXU_0Wz" role="jymVt">
        <property role="TrG5h" value="result" />
        <node concept="3Tm6S6" id="4MqhgXU_0W$" role="1B3o_S" />
        <node concept="3uibUv" id="4MqhgXU_11X" role="1tU5fm">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
      </node>
      <node concept="312cEg" id="4MqhgXU_1ti" role="jymVt">
        <property role="TrG5h" value="required" />
        <node concept="3Tm6S6" id="4MqhgXU_1tj" role="1B3o_S" />
        <node concept="3vKaQO" id="4MqhgXU_1vi" role="1tU5fm">
          <node concept="3Tqbb2" id="4MqhgXU_1vT" role="3O5elw" />
        </node>
      </node>
      <node concept="312cEg" id="4MqhgXU_1wg" role="jymVt">
        <property role="TrG5h" value="visited" />
        <node concept="3Tm6S6" id="4MqhgXU_1wh" role="1B3o_S" />
        <node concept="3vKaQO" id="4MqhgXU_1wi" role="1tU5fm">
          <node concept="3Tqbb2" id="4MqhgXU_1wj" role="3O5elw" />
        </node>
      </node>
      <node concept="2tJIrI" id="1CcQBrPgGwJ" role="jymVt" />
      <node concept="3Tm6S6" id="4MqhgXU_10h" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4MqhgXU$W9e" role="jymVt" />
    <node concept="312cEg" id="5ntLU8GlznG" role="jymVt">
      <property role="TrG5h" value="ruleTemplateIndex" />
      <node concept="3Tm6S6" id="5ntLU8GlznH" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glzou" role="1tU5fm">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="312cEg" id="6i42QSsj_y2" role="jymVt">
      <property role="TrG5h" value="mainConstraint" />
      <node concept="3Tm6S6" id="6i42QSsj_y3" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsjBno" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
    </node>
    <node concept="312cEg" id="4JJCDIn5QT7" role="jymVt">
      <property role="TrG5h" value="applicationSession" />
      <node concept="3Tm6S6" id="4JJCDIn5QT8" role="1B3o_S" />
      <node concept="3uibUv" id="4JJCDIn5Sqo" role="1tU5fm">
        <ref role="3uigEE" to="nz6g:18kNIl1vDPZ" resolve="ApplicationSession" />
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXUBtmF" role="jymVt">
      <property role="TrG5h" value="ruleTables" />
      <node concept="3Tm6S6" id="4MqhgXUBtmG" role="1B3o_S" />
      <node concept="3rvAFt" id="1CcQBrPgZ71" role="1tU5fm">
        <node concept="3uibUv" id="1CcQBrPgZto" role="3rvQeY">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
        <node concept="3uibUv" id="1CcQBrPgZJH" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUBidO" resolve="RuleTable" />
        </node>
      </node>
      <node concept="2ShNRf" id="1CcQBrPh0w5" role="33vP2m">
        <node concept="3rGOSV" id="1CcQBrPh0ro" role="2ShVmc">
          <node concept="3uibUv" id="1CcQBrPh0rp" role="3rHrn6">
            <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
          </node>
          <node concept="3uibUv" id="1CcQBrPh0rq" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUBidO" resolve="RuleTable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrPgJ1_" role="jymVt" />
  </node>
  <node concept="312cEu" id="7Oc59RSEjdb">
    <property role="TrG5h" value="Result" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7Oc59RSEmi9" role="jymVt" />
    <node concept="2YIFZL" id="7Oc59RSEjeq" role="jymVt">
      <property role="TrG5h" value="OK" />
      <node concept="3uibUv" id="7Oc59RSEjeG" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSEjet" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSEjeu" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSEm38" role="3cqZAp">
          <node concept="37vLTw" id="7Oc59RSEme7" role="3clFbG">
            <ref role="3cqZAo" node="7Oc59RSEmdT" resolve="OK_RESULT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSErES" role="jymVt" />
    <node concept="2YIFZL" id="7Oc59RSH6VB" role="jymVt">
      <property role="TrG5h" value="FAIL" />
      <node concept="37vLTG" id="7Oc59RSH6VC" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="17QB3L" id="2pvEdqukxHV" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7Oc59RSH6VF" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSH6VG" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSH6VH" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSH6VI" role="3cqZAp">
          <node concept="2ShNRf" id="7Oc59RSH6VJ" role="3clFbG">
            <node concept="1pGfFk" id="7Oc59RSH6VK" role="2ShVmc">
              <ref role="37wK5l" node="7Oc59RSEm0l" resolve="Result.FAILURE" />
              <node concept="2ShNRf" id="7Oc59RSH8xe" role="37wK5m">
                <node concept="1pGfFk" id="7Oc59RSH8Ik" role="2ShVmc">
                  <ref role="37wK5l" node="6i42QSs$lgE" resolve="Result.ReportedError" />
                  <node concept="37vLTw" id="7Oc59RSH8K8" role="37wK5m">
                    <ref role="3cqZAo" node="7Oc59RSH6VC" resolve="error" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSFgx_" role="jymVt" />
    <node concept="2YIFZL" id="6i42QSsr2_r" role="jymVt">
      <property role="TrG5h" value="FAIL" />
      <node concept="37vLTG" id="6i42QSsr2_s" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="17QB3L" id="6i42QSsr2_t" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6i42QSsr63a" role="3clF46">
        <property role="TrG5h" value="cause" />
        <node concept="3uibUv" id="6i42QSsr6Lo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3uibUv" id="6i42QSsr2_u" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="6i42QSsr2_v" role="1B3o_S" />
      <node concept="3clFbS" id="6i42QSsr2_w" role="3clF47">
        <node concept="3clFbF" id="6i42QSsr2_x" role="3cqZAp">
          <node concept="2ShNRf" id="6i42QSsr2_y" role="3clFbG">
            <node concept="1pGfFk" id="6i42QSsr2_z" role="2ShVmc">
              <ref role="37wK5l" node="7Oc59RSEm0l" resolve="Result.FAILURE" />
              <node concept="2ShNRf" id="6i42QSsr2_$" role="37wK5m">
                <node concept="1pGfFk" id="6i42QSsr2__" role="2ShVmc">
                  <ref role="37wK5l" node="6i42QSs$lgR" resolve="Result.ReportedError" />
                  <node concept="37vLTw" id="6i42QSsr2_A" role="37wK5m">
                    <ref role="3cqZAo" node="6i42QSsr2_s" resolve="error" />
                  </node>
                  <node concept="37vLTw" id="6i42QSsr7uN" role="37wK5m">
                    <ref role="3cqZAo" node="6i42QSsr63a" resolve="cause" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6i42QSsr2_q" role="jymVt" />
    <node concept="Wx3nA" id="7Oc59RSEmdT" role="jymVt">
      <property role="TrG5h" value="OK_RESULT" />
      <node concept="3Tm6S6" id="7Oc59RSEmdS" role="1B3o_S" />
      <node concept="3uibUv" id="7Oc59RSEmdH" role="1tU5fm">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="2ShNRf" id="7Oc59RSJqdQ" role="33vP2m">
        <node concept="HV5vD" id="7Oc59RSJqoK" role="2ShVmc">
          <ref role="HV5vE" node="7Oc59RSJo_6" resolve="Result.OK" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSEp6D" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RS_hsj" role="jymVt">
      <property role="TrG5h" value="isSuccessful" />
      <property role="1EzhhJ" value="true" />
      <node concept="10P_77" id="7Oc59RS_hKI" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RS_hsm" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RS_hsn" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7Oc59RSEn_B" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSEnG3" role="jymVt">
      <property role="TrG5h" value="errors" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7nkyKX7v6k0" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="7nkyKX7v6$H" role="11_B2D">
          <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7Oc59RSEnG6" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSEnG7" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7Oc59RSHlRX" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7v7xb" role="jymVt">
      <property role="TrG5h" value="and" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7nkyKX7v8km" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="7nkyKX7v8$H" role="1tU5fm">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
      </node>
      <node concept="3uibUv" id="7nkyKX7v7OX" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7nkyKX7v7xe" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7v7xf" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6i42QSsnbSG" role="jymVt" />
    <node concept="3clFb_" id="6i42QSsna8j" role="jymVt">
      <property role="TrG5h" value="message" />
      <property role="1EzhhJ" value="true" />
      <node concept="17QB3L" id="6i42QSsnevw" role="3clF45" />
      <node concept="3Tm1VV" id="6i42QSsna8n" role="1B3o_S" />
      <node concept="3clFbS" id="6i42QSsna8o" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7nkyKX7v1JM" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSJr0t" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7Oc59RSJr0u" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHU" role="3clF45" />
      <node concept="3clFbS" id="7Oc59RSJr0x" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSJs9G" role="3cqZAp">
          <node concept="3cpWs3" id="7Oc59RSJw2n" role="3clFbG">
            <node concept="Xl_RD" id="7Oc59RSJwc3" role="3uHU7w">
              <property role="Xl_RC" value=" errors)" />
            </node>
            <node concept="3cpWs3" id="7Oc59RSJwwQ" role="3uHU7B">
              <node concept="2OqwBi" id="7Oc59RSJwWK" role="3uHU7w">
                <node concept="1rXfSq" id="7Oc59RSJwFn" role="2Oq$k0">
                  <ref role="37wK5l" node="7Oc59RSEnG3" resolve="errors" />
                </node>
                <node concept="liA8E" id="7nkyKX7vfHY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.size():int" resolve="size" />
                </node>
              </node>
              <node concept="3cpWs3" id="7Oc59RSJuJa" role="3uHU7B">
                <node concept="2OqwBi" id="7Oc59RSJssQ" role="3uHU7B">
                  <node concept="1rXfSq" id="7Oc59RSJs9F" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSJuyR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName():java.lang.String" resolve="getSimpleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7Oc59RSJvII" role="3uHU7w">
                  <property role="Xl_RC" value=" (" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Oc59RSJr0y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSJroI" role="jymVt" />
    <node concept="312cEu" id="7Oc59RSJo_6" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="OK" />
      <node concept="3clFb_" id="7Oc59RSJpwc" role="jymVt">
        <property role="TrG5h" value="isSuccessful" />
        <property role="1EzhhJ" value="false" />
        <node concept="10P_77" id="7Oc59RSJpwd" role="3clF45" />
        <node concept="3Tm1VV" id="7Oc59RSJpwe" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSJpwf" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSJpwg" role="3cqZAp">
            <node concept="3clFbT" id="7Oc59RSJpwh" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7nkyKX7v8SU" role="jymVt" />
      <node concept="3clFb_" id="7nkyKX7v8YO" role="jymVt">
        <property role="TrG5h" value="and" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="7nkyKX7v8YP" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="7nkyKX7v8YQ" role="1tU5fm">
            <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
        <node concept="3uibUv" id="7nkyKX7v8YR" role="3clF45">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3Tm1VV" id="7nkyKX7v8YS" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7v8YU" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7v9mp" role="3cqZAp">
            <node concept="3K4zz7" id="7nkyKX7v9wF" role="3clFbG">
              <node concept="Xjq3P" id="7nkyKX7v9$Y" role="3K4E3e" />
              <node concept="37vLTw" id="7nkyKX7v9Ar" role="3K4GZi">
                <ref role="3cqZAo" node="7nkyKX7v8YP" resolve="that" />
              </node>
              <node concept="2OqwBi" id="7nkyKX7v9p3" role="3K4Cdx">
                <node concept="37vLTw" id="7nkyKX7v9mo" role="2Oq$k0">
                  <ref role="3cqZAo" node="7nkyKX7v8YP" resolve="that" />
                </node>
                <node concept="liA8E" id="7nkyKX7v9rB" role="2OqNvi">
                  <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7nkyKX7v9dJ" role="jymVt" />
      <node concept="3clFb_" id="7Oc59RSJpwi" role="jymVt">
        <property role="TrG5h" value="errors" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7nkyKX7v6MF" role="3clF45">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7nkyKX7v6PJ" role="11_B2D">
            <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7Oc59RSJpwl" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSJpwm" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7v6HU" role="3cqZAp">
            <node concept="2YIFZM" id="7nkyKX7v6Kr" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSsnhoE" role="jymVt" />
      <node concept="3clFb_" id="6i42QSsnhE3" role="jymVt">
        <property role="TrG5h" value="message" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="6i42QSsnhE4" role="3clF45" />
        <node concept="3Tm1VV" id="6i42QSsnhE5" role="1B3o_S" />
        <node concept="3clFbS" id="6i42QSsnhE7" role="3clF47">
          <node concept="3clFbF" id="6i42QSsniF_" role="3cqZAp">
            <node concept="Xl_RD" id="6i42QSsniF$" role="3clFbG">
              <property role="Xl_RC" value="OK" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Oc59RSJoVs" role="1B3o_S" />
      <node concept="3uibUv" id="7Oc59RSJpar" role="1zkMxy">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSJnVk" role="jymVt" />
    <node concept="312cEu" id="7Oc59RSEjfX" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="FAILURE" />
      <node concept="2tJIrI" id="7Oc59RSElUM" role="jymVt" />
      <node concept="3clFbW" id="7Oc59RSEm0l" role="jymVt">
        <node concept="37vLTG" id="7Oc59RSEpH8" role="3clF46">
          <property role="TrG5h" value="errors" />
          <node concept="8X2XB" id="7Oc59RSEpL0" role="1tU5fm">
            <node concept="3uibUv" id="7Oc59RSEpIh" role="8Xvag">
              <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="7Oc59RSEm0n" role="3clF45" />
        <node concept="3Tm6S6" id="6i42QSslLt8" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSEm0p" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSEpOw" role="3cqZAp">
            <node concept="37vLTI" id="7Oc59RSEpOy" role="3clFbG">
              <node concept="2OqwBi" id="7Oc59RSEpOA" role="37vLTJ">
                <node concept="Xjq3P" id="7Oc59RSEpOD" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Oc59RSEpO_" role="2OqNvi">
                  <ref role="2Oxat5" node="7Oc59RSEpOr" resolve="errors" />
                </node>
              </node>
              <node concept="2ShNRf" id="6i42QSslsfh" role="37vLTx">
                <node concept="1pGfFk" id="6i42QSslsQl" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                  <node concept="2YIFZM" id="7nkyKX7v2p8" role="37wK5m">
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <node concept="37vLTw" id="7nkyKX7v2u2" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RSEpH8" resolve="errors" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="6i42QSslubS" role="1pMfVU">
                    <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSslEtg" role="jymVt" />
      <node concept="3clFbW" id="7nkyKX7va7j" role="jymVt">
        <node concept="37vLTG" id="7nkyKX7vbud" role="3clF46">
          <property role="TrG5h" value="results" />
          <node concept="8X2XB" id="7nkyKX7vc2Y" role="1tU5fm">
            <node concept="3uibUv" id="7nkyKX7vbNQ" role="8Xvag">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="7nkyKX7va7n" role="3clF45" />
        <node concept="3Tm6S6" id="6i42QSslCid" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7va7p" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7va7q" role="3cqZAp">
            <node concept="37vLTI" id="7nkyKX7va7r" role="3clFbG">
              <node concept="2OqwBi" id="7nkyKX7va7s" role="37vLTJ">
                <node concept="Xjq3P" id="7nkyKX7va7t" role="2Oq$k0" />
                <node concept="2OwXpG" id="7nkyKX7va7u" role="2OqNvi">
                  <ref role="2Oxat5" node="7Oc59RSEpOr" resolve="errors" />
                </node>
              </node>
              <node concept="2ShNRf" id="7nkyKX7vcwc" role="37vLTx">
                <node concept="1pGfFk" id="7nkyKX7vcQr" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="7nkyKX7vcZj" role="1pMfVU">
                    <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="7nkyKX7vdtv" role="3cqZAp">
            <node concept="3clFbS" id="7nkyKX7vdtx" role="2LFqv$">
              <node concept="3clFbF" id="7nkyKX7vdMr" role="3cqZAp">
                <node concept="2OqwBi" id="7nkyKX7vdXo" role="3clFbG">
                  <node concept="37vLTw" id="7nkyKX7vdMp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Oc59RSEpOr" resolve="errors" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7veew" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                    <node concept="2OqwBi" id="7nkyKX7veoK" role="37wK5m">
                      <node concept="37vLTw" id="7nkyKX7velW" role="2Oq$k0">
                        <ref role="3cqZAo" node="7nkyKX7vdty" resolve="r" />
                      </node>
                      <node concept="liA8E" id="7nkyKX7vetH" role="2OqNvi">
                        <ref role="37wK5l" node="7Oc59RSEnG3" resolve="errors" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7nkyKX7vdty" role="1Duv9x">
              <property role="TrG5h" value="r" />
              <node concept="3uibUv" id="7nkyKX7vd$8" role="1tU5fm">
                <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7vdHQ" role="1DdaDG">
              <ref role="3cqZAo" node="7nkyKX7vbud" resolve="results" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSElZe" role="jymVt" />
      <node concept="3clFb_" id="7Oc59RSElUY" role="jymVt">
        <property role="TrG5h" value="isSuccessful" />
        <property role="1EzhhJ" value="false" />
        <node concept="10P_77" id="7Oc59RSElUZ" role="3clF45" />
        <node concept="3Tm1VV" id="7Oc59RSElV0" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSElV2" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSElV4" role="3cqZAp">
            <node concept="3clFbT" id="7Oc59RSElV3" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSElXP" role="jymVt" />
      <node concept="3clFb_" id="7nkyKX7v9C7" role="jymVt">
        <property role="TrG5h" value="and" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="7nkyKX7v9C8" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="7nkyKX7v9C9" role="1tU5fm">
            <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
        <node concept="3uibUv" id="7nkyKX7v9Ca" role="3clF45">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3Tm1VV" id="7nkyKX7v9Cb" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7v9Cd" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7veXK" role="3cqZAp">
            <node concept="3K4zz7" id="7nkyKX7vf8w" role="3clFbG">
              <node concept="Xjq3P" id="7nkyKX7vfdb" role="3K4E3e" />
              <node concept="2OqwBi" id="7nkyKX7vf0Q" role="3K4Cdx">
                <node concept="37vLTw" id="7nkyKX7veXI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7nkyKX7v9C8" resolve="that" />
                </node>
                <node concept="liA8E" id="7nkyKX7vf3u" role="2OqNvi">
                  <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
              <node concept="2ShNRf" id="7nkyKX7veAz" role="3K4GZi">
                <node concept="1pGfFk" id="7nkyKX7veUe" role="2ShVmc">
                  <ref role="37wK5l" node="7nkyKX7va7j" resolve="Result.FAILURE" />
                  <node concept="Xjq3P" id="7nkyKX7vfkh" role="37wK5m" />
                  <node concept="37vLTw" id="7nkyKX7vfmx" role="37wK5m">
                    <ref role="3cqZAo" node="7nkyKX7v9C8" resolve="that" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7nkyKX7v9SU" role="jymVt" />
      <node concept="3clFb_" id="7Oc59RSEqG2" role="jymVt">
        <property role="TrG5h" value="errors" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7nkyKX7v46u" role="3clF45">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7nkyKX7v4oi" role="11_B2D">
            <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7Oc59RSEqG5" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSEqG7" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7v4QN" role="3cqZAp">
            <node concept="2YIFZM" id="7nkyKX7v4VU" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableCollection(java.util.Collection):java.util.Collection" resolve="unmodifiableCollection" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="7nkyKX7v5n9" role="37wK5m">
                <ref role="3cqZAo" node="7Oc59RSEpOr" resolve="errors" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSsniGj" role="jymVt" />
      <node concept="3clFb_" id="6i42QSsnjx9" role="jymVt">
        <property role="TrG5h" value="message" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="6i42QSsnjxa" role="3clF45" />
        <node concept="3Tm1VV" id="6i42QSsnjxb" role="1B3o_S" />
        <node concept="3clFbS" id="6i42QSsnjxd" role="3clF47">
          <node concept="3cpWs8" id="6i42QSsnrzk" role="3cqZAp">
            <node concept="3cpWsn" id="6i42QSsnrzl" role="3cpWs9">
              <property role="TrG5h" value="joiner" />
              <node concept="3uibUv" id="6i42QSsnrzj" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~StringJoiner" resolve="StringJoiner" />
              </node>
              <node concept="2ShNRf" id="6i42QSsnrzm" role="33vP2m">
                <node concept="1pGfFk" id="6i42QSsnrzn" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~StringJoiner.&lt;init&gt;(java.lang.CharSequence)" resolve="StringJoiner" />
                  <node concept="Xl_RD" id="6i42QSsnrzo" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="6i42QSsns_H" role="3cqZAp">
            <node concept="3clFbS" id="6i42QSsns_K" role="2LFqv$">
              <node concept="3clFbF" id="6i42QSsntsL" role="3cqZAp">
                <node concept="2OqwBi" id="6i42QSsntz9" role="3clFbG">
                  <node concept="37vLTw" id="6i42QSsntsK" role="2Oq$k0">
                    <ref role="3cqZAo" node="6i42QSsnrzl" resolve="joiner" />
                  </node>
                  <node concept="liA8E" id="6i42QSsntDu" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~StringJoiner.add(java.lang.CharSequence):java.util.StringJoiner" resolve="add" />
                    <node concept="2OqwBi" id="6i42QSsntSG" role="37wK5m">
                      <node concept="37vLTw" id="6i42QSsntN$" role="2Oq$k0">
                        <ref role="3cqZAo" node="6i42QSsns_L" resolve="err" />
                      </node>
                      <node concept="liA8E" id="6i42QSsnuh_" role="2OqNvi">
                        <ref role="37wK5l" node="6i42QSs$lhj" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6i42QSsns_L" role="1Duv9x">
              <property role="TrG5h" value="err" />
              <node concept="3uibUv" id="6i42QSsns_P" role="1tU5fm">
                <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
              </node>
            </node>
            <node concept="37vLTw" id="6i42QSsns_Q" role="1DdaDG">
              <ref role="3cqZAo" node="7Oc59RSEpOr" resolve="errors" />
            </node>
          </node>
          <node concept="3clFbF" id="6i42QSsnw8m" role="3cqZAp">
            <node concept="2OqwBi" id="6i42QSsnwwC" role="3clFbG">
              <node concept="37vLTw" id="6i42QSsnw8k" role="2Oq$k0">
                <ref role="3cqZAo" node="6i42QSsnrzl" resolve="joiner" />
              </node>
              <node concept="liA8E" id="6i42QSsnwLn" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~StringJoiner.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSHtBU" role="jymVt" />
      <node concept="3Tm6S6" id="7Oc59RSJogG" role="1B3o_S" />
      <node concept="3uibUv" id="7Oc59RSEjha" role="1zkMxy">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="312cEg" id="7Oc59RSEpOr" role="jymVt">
        <property role="TrG5h" value="errors" />
        <node concept="3Tm6S6" id="7Oc59RSEpOs" role="1B3o_S" />
        <node concept="3uibUv" id="7nkyKX7v21Y" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7nkyKX7v29x" role="11_B2D">
            <ref role="3uigEE" node="6i42QSs$lgC" resolve="Result.ReportedError" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSEji1" role="jymVt" />
    <node concept="312cEu" id="6i42QSs$lgC" role="jymVt">
      <property role="TrG5h" value="ReportedError" />
      <node concept="2tJIrI" id="6i42QSs$lgD" role="jymVt" />
      <node concept="3clFbW" id="6i42QSs$lgE" role="jymVt">
        <node concept="37vLTG" id="6i42QSs$lgF" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="17QB3L" id="6i42QSs$lgG" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6i42QSs$lgH" role="3clF45" />
        <node concept="3Tm1VV" id="6i42QSs$lgI" role="1B3o_S" />
        <node concept="3clFbS" id="6i42QSs$lgJ" role="3clF47">
          <node concept="1VxSAg" id="6i42QSs$$NT" role="3cqZAp">
            <ref role="37wK5l" node="6i42QSs$lgR" resolve="Result.ReportedError" />
            <node concept="37vLTw" id="6i42QSs$$Vb" role="37wK5m">
              <ref role="3cqZAo" node="6i42QSs$lgF" resolve="message" />
            </node>
            <node concept="10Nm6u" id="6i42QSs$_2R" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSs$lgQ" role="jymVt" />
      <node concept="3clFbW" id="6i42QSs$lgR" role="jymVt">
        <node concept="37vLTG" id="6i42QSs$lgS" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="17QB3L" id="6i42QSs$lgT" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6i42QSs$lgU" role="3clF46">
          <property role="TrG5h" value="exception" />
          <node concept="3uibUv" id="6i42QSs$lgV" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
          </node>
        </node>
        <node concept="3cqZAl" id="6i42QSs$lgW" role="3clF45" />
        <node concept="3Tm1VV" id="6i42QSs$lgX" role="1B3o_S" />
        <node concept="3clFbS" id="6i42QSs$lgY" role="3clF47">
          <node concept="3clFbF" id="6i42QSs$lgZ" role="3cqZAp">
            <node concept="37vLTI" id="6i42QSs$lh0" role="3clFbG">
              <node concept="2OqwBi" id="6i42QSs$lh1" role="37vLTJ">
                <node concept="Xjq3P" id="6i42QSs$lh2" role="2Oq$k0" />
                <node concept="2OwXpG" id="6i42QSs$lh3" role="2OqNvi">
                  <ref role="2Oxat5" node="6i42QSs$lhB" resolve="message" />
                </node>
              </node>
              <node concept="37vLTw" id="6i42QSs$lh4" role="37vLTx">
                <ref role="3cqZAo" node="6i42QSs$lgS" resolve="message" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6i42QSs$lh5" role="3cqZAp">
            <node concept="37vLTI" id="6i42QSs$lh6" role="3clFbG">
              <node concept="2OqwBi" id="6i42QSs$lh7" role="37vLTJ">
                <node concept="Xjq3P" id="6i42QSs$lh8" role="2Oq$k0" />
                <node concept="2OwXpG" id="6i42QSs$lh9" role="2OqNvi">
                  <ref role="2Oxat5" node="6i42QSs$lhF" resolve="exception" />
                </node>
              </node>
              <node concept="37vLTw" id="6i42QSs$lha" role="37vLTx">
                <ref role="3cqZAo" node="6i42QSs$lgU" resolve="exception" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSs$lhb" role="jymVt" />
      <node concept="3clFb_" id="6i42QSs$lhc" role="jymVt">
        <property role="TrG5h" value="exception" />
        <node concept="3uibUv" id="6i42QSs$lhd" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
        <node concept="3Tm1VV" id="6i42QSs$lhe" role="1B3o_S" />
        <node concept="3clFbS" id="6i42QSs$lhf" role="3clF47">
          <node concept="3clFbF" id="6i42QSs$lhg" role="3cqZAp">
            <node concept="37vLTw" id="6i42QSs$lhh" role="3clFbG">
              <ref role="3cqZAo" node="6i42QSs$lhF" resolve="exception" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSs$lhi" role="jymVt" />
      <node concept="3clFb_" id="6i42QSs$lhj" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="6i42QSs$lhk" role="1B3o_S" />
        <node concept="17QB3L" id="6i42QSs$lhl" role="3clF45" />
        <node concept="3clFbS" id="6i42QSs$lhm" role="3clF47">
          <node concept="3clFbF" id="6i42QSs$lhn" role="3cqZAp">
            <node concept="3cpWs3" id="6i42QSs$lho" role="3clFbG">
              <node concept="1eOMI4" id="6i42QSs$lhp" role="3uHU7w">
                <node concept="3K4zz7" id="6i42QSs$lhq" role="1eOMHV">
                  <node concept="3cpWs3" id="6i42QSs$lhr" role="3K4E3e">
                    <node concept="Xl_RD" id="6i42QSs$lhs" role="3uHU7B">
                      <property role="Xl_RC" value=": " />
                    </node>
                    <node concept="2OqwBi" id="6i42QSs$lht" role="3uHU7w">
                      <node concept="37vLTw" id="6i42QSs$lhu" role="2Oq$k0">
                        <ref role="3cqZAo" node="6i42QSs$lhF" resolve="exception" />
                      </node>
                      <node concept="liA8E" id="6i42QSs$lhv" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6i42QSs$lhw" role="3K4GZi">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="3y3z36" id="6i42QSs$lhx" role="3K4Cdx">
                    <node concept="10Nm6u" id="6i42QSs$lhy" role="3uHU7w" />
                    <node concept="37vLTw" id="6i42QSs$lhz" role="3uHU7B">
                      <ref role="3cqZAo" node="6i42QSs$lhF" resolve="exception" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6i42QSs$lh$" role="3uHU7B">
                <ref role="3cqZAo" node="6i42QSs$lhB" resolve="message" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6i42QSs$lh_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSs$lhA" role="jymVt" />
      <node concept="312cEg" id="6i42QSs$lhB" role="jymVt">
        <property role="TrG5h" value="message" />
        <node concept="3Tm6S6" id="6i42QSs$lhC" role="1B3o_S" />
        <node concept="17QB3L" id="6i42QSs$lhD" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="6i42QSs$lhE" role="jymVt" />
      <node concept="312cEg" id="6i42QSs$lhF" role="jymVt">
        <property role="TrG5h" value="exception" />
        <node concept="3Tm6S6" id="6i42QSs$lhG" role="1B3o_S" />
        <node concept="3uibUv" id="6i42QSs$lhH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="2tJIrI" id="6i42QSs$lhI" role="jymVt" />
      <node concept="3Tm1VV" id="3OHEjDeLIjt" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Oc59RSEjid" role="jymVt" />
    <node concept="3Tm1VV" id="7Oc59RSEjdc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3GlpCDSxTG7">
    <property role="TrG5h" value="TypecheckingTemplates" />
    <node concept="2tJIrI" id="3GlpCDSxTK1" role="jymVt" />
    <node concept="3clFbW" id="3GlpCDSychS" role="jymVt">
      <node concept="37vLTG" id="3GlpCDSy8gs" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6QH_LDt88i_" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="3GlpCDSychU" role="3clF45" />
      <node concept="3Tm1VV" id="3GlpCDSychV" role="1B3o_S" />
      <node concept="3clFbS" id="3GlpCDSychW" role="3clF47">
        <node concept="3clFbF" id="3GlpCDSycQf" role="3cqZAp">
          <node concept="37vLTI" id="3GlpCDSycQh" role="3clFbG">
            <node concept="2OqwBi" id="3GlpCDSycWA" role="37vLTJ">
              <node concept="Xjq3P" id="3GlpCDSycXx" role="2Oq$k0" />
              <node concept="2OwXpG" id="6QH_LDt88VP" role="2OqNvi">
                <ref role="2Oxat5" node="6QH_LDt87Wj" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="3GlpCDSycQl" role="37vLTx">
              <ref role="3cqZAo" node="3GlpCDSy8gs" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSxTK6" role="jymVt" />
    <node concept="3clFb_" id="3GlpCDSxTKz" role="jymVt">
      <property role="TrG5h" value="applyTemplates" />
      <node concept="37vLTG" id="3GlpCDSybFH" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3GlpCDSyccP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3GlpCDSyCnQ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3GlpCDSyD7w" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3GlpCDSyiNd" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="3GlpCDSxTKA" role="1B3o_S" />
      <node concept="3clFbS" id="3GlpCDSxTKB" role="3clF47">
        <node concept="3cpWs8" id="4hh0cTRbUS6" role="3cqZAp">
          <node concept="3cpWsn" id="4hh0cTRbUS7" role="3cpWs9">
            <property role="TrG5h" value="typesAspect" />
            <node concept="3uibUv" id="4hh0cTRbURZ" role="1tU5fm">
              <ref role="3uigEE" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
            </node>
            <node concept="10Nm6u" id="4xTpErk1C4t" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="4xTpErk1pjs" role="3cqZAp">
          <node concept="3clFbS" id="4xTpErk1pju" role="2LFqv$">
            <node concept="3clFbF" id="4xTpErk1zEf" role="3cqZAp">
              <node concept="37vLTI" id="4xTpErk1zEh" role="3clFbG">
                <node concept="2YIFZM" id="4hh0cTRbUS8" role="37vLTx">
                  <ref role="1Pybhc" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                  <ref role="37wK5l" to="fqlx:2hteS6Cndm6" resolve="forLanguage" />
                  <node concept="37vLTw" id="4xTpErk25DG" role="37wK5m">
                    <ref role="3cqZAo" node="4xTpErk1pjv" resolve="lang" />
                  </node>
                  <node concept="37vLTw" id="6QH_LDt891f" role="37wK5m">
                    <ref role="3cqZAo" node="6QH_LDt87Wj" resolve="repository" />
                  </node>
                </node>
                <node concept="37vLTw" id="4xTpErk1zEl" role="37vLTJ">
                  <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xTpErk1MGG" role="3cqZAp">
              <node concept="3clFbS" id="4xTpErk1MGI" role="3clFbx">
                <node concept="3zACq4" id="4xTpErk1V4q" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="4xTpErk1S34" role="3clFbw">
                <node concept="10Nm6u" id="4xTpErk1SiT" role="3uHU7w" />
                <node concept="37vLTw" id="4xTpErk1PF$" role="3uHU7B">
                  <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4xTpErk1pjv" role="1Duv9x">
            <property role="TrG5h" value="lang" />
            <node concept="3uibUv" id="4xTpErk1xEI" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="2YIFZM" id="4xTpErk1vp3" role="1DdaDG">
            <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
            <ref role="37wK5l" to="w1kc:~SModelOperations.getAllLanguageImports(org.jetbrains.mps.openapi.model.SModel):java.util.Set" resolve="getAllLanguageImports" />
            <node concept="2OqwBi" id="4n$QnzZWBdR" role="37wK5m">
              <node concept="37vLTw" id="4xTpErk1vp5" role="2Oq$k0">
                <ref role="3cqZAo" node="3GlpCDSybFH" resolve="node" />
              </node>
              <node concept="I4A8Y" id="4n$QnzZWCr8" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GlpCDSyihd" role="3cqZAp" />
        <node concept="3clFbJ" id="3GlpCDSyjMs" role="3cqZAp">
          <node concept="3clFbS" id="3GlpCDSyjMu" role="3clFbx">
            <node concept="3cpWs6" id="3GlpCDSylgc" role="3cqZAp">
              <node concept="2YIFZM" id="2FXL1yZvCq1" role="3cqZAk">
                <ref role="37wK5l" node="7Oc59RSH6VB" resolve="FAIL" />
                <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                <node concept="Xl_RD" id="6i42QSsm73J" role="37wK5m">
                  <property role="Xl_RC" value="Could not find type aspect among model languages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3GlpCDSykOo" role="3clFbw">
            <node concept="10Nm6u" id="3GlpCDSylfi" role="3uHU7w" />
            <node concept="37vLTw" id="3GlpCDSykkz" role="3uHU7B">
              <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GlpCDSyihG" role="3cqZAp" />
        <node concept="3cpWs8" id="4JJCDIn5aJ9" role="3cqZAp">
          <node concept="3cpWsn" id="4JJCDIn5aJa" role="3cpWs9">
            <property role="TrG5h" value="typeManifest" />
            <node concept="3uibUv" id="4JJCDIn5aJ7" role="1tU5fm">
              <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractTypeManifest" />
            </node>
            <node concept="2OqwBi" id="4hh0cTRcaoY" role="33vP2m">
              <node concept="37vLTw" id="4hh0cTRc89P" role="2Oq$k0">
                <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
              </node>
              <node concept="liA8E" id="4hh0cTRccwR" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:2hteS6ClmbE" resolve="createTypeManifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Qp4N06byj_" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjA" role="3cpWs9">
            <property role="TrG5h" value="ruleManifest" />
            <node concept="3uibUv" id="3Qp4N06byjB" role="1tU5fm">
              <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="2OqwBi" id="4hh0cTRc1ax" role="33vP2m">
              <node concept="37vLTw" id="4hh0cTRbUSf" role="2Oq$k0">
                <ref role="3cqZAo" node="4hh0cTRbUS7" resolve="typesAspect" />
              </node>
              <node concept="liA8E" id="4hh0cTRc3il" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:2hteS6ClmfS" resolve="createRuleManifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="20Ay2VePN4Q" role="3cqZAp" />
        <node concept="3clFbJ" id="3GlpCDSyqKe" role="3cqZAp">
          <node concept="3clFbS" id="3GlpCDSyqKg" role="3clFbx">
            <node concept="3cpWs6" id="3GlpCDSysRS" role="3cqZAp">
              <node concept="2YIFZM" id="3GlpCDSysRT" role="3cqZAk">
                <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                <ref role="37wK5l" node="7Oc59RSH6VB" resolve="FAIL" />
                <node concept="Xl_RD" id="3GlpCDSysRU" role="37wK5m">
                  <property role="Xl_RC" value="Type aspect is miscronfigured" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3GlpCDSysif" role="3clFbw">
            <node concept="3clFbC" id="3GlpCDSysPS" role="3uHU7w">
              <node concept="10Nm6u" id="3GlpCDSysR9" role="3uHU7w" />
              <node concept="37vLTw" id="3GlpCDSysI6" role="3uHU7B">
                <ref role="3cqZAo" node="4JJCDIn5aJa" resolve="typeManifest" />
              </node>
            </node>
            <node concept="3clFbC" id="3GlpCDSyrPA" role="3uHU7B">
              <node concept="37vLTw" id="20Ay2VeQcVl" role="3uHU7B">
                <ref role="3cqZAo" node="3Qp4N06byjA" resolve="ruleManifest" />
              </node>
              <node concept="10Nm6u" id="3GlpCDSysgF" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GlpCDSyqcY" role="3cqZAp" />
        <node concept="3clFbF" id="3F6vMxqm2AB" role="3cqZAp">
          <node concept="37vLTI" id="4n$Qn$04JAr" role="3clFbG">
            <node concept="2OqwBi" id="3F6vMxqm4Iw" role="37vLTJ">
              <node concept="Xjq3P" id="3F6vMxqm2A_" role="2Oq$k0" />
              <node concept="2OwXpG" id="3F6vMxqm754" role="2OqNvi">
                <ref role="2Oxat5" node="3F6vMxqlTiX" resolve="expressionSolver" />
              </node>
            </node>
            <node concept="2OqwBi" id="4n$Qn$04KUE" role="37vLTx">
              <node concept="37vLTw" id="4n$Qn$04KUF" role="2Oq$k0">
                <ref role="3cqZAo" node="3Qp4N06byjA" resolve="ruleManifest" />
              </node>
              <node concept="liA8E" id="4n$Qn$04KUG" role="2OqNvi">
                <ref role="37wK5l" to="i348:1ggxSI7z1S5" resolve="javaExpressionSolver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20Ay2VeQItT" role="3cqZAp">
          <node concept="37vLTI" id="20Ay2VeQKFe" role="3clFbG">
            <node concept="2OqwBi" id="20Ay2VeQJs0" role="37vLTJ">
              <node concept="Xjq3P" id="20Ay2VeQItR" role="2Oq$k0" />
              <node concept="2OwXpG" id="20Ay2VeQKky" role="2OqNvi">
                <ref role="2Oxat5" node="20Ay2VeQFsB" resolve="typeTemplatesIndex" />
              </node>
            </node>
            <node concept="2ShNRf" id="20Ay2VeQLF6" role="37vLTx">
              <node concept="1pGfFk" id="20Ay2VeQLF7" role="2ShVmc">
                <ref role="37wK5l" to="fqlx:1hX44vNlSOK" resolve="TypeTemplateIndex" />
                <node concept="37vLTw" id="20Ay2VeQLF8" role="37wK5m">
                  <ref role="3cqZAo" node="4JJCDIn5aJa" resolve="typeManifest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="20Ay2VeQMI_" role="3cqZAp" />
        <node concept="3cpWs8" id="20Ay2VeYIFN" role="3cqZAp">
          <node concept="3cpWsn" id="20Ay2VeYIFO" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="20Ay2VeYIFP" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="20Ay2VeYKjw" role="33vP2m">
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cnt3vh2kon" role="3cqZAp">
          <node concept="3cpWsn" id="5cnt3vh2koq" role="3cpWs9">
            <property role="TrG5h" value="idx" />
            <node concept="10Oyi0" id="5cnt3vh2kol" role="1tU5fm" />
            <node concept="3cmrfG" id="5cnt3vh2lHD" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20Ay2VeRM7K" role="3cqZAp">
          <node concept="37vLTI" id="1CcQBrPcrVo" role="3clFbG">
            <node concept="2ShNRf" id="1CcQBrPcHIw" role="37vLTx">
              <node concept="HV5vD" id="1CcQBrPcHIx" role="2ShVmc">
                <ref role="HV5vE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
              </node>
            </node>
            <node concept="2OqwBi" id="1CcQBrPcJl5" role="37vLTJ">
              <node concept="Xjq3P" id="1CcQBrPcJmr" role="2Oq$k0" />
              <node concept="2OwXpG" id="1CcQBrPcJl8" role="2OqNvi">
                <ref role="2Oxat5" node="20Ay2VeRLgD" resolve="ruleTemplateIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1CcQBrPcJqr" role="3cqZAp" />
        <node concept="1DcWWT" id="20Ay2VeQlvu" role="3cqZAp">
          <node concept="3clFbS" id="20Ay2VeQlvx" role="2LFqv$">
            <node concept="3cpWs8" id="1CcQBrPd9b5" role="3cqZAp">
              <node concept="3cpWsn" id="1CcQBrPd9b6" role="3cpWs9">
                <property role="TrG5h" value="stage" />
                <node concept="3uibUv" id="1CcQBrPd9aV" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="2ShNRf" id="1CcQBrPd9b7" role="33vP2m">
                  <node concept="1pGfFk" id="1CcQBrPd9b8" role="2ShVmc">
                    <ref role="37wK5l" to="i348:1CcQBrPd004" resolve="HandlingStage" />
                    <node concept="37vLTw" id="1CcQBrPd9b9" role="37wK5m">
                      <ref role="3cqZAo" node="20Ay2VeQlvy" resolve="htemplates" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1CcQBrPdaep" role="3cqZAp" />
            <node concept="3clFbF" id="1CcQBrPcG$$" role="3cqZAp">
              <node concept="2OqwBi" id="1CcQBrPcH0n" role="3clFbG">
                <node concept="37vLTw" id="1CcQBrPcG$y" role="2Oq$k0">
                  <ref role="3cqZAo" node="20Ay2VeRLgD" resolve="ruleTemplateIndex" />
                </node>
                <node concept="liA8E" id="1CcQBrPcHem" role="2OqNvi">
                  <ref role="37wK5l" node="1CcQBrPcvkZ" resolve="addStage" />
                  <node concept="37vLTw" id="1CcQBrPfq7P" role="37wK5m">
                    <ref role="3cqZAo" node="1CcQBrPd9b6" resolve="stage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1CcQBrPcNYs" role="3cqZAp" />
            <node concept="3cpWs8" id="5rhZO$U04lo" role="3cqZAp">
              <node concept="3cpWsn" id="5rhZO$U04lp" role="3cpWs9">
                <property role="TrG5h" value="programBuilder" />
                <node concept="3uibUv" id="5rhZO$U04lq" role="1tU5fm">
                  <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
                </node>
                <node concept="2ShNRf" id="5rhZO$U064C" role="33vP2m">
                  <node concept="1pGfFk" id="5rhZO$U062B" role="2ShVmc">
                    <ref role="37wK5l" to="7n8k:5rhZO$TZ9Ji" resolve="ChrProgramBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1CcQBrPfqZ7" role="3cqZAp" />
            <node concept="3clFbF" id="20Ay2VeYKOr" role="3cqZAp">
              <node concept="37vLTI" id="20Ay2VeYLj_" role="3clFbG">
                <node concept="2OqwBi" id="20Ay2VeYLqx" role="37vLTx">
                  <node concept="37vLTw" id="20Ay2VeYLkq" role="2Oq$k0">
                    <ref role="3cqZAo" node="20Ay2VeYIFO" resolve="result" />
                  </node>
                  <node concept="liA8E" id="20Ay2VeYLzv" role="2OqNvi">
                    <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                    <node concept="1rXfSq" id="1CcQBrPfueC" role="37wK5m">
                      <ref role="37wK5l" node="1CcQBrPfrjP" resolve="applyTemplates" />
                      <node concept="37vLTw" id="20Ay2VeYLC4" role="37wK5m">
                        <ref role="3cqZAo" node="3GlpCDSybFH" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="1CcQBrPhzrS" role="37wK5m">
                        <ref role="3cqZAo" node="1CcQBrPd9b6" resolve="stage" />
                      </node>
                      <node concept="37vLTw" id="20Ay2VeYLC5" role="37wK5m">
                        <ref role="3cqZAo" node="5rhZO$U04lp" resolve="programBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="20Ay2VeYKOp" role="37vLTJ">
                  <ref role="3cqZAo" node="20Ay2VeYIFO" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1CcQBrPfqEG" role="3cqZAp" />
            <node concept="3clFbJ" id="3GlpCDSyIxU" role="3cqZAp">
              <node concept="3clFbS" id="3GlpCDSyIxW" role="3clFbx">
                <node concept="3clFbF" id="4n$QnzZY8SI" role="3cqZAp">
                  <node concept="2OqwBi" id="20Ay2VeYAT2" role="3clFbG">
                    <node concept="2OqwBi" id="4n$QnzZYalf" role="2Oq$k0">
                      <node concept="Xjq3P" id="4n$QnzZY8SG" role="2Oq$k0" />
                      <node concept="2OwXpG" id="4n$QnzZYbBl" role="2OqNvi">
                        <ref role="2Oxat5" node="1pPth$lE8Xs" resolve="programs" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="20Ay2VeYC19" role="2OqNvi">
                      <node concept="2OqwBi" id="20Ay2VeYCPl" role="25WWJ7">
                        <node concept="37vLTw" id="20Ay2VeYCPm" role="2Oq$k0">
                          <ref role="3cqZAo" node="5rhZO$U04lp" resolve="programBuilder" />
                        </node>
                        <node concept="liA8E" id="20Ay2VeYCPn" role="2OqNvi">
                          <ref role="37wK5l" to="7n8k:5rhZO$TZiL1" resolve="toProgram" />
                          <node concept="3cpWs3" id="5cnt3vh2fI0" role="37wK5m">
                            <node concept="3cpWs3" id="5cnt3vh2eJ5" role="3uHU7B">
                              <node concept="37vLTw" id="20Ay2VeYCPo" role="3uHU7B">
                                <ref role="3cqZAo" node="3GlpCDSyCnQ" resolve="name" />
                              </node>
                              <node concept="Xl_RD" id="5cnt3vh2eJB" role="3uHU7w">
                                <property role="Xl_RC" value="-" />
                              </node>
                            </node>
                            <node concept="1eOMI4" id="5cnt3vh2lY7" role="3uHU7w">
                              <node concept="3uNrnE" id="5cnt3vh2nnS" role="1eOMHV">
                                <node concept="37vLTw" id="5cnt3vh2nnU" role="2$L3a6">
                                  <ref role="3cqZAo" node="5cnt3vh2koq" resolve="idx" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="20Ay2VeYPAK" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="3GlpCDSyJQY" role="3clFbw">
                <node concept="37vLTw" id="3GlpCDSyJgA" role="2Oq$k0">
                  <ref role="3cqZAo" node="20Ay2VeYIFO" resolve="result" />
                </node>
                <node concept="liA8E" id="3GlpCDSyKrQ" role="2OqNvi">
                  <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
              <node concept="9aQIb" id="20Ay2VeYPrV" role="9aQIa">
                <node concept="3clFbS" id="20Ay2VeYPrW" role="9aQI4">
                  <node concept="3zACq4" id="20Ay2VeYPAo" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="20Ay2VeQlvy" role="1Duv9x">
            <property role="TrG5h" value="htemplates" />
            <node concept="_YKpA" id="20Ay2Vf4IRI" role="1tU5fm">
              <node concept="3uibUv" id="20Ay2Vf4JAh" role="_ZDj9">
                <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="20Ay2VeQlvB" role="1DdaDG">
            <node concept="37vLTw" id="20Ay2VeQlvC" role="2Oq$k0">
              <ref role="3cqZAo" node="3Qp4N06byjA" resolve="ruleManifest" />
            </node>
            <node concept="liA8E" id="20Ay2VeQlvD" role="2OqNvi">
              <ref role="37wK5l" to="i348:20Ay2VeQ4QK" resolve="handlingStages" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5rhZO$U0np3" role="3cqZAp" />
        <node concept="3clFbF" id="3GlpCDSyH5p" role="3cqZAp">
          <node concept="37vLTw" id="3GlpCDSyH5n" role="3clFbG">
            <ref role="3cqZAo" node="20Ay2VeYIFO" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3GlpCDSyfHu" role="lGtFl">
        <node concept="TZ5HA" id="3GlpCDSyfHv" role="TZ5H$">
          <node concept="1dT_AC" id="3GlpCDSyfHw" role="1dT_Ay">
            <property role="1dT_AB" value="Must be called in a read action." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3GlpCDSyO$P" role="jymVt">
      <property role="TrG5h" value="getPrograms" />
      <node concept="_YKpA" id="20Ay2VeYwM6" role="3clF45">
        <node concept="3uibUv" id="20Ay2VeYwM7" role="_ZDj9">
          <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3GlpCDSyO$S" role="1B3o_S" />
      <node concept="3clFbS" id="3GlpCDSyO$T" role="3clF47">
        <node concept="3clFbF" id="3GlpCDSyQWA" role="3cqZAp">
          <node concept="37vLTw" id="3GlpCDSyQW_" role="3clFbG">
            <ref role="3cqZAo" node="1pPth$lE8Xs" resolve="programs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSyR2$" role="jymVt" />
    <node concept="3clFb_" id="3GlpCDSyRnn" role="jymVt">
      <property role="TrG5h" value="getExpressionSolver" />
      <node concept="3uibUv" id="5jCHAT2vNhS" role="3clF45">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
      </node>
      <node concept="3Tm1VV" id="3GlpCDSyRnq" role="1B3o_S" />
      <node concept="3clFbS" id="3GlpCDSyRnr" role="3clF47">
        <node concept="3clFbF" id="3GlpCDSyUhN" role="3cqZAp">
          <node concept="37vLTw" id="3GlpCDSyUhM" role="3clFbG">
            <ref role="3cqZAo" node="3F6vMxqlTiX" resolve="expressionSolver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSyNwR" role="jymVt" />
    <node concept="3clFb_" id="20Ay2VeQGBR" role="jymVt">
      <property role="TrG5h" value="getTypeTemplates" />
      <node concept="3uibUv" id="20Ay2VeQHvL" role="3clF45">
        <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateIndex" />
      </node>
      <node concept="3Tm1VV" id="20Ay2VeQGBU" role="1B3o_S" />
      <node concept="3clFbS" id="20Ay2VeQGBV" role="3clF47">
        <node concept="3clFbF" id="20Ay2VeQIpw" role="3cqZAp">
          <node concept="37vLTw" id="20Ay2VeQIpv" role="3clFbG">
            <ref role="3cqZAo" node="20Ay2VeQFsB" resolve="typeTemplatesIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="20Ay2VeRPfT" role="jymVt" />
    <node concept="3clFb_" id="1CcQBrPfrjP" role="jymVt">
      <property role="TrG5h" value="applyTemplates" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1CcQBrPfrjQ" role="3clF47">
        <node concept="3cpWs8" id="1CcQBrPhxLM" role="3cqZAp">
          <node concept="3cpWsn" id="1CcQBrPhxLN" role="3cpWs9">
            <property role="TrG5h" value="mainConstraint" />
            <node concept="3uibUv" id="1CcQBrPhxLO" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
            <node concept="2OqwBi" id="1CcQBrPhxLP" role="33vP2m">
              <node concept="2ShNRf" id="1CcQBrPhxLQ" role="2Oq$k0">
                <node concept="1pGfFk" id="1CcQBrPhxLR" role="2ShVmc">
                  <ref role="37wK5l" to="nz6g:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                  <node concept="2YIFZM" id="1CcQBrPhxLS" role="37wK5m">
                    <ref role="37wK5l" to="av0y:~ConstraintSymbol.symbol(java.lang.String,int):jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                    <ref role="1Pybhc" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                    <node concept="Xl_RD" id="1CcQBrPhxLT" role="37wK5m">
                      <property role="Xl_RC" value="main" />
                    </node>
                    <node concept="3cmrfG" id="1CcQBrPhxLU" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1CcQBrPhxLV" role="2OqNvi">
                <ref role="37wK5l" to="nz6g:4sSe4$oM2zI" resolve="toConstraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1CcQBrPhxLW" role="3cqZAp">
          <node concept="3cpWsn" id="1CcQBrPhxLX" role="3cpWs9">
            <property role="TrG5h" value="generator" />
            <node concept="3uibUv" id="1CcQBrPhxLY" role="1tU5fm">
              <ref role="3uigEE" node="12yN8DyF_E1" resolve="ProgramProducer" />
            </node>
            <node concept="2ShNRf" id="1CcQBrPhxLZ" role="33vP2m">
              <node concept="1pGfFk" id="1CcQBrPhxM0" role="2ShVmc">
                <ref role="37wK5l" node="7Oc59RSy_Op" resolve="ProgramProducer" />
                <node concept="37vLTw" id="1CcQBrPhxM1" role="37wK5m">
                  <ref role="3cqZAo" node="20Ay2VeRLgD" resolve="ruleTemplateIndex" />
                </node>
                <node concept="37vLTw" id="1CcQBrPhxM2" role="37wK5m">
                  <ref role="3cqZAo" node="20Ay2VeQFsB" resolve="typeTemplatesIndex" />
                </node>
                <node concept="37vLTw" id="1CcQBrPhxM3" role="37wK5m">
                  <ref role="3cqZAo" node="1CcQBrPhxLN" resolve="mainConstraint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1CcQBrPhxM4" role="3cqZAp">
          <node concept="3cpWsn" id="1CcQBrPhxM5" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="1CcQBrPhxM6" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1CcQBrPhxM7" role="3cqZAp" />
        <node concept="3clFbF" id="1CcQBrPhxM8" role="3cqZAp">
          <node concept="2YIFZM" id="1CcQBrPhxM9" role="3clFbG">
            <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
            <ref role="37wK5l" node="2k2r9bMbV$8" resolve="init" />
          </node>
        </node>
        <node concept="3clFbF" id="1CcQBrPhxMa" role="3cqZAp">
          <node concept="2YIFZM" id="1CcQBrPhxMb" role="3clFbG">
            <ref role="37wK5l" node="2tjs8VC1byF" resolve="push" />
            <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
          </node>
        </node>
        <node concept="2GUZhq" id="1CcQBrPhxMc" role="3cqZAp">
          <node concept="3clFbS" id="1CcQBrPhxMd" role="2GV8ay">
            <node concept="3clFbF" id="1CcQBrPhxMe" role="3cqZAp">
              <node concept="37vLTI" id="1CcQBrPhxMf" role="3clFbG">
                <node concept="2OqwBi" id="1CcQBrPhxMg" role="37vLTx">
                  <node concept="37vLTw" id="1CcQBrPhxMh" role="2Oq$k0">
                    <ref role="3cqZAo" node="1CcQBrPhxLX" resolve="generator" />
                  </node>
                  <node concept="liA8E" id="1CcQBrPhxMi" role="2OqNvi">
                    <ref role="37wK5l" node="6i42QSspo7W" resolve="produce" />
                    <node concept="37vLTw" id="1CcQBrPhxMw" role="37wK5m">
                      <ref role="3cqZAo" node="1CcQBrPfrjV" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="1CcQBrPhz9c" role="37wK5m">
                      <ref role="3cqZAo" node="1CcQBrPhuKd" resolve="stage" />
                    </node>
                    <node concept="37vLTw" id="1CcQBrPhxMx" role="37wK5m">
                      <ref role="3cqZAo" node="1CcQBrPfrjX" resolve="programBuilder" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1CcQBrPhxMm" role="37vLTJ">
                  <ref role="3cqZAo" node="1CcQBrPhxM5" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1CcQBrPhxMn" role="3cqZAp" />
          </node>
          <node concept="3clFbS" id="1CcQBrPhxMo" role="2GVbov">
            <node concept="3clFbF" id="1CcQBrPhxMp" role="3cqZAp">
              <node concept="2YIFZM" id="1CcQBrPhxMq" role="3clFbG">
                <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
                <ref role="37wK5l" node="2tjs8VC1f3O" resolve="pop" />
              </node>
            </node>
            <node concept="3clFbF" id="1CcQBrPhxMr" role="3cqZAp">
              <node concept="2YIFZM" id="1CcQBrPhxMs" role="3clFbG">
                <ref role="37wK5l" node="2k2r9bMbWB2" resolve="dispose" />
                <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1CcQBrPhxMt" role="3cqZAp" />
        <node concept="3cpWs6" id="1CcQBrPhxMz" role="3cqZAp">
          <node concept="37vLTw" id="1CcQBrPhxM$" role="3cqZAk">
            <ref role="3cqZAo" node="1CcQBrPhxM5" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1CcQBrPfrjV" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="1CcQBrPfrjW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CcQBrPhuKd" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="3uibUv" id="1CcQBrPhvc$" role="1tU5fm">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
      </node>
      <node concept="37vLTG" id="1CcQBrPfrjX" role="3clF46">
        <property role="TrG5h" value="programBuilder" />
        <node concept="3uibUv" id="1CcQBrPfrjY" role="1tU5fm">
          <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
        </node>
      </node>
      <node concept="3uibUv" id="1CcQBrPfrjZ" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="1CcQBrPfrN7" role="1B3o_S" />
      <node concept="P$JXv" id="1CcQBrPfrk1" role="lGtFl">
        <node concept="TZ5HA" id="1CcQBrPfrk2" role="TZ5H$">
          <node concept="1dT_AC" id="1CcQBrPfrk3" role="1dT_Ay">
            <property role="1dT_AB" value="Must be launched in a read action." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSyN7T" role="jymVt" />
    <node concept="3clFb_" id="20Ay2VeRQ3T" role="jymVt">
      <property role="TrG5h" value="getRuleTemplateIndex" />
      <node concept="3Tm1VV" id="20Ay2VeRQ3W" role="1B3o_S" />
      <node concept="3clFbS" id="20Ay2VeRQ3X" role="3clF47">
        <node concept="3clFbF" id="20Ay2VeRS6M" role="3cqZAp">
          <node concept="37vLTw" id="20Ay2VeRS6L" role="3clFbG">
            <ref role="3cqZAo" node="20Ay2VeRLgD" resolve="ruleTemplateIndex" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="20Ay2VeRJdK" role="3clF45">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="2tJIrI" id="20Ay2VeQG4$" role="jymVt" />
    <node concept="312cEg" id="1pPth$lE8Xs" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="programs" />
      <property role="3TUv4t" value="false" />
      <node concept="_YKpA" id="20Ay2VeYy5g" role="1tU5fm">
        <node concept="3uibUv" id="20Ay2VeYy5h" role="_ZDj9">
          <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3GlpCDSyB5g" role="1B3o_S" />
      <node concept="2ShNRf" id="20Ay2VeYyxo" role="33vP2m">
        <node concept="Tc6Ow" id="20Ay2VeYywP" role="2ShVmc">
          <node concept="3uibUv" id="20Ay2VeYywQ" role="HW$YZ">
            <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3F6vMxqlTiX" role="jymVt">
      <property role="TrG5h" value="expressionSolver" />
      <node concept="3uibUv" id="5jCHAT2vNg1" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
      </node>
      <node concept="3Tm6S6" id="3GlpCDSyB5p" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="20Ay2VeQFsB" role="jymVt">
      <property role="TrG5h" value="typeTemplatesIndex" />
      <node concept="3Tm6S6" id="20Ay2VeQFsC" role="1B3o_S" />
      <node concept="3uibUv" id="20Ay2VeQG0r" role="1tU5fm">
        <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateIndex" />
      </node>
    </node>
    <node concept="312cEg" id="20Ay2VeRLgD" role="jymVt">
      <property role="TrG5h" value="ruleTemplateIndex" />
      <node concept="3Tm6S6" id="20Ay2VeRLgE" role="1B3o_S" />
      <node concept="3uibUv" id="1CcQBrPcq_x" role="1tU5fm">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3GlpCDSxTG8" role="1B3o_S" />
    <node concept="312cEg" id="6QH_LDt87Wj" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="6QH_LDt87Wk" role="1B3o_S" />
      <node concept="3uibUv" id="6QH_LDt88hL" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSyAm6" role="jymVt" />
  </node>
  <node concept="312cEu" id="4Z$O9mrQIzg">
    <property role="TrG5h" value="TypecheckingSession" />
    <node concept="2tJIrI" id="4Z$O9mrQIzE" role="jymVt" />
    <node concept="3clFbW" id="4Z$O9mrTNJK" role="jymVt">
      <node concept="37vLTG" id="4Z$O9mrTNK9" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="H_c77" id="4Z$O9mrTNKu" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4Z$O9mrTNJM" role="3clF45" />
      <node concept="3Tmbuc" id="4Z$O9mrTY5k" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrTNJO" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4Z$O9mrTNRx" role="jymVt" />
    <node concept="3clFb_" id="7kaxm0sExBe" role="jymVt">
      <property role="TrG5h" value="execute" />
      <node concept="37vLTG" id="7kaxm0sExCc" role="3clF46">
        <property role="TrG5h" value="computable" />
        <node concept="3uibUv" id="7kaxm0sExDf" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
          <node concept="16syzq" id="7kaxm0sExE_" role="11_B2D">
            <ref role="16sUi3" node="7kaxm0sExDN" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="7kaxm0sExFe" role="3clF45">
        <ref role="16sUi3" node="7kaxm0sExDN" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7kaxm0sExBh" role="1B3o_S" />
      <node concept="3clFbS" id="7kaxm0sExBi" role="3clF47">
        <node concept="3clFbF" id="7kaxm0sExHm" role="3cqZAp">
          <node concept="2OqwBi" id="7kaxm0sExSv" role="3clFbG">
            <node concept="37vLTw" id="7kaxm0sExHl" role="2Oq$k0">
              <ref role="3cqZAo" node="7kaxm0sExCc" resolve="computable" />
            </node>
            <node concept="liA8E" id="7kaxm0sEy11" role="2OqNvi">
              <ref role="37wK5l" to="18ew:~Computable.compute():java.lang.Object" resolve="compute" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7kaxm0sExDN" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQIzN" role="jymVt" />
    <node concept="3Tm1VV" id="4Z$O9mrQIzh" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4Z$O9mrQIzY">
    <property role="TrG5h" value="Typechecking" />
    <node concept="2tJIrI" id="4Z$O9mrQI$u" role="jymVt" />
    <node concept="Wx3nA" id="4Z$O9mrTGv9" role="jymVt">
      <property role="TrG5h" value="ourTypecheckings" />
      <node concept="3Tm6S6" id="4Z$O9mrTGvb" role="1B3o_S" />
      <node concept="_YKpA" id="4Z$O9mrTGQp" role="1tU5fm">
        <node concept="3uibUv" id="4Z$O9mrTGQP" role="_ZDj9">
          <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="Typechecking" />
        </node>
      </node>
      <node concept="2ShNRf" id="4Z$O9mrTN7O" role="33vP2m">
        <node concept="Tc6Ow" id="4Z$O9mrTN6Q" role="2ShVmc">
          <node concept="3uibUv" id="4Z$O9mrTN6R" role="HW$YZ">
            <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="Typechecking" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrTG7X" role="jymVt" />
    <node concept="2YIFZL" id="4Z$O9mrQIG1" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="4Z$O9mrQIH4" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrQIHU" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="4Z$O9mrQIIr" role="3clF45">
        <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="Typechecking" />
      </node>
      <node concept="3Tm1VV" id="4Z$O9mrQIG4" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQIG5" role="3clF47">
        <node concept="3cpWs8" id="4Z$O9mrTJM7" role="3cqZAp">
          <node concept="3cpWsn" id="4Z$O9mrTJM8" role="3cpWs9">
            <property role="TrG5h" value="typechecking" />
            <node concept="3uibUv" id="4Z$O9mrTJLY" role="1tU5fm">
              <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="Typechecking" />
            </node>
            <node concept="2OqwBi" id="4Z$O9mrTJM9" role="33vP2m">
              <node concept="37vLTw" id="4Z$O9mrTJMa" role="2Oq$k0">
                <ref role="3cqZAo" node="4Z$O9mrTGv9" resolve="ourTypecheckings" />
              </node>
              <node concept="1z4cxt" id="4Z$O9mrTJMb" role="2OqNvi">
                <node concept="1bVj0M" id="4Z$O9mrTJMc" role="23t8la">
                  <node concept="3clFbS" id="4Z$O9mrTJMd" role="1bW5cS">
                    <node concept="3clFbF" id="4Z$O9mrTJMe" role="3cqZAp">
                      <node concept="3clFbC" id="4Z$O9mrTJMf" role="3clFbG">
                        <node concept="37vLTw" id="4Z$O9mrTJMg" role="3uHU7w">
                          <ref role="3cqZAo" node="4Z$O9mrQIH4" resolve="repository" />
                        </node>
                        <node concept="2OqwBi" id="4Z$O9mrTJMh" role="3uHU7B">
                          <node concept="37vLTw" id="4Z$O9mrTJMi" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Z$O9mrTJMk" resolve="it" />
                          </node>
                          <node concept="2OwXpG" id="4Z$O9mrTJMj" role="2OqNvi">
                            <ref role="2Oxat5" node="4Z$O9mrQIM1" resolve="repository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4Z$O9mrTJMk" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4Z$O9mrTJMl" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Z$O9mrTJU8" role="3cqZAp">
          <node concept="3clFbS" id="4Z$O9mrTJUa" role="3clFbx">
            <node concept="3clFbF" id="4Z$O9mrTK8Z" role="3cqZAp">
              <node concept="37vLTI" id="4Z$O9mrTKfv" role="3clFbG">
                <node concept="2ShNRf" id="4Z$O9mrTKjl" role="37vLTx">
                  <node concept="1pGfFk" id="4Z$O9mrTKh8" role="2ShVmc">
                    <ref role="37wK5l" node="4Z$O9mrQIJn" resolve="Typechecking" />
                    <node concept="37vLTw" id="4Z$O9mrTKnN" role="37wK5m">
                      <ref role="3cqZAo" node="4Z$O9mrQIH4" resolve="repository" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4Z$O9mrTK8X" role="37vLTJ">
                  <ref role="3cqZAo" node="4Z$O9mrTJM8" resolve="typechecking" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Z$O9mrTKqT" role="3cqZAp">
              <node concept="2OqwBi" id="4Z$O9mrTMkk" role="3clFbG">
                <node concept="37vLTw" id="4Z$O9mrTKqR" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Z$O9mrTGv9" resolve="ourTypecheckings" />
                </node>
                <node concept="TSZUe" id="4Z$O9mrTMPv" role="2OqNvi">
                  <node concept="37vLTw" id="4Z$O9mrTMVS" role="25WWJ7">
                    <ref role="3cqZAo" node="4Z$O9mrTJM8" resolve="typechecking" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4Z$O9mrTK4Z" role="3clFbw">
            <node concept="10Nm6u" id="4Z$O9mrTK6B" role="3uHU7w" />
            <node concept="37vLTw" id="4Z$O9mrTJWU" role="3uHU7B">
              <ref role="3cqZAo" node="4Z$O9mrTJM8" resolve="typechecking" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Z$O9mrTGUA" role="3cqZAp">
          <node concept="37vLTw" id="4Z$O9mrTJMm" role="3clFbG">
            <ref role="3cqZAo" node="4Z$O9mrTJM8" resolve="typechecking" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQI$H" role="jymVt" />
    <node concept="3clFbW" id="4Z$O9mrQIJn" role="jymVt">
      <node concept="37vLTG" id="4Z$O9mrQIKs" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrQIL_" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="4Z$O9mrQIJp" role="3clF45" />
      <node concept="3Tm6S6" id="4Z$O9mrQIJU" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQIJr" role="3clF47">
        <node concept="3clFbF" id="4Z$O9mrQIM5" role="3cqZAp">
          <node concept="37vLTI" id="4Z$O9mrQIM7" role="3clFbG">
            <node concept="2OqwBi" id="4Z$O9mrQIPy" role="37vLTJ">
              <node concept="Xjq3P" id="4Z$O9mrQIQd" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Z$O9mrQIP_" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrQIM1" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="4Z$O9mrQIMb" role="37vLTx">
              <ref role="3cqZAo" node="4Z$O9mrQIKs" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQJbQ" role="jymVt" />
    <node concept="3clFb_" id="4Z$O9mrQJgp" role="jymVt">
      <property role="TrG5h" value="cachedTypes" />
      <node concept="37vLTG" id="4Z$O9mrQJle" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="H_c77" id="4Z$O9mrQJmG" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6QH_LDtfl7H" role="3clF45">
        <ref role="3uigEE" node="6QH_LDtfe19" resolve="Typechecking.TypeCache" />
      </node>
      <node concept="3Tm1VV" id="4Z$O9mrQJgs" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQJgt" role="3clF47">
        <node concept="3cpWs8" id="4Z$O9mrTdLb" role="3cqZAp">
          <node concept="3cpWsn" id="4Z$O9mrTdLc" role="3cpWs9">
            <property role="TrG5h" value="holder" />
            <node concept="3uibUv" id="4Z$O9mrTdKT" role="1tU5fm">
              <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="Typechecking.TypeCacheHolder" />
            </node>
            <node concept="2OqwBi" id="4Z$O9mrTdLd" role="33vP2m">
              <node concept="37vLTw" id="4Z$O9mrTdLe" role="2Oq$k0">
                <ref role="3cqZAo" node="4Z$O9mrTa0z" resolve="cacheHolders" />
              </node>
              <node concept="1z4cxt" id="4Z$O9mrTdLf" role="2OqNvi">
                <node concept="1bVj0M" id="4Z$O9mrTdLg" role="23t8la">
                  <node concept="3clFbS" id="4Z$O9mrTdLh" role="1bW5cS">
                    <node concept="3clFbF" id="4Z$O9mrTdLi" role="3cqZAp">
                      <node concept="3clFbC" id="4Z$O9mrTdLj" role="3clFbG">
                        <node concept="37vLTw" id="4Z$O9mrTdLk" role="3uHU7w">
                          <ref role="3cqZAo" node="4Z$O9mrQJle" resolve="unit" />
                        </node>
                        <node concept="2OqwBi" id="4Z$O9mrTdLl" role="3uHU7B">
                          <node concept="37vLTw" id="4Z$O9mrTdLm" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Z$O9mrTdLo" resolve="it" />
                          </node>
                          <node concept="2OwXpG" id="4Z$O9mrTdLn" role="2OqNvi">
                            <ref role="2Oxat5" node="4Z$O9mrQJ_R" resolve="unit" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4Z$O9mrTdLo" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4Z$O9mrTdLp" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Z$O9mrTei$" role="3cqZAp">
          <node concept="3clFbS" id="4Z$O9mrTeiA" role="3clFbx">
            <node concept="3cpWs6" id="4Z$O9mrTssv" role="3cqZAp">
              <node concept="10Nm6u" id="4Z$O9mrTsPB" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="4Z$O9mrTr10" role="3clFbw">
            <node concept="3fqX7Q" id="4Z$O9mrTs6e" role="3uHU7w">
              <node concept="2OqwBi" id="4Z$O9mrTs6g" role="3fr31v">
                <node concept="37vLTw" id="4Z$O9mrTs6h" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Z$O9mrTdLc" resolve="holder" />
                </node>
                <node concept="liA8E" id="4Z$O9mrTs6i" role="2OqNvi">
                  <ref role="37wK5l" node="4Z$O9mrQJB5" resolve="isUpToDate" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="4Z$O9mrTe_O" role="3uHU7B">
              <node concept="37vLTw" id="4Z$O9mrTeu6" role="3uHU7B">
                <ref role="3cqZAo" node="4Z$O9mrTdLc" resolve="holder" />
              </node>
              <node concept="10Nm6u" id="4Z$O9mrTeB5" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Z$O9mrTeNb" role="3cqZAp">
          <node concept="2OqwBi" id="4Z$O9mrTf4e" role="3clFbG">
            <node concept="37vLTw" id="4Z$O9mrTeN9" role="2Oq$k0">
              <ref role="3cqZAo" node="4Z$O9mrTdLc" resolve="holder" />
            </node>
            <node concept="2OwXpG" id="4Z$O9mrTf9S" role="2OqNvi">
              <ref role="2Oxat5" node="4Z$O9mrQJ$h" resolve="cache" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6QH_LDtbs4g" role="jymVt" />
    <node concept="3clFb_" id="6QH_LDtbsGz" role="jymVt">
      <property role="TrG5h" value="updateCachedTypes" />
      <node concept="37vLTG" id="6QH_LDtbCgW" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="H_c77" id="6QH_LDtbD0m" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6QH_LDtbza3" role="3clF46">
        <property role="TrG5h" value="updater" />
        <node concept="3uibUv" id="6QH_LDtb_b8" role="1tU5fm">
          <ref role="3uigEE" node="6QH_LDtb$zi" resolve="Typechecking.TypeCacheUpdate" />
        </node>
      </node>
      <node concept="3uibUv" id="6QH_LDtflOm" role="3clF45">
        <ref role="3uigEE" node="6QH_LDtfe19" resolve="Typechecking.TypeCache" />
      </node>
      <node concept="3Tm1VV" id="6QH_LDtbsGA" role="1B3o_S" />
      <node concept="3clFbS" id="6QH_LDtbsGB" role="3clF47">
        <node concept="3clFbF" id="6QH_LDtbMb8" role="3cqZAp">
          <node concept="2OqwBi" id="6QH_LDtbM$i" role="3clFbG">
            <node concept="1rXfSq" id="6QH_LDtbMb6" role="2Oq$k0">
              <ref role="37wK5l" node="4Z$O9mrQJ13" resolve="newSession" />
              <node concept="37vLTw" id="6QH_LDtbMsH" role="37wK5m">
                <ref role="3cqZAo" node="6QH_LDtbCgW" resolve="unit" />
              </node>
            </node>
            <node concept="liA8E" id="6QH_LDtbMFl" role="2OqNvi">
              <ref role="37wK5l" node="7kaxm0sExBe" resolve="execute" />
              <node concept="1bVj0M" id="6QH_LDtbMJX" role="37wK5m">
                <node concept="3clFbS" id="6QH_LDtbMJY" role="1bW5cS">
                  <node concept="3clFbH" id="6QH_LDtbMLK" role="3cqZAp" />
                  <node concept="3cpWs8" id="6QH_LDtbDEY" role="3cqZAp">
                    <node concept="3cpWsn" id="6QH_LDtbDEZ" role="3cpWs9">
                      <property role="TrG5h" value="holder" />
                      <node concept="3uibUv" id="6QH_LDtbDF0" role="1tU5fm">
                        <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="Typechecking.TypeCacheHolder" />
                      </node>
                      <node concept="2OqwBi" id="6QH_LDtbDF1" role="33vP2m">
                        <node concept="37vLTw" id="6QH_LDtbDF2" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Z$O9mrTa0z" resolve="cacheHolders" />
                        </node>
                        <node concept="1z4cxt" id="6QH_LDtbDF3" role="2OqNvi">
                          <node concept="1bVj0M" id="6QH_LDtbDF4" role="23t8la">
                            <node concept="3clFbS" id="6QH_LDtbDF5" role="1bW5cS">
                              <node concept="3clFbF" id="6QH_LDtbDF6" role="3cqZAp">
                                <node concept="3clFbC" id="6QH_LDtbDF7" role="3clFbG">
                                  <node concept="37vLTw" id="6QH_LDtbDF8" role="3uHU7w">
                                    <ref role="3cqZAo" node="6QH_LDtbCgW" resolve="unit" />
                                  </node>
                                  <node concept="2OqwBi" id="6QH_LDtbDF9" role="3uHU7B">
                                    <node concept="37vLTw" id="6QH_LDtbDFa" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6QH_LDtbDFc" resolve="it" />
                                    </node>
                                    <node concept="2OwXpG" id="6QH_LDtbDFb" role="2OqNvi">
                                      <ref role="2Oxat5" node="4Z$O9mrQJ_R" resolve="unit" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="6QH_LDtbDFc" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="6QH_LDtbDFd" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6QH_LDtbDFe" role="3cqZAp">
                    <node concept="3clFbS" id="6QH_LDtbDFf" role="3clFbx">
                      <node concept="3SKdUt" id="3u5wJteqwu" role="3cqZAp">
                        <node concept="3SKdUq" id="3u5wJteqww" role="3SKWNk">
                          <property role="3SKdUp" value="FIXME: the cache must be cleared at some point" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="6QH_LDtbDFg" role="3cqZAp">
                        <node concept="37vLTI" id="6QH_LDtbDFh" role="3clFbG">
                          <node concept="2ShNRf" id="6QH_LDtbDFi" role="37vLTx">
                            <node concept="1pGfFk" id="6QH_LDtbDFj" role="2ShVmc">
                              <ref role="37wK5l" node="4Z$O9mrTmmf" resolve="Typechecking.TypeCacheHolder" />
                              <node concept="37vLTw" id="6QH_LDtbDFk" role="37wK5m">
                                <ref role="3cqZAo" node="6QH_LDtbCgW" resolve="unit" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="6QH_LDtbDFl" role="37vLTJ">
                            <ref role="3cqZAo" node="6QH_LDtbDEZ" resolve="holder" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6QH_LDte1kl" role="3cqZAp">
                        <node concept="2OqwBi" id="6QH_LDte3gr" role="3clFbG">
                          <node concept="37vLTw" id="6QH_LDte1kj" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Z$O9mrTa0z" resolve="cacheHolders" />
                          </node>
                          <node concept="TSZUe" id="6QH_LDte3YJ" role="2OqNvi">
                            <node concept="37vLTw" id="6QH_LDte4jK" role="25WWJ7">
                              <ref role="3cqZAo" node="6QH_LDtbDEZ" resolve="holder" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="6QH_LDtbDFm" role="3clFbw">
                      <node concept="37vLTw" id="6QH_LDtbDFn" role="3uHU7B">
                        <ref role="3cqZAo" node="6QH_LDtbDEZ" resolve="holder" />
                      </node>
                      <node concept="10Nm6u" id="6QH_LDtbDFo" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6QH_LDtbDD$" role="3cqZAp" />
                  <node concept="3cpWs8" id="6QH_LDtbC5c" role="3cqZAp">
                    <node concept="3cpWsn" id="6QH_LDtbC5d" role="3cpWs9">
                      <property role="TrG5h" value="newCache" />
                      <node concept="3uibUv" id="6QH_LDtbC5b" role="1tU5fm">
                        <ref role="3uigEE" node="6QH_LDtcxgf" resolve="Typechecking.UpdatableTypeCache" />
                      </node>
                      <node concept="2ShNRf" id="6QH_LDtbC5e" role="33vP2m">
                        <node concept="1pGfFk" id="6QH_LDtbC5f" role="2ShVmc">
                          <ref role="37wK5l" node="6QH_LDtcxgh" resolve="Typechecking.UpdatableTypeCache" />
                          <node concept="37vLTw" id="6QH_LDtbC5g" role="37wK5m">
                            <ref role="3cqZAo" node="4Z$O9mrQIM1" resolve="repository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6QH_LDtbADa" role="3cqZAp">
                    <node concept="2OqwBi" id="6QH_LDtbAKn" role="3clFbG">
                      <node concept="37vLTw" id="6QH_LDtbAD9" role="2Oq$k0">
                        <ref role="3cqZAo" node="6QH_LDtbza3" resolve="updater" />
                      </node>
                      <node concept="liA8E" id="6QH_LDtbAVc" role="2OqNvi">
                        <ref role="37wK5l" node="6QH_LDtb_6x" resolve="doUpdate" />
                        <node concept="37vLTw" id="6QH_LDtbC5h" role="37wK5m">
                          <ref role="3cqZAo" node="6QH_LDtbC5d" resolve="newCache" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6QH_LDtbCeT" role="3cqZAp" />
                  <node concept="3clFbF" id="6QH_LDtbFf5" role="3cqZAp">
                    <node concept="2OqwBi" id="6QH_LDtbFf6" role="3clFbG">
                      <node concept="37vLTw" id="6QH_LDtbFf7" role="2Oq$k0">
                        <ref role="3cqZAo" node="6QH_LDtbDEZ" resolve="holder" />
                      </node>
                      <node concept="liA8E" id="6QH_LDtbFf8" role="2OqNvi">
                        <ref role="37wK5l" node="4Z$O9mrTz4F" resolve="setCache" />
                        <node concept="37vLTw" id="6QH_LDtbG1R" role="37wK5m">
                          <ref role="3cqZAo" node="6QH_LDtbC5d" resolve="newCache" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6QH_LDtbFfa" role="3cqZAp">
                    <node concept="37vLTw" id="6QH_LDtbGIu" role="3clFbG">
                      <ref role="3cqZAo" node="6QH_LDtbC5d" resolve="newCache" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6QH_LDtbOyN" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6QH_LDtbscb" role="jymVt" />
    <node concept="3clFb_" id="4Z$O9mrQJ13" role="jymVt">
      <property role="TrG5h" value="newSession" />
      <node concept="37vLTG" id="4Z$O9mrQJ9w" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="H_c77" id="4Z$O9mrQJaW" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4Z$O9mrQJ31" role="3clF45">
        <ref role="3uigEE" node="4Z$O9mrQIzg" resolve="TypecheckingSession" />
      </node>
      <node concept="3Tm1VV" id="4Z$O9mrQJ16" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQJ17" role="3clF47">
        <node concept="3clFbF" id="4Z$O9mrTNlk" role="3cqZAp">
          <node concept="2ShNRf" id="4Z$O9mrTNli" role="3clFbG">
            <node concept="1pGfFk" id="4Z$O9mrTNPy" role="2ShVmc">
              <ref role="37wK5l" node="4Z$O9mrTNJK" resolve="TypecheckingSession" />
              <node concept="37vLTw" id="4Z$O9mrTNQM" role="37wK5m">
                <ref role="3cqZAo" node="4Z$O9mrQJ9w" resolve="unit" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrTfe4" role="jymVt" />
    <node concept="3HP615" id="6QH_LDtfe19" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TypeCache" />
      <node concept="2tJIrI" id="6QH_LDtffII" role="jymVt" />
      <node concept="3clFb_" id="6QH_LDtffJj" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="typeOf" />
        <node concept="37vLTG" id="6QH_LDtffNl" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="6QH_LDtffQf" role="1tU5fm" />
        </node>
        <node concept="3Tqbb2" id="6QH_LDtfine" role="3clF45" />
        <node concept="3Tm1VV" id="6QH_LDtffJm" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtffJn" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6QH_LDtffK6" role="jymVt" />
      <node concept="3Tm1VV" id="6QH_LDtfe1a" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6QH_LDtfd9y" role="jymVt" />
    <node concept="3HP615" id="6QH_LDtb$zi" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TypeCacheUpdate" />
      <node concept="2tJIrI" id="6QH_LDtb_5J" role="jymVt" />
      <node concept="3clFb_" id="6QH_LDtb_6x" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="doUpdate" />
        <node concept="37vLTG" id="6QH_LDtb_7x" role="3clF46">
          <property role="TrG5h" value="typesCache" />
          <node concept="3uibUv" id="6QH_LDtb_88" role="1tU5fm">
            <ref role="3uigEE" node="6QH_LDtcxgf" resolve="Typechecking.UpdatableTypeCache" />
          </node>
        </node>
        <node concept="3cqZAl" id="6QH_LDtb_6z" role="3clF45" />
        <node concept="3Tm1VV" id="6QH_LDtb_6$" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtb_6_" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6QH_LDtb_5O" role="jymVt" />
      <node concept="3Tm1VV" id="6QH_LDtb$zj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6QH_LDtcxVb" role="jymVt" />
    <node concept="312cEu" id="6QH_LDtcxgf" role="jymVt">
      <property role="TrG5h" value="UpdatableTypeCache" />
      <node concept="2tJIrI" id="6QH_LDtcxgg" role="jymVt" />
      <node concept="3clFbW" id="6QH_LDtcxgh" role="jymVt">
        <node concept="37vLTG" id="6QH_LDtcxgi" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="6QH_LDtcxgj" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3cqZAl" id="6QH_LDtcxgk" role="3clF45" />
        <node concept="3Tm6S6" id="6QH_LDtcCCx" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtcxgm" role="3clF47">
          <node concept="3clFbF" id="6QH_LDtcxgn" role="3cqZAp">
            <node concept="37vLTI" id="6QH_LDtcxgo" role="3clFbG">
              <node concept="2OqwBi" id="6QH_LDtcxgp" role="37vLTx">
                <node concept="2YIFZM" id="6QH_LDtcxgq" role="2Oq$k0">
                  <ref role="1Pybhc" to="umch:2zU3cYqxbbL" resolve="TypesModelManager" />
                  <ref role="37wK5l" to="umch:2zU3cYqxb_u" resolve="get" />
                  <node concept="37vLTw" id="6QH_LDtcxgr" role="37wK5m">
                    <ref role="3cqZAo" node="6QH_LDtcxgi" resolve="repository" />
                  </node>
                </node>
                <node concept="liA8E" id="6QH_LDtcxgs" role="2OqNvi">
                  <ref role="37wK5l" to="umch:2zU3cYq$52j" resolve="emptyModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="6QH_LDtcxgt" role="37vLTJ">
                <node concept="Xjq3P" id="6QH_LDtcxgu" role="2Oq$k0" />
                <node concept="2OwXpG" id="6QH_LDtcxgv" role="2OqNvi">
                  <ref role="2Oxat5" node="6QH_LDtcxh0" resolve="typesModelOwner" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6QH_LDtcxgw" role="jymVt" />
      <node concept="3clFb_" id="6QH_LDtcxgx" role="jymVt">
        <property role="TrG5h" value="typesModel" />
        <node concept="H_c77" id="6QH_LDtcxgy" role="3clF45" />
        <node concept="3Tm1VV" id="6QH_LDtcxgz" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtcxg$" role="3clF47">
          <node concept="3clFbF" id="6QH_LDtcxg_" role="3cqZAp">
            <node concept="2OqwBi" id="6QH_LDtcxgA" role="3clFbG">
              <node concept="37vLTw" id="6QH_LDtcxgB" role="2Oq$k0">
                <ref role="3cqZAo" node="6QH_LDtcxh0" resolve="typesModelOwner" />
              </node>
              <node concept="liA8E" id="6QH_LDtcxgC" role="2OqNvi">
                <ref role="37wK5l" to="umch:2zU3cYq$9HD" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6QH_LDtcxgD" role="jymVt" />
      <node concept="3clFb_" id="6QH_LDtcxgE" role="jymVt">
        <property role="TrG5h" value="clear" />
        <node concept="3cqZAl" id="6QH_LDtcxgF" role="3clF45" />
        <node concept="3Tm1VV" id="6QH_LDtcxgG" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtcxgH" role="3clF47">
          <node concept="3clFbF" id="6QH_LDtcxgI" role="3cqZAp">
            <node concept="2OqwBi" id="6QH_LDtcxgJ" role="3clFbG">
              <node concept="37vLTw" id="6QH_LDtcxgK" role="2Oq$k0">
                <ref role="3cqZAo" node="6QH_LDtcxh0" resolve="typesModelOwner" />
              </node>
              <node concept="liA8E" id="6QH_LDtcxgL" role="2OqNvi">
                <ref role="37wK5l" to="umch:2zU3cYq$$V4" resolve="clear" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6QH_LDtcPAS" role="3cqZAp">
            <node concept="2OqwBi" id="6QH_LDtcPXw" role="3clFbG">
              <node concept="37vLTw" id="6QH_LDtcPAQ" role="2Oq$k0">
                <ref role="3cqZAo" node="6QH_LDtcJq4" resolve="typeNodes" />
              </node>
              <node concept="1yHZxX" id="6QH_LDtcQtN" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6QH_LDtcCVX" role="jymVt" />
      <node concept="3clFb_" id="6QH_LDtcYUC" role="jymVt">
        <property role="TrG5h" value="putType" />
        <node concept="37vLTG" id="6QH_LDtd1QE" role="3clF46">
          <property role="TrG5h" value="ref" />
          <node concept="3uibUv" id="6QH_LDtd2q6" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
        <node concept="37vLTG" id="6QH_LDtd2re" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3Tqbb2" id="6QH_LDtd2YG" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6QH_LDtcYUE" role="3clF45" />
        <node concept="3Tm1VV" id="6QH_LDtcYUF" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtcYUG" role="3clF47">
          <node concept="3clFbF" id="6QH_LDtde1j" role="3cqZAp">
            <node concept="37vLTI" id="6QH_LDtdeVn" role="3clFbG">
              <node concept="37vLTw" id="6QH_LDtdeYh" role="37vLTx">
                <ref role="3cqZAo" node="6QH_LDtd2re" resolve="type" />
              </node>
              <node concept="3EllGN" id="6QH_LDtdeIn" role="37vLTJ">
                <node concept="37vLTw" id="6QH_LDtdeN7" role="3ElVtu">
                  <ref role="3cqZAo" node="6QH_LDtd1QE" resolve="ref" />
                </node>
                <node concept="37vLTw" id="6QH_LDtde1i" role="3ElQJh">
                  <ref role="3cqZAo" node="6QH_LDtcJq4" resolve="typeNodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6QH_LDtcX_k" role="jymVt" />
      <node concept="3clFb_" id="6QH_LDtcxgN" role="jymVt">
        <property role="TrG5h" value="typeOf" />
        <node concept="37vLTG" id="6QH_LDtcxgO" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="6QH_LDtcxgP" role="1tU5fm" />
        </node>
        <node concept="3Tqbb2" id="6QH_LDtcxgQ" role="3clF45" />
        <node concept="3Tm1VV" id="6QH_LDtcxgR" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtcxgS" role="3clF47">
          <node concept="3cpWs8" id="3u5wJtdnrW" role="3cqZAp">
            <node concept="3cpWsn" id="3u5wJtdnrX" role="3cpWs9">
              <property role="TrG5h" value="reference" />
              <node concept="3uibUv" id="3u5wJtdnrT" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="2OqwBi" id="3u5wJtdnrY" role="33vP2m">
                <node concept="2JrnkZ" id="3u5wJtdnrZ" role="2Oq$k0">
                  <node concept="37vLTw" id="3u5wJtdns0" role="2JrQYb">
                    <ref role="3cqZAo" node="6QH_LDtcxgO" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="3u5wJtdns1" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6QH_LDteZQM" role="3cqZAp">
            <node concept="3EllGN" id="6QH_LDtf0fY" role="3clFbG">
              <node concept="37vLTw" id="3u5wJtdns2" role="3ElVtu">
                <ref role="3cqZAo" node="3u5wJtdnrX" resolve="reference" />
              </node>
              <node concept="37vLTw" id="6QH_LDteZQL" role="3ElQJh">
                <ref role="3cqZAo" node="6QH_LDtcJq4" resolve="typeNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6QH_LDtfhB5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6QH_LDtcxgZ" role="jymVt" />
      <node concept="312cEg" id="6QH_LDtcxh0" role="jymVt">
        <property role="TrG5h" value="typesModelOwner" />
        <node concept="3Tm6S6" id="6QH_LDtcxh1" role="1B3o_S" />
        <node concept="3uibUv" id="6QH_LDtcxh2" role="1tU5fm">
          <ref role="3uigEE" to="umch:2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
        </node>
      </node>
      <node concept="312cEg" id="6QH_LDtcJq4" role="jymVt">
        <property role="TrG5h" value="typeNodes" />
        <node concept="3Tm6S6" id="6QH_LDtcJq5" role="1B3o_S" />
        <node concept="3rvAFt" id="6QH_LDtcKFO" role="1tU5fm">
          <node concept="3uibUv" id="6QH_LDtcKGq" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3Tqbb2" id="6QH_LDtcNj4" role="3rvSg0" />
        </node>
        <node concept="2ShNRf" id="6QH_LDtcNmE" role="33vP2m">
          <node concept="3rGOSV" id="6QH_LDtcNl_" role="2ShVmc">
            <node concept="3uibUv" id="6QH_LDtcNlA" role="3rHrn6">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="3Tqbb2" id="6QH_LDtcNlB" role="3rHtpV" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6QH_LDtcxh4" role="1B3o_S" />
      <node concept="3uibUv" id="6QH_LDtfgH9" role="EKbjA">
        <ref role="3uigEE" node="6QH_LDtfe19" resolve="Typechecking.TypeCache" />
      </node>
    </node>
    <node concept="2tJIrI" id="6QH_LDtb$2L" role="jymVt" />
    <node concept="312cEu" id="4Z$O9mrQJw7" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TypeCacheHolder" />
      <node concept="2tJIrI" id="4Z$O9mrQJz2" role="jymVt" />
      <node concept="3clFbW" id="4Z$O9mrTmmf" role="jymVt">
        <node concept="3cqZAl" id="4Z$O9mrTmmh" role="3clF45" />
        <node concept="3Tm6S6" id="4Z$O9mrTmmi" role="1B3o_S" />
        <node concept="3clFbS" id="4Z$O9mrTmmj" role="3clF47">
          <node concept="3clFbF" id="4Z$O9mrTnFZ" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrTo3A" role="3clFbG">
              <node concept="37vLTw" id="4Z$O9mrTo5O" role="37vLTx">
                <ref role="3cqZAo" node="4Z$O9mrTnE3" resolve="unit" />
              </node>
              <node concept="2OqwBi" id="4Z$O9mrTnLp" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrTnFY" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrTnQU" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrQJ_R" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJte83y" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJte8pU" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtdQ7a" resolve="trackChanges" />
              <node concept="37vLTw" id="3u5wJte8tk" role="37wK5m">
                <ref role="3cqZAo" node="4Z$O9mrTnE3" resolve="unit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4Z$O9mrTnE3" role="3clF46">
          <property role="TrG5h" value="unit" />
          <node concept="H_c77" id="4Z$O9mrTnE2" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrTm$z" role="jymVt" />
      <node concept="3clFb_" id="4Z$O9mrQJB5" role="jymVt">
        <property role="TrG5h" value="isUpToDate" />
        <node concept="10P_77" id="4Z$O9mrQJCk" role="3clF45" />
        <node concept="3Tm6S6" id="4Z$O9mrTmLZ" role="1B3o_S" />
        <node concept="3clFbS" id="4Z$O9mrQJB9" role="3clF47">
          <node concept="3clFbF" id="3u5wJtdJvE" role="3cqZAp">
            <node concept="37vLTw" id="3u5wJtdJvD" role="3clFbG">
              <ref role="3cqZAo" node="3u5wJtdJ0w" resolve="upToDate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrTyan" role="jymVt" />
      <node concept="3clFb_" id="4Z$O9mrTz4F" role="jymVt">
        <property role="TrG5h" value="setCache" />
        <node concept="37vLTG" id="4Z$O9mrT_Xw" role="3clF46">
          <property role="TrG5h" value="newCache" />
          <node concept="3uibUv" id="4Z$O9mrTAhH" role="1tU5fm">
            <ref role="3uigEE" node="6QH_LDtcxgf" resolve="Typechecking.UpdatableTypeCache" />
          </node>
        </node>
        <node concept="3cqZAl" id="4Z$O9mrTz4I" role="3clF45" />
        <node concept="3Tm6S6" id="4Z$O9mrTz4J" role="1B3o_S" />
        <node concept="3clFbS" id="4Z$O9mrTz4K" role="3clF47">
          <node concept="3clFbF" id="3u5wJtf8oo" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf8om" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtfdzL" resolve="clearCache" />
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtf$kL" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf$kJ" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtfhlw" resolve="clearChanges" />
            </node>
          </node>
          <node concept="3clFbF" id="4Z$O9mrT_4b" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT_ua" role="3clFbG">
              <node concept="37vLTw" id="4Z$O9mrTAly" role="37vLTx">
                <ref role="3cqZAo" node="4Z$O9mrT_Xw" resolve="newCache" />
              </node>
              <node concept="2OqwBi" id="4Z$O9mrT_c1" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT_49" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT_it" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrQJ$h" resolve="cache" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrQJI7" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtfjHf" role="jymVt">
        <property role="TrG5h" value="clearAll" />
        <node concept="3cqZAl" id="3u5wJtfjHh" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtfjHi" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtfjHj" role="3clF47">
          <node concept="3clFbF" id="3u5wJtf$1F" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf$1E" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtfdzL" resolve="clearCache" />
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtf$5K" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf$5I" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtfhlw" resolve="clearChanges" />
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtf$a7" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf$a5" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtf9jK" resolve="clearUnit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtfxBn" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtfdzL" role="jymVt">
        <property role="TrG5h" value="clearCache" />
        <node concept="3cqZAl" id="3u5wJtfdzN" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtfdzO" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtfdzP" role="3clF47">
          <node concept="3clFbJ" id="3u5wJtf6Zo" role="3cqZAp">
            <node concept="3clFbS" id="3u5wJtf6Zq" role="3clFbx">
              <node concept="3clFbF" id="4Z$O9mrSGzX" role="3cqZAp">
                <node concept="2OqwBi" id="4Z$O9mrSGET" role="3clFbG">
                  <node concept="37vLTw" id="4Z$O9mrSGzW" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Z$O9mrQJ$h" resolve="cache" />
                  </node>
                  <node concept="liA8E" id="4Z$O9mrT9b$" role="2OqNvi">
                    <ref role="37wK5l" node="6QH_LDtcxgE" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4Z$O9mrT$1w" role="3cqZAp">
                <node concept="37vLTI" id="4Z$O9mrT$s8" role="3clFbG">
                  <node concept="10Nm6u" id="4Z$O9mrT$uW" role="37vLTx" />
                  <node concept="2OqwBi" id="4Z$O9mrT$a3" role="37vLTJ">
                    <node concept="Xjq3P" id="4Z$O9mrT$1u" role="2Oq$k0" />
                    <node concept="2OwXpG" id="4Z$O9mrT$gv" role="2OqNvi">
                      <ref role="2Oxat5" node="4Z$O9mrQJ$h" resolve="cache" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3u5wJtf7GF" role="3clFbw">
              <node concept="10Nm6u" id="3u5wJtf7HU" role="3uHU7w" />
              <node concept="37vLTw" id="3u5wJtf7u1" role="3uHU7B">
                <ref role="3cqZAo" node="4Z$O9mrQJ$h" resolve="cache" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtfgz8" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtfhlw" role="jymVt">
        <property role="TrG5h" value="clearChanges" />
        <node concept="3cqZAl" id="3u5wJtfhly" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtfhlz" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtfhl$" role="3clF47">
          <node concept="3clFbF" id="3u5wJtfr4m" role="3cqZAp">
            <node concept="37vLTI" id="3u5wJtfrpa" role="3clFbG">
              <node concept="3clFbT" id="3u5wJtfrvm" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="3u5wJtfr4k" role="37vLTJ">
                <ref role="3cqZAo" node="3u5wJtdJ0w" resolve="upToDate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtfq9$" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtf9jK" role="jymVt">
        <property role="TrG5h" value="clearUnit" />
        <node concept="3cqZAl" id="3u5wJtf9jM" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtf9jN" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtf9jO" role="3clF47">
          <node concept="3clFbJ" id="3u5wJtfqSg" role="3cqZAp">
            <node concept="3clFbS" id="3u5wJtfqSh" role="3clFbx">
              <node concept="3clFbF" id="3u5wJtfqSi" role="3cqZAp">
                <node concept="1rXfSq" id="3u5wJtfqSj" role="3clFbG">
                  <ref role="37wK5l" node="3u5wJte1ac" resolve="untrackChanges" />
                  <node concept="37vLTw" id="3u5wJtfqSk" role="37wK5m">
                    <ref role="3cqZAo" node="4Z$O9mrQJ_R" resolve="unit" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3u5wJtfqSl" role="3clFbw">
              <node concept="3y3z36" id="3u5wJtfqSm" role="3uHU7w">
                <node concept="10Nm6u" id="3u5wJtfqSn" role="3uHU7w" />
                <node concept="37vLTw" id="3u5wJtfqSo" role="3uHU7B">
                  <ref role="3cqZAo" node="3u5wJtdXJF" resolve="changesTracker" />
                </node>
              </node>
              <node concept="3y3z36" id="3u5wJtfqSp" role="3uHU7B">
                <node concept="37vLTw" id="3u5wJtfqSq" role="3uHU7B">
                  <ref role="3cqZAo" node="4Z$O9mrQJ_R" resolve="unit" />
                </node>
                <node concept="10Nm6u" id="3u5wJtfqSr" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Z$O9mrT9o8" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT9Mm" role="3clFbG">
              <node concept="10Nm6u" id="4Z$O9mrT9Pc" role="37vLTx" />
              <node concept="2OqwBi" id="4Z$O9mrT9vn" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT9o6" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT9_J" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrQJ_R" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtfcLz" role="jymVt" />
      <node concept="3clFb_" id="3u5wJteF$I" role="jymVt">
        <property role="TrG5h" value="invalidate" />
        <node concept="3Tm6S6" id="3u5wJteF$J" role="1B3o_S" />
        <node concept="3cqZAl" id="3u5wJteF$K" role="3clF45" />
        <node concept="37vLTG" id="3u5wJteFyT" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="3u5wJteFyU" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="3u5wJteFyL" role="3clF47">
          <node concept="3clFbF" id="3u5wJteFyM" role="3cqZAp">
            <node concept="37vLTI" id="3u5wJteFyN" role="3clFbG">
              <node concept="3clFbT" id="3u5wJteFyO" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="37vLTw" id="3u5wJteFyP" role="37vLTJ">
                <ref role="3cqZAo" node="3u5wJtdJ0w" resolve="upToDate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJteFyQ" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJteFyR" role="3clFbG">
              <ref role="37wK5l" node="3u5wJte1ac" resolve="untrackChanges" />
              <node concept="37vLTw" id="3u5wJteF$F" role="37wK5m">
                <ref role="3cqZAo" node="3u5wJteFyT" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtdPBv" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtdQ7a" role="jymVt">
        <property role="TrG5h" value="trackChanges" />
        <node concept="37vLTG" id="3u5wJtdRvH" role="3clF46">
          <property role="TrG5h" value="unit" />
          <node concept="H_c77" id="3u5wJtdRXN" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="3u5wJtdQ7c" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtdQ7d" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtdQ7e" role="3clF47">
          <node concept="3clFbF" id="3u5wJteamL" role="3cqZAp">
            <node concept="37vLTI" id="3u5wJtebaN" role="3clFbG">
              <node concept="2OqwBi" id="3u5wJtea$n" role="37vLTJ">
                <node concept="Xjq3P" id="3u5wJteamJ" role="2Oq$k0" />
                <node concept="2OwXpG" id="3u5wJteaPO" role="2OqNvi">
                  <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                </node>
              </node>
              <node concept="2ShNRf" id="3u5wJtebs7" role="37vLTx">
                <node concept="HV5vD" id="3u5wJtebs8" role="2ShVmc">
                  <ref role="HV5vE" node="3u5wJtdJxb" resolve="Typechecking.TypeCacheHolder.ChangesTracker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtdS0M" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJtdSDo" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJtdSzt" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJtdS0L" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJtdRvH" resolve="unit" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJtdSJh" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener):void" resolve="addChangeListener" />
                <node concept="2OqwBi" id="3u5wJtdXJN" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJtdXJO" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJtdXJP" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJte0SB" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJte0SC" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJte0SD" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJte0SE" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJtdRvH" resolve="unit" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJte0SF" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener):void" resolve="addModelListener" />
                <node concept="2OqwBi" id="3u5wJte0SG" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJte0SH" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJte0SI" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJte1Sx" role="jymVt" />
      <node concept="3clFb_" id="3u5wJte1ac" role="jymVt">
        <property role="TrG5h" value="untrackChanges" />
        <node concept="37vLTG" id="3u5wJte1ad" role="3clF46">
          <property role="TrG5h" value="unit" />
          <node concept="H_c77" id="3u5wJte1ae" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="3u5wJte1af" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJte1ag" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJte1ah" role="3clF47">
          <node concept="3clFbF" id="3u5wJte1ai" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJte1aj" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJte1ak" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJte1al" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJte1ad" resolve="unit" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJte1am" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener):void" resolve="removeChangeListener" />
                <node concept="2OqwBi" id="3u5wJte1an" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJte1ao" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJte1ap" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJte1aq" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJte1ar" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJte1as" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJte1at" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJte1ad" resolve="unit" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJte1au" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener):void" resolve="removeModelListener" />
                <node concept="2OqwBi" id="3u5wJte1av" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJte1aw" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJte1ax" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtebVE" role="3cqZAp">
            <node concept="37vLTI" id="3u5wJtecK5" role="3clFbG">
              <node concept="10Nm6u" id="3u5wJtecSP" role="37vLTx" />
              <node concept="2OqwBi" id="3u5wJtec9g" role="37vLTJ">
                <node concept="Xjq3P" id="3u5wJtebVC" role="2Oq$k0" />
                <node concept="2OwXpG" id="3u5wJtecqX" role="2OqNvi">
                  <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrQJHh" role="jymVt" />
      <node concept="312cEu" id="3u5wJtdJxb" role="jymVt">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="ChangesTracker" />
        <node concept="2tJIrI" id="3u5wJtdK2h" role="jymVt" />
        <node concept="3clFb_" id="3u5wJtdOBE" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="modelReplaced" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdOBF" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdOBH" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdOBI" role="3clF46">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="3u5wJtdOBJ" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdOBK" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF$N" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF$M" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="37vLTw" id="3u5wJteF$L" role="37wK5m">
                  <ref role="3cqZAo" node="3u5wJtdOBI" resolve="model" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdOBL" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK2v" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="propertyChanged" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK2w" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK2y" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK2z" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK2$" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK2A" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF$S" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF$R" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF$O" role="37wK5m">
                  <node concept="37vLTw" id="3u5wJteF$P" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK2z" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF$Q" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK2B" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK2F" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="referenceChanged" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK2G" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK2I" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK2J" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK2K" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK2M" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF$X" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF$W" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF$T" role="37wK5m">
                  <node concept="37vLTw" id="3u5wJteF$U" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK2J" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF$V" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK2N" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK2R" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="nodeAdded" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK2S" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK2U" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK2V" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK2W" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK2Y" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF_2" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF_1" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF$Y" role="37wK5m">
                  <node concept="37vLTw" id="3u5wJteF$Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK2V" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF_0" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK2Z" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK33" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="nodeRemoved" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK34" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK36" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK37" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK38" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK3a" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF_7" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF_6" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF_3" role="37wK5m">
                  <node concept="37vLTw" id="3u5wJteF_4" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK37" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF_5" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK3b" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="3u5wJtdPeJ" role="jymVt" />
        <node concept="3Tm1VV" id="3u5wJtdJxc" role="1B3o_S" />
        <node concept="3uibUv" id="3u5wJtdM0N" role="EKbjA">
          <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
        </node>
        <node concept="3uibUv" id="3u5wJtdOqg" role="1zkMxy">
          <ref role="3uigEE" to="mhbf:~SModelListenerBase" resolve="SModelListenerBase" />
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtdI$n" role="jymVt" />
      <node concept="312cEg" id="3u5wJtdXJF" role="jymVt">
        <property role="TrG5h" value="changesTracker" />
        <node concept="3Tm6S6" id="3u5wJtdXJB" role="1B3o_S" />
        <node concept="3uibUv" id="3u5wJtdXJC" role="1tU5fm">
          <ref role="3uigEE" node="3u5wJtdJxb" resolve="Typechecking.TypeCacheHolder.ChangesTracker" />
        </node>
      </node>
      <node concept="312cEg" id="3u5wJtdJ0w" role="jymVt">
        <property role="TrG5h" value="upToDate" />
        <node concept="3Tm6S6" id="3u5wJtdJ0x" role="1B3o_S" />
        <node concept="10P_77" id="3u5wJtdJrE" role="1tU5fm" />
        <node concept="3clFbT" id="3u5wJtdJtc" role="33vP2m">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="312cEg" id="4Z$O9mrQJ_R" role="jymVt">
        <property role="TrG5h" value="unit" />
        <node concept="3Tm6S6" id="4Z$O9mrQJ_S" role="1B3o_S" />
        <node concept="H_c77" id="4Z$O9mrQJAt" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="4Z$O9mrQJ$h" role="jymVt">
        <property role="TrG5h" value="cache" />
        <node concept="3Tm6S6" id="4Z$O9mrQJ$i" role="1B3o_S" />
        <node concept="3uibUv" id="4Z$O9mrQJ$W" role="1tU5fm">
          <ref role="3uigEE" node="6QH_LDtcxgf" resolve="Typechecking.UpdatableTypeCache" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrQJzI" role="jymVt" />
      <node concept="3Tm6S6" id="4Z$O9mrQJy9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQJqd" role="jymVt" />
    <node concept="3Tm1VV" id="4Z$O9mrQIzZ" role="1B3o_S" />
    <node concept="312cEg" id="4Z$O9mrQIM1" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="4Z$O9mrQIM2" role="1B3o_S" />
      <node concept="3uibUv" id="4Z$O9mrQIM4" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="4Z$O9mrTa0z" role="jymVt">
      <property role="TrG5h" value="cacheHolders" />
      <node concept="3Tm6S6" id="4Z$O9mrTa0$" role="1B3o_S" />
      <node concept="_YKpA" id="4Z$O9mrTa4a" role="1tU5fm">
        <node concept="3uibUv" id="4Z$O9mrTa4y" role="_ZDj9">
          <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="Typechecking.TypeCacheHolder" />
        </node>
      </node>
      <node concept="2ShNRf" id="4Z$O9mrTa74" role="33vP2m">
        <node concept="Tc6Ow" id="4Z$O9mrTa6m" role="2ShVmc">
          <node concept="3uibUv" id="4Z$O9mrTa6n" role="HW$YZ">
            <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="Typechecking.TypeCacheHolder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQIUb" role="jymVt" />
  </node>
  <node concept="312cEu" id="7kaxm0sEy3e">
    <property role="TrG5h" value="TypecheckingFacade" />
    <node concept="2tJIrI" id="7kaxm0sEy44" role="jymVt" />
    <node concept="Wx3nA" id="7kaxm0sEy6N" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="7kaxm0sEy6P" role="1B3o_S" />
      <node concept="3uibUv" id="7kaxm0sEy7l" role="1tU5fm">
        <ref role="3uigEE" node="7kaxm0sEy3e" resolve="TypecheckingFacade" />
      </node>
      <node concept="2ShNRf" id="7kaxm0sEy8e" role="33vP2m">
        <node concept="1pGfFk" id="7kaxm0sEBD8" role="2ShVmc">
          <ref role="37wK5l" node="7kaxm0sEBCn" resolve="TypecheckingFacade" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7kaxm0sEy6p" role="jymVt" />
    <node concept="2YIFZL" id="7kaxm0sEy4A" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="7kaxm0sEy59" role="3clF45">
        <ref role="3uigEE" node="7kaxm0sEy3e" resolve="TypecheckingFacade" />
      </node>
      <node concept="3Tm1VV" id="7kaxm0sEy4D" role="1B3o_S" />
      <node concept="3clFbS" id="7kaxm0sEy4E" role="3clF47">
        <node concept="3clFbF" id="7kaxm0sEBFt" role="3cqZAp">
          <node concept="37vLTw" id="7kaxm0sEBFs" role="3clFbG">
            <ref role="3cqZAo" node="7kaxm0sEy6N" resolve="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7kaxm0sEBBr" role="jymVt" />
    <node concept="3clFbW" id="7kaxm0sEBCn" role="jymVt">
      <node concept="3cqZAl" id="7kaxm0sEBCp" role="3clF45" />
      <node concept="3Tm6S6" id="7kaxm0sEBD_" role="1B3o_S" />
      <node concept="3clFbS" id="7kaxm0sEBCr" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7kaxm0sEy4j" role="jymVt" />
    <node concept="3clFb_" id="7kaxm0sEBHs" role="jymVt">
      <property role="TrG5h" value="typeOf" />
      <node concept="37vLTG" id="7kaxm0sEBL9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7kaxm0sEBLY" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="7kaxm0sEBIE" role="3clF45" />
      <node concept="3Tm1VV" id="7kaxm0sEBHv" role="1B3o_S" />
      <node concept="3clFbS" id="7kaxm0sEBHw" role="3clF47">
        <node concept="3clFbJ" id="6$7vuu2xMI_" role="3cqZAp">
          <node concept="3clFbS" id="6$7vuu2xMIB" role="3clFbx">
            <node concept="3cpWs6" id="6$7vuu2xNIY" role="3cqZAp">
              <node concept="10Nm6u" id="6$7vuu2xOx_" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6$7vuu2xNGJ" role="3clFbw">
            <node concept="10Nm6u" id="6$7vuu2xNHk" role="3uHU7w" />
            <node concept="37vLTw" id="6$7vuu2xN$Q" role="3uHU7B">
              <ref role="3cqZAo" node="7kaxm0sEBL9" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6$7vuu2xPjG" role="3cqZAp" />
        <node concept="3cpWs8" id="7kaxm0sEC4e" role="3cqZAp">
          <node concept="3cpWsn" id="7kaxm0sEC4f" role="3cpWs9">
            <property role="TrG5h" value="unit" />
            <node concept="H_c77" id="7kaxm0sEC4c" role="1tU5fm" />
            <node concept="2OqwBi" id="7kaxm0sEC4g" role="33vP2m">
              <node concept="37vLTw" id="7kaxm0sEC4h" role="2Oq$k0">
                <ref role="3cqZAo" node="7kaxm0sEBL9" resolve="node" />
              </node>
              <node concept="I4A8Y" id="7kaxm0sEC4i" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6$7vuu2xT2Q" role="3cqZAp">
          <node concept="3SKdUq" id="6$7vuu2xT2S" role="3SKWNk">
            <property role="3SKdUp" value="typechecking is relevant to a model" />
          </node>
        </node>
        <node concept="3clFbJ" id="6$7vuu2xQZS" role="3cqZAp">
          <node concept="3clFbS" id="6$7vuu2xQZU" role="3clFbx">
            <node concept="3cpWs6" id="6$7vuu2xSbv" role="3cqZAp">
              <node concept="10Nm6u" id="6$7vuu2xSc5" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6$7vuu2xS95" role="3clFbw">
            <node concept="10Nm6u" id="6$7vuu2xSat" role="3uHU7w" />
            <node concept="37vLTw" id="6$7vuu2xRQo" role="3uHU7B">
              <ref role="3cqZAo" node="7kaxm0sEC4f" resolve="unit" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$7vuu2wPaE" role="3cqZAp">
          <node concept="3cpWsn" id="6$7vuu2wPaF" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="6$7vuu2wPay" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6$7vuu2wPaG" role="33vP2m">
              <node concept="2JrnkZ" id="6$7vuu2wPaH" role="2Oq$k0">
                <node concept="37vLTw" id="6$7vuu2wPaI" role="2JrQYb">
                  <ref role="3cqZAo" node="7kaxm0sEC4f" resolve="unit" />
                </node>
              </node>
              <node concept="liA8E" id="6$7vuu2wPaJ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6$7vuu2wYmV" role="3cqZAp">
          <node concept="3SKdUq" id="6$7vuu2wYmX" role="3SKWNk">
            <property role="3SKdUp" value="can't run typechecking on a detached model" />
          </node>
        </node>
        <node concept="3clFbJ" id="6$7vuu2wUZ$" role="3cqZAp">
          <node concept="3clFbS" id="6$7vuu2wUZA" role="3clFbx">
            <node concept="3cpWs6" id="6$7vuu2wWOZ" role="3cqZAp">
              <node concept="10Nm6u" id="6$7vuu2wXzD" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6$7vuu2wVXR" role="3clFbw">
            <node concept="10Nm6u" id="6$7vuu2wVYs" role="3uHU7w" />
            <node concept="37vLTw" id="6$7vuu2wVPQ" role="3uHU7B">
              <ref role="3cqZAo" node="6$7vuu2wPaF" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3u5wJtaWKY" role="3cqZAp">
          <node concept="3SKdUq" id="3u5wJtaWL0" role="3SKWNk">
            <property role="3SKdUp" value="ensure we can read the model" />
          </node>
        </node>
        <node concept="3clFbF" id="3u5wJtaUx5" role="3cqZAp">
          <node concept="2OqwBi" id="3u5wJtaVF_" role="3clFbG">
            <node concept="2OqwBi" id="3u5wJtaVuj" role="2Oq$k0">
              <node concept="37vLTw" id="3u5wJtaUx3" role="2Oq$k0">
                <ref role="3cqZAo" node="6$7vuu2wPaF" resolve="repository" />
              </node>
              <node concept="liA8E" id="3u5wJtaV$y" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3u5wJtaVQz" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess():void" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6$7vuu2wVZh" role="3cqZAp" />
        <node concept="3cpWs8" id="7kaxm0sECXD" role="3cqZAp">
          <node concept="3cpWsn" id="7kaxm0sECXE" role="3cpWs9">
            <property role="TrG5h" value="tc" />
            <node concept="3uibUv" id="7kaxm0sECXA" role="1tU5fm">
              <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="Typechecking" />
            </node>
            <node concept="2YIFZM" id="7kaxm0sECXF" role="33vP2m">
              <ref role="37wK5l" node="4Z$O9mrQIG1" resolve="get" />
              <ref role="1Pybhc" node="4Z$O9mrQIzY" resolve="Typechecking" />
              <node concept="37vLTw" id="7kaxm0sECXG" role="37wK5m">
                <ref role="3cqZAo" node="6$7vuu2wPaF" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7kaxm0sEDgq" role="3cqZAp">
          <node concept="3cpWsn" id="7kaxm0sEDgr" role="3cpWs9">
            <property role="TrG5h" value="typesCache" />
            <node concept="3uibUv" id="6QH_LDtf$gm" role="1tU5fm">
              <ref role="3uigEE" node="6QH_LDtfe19" resolve="Typechecking.TypeCache" />
            </node>
            <node concept="2OqwBi" id="7kaxm0sEDgs" role="33vP2m">
              <node concept="37vLTw" id="7kaxm0sEDgt" role="2Oq$k0">
                <ref role="3cqZAo" node="7kaxm0sECXE" resolve="tc" />
              </node>
              <node concept="liA8E" id="7kaxm0sEDgu" role="2OqNvi">
                <ref role="37wK5l" node="4Z$O9mrQJgp" resolve="cachedTypes" />
                <node concept="37vLTw" id="7kaxm0sEDgv" role="37wK5m">
                  <ref role="3cqZAo" node="7kaxm0sEC4f" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7kaxm0sEDmP" role="3cqZAp">
          <node concept="3clFbS" id="7kaxm0sEDmR" role="3clFbx">
            <node concept="3clFbF" id="6QH_LDtbJk2" role="3cqZAp">
              <node concept="37vLTI" id="6QH_LDtbYJ6" role="3clFbG">
                <node concept="37vLTw" id="6QH_LDtc1cl" role="37vLTJ">
                  <ref role="3cqZAo" node="7kaxm0sEDgr" resolve="typesCache" />
                </node>
                <node concept="2OqwBi" id="6QH_LDtbK7a" role="37vLTx">
                  <node concept="37vLTw" id="6QH_LDtbJk0" role="2Oq$k0">
                    <ref role="3cqZAo" node="7kaxm0sECXE" resolve="tc" />
                  </node>
                  <node concept="liA8E" id="6QH_LDtbKr5" role="2OqNvi">
                    <ref role="37wK5l" node="6QH_LDtbsGz" resolve="updateCachedTypes" />
                    <node concept="37vLTw" id="6QH_LDtbKtg" role="37wK5m">
                      <ref role="3cqZAo" node="7kaxm0sEC4f" resolve="unit" />
                    </node>
                    <node concept="1bVj0M" id="6QH_LDtbKA7" role="37wK5m">
                      <node concept="3clFbS" id="6QH_LDtbKA9" role="1bW5cS">
                        <node concept="3clFbH" id="6QH_LDtbKCF" role="3cqZAp" />
                        <node concept="3cpWs8" id="6QH_LDtbL9Q" role="3cqZAp">
                          <node concept="3cpWsn" id="6QH_LDtbL9R" role="3cpWs9">
                            <property role="TrG5h" value="typesModel" />
                            <node concept="H_c77" id="6QH_LDtbL9N" role="1tU5fm" />
                            <node concept="2OqwBi" id="6QH_LDtbL9S" role="33vP2m">
                              <node concept="37vLTw" id="6QH_LDtbL9T" role="2Oq$k0">
                                <ref role="3cqZAo" node="6QH_LDtbKDF" resolve="typesCache" />
                              </node>
                              <node concept="liA8E" id="6QH_LDtbL9U" role="2OqNvi">
                                <ref role="37wK5l" node="6QH_LDtcxgx" resolve="typesModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6QH_LDtbV4V" role="3cqZAp">
                          <node concept="3cpWsn" id="6QH_LDtbV4W" role="3cpWs9">
                            <property role="TrG5h" value="namehint" />
                            <node concept="17QB3L" id="6QH_LDtbV4X" role="1tU5fm" />
                            <node concept="3cpWs3" id="6QH_LDtbV4Y" role="33vP2m">
                              <node concept="Xl_RD" id="6QH_LDtbV4Z" role="3uHU7B">
                                <property role="Xl_RC" value="type_" />
                              </node>
                              <node concept="2YIFZM" id="6QH_LDtbV50" role="3uHU7w">
                                <ref role="37wK5l" to="18ew:~NameUtil.shortNameFromLongName(java.lang.String):java.lang.String" resolve="shortNameFromLongName" />
                                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                                <node concept="2OqwBi" id="6QH_LDtbV51" role="37wK5m">
                                  <node concept="2OqwBi" id="6QH_LDtbV52" role="2Oq$k0">
                                    <node concept="2JrnkZ" id="6QH_LDtbV53" role="2Oq$k0">
                                      <node concept="37vLTw" id="6QH_LDtbV54" role="2JrQYb">
                                        <ref role="3cqZAo" node="7kaxm0sEC4f" resolve="unit" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="6QH_LDtbV55" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6QH_LDtbV56" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelId.getModelName():java.lang.String" resolve="getModelName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6QH_LDtdqsb" role="3cqZAp" />
                        <node concept="3cpWs8" id="6QH_LDtbV57" role="3cqZAp">
                          <node concept="3cpWsn" id="6QH_LDtbV58" role="3cpWs9">
                            <property role="TrG5h" value="tplApp" />
                            <node concept="3uibUv" id="6QH_LDtbV59" role="1tU5fm">
                              <ref role="3uigEE" node="3GlpCDSxTG7" resolve="TypecheckingTemplates" />
                            </node>
                            <node concept="2ShNRf" id="6QH_LDtbV5a" role="33vP2m">
                              <node concept="1pGfFk" id="6QH_LDtbV5b" role="2ShVmc">
                                <ref role="37wK5l" node="3GlpCDSychS" resolve="TypecheckingTemplates" />
                                <node concept="37vLTw" id="6QH_LDtbV5c" role="37wK5m">
                                  <ref role="3cqZAo" node="6$7vuu2wPaF" resolve="repository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6QH_LDtbV5d" role="3cqZAp">
                          <node concept="3cpWsn" id="6QH_LDtbV5e" role="3cpWs9">
                            <property role="TrG5h" value="res" />
                            <node concept="3uibUv" id="6QH_LDtbV5f" role="1tU5fm">
                              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
                            </node>
                            <node concept="2OqwBi" id="6QH_LDtbV5g" role="33vP2m">
                              <node concept="37vLTw" id="6QH_LDtbV5h" role="2Oq$k0">
                                <ref role="3cqZAo" node="6QH_LDtbV58" resolve="tplApp" />
                              </node>
                              <node concept="liA8E" id="6QH_LDtbV5i" role="2OqNvi">
                                <ref role="37wK5l" node="3GlpCDSxTKz" resolve="applyTemplates" />
                                <node concept="2OqwBi" id="6QH_LDtbV5j" role="37wK5m">
                                  <node concept="37vLTw" id="6QH_LDtbV5k" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7kaxm0sEBL9" resolve="node" />
                                  </node>
                                  <node concept="2Rxl7S" id="6QH_LDtbV5l" role="2OqNvi" />
                                </node>
                                <node concept="37vLTw" id="6QH_LDtbV5m" role="37wK5m">
                                  <ref role="3cqZAo" node="6QH_LDtbV4W" resolve="namehint" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6QH_LDtbV5n" role="3cqZAp">
                          <node concept="3clFbS" id="6QH_LDtbV5o" role="3clFbx">
                            <node concept="3SKdUt" id="6QH_LDtbV5p" role="3cqZAp">
                              <node concept="3SKdUq" id="6QH_LDtbV5q" role="3SKWNk">
                                <property role="3SKdUp" value="FIXME: report errors" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="6QH_LDtbV5r" role="3cqZAp" />
                          </node>
                          <node concept="3fqX7Q" id="6QH_LDtbV5v" role="3clFbw">
                            <node concept="2OqwBi" id="6QH_LDtbV5w" role="3fr31v">
                              <node concept="37vLTw" id="6QH_LDtbV5x" role="2Oq$k0">
                                <ref role="3cqZAo" node="6QH_LDtbV5e" resolve="res" />
                              </node>
                              <node concept="liA8E" id="6QH_LDtbV5y" role="2OqNvi">
                                <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6QH_LDtbV5z" role="3cqZAp" />
                        <node concept="3cpWs8" id="6QH_LDtbV5P" role="3cqZAp">
                          <node concept="3cpWsn" id="6QH_LDtbV5Q" role="3cpWs9">
                            <property role="TrG5h" value="evaluator" />
                            <node concept="3uibUv" id="6QH_LDtbV5R" role="1tU5fm">
                              <ref role="3uigEE" node="41ox5Vnk76a" resolve="ProgramEvaluator" />
                            </node>
                            <node concept="2ShNRf" id="6QH_LDtbV5S" role="33vP2m">
                              <node concept="1pGfFk" id="6QH_LDtbV5T" role="2ShVmc">
                                <ref role="37wK5l" node="HV6urVFjOl" resolve="ProgramEvaluator" />
                                <node concept="2ShNRf" id="6QH_LDtbV5U" role="37wK5m">
                                  <node concept="1pGfFk" id="6QH_LDtbV5V" role="2ShVmc">
                                    <ref role="37wK5l" to="cxk7:3F6vMxqo1c$" resolve="DefaultSessionSolver" />
                                    <node concept="2OqwBi" id="6QH_LDtbV5W" role="37wK5m">
                                      <node concept="37vLTw" id="6QH_LDtbV5X" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6QH_LDtbV58" resolve="tplApp" />
                                      </node>
                                      <node concept="liA8E" id="6QH_LDtbV5Y" role="2OqNvi">
                                        <ref role="37wK5l" node="3GlpCDSyRnn" resolve="getExpressionSolver" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="6$7vuu2v7qB" role="3cqZAp">
                          <node concept="3SKdUq" id="6$7vuu2v7qD" role="3SKWNk">
                            <property role="3SKdUp" value="FIXME: move the initialization to the plugin" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="3F6vMxqjuT0" role="3cqZAp">
                          <node concept="2OqwBi" id="3F6vMxqjuT1" role="3clFbG">
                            <node concept="10M0yZ" id="3F6vMxqjuT2" role="2Oq$k0">
                              <ref role="1PxDUh" to="zx3l:~MemEvaluationSession" resolve="MemEvaluationSession" />
                              <ref role="3cqZAo" to="zx3l:~MemEvaluationSession.Companion" resolve="Companion" />
                            </node>
                            <node concept="liA8E" id="3F6vMxqjuT3" role="2OqNvi">
                              <ref role="37wK5l" to="zx3l:~MemEvaluationSession$Companion.init():void" resolve="init" />
                            </node>
                          </node>
                        </node>
                        <node concept="2GUZhq" id="6$7vuu2uZb9" role="3cqZAp">
                          <node concept="3clFbS" id="6$7vuu2uZbb" role="2GV8ay">
                            <node concept="3clFbH" id="1CcQBrQszmS" role="3cqZAp" />
                            <node concept="1DcWWT" id="1CcQBrQssEZ" role="3cqZAp">
                              <node concept="3clFbS" id="1CcQBrQssF2" role="2LFqv$">
                                <node concept="3cpWs8" id="6QH_LDtbV5I" role="3cqZAp">
                                  <node concept="3cpWsn" id="6QH_LDtbV5J" role="3cpWs9">
                                    <property role="TrG5h" value="config" />
                                    <node concept="3uibUv" id="6QH_LDtbV5K" role="1tU5fm">
                                      <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
                                    </node>
                                    <node concept="2YIFZM" id="6QH_LDtbV5L" role="33vP2m">
                                      <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                                      <ref role="37wK5l" to="w7la:~EvaluationSession.newSession(jetbrains.mps.logic.reactor.program.Program):jetbrains.mps.logic.reactor.evaluation.EvaluationSession$Config" resolve="newSession" />
                                      <node concept="37vLTw" id="1CcQBrQsxkQ" role="37wK5m">
                                        <ref role="3cqZAo" node="1CcQBrQssF3" resolve="program" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="6QH_LDtbV6a" role="3cqZAp">
                                  <node concept="3cpWsn" id="6QH_LDtbV6b" role="3cpWs9">
                                    <property role="TrG5h" value="res2" />
                                    <node concept="3uibUv" id="6QH_LDtbV6c" role="1tU5fm">
                                      <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
                                    </node>
                                    <node concept="2OqwBi" id="6QH_LDtbV6d" role="33vP2m">
                                      <node concept="37vLTw" id="6QH_LDtbV6e" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6QH_LDtbV5Q" resolve="evaluator" />
                                      </node>
                                      <node concept="liA8E" id="6QH_LDtbV6f" role="2OqNvi">
                                        <ref role="37wK5l" node="HV6urVFrQ9" resolve="eval" />
                                        <node concept="37vLTw" id="6QH_LDtbV6g" role="37wK5m">
                                          <ref role="3cqZAo" node="6QH_LDtbV5J" resolve="config" />
                                        </node>
                                        <node concept="10M0yZ" id="6QH_LDtbV6h" role="37wK5m">
                                          <ref role="1PxDUh" to="yg8f:qubcdtxBiR" resolve="EvaluationTraceExt" />
                                          <ref role="3cqZAo" to="yg8f:24Vro6cS5rK" resolve="NULL" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="6QH_LDtbV6m" role="3cqZAp">
                                  <node concept="3clFbS" id="6QH_LDtbV6n" role="3clFbx">
                                    <node concept="3SKdUt" id="6QH_LDtbV6o" role="3cqZAp">
                                      <node concept="3SKdUq" id="6QH_LDtbV6p" role="3SKWNk">
                                        <property role="3SKdUp" value="FIXME: report errors" />
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="6QH_LDtbV6q" role="3cqZAp" />
                                  </node>
                                  <node concept="3fqX7Q" id="6QH_LDtbV6v" role="3clFbw">
                                    <node concept="2OqwBi" id="6QH_LDtbV6w" role="3fr31v">
                                      <node concept="37vLTw" id="6QH_LDtbV6x" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6QH_LDtbV6b" resolve="res2" />
                                      </node>
                                      <node concept="liA8E" id="6QH_LDtbV6y" role="2OqNvi">
                                        <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="1CcQBrQssF3" role="1Duv9x">
                                <property role="TrG5h" value="program" />
                                <node concept="3uibUv" id="1CcQBrQssF7" role="1tU5fm">
                                  <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1CcQBrQssF8" role="1DdaDG">
                                <node concept="37vLTw" id="1CcQBrQssF9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6QH_LDtbV58" resolve="tplApp" />
                                </node>
                                <node concept="liA8E" id="1CcQBrQssFa" role="2OqNvi">
                                  <ref role="37wK5l" node="3GlpCDSyO$P" resolve="getPrograms" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="6$7vuu2uZba" role="3cqZAp" />
                          </node>
                          <node concept="3clFbS" id="6$7vuu2uZbc" role="2GVbov">
                            <node concept="3clFbF" id="6$7vuu2uR6h" role="3cqZAp">
                              <node concept="2OqwBi" id="6$7vuu2uR6i" role="3clFbG">
                                <node concept="10M0yZ" id="6$7vuu2uR6j" role="2Oq$k0">
                                  <ref role="3cqZAo" to="zx3l:~MemEvaluationSession.Companion" resolve="Companion" />
                                  <ref role="1PxDUh" to="zx3l:~MemEvaluationSession" resolve="MemEvaluationSession" />
                                </node>
                                <node concept="liA8E" id="6$7vuu2uR6k" role="2OqNvi">
                                  <ref role="37wK5l" to="zx3l:~MemEvaluationSession$Companion.deinit():void" resolve="deinit" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6QH_LDtbV6z" role="3cqZAp" />
                        <node concept="3cpWs8" id="1CcQBrQng1x" role="3cqZAp">
                          <node concept="3cpWsn" id="1CcQBrQng1y" role="3cpWs9">
                            <property role="TrG5h" value="types" />
                            <node concept="3uibUv" id="1CcQBrQng1v" role="1tU5fm">
                              <ref role="3uigEE" node="6HT7BWBSFOV" resolve="TypeCollector" />
                            </node>
                            <node concept="2ShNRf" id="1CcQBrQng1z" role="33vP2m">
                              <node concept="1pGfFk" id="1CcQBrQng1$" role="2ShVmc">
                                <ref role="37wK5l" node="1CcQBrQmOiH" resolve="TypeCollector" />
                                <node concept="2OqwBi" id="1CcQBrQng1_" role="37wK5m">
                                  <node concept="37vLTw" id="1CcQBrQng1A" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6QH_LDtbV5Q" resolve="evaluator" />
                                  </node>
                                  <node concept="liA8E" id="1CcQBrQng1B" role="2OqNvi">
                                    <ref role="37wK5l" node="5cnt3vh3pb_" resolve="storeView" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1DcWWT" id="1CcQBrQnsvH" role="3cqZAp">
                          <node concept="3clFbS" id="1CcQBrQnsvK" role="2LFqv$">
                            <node concept="3cpWs8" id="1CcQBrQnBNC" role="3cqZAp">
                              <node concept="3cpWsn" id="1CcQBrQnBND" role="3cpWs9">
                                <property role="TrG5h" value="typeNode" />
                                <node concept="3Tqbb2" id="1CcQBrQnBNA" role="1tU5fm" />
                                <node concept="2OqwBi" id="1CcQBrQnBNE" role="33vP2m">
                                  <node concept="37vLTw" id="1CcQBrQnBNF" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1CcQBrQng1y" resolve="types" />
                                  </node>
                                  <node concept="liA8E" id="1CcQBrQnBNG" role="2OqNvi">
                                    <ref role="37wK5l" node="1CcQBrQmO_H" resolve="typeNode" />
                                    <node concept="37vLTw" id="1CcQBrQnNLi" role="37wK5m">
                                      <ref role="3cqZAo" node="1CcQBrQnsvL" resolve="ref" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1CcQBrQnCWs" role="3cqZAp">
                              <node concept="3clFbS" id="1CcQBrQnCWw" role="3clFbx">
                                <node concept="3clFbF" id="6QH_LDtd3NQ" role="3cqZAp">
                                  <node concept="2OqwBi" id="6QH_LDtd4E_" role="3clFbG">
                                    <node concept="37vLTw" id="6QH_LDtd3NO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6QH_LDtbKDF" resolve="typesCache" />
                                    </node>
                                    <node concept="liA8E" id="6QH_LDtd5_I" role="2OqNvi">
                                      <ref role="37wK5l" node="6QH_LDtcYUC" resolve="putType" />
                                      <node concept="37vLTw" id="1CcQBrQnUWs" role="37wK5m">
                                        <ref role="3cqZAo" node="1CcQBrQnsvL" resolve="ref" />
                                      </node>
                                      <node concept="2OqwBi" id="1CcQBrQnSY7" role="37wK5m">
                                        <node concept="37vLTw" id="1CcQBrQnSY8" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6QH_LDtbL9R" resolve="typesModel" />
                                        </node>
                                        <node concept="3BYIHo" id="1CcQBrQnSY9" role="2OqNvi">
                                          <node concept="37vLTw" id="1CcQBrQnSYa" role="3BYIHq">
                                            <ref role="3cqZAo" node="1CcQBrQnBND" resolve="typeNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3y3z36" id="1CcQBrQnF63" role="3clFbw">
                                <node concept="10Nm6u" id="1CcQBrQnGqG" role="3uHU7w" />
                                <node concept="37vLTw" id="1CcQBrQnDXR" role="3uHU7B">
                                  <ref role="3cqZAo" node="1CcQBrQnBND" resolve="typeNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="1CcQBrQnsvL" role="1Duv9x">
                            <property role="TrG5h" value="ref" />
                            <node concept="3uibUv" id="1CcQBrQnsvP" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1CcQBrQnsvQ" role="1DdaDG">
                            <node concept="37vLTw" id="1CcQBrQnsvR" role="2Oq$k0">
                              <ref role="3cqZAo" node="1CcQBrQng1y" resolve="types" />
                            </node>
                            <node concept="liA8E" id="1CcQBrQnsvS" role="2OqNvi">
                              <ref role="37wK5l" node="1CcQBrQnllM" resolve="typedNodeReferences" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="6QH_LDtbKDF" role="1bW2Oz">
                        <property role="TrG5h" value="typesCache" />
                        <node concept="3uibUv" id="6QH_LDtc$AA" role="1tU5fm">
                          <ref role="3uigEE" node="6QH_LDtcxgf" resolve="Typechecking.UpdatableTypeCache" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7kaxm0sEDDI" role="3clFbw">
            <node concept="10Nm6u" id="7kaxm0sEDEj" role="3uHU7w" />
            <node concept="37vLTw" id="7kaxm0sEDpd" role="3uHU7B">
              <ref role="3cqZAo" node="7kaxm0sEDgr" resolve="typesCache" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7kaxm0sEBMs" role="3cqZAp" />
        <node concept="3clFbJ" id="6QH_LDtc9sP" role="3cqZAp">
          <node concept="3clFbS" id="6QH_LDtc9sR" role="3clFbx">
            <node concept="3cpWs6" id="6QH_LDtcdEN" role="3cqZAp">
              <node concept="2OqwBi" id="6QH_LDtcdEO" role="3cqZAk">
                <node concept="37vLTw" id="6QH_LDtcdEP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7kaxm0sEDgr" resolve="typesCache" />
                </node>
                <node concept="liA8E" id="6QH_LDtcdEQ" role="2OqNvi">
                  <ref role="37wK5l" node="6QH_LDtffJj" resolve="typeOf" />
                  <node concept="37vLTw" id="6QH_LDtcdER" role="37wK5m">
                    <ref role="3cqZAo" node="7kaxm0sEBL9" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6QH_LDtcb3M" role="3clFbw">
            <node concept="10Nm6u" id="6QH_LDtcbO8" role="3uHU7w" />
            <node concept="37vLTw" id="6QH_LDtcahc" role="3uHU7B">
              <ref role="3cqZAo" node="7kaxm0sEDgr" resolve="typesCache" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6QH_LDtchhk" role="3cqZAp">
          <node concept="10Nm6u" id="6QH_LDtchhi" role="3clFbG" />
        </node>
      </node>
      <node concept="P$JXv" id="7kaxm0sEBMI" role="lGtFl">
        <node concept="TZ5HA" id="7kaxm0sEBMJ" role="TZ5H$">
          <node concept="1dT_AC" id="7kaxm0sEBMK" role="1dT_Ay">
            <property role="1dT_AB" value="Must be called in a read action." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6QH_LDtaCb7" role="jymVt" />
    <node concept="3Tm1VV" id="7kaxm0sEy3f" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6fdr4UgftiG">
    <property role="TrG5h" value="RuleTemplateIndex" />
    <node concept="2tJIrI" id="20Ay2VeQfgH" role="jymVt" />
    <node concept="3clFb_" id="1CcQBrPcvkZ" role="jymVt">
      <property role="TrG5h" value="addStage" />
      <node concept="37vLTG" id="1CcQBrPc$Rq" role="3clF46">
        <property role="TrG5h" value="handlingStage" />
        <node concept="3uibUv" id="1CcQBrPdaUF" role="1tU5fm">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
      </node>
      <node concept="3cqZAl" id="1CcQBrPcvl1" role="3clF45" />
      <node concept="3Tm1VV" id="1CcQBrPcvl2" role="1B3o_S" />
      <node concept="3clFbS" id="1CcQBrPcvl3" role="3clF47">
        <node concept="3clFbF" id="1CcQBrPcBaz" role="3cqZAp">
          <node concept="1rXfSq" id="1CcQBrPcBa$" role="3clFbG">
            <ref role="37wK5l" node="12yN8Dyvyy6" resolve="collectTemplates" />
            <node concept="37vLTw" id="1CcQBrPcBa_" role="37wK5m">
              <ref role="3cqZAo" node="1CcQBrPc$Rq" resolve="handlingStage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXU$$4Z" role="jymVt" />
    <node concept="3clFb_" id="6fdr4UgfuGk" role="jymVt">
      <property role="TrG5h" value="allTemplates" />
      <node concept="37vLTG" id="12yN8DyvzeF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="12yN8Dyv_JV" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="6fdr4UgfxqC" role="3clF45">
        <node concept="1LlUBW" id="7t5VLKHa5QV" role="A3Ik2">
          <node concept="3uibUv" id="1CcQBrPdyGK" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
          </node>
          <node concept="3uibUv" id="1ffsG7c4ezn" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
          <node concept="3uibUv" id="7t5VLKHa8iL" role="1Lm7xW">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6fdr4UgfuGn" role="1B3o_S" />
      <node concept="3clFbS" id="6fdr4UgfuGo" role="3clF47">
        <node concept="3cpWs8" id="12yN8DyvAUh" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8DyvAUk" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="12yN8DyvAUd" role="1tU5fm">
              <node concept="1LlUBW" id="7t5VLKHacJO" role="_ZDj9">
                <node concept="3uibUv" id="1CcQBrPd_Sl" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="3uibUv" id="1ffsG7c4ntm" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="3uibUv" id="7t5VLKHafvy" role="1Lm7xW">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="12yN8DyvD8g" role="33vP2m">
              <node concept="Tc6Ow" id="12yN8DyvD72" role="2ShVmc">
                <node concept="1LlUBW" id="7t5VLKHa9fr" role="HW$YZ">
                  <node concept="3uibUv" id="1CcQBrPdCZx" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="1ffsG7c4r9t" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                  <node concept="3uibUv" id="7t5VLKHabQB" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyvIhk" role="3cqZAp" />
        <node concept="3cpWs8" id="YGS68MZTt3" role="3cqZAp">
          <node concept="3cpWsn" id="YGS68MZTt4" role="3cpWs9">
            <property role="TrG5h" value="allConcepts" />
            <node concept="_YKpA" id="YGS68MZTsU" role="1tU5fm">
              <node concept="3bZ5Sz" id="YGS68MZTsX" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="YGS68MZTt5" role="33vP2m">
              <node concept="2OqwBi" id="YGS68MZTt6" role="2Oq$k0">
                <node concept="37vLTw" id="YGS68MZTt7" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                </node>
                <node concept="2yIwOk" id="YGS68MZTt8" role="2OqNvi" />
              </node>
              <node concept="3oJPKh" id="YGS68MZTt9" role="2OqNvi">
                <node concept="1xIGOp" id="YGS68MZTta" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="YGS68MZRMA" role="3cqZAp" />
        <node concept="3SKdUt" id="12yN8Dywh_Q" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DywhDX" role="3SKWNk">
            <property role="3SKdUp" value="assuming the list is sorted from most specific to most abstract" />
          </node>
        </node>
        <node concept="3SKdUt" id="tIwzd1HIKH" role="3cqZAp">
          <node concept="3SKdUq" id="tIwzd1HKju" role="3SKWNk">
            <property role="3SKdUp" value="TODO: check the above assumption" />
          </node>
        </node>
        <node concept="1Dw8fO" id="12yN8Dywu8N" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8Dywu8Q" role="1Duv9x">
            <property role="TrG5h" value="cptIdx" />
            <node concept="10Oyi0" id="12yN8Dywu8U" role="1tU5fm" />
            <node concept="3cmrfG" id="12yN8Dywu8V" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="12yN8Dywu8W" role="1Dwp0S">
            <node concept="37vLTw" id="12yN8Dywu8Z" role="3uHU7B">
              <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
            </node>
            <node concept="2OqwBi" id="12yN8Dywug9" role="3uHU7w">
              <node concept="34oBXx" id="12yN8Dywuge" role="2OqNvi" />
              <node concept="37vLTw" id="12yN8Dywugg" role="2Oq$k0">
                <ref role="3cqZAo" node="YGS68MZTt4" resolve="allConcepts" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="12yN8Dywugh" role="1Dwrff">
            <node concept="37vLTw" id="12yN8Dywugj" role="2$L3a6">
              <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
            </node>
          </node>
          <node concept="3clFbS" id="12yN8Dywi36" role="2LFqv$">
            <node concept="3cpWs8" id="12yN8Dywugk" role="3cqZAp">
              <node concept="3cpWsn" id="12yN8Dywugn" role="3cpWs9">
                <property role="TrG5h" value="cpt" />
                <node concept="3bZ5Sz" id="YGS68MZVBF" role="1tU5fm" />
                <node concept="1y4W85" id="12yN8Dywul8" role="33vP2m">
                  <node concept="37vLTw" id="12yN8Dywulb" role="1y566C">
                    <ref role="3cqZAo" node="YGS68MZTt4" resolve="allConcepts" />
                  </node>
                  <node concept="37vLTw" id="12yN8Dywugp" role="1y58nS">
                    <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="12yN8DywsEn" role="3cqZAp" />
            <node concept="3clFbJ" id="12yN8Dyw79t" role="3cqZAp">
              <node concept="3clFbS" id="12yN8Dyw79w" role="3clFbx">
                <node concept="3cpWs8" id="12yN8DywoJ8" role="3cqZAp">
                  <node concept="3cpWsn" id="12yN8DywoJ9" role="3cpWs9">
                    <property role="TrG5h" value="matching" />
                    <node concept="3vKaQO" id="12yN8DyD$_b" role="1tU5fm">
                      <node concept="1LlUBW" id="1CcQBrPdqZp" role="3O5elw">
                        <node concept="3uibUv" id="1CcQBrPdqZq" role="1Lm7xW">
                          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                        </node>
                        <node concept="3uibUv" id="1CcQBrPdqZr" role="1Lm7xW">
                          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                        </node>
                      </node>
                    </node>
                    <node concept="3EllGN" id="12yN8DywoJa" role="33vP2m">
                      <node concept="37vLTw" id="12yN8Dywulc" role="3ElVtu">
                        <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                      </node>
                      <node concept="37vLTw" id="12yN8DywoJc" role="3ElQJh">
                        <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="12yN8Dywsy6" role="3cqZAp" />
                <node concept="1DcWWT" id="12yN8DyDOdI" role="3cqZAp">
                  <node concept="3clFbS" id="12yN8DyDOdJ" role="2LFqv$">
                    <node concept="3cpWs8" id="1CcQBrPdtyk" role="3cqZAp">
                      <node concept="3cpWsn" id="1CcQBrPdtyl" role="3cpWs9">
                        <property role="TrG5h" value="template" />
                        <node concept="3uibUv" id="1CcQBrPdty4" role="1tU5fm">
                          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                        </node>
                        <node concept="1LFfDK" id="1CcQBrPdtym" role="33vP2m">
                          <node concept="3cmrfG" id="1CcQBrPdtyn" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="1CcQBrPdtyo" role="1LFl5Q">
                            <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1CcQBrPdF5P" role="3cqZAp">
                      <node concept="3cpWsn" id="1CcQBrPdF5Q" role="3cpWs9">
                        <property role="TrG5h" value="stage" />
                        <node concept="3uibUv" id="1CcQBrPdF5_" role="1tU5fm">
                          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                        </node>
                        <node concept="1LFfDK" id="1CcQBrPdF5R" role="33vP2m">
                          <node concept="3cmrfG" id="1CcQBrPdF5S" role="1LF_Uc">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="1CcQBrPdF5T" role="1LFl5Q">
                            <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1CcQBrPdF_k" role="3cqZAp" />
                    <node concept="3clFbJ" id="12yN8DyDPmt" role="3cqZAp">
                      <node concept="3clFbS" id="12yN8DyDPmw" role="3clFbx">
                        <node concept="3N13vt" id="12yN8DyDQvt" role="3cqZAp" />
                      </node>
                      <node concept="1Wc70l" id="12yN8DyDQ3G" role="3clFbw">
                        <node concept="2OqwBi" id="12yN8DyDQ9Y" role="3uHU7w">
                          <node concept="37vLTw" id="1CcQBrPdtyp" role="2Oq$k0">
                            <ref role="3cqZAo" node="1CcQBrPdtyl" resolve="template" />
                          </node>
                          <node concept="liA8E" id="12yN8DyDQnA" role="2OqNvi">
                            <ref role="37wK5l" to="i348:1ffsG7bWyMV" resolve="isExactMatch" />
                          </node>
                        </node>
                        <node concept="3y3z36" id="12yN8DyDPMo" role="3uHU7B">
                          <node concept="37vLTw" id="12yN8DyDPny" role="3uHU7B">
                            <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
                          </node>
                          <node concept="3cmrfG" id="12yN8DyDPNL" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="12yN8DyDQw1" role="3cqZAp" />
                    <node concept="3cpWs8" id="7t5VLKHasy_" role="3cqZAp">
                      <node concept="3cpWsn" id="7t5VLKHasyA" role="3cpWs9">
                        <property role="TrG5h" value="context" />
                        <node concept="3uibUv" id="7t5VLKHasyz" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="1rXfSq" id="7t5VLKHasyB" role="33vP2m">
                          <ref role="37wK5l" node="7t5VLKHagn3" resolve="getContext" />
                          <node concept="37vLTw" id="1CcQBrPdtyq" role="37wK5m">
                            <ref role="3cqZAo" node="1CcQBrPdtyl" resolve="template" />
                          </node>
                          <node concept="37vLTw" id="7t5VLKHasyD" role="37wK5m">
                            <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="7t5VLKHashr" role="3cqZAp" />
                    <node concept="3clFbJ" id="12yN8DyDQBv" role="3cqZAp">
                      <node concept="3clFbS" id="12yN8DyDQBy" role="3clFbx">
                        <node concept="3clFbF" id="12yN8DywprF" role="3cqZAp">
                          <node concept="2OqwBi" id="12yN8DywpEM" role="3clFbG">
                            <node concept="37vLTw" id="12yN8DywprE" role="2Oq$k0">
                              <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="12yN8DywrHc" role="2OqNvi">
                              <node concept="1Ls8ON" id="7t5VLKHat4$" role="25WWJ7">
                                <node concept="37vLTw" id="1CcQBrPdF5U" role="1Lso8e">
                                  <ref role="3cqZAo" node="1CcQBrPdF5Q" resolve="stage" />
                                </node>
                                <node concept="37vLTw" id="1CcQBrPdtyr" role="1Lso8e">
                                  <ref role="3cqZAo" node="1CcQBrPdtyl" resolve="template" />
                                </node>
                                <node concept="37vLTw" id="7t5VLKHatjZ" role="1Lso8e">
                                  <ref role="3cqZAo" node="7t5VLKHasyA" resolve="context" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="12yN8DyDZBR" role="3clFbw">
                        <ref role="37wK5l" node="12yN8DywHOS" resolve="testApplicable" />
                        <node concept="37vLTw" id="1CcQBrPdtys" role="37wK5m">
                          <ref role="3cqZAo" node="1CcQBrPdtyl" resolve="template" />
                        </node>
                        <node concept="37vLTw" id="12yN8DyDZDK" role="37wK5m">
                          <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                        </node>
                        <node concept="37vLTw" id="7t5VLKHasQo" role="37wK5m">
                          <ref role="3cqZAo" node="7t5VLKHasyA" resolve="context" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="12yN8DyDOdM" role="1Duv9x">
                    <property role="TrG5h" value="tpl" />
                    <node concept="1LlUBW" id="1CcQBrPdrx8" role="1tU5fm">
                      <node concept="3uibUv" id="1CcQBrPdrx9" role="1Lm7xW">
                        <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                      </node>
                      <node concept="3uibUv" id="1CcQBrPdrxa" role="1Lm7xW">
                        <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="12yN8DyDOdR" role="1DdaDG">
                    <ref role="3cqZAo" node="12yN8DywoJ9" resolve="matching" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="12yN8DywaUF" role="3clFbw">
                <node concept="37vLTw" id="12yN8Dyw7ap" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                </node>
                <node concept="2Nt0df" id="12yN8Dywmhb" role="2OqNvi">
                  <node concept="37vLTw" id="12yN8Dywuld" role="38cxEo">
                    <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KAYA" role="3cqZAp" />
        <node concept="3cpWs6" id="12yN8DyDYJd" role="3cqZAp">
          <node concept="37vLTw" id="12yN8DyDYJe" role="3cqZAk">
            <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="12yN8Dyv_NV" role="lGtFl">
        <node concept="TZ5HA" id="12yN8Dyv_NW" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8Dyv_NX" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable to the specified node. Extracts the node's concept to search for matching templates." />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA3F" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA3G" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="2U$1Ah" id="12yN8DyE1vx" role="1dT_Ay">
            <property role="2U$1Ai" value="p" />
            <node concept="TZ5HA" id="12yN8DyE1vy" role="2U$1Aj" />
          </node>
          <node concept="1dT_AC" id="12yN8DyE1vw" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA3p" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA3q" role="1dT_Ay">
            <property role="1dT_AB" value="First, searches own template collection for the exact and inexact match(-es)." />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA54" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA55" role="1dT_Ay">
            <property role="1dT_AB" value="Calls &quot;isApplicable&quot; on each found template, skips not applicable. " />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA7q" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA7r" role="1dT_Ay">
            <property role="1dT_AB" value="Recursively calls allTemplates on the delegates. " />
          </node>
        </node>
        <node concept="TUZQ0" id="12yN8Dyv_NY" role="3nqlJM">
          <property role="TUZQ4" value="node to search templates for" />
          <node concept="zr_55" id="12yN8Dyv_O0" role="zr_5Q">
            <ref role="zr_51" node="12yN8DyvzeF" resolve="node" />
          </node>
        </node>
        <node concept="x79VA" id="12yN8Dyv_O1" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node as a tuple [stage, template, context]" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1qqA9" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1qn9x" role="jymVt">
      <property role="TrG5h" value="allTemplatesWithNoInput" />
      <node concept="A3Dl8" id="5NuEpF1qn9B" role="3clF45">
        <node concept="1LlUBW" id="23ITgZhhKsi" role="A3Ik2">
          <node concept="3uibUv" id="1CcQBrPdHb$" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
          </node>
          <node concept="3uibUv" id="1ffsG7c4bl4" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
          <node concept="3uibUv" id="23ITgZhhKsj" role="1Lm7xW">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5NuEpF1qn9D" role="1B3o_S" />
      <node concept="3clFbS" id="5NuEpF1qn9E" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1qn9F" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1qn9G" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="5NuEpF1qn9H" role="1tU5fm">
              <node concept="1LlUBW" id="7t5VLKHb0SG" role="_ZDj9">
                <node concept="3uibUv" id="1CcQBrPdKr0" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="3uibUv" id="1ffsG7c4_ll" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="3uibUv" id="7t5VLKHb0SI" role="1Lm7xW">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5NuEpF1qn9J" role="33vP2m">
              <node concept="Tc6Ow" id="5NuEpF1qn9K" role="2ShVmc">
                <node concept="1LlUBW" id="7t5VLKHb1Xg" role="HW$YZ">
                  <node concept="3uibUv" id="1CcQBrPdQJh" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="1ffsG7c4CSJ" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                  <node concept="3uibUv" id="7t5VLKHb1Xi" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qn9M" role="3cqZAp" />
        <node concept="3clFbJ" id="5NuEpF1qnaj" role="3cqZAp">
          <node concept="3clFbS" id="5NuEpF1qnak" role="3clFbx">
            <node concept="3cpWs8" id="5NuEpF1qnal" role="3cqZAp">
              <node concept="3cpWsn" id="5NuEpF1qnam" role="3cpWs9">
                <property role="TrG5h" value="matching" />
                <node concept="3vKaQO" id="5NuEpF1qnan" role="1tU5fm">
                  <node concept="1LlUBW" id="1CcQBrPdScq" role="3O5elw">
                    <node concept="3uibUv" id="1CcQBrPdT5w" role="1Lm7xW">
                      <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                    </node>
                    <node concept="3uibUv" id="1CcQBrPdUA6" role="1Lm7xW">
                      <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="5NuEpF1qnap" role="33vP2m">
                  <node concept="10Nm6u" id="5NuEpF1qPk$" role="3ElVtu" />
                  <node concept="37vLTw" id="5NuEpF1qnar" role="3ElQJh">
                    <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1qnas" role="3cqZAp" />
            <node concept="1DcWWT" id="5NuEpF1qnat" role="3cqZAp">
              <node concept="3clFbS" id="5NuEpF1qnau" role="2LFqv$">
                <node concept="3cpWs8" id="1CcQBrPdYff" role="3cqZAp">
                  <node concept="3cpWsn" id="1CcQBrPdYfg" role="3cpWs9">
                    <property role="TrG5h" value="template" />
                    <node concept="3uibUv" id="1CcQBrPdYfe" role="1tU5fm">
                      <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                    </node>
                    <node concept="1LFfDK" id="1CcQBrPdYfh" role="33vP2m">
                      <node concept="3cmrfG" id="1CcQBrPdYfi" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="1CcQBrPdYfj" role="1LFl5Q">
                        <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1CcQBrPdYnI" role="3cqZAp">
                  <node concept="3cpWsn" id="1CcQBrPdYnJ" role="3cpWs9">
                    <property role="TrG5h" value="stage" />
                    <node concept="3uibUv" id="1CcQBrPdYnG" role="1tU5fm">
                      <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                    </node>
                    <node concept="1LFfDK" id="1CcQBrPdYnK" role="33vP2m">
                      <node concept="3cmrfG" id="1CcQBrPdYnL" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="1CcQBrPdYnM" role="1LFl5Q">
                        <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1CcQBrPdYAz" role="3cqZAp" />
                <node concept="3cpWs8" id="3QpvQgGtJe5" role="3cqZAp">
                  <node concept="3cpWsn" id="3QpvQgGtJe6" role="3cpWs9">
                    <property role="TrG5h" value="context" />
                    <node concept="3uibUv" id="3QpvQgGtJe7" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="1rXfSq" id="3QpvQgGtJe8" role="33vP2m">
                      <ref role="37wK5l" node="7t5VLKHagn3" resolve="getContext" />
                      <node concept="37vLTw" id="1CcQBrPdYfk" role="37wK5m">
                        <ref role="3cqZAo" node="1CcQBrPdYfg" resolve="template" />
                      </node>
                      <node concept="10Nm6u" id="3QpvQgGtJst" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3QpvQgGtJV7" role="3cqZAp" />
                <node concept="3clFbJ" id="5NuEpF1qnaE" role="3cqZAp">
                  <node concept="3clFbS" id="5NuEpF1qnaF" role="3clFbx">
                    <node concept="3clFbF" id="5NuEpF1qnaG" role="3cqZAp">
                      <node concept="2OqwBi" id="5NuEpF1qnaH" role="3clFbG">
                        <node concept="37vLTw" id="5NuEpF1qnaI" role="2Oq$k0">
                          <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="5NuEpF1qnaJ" role="2OqNvi">
                          <node concept="1Ls8ON" id="7t5VLKHb0kd" role="25WWJ7">
                            <node concept="37vLTw" id="1CcQBrPdYnN" role="1Lso8e">
                              <ref role="3cqZAo" node="1CcQBrPdYnJ" resolve="stage" />
                            </node>
                            <node concept="37vLTw" id="1CcQBrPdYfl" role="1Lso8e">
                              <ref role="3cqZAo" node="1CcQBrPdYfg" resolve="template" />
                            </node>
                            <node concept="37vLTw" id="3QpvQgGtKGg" role="1Lso8e">
                              <ref role="3cqZAo" node="3QpvQgGtJe6" resolve="context" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5NuEpF1qnaL" role="3clFbw">
                    <ref role="37wK5l" node="3x8pcoFuEOz" resolve="testApplicableNoInput" />
                    <node concept="37vLTw" id="1CcQBrPdYfm" role="37wK5m">
                      <ref role="3cqZAo" node="1CcQBrPdYfg" resolve="template" />
                    </node>
                    <node concept="37vLTw" id="3QpvQgGtK1w" role="37wK5m">
                      <ref role="3cqZAo" node="3QpvQgGtJe6" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5NuEpF1qnaO" role="1Duv9x">
                <property role="TrG5h" value="tpl" />
                <node concept="1LlUBW" id="1CcQBrPdV7J" role="1tU5fm">
                  <node concept="3uibUv" id="1CcQBrPdV7K" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="1CcQBrPdV7L" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="5NuEpF1qnaQ" role="1DdaDG">
                <ref role="3cqZAo" node="5NuEpF1qnam" resolve="matching" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5NuEpF1qnaR" role="3clFbw">
            <node concept="37vLTw" id="5NuEpF1qnaS" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
            </node>
            <node concept="2Nt0df" id="5NuEpF1qnaT" role="2OqNvi">
              <node concept="10Nm6u" id="5NuEpF1qPa2" role="38cxEo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qnbm" role="3cqZAp" />
        <node concept="3cpWs6" id="5NuEpF1qnbn" role="3cqZAp">
          <node concept="37vLTw" id="5NuEpF1qnbo" role="3cqZAk">
            <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5NuEpF1qnbp" role="lGtFl">
        <node concept="TZ5HA" id="5NuEpF1qnbq" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbr" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable without the node." />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnbs" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbt" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="2U$1Ah" id="5NuEpF1qnbu" role="1dT_Ay">
            <property role="2U$1Ai" value="p" />
            <node concept="TZ5HA" id="5NuEpF1qnbv" role="2U$1Aj" />
          </node>
          <node concept="1dT_AC" id="5NuEpF1qnbw" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnbx" role="TZ5H$" />
        <node concept="TZ5HA" id="5NuEpF1qnbz" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnb$" role="1dT_Ay">
            <property role="1dT_AB" value="Calls &quot;isApplicable&quot; on each found template, skips not applicable. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnb_" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbA" role="1dT_Ay">
            <property role="1dT_AB" value="Recursively calls allTemplatesWithNoInput on the delegates. " />
          </node>
        </node>
        <node concept="x79VA" id="5NuEpF1qnbD" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node as a tuple [stage, template, context]" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgfyxB" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyLgB9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="12yN8DyLgBa" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxI0" role="3clF45" />
      <node concept="3clFbS" id="12yN8DyLgBd" role="3clF47">
        <node concept="3clFbF" id="12yN8DyLiTf" role="3cqZAp">
          <node concept="3cpWs3" id="12yN8DyLkca" role="3clFbG">
            <node concept="3cpWs3" id="12yN8DyLkCn" role="3uHU7B">
              <node concept="3cpWs3" id="12yN8DyLiXM" role="3uHU7B">
                <node concept="2OqwBi" id="7Oc59RSEbhU" role="3uHU7B">
                  <node concept="1rXfSq" id="7Oc59RSEaXF" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSEbW0" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName():java.lang.String" resolve="getSimpleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="12yN8DyLiXU" role="3uHU7w">
                  <property role="Xl_RC" value="(" />
                </node>
              </node>
              <node concept="2OqwBi" id="12yN8DyMeDH" role="3uHU7w">
                <node concept="37vLTw" id="12yN8DyMeg9" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                </node>
                <node concept="34oBXx" id="12yN8DyMfS1" role="2OqNvi" />
              </node>
            </node>
            <node concept="Xl_RD" id="12yN8DyMfYr" role="3uHU7w">
              <property role="Xl_RC" value=" templates)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="12yN8DyLgBe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="429xoypKCy4" role="jymVt" />
    <node concept="3clFb_" id="12yN8Dyvyy6" role="jymVt">
      <property role="TrG5h" value="collectTemplates" />
      <node concept="37vLTG" id="4MqhgXU9tzq" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="3uibUv" id="1CcQBrPdcWm" role="1tU5fm">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8Dyvyy8" role="3clF45" />
      <node concept="3Tm6S6" id="429xoypKETd" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8Dyvyya" role="3clF47">
        <node concept="3SKdUt" id="12yN8DyFw_S" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DyFwRk" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="1DcWWT" id="4MqhgXUaOdr" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUaOdu" role="2LFqv$">
            <node concept="1DcWWT" id="4MqhgXUaONv" role="3cqZAp">
              <node concept="3clFbS" id="4MqhgXUaONy" role="2LFqv$">
                <node concept="3clFbH" id="4MqhgXUlY8K" role="3cqZAp" />
                <node concept="3cpWs8" id="4MqhgXUaPfU" role="3cqZAp">
                  <node concept="3cpWsn" id="4MqhgXUaPfV" role="3cpWs9">
                    <property role="TrG5h" value="stageTemplate" />
                    <node concept="3vKaQO" id="4MqhgXUaPfW" role="1tU5fm">
                      <node concept="1LlUBW" id="1CcQBrPdYFV" role="3O5elw">
                        <node concept="3uibUv" id="1CcQBrPdZmb" role="1Lm7xW">
                          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                        </node>
                        <node concept="3uibUv" id="1CcQBrPe036" role="1Lm7xW">
                          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                        </node>
                      </node>
                    </node>
                    <node concept="3EllGN" id="4MqhgXUaPfY" role="33vP2m">
                      <node concept="2OqwBi" id="4MqhgXUaPfZ" role="3ElVtu">
                        <node concept="37vLTw" id="4MqhgXUaPg0" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MqhgXUaONz" resolve="ruleTemplate" />
                        </node>
                        <node concept="liA8E" id="4MqhgXUaPg1" role="2OqNvi">
                          <ref role="37wK5l" to="i348:1ffsG7bWxkw" resolve="applicableConcept" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4MqhgXUaPg2" role="3ElQJh">
                        <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4MqhgXUaPg3" role="3cqZAp">
                  <node concept="3clFbS" id="4MqhgXUaPg4" role="3clFbx">
                    <node concept="3clFbF" id="4MqhgXUaPg5" role="3cqZAp">
                      <node concept="37vLTI" id="4MqhgXUaPg6" role="3clFbG">
                        <node concept="1eOMI4" id="4MqhgXUaPg7" role="37vLTx">
                          <node concept="37vLTI" id="4MqhgXUaPg8" role="1eOMHV">
                            <node concept="2ShNRf" id="4MqhgXUaPg9" role="37vLTx">
                              <node concept="Tc6Ow" id="4MqhgXUaPga" role="2ShVmc">
                                <node concept="1LlUBW" id="1CcQBrPe1i5" role="HW$YZ">
                                  <node concept="3uibUv" id="1CcQBrPe1i6" role="1Lm7xW">
                                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                                  </node>
                                  <node concept="3uibUv" id="1CcQBrPe1i7" role="1Lm7xW">
                                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="4MqhgXUaPgc" role="37vLTJ">
                              <ref role="3cqZAo" node="4MqhgXUaPfV" resolve="stageTemplate" />
                            </node>
                          </node>
                        </node>
                        <node concept="3EllGN" id="4MqhgXUaPgd" role="37vLTJ">
                          <node concept="2OqwBi" id="4MqhgXUaPge" role="3ElVtu">
                            <node concept="37vLTw" id="4MqhgXUaPgf" role="2Oq$k0">
                              <ref role="3cqZAo" node="4MqhgXUaONz" resolve="ruleTemplate" />
                            </node>
                            <node concept="liA8E" id="4MqhgXUaPgg" role="2OqNvi">
                              <ref role="37wK5l" to="i348:1ffsG7bWxkw" resolve="applicableConcept" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4MqhgXUaPgh" role="3ElQJh">
                            <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="4MqhgXUaPgi" role="3clFbw">
                    <node concept="10Nm6u" id="4MqhgXUaPgj" role="3uHU7w" />
                    <node concept="37vLTw" id="4MqhgXUaPgk" role="3uHU7B">
                      <ref role="3cqZAo" node="4MqhgXUaPfV" resolve="stageTemplate" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1CcQBrPe57p" role="3cqZAp" />
                <node concept="3clFbF" id="4MqhgXUaPgl" role="3cqZAp">
                  <node concept="2OqwBi" id="4MqhgXUaPgm" role="3clFbG">
                    <node concept="37vLTw" id="4MqhgXUaPgn" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUaPfV" resolve="stageTemplate" />
                    </node>
                    <node concept="TSZUe" id="4MqhgXUaPgo" role="2OqNvi">
                      <node concept="1Ls8ON" id="1CcQBrPe4xt" role="25WWJ7">
                        <node concept="37vLTw" id="1CcQBrPe4Ac" role="1Lso8e">
                          <ref role="3cqZAo" node="4MqhgXU9tzq" resolve="stage" />
                        </node>
                        <node concept="37vLTw" id="1CcQBrPe4S0" role="1Lso8e">
                          <ref role="3cqZAo" node="4MqhgXUaONz" resolve="ruleTemplate" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUaONz" role="1Duv9x">
                <property role="TrG5h" value="ruleTemplate" />
                <node concept="3uibUv" id="4MqhgXUaONB" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXUaONC" role="1DdaDG">
                <node concept="37vLTw" id="4MqhgXUaOND" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUaOdv" resolve="handlerTemplate" />
                </node>
                <node concept="liA8E" id="4MqhgXUaONE" role="2OqNvi">
                  <ref role="37wK5l" to="i348:4MqhgXUaiON" resolve="ruleTemplates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUaOdv" role="1Duv9x">
            <property role="TrG5h" value="handlerTemplate" />
            <node concept="3uibUv" id="4MqhgXUaOdz" role="1tU5fm">
              <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
            </node>
          </node>
          <node concept="2OqwBi" id="1CcQBrPddeo" role="1DdaDG">
            <node concept="37vLTw" id="4MqhgXUaOd_" role="2Oq$k0">
              <ref role="3cqZAo" node="4MqhgXU9tzq" resolve="stage" />
            </node>
            <node concept="liA8E" id="1CcQBrPddMT" role="2OqNvi">
              <ref role="37wK5l" to="i348:1CcQBrPd1dz" resolve="handlerTemplates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgftJ4" role="jymVt" />
    <node concept="3clFb_" id="7t5VLKHagn3" role="jymVt">
      <property role="TrG5h" value="getContext" />
      <node concept="37vLTG" id="7t5VLKHagn4" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="1ffsG7c4zvP" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="16syzq" id="2JQZWxFbkiS" role="11_B2D">
            <ref role="16sUi3" node="2JQZWxFbjv6" resolve="Context" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7t5VLKHagn6" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7t5VLKHagn7" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7t5VLKHajO1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm6S6" id="7t5VLKHagn9" role="1B3o_S" />
      <node concept="3clFbS" id="7t5VLKHagna" role="3clF47">
        <node concept="3SKdUt" id="7t5VLKHagnb" role="3cqZAp">
          <node concept="3SKdUq" id="7t5VLKHagnc" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3cpWs8" id="2JQZWxFbhyR" role="3cqZAp">
          <node concept="3cpWsn" id="2JQZWxFbhyS" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="16syzq" id="2JQZWxFbkof" role="1tU5fm">
              <ref role="16sUi3" node="2JQZWxFbjv6" resolve="Context" />
            </node>
            <node concept="2OqwBi" id="2JQZWxFbhyT" role="33vP2m">
              <node concept="37vLTw" id="2JQZWxFbhyU" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKHagn4" resolve="template" />
              </node>
              <node concept="liA8E" id="2JQZWxFbhyV" role="2OqNvi">
                <ref role="37wK5l" to="i348:1ffsG7bW$2q" resolve="context" />
                <node concept="37vLTw" id="2JQZWxFbhyW" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKHagn6" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JQZWxFbhCE" role="3cqZAp">
          <node concept="2OqwBi" id="2JQZWxFbhFo" role="3clFbG">
            <node concept="37vLTw" id="2JQZWxFbhCC" role="2Oq$k0">
              <ref role="3cqZAo" node="7t5VLKHagn4" resolve="template" />
            </node>
            <node concept="liA8E" id="2JQZWxFbhRj" role="2OqNvi">
              <ref role="37wK5l" to="i348:PB1R3YsCm9" resolve="initContext" />
              <node concept="37vLTw" id="2JQZWxFbi03" role="37wK5m">
                <ref role="3cqZAo" node="7t5VLKHagn6" resolve="node" />
              </node>
              <node concept="37vLTw" id="2JQZWxFbhTf" role="37wK5m">
                <ref role="3cqZAo" node="2JQZWxFbhyS" resolve="context" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2JQZWxFbjv6" role="16eVyc">
        <property role="TrG5h" value="Context" />
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DywOXd" role="jymVt" />
    <node concept="3clFb_" id="12yN8DywHOS" role="jymVt">
      <property role="TrG5h" value="testApplicable" />
      <node concept="37vLTG" id="12yN8DywN3_" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="1ffsG7c4Iob" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="12yN8DywO11" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="12yN8DywOWo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7t5VLKHaq7G" role="3clF46">
        <property role="TrG5h" value="boundParam" />
        <node concept="3uibUv" id="7t5VLKHaqOW" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="12yN8DywJJa" role="3clF45" />
      <node concept="3Tm6S6" id="12yN8DywIOC" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DywHOW" role="3clF47">
        <node concept="3SKdUt" id="12yN8Dywplp" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DywpqY" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="12yN8DywPWF" role="3cqZAp">
          <node concept="2OqwBi" id="12yN8DywPWH" role="3clFbG">
            <node concept="37vLTw" id="12yN8DywPWI" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DywN3_" resolve="template" />
            </node>
            <node concept="liA8E" id="12yN8DywPWJ" role="2OqNvi">
              <ref role="37wK5l" to="i348:1ffsG7bWA3o" resolve="isApplicable" />
              <node concept="37vLTw" id="12yN8DywPWK" role="37wK5m">
                <ref role="3cqZAo" node="12yN8DywO11" resolve="node" />
              </node>
              <node concept="37vLTw" id="7t5VLKHar9t" role="37wK5m">
                <ref role="3cqZAo" node="7t5VLKHaq7G" resolve="boundParam" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3x8pcoFuFIi" role="jymVt" />
    <node concept="3clFb_" id="3x8pcoFuEOz" role="jymVt">
      <property role="TrG5h" value="testApplicableNoInput" />
      <node concept="37vLTG" id="3x8pcoFuEO$" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="3x8pcoFuEO_" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="3x8pcoFuEOC" role="3clF46">
        <property role="TrG5h" value="boundParam" />
        <node concept="3uibUv" id="3x8pcoFuEOD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3x8pcoFuEOE" role="3clF45" />
      <node concept="3Tm6S6" id="3x8pcoFuEOF" role="1B3o_S" />
      <node concept="3clFbS" id="3x8pcoFuEOG" role="3clF47">
        <node concept="3SKdUt" id="3x8pcoFuEOH" role="3cqZAp">
          <node concept="3SKdUq" id="3x8pcoFuEOI" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="3x8pcoFuEOJ" role="3cqZAp">
          <node concept="2OqwBi" id="3x8pcoFuEOK" role="3clFbG">
            <node concept="37vLTw" id="3x8pcoFuEOL" role="2Oq$k0">
              <ref role="3cqZAo" node="3x8pcoFuEO$" resolve="template" />
            </node>
            <node concept="liA8E" id="3x8pcoFuEOM" role="2OqNvi">
              <ref role="37wK5l" to="i348:1ffsG7bWA3o" resolve="isApplicable" />
              <node concept="10Nm6u" id="3x8pcoFuIc1" role="37wK5m" />
              <node concept="37vLTw" id="3x8pcoFuEOO" role="37wK5m">
                <ref role="3cqZAo" node="3x8pcoFuEOC" resolve="boundParam" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7t5VLKHahfv" role="jymVt" />
    <node concept="312cEg" id="12yN8DyvDfi" role="jymVt">
      <property role="TrG5h" value="myTemplates" />
      <node concept="3Tm6S6" id="12yN8DyvDfj" role="1B3o_S" />
      <node concept="3rvAFt" id="12yN8Dyw7uY" role="1tU5fm">
        <node concept="3bZ5Sz" id="YGS68MZPLr" role="3rvQeY" />
        <node concept="3vKaQO" id="12yN8DyDzne" role="3rvSg0">
          <node concept="1LlUBW" id="1CcQBrPdpQH" role="3O5elw">
            <node concept="3uibUv" id="1CcQBrPdpQI" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
            </node>
            <node concept="3uibUv" id="1CcQBrPdpQJ" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="429xoypKEom" role="33vP2m">
        <node concept="3rGOSV" id="429xoypKEon" role="2ShVmc">
          <node concept="3bZ5Sz" id="YGS68MZQMl" role="3rHrn6" />
          <node concept="3vKaQO" id="429xoypKEop" role="3rHtpV">
            <node concept="1LlUBW" id="1CcQBrPdeWw" role="3O5elw">
              <node concept="3uibUv" id="1CcQBrPdhbo" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
              </node>
              <node concept="3uibUv" id="1CcQBrPdjrb" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CcQBrPdkzR" role="jymVt" />
    <node concept="3Tm1VV" id="6fdr4UgftiH" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4MqhgXUBidO">
    <property role="TrG5h" value="RuleTable" />
    <node concept="2tJIrI" id="4MqhgXUBiei" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUBieI" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="37vLTG" id="4MqhgXUBifv" role="3clF46">
        <property role="TrG5h" value="ruleTemplate" />
        <node concept="3uibUv" id="4MqhgXUBifZ" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="4MqhgXUBii0" role="3clF46">
        <property role="TrG5h" value="ruleBuilders" />
        <node concept="A3Dl8" id="4MqhgXUBiiy" role="1tU5fm">
          <node concept="3uibUv" id="4MqhgXUBij1" role="A3Ik2">
            <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4MqhgXUBieK" role="3clF45" />
      <node concept="3Tm1VV" id="4MqhgXUBieL" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUBieM" role="3clF47">
        <node concept="3clFbH" id="4MqhgXUBijA" role="3cqZAp" />
        <node concept="3SKdUt" id="4MqhgXUBikK" role="3cqZAp">
          <node concept="3SKdUq" id="4MqhgXUBikM" role="3SKWNk">
            <property role="3SKdUp" value="find the appropriate location for the template and execute builders" />
          </node>
        </node>
        <node concept="3clFbH" id="4MqhgXUBijF" role="3cqZAp" />
        <node concept="1DcWWT" id="4MqhgXUBC7S" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUBC7V" role="2LFqv$">
            <node concept="3clFbF" id="4MqhgXUNzZy" role="3cqZAp">
              <node concept="2OqwBi" id="4MqhgXUN$_s" role="3clFbG">
                <node concept="1rXfSq" id="4MqhgXUNzZw" role="2Oq$k0">
                  <ref role="37wK5l" node="4MqhgXUMUZx" resolve="handlerBuilder" />
                  <node concept="2OqwBi" id="4MqhgXUN$lR" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUN$bO" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUBifv" resolve="ruleTemplate" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUN$ty" role="2OqNvi">
                      <ref role="37wK5l" to="i348:4MqhgXUndvp" resolve="handlerTemplate" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4MqhgXUN$Ku" role="2OqNvi">
                  <ref role="37wK5l" to="nz6g:4MqhgXUMbtk" resolve="addRule" />
                  <node concept="37vLTw" id="4MqhgXUN$UY" role="37wK5m">
                    <ref role="3cqZAo" node="4MqhgXUBifv" resolve="ruleTemplate" />
                  </node>
                  <node concept="2OqwBi" id="4MqhgXUN_SJ" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUN_KK" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUBC7W" resolve="ruleBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUNA9M" role="2OqNvi">
                      <ref role="37wK5l" to="nz6g:7eGEHDlc$ck" resolve="toRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUBC7W" role="1Duv9x">
            <property role="TrG5h" value="ruleBuilder" />
            <node concept="3uibUv" id="4MqhgXUBC80" role="1tU5fm">
              <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
            </node>
          </node>
          <node concept="37vLTw" id="4MqhgXUBC81" role="1DdaDG">
            <ref role="3cqZAo" node="4MqhgXUBii0" resolve="ruleBuilders" />
          </node>
        </node>
        <node concept="3clFbH" id="4MqhgXUDlTx" role="3cqZAp" />
      </node>
      <node concept="3uibUv" id="4MqhgXUBEnI" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUBEL_" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUM1FX" role="jymVt">
      <property role="TrG5h" value="allHandlers" />
      <node concept="A3Dl8" id="4MqhgXUM2VN" role="3clF45">
        <node concept="3uibUv" id="4MqhgXUM3Ub" role="A3Ik2">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUM1G0" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUM1G1" role="3clF47">
        <node concept="3cpWs8" id="4MqhgXUM4Tp" role="3cqZAp">
          <node concept="3cpWsn" id="4MqhgXUM4Tq" role="3cpWs9">
            <property role="TrG5h" value="allHandlers" />
            <node concept="_YKpA" id="4MqhgXUM4Tr" role="1tU5fm">
              <node concept="3uibUv" id="4MqhgXUM5gX" role="_ZDj9">
                <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
              </node>
            </node>
            <node concept="2ShNRf" id="4MqhgXUM4Tt" role="33vP2m">
              <node concept="Tc6Ow" id="4MqhgXUM4Tu" role="2ShVmc">
                <node concept="3uibUv" id="4MqhgXUM5ql" role="HW$YZ">
                  <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4MqhgXUPQEW" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUPQEZ" role="2LFqv$">
            <node concept="3clFbF" id="4MqhgXUPQVH" role="3cqZAp">
              <node concept="2OqwBi" id="4MqhgXUPR$9" role="3clFbG">
                <node concept="37vLTw" id="4MqhgXUPQVG" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUM4Tq" resolve="allHandlers" />
                </node>
                <node concept="TSZUe" id="4MqhgXUPSUG" role="2OqNvi">
                  <node concept="2OqwBi" id="4MqhgXUPT6I" role="25WWJ7">
                    <node concept="37vLTw" id="4MqhgXUPSZf" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUPQF0" resolve="handlerBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUPTdR" role="2OqNvi">
                      <ref role="37wK5l" to="nz6g:4MqhgXUNDLG" resolve="toHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUPQF0" role="1Duv9x">
            <property role="TrG5h" value="handlerBuilder" />
            <node concept="3uibUv" id="4MqhgXUPQF4" role="1tU5fm">
              <ref role="3uigEE" to="nz6g:4MqhgXUMauK" resolve="HandlerBuilder" />
            </node>
          </node>
          <node concept="2OqwBi" id="4MqhgXUPQF5" role="1DdaDG">
            <node concept="37vLTw" id="4MqhgXUPQF6" role="2Oq$k0">
              <ref role="3cqZAo" node="4MqhgXUMPBg" resolve="handlerBuilders" />
            </node>
            <node concept="T8wYR" id="4MqhgXUPQF7" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUM5wG" role="3cqZAp">
          <node concept="2OqwBi" id="4MqhgXUPU2j" role="3clFbG">
            <node concept="37vLTw" id="4MqhgXUM5wE" role="2Oq$k0">
              <ref role="3cqZAo" node="4MqhgXUM4Tq" resolve="allHandlers" />
            </node>
            <node concept="26Dbio" id="4MqhgXUPV5u" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUM0sJ" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUMUZx" role="jymVt">
      <property role="TrG5h" value="handlerBuilder" />
      <node concept="37vLTG" id="4MqhgXUMYVQ" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="4MqhgXUMZUm" role="1tU5fm">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="3uibUv" id="4MqhgXUMWZ$" role="3clF45">
        <ref role="3uigEE" to="nz6g:4MqhgXUMauK" resolve="HandlerBuilder" />
      </node>
      <node concept="3Tm6S6" id="4MqhgXUMW1s" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUMUZ_" role="3clF47">
        <node concept="3cpWs8" id="4MqhgXUN0MC" role="3cqZAp">
          <node concept="3cpWsn" id="4MqhgXUN0MD" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4MqhgXUN0MA" role="1tU5fm">
              <ref role="3uigEE" to="nz6g:4MqhgXUMauK" resolve="HandlerBuilder" />
            </node>
            <node concept="3EllGN" id="4MqhgXUN0ME" role="33vP2m">
              <node concept="37vLTw" id="4MqhgXUN0MF" role="3ElVtu">
                <ref role="3cqZAo" node="4MqhgXUMYVQ" resolve="handlerTemplate" />
              </node>
              <node concept="37vLTw" id="4MqhgXUN0MG" role="3ElQJh">
                <ref role="3cqZAo" node="4MqhgXUMPBg" resolve="handlerBuilders" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4MqhgXUN0UW" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUN0UY" role="3clFbx">
            <node concept="3clFbF" id="4MqhgXUN1cC" role="3cqZAp">
              <node concept="37vLTI" id="4MqhgXUN1jZ" role="3clFbG">
                <node concept="2ShNRf" id="4MqhgXUN1oX" role="37vLTx">
                  <node concept="1pGfFk" id="4MqhgXUN1mc" role="2ShVmc">
                    <ref role="37wK5l" to="nz6g:4MqhgXUMb4h" resolve="HandlerBuilder" />
                    <node concept="2OqwBi" id="4MqhgXUN1BF" role="37wK5m">
                      <node concept="37vLTw" id="4MqhgXUN1uJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="4MqhgXUMYVQ" resolve="handlerTemplate" />
                      </node>
                      <node concept="liA8E" id="4MqhgXUNx0U" role="2OqNvi">
                        <ref role="37wK5l" to="i348:4MqhgXUN1Pe" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4MqhgXUNxeU" role="37wK5m">
                      <node concept="37vLTw" id="4MqhgXUNx6U" role="2Oq$k0">
                        <ref role="3cqZAo" node="4MqhgXUMYVQ" resolve="handlerTemplate" />
                      </node>
                      <node concept="liA8E" id="4MqhgXUNxmy" role="2OqNvi">
                        <ref role="37wK5l" to="i348:4MqhgXU9lmo" resolve="primarySymbols" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4MqhgXUNxB8" role="37wK5m">
                      <node concept="37vLTw" id="4MqhgXUNxts" role="2Oq$k0">
                        <ref role="3cqZAo" node="4MqhgXUMYVQ" resolve="handlerTemplate" />
                      </node>
                      <node concept="liA8E" id="4MqhgXUNxJk" role="2OqNvi">
                        <ref role="37wK5l" to="i348:4MqhgXUaiON" resolve="ruleTemplates" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4MqhgXUN1cA" role="37vLTJ">
                  <ref role="3cqZAo" node="4MqhgXUN0MD" resolve="builder" />
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="2TtA2rK5ao7" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="4MqhgXUTTAD" role="8Wnug">
                <node concept="37vLTI" id="4MqhgXUTTAE" role="3clFbG">
                  <node concept="2ShNRf" id="4MqhgXUTTAF" role="37vLTx">
                    <node concept="1pGfFk" id="4MqhgXUTTAG" role="2ShVmc">
                      <ref role="37wK5l" to="nz6g:4MqhgXUMb4h" resolve="HandlerBuilder" />
                      <node concept="2OqwBi" id="4MqhgXUTTAH" role="37wK5m">
                        <node concept="37vLTw" id="4MqhgXUTTAI" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MqhgXUMYVQ" resolve="handlerTemplate" />
                        </node>
                        <node concept="liA8E" id="4MqhgXUTTAJ" role="2OqNvi">
                          <ref role="37wK5l" to="i348:4MqhgXUN1Pe" resolve="name" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="2vGNdoJK1Py" role="37wK5m">
                        <node concept="kMnCb" id="2vGNdoJK1OO" role="2ShVmc">
                          <node concept="3uibUv" id="2vGNdoJK1OP" role="kMuH3">
                            <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4MqhgXUTTAN" role="37wK5m">
                        <node concept="37vLTw" id="4MqhgXUTTAO" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MqhgXUMYVQ" resolve="handlerTemplate" />
                        </node>
                        <node concept="liA8E" id="4MqhgXUTTAP" role="2OqNvi">
                          <ref role="37wK5l" to="i348:4MqhgXUaiON" resolve="ruleTemplates" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4MqhgXUTTAQ" role="37vLTJ">
                    <ref role="3cqZAo" node="4MqhgXUN0MD" resolve="builder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4MqhgXUNxRm" role="3cqZAp">
              <node concept="37vLTI" id="4MqhgXUNyA6" role="3clFbG">
                <node concept="37vLTw" id="4MqhgXUNyGf" role="37vLTx">
                  <ref role="3cqZAo" node="4MqhgXUN0MD" resolve="builder" />
                </node>
                <node concept="3EllGN" id="4MqhgXUNygO" role="37vLTJ">
                  <node concept="37vLTw" id="4MqhgXUNyof" role="3ElVtu">
                    <ref role="3cqZAo" node="4MqhgXUMYVQ" resolve="handlerTemplate" />
                  </node>
                  <node concept="37vLTw" id="4MqhgXUNxRk" role="3ElQJh">
                    <ref role="3cqZAo" node="4MqhgXUMPBg" resolve="handlerBuilders" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4MqhgXUN18u" role="3clFbw">
            <node concept="10Nm6u" id="4MqhgXUN1aE" role="3uHU7w" />
            <node concept="37vLTw" id="4MqhgXUN0ZP" role="3uHU7B">
              <ref role="3cqZAo" node="4MqhgXUN0MD" resolve="builder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUMZYq" role="3cqZAp">
          <node concept="37vLTw" id="4MqhgXUN0MH" role="3clFbG">
            <ref role="3cqZAo" node="4MqhgXUN0MD" resolve="builder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUMSVY" role="jymVt" />
    <node concept="312cEg" id="4MqhgXUMPBg" role="jymVt">
      <property role="TrG5h" value="handlerBuilders" />
      <node concept="3Tm6S6" id="4MqhgXUMPBh" role="1B3o_S" />
      <node concept="3rvAFt" id="4MqhgXUMQD3" role="1tU5fm">
        <node concept="3uibUv" id="4MqhgXUMQDM" role="3rvQeY">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
        <node concept="3uibUv" id="4MqhgXUMSHE" role="3rvSg0">
          <ref role="3uigEE" to="nz6g:4MqhgXUMauK" resolve="HandlerBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="4MqhgXUMSOn" role="33vP2m">
        <node concept="3rGOSV" id="4MqhgXUMSMK" role="2ShVmc">
          <node concept="3uibUv" id="4MqhgXUMSML" role="3rHrn6">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
          </node>
          <node concept="3uibUv" id="4MqhgXUMSMM" role="3rHtpV">
            <ref role="3uigEE" to="nz6g:4MqhgXUMauK" resolve="HandlerBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUPV7S" role="jymVt" />
    <node concept="3Tm1VV" id="4MqhgXUBidP" role="1B3o_S" />
  </node>
</model>

