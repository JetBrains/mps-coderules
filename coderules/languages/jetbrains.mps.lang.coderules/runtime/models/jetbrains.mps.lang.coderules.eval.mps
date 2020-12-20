<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="13" />
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="ksgm" ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)" />
    <import index="xnrr" ref="r:4fd33103-fc30-42f4-a8cf-d1e858f21988(jetbrains.mps.lang.coderules.program.analysis)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="lehm" ref="r:464fcc95-fddb-47d1-b620-592cbf6b8bf2(jetbrains.mps.coderules.runtime.memoizer)" />
    <import index="psoy" ref="r:78313117-90ee-47a5-a91e-b5213df7f611(jetbrains.mps.coderules.runtime.result)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ng" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.structure.DefaultModifier" flags="ng" index="2JFqV2" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
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
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2546654756694997551" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTag" flags="ng" index="92FcH">
        <child id="2546654756694997556" name="reference" index="92FcQ" />
        <child id="3106559687488913694" name="line" index="2XjZqd" />
      </concept>
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
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="8970989240999019145" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentLinePart" flags="ng" index="1dT_AA">
        <child id="6962838954693749192" name="tag" index="qph3F" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180457458947" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSuperConcepts" flags="nn" index="3oJPKh" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="3358009230509553641" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListType" flags="in" index="2BANLN" />
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
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1227026094155" name="jetbrains.mps.baseLanguage.collections.structure.RemoveLastElementOperation" flags="nn" index="2Kt5_m" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
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
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="41ox5Vnk76a">
    <property role="TrG5h" value="ProgramEvaluator" />
    <property role="3GE5qa" value="" />
    <node concept="2tJIrI" id="5mr7UHcbkql" role="jymVt" />
    <node concept="3clFbW" id="HV6urVFjOl" role="jymVt">
      <node concept="3cqZAl" id="HV6urVFjOn" role="3clF45" />
      <node concept="3Tm1VV" id="HV6urVFjOo" role="1B3o_S" />
      <node concept="3clFbS" id="HV6urVFjOp" role="3clF47">
        <node concept="1VxSAg" id="4F3SXIF5Y1f" role="3cqZAp">
          <ref role="37wK5l" node="4F3SXIF5Xa$" resolve="ProgramEvaluator" />
          <node concept="3clFbT" id="4F3SXIF5Y37" role="37wK5m">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4F3SXIF5Xmc" role="jymVt" />
    <node concept="3clFbW" id="4F3SXIF5Xa$" role="jymVt">
      <node concept="37vLTG" id="4F3SXIF5Xx_" role="3clF46">
        <property role="TrG5h" value="profiling" />
        <node concept="10P_77" id="4F3SXIF5XyU" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4F3SXIF5XaB" role="3clF45" />
      <node concept="3Tm1VV" id="4F3SXIF5XaC" role="1B3o_S" />
      <node concept="3clFbS" id="4F3SXIF5XaD" role="3clF47">
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
    <node concept="3clFb_" id="7WKNeR9xdDN" role="jymVt">
      <property role="TrG5h" value="configure" />
      <node concept="37vLTG" id="7WKNeR9GbWj" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="17QB3L" id="7WKNeR9Gc6Q" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7WKNeR9xf0F" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="7WKNeR9xfbO" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
      </node>
      <node concept="3uibUv" id="7WKNeR9xey5" role="3clF45">
        <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR9xdDQ" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR9xdDR" role="3clF47">
        <node concept="3clFbF" id="7WKNeR9xfec" role="3cqZAp">
          <node concept="37vLTw" id="7WKNeR9xfeb" role="3clFbG">
            <ref role="3cqZAo" node="7WKNeR9xf0F" resolve="config" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7WKNeR9xfet" role="lGtFl">
        <node concept="TZ5HA" id="7WKNeR9xfeu" role="TZ5H$">
          <node concept="1dT_AC" id="7WKNeR9xfev" role="1dT_Ay">
            <property role="1dT_AB" value="Override to provide custom configuration options. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR9xcNq" role="jymVt" />
    <node concept="3clFb_" id="HV6urVFrQ9" role="jymVt">
      <property role="TrG5h" value="eval" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="7WKNeR9G0zS" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="17QB3L" id="7WKNeR9G2Fq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7lt0LtQtD2v" role="3clF46">
        <property role="TrG5h" value="programProducer" />
        <node concept="3uibUv" id="7eQMSyz9Ip6" role="1tU5fm">
          <ref role="3uigEE" node="3GlpCDSxTG7" resolve="ProgramProducer" />
        </node>
      </node>
      <node concept="37vLTG" id="5tAk4yVOEzr" role="3clF46">
        <property role="TrG5h" value="programSpec" />
        <node concept="3uibUv" id="5tAk4yW2GEb" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalSpec" resolve="IncrementalSpec" />
        </node>
      </node>
      <node concept="37vLTG" id="4J__M6MPY0" role="3clF46">
        <property role="TrG5h" value="sessionToken" />
        <node concept="3uibUv" id="4J__M6MR1t" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~SessionToken" resolve="SessionToken" />
        </node>
      </node>
      <node concept="37vLTG" id="3o9wrC3sOnz" role="3clF46">
        <property role="TrG5h" value="supervisor" />
        <node concept="3uibUv" id="3o9wrC3sPQg" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~Supervisor" resolve="Supervisor" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQKgF" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="qubcdtxFI2" role="1tU5fm">
          <ref role="3uigEE" node="qubcdtxBiR" resolve="EvaluationTraceExt" />
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
        <node concept="3cpWs8" id="7eQMSyz9QyK" role="3cqZAp">
          <node concept="3cpWsn" id="7eQMSyz9QyL" role="3cpWs9">
            <property role="TrG5h" value="program" />
            <node concept="3uibUv" id="7eQMSyz9QyM" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
            </node>
            <node concept="2OqwBi" id="7eQMSyz9TvU" role="33vP2m">
              <node concept="37vLTw" id="7eQMSyz9TjP" role="2Oq$k0">
                <ref role="3cqZAo" node="7lt0LtQtD2v" resolve="programProducer" />
              </node>
              <node concept="liA8E" id="7eQMSyz9TDq" role="2OqNvi">
                <ref role="37wK5l" node="3GlpCDSyO$P" resolve="getProgram" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4J__M6MM1Y" role="3cqZAp" />
        <node concept="3cpWs8" id="7WKNeR9xpPO" role="3cqZAp">
          <node concept="3cpWsn" id="7WKNeR9xpPP" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7WKNeR9xpPL" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
            </node>
            <node concept="2YIFZM" id="7WKNeR9xpPQ" role="33vP2m">
              <ref role="37wK5l" to="w7la:~EvaluationSession.newSession(jetbrains.mps.logic.reactor.program.Program)" resolve="newSession" />
              <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
              <node concept="37vLTw" id="7eQMSyz9Vlh" role="37wK5m">
                <ref role="3cqZAo" node="7eQMSyz9QyL" resolve="program" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="73aHuggfcRq" role="3cqZAp">
          <node concept="3cpWsn" id="73aHuggfcRr" role="3cpWs9">
            <property role="TrG5h" value="mainSymbol" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="73aHuggfcRo" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
            </node>
            <node concept="2ShNRf" id="73aHuggfcRs" role="33vP2m">
              <node concept="1pGfFk" id="73aHuggfcRt" role="2ShVmc">
                <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                <node concept="Xl_RD" id="73aHuggfcRu" role="37wK5m">
                  <property role="Xl_RC" value="main" />
                </node>
                <node concept="3cmrfG" id="73aHuggfcRv" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3GlpCDSC7RP" role="3cqZAp">
          <node concept="37vLTI" id="3GlpCDSC7RR" role="3clFbG">
            <node concept="2OqwBi" id="3GlpCDSC7E1" role="37vLTx">
              <node concept="37vLTw" id="3GlpCDSC7E2" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
              </node>
              <node concept="liA8E" id="3GlpCDSC7E3" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withParameter(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$ParameterKey,java.lang.Object)" resolve="withParameter" />
                <node concept="2YIFZM" id="4OmcgRwjQME" role="37wK5m">
                  <ref role="37wK5l" to="w7la:~EvaluationSession$ParameterKey.of(java.lang.String,java.lang.Class)" resolve="of" />
                  <ref role="1Pybhc" to="w7la:~EvaluationSession$ParameterKey" resolve="EvaluationSession.ParameterKey" />
                  <node concept="Xl_RD" id="4OmcgRwjTBh" role="37wK5m">
                    <property role="Xl_RC" value="main" />
                  </node>
                  <node concept="3VsKOn" id="4OmcgRwk4WE" role="37wK5m">
                    <ref role="3VsUkX" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3GlpCDSC7E5" role="37wK5m">
                  <node concept="2ShNRf" id="3GlpCDSC7E6" role="2Oq$k0">
                    <node concept="1pGfFk" id="3GlpCDSC7E7" role="2ShVmc">
                      <ref role="37wK5l" to="i348:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                      <node concept="37vLTw" id="73aHuggfcRw" role="37wK5m">
                        <ref role="3cqZAo" node="73aHuggfcRr" resolve="mainSymbol" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3GlpCDSC7Ec" role="2OqNvi">
                    <ref role="37wK5l" to="i348:4sSe4$oM2zI" resolve="toConstraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GlpCDSC862" role="37vLTJ">
              <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
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
                    <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                  </node>
                  <node concept="liA8E" id="3F6vMxqqwSs" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withParameter(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$ParameterKey,java.lang.Object)" resolve="withParameter" />
                    <node concept="2YIFZM" id="4OmcgRwkj$x" role="37wK5m">
                      <ref role="37wK5l" to="w7la:~EvaluationSession$ParameterKey.of(java.lang.String,java.lang.Class)" resolve="of" />
                      <ref role="1Pybhc" to="w7la:~EvaluationSession$ParameterKey" resolve="EvaluationSession.ParameterKey" />
                      <node concept="Xl_RD" id="3F6vMxqqzhz" role="37wK5m">
                        <property role="Xl_RC" value="profiling.data" />
                      </node>
                      <node concept="3VsKOn" id="4OmcgRwktYn" role="37wK5m">
                        <ref role="3VsUkX" to="33ny:~Map" resolve="Map" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3F6vMxqqAtS" role="37wK5m">
                      <ref role="3cqZAo" node="3GlpCDSBZo0" resolve="profilingData" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GlpCDSC8uu" role="37vLTJ">
                  <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
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
              <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
            </node>
            <node concept="2OqwBi" id="3GlpCDSD3d1" role="37vLTx">
              <node concept="37vLTw" id="3GlpCDSD3d2" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
              </node>
              <node concept="liA8E" id="3GlpCDSD3d3" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withTrace(jetbrains.mps.logic.reactor.evaluation.EvaluationTrace)" resolve="withTrace" />
                <node concept="37vLTw" id="3GlpCDSD3d4" role="37wK5m">
                  <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="8odmgCo4LW" role="3cqZAp" />
        <node concept="3clFbF" id="7eQMSyza1JA" role="3cqZAp">
          <node concept="37vLTI" id="7eQMSyza3Wa" role="3clFbG">
            <node concept="2OqwBi" id="7eQMSyza54k" role="37vLTx">
              <node concept="37vLTw" id="7eQMSyza4Y_" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
              </node>
              <node concept="liA8E" id="7eQMSyza5cw" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withIncrSpec(jetbrains.mps.logic.reactor.program.IncrementalSpec)" resolve="withIncrSpec" />
                <node concept="37vLTw" id="5tAk4yVOGST" role="37wK5m">
                  <ref role="3cqZAo" node="5tAk4yVOEzr" resolve="programSpec" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7eQMSyza1J$" role="37vLTJ">
              <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3R7n5gYSM0T" role="3cqZAp">
          <node concept="37vLTI" id="3R7n5gYSM0U" role="3clFbG">
            <node concept="2OqwBi" id="3R7n5gYSM0V" role="37vLTx">
              <node concept="37vLTw" id="3R7n5gYSM0W" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
              </node>
              <node concept="liA8E" id="3R7n5gYSM0X" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withSessionToken(jetbrains.mps.logic.reactor.evaluation.SessionToken)" resolve="withSessionToken" />
                <node concept="37vLTw" id="4J__M6MRd2" role="37wK5m">
                  <ref role="3cqZAo" node="4J__M6MPY0" resolve="sessionToken" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3R7n5gYSM0Z" role="37vLTJ">
              <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1imVejVBgja" role="3cqZAp">
          <node concept="37vLTI" id="1imVejVBi1a" role="3clFbG">
            <node concept="2OqwBi" id="1imVejVBiTV" role="37vLTx">
              <node concept="37vLTw" id="1imVejVBiO2" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
              </node>
              <node concept="liA8E" id="1imVejVBj59" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withStore(java.util.Collection)" resolve="withStore" />
                <node concept="2OqwBi" id="1imVejVBjmO" role="37wK5m">
                  <node concept="37vLTw" id="1imVejVBja6" role="2Oq$k0">
                    <ref role="3cqZAo" node="7lt0LtQtD2v" resolve="programProducer" />
                  </node>
                  <node concept="liA8E" id="1imVejVBjxN" role="2OqNvi">
                    <ref role="37wK5l" node="1imVejVAvuv" resolve="initialStore" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1imVejVBgj8" role="37vLTJ">
              <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GlpCDSBYQN" role="3cqZAp" />
        <node concept="3clFbF" id="1Ry9kf2v6ed" role="3cqZAp">
          <node concept="2YIFZM" id="5wYq9r5EDbG" role="3clFbG">
            <ref role="37wK5l" to="lehm:2tjs8VC1byF" resolve="push" />
            <ref role="1Pybhc" to="lehm:2tjs8VC0K0m" resolve="Memoizer" />
          </node>
        </node>
        <node concept="3clFbF" id="4J__M6MhyL" role="3cqZAp">
          <node concept="37vLTI" id="4J__M6Mklm" role="3clFbG">
            <node concept="10Nm6u" id="4J__M6MkY1" role="37vLTx" />
            <node concept="2OqwBi" id="4J__M6MiS0" role="37vLTJ">
              <node concept="Xjq3P" id="4J__M6MhyJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="4J__M6Mk90" role="2OqNvi">
                <ref role="2Oxat5" node="4J__M6Mful" resolve="evaluationResult" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="62kWyaxUae_" role="3cqZAp">
          <node concept="3cpWsn" id="62kWyaxUaeA" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="62kWyaxTO6P" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oB" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1Ry9kf2vh7F" role="3cqZAp">
          <node concept="3uVAMA" id="6gnqipLr6Rh" role="1zxBo5">
            <node concept="XOnhg" id="6gnqipLr6Ri" role="1zc67B">
              <property role="TrG5h" value="efe" />
              <node concept="nSUau" id="6gnqipLr6Rj" role="1tU5fm">
                <node concept="3uibUv" id="6gnqipLr8aB" role="nSUat">
                  <ref role="3uigEE" to="w7la:~EvaluationFailureException" resolve="EvaluationFailureException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6gnqipLr6Rk" role="1zc67A">
              <node concept="RRSsy" id="6gnqipLr8i9" role="3cqZAp">
                <property role="RRSoG" value="h1akgim/info" />
                <node concept="Xl_RD" id="6gnqipLr8ia" role="RRSoy">
                  <property role="Xl_RC" value="program evaluation failure" />
                </node>
                <node concept="37vLTw" id="6gnqipLrcEX" role="RRSow">
                  <ref role="3cqZAo" node="6gnqipLr6Ri" resolve="efe" />
                </node>
              </node>
              <node concept="3cpWs6" id="6gnqipLr9_Q" role="3cqZAp">
                <node concept="2YIFZM" id="6gnqipLrbEb" role="3cqZAk">
                  <ref role="37wK5l" to="psoy:5X1yxJHYTYX" resolve="RECOVER" />
                  <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                  <node concept="37vLTw" id="6gnqipLrcIE" role="37wK5m">
                    <ref role="3cqZAo" node="6gnqipLr6Ri" resolve="efe" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6gnqipLr9yT" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="1Ry9kf2vh7H" role="1zxBo7">
            <node concept="3SKdUt" id="7WKNeR9xESt" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxNy" role="1aUNEU">
                <node concept="3oM_SD" id="589APehYxNz" role="1PaTwD">
                  <property role="3oM_SC" value="allow" />
                </node>
                <node concept="3oM_SD" id="589APehYxN$" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="589APehYxN_" role="1PaTwD">
                  <property role="3oM_SC" value="custom" />
                </node>
                <node concept="3oM_SD" id="589APehYxNA" role="1PaTwD">
                  <property role="3oM_SC" value="configuration" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7WKNeR9xAwA" role="3cqZAp">
              <node concept="37vLTI" id="7WKNeR9xC3C" role="3clFbG">
                <node concept="1rXfSq" id="7WKNeR9xDpZ" role="37vLTx">
                  <ref role="37wK5l" node="7WKNeR9xdDN" resolve="configure" />
                  <node concept="37vLTw" id="7WKNeR9GNCc" role="37wK5m">
                    <ref role="3cqZAo" node="7WKNeR9G0zS" resolve="stage" />
                  </node>
                  <node concept="37vLTw" id="7WKNeR9xDt7" role="37wK5m">
                    <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                  </node>
                </node>
                <node concept="37vLTw" id="7WKNeR9xAw$" role="37vLTJ">
                  <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5wYq9r5VVgg" role="3cqZAp" />
            <node concept="3clFbF" id="1Ry9kf2vmS1" role="3cqZAp">
              <node concept="37vLTI" id="1Ry9kf2vmS3" role="3clFbG">
                <node concept="2OqwBi" id="5mr7UHcbsDT" role="37vLTx">
                  <node concept="37vLTw" id="3GlpCDSC8kM" role="2Oq$k0">
                    <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                  </node>
                  <node concept="liA8E" id="5mr7UHcbsE5" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.start(jetbrains.mps.logic.reactor.evaluation.Supervisor)" resolve="start" />
                    <node concept="37vLTw" id="3o9wrC3sW4Z" role="37wK5m">
                      <ref role="3cqZAo" node="3o9wrC3sOnz" resolve="supervisor" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4J__M6MFaf" role="37vLTJ">
                  <node concept="Xjq3P" id="4J__M6MFeO" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4J__M6MFai" role="2OqNvi">
                    <ref role="2Oxat5" node="4J__M6Mful" resolve="evaluationResult" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1X0h_efYbPh" role="3cqZAp">
              <node concept="3cpWsn" id="1X0h_efYbPi" role="3cpWs9">
                <property role="TrG5h" value="feedback" />
                <node concept="2OqwBi" id="1X0h_efYbPj" role="33vP2m">
                  <node concept="liA8E" id="473$26GFFFG" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationResult.feedback()" resolve="feedback" />
                  </node>
                  <node concept="37vLTw" id="4J__M6MFkz" role="2Oq$k0">
                    <ref role="3cqZAo" node="4J__M6Mful" resolve="evaluationResult" />
                  </node>
                </node>
                <node concept="3uibUv" id="473$26GFFKF" role="1tU5fm">
                  <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1X0h_efY7po" role="3cqZAp">
              <node concept="3clFbS" id="1X0h_efY7pq" role="3clFbx">
                <node concept="3clFbF" id="62kWyaxUwip" role="3cqZAp">
                  <node concept="37vLTI" id="62kWyaxUwsQ" role="3clFbG">
                    <node concept="2YIFZM" id="51ek2rQtURt" role="37vLTx">
                      <ref role="37wK5l" to="psoy:5X1yxJHYTYX" resolve="RECOVER" />
                      <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                      <node concept="2OqwBi" id="51ek2rQtURu" role="37wK5m">
                        <node concept="37vLTw" id="51ek2rQtURv" role="2Oq$k0">
                          <ref role="3cqZAo" node="1X0h_efYbPi" resolve="feedback" />
                        </node>
                        <node concept="liA8E" id="51ek2rQtURw" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~EvaluationFeedback.failureCause()" resolve="failureCause" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="62kWyaxUwin" role="37vLTJ">
                      <ref role="3cqZAo" node="62kWyaxUaeA" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="473$26GFFTJ" role="3clFbw">
                <node concept="3y3z36" id="8odmgCcsAb" role="3uHU7B">
                  <node concept="37vLTw" id="1X0h_efYbPm" role="3uHU7B">
                    <ref role="3cqZAo" node="1X0h_efYbPi" resolve="feedback" />
                  </node>
                  <node concept="10Nm6u" id="8odmgCcsAF" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="473$26GFG6i" role="3uHU7w">
                  <node concept="37vLTw" id="473$26GFFYL" role="2Oq$k0">
                    <ref role="3cqZAo" node="1X0h_efYbPi" resolve="feedback" />
                  </node>
                  <node concept="liA8E" id="473$26GFHdI" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationFeedback.isFailure()" resolve="isFailure" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1X0h_efY7oC" role="3cqZAp" />
          </node>
          <node concept="3uVAMA" id="RZQG98Soki" role="1zxBo5">
            <node concept="XOnhg" id="RZQG98Sokj" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="dLrdEES94Lx" role="1tU5fm">
                <node concept="3uibUv" id="RZQG98SpEi" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="RZQG98Sokl" role="1zc67A">
              <node concept="RRSsy" id="RZQG98SpJh" role="3cqZAp">
                <property role="RRSoG" value="gZ5fksE/warn" />
                <node concept="Xl_RD" id="RZQG98SpJi" role="RRSoy">
                  <property role="Xl_RC" value="error evaluating program" />
                </node>
                <node concept="37vLTw" id="RZQG98Sr8a" role="RRSow">
                  <ref role="3cqZAo" node="RZQG98Sokj" resolve="ex" />
                </node>
              </node>
              <node concept="3cpWs6" id="RZQG98SpJk" role="3cqZAp">
                <node concept="2YIFZM" id="7TC1Xcd$6oP" role="3cqZAk">
                  <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                  <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                  <node concept="37vLTw" id="RZQG98SraT" role="37wK5m">
                    <ref role="3cqZAo" node="RZQG98Sokj" resolve="ex" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="RZQG98SpMB" role="3cqZAp" />
            </node>
          </node>
          <node concept="3uVAMA" id="7rf49NgqSok" role="1zxBo5">
            <node concept="XOnhg" id="7rf49NgqSol" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="vmerr" />
              <node concept="nSUau" id="2CUCxu9c4DG" role="1tU5fm">
                <node concept="3uibUv" id="7rf49NgqTpN" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~VirtualMachineError" resolve="VirtualMachineError" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7rf49NgqSon" role="1zc67A">
              <node concept="RRSsy" id="4cvvxaYhrSr" role="3cqZAp">
                <property role="RRSoG" value="gZ5fksE/warn" />
                <node concept="Xl_RD" id="7rf49NgqUfc" role="RRSoy">
                  <property role="Xl_RC" value="error evaluating program" />
                </node>
                <node concept="37vLTw" id="7rf49NgqUfe" role="RRSow">
                  <ref role="3cqZAo" node="7rf49NgqSol" resolve="vmerr" />
                </node>
              </node>
              <node concept="3cpWs6" id="7rf49NgqUQx" role="3cqZAp">
                <node concept="2YIFZM" id="7TC1Xcd$6oQ" role="3cqZAk">
                  <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                  <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                  <node concept="37vLTw" id="7rf49Ngr2H$" role="37wK5m">
                    <ref role="3cqZAo" node="7rf49NgqSol" resolve="vmerr" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7rf49NgqTGY" role="3cqZAp" />
            </node>
          </node>
          <node concept="1wplmZ" id="7SIGUfCxz0q" role="1zxBo6">
            <node concept="3clFbS" id="1Ry9kf2vh7I" role="1wplMD">
              <node concept="3SKdUt" id="4F3SXIF5S$a" role="3cqZAp">
                <node concept="1PaTwC" id="589APehYxNO" role="1aUNEU">
                  <node concept="3oM_SD" id="589APehYxNP" role="1PaTwD">
                    <property role="3oM_SC" value="report" />
                  </node>
                  <node concept="3oM_SD" id="589APehYxNQ" role="1PaTwD">
                    <property role="3oM_SC" value="profiling" />
                  </node>
                  <node concept="3oM_SD" id="589APehYxNR" role="1PaTwD">
                    <property role="3oM_SC" value="data" />
                  </node>
                  <node concept="3oM_SD" id="589APehYxNS" role="1PaTwD">
                    <property role="3oM_SC" value="before" />
                  </node>
                  <node concept="3oM_SD" id="589APehYxNT" role="1PaTwD">
                    <property role="3oM_SC" value="exiting" />
                  </node>
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
                              <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
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
                                <ref role="37wK5l" node="18cJbc1jRnT" resolve="info" />
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
                                        <ref role="37wK5l" to="33ny:~Map$Entry.getKey()" resolve="getKey" />
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
                            <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
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
                        <ref role="37wK5l" to="33ny:~Map.entrySet()" resolve="entrySet" />
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
                <node concept="2YIFZM" id="5wYq9r5EDbI" role="3clFbG">
                  <ref role="37wK5l" to="lehm:2tjs8VC1f3O" resolve="pop" />
                  <ref role="1Pybhc" to="lehm:2tjs8VC0K0m" resolve="Memoizer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Ry9kf2vk8j" role="3cqZAp" />
        <node concept="3cpWs6" id="2ocyR2R40WW" role="3cqZAp">
          <node concept="37vLTw" id="62kWyaxUaeD" role="3cqZAk">
            <ref role="3cqZAo" node="62kWyaxUaeA" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3GlpCDSFjwR" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
    <node concept="3Tm1VV" id="41ox5Vnk76b" role="1B3o_S" />
    <node concept="3clFb_" id="4J__M6Meme" role="jymVt">
      <property role="TrG5h" value="getEvaluationResult" />
      <node concept="3uibUv" id="4J__M6MeSg" role="3clF45">
        <ref role="3uigEE" to="w7la:~EvaluationResult" resolve="EvaluationResult" />
      </node>
      <node concept="3Tm1VV" id="4J__M6Memh" role="1B3o_S" />
      <node concept="3clFbS" id="4J__M6Memi" role="3clF47">
        <node concept="3clFbF" id="4J__M6MsUr" role="3cqZAp">
          <node concept="37vLTw" id="4J__M6MsUq" role="3clFbG">
            <ref role="3cqZAo" node="4J__M6Mful" resolve="evaluationResult" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4J__M6NDtw" role="jymVt" />
    <node concept="312cEg" id="4F3SXIF5XzK" role="jymVt">
      <property role="TrG5h" value="profiling" />
      <node concept="3Tm6S6" id="4F3SXIF5XzL" role="1B3o_S" />
      <node concept="10P_77" id="4F3SXIF5XzN" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4J__M6Mful" role="jymVt">
      <property role="TrG5h" value="evaluationResult" />
      <node concept="3Tm6S6" id="4J__M6Mfum" role="1B3o_S" />
      <node concept="3uibUv" id="4J__M6Mg1O" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~EvaluationResult" resolve="EvaluationResult" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6fdr4UgftiG">
    <property role="TrG5h" value="RuleTemplateIndex" />
    <node concept="2tJIrI" id="20Ay2VeQfgH" role="jymVt" />
    <node concept="3clFbW" id="7P_FdVPIH2n" role="jymVt">
      <node concept="37vLTG" id="7WKNeR94ikN" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="7WKNeR94ikO" role="1tU5fm">
          <node concept="3uibUv" id="5EDW3XFuISP" role="A3Ik2">
            <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7P_FdVPIH2p" role="3clF45" />
      <node concept="3Tm1VV" id="7WKNeR94iu3" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPIH2r" role="3clF47">
        <node concept="3clFbF" id="7WKNeR96aA4" role="3cqZAp">
          <node concept="1rXfSq" id="7WKNeR96aA3" role="3clFbG">
            <ref role="37wK5l" node="7DvO2Mandqg" resolve="init" />
            <node concept="37vLTw" id="7WKNeR96aIu" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR94ikN" resolve="manifests" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7WKNeR94iw8" role="lGtFl">
        <node concept="TZ5HA" id="7WKNeR94iw9" role="TZ5H$">
          <node concept="1dT_AC" id="7WKNeR94iyE" role="1dT_Ay">
            <property role="1dT_AB" value="The list of manifests must be sorted in the topological order." />
          </node>
          <node concept="1dT_AC" id="7WKNeR94iwa" role="1dT_Ay" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPH0_B" role="jymVt" />
    <node concept="3clFb_" id="6fdr4UgfuGk" role="jymVt">
      <property role="TrG5h" value="allRuleTemplates" />
      <node concept="37vLTG" id="12yN8DyvzeF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="12yN8Dyv_JV" role="1tU5fm" />
      </node>
      <node concept="3vKaQO" id="7gMIJIyo$IU" role="3clF45">
        <node concept="3uibUv" id="7gMIJIyo$IW" role="3O5elw">
          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
          <node concept="3qUE_q" id="7gMIJIyo$IX" role="11_B2D">
            <node concept="3uibUv" id="7gMIJIyo$IY" role="3qUE_r">
              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6fdr4UgfuGn" role="1B3o_S" />
      <node concept="3clFbS" id="6fdr4UgfuGo" role="3clF47">
        <node concept="3cpWs8" id="7gMIJIyn$42" role="3cqZAp">
          <node concept="3cpWsn" id="7gMIJIyn$43" role="3cpWs9">
            <property role="TrG5h" value="allMatching" />
            <node concept="3vKaQO" id="7gMIJIyn$3J" role="1tU5fm">
              <node concept="3uibUv" id="7gMIJIyn$3Q" role="3O5elw">
                <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                <node concept="3qTvmN" id="7gMIJIyn$3R" role="11_B2D" />
              </node>
            </node>
            <node concept="3EllGN" id="7gMIJIyn$44" role="33vP2m">
              <node concept="2OqwBi" id="7gMIJIyn$45" role="3ElVtu">
                <node concept="37vLTw" id="7gMIJIyn$46" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                </node>
                <node concept="2yIwOk" id="7gMIJIyn$47" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="7gMIJIyn$48" role="3ElQJh">
                <ref role="3cqZAo" node="7gMIJIynsDv" resolve="concept2matching" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7gMIJIynBzj" role="3cqZAp">
          <node concept="3clFbS" id="7gMIJIynBzl" role="3clFbx">
            <node concept="3clFbF" id="7gMIJIynHFT" role="3cqZAp">
              <node concept="37vLTI" id="7gMIJIynJiD" role="3clFbG">
                <node concept="1eOMI4" id="7gMIJIynJB6" role="37vLTx">
                  <node concept="37vLTI" id="7gMIJIynJDW" role="1eOMHV">
                    <node concept="2ShNRf" id="7gMIJIynJDX" role="37vLTx">
                      <node concept="Tc6Ow" id="7gMIJIynJDY" role="2ShVmc">
                        <node concept="3uibUv" id="7gMIJIynJDZ" role="HW$YZ">
                          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                          <node concept="3qTvmN" id="7gMIJIynJE0" role="11_B2D" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7gMIJIynJE1" role="37vLTJ">
                      <ref role="3cqZAo" node="7gMIJIyn$43" resolve="allMatching" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="7gMIJIynIbs" role="37vLTJ">
                  <node concept="2OqwBi" id="7gMIJIynIwS" role="3ElVtu">
                    <node concept="37vLTw" id="7gMIJIynIkA" role="2Oq$k0">
                      <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                    </node>
                    <node concept="2yIwOk" id="7gMIJIynIH$" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="7gMIJIynHFR" role="3ElQJh">
                    <ref role="3cqZAo" node="7gMIJIynsDv" resolve="concept2matching" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7gMIJIynBzk" role="3cqZAp" />
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
            <node concept="3SKdUt" id="12yN8Dywh_Q" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxO0" role="1aUNEU">
                <node concept="3oM_SD" id="589APehYxO1" role="1PaTwD">
                  <property role="3oM_SC" value="assuming" />
                </node>
                <node concept="3oM_SD" id="589APehYxO2" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="589APehYxO3" role="1PaTwD">
                  <property role="3oM_SC" value="list" />
                </node>
                <node concept="3oM_SD" id="589APehYxO4" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="589APehYxO5" role="1PaTwD">
                  <property role="3oM_SC" value="sorted" />
                </node>
                <node concept="3oM_SD" id="589APehYxO6" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="589APehYxO7" role="1PaTwD">
                  <property role="3oM_SC" value="most" />
                </node>
                <node concept="3oM_SD" id="589APehYxO8" role="1PaTwD">
                  <property role="3oM_SC" value="specific" />
                </node>
                <node concept="3oM_SD" id="589APehYxO9" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="589APehYxOa" role="1PaTwD">
                  <property role="3oM_SC" value="most" />
                </node>
                <node concept="3oM_SD" id="589APehYxOb" role="1PaTwD">
                  <property role="3oM_SC" value="abstract" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="tIwzd1HIKH" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxOc" role="1aUNEU">
                <node concept="3oM_SD" id="589APehYxOd" role="1PaTwD">
                  <property role="3oM_SC" value="TODO:" />
                </node>
                <node concept="3oM_SD" id="589APehYxOe" role="1PaTwD">
                  <property role="3oM_SC" value="check" />
                </node>
                <node concept="3oM_SD" id="589APehYxOf" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="589APehYxOg" role="1PaTwD">
                  <property role="3oM_SC" value="above" />
                </node>
                <node concept="3oM_SD" id="589APehYxOh" role="1PaTwD">
                  <property role="3oM_SC" value="assumption" />
                </node>
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
                          <node concept="3uibUv" id="7XdbJdyRSmQ" role="3O5elw">
                            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                            <node concept="3qTvmN" id="7gMIJIymZpv" role="11_B2D" />
                          </node>
                        </node>
                        <node concept="3EllGN" id="12yN8DywoJa" role="33vP2m">
                          <node concept="37vLTw" id="12yN8Dywulc" role="3ElVtu">
                            <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                          </node>
                          <node concept="37vLTw" id="12yN8DywoJc" role="3ElQJh">
                            <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="12yN8Dywsy6" role="3cqZAp" />
                    <node concept="1DcWWT" id="12yN8DyDOdI" role="3cqZAp">
                      <node concept="3clFbS" id="12yN8DyDOdJ" role="2LFqv$">
                        <node concept="3clFbJ" id="12yN8DyDPmt" role="3cqZAp">
                          <node concept="3clFbS" id="12yN8DyDPmw" role="3clFbx">
                            <node concept="3clFbF" id="7gMIJIynM8q" role="3cqZAp">
                              <node concept="2OqwBi" id="7gMIJIynMHG" role="3clFbG">
                                <node concept="37vLTw" id="7gMIJIynM8o" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7gMIJIyn$43" resolve="allMatching" />
                                </node>
                                <node concept="TSZUe" id="7gMIJIynNem" role="2OqNvi">
                                  <node concept="37vLTw" id="7gMIJIynNhb" role="25WWJ7">
                                    <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="22lmx$" id="7XdbJdyJKV2" role="3clFbw">
                            <node concept="3clFbC" id="7XdbJdyJKCF" role="3uHU7B">
                              <node concept="37vLTw" id="12yN8DyDPny" role="3uHU7B">
                                <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
                              </node>
                              <node concept="3cmrfG" id="12yN8DyDPNL" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="7XdbJdyJLha" role="3uHU7w">
                              <node concept="2OqwBi" id="7XdbJdyJLhc" role="3fr31v">
                                <node concept="liA8E" id="7XdbJdyJLhe" role="2OqNvi">
                                  <ref role="37wK5l" to="i348:7XdbJdz3PF6" resolve="isExactMatch" />
                                </node>
                                <node concept="37vLTw" id="6tPOoeTaKuA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="12yN8DyDOdM" role="1Duv9x">
                        <property role="TrG5h" value="tpl" />
                        <node concept="3uibUv" id="6tPOoeTaJl8" role="1tU5fm">
                          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                          <node concept="3qTvmN" id="7gMIJIyn0Eu" role="11_B2D" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="12yN8DyDOdR" role="1DdaDG">
                        <ref role="3cqZAo" node="12yN8DywoJ9" resolve="matching" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="12yN8DywaUF" role="3clFbw">
                    <node concept="37vLTw" id="12yN8Dyw7ap" role="2Oq$k0">
                      <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
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
          </node>
          <node concept="3clFbC" id="7gMIJIynDAh" role="3clFbw">
            <node concept="10Nm6u" id="7gMIJIynDVw" role="3uHU7w" />
            <node concept="37vLTw" id="7gMIJIynCZI" role="3uHU7B">
              <ref role="3cqZAo" node="7gMIJIyn$43" resolve="allMatching" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KAYA" role="3cqZAp" />
        <node concept="3cpWs6" id="12yN8DyDYJd" role="3cqZAp">
          <node concept="37vLTw" id="7gMIJIyo2Xy" role="3cqZAk">
            <ref role="3cqZAo" node="7gMIJIyn$43" resolve="allMatching" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7WKNeR97Sa0" role="lGtFl">
        <node concept="TZ5HA" id="7WKNeR981Js" role="TZ5H$">
          <node concept="1dT_AC" id="7WKNeR981Jt" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable to the specified node. Extracts the node's concept to search for matching templates." />
          </node>
        </node>
        <node concept="TUZQ0" id="7WKNeR981P6" role="3nqlJM">
          <property role="TUZQ4" value="node to search templates for" />
          <node concept="zr_55" id="7WKNeR981P7" role="zr_5Q">
            <ref role="zr_51" node="12yN8DyvzeF" resolve="node" />
          </node>
        </node>
        <node concept="x79VA" id="7WKNeR981P8" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node as a tuple [stage, template]" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1qqA9" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1qn9x" role="jymVt">
      <property role="TrG5h" value="allRuleTemplatesWithNoInput" />
      <node concept="A3Dl8" id="5NuEpF1qn9B" role="3clF45">
        <node concept="3uibUv" id="7XdbJdyRWsv" role="A3Ik2">
          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
          <node concept="3qUE_q" id="7XdbJdyRWsw" role="11_B2D">
            <node concept="3uibUv" id="7XdbJdyRWsx" role="3qUE_r">
              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5NuEpF1qn9D" role="1B3o_S" />
      <node concept="3clFbS" id="5NuEpF1qn9E" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1qn9F" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1qn9G" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="5NuEpF1qn9H" role="1tU5fm">
              <node concept="3uibUv" id="6tPOoeTaMF9" role="_ZDj9">
                <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                <node concept="3qUE_q" id="6tPOoeTaMFa" role="11_B2D">
                  <node concept="3uibUv" id="6tPOoeTaMFb" role="3qUE_r">
                    <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5NuEpF1qn9J" role="33vP2m">
              <node concept="Tc6Ow" id="5NuEpF1qn9K" role="2ShVmc">
                <node concept="3uibUv" id="6tPOoeTaOFc" role="HW$YZ">
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                  <node concept="3qUE_q" id="6tPOoeTaOFd" role="11_B2D">
                    <node concept="3uibUv" id="6tPOoeTaOFe" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                    </node>
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
                  <node concept="3uibUv" id="6tPOoeTaQxm" role="3O5elw">
                    <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                    <node concept="3qUE_q" id="6tPOoeTaQxn" role="11_B2D">
                      <node concept="3uibUv" id="6tPOoeTaQxo" role="3qUE_r">
                        <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="5NuEpF1qnap" role="33vP2m">
                  <node concept="10Nm6u" id="5NuEpF1qPk$" role="3ElVtu" />
                  <node concept="37vLTw" id="5NuEpF1qnar" role="3ElQJh">
                    <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1qnas" role="3cqZAp" />
            <node concept="1DcWWT" id="5NuEpF1qnat" role="3cqZAp">
              <node concept="3clFbS" id="5NuEpF1qnau" role="2LFqv$">
                <node concept="3clFbF" id="5NuEpF1qnaG" role="3cqZAp">
                  <node concept="2OqwBi" id="5NuEpF1qnaH" role="3clFbG">
                    <node concept="37vLTw" id="5NuEpF1qnaI" role="2Oq$k0">
                      <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="5NuEpF1qnaJ" role="2OqNvi">
                      <node concept="37vLTw" id="7XdbJdyJMYD" role="25WWJ7">
                        <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5NuEpF1qnaO" role="1Duv9x">
                <property role="TrG5h" value="tpl" />
                <node concept="3uibUv" id="6tPOoeTaR5p" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                  <node concept="3qUE_q" id="6tPOoeTaR5q" role="11_B2D">
                    <node concept="3uibUv" id="6tPOoeTaR5r" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                    </node>
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
              <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
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
      <node concept="P$JXv" id="7WKNeR988t2" role="lGtFl">
        <node concept="TZ5HA" id="7WKNeR988t3" role="TZ5H$">
          <node concept="1dT_AC" id="7WKNeR988t4" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable without the input node." />
          </node>
        </node>
        <node concept="x79VA" id="7WKNeR98b70" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node as a tuple [stage, template]" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgfyxB" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyLgB9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="12yN8DyLgBa" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxI0" role="3clF45" />
      <node concept="3clFbS" id="12yN8DyLgBd" role="3clF47">
        <node concept="3clFbF" id="12yN8DyLiTf" role="3cqZAp">
          <node concept="3cpWs3" id="12yN8DyLkca" role="3clFbG">
            <node concept="3cpWs3" id="12yN8DyLkCn" role="3uHU7B">
              <node concept="3cpWs3" id="12yN8DyLiXM" role="3uHU7B">
                <node concept="2OqwBi" id="7Oc59RSEbhU" role="3uHU7B">
                  <node concept="1rXfSq" id="7Oc59RSEaXF" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSEbW0" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="12yN8DyLiXU" role="3uHU7w">
                  <property role="Xl_RC" value="(" />
                </node>
              </node>
              <node concept="2OqwBi" id="12yN8DyMeDH" role="3uHU7w">
                <node concept="37vLTw" id="12yN8DyMeg9" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
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
    <node concept="3clFb_" id="7DvO2Mandqg" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="7P_FdVPGxfv" role="3clF46">
        <property role="TrG5h" value="ruleTemplateManifests" />
        <node concept="A3Dl8" id="7P_FdVPGxfw" role="1tU5fm">
          <node concept="3uibUv" id="5EDW3XFuIWi" role="A3Ik2">
            <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7DvO2Mandqi" role="3clF45" />
      <node concept="3Tm6S6" id="7WKNeR94fF2" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2Mandqk" role="3clF47">
        <node concept="3clFbF" id="7P_FdVPIgWH" role="3cqZAp">
          <node concept="1rXfSq" id="7P_FdVPIgWF" role="3clFbG">
            <ref role="37wK5l" node="7P_FdVPHmHU" resolve="initWithTemplates" />
            <node concept="2OqwBi" id="7P_FdVPIiZ_" role="37wK5m">
              <node concept="37vLTw" id="7P_FdVPIiMF" role="2Oq$k0">
                <ref role="3cqZAo" node="7P_FdVPGxfv" resolve="ruleTemplateManifests" />
              </node>
              <node concept="3goQfb" id="7P_FdVPIjy0" role="2OqNvi">
                <node concept="1bVj0M" id="7P_FdVPIjy2" role="23t8la">
                  <node concept="3clFbS" id="7P_FdVPIjy3" role="1bW5cS">
                    <node concept="3clFbF" id="7P_FdVPIjDk" role="3cqZAp">
                      <node concept="2OqwBi" id="6tPOoeT9Tkv" role="3clFbG">
                        <node concept="2OqwBi" id="7P_FdVPPsJB" role="2Oq$k0">
                          <node concept="37vLTw" id="7P_FdVPPs$d" role="2Oq$k0">
                            <ref role="3cqZAo" node="7P_FdVPIjy4" resolve="it" />
                          </node>
                          <node concept="liA8E" id="tbauFxRT2i" role="2OqNvi">
                            <ref role="37wK5l" to="fqlx:4MqhgXUaiLz" resolve="ruleTables" />
                          </node>
                        </node>
                        <node concept="ANE8D" id="6tPOoeT9TPZ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7P_FdVPIjy4" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7P_FdVPIjy5" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPI535" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVPHmHU" role="jymVt">
      <property role="TrG5h" value="initWithTemplates" />
      <node concept="37vLTG" id="7P_FdVPHmOS" role="3clF46">
        <property role="TrG5h" value="ruleTables" />
        <node concept="A3Dl8" id="7P_FdVPHCUR" role="1tU5fm">
          <node concept="3uibUv" id="tbauFxRTaY" role="A3Ik2">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7P_FdVPHmHW" role="3clF45" />
      <node concept="3Tm6S6" id="7WKNeR94dbG" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPHmHY" role="3clF47">
        <node concept="3clFbF" id="7DvO2MaBQGN" role="3cqZAp">
          <node concept="1rXfSq" id="7DvO2MaBQGO" role="3clFbG">
            <ref role="37wK5l" node="12yN8Dyvyy6" resolve="collectTemplates" />
            <node concept="37vLTw" id="6tPOoeTaawu" role="37wK5m">
              <ref role="3cqZAo" node="7P_FdVPHmOS" resolve="ruleTables" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2Manhxe" role="jymVt" />
    <node concept="3clFb_" id="12yN8Dyvyy6" role="jymVt">
      <property role="TrG5h" value="collectTemplates" />
      <node concept="37vLTG" id="6tPOoeTa2e3" role="3clF46">
        <property role="TrG5h" value="ruleTables" />
        <node concept="A3Dl8" id="6tPOoeTa566" role="1tU5fm">
          <node concept="3uibUv" id="tbauFxRTpo" role="A3Ik2">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8Dyvyy8" role="3clF45" />
      <node concept="3Tm6S6" id="zL5ZaNyrnn" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8Dyvyya" role="3clF47">
        <node concept="3SKdUt" id="12yN8DyFw_S" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxOi" role="1aUNEU">
            <node concept="3oM_SD" id="589APehYxOj" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="589APehYxOk" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="589APehYxOl" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4MqhgXUaOdr" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUaOdu" role="2LFqv$">
            <node concept="3clFbF" id="7P_FdVQpx7g" role="3cqZAp">
              <node concept="37vLTI" id="7P_FdVQpz2N" role="3clFbG">
                <node concept="37vLTw" id="7P_FdVQpzap" role="37vLTx">
                  <ref role="3cqZAo" node="4MqhgXUaOdv" resolve="ruleTable" />
                </node>
                <node concept="3EllGN" id="7P_FdVQpy2T" role="37vLTJ">
                  <node concept="2OqwBi" id="7P_FdVQpykU" role="3ElVtu">
                    <node concept="37vLTw" id="7P_FdVQpy8u" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUaOdv" resolve="ruleTable" />
                    </node>
                    <node concept="liA8E" id="7P_FdVQpyOQ" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7P_FdVQoZmr" resolve="fqName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7P_FdVQpx7e" role="3ElQJh">
                    <ref role="3cqZAo" node="7P_FdVQplXd" resolve="fqName2ruleTable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7P_FdVQpw$T" role="3cqZAp" />
            <node concept="1DcWWT" id="4MqhgXUaONv" role="3cqZAp">
              <node concept="3clFbS" id="4MqhgXUaONy" role="2LFqv$">
                <node concept="3clFbH" id="4MqhgXUlY8K" role="3cqZAp" />
                <node concept="3cpWs8" id="4MqhgXUaPfU" role="3cqZAp">
                  <node concept="3cpWsn" id="4MqhgXUaPfV" role="3cpWs9">
                    <property role="TrG5h" value="templates" />
                    <node concept="3vKaQO" id="4MqhgXUaPfW" role="1tU5fm">
                      <node concept="3uibUv" id="7XdbJdySsFg" role="3O5elw">
                        <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                        <node concept="3qTvmN" id="7gMIJIymQUa" role="11_B2D" />
                      </node>
                    </node>
                    <node concept="3EllGN" id="4MqhgXUaPfY" role="33vP2m">
                      <node concept="2OqwBi" id="4MqhgXUaPfZ" role="3ElVtu">
                        <node concept="37vLTw" id="4MqhgXUaPg0" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MqhgXUaONz" resolve="tpl" />
                        </node>
                        <node concept="liA8E" id="4MqhgXUaPg1" role="2OqNvi">
                          <ref role="37wK5l" to="i348:1ffsG7bWxkw" resolve="applicableConcept" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4MqhgXUaPg2" role="3ElQJh">
                        <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
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
                                <node concept="3uibUv" id="6tPOoeTaAOM" role="HW$YZ">
                                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                                  <node concept="3qTvmN" id="7gMIJIymRiH" role="11_B2D" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="4MqhgXUaPgc" role="37vLTJ">
                              <ref role="3cqZAo" node="4MqhgXUaPfV" resolve="templates" />
                            </node>
                          </node>
                        </node>
                        <node concept="3EllGN" id="4MqhgXUaPgd" role="37vLTJ">
                          <node concept="2OqwBi" id="4MqhgXUaPge" role="3ElVtu">
                            <node concept="37vLTw" id="4MqhgXUaPgf" role="2Oq$k0">
                              <ref role="3cqZAo" node="4MqhgXUaONz" resolve="tpl" />
                            </node>
                            <node concept="liA8E" id="4MqhgXUaPgg" role="2OqNvi">
                              <ref role="37wK5l" to="i348:1ffsG7bWxkw" resolve="applicableConcept" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4MqhgXUaPgh" role="3ElQJh">
                            <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="4MqhgXUaPgi" role="3clFbw">
                    <node concept="10Nm6u" id="4MqhgXUaPgj" role="3uHU7w" />
                    <node concept="37vLTw" id="4MqhgXUaPgk" role="3uHU7B">
                      <ref role="3cqZAo" node="4MqhgXUaPfV" resolve="templates" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1CcQBrPe57p" role="3cqZAp" />
                <node concept="3SKdUt" id="3IIf9OAyhIq" role="3cqZAp">
                  <node concept="1PaTwC" id="589APehYxOm" role="1aUNEU">
                    <node concept="3oM_SD" id="589APehYxOn" role="1PaTwD">
                      <property role="3oM_SC" value="TODO:" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOo" role="1PaTwD">
                      <property role="3oM_SC" value="test" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOp" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOq" role="1PaTwD">
                      <property role="3oM_SC" value="subtyping" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4MqhgXUaPgl" role="3cqZAp">
                  <node concept="2OqwBi" id="4MqhgXUaPgm" role="3clFbG">
                    <node concept="37vLTw" id="4MqhgXUaPgn" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUaPfV" resolve="templates" />
                    </node>
                    <node concept="TSZUe" id="4MqhgXUaPgo" role="2OqNvi">
                      <node concept="1eOMI4" id="3IIf9OAyh5v" role="25WWJ7">
                        <node concept="10QFUN" id="3IIf9OAyh5w" role="1eOMHV">
                          <node concept="37vLTw" id="7gMIJIynaMB" role="10QFUP">
                            <ref role="3cqZAo" node="4MqhgXUaONz" resolve="tpl" />
                          </node>
                          <node concept="3uibUv" id="3IIf9OAyhfn" role="10QFUM">
                            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                            <node concept="3qTvmN" id="7gMIJIynaSL" role="11_B2D" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUaONz" role="1Duv9x">
                <property role="TrG5h" value="tpl" />
                <node concept="3uibUv" id="7XdbJdySBO1" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  <node concept="3qTvmN" id="7gMIJIymP7P" role="11_B2D" />
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXUaONC" role="1DdaDG">
                <node concept="37vLTw" id="4MqhgXUaOND" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUaOdv" resolve="ruleTable" />
                </node>
                <node concept="liA8E" id="4MqhgXUaONE" role="2OqNvi">
                  <ref role="37wK5l" to="i348:4MqhgXUaiON" resolve="ruleTemplates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUaOdv" role="1Duv9x">
            <property role="TrG5h" value="ruleTable" />
            <node concept="3uibUv" id="4MqhgXUaOdz" role="1tU5fm">
              <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
            </node>
          </node>
          <node concept="37vLTw" id="6tPOoeTa7ji" role="1DdaDG">
            <ref role="3cqZAo" node="6tPOoeTa2e3" resolve="ruleTables" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPP0yl" role="jymVt" />
    <node concept="312cEg" id="12yN8DyvDfi" role="jymVt">
      <property role="TrG5h" value="concept2ruleTemplates" />
      <node concept="3Tm6S6" id="12yN8DyvDfj" role="1B3o_S" />
      <node concept="3rvAFt" id="12yN8Dyw7uY" role="1tU5fm">
        <node concept="3bZ5Sz" id="YGS68MZPLr" role="3rvQeY" />
        <node concept="3vKaQO" id="12yN8DyDzne" role="3rvSg0">
          <node concept="3uibUv" id="7XdbJdyRSXd" role="3O5elw">
            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
            <node concept="3qTvmN" id="7gMIJIymJOx" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="429xoypKEom" role="33vP2m">
        <node concept="3rGOSV" id="429xoypKEon" role="2ShVmc">
          <node concept="3bZ5Sz" id="YGS68MZQMl" role="3rHrn6" />
          <node concept="3vKaQO" id="429xoypKEop" role="3rHtpV">
            <node concept="3uibUv" id="6tPOoeTa_2l" role="3O5elw">
              <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
              <node concept="3qTvmN" id="7gMIJIymMCO" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7gMIJIynum8" role="jymVt" />
    <node concept="312cEg" id="7gMIJIynsDv" role="jymVt">
      <property role="TrG5h" value="concept2matching" />
      <node concept="3Tm6S6" id="7gMIJIynsDw" role="1B3o_S" />
      <node concept="3rvAFt" id="7gMIJIynsDx" role="1tU5fm">
        <node concept="3bZ5Sz" id="7gMIJIynsDy" role="3rvQeY" />
        <node concept="3vKaQO" id="7gMIJIynsDz" role="3rvSg0">
          <node concept="3uibUv" id="7gMIJIynsD$" role="3O5elw">
            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
            <node concept="3qTvmN" id="7gMIJIynsD_" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7gMIJIynsDA" role="33vP2m">
        <node concept="3rGOSV" id="7gMIJIynsDB" role="2ShVmc">
          <node concept="3bZ5Sz" id="7gMIJIynsDC" role="3rHrn6" />
          <node concept="3vKaQO" id="7gMIJIynsDD" role="3rHtpV">
            <node concept="3uibUv" id="7gMIJIynsDE" role="3O5elw">
              <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
              <node concept="3qTvmN" id="7gMIJIynsDF" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPGY2g" role="jymVt" />
    <node concept="312cEg" id="7P_FdVQplXd" role="jymVt">
      <property role="TrG5h" value="fqName2ruleTable" />
      <node concept="3Tm6S6" id="7P_FdVQplXe" role="1B3o_S" />
      <node concept="3rvAFt" id="7P_FdVQpvfA" role="1tU5fm">
        <node concept="17QB3L" id="7P_FdVQpvhe" role="3rvQeY" />
        <node concept="3uibUv" id="7P_FdVQpviN" role="3rvSg0">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="2ShNRf" id="7P_FdVQpvy1" role="33vP2m">
        <node concept="3rGOSV" id="7P_FdVQpvww" role="2ShVmc">
          <node concept="17QB3L" id="7P_FdVQpvwx" role="3rHrn6" />
          <node concept="3uibUv" id="7P_FdVQpvwy" role="3rHtpV">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6fdr4UgftiH" role="1B3o_S" />
    <node concept="2tJIrI" id="7P_FdVQpiDB" role="jymVt" />
  </node>
  <node concept="312cEu" id="1hX44vNlSIA">
    <property role="TrG5h" value="MacroTemplateIndex" />
    <node concept="2tJIrI" id="7DvO2Man0TP" role="jymVt" />
    <node concept="3clFbW" id="1hX44vNlSOK" role="jymVt">
      <node concept="3cqZAl" id="1hX44vNlSOM" role="3clF45" />
      <node concept="3Tmbuc" id="7DvO2MamUIO" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vNlSOO" role="3clF47">
        <node concept="3clFbF" id="1hX44vNnpfY" role="3cqZAp">
          <node concept="1rXfSq" id="1hX44vNnpfX" role="3clFbG">
            <ref role="37wK5l" node="1hX44vNnpfT" resolve="init" />
            <node concept="37vLTw" id="5EDW3XFu$rL" role="37wK5m">
              <ref role="3cqZAo" node="7DvO2MamV5v" resolve="manifests" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7DvO2MamV2l" role="lGtFl">
        <node concept="TZ5HA" id="7DvO2MamV2m" role="TZ5H$">
          <node concept="1dT_AC" id="7DvO2MamV2n" role="1dT_Ay">
            <property role="1dT_AB" value="The list of manifests must be sorted in the topological order." />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2MamV5v" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="7DvO2MamV5t" role="1tU5fm">
          <node concept="3uibUv" id="5EDW3XFusk9" role="A3Ik2">
            <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4JJCDIn5EFu" role="jymVt" />
    <node concept="3clFb_" id="4JJCDIn5F0n" role="jymVt">
      <property role="TrG5h" value="macroTables" />
      <node concept="3vKaQO" id="4JJCDIn5Foj" role="3clF45">
        <node concept="3uibUv" id="tbauFxRN6a" role="3O5elw">
          <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4JJCDIn5F0q" role="1B3o_S" />
      <node concept="3clFbS" id="4JJCDIn5F0r" role="3clF47">
        <node concept="3clFbF" id="4JJCDIn5FW$" role="3cqZAp">
          <node concept="37vLTw" id="4JJCDIn5FWz" role="3clFbG">
            <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5itBwM7VLgc" role="jymVt" />
    <node concept="3clFb_" id="5itBwM7WF$n" role="jymVt">
      <property role="TrG5h" value="callMacroTemplate" />
      <node concept="37vLTG" id="5itBwM7WF$o" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="5itBwM7WF$p" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="5itBwM7WF$q" role="3clF45">
        <ref role="3uigEE" to="i348:5itBwM7auSJ" resolve="CallMacroTemplate" />
        <node concept="16syzq" id="5itBwM7WF$r" role="11_B2D">
          <ref role="16sUi3" node="5itBwM7WF$V" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5itBwM7WF$s" role="1B3o_S" />
      <node concept="3clFbS" id="5itBwM7WF$t" role="3clF47">
        <node concept="2Gpval" id="5itBwM8MNtS" role="3cqZAp">
          <node concept="3clFbS" id="5itBwM8MNtT" role="2LFqv$">
            <node concept="3cpWs8" id="5itBwM8MNtU" role="3cqZAp">
              <node concept="3cpWsn" id="5itBwM8MNtV" role="3cpWs9">
                <property role="TrG5h" value="macroTemplate" />
                <node concept="3uibUv" id="5itBwM8MNtW" role="1tU5fm">
                  <ref role="3uigEE" to="i348:5itBwM7auSJ" resolve="CallMacroTemplate" />
                  <node concept="16syzq" id="5itBwM8MNtX" role="11_B2D">
                    <ref role="16sUi3" node="5itBwM7WF$V" resolve="T" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5itBwM8MNtY" role="33vP2m">
                  <node concept="2GrUjf" id="5itBwM8MNtZ" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5itBwM8MNub" resolve="macroTable" />
                  </node>
                  <node concept="liA8E" id="5itBwM8MNu0" role="2OqNvi">
                    <ref role="37wK5l" to="i348:tbauFxRK5K" resolve="callMacroTemplate" />
                    <node concept="37vLTw" id="5itBwM8MNu1" role="37wK5m">
                      <ref role="3cqZAo" node="5itBwM7WF$o" resolve="templateRef" />
                    </node>
                    <node concept="16syzq" id="5itBwM8MUCF" role="3PaCim">
                      <ref role="16sUi3" node="5itBwM7WF$V" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5itBwM8MNu3" role="3cqZAp">
              <node concept="3y3z36" id="5itBwM8MNu4" role="3clFbw">
                <node concept="10Nm6u" id="5itBwM8MNu5" role="3uHU7w" />
                <node concept="37vLTw" id="5itBwM8MNu6" role="3uHU7B">
                  <ref role="3cqZAo" node="5itBwM8MNtV" resolve="macroTemplate" />
                </node>
              </node>
              <node concept="3clFbS" id="5itBwM8MNu7" role="3clFbx">
                <node concept="3cpWs6" id="5itBwM8MNu8" role="3cqZAp">
                  <node concept="37vLTw" id="5itBwM8MNu9" role="3cqZAk">
                    <ref role="3cqZAo" node="5itBwM8MNtV" resolve="macroTemplate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5itBwM8MNua" role="2GsD0m">
            <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
          </node>
          <node concept="2GrKxI" id="5itBwM8MNub" role="2Gsz3X">
            <property role="TrG5h" value="macroTable" />
          </node>
        </node>
        <node concept="3SKdUt" id="5X1yxJHVw8e" role="3cqZAp">
          <node concept="1PaTwC" id="5X1yxJHVw8f" role="1aUNEU">
            <node concept="3oM_SD" id="5X1yxJHVw8g" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5X1yxJHVwG$" role="1PaTwD">
              <property role="3oM_SC" value="found" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5X1yxJHVsuI" role="3cqZAp">
          <node concept="2ShNRf" id="5X1yxJHVsuJ" role="YScLw">
            <node concept="1pGfFk" id="5X1yxJHVsuK" role="2ShVmc">
              <ref role="37wK5l" to="i348:5X1yxJHUoaI" resolve="TemplateApplicationException" />
              <node concept="3cpWs3" id="5X1yxJHVvcr" role="37wK5m">
                <node concept="3cpWs3" id="5X1yxJHVvcs" role="3uHU7B">
                  <node concept="Xl_RD" id="5X1yxJHVvct" role="3uHU7B">
                    <property role="Xl_RC" value="no macro template  \&quot;" />
                  </node>
                  <node concept="37vLTw" id="5X1yxJHVvcu" role="3uHU7w">
                    <ref role="3cqZAo" node="5itBwM7WF$o" resolve="templateRef" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5X1yxJHVvcv" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5itBwM7WF$V" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5itBwM86U8g" role="3ztrMU">
          <ref role="3uigEE" to="i348:5itBwM86qnn" resolve="CallMacroTemplate.Token" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5itBwM7WF$m" role="jymVt" />
    <node concept="3clFb_" id="5itBwM7W0ZG" role="jymVt">
      <property role="TrG5h" value="expandMacroTemplate" />
      <node concept="37vLTG" id="5itBwM7W4wa" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="5itBwM7W4wb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5itBwM9toE3" role="3clF46">
        <property role="TrG5h" value="prototypeRef" />
        <node concept="3uibUv" id="5itBwM9toE4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="5itBwM7W0ZJ" role="3clF45">
        <ref role="3uigEE" to="i348:5itBwM75Jiy" resolve="ExpandMacroTemplate" />
        <node concept="16syzq" id="5itBwM7W0ZK" role="11_B2D">
          <ref role="16sUi3" node="5itBwM7W10g" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5itBwM7W0ZL" role="1B3o_S" />
      <node concept="3clFbS" id="5itBwM7W0ZM" role="3clF47">
        <node concept="2Gpval" id="5itBwM7W0ZN" role="3cqZAp">
          <node concept="3clFbS" id="5itBwM7W0ZO" role="2LFqv$">
            <node concept="2Gpval" id="4U$Q3dLV$zd" role="3cqZAp">
              <node concept="3clFbS" id="4U$Q3dLVzjL" role="2LFqv$">
                <node concept="3clFbJ" id="5itBwM7W0ZY" role="3cqZAp">
                  <node concept="2OqwBi" id="5itBwM9tG6K" role="3clFbw">
                    <node concept="2OqwBi" id="5itBwM9tAPr" role="2Oq$k0">
                      <node concept="2GrUjf" id="4U$Q3dLVBJk" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4U$Q3dLV$zT" resolve="macroTemplate" />
                      </node>
                      <node concept="liA8E" id="5itBwM9$wcB" role="2OqNvi">
                        <ref role="37wK5l" to="i348:5itBwM9zYlU" resolve="getPrototypeTemplateRef" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5itBwM9tGkw" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="5itBwM9tGzJ" role="37wK5m">
                        <ref role="3cqZAo" node="5itBwM9toE3" resolve="prototypeRef" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5itBwM7W102" role="3clFbx">
                    <node concept="3cpWs6" id="5itBwM7W103" role="3cqZAp">
                      <node concept="2GrUjf" id="4U$Q3dLVBOo" role="3cqZAk">
                        <ref role="2Gs0qQ" node="4U$Q3dLV$zT" resolve="macroTemplate" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4U$Q3dLVzjS" role="2GsD0m">
                <node concept="2GrUjf" id="4U$Q3dLVzjT" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5itBwM7W106" resolve="macroTable" />
                </node>
                <node concept="liA8E" id="4U$Q3dLVzjU" role="2OqNvi">
                  <ref role="37wK5l" to="i348:tbauFxRK5_" resolve="expandMacroTemplate" />
                  <node concept="37vLTw" id="4U$Q3dLVzjV" role="37wK5m">
                    <ref role="3cqZAo" node="5itBwM7W4wa" resolve="concept" />
                  </node>
                  <node concept="16syzq" id="4U$Q3dLVzjW" role="3PaCim">
                    <ref role="16sUi3" node="5itBwM7W10g" resolve="T" />
                  </node>
                </node>
              </node>
              <node concept="2GrKxI" id="4U$Q3dLV$zT" role="2Gsz3X">
                <property role="TrG5h" value="macroTemplate" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5itBwM7W105" role="2GsD0m">
            <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
          </node>
          <node concept="2GrKxI" id="5itBwM7W106" role="2Gsz3X">
            <property role="TrG5h" value="macroTable" />
          </node>
        </node>
        <node concept="3SKdUt" id="5X1yxJHVwHq" role="3cqZAp">
          <node concept="1PaTwC" id="5X1yxJHVwHr" role="1aUNEU">
            <node concept="3oM_SD" id="5X1yxJHVwHs" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5X1yxJHVxo6" role="1PaTwD">
              <property role="3oM_SC" value="found" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5X1yxJHVsv2" role="3cqZAp">
          <node concept="2ShNRf" id="5X1yxJHVsv3" role="YScLw">
            <node concept="1pGfFk" id="5X1yxJHVsv4" role="2ShVmc">
              <ref role="37wK5l" to="i348:5X1yxJHUoaI" resolve="TemplateApplicationException" />
              <node concept="3cpWs3" id="5X1yxJHVuiy" role="37wK5m">
                <node concept="3cpWs3" id="5X1yxJHVuiz" role="3uHU7B">
                  <node concept="Xl_RD" id="5X1yxJHVui$" role="3uHU7B">
                    <property role="Xl_RC" value="no expand macro template for concept \&quot;" />
                  </node>
                  <node concept="37vLTw" id="5X1yxJHVui_" role="3uHU7w">
                    <ref role="3cqZAo" node="5itBwM7W4wa" resolve="concept" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5X1yxJHVuiA" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5itBwM7W10g" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5itBwM86UN7" role="3ztrMU">
          <ref role="3uigEE" to="i348:5itBwM86qUH" resolve="ExpandMacroTemplate.Token" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5itBwM7W0ZF" role="jymVt" />
    <node concept="2tJIrI" id="4nxCIBqyBjc" role="jymVt" />
    <node concept="3clFb_" id="1hX44vNnpfT" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="5EDW3XFuukb" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="5EDW3XFuukc" role="1tU5fm">
          <node concept="3uibUv" id="5EDW3XFuukd" role="A3Ik2">
            <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1hX44vNnpfU" role="1B3o_S" />
      <node concept="3cqZAl" id="1hX44vNnpfV" role="3clF45" />
      <node concept="3clFbS" id="1hX44vNnpfH" role="3clF47">
        <node concept="3cpWs8" id="4U$Q3dLrPOF" role="3cqZAp">
          <node concept="3cpWsn" id="4U$Q3dLrPOG" role="3cpWs9">
            <property role="TrG5h" value="tables" />
            <node concept="3rvAFt" id="4U$Q3dLrPOh" role="1tU5fm">
              <node concept="3uibUv" id="4U$Q3dLrPOm" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3uibUv" id="tbauFxRDqY" role="3rvSg0">
                <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
              </node>
            </node>
            <node concept="2ShNRf" id="4U$Q3dLrPOH" role="33vP2m">
              <node concept="3rGOSV" id="4U$Q3dLrPOI" role="2ShVmc">
                <node concept="3uibUv" id="4U$Q3dLrPOJ" role="3rHrn6">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="3uibUv" id="tbauFxREZj" role="3rHtpV">
                  <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7DvO2MamWSI" role="3cqZAp">
          <node concept="2GrKxI" id="7DvO2MamWSO" role="2Gsz3X">
            <property role="TrG5h" value="macroManifest" />
          </node>
          <node concept="37vLTw" id="5EDW3XFuyOR" role="2GsD0m">
            <ref role="3cqZAo" node="5EDW3XFuukb" resolve="manifests" />
          </node>
          <node concept="3clFbS" id="7DvO2MamWT0" role="2LFqv$">
            <node concept="3SKdUt" id="1hX44vNnqZn" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxOr" role="1aUNEU">
                <node concept="3oM_SD" id="589APehYxOs" role="1PaTwD">
                  <property role="3oM_SC" value="TODO:" />
                </node>
                <node concept="3oM_SD" id="589APehYxOt" role="1PaTwD">
                  <property role="3oM_SC" value="user" />
                </node>
                <node concept="3oM_SD" id="589APehYxOu" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6UWSvq4VKfj" role="3cqZAp">
              <node concept="3clFbS" id="6UWSvq4VHjV" role="2LFqv$">
                <node concept="3clFbF" id="4U$Q3dLrQrP" role="3cqZAp">
                  <node concept="37vLTI" id="4U$Q3dLrSGL" role="3clFbG">
                    <node concept="2GrUjf" id="4U$Q3dLrSNT" role="37vLTx">
                      <ref role="2Gs0qQ" node="6UWSvq4VKfN" resolve="macroTable" />
                    </node>
                    <node concept="3EllGN" id="4U$Q3dLrQT_" role="37vLTJ">
                      <node concept="2OqwBi" id="4U$Q3dLrSif" role="3ElVtu">
                        <node concept="2GrUjf" id="4U$Q3dLrSbt" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6UWSvq4VKfN" resolve="macroTable" />
                        </node>
                        <node concept="liA8E" id="tbauFxRO$E" role="2OqNvi">
                          <ref role="37wK5l" to="i348:tbauFxRzFb" resolve="tableRef" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4U$Q3dLrQrN" role="3ElQJh">
                        <ref role="3cqZAo" node="4U$Q3dLrPOG" resolve="tables" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6UWSvq4VHk1" role="2GsD0m">
                <node concept="2GrUjf" id="6UWSvq4VHk2" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7DvO2MamWSO" resolve="macroManifest" />
                </node>
                <node concept="liA8E" id="6UWSvq4VHk3" role="2OqNvi">
                  <ref role="37wK5l" to="fqlx:6UWSvq4Vu5V" resolve="macroTables" />
                </node>
              </node>
              <node concept="2GrKxI" id="6UWSvq4VKfN" role="2Gsz3X">
                <property role="TrG5h" value="macroTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U$Q3dLrSWz" role="3cqZAp" />
        <node concept="3SKdUt" id="4U$Q3dM9c4A" role="3cqZAp">
          <node concept="1PaTwC" id="4U$Q3dM9c4B" role="1aUNEU">
            <node concept="3oM_SD" id="4U$Q3dM9d7y" role="1PaTwD">
              <property role="3oM_SC" value="topologically" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d7G" role="1PaTwD">
              <property role="3oM_SC" value="sort" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d7R" role="1PaTwD">
              <property role="3oM_SC" value="macro" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d8j" role="1PaTwD">
              <property role="3oM_SC" value="tables," />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d8C" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d8Q" role="1PaTwD">
              <property role="3oM_SC" value="most" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d9l" role="1PaTwD">
              <property role="3oM_SC" value="specific" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d9_" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9d9I" role="1PaTwD">
              <property role="3oM_SC" value="most" />
            </node>
            <node concept="3oM_SD" id="4U$Q3dM9da8" role="1PaTwD">
              <property role="3oM_SC" value="abstract" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4U$Q3dM7NO_" role="3cqZAp">
          <node concept="3cpWsn" id="4U$Q3dM7NOA" role="3cpWs9">
            <property role="TrG5h" value="queue" />
            <node concept="2BANLN" id="4U$Q3dM7NOb" role="1tU5fm">
              <node concept="3uibUv" id="tbauFxRGIO" role="_ZDj9">
                <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
              </node>
            </node>
            <node concept="2ShNRf" id="4U$Q3dM7NOB" role="33vP2m">
              <node concept="2Jqq0_" id="4U$Q3dM7NOC" role="2ShVmc">
                <node concept="3uibUv" id="tbauFxRHts" role="HW$YZ">
                  <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4U$Q3dM8Q1_" role="3cqZAp">
          <node concept="3cpWsn" id="4U$Q3dM8Q1A" role="3cpWs9">
            <property role="TrG5h" value="extended" />
            <node concept="_YKpA" id="4U$Q3dM8Q1d" role="1tU5fm">
              <node concept="3uibUv" id="tbauFxRG4W" role="_ZDj9">
                <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
              </node>
            </node>
            <node concept="2ShNRf" id="4U$Q3dM8Q1B" role="33vP2m">
              <node concept="Tc6Ow" id="4U$Q3dM8Q1C" role="2ShVmc">
                <node concept="3uibUv" id="tbauFxRG_e" role="HW$YZ">
                  <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4U$Q3dLs0jl" role="3cqZAp">
          <node concept="3cpWsn" id="4U$Q3dLs0jm" role="3cpWs9">
            <property role="TrG5h" value="visitedRefs" />
            <node concept="2hMVRd" id="4U$Q3dLs0aA" role="1tU5fm">
              <node concept="3uibUv" id="4U$Q3dLs0aD" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="4U$Q3dLs0jn" role="33vP2m">
              <node concept="2i4dXS" id="4U$Q3dLs0jo" role="2ShVmc">
                <node concept="3uibUv" id="4U$Q3dLs0jp" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4U$Q3dLrWGa" role="3cqZAp">
          <node concept="3clFbS" id="4U$Q3dLrWbZ" role="2LFqv$">
            <node concept="3clFbJ" id="4U$Q3dLs6hm" role="3cqZAp">
              <node concept="3clFbS" id="4U$Q3dLs6ho" role="3clFbx">
                <node concept="3cpWs8" id="4U$Q3dLrY2S" role="3cqZAp">
                  <node concept="3cpWsn" id="4U$Q3dLrY2T" role="3cpWs9">
                    <property role="TrG5h" value="extRef" />
                    <node concept="3uibUv" id="4U$Q3dLrXZB" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="2OqwBi" id="4U$Q3dLrY2U" role="33vP2m">
                      <node concept="2OqwBi" id="4U$Q3dLrY2V" role="2Oq$k0">
                        <node concept="2GrUjf" id="4U$Q3dLrY2W" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4U$Q3dLrWGE" resolve="m" />
                        </node>
                        <node concept="3AV6Ez" id="4U$Q3dLrY2X" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="tbauFxRNPE" role="2OqNvi">
                        <ref role="37wK5l" to="i348:tbauFxRzOI" resolve="extendsRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$JKZl" id="4U$Q3dLrYEz" role="3cqZAp">
                  <node concept="3clFbS" id="4U$Q3dLrYE_" role="2LFqv$">
                    <node concept="3clFbJ" id="4U$Q3dLsqID" role="3cqZAp">
                      <node concept="3clFbS" id="4U$Q3dLsqIF" role="3clFbx">
                        <node concept="3cpWs8" id="4U$Q3dLss_Q" role="3cqZAp">
                          <node concept="3cpWsn" id="4U$Q3dLss_R" role="3cpWs9">
                            <property role="TrG5h" value="ext" />
                            <node concept="3uibUv" id="tbauFxRFow" role="1tU5fm">
                              <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
                            </node>
                            <node concept="3EllGN" id="4U$Q3dLss_S" role="33vP2m">
                              <node concept="37vLTw" id="4U$Q3dLss_T" role="3ElVtu">
                                <ref role="3cqZAo" node="4U$Q3dLrY2T" resolve="extRef" />
                              </node>
                              <node concept="37vLTw" id="4U$Q3dLss_U" role="3ElQJh">
                                <ref role="3cqZAo" node="4U$Q3dLrPOG" resolve="tables" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4U$Q3dLs2Dx" role="3cqZAp">
                          <node concept="2OqwBi" id="4U$Q3dLs3JF" role="3clFbG">
                            <node concept="37vLTw" id="4U$Q3dM8Vuw" role="2Oq$k0">
                              <ref role="3cqZAo" node="4U$Q3dM8Q1A" resolve="extended" />
                            </node>
                            <node concept="2Ke9KJ" id="4U$Q3dM7QEG" role="2OqNvi">
                              <node concept="37vLTw" id="4U$Q3dM7QEI" role="25WWJ7">
                                <ref role="3cqZAo" node="4U$Q3dLss_R" resolve="ext" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4U$Q3dLso_7" role="3cqZAp">
                          <node concept="2OqwBi" id="4U$Q3dLso_8" role="3clFbG">
                            <node concept="37vLTw" id="4U$Q3dLso_9" role="2Oq$k0">
                              <ref role="3cqZAo" node="4U$Q3dLs0jm" resolve="visitedRefs" />
                            </node>
                            <node concept="TSZUe" id="4U$Q3dLso_a" role="2OqNvi">
                              <node concept="2OqwBi" id="4U$Q3dLszPZ" role="25WWJ7">
                                <node concept="37vLTw" id="4U$Q3dLszlF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4U$Q3dLss_R" resolve="ext" />
                                </node>
                                <node concept="liA8E" id="tbauFxROEM" role="2OqNvi">
                                  <ref role="37wK5l" to="i348:tbauFxRzFb" resolve="tableRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4U$Q3dLskI5" role="3cqZAp">
                          <node concept="37vLTI" id="4U$Q3dLsl_a" role="3clFbG">
                            <node concept="2OqwBi" id="4U$Q3dLsnt7" role="37vLTx">
                              <node concept="37vLTw" id="4U$Q3dLswso" role="2Oq$k0">
                                <ref role="3cqZAo" node="4U$Q3dLss_R" resolve="ext" />
                              </node>
                              <node concept="liA8E" id="tbauFxROpX" role="2OqNvi">
                                <ref role="37wK5l" to="i348:tbauFxRzOI" resolve="extendsRef" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4U$Q3dLskI3" role="37vLTJ">
                              <ref role="3cqZAo" node="4U$Q3dLrY2T" resolve="extRef" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="4U$Q3dLsARw" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="4U$Q3dLsrJh" role="3clFbw">
                        <node concept="37vLTw" id="4U$Q3dLsraG" role="2Oq$k0">
                          <ref role="3cqZAo" node="4U$Q3dLrPOG" resolve="tables" />
                        </node>
                        <node concept="2Nt0df" id="4U$Q3dLssaR" role="2OqNvi">
                          <node concept="37vLTw" id="4U$Q3dLssc3" role="38cxEo">
                            <ref role="3cqZAo" node="4U$Q3dLrY2T" resolve="extRef" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="4U$Q3dLs_Sf" role="9aQIa">
                        <node concept="3clFbS" id="4U$Q3dLs_Sg" role="9aQI4">
                          <node concept="RRSsy" id="4U$Q3dLsBLe" role="3cqZAp">
                            <property role="RRSoG" value="gZ5fh_4/error" />
                            <node concept="3cpWs3" id="4U$Q3dLsC5I" role="RRSoy">
                              <node concept="37vLTw" id="4U$Q3dLsC6H" role="3uHU7w">
                                <ref role="3cqZAo" node="4U$Q3dLrY2T" resolve="extRef" />
                              </node>
                              <node concept="Xl_RD" id="4U$Q3dLsBLg" role="3uHU7B">
                                <property role="Xl_RC" value="extended macro table not found: " />
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="7HS90BfXQo2" role="3cqZAp" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="4U$Q3dLrZ3C" role="2$JKZa">
                    <node concept="3fqX7Q" id="4U$Q3dLs0Zi" role="3uHU7w">
                      <node concept="2OqwBi" id="4U$Q3dLs1GJ" role="3fr31v">
                        <node concept="37vLTw" id="4U$Q3dLs10w" role="2Oq$k0">
                          <ref role="3cqZAo" node="4U$Q3dLs0jm" resolve="visitedRefs" />
                        </node>
                        <node concept="3JPx81" id="4U$Q3dLs2dR" role="2OqNvi">
                          <node concept="37vLTw" id="4U$Q3dLs2h3" role="25WWJ7">
                            <ref role="3cqZAo" node="4U$Q3dLrY2T" resolve="extRef" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="4U$Q3dLrYZ5" role="3uHU7B">
                      <node concept="37vLTw" id="4U$Q3dLrYR0" role="3uHU7B">
                        <ref role="3cqZAo" node="4U$Q3dLrY2T" resolve="extRef" />
                      </node>
                      <node concept="10Nm6u" id="4U$Q3dLrZ2v" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="4U$Q3dM8YX_" role="3cqZAp">
                  <node concept="3clFbS" id="4U$Q3dM8YXB" role="2LFqv$">
                    <node concept="3clFbF" id="4U$Q3dM92PB" role="3cqZAp">
                      <node concept="2OqwBi" id="4U$Q3dM93Wc" role="3clFbG">
                        <node concept="37vLTw" id="4U$Q3dM92P_" role="2Oq$k0">
                          <ref role="3cqZAo" node="4U$Q3dM7NOA" resolve="queue" />
                        </node>
                        <node concept="2Ke4WJ" id="4U$Q3dM94Ug" role="2OqNvi">
                          <node concept="1y4W85" id="4U$Q3dM9621" role="25WWJ7">
                            <node concept="37vLTw" id="4U$Q3dM967c" role="1y58nS">
                              <ref role="3cqZAo" node="4U$Q3dM8YXC" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="4U$Q3dM94Zg" role="1y566C">
                              <ref role="3cqZAo" node="4U$Q3dM8Q1A" resolve="extended" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="4U$Q3dM8YXC" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="4U$Q3dM8Zrl" role="1tU5fm" />
                    <node concept="3cpWsd" id="4U$Q3dM91C$" role="33vP2m">
                      <node concept="3cmrfG" id="4U$Q3dM91Da" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="4U$Q3dM90iW" role="3uHU7B">
                        <node concept="37vLTw" id="4U$Q3dM8ZwT" role="2Oq$k0">
                          <ref role="3cqZAo" node="4U$Q3dM8Q1A" resolve="extended" />
                        </node>
                        <node concept="34oBXx" id="4U$Q3dM90QU" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2d3UOw" id="4U$Q3dM92FU" role="1Dwp0S">
                    <node concept="3cmrfG" id="4U$Q3dM92GZ" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="4U$Q3dM91F9" role="3uHU7B">
                      <ref role="3cqZAo" node="4U$Q3dM8YXC" resolve="i" />
                    </node>
                  </node>
                  <node concept="3uO5VW" id="4U$Q3dM92NH" role="1Dwrff">
                    <node concept="37vLTw" id="4U$Q3dM92NJ" role="2$L3a6">
                      <ref role="3cqZAo" node="4U$Q3dM8YXC" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4U$Q3dM8We2" role="3cqZAp">
                  <node concept="2OqwBi" id="4U$Q3dM96Ni" role="3clFbG">
                    <node concept="37vLTw" id="4U$Q3dM8We0" role="2Oq$k0">
                      <ref role="3cqZAo" node="4U$Q3dM8Q1A" resolve="extended" />
                    </node>
                    <node concept="2Kehj3" id="4U$Q3dM97eD" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="4U$Q3dLscZW" role="3cqZAp">
                  <node concept="2OqwBi" id="4U$Q3dLsel2" role="3clFbG">
                    <node concept="37vLTw" id="4U$Q3dM7QHv" role="2Oq$k0">
                      <ref role="3cqZAo" node="4U$Q3dM7NOA" resolve="queue" />
                    </node>
                    <node concept="2Ke4WJ" id="4U$Q3dM7PCh" role="2OqNvi">
                      <node concept="2OqwBi" id="4U$Q3dM7PCj" role="25WWJ7">
                        <node concept="2GrUjf" id="4U$Q3dM7PCk" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4U$Q3dLrWGE" resolve="m" />
                        </node>
                        <node concept="3AV6Ez" id="4U$Q3dM7PCl" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4U$Q3dLs9_U" role="3cqZAp">
                  <node concept="2OqwBi" id="4U$Q3dLsatR" role="3clFbG">
                    <node concept="37vLTw" id="4U$Q3dLs9_S" role="2Oq$k0">
                      <ref role="3cqZAo" node="4U$Q3dLs0jm" resolve="visitedRefs" />
                    </node>
                    <node concept="TSZUe" id="4U$Q3dLsaWG" role="2OqNvi">
                      <node concept="2OqwBi" id="4U$Q3dLsbNh" role="25WWJ7">
                        <node concept="2GrUjf" id="4U$Q3dLsbd$" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4U$Q3dLrWGE" resolve="m" />
                        </node>
                        <node concept="3AY5_j" id="4U$Q3dLschS" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4U$Q3dLs6tv" role="3clFbw">
                <node concept="2OqwBi" id="4U$Q3dLs7jk" role="3fr31v">
                  <node concept="37vLTw" id="4U$Q3dLs6v6" role="2Oq$k0">
                    <ref role="3cqZAo" node="4U$Q3dLs0jm" resolve="visitedRefs" />
                  </node>
                  <node concept="3JPx81" id="4U$Q3dLs7MH" role="2OqNvi">
                    <node concept="2OqwBi" id="4U$Q3dLs8cP" role="25WWJ7">
                      <node concept="2GrUjf" id="4U$Q3dLs7P3" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4U$Q3dLrWGE" resolve="m" />
                      </node>
                      <node concept="3AY5_j" id="4U$Q3dLs8Jt" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4U$Q3dMa3RH" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="4U$Q3dLrWc7" role="2GsD0m">
            <ref role="3cqZAo" node="4U$Q3dLrPOG" resolve="tables" />
          </node>
          <node concept="2GrKxI" id="4U$Q3dLrWGE" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
        </node>
        <node concept="3clFbH" id="4U$Q3dMb7e3" role="3cqZAp" />
        <node concept="3clFbF" id="4U$Q3dM7S6F" role="3cqZAp">
          <node concept="2OqwBi" id="4U$Q3dM7Tl4" role="3clFbG">
            <node concept="37vLTw" id="4U$Q3dM7S6D" role="2Oq$k0">
              <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
            </node>
            <node concept="X8dFx" id="4U$Q3dM7U6d" role="2OqNvi">
              <node concept="37vLTw" id="4U$Q3dM7Ui_" role="25WWJ7">
                <ref role="3cqZAo" node="4U$Q3dM7NOA" resolve="queue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hX44vNnjF5" role="jymVt" />
    <node concept="312cEg" id="4JJCDImRYzW" role="jymVt">
      <property role="TrG5h" value="macroTables" />
      <node concept="3Tm6S6" id="4JJCDImRYzX" role="1B3o_S" />
      <node concept="_YKpA" id="4JJCDImRYIM" role="1tU5fm">
        <node concept="3uibUv" id="tbauFxRIHm" role="_ZDj9">
          <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
        </node>
      </node>
      <node concept="2ShNRf" id="4JJCDImRZ41" role="33vP2m">
        <node concept="Tc6Ow" id="4JJCDImRZ3N" role="2ShVmc">
          <node concept="3uibUv" id="tbauFxRJxW" role="HW$YZ">
            <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1hX44vNlSIB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1HWyn8jvsHb">
    <property role="TrG5h" value="CopyUtil" />
    <node concept="2tJIrI" id="1HWyn8jvsHM" role="jymVt" />
    <node concept="2YIFZL" id="1HWyn8jvsIc" role="jymVt">
      <property role="TrG5h" value="copyOf" />
      <node concept="37vLTG" id="1HWyn8jvsLl" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3uibUv" id="1HWyn8jwQwB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1HWyn8jvsMY" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="1HWyn8jvsNH" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3uibUv" id="1HWyn8jwQhN" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="1HWyn8jvsIf" role="1B3o_S" />
      <node concept="3clFbS" id="1HWyn8jvsIg" role="3clF47">
        <node concept="3cpWs8" id="1HWyn8jwLcl" role="3cqZAp">
          <node concept="3cpWsn" id="1HWyn8jwLcm" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="1HWyn8jwPEx" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="37vLTw" id="1HWyn8jwPSo" role="33vP2m">
              <ref role="3cqZAo" node="1HWyn8jvsLl" resolve="origin" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1HWyn8jwOts" role="3cqZAp">
          <node concept="3clFbS" id="1HWyn8jwOtu" role="3clFbx">
            <node concept="3clFbF" id="1HWyn8jwPwX" role="3cqZAp">
              <node concept="37vLTI" id="1HWyn8jwPCS" role="3clFbG">
                <node concept="2OqwBi" id="1HWyn8jwRCS" role="37vLTx">
                  <node concept="2OqwBi" id="1HWyn8jwR9x" role="2Oq$k0">
                    <node concept="1eOMI4" id="1HWyn8jwQVX" role="2Oq$k0">
                      <node concept="10QFUN" id="1HWyn8jwQVU" role="1eOMHV">
                        <node concept="3uibUv" id="1HWyn8jwQVZ" role="10QFUM">
                          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                          <node concept="3qTvmN" id="1HWyn8jwQZI" role="11_B2D" />
                        </node>
                        <node concept="37vLTw" id="1HWyn8jwQW0" role="10QFUP">
                          <ref role="3cqZAo" node="1HWyn8jvsLl" resolve="origin" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1HWyn8jwRsY" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot()" resolve="findRoot" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1HWyn8jwS1m" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                  </node>
                </node>
                <node concept="37vLTw" id="1HWyn8jwPwV" role="37vLTJ">
                  <ref role="3cqZAo" node="1HWyn8jwLcm" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1HWyn8jwOKL" role="3clFbw">
            <node concept="3uibUv" id="1HWyn8jwORf" role="2ZW6by">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            </node>
            <node concept="37vLTw" id="1HWyn8jwO$0" role="2ZW6bz">
              <ref role="3cqZAo" node="1HWyn8jvsLl" resolve="origin" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HWyn8jwOn1" role="3cqZAp" />
        <node concept="3clFbJ" id="1HWyn8jvV51" role="3cqZAp">
          <node concept="3clFbS" id="1HWyn8jvV53" role="3clFbx">
            <node concept="3cpWs6" id="1HWyn8jvWel" role="3cqZAp">
              <node concept="2OqwBi" id="1HWyn8jvX$q" role="3cqZAk">
                <node concept="2YIFZM" id="1HWyn8jvX$r" role="2Oq$k0">
                  <ref role="1Pybhc" to="6exd:3OPtF02T8yx" resolve="Mappers" />
                  <ref role="37wK5l" to="6exd:5s497VqteR6" resolve="mapper" />
                  <node concept="2ShNRf" id="1HWyn8jvX$s" role="37wK5m">
                    <node concept="1pGfFk" id="1HWyn8jvX$t" role="2ShVmc">
                      <ref role="37wK5l" node="1HWyn8jvsPg" resolve="CopyUtil.CopyDelegate" />
                      <node concept="37vLTw" id="1HWyn8jvX$u" role="37wK5m">
                        <ref role="3cqZAo" node="1HWyn8jvsMY" resolve="logicalContext" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1HWyn8jvX$y" role="2OqNvi">
                  <ref role="37wK5l" to="6exd:3OPtF02TgQt" resolve="map" />
                  <node concept="10QFUN" id="1HWyn8jvX$v" role="37wK5m">
                    <node concept="3uibUv" id="1HWyn8jvX$w" role="10QFUM">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                    <node concept="37vLTw" id="1HWyn8jx8Ln" role="10QFUP">
                      <ref role="3cqZAo" node="1HWyn8jwLcm" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1HWyn8jvVmW" role="3clFbw">
            <node concept="3uibUv" id="1HWyn8jvVq1" role="2ZW6by">
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
            </node>
            <node concept="37vLTw" id="1HWyn8jwLtB" role="2ZW6bz">
              <ref role="3cqZAo" node="1HWyn8jwLcm" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HWyn8jxpcD" role="3cqZAp" />
        <node concept="3clFbF" id="1HWyn8jvZl4" role="3cqZAp">
          <node concept="37vLTw" id="1HWyn8jvZl2" role="3clFbG">
            <ref role="3cqZAo" node="1HWyn8jvsLl" resolve="origin" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HWyn8jvsOp" role="jymVt" />
    <node concept="312cEu" id="1HWyn8jvsP3" role="jymVt">
      <property role="TrG5h" value="CopyDelegate" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="2tJIrI" id="1HWyn8jv_$D" role="jymVt" />
      <node concept="3Tm6S6" id="1HWyn8jvsP4" role="1B3o_S" />
      <node concept="3uibUv" id="1HWyn8jvsP5" role="EKbjA">
        <ref role="3uigEE" to="6exd:3OPtF031GQe" resolve="Mappers.MapDelegate" />
      </node>
      <node concept="3clFbW" id="1HWyn8jvsPg" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="1HWyn8jvsPh" role="3clF45" />
        <node concept="37vLTG" id="1HWyn8jvsPi" role="3clF46">
          <property role="TrG5h" value="logicalContext" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="1HWyn8jvsPj" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
          </node>
        </node>
        <node concept="3clFbS" id="1HWyn8jvsPk" role="3clF47">
          <node concept="3clFbF" id="1HWyn8jvsPl" role="3cqZAp">
            <node concept="37vLTI" id="1HWyn8jvsPm" role="3clFbG">
              <node concept="2OqwBi" id="1HWyn8jvsPn" role="37vLTJ">
                <node concept="Xjq3P" id="1HWyn8jvsPo" role="2Oq$k0" />
                <node concept="2OwXpG" id="1HWyn8jvsPp" role="2OqNvi">
                  <ref role="2Oxat5" node="1HWyn8jvsP6" resolve="logicalContext" />
                </node>
              </node>
              <node concept="37vLTw" id="1HWyn8jvsPq" role="37vLTx">
                <ref role="3cqZAo" node="1HWyn8jvsPi" resolve="logicalContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1HWyn8jvsPr" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="1HWyn8jv_8E" role="jymVt" />
      <node concept="3clFb_" id="1HWyn8jvsPs" role="jymVt">
        <property role="TrG5h" value="canMap" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="37vLTG" id="1HWyn8jvsPt" role="3clF46">
          <property role="TrG5h" value="tf" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="1HWyn8jvsPu" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="3clFbS" id="1HWyn8jvsPv" role="3clF47">
          <node concept="3clFbF" id="oyq0R0e$XI" role="3cqZAp">
            <node concept="3clFbT" id="oyq0R0e$XH" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1HWyn8jvsP$" role="1B3o_S" />
        <node concept="10P_77" id="1HWyn8jvsP_" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="1HWyn8jv$GG" role="jymVt" />
      <node concept="3clFb_" id="1HWyn8jvsPA" role="jymVt">
        <property role="TrG5h" value="map" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="37vLTG" id="1HWyn8jvsPB" role="3clF46">
          <property role="TrG5h" value="tf" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="1HWyn8jvsPC" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="37vLTG" id="1HWyn8jvsPD" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="1HWyn8jvsPE" role="1tU5fm">
            <ref role="3uigEE" to="6exd:3OPtF02TdNT" resolve="DataForm.Mapper" />
          </node>
        </node>
        <node concept="3clFbS" id="1HWyn8jvsPF" role="3clF47">
          <node concept="3clFbJ" id="1HWyn8jvsPG" role="3cqZAp">
            <node concept="2ZW3vV" id="1HWyn8jvsPJ" role="3clFbw">
              <node concept="37vLTw" id="1HWyn8jvsPH" role="2ZW6bz">
                <ref role="3cqZAo" node="1HWyn8jvsPB" resolve="tf" />
              </node>
              <node concept="3uibUv" id="1HWyn8jvx1M" role="2ZW6by">
                <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
              </node>
            </node>
            <node concept="3clFbS" id="1HWyn8jvsPL" role="3clFbx">
              <node concept="3cpWs8" id="1HWyn8jvsPN" role="3cqZAp">
                <node concept="3cpWsn" id="1HWyn8jvsPM" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="logical" />
                  <node concept="3uibUv" id="1HWyn8jvsPO" role="1tU5fm">
                    <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                    <node concept="3qTvmN" id="1HWyn8jvsPP" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="1HWyn8jvsPQ" role="33vP2m">
                    <node concept="2OqwBi" id="1HWyn8jvsPR" role="2Oq$k0">
                      <node concept="1eOMI4" id="1HWyn8jvsPV" role="2Oq$k0">
                        <node concept="10QFUN" id="1HWyn8jvsPS" role="1eOMHV">
                          <node concept="37vLTw" id="1HWyn8jvsPT" role="10QFUP">
                            <ref role="3cqZAo" node="1HWyn8jvsPB" resolve="tf" />
                          </node>
                          <node concept="3uibUv" id="1HWyn8jvsPU" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1HWyn8jvsPW" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1HWyn8jvsPX" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot()" resolve="findRoot" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1HWyn8jvsPY" role="3cqZAp">
                <node concept="2OqwBi" id="1HWyn8jvtww" role="3clFbw">
                  <node concept="37vLTw" id="1HWyn8jvtwv" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HWyn8jvsPM" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="1HWyn8jvtwx" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                  </node>
                </node>
                <node concept="9aQIb" id="1HWyn8jvsQo" role="9aQIa">
                  <node concept="3clFbS" id="1HWyn8jvsQp" role="9aQI4">
                    <node concept="3cpWs8" id="1HWyn8jvsQr" role="3cqZAp">
                      <node concept="3cpWsn" id="1HWyn8jvsQq" role="3cpWs9">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="logicalCopy" />
                        <node concept="3uibUv" id="1HWyn8jvsQs" role="1tU5fm">
                          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                          <node concept="3qTvmN" id="1HWyn8jvsQt" role="11_B2D" />
                        </node>
                        <node concept="2OqwBi" id="1HWyn8jvJ3b" role="33vP2m">
                          <node concept="37vLTw" id="1HWyn8jvIoQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1HWyn8jvsPa" resolve="logicalMap" />
                          </node>
                          <node concept="liA8E" id="1HWyn8jvJG_" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                            <node concept="37vLTw" id="1HWyn8jvKfA" role="37wK5m">
                              <ref role="3cqZAo" node="1HWyn8jvsPM" resolve="logical" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1HWyn8jvsQx" role="3cqZAp">
                      <node concept="3clFbC" id="1HWyn8jvsQy" role="3clFbw">
                        <node concept="37vLTw" id="1HWyn8jvsQz" role="3uHU7B">
                          <ref role="3cqZAo" node="1HWyn8jvsQq" resolve="logicalCopy" />
                        </node>
                        <node concept="10Nm6u" id="1HWyn8jvsQ$" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="1HWyn8jvsQA" role="3clFbx">
                        <node concept="3clFbF" id="1HWyn8jvsQB" role="3cqZAp">
                          <node concept="37vLTI" id="1HWyn8jvsQC" role="3clFbG">
                            <node concept="37vLTw" id="1HWyn8jvsQD" role="37vLTJ">
                              <ref role="3cqZAo" node="1HWyn8jvsQq" resolve="logicalCopy" />
                            </node>
                            <node concept="2OqwBi" id="1HWyn8jvtu9" role="37vLTx">
                              <node concept="37vLTw" id="1HWyn8jvtu8" role="2Oq$k0">
                                <ref role="3cqZAo" node="1HWyn8jvsP6" resolve="logicalContext" />
                              </node>
                              <node concept="liA8E" id="1HWyn8jvtua" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="variable" />
                                <node concept="2OqwBi" id="1HWyn8jvuI2" role="37wK5m">
                                  <node concept="37vLTw" id="1HWyn8jvuI1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1HWyn8jvsPM" resolve="logical" />
                                  </node>
                                  <node concept="liA8E" id="1HWyn8jvuI3" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.metaLogical()" resolve="metaLogical" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="5ka_cIadigH" role="3cqZAp">
                          <node concept="2OqwBi" id="1HWyn8jvMbY" role="3clFbG">
                            <node concept="37vLTw" id="1HWyn8jvsQJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="1HWyn8jvsPa" resolve="logicalMap" />
                            </node>
                            <node concept="liA8E" id="1HWyn8jvMBt" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                              <node concept="37vLTw" id="1HWyn8jvMUM" role="37wK5m">
                                <ref role="3cqZAo" node="1HWyn8jvsPM" resolve="logical" />
                              </node>
                              <node concept="37vLTw" id="1HWyn8jvNJ7" role="37wK5m">
                                <ref role="3cqZAo" node="1HWyn8jvsQq" resolve="logicalCopy" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1HWyn8jvsQM" role="3cqZAp">
                      <node concept="2ShNRf" id="1HWyn8jvzyn" role="3cqZAk">
                        <node concept="1pGfFk" id="1HWyn8jvzA9" role="2ShVmc">
                          <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalDataForm" />
                          <node concept="37vLTw" id="1HWyn8jvzAa" role="37wK5m">
                            <ref role="3cqZAo" node="1HWyn8jvsQq" resolve="logicalCopy" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1HWyn8jvsQ1" role="3clFbx">
                  <node concept="3cpWs8" id="1HWyn8jvsQ3" role="3cqZAp">
                    <node concept="3cpWsn" id="1HWyn8jvsQ2" role="3cpWs9">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="value" />
                      <node concept="3uibUv" id="1HWyn8jvsQ4" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="1HWyn8jvt_U" role="33vP2m">
                        <node concept="37vLTw" id="1HWyn8jvt_T" role="2Oq$k0">
                          <ref role="3cqZAo" node="1HWyn8jvsPM" resolve="logical" />
                        </node>
                        <node concept="liA8E" id="1HWyn8jvt_V" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1HWyn8jvsQ6" role="3cqZAp">
                    <node concept="2ZW3vV" id="1HWyn8jvsQ9" role="3clFbw">
                      <node concept="37vLTw" id="1HWyn8jvsQ7" role="2ZW6bz">
                        <ref role="3cqZAo" node="1HWyn8jvsQ2" resolve="value" />
                      </node>
                      <node concept="3uibUv" id="1HWyn8jvsQ8" role="2ZW6by">
                        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="1HWyn8jvsQk" role="9aQIa">
                      <node concept="3clFbS" id="1HWyn8jvsQl" role="9aQI4">
                        <node concept="3SKdUt" id="1HWyn8jvsQX" role="3cqZAp">
                          <node concept="1PaTwC" id="589APehYxOv" role="1aUNEU">
                            <node concept="3oM_SD" id="589APehYxOw" role="1PaTwD">
                              <property role="3oM_SC" value="FIXME" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxOx" role="1PaTwD">
                              <property role="3oM_SC" value="support" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxOy" role="1PaTwD">
                              <property role="3oM_SC" value="other" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxOz" role="1PaTwD">
                              <property role="3oM_SC" value="values?" />
                            </node>
                          </node>
                        </node>
                        <node concept="YS8fn" id="1HWyn8jvsQn" role="3cqZAp">
                          <node concept="2ShNRf" id="1HWyn8jvt_J" role="YScLw">
                            <node concept="1pGfFk" id="1HWyn8jvt_L" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="1HWyn8jvsQb" role="3clFbx">
                      <node concept="3cpWs6" id="1HWyn8jvsQc" role="3cqZAp">
                        <node concept="2OqwBi" id="1HWyn8jvsQd" role="3cqZAk">
                          <node concept="1eOMI4" id="1HWyn8jvsQh" role="2Oq$k0">
                            <node concept="10QFUN" id="1HWyn8jvsQe" role="1eOMHV">
                              <node concept="37vLTw" id="1HWyn8jvsQf" role="10QFUP">
                                <ref role="3cqZAo" node="1HWyn8jvsQ2" resolve="value" />
                              </node>
                              <node concept="3uibUv" id="1HWyn8jvsQg" role="10QFUM">
                                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1HWyn8jvsQi" role="2OqNvi">
                            <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                            <node concept="37vLTw" id="1HWyn8jvsQj" role="37wK5m">
                              <ref role="3cqZAo" node="1HWyn8jvsPD" resolve="fallback" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1HWyn8jvTiX" role="3cqZAp" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="1HWyn8jvTAQ" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbH" id="1HWyn8jvTV1" role="3cqZAp" />
            </node>
            <node concept="3eNFk2" id="oyq0R0eUEN" role="3eNLev">
              <node concept="3clFbC" id="oyq0R0fh9F" role="3eO9$A">
                <node concept="3cmrfG" id="oyq0R0fha$" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="oyq0R0ff_N" role="3uHU7B">
                  <node concept="37vLTw" id="oyq0R0ffk6" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HWyn8jvsPB" resolve="tf" />
                  </node>
                  <node concept="liA8E" id="oyq0R0fg5i" role="2OqNvi">
                    <ref role="37wK5l" to="6exd:5BGv8yzvvIZ" resolve="variablesCount" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="oyq0R0eUEP" role="3eOfB_">
                <node concept="3cpWs6" id="oyq0R0eWGW" role="3cqZAp">
                  <node concept="2OqwBi" id="oyq0R0eX0E" role="3cqZAk">
                    <node concept="37vLTw" id="oyq0R0eWHM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HWyn8jvsPB" resolve="tf" />
                    </node>
                    <node concept="liA8E" id="oyq0R0eXJS" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:1bm7a6EXvNI" resolve="copyRecursively" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="oyq0R0eWG1" role="3cqZAp" />
              </node>
            </node>
            <node concept="9aQIb" id="1HWyn8jvsQP" role="9aQIa">
              <node concept="3clFbS" id="1HWyn8jvsQQ" role="9aQI4">
                <node concept="3cpWs6" id="1HWyn8jvsQR" role="3cqZAp">
                  <node concept="2OqwBi" id="1HWyn8jvtFe" role="3cqZAk">
                    <node concept="37vLTw" id="1HWyn8jvtFd" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HWyn8jvsPB" resolve="tf" />
                    </node>
                    <node concept="liA8E" id="1HWyn8jvtFf" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                      <node concept="37vLTw" id="1HWyn8jvtFg" role="37wK5m">
                        <ref role="3cqZAo" node="1HWyn8jvsPD" resolve="fallback" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1HWyn8jvsQU" role="1B3o_S" />
        <node concept="3uibUv" id="1HWyn8jvsQV" role="3clF45">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="2tJIrI" id="1HWyn8jvA20" role="jymVt" />
      <node concept="312cEg" id="1HWyn8jvsP6" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="logicalContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1HWyn8jvsP8" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
        <node concept="3Tm6S6" id="1HWyn8jvsP9" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="1HWyn8jvsPa" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="logicalMap" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1HWyn8jvsPc" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="1HWyn8jvsPd" role="11_B2D">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="1HWyn8jvRmw" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="1HWyn8jvsPe" role="11_B2D">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="1HWyn8jvRHY" role="11_B2D" />
          </node>
        </node>
        <node concept="3Tm6S6" id="1HWyn8jvsPf" role="1B3o_S" />
        <node concept="2ShNRf" id="1HWyn8jvOPC" role="33vP2m">
          <node concept="1pGfFk" id="1HWyn8jvPwP" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
            <node concept="3uibUv" id="1HWyn8jvQgV" role="1pMfVU">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              <node concept="3qTvmN" id="1HWyn8jvS6U" role="11_B2D" />
            </node>
            <node concept="3uibUv" id="1HWyn8jvQCH" role="1pMfVU">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              <node concept="3qTvmN" id="1HWyn8jvSTG" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HWyn8jvsOE" role="jymVt" />
    <node concept="3Tm1VV" id="1HWyn8jvsHc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="CGeqIk8WWU">
    <property role="TrG5h" value="RuleProcessingSession" />
    <node concept="2tJIrI" id="CGeqIk90l8" role="jymVt" />
    <node concept="3clFbW" id="7DvO2M9VeM1" role="jymVt">
      <node concept="3cqZAl" id="7DvO2M9VeM2" role="3clF45" />
      <node concept="3Tm1VV" id="78H58oeCgeV" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9VeM4" role="3clF47">
        <node concept="3clFbF" id="72RDgIN3TIX" role="3cqZAp">
          <node concept="37vLTI" id="72RDgIN3TIZ" role="3clFbG">
            <node concept="2OqwBi" id="72RDgIN3TTV" role="37vLTJ">
              <node concept="Xjq3P" id="72RDgIN3TUW" role="2Oq$k0" />
              <node concept="2OwXpG" id="72RDgIN3TTY" role="2OqNvi">
                <ref role="2Oxat5" node="72RDgIN3TIT" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="72RDgIN3TJ3" role="37vLTx">
              <ref role="3cqZAo" node="72RDgIN3THq" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Y70AYEbe1S" role="3cqZAp">
          <node concept="37vLTI" id="2Y70AYEbe1U" role="3clFbG">
            <node concept="2OqwBi" id="2Y70AYEbeZE" role="37vLTJ">
              <node concept="Xjq3P" id="2Y70AYEbf0r" role="2Oq$k0" />
              <node concept="2OwXpG" id="2Y70AYEbeZH" role="2OqNvi">
                <ref role="2Oxat5" node="2Y70AYEbe1O" resolve="messageHandler" />
              </node>
            </node>
            <node concept="37vLTw" id="2Y70AYEbe1Y" role="37vLTx">
              <ref role="3cqZAo" node="2Y70AYEbbjP" resolve="messageHandler" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvO2M9VeM5" role="3cqZAp">
          <node concept="1rXfSq" id="7DvO2M9VeM6" role="3clFbG">
            <ref role="37wK5l" node="7DvO2M9VeMb" resolve="init" />
            <node concept="37vLTw" id="7DvO2M9VeM7" role="37wK5m">
              <ref role="3cqZAo" node="7DvO2M9VeM8" resolve="descriptors" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9VeM8" role="3clF46">
        <property role="TrG5h" value="descriptors" />
        <node concept="A3Dl8" id="6UWSvq5dhn_" role="1tU5fm">
          <node concept="3qUE_q" id="78H58oeCVQ5" role="A3Ik2">
            <node concept="3uibUv" id="78H58oeCX5O" role="3qUE_r">
              <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="72RDgIN3THq" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="72RDgIN3TIw" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2Y70AYEbbjP" role="3clF46">
        <property role="TrG5h" value="messageHandler" />
        <node concept="3uibUv" id="2Y70AYEbcAb" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPFS$d" role="jymVt" />
    <node concept="3clFb_" id="20Ay2VeR9qk" role="jymVt">
      <property role="TrG5h" value="ruleTemplates" />
      <node concept="3Tm1VV" id="20Ay2VeR9qm" role="1B3o_S" />
      <node concept="3clFbS" id="20Ay2VeR9qn" role="3clF47">
        <node concept="3clFbF" id="7P_FdVPFNRd" role="3cqZAp">
          <node concept="37vLTw" id="7P_FdVPFNRb" role="3clFbG">
            <ref role="3cqZAo" node="7P_FdVPFMy6" resolve="ruleTemplateIndex" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1Ss4_iXX4Ss" role="3clF45">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9vhkn" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9Icas" role="jymVt">
      <property role="TrG5h" value="macroTemplates" />
      <node concept="3Tm1VV" id="7DvO2M9VLTr" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Icau" role="3clF47">
        <node concept="3clFbF" id="7P_FdVPFNWv" role="3cqZAp">
          <node concept="37vLTw" id="7P_FdVPFNWt" role="3clFbG">
            <ref role="3cqZAo" node="7P_FdVPFMy3" resolve="macroTemplatesIndex" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7DvO2M9IcFT" role="3clF45">
        <ref role="3uigEE" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Icar" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR9alW4" role="jymVt">
      <property role="TrG5h" value="queryTemplates" />
      <node concept="3uibUv" id="7WKNeR9am5J" role="3clF45">
        <ref role="3uigEE" node="7WKNeR93NDF" resolve="QueryTemplateIndex" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR9alW7" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR9alW8" role="3clF47">
        <node concept="3clFbF" id="7WKNeR9amOI" role="3cqZAp">
          <node concept="37vLTw" id="7WKNeR9amOH" role="3clFbG">
            <ref role="3cqZAo" node="7WKNeR99MZ$" resolve="queryTemplateIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR9amE4" role="jymVt" />
    <node concept="3clFb_" id="72RDgIN45VE" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3uibUv" id="72RDgIN4652" role="3clF45">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
      <node concept="3Tm1VV" id="72RDgIN45VH" role="1B3o_S" />
      <node concept="3clFbS" id="72RDgIN45VI" role="3clF47">
        <node concept="3clFbF" id="72RDgIN46k9" role="3cqZAp">
          <node concept="37vLTw" id="72RDgIN46k8" role="3clFbG">
            <ref role="3cqZAo" node="72RDgIN3TIT" resolve="repository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cmlg9ODgY7" role="jymVt" />
    <node concept="3clFb_" id="2WtKs4tZfgb" role="jymVt">
      <property role="TrG5h" value="programSpec" />
      <node concept="3clFbS" id="2WtKs4tZfge" role="3clF47">
        <node concept="3clFbF" id="2WtKs4tZfSn" role="3cqZAp">
          <node concept="2OqwBi" id="5tAk4yVYio9" role="3clFbG">
            <node concept="37vLTw" id="2WtKs4tZfSm" role="2Oq$k0">
              <ref role="3cqZAo" node="2WtKs4tZfH3" resolve="programSpecBuilder" />
            </node>
            <node concept="liA8E" id="5tAk4yVYiyk" role="2OqNvi">
              <ref role="37wK5l" to="xnrr:5tAk4yVVZZP" resolve="toSpec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2WtKs4tZf7R" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW2uCZ" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalSpec" resolve="IncrementalSpec" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yW02_W" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yW01VJ" role="jymVt">
      <property role="TrG5h" value="programSpecBuilder" />
      <node concept="3clFbS" id="5tAk4yW01VK" role="3clF47">
        <node concept="3clFbF" id="5tAk4yW01VL" role="3cqZAp">
          <node concept="37vLTw" id="5tAk4yW01VM" role="3clFbG">
            <ref role="3cqZAo" node="2WtKs4tZfH3" resolve="programSpecBuilder" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5tAk4yW01VN" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW0d6$" role="3clF45">
        <ref role="3uigEE" to="xnrr:1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
    </node>
    <node concept="2tJIrI" id="72RDgIN45M_" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9VeMb" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3Tm6S6" id="7DvO2M9VeMc" role="1B3o_S" />
      <node concept="3cqZAl" id="7DvO2M9VeMd" role="3clF45" />
      <node concept="37vLTG" id="7DvO2M9VeMe" role="3clF46">
        <property role="TrG5h" value="descriptors" />
        <node concept="A3Dl8" id="6UWSvq5dh__" role="1tU5fm">
          <node concept="3qUE_q" id="78H58oeFx75" role="A3Ik2">
            <node concept="3uibUv" id="78H58oeFxfi" role="3qUE_r">
              <ref role="3uigEE" to="fqlx:NKt6yomNZE" resolve="CoderulesAspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7DvO2M9VeMg" role="3clF47">
        <node concept="3cpWs8" id="5EDW3XFuncT" role="3cqZAp">
          <node concept="3cpWsn" id="5EDW3XFuncU" role="3cpWs9">
            <property role="TrG5h" value="manifests" />
            <node concept="_YKpA" id="5EDW3XFuncv" role="1tU5fm">
              <node concept="3uibUv" id="5EDW3XFuncy" role="_ZDj9">
                <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
              </node>
            </node>
            <node concept="2ShNRf" id="5EDW3XFuncV" role="33vP2m">
              <node concept="Tc6Ow" id="5EDW3XFuncW" role="2ShVmc">
                <node concept="3uibUv" id="5EDW3XFuncX" role="HW$YZ">
                  <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2WtKs4u1jqB" role="3cqZAp">
          <node concept="3cpWsn" id="2WtKs4u1jqC" role="3cpWs9">
            <property role="TrG5h" value="programSpecBuilder" />
            <node concept="3uibUv" id="5tAk4yVYecF" role="1tU5fm">
              <ref role="3uigEE" to="i348:5tAk4yVWROK" resolve="ProgramSpecBuilder" />
            </node>
            <node concept="2ShNRf" id="5ka_cIaiJe4" role="33vP2m">
              <node concept="HV5vD" id="5tAk4yVYgKd" role="2ShVmc">
                <ref role="HV5vE" to="i348:5tAk4yVYeLR" resolve="ProgramSpecBuilder.Empty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2WtKs4tZiYW" role="3cqZAp" />
        <node concept="2Gpval" id="NKt6yoTa7y" role="3cqZAp">
          <node concept="3clFbS" id="6UWSvq5d00n" role="2LFqv$">
            <node concept="3cpWs8" id="5EDW3XFurcR" role="3cqZAp">
              <node concept="3cpWsn" id="5EDW3XFurcS" role="3cpWs9">
                <property role="TrG5h" value="manifest" />
                <node concept="3uibUv" id="5EDW3XFuqYq" role="1tU5fm">
                  <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
                </node>
                <node concept="2OqwBi" id="5EDW3XFurcT" role="33vP2m">
                  <node concept="2GrUjf" id="5EDW3XFurcU" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="NKt6yoTa9Y" resolve="aspect" />
                  </node>
                  <node concept="liA8E" id="5EDW3XFurcV" role="2OqNvi">
                    <ref role="37wK5l" to="fqlx:5EDW3XF61A_" resolve="createManifest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5EDW3XFuoKW" role="3cqZAp">
              <node concept="2OqwBi" id="5EDW3XFupsb" role="3clFbG">
                <node concept="37vLTw" id="5EDW3XFuoKU" role="2Oq$k0">
                  <ref role="3cqZAo" node="5EDW3XFuncU" resolve="manifests" />
                </node>
                <node concept="TSZUe" id="5EDW3XFuq0S" role="2OqNvi">
                  <node concept="37vLTw" id="5EDW3XFurcW" role="25WWJ7">
                    <ref role="3cqZAo" node="5EDW3XFurcS" resolve="manifest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5ka_cIaiKPp" role="3cqZAp">
              <node concept="37vLTI" id="5ka_cIaiKXo" role="3clFbG">
                <node concept="2OqwBi" id="5ka_cIaiL5s" role="37vLTx">
                  <node concept="37vLTw" id="5ka_cIaiKYL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="programSpecBuilder" />
                  </node>
                  <node concept="liA8E" id="5ka_cIaiLc5" role="2OqNvi">
                    <ref role="37wK5l" to="i348:5tAk4yVWROP" resolve="merge" />
                    <node concept="2OqwBi" id="5ka_cIaiLle" role="37wK5m">
                      <node concept="37vLTw" id="5ka_cIaiLdY" role="2Oq$k0">
                        <ref role="3cqZAo" node="5EDW3XFurcS" resolve="manifest" />
                      </node>
                      <node concept="liA8E" id="5ka_cIaiLvS" role="2OqNvi">
                        <ref role="37wK5l" to="fqlx:2WtKs4tZlCC" resolve="programSpecBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5ka_cIaiKPn" role="37vLTJ">
                  <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="programSpecBuilder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6UWSvq5d00t" role="2GsD0m">
            <ref role="3cqZAo" node="7DvO2M9VeMe" resolve="descriptors" />
          </node>
          <node concept="2GrKxI" id="NKt6yoTa9Y" role="2Gsz3X">
            <property role="TrG5h" value="aspect" />
          </node>
        </node>
        <node concept="3clFbH" id="7P_FdVPGUuH" role="3cqZAp" />
        <node concept="3clFbF" id="7DvO2M9VeMo" role="3cqZAp">
          <node concept="37vLTI" id="7DvO2M9VeMp" role="3clFbG">
            <node concept="2OqwBi" id="7DvO2M9VeMq" role="37vLTJ">
              <node concept="Xjq3P" id="7DvO2M9VeMr" role="2Oq$k0" />
              <node concept="2OwXpG" id="7DvO2M9VeMs" role="2OqNvi">
                <ref role="2Oxat5" node="7P_FdVPFMy3" resolve="macroTemplatesIndex" />
              </node>
            </node>
            <node concept="2ShNRf" id="7DvO2M9VeMt" role="37vLTx">
              <node concept="1pGfFk" id="7DvO2M9VeMu" role="2ShVmc">
                <ref role="37wK5l" node="1hX44vNlSOK" resolve="MacroTemplateIndex" />
                <node concept="37vLTw" id="5EDW3XFusav" role="37wK5m">
                  <ref role="3cqZAo" node="5EDW3XFuncU" resolve="manifests" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvO2M9VeMw" role="3cqZAp">
          <node concept="37vLTI" id="7DvO2M9VeMx" role="3clFbG">
            <node concept="2OqwBi" id="7DvO2M9VeM$" role="37vLTJ">
              <node concept="Xjq3P" id="7DvO2M9VeM_" role="2Oq$k0" />
              <node concept="2OwXpG" id="7DvO2M9VeMA" role="2OqNvi">
                <ref role="2Oxat5" node="7P_FdVPFMy6" resolve="ruleTemplateIndex" />
              </node>
            </node>
            <node concept="2ShNRf" id="7WKNeR99Rwt" role="37vLTx">
              <node concept="1pGfFk" id="7WKNeR99RWw" role="2ShVmc">
                <ref role="37wK5l" node="7P_FdVPIH2n" resolve="RuleTemplateIndex" />
                <node concept="37vLTw" id="5EDW3XFuLaf" role="37wK5m">
                  <ref role="3cqZAo" node="5EDW3XFuncU" resolve="manifests" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR99S1f" role="3cqZAp">
          <node concept="37vLTI" id="7WKNeR99SBB" role="3clFbG">
            <node concept="2ShNRf" id="7WKNeR99SEp" role="37vLTx">
              <node concept="1pGfFk" id="7WKNeR99T6s" role="2ShVmc">
                <ref role="37wK5l" node="7WKNeR93OQV" resolve="QueryTemplateIndex" />
                <node concept="37vLTw" id="5EDW3XFuR8Y" role="37wK5m">
                  <ref role="3cqZAo" node="5EDW3XFuncU" resolve="manifests" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7WKNeR99Seq" role="37vLTJ">
              <node concept="Xjq3P" id="7WKNeR99S1d" role="2Oq$k0" />
              <node concept="2OwXpG" id="7WKNeR99SqY" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR99MZ$" resolve="queryTemplateIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ka_cIajbyK" role="3cqZAp">
          <node concept="37vLTI" id="5ka_cIajbXZ" role="3clFbG">
            <node concept="2OqwBi" id="5ka_cIajbI_" role="37vLTJ">
              <node concept="Xjq3P" id="5ka_cIajbyI" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ka_cIajbQ3" role="2OqNvi">
                <ref role="2Oxat5" node="2WtKs4tZfH3" resolve="programSpecBuilder" />
              </node>
            </node>
            <node concept="1eOMI4" id="5tAk4yW0djk" role="37vLTx">
              <node concept="10QFUN" id="5tAk4yW0djh" role="1eOMHV">
                <node concept="3uibUv" id="5tAk4yW0dlJ" role="10QFUM">
                  <ref role="3uigEE" to="xnrr:1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
                </node>
                <node concept="37vLTw" id="5tAk4yVYi$l" role="10QFUP">
                  <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="programSpecBuilder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6UWSvq5b6xS" role="jymVt" />
    <node concept="312cEg" id="7P_FdVPFMy3" role="jymVt">
      <property role="TrG5h" value="macroTemplatesIndex" />
      <node concept="3Tm6S6" id="7WKNeR9dEfV" role="1B3o_S" />
      <node concept="3uibUv" id="7P_FdVPFMy5" role="1tU5fm">
        <ref role="3uigEE" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
      </node>
    </node>
    <node concept="312cEg" id="7P_FdVPFMy6" role="jymVt">
      <property role="TrG5h" value="ruleTemplateIndex" />
      <node concept="3Tm6S6" id="7WKNeR9dEi9" role="1B3o_S" />
      <node concept="3uibUv" id="7P_FdVPFMy8" role="1tU5fm">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="312cEg" id="7WKNeR99MZ$" role="jymVt">
      <property role="TrG5h" value="queryTemplateIndex" />
      <node concept="3Tm6S6" id="7WKNeR9dEk7" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR99N7Z" role="1tU5fm">
        <ref role="3uigEE" node="7WKNeR93NDF" resolve="QueryTemplateIndex" />
      </node>
    </node>
    <node concept="312cEg" id="72RDgIN3TIT" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="72RDgIN3TIU" role="1B3o_S" />
      <node concept="3uibUv" id="72RDgIN3TIW" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="2WtKs4tZfH3" role="jymVt">
      <property role="TrG5h" value="programSpecBuilder" />
      <node concept="3Tm6S6" id="2WtKs4tZf$D" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW0dne" role="1tU5fm">
        <ref role="3uigEE" to="xnrr:1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
    </node>
    <node concept="312cEg" id="2Y70AYEbe1O" role="jymVt">
      <property role="TrG5h" value="messageHandler" />
      <node concept="3Tm6S6" id="2Y70AYEbe1P" role="1B3o_S" />
      <node concept="3uibUv" id="2Y70AYEbe1R" role="1tU5fm">
        <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPFLhr" role="jymVt" />
    <node concept="3Tm1VV" id="CGeqIk8WWV" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3GlpCDSxTG7">
    <property role="TrG5h" value="ProgramProducer" />
    <property role="3GE5qa" value="" />
    <node concept="2tJIrI" id="4QPCta1yWT2" role="jymVt" />
    <node concept="3clFbW" id="7DvO2M9pdut" role="jymVt">
      <node concept="3cqZAl" id="7DvO2M9pduv" role="3clF45" />
      <node concept="3Tm1VV" id="7DvO2M9pduw" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9pdux" role="3clF47">
        <node concept="1VxSAg" id="7i3KM7g75bf" role="3cqZAp">
          <ref role="37wK5l" node="7WKNeR9bcL$" resolve="ProgramProducer" />
          <node concept="37vLTw" id="7i3KM7g75eT" role="37wK5m">
            <ref role="3cqZAo" node="6OXbTDxtJVO" resolve="name" />
          </node>
          <node concept="2ShNRf" id="61G6TdBoJWH" role="37wK5m">
            <node concept="YeOm9" id="61G6TdBqILW" role="2ShVmc">
              <node concept="1Y3b0j" id="61G6TdBqILZ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="ksgm:7DvO2Ma0h_M" resolve="MacroProcessing" />
                <ref role="1Y3XeK" to="ksgm:7DvO2M9IiKB" resolve="MacroProcessing" />
                <node concept="3Tm1VV" id="61G6TdBqIM0" role="1B3o_S" />
                <node concept="2OqwBi" id="61G6TdBoJWJ" role="37wK5m">
                  <node concept="37vLTw" id="61G6TdBoJWK" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvO2M9peEl" resolve="ruleProcessingSession" />
                  </node>
                  <node concept="liA8E" id="61G6TdBoJWL" role="2OqNvi">
                    <ref role="37wK5l" node="72RDgIN45VE" resolve="repository" />
                  </node>
                </node>
                <node concept="2OqwBi" id="61G6TdBoJWM" role="37wK5m">
                  <node concept="37vLTw" id="61G6TdBoJWN" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvO2M9peEl" resolve="ruleProcessingSession" />
                  </node>
                  <node concept="liA8E" id="61G6TdBoJWO" role="2OqNvi">
                    <ref role="37wK5l" node="7DvO2M9Icas" resolve="macroTemplates" />
                  </node>
                </node>
                <node concept="3clFb_" id="61G6TdBqITu" role="jymVt">
                  <property role="TrG5h" value="provideFeedback" />
                  <node concept="37vLTG" id="61G6TdBsK75" role="3clF46">
                    <property role="TrG5h" value="feedback" />
                    <node concept="3uibUv" id="61G6TdBsKW2" role="1tU5fm">
                      <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                    </node>
                  </node>
                  <node concept="3cqZAl" id="61G6TdBqITD" role="3clF45" />
                  <node concept="3Tm1VV" id="61G6TdBqITE" role="1B3o_S" />
                  <node concept="3clFbS" id="61G6TdBqITI" role="3clF47">
                    <node concept="3SKdUt" id="61G6TdBqJcK" role="3cqZAp">
                      <node concept="1PaTwC" id="61G6TdBqJcL" role="1aUNEU">
                        <node concept="3oM_SD" id="61G6TdBqJcM" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME" />
                        </node>
                        <node concept="3oM_SD" id="61G6TdBqJd7" role="1PaTwD">
                          <property role="3oM_SC" value="process" />
                        </node>
                        <node concept="3oM_SD" id="61G6TdBqJdq" role="1PaTwD">
                          <property role="3oM_SC" value="report" />
                        </node>
                        <node concept="3oM_SD" id="61G6TdBqJdu" role="1PaTwD">
                          <property role="3oM_SC" value="items" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="61G6TdBqITJ" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7i3KM7g75jt" role="37wK5m">
            <ref role="3cqZAo" node="7DvO2M9peEl" resolve="ruleProcessingSession" />
          </node>
          <node concept="10Nm6u" id="7i3KM7g75Hb" role="37wK5m" />
          <node concept="2ShNRf" id="1imVejVAmxY" role="37wK5m">
            <node concept="HV5vD" id="1imVejVAn7b" role="2ShVmc">
              <ref role="HV5vE" to="i348:1imVejVtN6P" resolve="PrincipalStore" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDxtJVO" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6OXbTDxtJZk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7DvO2M9peEl" role="3clF46">
        <property role="TrG5h" value="ruleProcessingSession" />
        <node concept="3uibUv" id="7DvO2M9peEk" role="1tU5fm">
          <ref role="3uigEE" node="CGeqIk8WWU" resolve="RuleProcessingSession" />
        </node>
      </node>
      <node concept="P$JXv" id="6nFpYlv0Mmo" role="lGtFl">
        <node concept="TZ5HA" id="6nFpYlv0Mmp" role="TZ5H$">
          <node concept="1dT_AC" id="6nFpYlv0Mmq" role="1dT_Ay">
            <property role="1dT_AB" value="Only used from tests" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR9b5Ef" role="jymVt" />
    <node concept="3clFbW" id="7WKNeR9bcL$" role="jymVt">
      <node concept="37vLTG" id="6OXbTDxtXtJ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6OXbTDxtYhn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="61G6TdBoGJ0" role="3clF46">
        <property role="TrG5h" value="applicationSession" />
        <node concept="3uibUv" id="61G6TdBpADG" role="1tU5fm">
          <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR9biVB" role="3clF46">
        <property role="TrG5h" value="ruleProcessingSession" />
        <node concept="3uibUv" id="7WKNeR9biVC" role="1tU5fm">
          <ref role="3uigEE" node="CGeqIk8WWU" resolve="RuleProcessingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="7WKNeR9biTm" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="6OXbTD$kKAJ" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="3cqZAl" id="7WKNeR9bcLA" role="3clF45" />
      <node concept="3Tm1VV" id="7WKNeR9bcLB" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR9bcLC" role="3clF47">
        <node concept="3clFbF" id="7i3KM7g73sS" role="3cqZAp">
          <node concept="37vLTI" id="7i3KM7g73sT" role="3clFbG">
            <node concept="37vLTw" id="7i3KM7gksTV" role="37vLTx">
              <ref role="3cqZAo" node="6OXbTDxtXtJ" resolve="name" />
            </node>
            <node concept="2OqwBi" id="7i3KM7g73sV" role="37vLTJ">
              <node concept="Xjq3P" id="7i3KM7g73sW" role="2Oq$k0" />
              <node concept="2OwXpG" id="7i3KM7g73sX" role="2OqNvi">
                <ref role="2Oxat5" node="6OXbTDxtYkB" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7i3KM7g73sY" role="3cqZAp">
          <node concept="37vLTI" id="7i3KM7g73sZ" role="3clFbG">
            <node concept="2OqwBi" id="7i3KM7g73t0" role="37vLTJ">
              <node concept="Xjq3P" id="7i3KM7g73t1" role="2Oq$k0" />
              <node concept="2OwXpG" id="7i3KM7g73t2" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
              </node>
            </node>
            <node concept="37vLTw" id="7i3KM7gkt1t" role="37vLTx">
              <ref role="3cqZAo" node="7WKNeR9biVB" resolve="ruleProcessingSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7i3KM7g73ta" role="3cqZAp">
          <node concept="37vLTI" id="7i3KM7g73tb" role="3clFbG">
            <node concept="2OqwBi" id="7i3KM7g73tc" role="37vLTJ">
              <node concept="Xjq3P" id="7i3KM7g73td" role="2Oq$k0" />
              <node concept="2OwXpG" id="7i3KM7g73te" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR9b_iR" resolve="queryTemplate" />
              </node>
            </node>
            <node concept="37vLTw" id="7i3KM7gkt2T" role="37vLTx">
              <ref role="3cqZAo" node="7WKNeR9biTm" resolve="queryTemplate" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61G6TdBoK1b" role="3cqZAp">
          <node concept="37vLTI" id="61G6TdBoK1d" role="3clFbG">
            <node concept="2OqwBi" id="61G6TdBoLon" role="37vLTJ">
              <node concept="Xjq3P" id="61G6TdBoLp2" role="2Oq$k0" />
              <node concept="2OwXpG" id="61G6TdBoLoq" role="2OqNvi">
                <ref role="2Oxat5" node="61G6TdBoK17" resolve="applicationSession" />
              </node>
            </node>
            <node concept="37vLTw" id="61G6TdBoK1h" role="37vLTx">
              <ref role="3cqZAo" node="61G6TdBoGJ0" resolve="applicationSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1imVejVAjJ4" role="3cqZAp">
          <node concept="37vLTI" id="1imVejVAmlR" role="3clFbG">
            <node concept="37vLTw" id="1imVejVAmo6" role="37vLTx">
              <ref role="3cqZAo" node="1imVejVAiZ7" resolve="store" />
            </node>
            <node concept="2OqwBi" id="1imVejVAjTp" role="37vLTJ">
              <node concept="Xjq3P" id="1imVejVAjJ2" role="2Oq$k0" />
              <node concept="2OwXpG" id="1imVejVAm9w" role="2OqNvi">
                <ref role="2Oxat5" node="1imVejVAllg" resolve="occurrenceCache" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1imVejVAiZ7" role="3clF46">
        <property role="TrG5h" value="store" />
        <node concept="3uibUv" id="1imVejVAjq5" role="1tU5fm">
          <ref role="3uigEE" to="i348:1imVejVtN6P" resolve="PrincipalStore" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSxTK6" role="jymVt" />
    <node concept="3clFb_" id="6nFpYluWwIS" role="jymVt">
      <property role="TrG5h" value="setOriginIndex" />
      <node concept="37vLTG" id="6nFpYluWzZK" role="3clF46">
        <property role="TrG5h" value="originIndex" />
        <node concept="3uibUv" id="6nFpYluW$oV" role="1tU5fm">
          <ref role="3uigEE" to="ksgm:70Wv0dJhQb2" resolve="OriginIndex" />
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYluWwIU" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYluWwIV" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYluWwIW" role="3clF47">
        <node concept="3clFbF" id="6nFpYluW$vB" role="3cqZAp">
          <node concept="37vLTI" id="6nFpYluW$vD" role="3clFbG">
            <node concept="2OqwBi" id="6nFpYluW_ty" role="37vLTJ">
              <node concept="Xjq3P" id="6nFpYluW_ud" role="2Oq$k0" />
              <node concept="2OwXpG" id="6nFpYluW_t_" role="2OqNvi">
                <ref role="2Oxat5" node="6nFpYluW$vz" resolve="originIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="6nFpYluW$vH" role="37vLTx">
              <ref role="3cqZAo" node="6nFpYluWzZK" resolve="originIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYluWvdX" role="jymVt" />
    <node concept="3clFb_" id="6nFpYluW_Ik" role="jymVt">
      <property role="TrG5h" value="setUpdatesRecorder" />
      <node concept="37vLTG" id="6nFpYluW_Il" role="3clF46">
        <property role="TrG5h" value="updatesRecorder" />
        <node concept="3uibUv" id="6nFpYluWDln" role="1tU5fm">
          <ref role="3uigEE" to="ksgm:6nFpYlu02jD" resolve="UpdatesRecorder" />
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYluW_In" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYluW_Io" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYluW_Ip" role="3clF47">
        <node concept="3clFbF" id="6nFpYluW_Iq" role="3cqZAp">
          <node concept="37vLTI" id="6nFpYluW_Ir" role="3clFbG">
            <node concept="2OqwBi" id="6nFpYluW_Is" role="37vLTJ">
              <node concept="Xjq3P" id="6nFpYluW_It" role="2Oq$k0" />
              <node concept="2OwXpG" id="6nFpYluWE7C" role="2OqNvi">
                <ref role="2Oxat5" node="6nFpYlu8ju5" resolve="updatesRecorder" />
              </node>
            </node>
            <node concept="37vLTw" id="6nFpYluW_Iv" role="37vLTx">
              <ref role="3cqZAo" node="6nFpYluW_Il" resolve="updatesRecorder" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="39eNUjm23zL" role="jymVt" />
    <node concept="3clFb_" id="39eNUjlYQzk" role="jymVt">
      <property role="TrG5h" value="setTrace" />
      <node concept="37vLTG" id="39eNUjm1V5f" role="3clF46">
        <property role="TrG5h" value="trace" />
        <node concept="3uibUv" id="39eNUjm1W8p" role="1tU5fm">
          <ref role="3uigEE" node="39eNUjlSJ9Q" resolve="TemplateTrace" />
        </node>
      </node>
      <node concept="3cqZAl" id="39eNUjm1TlB" role="3clF45" />
      <node concept="3Tm1VV" id="39eNUjlYQzm" role="1B3o_S" />
      <node concept="3clFbS" id="39eNUjlYQzn" role="3clF47">
        <node concept="3clFbF" id="39eNUjlYQzo" role="3cqZAp">
          <node concept="37vLTI" id="39eNUjm1XX3" role="3clFbG">
            <node concept="37vLTw" id="39eNUjm1Y0f" role="37vLTx">
              <ref role="3cqZAo" node="39eNUjm1V5f" resolve="trace" />
            </node>
            <node concept="2OqwBi" id="39eNUjm1Y86" role="37vLTJ">
              <node concept="Xjq3P" id="39eNUjm1Y3P" role="2Oq$k0" />
              <node concept="2OwXpG" id="39eNUjm1Yd7" role="2OqNvi">
                <ref role="2Oxat5" node="39eNUjlYVVK" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="39eNUjm28Ih" role="jymVt" />
    <node concept="3clFb_" id="7kTeLbPojCz" role="jymVt">
      <property role="TrG5h" value="produce" />
      <node concept="3Tm1VV" id="7kTeLbPopUh" role="1B3o_S" />
      <node concept="3uibUv" id="7kTeLbPojC_" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="37vLTG" id="7i3KM7gki_o" role="3clF46">
        <property role="TrG5h" value="planHandler" />
        <node concept="3uibUv" id="7i3KM7gkkBv" role="1tU5fm">
          <ref role="3uigEE" to="ksgm:7DvO2M9Uago" resolve="RulesPlanHandler" />
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPojCA" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="7kTeLbPolya" role="1tU5fm">
          <node concept="3Tqbb2" id="7kTeLbPolyb" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="61G6TdDXEdy" role="3clF46">
        <property role="TrG5h" value="recursively" />
        <node concept="10P_77" id="61G6TdDXIQo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5EDW3XEu33d" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3uibUv" id="5EDW3XEu3xO" role="1tU5fm">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="3clFbS" id="7kTeLbPojCE" role="3clF47">
        <node concept="3clFbF" id="7kTeLbPojCF" role="3cqZAp">
          <node concept="1rXfSq" id="7kTeLbPojCG" role="3clFbG">
            <ref role="37wK5l" node="7kTeLbPnDc0" resolve="doProduce" />
            <node concept="37vLTw" id="7i3KM7gkmob" role="37wK5m">
              <ref role="3cqZAo" node="7i3KM7gki_o" resolve="planHandler" />
            </node>
            <node concept="1bVj0M" id="7kTeLbPojCH" role="37wK5m">
              <node concept="37vLTG" id="7kTeLbPojCI" role="1bW2Oz">
                <property role="TrG5h" value="factory" />
                <node concept="3uibUv" id="7DvO2M9BgGr" role="1tU5fm">
                  <ref role="3uigEE" to="ksgm:12yN8DyF_E1" resolve="ProgramFactory" />
                </node>
              </node>
              <node concept="3clFbS" id="7kTeLbPojCO" role="1bW5cS">
                <node concept="3cpWs8" id="6OXbTDxOoZc" role="3cqZAp">
                  <node concept="3cpWsn" id="6OXbTDxOoZd" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3uibUv" id="6OXbTDxOoZ1" role="1tU5fm">
                      <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
                    </node>
                    <node concept="2YIFZM" id="7TC1Xcd$6oC" role="33vP2m">
                      <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
                      <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6OXbTDzSpTD" role="3cqZAp" />
                <node concept="3clFbF" id="39eNUjm2MTr" role="3cqZAp">
                  <node concept="2OqwBi" id="39eNUjm2N5q" role="3clFbG">
                    <node concept="37vLTw" id="39eNUjm2MTp" role="2Oq$k0">
                      <ref role="3cqZAo" node="7kTeLbPojCI" resolve="factory" />
                    </node>
                    <node concept="liA8E" id="39eNUjm2NjM" role="2OqNvi">
                      <ref role="37wK5l" to="ksgm:39eNUjlYQzk" resolve="setTrace" />
                      <node concept="37vLTw" id="39eNUjm2NWZ" role="37wK5m">
                        <ref role="3cqZAo" node="39eNUjlYVVK" resolve="trace" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="cmlg9OIKe5" role="3cqZAp">
                  <node concept="3clFbS" id="cmlg9OIKe7" role="3clFbx">
                    <node concept="3clFbF" id="6OXbTDxPpdh" role="3cqZAp">
                      <node concept="37vLTI" id="6OXbTDzR3Ob" role="3clFbG">
                        <node concept="37vLTw" id="6OXbTDzR41p" role="37vLTJ">
                          <ref role="3cqZAo" node="6OXbTDxOoZd" resolve="result" />
                        </node>
                        <node concept="2OqwBi" id="6OXbTDxPpl6" role="37vLTx">
                          <node concept="37vLTw" id="6OXbTDxPpdf" role="2Oq$k0">
                            <ref role="3cqZAo" node="6OXbTDxOoZd" resolve="result" />
                          </node>
                          <node concept="liA8E" id="6OXbTDxPptb" role="2OqNvi">
                            <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                            <node concept="2OqwBi" id="6OXbTDxPpIU" role="37wK5m">
                              <node concept="37vLTw" id="6OXbTDxPp_9" role="2Oq$k0">
                                <ref role="3cqZAo" node="7kTeLbPojCI" resolve="factory" />
                              </node>
                              <node concept="liA8E" id="6OXbTDxPqb1" role="2OqNvi">
                                <ref role="37wK5l" to="ksgm:6OXbTDxOzxt" resolve="processQuery" />
                                <node concept="10QFUN" id="5EDW3XEx1PL" role="37wK5m">
                                  <node concept="37vLTw" id="5EDW3XEx1PK" role="10QFUP">
                                    <ref role="3cqZAo" node="7WKNeR9b_iR" resolve="queryTemplate" />
                                  </node>
                                  <node concept="3uibUv" id="5EDW3XEx1PF" role="10QFUM">
                                    <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
                                    <node concept="16syzq" id="5EDW3XEx26X" role="11_B2D">
                                      <ref role="16sUi3" node="6OXbTDyaL_y" resolve="T" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="10QFUN" id="5EDW3XEx_GG" role="37wK5m">
                                  <node concept="37vLTw" id="5EDW3XEx_GF" role="10QFUP">
                                    <ref role="3cqZAo" node="5EDW3XEu33d" resolve="query" />
                                  </node>
                                  <node concept="16syzq" id="5EDW3XExAo6" role="10QFUM">
                                    <ref role="16sUi3" node="5EDW3XEvo5m" resolve="Q" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="cmlg9OIKD0" role="3clFbw">
                    <node concept="10Nm6u" id="cmlg9OIKR4" role="3uHU7w" />
                    <node concept="37vLTw" id="cmlg9OIKnz" role="3uHU7B">
                      <ref role="3cqZAo" node="7WKNeR9b_iR" resolve="queryTemplate" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6OXbTDzR2PY" role="3cqZAp">
                  <node concept="37vLTI" id="6OXbTDzR2Q0" role="3clFbG">
                    <node concept="37vLTw" id="6OXbTDzR2Q4" role="37vLTJ">
                      <ref role="3cqZAo" node="6OXbTDxOoZd" resolve="result" />
                    </node>
                    <node concept="2OqwBi" id="6OXbTDzR3sa" role="37vLTx">
                      <node concept="37vLTw" id="6OXbTDzR3jB" role="2Oq$k0">
                        <ref role="3cqZAo" node="6OXbTDxOoZd" resolve="result" />
                      </node>
                      <node concept="liA8E" id="6OXbTDzR3$y" role="2OqNvi">
                        <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                        <node concept="2OqwBi" id="6OXbTDxOoZe" role="37wK5m">
                          <node concept="37vLTw" id="6OXbTDxOoZf" role="2Oq$k0">
                            <ref role="3cqZAo" node="7kTeLbPojCI" resolve="factory" />
                          </node>
                          <node concept="liA8E" id="6OXbTDxOoZg" role="2OqNvi">
                            <ref role="37wK5l" to="ksgm:4QPCta1bMC1" resolve="processInput" />
                            <node concept="37vLTw" id="6OXbTDxOoZh" role="37wK5m">
                              <ref role="3cqZAo" node="7kTeLbPojCA" resolve="nodes" />
                            </node>
                            <node concept="37vLTw" id="61G6TdDXKQE" role="37wK5m">
                              <ref role="3cqZAo" node="61G6TdDXEdy" resolve="recursively" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6OXbTDzSpO_" role="3cqZAp" />
                <node concept="3clFbF" id="6OXbTDzR49N" role="3cqZAp">
                  <node concept="37vLTw" id="6OXbTDzR49L" role="3clFbG">
                    <ref role="3cqZAo" node="6OXbTDxOoZd" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7kTeLbPojCY" role="lGtFl">
        <node concept="TZ5HA" id="7kTeLbPojCZ" role="TZ5H$">
          <node concept="1dT_AC" id="7kTeLbPojD0" role="1dT_Ay">
            <property role="1dT_AB" value="Must be launched in a read action." />
          </node>
          <node concept="1dT_AC" id="7kTeLbPojD1" role="1dT_Ay" />
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEvo5m" role="16eVyc">
        <property role="TrG5h" value="Q" />
        <node concept="3uibUv" id="5EDW3XEvwaZ" role="3ztrMU">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="16euLQ" id="6OXbTDyaL_y" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="6R6MIbUdgwE" role="3ztrMU">
          <ref role="3uigEE" to="i348:6R6MIbU8M46" resolve="QueryTemplate.Token" />
          <node concept="16syzq" id="5EDW3XEvy57" role="11_B2D">
            <ref role="16sUi3" node="5EDW3XEvo5m" resolve="Q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7kTeLbPorJ7" role="jymVt" />
    <node concept="3clFb_" id="3GlpCDSyO$P" role="jymVt">
      <property role="TrG5h" value="getProgram" />
      <node concept="3uibUv" id="6tPOoeTbPNO" role="3clF45">
        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
      </node>
      <node concept="3Tm1VV" id="3GlpCDSyO$S" role="1B3o_S" />
      <node concept="3clFbS" id="3GlpCDSyO$T" role="3clF47">
        <node concept="3clFbF" id="3GlpCDSyQWA" role="3cqZAp">
          <node concept="37vLTw" id="3GlpCDSyQW_" role="3clFbG">
            <ref role="3cqZAo" node="1pPth$lE8Xs" resolve="program" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1imVejVAtjd" role="jymVt" />
    <node concept="3clFb_" id="1imVejVAvuv" role="jymVt">
      <property role="TrG5h" value="initialStore" />
      <node concept="3clFbS" id="1imVejVAvuy" role="3clF47">
        <node concept="3clFbF" id="1imVejVB9zs" role="3cqZAp">
          <node concept="37vLTw" id="1imVejVB9zr" role="3clFbG">
            <ref role="3cqZAo" node="1imVejVAyjK" resolve="initialStore" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1imVejVAuBY" role="1B3o_S" />
      <node concept="3vKaQO" id="1imVejVB8D1" role="3clF45">
        <node concept="3uibUv" id="1imVejVB9qx" role="3O5elw">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="39eNUjlYSQk" role="jymVt" />
    <node concept="3clFb_" id="7kTeLbPnDc0" role="jymVt">
      <property role="TrG5h" value="doProduce" />
      <node concept="37vLTG" id="7i3KM7gknF0" role="3clF46">
        <property role="TrG5h" value="planHandler" />
        <node concept="3uibUv" id="7i3KM7gko3T" role="1tU5fm">
          <ref role="3uigEE" to="ksgm:7DvO2M9Uago" resolve="RulesPlanHandler" />
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPnFaf" role="3clF46">
        <property role="TrG5h" value="produceAction" />
        <node concept="1ajhzC" id="7kTeLbPnFEB" role="1tU5fm">
          <node concept="3uibUv" id="7DvO2M9B7a5" role="1ajw0F">
            <ref role="3uigEE" to="ksgm:12yN8DyF_E1" resolve="ProgramFactory" />
          </node>
          <node concept="3uibUv" id="7kTeLbPnOYu" role="1ajl9A">
            <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7kTeLbPnVDn" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="7kTeLbPnEee" role="1B3o_S" />
      <node concept="3clFbS" id="7kTeLbPnDc4" role="3clF47">
        <node concept="3SKdUt" id="1imVejV_hf1" role="3cqZAp">
          <node concept="1PaTwC" id="1imVejV_hf2" role="1aUNEU">
            <node concept="3oM_SD" id="1imVejV_kEA" role="1PaTwD">
              <property role="3oM_SC" value="Skip" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kEL" role="1PaTwD">
              <property role="3oM_SC" value="rules" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kEO" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kGM" role="1PaTwD">
              <property role="3oM_SC" value="recursively" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kJ6" role="1PaTwD">
              <property role="3oM_SC" value="rules" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kH0" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kHS" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kIh" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kIp" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kIF" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1imVejV_hB6" role="3cqZAp">
          <node concept="1PaTwC" id="1imVejV_hB7" role="1aUNEU">
            <node concept="3oM_SD" id="1imVejV_hB8" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="1imVejV_hKQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kJz" role="1PaTwD">
              <property role="3oM_SC" value="rules" />
            </node>
            <node concept="3oM_SD" id="1imVejV_hKT" role="1PaTwD">
              <property role="3oM_SC" value="eval" />
            </node>
            <node concept="3oM_SD" id="1imVejV_hL6" role="1PaTwD">
              <property role="3oM_SC" value="result" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kK2" role="1PaTwD">
              <property role="3oM_SC" value="(i.e." />
            </node>
            <node concept="3oM_SD" id="1imVejV_kKn" role="1PaTwD">
              <property role="3oM_SC" value="occurrences)" />
            </node>
            <node concept="3oM_SD" id="1imVejV_hN2" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1imVejV_hNj" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="1imVejV_kL2" role="1PaTwD">
              <property role="3oM_SC" value="known" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1imVejV_lwF" role="3cqZAp">
          <node concept="3cpWsn" id="1imVejV_lwG" role="3cpWs9">
            <property role="TrG5h" value="cachedResultsFilter" />
            <node concept="3uibUv" id="1imVejV_lwH" role="1tU5fm">
              <ref role="3uigEE" to="i348:1imVejVxYQd" resolve="TemplateApplicationFilter" />
            </node>
            <node concept="2OqwBi" id="1imVejVAsJW" role="33vP2m">
              <node concept="37vLTw" id="1imVejVAsqq" role="2Oq$k0">
                <ref role="3cqZAo" node="1imVejVAllg" resolve="occurrenceCache" />
              </node>
              <node concept="liA8E" id="1imVejVAt8M" role="2OqNvi">
                <ref role="37wK5l" to="i348:1imVejV_97e" resolve="toFilter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1imVejV_lH8" role="3cqZAp" />
        <node concept="3SKdUt" id="cmlg9OD01S" role="3cqZAp">
          <node concept="1PaTwC" id="cmlg9OD01T" role="1aUNEU">
            <node concept="3oM_SD" id="cmlg9OD01V" role="1PaTwD">
              <property role="3oM_SC" value="origin" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2nR" role="1PaTwD">
              <property role="3oM_SC" value="index" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2oc" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2oy" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2oT" role="1PaTwD">
              <property role="3oM_SC" value="stored" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2p8" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2po" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2pw" role="1PaTwD">
              <property role="3oM_SC" value="resulting" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2q4" role="1PaTwD">
              <property role="3oM_SC" value="program" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="cmlg9OD2Ve" role="3cqZAp">
          <node concept="1PaTwC" id="cmlg9OD2Vf" role="1aUNEU">
            <node concept="3oM_SD" id="cmlg9OD4oM" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4oX" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4p0" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4pm" role="1PaTwD">
              <property role="3oM_SC" value="templates" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4p$" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4pE" role="1PaTwD">
              <property role="3oM_SC" value="applied" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4q3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4qb" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4qk" role="1PaTwD">
              <property role="3oM_SC" value="source" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4qK" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="cmlg9OD2qU" role="3cqZAp">
          <node concept="1PaTwC" id="cmlg9OD2qV" role="1aUNEU">
            <node concept="3oM_SD" id="cmlg9OD2qX" role="1PaTwD">
              <property role="3oM_SC" value="memoization" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2_N" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2_Q" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2Ac" role="1PaTwD">
              <property role="3oM_SC" value="internally" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2Az" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2AU" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD2Bj" role="1PaTwD">
              <property role="3oM_SC" value="templates" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6OXbTDxQIa7" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDxQIa8" role="3cpWs9">
            <property role="TrG5h" value="factory" />
            <node concept="3uibUv" id="6OXbTDxQIa9" role="1tU5fm">
              <ref role="3uigEE" to="ksgm:12yN8DyF_E1" resolve="ProgramFactory" />
            </node>
            <node concept="2ShNRf" id="6OXbTDxQIaa" role="33vP2m">
              <node concept="1pGfFk" id="6OXbTDxQIab" role="2ShVmc">
                <ref role="37wK5l" to="ksgm:7DvO2M9uuLO" resolve="ProgramFactory" />
                <node concept="37vLTw" id="7i3KM7gkt4C" role="37wK5m">
                  <ref role="3cqZAo" node="7i3KM7gknF0" resolve="planHandler" />
                </node>
                <node concept="37vLTw" id="61G6TdBoPaE" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdBoK17" resolve="applicationSession" />
                </node>
                <node concept="2OqwBi" id="zL5ZaN$NaL" role="37wK5m">
                  <node concept="37vLTw" id="zL5ZaN$NaM" role="2Oq$k0">
                    <ref role="3cqZAo" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
                  </node>
                  <node concept="liA8E" id="zL5ZaN$NaN" role="2OqNvi">
                    <ref role="37wK5l" node="20Ay2VeR9qk" resolve="ruleTemplates" />
                  </node>
                </node>
                <node concept="37vLTw" id="6nFpYluWEsS" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYluW$vz" resolve="originIndex" />
                </node>
                <node concept="37vLTw" id="1imVejV_md6" role="37wK5m">
                  <ref role="3cqZAo" node="1imVejV_lwG" resolve="cachedResultsFilter" />
                </node>
                <node concept="37vLTw" id="6nFpYlukSZ2" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYlu8ju5" resolve="updatesRecorder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="cmlg9OK5HC" role="3cqZAp" />
        <node concept="3cpWs8" id="7kTeLbPnP2A" role="3cqZAp">
          <node concept="3cpWsn" id="7kTeLbPnP2B" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7kTeLbPnP2C" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="1rXfSq" id="4vBwiiVeFWN" role="33vP2m">
              <ref role="37wK5l" node="7kTeLbPg82h" resolve="withMemoizer" />
              <node concept="1bVj0M" id="4vBwiiVeFWO" role="37wK5m">
                <node concept="3clFbS" id="4vBwiiVeFWP" role="1bW5cS">
                  <node concept="3clFbF" id="4vBwiiVeFWQ" role="3cqZAp">
                    <node concept="2Sg_IR" id="4vBwiiVeFWR" role="3clFbG">
                      <node concept="37vLTw" id="4vBwiiVeFWS" role="2SgHGx">
                        <ref role="3cqZAo" node="6OXbTDxQIa8" resolve="factory" />
                      </node>
                      <node concept="37vLTw" id="4vBwiiVeFWU" role="2SgG2M">
                        <ref role="3cqZAo" node="7kTeLbPnFaf" resolve="produceAction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTDxvjN3" role="3cqZAp" />
        <node concept="3SKdUt" id="cmlg9OD4ru" role="3cqZAp">
          <node concept="1PaTwC" id="cmlg9OD4rv" role="1aUNEU">
            <node concept="3oM_SD" id="cmlg9OD4rx" role="1PaTwD">
              <property role="3oM_SC" value="program" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4AG" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4AJ" role="1PaTwD">
              <property role="3oM_SC" value="built" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4AW" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4Bj" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4Bp" role="1PaTwD">
              <property role="3oM_SC" value="second" />
            </node>
            <node concept="3oM_SD" id="cmlg9OD4BL" role="1PaTwD">
              <property role="3oM_SC" value="stage" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="51nMZI9$QRH" role="3cqZAp" />
        <node concept="3cpWs8" id="6tPOoeTaVAX" role="3cqZAp">
          <node concept="3cpWsn" id="6tPOoeTaVAY" role="3cpWs9">
            <property role="TrG5h" value="programBuilder" />
            <node concept="2ShNRf" id="6tPOoeTaVAZ" role="33vP2m">
              <node concept="1pGfFk" id="6tPOoeTaVB0" role="2ShVmc">
                <ref role="37wK5l" node="4baZKvaO3Fj" resolve="ProgramProducer.ProgramBuilder" />
                <node concept="2OqwBi" id="4baZKvaO6tz" role="37wK5m">
                  <node concept="37vLTw" id="4baZKvaO6t$" role="2Oq$k0">
                    <ref role="3cqZAo" node="6OXbTDxQIa8" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="4baZKvaO6t_" role="2OqNvi">
                    <ref role="37wK5l" to="ksgm:4baZKvaJUD7" resolve="getPreambleInfo" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4baZKvaNZHJ" role="1tU5fm">
              <ref role="3uigEE" node="5rhZO$TYZJM" resolve="ProgramProducer.ProgramBuilder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cmlg9O$$EG" role="3cqZAp">
          <node concept="37vLTI" id="cmlg9O$$EH" role="3clFbG">
            <node concept="37vLTw" id="cmlg9O$$EI" role="37vLTJ">
              <ref role="3cqZAo" node="7kTeLbPnP2B" resolve="result" />
            </node>
            <node concept="2OqwBi" id="cmlg9O$$EJ" role="37vLTx">
              <node concept="37vLTw" id="cmlg9O$$EK" role="2Oq$k0">
                <ref role="3cqZAo" node="7kTeLbPnP2B" resolve="result" />
              </node>
              <node concept="liA8E" id="cmlg9O$$EL" role="2OqNvi">
                <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="cmlg9O$$EM" role="37wK5m">
                  <node concept="37vLTw" id="cmlg9O$$EN" role="2Oq$k0">
                    <ref role="3cqZAo" node="6OXbTDxQIa8" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="cmlg9O$B54" role="2OqNvi">
                    <ref role="37wK5l" to="ksgm:7nkyKX7ncaN" resolve="buildProgram" />
                    <node concept="1bVj0M" id="4baZKvaLWNY" role="37wK5m">
                      <node concept="3clFbS" id="4baZKvaLWNZ" role="1bW5cS">
                        <node concept="3clFbF" id="4baZKvaLXy9" role="3cqZAp">
                          <node concept="2OqwBi" id="4baZKvaLXFF" role="3clFbG">
                            <node concept="37vLTw" id="4baZKvaLXy8" role="2Oq$k0">
                              <ref role="3cqZAo" node="6tPOoeTaVAY" resolve="programBuilder" />
                            </node>
                            <node concept="liA8E" id="4baZKvaLXMy" role="2OqNvi">
                              <ref role="37wK5l" node="1XKnVPruHE" resolve="build" />
                              <node concept="37vLTw" id="4baZKvaLXSB" role="37wK5m">
                                <ref role="3cqZAo" node="4baZKvaLWTt" resolve="planHandler" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="4baZKvaLXXg" role="3cqZAp" />
                      </node>
                      <node concept="37vLTG" id="4baZKvaLWTt" role="1bW2Oz">
                        <property role="TrG5h" value="planHandler" />
                        <node concept="3uibUv" id="1XKnVPrt8V" role="1tU5fm">
                          <ref role="3uigEE" to="ksgm:7DvO2M9Uago" resolve="RulesPlanHandler" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="cmlg9OC9fp" role="3cqZAp" />
        <node concept="3clFbJ" id="cmlg9OCavS" role="3cqZAp">
          <node concept="3clFbS" id="cmlg9OCavU" role="3clFbx">
            <node concept="3clFbF" id="6tPOoeTb3FO" role="3cqZAp">
              <node concept="37vLTI" id="6tPOoeTb4EN" role="3clFbG">
                <node concept="2OqwBi" id="6tPOoeTb4Rp" role="37vLTx">
                  <node concept="37vLTw" id="6tPOoeTb4Ki" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tPOoeTaVAY" resolve="programBuilder" />
                  </node>
                  <node concept="liA8E" id="6tPOoeTb4ZE" role="2OqNvi">
                    <ref role="37wK5l" node="5rhZO$TZiL1" resolve="toProgram" />
                    <node concept="37vLTw" id="6tPOoeTb8N4" role="37wK5m">
                      <ref role="3cqZAo" node="6OXbTDxtYkB" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6tPOoeTb47l" role="37vLTJ">
                  <node concept="Xjq3P" id="6tPOoeTb3FM" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6tPOoeTb4lL" role="2OqNvi">
                    <ref role="2Oxat5" node="1pPth$lE8Xs" resolve="program" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1imVejVAz4t" role="3cqZAp">
              <node concept="37vLTI" id="1imVejVB2DR" role="3clFbG">
                <node concept="2OqwBi" id="1imVejVB2QO" role="37vLTx">
                  <node concept="37vLTw" id="1imVejVB2Hs" role="2Oq$k0">
                    <ref role="3cqZAo" node="1imVejVAllg" resolve="occurrenceCache" />
                  </node>
                  <node concept="liA8E" id="1imVejVB32M" role="2OqNvi">
                    <ref role="37wK5l" to="i348:1imVejVABtA" resolve="getAll" />
                    <node concept="2OqwBi" id="1imVejVB3AY" role="37wK5m">
                      <node concept="37vLTw" id="1imVejVB3f4" role="2Oq$k0">
                        <ref role="3cqZAo" node="1imVejV_lwG" resolve="cachedResultsFilter" />
                      </node>
                      <node concept="liA8E" id="1imVejVB3P5" role="2OqNvi">
                        <ref role="37wK5l" to="i348:1imVejVyfmY" resolve="getSkippedApplications" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1imVejVAzcK" role="37vLTJ">
                  <node concept="Xjq3P" id="1imVejVAz4r" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1imVejVAzjA" role="2OqNvi">
                    <ref role="2Oxat5" node="1imVejVAyjK" resolve="initialStore" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="cmlg9OCaMk" role="3clFbw">
            <node concept="37vLTw" id="cmlg9OCaBS" role="2Oq$k0">
              <ref role="3cqZAo" node="7kTeLbPnP2B" resolve="result" />
            </node>
            <node concept="liA8E" id="cmlg9OCaV3" role="2OqNvi">
              <ref role="37wK5l" to="psoy:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7kTeLbPnP3O" role="3cqZAp" />
        <node concept="3clFbF" id="7kTeLbPnP3P" role="3cqZAp">
          <node concept="37vLTw" id="7kTeLbPnP3Q" role="3clFbG">
            <ref role="3cqZAo" node="7kTeLbPnP2B" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cmlg9OJhKU" role="jymVt" />
    <node concept="2tJIrI" id="3GlpCDSyN7T" role="jymVt" />
    <node concept="3clFb_" id="7kTeLbPg82h" role="jymVt">
      <property role="TrG5h" value="withMemoizer" />
      <node concept="37vLTG" id="7kTeLbPgbOI" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="1ajhzC" id="7kTeLbPgemd" role="1tU5fm">
          <node concept="3uibUv" id="7kTeLbPgeo8" role="1ajl9A">
            <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7kTeLbPgdQB" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="7kTeLbPg96d" role="1B3o_S" />
      <node concept="3clFbS" id="7kTeLbPg82l" role="3clF47">
        <node concept="3clFbF" id="7kTeLbPgepw" role="3cqZAp">
          <node concept="2YIFZM" id="5wYq9r5EDbH" role="3clFbG">
            <ref role="37wK5l" to="lehm:2tjs8VC1byF" resolve="push" />
            <ref role="1Pybhc" to="lehm:2tjs8VC0K0m" resolve="Memoizer" />
          </node>
        </node>
        <node concept="3J1_TO" id="7kTeLbPgepy" role="3cqZAp">
          <node concept="3clFbS" id="7kTeLbPgepz" role="1zxBo7">
            <node concept="3cpWs6" id="7kTeLbPgf8u" role="3cqZAp">
              <node concept="2Sg_IR" id="7kTeLbPgfKb" role="3cqZAk">
                <node concept="37vLTw" id="7kTeLbPgfKc" role="2SgG2M">
                  <ref role="3cqZAo" node="7kTeLbPgbOI" resolve="action" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7kTeLbPgf2y" role="3cqZAp" />
          </node>
          <node concept="1wplmZ" id="aYozK66ZtW9" role="1zxBo6">
            <node concept="3clFbS" id="7kTeLbPgepI" role="1wplMD">
              <node concept="3clFbF" id="7kTeLbPgepJ" role="3cqZAp">
                <node concept="2YIFZM" id="5wYq9r5EDbJ" role="3clFbG">
                  <ref role="37wK5l" to="lehm:2tjs8VC1f3O" resolve="pop" />
                  <ref role="1Pybhc" to="lehm:2tjs8VC0K0m" resolve="Memoizer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$$Q_FeUgEv" role="jymVt" />
    <node concept="312cEu" id="5rhZO$TYZJM" role="jymVt">
      <property role="TrG5h" value="ProgramBuilder" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="5rhZO$TZ4oM" role="jymVt" />
      <node concept="3clFbW" id="4baZKvaO3Fj" role="jymVt">
        <node concept="3cqZAl" id="4baZKvaO3Fl" role="3clF45" />
        <node concept="3clFbS" id="4baZKvaO3Fm" role="3clF47">
          <node concept="3clFbF" id="4baZKvaO4Re" role="3cqZAp">
            <node concept="37vLTI" id="4baZKvaO5fx" role="3clFbG">
              <node concept="37vLTw" id="4baZKvaO5mk" role="37vLTx">
                <ref role="3cqZAo" node="4baZKvaO4xK" resolve="preambleInfo" />
              </node>
              <node concept="2OqwBi" id="4baZKvaO4WS" role="37vLTJ">
                <node concept="Xjq3P" id="4baZKvaO4Rd" role="2Oq$k0" />
                <node concept="2OwXpG" id="4baZKvaO53_" role="2OqNvi">
                  <ref role="2Oxat5" node="5HxDM7DeEec" resolve="preambleInfo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4baZKvaO4xK" role="3clF46">
          <property role="TrG5h" value="preambleInfo" />
          <node concept="3uibUv" id="4baZKvaO4If" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~PreambleInfo" resolve="PreambleInfo" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4baZKvaO2OU" role="jymVt" />
      <node concept="3clFb_" id="5rhZO$TZiL1" role="jymVt">
        <property role="TrG5h" value="toProgram" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5rhZO$TZiL2" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="5rhZO$TZiL3" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="5rhZO$U0jE9" role="3clF45">
          <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
        </node>
        <node concept="3Tm1VV" id="5rhZO$TZiL7" role="1B3o_S" />
        <node concept="3clFbS" id="5rhZO$TZiL9" role="3clF47">
          <node concept="3clFbF" id="5rhZO$TZjg5" role="3cqZAp">
            <node concept="2ShNRf" id="5rhZO$TZjg3" role="3clFbG">
              <node concept="1pGfFk" id="5rhZO$TZlOE" role="2ShVmc">
                <ref role="37wK5l" to="ksgm:7eGEHDlcF69" resolve="CodeRulesProgram" />
                <node concept="37vLTw" id="5rhZO$TZlPA" role="37wK5m">
                  <ref role="3cqZAo" node="5rhZO$TZiL2" resolve="name" />
                </node>
                <node concept="37vLTw" id="1XKnVPvt8x" role="37wK5m">
                  <ref role="3cqZAo" node="1XKnVPvqtB" resolve="rulesPlan" />
                </node>
                <node concept="37vLTw" id="4baZKvaO2DR" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYluW$vz" resolve="originIndex" />
                </node>
                <node concept="37vLTw" id="5HxDM7DeMr3" role="37wK5m">
                  <ref role="3cqZAo" node="5HxDM7DeEec" resolve="preambleInfo" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1XKnVPrtmA" role="jymVt" />
      <node concept="3clFb_" id="1XKnVPruHE" role="jymVt">
        <property role="TrG5h" value="build" />
        <node concept="37vLTG" id="1XKnVPry7n" role="3clF46">
          <property role="TrG5h" value="planHandler" />
          <node concept="3uibUv" id="1XKnVPrz4$" role="1tU5fm">
            <ref role="3uigEE" to="ksgm:7DvO2M9Uago" resolve="RulesPlanHandler" />
          </node>
        </node>
        <node concept="3uibUv" id="1XKnVPrwGm" role="3clF45">
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3clFbS" id="1XKnVPruHH" role="3clF47">
          <node concept="3clFbF" id="1XKnVPtF9v" role="3cqZAp">
            <node concept="2OqwBi" id="1XKnVPrzCF" role="3clFbG">
              <node concept="37vLTw" id="1XKnVPrzwu" role="2Oq$k0">
                <ref role="3cqZAo" node="1XKnVPry7n" resolve="planHandler" />
              </node>
              <node concept="liA8E" id="1XKnVPrzNY" role="2OqNvi">
                <ref role="37wK5l" to="ksgm:7DvO2M9UagU" resolve="buildPlan" />
                <node concept="37vLTw" id="1XKnVPwu3u" role="37wK5m">
                  <ref role="3cqZAo" node="1XKnVPvqtB" resolve="rulesPlan" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1XKnVPrvOO" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="7eGEHDldnO1" role="jymVt" />
      <node concept="312cEg" id="1XKnVPvqtB" role="jymVt">
        <property role="TrG5h" value="rulesPlan" />
        <node concept="3Tm6S6" id="1XKnVPvqtC" role="1B3o_S" />
        <node concept="3uibUv" id="1XKnVPvrnb" role="1tU5fm">
          <ref role="3uigEE" to="ksgm:1XKnVPsWNc" resolve="RulesPlan" />
        </node>
        <node concept="2ShNRf" id="1XKnVPvryP" role="33vP2m">
          <node concept="HV5vD" id="1XKnVPvsdD" role="2ShVmc">
            <ref role="HV5vE" to="ksgm:1XKnVPsWNc" resolve="RulesPlan" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="5HxDM7DeEec" role="jymVt">
        <property role="TrG5h" value="preambleInfo" />
        <node concept="3Tm6S6" id="5HxDM7DeEed" role="1B3o_S" />
        <node concept="3uibUv" id="5HxDM7DeEef" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PreambleInfo" resolve="PreambleInfo" />
        </node>
        <node concept="10M0yZ" id="5HxDM7Dft6c" role="33vP2m">
          <ref role="3cqZAo" to="av0y:~PreambleInfo.EMPTY" resolve="EMPTY" />
          <ref role="1PxDUh" to="av0y:~PreambleInfo" resolve="PreambleInfo" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4baZKvaOapj" role="jymVt" />
    <node concept="312cEg" id="1pPth$lE8Xs" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="program" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="6tPOoeTaWdU" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
      </node>
      <node concept="3Tm6S6" id="3GlpCDSyB5g" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="3GlpCDSxTG8" role="1B3o_S" />
    <node concept="312cEg" id="39eNUjlYVVK" role="jymVt">
      <property role="TrG5h" value="trace" />
      <node concept="3Tm6S6" id="39eNUjlYU5v" role="1B3o_S" />
      <node concept="3uibUv" id="39eNUjlYVT2" role="1tU5fm">
        <ref role="3uigEE" node="39eNUjlSJ9Q" resolve="TemplateTrace" />
      </node>
      <node concept="10M0yZ" id="4tC1JBnm7rL" role="33vP2m">
        <ref role="3cqZAo" node="39eNUjlX_RD" resolve="NULL" />
        <ref role="1PxDUh" node="39eNUjlSJ9Q" resolve="TemplateTrace" />
      </node>
    </node>
    <node concept="2tJIrI" id="39eNUjlYUDL" role="jymVt" />
    <node concept="312cEg" id="61G6TdBoK17" role="jymVt">
      <property role="TrG5h" value="applicationSession" />
      <node concept="3Tm6S6" id="61G6TdBoK18" role="1B3o_S" />
      <node concept="3uibUv" id="61G6TdBpBFP" role="1tU5fm">
        <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
      </node>
    </node>
    <node concept="312cEg" id="7WKNeR9bpBf" role="jymVt">
      <property role="TrG5h" value="ruleProcessingSession" />
      <node concept="3Tm6S6" id="7WKNeR9bpBg" role="1B3o_S" />
      <node concept="3uibUv" id="7WKNeR9bpBi" role="1tU5fm">
        <ref role="3uigEE" node="CGeqIk8WWU" resolve="RuleProcessingSession" />
      </node>
    </node>
    <node concept="312cEg" id="7WKNeR9b_iR" role="jymVt">
      <property role="TrG5h" value="queryTemplate" />
      <node concept="3Tm6S6" id="7WKNeR9b_iS" role="1B3o_S" />
      <node concept="3uibUv" id="6OXbTD$kSq3" role="1tU5fm">
        <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
      </node>
    </node>
    <node concept="312cEg" id="6OXbTDxtYkB" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="6OXbTDxtYkC" role="1B3o_S" />
      <node concept="17QB3L" id="6OXbTDxtYkE" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6nFpYlu8ju5" role="jymVt">
      <property role="TrG5h" value="updatesRecorder" />
      <node concept="3Tm6S6" id="6nFpYlu8ju6" role="1B3o_S" />
      <node concept="3uibUv" id="6nFpYlu8jSS" role="1tU5fm">
        <ref role="3uigEE" to="ksgm:6nFpYlu02jD" resolve="UpdatesRecorder" />
      </node>
    </node>
    <node concept="312cEg" id="6nFpYluW$vz" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <node concept="3Tm6S6" id="6nFpYluW$v$" role="1B3o_S" />
      <node concept="3uibUv" id="6nFpYluW$vA" role="1tU5fm">
        <ref role="3uigEE" to="ksgm:70Wv0dJhQb2" resolve="OriginIndex" />
      </node>
    </node>
    <node concept="2tJIrI" id="1imVejVAwd$" role="jymVt" />
    <node concept="312cEg" id="1imVejVAllg" role="jymVt">
      <property role="TrG5h" value="occurrenceCache" />
      <node concept="3Tm6S6" id="1imVejVAkDa" role="1B3o_S" />
      <node concept="3uibUv" id="1imVejVAljZ" role="1tU5fm">
        <ref role="3uigEE" to="i348:1imVejVtN6P" resolve="PrincipalStore" />
      </node>
    </node>
    <node concept="312cEg" id="1imVejVAyjK" role="jymVt">
      <property role="TrG5h" value="initialStore" />
      <node concept="3Tm6S6" id="1imVejVAxyv" role="1B3o_S" />
      <node concept="3vKaQO" id="1imVejVB40g" role="1tU5fm">
        <node concept="3uibUv" id="1imVejVB4C7" role="3O5elw">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="2YIFZM" id="1imVejVB8x2" role="33vP2m">
        <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTD$xs00" role="jymVt" />
  </node>
  <node concept="312cEu" id="3pMFS1zdqns">
    <property role="TrG5h" value="SubstituteUtil" />
    <node concept="2tJIrI" id="3pMFS1zdqnt" role="jymVt" />
    <node concept="2YIFZL" id="3pMFS1zdqnu" role="jymVt">
      <property role="TrG5h" value="subst" />
      <node concept="37vLTG" id="3pMFS1zdqnv" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3uibUv" id="3pMFS1zdqnw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3pMFS1zds16" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="3pMFS1zds7c" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3pMFS1zdsai" role="3clF46">
        <property role="TrG5h" value="replacement" />
        <node concept="3uibUv" id="3pMFS1zdsgs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3pMFS1zdqnx" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="3pMFS1zdqny" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3uibUv" id="3pMFS1zdqnz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="3pMFS1zdqn$" role="1B3o_S" />
      <node concept="3clFbS" id="3pMFS1zdqn_" role="3clF47">
        <node concept="3cpWs8" id="3pMFS1zdqnA" role="3cqZAp">
          <node concept="3cpWsn" id="3pMFS1zdqnB" role="3cpWs9">
            <property role="TrG5h" value="origForm" />
            <node concept="3uibUv" id="3pMFS1zdqnC" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="37vLTw" id="3pMFS1zdqnD" role="33vP2m">
              <ref role="3cqZAo" node="3pMFS1zdqnv" resolve="origin" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3pMFS1zdqnE" role="3cqZAp">
          <node concept="3clFbS" id="3pMFS1zdqnF" role="3clFbx">
            <node concept="3clFbF" id="3pMFS1zdqnG" role="3cqZAp">
              <node concept="37vLTI" id="3pMFS1zdqnH" role="3clFbG">
                <node concept="2OqwBi" id="3pMFS1zdqnI" role="37vLTx">
                  <node concept="2OqwBi" id="3pMFS1zdqnJ" role="2Oq$k0">
                    <node concept="1eOMI4" id="3pMFS1zdqnK" role="2Oq$k0">
                      <node concept="10QFUN" id="3pMFS1zdqnL" role="1eOMHV">
                        <node concept="3uibUv" id="3pMFS1zdqnM" role="10QFUM">
                          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                          <node concept="3qTvmN" id="3pMFS1zdqnN" role="11_B2D" />
                        </node>
                        <node concept="37vLTw" id="3pMFS1zdqnO" role="10QFUP">
                          <ref role="3cqZAo" node="3pMFS1zdqnv" resolve="origin" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3pMFS1zdqnP" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot()" resolve="findRoot" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3pMFS1zdqnQ" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                  </node>
                </node>
                <node concept="37vLTw" id="3pMFS1zdqnR" role="37vLTJ">
                  <ref role="3cqZAo" node="3pMFS1zdqnB" resolve="origForm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3pMFS1zdqnS" role="3clFbw">
            <node concept="3uibUv" id="3pMFS1zdqnT" role="2ZW6by">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            </node>
            <node concept="37vLTw" id="3pMFS1zdqnU" role="2ZW6bz">
              <ref role="3cqZAo" node="3pMFS1zdqnv" resolve="origin" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3pMFS1zdIDk" role="3cqZAp" />
        <node concept="3cpWs8" id="3pMFS1zdF5H" role="3cqZAp">
          <node concept="3cpWsn" id="3pMFS1zdF5I" role="3cpWs9">
            <property role="TrG5h" value="patternForm" />
            <node concept="3uibUv" id="3pMFS1zdF5J" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="37vLTw" id="3pMFS1zdFs2" role="33vP2m">
              <ref role="3cqZAo" node="3pMFS1zds16" resolve="pattern" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3pMFS1zdFA4" role="3cqZAp">
          <node concept="3clFbS" id="3pMFS1zdFA6" role="3clFbx">
            <node concept="3clFbF" id="3pMFS1zdGo$" role="3cqZAp">
              <node concept="37vLTI" id="3pMFS1zdGA_" role="3clFbG">
                <node concept="37vLTw" id="3pMFS1zdGoz" role="37vLTJ">
                  <ref role="3cqZAo" node="3pMFS1zdF5I" resolve="patternForm" />
                </node>
                <node concept="2OqwBi" id="3pMFS1zdGE2" role="37vLTx">
                  <node concept="2OqwBi" id="3pMFS1zdGE3" role="2Oq$k0">
                    <node concept="1eOMI4" id="3pMFS1zdGE4" role="2Oq$k0">
                      <node concept="10QFUN" id="3pMFS1zdGE5" role="1eOMHV">
                        <node concept="3uibUv" id="3pMFS1zdGE6" role="10QFUM">
                          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                          <node concept="3qTvmN" id="3pMFS1zdGE7" role="11_B2D" />
                        </node>
                        <node concept="37vLTw" id="3pMFS1zdGTA" role="10QFUP">
                          <ref role="3cqZAo" node="3pMFS1zds16" resolve="pattern" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3pMFS1zdGE9" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot()" resolve="findRoot" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3pMFS1zdGEa" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3pMFS1zdFVc" role="3clFbw">
            <node concept="3uibUv" id="3pMFS1zdG2B" role="2ZW6by">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            </node>
            <node concept="37vLTw" id="3pMFS1zdFHv" role="2ZW6bz">
              <ref role="3cqZAo" node="3pMFS1zds16" resolve="pattern" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3pMFS1zdEIP" role="3cqZAp" />
        <node concept="3cpWs8" id="3pMFS1zdJbv" role="3cqZAp">
          <node concept="3cpWsn" id="3pMFS1zdJbw" role="3cpWs9">
            <property role="TrG5h" value="replForm" />
            <node concept="3uibUv" id="3pMFS1zdJbx" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="37vLTw" id="3pMFS1zdJAt" role="33vP2m">
              <ref role="3cqZAo" node="3pMFS1zdsai" resolve="replacement" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3pMFS1zdJMb" role="3cqZAp">
          <node concept="3clFbS" id="3pMFS1zdJMd" role="3clFbx">
            <node concept="3clFbF" id="3pMFS1zdKo0" role="3cqZAp">
              <node concept="37vLTI" id="3pMFS1zdKo1" role="3clFbG">
                <node concept="37vLTw" id="3pMFS1zdL1W" role="37vLTJ">
                  <ref role="3cqZAo" node="3pMFS1zdJbw" resolve="replForm" />
                </node>
                <node concept="2ShNRf" id="3pMFS1zlzeG" role="37vLTx">
                  <node concept="1pGfFk" id="3pMFS1zlzG9" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalDataForm" />
                    <node concept="10QFUN" id="3pMFS1zlzWI" role="37wK5m">
                      <node concept="3uibUv" id="3pMFS1zlzWF" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                        <node concept="3qTvmN" id="3pMFS1zl$cy" role="11_B2D" />
                      </node>
                      <node concept="37vLTw" id="3pMFS1zlzWH" role="10QFUP">
                        <ref role="3cqZAo" node="3pMFS1zdsai" resolve="replacement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3pMFS1zdKaf" role="3clFbw">
            <node concept="3uibUv" id="3pMFS1zdKiV" role="2ZW6by">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            </node>
            <node concept="37vLTw" id="3pMFS1zdJVh" role="2ZW6bz">
              <ref role="3cqZAo" node="3pMFS1zdsai" resolve="replacement" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3pMFS1zdMHL" role="3cqZAp" />
        <node concept="3clFbJ" id="3pMFS1zdqnW" role="3cqZAp">
          <node concept="3clFbS" id="3pMFS1zdqnX" role="3clFbx">
            <node concept="3cpWs8" id="2dF51l1dRXT" role="3cqZAp">
              <node concept="3cpWsn" id="2dF51l1dRXU" role="3cpWs9">
                <property role="TrG5h" value="groundPatternForm" />
                <node concept="3uibUv" id="2dF51l1dRXQ" role="1tU5fm">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="2YIFZM" id="2dF51l1dRZC" role="33vP2m">
                  <ref role="37wK5l" to="6exd:6HT7BWBOXr$" resolve="ground" />
                  <ref role="1Pybhc" to="6exd:6HT7BWBOXme" resolve="DataFormUtil" />
                  <node concept="10QFUN" id="2dF51l1dRXV" role="37wK5m">
                    <node concept="3uibUv" id="2dF51l1dRXW" role="10QFUM">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                    <node concept="37vLTw" id="2dF51l1dRXX" role="10QFUP">
                      <ref role="3cqZAo" node="3pMFS1zdF5I" resolve="patternForm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3pMFS1znIY_" role="3cqZAp">
              <node concept="3cpWsn" id="3pMFS1znIYA" role="3cpWs9">
                <property role="TrG5h" value="groundOrigForm" />
                <node concept="3uibUv" id="3pMFS1znIY$" role="1tU5fm">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="2YIFZM" id="3pMFS1znIYB" role="33vP2m">
                  <ref role="37wK5l" to="6exd:6HT7BWBOXr$" resolve="ground" />
                  <ref role="1Pybhc" to="6exd:6HT7BWBOXme" resolve="DataFormUtil" />
                  <node concept="10QFUN" id="3pMFS1znIYC" role="37wK5m">
                    <node concept="3uibUv" id="3pMFS1znIYD" role="10QFUM">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                    <node concept="37vLTw" id="3pMFS1znIYE" role="10QFUP">
                      <ref role="3cqZAo" node="3pMFS1zdqnB" resolve="origForm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2dF51l1dRZH" role="3cqZAp" />
            <node concept="3cpWs8" id="3pMFS1znIGc" role="3cqZAp">
              <node concept="3cpWsn" id="3pMFS1znIGd" role="3cpWs9">
                <property role="TrG5h" value="substDelegate" />
                <node concept="3uibUv" id="3pMFS1znIG5" role="1tU5fm">
                  <ref role="3uigEE" node="3pMFS1zdqof" resolve="SubstituteUtil.SubstDelegate" />
                </node>
                <node concept="2ShNRf" id="3pMFS1znIGe" role="33vP2m">
                  <node concept="1pGfFk" id="3pMFS1znIGf" role="2ShVmc">
                    <ref role="37wK5l" node="3pMFS1zdqoj" resolve="SubstituteUtil.SubstDelegate" />
                    <node concept="37vLTw" id="2dF51l1dRXY" role="37wK5m">
                      <ref role="3cqZAo" node="2dF51l1dRXU" resolve="groundPatternForm" />
                    </node>
                    <node concept="10QFUN" id="3pMFS1znIGj" role="37wK5m">
                      <node concept="3uibUv" id="3pMFS1znIGk" role="10QFUM">
                        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                      </node>
                      <node concept="37vLTw" id="3pMFS1znIGl" role="10QFUP">
                        <ref role="3cqZAo" node="3pMFS1zdJbw" resolve="replForm" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3pMFS1znIGm" role="37wK5m">
                      <ref role="3cqZAo" node="3pMFS1zdqnx" resolve="logicalContext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2dF51l1dRVb" role="3cqZAp" />
            <node concept="3cpWs6" id="3pMFS1zdqnY" role="3cqZAp">
              <node concept="2OqwBi" id="3pMFS1zdqnZ" role="3cqZAk">
                <node concept="2YIFZM" id="3pMFS1zdqo0" role="2Oq$k0">
                  <ref role="1Pybhc" to="6exd:3OPtF02T8yx" resolve="Mappers" />
                  <ref role="37wK5l" to="6exd:5s497VqteR6" resolve="mapper" />
                  <node concept="37vLTw" id="3pMFS1znIGn" role="37wK5m">
                    <ref role="3cqZAo" node="3pMFS1znIGd" resolve="substDelegate" />
                  </node>
                </node>
                <node concept="liA8E" id="3pMFS1zdqo4" role="2OqNvi">
                  <ref role="37wK5l" to="6exd:3OPtF02TgQt" resolve="map" />
                  <node concept="37vLTw" id="3pMFS1znIYF" role="37wK5m">
                    <ref role="3cqZAo" node="3pMFS1znIYA" resolve="groundOrigForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3pMFS1zdLQ2" role="3clFbw">
            <node concept="2ZW3vV" id="3pMFS1zdMhx" role="3uHU7w">
              <node concept="3uibUv" id="3pMFS1zdMmz" role="2ZW6by">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="3pMFS1zlUbQ" role="2ZW6bz">
                <ref role="3cqZAo" node="3pMFS1zdJbw" resolve="replForm" />
              </node>
            </node>
            <node concept="1Wc70l" id="3pMFS1zdI29" role="3uHU7B">
              <node concept="2ZW3vV" id="3pMFS1zdqo8" role="3uHU7B">
                <node concept="3uibUv" id="3pMFS1zdqo9" role="2ZW6by">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="37vLTw" id="3pMFS1zdqoa" role="2ZW6bz">
                  <ref role="3cqZAo" node="3pMFS1zdqnB" resolve="origForm" />
                </node>
              </node>
              <node concept="2ZW3vV" id="3pMFS1zdIuP" role="3uHU7w">
                <node concept="3uibUv" id="3pMFS1zdIz_" role="2ZW6by">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="37vLTw" id="3pMFS1zdIcI" role="2ZW6bz">
                  <ref role="3cqZAo" node="3pMFS1zdF5I" resolve="patternForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3pMFS1zdqob" role="3cqZAp" />
        <node concept="3clFbF" id="3pMFS1zdqoc" role="3cqZAp">
          <node concept="37vLTw" id="3pMFS1zdqod" role="3clFbG">
            <ref role="3cqZAo" node="3pMFS1zdqnv" resolve="origin" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3pMFS1zdvs$" role="jymVt" />
    <node concept="312cEu" id="3pMFS1zdqof" role="jymVt">
      <property role="TrG5h" value="SubstDelegate" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="2tJIrI" id="3pMFS1zdqog" role="jymVt" />
      <node concept="3Tm6S6" id="3pMFS1zdqoh" role="1B3o_S" />
      <node concept="3uibUv" id="3pMFS1zdqoi" role="EKbjA">
        <ref role="3uigEE" to="6exd:3OPtF031GQe" resolve="Mappers.MapDelegate" />
      </node>
      <node concept="3clFbW" id="3pMFS1zdqoj" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="3pMFS1zdqok" role="3clF45" />
        <node concept="37vLTG" id="3pMFS1zdEoF" role="3clF46">
          <property role="TrG5h" value="patternForm" />
          <node concept="3uibUv" id="3pMFS1zdMRH" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="37vLTG" id="3pMFS1zdNt1" role="3clF46">
          <property role="TrG5h" value="replacementForm" />
          <node concept="3uibUv" id="3pMFS1zdNt2" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="37vLTG" id="3pMFS1zdqol" role="3clF46">
          <property role="TrG5h" value="logicalContext" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3pMFS1zdqom" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
          </node>
        </node>
        <node concept="3clFbS" id="3pMFS1zdqon" role="3clF47">
          <node concept="3clFbF" id="3pMFS1zdqoo" role="3cqZAp">
            <node concept="37vLTI" id="3pMFS1zdqop" role="3clFbG">
              <node concept="2OqwBi" id="3pMFS1zdqoq" role="37vLTJ">
                <node concept="Xjq3P" id="3pMFS1zdqor" role="2Oq$k0" />
                <node concept="2OwXpG" id="3pMFS1zdqos" role="2OqNvi">
                  <ref role="2Oxat5" node="3pMFS1zdqqi" resolve="logicalContext" />
                </node>
              </node>
              <node concept="37vLTw" id="3pMFS1zdqot" role="37vLTx">
                <ref role="3cqZAo" node="3pMFS1zdqol" resolve="logicalContext" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3pMFS1zdOFe" role="3cqZAp">
            <node concept="37vLTI" id="3pMFS1zdOFg" role="3clFbG">
              <node concept="2OqwBi" id="3pMFS1zdPMQ" role="37vLTJ">
                <node concept="Xjq3P" id="3pMFS1zdPQ9" role="2Oq$k0" />
                <node concept="2OwXpG" id="3pMFS1zdPMT" role="2OqNvi">
                  <ref role="2Oxat5" node="3pMFS1zdOFa" resolve="patternForm" />
                </node>
              </node>
              <node concept="37vLTw" id="3pMFS1zdOFk" role="37vLTx">
                <ref role="3cqZAo" node="3pMFS1zdEoF" resolve="patternForm" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3pMFS1zdPaP" role="3cqZAp">
            <node concept="37vLTI" id="3pMFS1zdPaR" role="3clFbG">
              <node concept="2OqwBi" id="3pMFS1zdPU4" role="37vLTJ">
                <node concept="Xjq3P" id="3pMFS1zdPXn" role="2Oq$k0" />
                <node concept="2OwXpG" id="3pMFS1zdPU7" role="2OqNvi">
                  <ref role="2Oxat5" node="3pMFS1zdPaL" resolve="replacementForm" />
                </node>
              </node>
              <node concept="37vLTw" id="3pMFS1zdPaV" role="37vLTx">
                <ref role="3cqZAo" node="3pMFS1zdNt1" resolve="replacementForm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3pMFS1zdqou" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3pMFS1zdqov" role="jymVt" />
      <node concept="3clFb_" id="3pMFS1zdqow" role="jymVt">
        <property role="TrG5h" value="canMap" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="37vLTG" id="3pMFS1zdqox" role="3clF46">
          <property role="TrG5h" value="tf" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3pMFS1zdqoy" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="3clFbS" id="3pMFS1zdqoz" role="3clF47">
          <node concept="3clFbF" id="3pMFS1zmlYt" role="3cqZAp">
            <node concept="3clFbT" id="3pMFS1zmlYs" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3pMFS1zdqoE" role="1B3o_S" />
        <node concept="10P_77" id="3pMFS1zdqoF" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="3pMFS1zdqoG" role="jymVt" />
      <node concept="3clFb_" id="3pMFS1zdqoH" role="jymVt">
        <property role="TrG5h" value="map" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="37vLTG" id="3pMFS1zdqoI" role="3clF46">
          <property role="TrG5h" value="tf" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3pMFS1zdqoJ" role="1tU5fm">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="37vLTG" id="3pMFS1zdqoK" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3pMFS1zdqoL" role="1tU5fm">
            <ref role="3uigEE" to="6exd:3OPtF02TdNT" resolve="DataForm.Mapper" />
          </node>
        </node>
        <node concept="3clFbS" id="3pMFS1zdqoM" role="3clF47">
          <node concept="3clFbJ" id="2dF51l166zF" role="3cqZAp">
            <node concept="3clFbS" id="2dF51l166zH" role="3clFbx">
              <node concept="3cpWs6" id="2dF51l167BC" role="3cqZAp">
                <node concept="2OqwBi" id="2dF51l167BD" role="3cqZAk">
                  <node concept="2YIFZM" id="2dF51l167BE" role="2Oq$k0">
                    <ref role="37wK5l" to="6exd:5s497VqteR6" resolve="mapper" />
                    <ref role="1Pybhc" to="6exd:3OPtF02T8yx" resolve="Mappers" />
                    <node concept="37vLTw" id="2dF51l167BF" role="37wK5m">
                      <ref role="3cqZAo" node="3pMFS1zeln4" resolve="copyDelegate" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2dF51l167BG" role="2OqNvi">
                    <ref role="37wK5l" to="6exd:3OPtF02TgQt" resolve="map" />
                    <node concept="37vLTw" id="2dF51l167BH" role="37wK5m">
                      <ref role="3cqZAo" node="3pMFS1zdPaL" resolve="replacementForm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2dF51l166zG" role="3cqZAp" />
            </node>
            <node concept="9aQIb" id="2dF51l167C_" role="9aQIa">
              <node concept="3clFbS" id="2dF51l167CA" role="9aQI4">
                <node concept="3cpWs6" id="2dF51l167CD" role="3cqZAp">
                  <node concept="2OqwBi" id="2dF51l167CE" role="3cqZAk">
                    <node concept="37vLTw" id="2dF51l167CF" role="2Oq$k0">
                      <ref role="3cqZAo" node="3pMFS1zdqoI" resolve="tf" />
                    </node>
                    <node concept="liA8E" id="2dF51l167CG" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                      <node concept="37vLTw" id="2dF51l167CH" role="37wK5m">
                        <ref role="3cqZAo" node="3pMFS1zdqoK" resolve="fallback" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6SwZmzBHL5n" role="3clFbw">
              <node concept="37vLTw" id="6SwZmzBHKyW" role="2Oq$k0">
                <ref role="3cqZAo" node="6SwZmzBz6$Y" resolve="eqSolver" />
              </node>
              <node concept="liA8E" id="6SwZmzBHUlY" role="2OqNvi">
                <ref role="37wK5l" node="6SwZmzBHSfW" resolve="askEq" />
                <node concept="37vLTw" id="6SwZmzBHVIe" role="37wK5m">
                  <ref role="3cqZAo" node="3pMFS1zdOFa" resolve="patternForm" />
                </node>
                <node concept="37vLTw" id="6SwZmzBHW19" role="37wK5m">
                  <ref role="3cqZAo" node="3pMFS1zdqoI" resolve="tf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3pMFS1zdqqf" role="1B3o_S" />
        <node concept="3uibUv" id="3pMFS1zdqqg" role="3clF45">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="2tJIrI" id="3pMFS1zdqqh" role="jymVt" />
      <node concept="312cEg" id="3pMFS1zeln4" role="jymVt">
        <property role="TrG5h" value="copyDelegate" />
        <node concept="3Tm6S6" id="3pMFS1zeln5" role="1B3o_S" />
        <node concept="3uibUv" id="3pMFS1zem09" role="1tU5fm">
          <ref role="3uigEE" to="6exd:3OPtF031GQe" resolve="Mappers.MapDelegate" />
        </node>
        <node concept="2ShNRf" id="3pMFS1zemcd" role="33vP2m">
          <node concept="YeOm9" id="3pMFS1zems9" role="2ShVmc">
            <node concept="1Y3b0j" id="3pMFS1zemsc" role="YeSDq">
              <property role="2bfB8j" value="true" />
              <ref role="1Y3XeK" to="6exd:3OPtF031GQe" resolve="Mappers.MapDelegate" />
              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
              <node concept="3Tm1VV" id="3pMFS1zemsd" role="1B3o_S" />
              <node concept="3clFb_" id="3pMFS1zeegr" role="jymVt">
                <property role="1EzhhJ" value="false" />
                <property role="TrG5h" value="canMap" />
                <node concept="37vLTG" id="3pMFS1zeegs" role="3clF46">
                  <property role="TrG5h" value="tf" />
                  <node concept="3uibUv" id="3pMFS1zeegt" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
                <node concept="10P_77" id="3pMFS1zeegu" role="3clF45" />
                <node concept="3Tm1VV" id="3pMFS1zeegv" role="1B3o_S" />
                <node concept="3clFbS" id="3pMFS1zeegx" role="3clF47">
                  <node concept="3clFbF" id="3pMFS1zlUIs" role="3cqZAp">
                    <node concept="3clFbT" id="3pMFS1zlUIr" role="3clFbG">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="2AHcQZ" id="3pMFS1zeegy" role="2AJF6D">
                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                </node>
              </node>
              <node concept="2tJIrI" id="3pMFS1zlUfA" role="jymVt" />
              <node concept="3clFb_" id="3pMFS1zeeg_" role="jymVt">
                <property role="1EzhhJ" value="false" />
                <property role="TrG5h" value="map" />
                <node concept="37vLTG" id="3pMFS1zeegA" role="3clF46">
                  <property role="TrG5h" value="tf" />
                  <node concept="3uibUv" id="3pMFS1zeegB" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                </node>
                <node concept="37vLTG" id="3pMFS1zeegC" role="3clF46">
                  <property role="TrG5h" value="fallback" />
                  <node concept="3uibUv" id="3pMFS1zeegD" role="1tU5fm">
                    <ref role="3uigEE" to="6exd:3OPtF02TdNT" resolve="DataForm.Mapper" />
                  </node>
                </node>
                <node concept="3Tm1VV" id="3pMFS1zeegE" role="1B3o_S" />
                <node concept="3uibUv" id="3pMFS1zeegG" role="3clF45">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="3clFbS" id="3pMFS1zeegH" role="3clF47">
                  <node concept="3clFbJ" id="3pMFS1zdqoN" role="3cqZAp">
                    <node concept="2ZW3vV" id="3pMFS1zdqoO" role="3clFbw">
                      <node concept="37vLTw" id="3pMFS1zehQV" role="2ZW6bz">
                        <ref role="3cqZAo" node="3pMFS1zeegA" resolve="tf" />
                      </node>
                      <node concept="3uibUv" id="3pMFS1zdqoQ" role="2ZW6by">
                        <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="3pMFS1zdqoR" role="9aQIa">
                      <node concept="3clFbS" id="3pMFS1zdqoS" role="9aQI4">
                        <node concept="3cpWs6" id="3pMFS1zdqoT" role="3cqZAp">
                          <node concept="2OqwBi" id="3pMFS1zdqoU" role="3cqZAk">
                            <node concept="37vLTw" id="3pMFS1zdqoV" role="2Oq$k0">
                              <ref role="3cqZAo" node="3pMFS1zeegA" resolve="tf" />
                            </node>
                            <node concept="liA8E" id="3pMFS1zdqoW" role="2OqNvi">
                              <ref role="37wK5l" to="6exd:3OPtF02Tjpr" resolve="mapRecursively" />
                              <node concept="37vLTw" id="3pMFS1zdqoX" role="37wK5m">
                                <ref role="3cqZAo" node="3pMFS1zeegC" resolve="fallback" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3pMFS1zdqoY" role="3clFbx">
                      <node concept="3SKdUt" id="3pMFS1zeHG6" role="3cqZAp">
                        <node concept="1PaTwC" id="589APehYxOJ" role="1aUNEU">
                          <node concept="3oM_SD" id="589APehYxOK" role="1PaTwD">
                            <property role="3oM_SC" value="TODO:" />
                          </node>
                          <node concept="3oM_SD" id="589APehYxOL" role="1PaTwD">
                            <property role="3oM_SC" value="optionally" />
                          </node>
                          <node concept="3oM_SD" id="589APehYxOM" role="1PaTwD">
                            <property role="3oM_SC" value="substitute" />
                          </node>
                          <node concept="3oM_SD" id="589APehYxON" role="1PaTwD">
                            <property role="3oM_SC" value="new" />
                          </node>
                          <node concept="3oM_SD" id="589APehYxOO" role="1PaTwD">
                            <property role="3oM_SC" value="logical" />
                          </node>
                          <node concept="3oM_SD" id="589APehYxOP" role="1PaTwD">
                            <property role="3oM_SC" value="variables?" />
                          </node>
                          <node concept="3oM_SD" id="589APehYxOQ" role="1PaTwD">
                            <property role="3oM_SC" value="(see" />
                          </node>
                          <node concept="3oM_SD" id="589APehYxOR" role="1PaTwD">
                            <property role="3oM_SC" value="CopyUtil)" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="3pMFS1zeyhu" role="3cqZAp">
                        <node concept="2ShNRf" id="3pMFS1zeyhv" role="3cqZAk">
                          <node concept="1pGfFk" id="3pMFS1zeyhw" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalDataForm" />
                            <node concept="2OqwBi" id="3pMFS1zez0W" role="37wK5m">
                              <node concept="1eOMI4" id="3pMFS1zez0X" role="2Oq$k0">
                                <node concept="10QFUN" id="3pMFS1zez0Y" role="1eOMHV">
                                  <node concept="37vLTw" id="3pMFS1zez0Z" role="10QFUP">
                                    <ref role="3cqZAo" node="3pMFS1zeegA" resolve="tf" />
                                  </node>
                                  <node concept="3uibUv" id="3pMFS1zez10" role="10QFUM">
                                    <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3pMFS1zez11" role="2OqNvi">
                                <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3pMFS1zdqqe" role="3cqZAp" />
                    </node>
                  </node>
                </node>
                <node concept="2AHcQZ" id="3pMFS1zeegI" role="2AJF6D">
                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3pMFS1zezGx" role="jymVt" />
      <node concept="312cEg" id="3pMFS1zdqqi" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="logicalContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3pMFS1zdqqj" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
        <node concept="3Tm6S6" id="3pMFS1zdqqk" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="3pMFS1zdOFa" role="jymVt">
        <property role="TrG5h" value="patternForm" />
        <node concept="3Tm6S6" id="3pMFS1zdOFb" role="1B3o_S" />
        <node concept="3uibUv" id="3pMFS1zdOFd" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="312cEg" id="3pMFS1zdPaL" role="jymVt">
        <property role="TrG5h" value="replacementForm" />
        <node concept="3Tm6S6" id="3pMFS1zdPaM" role="1B3o_S" />
        <node concept="3uibUv" id="3pMFS1zdPaO" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="312cEg" id="6SwZmzBz6$Y" role="jymVt">
        <property role="TrG5h" value="eqSolver" />
        <node concept="3Tm6S6" id="6SwZmzBz6$Z" role="1B3o_S" />
        <node concept="3uibUv" id="6SwZmzBHTLd" role="1tU5fm">
          <ref role="3uigEE" node="6SwZmzBHRzS" resolve="SubstituteUtil.SubstEqSolver" />
        </node>
        <node concept="2ShNRf" id="6SwZmzBz7as" role="33vP2m">
          <node concept="HV5vD" id="6SwZmzBzcb4" role="2ShVmc">
            <ref role="HV5vE" node="6SwZmzBHRzS" resolve="SubstituteUtil.SubstEqSolver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6SwZmzBHPBl" role="jymVt" />
    <node concept="312cEu" id="6SwZmzBHRzS" role="jymVt">
      <property role="TrG5h" value="SubstEqSolver" />
      <node concept="2tJIrI" id="6SwZmzBHSe5" role="jymVt" />
      <node concept="3clFb_" id="6SwZmzBHSfW" role="jymVt">
        <property role="TrG5h" value="askEq" />
        <node concept="37vLTG" id="6SwZmzBHStw" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="3uibUv" id="6SwZmzBHSvj" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="6SwZmzBHSRy" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="3uibUv" id="6SwZmzBHSXx" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="10P_77" id="6SwZmzBHSm2" role="3clF45" />
        <node concept="3Tmbuc" id="6SwZmzBHSkU" role="1B3o_S" />
        <node concept="3clFbS" id="6SwZmzBHSg0" role="3clF47">
          <node concept="3clFbF" id="6SwZmzBHTsF" role="3cqZAp">
            <node concept="1rXfSq" id="6SwZmzBHTsE" role="3clFbG">
              <ref role="37wK5l" to="cxk7:2UGjFq4lB$H" resolve="doAsk" />
              <node concept="37vLTw" id="6SwZmzBHT$R" role="37wK5m">
                <ref role="3cqZAo" node="6SwZmzBHStw" resolve="a" />
              </node>
              <node concept="37vLTw" id="6SwZmzBHTJJ" role="37wK5m">
                <ref role="3cqZAo" node="6SwZmzBHSRy" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6SwZmzBHSeY" role="jymVt" />
      <node concept="3Tm6S6" id="6SwZmzBHShJ" role="1B3o_S" />
      <node concept="3uibUv" id="6SwZmzBHS6n" role="1zkMxy">
        <ref role="3uigEE" to="cxk7:3HJTsBn4ogZ" resolve="EqualsPredicate.EqualsSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="3pMFS1zdqqy" role="jymVt" />
    <node concept="3Tm1VV" id="3pMFS1zdqqz" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7WKNeR93NDF">
    <property role="TrG5h" value="QueryTemplateIndex" />
    <node concept="2tJIrI" id="7WKNeR93NF5" role="jymVt" />
    <node concept="3clFbW" id="7WKNeR93OQV" role="jymVt">
      <node concept="37vLTG" id="7WKNeR93Q47" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="7WKNeR93Q48" role="1tU5fm">
          <node concept="3uibUv" id="5EDW3XFuMs$" role="A3Ik2">
            <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7WKNeR93OQX" role="3clF45" />
      <node concept="3Tm1VV" id="7WKNeR93OQY" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR93OQZ" role="3clF47">
        <node concept="3clFbF" id="7WKNeR96np4" role="3cqZAp">
          <node concept="1rXfSq" id="7WKNeR96np3" role="3clFbG">
            <ref role="37wK5l" node="7WKNeR96ejn" resolve="init" />
            <node concept="37vLTw" id="7WKNeR96nuQ" role="37wK5m">
              <ref role="3cqZAo" node="7WKNeR93Q47" resolve="manifests" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR93OR7" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR94Nd_" role="jymVt">
      <property role="TrG5h" value="allQueryTemplates" />
      <node concept="3vKaQO" id="7WKNeR94Nkz" role="3clF45">
        <node concept="3uibUv" id="6OXbTD$kD9J" role="3O5elw">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7WKNeR94NdC" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR94NdD" role="3clF47">
        <node concept="3clFbF" id="7WKNeR98nc4" role="3cqZAp">
          <node concept="2OqwBi" id="7WKNeR98pCX" role="3clFbG">
            <node concept="2OqwBi" id="7WKNeR98orp" role="2Oq$k0">
              <node concept="2OqwBi" id="7WKNeR98nAX" role="2Oq$k0">
                <node concept="37vLTw" id="7WKNeR98nc3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7WKNeR96fg2" resolve="fqName2queryTemplate" />
                </node>
                <node concept="T8wYR" id="7WKNeR98nUy" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="7WKNeR98oNj" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="7WKNeR98qO4" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR94Nc$" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR95RPZ" role="jymVt">
      <property role="TrG5h" value="byFqName" />
      <node concept="37vLTG" id="7WKNeR95RTI" role="3clF46">
        <property role="TrG5h" value="queryFqName" />
        <node concept="17QB3L" id="7WKNeR95RU3" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6OXbTD$kEkB" role="3clF45">
        <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR95RQ2" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR95RQ3" role="3clF47">
        <node concept="3clFbF" id="7WKNeR98qTB" role="3cqZAp">
          <node concept="3EllGN" id="7WKNeR98rMD" role="3clFbG">
            <node concept="37vLTw" id="7WKNeR98rR7" role="3ElVtu">
              <ref role="3cqZAo" node="7WKNeR95RTI" resolve="queryFqName" />
            </node>
            <node concept="37vLTw" id="7WKNeR98qTA" role="3ElQJh">
              <ref role="3cqZAo" node="7WKNeR96fg2" resolve="fqName2queryTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR98smD" role="jymVt" />
    <node concept="3clFb_" id="5EDW3XEzBxY" role="jymVt">
      <property role="TrG5h" value="byQueryType" />
      <node concept="37vLTG" id="5EDW3XEzBxZ" role="3clF46">
        <property role="TrG5h" value="queryType" />
        <node concept="3uibUv" id="5EDW3XE$fJ2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="5EDW3XE$fMP" role="11_B2D">
            <node concept="3uibUv" id="5EDW3XE$fVy" role="3qUE_r">
              <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5EDW3XEzBy1" role="3clF45">
        <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
      </node>
      <node concept="3Tm1VV" id="5EDW3XEzBy2" role="1B3o_S" />
      <node concept="3clFbS" id="5EDW3XEzBy3" role="3clF47">
        <node concept="3clFbF" id="5EDW3XEzBy4" role="3cqZAp">
          <node concept="3EllGN" id="5EDW3XEzBy5" role="3clFbG">
            <node concept="37vLTw" id="5EDW3XEzBy6" role="3ElVtu">
              <ref role="3cqZAo" node="5EDW3XEzBxZ" resolve="queryType" />
            </node>
            <node concept="37vLTw" id="5EDW3XEzDYk" role="3ElQJh">
              <ref role="3cqZAo" node="5EDW3XEzD6r" resolve="queryType2queryTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTD$mY$J" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR96ejn" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="7WKNeR96eOL" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="7WKNeR96eOM" role="1tU5fm">
          <node concept="3uibUv" id="5EDW3XFuMuQ" role="A3Ik2">
            <ref role="3uigEE" to="fqlx:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7WKNeR96ejp" role="3clF45" />
      <node concept="3Tm6S6" id="7WKNeR96esZ" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR96ejr" role="3clF47">
        <node concept="3cpWs8" id="7WKNeR97vRM" role="3cqZAp">
          <node concept="3cpWsn" id="7WKNeR97vRN" role="3cpWs9">
            <property role="TrG5h" value="queryTemplates" />
            <node concept="A3Dl8" id="7WKNeR97vRj" role="1tU5fm">
              <node concept="3uibUv" id="6OXbTD$ktkA" role="A3Ik2">
                <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
              </node>
            </node>
            <node concept="2OqwBi" id="7LI_gNLXJSr" role="33vP2m">
              <node concept="2OqwBi" id="7WKNeR97vRO" role="2Oq$k0">
                <node concept="37vLTw" id="7WKNeR97vRP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7WKNeR96eOL" resolve="manifests" />
                </node>
                <node concept="3goQfb" id="7WKNeR97vRQ" role="2OqNvi">
                  <node concept="1bVj0M" id="7WKNeR97vRR" role="23t8la">
                    <node concept="3clFbS" id="7WKNeR97vRS" role="1bW5cS">
                      <node concept="3clFbF" id="7WKNeR97vRT" role="3cqZAp">
                        <node concept="2OqwBi" id="7WKNeR97vRU" role="3clFbG">
                          <node concept="37vLTw" id="7WKNeR97vRV" role="2Oq$k0">
                            <ref role="3cqZAo" node="7WKNeR97vRX" resolve="it" />
                          </node>
                          <node concept="liA8E" id="7LI_gNLXJbt" role="2OqNvi">
                            <ref role="37wK5l" to="fqlx:5EDW3XF60ae" resolve="queryTables" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7WKNeR97vRX" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7WKNeR97vRY" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3goQfb" id="7LI_gNLXKuH" role="2OqNvi">
                <node concept="1bVj0M" id="7LI_gNLXKuJ" role="23t8la">
                  <node concept="3clFbS" id="7LI_gNLXKuK" role="1bW5cS">
                    <node concept="3clFbF" id="7LI_gNLXKKX" role="3cqZAp">
                      <node concept="2OqwBi" id="7LI_gNLXLki" role="3clFbG">
                        <node concept="37vLTw" id="7LI_gNLXKKW" role="2Oq$k0">
                          <ref role="3cqZAo" node="7LI_gNLXKuL" resolve="it" />
                        </node>
                        <node concept="liA8E" id="7LI_gNLXLP8" role="2OqNvi">
                          <ref role="37wK5l" to="i348:tbauFy9ROe" resolve="queryTemplates" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7LI_gNLXKuL" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7LI_gNLXKuM" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7WKNeR97wDx" role="3cqZAp">
          <node concept="3clFbS" id="7WKNeR97wtM" role="2LFqv$">
            <node concept="3clFbF" id="7WKNeR96jDw" role="3cqZAp">
              <node concept="37vLTI" id="7WKNeR96mxm" role="3clFbG">
                <node concept="2GrUjf" id="6OXbTD$kBp7" role="37vLTx">
                  <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                </node>
                <node concept="3EllGN" id="7WKNeR96lbe" role="37vLTJ">
                  <node concept="2OqwBi" id="7WKNeR96lHw" role="3ElVtu">
                    <node concept="2GrUjf" id="7WKNeR97xLn" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                    </node>
                    <node concept="liA8E" id="7WKNeR96m6R" role="2OqNvi">
                      <ref role="37wK5l" to="i348:6OXbTD$iO0_" resolve="fqName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7WKNeR96jDv" role="3ElQJh">
                    <ref role="3cqZAo" node="7WKNeR96fg2" resolve="fqName2queryTemplate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5EDW3XEzVaD" role="3cqZAp">
              <node concept="3clFbS" id="5EDW3XEzVaE" role="3clFbx">
                <node concept="3clFbJ" id="5EDW3XEzVaF" role="3cqZAp">
                  <node concept="3clFbS" id="5EDW3XEzVaG" role="3clFbx">
                    <node concept="YS8fn" id="5EDW3XEzVaH" role="3cqZAp">
                      <node concept="2ShNRf" id="5EDW3XEzVaI" role="YScLw">
                        <node concept="1pGfFk" id="5EDW3XEzVaJ" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                          <node concept="3cpWs3" id="5EDW3XEzVaK" role="37wK5m">
                            <node concept="2OqwBi" id="5EDW3XEzVaL" role="3uHU7w">
                              <node concept="2GrUjf" id="5EDW3XEzVaM" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                              </node>
                              <node concept="liA8E" id="5EDW3XEzW1N" role="2OqNvi">
                                <ref role="37wK5l" to="i348:5EDW3XE0DF4" resolve="queryType" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5EDW3XEzVaO" role="3uHU7B">
                              <property role="Xl_RC" value="conflicting queries of kind: " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5EDW3XEzVaP" role="3clFbw">
                    <node concept="37vLTw" id="5EDW3XEzVMl" role="2Oq$k0">
                      <ref role="3cqZAo" node="5EDW3XEzD6r" resolve="queryType2queryTemplate" />
                    </node>
                    <node concept="2Nt0df" id="5EDW3XEzVaR" role="2OqNvi">
                      <node concept="2OqwBi" id="5EDW3XEzVaS" role="38cxEo">
                        <node concept="2GrUjf" id="5EDW3XEzVaT" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                        </node>
                        <node concept="liA8E" id="5EDW3XEzVRf" role="2OqNvi">
                          <ref role="37wK5l" to="i348:5EDW3XE0DF4" resolve="queryType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5EDW3XEzVaV" role="3cqZAp">
                  <node concept="37vLTI" id="5EDW3XEzVaW" role="3clFbG">
                    <node concept="2GrUjf" id="5EDW3XEzVaX" role="37vLTx">
                      <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                    </node>
                    <node concept="3EllGN" id="5EDW3XEzVaY" role="37vLTJ">
                      <node concept="2OqwBi" id="5EDW3XEzVaZ" role="3ElVtu">
                        <node concept="2GrUjf" id="5EDW3XEzVb0" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                        </node>
                        <node concept="liA8E" id="5EDW3XEzWuc" role="2OqNvi">
                          <ref role="37wK5l" to="i348:5EDW3XE0DF4" resolve="queryType" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5EDW3XEzWar" role="3ElQJh">
                        <ref role="3cqZAo" node="5EDW3XEzD6r" resolve="queryType2queryTemplate" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5EDW3XEzVb3" role="3clFbw">
                <node concept="10Nm6u" id="5EDW3XEzVb4" role="3uHU7w" />
                <node concept="2OqwBi" id="5EDW3XEzVb5" role="3uHU7B">
                  <node concept="2GrUjf" id="5EDW3XEzVb6" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                  </node>
                  <node concept="liA8E" id="5EDW3XEzVHj" role="2OqNvi">
                    <ref role="37wK5l" to="i348:5EDW3XE0DF4" resolve="queryType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7WKNeR97wtS" role="2GsD0m">
            <ref role="3cqZAo" node="7WKNeR97vRN" resolve="queryTemplates" />
          </node>
          <node concept="2GrKxI" id="7WKNeR97wDT" role="2Gsz3X">
            <property role="TrG5h" value="qt" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR96f6_" role="jymVt" />
    <node concept="312cEg" id="7WKNeR96fg2" role="jymVt">
      <property role="TrG5h" value="fqName2queryTemplate" />
      <node concept="3Tm6S6" id="7WKNeR96fg3" role="1B3o_S" />
      <node concept="3rvAFt" id="7WKNeR96foD" role="1tU5fm">
        <node concept="17QB3L" id="7WKNeR96fvo" role="3rvQeY" />
        <node concept="3uibUv" id="6OXbTD$k_bN" role="3rvSg0">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="2ShNRf" id="7WKNeR96gm5" role="33vP2m">
        <node concept="3rGOSV" id="7WKNeR96gl8" role="2ShVmc">
          <node concept="17QB3L" id="7WKNeR96gl9" role="3rHrn6" />
          <node concept="3uibUv" id="6OXbTD$kAyf" role="3rHtpV">
            <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5EDW3XEzD6r" role="jymVt">
      <property role="TrG5h" value="queryType2queryTemplate" />
      <node concept="3Tm6S6" id="5EDW3XEzD6s" role="1B3o_S" />
      <node concept="3rvAFt" id="5EDW3XEzD6t" role="1tU5fm">
        <node concept="3uibUv" id="5EDW3XE$c89" role="3rvQeY">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="5EDW3XE$cIT" role="11_B2D" />
        </node>
        <node concept="3uibUv" id="5EDW3XEzD6v" role="3rvSg0">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="2ShNRf" id="5EDW3XEzD6w" role="33vP2m">
        <node concept="3rGOSV" id="5EDW3XEzD6x" role="2ShVmc">
          <node concept="3uibUv" id="5EDW3XE$dak" role="3rHrn6">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="5EDW3XE$dNw" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="5EDW3XEzD6z" role="3rHtpV">
            <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4$YN6QugcRf" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="qubcdtxBiR">
    <property role="TrG5h" value="EvaluationTraceExt" />
    <node concept="2tJIrI" id="qubcdtxBuI" role="jymVt" />
    <node concept="Wx3nA" id="24Vro6cS5rK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NULL" />
      <node concept="3Tm1VV" id="24Vro6cS5rM" role="1B3o_S" />
      <node concept="2ShNRf" id="24Vro6cS5M$" role="33vP2m">
        <node concept="HV5vD" id="15BaR5AeZD1" role="2ShVmc">
          <ref role="HV5vE" node="15BaR5AeJIv" resolve="EvaluationTraceExt.Stub" />
        </node>
      </node>
      <node concept="3uibUv" id="qubcdtxJQt" role="1tU5fm">
        <ref role="3uigEE" node="qubcdtxBiR" resolve="EvaluationTraceExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="5cnt3vhg0gW" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU0T" role="jymVt">
      <property role="TrG5h" value="result" />
      <node concept="37vLTG" id="7nkyKX7gU0U" role="3clF46">
        <property role="TrG5h" value="occurrence" />
        <node concept="3uibUv" id="5mr7UHccdcS" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gU0Y" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gU0Z" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gU10" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7nkyKX7gUfX" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU3L" role="jymVt">
      <property role="TrG5h" value="garbage" />
      <node concept="37vLTG" id="7nkyKX7gU3M" role="3clF46">
        <property role="TrG5h" value="occurrence" />
        <node concept="3uibUv" id="5mr7UHccdlH" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gU3Q" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gU3R" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gU3S" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="18cJbc1jRCJ" role="jymVt" />
    <node concept="3clFb_" id="18cJbc1jRnT" role="jymVt">
      <property role="TrG5h" value="info" />
      <node concept="37vLTG" id="18cJbc1jRnU" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="18cJbc1jS2s" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="18cJbc1jRnW" role="3clF45" />
      <node concept="3Tm1VV" id="18cJbc1jRnX" role="1B3o_S" />
      <node concept="3clFbS" id="18cJbc1jRnY" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="qubcdtxBuK" role="jymVt" />
    <node concept="312cEu" id="15BaR5AeJIv" role="jymVt">
      <property role="TrG5h" value="Stub" />
      <node concept="3clFb_" id="7nkyKX7h9eG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="result" />
        <node concept="37vLTG" id="7nkyKX7h9eH" role="3clF46">
          <property role="TrG5h" value="constraint" />
          <node concept="3uibUv" id="5mr7UHccduP" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="7nkyKX7h9eJ" role="3clF45" />
        <node concept="3Tm1VV" id="7nkyKX7h9eK" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7h9eN" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeWE1" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7nkyKX7h9eO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="garbage" />
        <node concept="37vLTG" id="7nkyKX7h9eP" role="3clF46">
          <property role="TrG5h" value="constraint" />
          <node concept="3uibUv" id="5mr7UHccd_Z" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="7nkyKX7h9eR" role="3clF45" />
        <node concept="3Tm1VV" id="7nkyKX7h9eS" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7h9eV" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeX86" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="18cJbc1jSg7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="info" />
        <node concept="37vLTG" id="18cJbc1jSg8" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="17QB3L" id="18cJbc1jSg9" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="18cJbc1jSga" role="3clF45" />
        <node concept="3Tm1VV" id="18cJbc1jSgb" role="1B3o_S" />
        <node concept="3clFbS" id="18cJbc1jSge" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeXAn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4VntlICpe5P" role="jymVt" />
      <node concept="3Tm1VV" id="15BaR5AeJIw" role="1B3o_S" />
      <node concept="3uibUv" id="15BaR5AeNrp" role="EKbjA">
        <ref role="3uigEE" node="qubcdtxBiR" resolve="EvaluationTraceExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="15BaR5AeJ4Y" role="jymVt" />
    <node concept="3Tm1VV" id="qubcdtxBiS" role="1B3o_S" />
    <node concept="3uibUv" id="qubcdtxBjm" role="3HQHJm">
      <ref role="3uigEE" to="w7la:~EvaluationTrace" resolve="EvaluationTrace" />
    </node>
  </node>
  <node concept="312cEu" id="3o9wrC3s0ii">
    <property role="TrG5h" value="DefaultSupervisor" />
    <node concept="2tJIrI" id="RZQG984Rfh" role="jymVt" />
    <node concept="3clFb_" id="60zk4o6Suoh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="instantiateArguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="60zk4o6Suoi" role="1B3o_S" />
      <node concept="3uibUv" id="60zk4o6Suok" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="60zk4o6Suol" role="11_B2D" />
      </node>
      <node concept="37vLTG" id="60zk4o6Suom" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="3uibUv" id="60zk4o6Suon" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="60zk4o6Suoo" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="60zk4o6Suop" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="60zk4o6Suoq" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalContext" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4jcOV4hkQup" role="3clF46">
        <property role="TrG5h" value="invocationContext" />
        <node concept="3uibUv" id="4jcOV4hkSdQ" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~InvocationContext" resolve="InvocationContext" />
        </node>
      </node>
      <node concept="3clFbS" id="60zk4o6Suor" role="3clF47">
        <node concept="3cpWs8" id="60zk4o6SxJ0" role="3cqZAp">
          <node concept="3cpWsn" id="60zk4o6SxJ1" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="60zk4o6SxJ2" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="60zk4o6SxJ3" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="60zk4o6SxJ4" role="33vP2m">
              <node concept="1pGfFk" id="60zk4o6SxJ5" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="2OqwBi" id="60zk4o6SxJ6" role="37wK5m">
                  <node concept="37vLTw" id="60zk4o6Szda" role="2Oq$k0">
                    <ref role="3cqZAo" node="60zk4o6Suom" resolve="arguments" />
                  </node>
                  <node concept="liA8E" id="60zk4o6SxJa" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
                <node concept="3uibUv" id="60zk4o6SxJb" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="60zk4o6SxJc" role="3cqZAp">
          <node concept="3clFbS" id="60zk4o6SxJd" role="2LFqv$">
            <node concept="3clFbJ" id="60zk4o6SxJe" role="3cqZAp">
              <node concept="3eNFk2" id="60zk4o6SxJf" role="3eNLev">
                <node concept="2ZW3vV" id="60zk4o6SxJg" role="3eO9$A">
                  <node concept="3uibUv" id="60zk4o6SxJh" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  </node>
                  <node concept="37vLTw" id="60zk4o6SxJi" role="2ZW6bz">
                    <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                  </node>
                </node>
                <node concept="3clFbS" id="60zk4o6SxJj" role="3eOfB_">
                  <node concept="3clFbF" id="60zk4o6SxJk" role="3cqZAp">
                    <node concept="2OqwBi" id="60zk4o6SxJl" role="3clFbG">
                      <node concept="37vLTw" id="60zk4o6SxJm" role="2Oq$k0">
                        <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                      </node>
                      <node concept="liA8E" id="60zk4o6SxJn" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                        <node concept="2OqwBi" id="60zk4o6SxJo" role="37wK5m">
                          <node concept="37vLTw" id="60zk4o6SxJp" role="2Oq$k0">
                            <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                          </node>
                          <node concept="liA8E" id="60zk4o6SxJq" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="variable" />
                            <node concept="10QFUN" id="60zk4o6SxJr" role="37wK5m">
                              <node concept="37vLTw" id="60zk4o6SxJs" role="10QFUP">
                                <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                              </node>
                              <node concept="3uibUv" id="60zk4o6SxJt" role="10QFUM">
                                <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                                <node concept="3uibUv" id="60zk4o6SxJu" role="11_B2D">
                                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="60zk4o6SxJv" role="3cqZAp" />
                </node>
              </node>
              <node concept="3eNFk2" id="5WBVN_M1CZI" role="3eNLev">
                <node concept="2ZW3vV" id="5WBVN_M1Djq" role="3eO9$A">
                  <node concept="3uibUv" id="5WBVN_M1Dpb" role="2ZW6by">
                    <ref role="3uigEE" to="i348:5WBVN_M1BKE" resolve="LateExpression" />
                  </node>
                  <node concept="37vLTw" id="5WBVN_M1DbI" role="2ZW6bz">
                    <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                  </node>
                </node>
                <node concept="3clFbS" id="5WBVN_M1CZK" role="3eOfB_">
                  <node concept="3cpWs8" id="5WBVN_M1J07" role="3cqZAp">
                    <node concept="3cpWsn" id="5WBVN_M1J08" role="3cpWs9">
                      <property role="TrG5h" value="exp" />
                      <node concept="3uibUv" id="5WBVN_M1J02" role="1tU5fm">
                        <ref role="3uigEE" to="i348:5WBVN_M1BKE" resolve="LateExpression" />
                        <node concept="3qTvmN" id="5WBVN_M1J05" role="11_B2D" />
                      </node>
                      <node concept="1eOMI4" id="5WBVN_M1J09" role="33vP2m">
                        <node concept="10QFUN" id="5WBVN_M1J0a" role="1eOMHV">
                          <node concept="3uibUv" id="5WBVN_M1J0b" role="10QFUM">
                            <ref role="3uigEE" to="i348:5WBVN_M1BKE" resolve="LateExpression" />
                            <node concept="3qTvmN" id="5WBVN_M1J0c" role="11_B2D" />
                          </node>
                          <node concept="37vLTw" id="5WBVN_M1J0d" role="10QFUP">
                            <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5WBVN_M1GEt" role="3cqZAp">
                    <node concept="3cpWsn" id="5WBVN_M1GEu" role="3cpWs9">
                      <property role="TrG5h" value="expArgs" />
                      <node concept="3uibUv" id="5WBVN_M1GEk" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3qTvmN" id="5WBVN_M1GEn" role="11_B2D" />
                      </node>
                      <node concept="1rXfSq" id="5WBVN_M1GEv" role="33vP2m">
                        <ref role="37wK5l" node="60zk4o6Suoh" resolve="instantiateArguments" />
                        <node concept="2YIFZM" id="5WBVN_MlGya" role="37wK5m">
                          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                          <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                          <node concept="2OqwBi" id="5WBVN_M1GEw" role="37wK5m">
                            <node concept="37vLTw" id="5WBVN_M1J0e" role="2Oq$k0">
                              <ref role="3cqZAo" node="5WBVN_M1J08" resolve="exp" />
                            </node>
                            <node concept="liA8E" id="5WBVN_M1GEA" role="2OqNvi">
                              <ref role="37wK5l" to="i348:5WBVN_M1BSf" resolve="metaArgs" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5WBVN_M1GEB" role="37wK5m">
                          <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                        </node>
                        <node concept="37vLTw" id="4jcOV4hkYUG" role="37wK5m">
                          <ref role="3cqZAo" node="4jcOV4hkQup" resolve="invocationContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="5WBVN_M1MSf" role="3cqZAp">
                    <node concept="1PaTwC" id="589APehYxNB" role="1aUNEU">
                      <node concept="3oM_SD" id="589APehYxNC" role="1PaTwD">
                        <property role="3oM_SC" value="TODO:" />
                      </node>
                      <node concept="3oM_SD" id="589APehYxND" role="1PaTwD">
                        <property role="3oM_SC" value="user" />
                      </node>
                      <node concept="3oM_SD" id="589APehYxNE" role="1PaTwD">
                        <property role="3oM_SC" value="code" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5WBVN_M1Hyh" role="3cqZAp">
                    <node concept="2OqwBi" id="5WBVN_M1HRh" role="3clFbG">
                      <node concept="37vLTw" id="5WBVN_M1Hyf" role="2Oq$k0">
                        <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                      </node>
                      <node concept="liA8E" id="5WBVN_M1IHI" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                        <node concept="2OqwBi" id="5WBVN_M1JzG" role="37wK5m">
                          <node concept="37vLTw" id="5WBVN_M1JhL" role="2Oq$k0">
                            <ref role="3cqZAo" node="5WBVN_M1J08" resolve="exp" />
                          </node>
                          <node concept="liA8E" id="5WBVN_M1JVL" role="2OqNvi">
                            <ref role="37wK5l" to="i348:5WBVN_M1BLN" resolve="eval" />
                            <node concept="37vLTw" id="6yUEjXvTvSG" role="37wK5m">
                              <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                            </node>
                            <node concept="37vLTw" id="4jcOV4hlseO" role="37wK5m">
                              <ref role="3cqZAo" node="4jcOV4hkQup" resolve="invocationContext" />
                            </node>
                            <node concept="2OqwBi" id="5WBVN_M1KyJ" role="37wK5m">
                              <node concept="37vLTw" id="5WBVN_M1K7z" role="2Oq$k0">
                                <ref role="3cqZAo" node="5WBVN_M1GEu" resolve="expArgs" />
                              </node>
                              <node concept="liA8E" id="5WBVN_M1L1T" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.toArray()" resolve="toArray" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5WBVN_M1Hs2" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="60zk4o6SxJw" role="3clFbx">
                <node concept="3clFbF" id="60zk4o6SxJx" role="3cqZAp">
                  <node concept="2OqwBi" id="60zk4o6SxJy" role="3clFbG">
                    <node concept="37vLTw" id="60zk4o6SxJz" role="2Oq$k0">
                      <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                    </node>
                    <node concept="liA8E" id="60zk4o6SxJ$" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                      <node concept="2YIFZM" id="3gNap3fNlJv" role="37wK5m">
                        <ref role="37wK5l" to="oy3s:4TCblo5NqWF" resolve="instantiateMetaLogicals" />
                        <ref role="1Pybhc" to="oy3s:677NV565N1x" resolve="LogicalUtil" />
                        <node concept="10QFUN" id="60zk4o6SxJA" role="37wK5m">
                          <node concept="3uibUv" id="60zk4o6SxJB" role="10QFUM">
                            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                          </node>
                          <node concept="37vLTw" id="60zk4o6SxJC" role="10QFUP">
                            <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="60zk4o6SxJD" role="37wK5m">
                          <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="60zk4o6SxJE" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="60zk4o6SxJF" role="3clFbw">
                <node concept="3uibUv" id="60zk4o6SxJG" role="2ZW6by">
                  <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                </node>
                <node concept="37vLTw" id="60zk4o6SxJH" role="2ZW6bz">
                  <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                </node>
              </node>
              <node concept="9aQIb" id="60zk4o6SxJI" role="9aQIa">
                <node concept="3clFbS" id="60zk4o6SxJJ" role="9aQI4">
                  <node concept="3clFbF" id="60zk4o6SxJK" role="3cqZAp">
                    <node concept="2OqwBi" id="60zk4o6SxJL" role="3clFbG">
                      <node concept="37vLTw" id="60zk4o6SxJM" role="2Oq$k0">
                        <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                      </node>
                      <node concept="liA8E" id="60zk4o6SxJN" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                        <node concept="37vLTw" id="60zk4o6SxJO" role="37wK5m">
                          <ref role="3cqZAo" node="60zk4o6SxJP" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="60zk4o6SxJP" role="1Duv9x">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="60zk4o6SxJQ" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="37vLTw" id="60zk4o6SI6n" role="1DdaDG">
            <ref role="3cqZAo" node="60zk4o6Suom" resolve="arguments" />
          </node>
        </node>
        <node concept="3clFbF" id="60zk4o6SxJU" role="3cqZAp">
          <node concept="37vLTw" id="60zk4o6SxJV" role="3clFbG">
            <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="60zk4o6Suos" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3zMCWVasD80" role="jymVt" />
    <node concept="3clFb_" id="7NKKM352D5b" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="3Tm1VV" id="7NKKM352D5c" role="1B3o_S" />
      <node concept="16euLQ" id="7NKKM352D5e" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="7NKKM352D5f" role="3clF45">
        <ref role="16sUi3" node="7NKKM352D5e" resolve="T" />
      </node>
      <node concept="37vLTG" id="7NKKM352D5g" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7NKKM352D5h" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~DataProvider$Key" resolve="DataProvider.Key" />
          <node concept="16syzq" id="7NKKM352D5i" role="11_B2D">
            <ref role="16sUi3" node="7NKKM352D5e" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7NKKM352D5j" role="3clF47">
        <node concept="3clFbF" id="7rkc8Gyhr8H" role="3cqZAp">
          <node concept="10QFUN" id="7rkc8Gyht5h" role="3clFbG">
            <node concept="2OqwBi" id="7rkc8Gyht5d" role="10QFUP">
              <node concept="37vLTw" id="7rkc8Gyht5e" role="2Oq$k0">
                <ref role="3cqZAo" node="7rkc8Gyhkgn" resolve="data" />
              </node>
              <node concept="liA8E" id="7rkc8Gyht5f" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="7rkc8Gyht5g" role="37wK5m">
                  <ref role="3cqZAo" node="7NKKM352D5g" resolve="key" />
                </node>
              </node>
            </node>
            <node concept="16syzq" id="7rkc8Gyhtk_" role="10QFUM">
              <ref role="16sUi3" node="7NKKM352D5e" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7NKKM352D5k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7NKKM352Ej1" role="jymVt" />
    <node concept="3clFb_" id="7rkc8GygQtl" role="jymVt">
      <property role="TrG5h" value="getOrSetData" />
      <node concept="3Tm1VV" id="7rkc8GygQtm" role="1B3o_S" />
      <node concept="16euLQ" id="7rkc8GygQto" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="7rkc8GygQtp" role="3clF45">
        <ref role="16sUi3" node="7rkc8GygQto" resolve="T" />
      </node>
      <node concept="37vLTG" id="7rkc8GygQtq" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7rkc8GygQtr" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~DataProvider$Key" resolve="DataProvider.Key" />
          <node concept="16syzq" id="7rkc8GygQts" role="11_B2D">
            <ref role="16sUi3" node="7rkc8GygQto" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7rkc8GygQtt" role="3clF46">
        <property role="TrG5h" value="supplier" />
        <node concept="3uibUv" id="7rkc8GygQtu" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="16syzq" id="7rkc8GygQtv" role="11_B2D">
            <ref role="16sUi3" node="7rkc8GygQto" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7rkc8GygQtw" role="3clF47">
        <node concept="3clFbF" id="7rkc8Gyhxv0" role="3cqZAp">
          <node concept="10QFUN" id="7rkc8GyhBzA" role="3clFbG">
            <node concept="2OqwBi" id="7rkc8GyhBzq" role="10QFUP">
              <node concept="37vLTw" id="7rkc8GyhBzr" role="2Oq$k0">
                <ref role="3cqZAo" node="7rkc8Gyhkgn" resolve="data" />
              </node>
              <node concept="liA8E" id="7rkc8GyhBzs" role="2OqNvi">
                <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                <node concept="37vLTw" id="7rkc8GyhBzt" role="37wK5m">
                  <ref role="3cqZAo" node="7rkc8GygQtq" resolve="key" />
                </node>
                <node concept="1bVj0M" id="7rkc8GyhBzu" role="37wK5m">
                  <node concept="37vLTG" id="7rkc8GyhBzv" role="1bW2Oz">
                    <property role="TrG5h" value="k" />
                    <node concept="3uibUv" id="7rkc8GyhBzw" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7rkc8GyhBzx" role="1bW5cS">
                    <node concept="3clFbF" id="7rkc8GyhBzy" role="3cqZAp">
                      <node concept="2OqwBi" id="7rkc8GyhBzz" role="3clFbG">
                        <node concept="37vLTw" id="7rkc8GyhBz$" role="2Oq$k0">
                          <ref role="3cqZAo" node="7rkc8GygQtt" resolve="supplier" />
                        </node>
                        <node concept="liA8E" id="7rkc8GyhBz_" role="2OqNvi">
                          <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="16syzq" id="7rkc8GyhCnX" role="10QFUM">
              <ref role="16sUi3" node="7rkc8GygQto" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7rkc8GygQtx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7rkc8GygR9p" role="jymVt" />
    <node concept="3clFb_" id="7NKKM352D5l" role="jymVt">
      <property role="TrG5h" value="setData" />
      <node concept="3Tm1VV" id="7NKKM352D5m" role="1B3o_S" />
      <node concept="16euLQ" id="7NKKM352D5o" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3cqZAl" id="7NKKM352D5p" role="3clF45" />
      <node concept="37vLTG" id="7NKKM352D5q" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7NKKM352D5r" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~DataProvider$Key" resolve="DataProvider.Key" />
          <node concept="16syzq" id="7NKKM352D5s" role="11_B2D">
            <ref role="16sUi3" node="7NKKM352D5o" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7NKKM352D5t" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="16syzq" id="7NKKM352D5u" role="1tU5fm">
          <ref role="16sUi3" node="7NKKM352D5o" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="7NKKM352D5v" role="3clF47">
        <node concept="3clFbF" id="7rkc8GyhCOv" role="3cqZAp">
          <node concept="2OqwBi" id="7rkc8GyhDhZ" role="3clFbG">
            <node concept="37vLTw" id="7rkc8GyhCOu" role="2Oq$k0">
              <ref role="3cqZAo" node="7rkc8Gyhkgn" resolve="data" />
            </node>
            <node concept="liA8E" id="7rkc8GyhDWd" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="7rkc8GyhElS" role="37wK5m">
                <ref role="3cqZAo" node="7NKKM352D5q" resolve="key" />
              </node>
              <node concept="37vLTw" id="7rkc8GyhEQV" role="37wK5m">
                <ref role="3cqZAo" node="7rkc8Gyhkgn" resolve="data" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7NKKM352D5w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7NKKM352ELJ" role="jymVt" />
    <node concept="312cEg" id="7rkc8Gyhkgn" role="jymVt">
      <property role="TrG5h" value="data" />
      <node concept="3Tm6S6" id="7rkc8Gyhkgo" role="1B3o_S" />
      <node concept="3uibUv" id="7rkc8GyhnOf" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
        <node concept="3uibUv" id="7rkc8GyhnZ0" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="7rkc8GyholH" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="7rkc8GyhoRm" role="33vP2m">
        <node concept="1pGfFk" id="7rkc8GyhpRC" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="7rkc8GyhqgE" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="7rkc8GyhqGr" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3o9wrC3s0ij" role="1B3o_S" />
    <node concept="3uibUv" id="3o9wrC3s0Vs" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Supervisor" resolve="Supervisor" />
    </node>
    <node concept="3uibUv" id="7NKKM352BlE" role="EKbjA">
      <ref role="3uigEE" to="w7la:~DataProvider" resolve="DataProvider" />
    </node>
  </node>
  <node concept="312cEu" id="3o9wrC3sa$h">
    <property role="TrG5h" value="FeedbackReportingSupervisor" />
    <node concept="2tJIrI" id="3o9wrC3sdlb" role="jymVt" />
    <node concept="3clFbW" id="3o9wrC3sC_c" role="jymVt">
      <node concept="37vLTG" id="3o9wrC3sDaO" role="3clF46">
        <property role="TrG5h" value="feedbackConsumer" />
        <node concept="3uibUv" id="6RN9TdHnmNZ" role="1tU5fm">
          <ref role="3uigEE" node="6RN9TdHmQLy" resolve="FeedbackConsumer" />
        </node>
      </node>
      <node concept="3cqZAl" id="3o9wrC3sC_e" role="3clF45" />
      <node concept="3Tm1VV" id="3o9wrC3sC_f" role="1B3o_S" />
      <node concept="3clFbS" id="3o9wrC3sC_g" role="3clF47">
        <node concept="3clFbF" id="6RN9TdHno3P" role="3cqZAp">
          <node concept="37vLTI" id="6RN9TdHnoD7" role="3clFbG">
            <node concept="37vLTw" id="6RN9TdHnoIu" role="37vLTx">
              <ref role="3cqZAo" node="3o9wrC3sDaO" resolve="feedbackConsumer" />
            </node>
            <node concept="2OqwBi" id="6RN9TdHnohz" role="37vLTJ">
              <node concept="Xjq3P" id="6RN9TdHno3N" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RN9TdHnotW" role="2OqNvi">
                <ref role="2Oxat5" node="6RN9TdHnni_" resolve="feedbackConsumer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RN9TdHnpyt" role="jymVt" />
    <node concept="3clFb_" id="4jcOV4hNvgm" role="jymVt">
      <property role="TrG5h" value="handleFeedback" />
      <node concept="3Tm1VV" id="4jcOV4hNvgn" role="1B3o_S" />
      <node concept="10P_77" id="4jcOV4hNvgp" role="3clF45" />
      <node concept="37vLTG" id="4jcOV4hNvgq" role="3clF46">
        <property role="TrG5h" value="ruleMatch" />
        <node concept="3uibUv" id="1CI$NpxuezC" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
        </node>
      </node>
      <node concept="37vLTG" id="5jKpGcQ$Zh8" role="3clF46">
        <property role="TrG5h" value="feedbackKey" />
        <node concept="3uibUv" id="1CI$NpxuezD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4jcOV4hNvgs" role="3clF46">
        <property role="TrG5h" value="feedback" />
        <node concept="3uibUv" id="1CI$NpxuezE" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
        </node>
      </node>
      <node concept="3clFbS" id="4jcOV4hNvgu" role="3clF47">
        <node concept="3clFbJ" id="1laj_RSiIHM" role="3cqZAp">
          <node concept="3clFbS" id="1laj_RSiIHO" role="3clFbx">
            <node concept="3cpWs8" id="1laj_RSiJwR" role="3cqZAp">
              <node concept="3cpWsn" id="1laj_RSiJwS" role="3cpWs9">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="1laj_RSiJwx" role="1tU5fm">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
                <node concept="1eOMI4" id="1laj_RSiJwT" role="33vP2m">
                  <node concept="10QFUN" id="1laj_RSiJwU" role="1eOMHV">
                    <node concept="3uibUv" id="1laj_RSiJwV" role="10QFUM">
                      <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                    </node>
                    <node concept="2OqwBi" id="1laj_RSiJy7" role="10QFUP">
                      <node concept="37vLTw" id="1laj_RSiJy8" role="2Oq$k0">
                        <ref role="3cqZAo" node="4jcOV4hNvgq" resolve="ruleMatch" />
                      </node>
                      <node concept="liA8E" id="1laj_RSiJy9" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~RuleMatch.rule()" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1laj_RSiRVQ" role="3cqZAp" />
            <node concept="3cpWs8" id="1laj_RTMHGM" role="3cqZAp">
              <node concept="3cpWsn" id="1laj_RTMHGN" role="3cpWs9">
                <property role="TrG5h" value="targetRef" />
                <node concept="2sp9CU" id="1laj_RTZcRS" role="1tU5fm" />
                <node concept="10Nm6u" id="1laj_RTMLck" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="4ekZiHde4OA" role="3cqZAp">
              <node concept="3cpWsn" id="4ekZiHde4OB" role="3cpWs9">
                <property role="TrG5h" value="templateRef" />
                <node concept="2sp9CU" id="4ekZiHde56S" role="1tU5fm" />
                <node concept="10Nm6u" id="4ekZiHde6kq" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbH" id="4ekZiHdPXZz" role="3cqZAp" />
            <node concept="3clFbJ" id="1laj_RTMLXY" role="3cqZAp">
              <node concept="3clFbS" id="1laj_RTMLY0" role="3clFbx">
                <node concept="3clFbF" id="1laj_RTMMMf" role="3cqZAp">
                  <node concept="37vLTI" id="1laj_RTMMTg" role="3clFbG">
                    <node concept="2OqwBi" id="4ekZiHddLIc" role="37vLTx">
                      <node concept="1eOMI4" id="1laj_RTMMUV" role="2Oq$k0">
                        <node concept="10QFUN" id="1laj_RTMMUS" role="1eOMHV">
                          <node concept="3uibUv" id="4ekZiHddLrv" role="10QFUM">
                            <ref role="3uigEE" to="cxk7:4ekZiHddiXo" resolve="FeedbackOrigin" />
                          </node>
                          <node concept="2OqwBi" id="1laj_RTMMUY" role="10QFUP">
                            <node concept="37vLTw" id="1laj_RTMMUZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="4jcOV4hNvgs" resolve="feedback" />
                            </node>
                            <node concept="liA8E" id="1laj_RTMMV0" role="2OqNvi">
                              <ref role="37wK5l" to="w7la:~EvaluationFeedback.getDetails()" resolve="getDetails" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4ekZiHddLRK" role="2OqNvi">
                        <ref role="37wK5l" to="cxk7:4ekZiHddjeb" resolve="getTarget" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1laj_RTMMMd" role="37vLTJ">
                      <ref role="3cqZAo" node="1laj_RTMHGN" resolve="targetRef" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ekZiHde5kQ" role="3cqZAp">
                  <node concept="37vLTI" id="4ekZiHde5kS" role="3clFbG">
                    <node concept="2OqwBi" id="4ekZiHde4OC" role="37vLTx">
                      <node concept="1eOMI4" id="4ekZiHde4OD" role="2Oq$k0">
                        <node concept="10QFUN" id="4ekZiHde4OE" role="1eOMHV">
                          <node concept="3uibUv" id="4ekZiHde4OF" role="10QFUM">
                            <ref role="3uigEE" to="cxk7:4ekZiHddiXo" resolve="FeedbackOrigin" />
                          </node>
                          <node concept="2OqwBi" id="4ekZiHde4OG" role="10QFUP">
                            <node concept="37vLTw" id="4ekZiHde4OH" role="2Oq$k0">
                              <ref role="3cqZAo" node="4jcOV4hNvgs" resolve="feedback" />
                            </node>
                            <node concept="liA8E" id="4ekZiHde4OI" role="2OqNvi">
                              <ref role="37wK5l" to="w7la:~EvaluationFeedback.getDetails()" resolve="getDetails" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4ekZiHde4OJ" role="2OqNvi">
                        <ref role="37wK5l" to="cxk7:4ekZiHddjyV" resolve="getTemplate" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4ekZiHde5kW" role="37vLTJ">
                      <ref role="3cqZAo" node="4ekZiHde4OB" resolve="templateRef" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1laj_RTMMF0" role="3clFbw">
                <node concept="3uibUv" id="4ekZiHddLpG" role="2ZW6by">
                  <ref role="3uigEE" to="cxk7:4ekZiHddiXo" resolve="FeedbackOrigin" />
                </node>
                <node concept="2OqwBi" id="1laj_RTMMt7" role="2ZW6bz">
                  <node concept="37vLTw" id="1laj_RTMMiJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4jcOV4hNvgs" resolve="feedback" />
                  </node>
                  <node concept="liA8E" id="1laj_RTMM_M" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationFeedback.getDetails()" resolve="getDetails" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4ekZiHdPUqd" role="3cqZAp" />
            <node concept="3clFbJ" id="4ekZiHdPVwZ" role="3cqZAp">
              <node concept="3clFbS" id="4ekZiHdPVxb" role="3clFbx">
                <node concept="3clFbF" id="1laj_RTMJzh" role="3cqZAp">
                  <node concept="37vLTI" id="1laj_RTMJ$u" role="3clFbG">
                    <node concept="37vLTw" id="1laj_RTMJzf" role="37vLTJ">
                      <ref role="3cqZAo" node="1laj_RTMHGN" resolve="targetRef" />
                    </node>
                    <node concept="2OqwBi" id="1laj_RTMJJg" role="37vLTx">
                      <node concept="37vLTw" id="1laj_RTMJ__" role="2Oq$k0">
                        <ref role="3cqZAo" node="1laj_RSiJwS" resolve="rule" />
                      </node>
                      <node concept="liA8E" id="1laj_RTMJXt" role="2OqNvi">
                        <ref role="37wK5l" to="i348:7nPD14Ob4em" resolve="targetRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ekZiHdRx4A" role="3cqZAp">
                  <node concept="37vLTI" id="4ekZiHdRxeg" role="3clFbG">
                    <node concept="2OqwBi" id="4ekZiHdRxpE" role="37vLTx">
                      <node concept="37vLTw" id="4ekZiHdRxfb" role="2Oq$k0">
                        <ref role="3cqZAo" node="1laj_RSiJwS" resolve="rule" />
                      </node>
                      <node concept="liA8E" id="4ekZiHdRxy4" role="2OqNvi">
                        <ref role="37wK5l" to="i348:7nPD14Ob4lt" resolve="templateRef" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4ekZiHdRx4$" role="37vLTJ">
                      <ref role="3cqZAo" node="4ekZiHde4OB" resolve="templateRef" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="4ekZiHdPVXM" role="3clFbw">
                <node concept="10Nm6u" id="4ekZiHdPVYw" role="3uHU7w" />
                <node concept="37vLTw" id="4ekZiHdPVcE" role="3uHU7B">
                  <ref role="3cqZAo" node="1laj_RTMHGN" resolve="targetRef" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1laj_RTMOO6" role="3cqZAp" />
            <node concept="3clFbJ" id="4jcOV4hNvEG" role="3cqZAp">
              <node concept="3clFbS" id="4jcOV4hNvEH" role="3clFbx">
                <node concept="3clFbH" id="5rVYEA66yoJ" role="3cqZAp" />
                <node concept="3clFbF" id="6RN9TdHnrzY" role="3cqZAp">
                  <node concept="2OqwBi" id="6RN9TdHnrTu" role="3clFbG">
                    <node concept="37vLTw" id="6RN9TdHnrzW" role="2Oq$k0">
                      <ref role="3cqZAo" node="6RN9TdHnni_" resolve="feedbackConsumer" />
                    </node>
                    <node concept="liA8E" id="6RN9TdHns3m" role="2OqNvi">
                      <ref role="37wK5l" node="7v$qFyZ8h4v" resolve="consumeFeedback" />
                      <node concept="37vLTw" id="6RN9TdHns9Z" role="37wK5m">
                        <ref role="3cqZAo" node="4ekZiHde4OB" resolve="templateRef" />
                      </node>
                      <node concept="37vLTw" id="5rVYEA6lTv5" role="37wK5m">
                        <ref role="3cqZAo" node="1laj_RSiJwS" resolve="rule" />
                      </node>
                      <node concept="37vLTw" id="6RN9TdHnshf" role="37wK5m">
                        <ref role="3cqZAo" node="1laj_RTMHGN" resolve="targetRef" />
                      </node>
                      <node concept="37vLTw" id="6RN9TdHnsmM" role="37wK5m">
                        <ref role="3cqZAo" node="4jcOV4hNvgs" resolve="feedback" />
                      </node>
                      <node concept="37vLTw" id="1CI$NpxueUB" role="37wK5m">
                        <ref role="3cqZAo" node="5jKpGcQ$Zh8" resolve="feedbackKey" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5rVYEA66xGb" role="3cqZAp" />
                <node concept="3SKdUt" id="4jcOV4hNvF_" role="3cqZAp">
                  <node concept="1PaTwC" id="589APehYxNF" role="1aUNEU">
                    <node concept="3oM_SD" id="589APehYxNG" role="1PaTwD">
                      <property role="3oM_SC" value="stop" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxNH" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxNI" role="1PaTwD">
                      <property role="3oM_SC" value="error" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxNJ" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxNK" role="1PaTwD">
                      <property role="3oM_SC" value="being" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxNL" role="1PaTwD">
                      <property role="3oM_SC" value="propagated," />
                    </node>
                    <node concept="3oM_SD" id="589APehYxNM" role="1PaTwD">
                      <property role="3oM_SC" value="enable" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxNN" role="1PaTwD">
                      <property role="3oM_SC" value="recover" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4jcOV4hNvFS" role="3cqZAp">
                  <node concept="3clFbT" id="4jcOV4hND48" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4jcOV4hNvG8" role="3clFbw">
                <node concept="37vLTw" id="1laj_RTMHGR" role="3uHU7B">
                  <ref role="3cqZAo" node="1laj_RTMHGN" resolve="targetRef" />
                </node>
                <node concept="10Nm6u" id="4jcOV4hNvG9" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1laj_RSiJjE" role="3clFbw">
            <node concept="3uibUv" id="1laj_RSiJvv" role="2ZW6by">
              <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
            </node>
            <node concept="2OqwBi" id="1laj_RSiJ2d" role="2ZW6bz">
              <node concept="37vLTw" id="1laj_RSiJ2e" role="2Oq$k0">
                <ref role="3cqZAo" node="4jcOV4hNvgq" resolve="ruleMatch" />
              </node>
              <node concept="liA8E" id="1laj_RSiJ2f" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~RuleMatch.rule()" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3mytCjY$4iZ" role="3cqZAp" />
        <node concept="3cpWs6" id="4jcOV4hNzSP" role="3cqZAp">
          <node concept="3clFbT" id="4jcOV4hNzT_" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3o9wrC3scyf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3sbje" role="jymVt" />
    <node concept="312cEg" id="6RN9TdHnni_" role="jymVt">
      <property role="TrG5h" value="feedbackConsumer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6RN9TdHnmT6" role="1B3o_S" />
      <node concept="3uibUv" id="6RN9TdHnnaO" role="1tU5fm">
        <ref role="3uigEE" node="6RN9TdHmQLy" resolve="FeedbackConsumer" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3o9wrC3sa$i" role="1B3o_S" />
    <node concept="3uibUv" id="3o9wrC3saA3" role="1zkMxy">
      <ref role="3uigEE" node="3o9wrC3s0ii" resolve="DefaultSupervisor" />
    </node>
    <node concept="3UR2Jj" id="3mytCjY$O2g" role="lGtFl">
      <node concept="TZ5HA" id="3mytCjY$O2h" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY$O2i" role="1dT_Ay">
          <property role="1dT_AB" value="A supervisor that processes feedback from program evaluation and forwards/consumes it. " />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjY$Ox0" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY$Ox1" role="1dT_Ay">
          <property role="1dT_AB" value="Uses " />
        </node>
        <node concept="1dT_AA" id="3mytCjY_05q" role="1dT_Ay">
          <node concept="92FcH" id="3mytCjY_05V" role="qph3F">
            <node concept="TZ5HA" id="3mytCjY_05X" role="2XjZqd" />
            <node concept="VXe08" id="3mytCjY_1b$" role="92FcQ">
              <ref role="VXe09" to="ksgm:70Wv0dJhQb2" resolve="OriginIndex" />
            </node>
          </node>
        </node>
        <node concept="1dT_AC" id="3mytCjY_05p" role="1dT_Ay">
          <property role="1dT_AB" value=" in order to decide which nodes to report feedback on. " />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="6RN9TdHmQLy">
    <property role="TrG5h" value="FeedbackConsumer" />
    <node concept="2tJIrI" id="7v$qFyZ8hRY" role="jymVt" />
    <node concept="3clFb_" id="7v$qFyZ8h4v" role="jymVt">
      <property role="TrG5h" value="consumeFeedback" />
      <node concept="37vLTG" id="4ekZiHdecEm" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="2sp9CU" id="4ekZiHdedao" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5rVYEA6lOcC" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="5rVYEA6lOhH" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="37vLTG" id="1laj_RSC3bt" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2sp9CU" id="1laj_RSC3bu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1laj_RSC3bv" role="3clF46">
        <property role="TrG5h" value="feedback" />
        <node concept="3uibUv" id="1laj_RSC3bw" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
        </node>
      </node>
      <node concept="37vLTG" id="5b5WPl4Qdtu" role="3clF46">
        <property role="TrG5h" value="feedbackKey" />
        <node concept="3uibUv" id="5b5WPl4Qe15" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="7v$qFyZ8h4x" role="3clF45" />
      <node concept="3Tm1VV" id="7v$qFyZ8h4y" role="1B3o_S" />
      <node concept="3clFbS" id="7v$qFyZ8h4z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7v$qFyZ8fWG" role="jymVt" />
    <node concept="3Tm1VV" id="6RN9TdHmQLz" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6RN9TdHmQY0">
    <property role="TrG5h" value="OriginScopeFeedbackConsumer" />
    <node concept="2tJIrI" id="6RN9TdHmUhq" role="jymVt" />
    <node concept="3clFbW" id="6RN9TdHmUdh" role="jymVt">
      <node concept="3cqZAl" id="6RN9TdHmUdk" role="3clF45" />
      <node concept="3clFbS" id="6RN9TdHmUdl" role="3clF47">
        <node concept="3clFbJ" id="6RN9TdHmUzI" role="3cqZAp">
          <node concept="3clFbS" id="6RN9TdHmUzJ" role="3clFbx">
            <node concept="3clFbF" id="6RN9TdHmUzK" role="3cqZAp">
              <node concept="37vLTI" id="6RN9TdHmUzL" role="3clFbG">
                <node concept="2OqwBi" id="6RN9TdHmUzM" role="37vLTJ">
                  <node concept="Xjq3P" id="6RN9TdHmUzN" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6RN9TdHmUzO" role="2OqNvi">
                    <ref role="2Oxat5" node="6RN9TdHmRTf" resolve="originIndex" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6RN9TdHmUzP" role="37vLTx">
                  <node concept="1eOMI4" id="6RN9TdHmUzQ" role="2Oq$k0">
                    <node concept="10QFUN" id="6RN9TdHmUzR" role="1eOMHV">
                      <node concept="3uibUv" id="6RN9TdHmUzS" role="10QFUM">
                        <ref role="3uigEE" to="ksgm:7eGEHDlcEJ0" resolve="CodeRulesProgram" />
                      </node>
                      <node concept="37vLTw" id="6RN9TdHmUzT" role="10QFUP">
                        <ref role="3cqZAo" node="6RN9TdHmUoq" resolve="program" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6RN9TdHmUzU" role="2OqNvi">
                    <ref role="37wK5l" to="ksgm:70Wv0dJiKW2" resolve="originIndex" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6RN9TdHmUzW" role="3clFbw">
            <node concept="3uibUv" id="6RN9TdHmUzX" role="2ZW6by">
              <ref role="3uigEE" to="ksgm:7eGEHDlcEJ0" resolve="CodeRulesProgram" />
            </node>
            <node concept="37vLTw" id="6RN9TdHmUzY" role="2ZW6bz">
              <ref role="3cqZAo" node="6RN9TdHmUoq" resolve="program" />
            </node>
          </node>
          <node concept="9aQIb" id="6RN9TdHmUzZ" role="9aQIa">
            <node concept="3clFbS" id="6RN9TdHmU$0" role="9aQI4">
              <node concept="3clFbF" id="6RN9TdHmU$1" role="3cqZAp">
                <node concept="37vLTI" id="6RN9TdHmU$2" role="3clFbG">
                  <node concept="10Nm6u" id="6RN9TdHmU$3" role="37vLTx" />
                  <node concept="2OqwBi" id="6RN9TdHmU$4" role="37vLTJ">
                    <node concept="Xjq3P" id="6RN9TdHmU$5" role="2Oq$k0" />
                    <node concept="2OwXpG" id="6RN9TdHmU$6" role="2OqNvi">
                      <ref role="2Oxat5" node="6RN9TdHmRTf" resolve="originIndex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rVYEA6lVbU" role="3cqZAp">
          <node concept="37vLTI" id="5rVYEA6lVbV" role="3clFbG">
            <node concept="2OqwBi" id="5rVYEA6lVbW" role="37vLTJ">
              <node concept="Xjq3P" id="5rVYEA6lVbX" role="2Oq$k0" />
              <node concept="2OwXpG" id="5rVYEA6lVbY" role="2OqNvi">
                <ref role="2Oxat5" node="3o9wrC3sf7p" resolve="mainSymbol" />
              </node>
            </node>
            <node concept="2ShNRf" id="5rVYEA6lVbZ" role="37vLTx">
              <node concept="1pGfFk" id="5rVYEA6lVc0" role="2ShVmc">
                <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                <node concept="Xl_RD" id="5rVYEA6lVc1" role="37wK5m">
                  <property role="Xl_RC" value="main" />
                </node>
                <node concept="3cmrfG" id="5rVYEA6lVc2" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6RN9TdHmUds" role="1B3o_S" />
      <node concept="37vLTG" id="6RN9TdHmUoq" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="6RN9TdHmUop" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RN9TdHmRfY" role="jymVt" />
    <node concept="3Tm1VV" id="6RN9TdHmQY1" role="1B3o_S" />
    <node concept="3uibUv" id="6RN9TdHmRhV" role="EKbjA">
      <ref role="3uigEE" node="6RN9TdHmQLy" resolve="FeedbackConsumer" />
    </node>
    <node concept="3clFb_" id="6RN9TdHmRjh" role="jymVt">
      <property role="TrG5h" value="consumeFeedback" />
      <node concept="37vLTG" id="6RN9TdHmRji" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="2sp9CU" id="6RN9TdHmRjj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6RN9TdHmRjk" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="5rVYEA6lOTm" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="37vLTG" id="6RN9TdHmRjm" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2sp9CU" id="6RN9TdHmRjn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6RN9TdHmRjo" role="3clF46">
        <property role="TrG5h" value="feedback" />
        <node concept="3uibUv" id="6RN9TdHmRjp" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
        </node>
      </node>
      <node concept="37vLTG" id="5rVYEA6lP2E" role="3clF46">
        <property role="TrG5h" value="feedbackKey" />
        <node concept="3uibUv" id="5rVYEA6lPad" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="6RN9TdHmRjq" role="3clF45" />
      <node concept="3Tm1VV" id="6RN9TdHnltH" role="1B3o_S" />
      <node concept="3clFbS" id="6RN9TdHmRjt" role="3clF47">
        <node concept="3clFbH" id="5rVYEA6lXBc" role="3cqZAp" />
        <node concept="3clFbJ" id="6RN9TdHmVcq" role="3cqZAp">
          <node concept="3clFbS" id="6RN9TdHmVcr" role="3clFbx">
            <node concept="3clFbF" id="6RN9TdHmVcB" role="3cqZAp">
              <node concept="1rXfSq" id="6RN9TdHmVcC" role="3clFbG">
                <ref role="37wK5l" node="6RN9TdHnlF0" resolve="consumeFeedbackImpl" />
                <node concept="37vLTw" id="6RN9TdHnl3m" role="37wK5m">
                  <ref role="3cqZAo" node="6RN9TdHmRji" resolve="template" />
                </node>
                <node concept="37vLTw" id="6RN9TdHnl6Q" role="37wK5m">
                  <ref role="3cqZAo" node="6RN9TdHmRjk" resolve="rule" />
                </node>
                <node concept="37vLTw" id="6RN9TdHnlaw" role="37wK5m">
                  <ref role="3cqZAo" node="6RN9TdHmRjm" resolve="target" />
                </node>
                <node concept="37vLTw" id="6RN9TdHmVcG" role="37wK5m">
                  <ref role="3cqZAo" node="6RN9TdHmRjo" resolve="feedback" />
                </node>
                <node concept="37vLTw" id="5rVYEA6lQhS" role="37wK5m">
                  <ref role="3cqZAo" node="5rVYEA6lP2E" resolve="feedbackKey" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5rVYEA6lXsE" role="3clFbw">
            <node concept="2OqwBi" id="6RN9TdHmVcS" role="3uHU7B">
              <node concept="37vLTw" id="6RN9TdHmVcT" role="2Oq$k0">
                <ref role="3cqZAo" node="6RN9TdHmRTf" resolve="originIndex" />
              </node>
              <node concept="liA8E" id="6RN9TdHmVcU" role="2OqNvi">
                <ref role="37wK5l" to="ksgm:70Wv0dJhQbd" resolve="isValidTarget" />
                <node concept="37vLTw" id="6RN9TdHnldT" role="37wK5m">
                  <ref role="3cqZAo" node="6RN9TdHmRjm" resolve="target" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="1laj_RSiVqP" role="3uHU7w">
              <ref role="37wK5l" node="1laj_RSiGQN" resolve="isOnStart" />
              <node concept="37vLTw" id="1laj_RSiVqQ" role="37wK5m">
                <ref role="3cqZAo" node="6RN9TdHmRjk" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6RN9TdHmRju" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6RN9TdHnlzq" role="jymVt" />
    <node concept="3clFb_" id="6RN9TdHnlF0" role="jymVt">
      <property role="TrG5h" value="consumeFeedbackImpl" />
      <node concept="37vLTG" id="6RN9TdHnlF1" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="2sp9CU" id="6RN9TdHnlF2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5rVYEA6lPt_" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="5rVYEA6lPDO" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="37vLTG" id="6RN9TdHnlF5" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2sp9CU" id="6RN9TdHnlF6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6RN9TdHnlF7" role="3clF46">
        <property role="TrG5h" value="feedback" />
        <node concept="3uibUv" id="6RN9TdHnlF8" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
        </node>
      </node>
      <node concept="37vLTG" id="5rVYEA6lPWL" role="3clF46">
        <property role="TrG5h" value="feedbackKey" />
        <node concept="3uibUv" id="5rVYEA6lQ4W" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="6RN9TdHnlF9" role="3clF45" />
      <node concept="3Tmbuc" id="6RN9TdHmRjr" role="1B3o_S" />
      <node concept="3clFbS" id="6RN9TdHnlFa" role="3clF47" />
      <node concept="P$JXv" id="6RN9TdHofpd" role="lGtFl">
        <node concept="TZ5HA" id="6RN9TdHofpe" role="TZ5H$">
          <node concept="1dT_AC" id="6RN9TdHofpf" role="1dT_Ay">
            <property role="1dT_AB" value="Override to get actual behavior" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1laj_RSiHjF" role="jymVt" />
    <node concept="3clFb_" id="1laj_RSiGQN" role="jymVt">
      <property role="TrG5h" value="isOnStart" />
      <node concept="3Tm6S6" id="1laj_RSiGQO" role="1B3o_S" />
      <node concept="10P_77" id="1laj_RSiGQP" role="3clF45" />
      <node concept="37vLTG" id="1laj_RSiGQH" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="1laj_RSiGQI" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3clFbS" id="1laj_RSiGQ2" role="3clF47">
        <node concept="3cpWs8" id="1laj_RSiGQ5" role="3cqZAp">
          <node concept="3cpWsn" id="1laj_RSiGQ6" role="3cpWs9">
            <property role="TrG5h" value="head" />
            <node concept="_YKpA" id="1laj_RSiGQ7" role="1tU5fm">
              <node concept="3uibUv" id="1laj_RSiGQ8" role="_ZDj9">
                <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="1laj_RSiGQ9" role="33vP2m">
              <node concept="2OqwBi" id="1laj_RSiGQa" role="2Oq$k0">
                <node concept="1eOMI4" id="1laj_RSiGQb" role="2Oq$k0">
                  <node concept="10QFUN" id="1laj_RSiGQc" role="1eOMHV">
                    <node concept="A3Dl8" id="1laj_RSiGQd" role="10QFUM">
                      <node concept="3uibUv" id="1laj_RSiGQe" role="A3Ik2">
                        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1laj_RSiGQf" role="10QFUP">
                      <node concept="37vLTw" id="1laj_RSiGQK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1laj_RSiGQH" resolve="rule" />
                      </node>
                      <node concept="liA8E" id="1laj_RSiGQh" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Rule.headKept()" resolve="headKept" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3QWeyG" id="1laj_RSiGQi" role="2OqNvi">
                  <node concept="10QFUN" id="1laj_RSiGQj" role="576Qk">
                    <node concept="A3Dl8" id="1laj_RSiGQk" role="10QFUM">
                      <node concept="3uibUv" id="1laj_RSiGQl" role="A3Ik2">
                        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1laj_RSiGQm" role="10QFUP">
                      <node concept="37vLTw" id="1laj_RSiGQJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1laj_RSiGQH" resolve="rule" />
                      </node>
                      <node concept="liA8E" id="1laj_RSiGQo" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Rule.headReplaced()" resolve="headReplaced" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1laj_RSiGQp" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1laj_RSiGQF" role="3cqZAp">
          <node concept="1Wc70l" id="1laj_RSiGQt" role="3cqZAk">
            <node concept="2OqwBi" id="1laj_RSiGQu" role="3uHU7w">
              <node concept="2OqwBi" id="1laj_RSiGQv" role="2Oq$k0">
                <node concept="1y4W85" id="1laj_RSiGQw" role="2Oq$k0">
                  <node concept="3cmrfG" id="1laj_RSiGQx" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="1laj_RSiGQy" role="1y566C">
                    <ref role="3cqZAo" node="1laj_RSiGQ6" resolve="head" />
                  </node>
                </node>
                <node concept="liA8E" id="1laj_RSiGQz" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                </node>
              </node>
              <node concept="liA8E" id="1laj_RSiGQ$" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object)" resolve="equals" />
                <node concept="37vLTw" id="1laj_RSiGQ_" role="37wK5m">
                  <ref role="3cqZAo" node="3o9wrC3sf7p" resolve="mainSymbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1laj_RSiGQA" role="3uHU7B">
              <node concept="2OqwBi" id="1laj_RSiGQB" role="3uHU7B">
                <node concept="37vLTw" id="1laj_RSiGQC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1laj_RSiGQ6" resolve="head" />
                </node>
                <node concept="34oBXx" id="1laj_RSiGQD" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="1laj_RSiGQE" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RN9TdHnl$Q" role="jymVt" />
    <node concept="312cEg" id="6RN9TdHmRTf" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6RN9TdHmRgD" role="1B3o_S" />
      <node concept="3uibUv" id="6RN9TdHmRh7" role="1tU5fm">
        <ref role="3uigEE" to="ksgm:70Wv0dJhQb2" resolve="OriginIndex" />
      </node>
    </node>
    <node concept="312cEg" id="3o9wrC3sf7p" role="jymVt">
      <property role="TrG5h" value="mainSymbol" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3o9wrC3sf7q" role="1B3o_S" />
      <node concept="3uibUv" id="3o9wrC3sf7s" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3o9wrC3VM3U">
    <property role="TrG5h" value="PrincipalNodeReportingSupervisor" />
    <node concept="2tJIrI" id="3o9wrC3VMfA" role="jymVt" />
    <node concept="3clFbW" id="3o9wrC3VMfB" role="jymVt">
      <node concept="37vLTG" id="3o9wrC3W9cf" role="3clF46">
        <property role="TrG5h" value="ispec" />
        <node concept="3uibUv" id="5tAk4yW2PuM" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalSpec" resolve="IncrementalSpec" />
        </node>
      </node>
      <node concept="37vLTG" id="6RN9TdHomDE" role="3clF46">
        <property role="TrG5h" value="feedbackConsumer" />
        <node concept="3uibUv" id="6RN9TdHonzQ" role="1tU5fm">
          <ref role="3uigEE" node="6RN9TdHmQLy" resolve="FeedbackConsumer" />
        </node>
      </node>
      <node concept="3cqZAl" id="3o9wrC3VMfE" role="3clF45" />
      <node concept="3Tm1VV" id="3o9wrC3VMfF" role="1B3o_S" />
      <node concept="3clFbS" id="3o9wrC3VMfG" role="3clF47">
        <node concept="3clFbF" id="3o9wrC3W9j0" role="3cqZAp">
          <node concept="37vLTI" id="3o9wrC3W9j1" role="3clFbG">
            <node concept="37vLTw" id="3o9wrC3W9j2" role="37vLTx">
              <ref role="3cqZAo" node="3o9wrC3W9cf" resolve="ispec" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3W9j3" role="37vLTJ">
              <node concept="Xjq3P" id="3o9wrC3W9j4" role="2Oq$k0" />
              <node concept="2OwXpG" id="3o9wrC3W9j5" role="2OqNvi">
                <ref role="2Oxat5" node="3o9wrC3VO0X" resolve="ispec" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6RN9TdHonDD" role="3cqZAp">
          <node concept="37vLTI" id="6RN9TdHooa3" role="3clFbG">
            <node concept="37vLTw" id="6RN9TdHoogy" role="37vLTx">
              <ref role="3cqZAo" node="6RN9TdHomDE" resolve="feedbackConsumer" />
            </node>
            <node concept="2OqwBi" id="6RN9TdHonP8" role="37vLTJ">
              <node concept="Xjq3P" id="6RN9TdHonDB" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RN9TdHoo14" role="2OqNvi">
                <ref role="2Oxat5" node="6RN9TdHon5Q" resolve="feedbackConsumer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3VMgi" role="jymVt" />
    <node concept="3clFb_" id="3o9wrC3VMgj" role="jymVt">
      <property role="TrG5h" value="handleFeedback" />
      <node concept="3Tm1VV" id="3o9wrC3VMgk" role="1B3o_S" />
      <node concept="10P_77" id="3o9wrC3VMgl" role="3clF45" />
      <node concept="37vLTG" id="3o9wrC3VMgm" role="3clF46">
        <property role="TrG5h" value="ruleMatch" />
        <node concept="3uibUv" id="1CI$Npxufku" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
        </node>
      </node>
      <node concept="37vLTG" id="7NX8kJ71b3L" role="3clF46">
        <property role="TrG5h" value="feedbackKey" />
        <node concept="3uibUv" id="1CI$Npxufkv" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3o9wrC3VMgo" role="3clF46">
        <property role="TrG5h" value="feedback" />
        <node concept="3uibUv" id="1CI$Npxufkw" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
        </node>
      </node>
      <node concept="3clFbS" id="3o9wrC3VMgq" role="3clF47">
        <node concept="3clFbH" id="3o9wrC3VMgr" role="3cqZAp" />
        <node concept="3cpWs8" id="3o9wrC3VMgs" role="3cqZAp">
          <node concept="3cpWsn" id="3o9wrC3VMgt" role="3cpWs9">
            <property role="TrG5h" value="rule" />
            <node concept="3uibUv" id="6tnA467920x" role="1tU5fm">
              <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
            </node>
            <node concept="10QFUN" id="6tnA46791Of" role="33vP2m">
              <node concept="2OqwBi" id="6tnA46791Oc" role="10QFUP">
                <node concept="37vLTw" id="6tnA46791Od" role="2Oq$k0">
                  <ref role="3cqZAo" node="3o9wrC3VMgm" resolve="ruleMatch" />
                </node>
                <node concept="liA8E" id="6tnA46791Oe" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~RuleMatch.rule()" resolve="rule" />
                </node>
              </node>
              <node concept="3uibUv" id="6tnA46791Wb" role="10QFUM">
                <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3o9wrC3VMgy" role="3cqZAp">
          <node concept="3clFbS" id="3o9wrC3VMgz" role="3clFbx">
            <node concept="3clFbH" id="4ekZiHdQanb" role="3cqZAp" />
            <node concept="3cpWs8" id="3o9wrC3WcLq" role="3cqZAp">
              <node concept="3cpWsn" id="3o9wrC3WcLt" role="3cpWs9">
                <property role="TrG5h" value="targetRef" />
                <node concept="2sp9CU" id="3o9wrC3Wd1k" role="1tU5fm" />
                <node concept="10Nm6u" id="4ekZiHdQaMY" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="4ekZiHde8bE" role="3cqZAp">
              <node concept="3cpWsn" id="4ekZiHde8bF" role="3cpWs9">
                <property role="TrG5h" value="templateRef" />
                <node concept="2sp9CU" id="4ekZiHde8ti" role="1tU5fm" />
                <node concept="10Nm6u" id="4ekZiHdegfG" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbH" id="4ekZiHdQaxE" role="3cqZAp" />
            <node concept="3clFbJ" id="1laj_RTZd8Y" role="3cqZAp">
              <node concept="3clFbS" id="1laj_RTZd8Z" role="3clFbx">
                <node concept="3clFbF" id="1laj_RTZd90" role="3cqZAp">
                  <node concept="37vLTI" id="1laj_RTZd91" role="3clFbG">
                    <node concept="2OqwBi" id="4ekZiHde4fm" role="37vLTx">
                      <node concept="1eOMI4" id="1laj_RTZd92" role="2Oq$k0">
                        <node concept="10QFUN" id="1laj_RTZd93" role="1eOMHV">
                          <node concept="3uibUv" id="4ekZiHde3W3" role="10QFUM">
                            <ref role="3uigEE" to="cxk7:4ekZiHddiXo" resolve="FeedbackOrigin" />
                          </node>
                          <node concept="2OqwBi" id="1laj_RTZd95" role="10QFUP">
                            <node concept="37vLTw" id="1laj_RTZd96" role="2Oq$k0">
                              <ref role="3cqZAo" node="3o9wrC3VMgo" resolve="feedback" />
                            </node>
                            <node concept="liA8E" id="1laj_RTZd97" role="2OqNvi">
                              <ref role="37wK5l" to="w7la:~EvaluationFeedback.getDetails()" resolve="getDetails" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4ekZiHde4pF" role="2OqNvi">
                        <ref role="37wK5l" to="cxk7:4ekZiHddjeb" resolve="getTarget" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1laj_RTZdnv" role="37vLTJ">
                      <ref role="3cqZAo" node="3o9wrC3WcLt" resolve="targetRef" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ekZiHde8EB" role="3cqZAp">
                  <node concept="37vLTI" id="4ekZiHde8ED" role="3clFbG">
                    <node concept="2OqwBi" id="4ekZiHde8bG" role="37vLTx">
                      <node concept="1eOMI4" id="4ekZiHde8bH" role="2Oq$k0">
                        <node concept="10QFUN" id="4ekZiHde8bI" role="1eOMHV">
                          <node concept="3uibUv" id="4ekZiHde8bJ" role="10QFUM">
                            <ref role="3uigEE" to="cxk7:4ekZiHddiXo" resolve="FeedbackOrigin" />
                          </node>
                          <node concept="2OqwBi" id="4ekZiHde8bK" role="10QFUP">
                            <node concept="37vLTw" id="4ekZiHde8bL" role="2Oq$k0">
                              <ref role="3cqZAo" node="3o9wrC3VMgo" resolve="feedback" />
                            </node>
                            <node concept="liA8E" id="4ekZiHde8bM" role="2OqNvi">
                              <ref role="37wK5l" to="w7la:~EvaluationFeedback.getDetails()" resolve="getDetails" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4ekZiHde8bN" role="2OqNvi">
                        <ref role="37wK5l" to="cxk7:4ekZiHddjyV" resolve="getTemplate" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4ekZiHde8EH" role="37vLTJ">
                      <ref role="3cqZAo" node="4ekZiHde8bF" resolve="templateRef" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1laj_RTZd9a" role="3clFbw">
                <node concept="3uibUv" id="4ekZiHde3Jw" role="2ZW6by">
                  <ref role="3uigEE" to="cxk7:4ekZiHddiXo" resolve="FeedbackOrigin" />
                </node>
                <node concept="2OqwBi" id="1laj_RTZd9c" role="2ZW6bz">
                  <node concept="37vLTw" id="1laj_RTZd9d" role="2Oq$k0">
                    <ref role="3cqZAo" node="3o9wrC3VMgo" resolve="feedback" />
                  </node>
                  <node concept="liA8E" id="1laj_RTZd9e" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationFeedback.getDetails()" resolve="getDetails" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1laj_RTZdHQ" role="3cqZAp" />
            <node concept="3clFbJ" id="4ekZiHdQ8r0" role="3cqZAp">
              <node concept="3clFbS" id="4ekZiHdQ8r2" role="3clFbx">
                <node concept="3clFbF" id="1laj_RTZcXG" role="3cqZAp">
                  <node concept="37vLTI" id="1laj_RTZcXI" role="3clFbG">
                    <node concept="37vLTw" id="1laj_RTZcXM" role="37vLTJ">
                      <ref role="3cqZAo" node="3o9wrC3WcLt" resolve="targetRef" />
                    </node>
                    <node concept="2OqwBi" id="3o9wrC3VMid" role="37vLTx">
                      <node concept="37vLTw" id="6tnA467925_" role="2Oq$k0">
                        <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
                      </node>
                      <node concept="liA8E" id="3o9wrC3VMii" role="2OqNvi">
                        <ref role="37wK5l" to="i348:7nPD14Ob4em" resolve="targetRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ekZiHdRyEu" role="3cqZAp">
                  <node concept="37vLTI" id="4ekZiHdRyNF" role="3clFbG">
                    <node concept="37vLTw" id="4ekZiHdRyEs" role="37vLTJ">
                      <ref role="3cqZAo" node="4ekZiHde8bF" resolve="templateRef" />
                    </node>
                    <node concept="2OqwBi" id="4ekZiHdRyZv" role="37vLTx">
                      <node concept="37vLTw" id="6tnA46792CY" role="2Oq$k0">
                        <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
                      </node>
                      <node concept="liA8E" id="4ekZiHdRz8V" role="2OqNvi">
                        <ref role="37wK5l" to="i348:7nPD14Ob4lt" resolve="templateRef" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="4ekZiHdQ8KF" role="3clFbw">
                <node concept="10Nm6u" id="4ekZiHdQ8OO" role="3uHU7w" />
                <node concept="37vLTw" id="4ekZiHdQ8AS" role="3uHU7B">
                  <ref role="3cqZAo" node="3o9wrC3WcLt" resolve="targetRef" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4ekZiHdQ811" role="3cqZAp" />
            <node concept="3clFbJ" id="3o9wrC3WedI" role="3cqZAp">
              <node concept="3clFbS" id="3o9wrC3WedK" role="3clFbx">
                <node concept="3clFbH" id="3o9wrC3WiBc" role="3cqZAp" />
                <node concept="3clFbF" id="7NX8kJ71b3V" role="3cqZAp">
                  <node concept="2OqwBi" id="7NX8kJ71b3W" role="3clFbG">
                    <node concept="37vLTw" id="7NX8kJ71b3X" role="2Oq$k0">
                      <ref role="3cqZAo" node="6RN9TdHon5Q" resolve="feedbackConsumer" />
                    </node>
                    <node concept="liA8E" id="7NX8kJ71b3Y" role="2OqNvi">
                      <ref role="37wK5l" node="7v$qFyZ8h4v" resolve="consumeFeedback" />
                      <node concept="37vLTw" id="7NX8kJ71b3Z" role="37wK5m">
                        <ref role="3cqZAo" node="4ekZiHde8bF" resolve="templateRef" />
                      </node>
                      <node concept="37vLTw" id="5rVYEA6m0GN" role="37wK5m">
                        <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
                      </node>
                      <node concept="37vLTw" id="7NX8kJ71b40" role="37wK5m">
                        <ref role="3cqZAo" node="3o9wrC3WcLt" resolve="targetRef" />
                      </node>
                      <node concept="37vLTw" id="7NX8kJ71b41" role="37wK5m">
                        <ref role="3cqZAo" node="3o9wrC3VMgo" resolve="feedback" />
                      </node>
                      <node concept="37vLTw" id="1CI$NpxufJK" role="37wK5m">
                        <ref role="3cqZAo" node="7NX8kJ71b3L" resolve="feedbackKey" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1laj_RSCjSy" role="3cqZAp" />
                <node concept="3SKdUt" id="3o9wrC3VMhr" role="3cqZAp">
                  <node concept="1PaTwC" id="3o9wrC3VMhs" role="1aUNEU">
                    <node concept="3oM_SD" id="3o9wrC3VMht" role="1PaTwD">
                      <property role="3oM_SC" value="stop" />
                    </node>
                    <node concept="3oM_SD" id="3o9wrC3VMhu" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="3o9wrC3VMhv" role="1PaTwD">
                      <property role="3oM_SC" value="error" />
                    </node>
                    <node concept="3oM_SD" id="3o9wrC3VMhw" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="3o9wrC3VMhx" role="1PaTwD">
                      <property role="3oM_SC" value="being" />
                    </node>
                    <node concept="3oM_SD" id="3o9wrC3VMhy" role="1PaTwD">
                      <property role="3oM_SC" value="propagated," />
                    </node>
                    <node concept="3oM_SD" id="3o9wrC3VMhz" role="1PaTwD">
                      <property role="3oM_SC" value="enable" />
                    </node>
                    <node concept="3oM_SD" id="3o9wrC3VMh$" role="1PaTwD">
                      <property role="3oM_SC" value="recover" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3o9wrC3VMhW" role="3cqZAp">
                  <node concept="3clFbT" id="3o9wrC3VMhX" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3o9wrC3VMib" role="3clFbw">
                <node concept="10Nm6u" id="3o9wrC3VMic" role="3uHU7w" />
                <node concept="37vLTw" id="3o9wrC3Weya" role="3uHU7B">
                  <ref role="3cqZAo" node="3o9wrC3WcLt" resolve="targetRef" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1laj_RTZc_0" role="3clFbw">
            <node concept="2ZW3vV" id="1laj_RTZc_1" role="3uHU7w">
              <node concept="3uibUv" id="4ekZiHdDRLC" role="2ZW6by">
                <ref role="3uigEE" to="cxk7:4ekZiHddiXo" resolve="FeedbackOrigin" />
              </node>
              <node concept="2OqwBi" id="1laj_RTZc_3" role="2ZW6bz">
                <node concept="37vLTw" id="1laj_RTZc_4" role="2Oq$k0">
                  <ref role="3cqZAo" node="3o9wrC3VMgo" resolve="feedback" />
                </node>
                <node concept="liA8E" id="1laj_RTZc_5" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~EvaluationFeedback.getDetails()" resolve="getDetails" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3o9wrC3VMi2" role="3uHU7B">
              <node concept="2OqwBi" id="3o9wrC3WaRP" role="3uHU7B">
                <node concept="37vLTw" id="3o9wrC3WaxE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3o9wrC3VO0X" resolve="ispec" />
                </node>
                <node concept="liA8E" id="3o9wrC3Wbds" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~IncrementalSpec.isPrincipal(jetbrains.mps.logic.reactor.program.Rule)" resolve="isPrincipal" />
                  <node concept="37vLTw" id="3o9wrC3Wbi1" role="37wK5m">
                    <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1laj_RTZc_6" role="3uHU7w">
                <node concept="3uibUv" id="1laj_RTZc_7" role="2ZW6by">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
                <node concept="2OqwBi" id="1laj_RTZc_8" role="2ZW6bz">
                  <node concept="37vLTw" id="1laj_RTZc_9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3o9wrC3VMgm" resolve="ruleMatch" />
                  </node>
                  <node concept="liA8E" id="1laj_RTZc_a" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~RuleMatch.rule()" resolve="rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3o9wrC3VMij" role="3cqZAp" />
        <node concept="3cpWs6" id="3o9wrC3VMik" role="3cqZAp">
          <node concept="3clFbT" id="3o9wrC3VMil" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3o9wrC3VMim" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3VM5I" role="jymVt" />
    <node concept="312cEg" id="3o9wrC3VO0X" role="jymVt">
      <property role="TrG5h" value="ispec" />
      <node concept="3Tm6S6" id="3o9wrC3VNvy" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW2PvL" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec" resolve="IncrementalSpec" />
      </node>
    </node>
    <node concept="312cEg" id="6RN9TdHon5Q" role="jymVt">
      <property role="TrG5h" value="feedbackConsumer" />
      <node concept="3Tm6S6" id="6RN9TdHomTf" role="1B3o_S" />
      <node concept="3uibUv" id="6RN9TdHonpD" role="1tU5fm">
        <ref role="3uigEE" node="6RN9TdHmQLy" resolve="FeedbackConsumer" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3o9wrC3VM3V" role="1B3o_S" />
    <node concept="3uibUv" id="3o9wrC3WiX8" role="1zkMxy">
      <ref role="3uigEE" node="3o9wrC3s0ii" resolve="DefaultSupervisor" />
    </node>
  </node>
  <node concept="312cEu" id="39eNUjlSKNI">
    <property role="TrG5h" value="TemplateTraceImpl" />
    <property role="3GE5qa" value="trace" />
    <node concept="2tJIrI" id="4Q576RaVXNU" role="jymVt" />
    <node concept="312cEg" id="799SgOKlJtN" role="jymVt">
      <property role="TrG5h" value="required2sources" />
      <node concept="3Tm6S6" id="799SgOKlEor" role="1B3o_S" />
      <node concept="3rvAFt" id="799SgOKlI5k" role="1tU5fm">
        <node concept="3Tqbb2" id="4Q576RaSCJH" role="3rvQeY" />
        <node concept="2BANLN" id="799SgOKAzDI" role="3rvSg0">
          <node concept="3uibUv" id="4Q576RbBc0w" role="_ZDj9">
            <ref role="3uigEE" node="39eNUjlVKZl" resolve="TemplateTraceImpl.TracedTemplate" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="799SgOKv4xV" role="33vP2m">
        <node concept="3rGOSV" id="799SgOKv7RR" role="2ShVmc">
          <node concept="3Tqbb2" id="4Q576RaSKA2" role="3rHrn6" />
          <node concept="2BANLN" id="799SgOKABb$" role="3rHtpV">
            <node concept="3uibUv" id="4Q576RbBeM2" role="_ZDj9">
              <ref role="3uigEE" node="39eNUjlVKZl" resolve="TemplateTraceImpl.TracedTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4Q576RaSSjT" role="jymVt">
      <property role="TrG5h" value="sourcesStack" />
      <node concept="3Tm6S6" id="4Q576RaSPu5" role="1B3o_S" />
      <node concept="2BANLN" id="4Q576RaSS8Z" role="1tU5fm">
        <node concept="3uibUv" id="4Q576RaSWZI" role="_ZDj9">
          <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
        </node>
      </node>
      <node concept="2ShNRf" id="4Q576RaSUUZ" role="33vP2m">
        <node concept="2Jqq0_" id="4Q576RaSWkt" role="2ShVmc">
          <node concept="3uibUv" id="4Q576RaSWvr" role="HW$YZ">
            <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4tC1JBnqMWs" role="jymVt">
      <property role="TrG5h" value="origins" />
      <node concept="3Tm6S6" id="4tC1JBnqJie" role="1B3o_S" />
      <node concept="3vKaQO" id="4tC1JBnqMA2" role="1tU5fm">
        <node concept="3uibUv" id="4Q576Rb1n3b" role="3O5elw">
          <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
        </node>
      </node>
      <node concept="2ShNRf" id="4tC1JBnqQsW" role="33vP2m">
        <node concept="Tc6Ow" id="4Q576RaX852" role="2ShVmc">
          <node concept="3uibUv" id="4Q576Rb1ocE" role="HW$YZ">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="799SgOK_oq2" role="jymVt" />
    <node concept="2tJIrI" id="799SgOKAqra" role="jymVt" />
    <node concept="3clFb_" id="799SgOK_tIV" role="jymVt">
      <property role="TrG5h" value="getSources" />
      <node concept="3clFbS" id="799SgOK_tIY" role="3clF47">
        <node concept="3clFbJ" id="4Q576RbhwaC" role="3cqZAp">
          <node concept="3clFbS" id="4Q576RbhwaE" role="3clFbx">
            <node concept="3clFbF" id="4Q576RbgrPL" role="3cqZAp">
              <node concept="37vLTI" id="4Q576RbgrPN" role="3clFbG">
                <node concept="3EllGN" id="4Q576RbgrPR" role="37vLTJ">
                  <node concept="37vLTw" id="4Q576RbgrPS" role="3ElVtu">
                    <ref role="3cqZAo" node="4Q576RaSHSu" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="4Q576RbgrPT" role="3ElQJh">
                    <ref role="3cqZAo" node="799SgOKlJtN" resolve="required2sources" />
                  </node>
                </node>
                <node concept="2ShNRf" id="4Q576RbgrPO" role="37vLTx">
                  <node concept="2Jqq0_" id="4Q576RbgrPP" role="2ShVmc">
                    <node concept="3uibUv" id="4Q576RbBgTL" role="HW$YZ">
                      <ref role="3uigEE" node="39eNUjlVKZl" resolve="TemplateTraceImpl.TracedTemplate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4Q576RbhR27" role="3clFbw">
            <node concept="2OqwBi" id="4Q576RbhR29" role="3fr31v">
              <node concept="37vLTw" id="4Q576RbhR2a" role="2Oq$k0">
                <ref role="3cqZAo" node="799SgOKlJtN" resolve="required2sources" />
              </node>
              <node concept="2Nt0df" id="4Q576RbhR2b" role="2OqNvi">
                <node concept="37vLTw" id="4Q576RbhR2c" role="38cxEo">
                  <ref role="3cqZAo" node="4Q576RaSHSu" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Q576RbhzLR" role="3cqZAp">
          <node concept="3EllGN" id="4Q576RbhBGs" role="3cqZAk">
            <node concept="37vLTw" id="4Q576RbhDbE" role="3ElVtu">
              <ref role="3cqZAo" node="4Q576RaSHSu" resolve="node" />
            </node>
            <node concept="37vLTw" id="4Q576Rbh_E9" role="3ElQJh">
              <ref role="3cqZAo" node="799SgOKlJtN" resolve="required2sources" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="799SgOK_r2j" role="1B3o_S" />
      <node concept="_YKpA" id="4Q576RaS5Iy" role="3clF45">
        <node concept="3uibUv" id="4Q576RbBhOi" role="_ZDj9">
          <ref role="3uigEE" node="39eNUjlVKZl" resolve="TemplateTraceImpl.TracedTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="4Q576RaSHSu" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4Q576RaSHSt" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="799SgOK__03" role="jymVt" />
    <node concept="3clFb_" id="4Q576RaUFqs" role="jymVt">
      <property role="TrG5h" value="takeSource" />
      <node concept="3clFbS" id="4Q576RaUFqv" role="3clF47">
        <node concept="3cpWs8" id="4Q576RaUOo_" role="3cqZAp">
          <node concept="3cpWsn" id="4Q576RaUOoA" role="3cpWs9">
            <property role="TrG5h" value="currentSource" />
            <node concept="3uibUv" id="4Q576RaV4Yd" role="1tU5fm">
              <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
            </node>
            <node concept="1rXfSq" id="4Q576RbagSC" role="33vP2m">
              <ref role="37wK5l" node="4Q576Rb9N55" resolve="currentSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Q576RaUQgw" role="3cqZAp">
          <node concept="3clFbS" id="4Q576RaUQgy" role="3clFbx">
            <node concept="YS8fn" id="4Q576RaUVOV" role="3cqZAp">
              <node concept="2ShNRf" id="4Q576RaUZ_Q" role="YScLw">
                <node concept="1pGfFk" id="4Q576RaV06i" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4Q576Rb774o" role="3clFbw">
            <node concept="3y3z36" id="4Q576Rb79_c" role="3uHU7B">
              <node concept="10Nm6u" id="4Q576Rb79My" role="3uHU7w" />
              <node concept="37vLTw" id="4Q576Rb79kB" role="3uHU7B">
                <ref role="3cqZAo" node="4Q576RaUInz" resolve="node" />
              </node>
            </node>
            <node concept="3fqX7Q" id="4Q576Rb70sf" role="3uHU7w">
              <node concept="2OqwBi" id="4Q576Rb70sh" role="3fr31v">
                <node concept="liA8E" id="4Q576Rb70si" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="4Q576Rb70sj" role="37wK5m">
                    <node concept="37vLTw" id="4Q576Rb70sk" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Q576RaUOoA" resolve="currentSource" />
                    </node>
                    <node concept="liA8E" id="4Q576Rb70sl" role="2OqNvi">
                      <ref role="37wK5l" node="4tC1JBnlqaS" resolve="tracedNode" />
                    </node>
                  </node>
                </node>
                <node concept="2JrnkZ" id="4Q576Rb70sm" role="2Oq$k0">
                  <node concept="2OqwBi" id="4Q576Rb70sn" role="2JrQYb">
                    <node concept="37vLTw" id="4Q576Rb70so" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Q576RaUInz" resolve="node" />
                    </node>
                    <node concept="iZEcu" id="4Q576Rb70sp" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Q576RaV0ps" role="3cqZAp">
          <node concept="37vLTw" id="4Q576RaV3ey" role="3cqZAk">
            <ref role="3cqZAo" node="4Q576RaUOoA" resolve="currentSource" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Q576RaUC44" role="1B3o_S" />
      <node concept="3uibUv" id="4Q576RaUF8n" role="3clF45">
        <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
      </node>
      <node concept="37vLTG" id="4Q576RaUInz" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4Q576RaUIny" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="799SgOK__bZ" role="jymVt" />
    <node concept="3clFb_" id="4Q576Rb9n_h" role="jymVt">
      <property role="TrG5h" value="pushSource" />
      <node concept="3clFbS" id="4Q576Rb9n_k" role="3clF47">
        <node concept="3clFbF" id="4Q576Rb9ieC" role="3cqZAp">
          <node concept="2OqwBi" id="4Q576Rb9j9k" role="3clFbG">
            <node concept="37vLTw" id="4Q576Rb9ieA" role="2Oq$k0">
              <ref role="3cqZAo" node="4Q576RaSSjT" resolve="sourcesStack" />
            </node>
            <node concept="2Ke9KJ" id="4Q576Rb9uXW" role="2OqNvi">
              <node concept="37vLTw" id="4Q576Rb9wi6" role="25WWJ7">
                <ref role="3cqZAo" node="4Q576Rb9rjS" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Q576Rb9lt3" role="1B3o_S" />
      <node concept="3cqZAl" id="4Q576Rb9peq" role="3clF45" />
      <node concept="37vLTG" id="4Q576Rb9rjS" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="3uibUv" id="4Q576Rb9rjR" role="1tU5fm">
          <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Q576Rb9xyr" role="jymVt">
      <property role="TrG5h" value="popSource" />
      <node concept="3clFbS" id="4Q576Rb9xys" role="3clF47">
        <node concept="3clFbF" id="4Q576Rb9xyt" role="3cqZAp">
          <node concept="2OqwBi" id="4Q576Rb9xyu" role="3clFbG">
            <node concept="37vLTw" id="4Q576Rb9xyv" role="2Oq$k0">
              <ref role="3cqZAo" node="4Q576RaSSjT" resolve="sourcesStack" />
            </node>
            <node concept="2Kt5_m" id="4Q576Rbf2xs" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Q576Rb9xyy" role="1B3o_S" />
      <node concept="3uibUv" id="4Q576Rb9IVv" role="3clF45">
        <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
      </node>
    </node>
    <node concept="3clFb_" id="4Q576Rb9N55" role="jymVt">
      <property role="TrG5h" value="currentSource" />
      <node concept="3clFbS" id="4Q576Rb9N56" role="3clF47">
        <node concept="3clFbF" id="4Q576Rb9N57" role="3cqZAp">
          <node concept="2OqwBi" id="4Q576Rb9N58" role="3clFbG">
            <node concept="37vLTw" id="4Q576Rb9N59" role="2Oq$k0">
              <ref role="3cqZAo" node="4Q576RaSSjT" resolve="sourcesStack" />
            </node>
            <node concept="1yVyf7" id="4Q576Rbf2Td" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Q576Rb9N5b" role="1B3o_S" />
      <node concept="3uibUv" id="4Q576Rb9N5c" role="3clF45">
        <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Q576Rbairc" role="jymVt" />
    <node concept="3clFb_" id="4Q576Rbanix" role="jymVt">
      <property role="TrG5h" value="traceChildNode" />
      <node concept="37vLTG" id="4Q576RbbbKh" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4Q576RbbefL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4Q576RbdIVk" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="4Q576Rbb7Za" role="1tU5fm">
          <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
        </node>
      </node>
      <node concept="3clFbS" id="4Q576Rbani$" role="3clF47">
        <node concept="2$JKZl" id="4Q576RbfLVU" role="3cqZAp">
          <node concept="3clFbS" id="4Q576RbfLVW" role="2LFqv$">
            <node concept="3cpWs8" id="4Q576RbfOWL" role="3cqZAp">
              <node concept="3cpWsn" id="4Q576RbfOWM" role="3cpWs9">
                <property role="TrG5h" value="currentSource" />
                <node concept="3uibUv" id="4Q576RbfOWN" role="1tU5fm">
                  <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
                </node>
                <node concept="1rXfSq" id="4Q576RbfOWO" role="33vP2m">
                  <ref role="37wK5l" node="4Q576Rb9N55" resolve="currentSource" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4Q576RbfOWP" role="3cqZAp">
              <node concept="3cpWsn" id="4Q576RbfOWQ" role="3cpWs9">
                <property role="TrG5h" value="maybeParent" />
                <node concept="2sp9CU" id="4Q576RbfOWR" role="1tU5fm" />
                <node concept="2OqwBi" id="4Q576RbfOWS" role="33vP2m">
                  <node concept="37vLTw" id="4Q576RbfOWT" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Q576RbfOWM" resolve="currentSource" />
                  </node>
                  <node concept="liA8E" id="4Q576RbfOWU" role="2OqNvi">
                    <ref role="37wK5l" node="4tC1JBnlqaS" resolve="tracedNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4Q576RbfPy0" role="3cqZAp">
              <node concept="3clFbS" id="4Q576RbfPy1" role="3clFbx">
                <node concept="3SKdUt" id="4Q576RbfPy2" role="3cqZAp">
                  <node concept="1PaTwC" id="4Q576RbfPy3" role="1aUNEU">
                    <node concept="3oM_SD" id="4Q576RbfPy4" role="1PaTwD">
                      <property role="3oM_SC" value="if" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPy5" role="1PaTwD">
                      <property role="3oM_SC" value="current" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPy6" role="1PaTwD">
                      <property role="3oM_SC" value="source" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPy7" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPy8" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPy9" role="1PaTwD">
                      <property role="3oM_SC" value="parent" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPya" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPyb" role="1PaTwD">
                      <property role="3oM_SC" value="next" />
                    </node>
                    <node concept="3oM_SD" id="4Q576RbfPyc" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4Q576RbfPyd" role="3cqZAp">
                  <node concept="2OqwBi" id="4Q576RbfPye" role="3clFbG">
                    <node concept="37vLTw" id="4Q576RbfPyf" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Q576RbfOWM" resolve="currentSource" />
                    </node>
                    <node concept="liA8E" id="4Q576RbfPyg" role="2OqNvi">
                      <ref role="37wK5l" node="799SgOKzLTr" resolve="add" />
                      <node concept="37vLTw" id="4Q576RbfPyh" role="37wK5m">
                        <ref role="3cqZAo" node="4Q576RbdIVk" resolve="child" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="4Q576RbfQiL" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="4Q576RbfPyi" role="3clFbw">
                <node concept="3y3z36" id="4Q576RbfPyj" role="3uHU7B">
                  <node concept="10Nm6u" id="4Q576RbfPyk" role="3uHU7w" />
                  <node concept="37vLTw" id="4Q576RbfPyl" role="3uHU7B">
                    <ref role="3cqZAo" node="4Q576RbfOWQ" resolve="maybeParent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4Q576RbfPym" role="3uHU7w">
                  <node concept="liA8E" id="4Q576RbfPyn" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="4Q576RbfPyo" role="37wK5m">
                      <node concept="2OqwBi" id="4Q576RbfPyp" role="2Oq$k0">
                        <node concept="37vLTw" id="4Q576RbfPyq" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Q576RbbbKh" resolve="node" />
                        </node>
                        <node concept="1mfA1w" id="4Q576RbfPyr" role="2OqNvi" />
                      </node>
                      <node concept="iZEcu" id="4Q576RbfPys" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="4Q576RbfPyt" role="2Oq$k0">
                    <node concept="37vLTw" id="4Q576RbfPyu" role="2JrQYb">
                      <ref role="3cqZAo" node="4Q576RbfOWQ" resolve="maybeParent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4Q576RbfPyv" role="9aQIa">
                <node concept="3clFbS" id="4Q576RbfPyw" role="9aQI4">
                  <node concept="3clFbF" id="4Q576RbfPyD" role="3cqZAp">
                    <node concept="1rXfSq" id="4Q576RbfPyE" role="3clFbG">
                      <ref role="37wK5l" node="4Q576Rb9xyr" resolve="popSource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4Q576RbfO4K" role="2$JKZa">
            <node concept="37vLTw" id="4Q576RbfMfF" role="2Oq$k0">
              <ref role="3cqZAo" node="4Q576RaSSjT" resolve="sourcesStack" />
            </node>
            <node concept="3GX2aA" id="4Q576RbfOVa" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Q576RbakQ$" role="1B3o_S" />
      <node concept="3cqZAl" id="4Q576Rbapr0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4Q576RbayW0" role="jymVt" />
    <node concept="3clFb_" id="4Q576RbaBxU" role="jymVt">
      <property role="TrG5h" value="traceRequiredOrOriginNode" />
      <node concept="3clFbS" id="4Q576RbaBxX" role="3clF47">
        <node concept="3clFbJ" id="4Q576RbaW3L" role="3cqZAp">
          <node concept="3clFbS" id="4Q576RbaW3M" role="3clFbx">
            <node concept="3cpWs8" id="4Q576RbaW3N" role="3cqZAp">
              <node concept="3cpWsn" id="4Q576RbaW3O" role="3cpWs9">
                <property role="TrG5h" value="sources" />
                <node concept="_YKpA" id="4Q576RbaW3P" role="1tU5fm">
                  <node concept="3qUE_q" id="4Q576RbBlmD" role="_ZDj9">
                    <node concept="3uibUv" id="4Q576RbBlvW" role="3qUE_r">
                      <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="4Q576RbaW3R" role="33vP2m">
                  <node concept="37vLTw" id="4Q576Rbbg$9" role="3ElVtu">
                    <ref role="3cqZAo" node="4Q576RbdFTg" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="4Q576RbaW3T" role="3ElQJh">
                    <ref role="3cqZAo" node="799SgOKlJtN" resolve="required2sources" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Q576RbaW3U" role="3cqZAp">
              <node concept="1PaTwC" id="4Q576RbaW3V" role="1aUNEU">
                <node concept="3oM_SD" id="4Q576RbaW3W" role="1PaTwD">
                  <property role="3oM_SC" value="sources" />
                </node>
                <node concept="3oM_SD" id="4Q576RbaW3X" role="1PaTwD">
                  <property role="3oM_SC" value="mustn't" />
                </node>
                <node concept="3oM_SD" id="4Q576RbaW3Y" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="4Q576RbaW3Z" role="1PaTwD">
                  <property role="3oM_SC" value="empty" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Q576RbBBCK" role="3cqZAp">
              <node concept="1PaTwC" id="4Q576RbBBCL" role="1aUNEU">
                <node concept="3oM_SD" id="4Q576RbBC9h" role="1PaTwD">
                  <property role="3oM_SC" value="NB:" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBC9M" role="1PaTwD">
                  <property role="3oM_SC" value="sources" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBC9X" role="1PaTwD">
                  <property role="3oM_SC" value="queue" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCa9" role="1PaTwD">
                  <property role="3oM_SC" value="relies" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCaF" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCaT" role="1PaTwD">
                  <property role="3oM_SC" value="contract" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCbg" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCbC" role="1PaTwD">
                  <property role="3oM_SC" value="required" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCbT" role="1PaTwD">
                  <property role="3oM_SC" value="nodes" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCcb" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBCcu" role="1PaTwD">
                  <property role="3oM_SC" value="processed" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD7i" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD7v" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD7H" role="1PaTwD">
                  <property role="3oM_SC" value="same" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD7W" role="1PaTwD">
                  <property role="3oM_SC" value="order" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD8k" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD8H" role="1PaTwD">
                  <property role="3oM_SC" value="they" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD97" role="1PaTwD">
                  <property role="3oM_SC" value="were" />
                </node>
                <node concept="3oM_SD" id="4Q576RbBD9E" role="1PaTwD">
                  <property role="3oM_SC" value="required" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4Q576RbaW40" role="3cqZAp">
              <node concept="3cpWsn" id="4Q576RbaW41" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3uibUv" id="4Q576RbaW42" role="1tU5fm">
                  <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
                </node>
                <node concept="2OqwBi" id="4Q576RbaW43" role="33vP2m">
                  <node concept="37vLTw" id="4Q576RbaW44" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Q576RbaW3O" resolve="sources" />
                  </node>
                  <node concept="2Kt2Hk" id="4Q576RbaW45" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4Q576RbaW46" role="3cqZAp">
              <node concept="3clFbS" id="4Q576RbaW47" role="3clFbx">
                <node concept="3clFbF" id="4Q576RbaW48" role="3cqZAp">
                  <node concept="2OqwBi" id="4Q576RbaW49" role="3clFbG">
                    <node concept="37vLTw" id="4Q576RbaW4a" role="2Oq$k0">
                      <ref role="3cqZAo" node="799SgOKlJtN" resolve="required2sources" />
                    </node>
                    <node concept="kI3uX" id="4Q576RbaW4b" role="2OqNvi">
                      <node concept="37vLTw" id="4Q576Rbbhr1" role="kIiFs">
                        <ref role="3cqZAo" node="4Q576RbdFTg" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4Q576RbaW4d" role="3clFbw">
                <node concept="37vLTw" id="4Q576RbaW4e" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Q576RbaW3O" resolve="sources" />
                </node>
                <node concept="1v1jN8" id="4Q576RbaW4f" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="4Q576RbaW4g" role="3cqZAp">
              <node concept="2OqwBi" id="4Q576RbaW4h" role="3clFbG">
                <node concept="37vLTw" id="4Q576RbaW4i" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Q576RbaW41" resolve="source" />
                </node>
                <node concept="liA8E" id="4Q576RbaW4j" role="2OqNvi">
                  <ref role="37wK5l" node="799SgOKzLTr" resolve="add" />
                  <node concept="37vLTw" id="4Q576RbaW4k" role="37wK5m">
                    <ref role="3cqZAo" node="4Q576RbdwvV" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4Q576RbaW4l" role="3clFbw">
            <node concept="37vLTw" id="4Q576RbaW4m" role="2Oq$k0">
              <ref role="3cqZAo" node="799SgOKlJtN" resolve="required2sources" />
            </node>
            <node concept="2Nt0df" id="4Q576RbaW4n" role="2OqNvi">
              <node concept="37vLTw" id="4Q576Rbbg9Q" role="38cxEo">
                <ref role="3cqZAo" node="4Q576RbdFTg" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4Q576RbaW4p" role="9aQIa">
            <node concept="3clFbS" id="4Q576RbaW4q" role="9aQI4">
              <node concept="3SKdUt" id="4Q576RbaW4r" role="3cqZAp">
                <node concept="1PaTwC" id="4Q576RbaW4s" role="1aUNEU">
                  <node concept="3oM_SD" id="4Q576RbaW4t" role="1PaTwD">
                    <property role="3oM_SC" value="nodes" />
                  </node>
                  <node concept="3oM_SD" id="4Q576RbaW4u" role="1PaTwD">
                    <property role="3oM_SC" value="without" />
                  </node>
                  <node concept="3oM_SD" id="4Q576RbaW4v" role="1PaTwD">
                    <property role="3oM_SC" value="sources" />
                  </node>
                  <node concept="3oM_SD" id="4Q576RbaW4w" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="4Q576RbaW4x" role="1PaTwD">
                    <property role="3oM_SC" value="origins" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4Q576RbaW4y" role="3cqZAp">
                <node concept="2OqwBi" id="4Q576RbaW4z" role="3clFbG">
                  <node concept="2OqwBi" id="4Q576RbaW4$" role="2Oq$k0">
                    <node concept="Xjq3P" id="4Q576RbaW4_" role="2Oq$k0" />
                    <node concept="2OwXpG" id="4Q576RbaW4A" role="2OqNvi">
                      <ref role="2Oxat5" node="4tC1JBnqMWs" resolve="origins" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="4Q576RbaW4B" role="2OqNvi">
                    <node concept="37vLTw" id="4Q576RbaW4C" role="25WWJ7">
                      <ref role="3cqZAo" node="4Q576RbdwvV" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Q576Rba_9f" role="1B3o_S" />
      <node concept="3cqZAl" id="4Q576RbaBeW" role="3clF45" />
      <node concept="37vLTG" id="4Q576RbdFTg" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4Q576RbdHOS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4Q576RbdwvV" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="4Q576Rbb6vU" role="1tU5fm">
          <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Q576RaX9_h" role="jymVt" />
    <node concept="3clFb_" id="799SgOK_BFx" role="jymVt">
      <property role="TrG5h" value="takeNode" />
      <node concept="3Tm1VV" id="799SgOK_BFz" role="1B3o_S" />
      <node concept="3cqZAl" id="799SgOK_BF$" role="3clF45" />
      <node concept="37vLTG" id="799SgOK_BF_" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="799SgOK_BFA" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="799SgOK_BFB" role="3clF47">
        <node concept="3cpWs8" id="4Q576RbdnsD" role="3cqZAp">
          <node concept="3cpWsn" id="4Q576RbdnsE" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="4Q576RbdnsF" role="1tU5fm">
              <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
            </node>
            <node concept="2ShNRf" id="4Q576RbdnsG" role="33vP2m">
              <node concept="1pGfFk" id="4Q576RbdnsH" role="2ShVmc">
                <ref role="37wK5l" node="39eNUjlV3Qu" resolve="TemplateTraceImpl.TracedNode" />
                <node concept="37vLTw" id="4Q576RbdnsI" role="37wK5m">
                  <ref role="3cqZAo" node="799SgOK_BF_" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Q576RbayxA" role="3cqZAp">
          <node concept="1rXfSq" id="4Q576Rbayx$" role="3clFbG">
            <ref role="37wK5l" node="4Q576Rbanix" resolve="traceChildNode" />
            <node concept="37vLTw" id="4Q576Rbb7$2" role="37wK5m">
              <ref role="3cqZAo" node="799SgOK_BF_" resolve="node" />
            </node>
            <node concept="37vLTw" id="4Q576RbdN$t" role="37wK5m">
              <ref role="3cqZAo" node="4Q576RbdnsE" resolve="target" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Q576Rbdq3T" role="3cqZAp">
          <node concept="3clFbS" id="4Q576Rbdq3U" role="3clFbx">
            <node concept="3clFbF" id="4Q576Rbblj1" role="3cqZAp">
              <node concept="1rXfSq" id="4Q576Rbblj0" role="3clFbG">
                <ref role="37wK5l" node="4Q576RbaBxU" resolve="traceRequiredOrOriginNode" />
                <node concept="37vLTw" id="4Q576RbblEW" role="37wK5m">
                  <ref role="3cqZAo" node="799SgOK_BF_" resolve="node" />
                </node>
                <node concept="37vLTw" id="4Q576RbdNGu" role="37wK5m">
                  <ref role="3cqZAo" node="4Q576RbdnsE" resolve="target" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4Q576Rbdq3W" role="3clFbw">
            <node concept="37vLTw" id="4Q576Rbdq3X" role="2Oq$k0">
              <ref role="3cqZAo" node="4Q576RaSSjT" resolve="sourcesStack" />
            </node>
            <node concept="1v1jN8" id="4Q576RberZL" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="4Q576Rb9wR6" role="3cqZAp">
          <node concept="1rXfSq" id="4Q576Rb9wR4" role="3clFbG">
            <ref role="37wK5l" node="4Q576Rb9n_h" resolve="pushSource" />
            <node concept="37vLTw" id="4Q576Rb9xtO" role="37wK5m">
              <ref role="3cqZAo" node="4Q576RbdnsE" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="799SgOK_BFC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Q576RaU$98" role="jymVt" />
    <node concept="2tJIrI" id="799SgOK_VK3" role="jymVt" />
    <node concept="3clFb_" id="799SgOK_BFD" role="jymVt">
      <property role="TrG5h" value="leaveNode" />
      <node concept="3Tm1VV" id="799SgOK_BFF" role="1B3o_S" />
      <node concept="3cqZAl" id="799SgOK_BFG" role="3clF45" />
      <node concept="37vLTG" id="799SgOK_BFH" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="799SgOK_BFI" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="799SgOK_BFJ" role="3clF47" />
      <node concept="2AHcQZ" id="799SgOK_BFK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Q576Rb7RX1" role="jymVt" />
    <node concept="3clFb_" id="4Q576Rb7TUB" role="jymVt">
      <property role="TrG5h" value="origin" />
      <node concept="3Tm1VV" id="4Q576Rb7TUD" role="1B3o_S" />
      <node concept="3cqZAl" id="4Q576Rb7TUE" role="3clF45" />
      <node concept="3clFbS" id="4Q576Rb7TUI" role="3clF47">
        <node concept="3cpWs8" id="4Q576Rb87$E" role="3cqZAp">
          <node concept="3cpWsn" id="4Q576Rb87$F" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="4Q576Rb8eTp" role="1tU5fm">
              <ref role="3uigEE" node="39eNUjlUY05" resolve="TemplateTraceImpl.TracedNode" />
            </node>
            <node concept="2ShNRf" id="4Q576Rb88yR" role="33vP2m">
              <node concept="1pGfFk" id="4Q576Rb893I" role="2ShVmc">
                <ref role="37wK5l" node="39eNUjlV3Qu" resolve="TemplateTraceImpl.TracedNode" />
                <node concept="37vLTw" id="4Q576Rb8Ipg" role="37wK5m">
                  <ref role="3cqZAo" node="4Q576Rb7TUF" resolve="originNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Q576Rb7Xw5" role="3cqZAp">
          <node concept="2OqwBi" id="4Q576Rb7YVM" role="3clFbG">
            <node concept="2OqwBi" id="4Q576Rb7XS9" role="2Oq$k0">
              <node concept="Xjq3P" id="4Q576Rb7Xw3" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Q576Rb7Y4V" role="2OqNvi">
                <ref role="2Oxat5" node="4tC1JBnqMWs" resolve="origins" />
              </node>
            </node>
            <node concept="TSZUe" id="4Q576Rb8ayG" role="2OqNvi">
              <node concept="37vLTw" id="4Q576Rb8aAk" role="25WWJ7">
                <ref role="3cqZAo" node="4Q576Rb87$F" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Q576RbabGp" role="3cqZAp">
          <node concept="1rXfSq" id="4Q576RbabGn" role="3clFbG">
            <ref role="37wK5l" node="4Q576Rb9n_h" resolve="pushSource" />
            <node concept="37vLTw" id="4Q576Rbacc2" role="37wK5m">
              <ref role="3cqZAo" node="4Q576Rb87$F" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Q576Rb7TUJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="4Q576Rb7TUF" role="3clF46">
        <property role="TrG5h" value="originNode" />
        <node concept="3Tqbb2" id="4Q576Rb8GzG" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Q576RaSkin" role="jymVt" />
    <node concept="3clFb_" id="4Q576RaSm$0" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="4Q576RaSm$1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4Q576RaSm$2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4Q576RaSm$3" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="4Q576RaSm$4" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="3qUE_q" id="4Q576RaSm$5" role="11_B2D">
            <node concept="3uibUv" id="4Q576RaSm$6" role="3qUE_r">
              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3YPJJpIcFzZ" role="3clF46">
        <property role="TrG5h" value="applyResult" />
        <node concept="3uibUv" id="3YPJJpIcF$0" role="1tU5fm">
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
        </node>
      </node>
      <node concept="37vLTG" id="4Q576RaSm$7" role="3clF46">
        <property role="TrG5h" value="requiredNodes" />
        <node concept="A3Dl8" id="4Q576RaSm$8" role="1tU5fm">
          <node concept="3Tqbb2" id="4Q576RaSm$9" role="A3Ik2" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4Q576RaSm$b" role="1B3o_S" />
      <node concept="3cqZAl" id="4Q576RaSm$c" role="3clF45" />
      <node concept="3clFbS" id="4Q576RaSm$d" role="3clF47">
        <node concept="3cpWs8" id="4Q576RaVq4x" role="3cqZAp">
          <node concept="3cpWsn" id="4Q576RaVq4y" role="3cpWs9">
            <property role="TrG5h" value="tracedApplied" />
            <node concept="3uibUv" id="4Q576RbBmvq" role="1tU5fm">
              <ref role="3uigEE" node="39eNUjlVKZl" resolve="TemplateTraceImpl.TracedTemplate" />
            </node>
            <node concept="2ShNRf" id="4Q576RaVqLZ" role="33vP2m">
              <node concept="1pGfFk" id="4Q576RaVriM" role="2ShVmc">
                <ref role="37wK5l" node="39eNUjlVKZt" resolve="TemplateTraceImpl.TracedTemplate" />
                <node concept="37vLTw" id="4Q576RaVrs_" role="37wK5m">
                  <ref role="3cqZAo" node="4Q576RaSm$1" resolve="node" />
                </node>
                <node concept="37vLTw" id="4Q576RaVrNm" role="37wK5m">
                  <ref role="3cqZAo" node="4Q576RaSm$3" resolve="template" />
                </node>
                <node concept="37vLTw" id="3YPJJpIerBz" role="37wK5m">
                  <ref role="3cqZAo" node="3YPJJpIcFzZ" resolve="applyResult" />
                </node>
                <node concept="37vLTw" id="4Q576RbHd5b" role="37wK5m">
                  <ref role="3cqZAo" node="4Q576RaSm$7" resolve="requiredNodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Q576Rb5TxV" role="3cqZAp" />
        <node concept="3cpWs8" id="4Q576RaVnnG" role="3cqZAp">
          <node concept="3cpWsn" id="4Q576RaVnnH" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="4Q576RaVnnI" role="1tU5fm">
              <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
            </node>
            <node concept="1rXfSq" id="4Q576RaVocr" role="33vP2m">
              <ref role="37wK5l" node="4Q576RaUFqs" resolve="takeSource" />
              <node concept="37vLTw" id="4Q576RaVotp" role="37wK5m">
                <ref role="3cqZAo" node="4Q576RaSm$1" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Q576RaVs5r" role="3cqZAp">
          <node concept="2OqwBi" id="4Q576RaVseZ" role="3clFbG">
            <node concept="37vLTw" id="4Q576RaVs5p" role="2Oq$k0">
              <ref role="3cqZAo" node="4Q576RaVnnH" resolve="source" />
            </node>
            <node concept="liA8E" id="4Q576RaVsn$" role="2OqNvi">
              <ref role="37wK5l" node="799SgOKzLTr" resolve="add" />
              <node concept="37vLTw" id="4Q576RaVsQv" role="37wK5m">
                <ref role="3cqZAo" node="4Q576RaVq4y" resolve="tracedApplied" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Q576Rb5Tbp" role="3cqZAp" />
        <node concept="2Gpval" id="4Q576RaVv4o" role="3cqZAp">
          <node concept="2GrKxI" id="4Q576RaVv4q" role="2Gsz3X">
            <property role="TrG5h" value="reqNode" />
          </node>
          <node concept="37vLTw" id="4Q576RaVvcU" role="2GsD0m">
            <ref role="3cqZAo" node="4Q576RaSm$7" resolve="requiredNodes" />
          </node>
          <node concept="3clFbS" id="4Q576RaVv4u" role="2LFqv$">
            <node concept="3clFbF" id="4Q576RaV$7A" role="3cqZAp">
              <node concept="2OqwBi" id="4Q576RaV$zp" role="3clFbG">
                <node concept="1rXfSq" id="4Q576RaV$7$" role="2Oq$k0">
                  <ref role="37wK5l" node="799SgOK_tIV" resolve="getSources" />
                  <node concept="2GrUjf" id="4Q576RaV$oe" role="37wK5m">
                    <ref role="2Gs0qQ" node="4Q576RaVv4q" resolve="reqNode" />
                  </node>
                </node>
                <node concept="2Ke9KJ" id="4Q576RaV_jd" role="2OqNvi">
                  <node concept="37vLTw" id="4Q576RaVA_H" role="25WWJ7">
                    <ref role="3cqZAo" node="4Q576RaVq4y" resolve="tracedApplied" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Q576RaSm$e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Q576RaSksd" role="jymVt" />
    <node concept="3Tm1VV" id="39eNUjlSKNJ" role="1B3o_S" />
    <node concept="3uibUv" id="39eNUjlSKSz" role="EKbjA">
      <ref role="3uigEE" node="39eNUjlSJ9Q" resolve="TemplateTrace" />
    </node>
    <node concept="3clFb_" id="4tC1JBnoWiw" role="jymVt">
      <property role="TrG5h" value="getOrigins" />
      <node concept="3Tm1VV" id="4tC1JBnoWiy" role="1B3o_S" />
      <node concept="A3Dl8" id="4tC1JBnoWiz" role="3clF45">
        <node concept="3uibUv" id="4tC1JBnoWi$" role="A3Ik2">
          <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
        </node>
      </node>
      <node concept="3clFbS" id="4tC1JBnoWi_" role="3clF47">
        <node concept="3clFbF" id="4tC1JBnr2R_" role="3cqZAp">
          <node concept="37vLTw" id="4tC1JBnr2R$" role="3clFbG">
            <ref role="3cqZAo" node="4tC1JBnqMWs" resolve="origins" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4tC1JBnoWiA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4tC1JBnrpwL" role="jymVt" />
    <node concept="2tJIrI" id="4tC1JBnoUCW" role="jymVt" />
    <node concept="312cEu" id="39eNUjlVBcO" role="jymVt">
      <property role="1sVAO0" value="true" />
      <property role="TrG5h" value="TracePointImpl" />
      <node concept="2tJIrI" id="4tC1JBnljEC" role="jymVt" />
      <node concept="312cEg" id="799SgOKzzPT" role="jymVt">
        <property role="TrG5h" value="children" />
        <node concept="3Tm6S6" id="799SgOKzwhj" role="1B3o_S" />
        <node concept="_YKpA" id="799SgOKzz1q" role="1tU5fm">
          <node concept="3uibUv" id="4Q576Rb1Mng" role="_ZDj9">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
        <node concept="2ShNRf" id="799SgOKzArA" role="33vP2m">
          <node concept="Tc6Ow" id="799SgOKzBI0" role="2ShVmc">
            <node concept="3uibUv" id="4Q576Rb1Nu3" role="HW$YZ">
              <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="799SgOKzFzX" role="jymVt" />
      <node concept="3clFb_" id="799SgOKzLTr" role="jymVt">
        <property role="TrG5h" value="add" />
        <node concept="3clFbS" id="799SgOKzLTu" role="3clF47">
          <node concept="3clFbF" id="799SgOKzSGF" role="3cqZAp">
            <node concept="2OqwBi" id="799SgOKzTSf" role="3clFbG">
              <node concept="37vLTw" id="799SgOKzSGE" role="2Oq$k0">
                <ref role="3cqZAo" node="799SgOKzzPT" resolve="children" />
              </node>
              <node concept="TSZUe" id="799SgOKzUY4" role="2OqNvi">
                <node concept="37vLTw" id="799SgOKzViC" role="25WWJ7">
                  <ref role="3cqZAo" node="799SgOKzOTl" resolve="child" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="799SgOKzIo0" role="1B3o_S" />
        <node concept="3cqZAl" id="799SgOKzL4Y" role="3clF45" />
        <node concept="37vLTG" id="799SgOKzOTl" role="3clF46">
          <property role="TrG5h" value="child" />
          <node concept="3uibUv" id="799SgOKzRse" role="1tU5fm">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="799SgOKzWhS" role="jymVt" />
      <node concept="3clFb_" id="799SgOK$3ch" role="jymVt">
        <property role="TrG5h" value="getChildren" />
        <node concept="3clFbS" id="799SgOK$3ck" role="3clF47">
          <node concept="3clFbF" id="799SgOK$75c" role="3cqZAp">
            <node concept="37vLTw" id="799SgOK$75b" role="3clFbG">
              <ref role="3cqZAo" node="799SgOKzzPT" resolve="children" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="799SgOKzZfZ" role="1B3o_S" />
        <node concept="A3Dl8" id="799SgOK$2nt" role="3clF45">
          <node concept="3uibUv" id="799SgOK$6fh" role="A3Ik2">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4Q576RaXbvD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="799SgOKzraK" role="jymVt" />
      <node concept="3clFb_" id="39eNUjlUVmE" role="jymVt">
        <property role="TrG5h" value="tracedObjects" />
        <property role="1EzhhJ" value="true" />
        <node concept="3clFbS" id="39eNUjlUVmH" role="3clF47" />
        <node concept="3Tmbuc" id="4tC1JBnlfTK" role="1B3o_S" />
        <node concept="A3Dl8" id="4tC1JBnlx3w" role="3clF45">
          <node concept="2sp9CU" id="4tC1JBnlx3y" role="A3Ik2" />
        </node>
      </node>
      <node concept="2tJIrI" id="39eNUjlVECU" role="jymVt" />
      <node concept="3clFb_" id="39eNUjlVaaz" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="3Tm1VV" id="39eNUjlVaa$" role="1B3o_S" />
        <node concept="10P_77" id="39eNUjlVaaA" role="3clF45" />
        <node concept="37vLTG" id="39eNUjlVaaB" role="3clF46">
          <property role="TrG5h" value="obj" />
          <node concept="3uibUv" id="39eNUjlVaaC" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="39eNUjlVaaD" role="3clF47">
          <node concept="3clFbJ" id="39eNUjlVct_" role="3cqZAp">
            <node concept="3fqX7Q" id="39eNUjlVkTO" role="3clFbw">
              <node concept="2ZW3vV" id="39eNUjlVgKV" role="3fr31v">
                <node concept="3uibUv" id="39eNUjlVJaD" role="2ZW6by">
                  <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
                </node>
                <node concept="37vLTw" id="39eNUjlVuTb" role="2ZW6bz">
                  <ref role="3cqZAo" node="39eNUjlVaaB" resolve="obj" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="39eNUjlVctB" role="3clFbx">
              <node concept="3cpWs6" id="39eNUjlViKL" role="3cqZAp">
                <node concept="3clFbT" id="39eNUjlViMB" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="39eNUjlW_bm" role="3cqZAp">
            <node concept="3cpWsn" id="39eNUjlW_bn" role="3cpWs9">
              <property role="TrG5h" value="other" />
              <node concept="3uibUv" id="39eNUjlW_bo" role="1tU5fm">
                <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
              </node>
              <node concept="1eOMI4" id="39eNUjlVxu_" role="33vP2m">
                <node concept="10QFUN" id="39eNUjlVqJK" role="1eOMHV">
                  <node concept="37vLTw" id="39eNUjlVqJJ" role="10QFUP">
                    <ref role="3cqZAo" node="39eNUjlVaaB" resolve="obj" />
                  </node>
                  <node concept="3uibUv" id="39eNUjlVJ1A" role="10QFUM">
                    <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4tC1JBnkUbD" role="3cqZAp" />
          <node concept="3clFbJ" id="39eNUjlWxo7" role="3cqZAp">
            <node concept="3clFbS" id="39eNUjlWxo9" role="3clFbx">
              <node concept="3cpWs6" id="39eNUjlWGlj" role="3cqZAp">
                <node concept="3clFbT" id="39eNUjlWHow" role="3cqZAk" />
              </node>
            </node>
            <node concept="3y3z36" id="39eNUjlWD7K" role="3clFbw">
              <node concept="2OqwBi" id="39eNUjlWBul" role="3uHU7B">
                <node concept="1rXfSq" id="39eNUjlWAGI" role="2Oq$k0">
                  <ref role="37wK5l" node="39eNUjlUVmE" resolve="tracedObjects" />
                </node>
                <node concept="34oBXx" id="39eNUjlWCfT" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="39eNUjlWFYh" role="3uHU7w">
                <node concept="2OqwBi" id="39eNUjlWF9g" role="2Oq$k0">
                  <node concept="37vLTw" id="39eNUjlWEU8" role="2Oq$k0">
                    <ref role="3cqZAo" node="39eNUjlW_bn" resolve="other" />
                  </node>
                  <node concept="liA8E" id="39eNUjlWFDn" role="2OqNvi">
                    <ref role="37wK5l" node="39eNUjlUVmE" resolve="tracedObjects" />
                  </node>
                </node>
                <node concept="34oBXx" id="39eNUjlWGhE" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1_o_46" id="39eNUjlWM7_" role="3cqZAp">
            <node concept="1_o_bx" id="39eNUjlWM7B" role="1_o_by">
              <node concept="1_o_bG" id="39eNUjlWM7D" role="1_o_aQ">
                <property role="TrG5h" value="a" />
              </node>
              <node concept="1rXfSq" id="39eNUjlWMJp" role="1_o_bz">
                <ref role="37wK5l" node="39eNUjlUVmE" resolve="tracedObjects" />
              </node>
            </node>
            <node concept="1_o_bx" id="39eNUjlWMSO" role="1_o_by">
              <node concept="1_o_bG" id="39eNUjlWMSP" role="1_o_aQ">
                <property role="TrG5h" value="b" />
              </node>
              <node concept="2OqwBi" id="39eNUjlWO1y" role="1_o_bz">
                <node concept="37vLTw" id="39eNUjlWNV0" role="2Oq$k0">
                  <ref role="3cqZAo" node="39eNUjlW_bn" resolve="other" />
                </node>
                <node concept="liA8E" id="39eNUjlWO6M" role="2OqNvi">
                  <ref role="37wK5l" node="39eNUjlUVmE" resolve="tracedObjects" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="39eNUjlWM7H" role="2LFqv$">
              <node concept="3clFbJ" id="799SgOKaY96" role="3cqZAp">
                <node concept="3clFbS" id="799SgOKaY98" role="3clFbx">
                  <node concept="3cpWs6" id="799SgOKb27v" role="3cqZAp">
                    <node concept="3clFbT" id="799SgOKb2aD" role="3cqZAk" />
                  </node>
                </node>
                <node concept="1Wc70l" id="799SgOKb1cd" role="3clFbw">
                  <node concept="3y3z36" id="799SgOKb20j" role="3uHU7w">
                    <node concept="3M$PaV" id="799SgOKb1i_" role="3uHU7B">
                      <ref role="3M$S_o" node="39eNUjlWMSP" resolve="b" />
                    </node>
                    <node concept="10Nm6u" id="799SgOKb1RN" role="3uHU7w" />
                  </node>
                  <node concept="3clFbC" id="799SgOKb0X1" role="3uHU7B">
                    <node concept="3M$PaV" id="799SgOKb0K_" role="3uHU7B">
                      <ref role="3M$S_o" node="39eNUjlWM7D" resolve="a" />
                    </node>
                    <node concept="10Nm6u" id="799SgOKb17m" role="3uHU7w" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="39eNUjlWOi5" role="3cqZAp">
                <node concept="1Wc70l" id="799SgOKaS_m" role="3clFbw">
                  <node concept="3y3z36" id="799SgOKaVfx" role="3uHU7B">
                    <node concept="10Nm6u" id="799SgOKaVqH" role="3uHU7w" />
                    <node concept="3M$PaV" id="799SgOKaV1$" role="3uHU7B">
                      <ref role="3M$S_o" node="39eNUjlWM7D" resolve="a" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="39eNUjlWQEk" role="3uHU7w">
                    <node concept="2OqwBi" id="39eNUjlWQEm" role="3fr31v">
                      <node concept="liA8E" id="39eNUjlWQEn" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                        <node concept="3M$PaV" id="39eNUjlWQEo" role="37wK5m">
                          <ref role="3M$S_o" node="39eNUjlWMSP" resolve="b" />
                        </node>
                      </node>
                      <node concept="2JrnkZ" id="39eNUjlWQEp" role="2Oq$k0">
                        <node concept="3M$PaV" id="39eNUjlWQEq" role="2JrQYb">
                          <ref role="3M$S_o" node="39eNUjlWM7D" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="39eNUjlWOi7" role="3clFbx">
                  <node concept="3cpWs6" id="39eNUjlWSBe" role="3cqZAp">
                    <node concept="3clFbT" id="39eNUjlWTFz" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="39eNUjlWWwp" role="3cqZAp">
            <node concept="3clFbT" id="39eNUjlWXZX" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="39eNUjlVGWL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="39eNUjlVyL_" role="jymVt" />
      <node concept="3clFb_" id="39eNUjlVz3x" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="3Tm1VV" id="39eNUjlVz3y" role="1B3o_S" />
        <node concept="10Oyi0" id="39eNUjlVz3_" role="3clF45" />
        <node concept="3clFbS" id="39eNUjlVz3A" role="3clF47">
          <node concept="3clFbF" id="39eNUjlV$jV" role="3cqZAp">
            <node concept="2OqwBi" id="39eNUjlV$Fz" role="3clFbG">
              <node concept="liA8E" id="39eNUjlV$Nv" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.hashCode()" resolve="hashCode" />
              </node>
              <node concept="2JrnkZ" id="39eNUjlV$FC" role="2Oq$k0">
                <node concept="2OqwBi" id="4tC1JBnlzen" role="2JrQYb">
                  <node concept="1rXfSq" id="39eNUjlV$jU" role="2Oq$k0">
                    <ref role="37wK5l" node="39eNUjlUVmE" resolve="tracedObjects" />
                  </node>
                  <node concept="ANE8D" id="4tC1JBnlzAV" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="39eNUjlVHgM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="39eNUjlVEHX" role="jymVt" />
      <node concept="3Tm6S6" id="39eNUjlVAUn" role="1B3o_S" />
      <node concept="3uibUv" id="4tC1JBnla0A" role="EKbjA">
        <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
      </node>
      <node concept="3clFb_" id="4tC1JBnneyF" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="4tC1JBnneyG" role="1B3o_S" />
        <node concept="3uibUv" id="4tC1JBnneyI" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="4tC1JBnneyJ" role="3clF47">
          <node concept="3clFbF" id="4tC1JBnng1h" role="3cqZAp">
            <node concept="1rXfSq" id="4tC1JBnng1e" role="3clFbG">
              <ref role="37wK5l" node="4tC1JBnl6k3" resolve="presentation" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnneyK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tC1JBnoObw" role="jymVt" />
    <node concept="312cEu" id="39eNUjlUY05" role="jymVt">
      <property role="TrG5h" value="TracedNode" />
      <node concept="312cEg" id="4tC1JBnnGdY" role="jymVt">
        <property role="TrG5h" value="rootId" />
        <node concept="3Tm6S6" id="4tC1JBnnFGQ" role="1B3o_S" />
        <node concept="17QB3L" id="4Q576RbOYtx" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="39eNUjlV37n" role="jymVt">
        <property role="TrG5h" value="node" />
        <node concept="3Tm6S6" id="39eNUjlV2G_" role="1B3o_S" />
        <node concept="2sp9CU" id="39eNUjlV31O" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="4Q576RaWOWw" role="jymVt">
        <property role="TrG5h" value="pres" />
        <node concept="3Tm6S6" id="4Q576RaWMvH" role="1B3o_S" />
        <node concept="17QB3L" id="4Q576RaWOwc" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="4Q576RaWxUq" role="jymVt" />
      <node concept="3clFb_" id="4Q576Rbrqsg" role="jymVt">
        <property role="TrG5h" value="doGetPresentation" />
        <node concept="3clFbS" id="4Q576Rbrqsj" role="3clF47">
          <node concept="3cpWs8" id="4Q576RbxPDR" role="3cqZAp">
            <node concept="3cpWsn" id="4Q576RbxPDS" role="3cpWs9">
              <property role="TrG5h" value="sb" />
              <node concept="3uibUv" id="4Q576RbxPDT" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
              </node>
              <node concept="2ShNRf" id="4Q576RbxRCZ" role="33vP2m">
                <node concept="1pGfFk" id="4Q576RbxSb7" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4Q576Rb$bbP" role="3cqZAp">
            <node concept="3cpWsn" id="4Q576Rb$bbS" role="3cpWs9">
              <property role="TrG5h" value="conceptName" />
              <node concept="17QB3L" id="4Q576Rb$bbN" role="1tU5fm" />
              <node concept="2OqwBi" id="4Q576RbzhG_" role="33vP2m">
                <node concept="2OqwBi" id="4Q576RbzglA" role="2Oq$k0">
                  <node concept="37vLTw" id="4Q576Rbzg2C" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Q576RbrwBu" resolve="node" />
                  </node>
                  <node concept="2yIwOk" id="4Q576Rbzheo" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="4Q576Rbzi4T" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4Q576RbrzB0" role="3cqZAp">
            <node concept="2OqwBi" id="4Q576RbrzL5" role="3clFbw">
              <node concept="37vLTw" id="4Q576RbrzCT" role="2Oq$k0">
                <ref role="3cqZAo" node="4Q576RbrwBu" resolve="node" />
              </node>
              <node concept="1mIQ4w" id="4Q576Rbr$7l" role="2OqNvi">
                <node concept="chp4Y" id="4Q576Rbr$9k" role="cj9EA">
                  <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4Q576RbrzB2" role="3clFbx">
              <node concept="3clFbF" id="4Q576RbzbLB" role="3cqZAp">
                <node concept="2OqwBi" id="4Q576RbziRA" role="3clFbG">
                  <node concept="2OqwBi" id="4Q576RbzeA9" role="2Oq$k0">
                    <node concept="37vLTw" id="4Q576RbzbL_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Q576RbxPDS" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="4Q576Rbzfl1" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="37vLTw" id="4Q576Rb$ejO" role="37wK5m">
                        <ref role="3cqZAo" node="4Q576Rb$bbS" resolve="conceptName" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4Q576RbzjeI" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                    <node concept="Xl_RD" id="4Q576RbzjsK" role="37wK5m">
                      <property role="Xl_RC" value=" : " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4Q576RbxUhI" role="3cqZAp">
                <node concept="2OqwBi" id="4Q576RbxVRH" role="3clFbG">
                  <node concept="37vLTw" id="4Q576RbxUhH" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Q576RbxPDS" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="4Q576RbxWTZ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                    <node concept="2OqwBi" id="428_4iYyOqd" role="37wK5m">
                      <node concept="1eOMI4" id="428_4iYyOqe" role="2Oq$k0">
                        <node concept="10QFUN" id="428_4iYyOqf" role="1eOMHV">
                          <node concept="3Tqbb2" id="428_4iYyOqg" role="10QFUM">
                            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          </node>
                          <node concept="37vLTw" id="4Q576RbrEPu" role="10QFUP">
                            <ref role="3cqZAo" node="4Q576RbrwBu" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrcHB" id="428_4iYyOqi" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4Q576RbrKju" role="9aQIa">
              <node concept="3clFbS" id="4Q576RbrKjv" role="9aQI4">
                <node concept="3cpWs8" id="4Q576RbzZUZ" role="3cqZAp">
                  <node concept="3cpWsn" id="4Q576RbzZV2" role="3cpWs9">
                    <property role="TrG5h" value="nodePres" />
                    <node concept="17QB3L" id="4Q576RbzZUX" role="1tU5fm" />
                    <node concept="2OqwBi" id="4Q576RbrO7e" role="33vP2m">
                      <node concept="37vLTw" id="4Q576RbrMyv" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Q576RbrwBu" resolve="node" />
                      </node>
                      <node concept="2qgKlT" id="4Q576RbrQ6o" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4Q576Rb$16C" role="3cqZAp">
                  <node concept="3clFbS" id="4Q576Rb$16E" role="3clFbx">
                    <node concept="3clFbF" id="4Q576Rb$hwD" role="3cqZAp">
                      <node concept="2OqwBi" id="4Q576Rb$hwE" role="3clFbG">
                        <node concept="2OqwBi" id="4Q576Rb$hwF" role="2Oq$k0">
                          <node concept="37vLTw" id="4Q576Rb$hwG" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Q576RbxPDS" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="4Q576Rb$hwH" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="37vLTw" id="4Q576Rb$hwI" role="37wK5m">
                              <ref role="3cqZAo" node="4Q576Rb$bbS" resolve="conceptName" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4Q576Rb$hwJ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="Xl_RD" id="4Q576Rb$hwK" role="37wK5m">
                            <property role="Xl_RC" value=" : " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="4Q576Rb$fxI" role="3clFbw">
                    <node concept="2OqwBi" id="4Q576Rb$fxK" role="3fr31v">
                      <node concept="37vLTw" id="4Q576Rb$fxL" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Q576RbzZV2" resolve="nodePres" />
                      </node>
                      <node concept="liA8E" id="4Q576Rb$fxM" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                        <node concept="37vLTw" id="4Q576Rb$fxN" role="37wK5m">
                          <ref role="3cqZAo" node="4Q576Rb$bbS" resolve="conceptName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4Q576Rby19V" role="3cqZAp">
                  <node concept="2OqwBi" id="4Q576Rby3ag" role="3clFbG">
                    <node concept="37vLTw" id="4Q576Rby19U" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Q576RbxPDS" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="4Q576Rby3sX" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="37vLTw" id="4Q576Rb$i3u" role="37wK5m">
                        <ref role="3cqZAo" node="4Q576RbzZV2" resolve="nodePres" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4Q576Rbyf0h" role="3cqZAp">
            <node concept="2OqwBi" id="4Q576RbyiqO" role="3cqZAk">
              <node concept="37vLTw" id="4Q576Rbyf2D" role="2Oq$k0">
                <ref role="3cqZAo" node="4Q576RbxPDS" resolve="sb" />
              </node>
              <node concept="liA8E" id="4Q576Rbykw7" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="4Q576Rbrqso" role="1B3o_S" />
        <node concept="17QB3L" id="4Q576Rbrqsp" role="3clF45" />
        <node concept="37vLTG" id="4Q576RbrwBu" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4Q576RbrwBt" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="39eNUjlV0pm" role="jymVt" />
      <node concept="3clFbW" id="39eNUjlV3Qu" role="jymVt">
        <node concept="37vLTG" id="39eNUjlV46b" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="39eNUjlV5Sn" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="39eNUjlV3Qv" role="3clF45" />
        <node concept="3clFbS" id="39eNUjlV3Qx" role="3clF47">
          <node concept="3clFbJ" id="4Q576RaWHW0" role="3cqZAp">
            <node concept="3clFbS" id="4Q576RaWHW2" role="3clFbx">
              <node concept="3clFbF" id="39eNUjlV4IO" role="3cqZAp">
                <node concept="37vLTI" id="39eNUjlV4UK" role="3clFbG">
                  <node concept="2OqwBi" id="39eNUjlV6ut" role="37vLTx">
                    <node concept="37vLTw" id="39eNUjlV50w" role="2Oq$k0">
                      <ref role="3cqZAo" node="39eNUjlV46b" resolve="node" />
                    </node>
                    <node concept="iZEcu" id="39eNUjlV6_9" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="4tC1JBno3Pu" role="37vLTJ">
                    <node concept="Xjq3P" id="4tC1JBno3ww" role="2Oq$k0" />
                    <node concept="2OwXpG" id="4tC1JBno40D" role="2OqNvi">
                      <ref role="2Oxat5" node="39eNUjlV37n" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4Q576RaWQVi" role="3cqZAp">
                <node concept="37vLTI" id="4Q576RaWRDd" role="3clFbG">
                  <node concept="2OqwBi" id="4Q576RaWR5j" role="37vLTJ">
                    <node concept="Xjq3P" id="4Q576RaWQVg" role="2Oq$k0" />
                    <node concept="2OwXpG" id="4Q576RaWR9I" role="2OqNvi">
                      <ref role="2Oxat5" node="4Q576RaWOWw" resolve="pres" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="4Q576RbrTnZ" role="37vLTx">
                    <ref role="37wK5l" node="4Q576Rbrqsg" resolve="doGetPresentation" />
                    <node concept="37vLTw" id="4Q576RbrTzd" role="37wK5m">
                      <ref role="3cqZAo" node="39eNUjlV46b" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4tC1JBnnGDN" role="3cqZAp">
                <node concept="37vLTI" id="4tC1JBnnH3Q" role="3clFbG">
                  <node concept="2OqwBi" id="4Q576RbOXPn" role="37vLTx">
                    <node concept="liA8E" id="4Q576RbOXXE" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getPresentation()" resolve="getPresentation" />
                    </node>
                    <node concept="2JrnkZ" id="4Q576RbOXPw" role="2Oq$k0">
                      <node concept="2OqwBi" id="4tC1JBnnHjR" role="2JrQYb">
                        <node concept="37vLTw" id="4tC1JBnnHci" role="2Oq$k0">
                          <ref role="3cqZAo" node="39eNUjlV46b" resolve="node" />
                        </node>
                        <node concept="2Rxl7S" id="4tC1JBnnHpS" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4tC1JBno4Ym" role="37vLTJ">
                    <node concept="Xjq3P" id="4tC1JBno4L9" role="2Oq$k0" />
                    <node concept="2OwXpG" id="4tC1JBno5fO" role="2OqNvi">
                      <ref role="2Oxat5" node="4tC1JBnnGdY" resolve="rootId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4Q576RaWI9K" role="3clFbw">
              <node concept="10Nm6u" id="4Q576RaWIi5" role="3uHU7w" />
              <node concept="37vLTw" id="4Q576RaWHZ_" role="3uHU7B">
                <ref role="3cqZAo" node="39eNUjlV46b" resolve="node" />
              </node>
            </node>
            <node concept="9aQIb" id="4Q576RaWYjE" role="9aQIa">
              <node concept="3clFbS" id="4Q576RaWYjF" role="9aQI4">
                <node concept="3clFbF" id="4Q576RaX0vb" role="3cqZAp">
                  <node concept="37vLTI" id="4Q576RaX0YP" role="3clFbG">
                    <node concept="10Nm6u" id="4Q576RaX10B" role="37vLTx" />
                    <node concept="2OqwBi" id="4Q576RaX0zO" role="37vLTJ">
                      <node concept="Xjq3P" id="4Q576RaX0v9" role="2Oq$k0" />
                      <node concept="2OwXpG" id="4Q576RaX0By" role="2OqNvi">
                        <ref role="2Oxat5" node="39eNUjlV37n" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4Q576RaWYA6" role="3cqZAp">
                  <node concept="37vLTI" id="4Q576RaWZbb" role="3clFbG">
                    <node concept="Xl_RD" id="4Q576RaWZdB" role="37vLTx">
                      <property role="Xl_RC" value="null" />
                    </node>
                    <node concept="2OqwBi" id="4Q576RaWYD5" role="37vLTJ">
                      <node concept="Xjq3P" id="4Q576RaWYA5" role="2Oq$k0" />
                      <node concept="2OwXpG" id="4Q576RaWYE5" role="2OqNvi">
                        <ref role="2Oxat5" node="4Q576RaWOWw" resolve="pres" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4Q576RaWZvT" role="3cqZAp">
                  <node concept="37vLTI" id="4Q576RbJ336" role="3clFbG">
                    <node concept="Xl_RD" id="4Q576RbQQCz" role="37vLTx">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="2OqwBi" id="4Q576RaWZAh" role="37vLTJ">
                      <node concept="Xjq3P" id="4Q576RaWZvR" role="2Oq$k0" />
                      <node concept="2OwXpG" id="4Q576RaWZFi" role="2OqNvi">
                        <ref role="2Oxat5" node="4tC1JBnnGdY" resolve="rootId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="39eNUjlV2dk" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4Q576RbjG97" role="jymVt" />
      <node concept="3clFb_" id="4Q576RbjIBR" role="jymVt">
        <property role="TrG5h" value="kind" />
        <node concept="3Tm1VV" id="4Q576RbjIBT" role="1B3o_S" />
        <node concept="3uibUv" id="4Q576RbjIBU" role="3clF45">
          <ref role="3uigEE" node="4Q576Rbjy_X" resolve="TemplateTrace.PointKind" />
        </node>
        <node concept="2AHcQZ" id="4Q576RbjIBV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4Q576RbjIBX" role="3clF47">
          <node concept="3clFbF" id="4Q576RbjLt4" role="3cqZAp">
            <node concept="Rm8GO" id="4Q576RbjLTO" role="3clFbG">
              <ref role="Rm8GQ" node="4Q576Rbj$_2" resolve="Node" />
              <ref role="1Px2BO" node="4Q576Rbjy_X" resolve="TemplateTrace.PointKind" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4Q576RbjIBY" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="39eNUjlV1lr" role="jymVt" />
      <node concept="3clFb_" id="39eNUjlV1v$" role="jymVt">
        <property role="TrG5h" value="tracedObjects" />
        <node concept="3Tmbuc" id="4Q576RaWkUV" role="1B3o_S" />
        <node concept="A3Dl8" id="4tC1JBnlvcz" role="3clF45">
          <node concept="2sp9CU" id="4tC1JBnlvc_" role="A3Ik2" />
        </node>
        <node concept="3clFbS" id="39eNUjlV1vC" role="3clF47">
          <node concept="3clFbF" id="39eNUjlV5ic" role="3cqZAp">
            <node concept="2ShNRf" id="39eNUjlWvhn" role="3clFbG">
              <node concept="2HTt$P" id="39eNUjlWvMa" role="2ShVmc">
                <node concept="2sp9CU" id="39eNUjlWvNb" role="2HTBi0" />
                <node concept="37vLTw" id="39eNUjlWvPj" role="2HTEbv">
                  <ref role="3cqZAo" node="39eNUjlV37n" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnlrry" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Q576RaWrGs" role="jymVt" />
      <node concept="3clFb_" id="4tC1JBnlqaS" role="jymVt">
        <property role="TrG5h" value="tracedNode" />
        <node concept="3Tm1VV" id="4tC1JBnlqaU" role="1B3o_S" />
        <node concept="2sp9CU" id="4tC1JBnlqaV" role="3clF45" />
        <node concept="3clFbS" id="4tC1JBnlqaX" role="3clF47">
          <node concept="3clFbF" id="4tC1JBnlsww" role="3cqZAp">
            <node concept="37vLTw" id="4tC1JBnlswv" role="3clFbG">
              <ref role="3cqZAo" node="39eNUjlV37n" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnlqaY" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4tC1JBnlpJv" role="jymVt" />
      <node concept="3clFb_" id="39eNUjlV1vE" role="jymVt">
        <property role="TrG5h" value="groupId" />
        <node concept="3Tm1VV" id="39eNUjlV1vG" role="1B3o_S" />
        <node concept="3clFbS" id="39eNUjlV1vI" role="3clF47">
          <node concept="3clFbF" id="4tC1JBnnIls" role="3cqZAp">
            <node concept="37vLTw" id="4tC1JBnnIlq" role="3clFbG">
              <ref role="3cqZAo" node="4tC1JBnnGdY" resolve="rootId" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnlJ6H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="2AHcQZ" id="4tC1JBn_uhz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="17QB3L" id="4Q576RbP2hz" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="4tC1JBnlHJX" role="jymVt" />
      <node concept="3Tm6S6" id="39eNUjlUXP6" role="1B3o_S" />
      <node concept="3uibUv" id="39eNUjlVK2w" role="1zkMxy">
        <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
      </node>
      <node concept="3clFb_" id="4tC1JBnlIkK" role="jymVt">
        <property role="TrG5h" value="presentation" />
        <node concept="3Tm1VV" id="4tC1JBnlIkM" role="1B3o_S" />
        <node concept="17QB3L" id="4tC1JBnlIkN" role="3clF45" />
        <node concept="3clFbS" id="4tC1JBnlIkP" role="3clF47">
          <node concept="3clFbF" id="4Q576RaWY48" role="3cqZAp">
            <node concept="37vLTw" id="4Q576RaWY46" role="3clFbG">
              <ref role="3cqZAo" node="4Q576RaWOWw" resolve="pres" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnlIkQ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="2AHcQZ" id="4tC1JBn_sxM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2tJIrI" id="3YPJJpIcRHZ" role="jymVt" />
      <node concept="3clFb_" id="3YPJJpIcXnC" role="jymVt">
        <property role="TrG5h" value="errors" />
        <node concept="3Tm1VV" id="3YPJJpIcXnE" role="1B3o_S" />
        <node concept="2AHcQZ" id="3YPJJpIcXnG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="3YPJJpIcXnI" role="3clF47">
          <node concept="3clFbF" id="3YPJJpIdVch" role="3cqZAp">
            <node concept="2ShNRf" id="3YPJJpIdVcf" role="3clFbG">
              <node concept="Tc6Ow" id="3YPJJpIe2gm" role="2ShVmc">
                <node concept="17QB3L" id="3YPJJpIe2Jw" role="HW$YZ" />
                <node concept="3cmrfG" id="3YPJJpIe34F" role="3lWHg$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3YPJJpIcXnJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3vKaQO" id="3YPJJpIdQnZ" role="3clF45">
          <node concept="17QB3L" id="3YPJJpIdQo0" role="3O5elw" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tC1JBno5sz" role="jymVt" />
    <node concept="2tJIrI" id="4tC1JBno5zm" role="jymVt" />
    <node concept="312cEu" id="39eNUjlVKZl" role="jymVt">
      <property role="TrG5h" value="TracedTemplate" />
      <node concept="312cEg" id="39eNUjlX24V" role="jymVt">
        <property role="TrG5h" value="tracedObjects" />
        <node concept="3Tm6S6" id="39eNUjlX1DH" role="1B3o_S" />
        <node concept="A3Dl8" id="39eNUjlX2vr" role="1tU5fm">
          <node concept="2sp9CU" id="39eNUjlX2vs" role="A3Ik2" />
        </node>
      </node>
      <node concept="312cEg" id="39eNUjlWq3P" role="jymVt">
        <property role="TrG5h" value="nodeArg" />
        <node concept="3Tm6S6" id="39eNUjlWpBT" role="1B3o_S" />
        <node concept="2sp9CU" id="39eNUjlWq0d" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="39eNUjlVKZm" role="jymVt">
        <property role="TrG5h" value="template" />
        <node concept="3Tm6S6" id="39eNUjlVKZn" role="1B3o_S" />
        <node concept="2sp9CU" id="39eNUjlVKZo" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="39eNUjlVKZp" role="jymVt">
        <property role="TrG5h" value="table" />
        <node concept="3Tm6S6" id="39eNUjlVKZq" role="1B3o_S" />
        <node concept="17QB3L" id="4Q576RbOXwg" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="4tC1JBnnpnP" role="jymVt">
        <property role="TrG5h" value="repr" />
        <node concept="3Tm6S6" id="4tC1JBnnoQl" role="1B3o_S" />
        <node concept="17QB3L" id="4tC1JBnnphR" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="3YPJJpIdwPT" role="jymVt">
        <property role="TrG5h" value="errors" />
        <node concept="3Tm6S6" id="3YPJJpIdr4H" role="1B3o_S" />
        <node concept="3vKaQO" id="3YPJJpIdMHC" role="1tU5fm">
          <node concept="17QB3L" id="3YPJJpIdMHD" role="3O5elw" />
        </node>
      </node>
      <node concept="312cEg" id="4Q576RbG_3B" role="jymVt">
        <property role="TrG5h" value="unvisitedRequired" />
        <node concept="3Tm6S6" id="4Q576RbGyFt" role="1B3o_S" />
        <node concept="2hMVRd" id="4Q576RbG$VP" role="1tU5fm">
          <node concept="3uibUv" id="4Q576RbGO6P" role="2hN53Y">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
        <node concept="2ShNRf" id="4Q576RbGBfy" role="33vP2m">
          <node concept="32HrFt" id="4Q576RbGBC4" role="2ShVmc">
            <node concept="3uibUv" id="4Q576RbGPaK" role="HW$YZ">
              <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4tC1JBnlCyo" role="jymVt" />
      <node concept="3clFb_" id="39eNUjlVKZR" role="jymVt">
        <property role="TrG5h" value="tracedObjects" />
        <node concept="3Tmbuc" id="4tC1JBnl_Ss" role="1B3o_S" />
        <node concept="3clFbS" id="39eNUjlVKZU" role="3clF47">
          <node concept="3clFbF" id="39eNUjlX3gf" role="3cqZAp">
            <node concept="37vLTw" id="39eNUjlX3ge" role="3clFbG">
              <ref role="3cqZAo" node="39eNUjlX24V" resolve="tracedObjects" />
            </node>
          </node>
        </node>
        <node concept="A3Dl8" id="39eNUjlWZAc" role="3clF45">
          <node concept="2sp9CU" id="39eNUjlWZTT" role="A3Ik2" />
        </node>
        <node concept="2AHcQZ" id="4tC1JBnl$Hl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4tC1JBnnpZk" role="jymVt" />
      <node concept="3clFb_" id="4tC1JBnnr49" role="jymVt">
        <property role="TrG5h" value="doGetPresentation" />
        <node concept="37vLTG" id="4tC1JBnnukf" role="3clF46">
          <property role="TrG5h" value="tpl" />
          <node concept="3uibUv" id="4tC1JBnnuK0" role="1tU5fm">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
        </node>
        <node concept="3clFbS" id="4tC1JBnnr4c" role="3clF47">
          <node concept="3clFbF" id="4tC1JBnnuSR" role="3cqZAp">
            <node concept="2OqwBi" id="4tC1JBnnv2C" role="3clFbG">
              <node concept="37vLTw" id="4tC1JBnnuSQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4tC1JBnnukf" resolve="tpl" />
              </node>
              <node concept="liA8E" id="4tC1JBnnvaZ" role="2OqNvi">
                <ref role="37wK5l" to="i348:4vBwiiUVL7_" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="4tC1JBnnquw" role="1B3o_S" />
        <node concept="17QB3L" id="4tC1JBnnqYb" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="39eNUjlVKZs" role="jymVt" />
      <node concept="3clFbW" id="39eNUjlVKZt" role="jymVt">
        <node concept="37vLTG" id="39eNUjlWr0s" role="3clF46">
          <property role="TrG5h" value="tplArg" />
          <node concept="3Tqbb2" id="39eNUjlWrhr" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="39eNUjlVKZu" role="3clF46">
          <property role="TrG5h" value="tpl" />
          <node concept="3uibUv" id="39eNUjlVM36" role="1tU5fm">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
        </node>
        <node concept="37vLTG" id="3YPJJpIdHED" role="3clF46">
          <property role="TrG5h" value="applyResult" />
          <node concept="3uibUv" id="3YPJJpIdIQs" role="1tU5fm">
            <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
        <node concept="37vLTG" id="4Q576RbGusm" role="3clF46">
          <property role="TrG5h" value="requiredNodes" />
          <node concept="A3Dl8" id="4Q576RbGv7b" role="1tU5fm">
            <node concept="3Tqbb2" id="4Q576RbHfdB" role="A3Ik2" />
          </node>
        </node>
        <node concept="3cqZAl" id="39eNUjlVKZw" role="3clF45" />
        <node concept="3clFbS" id="39eNUjlVKZx" role="3clF47">
          <node concept="3clFbJ" id="39eNUjlWsfr" role="3cqZAp">
            <node concept="3clFbS" id="39eNUjlWsft" role="3clFbx">
              <node concept="3clFbF" id="39eNUjlWts7" role="3cqZAp">
                <node concept="37vLTI" id="39eNUjlWt_o" role="3clFbG">
                  <node concept="2OqwBi" id="39eNUjlWtMI" role="37vLTx">
                    <node concept="37vLTw" id="39eNUjlWtDe" role="2Oq$k0">
                      <ref role="3cqZAo" node="39eNUjlWr0s" resolve="tplArg" />
                    </node>
                    <node concept="iZEcu" id="39eNUjlWtTi" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="39eNUjlWts5" role="37vLTJ">
                    <ref role="3cqZAo" node="39eNUjlWq3P" resolve="nodeArg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="39eNUjlWti$" role="3clFbw">
              <node concept="10Nm6u" id="39eNUjlWtqa" role="3uHU7w" />
              <node concept="37vLTw" id="39eNUjlWsJk" role="3uHU7B">
                <ref role="3cqZAo" node="39eNUjlWr0s" resolve="tplArg" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="39eNUjlVKZ$" role="3cqZAp">
            <node concept="37vLTI" id="39eNUjlVKZ_" role="3clFbG">
              <node concept="2OqwBi" id="39eNUjlVKZA" role="37vLTx">
                <node concept="37vLTw" id="39eNUjlVKZB" role="2Oq$k0">
                  <ref role="3cqZAo" node="39eNUjlVKZu" resolve="tpl" />
                </node>
                <node concept="liA8E" id="39eNUjlVMU6" role="2OqNvi">
                  <ref role="37wK5l" to="i348:6R6MIbU9_nr" resolve="getTemplateRef" />
                </node>
              </node>
              <node concept="37vLTw" id="39eNUjlVKZD" role="37vLTJ">
                <ref role="3cqZAo" node="39eNUjlVKZm" resolve="template" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="39eNUjlVKZE" role="3cqZAp">
            <node concept="37vLTI" id="39eNUjlVKZF" role="3clFbG">
              <node concept="2OqwBi" id="4Q576RbJqVE" role="37vLTx">
                <node concept="2OqwBi" id="39eNUjlVNbB" role="2Oq$k0">
                  <node concept="37vLTw" id="39eNUjlVKZI" role="2Oq$k0">
                    <ref role="3cqZAo" node="39eNUjlVKZu" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="4Q576RbJqOp" role="2OqNvi">
                    <ref role="37wK5l" to="i348:4MqhgXUndvp" resolve="table" />
                  </node>
                </node>
                <node concept="liA8E" id="4Q576RbOXjk" role="2OqNvi">
                  <ref role="37wK5l" to="i348:7P_FdVQoZmr" resolve="fqName" />
                </node>
              </node>
              <node concept="37vLTw" id="39eNUjlVKZL" role="37vLTJ">
                <ref role="3cqZAo" node="39eNUjlVKZp" resolve="table" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4tC1JBnnBAh" role="3cqZAp">
            <node concept="37vLTI" id="4tC1JBnnC7w" role="3clFbG">
              <node concept="1rXfSq" id="4tC1JBnnChX" role="37vLTx">
                <ref role="37wK5l" node="4tC1JBnnr49" resolve="doGetPresentation" />
                <node concept="37vLTw" id="4tC1JBnnCqa" role="37wK5m">
                  <ref role="3cqZAo" node="39eNUjlVKZu" resolve="tpl" />
                </node>
              </node>
              <node concept="37vLTw" id="4tC1JBnnBAf" role="37vLTJ">
                <ref role="3cqZAo" node="4tC1JBnnpnP" resolve="repr" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3YPJJpIdL3U" role="3cqZAp">
            <node concept="3clFbS" id="3YPJJpIdL3W" role="3clFbx">
              <node concept="3clFbF" id="3YPJJpIe9XF" role="3cqZAp">
                <node concept="37vLTI" id="3YPJJpIeaFa" role="3clFbG">
                  <node concept="2OqwBi" id="3YPJJpIegMh" role="37vLTx">
                    <node concept="2OqwBi" id="3YPJJpIef4j" role="2Oq$k0">
                      <node concept="2OqwBi" id="3YPJJpIebJA" role="2Oq$k0">
                        <node concept="2OqwBi" id="3YPJJpIebad" role="2Oq$k0">
                          <node concept="37vLTw" id="3YPJJpIeaX9" role="2Oq$k0">
                            <ref role="3cqZAo" node="3YPJJpIdHED" resolve="applyResult" />
                          </node>
                          <node concept="liA8E" id="3YPJJpIebg4" role="2OqNvi">
                            <ref role="37wK5l" to="psoy:5X1yxJI3E6N" resolve="allCauses" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="3YPJJpIecvd" role="2OqNvi">
                          <node concept="1bVj0M" id="3YPJJpIecvf" role="23t8la">
                            <node concept="3clFbS" id="3YPJJpIecvg" role="1bW5cS">
                              <node concept="3clFbF" id="3YPJJpIecHO" role="3cqZAp">
                                <node concept="10QFUN" id="3YPJJpIenJ1" role="3clFbG">
                                  <node concept="2OqwBi" id="3YPJJpIenIY" role="10QFUP">
                                    <node concept="37vLTw" id="3YPJJpIenIZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3YPJJpIecvh" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="3YPJJpIenJ0" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                    </node>
                                  </node>
                                  <node concept="17QB3L" id="3YPJJpIenV_" role="10QFUM" />
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="3YPJJpIecvh" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="3YPJJpIecvi" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="3YPJJpIef_W" role="2OqNvi" />
                    </node>
                    <node concept="26Dbio" id="3YPJJpIehUn" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="3YPJJpIe9XE" role="37vLTJ">
                    <ref role="3cqZAo" node="3YPJJpIdwPT" resolve="errors" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3YPJJpIdMAy" role="3clFbw">
              <node concept="37vLTw" id="3YPJJpIdMsK" role="2Oq$k0">
                <ref role="3cqZAo" node="3YPJJpIdHED" resolve="applyResult" />
              </node>
              <node concept="liA8E" id="3YPJJpIe9uV" role="2OqNvi">
                <ref role="37wK5l" to="psoy:2gw7OvgCNSM" resolve="hasErrors" />
              </node>
            </node>
            <node concept="9aQIb" id="3YPJJpIeouD" role="9aQIa">
              <node concept="3clFbS" id="3YPJJpIeouE" role="9aQI4">
                <node concept="3clFbF" id="3YPJJpIeoO4" role="3cqZAp">
                  <node concept="37vLTI" id="3YPJJpIepxz" role="3clFbG">
                    <node concept="2ShNRf" id="3YPJJpIepBD" role="37vLTx">
                      <node concept="Tc6Ow" id="3YPJJpIeq8K" role="2ShVmc">
                        <node concept="17QB3L" id="3YPJJpIeqXE" role="HW$YZ" />
                        <node concept="3cmrfG" id="3YPJJpIernP" role="3lWHg$">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3YPJJpIeoO3" role="37vLTJ">
                      <ref role="3cqZAo" node="3YPJJpIdwPT" resolve="errors" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3YPJJpIdJuI" role="3cqZAp" />
          <node concept="3clFbF" id="4Q576RbH9hQ" role="3cqZAp">
            <node concept="2OqwBi" id="4Q576RbHad7" role="3clFbG">
              <node concept="37vLTw" id="4Q576RbH9hO" role="2Oq$k0">
                <ref role="3cqZAo" node="4Q576RbG_3B" resolve="unvisitedRequired" />
              </node>
              <node concept="X8dFx" id="4Q576RbHaNn" role="2OqNvi">
                <node concept="2OqwBi" id="4Q576RbHhhW" role="25WWJ7">
                  <node concept="37vLTw" id="4Q576RbHbCI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Q576RbGusm" resolve="requiredNodes" />
                  </node>
                  <node concept="3$u5V9" id="4Q576RbHhvE" role="2OqNvi">
                    <node concept="1bVj0M" id="4Q576RbHhvG" role="23t8la">
                      <node concept="3clFbS" id="4Q576RbHhvH" role="1bW5cS">
                        <node concept="3clFbF" id="4Q576RbHkGO" role="3cqZAp">
                          <node concept="2ShNRf" id="4Q576RbHkGM" role="3clFbG">
                            <node concept="1pGfFk" id="4Q576RbHlJo" role="2ShVmc">
                              <ref role="37wK5l" node="39eNUjlV3Qu" resolve="TemplateTraceImpl.TracedNode" />
                              <node concept="37vLTw" id="4Q576RbHmk8" role="37wK5m">
                                <ref role="3cqZAo" node="4Q576RbHhvI" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4Q576RbHhvI" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4Q576RbHhvJ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="39eNUjlX2Hg" role="3cqZAp">
            <node concept="37vLTI" id="39eNUjlX2Yy" role="3clFbG">
              <node concept="37vLTw" id="39eNUjlX2He" role="37vLTJ">
                <ref role="3cqZAo" node="39eNUjlX24V" resolve="tracedObjects" />
              </node>
              <node concept="2ShNRf" id="39eNUjlX04b" role="37vLTx">
                <node concept="Tc6Ow" id="39eNUjlX0jP" role="2ShVmc">
                  <node concept="2sp9CU" id="39eNUjlX0LV" role="HW$YZ" />
                  <node concept="37vLTw" id="39eNUjlX1as" role="HW$Y0">
                    <ref role="3cqZAo" node="39eNUjlWq3P" resolve="nodeArg" />
                  </node>
                  <node concept="37vLTw" id="39eNUjlX15r" role="HW$Y0">
                    <ref role="3cqZAo" node="39eNUjlVKZm" resolve="template" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="39eNUjlVKZP" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4Q576RbGEy5" role="jymVt" />
      <node concept="3clFb_" id="4Q576RbGGCi" role="jymVt">
        <property role="TrG5h" value="add" />
        <node concept="3Tm1VV" id="4Q576RbGGCp" role="1B3o_S" />
        <node concept="3cqZAl" id="4Q576RbGGCq" role="3clF45" />
        <node concept="37vLTG" id="4Q576RbGGCr" role="3clF46">
          <property role="TrG5h" value="child" />
          <node concept="3uibUv" id="4Q576RbGGCs" role="1tU5fm">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
        <node concept="3clFbS" id="4Q576RbGGCt" role="3clF47">
          <node concept="3clFbF" id="4Q576RbGRWI" role="3cqZAp">
            <node concept="2OqwBi" id="4Q576RbGSME" role="3clFbG">
              <node concept="37vLTw" id="4Q576RbGRWG" role="2Oq$k0">
                <ref role="3cqZAo" node="4Q576RbG_3B" resolve="unvisitedRequired" />
              </node>
              <node concept="3dhRuq" id="4Q576RbGTAQ" role="2OqNvi">
                <node concept="37vLTw" id="4Q576RbGTJa" role="25WWJ7">
                  <ref role="3cqZAo" node="4Q576RbGGCr" resolve="child" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Q576RbGGCx" role="3cqZAp">
            <node concept="3nyPlj" id="4Q576RbGGCw" role="3clFbG">
              <ref role="37wK5l" node="799SgOKzLTr" resolve="add" />
              <node concept="37vLTw" id="4Q576RbGGCv" role="37wK5m">
                <ref role="3cqZAo" node="4Q576RbGGCr" resolve="child" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4Q576RbGGCu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Q576RbGUR1" role="jymVt" />
      <node concept="3clFb_" id="4Q576RbGGCy" role="jymVt">
        <property role="TrG5h" value="getChildren" />
        <node concept="3Tm1VV" id="4Q576RbGGCA" role="1B3o_S" />
        <node concept="A3Dl8" id="4Q576RbGGCB" role="3clF45">
          <node concept="3uibUv" id="4Q576RbGGCC" role="A3Ik2">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4Q576RbGGCD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="4Q576RbGGCE" role="3clF47">
          <node concept="3clFbF" id="4Q576RbGGCG" role="3cqZAp">
            <node concept="2OqwBi" id="4Q576RbGKzR" role="3clFbG">
              <node concept="2OqwBi" id="4Q576RbGJv1" role="2Oq$k0">
                <node concept="3nyPlj" id="4Q576RbGGCF" role="2Oq$k0">
                  <ref role="37wK5l" node="799SgOK$3ch" resolve="getChildren" />
                </node>
                <node concept="3QWeyG" id="4Q576RbGK23" role="2OqNvi">
                  <node concept="37vLTw" id="4Q576RbGNHi" role="576Qk">
                    <ref role="3cqZAo" node="4Q576RbG_3B" resolve="unvisitedRequired" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="4Q576RbGKSN" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4tC1JBnl_eG" role="jymVt" />
      <node concept="3clFb_" id="4Q576RbjPfa" role="jymVt">
        <property role="TrG5h" value="kind" />
        <node concept="3Tm1VV" id="4Q576RbjPfb" role="1B3o_S" />
        <node concept="3uibUv" id="4Q576RbjPfc" role="3clF45">
          <ref role="3uigEE" node="4Q576Rbjy_X" resolve="TemplateTrace.PointKind" />
        </node>
        <node concept="2AHcQZ" id="4Q576RbjPfd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4Q576RbjPfe" role="3clF47">
          <node concept="3clFbF" id="4Q576RbjPff" role="3cqZAp">
            <node concept="Rm8GO" id="4Q576RbjQsn" role="3clFbG">
              <ref role="Rm8GQ" node="4Q576RbjAsm" resolve="Template" />
              <ref role="1Px2BO" node="4Q576Rbjy_X" resolve="TemplateTrace.PointKind" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4Q576RbjPfh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4tC1JBnlD4J" role="jymVt" />
      <node concept="3clFb_" id="4tC1JBnlD_v" role="jymVt">
        <property role="TrG5h" value="tracedNode" />
        <node concept="3Tm1VV" id="4tC1JBnlD_x" role="1B3o_S" />
        <node concept="2sp9CU" id="4tC1JBnlD_y" role="3clF45" />
        <node concept="3clFbS" id="4tC1JBnlD_$" role="3clF47">
          <node concept="3clFbF" id="4tC1JBnlElf" role="3cqZAp">
            <node concept="37vLTw" id="4tC1JBnlEle" role="3clFbG">
              <ref role="3cqZAo" node="39eNUjlVKZm" resolve="template" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnlD__" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="39eNUjlVKZQ" role="jymVt" />
      <node concept="3clFb_" id="39eNUjlVKZX" role="jymVt">
        <property role="TrG5h" value="groupId" />
        <node concept="3Tm1VV" id="39eNUjlVKZY" role="1B3o_S" />
        <node concept="3clFbS" id="39eNUjlVL00" role="3clF47">
          <node concept="3clFbF" id="39eNUjlVL01" role="3cqZAp">
            <node concept="37vLTw" id="39eNUjlVL02" role="3clFbG">
              <ref role="3cqZAo" node="39eNUjlVKZp" resolve="table" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnlErS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="17QB3L" id="4Q576RbPbHn" role="3clF45" />
        <node concept="2AHcQZ" id="4Q576RbQQDF" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2tJIrI" id="4tC1JBnlEYD" role="jymVt" />
      <node concept="3Tm6S6" id="39eNUjlVL03" role="1B3o_S" />
      <node concept="3uibUv" id="39eNUjlVL04" role="1zkMxy">
        <ref role="3uigEE" node="39eNUjlVBcO" resolve="TemplateTraceImpl.TracePointImpl" />
      </node>
      <node concept="3clFb_" id="4tC1JBnlFDK" role="jymVt">
        <property role="TrG5h" value="presentation" />
        <node concept="3Tm1VV" id="4tC1JBnlFDM" role="1B3o_S" />
        <node concept="17QB3L" id="4tC1JBnlFDN" role="3clF45" />
        <node concept="3clFbS" id="4tC1JBnlFDP" role="3clF47">
          <node concept="3clFbF" id="4tC1JBnnJqr" role="3cqZAp">
            <node concept="37vLTw" id="4tC1JBnnJqq" role="3clFbG">
              <ref role="3cqZAo" node="4tC1JBnnpnP" resolve="repr" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnlFDQ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="2AHcQZ" id="4tC1JBn_pdX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2tJIrI" id="3YPJJpId6uy" role="jymVt" />
      <node concept="3clFb_" id="3YPJJpIdbuQ" role="jymVt">
        <property role="TrG5h" value="errors" />
        <node concept="3Tm1VV" id="3YPJJpIdbuS" role="1B3o_S" />
        <node concept="3vKaQO" id="3YPJJpIe36H" role="3clF45">
          <node concept="17QB3L" id="3YPJJpIe36I" role="3O5elw" />
        </node>
        <node concept="2AHcQZ" id="3YPJJpIdbuU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="3YPJJpIdbuW" role="3clF47">
          <node concept="3clFbF" id="3YPJJpIdHuJ" role="3cqZAp">
            <node concept="37vLTw" id="3YPJJpIdHuI" role="3clFbG">
              <ref role="3cqZAo" node="3YPJJpIdwPT" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3YPJJpIdbuX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="39eNUjlSLcw" role="jymVt" />
  </node>
  <node concept="3HP615" id="39eNUjlSJ9Q">
    <property role="TrG5h" value="TemplateTrace" />
    <property role="3GE5qa" value="trace" />
    <node concept="2tJIrI" id="39eNUjlX_sh" role="jymVt" />
    <node concept="Wx3nA" id="39eNUjlX_RD" role="jymVt">
      <property role="TrG5h" value="NULL" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="39eNUjlX_RE" role="1B3o_S" />
      <node concept="3uibUv" id="39eNUjlX_L8" role="1tU5fm">
        <ref role="3uigEE" node="39eNUjlSJ9Q" resolve="TemplateTrace" />
      </node>
      <node concept="2ShNRf" id="39eNUjlX_ZW" role="33vP2m">
        <node concept="HV5vD" id="39eNUjlXAx1" role="2ShVmc">
          <ref role="HV5vE" node="39eNUjlTp3C" resolve="TemplateTrace.Stub" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tC1JBnqpWW" role="jymVt" />
    <node concept="3clFb_" id="4tC1JBnqtZw" role="jymVt">
      <property role="TrG5h" value="origins" />
      <node concept="3clFbS" id="4tC1JBnqtZz" role="3clF47">
        <node concept="2Gpval" id="4Q576Rb8_PT" role="3cqZAp">
          <node concept="2GrKxI" id="4Q576Rb8_PU" role="2Gsz3X">
            <property role="TrG5h" value="originNode" />
          </node>
          <node concept="37vLTw" id="4Q576Rb8A0h" role="2GsD0m">
            <ref role="3cqZAo" node="4tC1JBnqv7G" resolve="origins" />
          </node>
          <node concept="3clFbS" id="4Q576Rb8_PW" role="2LFqv$">
            <node concept="3clFbF" id="4Q576Rb8AhH" role="3cqZAp">
              <node concept="1rXfSq" id="4Q576Rb8AhG" role="3clFbG">
                <ref role="37wK5l" node="4Q576Rb8p3O" resolve="origin" />
                <node concept="2GrUjf" id="4Q576Rb8Az5" role="37wK5m">
                  <ref role="2Gs0qQ" node="4Q576Rb8_PU" resolve="originNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4tC1JBnqtZ$" role="1B3o_S" />
      <node concept="3cqZAl" id="4tC1JBnqt0u" role="3clF45" />
      <node concept="37vLTG" id="4tC1JBnqv7G" role="3clF46">
        <property role="TrG5h" value="origins" />
        <node concept="A3Dl8" id="4Q576Rb8oEv" role="1tU5fm">
          <node concept="3Tqbb2" id="4Q576Rb8oEw" role="A3Ik2" />
        </node>
      </node>
      <node concept="2JFqV2" id="4Q576Rb8xJk" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="4Q576Rb8qbG" role="jymVt" />
    <node concept="3clFb_" id="4Q576Rb8p3O" role="jymVt">
      <property role="TrG5h" value="origin" />
      <node concept="3clFbS" id="4Q576Rb8p3P" role="3clF47" />
      <node concept="3Tm1VV" id="4Q576Rb8p3Q" role="1B3o_S" />
      <node concept="3cqZAl" id="4Q576Rb8p3R" role="3clF45" />
      <node concept="37vLTG" id="4Q576Rb8p3S" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3Tqbb2" id="4Q576Rb8xuJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4tC1JBnqwgs" role="jymVt" />
    <node concept="3clFb_" id="799SgOKz0oW" role="jymVt">
      <property role="TrG5h" value="takeNode" />
      <node concept="3clFbS" id="799SgOKz0oZ" role="3clF47" />
      <node concept="3Tm1VV" id="799SgOKz0p0" role="1B3o_S" />
      <node concept="3cqZAl" id="799SgOKyZcv" role="3clF45" />
      <node concept="37vLTG" id="799SgOKz1Lb" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="799SgOKz1La" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="799SgOKz2mS" role="jymVt" />
    <node concept="3clFb_" id="799SgOKz3YM" role="jymVt">
      <property role="TrG5h" value="leaveNode" />
      <node concept="3clFbS" id="799SgOKz3YP" role="3clF47" />
      <node concept="3Tm1VV" id="799SgOKz3YQ" role="1B3o_S" />
      <node concept="3cqZAl" id="799SgOKz3mC" role="3clF45" />
      <node concept="37vLTG" id="799SgOKz5nN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="799SgOKz5nM" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="799SgOKz6lS" role="jymVt" />
    <node concept="3clFb_" id="799SgOKyHdU" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="799SgOKyIsC" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="799SgOKyIsD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="799SgOKyIsE" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="799SgOKyIsH" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="3qUE_q" id="799SgOKyIsI" role="11_B2D">
            <node concept="3uibUv" id="799SgOKyIsJ" role="3qUE_r">
              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3YPJJpIcuBv" role="3clF46">
        <property role="TrG5h" value="applyResult" />
        <node concept="3uibUv" id="3YPJJpIcuFa" role="1tU5fm">
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
        </node>
      </node>
      <node concept="37vLTG" id="799SgOKyMZj" role="3clF46">
        <property role="TrG5h" value="requiredNodes" />
        <node concept="A3Dl8" id="799SgOKyMZk" role="1tU5fm">
          <node concept="3Tqbb2" id="799SgOKyMZl" role="A3Ik2" />
        </node>
      </node>
      <node concept="3clFbS" id="799SgOKyHdX" role="3clF47" />
      <node concept="3Tm1VV" id="799SgOKyHdY" role="1B3o_S" />
      <node concept="3cqZAl" id="799SgOKyGCG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="39eNUjlSJFG" role="jymVt" />
    <node concept="3clFb_" id="799SgOKyQJK" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="799SgOKyQJL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="799SgOKyQJM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="799SgOKyQJN" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="799SgOKyQJO" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="3qUE_q" id="799SgOKyQJP" role="11_B2D">
            <node concept="3uibUv" id="799SgOKyQJQ" role="3qUE_r">
              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3YPJJpIcxaF" role="3clF46">
        <property role="TrG5h" value="applyResult" />
        <node concept="3uibUv" id="3YPJJpIcxyP" role="1tU5fm">
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
        </node>
      </node>
      <node concept="3clFbS" id="799SgOKyQJU" role="3clF47">
        <node concept="3clFbF" id="799SgOKyVkJ" role="3cqZAp">
          <node concept="1rXfSq" id="799SgOKyVkI" role="3clFbG">
            <ref role="37wK5l" node="799SgOKyHdU" resolve="apply" />
            <node concept="37vLTw" id="799SgOKyVF2" role="37wK5m">
              <ref role="3cqZAo" node="799SgOKyQJL" resolve="node" />
            </node>
            <node concept="37vLTw" id="799SgOKyW98" role="37wK5m">
              <ref role="3cqZAo" node="799SgOKyQJN" resolve="template" />
            </node>
            <node concept="37vLTw" id="3YPJJpIcBgu" role="37wK5m">
              <ref role="3cqZAo" node="3YPJJpIcxaF" resolve="applyResult" />
            </node>
            <node concept="2ShNRf" id="799SgOKyWQO" role="37wK5m">
              <node concept="kMnCb" id="799SgOKyX$l" role="2ShVmc">
                <node concept="3Tqbb2" id="799SgOKyXMQ" role="kMuH3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="799SgOKyQJV" role="1B3o_S" />
      <node concept="3cqZAl" id="799SgOKyQJW" role="3clF45" />
      <node concept="2JFqV2" id="799SgOKyUk5" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="799SgOKz7xL" role="jymVt" />
    <node concept="3clFb_" id="4tC1JBnm8oa" role="jymVt">
      <property role="TrG5h" value="getOrigins" />
      <node concept="3clFbS" id="4tC1JBnm8od" role="3clF47" />
      <node concept="3Tm1VV" id="4tC1JBnm8oe" role="1B3o_S" />
      <node concept="A3Dl8" id="4tC1JBnm88j" role="3clF45">
        <node concept="3uibUv" id="4tC1JBnm8nX" role="A3Ik2">
          <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
        </node>
      </node>
      <node concept="2AHcQZ" id="799SgOKtH7$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4tC1JBnoPXD" role="jymVt" />
    <node concept="Qs71p" id="4Q576Rbjy_X" role="jymVt">
      <property role="TrG5h" value="PointKind" />
      <node concept="3Tm1VV" id="4Q576Rbjy_Y" role="1B3o_S" />
      <node concept="QsSxf" id="4Q576Rbj$_2" role="Qtgdg">
        <property role="TrG5h" value="Node" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="4Q576RbjAsm" role="Qtgdg">
        <property role="TrG5h" value="Template" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="4tC1JBnkZ0Z" role="jymVt" />
    <node concept="3HP615" id="4tC1JBnl0fF" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TracePoint" />
      <node concept="3clFb_" id="4Q576RbjCXh" role="jymVt">
        <property role="TrG5h" value="kind" />
        <node concept="3clFbS" id="4Q576RbjCXk" role="3clF47" />
        <node concept="3Tm1VV" id="4Q576RbjCXl" role="1B3o_S" />
        <node concept="3uibUv" id="4Q576RbjCK8" role="3clF45">
          <ref role="3uigEE" node="4Q576Rbjy_X" resolve="TemplateTrace.PointKind" />
        </node>
        <node concept="2AHcQZ" id="4Q576RbjDk4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFb_" id="4tC1JBnl2Lm" role="jymVt">
        <property role="TrG5h" value="tracedNode" />
        <node concept="3clFbS" id="4tC1JBnl2Lp" role="3clF47" />
        <node concept="3Tm1VV" id="4tC1JBnl2Lq" role="1B3o_S" />
        <node concept="2sp9CU" id="4tC1JBnl39l" role="3clF45" />
        <node concept="2AHcQZ" id="4tC1JBn_j5Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFb_" id="4tC1JBnl6k3" role="jymVt">
        <property role="TrG5h" value="presentation" />
        <node concept="3clFbS" id="4tC1JBnl6k6" role="3clF47" />
        <node concept="3Tm1VV" id="4tC1JBnl6k7" role="1B3o_S" />
        <node concept="17QB3L" id="4tC1JBnl3tM" role="3clF45" />
        <node concept="2AHcQZ" id="4tC1JBn_k_M" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFb_" id="4tC1JBnl5kH" role="jymVt">
        <property role="TrG5h" value="groupId" />
        <node concept="3clFbS" id="4tC1JBnl5kK" role="3clF47" />
        <node concept="3Tm1VV" id="4tC1JBnl5kL" role="1B3o_S" />
        <node concept="2AHcQZ" id="4tC1JBn_jRi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="17QB3L" id="4tC1JBnnn2H" role="3clF45" />
      </node>
      <node concept="3clFb_" id="3YPJJpIcLGf" role="jymVt">
        <property role="TrG5h" value="errors" />
        <node concept="3clFbS" id="3YPJJpIcLGi" role="3clF47" />
        <node concept="3Tm1VV" id="3YPJJpIcLGj" role="1B3o_S" />
        <node concept="3vKaQO" id="3YPJJpIdOqS" role="3clF45">
          <node concept="17QB3L" id="3YPJJpIdOqT" role="3O5elw" />
        </node>
        <node concept="2AHcQZ" id="3YPJJpIcM6r" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFb_" id="4Q576RaXgjY" role="jymVt">
        <property role="TrG5h" value="getChildren" />
        <node concept="3clFbS" id="4Q576RaXgjZ" role="3clF47" />
        <node concept="3Tm1VV" id="4Q576RaXgk2" role="1B3o_S" />
        <node concept="A3Dl8" id="4Q576RaXgk3" role="3clF45">
          <node concept="3uibUv" id="4Q576RaXgk4" role="A3Ik2">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4Q576RaXh36" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4tC1JBnl0fG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="39eNUjlTnRB" role="jymVt" />
    <node concept="2tJIrI" id="799SgOKqhpm" role="jymVt" />
    <node concept="312cEu" id="39eNUjlTp3C" role="jymVt">
      <property role="TrG5h" value="Stub" />
      <node concept="3Tm1VV" id="39eNUjlTp3E" role="1B3o_S" />
      <node concept="3uibUv" id="39eNUjlTpQM" role="EKbjA">
        <ref role="3uigEE" node="39eNUjlSJ9Q" resolve="TemplateTrace" />
      </node>
      <node concept="3clFb_" id="4Q576Rb8zH3" role="jymVt">
        <property role="TrG5h" value="origin" />
        <node concept="3Tm1VV" id="4Q576Rb8zH5" role="1B3o_S" />
        <node concept="3cqZAl" id="4Q576Rb8zH6" role="3clF45" />
        <node concept="37vLTG" id="4Q576Rb8zH7" role="3clF46">
          <property role="TrG5h" value="origin" />
          <node concept="3Tqbb2" id="4Q576Rb8zH8" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4Q576Rb8zH9" role="3clF47" />
        <node concept="2AHcQZ" id="4Q576Rb8zHa" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4Q576RaXnY6" role="jymVt">
        <property role="TrG5h" value="takeNode" />
        <node concept="3Tm1VV" id="4Q576RaXnY8" role="1B3o_S" />
        <node concept="3cqZAl" id="4Q576RaXnY9" role="3clF45" />
        <node concept="37vLTG" id="4Q576RaXnYa" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4Q576RaXnYb" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4Q576RaXnYc" role="3clF47" />
        <node concept="2AHcQZ" id="4Q576RaXnYd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4Q576RaXnYe" role="jymVt">
        <property role="TrG5h" value="leaveNode" />
        <node concept="3Tm1VV" id="4Q576RaXnYg" role="1B3o_S" />
        <node concept="3cqZAl" id="4Q576RaXnYh" role="3clF45" />
        <node concept="37vLTG" id="4Q576RaXnYi" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4Q576RaXnYj" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4Q576RaXnYk" role="3clF47" />
        <node concept="2AHcQZ" id="4Q576RaXnYl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4Q576RaXnYm" role="jymVt">
        <property role="TrG5h" value="apply" />
        <node concept="37vLTG" id="4Q576RaXnYn" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4Q576RaXnYo" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4Q576RaXnYp" role="3clF46">
          <property role="TrG5h" value="template" />
          <node concept="3uibUv" id="4Q576RaXnYq" role="1tU5fm">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            <node concept="3qUE_q" id="4Q576RaXnYr" role="11_B2D">
              <node concept="3uibUv" id="4Q576RaXnYs" role="3qUE_r">
                <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3YPJJpIcDTF" role="3clF46">
          <property role="TrG5h" value="applyResult" />
          <node concept="3uibUv" id="3YPJJpIcDTG" role="1tU5fm">
            <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
        <node concept="37vLTG" id="4Q576RaXnYt" role="3clF46">
          <property role="TrG5h" value="requiredNodes" />
          <node concept="A3Dl8" id="4Q576RaXnYu" role="1tU5fm">
            <node concept="3Tqbb2" id="4Q576RaXnYv" role="A3Ik2" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4Q576RaXnYx" role="1B3o_S" />
        <node concept="3cqZAl" id="4Q576RaXnYy" role="3clF45" />
        <node concept="3clFbS" id="4Q576RaXnYz" role="3clF47" />
        <node concept="2AHcQZ" id="4Q576RaXnY$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4tC1JBnrDTC" role="jymVt">
        <property role="TrG5h" value="getOrigins" />
        <node concept="3Tm1VV" id="4tC1JBnrDTE" role="1B3o_S" />
        <node concept="A3Dl8" id="4tC1JBnrDTF" role="3clF45">
          <node concept="3uibUv" id="4tC1JBnrDTG" role="A3Ik2">
            <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
          </node>
        </node>
        <node concept="3clFbS" id="4tC1JBnrDTH" role="3clF47">
          <node concept="3clFbF" id="4tC1JBnrFiH" role="3cqZAp">
            <node concept="2ShNRf" id="4tC1JBnrFiF" role="3clFbG">
              <node concept="kMnCb" id="4tC1JBnrFMY" role="2ShVmc">
                <node concept="3uibUv" id="4tC1JBnrFNy" role="kMuH3">
                  <ref role="3uigEE" node="4tC1JBnl0fF" resolve="TemplateTrace.TracePoint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4tC1JBnrDTI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="39eNUjlSJ9R" role="1B3o_S" />
  </node>
</model>

