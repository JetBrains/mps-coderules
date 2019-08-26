<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
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
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="9x2e" ref="r:0730b0d1-7e2f-4982-aac3-8069c5060a9c(jetbrains.mps.lang.typesystem2.reporting)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="ksgm" ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)" />
    <import index="xnrr" ref="r:4fd33103-fc30-42f4-a8cf-d1e858f21988(jetbrains.mps.lang.coderules.program.analysis)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
  </imports>
  <registry>
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
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
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
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1180457458947" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSuperConcepts" flags="nn" index="3oJPKh" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
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
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
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
    <node concept="2YIFZL" id="7dgRGU4oCXw" role="jymVt">
      <property role="TrG5h" value="remainingAllowed" />
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
          <node concept="1PaTwC" id="589APehYxNk" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxNl" role="1PaTwD">
              <property role="3oM_SC" value="FIXME:" />
            </node>
            <node concept="3oM_SD" id="589APehYxNm" role="1PaTwD">
              <property role="3oM_SC" value="extract" />
            </node>
            <node concept="3oM_SD" id="589APehYxNn" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxNo" role="1PaTwD">
              <property role="3oM_SC" value="flag" />
            </node>
            <node concept="3oM_SD" id="589APehYxNp" role="1PaTwD">
              <property role="3oM_SC" value="&quot;resulting" />
            </node>
            <node concept="3oM_SD" id="589APehYxNq" role="1PaTwD">
              <property role="3oM_SC" value="constraint&quot;" />
            </node>
            <node concept="3oM_SD" id="589APehYxNr" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="589APehYxNs" role="1PaTwD">
              <property role="3oM_SC" value="mark" />
            </node>
            <node concept="3oM_SD" id="589APehYxNt" role="1PaTwD">
              <property role="3oM_SC" value="ones" />
            </node>
            <node concept="3oM_SD" id="589APehYxNu" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="589APehYxNv" role="1PaTwD">
              <property role="3oM_SC" value="constitute" />
            </node>
            <node concept="3oM_SD" id="589APehYxNw" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxNx" role="1PaTwD">
              <property role="3oM_SC" value="results" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4hh0cTR9UBL" role="3cqZAp">
          <node concept="2OqwBi" id="4hh0cTR9Vlx" role="3clFbG">
            <node concept="37vLTw" id="4hh0cTR9UBJ" role="2Oq$k0">
              <ref role="3cqZAo" node="7dgRGU4oxoq" resolve="result" />
            </node>
            <node concept="TSZUe" id="4hh0cTR9WTU" role="2OqNvi">
              <node concept="Xl_RD" id="4hh0cTR9X9H" role="25WWJ7">
                <property role="Xl_RC" value="hasBound" />
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
        <property role="TrG5h" value="reporting" />
        <node concept="3uibUv" id="3GEs5q_0q_0" role="1tU5fm">
          <ref role="3uigEE" to="9x2e:oI9YrIZeS" resolve="Reporting" />
        </node>
      </node>
      <node concept="3cqZAl" id="HV6urVFjOn" role="3clF45" />
      <node concept="3Tm1VV" id="HV6urVFjOo" role="1B3o_S" />
      <node concept="3clFbS" id="HV6urVFjOp" role="3clF47">
        <node concept="1VxSAg" id="4F3SXIF5Y1f" role="3cqZAp">
          <ref role="37wK5l" node="4F3SXIF5Xa$" resolve="ProgramEvaluator" />
          <node concept="37vLTw" id="4F3SXIF5Y2w" role="37wK5m">
            <ref role="3cqZAo" node="2UGjFq4Led0" resolve="reporting" />
          </node>
          <node concept="3clFbT" id="4F3SXIF5Y37" role="37wK5m">
            <property role="3clFbU" value="false" />
          </node>
          <node concept="3clFbT" id="34$A1MffFON" role="37wK5m">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4F3SXIF5Xmc" role="jymVt" />
    <node concept="3clFbW" id="4F3SXIF5Xa$" role="jymVt">
      <node concept="37vLTG" id="4F3SXIF5Xa_" role="3clF46">
        <property role="TrG5h" value="reporting" />
        <node concept="3uibUv" id="3GEs5q_0$SY" role="1tU5fm">
          <ref role="3uigEE" to="9x2e:oI9YrIZeS" resolve="Reporting" />
        </node>
      </node>
      <node concept="37vLTG" id="4F3SXIF5Xx_" role="3clF46">
        <property role="TrG5h" value="profiling" />
        <node concept="10P_77" id="4F3SXIF5XyU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="23c4kVtm6i9" role="3clF46">
        <property role="TrG5h" value="checkGarbage" />
        <node concept="10P_77" id="23c4kVtm6l1" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4F3SXIF5XaB" role="3clF45" />
      <node concept="3Tm1VV" id="4F3SXIF5XaC" role="1B3o_S" />
      <node concept="3clFbS" id="4F3SXIF5XaD" role="3clF47">
        <node concept="3clFbF" id="4F3SXIF5XaE" role="3cqZAp">
          <node concept="37vLTI" id="4F3SXIF5XaF" role="3clFbG">
            <node concept="2OqwBi" id="4F3SXIF5XaG" role="37vLTJ">
              <node concept="Xjq3P" id="4F3SXIF5XaH" role="2Oq$k0" />
              <node concept="2OwXpG" id="4F3SXIF5XaI" role="2OqNvi">
                <ref role="2Oxat5" node="2UGjFq4Lesf" resolve="reporting" />
              </node>
            </node>
            <node concept="37vLTw" id="4F3SXIF5XaJ" role="37vLTx">
              <ref role="3cqZAo" node="4F3SXIF5Xa_" resolve="reporting" />
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
        <node concept="3clFbF" id="23c4kVtmgLc" role="3cqZAp">
          <node concept="37vLTI" id="23c4kVtmgLe" role="3clFbG">
            <node concept="2OqwBi" id="23c4kVtmhyF" role="37vLTJ">
              <node concept="Xjq3P" id="23c4kVtmhzf" role="2Oq$k0" />
              <node concept="2OwXpG" id="23c4kVtmhyI" role="2OqNvi">
                <ref role="2Oxat5" node="23c4kVtmgL8" resolve="checkGarbage" />
              </node>
            </node>
            <node concept="37vLTw" id="23c4kVtmgLi" role="37vLTx">
              <ref role="3cqZAo" node="23c4kVtm6i9" resolve="checkGarbage" />
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
        <node concept="3clFbH" id="41ox5VnkhIX" role="3cqZAp" />
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
        <node concept="3clFbJ" id="3GEs5q_0Zj9" role="3cqZAp">
          <node concept="3clFbS" id="3GEs5q_0Zjb" role="3clFbx">
            <node concept="3clFbF" id="3GEs5q_1crQ" role="3cqZAp">
              <node concept="37vLTI" id="3GEs5q_1iS8" role="3clFbG">
                <node concept="2OqwBi" id="3GEs5q_1iYy" role="37vLTx">
                  <node concept="37vLTw" id="3GEs5q_1iSL" role="2Oq$k0">
                    <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                  </node>
                  <node concept="liA8E" id="3GEs5q_1obM" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withParameter(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$ParameterKey,java.lang.Object)" resolve="withParameter" />
                    <node concept="2YIFZM" id="3GEs5q_1ywI" role="37wK5m">
                      <ref role="37wK5l" to="w7la:~EvaluationSession$ParameterKey.of(java.lang.String,java.lang.Class)" resolve="of" />
                      <ref role="1Pybhc" to="w7la:~EvaluationSession$ParameterKey" resolve="EvaluationSession.ParameterKey" />
                      <node concept="Xl_RD" id="3GEs5q_1BA$" role="37wK5m">
                        <property role="Xl_RC" value="reporting" />
                      </node>
                      <node concept="3VsKOn" id="3GEs5q_1Sd9" role="37wK5m">
                        <ref role="3VsUkX" to="9x2e:oI9YrIZeS" resolve="Reporting" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GEs5q_22yl" role="37wK5m">
                      <ref role="3cqZAo" node="2UGjFq4Lesf" resolve="reporting" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GEs5q_1crO" role="37vLTJ">
                  <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3GEs5q_15kq" role="3clFbw">
            <node concept="10Nm6u" id="3GEs5q_17l7" role="3uHU7w" />
            <node concept="37vLTw" id="3GEs5q_11wj" role="3uHU7B">
              <ref role="3cqZAo" node="2UGjFq4Lesf" resolve="reporting" />
            </node>
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
        <node concept="3clFbF" id="6uUkLpHjIS9" role="3cqZAp">
          <node concept="37vLTI" id="6uUkLpHjL2F" role="3clFbG">
            <node concept="37vLTw" id="6uUkLpHjIS7" role="37vLTJ">
              <ref role="3cqZAo" node="6uUkLpHj_La" resolve="rulesDiff" />
            </node>
            <node concept="2YIFZM" id="7eQMSyzaq4u" role="37vLTx">
              <ref role="1Pybhc" to="zx3l:~RulesDiff" resolve="RulesDiff" />
              <ref role="37wK5l" to="zx3l:~RulesDiff.emptyDiff()" resolve="emptyDiff" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3R7n5gYSM0R" role="3cqZAp">
          <node concept="3clFbS" id="3R7n5gYSM0S" role="3clFbx">
            <node concept="3clFbF" id="3R7n5gYSM0T" role="3cqZAp">
              <node concept="37vLTI" id="3R7n5gYSM0U" role="3clFbG">
                <node concept="2OqwBi" id="3R7n5gYSM0V" role="37vLTx">
                  <node concept="37vLTw" id="3R7n5gYSM0W" role="2Oq$k0">
                    <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                  </node>
                  <node concept="liA8E" id="3R7n5gYSM0X" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withSessionToken(jetbrains.mps.logic.reactor.evaluation.SessionToken)" resolve="withSessionToken" />
                    <node concept="37vLTw" id="1H_6AUSjqhx" role="37wK5m">
                      <ref role="3cqZAo" node="1H_6AUSjp6Y" resolve="sessionToken" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3R7n5gYSM0Z" role="37vLTJ">
                  <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7eQMSyzaIFj" role="3cqZAp" />
            <node concept="3clFbF" id="6uUkLpHkm2n" role="3cqZAp">
              <node concept="37vLTI" id="6uUkLpHkm2o" role="3clFbG">
                <node concept="37vLTw" id="6uUkLpHkm2p" role="37vLTJ">
                  <ref role="3cqZAo" node="6uUkLpHj_La" resolve="rulesDiff" />
                </node>
                <node concept="2YIFZM" id="6uUkLpHkm2q" role="37vLTx">
                  <ref role="1Pybhc" to="zx3l:~RulesDiff" resolve="RulesDiff" />
                  <ref role="37wK5l" to="zx3l:~RulesDiff.findDiff(java.lang.Iterable,java.lang.Iterable)" resolve="findDiff" />
                  <node concept="2OqwBi" id="6uUkLpHkm2r" role="37wK5m">
                    <node concept="liA8E" id="6uUkLpHkm2s" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~SessionToken.getRuleTags()" resolve="getRuleTags" />
                    </node>
                    <node concept="37vLTw" id="6uUkLpHkm2t" role="2Oq$k0">
                      <ref role="3cqZAo" node="1H_6AUSjp6Y" resolve="sessionToken" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6uUkLpHkm2u" role="37wK5m">
                    <node concept="37vLTw" id="6uUkLpHkm2v" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eQMSyz9QyL" resolve="program" />
                    </node>
                    <node concept="liA8E" id="6uUkLpHkm2w" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Program.rules()" resolve="rules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3R7n5gYSM10" role="3cqZAp" />
            <node concept="1DcWWT" id="3R7n5gYSM11" role="3cqZAp">
              <node concept="3clFbS" id="3R7n5gYSM12" role="2LFqv$">
                <node concept="3clFbF" id="3R7n5gYSM13" role="3cqZAp">
                  <node concept="2OqwBi" id="3R7n5gYSM14" role="3clFbG">
                    <node concept="37vLTw" id="3R7n5gYSM15" role="2Oq$k0">
                      <ref role="3cqZAo" node="24Vro6cQKgF" resolve="tracer" />
                    </node>
                    <node concept="liA8E" id="3R7n5gYSM16" role="2OqNvi">
                      <ref role="37wK5l" node="5cnt3vhfW9c" resolve="restored" />
                      <node concept="37vLTw" id="3R7n5gYSM17" role="37wK5m">
                        <ref role="3cqZAo" node="3R7n5gYSM18" resolve="occ" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3R7n5gYSM18" role="1Duv9x">
                <property role="TrG5h" value="occ" />
                <node concept="3uibUv" id="3R7n5gYSM19" role="1tU5fm">
                  <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
                </node>
              </node>
              <node concept="2OqwBi" id="1H_6AUSkgVP" role="1DdaDG">
                <node concept="2OqwBi" id="1H_6AUSjxWA" role="2Oq$k0">
                  <node concept="2OqwBi" id="1H_6AUSjxv2" role="2Oq$k0">
                    <node concept="37vLTw" id="1H_6AUSjsDB" role="2Oq$k0">
                      <ref role="3cqZAo" node="1H_6AUSjp6Y" resolve="sessionToken" />
                    </node>
                    <node concept="liA8E" id="1H_6AUSjxLv" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~SessionToken.getJournalView()" resolve="getJournalView" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1H_6AUSkgE9" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~MatchJournalView.getStoreView()" resolve="getStoreView" />
                  </node>
                </node>
                <node concept="liA8E" id="1H_6AUSkhe_" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~StoreView.allOccurrences()" resolve="allOccurrences" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3R7n5gYSM1d" role="3clFbw">
            <node concept="10Nm6u" id="3R7n5gYSM1e" role="3uHU7w" />
            <node concept="37vLTw" id="1H_6AUSjq4B" role="3uHU7B">
              <ref role="3cqZAo" node="1H_6AUSjp6Y" resolve="sessionToken" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eQMSyza1JA" role="3cqZAp">
          <node concept="37vLTI" id="7eQMSyza3Wa" role="3clFbG">
            <node concept="2OqwBi" id="7eQMSyza54k" role="37vLTx">
              <node concept="37vLTw" id="7eQMSyza4Y_" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
              </node>
              <node concept="liA8E" id="7eQMSyza5cw" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withIncrSpec(jetbrains.mps.logic.reactor.program.IncrementalProgramSpec)" resolve="withIncrSpec" />
                <node concept="2OqwBi" id="7eQMSyza5vp" role="37wK5m">
                  <node concept="37vLTw" id="7eQMSyza5fZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7lt0LtQtD2v" resolve="programProducer" />
                  </node>
                  <node concept="liA8E" id="7eQMSyza5DB" role="2OqNvi">
                    <ref role="37wK5l" node="1H_6AUT8p2f" resolve="getProgramSpec" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7eQMSyza1J$" role="37vLTJ">
              <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eQMSyzjaWQ" role="3cqZAp">
          <node concept="37vLTI" id="7eQMSyzjaWR" role="3clFbG">
            <node concept="2OqwBi" id="7eQMSyzjaWS" role="37vLTx">
              <node concept="37vLTw" id="7eQMSyzjaWT" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
              </node>
              <node concept="liA8E" id="7eQMSyzjaWU" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationSession$Config.withRulesDiff(jetbrains.mps.logic.reactor.core.RulesDiff)" resolve="withRulesDiff" />
                <node concept="37vLTw" id="6uUkLpHjN74" role="37wK5m">
                  <ref role="3cqZAo" node="6uUkLpHj_La" resolve="rulesDiff" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7eQMSyzjaWY" role="37vLTJ">
              <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3GlpCDSBYQN" role="3cqZAp" />
        <node concept="3SKdUt" id="7WKNeR9xESt" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxNy" role="3ndbpf">
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
        <node concept="3clFbH" id="7WKNeR9x_5m" role="3cqZAp" />
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
            <property role="TrG5h" value="evaluationResult" />
            <node concept="3uibUv" id="1X0h_efXwhM" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~EvaluationResult" resolve="EvaluationResult" />
            </node>
            <node concept="10Nm6u" id="7rf49NgqS96" role="33vP2m" />
          </node>
        </node>
        <node concept="2GUZhq" id="1Ry9kf2vh7F" role="3cqZAp">
          <node concept="TDmWw" id="7rf49NgqSok" role="TEXxN">
            <node concept="3cpWsn" id="7rf49NgqSol" role="TDEfY">
              <property role="TrG5h" value="vmerr" />
              <node concept="3uibUv" id="7rf49NgqTpN" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~VirtualMachineError" resolve="VirtualMachineError" />
              </node>
            </node>
            <node concept="3clFbS" id="7rf49NgqSon" role="TDEfX">
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
                    <ref role="3cqZAo" node="7WKNeR9xpPP" resolve="config" />
                  </node>
                  <node concept="liA8E" id="5mr7UHcbsE5" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationSession$Config.start(jetbrains.mps.logic.reactor.evaluation.Supervisor)" resolve="start" />
                    <node concept="37vLTw" id="3o9wrC3sW4Z" role="37wK5m">
                      <ref role="3cqZAo" node="3o9wrC3sOnz" resolve="supervisor" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1Ry9kf2vmS7" role="37vLTJ">
                  <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationResult" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1X0h_efYbPh" role="3cqZAp">
              <node concept="3cpWsn" id="1X0h_efYbPi" role="3cpWs9">
                <property role="TrG5h" value="feedback" />
                <node concept="2OqwBi" id="1X0h_efYbPj" role="33vP2m">
                  <node concept="37vLTw" id="1X0h_efYbPk" role="2Oq$k0">
                    <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationResult" />
                  </node>
                  <node concept="liA8E" id="473$26GFFFG" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationResult.feedback()" resolve="feedback" />
                  </node>
                </node>
                <node concept="3uibUv" id="473$26GFFKF" role="1tU5fm">
                  <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1X0h_efY7po" role="3cqZAp">
              <node concept="3clFbS" id="1X0h_efY7pq" role="3clFbx">
                <node concept="YS8fn" id="1X0h_efYaF8" role="3cqZAp">
                  <node concept="2ShNRf" id="473$26GFO4I" role="YScLw">
                    <node concept="1pGfFk" id="473$26GFPXn" role="2ShVmc">
                      <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.Throwable)" resolve="EvaluationFailureException" />
                      <node concept="2OqwBi" id="1X0h_efYvb5" role="37wK5m">
                        <node concept="37vLTw" id="1X0h_efYbPn" role="2Oq$k0">
                          <ref role="3cqZAo" node="1X0h_efYbPi" resolve="feedback" />
                        </node>
                        <node concept="liA8E" id="473$26GFHRg" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~EvaluationFeedback.failureCause()" resolve="failureCause" />
                        </node>
                      </node>
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
            <node concept="3clFbH" id="1X0h_efYdfs" role="3cqZAp" />
            <node concept="3clFbF" id="51a$_pPM24q" role="3cqZAp">
              <node concept="1rXfSq" id="51a$_pPM24o" role="3clFbG">
                <ref role="37wK5l" node="51a$_pPLZra" resolve="setSessionToken" />
                <node concept="2OqwBi" id="51a$_pPM2nQ" role="37wK5m">
                  <node concept="37vLTw" id="51a$_pPM2g4" role="2Oq$k0">
                    <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationResult" />
                  </node>
                  <node concept="liA8E" id="51a$_pPM2tD" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationResult.token()" resolve="token" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1H_6AUSk6bN" role="3cqZAp">
              <node concept="37vLTI" id="1H_6AUSk7qU" role="3clFbG">
                <node concept="2OqwBi" id="1H_6AUSkg2O" role="37vLTx">
                  <node concept="37vLTw" id="1H_6AUSkfRV" role="2Oq$k0">
                    <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationResult" />
                  </node>
                  <node concept="liA8E" id="1H_6AUSkggm" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~EvaluationResult.storeView()" resolve="storeView" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1H_6AUSk6IE" role="37vLTJ">
                  <node concept="Xjq3P" id="1H_6AUSk6bL" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1H_6AUSk7c2" role="2OqNvi">
                    <ref role="2Oxat5" node="5cnt3vh3s4F" resolve="storeView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1X0h_efY7oC" role="3cqZAp" />
          </node>
          <node concept="3clFbS" id="1Ry9kf2vh7I" role="2GVbov">
            <node concept="3SKdUt" id="4F3SXIF5S$a" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxNO" role="3ndbpf">
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
                <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationResult" />
              </node>
              <node concept="liA8E" id="5jCHAT1QROI" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~EvaluationResult.storeView()" resolve="storeView" />
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
                          <ref role="37wK5l" to="av0y:~Symbol.id()" resolve="id" />
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
                          <ref role="37wK5l" node="7nkyKX7gU0T" resolve="result" />
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
                            <ref role="37wK5l" node="7nkyKX7gU3L" resolve="garbage" />
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
                  <ref role="37wK5l" to="w7la:~StoreView.occurrences(jetbrains.mps.logic.reactor.program.ConstraintSymbol)" resolve="occurrences" />
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
              <ref role="37wK5l" to="w7la:~StoreView.constraintSymbols()" resolve="constraintSymbols" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ocyR2R4bLi" role="3cqZAp" />
        <node concept="3clFbJ" id="23c4kVtm1ip" role="3cqZAp">
          <node concept="3clFbS" id="23c4kVtm1ir" role="3clFbx">
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
            <node concept="3clFbH" id="5YVpdheub_T" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="23c4kVtmhAG" role="3clFbw">
            <ref role="3cqZAo" node="23c4kVtmgL8" resolve="checkGarbage" />
          </node>
          <node concept="9aQIb" id="2ocyR2R46iW" role="9aQIa">
            <node concept="3clFbS" id="2ocyR2R46iX" role="9aQI4">
              <node concept="3cpWs6" id="2ocyR2R40WW" role="3cqZAp">
                <node concept="2YIFZM" id="2ocyR2R40X1" role="3cqZAk">
                  <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                  <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
                </node>
              </node>
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
    <node concept="3clFb_" id="4VntlICqLLf" role="jymVt">
      <property role="TrG5h" value="sessionToken" />
      <node concept="3clFbS" id="4VntlICqLLi" role="3clF47">
        <node concept="3clFbF" id="4VntlICqNbk" role="3cqZAp">
          <node concept="37vLTw" id="4VntlICqNbj" role="3clFbG">
            <ref role="3cqZAo" node="1H_6AUSjp6Y" resolve="sessionToken" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4VntlICqKvQ" role="1B3o_S" />
      <node concept="3uibUv" id="4VntlICqLFj" role="3clF45">
        <ref role="3uigEE" to="w7la:~SessionToken" resolve="SessionToken" />
      </node>
    </node>
    <node concept="3clFb_" id="51a$_pPLZra" role="jymVt">
      <property role="TrG5h" value="setSessionToken" />
      <node concept="37vLTG" id="51a$_pPM05q" role="3clF46">
        <property role="TrG5h" value="newToken" />
        <node concept="3uibUv" id="51a$_pPM0r2" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~SessionToken" resolve="SessionToken" />
        </node>
      </node>
      <node concept="3clFbS" id="51a$_pPLZrd" role="3clF47">
        <node concept="3clFbF" id="51a$_pPLZRd" role="3cqZAp">
          <node concept="37vLTI" id="51a$_pPM00X" role="3clFbG">
            <node concept="37vLTw" id="51a$_pPLZRc" role="37vLTJ">
              <ref role="3cqZAo" node="1H_6AUSjp6Y" resolve="sessionToken" />
            </node>
            <node concept="37vLTw" id="51a$_pPM1S1" role="37vLTx">
              <ref role="3cqZAo" node="51a$_pPM05q" resolve="newToken" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="51a$_pPLYVm" role="1B3o_S" />
      <node concept="3cqZAl" id="51a$_pPLZpD" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6uUkLpHjDqO" role="jymVt">
      <property role="TrG5h" value="rulesDiff" />
      <node concept="3clFbS" id="6uUkLpHjDqR" role="3clF47">
        <node concept="3clFbF" id="6uUkLpHjEJO" role="3cqZAp">
          <node concept="37vLTw" id="6uUkLpHjEJN" role="3clFbG">
            <ref role="3cqZAo" node="6uUkLpHj_La" resolve="rulesDiff" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6uUkLpHjCmc" role="1B3o_S" />
      <node concept="3uibUv" id="6uUkLpHjDmc" role="3clF45">
        <ref role="3uigEE" to="zx3l:~RulesDiff" resolve="RulesDiff" />
      </node>
    </node>
    <node concept="2tJIrI" id="4jcOV4hNGQi" role="jymVt" />
    <node concept="3Tm1VV" id="41ox5Vnk76b" role="1B3o_S" />
    <node concept="312cEg" id="2UGjFq4Lesf" role="jymVt">
      <property role="TrG5h" value="reporting" />
      <node concept="3Tm6S6" id="2UGjFq4Lesg" role="1B3o_S" />
      <node concept="3uibUv" id="3GEs5q_0Jus" role="1tU5fm">
        <ref role="3uigEE" to="9x2e:oI9YrIZeS" resolve="Reporting" />
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
    <node concept="312cEg" id="6uUkLpHj_La" role="jymVt">
      <property role="TrG5h" value="rulesDiff" />
      <node concept="3Tm6S6" id="6uUkLpHj$G_" role="1B3o_S" />
      <node concept="3uibUv" id="6uUkLpHj_Gy" role="1tU5fm">
        <ref role="3uigEE" to="zx3l:~RulesDiff" resolve="RulesDiff" />
      </node>
    </node>
    <node concept="312cEg" id="1H_6AUSjp6Y" role="jymVt">
      <property role="TrG5h" value="sessionToken" />
      <node concept="3Tm6S6" id="1H_6AUSjoeZ" role="1B3o_S" />
      <node concept="3uibUv" id="1H_6AUSjp42" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~SessionToken" resolve="SessionToken" />
      </node>
    </node>
    <node concept="312cEg" id="23c4kVtmgL8" role="jymVt">
      <property role="TrG5h" value="checkGarbage" />
      <node concept="3Tm6S6" id="23c4kVtmgL9" role="1B3o_S" />
      <node concept="10P_77" id="23c4kVtmgLb" role="1tU5fm" />
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
              <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
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
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
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
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
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
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
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
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object)" resolve="set" />
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
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
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
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
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
                <ref role="37wK5l" to="18ew:~Computable.compute()" resolve="compute" />
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
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
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
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
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
              <ref role="37wK5l" to="33ny:~Map.clear()" resolve="clear" />
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
                  <ref role="37wK5l" to="33ny:~Collection.size()" resolve="size" />
                </node>
              </node>
              <node concept="3cpWs3" id="7Oc59RSJuJa" role="3uHU7B">
                <node concept="2OqwBi" id="7Oc59RSJssQ" role="3uHU7B">
                  <node concept="1rXfSq" id="7Oc59RSJs9F" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSJuyR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
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
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
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
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
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
                    <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
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
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableCollection(java.util.Collection)" resolve="unmodifiableCollection" />
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
                    <ref role="37wK5l" to="33ny:~StringJoiner.add(java.lang.CharSequence)" resolve="add" />
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
                <ref role="37wK5l" to="33ny:~StringJoiner.toString()" resolve="toString" />
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
                        <ref role="37wK5l" to="wyt6:~Throwable.toString()" resolve="toString" />
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
  <node concept="312cEu" id="6fdr4UgftiG">
    <property role="TrG5h" value="RuleTemplateIndex" />
    <node concept="2tJIrI" id="20Ay2VeQfgH" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPIPE$" role="jymVt">
      <property role="TrG5h" value="withManifests" />
      <node concept="37vLTG" id="7P_FdVPISMR" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="7P_FdVPISMS" role="1tU5fm">
          <node concept="3uibUv" id="7P_FdVPISMT" role="A3Ik2">
            <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7P_FdVPISEg" role="3clF45">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
      <node concept="3Tm1VV" id="7P_FdVPIPEB" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPIPEC" role="3clF47">
        <node concept="3cpWs8" id="7P_FdVPITOd" role="3cqZAp">
          <node concept="3cpWsn" id="7P_FdVPITOe" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="3uibUv" id="7P_FdVPITOc" role="1tU5fm">
              <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
            </node>
            <node concept="2ShNRf" id="7P_FdVPITOf" role="33vP2m">
              <node concept="1pGfFk" id="7P_FdVPITOg" role="2ShVmc">
                <ref role="37wK5l" node="7P_FdVPIH2n" resolve="RuleTemplateIndex" />
                <node concept="37vLTw" id="7WKNeR94iqD" role="37wK5m">
                  <ref role="3cqZAo" node="7P_FdVPISMR" resolve="manifests" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7P_FdVPITWo" role="3cqZAp">
          <node concept="37vLTw" id="7P_FdVPITWm" role="3clFbG">
            <ref role="3cqZAo" node="7P_FdVPITOe" resolve="index" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7P_FdVPIUAE" role="lGtFl">
        <node concept="TZ5HA" id="7P_FdVPIUDa" role="TZ5H$">
          <node concept="1dT_AC" id="7P_FdVPIUDb" role="1dT_Ay">
            <property role="1dT_AB" value="The list of manifests must be sorted in the topological order." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPIMz3" role="jymVt" />
    <node concept="3clFbW" id="7P_FdVPIH2n" role="jymVt">
      <node concept="37vLTG" id="7WKNeR94ikN" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="7WKNeR94ikO" role="1tU5fm">
          <node concept="3uibUv" id="7WKNeR94ikP" role="A3Ik2">
            <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7P_FdVPIH2p" role="3clF45" />
      <node concept="3Tm1VV" id="7WKNeR94iu3" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPIH2r" role="3clF47">
        <node concept="3clFbF" id="7WKNeR96aA4" role="3cqZAp">
          <node concept="1rXfSq" id="7WKNeR96aA3" role="3clFbG">
            <ref role="37wK5l" node="7DvO2Mandqg" resolve="initWithManifests" />
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
      <node concept="A3Dl8" id="6fdr4UgfxqC" role="3clF45">
        <node concept="3uibUv" id="1ffsG7c4ezn" role="A3Ik2">
          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
          <node concept="3qUE_q" id="7XdbJdyRKIf" role="11_B2D">
            <node concept="3uibUv" id="7XdbJdyRMGp" role="3qUE_r">
              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6fdr4UgfuGn" role="1B3o_S" />
      <node concept="3clFbS" id="6fdr4UgfuGo" role="3clF47">
        <node concept="3cpWs8" id="12yN8DyvAUh" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8DyvAUk" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="12yN8DyvAUd" role="1tU5fm">
              <node concept="3uibUv" id="6tPOoeTaEit" role="_ZDj9">
                <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                <node concept="3qUE_q" id="6tPOoeTaEiu" role="11_B2D">
                  <node concept="3uibUv" id="6tPOoeTaEiv" role="3qUE_r">
                    <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="12yN8DyvD8g" role="33vP2m">
              <node concept="Tc6Ow" id="12yN8DyvD72" role="2ShVmc">
                <node concept="3uibUv" id="6tPOoeTaGDL" role="HW$YZ">
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                  <node concept="3qUE_q" id="6tPOoeTaGDM" role="11_B2D">
                    <node concept="3uibUv" id="6tPOoeTaGDN" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                    </node>
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
          <node concept="1PaTwC" id="589APehYxO0" role="3ndbpf">
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
          <node concept="1PaTwC" id="589APehYxOc" role="3ndbpf">
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
                        <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                        <node concept="3qUE_q" id="7XdbJdyRSmR" role="11_B2D">
                          <node concept="3uibUv" id="7XdbJdyRSmS" role="3qUE_r">
                            <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                          </node>
                        </node>
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
                        <node concept="3clFbF" id="7XdbJdyJJ2a" role="3cqZAp">
                          <node concept="2OqwBi" id="7XdbJdyJJ2b" role="3clFbG">
                            <node concept="37vLTw" id="7XdbJdyJJ2c" role="2Oq$k0">
                              <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="7XdbJdyJJ2d" role="2OqNvi">
                              <node concept="37vLTw" id="7XdbJdyJN8d" role="25WWJ7">
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
                      <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                      <node concept="3qUE_q" id="6tPOoeTaJl9" role="11_B2D">
                        <node concept="3uibUv" id="6tPOoeTaJla" role="3qUE_r">
                          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                        </node>
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
        <node concept="3clFbH" id="tIwzd1KAYA" role="3cqZAp" />
        <node concept="3cpWs6" id="12yN8DyDYJd" role="3cqZAp">
          <node concept="37vLTw" id="12yN8DyDYJe" role="3cqZAk">
            <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
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
          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
          <node concept="3qUE_q" id="7XdbJdyRWsw" role="11_B2D">
            <node concept="3uibUv" id="7XdbJdyRWsx" role="3qUE_r">
              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
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
                <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                <node concept="3qUE_q" id="6tPOoeTaMFa" role="11_B2D">
                  <node concept="3uibUv" id="6tPOoeTaMFb" role="3qUE_r">
                    <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5NuEpF1qn9J" role="33vP2m">
              <node concept="Tc6Ow" id="5NuEpF1qn9K" role="2ShVmc">
                <node concept="3uibUv" id="6tPOoeTaOFc" role="HW$YZ">
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                  <node concept="3qUE_q" id="6tPOoeTaOFd" role="11_B2D">
                    <node concept="3uibUv" id="6tPOoeTaOFe" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
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
                    <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                    <node concept="3qUE_q" id="6tPOoeTaQxn" role="11_B2D">
                      <node concept="3uibUv" id="6tPOoeTaQxo" role="3qUE_r">
                        <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
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
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                  <node concept="3qUE_q" id="6tPOoeTaR5q" role="11_B2D">
                    <node concept="3uibUv" id="6tPOoeTaR5r" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
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
      <property role="TrG5h" value="initWithManifests" />
      <node concept="37vLTG" id="7P_FdVPGxfv" role="3clF46">
        <property role="TrG5h" value="ruleTemplateManifests" />
        <node concept="A3Dl8" id="7P_FdVPGxfw" role="1tU5fm">
          <node concept="3uibUv" id="7P_FdVPGxfx" role="A3Ik2">
            <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
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
                        <node concept="2OqwBi" id="7WKNeR97qwC" role="2Oq$k0">
                          <node concept="2OqwBi" id="7P_FdVPPsJB" role="2Oq$k0">
                            <node concept="37vLTw" id="7P_FdVPPs$d" role="2Oq$k0">
                              <ref role="3cqZAo" node="7P_FdVPIjy4" resolve="it" />
                            </node>
                            <node concept="liA8E" id="7P_FdVPPsZB" role="2OqNvi">
                              <ref role="37wK5l" to="i348:4MqhgXUaiLz" resolve="rulesListTemplates" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="7WKNeR97rb9" role="2OqNvi">
                            <node concept="1bVj0M" id="7WKNeR97rbb" role="23t8la">
                              <node concept="3clFbS" id="7WKNeR97rbc" role="1bW5cS">
                                <node concept="3clFbF" id="7WKNeR97rsO" role="3cqZAp">
                                  <node concept="1rXfSq" id="7WKNeR97rsN" role="3clFbG">
                                    <ref role="37wK5l" node="7WKNeR96Yfw" resolve="acceptRulesListTemplate" />
                                    <node concept="37vLTw" id="7WKNeR97rDp" role="37wK5m">
                                      <ref role="3cqZAo" node="7WKNeR97rbd" resolve="ht" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7WKNeR97rbd" role="1bW2Oz">
                                <property role="TrG5h" value="ht" />
                                <node concept="2jxLKc" id="7WKNeR97rbe" role="1tU5fm" />
                              </node>
                            </node>
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
        <property role="TrG5h" value="handlingTemplates" />
        <node concept="A3Dl8" id="7P_FdVPHCUR" role="1tU5fm">
          <node concept="3uibUv" id="6tPOoeT9Wkd" role="A3Ik2">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
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
              <ref role="3cqZAo" node="7P_FdVPHmOS" resolve="handlingTemplates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR96Vd3" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR96Yfw" role="jymVt">
      <property role="TrG5h" value="acceptRulesListTemplate" />
      <node concept="37vLTG" id="7WKNeR97mL3" role="3clF46">
        <property role="TrG5h" value="ht" />
        <node concept="3uibUv" id="7WKNeR97pBy" role="1tU5fm">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
        </node>
      </node>
      <node concept="10P_77" id="7WKNeR973YE" role="3clF45" />
      <node concept="3Tmbuc" id="7WKNeR9712B" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR96Yf$" role="3clF47">
        <node concept="3clFbF" id="7WKNeR97pSu" role="3cqZAp">
          <node concept="3clFbT" id="7WKNeR97pSt" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2Manhxe" role="jymVt" />
    <node concept="3clFb_" id="12yN8Dyvyy6" role="jymVt">
      <property role="TrG5h" value="collectTemplates" />
      <node concept="37vLTG" id="6tPOoeTa2e3" role="3clF46">
        <property role="TrG5h" value="handlerTemplates" />
        <node concept="A3Dl8" id="6tPOoeTa566" role="1tU5fm">
          <node concept="3uibUv" id="6tPOoeTa5$s" role="A3Ik2">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8Dyvyy8" role="3clF45" />
      <node concept="3Tmbuc" id="7WKNeR94aeI" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8Dyvyya" role="3clF47">
        <node concept="3SKdUt" id="12yN8DyFw_S" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxOi" role="3ndbpf">
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
                  <ref role="3cqZAo" node="4MqhgXUaOdv" resolve="htpl" />
                </node>
                <node concept="3EllGN" id="7P_FdVQpy2T" role="37vLTJ">
                  <node concept="2OqwBi" id="7P_FdVQpykU" role="3ElVtu">
                    <node concept="37vLTw" id="7P_FdVQpy8u" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUaOdv" resolve="htpl" />
                    </node>
                    <node concept="liA8E" id="7P_FdVQpyOQ" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7P_FdVQoZmr" resolve="fqName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7P_FdVQpx7e" role="3ElQJh">
                    <ref role="3cqZAo" node="7P_FdVQplXd" resolve="fqName2handlerTemplate" />
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
                    <property role="TrG5h" value="stageTemplate" />
                    <node concept="3vKaQO" id="4MqhgXUaPfW" role="1tU5fm">
                      <node concept="3uibUv" id="7XdbJdySsFg" role="3O5elw">
                        <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                        <node concept="3qUE_q" id="7XdbJdySsFh" role="11_B2D">
                          <node concept="3uibUv" id="7XdbJdySsFi" role="3qUE_r">
                            <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                          </node>
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
                                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                                  <node concept="3qUE_q" id="6tPOoeTaAON" role="11_B2D">
                                    <node concept="3uibUv" id="6tPOoeTaAOO" role="3qUE_r">
                                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                                    </node>
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
                            <ref role="3cqZAo" node="12yN8DyvDfi" resolve="concept2ruleTemplates" />
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
                <node concept="3SKdUt" id="3IIf9OAyhIq" role="3cqZAp">
                  <node concept="1PaTwC" id="589APehYxOm" role="3ndbpf">
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
                      <ref role="3cqZAo" node="4MqhgXUaPfV" resolve="stageTemplate" />
                    </node>
                    <node concept="TSZUe" id="4MqhgXUaPgo" role="2OqNvi">
                      <node concept="1eOMI4" id="3IIf9OAyh5v" role="25WWJ7">
                        <node concept="10QFUN" id="3IIf9OAyh5w" role="1eOMHV">
                          <node concept="37vLTw" id="3IIf9OAyh5u" role="10QFUP">
                            <ref role="3cqZAo" node="4MqhgXUaONz" resolve="ruleTemplate" />
                          </node>
                          <node concept="3uibUv" id="3IIf9OAyhfn" role="10QFUM">
                            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                            <node concept="3qUE_q" id="3IIf9OAyXlP" role="11_B2D">
                              <node concept="3uibUv" id="3IIf9OAyXlQ" role="3qUE_r">
                                <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUaONz" role="1Duv9x">
                <property role="TrG5h" value="ruleTemplate" />
                <node concept="3uibUv" id="7XdbJdySBO1" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  <node concept="3qUE_q" id="7XdbJdySBO2" role="11_B2D">
                    <node concept="3uibUv" id="7XdbJdySBO3" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXUaONC" role="1DdaDG">
                <node concept="37vLTw" id="4MqhgXUaOND" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUaOdv" resolve="htpl" />
                </node>
                <node concept="liA8E" id="4MqhgXUaONE" role="2OqNvi">
                  <ref role="37wK5l" to="i348:4MqhgXUaiON" resolve="ruleTemplates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUaOdv" role="1Duv9x">
            <property role="TrG5h" value="htpl" />
            <node concept="3uibUv" id="4MqhgXUaOdz" role="1tU5fm">
              <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
            </node>
          </node>
          <node concept="37vLTw" id="6tPOoeTa7ji" role="1DdaDG">
            <ref role="3cqZAo" node="6tPOoeTa2e3" resolve="handlerTemplates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPP0yl" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVPsPOY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="handlingStages" />
      <node concept="37vLTG" id="7P_FdVPPiuI" role="3clF46">
        <property role="TrG5h" value="handlerTemplates" />
        <node concept="A3Dl8" id="7WKNeR94L24" role="1tU5fm">
          <node concept="3uibUv" id="7WKNeR94L26" role="A3Ik2">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7P_FdVPsPOZ" role="3clF45">
        <node concept="3uibUv" id="6tPOoeT9Sxd" role="_ZDj9">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
        </node>
      </node>
      <node concept="3Tmbuc" id="7WKNeR9475y" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPsPP3" role="3clF47">
        <node concept="3cpWs8" id="6tPOoeT9Rh$" role="3cqZAp">
          <node concept="3cpWsn" id="6tPOoeT9Rh_" role="3cpWs9">
            <property role="TrG5h" value="tpls" />
            <node concept="_YKpA" id="6tPOoeT9Rhs" role="1tU5fm">
              <node concept="3uibUv" id="6tPOoeT9Rhv" role="_ZDj9">
                <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
              </node>
            </node>
            <node concept="2ShNRf" id="6tPOoeT9RhA" role="33vP2m">
              <node concept="Tc6Ow" id="6tPOoeT9RhB" role="2ShVmc">
                <node concept="3uibUv" id="6tPOoeT9RhC" role="HW$YZ">
                  <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
                </node>
                <node concept="37vLTw" id="6tPOoeT9Sef" role="I$8f6">
                  <ref role="3cqZAo" node="7P_FdVPPiuI" resolve="handlerTemplates" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tPOoeT9STY" role="3cqZAp">
          <node concept="37vLTw" id="6tPOoeT9STW" role="3clFbG">
            <ref role="3cqZAo" node="6tPOoeT9Rh_" resolve="tpls" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQmEG$" role="jymVt" />
    <node concept="312cEg" id="12yN8DyvDfi" role="jymVt">
      <property role="TrG5h" value="concept2ruleTemplates" />
      <node concept="3Tm6S6" id="12yN8DyvDfj" role="1B3o_S" />
      <node concept="3rvAFt" id="12yN8Dyw7uY" role="1tU5fm">
        <node concept="3bZ5Sz" id="YGS68MZPLr" role="3rvQeY" />
        <node concept="3vKaQO" id="12yN8DyDzne" role="3rvSg0">
          <node concept="3uibUv" id="7XdbJdyRSXd" role="3O5elw">
            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
            <node concept="3qUE_q" id="7XdbJdyRSXe" role="11_B2D">
              <node concept="3uibUv" id="7XdbJdyRSXf" role="3qUE_r">
                <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="429xoypKEom" role="33vP2m">
        <node concept="3rGOSV" id="429xoypKEon" role="2ShVmc">
          <node concept="3bZ5Sz" id="YGS68MZQMl" role="3rHrn6" />
          <node concept="3vKaQO" id="429xoypKEop" role="3rHtpV">
            <node concept="3uibUv" id="6tPOoeTa_2l" role="3O5elw">
              <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
              <node concept="3qUE_q" id="6tPOoeTa_2m" role="11_B2D">
                <node concept="3uibUv" id="6tPOoeTa_2n" role="3qUE_r">
                  <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPGY2g" role="jymVt" />
    <node concept="312cEg" id="7P_FdVQplXd" role="jymVt">
      <property role="TrG5h" value="fqName2handlerTemplate" />
      <node concept="3Tm6S6" id="7P_FdVQplXe" role="1B3o_S" />
      <node concept="3rvAFt" id="7P_FdVQpvfA" role="1tU5fm">
        <node concept="17QB3L" id="7P_FdVQpvhe" role="3rvQeY" />
        <node concept="3uibUv" id="7P_FdVQpviN" role="3rvSg0">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
        </node>
      </node>
      <node concept="2ShNRf" id="7P_FdVQpvy1" role="33vP2m">
        <node concept="3rGOSV" id="7P_FdVQpvww" role="2ShVmc">
          <node concept="17QB3L" id="7P_FdVQpvwx" role="3rHrn6" />
          <node concept="3uibUv" id="7P_FdVQpvwy" role="3rHtpV">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQpiDB" role="jymVt" />
    <node concept="3Tm1VV" id="6fdr4UgftiH" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4OKkcnfu_xo">
    <property role="TrG5h" value="AnchorUtil" />
    <node concept="2tJIrI" id="428_4iYLvU4" role="jymVt" />
    <node concept="Wx3nA" id="6kEuCh$$DfF" role="jymVt">
      <property role="TrG5h" value="ID" />
      <node concept="3Tm1VV" id="6kEuCh$$DfG" role="1B3o_S" />
      <node concept="17QB3L" id="6kEuCh$$DfH" role="1tU5fm" />
      <node concept="Xl_RD" id="6kEuCh$$DfI" role="33vP2m">
        <property role="Xl_RC" value="id" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfu_xp" role="jymVt" />
    <node concept="2YIFZL" id="_04VjSrAA8" role="jymVt">
      <property role="TrG5h" value="extractReference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4pWvZ2njjN7" role="3clF47">
        <node concept="3cpWs8" id="_04VjSsBtE" role="3cqZAp">
          <node concept="3cpWsn" id="_04VjSsBtF" role="3cpWs9">
            <property role="TrG5h" value="findValue" />
            <node concept="3uibUv" id="_04VjSsBt_" role="1tU5fm">
              <ref role="3uigEE" to="6exd:3JgCwkqkUKX" resolve="Finders.IValueFinder" />
              <node concept="3uibUv" id="kTK1BfIv71" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
            </node>
            <node concept="2YIFZM" id="_04VjSsBtG" role="33vP2m">
              <ref role="37wK5l" to="6exd:3JgCwkqd8va" resolve="findValue" />
              <ref role="1Pybhc" to="6exd:3JgCwkqd3K7" resolve="Finders" />
              <node concept="37vLTw" id="_04VjSsBtH" role="37wK5m">
                <ref role="3cqZAo" node="4pWvZ2njjOw" resolve="anchor" />
              </node>
              <node concept="37vLTw" id="428_4iYLvD7" role="37wK5m">
                <ref role="3cqZAo" node="6kEuCh$$DfF" resolve="ID" />
              </node>
              <node concept="3uibUv" id="kTK1BfIuX9" role="3PaCim">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="_04VjSsBCB" role="3cqZAp">
          <node concept="3clFbS" id="_04VjSsBCD" role="3clFbx">
            <node concept="3cpWs6" id="kTK1BfItOB" role="3cqZAp">
              <node concept="2OqwBi" id="kTK1BfIukN" role="3cqZAk">
                <node concept="37vLTw" id="kTK1BfIukO" role="2Oq$k0">
                  <ref role="3cqZAo" node="_04VjSsBtF" resolve="findValue" />
                </node>
                <node concept="liA8E" id="kTK1BfIukP" role="2OqNvi">
                  <ref role="37wK5l" to="6exd:3JgCwkqkUL2" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="_04VjSsBWb" role="3clFbw">
            <node concept="37vLTw" id="_04VjSsBIB" role="2Oq$k0">
              <ref role="3cqZAo" node="_04VjSsBtF" resolve="findValue" />
            </node>
            <node concept="liA8E" id="_04VjSsCj7" role="2OqNvi">
              <ref role="37wK5l" to="6exd:3JgCwkqkUKY" resolve="found" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="_04VjSsD6O" role="3cqZAp">
          <node concept="10Nm6u" id="_04VjSsDcf" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4pWvZ2njjOw" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="4pWvZ2njjOx" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
        </node>
      </node>
      <node concept="3uibUv" id="HV6urVDcLx" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="HV6urVDbvo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6_UQWSXaUpR" role="jymVt" />
    <node concept="3Tm1VV" id="4OKkcnfu_ze" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1hX44vNlSIA">
    <property role="TrG5h" value="MacroTemplateIndex" />
    <node concept="2tJIrI" id="7DvO2Man0TP" role="jymVt" />
    <node concept="3clFbW" id="1hX44vNlSOK" role="jymVt">
      <node concept="3cqZAl" id="1hX44vNlSOM" role="3clF45" />
      <node concept="3Tmbuc" id="7DvO2MamUIO" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vNlSOO" role="3clF47">
        <node concept="3clFbF" id="1hX44vNniCn" role="3cqZAp">
          <node concept="37vLTI" id="1hX44vNniCp" role="3clFbG">
            <node concept="2OqwBi" id="1hX44vNniCt" role="37vLTJ">
              <node concept="Xjq3P" id="1hX44vNniCw" role="2Oq$k0" />
              <node concept="2OwXpG" id="1hX44vNniCs" role="2OqNvi">
                <ref role="2Oxat5" node="1hX44vNniCj" resolve="macroManifests" />
              </node>
            </node>
            <node concept="2ShNRf" id="7DvO2MamVt1" role="37vLTx">
              <node concept="Tc6Ow" id="7DvO2MamVs$" role="2ShVmc">
                <node concept="3uibUv" id="7DvO2MamVs_" role="HW$YZ">
                  <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
                </node>
                <node concept="37vLTw" id="7DvO2MamWbg" role="I$8f6">
                  <ref role="3cqZAo" node="7DvO2MamV5v" resolve="macroManifests" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Y70AYEegr_" role="3cqZAp">
          <node concept="37vLTI" id="2Y70AYEegrB" role="3clFbG">
            <node concept="2OqwBi" id="2Y70AYEegQP" role="37vLTJ">
              <node concept="Xjq3P" id="2Y70AYEegRq" role="2Oq$k0" />
              <node concept="2OwXpG" id="2Y70AYEegQS" role="2OqNvi">
                <ref role="2Oxat5" node="2Y70AYEegrx" resolve="messageHandler" />
              </node>
            </node>
            <node concept="37vLTw" id="2Y70AYEegrF" role="37vLTx">
              <ref role="3cqZAo" node="2Y70AYEegeI" resolve="messageHandler" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1hX44vNnpfY" role="3cqZAp">
          <node concept="1rXfSq" id="1hX44vNnpfX" role="3clFbG">
            <ref role="37wK5l" node="1hX44vNnpfT" resolve="collectMacroTables" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7DvO2MamV2l" role="lGtFl">
        <node concept="TZ5HA" id="7DvO2MamV2m" role="TZ5H$">
          <node concept="1dT_AC" id="7DvO2MamV2n" role="1dT_Ay">
            <property role="1dT_AB" value="The list of manifests must be sortedin the topological order." />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2MamV5v" role="3clF46">
        <property role="TrG5h" value="macroManifests" />
        <node concept="A3Dl8" id="7DvO2MamV5t" role="1tU5fm">
          <node concept="3uibUv" id="7DvO2MamV75" role="A3Ik2">
            <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Y70AYEegeI" role="3clF46">
        <property role="TrG5h" value="messageHandler" />
        <node concept="3uibUv" id="2Y70AYEegq6" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4JJCDIn5EFu" role="jymVt" />
    <node concept="3clFb_" id="4JJCDIn5F0n" role="jymVt">
      <property role="TrG5h" value="macroTables" />
      <node concept="3vKaQO" id="4JJCDIn5Foj" role="3clF45">
        <node concept="3uibUv" id="4JJCDIn5FCm" role="3O5elw">
          <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractMacroTable" />
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
    <node concept="2tJIrI" id="1hX44vNlSO3" role="jymVt" />
    <node concept="3clFb_" id="4nxCIBqy$vr" role="jymVt">
      <property role="TrG5h" value="macroTemplate" />
      <node concept="37vLTG" id="4nxCIBqyARP" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="4nxCIBqyBgc" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4nxCIBqy_HE" role="3clF45">
        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
        <node concept="16syzq" id="1eKXYsjIcB2" role="11_B2D">
          <ref role="16sUi3" node="1eKXYsjIb$d" resolve="Cfg" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4nxCIBqy$vu" role="1B3o_S" />
      <node concept="3clFbS" id="4nxCIBqy$vv" role="3clF47">
        <node concept="2Gpval" id="6UWSvq5a0yX" role="3cqZAp">
          <node concept="3clFbS" id="6UWSvq5a00Q" role="2LFqv$">
            <node concept="3cpWs8" id="6UWSvq5a3OB" role="3cqZAp">
              <node concept="3cpWsn" id="6UWSvq5a3OC" role="3cpWs9">
                <property role="TrG5h" value="macroTemplate" />
                <node concept="3uibUv" id="6UWSvq5a3On" role="1tU5fm">
                  <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
                  <node concept="16syzq" id="6UWSvq5a3Oq" role="11_B2D">
                    <ref role="16sUi3" node="1eKXYsjIb$d" resolve="Cfg" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6UWSvq5a3OD" role="33vP2m">
                  <node concept="2GrUjf" id="6UWSvq5a3OE" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6UWSvq5a0zl" resolve="macroTable" />
                  </node>
                  <node concept="liA8E" id="6UWSvq5a3OF" role="2OqNvi">
                    <ref role="37wK5l" to="psr6:4KRwoelAtxl" resolve="macroTemplate" />
                    <node concept="37vLTw" id="6UWSvq5a3OG" role="37wK5m">
                      <ref role="3cqZAo" node="4nxCIBqyARP" resolve="concept" />
                    </node>
                    <node concept="16syzq" id="6UWSvq5a3OH" role="3PaCim">
                      <ref role="16sUi3" node="1eKXYsjIb$d" resolve="Cfg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6UWSvq5a1iY" role="3cqZAp">
              <node concept="3y3z36" id="6UWSvq5a4w2" role="3clFbw">
                <node concept="10Nm6u" id="6UWSvq5a4EQ" role="3uHU7w" />
                <node concept="37vLTw" id="6UWSvq5a3OI" role="3uHU7B">
                  <ref role="3cqZAo" node="6UWSvq5a3OC" resolve="macroTemplate" />
                </node>
              </node>
              <node concept="3clFbS" id="6UWSvq5a1j0" role="3clFbx">
                <node concept="3cpWs6" id="6UWSvq5a4FK" role="3cqZAp">
                  <node concept="37vLTw" id="6UWSvq5at_n" role="3cqZAk">
                    <ref role="3cqZAo" node="6UWSvq5a3OC" resolve="macroTemplate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6UWSvq5a00W" role="2GsD0m">
            <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
          </node>
          <node concept="2GrKxI" id="6UWSvq5a0zl" role="2Gsz3X">
            <property role="TrG5h" value="macroTable" />
          </node>
        </node>
        <node concept="3SKdUt" id="2Y70AYEelAT" role="3cqZAp">
          <node concept="1PaTwC" id="2Y70AYEelAU" role="3ndbpf">
            <node concept="3oM_SD" id="2Y70AYEelAV" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEelAW" role="1PaTwD">
              <property role="3oM_SC" value="assert" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEelAX" role="1PaTwD">
              <property role="3oM_SC" value="messageHandler" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEelAY" role="1PaTwD">
              <property role="3oM_SC" value="!=" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEelAZ" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Y70AYEelB0" role="3cqZAp">
          <node concept="3clFbS" id="2Y70AYEelB1" role="3clFbx">
            <node concept="3clFbF" id="2Y70AYEelB2" role="3cqZAp">
              <node concept="2OqwBi" id="2Y70AYEelB3" role="3clFbG">
                <node concept="37vLTw" id="2Y70AYEelB4" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Y70AYEegrx" resolve="messageHandler" />
                </node>
                <node concept="liA8E" id="2Y70AYEelB5" role="2OqNvi">
                  <ref role="37wK5l" to="et5u:~IMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                  <node concept="2YIFZM" id="2Y70AYEelB6" role="37wK5m">
                    <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String)" resolve="createMessage" />
                    <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                    <node concept="Rm8GO" id="2Y70AYEelB7" role="37wK5m">
                      <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                      <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                    </node>
                    <node concept="2OqwBi" id="2Y70AYEelB8" role="37wK5m">
                      <node concept="3VsKOn" id="2Y70AYEelB9" role="2Oq$k0">
                        <ref role="3VsUkX" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
                      </node>
                      <node concept="liA8E" id="2Y70AYEelBa" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="2Y70AYEemPN" role="37wK5m">
                      <node concept="3cpWs3" id="2Y70AYEemPO" role="3uHU7B">
                        <node concept="Xl_RD" id="2Y70AYEemPP" role="3uHU7B">
                          <property role="Xl_RC" value="no macro template for concept \&quot;" />
                        </node>
                        <node concept="37vLTw" id="2Y70AYEemPQ" role="3uHU7w">
                          <ref role="3cqZAo" node="4nxCIBqyARP" resolve="concept" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2Y70AYEemPR" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot;" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2Y70AYEelBg" role="3cqZAp">
              <node concept="10Nm6u" id="2Y70AYEelBh" role="3cqZAk" />
            </node>
            <node concept="3clFbH" id="2Y70AYEelBi" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="2Y70AYEelBj" role="3clFbw">
            <node concept="10Nm6u" id="2Y70AYEelBk" role="3uHU7w" />
            <node concept="37vLTw" id="2Y70AYEelBl" role="3uHU7B">
              <ref role="3cqZAo" node="2Y70AYEegrx" resolve="messageHandler" />
            </node>
          </node>
          <node concept="9aQIb" id="2Y70AYEelBm" role="9aQIa">
            <node concept="3clFbS" id="2Y70AYEelBn" role="9aQI4">
              <node concept="YS8fn" id="6UWSvq5a4Ig" role="3cqZAp">
                <node concept="2ShNRf" id="6UWSvq5a5d0" role="YScLw">
                  <node concept="1pGfFk" id="6UWSvq5a5Ir" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="3cpWs3" id="6UWSvq5a7lN" role="37wK5m">
                      <node concept="3cpWs3" id="6UWSvq5a6TJ" role="3uHU7B">
                        <node concept="Xl_RD" id="6UWSvq5a5OB" role="3uHU7B">
                          <property role="Xl_RC" value="no macro template for concept \&quot;" />
                        </node>
                        <node concept="37vLTw" id="6UWSvq5a6XQ" role="3uHU7w">
                          <ref role="3cqZAo" node="4nxCIBqyARP" resolve="concept" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6UWSvq5a87Q" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot;" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6UWSvq59Y1y" role="3cqZAp" />
      </node>
      <node concept="16euLQ" id="1eKXYsjIb$d" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="1eKXYsjIcrC" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nxCIBqyBjc" role="jymVt" />
    <node concept="3clFb_" id="6UWSvq4Qqe$" role="jymVt">
      <property role="TrG5h" value="macroTemplate" />
      <node concept="37vLTG" id="4MEOIDEhHGm" role="3clF46">
        <property role="TrG5h" value="templateId" />
        <node concept="3uibUv" id="4MEOIDEhHGl" role="1tU5fm">
          <ref role="3uigEE" to="psr6:4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
      </node>
      <node concept="3uibUv" id="6UWSvq4QqeB" role="3clF45">
        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
        <node concept="16syzq" id="6UWSvq4QqeC" role="11_B2D">
          <ref role="16sUi3" node="6UWSvq4QqeP" resolve="Cfg" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6UWSvq4QqeD" role="1B3o_S" />
      <node concept="3clFbS" id="6UWSvq4QqeE" role="3clF47">
        <node concept="2Gpval" id="6UWSvq5a9vj" role="3cqZAp">
          <node concept="3clFbS" id="6UWSvq5a9vk" role="2LFqv$">
            <node concept="3cpWs8" id="6UWSvq5a9vl" role="3cqZAp">
              <node concept="3cpWsn" id="6UWSvq5a9vm" role="3cpWs9">
                <property role="TrG5h" value="macroTemplate" />
                <node concept="3uibUv" id="6UWSvq5a9vn" role="1tU5fm">
                  <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
                  <node concept="16syzq" id="6UWSvq5a9vo" role="11_B2D">
                    <ref role="16sUi3" node="6UWSvq4QqeP" resolve="Cfg" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6UWSvq5a9vp" role="33vP2m">
                  <node concept="2GrUjf" id="6UWSvq5a9vq" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6UWSvq5a9vA" resolve="macroTable" />
                  </node>
                  <node concept="liA8E" id="6UWSvq5a9vr" role="2OqNvi">
                    <ref role="37wK5l" to="psr6:4MEOIDEgpuf" resolve="macroTemplate" />
                    <node concept="37vLTw" id="6UWSvq5aasz" role="37wK5m">
                      <ref role="3cqZAo" node="4MEOIDEhHGm" resolve="templateId" />
                    </node>
                    <node concept="16syzq" id="6UWSvq5a9vt" role="3PaCim">
                      <ref role="16sUi3" node="6UWSvq4QqeP" resolve="Cfg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6UWSvq5a9vu" role="3cqZAp">
              <node concept="3y3z36" id="6UWSvq5a9vv" role="3clFbw">
                <node concept="10Nm6u" id="6UWSvq5a9vw" role="3uHU7w" />
                <node concept="37vLTw" id="6UWSvq5a9vx" role="3uHU7B">
                  <ref role="3cqZAo" node="6UWSvq5a9vm" resolve="macroTemplate" />
                </node>
              </node>
              <node concept="3clFbS" id="6UWSvq5a9vy" role="3clFbx">
                <node concept="3cpWs6" id="6UWSvq5a9vz" role="3cqZAp">
                  <node concept="37vLTw" id="6UWSvq5auEi" role="3cqZAk">
                    <ref role="3cqZAo" node="6UWSvq5a9vm" resolve="macroTemplate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6UWSvq5a9v_" role="2GsD0m">
            <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
          </node>
          <node concept="2GrKxI" id="6UWSvq5a9vA" role="2Gsz3X">
            <property role="TrG5h" value="macroTable" />
          </node>
        </node>
        <node concept="3SKdUt" id="2Y70AYEeljo" role="3cqZAp">
          <node concept="1PaTwC" id="2Y70AYEeljp" role="3ndbpf">
            <node concept="3oM_SD" id="2Y70AYEeljr" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEel$$" role="1PaTwD">
              <property role="3oM_SC" value="assert" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEel$R" role="1PaTwD">
              <property role="3oM_SC" value="messageHandler" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEel_Y" role="1PaTwD">
              <property role="3oM_SC" value="!=" />
            </node>
            <node concept="3oM_SD" id="2Y70AYEelAz" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Y70AYEegYv" role="3cqZAp">
          <node concept="3clFbS" id="2Y70AYEegYx" role="3clFbx">
            <node concept="3clFbF" id="2Y70AYEehEv" role="3cqZAp">
              <node concept="2OqwBi" id="2Y70AYEehGn" role="3clFbG">
                <node concept="37vLTw" id="2Y70AYEehEt" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Y70AYEegrx" resolve="messageHandler" />
                </node>
                <node concept="liA8E" id="2Y70AYEehNl" role="2OqNvi">
                  <ref role="37wK5l" to="et5u:~IMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                  <node concept="2YIFZM" id="2Y70AYEehR8" role="37wK5m">
                    <ref role="37wK5l" to="et5u:~Message.createMessage(jetbrains.mps.messages.MessageKind,java.lang.String,java.lang.String)" resolve="createMessage" />
                    <ref role="1Pybhc" to="et5u:~Message" resolve="Message" />
                    <node concept="Rm8GO" id="2Y70AYEehVC" role="37wK5m">
                      <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                      <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                    </node>
                    <node concept="2OqwBi" id="2Y70AYEeiAy" role="37wK5m">
                      <node concept="3VsKOn" id="2Y70AYEei6U" role="2Oq$k0">
                        <ref role="3VsUkX" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
                      </node>
                      <node concept="liA8E" id="2Y70AYEej54" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="2Y70AYEejfE" role="37wK5m">
                      <node concept="3cpWs3" id="2Y70AYEejfF" role="3uHU7B">
                        <node concept="Xl_RD" id="2Y70AYEejfG" role="3uHU7B">
                          <property role="Xl_RC" value="no macro template  \&quot;" />
                        </node>
                        <node concept="37vLTw" id="2Y70AYEejfH" role="3uHU7w">
                          <ref role="3cqZAo" node="4MEOIDEhHGm" resolve="templateId" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2Y70AYEejfI" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot;" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2Y70AYEekrv" role="3cqZAp">
              <node concept="10Nm6u" id="2Y70AYEek_5" role="3cqZAk" />
            </node>
            <node concept="3clFbH" id="2Y70AYEel2S" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="2Y70AYEeh$p" role="3clFbw">
            <node concept="10Nm6u" id="2Y70AYEehD9" role="3uHU7w" />
            <node concept="37vLTw" id="2Y70AYEehrz" role="3uHU7B">
              <ref role="3cqZAo" node="2Y70AYEegrx" resolve="messageHandler" />
            </node>
          </node>
          <node concept="9aQIb" id="2Y70AYEejwr" role="9aQIa">
            <node concept="3clFbS" id="2Y70AYEejws" role="9aQI4">
              <node concept="YS8fn" id="6UWSvq5a9vC" role="3cqZAp">
                <node concept="2ShNRf" id="6UWSvq5a9vD" role="YScLw">
                  <node concept="1pGfFk" id="6UWSvq5a9vE" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="3cpWs3" id="6UWSvq5a9vF" role="37wK5m">
                      <node concept="3cpWs3" id="6UWSvq5a9vG" role="3uHU7B">
                        <node concept="Xl_RD" id="6UWSvq5a9vH" role="3uHU7B">
                          <property role="Xl_RC" value="no macro template  \&quot;" />
                        </node>
                        <node concept="37vLTw" id="6UWSvq5adtU" role="3uHU7w">
                          <ref role="3cqZAo" node="4MEOIDEhHGm" resolve="templateId" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6UWSvq5a9vJ" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot;" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6UWSvq4QqeP" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="6UWSvq4QqeQ" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6UWSvq4Qqez" role="jymVt" />
    <node concept="3clFb_" id="1hX44vNnpfT" role="jymVt">
      <property role="TrG5h" value="collectMacroTables" />
      <node concept="3Tm6S6" id="1hX44vNnpfU" role="1B3o_S" />
      <node concept="3cqZAl" id="1hX44vNnpfV" role="3clF45" />
      <node concept="3clFbS" id="1hX44vNnpfH" role="3clF47">
        <node concept="2Gpval" id="7DvO2MamWSI" role="3cqZAp">
          <node concept="2GrKxI" id="7DvO2MamWSO" role="2Gsz3X">
            <property role="TrG5h" value="macroManifest" />
          </node>
          <node concept="37vLTw" id="7DvO2MamXRd" role="2GsD0m">
            <ref role="3cqZAo" node="1hX44vNniCj" resolve="macroManifests" />
          </node>
          <node concept="3clFbS" id="7DvO2MamWT0" role="2LFqv$">
            <node concept="3SKdUt" id="1hX44vNnqZn" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxOr" role="3ndbpf">
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
                <node concept="3clFbF" id="6UWSvq4VKUZ" role="3cqZAp">
                  <node concept="2OqwBi" id="6UWSvq4VKV0" role="3clFbG">
                    <node concept="37vLTw" id="6UWSvq4VKV1" role="2Oq$k0">
                      <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
                    </node>
                    <node concept="TSZUe" id="6UWSvq4VKV2" role="2OqNvi">
                      <node concept="2GrUjf" id="6UWSvq4VL4E" role="25WWJ7">
                        <ref role="2Gs0qQ" node="6UWSvq4VKfN" resolve="macroTable" />
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
                  <ref role="37wK5l" to="psr6:6UWSvq4Vu5V" resolve="macroTables" />
                </node>
              </node>
              <node concept="2GrKxI" id="6UWSvq4VKfN" role="2Gsz3X">
                <property role="TrG5h" value="macroTable" />
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
        <node concept="3uibUv" id="4JJCDImRYZI" role="_ZDj9">
          <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractMacroTable" />
        </node>
      </node>
      <node concept="2ShNRf" id="4JJCDImRZ41" role="33vP2m">
        <node concept="Tc6Ow" id="4JJCDImRZ3N" role="2ShVmc">
          <node concept="3uibUv" id="4JJCDImRZ3O" role="HW$YZ">
            <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractMacroTable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1hX44vNlSIB" role="1B3o_S" />
    <node concept="2tJIrI" id="6DOfTm$oUp9" role="jymVt" />
    <node concept="312cEg" id="1hX44vNniCj" role="jymVt">
      <property role="TrG5h" value="macroManifests" />
      <node concept="3Tm6S6" id="1hX44vNniCk" role="1B3o_S" />
      <node concept="_YKpA" id="7DvO2MamVaf" role="1tU5fm">
        <node concept="3uibUv" id="7DvO2MamVag" role="_ZDj9">
          <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2Y70AYEegrx" role="jymVt">
      <property role="TrG5h" value="messageHandler" />
      <node concept="3Tm6S6" id="2Y70AYEegry" role="1B3o_S" />
      <node concept="3uibUv" id="2Y70AYEegr$" role="1tU5fm">
        <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hX44vNnjHa" role="jymVt" />
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
                        <node concept="3clFbF" id="1HWyn8jvsQG" role="3cqZAp">
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
                          <node concept="1PaTwC" id="589APehYxOv" role="3ndbpf">
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
    <node concept="2tJIrI" id="2WtKs4tZeNt" role="jymVt" />
    <node concept="3clFb_" id="2WtKs4tZfgb" role="jymVt">
      <property role="TrG5h" value="programSpec" />
      <node concept="3clFbS" id="2WtKs4tZfge" role="3clF47">
        <node concept="3clFbF" id="2WtKs4tZfSn" role="3cqZAp">
          <node concept="37vLTw" id="2WtKs4tZfSm" role="3clFbG">
            <ref role="3cqZAo" node="2WtKs4tZfH3" resolve="programSpec" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2WtKs4tZf7R" role="1B3o_S" />
      <node concept="3uibUv" id="2WtKs4tZffh" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
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
        <node concept="3cpWs8" id="6UWSvq5d6Ly" role="3cqZAp">
          <node concept="3cpWsn" id="6UWSvq5d6Lz" role="3cpWs9">
            <property role="TrG5h" value="macroManifests" />
            <node concept="_YKpA" id="6UWSvq5d6QU" role="1tU5fm">
              <node concept="3uibUv" id="6UWSvq5d6QW" role="_ZDj9">
                <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
              </node>
            </node>
            <node concept="2ShNRf" id="6UWSvq5d8fo" role="33vP2m">
              <node concept="Tc6Ow" id="6UWSvq5d8dH" role="2ShVmc">
                <node concept="3uibUv" id="6UWSvq5d8dI" role="HW$YZ">
                  <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6UWSvq5d8mc" role="3cqZAp">
          <node concept="3cpWsn" id="6UWSvq5d8md" role="3cpWs9">
            <property role="TrG5h" value="ruleManifests" />
            <node concept="_YKpA" id="6UWSvq5d8vu" role="1tU5fm">
              <node concept="3uibUv" id="6UWSvq5d8vw" role="_ZDj9">
                <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
              </node>
            </node>
            <node concept="2ShNRf" id="6UWSvq5daoJ" role="33vP2m">
              <node concept="Tc6Ow" id="6UWSvq5dan4" role="2ShVmc">
                <node concept="3uibUv" id="6UWSvq5dan5" role="HW$YZ">
                  <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2WtKs4u1jqB" role="3cqZAp">
          <node concept="3cpWsn" id="2WtKs4u1jqC" role="3cpWs9">
            <property role="TrG5h" value="mergedAnalysis" />
            <node concept="3uibUv" id="2WtKs4u1jqD" role="1tU5fm">
              <ref role="3uigEE" to="xnrr:1H_6AUSXnyk" resolve="ProgramAnalysis" />
            </node>
            <node concept="10Nm6u" id="2WtKs4u1jV7" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="2WtKs4tZiYW" role="3cqZAp" />
        <node concept="2Gpval" id="NKt6yoTa7y" role="3cqZAp">
          <node concept="3clFbS" id="6UWSvq5d00n" role="2LFqv$">
            <node concept="3cpWs8" id="7wfdmjRl1_C" role="3cqZAp">
              <node concept="3cpWsn" id="7wfdmjRl1_D" role="3cpWs9">
                <property role="TrG5h" value="macroManifest" />
                <node concept="3uibUv" id="7wfdmjRl1_$" role="1tU5fm">
                  <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
                </node>
                <node concept="2OqwBi" id="7wfdmjRl1_E" role="33vP2m">
                  <node concept="2GrUjf" id="NKt6yoTaa0" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="NKt6yoTa9Y" resolve="aspect" />
                  </node>
                  <node concept="liA8E" id="7wfdmjRl1_G" role="2OqNvi">
                    <ref role="37wK5l" to="fqlx:NKt6yomP6t" resolve="createMacroManifest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7wfdmjRl3BC" role="3cqZAp">
              <node concept="3clFbS" id="7wfdmjRl3BE" role="3clFbx">
                <node concept="3clFbF" id="6UWSvq5daIa" role="3cqZAp">
                  <node concept="2OqwBi" id="6UWSvq5dbyT" role="3clFbG">
                    <node concept="37vLTw" id="6UWSvq5daI8" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UWSvq5d6Lz" resolve="macroManifests" />
                    </node>
                    <node concept="TSZUe" id="6UWSvq5dcAz" role="2OqNvi">
                      <node concept="37vLTw" id="7wfdmjRl1_H" role="25WWJ7">
                        <ref role="3cqZAo" node="7wfdmjRl1_D" resolve="macroManifest" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7wfdmjRl3R4" role="3clFbw">
                <node concept="10Nm6u" id="7wfdmjRl3St" role="3uHU7w" />
                <node concept="37vLTw" id="7wfdmjRl3I7" role="3uHU7B">
                  <ref role="3cqZAo" node="7wfdmjRl1_D" resolve="macroManifest" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7P_FdVPGvW1" role="3cqZAp" />
            <node concept="3cpWs8" id="7wfdmjRl439" role="3cqZAp">
              <node concept="3cpWsn" id="7wfdmjRl43a" role="3cpWs9">
                <property role="TrG5h" value="ruleManifest" />
                <node concept="3uibUv" id="7wfdmjRl436" role="1tU5fm">
                  <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
                </node>
                <node concept="2OqwBi" id="7wfdmjRl43b" role="33vP2m">
                  <node concept="2GrUjf" id="NKt6yoTaa2" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="NKt6yoTa9Y" resolve="aspect" />
                  </node>
                  <node concept="liA8E" id="7wfdmjRl43d" role="2OqNvi">
                    <ref role="37wK5l" to="fqlx:NKt6yomP6y" resolve="createRuleManifest" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7wfdmjRl4mB" role="3cqZAp">
              <node concept="3clFbS" id="7wfdmjRl4mD" role="3clFbx">
                <node concept="3clFbF" id="6UWSvq5dds6" role="3cqZAp">
                  <node concept="2OqwBi" id="6UWSvq5deco" role="3clFbG">
                    <node concept="37vLTw" id="6UWSvq5dds4" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UWSvq5d8md" resolve="ruleManifests" />
                    </node>
                    <node concept="TSZUe" id="6UWSvq5dffY" role="2OqNvi">
                      <node concept="37vLTw" id="7wfdmjRl43e" role="25WWJ7">
                        <ref role="3cqZAo" node="7wfdmjRl43a" resolve="ruleManifest" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2WtKs4u1jyY" role="3cqZAp" />
                <node concept="3clFbJ" id="2WtKs4u1jzV" role="3cqZAp">
                  <node concept="3clFbS" id="2WtKs4u1jzX" role="3clFbx">
                    <node concept="3clFbF" id="2WtKs4u1kj3" role="3cqZAp">
                      <node concept="2OqwBi" id="2WtKs4u1kpF" role="3clFbG">
                        <node concept="37vLTw" id="2WtKs4u1kj2" role="2Oq$k0">
                          <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="mergedAnalysis" />
                        </node>
                        <node concept="liA8E" id="2WtKs4u1kvN" role="2OqNvi">
                          <ref role="37wK5l" to="xnrr:2WtKs4tZgH_" resolve="merge" />
                          <node concept="2OqwBi" id="2WtKs4u1kCq" role="37wK5m">
                            <node concept="37vLTw" id="2WtKs4u1kxn" role="2Oq$k0">
                              <ref role="3cqZAo" node="7wfdmjRl43a" resolve="ruleManifest" />
                            </node>
                            <node concept="liA8E" id="2WtKs4u1kIK" role="2OqNvi">
                              <ref role="37wK5l" to="i348:2WtKs4tZlCC" resolve="analyses" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="2WtKs4u1jSW" role="3clFbw">
                    <node concept="37vLTw" id="2WtKs4u1j_i" role="3uHU7B">
                      <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="mergedAnalysis" />
                    </node>
                    <node concept="10Nm6u" id="2WtKs4u1jRd" role="3uHU7w" />
                  </node>
                  <node concept="9aQIb" id="2WtKs4u1jW_" role="9aQIa">
                    <node concept="3clFbS" id="2WtKs4u1jWA" role="9aQI4">
                      <node concept="3clFbF" id="2WtKs4u1jXs" role="3cqZAp">
                        <node concept="37vLTI" id="2WtKs4u1k3Z" role="3clFbG">
                          <node concept="2OqwBi" id="2WtKs4u1kaX" role="37vLTx">
                            <node concept="37vLTw" id="2WtKs4u1k5c" role="2Oq$k0">
                              <ref role="3cqZAo" node="7wfdmjRl43a" resolve="ruleManifest" />
                            </node>
                            <node concept="liA8E" id="2WtKs4u1kho" role="2OqNvi">
                              <ref role="37wK5l" to="i348:2WtKs4tZlCC" resolve="analyses" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2WtKs4u1jXr" role="37vLTJ">
                            <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="mergedAnalysis" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7wfdmjRl4B5" role="3clFbw">
                <node concept="10Nm6u" id="7wfdmjRl4Dc" role="3uHU7w" />
                <node concept="37vLTw" id="7wfdmjRl4u6" role="3uHU7B">
                  <ref role="3cqZAo" node="7wfdmjRl43a" resolve="ruleManifest" />
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
                <node concept="37vLTw" id="6UWSvq5d6LC" role="37wK5m">
                  <ref role="3cqZAo" node="6UWSvq5d6Lz" resolve="macroManifests" />
                </node>
                <node concept="37vLTw" id="2Y70AYEfWEu" role="37wK5m">
                  <ref role="3cqZAo" node="2Y70AYEbe1O" resolve="messageHandler" />
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
                <node concept="37vLTw" id="7WKNeR99RYR" role="37wK5m">
                  <ref role="3cqZAo" node="6UWSvq5d8md" resolve="ruleManifests" />
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
                <node concept="37vLTw" id="7WKNeR99T8e" role="37wK5m">
                  <ref role="3cqZAo" node="6UWSvq5d8md" resolve="ruleManifests" />
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
        <node concept="3clFbH" id="2WtKs4u1mzB" role="3cqZAp" />
        <node concept="3clFbJ" id="2WtKs4u1nt5" role="3cqZAp">
          <node concept="3clFbS" id="2WtKs4u1nt7" role="3clFbx">
            <node concept="3clFbF" id="2WtKs4u1mLl" role="3cqZAp">
              <node concept="37vLTI" id="2WtKs4u1nfd" role="3clFbG">
                <node concept="2OqwBi" id="2WtKs4u1mXZ" role="37vLTJ">
                  <node concept="Xjq3P" id="2WtKs4u1mLj" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2WtKs4u1n6f" role="2OqNvi">
                    <ref role="2Oxat5" node="2WtKs4tZfH3" resolve="programSpec" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3L0F0kb7Bhp" role="37vLTx">
                  <node concept="1eOMI4" id="3L0F0kb7B9m" role="2Oq$k0">
                    <node concept="10QFUN" id="3L0F0kb7B9j" role="1eOMHV">
                      <node concept="3uibUv" id="3L0F0kb7Bb4" role="10QFUM">
                        <ref role="3uigEE" to="xnrr:2WtKs4u1ogK" resolve="SpecProvider" />
                      </node>
                      <node concept="37vLTw" id="3L0F0kb7B7O" role="10QFUP">
                        <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="mergedAnalysis" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3L0F0kb7BoQ" role="2OqNvi">
                    <ref role="37wK5l" to="xnrr:5Ud1wlIOa8f" resolve="getSpec" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6xVZN2uRxRk" role="3clFbw">
            <node concept="3y3z36" id="6xVZN2uRyeB" role="3uHU7B">
              <node concept="10Nm6u" id="6xVZN2uRyg5" role="3uHU7w" />
              <node concept="37vLTw" id="6xVZN2uRy6m" role="3uHU7B">
                <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="mergedAnalysis" />
              </node>
            </node>
            <node concept="2ZW3vV" id="2WtKs4u1nVT" role="3uHU7w">
              <node concept="3uibUv" id="3L0F0kb7A0K" role="2ZW6by">
                <ref role="3uigEE" to="xnrr:2WtKs4u1ogK" resolve="SpecProvider" />
              </node>
              <node concept="37vLTw" id="2WtKs4u1n$7" role="2ZW6bz">
                <ref role="3cqZAo" node="2WtKs4u1jqC" resolve="mergedAnalysis" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3L0F0kb7BrZ" role="9aQIa">
            <node concept="3clFbS" id="3L0F0kb7Bs0" role="9aQI4">
              <node concept="3clFbF" id="3L0F0kb7BuE" role="3cqZAp">
                <node concept="37vLTI" id="3L0F0kb7BNQ" role="3clFbG">
                  <node concept="10M0yZ" id="3L0F0kb7BSR" role="37vLTx">
                    <ref role="3cqZAo" to="av0y:~IncrementalProgramSpec.DefaultSpec" resolve="DefaultSpec" />
                    <ref role="1PxDUh" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
                  </node>
                  <node concept="2OqwBi" id="3L0F0kb7B$N" role="37vLTJ">
                    <node concept="Xjq3P" id="3L0F0kb7BuD" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3L0F0kb7BFy" role="2OqNvi">
                      <ref role="2Oxat5" node="2WtKs4tZfH3" resolve="programSpec" />
                    </node>
                  </node>
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
    <node concept="2tJIrI" id="7P_FdVPG1ZY" role="jymVt" />
    <node concept="312cEg" id="7P_FdVPFMy6" role="jymVt">
      <property role="TrG5h" value="ruleTemplateIndex" />
      <node concept="3Tm6S6" id="7WKNeR9dEi9" role="1B3o_S" />
      <node concept="3uibUv" id="7P_FdVPFMy8" role="1tU5fm">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="2tJIrI" id="7WKNeR99MP_" role="jymVt" />
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
    <node concept="2tJIrI" id="2WtKs4tZfnT" role="jymVt" />
    <node concept="312cEg" id="2WtKs4tZfH3" role="jymVt">
      <property role="TrG5h" value="programSpec" />
      <node concept="3Tm6S6" id="2WtKs4tZf$D" role="1B3o_S" />
      <node concept="3uibUv" id="2WtKs4tZfG8" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
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
        <node concept="3clFbF" id="6OXbTDxtYkF" role="3cqZAp">
          <node concept="37vLTI" id="6OXbTDxtYkH" role="3clFbG">
            <node concept="2OqwBi" id="6OXbTDxu4Rq" role="37vLTJ">
              <node concept="Xjq3P" id="6OXbTDxu4Sg" role="2Oq$k0" />
              <node concept="2OwXpG" id="6OXbTDxu4Rt" role="2OqNvi">
                <ref role="2Oxat5" node="6OXbTDxtYkB" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="6OXbTDxtYkL" role="37vLTx">
              <ref role="3cqZAo" node="6OXbTDxtJVO" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR9bpBj" role="3cqZAp">
          <node concept="37vLTI" id="7WKNeR9bpBl" role="3clFbG">
            <node concept="2OqwBi" id="7WKNeR9bvwG" role="37vLTJ">
              <node concept="Xjq3P" id="7WKNeR9bvxC" role="2Oq$k0" />
              <node concept="2OwXpG" id="7WKNeR9bvwJ" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
              </node>
            </node>
            <node concept="37vLTw" id="7WKNeR9bpBp" role="37vLTx">
              <ref role="3cqZAo" node="7DvO2M9peEl" resolve="ruleProcessingSession" />
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
    </node>
    <node concept="2tJIrI" id="7WKNeR9b5Ef" role="jymVt" />
    <node concept="3clFbW" id="7WKNeR9bcL$" role="jymVt">
      <node concept="37vLTG" id="6OXbTDxtXtJ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6OXbTDxtYhn" role="1tU5fm" />
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
        <node concept="3clFbF" id="6OXbTDxugPb" role="3cqZAp">
          <node concept="37vLTI" id="6OXbTDxuhrI" role="3clFbG">
            <node concept="37vLTw" id="6OXbTDxuhtx" role="37vLTx">
              <ref role="3cqZAo" node="6OXbTDxtXtJ" resolve="name" />
            </node>
            <node concept="2OqwBi" id="6OXbTDxugWB" role="37vLTJ">
              <node concept="Xjq3P" id="6OXbTDxugP9" role="2Oq$k0" />
              <node concept="2OwXpG" id="6OXbTDxuh2Z" role="2OqNvi">
                <ref role="2Oxat5" node="6OXbTDxtYkB" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR9b_gH" role="3cqZAp">
          <node concept="37vLTI" id="7WKNeR9b_gI" role="3clFbG">
            <node concept="2OqwBi" id="7WKNeR9b_gJ" role="37vLTJ">
              <node concept="Xjq3P" id="7WKNeR9b_gK" role="2Oq$k0" />
              <node concept="2OwXpG" id="7WKNeR9b_gL" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
              </node>
            </node>
            <node concept="37vLTw" id="7WKNeR9b_gM" role="37vLTx">
              <ref role="3cqZAo" node="7WKNeR9biVB" resolve="ruleProcessingSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WKNeR9b_iV" role="3cqZAp">
          <node concept="37vLTI" id="7WKNeR9b_iX" role="3clFbG">
            <node concept="2OqwBi" id="7WKNeR9bFoy" role="37vLTJ">
              <node concept="Xjq3P" id="7WKNeR9bFpu" role="2Oq$k0" />
              <node concept="2OwXpG" id="7WKNeR9bFo_" role="2OqNvi">
                <ref role="2Oxat5" node="7WKNeR9b_iR" resolve="queryTemplate" />
              </node>
            </node>
            <node concept="37vLTw" id="7WKNeR9b_j1" role="37vLTx">
              <ref role="3cqZAo" node="7WKNeR9biTm" resolve="queryTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GlpCDSxTK6" role="jymVt" />
    <node concept="3clFb_" id="7kTeLbPojCz" role="jymVt">
      <property role="TrG5h" value="produce" />
      <node concept="3Tm1VV" id="7kTeLbPopUh" role="1B3o_S" />
      <node concept="3uibUv" id="7kTeLbPojC_" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="37vLTG" id="7kTeLbPojCA" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="7kTeLbPolya" role="1tU5fm">
          <node concept="3Tqbb2" id="7kTeLbPolyb" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDxuNC6" role="3clF46">
        <property role="TrG5h" value="queryParameter" />
        <node concept="8X2XB" id="6OXbTDxuUTL" role="1tU5fm">
          <node concept="3uibUv" id="6OXbTDxuTvz" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7kTeLbPojCE" role="3clF47">
        <node concept="3clFbF" id="7kTeLbPojCF" role="3cqZAp">
          <node concept="1rXfSq" id="7kTeLbPojCG" role="3clFbG">
            <ref role="37wK5l" node="7kTeLbPnDc0" resolve="doProduce" />
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
                      <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
                    </node>
                    <node concept="2YIFZM" id="6OXbTDzR350" role="33vP2m">
                      <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
                      <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6OXbTDzSpTD" role="3cqZAp" />
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
                        <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                        <node concept="2OqwBi" id="6OXbTDxPpIU" role="37wK5m">
                          <node concept="37vLTw" id="6OXbTDxPp_9" role="2Oq$k0">
                            <ref role="3cqZAo" node="7kTeLbPojCI" resolve="factory" />
                          </node>
                          <node concept="liA8E" id="6OXbTDxPqb1" role="2OqNvi">
                            <ref role="37wK5l" to="ksgm:6OXbTDxOzxt" resolve="processQuery" />
                            <node concept="37vLTw" id="6OXbTDxPqhF" role="37wK5m">
                              <ref role="3cqZAo" node="6OXbTDxuNC6" resolve="queryParameter" />
                            </node>
                          </node>
                        </node>
                      </node>
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
                        <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                        <node concept="2OqwBi" id="6OXbTDxOoZe" role="37wK5m">
                          <node concept="37vLTw" id="6OXbTDxOoZf" role="2Oq$k0">
                            <ref role="3cqZAo" node="7kTeLbPojCI" resolve="factory" />
                          </node>
                          <node concept="liA8E" id="6OXbTDxOoZg" role="2OqNvi">
                            <ref role="37wK5l" to="ksgm:4QPCta1bMC1" resolve="processInput" />
                            <node concept="37vLTw" id="6OXbTDxOoZh" role="37wK5m">
                              <ref role="3cqZAo" node="7kTeLbPojCA" resolve="nodes" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6OXbTDzSpmG" role="3cqZAp">
                  <node concept="37vLTI" id="6OXbTDzSpmH" role="3clFbG">
                    <node concept="37vLTw" id="6OXbTDzSpmI" role="37vLTJ">
                      <ref role="3cqZAo" node="6OXbTDxOoZd" resolve="result" />
                    </node>
                    <node concept="2OqwBi" id="6OXbTDzSpmJ" role="37vLTx">
                      <node concept="37vLTw" id="6OXbTDzSpmK" role="2Oq$k0">
                        <ref role="3cqZAo" node="6OXbTDxOoZd" resolve="result" />
                      </node>
                      <node concept="liA8E" id="6OXbTDzSpmL" role="2OqNvi">
                        <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                        <node concept="2OqwBi" id="6OXbTDzSpmM" role="37wK5m">
                          <node concept="37vLTw" id="6OXbTDzSpmN" role="2Oq$k0">
                            <ref role="3cqZAo" node="7kTeLbPojCI" resolve="factory" />
                          </node>
                          <node concept="liA8E" id="6OXbTDzSpmO" role="2OqNvi">
                            <ref role="37wK5l" to="ksgm:6OXbTDzR_RU" resolve="buildProgram" />
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
    <node concept="2tJIrI" id="1H_6AUT8pE9" role="jymVt" />
    <node concept="3clFb_" id="1H_6AUT8p2f" role="jymVt">
      <property role="TrG5h" value="getProgramSpec" />
      <node concept="3clFbS" id="1H_6AUT8p2i" role="3clF47">
        <node concept="3clFbF" id="3L0F0kb7I5C" role="3cqZAp">
          <node concept="2OqwBi" id="3L0F0kb7IfV" role="3clFbG">
            <node concept="37vLTw" id="3L0F0kb7I5A" role="2Oq$k0">
              <ref role="3cqZAo" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
            </node>
            <node concept="liA8E" id="3L0F0kb7LCU" role="2OqNvi">
              <ref role="37wK5l" node="2WtKs4tZfgb" resolve="programSpec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H_6AUT8oyw" role="1B3o_S" />
      <node concept="3uibUv" id="1H_6AUT8p0g" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDxQQYI" role="jymVt" />
    <node concept="3clFb_" id="7kTeLbPnDc0" role="jymVt">
      <property role="TrG5h" value="doProduce" />
      <node concept="37vLTG" id="7kTeLbPnFaf" role="3clF46">
        <property role="TrG5h" value="produceAction" />
        <node concept="1ajhzC" id="7kTeLbPnFEB" role="1tU5fm">
          <node concept="3uibUv" id="7DvO2M9B7a5" role="1ajw0F">
            <ref role="3uigEE" to="ksgm:12yN8DyF_E1" resolve="ProgramFactory" />
          </node>
          <node concept="3uibUv" id="7kTeLbPnOYu" role="1ajl9A">
            <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7kTeLbPnVDn" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="7kTeLbPnEee" role="1B3o_S" />
      <node concept="3clFbS" id="7kTeLbPnDc4" role="3clF47">
        <node concept="3clFbH" id="70Wv0dJiUvk" role="3cqZAp" />
        <node concept="3cpWs8" id="72RDgIN3C$C" role="3cqZAp">
          <node concept="3cpWsn" id="72RDgIN3C$D" role="3cpWs9">
            <property role="TrG5h" value="processing" />
            <node concept="3uibUv" id="72RDgIN3C$$" role="1tU5fm">
              <ref role="3uigEE" node="7DvO2M9IiKB" resolve="MacroProcessing" />
            </node>
            <node concept="2ShNRf" id="72RDgIN3C$E" role="33vP2m">
              <node concept="YeOm9" id="72RDgIN3GAR" role="2ShVmc">
                <node concept="1Y3b0j" id="72RDgIN3GAU" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="7DvO2M9IiKB" resolve="MacroProcessing" />
                  <ref role="37wK5l" node="7DvO2Ma0h_M" resolve="MacroProcessing" />
                  <node concept="3Tm1VV" id="72RDgIN3GAV" role="1B3o_S" />
                  <node concept="2OqwBi" id="72RDgIN3C$G" role="37wK5m">
                    <node concept="37vLTw" id="72RDgIN3C$H" role="2Oq$k0">
                      <ref role="3cqZAo" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
                    </node>
                    <node concept="liA8E" id="72RDgIN3C$I" role="2OqNvi">
                      <ref role="37wK5l" node="7DvO2M9Icas" resolve="macroTemplates" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="72RDgIN3GL7" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="contextRepository" />
                    <node concept="3uibUv" id="72RDgIN3GL8" role="3clF45">
                      <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                    </node>
                    <node concept="3Tm1VV" id="72RDgIN3GL9" role="1B3o_S" />
                    <node concept="3clFbS" id="72RDgIN3GLe" role="3clF47">
                      <node concept="3clFbF" id="72RDgIN4dYT" role="3cqZAp">
                        <node concept="2OqwBi" id="72RDgIN4e8j" role="3clFbG">
                          <node concept="37vLTw" id="72RDgIN4dYS" role="2Oq$k0">
                            <ref role="3cqZAo" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
                          </node>
                          <node concept="liA8E" id="72RDgIN4elk" role="2OqNvi">
                            <ref role="37wK5l" node="72RDgIN45VE" resolve="repository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="72RDgIN3GLf" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="70Wv0dJiUG3" role="3cqZAp" />
        <node concept="3cpWs8" id="7kTeLbPnP2l" role="3cqZAp">
          <node concept="3cpWsn" id="7kTeLbPnP2m" role="3cpWs9">
            <property role="TrG5h" value="mainConstraint" />
            <node concept="3uibUv" id="7kTeLbPnP2n" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
            <node concept="2OqwBi" id="7kTeLbPnP2o" role="33vP2m">
              <node concept="2ShNRf" id="7kTeLbPnP2p" role="2Oq$k0">
                <node concept="1pGfFk" id="7kTeLbPnP2q" role="2ShVmc">
                  <ref role="37wK5l" to="i348:4sSe4$oM2rk" resolve="ConstraintBuilder" />
                  <node concept="2YIFZM" id="7kTeLbPnP2r" role="37wK5m">
                    <ref role="37wK5l" to="av0y:~ConstraintSymbol.symbol(java.lang.String,int)" resolve="symbol" />
                    <ref role="1Pybhc" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                    <node concept="Xl_RD" id="7kTeLbPnP2s" role="37wK5m">
                      <property role="Xl_RC" value="main" />
                    </node>
                    <node concept="3cmrfG" id="7kTeLbPnP2t" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7kTeLbPnP2u" role="2OqNvi">
                <ref role="37wK5l" to="i348:4sSe4$oM2zI" resolve="toConstraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tPOoeTaVAX" role="3cqZAp">
          <node concept="3cpWsn" id="6tPOoeTaVAY" role="3cpWs9">
            <property role="TrG5h" value="programBuilder" />
            <node concept="3uibUv" id="6tPOoeTaVAW" role="1tU5fm">
              <ref role="3uigEE" to="ksgm:5rhZO$TYZJM" resolve="ProgramBuilder" />
            </node>
            <node concept="2ShNRf" id="6tPOoeTaVAZ" role="33vP2m">
              <node concept="1pGfFk" id="6tPOoeTaVB0" role="2ShVmc">
                <ref role="37wK5l" to="ksgm:5rhZO$TZ9Ji" resolve="ProgramBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="70Wv0dJiUi6" role="3cqZAp">
          <node concept="3cpWsn" id="70Wv0dJiUi7" role="3cpWs9">
            <property role="TrG5h" value="originIndex" />
            <node concept="3uibUv" id="70Wv0dJiUi5" role="1tU5fm">
              <ref role="3uigEE" to="ksgm:70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
            </node>
            <node concept="2ShNRf" id="70Wv0dJiUi8" role="33vP2m">
              <node concept="HV5vD" id="70Wv0dJiUi9" role="2ShVmc">
                <ref role="HV5vE" to="ksgm:70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="70Wv0dJiUP3" role="3cqZAp" />
        <node concept="3cpWs8" id="6OXbTDxQIa7" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDxQIa8" role="3cpWs9">
            <property role="TrG5h" value="factory" />
            <node concept="3uibUv" id="6OXbTDxQIa9" role="1tU5fm">
              <ref role="3uigEE" to="ksgm:12yN8DyF_E1" resolve="ProgramFactory" />
            </node>
            <node concept="2ShNRf" id="6OXbTDxQIaa" role="33vP2m">
              <node concept="1pGfFk" id="6OXbTDxQIab" role="2ShVmc">
                <ref role="37wK5l" to="ksgm:7DvO2M9uuLO" resolve="ProgramFactory" />
                <node concept="37vLTw" id="4$YN6QtA2SN" role="37wK5m">
                  <ref role="3cqZAo" node="7WKNeR9bpBf" resolve="ruleProcessingSession" />
                </node>
                <node concept="37vLTw" id="4$YN6QtA7QC" role="37wK5m">
                  <ref role="3cqZAo" node="7WKNeR9b_iR" resolve="queryTemplate" />
                </node>
                <node concept="37vLTw" id="72RDgIN3C$J" role="37wK5m">
                  <ref role="3cqZAo" node="72RDgIN3C$D" resolve="processing" />
                </node>
                <node concept="37vLTw" id="6OXbTDxQIah" role="37wK5m">
                  <ref role="3cqZAo" node="7kTeLbPnP2m" resolve="mainConstraint" />
                </node>
                <node concept="37vLTw" id="6tPOoeTaVB1" role="37wK5m">
                  <ref role="3cqZAo" node="6tPOoeTaVAY" resolve="programBuilder" />
                </node>
                <node concept="37vLTw" id="70Wv0dJiZ8h" role="37wK5m">
                  <ref role="3cqZAo" node="70Wv0dJiUi7" resolve="originIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4vBwiiVe5IU" role="3cqZAp" />
        <node concept="3cpWs8" id="7kTeLbPnP2A" role="3cqZAp">
          <node concept="3cpWsn" id="7kTeLbPnP2B" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7kTeLbPnP2C" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
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
        <node concept="3clFbJ" id="4vBwiiVen0J" role="3cqZAp">
          <node concept="3clFbS" id="4vBwiiVen0K" role="3clFbx">
            <node concept="3clFbF" id="6tPOoeTb3FO" role="3cqZAp">
              <node concept="37vLTI" id="6tPOoeTb4EN" role="3clFbG">
                <node concept="2OqwBi" id="6tPOoeTb4Rp" role="37vLTx">
                  <node concept="37vLTw" id="6tPOoeTb4Ki" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tPOoeTaVAY" resolve="programBuilder" />
                  </node>
                  <node concept="liA8E" id="6tPOoeTb4ZE" role="2OqNvi">
                    <ref role="37wK5l" to="ksgm:5rhZO$TZiL1" resolve="toProgram" />
                    <node concept="37vLTw" id="6tPOoeTb8N4" role="37wK5m">
                      <ref role="3cqZAo" node="6OXbTDxtYkB" resolve="name" />
                    </node>
                    <node concept="37vLTw" id="70Wv0dJiUia" role="37wK5m">
                      <ref role="3cqZAo" node="70Wv0dJiUi7" resolve="originIndex" />
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
          </node>
          <node concept="2OqwBi" id="4vBwiiVen12" role="3clFbw">
            <node concept="37vLTw" id="4vBwiiVen13" role="2Oq$k0">
              <ref role="3cqZAo" node="7kTeLbPnP2B" resolve="result" />
            </node>
            <node concept="liA8E" id="4vBwiiVen14" role="2OqNvi">
              <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
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
    <node concept="2tJIrI" id="3GlpCDSyN7T" role="jymVt" />
    <node concept="3clFb_" id="7kTeLbPg82h" role="jymVt">
      <property role="TrG5h" value="withMemoizer" />
      <node concept="37vLTG" id="7kTeLbPgbOI" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="1ajhzC" id="7kTeLbPgemd" role="1tU5fm">
          <node concept="3uibUv" id="7kTeLbPgeo8" role="1ajl9A">
            <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7kTeLbPgdQB" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="7kTeLbPg96d" role="1B3o_S" />
      <node concept="3clFbS" id="7kTeLbPg82l" role="3clF47">
        <node concept="3clFbF" id="7kTeLbPgepu" role="3cqZAp">
          <node concept="2YIFZM" id="7kTeLbPgepv" role="3clFbG">
            <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
            <ref role="37wK5l" node="2k2r9bMbV$8" resolve="init" />
          </node>
        </node>
        <node concept="3clFbF" id="7kTeLbPgepw" role="3cqZAp">
          <node concept="2YIFZM" id="7kTeLbPgepx" role="3clFbG">
            <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
            <ref role="37wK5l" node="2tjs8VC1byF" resolve="push" />
          </node>
        </node>
        <node concept="2GUZhq" id="7kTeLbPgepy" role="3cqZAp">
          <node concept="3clFbS" id="7kTeLbPgepz" role="2GV8ay">
            <node concept="3cpWs6" id="7kTeLbPgf8u" role="3cqZAp">
              <node concept="2Sg_IR" id="7kTeLbPgfKb" role="3cqZAk">
                <node concept="37vLTw" id="7kTeLbPgfKc" role="2SgG2M">
                  <ref role="3cqZAo" node="7kTeLbPgbOI" resolve="action" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7kTeLbPgf2y" role="3cqZAp" />
          </node>
          <node concept="3clFbS" id="7kTeLbPgepI" role="2GVbov">
            <node concept="3clFbF" id="7kTeLbPgepJ" role="3cqZAp">
              <node concept="2YIFZM" id="7kTeLbPgepK" role="3clFbG">
                <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
                <ref role="37wK5l" node="2tjs8VC1f3O" resolve="pop" />
              </node>
            </node>
            <node concept="3clFbF" id="7kTeLbPgepL" role="3cqZAp">
              <node concept="2YIFZM" id="7kTeLbPgepM" role="3clFbG">
                <ref role="1Pybhc" node="2tjs8VC0K0m" resolve="Memoizer" />
                <ref role="37wK5l" node="2k2r9bMbWB2" resolve="dispose" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$$Q_FeUgEv" role="jymVt" />
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
    <node concept="2tJIrI" id="6OXbTD$xs00" role="jymVt" />
  </node>
  <node concept="312cEu" id="7DvO2M9IiKB">
    <property role="TrG5h" value="MacroProcessing" />
    <property role="2bfB8j" value="false" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7DvO2M9IiKC" role="jymVt" />
    <node concept="3clFbW" id="7DvO2Ma0h_M" role="jymVt">
      <node concept="3cqZAl" id="7DvO2Ma0h_O" role="3clF45" />
      <node concept="3Tm1VV" id="7DvO2Ma0h_P" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2Ma0h_Q" role="3clF47">
        <node concept="3clFbF" id="7DvO2Ma0klf" role="3cqZAp">
          <node concept="37vLTI" id="7DvO2Ma0klh" role="3clFbG">
            <node concept="2OqwBi" id="7DvO2Ma0lz7" role="37vLTJ">
              <node concept="Xjq3P" id="7DvO2Ma0l$$" role="2Oq$k0" />
              <node concept="2OwXpG" id="7DvO2Ma0lza" role="2OqNvi">
                <ref role="2Oxat5" node="7DvO2Ma0klb" resolve="macroTemplateIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="7DvO2Ma0kll" role="37vLTx">
              <ref role="3cqZAo" node="7DvO2Ma0k9h" resolve="macroTemplateIndex" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2Ma0k9h" role="3clF46">
        <property role="TrG5h" value="macroTemplateIndex" />
        <node concept="3uibUv" id="7P_FdVPvlsI" role="1tU5fm">
          <ref role="3uigEE" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2Ma0gpD" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9IiKQ" role="jymVt">
      <property role="TrG5h" value="expandMacro" />
      <node concept="37vLTG" id="7DvO2M9IiKR" role="3clF46">
        <property role="TrG5h" value="logical" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7DvO2M9IiKS" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="7DvO2M9IiKT" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9IiKU" role="3clF46">
        <property role="TrG5h" value="inputNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="7DvO2M9IiKV" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7DvO2M9IiKW" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="7DvO2M9IiKX" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9IiKY" role="3clF47">
        <node concept="3SKdUt" id="4pwDyRBzU$N" role="3cqZAp">
          <node concept="1PaTwC" id="4pwDyRBzU$O" role="3ndbpf">
            <node concept="3oM_SD" id="4pwDyRBzVbl" role="1PaTwD">
              <property role="3oM_SC" value="calling" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVbv" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVbE" role="1PaTwD">
              <property role="3oM_SC" value="macro" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVc6" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVcb" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVcx" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVcK" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVcS" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVd9" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVdr" role="1PaTwD">
              <property role="3oM_SC" value="effect" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4pwDyRBzH3C" role="3cqZAp">
          <node concept="3clFbS" id="4pwDyRBzH3E" role="3clFbx">
            <node concept="3cpWs6" id="4pwDyRBzHYd" role="3cqZAp">
              <node concept="2ShNRf" id="4pwDyRBzQu$" role="3cqZAk">
                <node concept="1pGfFk" id="4pwDyRBzRGN" role="2ShVmc">
                  <ref role="37wK5l" to="i348:6lpwCiZjdph" resolve="RuleBuilder" />
                  <node concept="Xl_RD" id="4pwDyRBzSjG" role="37wK5m">
                    <property role="Xl_RC" value="empty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4pwDyRBzHH8" role="3clFbw">
            <node concept="10Nm6u" id="4pwDyRBzHIG" role="3uHU7w" />
            <node concept="37vLTw" id="4pwDyRBzHg6" role="3uHU7B">
              <ref role="3cqZAo" node="7DvO2M9IiKU" resolve="inputNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4pwDyRBzX$F" role="3cqZAp" />
        <node concept="3SKdUt" id="6tPOoeSRfFw" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxO$" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxO_" role="1PaTwD">
              <property role="3oM_SC" value="mark" />
            </node>
            <node concept="3oM_SD" id="589APehYxOA" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxOB" role="1PaTwD">
              <property role="3oM_SC" value="input" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzYON" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzYPi" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="589APehYxOI" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvO2M9IiKZ" role="3cqZAp">
          <node concept="2OqwBi" id="7DvO2M9IiL0" role="3clFbG">
            <node concept="37vLTw" id="7DvO2M9IiL1" role="2Oq$k0">
              <ref role="3cqZAo" to="i348:7DvO2M9IiOO" resolve="listeners" />
            </node>
            <node concept="2es0OD" id="7DvO2M9IiL2" role="2OqNvi">
              <node concept="1bVj0M" id="7DvO2M9IiL3" role="23t8la">
                <node concept="3clFbS" id="7DvO2M9IiL4" role="1bW5cS">
                  <node concept="3clFbF" id="7DvO2M9IiL5" role="3cqZAp">
                    <node concept="2OqwBi" id="7DvO2M9IiL6" role="3clFbG">
                      <node concept="37vLTw" id="7DvO2M9IiL7" role="2Oq$k0">
                        <ref role="3cqZAo" node="7DvO2M9IiLa" resolve="it" />
                      </node>
                      <node concept="liA8E" id="7DvO2M9IiL8" role="2OqNvi">
                        <ref role="37wK5l" to="i348:36tQV5BD$_p" resolve="require" />
                        <node concept="37vLTw" id="7DvO2M9IiL9" role="37wK5m">
                          <ref role="3cqZAo" node="7DvO2M9IiKU" resolve="inputNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7DvO2M9IiLa" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7DvO2M9IiLb" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4pwDyRBzYby" role="3cqZAp" />
        <node concept="3clFbF" id="7DvO2M9IiLc" role="3cqZAp">
          <node concept="1rXfSq" id="7DvO2M9IiLd" role="3clFbG">
            <ref role="37wK5l" node="7DvO2M9IiNu" resolve="withMacroTemplate" />
            <node concept="2OqwBi" id="7DvO2M9IiLe" role="37wK5m">
              <node concept="37vLTw" id="7DvO2M9IiLf" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2M9IiKU" resolve="inputNode" />
              </node>
              <node concept="2yIwOk" id="7DvO2M9IiLg" role="2OqNvi" />
            </node>
            <node concept="2ShNRf" id="7DvO2M9IiLh" role="37wK5m">
              <node concept="YeOm9" id="7DvO2M9IiLi" role="2ShVmc">
                <node concept="1Y3b0j" id="7DvO2M9IiLj" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
                  <node concept="3Tm1VV" id="7DvO2M9IiLk" role="1B3o_S" />
                  <node concept="3clFb_" id="7DvO2M9IiLl" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="7DvO2M9IiLm" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="7DvO2M9IiLn" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
                        <node concept="16syzq" id="7DvO2M9IiLo" role="11_B2D">
                          <ref role="16sUi3" node="7DvO2M9IiLz" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="7DvO2M9IiLp" role="3clF45">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="7DvO2M9IiLq" role="1B3o_S" />
                    <node concept="3clFbS" id="7DvO2M9IiLr" role="3clF47">
                      <node concept="3clFbF" id="7DvO2M9IiLs" role="3cqZAp">
                        <node concept="2OqwBi" id="7DvO2M9IiLt" role="3clFbG">
                          <node concept="37vLTw" id="7DvO2M9IiLu" role="2Oq$k0">
                            <ref role="3cqZAo" node="7DvO2M9IiLm" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="7DvO2M9IiLv" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:60NbDCXG$nh" resolve="doExpand" />
                            <node concept="37vLTw" id="7DvO2M9IiLw" role="37wK5m">
                              <ref role="3cqZAo" node="7DvO2M9IiKU" resolve="inputNode" />
                            </node>
                            <node concept="37vLTw" id="7DvO2M9IiLx" role="37wK5m">
                              <ref role="3cqZAo" node="7DvO2M9IiKR" resolve="logical" />
                            </node>
                            <node concept="Xjq3P" id="7DvO2M9IiLy" role="37wK5m">
                              <ref role="1HBi2w" node="7DvO2M9IiKB" resolve="MacroProcessing" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="7DvO2M9IiLz" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="7DvO2M9IiL$" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="2Y70AYExTDC" role="jymVt">
                    <property role="TrG5h" value="defaultValue" />
                    <node concept="3uibUv" id="2Y70AYExTDD" role="3clF45">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="2Y70AYExTDE" role="1B3o_S" />
                    <node concept="3clFbS" id="2Y70AYExTDF" role="3clF47">
                      <node concept="3clFbF" id="2Y70AYExTDG" role="3cqZAp">
                        <node concept="2ShNRf" id="2Y70AYExTDH" role="3clFbG">
                          <node concept="1pGfFk" id="2Y70AYExTDI" role="2ShVmc">
                            <ref role="37wK5l" to="i348:6lpwCiZjdph" resolve="RuleBuilder" />
                            <node concept="Xl_RD" id="2Y70AYExTDJ" role="37wK5m">
                              <property role="Xl_RC" value="empty" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2Y70AYExTDK" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7DvO2M9IiL_" role="2Ghqu4">
                    <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7DvO2M9IiLA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9IiLB" role="jymVt" />
    <node concept="3clFb_" id="5DUvKnrzdc3" role="jymVt">
      <property role="TrG5h" value="expandMacro" />
      <node concept="37vLTG" id="5DUvKnrzdc4" role="3clF46">
        <property role="TrG5h" value="logical" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5DUvKnrzdc5" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="5DUvKnrzdc6" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5DUvKnrzdc7" role="3clF46">
        <property role="TrG5h" value="inputConcept" />
        <property role="3TUv4t" value="true" />
        <node concept="3bZ5Sz" id="5DUvKnrzdc8" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5DUvKnrzdc9" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="5DUvKnrzdca" role="1B3o_S" />
      <node concept="3clFbS" id="5DUvKnrzdcc" role="3clF47">
        <node concept="3SKdUt" id="4pwDyRBzVpI" role="3cqZAp">
          <node concept="1PaTwC" id="4pwDyRBzVpJ" role="3ndbpf">
            <node concept="3oM_SD" id="4pwDyRBzVpK" role="1PaTwD">
              <property role="3oM_SC" value="calling" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpL" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpM" role="1PaTwD">
              <property role="3oM_SC" value="macro" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpN" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpO" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpP" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpQ" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpR" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpS" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="4pwDyRBzVpT" role="1PaTwD">
              <property role="3oM_SC" value="effect" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4pwDyRBzVpU" role="3cqZAp">
          <node concept="3clFbS" id="4pwDyRBzVpV" role="3clFbx">
            <node concept="3cpWs6" id="4pwDyRBzVpW" role="3cqZAp">
              <node concept="2ShNRf" id="4pwDyRBzVpX" role="3cqZAk">
                <node concept="1pGfFk" id="4pwDyRBzVpY" role="2ShVmc">
                  <ref role="37wK5l" to="i348:6lpwCiZjdph" resolve="RuleBuilder" />
                  <node concept="Xl_RD" id="4pwDyRBzVpZ" role="37wK5m">
                    <property role="Xl_RC" value="empty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4pwDyRBzVq0" role="3clFbw">
            <node concept="10Nm6u" id="4pwDyRBzVq1" role="3uHU7w" />
            <node concept="37vLTw" id="4pwDyRBzVIP" role="3uHU7B">
              <ref role="3cqZAo" node="5DUvKnrzdc7" resolve="inputConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4pwDyRBzWJj" role="3cqZAp" />
        <node concept="3clFbF" id="5DUvKnrzejC" role="3cqZAp">
          <node concept="1rXfSq" id="5DUvKnrzejD" role="3clFbG">
            <ref role="37wK5l" node="7DvO2M9IiNu" resolve="withMacroTemplate" />
            <node concept="37vLTw" id="5DUvKnrzgVa" role="37wK5m">
              <ref role="3cqZAo" node="5DUvKnrzdc7" resolve="inputConcept" />
            </node>
            <node concept="2ShNRf" id="5DUvKnrzejH" role="37wK5m">
              <node concept="YeOm9" id="5DUvKnrzejI" role="2ShVmc">
                <node concept="1Y3b0j" id="5DUvKnrzejJ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
                  <node concept="3Tm1VV" id="5DUvKnrzejK" role="1B3o_S" />
                  <node concept="3clFb_" id="5DUvKnrzejL" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="5DUvKnrzejM" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="5DUvKnrzejN" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
                        <node concept="16syzq" id="5DUvKnrzejO" role="11_B2D">
                          <ref role="16sUi3" node="5DUvKnrzejZ" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="5DUvKnrzejP" role="3clF45">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="5DUvKnrzejQ" role="1B3o_S" />
                    <node concept="3clFbS" id="5DUvKnrzejR" role="3clF47">
                      <node concept="3clFbF" id="5DUvKnrzejS" role="3cqZAp">
                        <node concept="2OqwBi" id="5DUvKnrzejT" role="3clFbG">
                          <node concept="37vLTw" id="5DUvKnrzejU" role="2Oq$k0">
                            <ref role="3cqZAo" node="5DUvKnrzejM" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="5DUvKnrzejV" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:5DUvKnrzhU$" resolve="doExpand" />
                            <node concept="37vLTw" id="7Bx7XgE0ZuL" role="37wK5m">
                              <ref role="3cqZAo" node="5DUvKnrzdc7" resolve="inputConcept" />
                            </node>
                            <node concept="37vLTw" id="7Bx7XgE0ZSL" role="37wK5m">
                              <ref role="3cqZAo" node="5DUvKnrzdc4" resolve="logical" />
                            </node>
                            <node concept="Xjq3P" id="5DUvKnrzejY" role="37wK5m">
                              <ref role="1HBi2w" node="7DvO2M9IiKB" resolve="MacroProcessing" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="5DUvKnrzejZ" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="5DUvKnrzek0" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="5DUvKnrzek1" role="2Ghqu4">
                    <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                  <node concept="3clFb_" id="2Y70AYExGTY" role="jymVt">
                    <property role="TrG5h" value="defaultValue" />
                    <node concept="3uibUv" id="2Y70AYExGU4" role="3clF45">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="2Y70AYExGU0" role="1B3o_S" />
                    <node concept="3clFbS" id="2Y70AYExGU5" role="3clF47">
                      <node concept="3clFbF" id="2Y70AYExHfP" role="3cqZAp">
                        <node concept="2ShNRf" id="2Y70AYExHfN" role="3clFbG">
                          <node concept="1pGfFk" id="2Y70AYExHG$" role="2ShVmc">
                            <ref role="37wK5l" to="i348:6lpwCiZjdph" resolve="RuleBuilder" />
                            <node concept="Xl_RD" id="2Y70AYExHIS" role="37wK5m">
                              <property role="Xl_RC" value="empty" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2Y70AYExGU6" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5DUvKnrzdcd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5DUvKnrzdJ3" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9IiLC" role="jymVt">
      <property role="TrG5h" value="callMacro" />
      <node concept="37vLTG" id="7DvO2M9IiLD" role="3clF46">
        <property role="TrG5h" value="logical" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7DvO2M9IiLE" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="7DvO2M9IiLF" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9IiLG" role="3clF46">
        <property role="TrG5h" value="templateId" />
        <node concept="3uibUv" id="7DvO2M9IiLH" role="1tU5fm">
          <ref role="3uigEE" to="psr6:4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9IiLI" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="true" />
        <node concept="8X2XB" id="7DvO2M9IiLJ" role="1tU5fm">
          <node concept="3uibUv" id="7DvO2M9IiLK" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7DvO2M9IiLL" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="7DvO2M9IiLM" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9IiLN" role="3clF47">
        <node concept="3clFbF" id="7DvO2M9IiLO" role="3cqZAp">
          <node concept="1rXfSq" id="7DvO2M9IiLP" role="3clFbG">
            <ref role="37wK5l" node="7DvO2M9IiO1" resolve="withMacroTemplate" />
            <node concept="37vLTw" id="7DvO2M9IiLQ" role="37wK5m">
              <ref role="3cqZAo" node="7DvO2M9IiLG" resolve="templateId" />
            </node>
            <node concept="2ShNRf" id="7DvO2M9IiLR" role="37wK5m">
              <node concept="YeOm9" id="7DvO2M9IiLS" role="2ShVmc">
                <node concept="1Y3b0j" id="7DvO2M9IiLT" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="7DvO2M9IiLU" role="1B3o_S" />
                  <node concept="3clFb_" id="7DvO2M9IiLV" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="7DvO2M9IiLW" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="7DvO2M9IiLX" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
                        <node concept="16syzq" id="7DvO2M9IiLY" role="11_B2D">
                          <ref role="16sUi3" node="7DvO2M9IiMc" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="7DvO2M9IiLZ" role="3clF45">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="7DvO2M9IiM0" role="1B3o_S" />
                    <node concept="3clFbS" id="7DvO2M9IiM1" role="3clF47">
                      <node concept="3clFbF" id="7DvO2M9IiM2" role="3cqZAp">
                        <node concept="2OqwBi" id="7DvO2M9IiM3" role="3clFbG">
                          <node concept="37vLTw" id="7DvO2M9IiM4" role="2Oq$k0">
                            <ref role="3cqZAo" node="7DvO2M9IiLW" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="7DvO2M9IiM5" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:1eKXYsjvsWF" resolve="doCall" />
                            <node concept="2OqwBi" id="7DvO2M9IiM6" role="37wK5m">
                              <node concept="37vLTw" id="7DvO2M9IiM7" role="2Oq$k0">
                                <ref role="3cqZAo" node="7DvO2M9IiLW" resolve="typeTemplate" />
                              </node>
                              <node concept="liA8E" id="7DvO2M9IiM8" role="2OqNvi">
                                <ref role="37wK5l" to="psr6:1eKXYsjvsWn" resolve="withArgs" />
                                <node concept="37vLTw" id="7DvO2M9IiM9" role="37wK5m">
                                  <ref role="3cqZAo" node="7DvO2M9IiLI" resolve="args" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="7DvO2M9IiMa" role="37wK5m">
                              <ref role="3cqZAo" node="7DvO2M9IiLD" resolve="logical" />
                            </node>
                            <node concept="Xjq3P" id="7DvO2M9IiMb" role="37wK5m">
                              <ref role="1HBi2w" node="7DvO2M9IiKB" resolve="MacroProcessing" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="7DvO2M9IiMc" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="7DvO2M9IiMd" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="2Y70AYExHLb" role="jymVt">
                    <property role="TrG5h" value="defaultValue" />
                    <node concept="3uibUv" id="2Y70AYExHLc" role="3clF45">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="2Y70AYExHLd" role="1B3o_S" />
                    <node concept="3clFbS" id="2Y70AYExHLe" role="3clF47">
                      <node concept="3clFbF" id="2Y70AYExHLf" role="3cqZAp">
                        <node concept="2ShNRf" id="2Y70AYExHLg" role="3clFbG">
                          <node concept="1pGfFk" id="2Y70AYExHLh" role="2ShVmc">
                            <ref role="37wK5l" to="i348:6lpwCiZjdph" resolve="RuleBuilder" />
                            <node concept="Xl_RD" id="2Y70AYExHLi" role="37wK5m">
                              <property role="Xl_RC" value="empty" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2Y70AYExHLj" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7DvO2M9IiMe" role="2Ghqu4">
                    <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7DvO2M9IiMf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9IiMg" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9IiNu" role="jymVt">
      <property role="TrG5h" value="withMacroTemplate" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7DvO2M9IiNv" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9IiNy" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9IiNz" role="3cpWs9">
            <property role="TrG5h" value="macroTemplate" />
            <node concept="3uibUv" id="7DvO2M9IiN$" role="1tU5fm">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
              <node concept="16syzq" id="7DvO2M9IiN_" role="11_B2D">
                <ref role="16sUi3" node="7DvO2M9IiNW" resolve="Cfg" />
              </node>
            </node>
            <node concept="2OqwBi" id="6UWSvq4Qt2a" role="33vP2m">
              <node concept="37vLTw" id="7DvO2Ma0lZJ" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2Ma0klb" resolve="macroTemplateIndex" />
              </node>
              <node concept="liA8E" id="6UWSvq4Qtpf" role="2OqNvi">
                <ref role="37wK5l" node="4nxCIBqy$vr" resolve="macroTemplate" />
                <node concept="37vLTw" id="6UWSvq4Qujo" role="37wK5m">
                  <ref role="3cqZAo" node="7DvO2M9IiNQ" resolve="typeConcept" />
                </node>
                <node concept="16syzq" id="7P_FdVPvn_N" role="3PaCim">
                  <ref role="16sUi3" node="7DvO2M9IiNW" resolve="Cfg" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6UWSvq4Qx$K" role="3cqZAp">
          <node concept="3K4zz7" id="6UWSvq4Q$Bf" role="3cqZAk">
            <node concept="2OqwBi" id="2Y70AYExJ3V" role="3K4GZi">
              <node concept="37vLTw" id="2Y70AYExIek" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2M9IiNS" resolve="action" />
              </node>
              <node concept="liA8E" id="2Y70AYExJU8" role="2OqNvi">
                <ref role="37wK5l" to="psr6:2Y70AYExG1D" resolve="defaultValue" />
              </node>
            </node>
            <node concept="3y3z36" id="6UWSvq4Qzuq" role="3K4Cdx">
              <node concept="10Nm6u" id="6UWSvq4Q$6Z" role="3uHU7w" />
              <node concept="37vLTw" id="6UWSvq4QyJ3" role="3uHU7B">
                <ref role="3cqZAo" node="7DvO2M9IiNz" resolve="macroTemplate" />
              </node>
            </node>
            <node concept="2OqwBi" id="6UWSvq4Q_cH" role="3K4E3e">
              <node concept="37vLTw" id="6UWSvq4Q_cI" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2M9IiNS" resolve="action" />
              </node>
              <node concept="liA8E" id="6UWSvq4Q_cJ" role="2OqNvi">
                <ref role="37wK5l" to="psr6:1eKXYsjvTXf" resolve="doAction" />
                <node concept="37vLTw" id="6UWSvq4Q_cK" role="37wK5m">
                  <ref role="3cqZAo" node="7DvO2M9IiNz" resolve="macroTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9IiNQ" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="7DvO2M9IiNR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7DvO2M9IiNS" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="7DvO2M9IiNT" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
          <node concept="16syzq" id="7DvO2M9IiNU" role="11_B2D">
            <ref role="16sUi3" node="7DvO2M9IiNY" resolve="R" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="7DvO2M9IiNV" role="3clF45">
        <ref role="16sUi3" node="7DvO2M9IiNY" resolve="R" />
      </node>
      <node concept="16euLQ" id="7DvO2M9IiNW" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="7DvO2M9IiNX" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
      <node concept="16euLQ" id="7DvO2M9IiNY" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
      <node concept="3Tm6S6" id="7DvO2M9IiNZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7DvO2M9IiO0" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9IiO1" role="jymVt">
      <property role="TrG5h" value="withMacroTemplate" />
      <node concept="37vLTG" id="7DvO2M9IiO2" role="3clF46">
        <property role="TrG5h" value="templateId" />
        <node concept="3uibUv" id="7DvO2M9IiO3" role="1tU5fm">
          <ref role="3uigEE" to="psr6:4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9IiO4" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="7DvO2M9IiO5" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
          <node concept="16syzq" id="7DvO2M9IiO6" role="11_B2D">
            <ref role="16sUi3" node="7DvO2M9IiOy" resolve="R" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="7DvO2M9IiO7" role="3clF45">
        <ref role="16sUi3" node="7DvO2M9IiOy" resolve="R" />
      </node>
      <node concept="3Tm6S6" id="7DvO2M9IiO8" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9IiO9" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9IiOc" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9IiOd" role="3cpWs9">
            <property role="TrG5h" value="macroTemplate" />
            <node concept="3uibUv" id="7DvO2M9IiOe" role="1tU5fm">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
              <node concept="16syzq" id="7DvO2M9IiOf" role="11_B2D">
                <ref role="16sUi3" node="7DvO2M9IiOw" resolve="Cfg" />
              </node>
            </node>
            <node concept="2OqwBi" id="6UWSvq4QB3K" role="33vP2m">
              <node concept="37vLTw" id="7DvO2Ma0mj_" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2Ma0klb" resolve="macroTemplateIndex" />
              </node>
              <node concept="liA8E" id="6UWSvq4QBqP" role="2OqNvi">
                <ref role="37wK5l" node="6UWSvq4Qqe$" resolve="macroTemplate" />
                <node concept="37vLTw" id="6UWSvq4QBzV" role="37wK5m">
                  <ref role="3cqZAo" node="7DvO2M9IiO2" resolve="templateId" />
                </node>
                <node concept="16syzq" id="7P_FdVPvnni" role="3PaCim">
                  <ref role="16sUi3" node="7DvO2M9IiOw" resolve="Cfg" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6UWSvq4QCub" role="3cqZAp">
          <node concept="3K4zz7" id="6UWSvq4QF6R" role="3cqZAk">
            <node concept="2OqwBi" id="2Y70AYExKWm" role="3K4GZi">
              <node concept="37vLTw" id="2Y70AYExK6g" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2M9IiO4" resolve="action" />
              </node>
              <node concept="liA8E" id="2Y70AYExLwn" role="2OqNvi">
                <ref role="37wK5l" to="psr6:2Y70AYExG1D" resolve="defaultValue" />
              </node>
            </node>
            <node concept="3y3z36" id="6UWSvq4QDQy" role="3K4Cdx">
              <node concept="10Nm6u" id="6UWSvq4QEu_" role="3uHU7w" />
              <node concept="37vLTw" id="6UWSvq4QCZK" role="3uHU7B">
                <ref role="3cqZAo" node="7DvO2M9IiOd" resolve="macroTemplate" />
              </node>
            </node>
            <node concept="2OqwBi" id="6UWSvq4QHZc" role="3K4E3e">
              <node concept="37vLTw" id="6UWSvq4QHZd" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2M9IiO4" resolve="action" />
              </node>
              <node concept="liA8E" id="6UWSvq4QHZe" role="2OqNvi">
                <ref role="37wK5l" to="psr6:1eKXYsjvTXf" resolve="doAction" />
                <node concept="37vLTw" id="6UWSvq4QHZf" role="37wK5m">
                  <ref role="3cqZAo" node="7DvO2M9IiOd" resolve="macroTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7DvO2M9IiOw" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="7DvO2M9IiOx" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
      <node concept="16euLQ" id="7DvO2M9IiOy" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7DvO2M9IiOz" role="1B3o_S" />
    <node concept="2tJIrI" id="7DvO2M9IiO$" role="jymVt" />
    <node concept="312cEg" id="7DvO2Ma0klb" role="jymVt">
      <property role="TrG5h" value="macroTemplateIndex" />
      <node concept="3Tm6S6" id="7DvO2Ma0klc" role="1B3o_S" />
      <node concept="3uibUv" id="7P_FdVPvlwo" role="1tU5fm">
        <ref role="3uigEE" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
      </node>
    </node>
    <node concept="3uibUv" id="7DvO2M9IiOV" role="1zkMxy">
      <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
    </node>
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
                        <node concept="1PaTwC" id="589APehYxOJ" role="3ndbpf">
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
          <node concept="3uibUv" id="7WKNeR93Q49" role="A3Ik2">
            <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
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
    <node concept="3clFb_" id="4t7Xo7inmSj" role="jymVt">
      <property role="TrG5h" value="byKind" />
      <node concept="37vLTG" id="4t7Xo7inmSk" role="3clF46">
        <property role="TrG5h" value="queryKind" />
        <node concept="3uibUv" id="4t7Xo7inyd1" role="1tU5fm">
          <ref role="3uigEE" to="i348:4t7Xo7inshN" resolve="QueryKind" />
        </node>
      </node>
      <node concept="3uibUv" id="4t7Xo7inmSm" role="3clF45">
        <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
      </node>
      <node concept="3Tm1VV" id="4t7Xo7inmSn" role="1B3o_S" />
      <node concept="3clFbS" id="4t7Xo7inmSo" role="3clF47">
        <node concept="3clFbF" id="4t7Xo7inmSp" role="3cqZAp">
          <node concept="3EllGN" id="4t7Xo7inmSq" role="3clFbG">
            <node concept="37vLTw" id="4t7Xo7inmSr" role="3ElVtu">
              <ref role="3cqZAo" node="4t7Xo7inmSk" resolve="queryKind" />
            </node>
            <node concept="37vLTw" id="4t7Xo7inzKG" role="3ElQJh">
              <ref role="3cqZAo" node="4t7Xo7inyhm" resolve="kind2queryTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4t7Xo7inmSi" role="jymVt" />
    <node concept="3clFb_" id="7WKNeR98sU4" role="jymVt">
      <property role="TrG5h" value="ruleTemplates" />
      <node concept="37vLTG" id="7WKNeR98uXx" role="3clF46">
        <property role="TrG5h" value="qt" />
        <node concept="3uibUv" id="6OXbTD$lcLk" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="3uibUv" id="7WKNeR98tsh" role="3clF45">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
      <node concept="3Tm1VV" id="7WKNeR98sU7" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR98sU8" role="3clF47">
        <node concept="3clFbF" id="7WKNeR98vvL" role="3cqZAp">
          <node concept="3EllGN" id="7WKNeR98vUB" role="3clFbG">
            <node concept="2OqwBi" id="6OXbTDyl7Z7" role="3ElVtu">
              <node concept="37vLTw" id="7WKNeR98vYr" role="2Oq$k0">
                <ref role="3cqZAo" node="7WKNeR98uXx" resolve="qt" />
              </node>
              <node concept="liA8E" id="6OXbTDyl8c4" role="2OqNvi">
                <ref role="37wK5l" to="i348:6OXbTD$iO0_" resolve="fqName" />
              </node>
            </node>
            <node concept="37vLTw" id="7WKNeR98vvK" role="3ElQJh">
              <ref role="3cqZAo" node="7WKNeR97s2V" resolve="queryTemplateFqname2index" />
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
          <node concept="3uibUv" id="7WKNeR96eON" role="A3Ik2">
            <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
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
            <node concept="2OqwBi" id="7WKNeR97vRO" role="33vP2m">
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
                        <node concept="liA8E" id="7WKNeR97vRW" role="2OqNvi">
                          <ref role="37wK5l" to="i348:7P_FdVPtq7Z" resolve="queryTemplates" />
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
            <node concept="3clFbJ" id="4t7Xo7in$su" role="3cqZAp">
              <node concept="3clFbS" id="4t7Xo7in$sw" role="3clFbx">
                <node concept="3clFbJ" id="7mB3viLvnft" role="3cqZAp">
                  <node concept="3clFbS" id="7mB3viLvnfv" role="3clFbx">
                    <node concept="YS8fn" id="7mB3viLvt8k" role="3cqZAp">
                      <node concept="2ShNRf" id="7mB3viLvt9c" role="YScLw">
                        <node concept="1pGfFk" id="7mB3viLvtzw" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                          <node concept="3cpWs3" id="7mB3viLvN1f" role="37wK5m">
                            <node concept="2OqwBi" id="7mB3viLvNkl" role="3uHU7w">
                              <node concept="2GrUjf" id="7mB3viLvN7U" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                              </node>
                              <node concept="liA8E" id="7mB3viLvO1o" role="2OqNvi">
                                <ref role="37wK5l" to="i348:4t7Xo7icmmF" resolve="kind" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7mB3viLvt$5" role="3uHU7B">
                              <property role="Xl_RC" value="conflicting queries of kind: " />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7mB3viLvqxl" role="3clFbw">
                    <node concept="37vLTw" id="7mB3viLvp5b" role="2Oq$k0">
                      <ref role="3cqZAo" node="4t7Xo7inyhm" resolve="kind2queryTemplate" />
                    </node>
                    <node concept="2Nt0df" id="7mB3viLvr4s" role="2OqNvi">
                      <node concept="2OqwBi" id="7mB3viLvrfQ" role="38cxEo">
                        <node concept="2GrUjf" id="7mB3viLvr6Q" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                        </node>
                        <node concept="liA8E" id="7mB3viLvrTm" role="2OqNvi">
                          <ref role="37wK5l" to="i348:4t7Xo7icmmF" resolve="kind" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4t7Xo7inGd8" role="3cqZAp">
                  <node concept="37vLTI" id="4t7Xo7inJsK" role="3clFbG">
                    <node concept="2GrUjf" id="4t7Xo7inMuK" role="37vLTx">
                      <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                    </node>
                    <node concept="3EllGN" id="4t7Xo7inGyT" role="37vLTJ">
                      <node concept="2OqwBi" id="4t7Xo7inGHd" role="3ElVtu">
                        <node concept="2GrUjf" id="4t7Xo7inG__" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                        </node>
                        <node concept="liA8E" id="4t7Xo7inHtO" role="2OqNvi">
                          <ref role="37wK5l" to="i348:4t7Xo7icmmF" resolve="kind" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4t7Xo7inGd6" role="3ElQJh">
                        <ref role="3cqZAo" node="4t7Xo7inyhm" resolve="kind2queryTemplate" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4t7Xo7inBbP" role="3clFbw">
                <node concept="10Nm6u" id="4t7Xo7inFzN" role="3uHU7w" />
                <node concept="2OqwBi" id="4t7Xo7in_do" role="3uHU7B">
                  <node concept="2GrUjf" id="4t7Xo7in_5Z" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                  </node>
                  <node concept="liA8E" id="4t7Xo7in_W9" role="2OqNvi">
                    <ref role="37wK5l" to="i348:4t7Xo7icmmF" resolve="kind" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6OXbTD$owiJ" role="3cqZAp" />
            <node concept="3cpWs8" id="7WKNeR97HMt" role="3cqZAp">
              <node concept="3cpWsn" id="7WKNeR97HMu" role="3cpWs9">
                <property role="TrG5h" value="handlerFqNames" />
                <property role="3TUv4t" value="true" />
                <node concept="2hMVRd" id="7WKNeR97HL8" role="1tU5fm">
                  <node concept="17QB3L" id="7WKNeR97HLb" role="2hN53Y" />
                </node>
                <node concept="2ShNRf" id="7WKNeR97HMv" role="33vP2m">
                  <node concept="2i4dXS" id="7WKNeR97HMw" role="2ShVmc">
                    <node concept="17QB3L" id="7WKNeR97HMx" role="HW$YZ" />
                    <node concept="2OqwBi" id="7WKNeR97HMy" role="I$8f6">
                      <node concept="2GrUjf" id="7WKNeR97HMz" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                      </node>
                      <node concept="liA8E" id="7WKNeR97HM$" role="2OqNvi">
                        <ref role="37wK5l" to="i348:6OXbTD$iO0E" resolve="usedHandlersFqNames" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6OXbTD$o4WA" role="3cqZAp">
              <node concept="3cpWsn" id="6OXbTD$o4WB" role="3cpWs9">
                <property role="TrG5h" value="index" />
                <node concept="3uibUv" id="6OXbTD$o4W_" role="1tU5fm">
                  <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
                </node>
                <node concept="2ShNRf" id="6OXbTD$o4WC" role="33vP2m">
                  <node concept="YeOm9" id="6OXbTD$o4WD" role="2ShVmc">
                    <node concept="1Y3b0j" id="6OXbTD$o4WE" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
                      <ref role="37wK5l" node="7P_FdVPIH2n" resolve="RuleTemplateIndex" />
                      <node concept="3Tm1VV" id="6OXbTD$o4WF" role="1B3o_S" />
                      <node concept="37vLTw" id="6OXbTD$o4WG" role="37wK5m">
                        <ref role="3cqZAo" node="7WKNeR96eOL" resolve="manifests" />
                      </node>
                      <node concept="3clFb_" id="6OXbTD$o4WH" role="jymVt">
                        <property role="TrG5h" value="acceptRulesListTemplate" />
                        <property role="1EzhhJ" value="false" />
                        <node concept="37vLTG" id="6OXbTD$o4WI" role="3clF46">
                          <property role="TrG5h" value="ht" />
                          <node concept="3uibUv" id="6OXbTD$o4WJ" role="1tU5fm">
                            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
                          </node>
                        </node>
                        <node concept="10P_77" id="6OXbTD$o4WK" role="3clF45" />
                        <node concept="3Tmbuc" id="6OXbTD$o4WL" role="1B3o_S" />
                        <node concept="3clFbS" id="6OXbTD$o4WM" role="3clF47">
                          <node concept="1X3_iC" id="6OXbTD$o4WN" role="lGtFl">
                            <property role="3V$3am" value="statement" />
                            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                            <node concept="3clFbF" id="6OXbTD$o4WO" role="8Wnug">
                              <node concept="2OqwBi" id="6OXbTD$o4WP" role="3clFbG">
                                <node concept="37vLTw" id="6OXbTD$o4WQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7WKNeR97HMu" resolve="handlerFqNames" />
                                </node>
                                <node concept="3JPx81" id="6OXbTD$o4WR" role="2OqNvi">
                                  <node concept="2OqwBi" id="6OXbTD$o4WS" role="25WWJ7">
                                    <node concept="37vLTw" id="6OXbTD$o4WT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6OXbTD$o4WI" resolve="ht" />
                                    </node>
                                    <node concept="liA8E" id="6OXbTD$o4WU" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:7P_FdVQoZmr" resolve="fqName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6OXbTD$o4WV" role="3cqZAp">
                            <node concept="3clFbT" id="6OXbTD$o4WW" role="3clFbG">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="6OXbTD$o4WX" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7WKNeR97y2N" role="3cqZAp">
              <node concept="37vLTI" id="7WKNeR97yN$" role="3clFbG">
                <node concept="37vLTw" id="6OXbTD$o4WY" role="37vLTx">
                  <ref role="3cqZAo" node="6OXbTD$o4WB" resolve="index" />
                </node>
                <node concept="3EllGN" id="7WKNeR97yt4" role="37vLTJ">
                  <node concept="2OqwBi" id="6OXbTDyl5C1" role="3ElVtu">
                    <node concept="2GrUjf" id="7WKNeR97ywI" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7WKNeR97wDT" resolve="qt" />
                    </node>
                    <node concept="liA8E" id="6OXbTDyl6pw" role="2OqNvi">
                      <ref role="37wK5l" to="i348:6OXbTD$iO0_" resolve="fqName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7WKNeR97y2L" role="3ElQJh">
                    <ref role="3cqZAo" node="7WKNeR97s2V" resolve="queryTemplateFqname2index" />
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
    <node concept="312cEg" id="4t7Xo7inyhm" role="jymVt">
      <property role="TrG5h" value="kind2queryTemplate" />
      <node concept="3Tm6S6" id="4t7Xo7inyhn" role="1B3o_S" />
      <node concept="3rvAFt" id="4t7Xo7inyho" role="1tU5fm">
        <node concept="3uibUv" id="4t7Xo7inzDS" role="3rvQeY">
          <ref role="3uigEE" to="i348:4t7Xo7inshN" resolve="QueryKind" />
        </node>
        <node concept="3uibUv" id="4t7Xo7inyhq" role="3rvSg0">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="2ShNRf" id="4t7Xo7inyhr" role="33vP2m">
        <node concept="3rGOSV" id="4t7Xo7inyhs" role="2ShVmc">
          <node concept="3uibUv" id="4t7Xo7inzII" role="3rHrn6">
            <ref role="3uigEE" to="i348:4t7Xo7inshN" resolve="QueryKind" />
          </node>
          <node concept="3uibUv" id="4t7Xo7inyhu" role="3rHtpV">
            <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7WKNeR97s2V" role="jymVt">
      <property role="TrG5h" value="queryTemplateFqname2index" />
      <node concept="3Tm6S6" id="7WKNeR97s2W" role="1B3o_S" />
      <node concept="3rvAFt" id="7WKNeR97skz" role="1tU5fm">
        <node concept="17QB3L" id="6OXbTDyhJf2" role="3rvQeY" />
        <node concept="3uibUv" id="7WKNeR97sCA" role="3rvSg0">
          <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
        </node>
      </node>
      <node concept="2ShNRf" id="7WKNeR97tyT" role="33vP2m">
        <node concept="3rGOSV" id="7WKNeR97txW" role="2ShVmc">
          <node concept="17QB3L" id="6OXbTDyhL3B" role="3rHrn6" />
          <node concept="3uibUv" id="7WKNeR97txY" role="3rHtpV">
            <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
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
    <node concept="2tJIrI" id="qubcdtxJFT" role="jymVt" />
    <node concept="3clFb_" id="5cnt3vhfW9c" role="jymVt">
      <property role="TrG5h" value="restored" />
      <node concept="37vLTG" id="5cnt3vhfW9d" role="3clF46">
        <property role="TrG5h" value="occurrence" />
        <node concept="3uibUv" id="5cnt3vhfW9e" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3cqZAl" id="5cnt3vhfW9f" role="3clF45" />
      <node concept="3Tm1VV" id="5cnt3vhfW9g" role="1B3o_S" />
      <node concept="3clFbS" id="5cnt3vhfW9h" role="3clF47" />
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
      <node concept="3clFb_" id="1n2ZgJ3M2s0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="activate" />
        <node concept="37vLTG" id="1n2ZgJ3M2s1" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2s2" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2s3" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2s4" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2s8" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeQHM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3M2s9" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="reactivate" />
        <node concept="37vLTG" id="1n2ZgJ3M2sa" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2sb" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2sc" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2sd" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2sh" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeRah" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3M2si" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="suspend" />
        <node concept="37vLTG" id="1n2ZgJ3M2sj" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2sk" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2sl" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2sm" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2sq" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeRAS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3M2sr" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="discard" />
        <node concept="37vLTG" id="1n2ZgJ3M2ss" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="1n2ZgJ3M2st" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3M2su" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3M2sv" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3M2sz" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeS3B" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1n2ZgJ3MiVn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="trigger" />
        <node concept="37vLTG" id="4TCblo5JLfn" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="4TCblo5JLfk" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
          </node>
        </node>
        <node concept="3cqZAl" id="1n2ZgJ3MiVq" role="3clF45" />
        <node concept="3Tm1VV" id="1n2ZgJ3MiVr" role="1B3o_S" />
        <node concept="3clFbS" id="1n2ZgJ3MiVv" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeSwu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2_NfR5whEhF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="retry" />
        <node concept="37vLTG" id="2_NfR5whEhG" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2_NfR5whEhH" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
          </node>
        </node>
        <node concept="3cqZAl" id="2_NfR5whEhI" role="3clF45" />
        <node concept="3Tm1VV" id="2_NfR5whEhJ" role="1B3o_S" />
        <node concept="3clFbS" id="2_NfR5whEhN" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeSXt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48gId" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="trying" />
        <node concept="37vLTG" id="2UGjFq48gIe" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2UGjFq48gIf" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48gIg" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48gIh" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48gIl" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeTq$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2T1p0CFMNWu" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="reject" />
        <node concept="37vLTG" id="2T1p0CFMNWv" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2T1p0CFMNWw" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
          </node>
        </node>
        <node concept="3cqZAl" id="2T1p0CFMNWx" role="3clF45" />
        <node concept="3Tm1VV" id="2T1p0CFMNWy" role="1B3o_S" />
        <node concept="3clFbS" id="2T1p0CFMNWA" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeTRN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48h1G" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="finish" />
        <node concept="37vLTG" id="2UGjFq48h1H" role="3clF46">
          <property role="TrG5h" value="matchRule" />
          <node concept="3uibUv" id="2UGjFq48h1I" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48h1J" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48h1K" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48h1O" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeUla" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48k4$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="37vLTG" id="2UGjFq48k4_" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq48k4A" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48k4B" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48k4C" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48k4G" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeUMD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2UGjFq48k4H" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="2UGjFq48k4I" role="3clF46">
          <property role="TrG5h" value="result" />
          <node concept="10P_77" id="2UGjFq48k4J" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2UGjFq48k4K" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq48k4L" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3cqZAl" id="2UGjFq48k4M" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq48k4N" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq48k4R" role="3clF47" />
        <node concept="2AHcQZ" id="15BaR5AeVgk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="473$26GESAl" role="jymVt">
        <property role="TrG5h" value="feedback" />
        <node concept="3Tm1VV" id="473$26GESAn" role="1B3o_S" />
        <node concept="3cqZAl" id="473$26GESAp" role="3clF45" />
        <node concept="37vLTG" id="473$26GESAq" role="3clF46">
          <property role="TrG5h" value="feedback" />
          <node concept="3uibUv" id="473$26GESAr" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
          </node>
        </node>
        <node concept="3clFbS" id="473$26GESAt" role="3clF47" />
        <node concept="2AHcQZ" id="473$26GESAu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5cnt3vhg2Ou" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="restored" />
        <node concept="37vLTG" id="5cnt3vhg2Ov" role="3clF46">
          <property role="TrG5h" value="occurrence" />
          <node concept="3uibUv" id="5cnt3vhg2Ow" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~ConstraintOccurrence" resolve="ConstraintOccurrence" />
          </node>
        </node>
        <node concept="3cqZAl" id="5cnt3vhg2Ox" role="3clF45" />
        <node concept="3Tm1VV" id="5cnt3vhg2Oy" role="1B3o_S" />
        <node concept="3clFbS" id="5cnt3vhg2O$" role="3clF47" />
        <node concept="2AHcQZ" id="5cnt3vhg2O_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
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
                    <node concept="1PaTwC" id="589APehYxNB" role="3ndbpf">
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
    <node concept="2tJIrI" id="3o9wrC3WmVh" role="jymVt" />
    <node concept="2tJIrI" id="3GlpCDSEXkp" role="jymVt" />
    <node concept="2YIFZL" id="3o9wrC3WoA4" role="jymVt">
      <property role="TrG5h" value="severityToStatus" />
      <node concept="3clFbS" id="3o9wrC3WoA6" role="3clF47">
        <node concept="3KaCP$" id="3o9wrC3WoA7" role="3cqZAp">
          <node concept="3KbdKl" id="3o9wrC3WoA8" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoA9" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.DEBUG" resolve="DEBUG" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAa" role="3Kbo56">
              <node concept="3SKdUt" id="3o9wrC3WoAb" role="3cqZAp">
                <node concept="1PaTwC" id="3o9wrC3WoAc" role="3ndbpf">
                  <node concept="3oM_SD" id="3o9wrC3WoAd" role="1PaTwD">
                    <property role="3oM_SC" value="fall" />
                  </node>
                  <node concept="3oM_SD" id="3o9wrC3WoAe" role="1PaTwD">
                    <property role="3oM_SC" value="through" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAf" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAg" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.INFO" resolve="INFO" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAh" role="3Kbo56">
              <node concept="3cpWs6" id="3o9wrC3WoAi" role="3cqZAp">
                <node concept="Rm8GO" id="3o9wrC3WoAj" role="3cqZAk">
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAk" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAl" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.WARN" resolve="WARN" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAm" role="3Kbo56">
              <node concept="3cpWs6" id="3o9wrC3WoAn" role="3cqZAp">
                <node concept="Rm8GO" id="3o9wrC3WoAo" role="3cqZAk">
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAp" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAq" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.ERROR" resolve="ERROR" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAr" role="3Kbo56">
              <node concept="3SKdUt" id="3o9wrC3WoAs" role="3cqZAp">
                <node concept="1PaTwC" id="3o9wrC3WoAt" role="3ndbpf">
                  <node concept="3oM_SD" id="3o9wrC3WoAu" role="1PaTwD">
                    <property role="3oM_SC" value="fall" />
                  </node>
                  <node concept="3oM_SD" id="3o9wrC3WoAv" role="1PaTwD">
                    <property role="3oM_SC" value="through" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAw" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAx" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.FATAL" resolve="FATAL" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAy" role="3Kbo56">
              <node concept="3cpWs6" id="3o9wrC3WoAz" role="3cqZAp">
                <node concept="Rm8GO" id="3o9wrC3WoA$" role="3cqZAk">
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3o9wrC3WoA_" role="3KbGdf">
            <ref role="3cqZAo" node="3o9wrC3WoAF" resolve="severity" />
          </node>
          <node concept="3clFbS" id="3o9wrC3WoAA" role="3Kb1Dw">
            <node concept="YS8fn" id="3o9wrC3WoAB" role="3cqZAp">
              <node concept="2ShNRf" id="3o9wrC3WoAC" role="YScLw">
                <node concept="1pGfFk" id="3o9wrC3WoAD" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3o9wrC3WoAE" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="37vLTG" id="3o9wrC3WoAF" role="3clF46">
        <property role="TrG5h" value="severity" />
        <node concept="3uibUv" id="3o9wrC3WoAG" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3o9wrC3WoAH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3o9wrC3WmX3" role="jymVt" />
    <node concept="3Tm1VV" id="3o9wrC3s0ij" role="1B3o_S" />
    <node concept="3uibUv" id="3o9wrC3s0Vs" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Supervisor" resolve="Supervisor" />
    </node>
  </node>
  <node concept="312cEu" id="3o9wrC3sa$h">
    <property role="TrG5h" value="OriginReportingSupervisor" />
    <node concept="2tJIrI" id="3o9wrC3sdlb" role="jymVt" />
    <node concept="312cEg" id="3o9wrC3sdyr" role="jymVt">
      <property role="TrG5h" value="originIdxRef" />
      <node concept="3Tm6S6" id="3o9wrC3sdys" role="1B3o_S" />
      <node concept="3uibUv" id="3o9wrC3sdyu" role="1tU5fm">
        <ref role="3uigEE" to="18ew:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3o9wrC3sdyv" role="11_B2D">
          <ref role="3uigEE" to="ksgm:70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3o9wrC3sf7p" role="jymVt">
      <property role="TrG5h" value="mainSymbol" />
      <node concept="3Tm6S6" id="3o9wrC3sf7q" role="1B3o_S" />
      <node concept="3uibUv" id="3o9wrC3sf7s" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3sc9E" role="jymVt" />
    <node concept="3clFbW" id="3o9wrC3sd5d" role="jymVt">
      <node concept="37vLTG" id="3o9wrC3sdeo" role="3clF46">
        <property role="TrG5h" value="originIdxRef" />
        <node concept="3uibUv" id="3o9wrC3sdhn" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Reference" resolve="Reference" />
          <node concept="3uibUv" id="3o9wrC3sdjv" role="11_B2D">
            <ref role="3uigEE" to="ksgm:70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3o9wrC3sewB" role="3clF46">
        <property role="TrG5h" value="mainSymbol" />
        <node concept="3uibUv" id="3o9wrC3sf2p" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3cqZAl" id="3o9wrC3sd5f" role="3clF45" />
      <node concept="3Tm1VV" id="3o9wrC3sd5g" role="1B3o_S" />
      <node concept="3clFbS" id="3o9wrC3sd5h" role="3clF47">
        <node concept="3clFbF" id="3o9wrC3sdRe" role="3cqZAp">
          <node concept="37vLTI" id="3o9wrC3seqB" role="3clFbG">
            <node concept="37vLTw" id="3o9wrC3sev2" role="37vLTx">
              <ref role="3cqZAo" node="3o9wrC3sdeo" resolve="originIdxRef" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3se2s" role="37vLTJ">
              <node concept="Xjq3P" id="3o9wrC3sdRd" role="2Oq$k0" />
              <node concept="2OwXpG" id="3o9wrC3sedK" role="2OqNvi">
                <ref role="2Oxat5" node="3o9wrC3sdyr" resolve="originIdxRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3o9wrC3sfmP" role="3cqZAp">
          <node concept="37vLTI" id="3o9wrC3sfVK" role="3clFbG">
            <node concept="37vLTw" id="3o9wrC3sg0t" role="37vLTx">
              <ref role="3cqZAo" node="3o9wrC3sewB" resolve="mainSymbol" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3sfzt" role="37vLTJ">
              <node concept="Xjq3P" id="3o9wrC3sfmN" role="2Oq$k0" />
              <node concept="2OwXpG" id="3o9wrC3sfIR" role="2OqNvi">
                <ref role="2Oxat5" node="3o9wrC3sf7p" resolve="mainSymbol" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3sBJD" role="jymVt" />
    <node concept="3clFbW" id="3o9wrC3sC_c" role="jymVt">
      <node concept="37vLTG" id="3o9wrC3sDaO" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="3o9wrC3sDdL" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
        </node>
      </node>
      <node concept="3cqZAl" id="3o9wrC3sC_e" role="3clF45" />
      <node concept="3Tm1VV" id="3o9wrC3sC_f" role="1B3o_S" />
      <node concept="3clFbS" id="3o9wrC3sC_g" role="3clF47">
        <node concept="3clFbF" id="3o9wrC3sGvK" role="3cqZAp">
          <node concept="37vLTI" id="3o9wrC3sGGj" role="3clFbG">
            <node concept="37vLTw" id="3o9wrC3sGvI" role="37vLTJ">
              <ref role="3cqZAo" node="3o9wrC3sdyr" resolve="originIdxRef" />
            </node>
            <node concept="2ShNRf" id="3o9wrC3sIic" role="37vLTx">
              <node concept="1pGfFk" id="3o9wrC3sIid" role="2ShVmc">
                <ref role="37wK5l" to="18ew:~Reference.&lt;init&gt;()" resolve="Reference" />
                <node concept="3uibUv" id="3o9wrC3sIie" role="1pMfVU">
                  <ref role="3uigEE" to="ksgm:70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3o9wrC3sGiI" role="3cqZAp">
          <node concept="3clFbS" id="3o9wrC3sGiJ" role="3clFbx">
            <node concept="3cpWs8" id="3o9wrC3sGiK" role="3cqZAp">
              <node concept="3cpWsn" id="3o9wrC3sGiL" role="3cpWs9">
                <property role="TrG5h" value="pex" />
                <node concept="3uibUv" id="3o9wrC3sGiM" role="1tU5fm">
                  <ref role="3uigEE" to="ksgm:7eGEHDlcEJ0" resolve="CodeRulesProgram" />
                </node>
                <node concept="1eOMI4" id="3o9wrC3sGiN" role="33vP2m">
                  <node concept="10QFUN" id="3o9wrC3sGiO" role="1eOMHV">
                    <node concept="3uibUv" id="3o9wrC3sGiP" role="10QFUM">
                      <ref role="3uigEE" to="ksgm:7eGEHDlcEJ0" resolve="CodeRulesProgram" />
                    </node>
                    <node concept="37vLTw" id="3o9wrC3sGiQ" role="10QFUP">
                      <ref role="3cqZAo" node="3o9wrC3sDaO" resolve="program" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3o9wrC3sGiR" role="3cqZAp">
              <node concept="2OqwBi" id="3o9wrC3sGiS" role="3clFbG">
                <node concept="37vLTw" id="3o9wrC3sIjP" role="2Oq$k0">
                  <ref role="3cqZAo" node="3o9wrC3sdyr" resolve="originIdxRef" />
                </node>
                <node concept="liA8E" id="3o9wrC3sGiU" role="2OqNvi">
                  <ref role="37wK5l" to="18ew:~Reference.set(java.lang.Object)" resolve="set" />
                  <node concept="2OqwBi" id="3o9wrC3sGiV" role="37wK5m">
                    <node concept="37vLTw" id="3o9wrC3sGiW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3o9wrC3sGiL" resolve="pex" />
                    </node>
                    <node concept="liA8E" id="3o9wrC3sGiX" role="2OqNvi">
                      <ref role="37wK5l" to="ksgm:70Wv0dJiKW2" resolve="originIndex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3o9wrC3sGiY" role="3clFbw">
            <node concept="3uibUv" id="3o9wrC3sGiZ" role="2ZW6by">
              <ref role="3uigEE" to="ksgm:7eGEHDlcEJ0" resolve="CodeRulesProgram" />
            </node>
            <node concept="37vLTw" id="3o9wrC3sGj0" role="2ZW6bz">
              <ref role="3cqZAo" node="3o9wrC3sDaO" resolve="program" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3o9wrC3sJMD" role="3cqZAp" />
        <node concept="3clFbF" id="3o9wrC3tKav" role="3cqZAp">
          <node concept="37vLTI" id="3o9wrC3tKS$" role="3clFbG">
            <node concept="2OqwBi" id="3o9wrC3tKo1" role="37vLTJ">
              <node concept="Xjq3P" id="3o9wrC3tKat" role="2Oq$k0" />
              <node concept="2OwXpG" id="3o9wrC3tK$H" role="2OqNvi">
                <ref role="2Oxat5" node="3o9wrC3sf7p" resolve="mainSymbol" />
              </node>
            </node>
            <node concept="2ShNRf" id="3o9wrC3sJQp" role="37vLTx">
              <node concept="1pGfFk" id="3o9wrC3sJQq" role="2ShVmc">
                <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                <node concept="Xl_RD" id="3o9wrC3sJQr" role="37wK5m">
                  <property role="Xl_RC" value="main" />
                </node>
                <node concept="3cmrfG" id="3o9wrC3sJQs" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3scoX" role="jymVt" />
    <node concept="3clFb_" id="4jcOV4hNvgm" role="jymVt">
      <property role="TrG5h" value="handleFeedback" />
      <node concept="3Tm1VV" id="4jcOV4hNvgn" role="1B3o_S" />
      <node concept="10P_77" id="4jcOV4hNvgp" role="3clF45" />
      <node concept="37vLTG" id="4jcOV4hNvgq" role="3clF46">
        <property role="TrG5h" value="ruleMatch" />
        <node concept="3uibUv" id="3o9wrC3V$uM" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
        </node>
      </node>
      <node concept="37vLTG" id="4jcOV4hNvgs" role="3clF46">
        <property role="TrG5h" value="feedback" />
        <node concept="3uibUv" id="4jcOV4hNvgt" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
        </node>
      </node>
      <node concept="3clFbS" id="4jcOV4hNvgu" role="3clF47">
        <node concept="3clFbH" id="4jcOV4hNws0" role="3cqZAp" />
        <node concept="3cpWs8" id="3o9wrC3VA4U" role="3cqZAp">
          <node concept="3cpWsn" id="3o9wrC3VA4V" role="3cpWs9">
            <property role="TrG5h" value="rule" />
            <node concept="3uibUv" id="3o9wrC3VA4W" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3VAvJ" role="33vP2m">
              <node concept="37vLTw" id="3o9wrC3VAoM" role="2Oq$k0">
                <ref role="3cqZAo" node="4jcOV4hNvgq" resolve="ruleMatch" />
              </node>
              <node concept="liA8E" id="3o9wrC3VAAk" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~RuleMatch.rule()" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4jcOV4hNvEG" role="3cqZAp">
          <node concept="3clFbS" id="4jcOV4hNvEH" role="3clFbx">
            <node concept="3cpWs8" id="4jcOV4hNvEI" role="3cqZAp">
              <node concept="3cpWsn" id="4jcOV4hNvEJ" role="3cpWs9">
                <property role="TrG5h" value="principal" />
                <node concept="10P_77" id="4jcOV4hNvEK" role="1tU5fm" />
                <node concept="2OqwBi" id="4jcOV4hNvEL" role="33vP2m">
                  <node concept="2OqwBi" id="4jcOV4hNvEM" role="2Oq$k0">
                    <node concept="37vLTw" id="3o9wrC3sgaG" role="2Oq$k0">
                      <ref role="3cqZAo" node="3o9wrC3sdyr" resolve="originIdxRef" />
                    </node>
                    <node concept="liA8E" id="4jcOV4hNvEO" role="2OqNvi">
                      <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4jcOV4hNvEP" role="2OqNvi">
                    <ref role="37wK5l" to="ksgm:70Wv0dJhQbd" resolve="isPrincipal" />
                    <node concept="2OqwBi" id="4jcOV4hNvEQ" role="37wK5m">
                      <node concept="1eOMI4" id="4jcOV4hNvER" role="2Oq$k0">
                        <node concept="10QFUN" id="4jcOV4hNvES" role="1eOMHV">
                          <node concept="3uibUv" id="4jcOV4hNvET" role="10QFUM">
                            <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                          </node>
                          <node concept="37vLTw" id="3o9wrC3VKVS" role="10QFUP">
                            <ref role="3cqZAo" node="3o9wrC3VA4V" resolve="rule" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4jcOV4hNvEV" role="2OqNvi">
                        <ref role="37wK5l" to="i348:7nPD14Ob4em" resolve="originRef" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4jcOV4hNvEW" role="3cqZAp">
              <node concept="3cpWsn" id="4jcOV4hNvEX" role="3cpWs9">
                <property role="TrG5h" value="head" />
                <node concept="_YKpA" id="4jcOV4hNvEY" role="1tU5fm">
                  <node concept="3uibUv" id="4jcOV4hNvEZ" role="_ZDj9">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4jcOV4hNvF0" role="33vP2m">
                  <node concept="2OqwBi" id="4jcOV4hNvF1" role="2Oq$k0">
                    <node concept="1eOMI4" id="4jcOV4hNvF2" role="2Oq$k0">
                      <node concept="10QFUN" id="4jcOV4hNvF3" role="1eOMHV">
                        <node concept="A3Dl8" id="4jcOV4hNvF4" role="10QFUM">
                          <node concept="3uibUv" id="4jcOV4hNvF5" role="A3Ik2">
                            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4jcOV4hNvF6" role="10QFUP">
                          <node concept="37vLTw" id="3o9wrC3VABS" role="2Oq$k0">
                            <ref role="3cqZAo" node="3o9wrC3VA4V" resolve="rule" />
                          </node>
                          <node concept="liA8E" id="4jcOV4hNvF8" role="2OqNvi">
                            <ref role="37wK5l" to="av0y:~Rule.headKept()" resolve="headKept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3QWeyG" id="4jcOV4hNvF9" role="2OqNvi">
                      <node concept="10QFUN" id="4jcOV4hNvFa" role="576Qk">
                        <node concept="A3Dl8" id="4jcOV4hNvFb" role="10QFUM">
                          <node concept="3uibUv" id="4jcOV4hNvFc" role="A3Ik2">
                            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4jcOV4hNvFd" role="10QFUP">
                          <node concept="37vLTw" id="3o9wrC3VB0K" role="2Oq$k0">
                            <ref role="3cqZAo" node="3o9wrC3VA4V" resolve="rule" />
                          </node>
                          <node concept="liA8E" id="4jcOV4hNvFf" role="2OqNvi">
                            <ref role="37wK5l" to="av0y:~Rule.headReplaced()" resolve="headReplaced" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="4jcOV4hNvFg" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4jcOV4hNvFh" role="3cqZAp">
              <node concept="3cpWsn" id="4jcOV4hNvFi" role="3cpWs9">
                <property role="TrG5h" value="onStart" />
                <node concept="10P_77" id="4jcOV4hNvFj" role="1tU5fm" />
                <node concept="1Wc70l" id="4jcOV4hNvFk" role="33vP2m">
                  <node concept="2OqwBi" id="4jcOV4hNvFl" role="3uHU7w">
                    <node concept="2OqwBi" id="4jcOV4hNvFm" role="2Oq$k0">
                      <node concept="1y4W85" id="4jcOV4hNvFn" role="2Oq$k0">
                        <node concept="3cmrfG" id="4jcOV4hNvFo" role="1y58nS">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="4jcOV4hNvFp" role="1y566C">
                          <ref role="3cqZAo" node="4jcOV4hNvEX" resolve="head" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4jcOV4hNvFq" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4jcOV4hNvFr" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="3o9wrC3sghu" role="37wK5m">
                        <ref role="3cqZAo" node="3o9wrC3sf7p" resolve="mainSymbol" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="4jcOV4hNvFt" role="3uHU7B">
                    <node concept="2OqwBi" id="4jcOV4hNvFu" role="3uHU7B">
                      <node concept="37vLTw" id="4jcOV4hNvFv" role="2Oq$k0">
                        <ref role="3cqZAo" node="4jcOV4hNvEX" resolve="head" />
                      </node>
                      <node concept="34oBXx" id="4jcOV4hNvFw" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="4jcOV4hNvFx" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4jcOV4hNvFy" role="3cqZAp" />
            <node concept="3clFbJ" id="4jcOV4hNvFz" role="3cqZAp">
              <node concept="3clFbS" id="4jcOV4hNvF$" role="3clFbx">
                <node concept="3SKdUt" id="4jcOV4hNvF_" role="3cqZAp">
                  <node concept="1PaTwC" id="589APehYxNF" role="3ndbpf">
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
                <node concept="3clFbF" id="4jcOV4hNvFB" role="3cqZAp">
                  <node concept="2OqwBi" id="4jcOV4hNvFC" role="3clFbG">
                    <node concept="liA8E" id="4jcOV4hNvFH" role="2OqNvi">
                      <ref role="37wK5l" to="9x2e:oI9Ys2ypk" resolve="report" />
                      <node concept="2YIFZM" id="3o9wrC3WpK5" role="37wK5m">
                        <ref role="1Pybhc" node="3o9wrC3s0ii" resolve="DefaultSupervisor" />
                        <ref role="37wK5l" node="3o9wrC3WoA4" resolve="severityToStatus" />
                        <node concept="2OqwBi" id="3o9wrC3WpK6" role="37wK5m">
                          <node concept="37vLTw" id="3o9wrC3WpK7" role="2Oq$k0">
                            <ref role="3cqZAo" node="4jcOV4hNvgs" resolve="feedback" />
                          </node>
                          <node concept="liA8E" id="3o9wrC3WpK8" role="2OqNvi">
                            <ref role="37wK5l" to="w7la:~EvaluationFeedback.getSeverity()" resolve="getSeverity" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4jcOV4hNvFJ" role="37wK5m">
                        <node concept="1eOMI4" id="4jcOV4hNvFK" role="2Oq$k0">
                          <node concept="10QFUN" id="4jcOV4hNvFL" role="1eOMHV">
                            <node concept="3uibUv" id="4jcOV4hNvFM" role="10QFUM">
                              <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                            </node>
                            <node concept="37vLTw" id="3o9wrC3VL2v" role="10QFUP">
                              <ref role="3cqZAo" node="3o9wrC3VA4V" resolve="rule" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4jcOV4hNvFO" role="2OqNvi">
                          <ref role="37wK5l" to="i348:7nPD14Ob4em" resolve="originRef" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4jcOV4hNvFP" role="37wK5m">
                        <node concept="37vLTw" id="4jcOV4hNGq$" role="2Oq$k0">
                          <ref role="3cqZAo" node="4jcOV4hNvgs" resolve="feedback" />
                        </node>
                        <node concept="liA8E" id="4jcOV4hNvFR" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~EvaluationFeedback.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="oI9YrWf2v" role="2Oq$k0">
                      <node concept="2YIFZM" id="oI9YrWf2w" role="2Oq$k0">
                        <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                        <ref role="37wK5l" to="w7la:~EvaluationSession.current()" resolve="current" />
                      </node>
                      <node concept="liA8E" id="3GEs5q_4fTI" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~EvaluationSession.parameter(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$ParameterKey)" resolve="parameter" />
                        <node concept="2YIFZM" id="3GEs5q_4fTJ" role="37wK5m">
                          <ref role="37wK5l" to="w7la:~EvaluationSession$ParameterKey.of(java.lang.String,java.lang.Class)" resolve="of" />
                          <ref role="1Pybhc" to="w7la:~EvaluationSession$ParameterKey" resolve="EvaluationSession.ParameterKey" />
                          <node concept="Xl_RD" id="3GEs5q_4fTK" role="37wK5m">
                            <property role="Xl_RC" value="reporting" />
                          </node>
                          <node concept="3VsKOn" id="3GEs5q_4fTL" role="37wK5m">
                            <ref role="3VsUkX" to="9x2e:oI9YrIZeS" resolve="Reporting" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4jcOV4hN_30" role="3cqZAp" />
                <node concept="3cpWs6" id="4jcOV4hNvFS" role="3cqZAp">
                  <node concept="3clFbT" id="4jcOV4hND48" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="4jcOV4hNvFV" role="3clFbw">
                <node concept="37vLTw" id="4jcOV4hNvFW" role="3uHU7w">
                  <ref role="3cqZAo" node="4jcOV4hNvFi" resolve="onStart" />
                </node>
                <node concept="37vLTw" id="4jcOV4hNvFX" role="3uHU7B">
                  <ref role="3cqZAo" node="4jcOV4hNvEJ" resolve="principal" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4jcOV4hNvFY" role="3clFbw">
            <node concept="1Wc70l" id="4jcOV4hNvFZ" role="3uHU7B">
              <node concept="2ZW3vV" id="4jcOV4hNvG0" role="3uHU7w">
                <node concept="3uibUv" id="4jcOV4hNvG1" role="2ZW6by">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
                <node concept="37vLTw" id="3o9wrC3VKRp" role="2ZW6bz">
                  <ref role="3cqZAo" node="3o9wrC3VA4V" resolve="rule" />
                </node>
              </node>
              <node concept="3y3z36" id="4jcOV4hNvG3" role="3uHU7B">
                <node concept="10Nm6u" id="4jcOV4hNvG4" role="3uHU7w" />
                <node concept="2OqwBi" id="4jcOV4hNvG5" role="3uHU7B">
                  <node concept="37vLTw" id="3o9wrC3sg2u" role="2Oq$k0">
                    <ref role="3cqZAo" node="3o9wrC3sdyr" resolve="originIdxRef" />
                  </node>
                  <node concept="liA8E" id="4jcOV4hNvG7" role="2OqNvi">
                    <ref role="37wK5l" to="18ew:~Reference.get()" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4jcOV4hNvG8" role="3uHU7w">
              <node concept="10Nm6u" id="4jcOV4hNvG9" role="3uHU7w" />
              <node concept="2OqwBi" id="4jcOV4hNvGa" role="3uHU7B">
                <node concept="1eOMI4" id="4jcOV4hNvGb" role="2Oq$k0">
                  <node concept="10QFUN" id="4jcOV4hNvGc" role="1eOMHV">
                    <node concept="3uibUv" id="4jcOV4hNvGd" role="10QFUM">
                      <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                    </node>
                    <node concept="37vLTw" id="3o9wrC3VKM9" role="10QFUP">
                      <ref role="3cqZAo" node="3o9wrC3VA4V" resolve="rule" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4jcOV4hNvGf" role="2OqNvi">
                  <ref role="37wK5l" to="i348:7nPD14Ob4em" resolve="originRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4jcOV4hNDC1" role="3cqZAp" />
        <node concept="3cpWs6" id="4jcOV4hNzSP" role="3cqZAp">
          <node concept="3clFbT" id="4jcOV4hNzT_" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3o9wrC3scyf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3sbje" role="jymVt" />
    <node concept="3Tm1VV" id="3o9wrC3sa$i" role="1B3o_S" />
    <node concept="3uibUv" id="3o9wrC3saA3" role="1zkMxy">
      <ref role="3uigEE" node="3o9wrC3s0ii" resolve="DefaultSupervisor" />
    </node>
  </node>
  <node concept="312cEu" id="3o9wrC3VM3U">
    <property role="TrG5h" value="PrincipalNodeReportingSupervisor" />
    <node concept="312cEg" id="3o9wrC3VO0X" role="jymVt">
      <property role="TrG5h" value="ispec" />
      <node concept="3Tm6S6" id="3o9wrC3VNvy" role="1B3o_S" />
      <node concept="3uibUv" id="3o9wrC3VO0_" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
      </node>
    </node>
    <node concept="312cEg" id="3o9wrC3VMf9" role="jymVt">
      <property role="TrG5h" value="mainSymbol" />
      <node concept="3Tm6S6" id="3o9wrC3VMfa" role="1B3o_S" />
      <node concept="3uibUv" id="3o9wrC3VMfb" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="3o9wrC3VMfA" role="jymVt" />
    <node concept="3clFbW" id="3o9wrC3VMfB" role="jymVt">
      <node concept="37vLTG" id="3o9wrC3W9cf" role="3clF46">
        <property role="TrG5h" value="ispec" />
        <node concept="3uibUv" id="3o9wrC3W9cg" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
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
        <node concept="3clFbF" id="3o9wrC3VMg7" role="3cqZAp">
          <node concept="37vLTI" id="3o9wrC3VMg8" role="3clFbG">
            <node concept="2OqwBi" id="3o9wrC3VMg9" role="37vLTJ">
              <node concept="Xjq3P" id="3o9wrC3VMga" role="2Oq$k0" />
              <node concept="2OwXpG" id="3o9wrC3VMgb" role="2OqNvi">
                <ref role="2Oxat5" node="3o9wrC3VMf9" resolve="mainSymbol" />
              </node>
            </node>
            <node concept="2ShNRf" id="3o9wrC3VMgc" role="37vLTx">
              <node concept="1pGfFk" id="3o9wrC3VMgd" role="2ShVmc">
                <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                <node concept="Xl_RD" id="3o9wrC3VMge" role="37wK5m">
                  <property role="Xl_RC" value="main" />
                </node>
                <node concept="3cmrfG" id="3o9wrC3VMgf" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
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
        <node concept="3uibUv" id="3o9wrC3VMgn" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~RuleMatch" resolve="RuleMatch" />
        </node>
      </node>
      <node concept="37vLTG" id="3o9wrC3VMgo" role="3clF46">
        <property role="TrG5h" value="feedback" />
        <node concept="3uibUv" id="3o9wrC3VMgp" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
        </node>
      </node>
      <node concept="3clFbS" id="3o9wrC3VMgq" role="3clF47">
        <node concept="3clFbH" id="3o9wrC3VMgr" role="3cqZAp" />
        <node concept="3cpWs8" id="3o9wrC3VMgs" role="3cqZAp">
          <node concept="3cpWsn" id="3o9wrC3VMgt" role="3cpWs9">
            <property role="TrG5h" value="rule" />
            <node concept="3uibUv" id="3o9wrC3VMgu" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
            </node>
            <node concept="2OqwBi" id="3o9wrC3VMgv" role="33vP2m">
              <node concept="37vLTw" id="3o9wrC3VMgw" role="2Oq$k0">
                <ref role="3cqZAo" node="3o9wrC3VMgm" resolve="ruleMatch" />
              </node>
              <node concept="liA8E" id="3o9wrC3VMgx" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~RuleMatch.rule()" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3o9wrC3VMgy" role="3cqZAp">
          <node concept="3clFbS" id="3o9wrC3VMgz" role="3clFbx">
            <node concept="3cpWs8" id="3o9wrC3WcLq" role="3cqZAp">
              <node concept="3cpWsn" id="3o9wrC3WcLt" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="2sp9CU" id="3o9wrC3Wd1k" role="1tU5fm" />
                <node concept="2OqwBi" id="3o9wrC3VMid" role="33vP2m">
                  <node concept="1eOMI4" id="3o9wrC3VMie" role="2Oq$k0">
                    <node concept="10QFUN" id="3o9wrC3VMif" role="1eOMHV">
                      <node concept="3uibUv" id="3o9wrC3VMig" role="10QFUM">
                        <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                      </node>
                      <node concept="37vLTw" id="3o9wrC3VMih" role="10QFUP">
                        <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3o9wrC3VMii" role="2OqNvi">
                    <ref role="37wK5l" to="i348:7nPD14Ob4em" resolve="originRef" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3o9wrC3WedI" role="3cqZAp">
              <node concept="3clFbS" id="3o9wrC3WedK" role="3clFbx">
                <node concept="1X3_iC" id="3o9wrC3Wkvr" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3cpWs8" id="3o9wrC3VMgM" role="8Wnug">
                    <node concept="3cpWsn" id="3o9wrC3VMgN" role="3cpWs9">
                      <property role="TrG5h" value="head" />
                      <node concept="_YKpA" id="3o9wrC3VMgO" role="1tU5fm">
                        <node concept="3uibUv" id="3o9wrC3VMgP" role="_ZDj9">
                          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3o9wrC3VMgQ" role="33vP2m">
                        <node concept="2OqwBi" id="3o9wrC3VMgR" role="2Oq$k0">
                          <node concept="1eOMI4" id="3o9wrC3VMgS" role="2Oq$k0">
                            <node concept="10QFUN" id="3o9wrC3VMgT" role="1eOMHV">
                              <node concept="A3Dl8" id="3o9wrC3VMgU" role="10QFUM">
                                <node concept="3uibUv" id="3o9wrC3VMgV" role="A3Ik2">
                                  <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="3o9wrC3VMgW" role="10QFUP">
                                <node concept="37vLTw" id="3o9wrC3VMgX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
                                </node>
                                <node concept="liA8E" id="3o9wrC3VMgY" role="2OqNvi">
                                  <ref role="37wK5l" to="av0y:~Rule.headKept()" resolve="headKept" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3QWeyG" id="3o9wrC3VMgZ" role="2OqNvi">
                            <node concept="10QFUN" id="3o9wrC3VMh0" role="576Qk">
                              <node concept="A3Dl8" id="3o9wrC3VMh1" role="10QFUM">
                                <node concept="3uibUv" id="3o9wrC3VMh2" role="A3Ik2">
                                  <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="3o9wrC3VMh3" role="10QFUP">
                                <node concept="37vLTw" id="3o9wrC3VMh4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
                                </node>
                                <node concept="liA8E" id="3o9wrC3VMh5" role="2OqNvi">
                                  <ref role="37wK5l" to="av0y:~Rule.headReplaced()" resolve="headReplaced" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="3o9wrC3VMh6" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="3o9wrC3Wke8" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3cpWs8" id="3o9wrC3VMh7" role="8Wnug">
                    <node concept="3cpWsn" id="3o9wrC3VMh8" role="3cpWs9">
                      <property role="TrG5h" value="onStart" />
                      <node concept="10P_77" id="3o9wrC3VMh9" role="1tU5fm" />
                      <node concept="1Wc70l" id="3o9wrC3VMha" role="33vP2m">
                        <node concept="2OqwBi" id="3o9wrC3VMhb" role="3uHU7w">
                          <node concept="2OqwBi" id="3o9wrC3VMhc" role="2Oq$k0">
                            <node concept="1y4W85" id="3o9wrC3VMhd" role="2Oq$k0">
                              <node concept="3cmrfG" id="3o9wrC3VMhe" role="1y58nS">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="3o9wrC3VMhf" role="1y566C">
                                <ref role="3cqZAo" node="3o9wrC3VMgN" resolve="head" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3o9wrC3VMhg" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3o9wrC3VMhh" role="2OqNvi">
                            <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object)" resolve="equals" />
                            <node concept="37vLTw" id="3o9wrC3VMhi" role="37wK5m">
                              <ref role="3cqZAo" node="3o9wrC3VMf9" resolve="mainSymbol" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="3o9wrC3VMhj" role="3uHU7B">
                          <node concept="2OqwBi" id="3o9wrC3VMhk" role="3uHU7B">
                            <node concept="37vLTw" id="3o9wrC3VMhl" role="2Oq$k0">
                              <ref role="3cqZAo" node="3o9wrC3VMgN" resolve="head" />
                            </node>
                            <node concept="34oBXx" id="3o9wrC3VMhm" role="2OqNvi" />
                          </node>
                          <node concept="3cmrfG" id="3o9wrC3VMhn" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3o9wrC3WiBc" role="3cqZAp" />
                <node concept="3SKdUt" id="3o9wrC3VMhr" role="3cqZAp">
                  <node concept="1PaTwC" id="3o9wrC3VMhs" role="3ndbpf">
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
                <node concept="3clFbF" id="3o9wrC3VMh_" role="3cqZAp">
                  <node concept="2OqwBi" id="3o9wrC3VMhA" role="3clFbG">
                    <node concept="liA8E" id="3o9wrC3VMhB" role="2OqNvi">
                      <ref role="37wK5l" to="9x2e:oI9Ys2ypk" resolve="report" />
                      <node concept="2YIFZM" id="3o9wrC3Ws5b" role="37wK5m">
                        <ref role="1Pybhc" node="3o9wrC3s0ii" resolve="DefaultSupervisor" />
                        <ref role="37wK5l" node="3o9wrC3WoA4" resolve="severityToStatus" />
                        <node concept="2OqwBi" id="3o9wrC3Ws5c" role="37wK5m">
                          <node concept="37vLTw" id="3o9wrC3Ws5d" role="2Oq$k0">
                            <ref role="3cqZAo" node="3o9wrC3VMgo" resolve="feedback" />
                          </node>
                          <node concept="liA8E" id="3o9wrC3Ws5e" role="2OqNvi">
                            <ref role="37wK5l" to="w7la:~EvaluationFeedback.getSeverity()" resolve="getSeverity" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3o9wrC3WkK6" role="37wK5m">
                        <ref role="3cqZAo" node="3o9wrC3WcLt" resolve="target" />
                      </node>
                      <node concept="2OqwBi" id="3o9wrC3VMhM" role="37wK5m">
                        <node concept="37vLTw" id="3o9wrC3VMhN" role="2Oq$k0">
                          <ref role="3cqZAo" node="3o9wrC3VMgo" resolve="feedback" />
                        </node>
                        <node concept="liA8E" id="3o9wrC3VMhO" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~EvaluationFeedback.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3o9wrC3VMhP" role="2Oq$k0">
                      <node concept="2YIFZM" id="3o9wrC3VMhQ" role="2Oq$k0">
                        <ref role="37wK5l" to="w7la:~EvaluationSession.current()" resolve="current" />
                        <ref role="1Pybhc" to="w7la:~EvaluationSession" resolve="EvaluationSession" />
                      </node>
                      <node concept="liA8E" id="3o9wrC3VMhR" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~EvaluationSession.parameter(jetbrains.mps.logic.reactor.evaluation.EvaluationSession$ParameterKey)" resolve="parameter" />
                        <node concept="2YIFZM" id="3o9wrC3VMhS" role="37wK5m">
                          <ref role="37wK5l" to="w7la:~EvaluationSession$ParameterKey.of(java.lang.String,java.lang.Class)" resolve="of" />
                          <ref role="1Pybhc" to="w7la:~EvaluationSession$ParameterKey" resolve="EvaluationSession.ParameterKey" />
                          <node concept="Xl_RD" id="3o9wrC3VMhT" role="37wK5m">
                            <property role="Xl_RC" value="reporting" />
                          </node>
                          <node concept="3VsKOn" id="3o9wrC3VMhU" role="37wK5m">
                            <ref role="3VsUkX" to="9x2e:oI9YrIZeS" resolve="Reporting" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3o9wrC3VMhV" role="3cqZAp" />
                <node concept="3cpWs6" id="3o9wrC3VMhW" role="3cqZAp">
                  <node concept="3clFbT" id="3o9wrC3VMhX" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3o9wrC3VMib" role="3clFbw">
                <node concept="10Nm6u" id="3o9wrC3VMic" role="3uHU7w" />
                <node concept="37vLTw" id="3o9wrC3Weya" role="3uHU7B">
                  <ref role="3cqZAo" node="3o9wrC3WcLt" resolve="target" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3o9wrC3VMi2" role="3clFbw">
            <node concept="2ZW3vV" id="3o9wrC3VMi3" role="3uHU7w">
              <node concept="3uibUv" id="3o9wrC3VMi4" role="2ZW6by">
                <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
              </node>
              <node concept="37vLTw" id="3o9wrC3VMi5" role="2ZW6bz">
                <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
              </node>
            </node>
            <node concept="2OqwBi" id="3o9wrC3WaRP" role="3uHU7B">
              <node concept="37vLTw" id="3o9wrC3WaxE" role="2Oq$k0">
                <ref role="3cqZAo" node="3o9wrC3VO0X" resolve="ispec" />
              </node>
              <node concept="liA8E" id="3o9wrC3Wbds" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~IncrementalProgramSpec.isPrincipal(jetbrains.mps.logic.reactor.program.Rule)" resolve="isPrincipal" />
                <node concept="37vLTw" id="3o9wrC3Wbi1" role="37wK5m">
                  <ref role="3cqZAo" node="3o9wrC3VMgt" resolve="rule" />
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
    <node concept="3Tm1VV" id="3o9wrC3VM3V" role="1B3o_S" />
    <node concept="3uibUv" id="3o9wrC3WiX8" role="1zkMxy">
      <ref role="3uigEE" node="3o9wrC3s0ii" resolve="DefaultSupervisor" />
    </node>
  </node>
</model>

