<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.typesystem2.evaluation)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="2" />
    <use id="0b80a2e8-f9f1-47b3-823f-56eb115bca42" name="jetbrains.mps.typechecking.annotation" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.rule)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)" />
    <import index="7n8k" ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.builtin.program)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.macro)" />
    <import index="6pyv" ref="r:e418ad23-36dc-4ed0-b837-26a7fd157da3(jetbrains.mps.lang.typesystem2.program)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.typesystem2.evaluation)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
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
      <concept id="2217234381367530195" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference" flags="ng" index="VXe0Z">
        <reference id="2217234381367530196" name="methodDeclaration" index="VXe0S" />
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
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
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
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
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
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
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
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
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
          <node concept="10M0yZ" id="5WBVN_M2xHI" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5WBVN_M2qrL" resolve="EVAL_SYM" />
            <ref role="1PxDUh" to="cxk7:5WBVN_M1SJ9" resolve="EvalExpressionPredicate" />
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
                      <ref role="37wK5l" to="6pyv:4sSe4$oM2rk" resolve="ConstraintBuilder" />
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
                    <ref role="37wK5l" to="6pyv:4sSe4$oM2zI" resolve="toConstraint" />
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
    <property role="1sVAO0" value="true" />
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
    <node concept="312cEu" id="4UTrqZZNVSJ" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ALL_DEEP" />
      <node concept="2tJIrI" id="4UTrqZZNWpU" role="jymVt" />
      <node concept="3clFbW" id="4UTrqZZNYyd" role="jymVt">
        <node concept="37vLTG" id="4UTrqZZNZcY" role="3clF46">
          <property role="TrG5h" value="root" />
          <node concept="3Tqbb2" id="4UTrqZZNZjN" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4UTrqZZNYZf" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="4UTrqZZNYZg" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="4UTrqZZNZlu" role="11_B2D">
              <ref role="16sUi3" node="4UTrqZZNWwV" resolve="S" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4UTrqZZNYyf" role="3clF45" />
        <node concept="3Tm1VV" id="4UTrqZZNYyg" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZNYyh" role="3clF47">
          <node concept="XkiVB" id="4UTrqZZNYRo" role="3cqZAp">
            <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
            <node concept="37vLTw" id="4UTrqZZNZus" role="37wK5m">
              <ref role="3cqZAo" node="4UTrqZZNYZf" resolve="action" />
            </node>
          </node>
          <node concept="3clFbF" id="4UTrqZZNZvn" role="3cqZAp">
            <node concept="37vLTI" id="4UTrqZZNZvp" role="3clFbG">
              <node concept="2OqwBi" id="4UTrqZZNZGA" role="37vLTJ">
                <node concept="Xjq3P" id="4UTrqZZNZIx" role="2Oq$k0" />
                <node concept="2OwXpG" id="4UTrqZZNZGD" role="2OqNvi">
                  <ref role="2Oxat5" node="4UTrqZZNZvj" resolve="root" />
                </node>
              </node>
              <node concept="37vLTw" id="4UTrqZZNZvt" role="37vLTx">
                <ref role="3cqZAo" node="4UTrqZZNZcY" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4UTrqZZNYoN" role="jymVt" />
      <node concept="3clFb_" id="4UTrqZZNWym" role="jymVt">
        <property role="TrG5h" value="doWalk" />
        <property role="1EzhhJ" value="false" />
        <node concept="16syzq" id="4UTrqZZNWyq" role="3clF45">
          <ref role="16sUi3" node="4UTrqZZNWwV" resolve="S" />
        </node>
        <node concept="3Tm1VV" id="4UTrqZZNWyp" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZNWyr" role="3clF47">
          <node concept="3clFbF" id="4UTrqZZNWZQ" role="3cqZAp">
            <node concept="1rXfSq" id="4UTrqZZNWZR" role="3clFbG">
              <ref role="37wK5l" node="tIwzd1KVkc" resolve="reduce" />
              <node concept="2ShNRf" id="4UTrqZZNWZS" role="37wK5m">
                <node concept="kMnCb" id="4UTrqZZNWZT" role="2ShVmc">
                  <node concept="3Tqbb2" id="4UTrqZZNWZU" role="kMuH3" />
                  <node concept="1bVj0M" id="4UTrqZZNWZV" role="kMx8a">
                    <node concept="3clFbS" id="4UTrqZZNWZW" role="1bW5cS">
                      <node concept="3cpWs8" id="4UTrqZZNWZX" role="3cqZAp">
                        <node concept="3cpWsn" id="4UTrqZZNWZY" role="3cpWs9">
                          <property role="TrG5h" value="queue" />
                          <node concept="3O6Q9H" id="4UTrqZZNWZZ" role="1tU5fm">
                            <node concept="3Tqbb2" id="4UTrqZZNX00" role="3O5elw" />
                          </node>
                          <node concept="2ShNRf" id="4UTrqZZNX01" role="33vP2m">
                            <node concept="2Jqq0_" id="4UTrqZZNX02" role="2ShVmc">
                              <node concept="3Tqbb2" id="4UTrqZZNX03" role="HW$YZ" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4UTrqZZNX04" role="3cqZAp">
                        <node concept="2OqwBi" id="4UTrqZZNX05" role="3clFbG">
                          <node concept="37vLTw" id="4UTrqZZNX06" role="2Oq$k0">
                            <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                          </node>
                          <node concept="2Ke9KJ" id="4UTrqZZNX07" role="2OqNvi">
                            <node concept="37vLTw" id="4UTrqZZNZZc" role="25WWJ7">
                              <ref role="3cqZAo" node="4UTrqZZNZvj" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="4UTrqZZNX09" role="3cqZAp" />
                      <node concept="2$JKZl" id="4UTrqZZNX0a" role="3cqZAp">
                        <node concept="3clFbS" id="4UTrqZZNX0b" role="2LFqv$">
                          <node concept="3cpWs8" id="4UTrqZZNX0c" role="3cqZAp">
                            <node concept="3cpWsn" id="4UTrqZZNX0d" role="3cpWs9">
                              <property role="TrG5h" value="next" />
                              <node concept="3Tqbb2" id="4UTrqZZNX0e" role="1tU5fm" />
                              <node concept="2OqwBi" id="4UTrqZZNX0f" role="33vP2m">
                                <node concept="37vLTw" id="4UTrqZZNX0g" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                                </node>
                                <node concept="2Kt2Hk" id="4UTrqZZNX0h" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4UTrqZZNX0i" role="3cqZAp" />
                          <node concept="2n63Yl" id="4UTrqZZNX0j" role="3cqZAp">
                            <node concept="37vLTw" id="4UTrqZZNX0k" role="2n6tg2">
                              <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="4UTrqZZNX0l" role="3cqZAp" />
                          <node concept="1DcWWT" id="4UTrqZZNX0m" role="3cqZAp">
                            <node concept="3clFbS" id="4UTrqZZNX0n" role="2LFqv$">
                              <node concept="3SKdUt" id="4UTrqZZO0z8" role="3cqZAp">
                                <node concept="3SKdUq" id="4UTrqZZO0za" role="3SKWNk">
                                  <property role="3SKdUp" value="FIXME: WTH? skipping all attributes?" />
                                </node>
                              </node>
                              <node concept="3clFbJ" id="4UTrqZZNX0o" role="3cqZAp">
                                <node concept="3clFbS" id="4UTrqZZNX0p" role="3clFbx">
                                  <node concept="3N13vt" id="4UTrqZZNX0q" role="3cqZAp" />
                                </node>
                                <node concept="2OqwBi" id="4UTrqZZNX0r" role="3clFbw">
                                  <node concept="37vLTw" id="4UTrqZZNX0s" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4UTrqZZNX0N" resolve="ch" />
                                  </node>
                                  <node concept="1BlSNk" id="4UTrqZZNX0t" role="2OqNvi">
                                    <ref role="1BmUXE" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                    <ref role="1Bn3mz" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="4UTrqZZO60T" role="3cqZAp">
                                <node concept="3clFbS" id="4UTrqZZO60V" role="3clFbx">
                                  <node concept="3N13vt" id="4UTrqZZO6ZA" role="3cqZAp" />
                                </node>
                                <node concept="1rXfSq" id="4UTrqZZO6nB" role="3clFbw">
                                  <ref role="37wK5l" node="4UTrqZZO4eL" resolve="skip" />
                                  <node concept="37vLTw" id="4UTrqZZOcm6" role="37wK5m">
                                    <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4UTrqZZNX0I" role="3cqZAp">
                                <node concept="2OqwBi" id="4UTrqZZNX0J" role="3clFbG">
                                  <node concept="37vLTw" id="4UTrqZZNX0K" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                                  </node>
                                  <node concept="2Ke9KJ" id="4UTrqZZNX0L" role="2OqNvi">
                                    <node concept="37vLTw" id="4UTrqZZNX0M" role="25WWJ7">
                                      <ref role="3cqZAo" node="4UTrqZZNX0N" resolve="ch" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="4UTrqZZNX0N" role="1Duv9x">
                              <property role="TrG5h" value="ch" />
                              <node concept="3Tqbb2" id="4UTrqZZNX0O" role="1tU5fm" />
                            </node>
                            <node concept="2OqwBi" id="4UTrqZZNX0P" role="1DdaDG">
                              <node concept="37vLTw" id="4UTrqZZNX0Q" role="2Oq$k0">
                                <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                              </node>
                              <node concept="32TBzR" id="4UTrqZZNX0R" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="4UTrqZZNX0S" role="2$JKZa">
                          <node concept="2OqwBi" id="4UTrqZZNX0T" role="3fr31v">
                            <node concept="37vLTw" id="4UTrqZZNX0U" role="2Oq$k0">
                              <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                            </node>
                            <node concept="1v1jN8" id="4UTrqZZNX0V" role="2OqNvi" />
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
        <node concept="2AHcQZ" id="4UTrqZZNWys" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4UTrqZZO7Sb" role="jymVt" />
      <node concept="3clFb_" id="4UTrqZZO4eL" role="jymVt">
        <property role="TrG5h" value="skip" />
        <node concept="37vLTG" id="4UTrqZZO5aI" role="3clF46">
          <property role="TrG5h" value="next" />
          <node concept="3Tqbb2" id="4UTrqZZO5Aa" role="1tU5fm" />
        </node>
        <node concept="10P_77" id="4UTrqZZO4$X" role="3clF45" />
        <node concept="3Tmbuc" id="4UTrqZZO85p" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZO4eP" role="3clF47">
          <node concept="3clFbF" id="4UTrqZZO5DQ" role="3cqZAp">
            <node concept="3clFbT" id="4UTrqZZO5DP" role="3clFbG">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4UTrqZZNWox" role="jymVt" />
      <node concept="3Tm1VV" id="4UTrqZZNVSK" role="1B3o_S" />
      <node concept="3uibUv" id="4UTrqZZNWuC" role="1zkMxy">
        <ref role="3uigEE" node="12yN8DyNqdl" resolve="NodeWalker" />
        <node concept="16syzq" id="4UTrqZZNWxK" role="11_B2D">
          <ref role="16sUi3" node="4UTrqZZNWwV" resolve="S" />
        </node>
      </node>
      <node concept="16euLQ" id="4UTrqZZNWwV" role="16eVyc">
        <property role="TrG5h" value="S" />
      </node>
      <node concept="312cEg" id="4UTrqZZNZvj" role="jymVt">
        <property role="TrG5h" value="root" />
        <node concept="3Tm6S6" id="4UTrqZZNZvk" role="1B3o_S" />
        <node concept="3Tqbb2" id="4UTrqZZNZvm" role="1tU5fm" />
      </node>
      <node concept="3UR2Jj" id="4UTrqZZQ_UN" role="lGtFl">
        <node concept="TZ5HA" id="4UTrqZZQ_UO" role="TZ5H$">
          <node concept="1dT_AC" id="4UTrqZZQ_UP" role="1dT_Ay">
            <property role="1dT_AB" value="Walks all children from the given root." />
          </node>
        </node>
        <node concept="TZ5HA" id="4UTrqZZQD5c" role="TZ5H$">
          <node concept="1dT_AC" id="4UTrqZZQD5d" role="1dT_Ay">
            <property role="1dT_AB" value="Override " />
          </node>
          <node concept="1dT_AA" id="4UTrqZZQD5V" role="1dT_Ay">
            <node concept="92FcH" id="4UTrqZZQD61" role="qph3F">
              <node concept="TZ5HA" id="4UTrqZZQD63" role="2XjZqd" />
              <node concept="VXe0Z" id="4UTrqZZQHEI" role="92FcQ">
                <ref role="VXe0S" node="4UTrqZZO4eL" resolve="skip" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="4UTrqZZQD5U" role="1dT_Ay">
            <property role="1dT_AB" value=" to control which nodes to include." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UTrqZZNVmH" role="jymVt" />
    <node concept="312cEu" id="4UTrqZZO9qy" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="INTERFACE_PART_DEEP" />
      <node concept="2tJIrI" id="4UTrqZZObCu" role="jymVt" />
      <node concept="3clFbW" id="4UTrqZZOaY6" role="jymVt">
        <node concept="37vLTG" id="4UTrqZZOb46" role="3clF46">
          <property role="TrG5h" value="root" />
          <node concept="3Tqbb2" id="4UTrqZZOb5T" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4UTrqZZOb7I" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="4UTrqZZOb9_" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="4UTrqZZObkm" role="11_B2D">
              <ref role="16sUi3" node="4UTrqZZOaLH" resolve="S" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4UTrqZZOaY8" role="3clF45" />
        <node concept="3Tm1VV" id="4UTrqZZOaY9" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZOaYa" role="3clF47">
          <node concept="XkiVB" id="4UTrqZZObpZ" role="3cqZAp">
            <ref role="37wK5l" node="4UTrqZZNYyd" resolve="NodeWalker.ALL_DEEP" />
            <node concept="37vLTw" id="4UTrqZZObxU" role="37wK5m">
              <ref role="3cqZAo" node="4UTrqZZOb46" resolve="root" />
            </node>
            <node concept="37vLTw" id="4UTrqZZObBy" role="37wK5m">
              <ref role="3cqZAo" node="4UTrqZZOb7I" resolve="action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4UTrqZZObIX" role="jymVt" />
      <node concept="2tJIrI" id="4UTrqZZObPt" role="jymVt" />
      <node concept="3clFb_" id="4UTrqZZObWC" role="jymVt">
        <property role="TrG5h" value="skip" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="4UTrqZZObWD" role="3clF46">
          <property role="TrG5h" value="next" />
          <node concept="3Tqbb2" id="4UTrqZZObWE" role="1tU5fm" />
        </node>
        <node concept="10P_77" id="4UTrqZZObWF" role="3clF45" />
        <node concept="3Tmbuc" id="4UTrqZZObWG" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZObWK" role="3clF47">
          <node concept="3clFbF" id="4UTrqZZOd88" role="3cqZAp">
            <node concept="1Wc70l" id="4UTrqZZOd$N" role="3clFbG">
              <node concept="3fqX7Q" id="4UTrqZZOd8a" role="3uHU7B">
                <node concept="2OqwBi" id="4UTrqZZOd8b" role="3fr31v">
                  <node concept="37vLTw" id="4UTrqZZOd8c" role="2Oq$k0">
                    <ref role="3cqZAo" node="4UTrqZZObWD" resolve="next" />
                  </node>
                  <node concept="1mIQ4w" id="4UTrqZZOd8d" role="2OqNvi">
                    <node concept="chp4Y" id="4UTrqZZOd8e" role="cj9EA">
                      <ref role="cht4Q" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4UTrqZZOdJ0" role="3uHU7w">
                <node concept="37vLTw" id="4UTrqZZOdJ1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4UTrqZZObWD" resolve="next" />
                </node>
                <node concept="1mIQ4w" id="4UTrqZZOdJ2" role="2OqNvi">
                  <node concept="chp4Y" id="4UTrqZZOdJ3" role="cj9EA">
                    <ref role="cht4Q" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4UTrqZZObWL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4UTrqZZOe9Q" role="jymVt" />
      <node concept="3Tm1VV" id="4UTrqZZO9qz" role="1B3o_S" />
      <node concept="3uibUv" id="4UTrqZZOaEu" role="1zkMxy">
        <ref role="3uigEE" node="4UTrqZZNVSJ" resolve="NodeWalker.ALL_DEEP" />
        <node concept="16syzq" id="4UTrqZZOaRM" role="11_B2D">
          <ref role="16sUi3" node="4UTrqZZOaLH" resolve="S" />
        </node>
      </node>
      <node concept="16euLQ" id="4UTrqZZOaLH" role="16eVyc">
        <property role="TrG5h" value="S" />
      </node>
      <node concept="3UR2Jj" id="4UTrqZZQMQS" role="lGtFl">
        <node concept="TZ5HA" id="4UTrqZZQMQT" role="TZ5H$">
          <node concept="1dT_AC" id="4UTrqZZQMQU" role="1dT_Ay">
            <property role="1dT_AB" value="Walks only the nodes that are &quot;interface part&quot;." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UTrqZZO8w6" role="jymVt" />
    <node concept="312cEu" id="4UTrqZZOhGv" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="EACH" />
      <node concept="2tJIrI" id="4UTrqZZOleh" role="jymVt" />
      <node concept="3clFbW" id="4UTrqZZOjgP" role="jymVt">
        <node concept="37vLTG" id="4UTrqZZOjmT" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="A3Dl8" id="4UTrqZZOjp2" role="1tU5fm">
            <node concept="3Tqbb2" id="4UTrqZZOjr1" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="4UTrqZZOjsI" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="4UTrqZZOjuZ" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="4UTrqZZOjG1" role="11_B2D">
              <ref role="16sUi3" node="4UTrqZZOiH2" resolve="S" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4UTrqZZOjgR" role="3clF45" />
        <node concept="3Tm1VV" id="4UTrqZZOjgS" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZOjgT" role="3clF47">
          <node concept="XkiVB" id="4UTrqZZOjLW" role="3cqZAp">
            <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
            <node concept="37vLTw" id="4UTrqZZOjRC" role="37wK5m">
              <ref role="3cqZAo" node="4UTrqZZOjsI" resolve="action" />
            </node>
          </node>
          <node concept="3clFbF" id="4UTrqZZOjSw" role="3cqZAp">
            <node concept="37vLTI" id="4UTrqZZOjSy" role="3clFbG">
              <node concept="2OqwBi" id="4UTrqZZOk2J" role="37vLTJ">
                <node concept="Xjq3P" id="4UTrqZZOk4H" role="2Oq$k0" />
                <node concept="2OwXpG" id="4UTrqZZOk2M" role="2OqNvi">
                  <ref role="2Oxat5" node="4UTrqZZOjSr" resolve="nodes" />
                </node>
              </node>
              <node concept="37vLTw" id="4UTrqZZOjSA" role="37vLTx">
                <ref role="3cqZAo" node="4UTrqZZOjmT" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4UTrqZZOka_" role="jymVt" />
      <node concept="3clFb_" id="4UTrqZZOkjp" role="jymVt">
        <property role="TrG5h" value="doWalk" />
        <property role="1EzhhJ" value="false" />
        <node concept="16syzq" id="4UTrqZZOkjt" role="3clF45">
          <ref role="16sUi3" node="4UTrqZZOiH2" resolve="S" />
        </node>
        <node concept="3Tm1VV" id="4UTrqZZOkjs" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZOkju" role="3clF47">
          <node concept="3clFbF" id="4UTrqZZQ_xi" role="3cqZAp">
            <node concept="1rXfSq" id="4UTrqZZQ_xg" role="3clFbG">
              <ref role="37wK5l" node="tIwzd1KVkc" resolve="reduce" />
              <node concept="37vLTw" id="4UTrqZZQ_Hb" role="37wK5m">
                <ref role="3cqZAo" node="4UTrqZZOjSr" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4UTrqZZOkjv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4UTrqZZOkaY" role="jymVt" />
      <node concept="3Tm1VV" id="4UTrqZZOhGw" role="1B3o_S" />
      <node concept="16euLQ" id="4UTrqZZOiH2" role="16eVyc">
        <property role="TrG5h" value="S" />
      </node>
      <node concept="3uibUv" id="4UTrqZZOj1t" role="1zkMxy">
        <ref role="3uigEE" node="12yN8DyNqdl" resolve="NodeWalker" />
        <node concept="16syzq" id="4UTrqZZOjas" role="11_B2D">
          <ref role="16sUi3" node="4UTrqZZOiH2" resolve="S" />
        </node>
      </node>
      <node concept="312cEg" id="4UTrqZZOjSr" role="jymVt">
        <property role="TrG5h" value="nodes" />
        <node concept="3Tm6S6" id="4UTrqZZOjSs" role="1B3o_S" />
        <node concept="A3Dl8" id="4UTrqZZOjSu" role="1tU5fm">
          <node concept="3Tqbb2" id="4UTrqZZOjSv" role="A3Ik2" />
        </node>
      </node>
      <node concept="3UR2Jj" id="4UTrqZZQQeD" role="lGtFl">
        <node concept="TZ5HA" id="4UTrqZZQQeE" role="TZ5H$">
          <node concept="1dT_AC" id="4UTrqZZQQeF" role="1dT_Ay">
            <property role="1dT_AB" value="Walks the nodes in the given sequence." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4UTrqZZOgKL" role="jymVt" />
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
      <node concept="3Tmbuc" id="4UTrqZZNSTR" role="1B3o_S" />
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
    <node concept="2tJIrI" id="4UTrqZZNSk$" role="jymVt" />
    <node concept="3clFb_" id="4UTrqZZNT3a" role="jymVt">
      <property role="TrG5h" value="doWalk" />
      <property role="1EzhhJ" value="true" />
      <node concept="16syzq" id="4UTrqZZNTGo" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3clFbS" id="4UTrqZZNT3d" role="3clF47" />
      <node concept="3Tm1VV" id="4UTrqZZNTyq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4UTrqZZNSrJ" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1KVkc" role="jymVt">
      <property role="TrG5h" value="reduce" />
      <node concept="37vLTG" id="tIwzd1KVkd" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="tIwzd1KZEw" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1KZEy" role="A3Ik2" />
        </node>
      </node>
      <node concept="16syzq" id="tIwzd1KVkh" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tmbuc" id="4UTrqZZNWIY" role="1B3o_S" />
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
        <node concept="3clFbF" id="7kTeLbPh2dl" role="3cqZAp">
          <node concept="37vLTI" id="7kTeLbPh2dn" role="3clFbG">
            <node concept="2OqwBi" id="7kTeLbPh6Nh" role="37vLTJ">
              <node concept="Xjq3P" id="7kTeLbPh75L" role="2Oq$k0" />
              <node concept="2OwXpG" id="7kTeLbPh6Nk" role="2OqNvi">
                <ref role="2Oxat5" node="7kTeLbPh2dh" resolve="typeAspectRuntime" />
              </node>
            </node>
            <node concept="37vLTw" id="7kTeLbPh2dr" role="37vLTx">
              <ref role="3cqZAo" node="7kTeLbPh0Xz" resolve="typeAspectRuntime" />
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
            <node concept="37vLTw" id="7kTeLbPhxRy" role="37vLTx">
              <ref role="3cqZAo" node="7kTeLbPhwzd" resolve="applicationSession" />
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
      </node>
      <node concept="37vLTG" id="7kTeLbPh0Xz" role="3clF46">
        <property role="TrG5h" value="typeAspectRuntime" />
        <node concept="3uibUv" id="7kTeLbPh1G0" role="1tU5fm">
          <ref role="3uigEE" node="4QPCta1yO5O" resolve="TypeAspectRuntime" />
        </node>
      </node>
      <node concept="37vLTG" id="7kTeLbPhwzd" role="3clF46">
        <property role="TrG5h" value="applicationSession" />
        <node concept="3uibUv" id="7kTeLbPhxa0" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="RuleApplicationSession" />
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
      <property role="TrG5h" value="forRoot" />
      <node concept="37vLTG" id="6i42QSsp$tv" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="6i42QSspKbC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4vBwiiVbVPK" role="3clF46">
        <property role="TrG5h" value="stage_builders" />
        <node concept="_YKpA" id="4vBwiiVbVPL" role="1tU5fm">
          <node concept="1LlUBW" id="4vBwiiVbVPM" role="_ZDj9">
            <node concept="3uibUv" id="4vBwiiVbVPN" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
            </node>
            <node concept="3uibUv" id="4vBwiiVbVPO" role="1Lm7xW">
              <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
            </node>
          </node>
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
        <node concept="3cpWs8" id="2Qe6u2cluik" role="3cqZAp">
          <node concept="3cpWsn" id="2Qe6u2cluil" role="3cpWs9">
            <property role="TrG5h" value="noInput" />
            <node concept="1LlUBW" id="2Qe6u2cluim" role="1tU5fm">
              <node concept="3uibUv" id="2Qe6u2cluin" role="1Lm7xW">
                <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
              </node>
              <node concept="3vKaQO" id="2Qe6u2cluio" role="1Lm7xW">
                <node concept="3Tqbb2" id="2Qe6u2cluip" role="3O5elw" />
              </node>
            </node>
            <node concept="1rXfSq" id="2Qe6u2cluiq" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyAndCollectRequired" />
              <node concept="2OqwBi" id="2Qe6u2cluir" role="37wK5m">
                <node concept="2OqwBi" id="2Qe6u2cluis" role="2Oq$k0">
                  <node concept="37vLTw" id="2Qe6u2cluit" role="2Oq$k0">
                    <ref role="3cqZAo" node="7kTeLbPh2dh" resolve="typeAspectRuntime" />
                  </node>
                  <node concept="liA8E" id="2Qe6u2cluiu" role="2OqNvi">
                    <ref role="37wK5l" node="4QPCta1yW5f" resolve="getRuleTemplateIndex" />
                  </node>
                </node>
                <node concept="liA8E" id="2Qe6u2cluiv" role="2OqNvi">
                  <ref role="37wK5l" node="5NuEpF1qn9x" resolve="allTemplatesWithNoInput" />
                </node>
              </node>
              <node concept="10Nm6u" id="2Qe6u2cluiw" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nkyKX7vEI8" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7vEI9" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7vEIa" role="37vLTx">
              <node concept="37vLTw" id="7nkyKX7vEIb" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7vtmN" resolve="result" />
              </node>
              <node concept="liA8E" id="7nkyKX7vEIc" role="2OqNvi">
                <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                <node concept="1LFfDK" id="2Qe6u2clqaG" role="37wK5m">
                  <node concept="3cmrfG" id="2Qe6u2clqnf" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="2Qe6u2clp3$" role="1LFl5Q">
                    <ref role="3cqZAo" node="2Qe6u2cluil" resolve="noInput" />
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
                    <ref role="37wK5l" node="12yN8DyNqcj" resolve="produceAllFromRoot" />
                    <node concept="37vLTw" id="6i42QSspKvG" role="37wK5m">
                      <ref role="3cqZAo" node="6i42QSsp$tv" resolve="root" />
                    </node>
                    <node concept="1LFfDK" id="2Qe6u2clre_" role="37wK5m">
                      <node concept="3cmrfG" id="2Qe6u2clrrq" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="2Qe6u2clqHH" role="1LFl5Q">
                        <ref role="3cqZAo" node="2Qe6u2cluil" resolve="noInput" />
                      </node>
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
        <node concept="3clFbH" id="4vBwiiVc4Oo" role="3cqZAp" />
        <node concept="1DcWWT" id="4vBwiiVc5q0" role="3cqZAp">
          <node concept="3clFbS" id="4vBwiiVc5q3" role="2LFqv$">
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
                        <node concept="1LFfDK" id="4vBwiiVchNX" role="37wK5m">
                          <node concept="3cmrfG" id="4vBwiiVci0g" role="1LF_Uc">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="4vBwiiVchgh" role="1LFl5Q">
                            <ref role="3cqZAo" node="4vBwiiVc5q4" resolve="stage_builder" />
                          </node>
                        </node>
                        <node concept="1LFfDK" id="4vBwiiVcj$s" role="37wK5m">
                          <node concept="3cmrfG" id="4vBwiiVcjGF" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="4vBwiiVcj38" role="1LFl5Q">
                            <ref role="3cqZAo" node="4vBwiiVc5q4" resolve="stage_builder" />
                          </node>
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
          </node>
          <node concept="3cpWsn" id="4vBwiiVc5q4" role="1Duv9x">
            <property role="TrG5h" value="stage_builder" />
            <node concept="1LlUBW" id="4vBwiiVc5q8" role="1tU5fm">
              <node concept="3uibUv" id="4vBwiiVc5q9" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
              </node>
              <node concept="3uibUv" id="4vBwiiVc5qa" role="1Lm7xW">
                <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4vBwiiVc5qb" role="1DdaDG">
            <ref role="3cqZAo" node="4vBwiiVbVPK" resolve="stage_builders" />
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
    <node concept="3clFb_" id="4QPCta1bMC1" role="jymVt">
      <property role="TrG5h" value="forEach" />
      <node concept="37vLTG" id="4QPCta1bMC2" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="4QPCta1bRUn" role="1tU5fm">
          <node concept="3Tqbb2" id="4QPCta1bRUo" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="4vBwiiVbJqu" role="3clF46">
        <property role="TrG5h" value="stage_builders" />
        <node concept="_YKpA" id="4vBwiiVbNcz" role="1tU5fm">
          <node concept="1LlUBW" id="4vBwiiVbNji" role="_ZDj9">
            <node concept="3uibUv" id="4vBwiiVbNx9" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
            </node>
            <node concept="3uibUv" id="4vBwiiVbNJW" role="1Lm7xW">
              <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4QPCta1bMC8" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4QPCta1bMC9" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1bMCa" role="3clF47">
        <node concept="3cpWs8" id="4QPCta1bMCb" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1bMCc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4QPCta1bMCd" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="4QPCta1bMCe" role="33vP2m">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4QPCta1bMCf" role="3cqZAp" />
        <node concept="3cpWs8" id="2Qe6u2cltUr" role="3cqZAp">
          <node concept="3cpWsn" id="2Qe6u2cltUs" role="3cpWs9">
            <property role="TrG5h" value="noInput" />
            <node concept="1LlUBW" id="2Qe6u2cltUt" role="1tU5fm">
              <node concept="3uibUv" id="2Qe6u2cltUu" role="1Lm7xW">
                <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
              </node>
              <node concept="3vKaQO" id="2Qe6u2cltUv" role="1Lm7xW">
                <node concept="3Tqbb2" id="2Qe6u2cltUw" role="3O5elw" />
              </node>
            </node>
            <node concept="1rXfSq" id="2Qe6u2cltUx" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyAndCollectRequired" />
              <node concept="2OqwBi" id="2Qe6u2cltUy" role="37wK5m">
                <node concept="2OqwBi" id="2Qe6u2cltUz" role="2Oq$k0">
                  <node concept="37vLTw" id="2Qe6u2cltU$" role="2Oq$k0">
                    <ref role="3cqZAo" node="7kTeLbPh2dh" resolve="typeAspectRuntime" />
                  </node>
                  <node concept="liA8E" id="2Qe6u2cltU_" role="2OqNvi">
                    <ref role="37wK5l" node="4QPCta1yW5f" resolve="getRuleTemplateIndex" />
                  </node>
                </node>
                <node concept="liA8E" id="2Qe6u2cltUA" role="2OqNvi">
                  <ref role="37wK5l" node="5NuEpF1qn9x" resolve="allTemplatesWithNoInput" />
                </node>
              </node>
              <node concept="10Nm6u" id="2Qe6u2cltUB" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QPCta1bMCg" role="3cqZAp">
          <node concept="37vLTI" id="4QPCta1bMCh" role="3clFbG">
            <node concept="2OqwBi" id="4QPCta1bMCi" role="37vLTx">
              <node concept="37vLTw" id="4QPCta1bMCj" role="2Oq$k0">
                <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
              </node>
              <node concept="liA8E" id="4QPCta1bMCk" role="2OqNvi">
                <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                <node concept="1LFfDK" id="2Qe6u2clsyS" role="37wK5m">
                  <node concept="3cmrfG" id="2Qe6u2clsJr" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="2Qe6u2clrym" role="1LFl5Q">
                    <ref role="3cqZAo" node="2Qe6u2cltUs" resolve="noInput" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4QPCta1bMCo" role="37vLTJ">
              <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QPCta1bMCp" role="3cqZAp">
          <node concept="37vLTI" id="4QPCta1bMCq" role="3clFbG">
            <node concept="2OqwBi" id="4QPCta1bMCr" role="37vLTx">
              <node concept="37vLTw" id="4QPCta1bMCs" role="2Oq$k0">
                <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
              </node>
              <node concept="liA8E" id="4QPCta1bMCt" role="2OqNvi">
                <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="4QPCta1bMCu" role="37wK5m">
                  <node concept="Xjq3P" id="4QPCta1bMCv" role="2Oq$k0" />
                  <node concept="liA8E" id="4QPCta1bMCw" role="2OqNvi">
                    <ref role="37wK5l" node="4QPCta1aZLs" resolve="produceEach" />
                    <node concept="37vLTw" id="4QPCta1bMCx" role="37wK5m">
                      <ref role="3cqZAo" node="4QPCta1bMC2" resolve="nodes" />
                    </node>
                    <node concept="1LFfDK" id="2Qe6u2cltEq" role="37wK5m">
                      <node concept="3cmrfG" id="2Qe6u2cltMZ" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="2Qe6u2clt64" role="1LFl5Q">
                        <ref role="3cqZAo" node="2Qe6u2cltUs" resolve="noInput" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4QPCta1bMCy" role="37vLTJ">
              <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4vBwiiVccw1" role="3cqZAp" />
        <node concept="1DcWWT" id="4vBwiiVcazU" role="3cqZAp">
          <node concept="3clFbS" id="4vBwiiVcazX" role="2LFqv$">
            <node concept="3clFbF" id="4QPCta1bMCz" role="3cqZAp">
              <node concept="37vLTI" id="4QPCta1bMC$" role="3clFbG">
                <node concept="2OqwBi" id="4QPCta1bMC_" role="37vLTx">
                  <node concept="37vLTw" id="4QPCta1bMCA" role="2Oq$k0">
                    <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
                  </node>
                  <node concept="liA8E" id="4QPCta1bMCB" role="2OqNvi">
                    <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="4QPCta1bMCC" role="37wK5m">
                      <node concept="Xjq3P" id="4QPCta1bMCD" role="2Oq$k0" />
                      <node concept="liA8E" id="4QPCta1bMCE" role="2OqNvi">
                        <ref role="37wK5l" node="7nkyKX7ncaN" resolve="buildRules" />
                        <node concept="1LFfDK" id="4vBwiiVckn9" role="37wK5m">
                          <node concept="3cmrfG" id="4vBwiiVckvl" role="1LF_Uc">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="4vBwiiVcjTx" role="1LFl5Q">
                            <ref role="3cqZAo" node="4vBwiiVcazY" resolve="stage_builder" />
                          </node>
                        </node>
                        <node concept="1LFfDK" id="4vBwiiVclpG" role="37wK5m">
                          <node concept="37vLTw" id="4vBwiiVckSh" role="1LFl5Q">
                            <ref role="3cqZAo" node="4vBwiiVcazY" resolve="stage_builder" />
                          </node>
                          <node concept="3cmrfG" id="4vBwiiVclIG" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4QPCta1bMCI" role="37vLTJ">
                  <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4vBwiiVcazY" role="1Duv9x">
            <property role="TrG5h" value="stage_builder" />
            <node concept="1LlUBW" id="4vBwiiVca$2" role="1tU5fm">
              <node concept="3uibUv" id="4vBwiiVca$3" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
              </node>
              <node concept="3uibUv" id="4vBwiiVca$4" role="1Lm7xW">
                <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4vBwiiVca$5" role="1DdaDG">
            <ref role="3cqZAo" node="4vBwiiVbJqu" resolve="stage_builders" />
          </node>
        </node>
        <node concept="3clFbH" id="4QPCta1bMCJ" role="3cqZAp" />
        <node concept="3clFbF" id="4QPCta1bMCK" role="3cqZAp">
          <node concept="37vLTw" id="4QPCta1bMCL" role="3clFbG">
            <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1bMC0" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7ncaN" role="jymVt">
      <property role="TrG5h" value="buildRules" />
      <node concept="37vLTG" id="4vBwiiVccBe" role="3clF46">
        <property role="TrG5h" value="stage" />
        <node concept="3uibUv" id="4vBwiiVcgAO" role="1tU5fm">
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
                    <ref role="3cqZAo" node="4vBwiiVccBe" resolve="stage" />
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
                  <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
                <node concept="2ShNRf" id="6i42QSskaRD" role="33vP2m">
                  <node concept="1pGfFk" id="6i42QSskaRE" role="2ShVmc">
                    <ref role="37wK5l" to="6pyv:6lpwCiZjdph" resolve="RuleBuilder" />
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
                  <ref role="37wK5l" to="6pyv:7eGEHDlc$bq" resolve="appendHeadReplaced" />
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
                  <ref role="37wK5l" to="6pyv:7eGEHDlc$aw" resolve="appendBody" />
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
                  <ref role="3uigEE" to="6pyv:4MqhgXUMauK" resolve="HandlerBuilder" />
                </node>
                <node concept="2ShNRf" id="4MqhgXUQinw" role="33vP2m">
                  <node concept="1pGfFk" id="4MqhgXUQinx" role="2ShVmc">
                    <ref role="37wK5l" to="6pyv:4MqhgXUMb4h" resolve="HandlerBuilder" />
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
                  <ref role="37wK5l" to="6pyv:4MqhgXUMbtk" resolve="addRule" />
                  <node concept="37vLTw" id="4MqhgXUQmTK" role="37wK5m">
                    <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                  </node>
                  <node concept="2OqwBi" id="4MqhgXUQnL1" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUQn$6" role="2Oq$k0">
                      <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUQolJ" role="2OqNvi">
                      <ref role="37wK5l" to="6pyv:7eGEHDlc$ck" resolve="toRule" />
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
                      <ref role="37wK5l" to="6pyv:4MqhgXUNDLG" resolve="toHandler" />
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
              <node concept="3cpWs6" id="6i42QSsp0NP" role="3cqZAp">
                <node concept="2YIFZM" id="6i42QSsp4Ua" role="3cqZAk">
                  <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
                  <ref role="37wK5l" node="7Oc59RSH6VB" resolve="FAIL" />
                  <node concept="2OqwBi" id="6i42QSsp6Fk" role="37wK5m">
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
    <node concept="3clFb_" id="12yN8DyNqcj" role="jymVt">
      <property role="TrG5h" value="produceAllFromRoot" />
      <node concept="37vLTG" id="12yN8DyNqcH" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNqcW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2Qe6u2ckdn0" role="3clF46">
        <property role="TrG5h" value="required" />
        <node concept="A3Dl8" id="2Qe6u2cklrC" role="1tU5fm">
          <node concept="3Tqbb2" id="2Qe6u2ckly6" role="A3Ik2" />
        </node>
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
              <ref role="37wK5l" node="tIwzd1LouZ" resolve="applyDeep" />
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
        <node concept="3cpWs8" id="2Qe6u2cm_eh" role="3cqZAp">
          <node concept="3cpWsn" id="2Qe6u2cm_ei" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="3vKaQO" id="2Qe6u2cm_uP" role="1tU5fm">
              <node concept="3Tqbb2" id="2Qe6u2cm_U6" role="3O5elw" />
            </node>
            <node concept="2OqwBi" id="2Qe6u2cm_ej" role="33vP2m">
              <node concept="2OqwBi" id="2Qe6u2cm_ek" role="2Oq$k0">
                <node concept="2OqwBi" id="2Qe6u2cm_el" role="2Oq$k0">
                  <node concept="37vLTw" id="2Qe6u2cm_em" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JQZWxFb1vX" resolve="applyingResult" />
                  </node>
                  <node concept="2OwXpG" id="2Qe6u2cm_en" role="2OqNvi">
                    <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                  </node>
                </node>
                <node concept="3QWeyG" id="2Qe6u2cm_eo" role="2OqNvi">
                  <node concept="37vLTw" id="2Qe6u2cm_ep" role="576Qk">
                    <ref role="3cqZAo" node="2Qe6u2ckdn0" resolve="required" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="2Qe6u2cm_eq" role="2OqNvi" />
            </node>
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
                  <node concept="37vLTw" id="2Qe6u2cm_er" role="1Lso8e">
                    <ref role="3cqZAo" node="2Qe6u2cm_ei" resolve="visited" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1b3Og" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1aZLs" role="jymVt">
      <property role="TrG5h" value="produceEach" />
      <node concept="37vLTG" id="4QPCta1aZLt" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="4QPCta1bceI" role="1tU5fm">
          <node concept="3Tqbb2" id="4QPCta1bceJ" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="2Qe6u2ckhfY" role="3clF46">
        <property role="TrG5h" value="required" />
        <node concept="A3Dl8" id="2Qe6u2cklfJ" role="1tU5fm">
          <node concept="3Tqbb2" id="2Qe6u2cklmJ" role="A3Ik2" />
        </node>
      </node>
      <node concept="3uibUv" id="4QPCta1aZLv" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="4QPCta1aZLw" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1aZLx" role="3clF47">
        <node concept="3SKdUt" id="4QPCta1aZLy" role="3cqZAp">
          <node concept="3SKdUq" id="4QPCta1aZLz" role="3SKWNk">
            <property role="3SKdUp" value="walk the AST and apply templates" />
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1aZL$" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1aZL_" role="3cpWs9">
            <property role="TrG5h" value="applyingResult" />
            <node concept="1rXfSq" id="4QPCta1aZLA" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1LKZY" resolve="applyEach" />
              <node concept="37vLTw" id="4QPCta1aZLB" role="37wK5m">
                <ref role="3cqZAo" node="4QPCta1aZLt" resolve="nodes" />
              </node>
            </node>
            <node concept="3uibUv" id="4QPCta1aZLD" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1aZLE" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1aZLF" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4QPCta1aZLG" role="1tU5fm">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="4QPCta1aZLH" role="33vP2m">
              <node concept="37vLTw" id="4QPCta1aZLI" role="2Oq$k0">
                <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
              </node>
              <node concept="2OwXpG" id="4QPCta1aZLJ" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXU_0Wz" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4QPCta1aZLK" role="3cqZAp" />
        <node concept="3SKdUt" id="4QPCta1aZLL" role="3cqZAp">
          <node concept="3SKdUq" id="4QPCta1aZLM" role="3SKWNk">
            <property role="3SKdUp" value="process the required roots" />
          </node>
        </node>
        <node concept="3cpWs8" id="2Qe6u2cmBeW" role="3cqZAp">
          <node concept="3cpWsn" id="2Qe6u2cmBeX" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="3vKaQO" id="2Qe6u2cmBEJ" role="1tU5fm">
              <node concept="3Tqbb2" id="2Qe6u2cmC60" role="3O5elw" />
            </node>
            <node concept="2OqwBi" id="2Qe6u2cmBeY" role="33vP2m">
              <node concept="2OqwBi" id="2Qe6u2cmBeZ" role="2Oq$k0">
                <node concept="2OqwBi" id="2Qe6u2cmBf0" role="2Oq$k0">
                  <node concept="37vLTw" id="2Qe6u2cmBf1" role="2Oq$k0">
                    <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
                  </node>
                  <node concept="2OwXpG" id="2Qe6u2cmBf2" role="2OqNvi">
                    <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                  </node>
                </node>
                <node concept="3QWeyG" id="2Qe6u2cmBf3" role="2OqNvi">
                  <node concept="37vLTw" id="2Qe6u2cmBf4" role="576Qk">
                    <ref role="3cqZAo" node="2Qe6u2ckhfY" resolve="required" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="2Qe6u2cmBf5" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QPCta1aZLN" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta1aZLO" role="3clFbG">
            <node concept="37vLTw" id="4QPCta1aZLP" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1aZLF" resolve="result" />
            </node>
            <node concept="liA8E" id="4QPCta1aZLQ" role="2OqNvi">
              <ref role="37wK5l" node="7nkyKX7v7xb" resolve="and" />
              <node concept="1rXfSq" id="4QPCta1aZLR" role="37wK5m">
                <ref role="37wK5l" node="tIwzd1MM22" resolve="produceRequired" />
                <node concept="1Ls8ON" id="4QPCta1aZLS" role="37wK5m">
                  <node concept="2OqwBi" id="4QPCta1aZLT" role="1Lso8e">
                    <node concept="37vLTw" id="4QPCta1aZLU" role="2Oq$k0">
                      <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
                    </node>
                    <node concept="2OwXpG" id="4QPCta1aZLV" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2Qe6u2cmBf6" role="1Lso8e">
                    <ref role="3cqZAo" node="2Qe6u2cmBeX" resolve="visited" />
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
      <property role="TrG5h" value="produceInterfacePartFromRoot" />
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
              <ref role="37wK5l" node="tIwzd1LouZ" resolve="applyDeep" />
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
        <node concept="3clFbH" id="7kTeLbQm9Tn" role="3cqZAp" />
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
                  <ref role="37wK5l" node="tIwzd1LKZY" resolve="applyEach" />
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
      <property role="TrG5h" value="applyDeep" />
      <node concept="3Tm6S6" id="tIwzd1Lov0" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXU_OfN" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
      </node>
      <node concept="37vLTG" id="tIwzd1LouK" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="tIwzd1LouL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1Luww" role="3clF46">
        <property role="TrG5h" value="interfacePartOnly" />
        <node concept="10P_77" id="tIwzd1Lvg1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="tIwzd1Lou5" role="3clF47">
        <node concept="3clFbJ" id="4UTrqZZOnSV" role="3cqZAp">
          <node concept="3clFbS" id="4UTrqZZOnSX" role="3clFbx">
            <node concept="3cpWs6" id="4UTrqZZOrY5" role="3cqZAp">
              <node concept="2OqwBi" id="4UTrqZZP0nv" role="3cqZAk">
                <node concept="2ShNRf" id="4UTrqZZOM$5" role="2Oq$k0">
                  <node concept="1pGfFk" id="4UTrqZZOP9j" role="2ShVmc">
                    <ref role="37wK5l" node="4UTrqZZOaY6" resolve="NodeWalker.INTERFACE_PART_DEEP" />
                    <node concept="37vLTw" id="4UTrqZZOUpV" role="37wK5m">
                      <ref role="3cqZAo" node="tIwzd1LouK" resolve="root" />
                    </node>
                    <node concept="2ShNRf" id="4UTrqZZOX4z" role="37wK5m">
                      <node concept="HV5vD" id="4UTrqZZOX4$" role="2ShVmc">
                        <ref role="HV5vE" node="5ntLU8Glzc7" resolve="ProgramProducer.TemplateApplicator" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4UTrqZZP95r" role="1pMfVU">
                      <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4UTrqZZP3bh" role="2OqNvi">
                  <ref role="37wK5l" node="4UTrqZZNWym" resolve="doWalk" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4UTrqZZPfA1" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="4UTrqZZOrNp" role="3clFbw">
            <ref role="3cqZAo" node="tIwzd1Luww" resolve="interfacePartOnly" />
          </node>
          <node concept="9aQIb" id="4UTrqZZPc0p" role="9aQIa">
            <node concept="3clFbS" id="4UTrqZZPc0q" role="9aQI4">
              <node concept="3cpWs6" id="4UTrqZZPi6d" role="3cqZAp">
                <node concept="2OqwBi" id="4UTrqZZPi6e" role="3cqZAk">
                  <node concept="2ShNRf" id="4UTrqZZPi6f" role="2Oq$k0">
                    <node concept="1pGfFk" id="4UTrqZZPi6g" role="2ShVmc">
                      <ref role="37wK5l" node="4UTrqZZNYyd" resolve="NodeWalker.ALL_DEEP" />
                      <node concept="37vLTw" id="4UTrqZZPi6h" role="37wK5m">
                        <ref role="3cqZAo" node="tIwzd1LouK" resolve="root" />
                      </node>
                      <node concept="2ShNRf" id="4UTrqZZPi6i" role="37wK5m">
                        <node concept="HV5vD" id="4UTrqZZPi6j" role="2ShVmc">
                          <ref role="HV5vE" node="5ntLU8Glzc7" resolve="ProgramProducer.TemplateApplicator" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="4UTrqZZPi6k" role="1pMfVU">
                        <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4UTrqZZPi6l" role="2OqNvi">
                    <ref role="37wK5l" node="4UTrqZZNWym" resolve="doWalk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1pMvG" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1LKZY" role="jymVt">
      <property role="TrG5h" value="applyEach" />
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
        <node concept="3cpWs6" id="4UTrqZZPyYR" role="3cqZAp">
          <node concept="2OqwBi" id="4UTrqZZPyYS" role="3cqZAk">
            <node concept="2ShNRf" id="4UTrqZZPyYT" role="2Oq$k0">
              <node concept="1pGfFk" id="4UTrqZZPyYU" role="2ShVmc">
                <ref role="37wK5l" node="4UTrqZZOjgP" resolve="NodeWalker.EACH" />
                <node concept="37vLTw" id="4UTrqZZPKD$" role="37wK5m">
                  <ref role="3cqZAo" node="tIwzd1LL0a" resolve="nodes" />
                </node>
                <node concept="2ShNRf" id="4UTrqZZPyYW" role="37wK5m">
                  <node concept="HV5vD" id="4UTrqZZPyYX" role="2ShVmc">
                    <ref role="HV5vE" node="5ntLU8Glzc7" resolve="ProgramProducer.TemplateApplicator" />
                  </node>
                </node>
                <node concept="3uibUv" id="4UTrqZZPyYY" role="1pMfVU">
                  <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramProducer.TemplateApplyingResult" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4UTrqZZPyYZ" role="2OqNvi">
              <ref role="37wK5l" node="4UTrqZZOkjp" resolve="doWalk" />
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
          <node concept="16syzq" id="7XdbJdyQi3s" role="11_B2D">
            <ref role="16sUi3" node="7XdbJdyQdwM" resolve="Token" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ntLU8GlSnL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5ntLU8GlSnM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5ntLU8GlSnC" role="3clF47">
        <node concept="SfApY" id="7Oc59RSA9rg" role="3cqZAp">
          <node concept="3clFbS" id="7Oc59RSA9ri" role="SfCbr">
            <node concept="3cpWs8" id="6i42QSsqtxd" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsqtxe" role="3cpWs9">
                <property role="TrG5h" value="builders" />
                <node concept="A3Dl8" id="6i42QSsqtx6" role="1tU5fm">
                  <node concept="3uibUv" id="6i42QSsqtx9" role="A3Ik2">
                    <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7XdbJdyLA3m" role="33vP2m">
                  <node concept="37vLTw" id="7XdbJdyLzeU" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="7XdbJdyLAB$" role="2OqNvi">
                    <ref role="37wK5l" to="i348:7XdbJdyhRyL" resolve="applyReduce" />
                    <node concept="37vLTw" id="7XdbJdyLAMJ" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                    </node>
                    <node concept="2ShNRf" id="7XdbJdyLCh3" role="37wK5m">
                      <node concept="Tc6Ow" id="7XdbJdyLDeJ" role="2ShVmc">
                        <node concept="3uibUv" id="7XdbJdyLDvC" role="HW$YZ">
                          <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                        </node>
                      </node>
                    </node>
                    <node concept="1bVj0M" id="7XdbJdyLDL4" role="37wK5m">
                      <node concept="37vLTG" id="7XdbJdyLESK" role="1bW2Oz">
                        <property role="TrG5h" value="builders" />
                        <node concept="_YKpA" id="7XdbJdyLG5y" role="1tU5fm">
                          <node concept="3uibUv" id="7XdbJdyLHij" role="_ZDj9">
                            <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="7XdbJdyLDP7" role="1bW2Oz">
                        <property role="TrG5h" value="token" />
                        <node concept="3uibUv" id="7XdbJdyLEet" role="1tU5fm">
                          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7XdbJdyLDL6" role="1bW5cS">
                        <node concept="3clFbJ" id="7kTeLbQiirG" role="3cqZAp">
                          <node concept="3clFbS" id="7kTeLbQiirI" role="3clFbx">
                            <node concept="3clFbF" id="7XdbJdyLKkN" role="3cqZAp">
                              <node concept="2OqwBi" id="7XdbJdyLL5B" role="3clFbG">
                                <node concept="37vLTw" id="7XdbJdyLKkL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7XdbJdyLESK" resolve="builders" />
                                </node>
                                <node concept="X8dFx" id="7XdbJdyLMbE" role="2OqNvi">
                                  <node concept="2OqwBi" id="7XdbJdyLNee" role="25WWJ7">
                                    <node concept="37vLTw" id="7XdbJdyLMH1" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7XdbJdyLDP7" resolve="token" />
                                    </node>
                                    <node concept="liA8E" id="7XdbJdyLNxU" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:2RRx4MZ6CCe" resolve="apply" />
                                      <node concept="37vLTw" id="7XdbJdyLNO8" role="37wK5m">
                                        <ref role="3cqZAo" node="4JJCDIn5QT7" resolve="applicationSession" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7kTeLbQiq9u" role="3clFbw">
                            <node concept="37vLTw" id="7kTeLbQimHY" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XdbJdyLDP7" resolve="token" />
                            </node>
                            <node concept="liA8E" id="7kTeLbQitQ_" role="2OqNvi">
                              <ref role="37wK5l" to="i348:2RRx4MZ6CBV" resolve="isApplicable" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7XdbJdyTiIO" role="3cqZAp">
                          <node concept="37vLTw" id="7XdbJdyTiIM" role="3clFbG">
                            <ref role="3cqZAo" node="7XdbJdyLESK" resolve="builders" />
                          </node>
                        </node>
                        <node concept="3clFbH" id="7XdbJdyTtgp" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5MHpiyl_Uhz" role="3cqZAp">
              <node concept="1Ls8ON" id="6i42QSsqED_" role="3cqZAk">
                <node concept="2YIFZM" id="7XdbJdyManp" role="1Lso8e">
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
              <node concept="3clFbH" id="19wqdqOf_9c" role="3cqZAp" />
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
                    <node concept="3cpWs3" id="19wqdqOfthp" role="3K4E3e">
                      <node concept="Xl_RD" id="19wqdqOfxLV" role="3uHU7w">
                        <property role="Xl_RC" value="]" />
                      </node>
                      <node concept="3cpWs3" id="19wqdqOfyAl" role="3uHU7B">
                        <node concept="2EnYce" id="19wqdqOfDFk" role="3uHU7w">
                          <node concept="2JrnkZ" id="19wqdqOf$oS" role="2Oq$k0">
                            <node concept="2OqwBi" id="19wqdqOfz6F" role="2JrQYb">
                              <node concept="37vLTw" id="19wqdqOfyUl" role="2Oq$k0">
                                <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                              </node>
                              <node concept="I4A8Y" id="19wqdqOfzj5" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="19wqdqOfE34" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="19wqdqOfoa3" role="3uHU7B">
                          <node concept="3cpWs3" id="2DKqMqOksM4" role="3uHU7B">
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
                          </node>
                          <node concept="Xl_RD" id="19wqdqOfsaB" role="3uHU7w">
                            <property role="Xl_RC" value=" [" />
                          </node>
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
                        <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
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
            <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyQdwM" role="16eVyc">
        <property role="TrG5h" value="Token" />
        <node concept="3uibUv" id="7XdbJdyQhEU" role="3ztrMU">
          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8Glzbb" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyMJjJ" role="jymVt">
      <property role="TrG5h" value="collectRequired" />
      <node concept="37vLTG" id="7XdbJdyNeFb" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="7XdbJdyNeFc" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="16syzq" id="7XdbJdyQuae" role="11_B2D">
            <ref role="16sUi3" node="7XdbJdyQn2x" resolve="Token" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7XdbJdyNeFd" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7XdbJdyNeFe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4vBwiiV8GXc" role="3clF46">
        <property role="TrG5h" value="asTypeNodes" />
        <node concept="_YKpA" id="4vBwiiV8Ljs" role="1tU5fm">
          <node concept="3Tqbb2" id="4vBwiiV8LUn" role="_ZDj9" />
        </node>
      </node>
      <node concept="3vKaQO" id="7kTeLbQkXlH" role="3clF45">
        <node concept="3Tqbb2" id="7kTeLbQl62G" role="3O5elw" />
      </node>
      <node concept="3Tm6S6" id="7XdbJdyMMgC" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdyMJjN" role="3clF47">
        <node concept="3cpWs8" id="7XdbJdyNlwR" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyNlwS" role="3cpWs9">
            <property role="TrG5h" value="req" />
            <node concept="3vKaQO" id="7kTeLbQl9Uv" role="1tU5fm">
              <node concept="3Tqbb2" id="7kTeLbQljbq" role="3O5elw" />
            </node>
            <node concept="2OqwBi" id="7XdbJdyNlwV" role="33vP2m">
              <node concept="37vLTw" id="7XdbJdyNlwW" role="2Oq$k0">
                <ref role="3cqZAo" node="7XdbJdyNeFb" resolve="tpl" />
              </node>
              <node concept="liA8E" id="7XdbJdyNlwX" role="2OqNvi">
                <ref role="37wK5l" to="i348:7XdbJdyhRyL" resolve="applyReduce" />
                <node concept="37vLTw" id="7XdbJdyNlwY" role="37wK5m">
                  <ref role="3cqZAo" node="7XdbJdyNeFd" resolve="node" />
                </node>
                <node concept="2ShNRf" id="7XdbJdyNlwZ" role="37wK5m">
                  <node concept="Tc6Ow" id="7kTeLbQlGXX" role="2ShVmc">
                    <node concept="3Tqbb2" id="7kTeLbQlGXZ" role="HW$YZ" />
                  </node>
                </node>
                <node concept="1bVj0M" id="7XdbJdyNlx2" role="37wK5m">
                  <node concept="37vLTG" id="7XdbJdyNlx3" role="1bW2Oz">
                    <property role="TrG5h" value="req" />
                    <node concept="_YKpA" id="7kTeLbQlLCv" role="1tU5fm">
                      <node concept="3Tqbb2" id="7kTeLbQlUzo" role="_ZDj9" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="7XdbJdyNlx6" role="1bW2Oz">
                    <property role="TrG5h" value="token" />
                    <node concept="3uibUv" id="7XdbJdyNlx7" role="1tU5fm">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7XdbJdyNlx8" role="1bW5cS">
                    <node concept="3clFbJ" id="7kTeLbQiXFV" role="3cqZAp">
                      <node concept="3clFbS" id="7kTeLbQiXFX" role="3clFbx">
                        <node concept="3clFbF" id="7XdbJdyNlxa" role="3cqZAp">
                          <node concept="2OqwBi" id="7XdbJdyNlxb" role="3clFbG">
                            <node concept="37vLTw" id="7XdbJdyNlxc" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XdbJdyNlx3" resolve="req" />
                            </node>
                            <node concept="X8dFx" id="7XdbJdyNlxd" role="2OqNvi">
                              <node concept="2OqwBi" id="7XdbJdyNlxe" role="25WWJ7">
                                <node concept="37vLTw" id="7XdbJdyNlxf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7XdbJdyNlx6" resolve="token" />
                                </node>
                                <node concept="liA8E" id="7XdbJdyNlxg" role="2OqNvi">
                                  <ref role="37wK5l" to="i348:2RRx4MZ6CC4" resolve="requiredNodes" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="5lxnBcU9jKE" role="3cqZAp" />
                        <node concept="3clFbF" id="61wrp1Ja3bW" role="3cqZAp">
                          <node concept="2OqwBi" id="61wrp1Ja3bX" role="3clFbG">
                            <node concept="37vLTw" id="61wrp1Ja3bY" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XdbJdyNlx3" resolve="req" />
                            </node>
                            <node concept="X8dFx" id="61wrp1Ja3bZ" role="2OqNvi">
                              <node concept="2OqwBi" id="61wrp1Ja3c0" role="25WWJ7">
                                <node concept="2OqwBi" id="61wrp1Ja3c1" role="2Oq$k0">
                                  <node concept="37vLTw" id="61wrp1Ja3c2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7XdbJdyNlx6" resolve="token" />
                                  </node>
                                  <node concept="liA8E" id="61wrp1Ja3c3" role="2OqNvi">
                                    <ref role="37wK5l" to="i348:2RRx4MZ6CC4" resolve="requiredNodes" />
                                  </node>
                                </node>
                                <node concept="3goQfb" id="61wrp1Ja3c4" role="2OqNvi">
                                  <node concept="1bVj0M" id="61wrp1Ja3c5" role="23t8la">
                                    <node concept="3clFbS" id="61wrp1Ja3c6" role="1bW5cS">
                                      <node concept="3clFbF" id="4vBwiiV8XA_" role="3cqZAp">
                                        <node concept="2OqwBi" id="61wrp1Jb9EN" role="3clFbG">
                                          <node concept="2OqwBi" id="61wrp1JaY1y" role="2Oq$k0">
                                            <node concept="37vLTw" id="61wrp1JaTVz" role="2Oq$k0">
                                              <ref role="3cqZAo" node="61wrp1Ja3cc" resolve="it" />
                                            </node>
                                            <node concept="2z74zc" id="61wrp1Jb3M4" role="2OqNvi" />
                                          </node>
                                          <node concept="3$u5V9" id="61wrp1JbfxI" role="2OqNvi">
                                            <node concept="1bVj0M" id="61wrp1JbfxK" role="23t8la">
                                              <node concept="3clFbS" id="61wrp1JbfxL" role="1bW5cS">
                                                <node concept="3clFbF" id="61wrp1JboA4" role="3cqZAp">
                                                  <node concept="2OqwBi" id="61wrp1JbsBz" role="3clFbG">
                                                    <node concept="37vLTw" id="61wrp1JboA3" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="61wrp1JbfxM" resolve="ref" />
                                                    </node>
                                                    <node concept="2ZHEkA" id="61wrp1JbxMb" role="2OqNvi" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="Rh6nW" id="61wrp1JbfxM" role="1bW2Oz">
                                                <property role="TrG5h" value="ref" />
                                                <node concept="2jxLKc" id="61wrp1JbfxN" role="1tU5fm" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="61wrp1Ja3cc" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="61wrp1Ja3cd" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="5lxnBcU9jKP" role="3cqZAp" />
                        <node concept="3clFbF" id="4vBwiiV93PW" role="3cqZAp">
                          <node concept="2OqwBi" id="4vBwiiV9a97" role="3clFbG">
                            <node concept="37vLTw" id="4vBwiiV93PU" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XdbJdyNlx3" resolve="req" />
                            </node>
                            <node concept="X8dFx" id="4vBwiiV9gaM" role="2OqNvi">
                              <node concept="37vLTw" id="4vBwiiV9kvj" role="25WWJ7">
                                <ref role="3cqZAo" node="4vBwiiV8GXc" resolve="asTypeNodes" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="4vBwiiV9oEo" role="3cqZAp" />
                        <node concept="3clFbF" id="4vBwiiV9z4v" role="3cqZAp">
                          <node concept="2OqwBi" id="4vBwiiV9CYL" role="3clFbG">
                            <node concept="37vLTw" id="4vBwiiV9z4t" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XdbJdyNlx3" resolve="req" />
                            </node>
                            <node concept="X8dFx" id="4vBwiiV9J_N" role="2OqNvi">
                              <node concept="2OqwBi" id="4vBwiiV9WcB" role="25WWJ7">
                                <node concept="37vLTw" id="4vBwiiV9PDZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4vBwiiV8GXc" resolve="asTypeNodes" />
                                </node>
                                <node concept="3goQfb" id="4vBwiiVa1qZ" role="2OqNvi">
                                  <node concept="1bVj0M" id="4vBwiiVa1r0" role="23t8la">
                                    <node concept="3clFbS" id="4vBwiiVa1r1" role="1bW5cS">
                                      <node concept="3clFbF" id="4vBwiiVa1r2" role="3cqZAp">
                                        <node concept="2OqwBi" id="4vBwiiVa1r3" role="3clFbG">
                                          <node concept="2OqwBi" id="4vBwiiVa1r4" role="2Oq$k0">
                                            <node concept="37vLTw" id="4vBwiiVa1r5" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4vBwiiVa1rg" resolve="it" />
                                            </node>
                                            <node concept="2z74zc" id="4vBwiiVa1r6" role="2OqNvi" />
                                          </node>
                                          <node concept="3$u5V9" id="4vBwiiVa1r7" role="2OqNvi">
                                            <node concept="1bVj0M" id="4vBwiiVa1r8" role="23t8la">
                                              <node concept="3clFbS" id="4vBwiiVa1r9" role="1bW5cS">
                                                <node concept="3clFbF" id="4vBwiiVa1ra" role="3cqZAp">
                                                  <node concept="2OqwBi" id="4vBwiiVa1rb" role="3clFbG">
                                                    <node concept="37vLTw" id="4vBwiiVa1rc" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="4vBwiiVa1re" resolve="ref" />
                                                    </node>
                                                    <node concept="2ZHEkA" id="4vBwiiVa1rd" role="2OqNvi" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="Rh6nW" id="4vBwiiVa1re" role="1bW2Oz">
                                                <property role="TrG5h" value="ref" />
                                                <node concept="2jxLKc" id="4vBwiiVa1rf" role="1tU5fm" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="4vBwiiVa1rg" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="4vBwiiVa1rh" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="5lxnBcU9jL1" role="3cqZAp" />
                        <node concept="3SKdUt" id="7n0CLM0i47p" role="3cqZAp">
                          <node concept="3SKdUq" id="7n0CLM0i47r" role="3SKWNk">
                            <property role="3SKdUp" value="FIXME: treat all type node's descendants as required nodes" />
                          </node>
                        </node>
                        <node concept="1X3_iC" id="6hqFpWnwuIs" role="lGtFl">
                          <property role="3V$3am" value="statement" />
                          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                          <node concept="3clFbF" id="1Y1WZtYxnyU" role="8Wnug">
                            <node concept="2OqwBi" id="1Y1WZtYxt_c" role="3clFbG">
                              <node concept="37vLTw" id="1Y1WZtYxnyS" role="2Oq$k0">
                                <ref role="3cqZAo" node="7XdbJdyNlx3" resolve="req" />
                              </node>
                              <node concept="X8dFx" id="1Y1WZtYxziB" role="2OqNvi">
                                <node concept="2OqwBi" id="1Y1WZtYxGKc" role="25WWJ7">
                                  <node concept="2OqwBi" id="1Y1WZtYxBeX" role="2Oq$k0">
                                    <node concept="37vLTw" id="1Y1WZtYxBeY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7XdbJdyNlx6" resolve="token" />
                                    </node>
                                    <node concept="liA8E" id="1Y1WZtYxBeZ" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:2RRx4MZ6CC4" resolve="requiredNodes" />
                                    </node>
                                  </node>
                                  <node concept="3goQfb" id="1Y1WZtYxLtp" role="2OqNvi">
                                    <node concept="1bVj0M" id="1Y1WZtYxLtr" role="23t8la">
                                      <node concept="3clFbS" id="1Y1WZtYxLts" role="1bW5cS">
                                        <node concept="3clFbF" id="1Y1WZtYxPTg" role="3cqZAp">
                                          <node concept="2OqwBi" id="1Y1WZtYxTTB" role="3clFbG">
                                            <node concept="37vLTw" id="1Y1WZtYxPTf" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1Y1WZtYxLtt" resolve="it" />
                                            </node>
                                            <node concept="2Rf3mk" id="1Y1WZtYxZ5R" role="2OqNvi">
                                              <node concept="1xIGOp" id="1Y1WZtYyoBF" role="1xVPHs" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="1Y1WZtYxLtt" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="1Y1WZtYxLtu" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7kTeLbQj7m7" role="3clFbw">
                        <node concept="37vLTw" id="7kTeLbQj2p3" role="2Oq$k0">
                          <ref role="3cqZAo" node="7XdbJdyNlx6" resolve="token" />
                        </node>
                        <node concept="liA8E" id="7kTeLbQjbIV" role="2OqNvi">
                          <ref role="37wK5l" to="i348:2RRx4MZ6CBV" resolve="isApplicable" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7XdbJdyTmDa" role="3cqZAp">
                      <node concept="37vLTw" id="7XdbJdyTmD8" role="3clFbG">
                        <ref role="3cqZAo" node="7XdbJdyNlx3" resolve="req" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="7XdbJdyTqfY" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7XdbJdyNlxk" role="3cqZAp">
          <node concept="37vLTw" id="7XdbJdyOdMK" role="3cqZAk">
            <ref role="3cqZAo" node="7XdbJdyNlwS" resolve="req" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyQn2x" role="16eVyc">
        <property role="TrG5h" value="Token" />
        <node concept="3uibUv" id="7XdbJdyQqdA" role="3ztrMU">
          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyMFSz" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1I3Xv" role="jymVt">
      <property role="TrG5h" value="applyAndCollectRequired" />
      <node concept="3Tm6S6" id="tIwzd1I3Xw" role="1B3o_S" />
      <node concept="37vLTG" id="tIwzd1I3Xm" role="3clF46">
        <property role="TrG5h" value="stage_tpls" />
        <node concept="A3Dl8" id="tIwzd1I3Xn" role="1tU5fm">
          <node concept="1LlUBW" id="7t5VLKHawYT" role="A3Ik2">
            <node concept="3uibUv" id="1CcQBrPeaZd" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
            </node>
            <node concept="3uibUv" id="1ffsG7c4WJ7" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
              <node concept="3qUE_q" id="7XdbJdyRon3" role="11_B2D">
                <node concept="3uibUv" id="7XdbJdyRsyk" role="3qUE_r">
                  <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                </node>
              </node>
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
        <node concept="3cpWs8" id="4vBwiiV8bzc" role="3cqZAp">
          <node concept="3cpWsn" id="4vBwiiV8bzf" role="3cpWs9">
            <property role="TrG5h" value="asTypeNodes" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="4vBwiiV8bz8" role="1tU5fm">
              <node concept="3Tqbb2" id="4vBwiiV8cKb" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="4vBwiiV8dgp" role="33vP2m">
              <node concept="Tc6Ow" id="4vBwiiV8dbm" role="2ShVmc">
                <node concept="3Tqbb2" id="4vBwiiV8dbn" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4vBwiiV7yNU" role="3cqZAp">
          <node concept="3cpWsn" id="4vBwiiV7yNV" role="3cpWs9">
            <property role="TrG5h" value="collectAsType" />
            <node concept="3uibUv" id="4vBwiiV7yNT" role="1tU5fm">
              <ref role="3uigEE" to="6pyv:4vBwiiV6130" resolve="RuleApplicationSession.RuleApplicationSessionListener" />
            </node>
            <node concept="2ShNRf" id="4vBwiiV7yNW" role="33vP2m">
              <node concept="YeOm9" id="4vBwiiV7yNX" role="2ShVmc">
                <node concept="1Y3b0j" id="4vBwiiV7yNY" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="6pyv:4vBwiiV6130" resolve="RuleApplicationSession.RuleApplicationSessionListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="4vBwiiV7yNZ" role="1B3o_S" />
                  <node concept="3clFb_" id="4vBwiiV7yO0" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="asType" />
                    <node concept="37vLTG" id="4vBwiiV7yO1" role="3clF46">
                      <property role="TrG5h" value="typeNode" />
                      <node concept="3Tqbb2" id="4vBwiiV7yO2" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="4vBwiiV7yO3" role="3clF45" />
                    <node concept="3Tm1VV" id="4vBwiiV7yO4" role="1B3o_S" />
                    <node concept="3clFbS" id="4vBwiiV7yO5" role="3clF47">
                      <node concept="3clFbF" id="4vBwiiV8dCo" role="3cqZAp">
                        <node concept="2OqwBi" id="4vBwiiV8eDN" role="3clFbG">
                          <node concept="37vLTw" id="4vBwiiV8dCn" role="2Oq$k0">
                            <ref role="3cqZAo" node="4vBwiiV8bzf" resolve="asTypeNodes" />
                          </node>
                          <node concept="TSZUe" id="4vBwiiV8gl2" role="2OqNvi">
                            <node concept="37vLTw" id="4vBwiiV8gvR" role="25WWJ7">
                              <ref role="3cqZAo" node="4vBwiiV7yO1" resolve="typeNode" />
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
        <node concept="3clFbH" id="4vBwiiV8924" role="3cqZAp" />
        <node concept="1DcWWT" id="tIwzd1I3Ww" role="3cqZAp">
          <node concept="3clFbS" id="tIwzd1I3Wx" role="2LFqv$">
            <node concept="3clFbF" id="4vBwiiV8A41" role="3cqZAp">
              <node concept="2OqwBi" id="4vBwiiV8C0C" role="3clFbG">
                <node concept="37vLTw" id="4vBwiiV8A3Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="4vBwiiV8bzf" resolve="asTypeNodes" />
                </node>
                <node concept="2Kehj3" id="4vBwiiV8DII" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="4vBwiiV7uJ1" role="3cqZAp">
              <node concept="2OqwBi" id="4vBwiiV7w5X" role="3clFbG">
                <node concept="37vLTw" id="4vBwiiV7uIZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4JJCDIn5QT7" resolve="applicationSession" />
                </node>
                <node concept="liA8E" id="4vBwiiV7x2n" role="2OqNvi">
                  <ref role="37wK5l" to="6pyv:4vBwiiV6eZ$" resolve="addListener" />
                  <node concept="37vLTw" id="4vBwiiV7yO6" role="37wK5m">
                    <ref role="3cqZAo" node="4vBwiiV7yNV" resolve="collectAsType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2GUZhq" id="4vBwiiV7qJC" role="3cqZAp">
              <node concept="3clFbS" id="4vBwiiV7qJE" role="2GV8ay">
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
                        <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="stage_tpl" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4MqhgXUBzFn" role="3cqZAp">
                  <node concept="3cpWsn" id="4MqhgXUBzFo" role="3cpWs9">
                    <property role="TrG5h" value="template" />
                    <node concept="3uibUv" id="4MqhgXUBzF7" role="1tU5fm">
                      <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                      <node concept="3qUE_q" id="7XdbJdyRy2h" role="11_B2D">
                        <node concept="3uibUv" id="7XdbJdyRyYU" role="3qUE_r">
                          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                        </node>
                      </node>
                    </node>
                    <node concept="1LFfDK" id="4MqhgXUBzFp" role="33vP2m">
                      <node concept="3cmrfG" id="4MqhgXUBzFq" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="4MqhgXUBzFr" role="1LFl5Q">
                        <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="stage_tpl" />
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
                          <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
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
                            <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="4MqhgXUBmIF" role="33vP2m">
                          <node concept="Tc6Ow" id="4MqhgXUBmIG" role="2ShVmc">
                            <node concept="3uibUv" id="4MqhgXUBmIH" role="HW$YZ">
                              <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
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
                                      <ref role="37wK5l" to="6pyv:7eGEHDlc$bR" resolve="appendHeadKept" />
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
                                    <ref role="37wK5l" to="6pyv:7nkyKX7mcq7" resolve="hasHead" />
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
                                    <property role="3SKdUp" value="FIXME: support rules that only add required roots instead of this hack!s" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6i42QSsDvfw" role="3cqZAp">
                                  <node concept="2OqwBi" id="6i42QSsDvq9" role="3clFbG">
                                    <node concept="2GrUjf" id="6i42QSsDvfu" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="6i42QSsDvRB" role="2OqNvi">
                                      <ref role="37wK5l" to="6pyv:7eGEHDlc$aw" resolve="appendBody" />
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
                                    <ref role="37wK5l" to="6pyv:7nkyKX7mnWq" resolve="hasBody" />
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
                      <node concept="1rXfSq" id="7XdbJdyPp8s" role="25WWJ7">
                        <ref role="37wK5l" node="7XdbJdyMJjJ" resolve="collectRequired" />
                        <node concept="37vLTw" id="7XdbJdyPr99" role="37wK5m">
                          <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                        </node>
                        <node concept="37vLTw" id="7XdbJdyPqxu" role="37wK5m">
                          <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                        </node>
                        <node concept="37vLTw" id="4vBwiiV8QJb" role="37wK5m">
                          <ref role="3cqZAo" node="4vBwiiV8bzf" resolve="asTypeNodes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4vBwiiV7qJD" role="3cqZAp" />
              </node>
              <node concept="3clFbS" id="4vBwiiV7qJF" role="2GVbov">
                <node concept="3clFbF" id="4vBwiiV7_ak" role="3cqZAp">
                  <node concept="2OqwBi" id="4vBwiiV7_al" role="3clFbG">
                    <node concept="37vLTw" id="4vBwiiV7_am" role="2Oq$k0">
                      <ref role="3cqZAo" node="4JJCDIn5QT7" resolve="applicationSession" />
                    </node>
                    <node concept="liA8E" id="4vBwiiV7_an" role="2OqNvi">
                      <ref role="37wK5l" to="6pyv:4vBwiiV6o8F" resolve="removeListener" />
                      <node concept="37vLTw" id="4vBwiiV7_ao" role="37wK5m">
                        <ref role="3cqZAo" node="4vBwiiV7yNV" resolve="collectAsType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4vBwiiV8iBJ" role="3cqZAp" />
          </node>
          <node concept="3cpWsn" id="tIwzd1I3Xj" role="1Duv9x">
            <property role="TrG5h" value="stage_tpl" />
            <node concept="1LlUBW" id="7t5VLKHazo3" role="1tU5fm">
              <node concept="3uibUv" id="1CcQBrPeewI" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
              </node>
              <node concept="3uibUv" id="1ffsG7c4Zfy" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                <node concept="3qUE_q" id="7XdbJdyRwgl" role="11_B2D">
                  <node concept="3uibUv" id="7XdbJdyRx9N" role="3qUE_r">
                    <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="tIwzd1I3Xs" role="1DdaDG">
            <ref role="3cqZAo" node="tIwzd1I3Xm" resolve="stage_tpls" />
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
      <node concept="2tJIrI" id="4vBwiiVcARn" role="jymVt" />
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
              <property role="TrG5h" value="tpls" />
              <node concept="A3Dl8" id="5ntLU8GlzSt" role="1tU5fm">
                <node concept="1LlUBW" id="7t5VLKHavfN" role="A3Ik2">
                  <node concept="3uibUv" id="1CcQBrPe8g0" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="1ffsG7c5hrm" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                    <node concept="3qUE_q" id="7XdbJdyRI0u" role="11_B2D">
                      <node concept="3uibUv" id="7XdbJdyRId5" role="3qUE_r">
                        <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5ntLU8GlzSK" role="33vP2m">
                <node concept="2OqwBi" id="7kTeLbPhn3j" role="2Oq$k0">
                  <node concept="37vLTw" id="7kTeLbPhmHo" role="2Oq$k0">
                    <ref role="3cqZAo" node="7kTeLbPh2dh" resolve="typeAspectRuntime" />
                  </node>
                  <node concept="liA8E" id="7kTeLbPhnka" role="2OqNvi">
                    <ref role="37wK5l" node="4QPCta1yW5f" resolve="getRuleTemplateIndex" />
                  </node>
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
                  <ref role="3cqZAo" node="5ntLU8GlzSJ" resolve="tpls" />
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
    <node concept="2tJIrI" id="7kTeLbPhr4f" role="jymVt" />
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
        <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="RuleApplicationSession" />
      </node>
    </node>
    <node concept="312cEg" id="7kTeLbPh2dh" role="jymVt">
      <property role="TrG5h" value="typeAspectRuntime" />
      <node concept="3Tm6S6" id="7kTeLbPh2di" role="1B3o_S" />
      <node concept="3uibUv" id="7kTeLbPh2dk" role="1tU5fm">
        <ref role="3uigEE" node="4QPCta1yO5O" resolve="TypeAspectRuntime" />
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
    <node concept="3Tm1VV" id="55Q$YFtwNr_" role="1B3o_S" />
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
        <node concept="3clFbF" id="4QPCta1D9Tj" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta1DaBF" role="3clFbG">
            <node concept="37vLTw" id="4QPCta1D9Th" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1zvN6" resolve="stages" />
            </node>
            <node concept="TSZUe" id="4QPCta1Dbg0" role="2OqNvi">
              <node concept="37vLTw" id="4QPCta1Dbpe" role="25WWJ7">
                <ref role="3cqZAo" node="1CcQBrPc$Rq" resolve="handlingStage" />
              </node>
            </node>
          </node>
        </node>
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
    <node concept="2tJIrI" id="4QPCta1zIJW" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1zKCT" role="jymVt">
      <property role="TrG5h" value="stages" />
      <node concept="A3Dl8" id="4QPCta1zMzv" role="3clF45">
        <node concept="3uibUv" id="4QPCta1zOh1" role="A3Ik2">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4QPCta1zKCW" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1zKCX" role="3clF47">
        <node concept="3clFbF" id="4QPCta1zRNF" role="3cqZAp">
          <node concept="37vLTw" id="4QPCta1zRNE" role="3clFbG">
            <ref role="3cqZAo" node="4QPCta1zvN6" resolve="stages" />
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
            <node concept="3qUE_q" id="7XdbJdyRKIf" role="11_B2D">
              <node concept="3uibUv" id="7XdbJdyRMGp" role="3qUE_r">
                <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
              </node>
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
              <node concept="1LlUBW" id="7t5VLKHacJO" role="_ZDj9">
                <node concept="3uibUv" id="1CcQBrPd_Sl" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="3uibUv" id="7XdbJdyRODp" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  <node concept="3qUE_q" id="7XdbJdyRODq" role="11_B2D">
                    <node concept="3uibUv" id="7XdbJdyRODr" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="12yN8DyvD8g" role="33vP2m">
              <node concept="Tc6Ow" id="12yN8DyvD72" role="2ShVmc">
                <node concept="1LlUBW" id="7t5VLKHa9fr" role="HW$YZ">
                  <node concept="3uibUv" id="1CcQBrPdCZx" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="7XdbJdyRQxJ" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                    <node concept="3qUE_q" id="7XdbJdyRQxK" role="11_B2D">
                      <node concept="3uibUv" id="7XdbJdyRQxL" role="3qUE_r">
                        <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                      </node>
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
                        <node concept="3uibUv" id="7XdbJdyRSmQ" role="1Lm7xW">
                          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                          <node concept="3qUE_q" id="7XdbJdyRSmR" role="11_B2D">
                            <node concept="3uibUv" id="7XdbJdyRSmS" role="3qUE_r">
                              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3EllGN" id="12yN8DywoJa" role="33vP2m">
                      <node concept="37vLTw" id="12yN8Dywulc" role="3ElVtu">
                        <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                      </node>
                      <node concept="37vLTw" id="12yN8DywoJc" role="3ElQJh">
                        <ref role="3cqZAo" node="12yN8DyvDfi" resolve="templates" />
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
                            <node concept="1LFfDK" id="7XdbJdyJNzj" role="2Oq$k0">
                              <node concept="3cmrfG" id="7XdbJdyJNzk" role="1LF_Uc">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="37vLTw" id="7XdbJdyJNzl" role="1LFl5Q">
                                <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7XdbJdyJLhe" role="2OqNvi">
                              <ref role="37wK5l" to="i348:1ffsG7bWyMV" resolve="isExactMatch" />
                            </node>
                          </node>
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
                      <node concept="3uibUv" id="7XdbJdySrgC" role="1Lm7xW">
                        <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                        <node concept="3qUE_q" id="7XdbJdySrgD" role="11_B2D">
                          <node concept="3uibUv" id="7XdbJdySrgE" role="3qUE_r">
                            <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                          </node>
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
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="templates" />
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
        <node concept="TUZQ0" id="12yN8Dyv_NY" role="3nqlJM">
          <property role="TUZQ4" value="node to search templates for" />
          <node concept="zr_55" id="12yN8Dyv_O0" role="zr_5Q">
            <ref role="zr_51" node="12yN8DyvzeF" resolve="node" />
          </node>
        </node>
        <node concept="x79VA" id="12yN8Dyv_O1" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node as a tuple [stage, template]" />
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
          <node concept="3uibUv" id="7XdbJdyRWsv" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            <node concept="3qUE_q" id="7XdbJdyRWsw" role="11_B2D">
              <node concept="3uibUv" id="7XdbJdyRWsx" role="3qUE_r">
                <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
              </node>
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
              <node concept="1LlUBW" id="7t5VLKHb0SG" role="_ZDj9">
                <node concept="3uibUv" id="1CcQBrPdKr0" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="3uibUv" id="7XdbJdyS2mz" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  <node concept="3qUE_q" id="7XdbJdyS2m$" role="11_B2D">
                    <node concept="3uibUv" id="7XdbJdyS2m_" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5NuEpF1qn9J" role="33vP2m">
              <node concept="Tc6Ow" id="5NuEpF1qn9K" role="2ShVmc">
                <node concept="1LlUBW" id="7t5VLKHb1Xg" role="HW$YZ">
                  <node concept="3uibUv" id="1CcQBrPdQJh" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="7XdbJdyS4j5" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                    <node concept="3qUE_q" id="7XdbJdyS4j6" role="11_B2D">
                      <node concept="3uibUv" id="7XdbJdyS4j7" role="3qUE_r">
                        <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                      </node>
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
                  <node concept="1LlUBW" id="1CcQBrPdScq" role="3O5elw">
                    <node concept="3uibUv" id="1CcQBrPdT5w" role="1Lm7xW">
                      <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                    </node>
                    <node concept="3uibUv" id="7XdbJdyS6dB" role="1Lm7xW">
                      <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                      <node concept="3qUE_q" id="7XdbJdyS6dC" role="11_B2D">
                        <node concept="3uibUv" id="7XdbJdyS6dD" role="3qUE_r">
                          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="5NuEpF1qnap" role="33vP2m">
                  <node concept="10Nm6u" id="5NuEpF1qPk$" role="3ElVtu" />
                  <node concept="37vLTw" id="5NuEpF1qnar" role="3ElQJh">
                    <ref role="3cqZAo" node="12yN8DyvDfi" resolve="templates" />
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
                <node concept="1LlUBW" id="1CcQBrPdV7J" role="1tU5fm">
                  <node concept="3uibUv" id="1CcQBrPdV7K" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                  </node>
                  <node concept="3uibUv" id="7XdbJdySs6B" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                    <node concept="3qUE_q" id="7XdbJdySs6C" role="11_B2D">
                      <node concept="3uibUv" id="7XdbJdySs6D" role="3qUE_r">
                        <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                      </node>
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
              <ref role="3cqZAo" node="12yN8DyvDfi" resolve="templates" />
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
            <property role="1dT_AB" value="Searches and returns all rule templates applicable without the input node." />
          </node>
        </node>
        <node concept="x79VA" id="5NuEpF1qnbD" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node as a tuple [stage, template]" />
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
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="templates" />
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
                        <node concept="3uibUv" id="7XdbJdySsFg" role="1Lm7xW">
                          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                          <node concept="3qUE_q" id="7XdbJdySsFh" role="11_B2D">
                            <node concept="3uibUv" id="7XdbJdySsFi" role="3qUE_r">
                              <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                            </node>
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
                        <ref role="3cqZAo" node="12yN8DyvDfi" resolve="templates" />
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
                                  <node concept="3uibUv" id="7XdbJdySth5" role="1Lm7xW">
                                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                                    <node concept="3qUE_q" id="7XdbJdySth6" role="11_B2D">
                                      <node concept="3uibUv" id="7XdbJdySth7" role="3qUE_r">
                                        <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                                      </node>
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
                            <ref role="3cqZAo" node="12yN8DyvDfi" resolve="templates" />
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
                <node concept="3uibUv" id="7XdbJdySBO1" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  <node concept="3qUE_q" id="7XdbJdySBO2" role="11_B2D">
                    <node concept="3uibUv" id="7XdbJdySBO3" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                    </node>
                  </node>
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
    <node concept="312cEg" id="12yN8DyvDfi" role="jymVt">
      <property role="TrG5h" value="templates" />
      <node concept="3Tm6S6" id="12yN8DyvDfj" role="1B3o_S" />
      <node concept="3rvAFt" id="12yN8Dyw7uY" role="1tU5fm">
        <node concept="3bZ5Sz" id="YGS68MZPLr" role="3rvQeY" />
        <node concept="3vKaQO" id="12yN8DyDzne" role="3rvSg0">
          <node concept="1LlUBW" id="1CcQBrPdpQH" role="3O5elw">
            <node concept="3uibUv" id="1CcQBrPdpQI" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
            </node>
            <node concept="3uibUv" id="7XdbJdyRSXd" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
              <node concept="3qUE_q" id="7XdbJdyRSXe" role="11_B2D">
                <node concept="3uibUv" id="7XdbJdyRSXf" role="3qUE_r">
                  <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                </node>
              </node>
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
              <node concept="3uibUv" id="7XdbJdyRULm" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                <node concept="3qUE_q" id="7XdbJdyRULn" role="11_B2D">
                  <node concept="3uibUv" id="7XdbJdyRULo" role="3qUE_r">
                    <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleApplicationToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4QPCta1zvN6" role="jymVt">
      <property role="TrG5h" value="stages" />
      <node concept="3Tm6S6" id="4QPCta1zvN7" role="1B3o_S" />
      <node concept="_YKpA" id="4QPCta1zxBf" role="1tU5fm">
        <node concept="3uibUv" id="4QPCta1zxCv" role="_ZDj9">
          <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
        </node>
      </node>
      <node concept="2ShNRf" id="4QPCta1zxHP" role="33vP2m">
        <node concept="Tc6Ow" id="4QPCta1zxHo" role="2ShVmc">
          <node concept="3uibUv" id="4QPCta1zxHp" role="HW$YZ">
            <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
          </node>
        </node>
      </node>
    </node>
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
            <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
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
                  <ref role="37wK5l" to="6pyv:4MqhgXUMbtk" resolve="addRule" />
                  <node concept="37vLTw" id="4MqhgXUN$UY" role="37wK5m">
                    <ref role="3cqZAo" node="4MqhgXUBifv" resolve="ruleTemplate" />
                  </node>
                  <node concept="2OqwBi" id="4MqhgXUN_SJ" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUN_KK" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUBC7W" resolve="ruleBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUNA9M" role="2OqNvi">
                      <ref role="37wK5l" to="6pyv:7eGEHDlc$ck" resolve="toRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUBC7W" role="1Duv9x">
            <property role="TrG5h" value="ruleBuilder" />
            <node concept="3uibUv" id="4MqhgXUBC80" role="1tU5fm">
              <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
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
                      <ref role="37wK5l" to="6pyv:4MqhgXUNDLG" resolve="toHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4MqhgXUPQF0" role="1Duv9x">
            <property role="TrG5h" value="handlerBuilder" />
            <node concept="3uibUv" id="4MqhgXUPQF4" role="1tU5fm">
              <ref role="3uigEE" to="6pyv:4MqhgXUMauK" resolve="HandlerBuilder" />
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
        <ref role="3uigEE" to="6pyv:4MqhgXUMauK" resolve="HandlerBuilder" />
      </node>
      <node concept="3Tm6S6" id="4MqhgXUMW1s" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUMUZ_" role="3clF47">
        <node concept="3cpWs8" id="4MqhgXUN0MC" role="3cqZAp">
          <node concept="3cpWsn" id="4MqhgXUN0MD" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4MqhgXUN0MA" role="1tU5fm">
              <ref role="3uigEE" to="6pyv:4MqhgXUMauK" resolve="HandlerBuilder" />
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
                    <ref role="37wK5l" to="6pyv:4MqhgXUMb4h" resolve="HandlerBuilder" />
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
                      <ref role="37wK5l" to="6pyv:4MqhgXUMb4h" resolve="HandlerBuilder" />
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
          <ref role="3uigEE" to="6pyv:4MqhgXUMauK" resolve="HandlerBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="4MqhgXUMSOn" role="33vP2m">
        <node concept="3rGOSV" id="4MqhgXUMSMK" role="2ShVmc">
          <node concept="3uibUv" id="4MqhgXUMSML" role="3rHrn6">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
          </node>
          <node concept="3uibUv" id="4MqhgXUMSMM" role="3rHtpV">
            <ref role="3uigEE" to="6pyv:4MqhgXUMauK" resolve="HandlerBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUPV7S" role="jymVt" />
    <node concept="3Tm1VV" id="4MqhgXUBidP" role="1B3o_S" />
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
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
    <node concept="2tJIrI" id="1hX44vNlSNY" role="jymVt" />
    <node concept="3clFbW" id="1hX44vNlSOK" role="jymVt">
      <node concept="3cqZAl" id="1hX44vNlSOM" role="3clF45" />
      <node concept="3Tm1VV" id="1hX44vNlSON" role="1B3o_S" />
      <node concept="3clFbS" id="1hX44vNlSOO" role="3clF47">
        <node concept="3clFbF" id="1hX44vNniCn" role="3cqZAp">
          <node concept="37vLTI" id="1hX44vNniCp" role="3clFbG">
            <node concept="2OqwBi" id="1hX44vNniCt" role="37vLTJ">
              <node concept="Xjq3P" id="1hX44vNniCw" role="2Oq$k0" />
              <node concept="2OwXpG" id="1hX44vNniCs" role="2OqNvi">
                <ref role="2Oxat5" node="1hX44vNniCj" resolve="typeManifest" />
              </node>
            </node>
            <node concept="37vLTw" id="1hX44vNniCx" role="37vLTx">
              <ref role="3cqZAo" node="1hX44vNlSPE" resolve="typeManifest" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1hX44vNnpfY" role="3cqZAp">
          <node concept="1rXfSq" id="1hX44vNnpfX" role="3clFbG">
            <ref role="37wK5l" node="1hX44vNnpfT" resolve="collectTypes" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hX44vNlSPE" role="3clF46">
        <property role="TrG5h" value="typeManifest" />
        <node concept="3uibUv" id="1hX44vNlSPD" role="1tU5fm">
          <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
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
      <property role="TrG5h" value="forConcept" />
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
        <node concept="3SKdUt" id="1L74NXGis3H" role="3cqZAp">
          <node concept="3SKdUq" id="1L74NXGis3I" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: load the correct typetable!!!" />
          </node>
        </node>
        <node concept="3clFbF" id="1eKXYsjI8s4" role="3cqZAp">
          <node concept="2OqwBi" id="1eKXYsjIasl" role="3clFbG">
            <node concept="2OqwBi" id="1eKXYsjI99Y" role="2Oq$k0">
              <node concept="37vLTw" id="1eKXYsjI8s2" role="2Oq$k0">
                <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
              </node>
              <node concept="1uHKPH" id="1eKXYsjIagV" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="1eKXYsjIaC7" role="2OqNvi">
              <ref role="37wK5l" to="psr6:4KRwoelAtxl" resolve="macroTemplate" />
              <node concept="37vLTw" id="1eKXYsjIaXa" role="37wK5m">
                <ref role="3cqZAo" node="4nxCIBqyARP" resolve="concept" />
              </node>
              <node concept="16syzq" id="1eKXYsjIddo" role="3PaCim">
                <ref role="16sUi3" node="1eKXYsjIb$d" resolve="Cfg" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="1eKXYsjIb$d" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="1eKXYsjIcrC" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nxCIBqyBjc" role="jymVt" />
    <node concept="3clFb_" id="1hX44vNnpfT" role="jymVt">
      <property role="TrG5h" value="collectTypes" />
      <node concept="3Tm6S6" id="1hX44vNnpfU" role="1B3o_S" />
      <node concept="3cqZAl" id="1hX44vNnpfV" role="3clF45" />
      <node concept="3clFbS" id="1hX44vNnpfH" role="3clF47">
        <node concept="3SKdUt" id="1hX44vNnqZn" role="3cqZAp">
          <node concept="3SKdUq" id="1hX44vNnqZp" role="3SKWNk">
            <property role="3SKdUp" value="TODO: user code" />
          </node>
        </node>
        <node concept="3clFbF" id="1hX44vNnpfI" role="3cqZAp">
          <node concept="2OqwBi" id="1hX44vNnpfJ" role="3clFbG">
            <node concept="37vLTw" id="159_25Mmht6" role="2Oq$k0">
              <ref role="3cqZAo" node="1hX44vNniCj" resolve="typeManifest" />
            </node>
            <node concept="liA8E" id="1hX44vNnpfL" role="2OqNvi">
              <ref role="37wK5l" to="psr6:1pPth$m7IW6" resolve="collectMacroTables" />
              <node concept="2ShNRf" id="1hX44vNnpfM" role="37wK5m">
                <node concept="HV5vD" id="1hX44vNnpfN" role="2ShVmc">
                  <ref role="HV5vE" node="1hX44vNlSRx" resolve="MacroTemplateIndex.Collector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hX44vNnqaY" role="jymVt" />
    <node concept="312cEu" id="1hX44vNlSRx" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Collector" />
      <node concept="3Tm6S6" id="1hX44vNlSSd" role="1B3o_S" />
      <node concept="3uibUv" id="1hX44vNlSTo" role="EKbjA">
        <ref role="3uigEE" to="fqlx:2N2MQGCMOyq" resolve="MacroTableCollector" />
      </node>
      <node concept="2tJIrI" id="4JJCDImP6rL" role="jymVt" />
      <node concept="3clFb_" id="4JJCDImP6AT" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="addMacroTable" />
        <node concept="37vLTG" id="4JJCDImP6AU" role="3clF46">
          <property role="TrG5h" value="macroTable" />
          <node concept="3uibUv" id="4JJCDImP6AV" role="1tU5fm">
            <ref role="3uigEE" to="psr6:1pPth$m7IVF" resolve="AbstractMacroTable" />
          </node>
        </node>
        <node concept="3cqZAl" id="4JJCDImP6AW" role="3clF45" />
        <node concept="3Tm1VV" id="4JJCDImP6AX" role="1B3o_S" />
        <node concept="3clFbS" id="4JJCDImP6AZ" role="3clF47">
          <node concept="3clFbF" id="4JJCDImRZbZ" role="3cqZAp">
            <node concept="2OqwBi" id="4JJCDImRZMw" role="3clFbG">
              <node concept="37vLTw" id="4JJCDImRZbY" role="2Oq$k0">
                <ref role="3cqZAo" node="4JJCDImRYzW" resolve="macroTables" />
              </node>
              <node concept="TSZUe" id="4JJCDImS0wq" role="2OqNvi">
                <node concept="37vLTw" id="4JJCDImS0FC" role="25WWJ7">
                  <ref role="3cqZAo" node="4JJCDImP6AU" resolve="macroTable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4JJCDImP6B0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4nxCIBqsufG" role="jymVt" />
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
      <property role="TrG5h" value="typeManifest" />
      <node concept="3Tm6S6" id="1hX44vNniCk" role="1B3o_S" />
      <node concept="3uibUv" id="1hX44vNniCm" role="1tU5fm">
        <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hX44vNnjHa" role="jymVt" />
  </node>
  <node concept="312cEu" id="4QPCta1qmXf">
    <property role="TrG5h" value="RuleApplicationSessionImpl" />
    <node concept="2tJIrI" id="4QPCta1qmXg" role="jymVt" />
    <node concept="3clFbW" id="4QPCta1qmXh" role="jymVt">
      <node concept="37vLTG" id="4QPCta1qmXi" role="3clF46">
        <property role="TrG5h" value="typeAspectRuntime" />
        <node concept="3uibUv" id="7kTeLbPhDBS" role="1tU5fm">
          <ref role="3uigEE" node="4QPCta1yO5O" resolve="TypeAspectRuntime" />
        </node>
      </node>
      <node concept="3cqZAl" id="4QPCta1qmXk" role="3clF45" />
      <node concept="3Tm1VV" id="4QPCta1qmXl" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1qmXm" role="3clF47">
        <node concept="3clFbF" id="7kTeLbPhEe4" role="3cqZAp">
          <node concept="37vLTI" id="7kTeLbPhEe6" role="3clFbG">
            <node concept="2OqwBi" id="7kTeLbPhFas" role="37vLTJ">
              <node concept="Xjq3P" id="7kTeLbPhFp3" role="2Oq$k0" />
              <node concept="2OwXpG" id="7kTeLbPhFav" role="2OqNvi">
                <ref role="2Oxat5" node="7kTeLbPhEe0" resolve="typeAspectRuntime" />
              </node>
            </node>
            <node concept="37vLTw" id="7kTeLbPhEea" role="37vLTx">
              <ref role="3cqZAo" node="4QPCta1qmXi" resolve="typeAspectRuntime" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1qmXt" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1qmXu" role="jymVt">
      <property role="TrG5h" value="expandMacro" />
      <node concept="37vLTG" id="4QPCta1qmXv" role="3clF46">
        <property role="TrG5h" value="logical" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1HWyn8j8Ss$" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="1HWyn8j8SO9" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1qmXx" role="3clF46">
        <property role="TrG5h" value="inputNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="4QPCta1qmXy" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4QPCta1qmXz" role="3clF45">
        <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="4QPCta1qmX$" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1qmX_" role="3clF47">
        <node concept="3clFbF" id="4vBwiiV6EZO" role="3cqZAp">
          <node concept="2OqwBi" id="4vBwiiV6G4l" role="3clFbG">
            <node concept="37vLTw" id="4vBwiiV6EZM" role="2Oq$k0">
              <ref role="3cqZAo" node="4vBwiiV5TUG" resolve="listeners" />
            </node>
            <node concept="2es0OD" id="4vBwiiV6Hwa" role="2OqNvi">
              <node concept="1bVj0M" id="4vBwiiV6Hwc" role="23t8la">
                <node concept="3clFbS" id="4vBwiiV6Hwd" role="1bW5cS">
                  <node concept="3clFbF" id="4vBwiiV6HFr" role="3cqZAp">
                    <node concept="2OqwBi" id="4vBwiiV6HRU" role="3clFbG">
                      <node concept="37vLTw" id="4vBwiiV6HFq" role="2Oq$k0">
                        <ref role="3cqZAo" node="4vBwiiV6Hwe" resolve="it" />
                      </node>
                      <node concept="liA8E" id="4vBwiiV6I51" role="2OqNvi">
                        <ref role="37wK5l" to="6pyv:4vBwiiV65KJ" resolve="asType" />
                        <node concept="37vLTw" id="4vBwiiV6Jbv" role="37wK5m">
                          <ref role="3cqZAo" node="4QPCta1qmXx" resolve="inputNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4vBwiiV6Hwe" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4vBwiiV6Hwf" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QPCta1qmXA" role="3cqZAp">
          <node concept="1rXfSq" id="4QPCta1qmXB" role="3clFbG">
            <ref role="37wK5l" node="4QPCta1qmZo" resolve="withTypeTemplate" />
            <node concept="2OqwBi" id="4QPCta1qmXC" role="37wK5m">
              <node concept="37vLTw" id="4QPCta1qmXD" role="2Oq$k0">
                <ref role="3cqZAo" node="4QPCta1qmXx" resolve="inputNode" />
              </node>
              <node concept="2yIwOk" id="4QPCta1qmXE" role="2OqNvi" />
            </node>
            <node concept="2ShNRf" id="4QPCta1qmXF" role="37wK5m">
              <node concept="YeOm9" id="4QPCta1qmXG" role="2ShVmc">
                <node concept="1Y3b0j" id="4QPCta1qmXH" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
                  <node concept="3Tm1VV" id="4QPCta1qmXI" role="1B3o_S" />
                  <node concept="3clFb_" id="4QPCta1qmXJ" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="4QPCta1qmXK" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="4QPCta1qmXL" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
                        <node concept="16syzq" id="4QPCta1qmXM" role="11_B2D">
                          <ref role="16sUi3" node="4QPCta1qmXX" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="4QPCta1qmXN" role="3clF45">
                      <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="4QPCta1qmXO" role="1B3o_S" />
                    <node concept="3clFbS" id="4QPCta1qmXP" role="3clF47">
                      <node concept="3clFbF" id="4QPCta1qmXQ" role="3cqZAp">
                        <node concept="2OqwBi" id="4QPCta1qmXR" role="3clFbG">
                          <node concept="37vLTw" id="4QPCta1qmXS" role="2Oq$k0">
                            <ref role="3cqZAo" node="4QPCta1qmXK" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="4QPCta1qmXT" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:60NbDCXG$nh" resolve="doExpand" />
                            <node concept="37vLTw" id="4QPCta1qmXU" role="37wK5m">
                              <ref role="3cqZAo" node="4QPCta1qmXx" resolve="inputNode" />
                            </node>
                            <node concept="37vLTw" id="4QPCta1qmXV" role="37wK5m">
                              <ref role="3cqZAo" node="4QPCta1qmXv" resolve="logical" />
                            </node>
                            <node concept="Xjq3P" id="4QPCta1qmXW" role="37wK5m">
                              <ref role="1HBi2w" node="4QPCta1qmXf" resolve="RuleApplicationSessionImpl" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="4QPCta1qmXX" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="4QPCta1qmXY" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="4QPCta1qmXZ" role="2Ghqu4">
                    <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4vBwiiV6zab" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1qmY0" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1qmY1" role="jymVt">
      <property role="TrG5h" value="callMacro" />
      <node concept="37vLTG" id="4QPCta1qmY2" role="3clF46">
        <property role="TrG5h" value="logical" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1HWyn8j8T0s" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3uibUv" id="1HWyn8j8T0t" role="11_B2D">
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1qmY4" role="3clF46">
        <property role="TrG5h" value="templateId" />
        <node concept="3uibUv" id="4QPCta1qmY5" role="1tU5fm">
          <ref role="3uigEE" to="psr6:4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1qmY6" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="true" />
        <node concept="8X2XB" id="4QPCta1qmY7" role="1tU5fm">
          <node concept="3uibUv" id="4QPCta1qmY8" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4QPCta1qmY9" role="3clF45">
        <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="4QPCta1qmYa" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1qmYb" role="3clF47">
        <node concept="3clFbF" id="4QPCta1qmYc" role="3cqZAp">
          <node concept="1rXfSq" id="4QPCta1qmYd" role="3clFbG">
            <ref role="37wK5l" node="4QPCta1qmZT" resolve="withTypeTemplate" />
            <node concept="37vLTw" id="4QPCta1qmYe" role="37wK5m">
              <ref role="3cqZAo" node="4QPCta1qmY4" resolve="templateId" />
            </node>
            <node concept="2ShNRf" id="4QPCta1qmYf" role="37wK5m">
              <node concept="YeOm9" id="4QPCta1qmYg" role="2ShVmc">
                <node concept="1Y3b0j" id="4QPCta1qmYh" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
                  <node concept="3Tm1VV" id="4QPCta1qmYi" role="1B3o_S" />
                  <node concept="3clFb_" id="4QPCta1qmYj" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="4QPCta1qmYk" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="4QPCta1qmYl" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
                        <node concept="16syzq" id="4QPCta1qmYm" role="11_B2D">
                          <ref role="16sUi3" node="4QPCta1qmY$" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="4QPCta1qmYn" role="3clF45">
                      <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="4QPCta1qmYo" role="1B3o_S" />
                    <node concept="3clFbS" id="4QPCta1qmYp" role="3clF47">
                      <node concept="3clFbF" id="4QPCta1qmYq" role="3cqZAp">
                        <node concept="2OqwBi" id="4QPCta1qmYr" role="3clFbG">
                          <node concept="37vLTw" id="4QPCta1qmYs" role="2Oq$k0">
                            <ref role="3cqZAo" node="4QPCta1qmYk" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="4QPCta1qmYt" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:1eKXYsjvsWF" resolve="doCall" />
                            <node concept="2OqwBi" id="4QPCta1qmYu" role="37wK5m">
                              <node concept="37vLTw" id="4QPCta1qmYv" role="2Oq$k0">
                                <ref role="3cqZAo" node="4QPCta1qmYk" resolve="typeTemplate" />
                              </node>
                              <node concept="liA8E" id="4QPCta1qmYw" role="2OqNvi">
                                <ref role="37wK5l" to="psr6:1eKXYsjvsWn" resolve="withArgs" />
                                <node concept="37vLTw" id="4QPCta1qmYx" role="37wK5m">
                                  <ref role="3cqZAo" node="4QPCta1qmY6" resolve="args" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="4QPCta1qmYy" role="37wK5m">
                              <ref role="3cqZAo" node="4QPCta1qmY2" resolve="logical" />
                            </node>
                            <node concept="Xjq3P" id="4QPCta1qmYz" role="37wK5m">
                              <ref role="1HBi2w" node="4QPCta1qmXf" resolve="RuleApplicationSessionImpl" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="4QPCta1qmY$" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="4QPCta1qmY_" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="4QPCta1qmYA" role="2Ghqu4">
                    <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4vBwiiV6ysN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1qmYB" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1qmYC" role="jymVt">
      <property role="TrG5h" value="putParameter" />
      <node concept="37vLTG" id="4QPCta1qmYD" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="4QPCta1qmYE" role="1tU5fm">
          <ref role="16sUi3" node="4QPCta1qmYQ" resolve="K" />
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1qmYF" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="4QPCta1qmYG" role="1tU5fm">
          <ref role="16sUi3" node="4QPCta1qmYR" resolve="V" />
        </node>
      </node>
      <node concept="3cqZAl" id="4QPCta1qmYH" role="3clF45" />
      <node concept="3Tm1VV" id="4QPCta1qmYI" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1qmYJ" role="3clF47">
        <node concept="3clFbF" id="4QPCta1qmYK" role="3cqZAp">
          <node concept="37vLTI" id="4QPCta1qmYL" role="3clFbG">
            <node concept="37vLTw" id="4QPCta1qmYM" role="37vLTx">
              <ref role="3cqZAo" node="4QPCta1qmYF" resolve="value" />
            </node>
            <node concept="3EllGN" id="4QPCta1qmYN" role="37vLTJ">
              <node concept="37vLTw" id="4QPCta1qmYO" role="3ElVtu">
                <ref role="3cqZAo" node="4QPCta1qmYD" resolve="key" />
              </node>
              <node concept="37vLTw" id="4QPCta1qmYP" role="3ElQJh">
                <ref role="3cqZAo" node="4QPCta1qn0v" resolve="params" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4QPCta1qmYQ" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="4QPCta1qmYR" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="2AHcQZ" id="4vBwiiV6xJp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1qmYS" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1qmYT" role="jymVt">
      <property role="TrG5h" value="getParameter" />
      <node concept="37vLTG" id="4QPCta1qmYU" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="4QPCta1qmYV" role="1tU5fm">
          <ref role="16sUi3" node="4QPCta1qmZ8" resolve="K" />
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1qmYW" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="4QPCta1qmYX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="4QPCta1qmYY" role="11_B2D">
            <ref role="16sUi3" node="4QPCta1qmZ9" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="4QPCta1qmYZ" role="3clF45">
        <ref role="16sUi3" node="4QPCta1qmZ9" resolve="V" />
      </node>
      <node concept="3Tm1VV" id="4QPCta1qmZ0" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1qmZ1" role="3clF47">
        <node concept="3clFbF" id="4QPCta1qmZ2" role="3cqZAp">
          <node concept="10QFUN" id="4QPCta1qmZ3" role="3clFbG">
            <node concept="16syzq" id="4QPCta1qmZ4" role="10QFUM">
              <ref role="16sUi3" node="4QPCta1qmZ9" resolve="V" />
            </node>
            <node concept="3EllGN" id="4QPCta1qmZ5" role="10QFUP">
              <node concept="37vLTw" id="4QPCta1qmZ6" role="3ElVtu">
                <ref role="3cqZAo" node="4QPCta1qmYU" resolve="key" />
              </node>
              <node concept="37vLTw" id="4QPCta1qmZ7" role="3ElQJh">
                <ref role="3cqZAo" node="4QPCta1qn0v" resolve="params" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4QPCta1qmZ8" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="4QPCta1qmZ9" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="2AHcQZ" id="4vBwiiV6x4_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1qmZa" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1qmZb" role="jymVt">
      <property role="TrG5h" value="removeParameter" />
      <node concept="37vLTG" id="4QPCta1qmZc" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="4QPCta1qmZd" role="1tU5fm">
          <ref role="16sUi3" node="4QPCta1qmZm" resolve="K" />
        </node>
      </node>
      <node concept="3cqZAl" id="4QPCta1qmZe" role="3clF45" />
      <node concept="3Tm1VV" id="4QPCta1qmZf" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1qmZg" role="3clF47">
        <node concept="3clFbF" id="4QPCta1qmZh" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta1qmZi" role="3clFbG">
            <node concept="37vLTw" id="4QPCta1qmZj" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1qn0v" resolve="params" />
            </node>
            <node concept="kI3uX" id="4QPCta1qmZk" role="2OqNvi">
              <node concept="37vLTw" id="4QPCta1qmZl" role="kIiFs">
                <ref role="3cqZAo" node="4QPCta1qmZc" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4QPCta1qmZm" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="2AHcQZ" id="4vBwiiV6wpN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1qmZn" role="jymVt" />
    <node concept="3clFb_" id="4vBwiiV6uQE" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="4vBwiiV6uQF" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4vBwiiV6uQG" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:4vBwiiV6130" resolve="RuleApplicationSession.RuleApplicationSessionListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="4vBwiiV6uQH" role="3clF45" />
      <node concept="3Tm1VV" id="4vBwiiV6uQI" role="1B3o_S" />
      <node concept="3clFbS" id="4vBwiiV6uQK" role="3clF47">
        <node concept="3clFbF" id="4vBwiiV6zWE" role="3cqZAp">
          <node concept="2OqwBi" id="4vBwiiV6$H7" role="3clFbG">
            <node concept="37vLTw" id="4vBwiiV6zWD" role="2Oq$k0">
              <ref role="3cqZAo" node="4vBwiiV5TUG" resolve="listeners" />
            </node>
            <node concept="TSZUe" id="4vBwiiV6_yz" role="2OqNvi">
              <node concept="37vLTw" id="4vBwiiV6_Lf" role="25WWJ7">
                <ref role="3cqZAo" node="4vBwiiV6uQF" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4vBwiiV6uQL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4vBwiiV6vDs" role="jymVt" />
    <node concept="3clFb_" id="4vBwiiV6uQM" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="4vBwiiV6uQN" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4vBwiiV6uQO" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:4vBwiiV6130" resolve="RuleApplicationSession.RuleApplicationSessionListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="4vBwiiV6uQP" role="3clF45" />
      <node concept="3Tm1VV" id="4vBwiiV6uQQ" role="1B3o_S" />
      <node concept="3clFbS" id="4vBwiiV6uQS" role="3clF47">
        <node concept="3clFbF" id="4vBwiiV6AbI" role="3cqZAp">
          <node concept="2OqwBi" id="4vBwiiV6BaX" role="3clFbG">
            <node concept="37vLTw" id="4vBwiiV6AbH" role="2Oq$k0">
              <ref role="3cqZAo" node="4vBwiiV5TUG" resolve="listeners" />
            </node>
            <node concept="3dhRuq" id="4vBwiiV6CxU" role="2OqNvi">
              <node concept="37vLTw" id="4vBwiiV6D98" role="25WWJ7">
                <ref role="3cqZAo" node="4vBwiiV6uQN" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4vBwiiV6uQT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4vBwiiV6D$e" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1qmZo" role="jymVt">
      <property role="TrG5h" value="withTypeTemplate" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4QPCta1qmZp" role="3clF47">
        <node concept="3SKdUt" id="4QPCta1qmZq" role="3cqZAp">
          <node concept="3SKdUq" id="4QPCta1qmZr" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: load the correct typetable!!!" />
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1qmZs" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1qmZt" role="3cpWs9">
            <property role="TrG5h" value="typeTemplate" />
            <node concept="3uibUv" id="4QPCta1qmZu" role="1tU5fm">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
              <node concept="16syzq" id="4QPCta1qmZv" role="11_B2D">
                <ref role="16sUi3" node="4QPCta1qmZO" resolve="Cfg" />
              </node>
            </node>
            <node concept="2OqwBi" id="4QPCta1qmZw" role="33vP2m">
              <node concept="2OqwBi" id="4QPCta1qmZx" role="2Oq$k0">
                <node concept="2OqwBi" id="4QPCta1qmZy" role="2Oq$k0">
                  <node concept="2OqwBi" id="7kTeLbPhIJp" role="2Oq$k0">
                    <node concept="37vLTw" id="7kTeLbPhIl3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7kTeLbPhEe0" resolve="typeAspectRuntime" />
                    </node>
                    <node concept="liA8E" id="7kTeLbPhJ4z" role="2OqNvi">
                      <ref role="37wK5l" node="4QPCta1yW59" resolve="getTypeTemplatesIndex" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4QPCta1qmZ$" role="2OqNvi">
                    <ref role="37wK5l" node="4JJCDIn5F0n" resolve="macroTables" />
                  </node>
                </node>
                <node concept="1uHKPH" id="4QPCta1qmZ_" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="4QPCta1qmZA" role="2OqNvi">
                <ref role="37wK5l" to="psr6:4KRwoelAtxl" resolve="macroTemplate" />
                <node concept="37vLTw" id="4QPCta1qmZB" role="37wK5m">
                  <ref role="3cqZAo" node="4QPCta1qmZI" resolve="typeConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4QPCta1qmZC" role="3cqZAp" />
        <node concept="3clFbF" id="4QPCta1qmZD" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta1qmZE" role="3clFbG">
            <node concept="37vLTw" id="4QPCta1qmZF" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1qmZK" resolve="action" />
            </node>
            <node concept="liA8E" id="4QPCta1qmZG" role="2OqNvi">
              <ref role="37wK5l" to="psr6:1eKXYsjvTXf" resolve="doAction" />
              <node concept="37vLTw" id="4QPCta1qmZH" role="37wK5m">
                <ref role="3cqZAo" node="4QPCta1qmZt" resolve="typeTemplate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1qmZI" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="4QPCta1qmZJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4QPCta1qmZK" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="4QPCta1qmZL" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
          <node concept="16syzq" id="4QPCta1qmZM" role="11_B2D">
            <ref role="16sUi3" node="4QPCta1qmZQ" resolve="R" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="4QPCta1qmZN" role="3clF45">
        <ref role="16sUi3" node="4QPCta1qmZQ" resolve="R" />
      </node>
      <node concept="16euLQ" id="4QPCta1qmZO" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="4QPCta1qmZP" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
      <node concept="16euLQ" id="4QPCta1qmZQ" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
      <node concept="3Tm6S6" id="4QPCta1qmZR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4QPCta1qmZS" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1qmZT" role="jymVt">
      <property role="TrG5h" value="withTypeTemplate" />
      <node concept="37vLTG" id="4QPCta1qmZU" role="3clF46">
        <property role="TrG5h" value="templateId" />
        <node concept="3uibUv" id="4QPCta1qmZV" role="1tU5fm">
          <ref role="3uigEE" to="psr6:4MEOIDEhyPY" resolve="MacroTemplate.ID" />
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1qmZW" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="4QPCta1qmZX" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1eKXYsjvSZy" resolve="AbstractMacroTemplate.MacroTemplateAction" />
          <node concept="16syzq" id="4QPCta1qmZY" role="11_B2D">
            <ref role="16sUi3" node="4QPCta1qn0o" resolve="R" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="4QPCta1qmZZ" role="3clF45">
        <ref role="16sUi3" node="4QPCta1qn0o" resolve="R" />
      </node>
      <node concept="3Tm6S6" id="4QPCta1qn00" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1qn01" role="3clF47">
        <node concept="3SKdUt" id="4QPCta1qn02" role="3cqZAp">
          <node concept="3SKdUq" id="4QPCta1qn03" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: load the correct typetable!!!" />
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1qn04" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1qn05" role="3cpWs9">
            <property role="TrG5h" value="typeTemplate" />
            <node concept="3uibUv" id="4QPCta1qn06" role="1tU5fm">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="MacroTemplate" />
              <node concept="16syzq" id="4QPCta1qn07" role="11_B2D">
                <ref role="16sUi3" node="4QPCta1qn0m" resolve="Cfg" />
              </node>
            </node>
            <node concept="2OqwBi" id="4QPCta1qn08" role="33vP2m">
              <node concept="2OqwBi" id="4QPCta1qn09" role="2Oq$k0">
                <node concept="2OqwBi" id="4QPCta1qn0a" role="2Oq$k0">
                  <node concept="2OqwBi" id="7kTeLbPhKML" role="2Oq$k0">
                    <node concept="37vLTw" id="7kTeLbPhKoh" role="2Oq$k0">
                      <ref role="3cqZAo" node="7kTeLbPhEe0" resolve="typeAspectRuntime" />
                    </node>
                    <node concept="liA8E" id="7kTeLbPhLdj" role="2OqNvi">
                      <ref role="37wK5l" node="4QPCta1yW59" resolve="getTypeTemplatesIndex" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4QPCta1qn0c" role="2OqNvi">
                    <ref role="37wK5l" node="4JJCDIn5F0n" resolve="macroTables" />
                  </node>
                </node>
                <node concept="1uHKPH" id="4QPCta1qn0d" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="4QPCta1qn0e" role="2OqNvi">
                <ref role="37wK5l" to="psr6:4MEOIDEgpuf" resolve="macroTemplate" />
                <node concept="37vLTw" id="4QPCta1qn0f" role="37wK5m">
                  <ref role="3cqZAo" node="4QPCta1qmZU" resolve="templateId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4QPCta1qn0g" role="3cqZAp" />
        <node concept="3clFbF" id="4QPCta1qn0h" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta1qn0i" role="3clFbG">
            <node concept="37vLTw" id="4QPCta1qn0j" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1qmZW" resolve="action" />
            </node>
            <node concept="liA8E" id="4QPCta1qn0k" role="2OqNvi">
              <ref role="37wK5l" to="psr6:1eKXYsjvTXf" resolve="doAction" />
              <node concept="37vLTw" id="4QPCta1qn0l" role="37wK5m">
                <ref role="3cqZAo" node="4QPCta1qn05" resolve="typeTemplate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="4QPCta1qn0m" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="4QPCta1qn0n" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Config" />
        </node>
      </node>
      <node concept="16euLQ" id="4QPCta1qn0o" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4QPCta1qn0q" role="1B3o_S" />
    <node concept="2tJIrI" id="7kTeLbPhGzR" role="jymVt" />
    <node concept="312cEg" id="4QPCta1qn0v" role="jymVt">
      <property role="TrG5h" value="params" />
      <node concept="3Tm6S6" id="4QPCta1qn0w" role="1B3o_S" />
      <node concept="3rvAFt" id="4QPCta1qn0x" role="1tU5fm">
        <node concept="3uibUv" id="4QPCta1qn0y" role="3rvQeY">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="4QPCta1qn0z" role="3rvSg0">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="4QPCta1qn0$" role="33vP2m">
        <node concept="3rGOSV" id="4QPCta1qn0_" role="2ShVmc">
          <node concept="3uibUv" id="4QPCta1qn0A" role="3rHrn6">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="4QPCta1qn0B" role="3rHtpV">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7kTeLbPhEe0" role="jymVt">
      <property role="TrG5h" value="typeAspectRuntime" />
      <node concept="3Tm6S6" id="7kTeLbPhEe1" role="1B3o_S" />
      <node concept="3uibUv" id="7kTeLbPhEe3" role="1tU5fm">
        <ref role="3uigEE" node="4QPCta1yO5O" resolve="TypeAspectRuntime" />
      </node>
    </node>
    <node concept="312cEg" id="4vBwiiV5TUG" role="jymVt">
      <property role="TrG5h" value="listeners" />
      <node concept="3Tm6S6" id="4vBwiiV5TUH" role="1B3o_S" />
      <node concept="_YKpA" id="4vBwiiV5Vke" role="1tU5fm">
        <node concept="3uibUv" id="4vBwiiV6tBQ" role="_ZDj9">
          <ref role="3uigEE" to="6pyv:4vBwiiV6130" resolve="RuleApplicationSession.RuleApplicationSessionListener" />
        </node>
      </node>
      <node concept="2ShNRf" id="4vBwiiV5WfA" role="33vP2m">
        <node concept="Tc6Ow" id="4vBwiiV5Wb$" role="2ShVmc">
          <node concept="3uibUv" id="4vBwiiV6uAH" role="HW$YZ">
            <ref role="3uigEE" to="6pyv:4vBwiiV6130" resolve="RuleApplicationSession.RuleApplicationSessionListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4QPCta1qt5T" role="1zkMxy">
      <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="RuleApplicationSession" />
    </node>
  </node>
  <node concept="312cEu" id="4QPCta1yO5O">
    <property role="TrG5h" value="TypeAspectRuntime" />
    <node concept="2tJIrI" id="4QPCta1yVRl" role="jymVt" />
    <node concept="3clFbW" id="4QPCta1yOft" role="jymVt">
      <node concept="3cqZAl" id="4QPCta1yOfv" role="3clF45" />
      <node concept="3Tm1VV" id="4QPCta1yOfw" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1yOfx" role="3clF47">
        <node concept="3clFbF" id="4QPCta1yTQF" role="3cqZAp">
          <node concept="1rXfSq" id="4QPCta1yTQE" role="3clFbG">
            <ref role="37wK5l" node="4QPCta1yTQA" resolve="init" />
            <node concept="37vLTw" id="4QPCta1yTQD" role="37wK5m">
              <ref role="3cqZAo" node="4QPCta1yOg0" resolve="descriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4QPCta1yOg0" role="3clF46">
        <property role="TrG5h" value="descriptor" />
        <node concept="3uibUv" id="4QPCta1yOfZ" role="1tU5fm">
          <ref role="3uigEE" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1yOdR" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1yTQA" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3Tm6S6" id="4QPCta1yTQB" role="1B3o_S" />
      <node concept="3cqZAl" id="4QPCta1yTQC" role="3clF45" />
      <node concept="37vLTG" id="4QPCta1yTQw" role="3clF46">
        <property role="TrG5h" value="descriptor" />
        <node concept="3uibUv" id="4QPCta1yTQx" role="1tU5fm">
          <ref role="3uigEE" to="fqlx:7km57Pkjxf4" resolve="TypeAspectDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="4QPCta1yTPB" role="3clF47">
        <node concept="3cpWs8" id="4QPCta1yTPC" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1yTPD" role="3cpWs9">
            <property role="TrG5h" value="typeManifest" />
            <node concept="3uibUv" id="4QPCta1yTPE" role="1tU5fm">
              <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
            </node>
            <node concept="2OqwBi" id="4QPCta1yTPF" role="33vP2m">
              <node concept="37vLTw" id="4QPCta1yTQy" role="2Oq$k0">
                <ref role="3cqZAo" node="4QPCta1yTQw" resolve="descriptor" />
              </node>
              <node concept="liA8E" id="4QPCta1yTPH" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:2hteS6ClmbE" resolve="createMacroManifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1yTPI" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1yTPJ" role="3cpWs9">
            <property role="TrG5h" value="ruleManifest" />
            <node concept="3uibUv" id="4QPCta1yTPK" role="1tU5fm">
              <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="2OqwBi" id="4QPCta1yTPL" role="33vP2m">
              <node concept="37vLTw" id="4QPCta1yTQz" role="2Oq$k0">
                <ref role="3cqZAo" node="4QPCta1yTQw" resolve="descriptor" />
              </node>
              <node concept="liA8E" id="4QPCta1yTPN" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:2hteS6ClmfS" resolve="createRuleManifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4QPCta1yTPO" role="3cqZAp" />
        <node concept="3clFbF" id="4QPCta1yTPX" role="3cqZAp">
          <node concept="37vLTI" id="4QPCta1yTPY" role="3clFbG">
            <node concept="2OqwBi" id="4QPCta1yTPZ" role="37vLTJ">
              <node concept="Xjq3P" id="4QPCta1yTQ0" role="2Oq$k0" />
              <node concept="2OwXpG" id="4QPCta1yTQ1" role="2OqNvi">
                <ref role="2Oxat5" node="20Ay2VeQFsB" resolve="typeTemplatesIndex" />
              </node>
            </node>
            <node concept="2ShNRf" id="4QPCta1yTQ2" role="37vLTx">
              <node concept="1pGfFk" id="4QPCta1yTQ3" role="2ShVmc">
                <ref role="37wK5l" node="1hX44vNlSOK" resolve="MacroTemplateIndex" />
                <node concept="37vLTw" id="4QPCta1yTQ4" role="37wK5m">
                  <ref role="3cqZAo" node="4QPCta1yTPD" resolve="typeManifest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QPCta1yTQ5" role="3cqZAp">
          <node concept="37vLTI" id="4QPCta1yTQ6" role="3clFbG">
            <node concept="2ShNRf" id="4QPCta1yTQ7" role="37vLTx">
              <node concept="HV5vD" id="4QPCta1yTQ8" role="2ShVmc">
                <ref role="HV5vE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
              </node>
            </node>
            <node concept="2OqwBi" id="4QPCta1yTQ9" role="37vLTJ">
              <node concept="Xjq3P" id="4QPCta1yTQa" role="2Oq$k0" />
              <node concept="2OwXpG" id="4QPCta1yTQb" role="2OqNvi">
                <ref role="2Oxat5" node="20Ay2VeRLgD" resolve="ruleTemplateIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4QPCta1yTQc" role="3cqZAp" />
        <node concept="1DcWWT" id="4QPCta1yTQd" role="3cqZAp">
          <node concept="3clFbS" id="4QPCta1yTQe" role="2LFqv$">
            <node concept="3cpWs8" id="4QPCta1yTQf" role="3cqZAp">
              <node concept="3cpWsn" id="4QPCta1yTQg" role="3cpWs9">
                <property role="TrG5h" value="stage" />
                <node concept="3uibUv" id="4QPCta1yTQh" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1CcQBrPcZVG" resolve="HandlingStage" />
                </node>
                <node concept="2ShNRf" id="4QPCta1yTQi" role="33vP2m">
                  <node concept="1pGfFk" id="4QPCta1yTQj" role="2ShVmc">
                    <ref role="37wK5l" to="i348:1CcQBrPd004" resolve="HandlingStage" />
                    <node concept="37vLTw" id="4QPCta1yTQk" role="37wK5m">
                      <ref role="3cqZAo" node="4QPCta1yTQq" resolve="htemplates" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4QPCta1yTQl" role="3cqZAp">
              <node concept="2OqwBi" id="4QPCta1yTQm" role="3clFbG">
                <node concept="37vLTw" id="4QPCta1yTQn" role="2Oq$k0">
                  <ref role="3cqZAo" node="20Ay2VeRLgD" resolve="ruleTemplateIndex" />
                </node>
                <node concept="liA8E" id="4QPCta1yTQo" role="2OqNvi">
                  <ref role="37wK5l" node="1CcQBrPcvkZ" resolve="addStage" />
                  <node concept="37vLTw" id="4QPCta1yTQp" role="37wK5m">
                    <ref role="3cqZAo" node="4QPCta1yTQg" resolve="stage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4QPCta1yTQq" role="1Duv9x">
            <property role="TrG5h" value="htemplates" />
            <node concept="_YKpA" id="4QPCta1yTQr" role="1tU5fm">
              <node concept="3uibUv" id="4QPCta1yTQs" role="_ZDj9">
                <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4QPCta1yTQt" role="1DdaDG">
            <node concept="37vLTw" id="4QPCta1yTQu" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1yTPJ" resolve="ruleManifest" />
            </node>
            <node concept="liA8E" id="4QPCta1yTQv" role="2OqNvi">
              <ref role="37wK5l" to="i348:20Ay2VeQ4QK" resolve="handlingStages" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1yOdP" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1yW59" role="jymVt">
      <property role="TrG5h" value="getTypeTemplatesIndex" />
      <node concept="3uibUv" id="4QPCta1yW5a" role="3clF45">
        <ref role="3uigEE" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
      </node>
      <node concept="3Tm1VV" id="4QPCta1yW5b" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1yW5c" role="3clF47">
        <node concept="3clFbF" id="4QPCta1yW5d" role="3cqZAp">
          <node concept="37vLTw" id="4QPCta1yW58" role="3clFbG">
            <ref role="3cqZAo" node="20Ay2VeQFsB" resolve="typeTemplatesIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1yW$4" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1yW5f" role="jymVt">
      <property role="TrG5h" value="getRuleTemplateIndex" />
      <node concept="3uibUv" id="4QPCta1yW5g" role="3clF45">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
      <node concept="3Tm1VV" id="4QPCta1yW5h" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1yW5i" role="3clF47">
        <node concept="3clFbF" id="4QPCta1yW5j" role="3cqZAp">
          <node concept="37vLTw" id="4QPCta1yW5e" role="3clFbG">
            <ref role="3cqZAo" node="20Ay2VeRLgD" resolve="ruleTemplateIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4QPCta1yWEZ" role="jymVt" />
    <node concept="312cEg" id="20Ay2VeQFsB" role="jymVt">
      <property role="TrG5h" value="typeTemplatesIndex" />
      <node concept="3Tm6S6" id="20Ay2VeQFsC" role="1B3o_S" />
      <node concept="3uibUv" id="20Ay2VeQG0r" role="1tU5fm">
        <ref role="3uigEE" node="1hX44vNlSIA" resolve="MacroTemplateIndex" />
      </node>
    </node>
    <node concept="312cEg" id="20Ay2VeRLgD" role="jymVt">
      <property role="TrG5h" value="ruleTemplateIndex" />
      <node concept="3Tm6S6" id="20Ay2VeRLgE" role="1B3o_S" />
      <node concept="3uibUv" id="1CcQBrPcq_x" role="1tU5fm">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4QPCta1yO5P" role="1B3o_S" />
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
                      <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1HWyn8jwS1m" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
              <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="1HWyn8jvsPv" role="3clF47">
          <node concept="3clFbF" id="1HWyn8jvsPw" role="3cqZAp">
            <node concept="3eOSWO" id="1HWyn8jvH4F" role="3clFbG">
              <node concept="2OqwBi" id="1HWyn8jvtDt" role="3uHU7B">
                <node concept="37vLTw" id="1HWyn8jvtDs" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HWyn8jvsPt" resolve="tf" />
                </node>
                <node concept="liA8E" id="1HWyn8jvtDu" role="2OqNvi">
                  <ref role="37wK5l" to="6exd:5BGv8yzvvIZ" resolve="variablesCount" />
                </node>
              </node>
              <node concept="3cmrfG" id="1HWyn8jvsPz" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
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
            <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="37vLTG" id="1HWyn8jvsPD" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="1HWyn8jvsPE" role="1tU5fm">
            <ref role="3uigEE" to="6exd:3OPtF02TdNT" resolve="TreeForm.Mapper" />
          </node>
        </node>
        <node concept="3clFbS" id="1HWyn8jvsPF" role="3clF47">
          <node concept="3clFbJ" id="1HWyn8jvsPG" role="3cqZAp">
            <node concept="2ZW3vV" id="1HWyn8jvsPJ" role="3clFbw">
              <node concept="37vLTw" id="1HWyn8jvsPH" role="2ZW6bz">
                <ref role="3cqZAo" node="1HWyn8jvsPB" resolve="tf" />
              </node>
              <node concept="3uibUv" id="1HWyn8jvx1M" role="2ZW6by">
                <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalTreeForm" />
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
                            <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalTreeForm" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1HWyn8jvsPW" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1HWyn8jvsPX" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
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
                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                            <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
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
                                <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
                                <node concept="2OqwBi" id="1HWyn8jvuI2" role="37wK5m">
                                  <node concept="37vLTw" id="1HWyn8jvuI1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1HWyn8jvsPM" resolve="logical" />
                                  </node>
                                  <node concept="liA8E" id="1HWyn8jvuI3" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.metaLogical():jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="metaLogical" />
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
                              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
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
                          <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalTreeForm" />
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
                          <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="1HWyn8jvsQk" role="9aQIa">
                      <node concept="3clFbS" id="1HWyn8jvsQl" role="9aQI4">
                        <node concept="3SKdUt" id="1HWyn8jvsQX" role="3cqZAp">
                          <node concept="3SKdUq" id="1HWyn8jvsQW" role="3SKWNk">
                            <property role="3SKdUp" value="FIXME support other values? " />
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
                                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
          </node>
        </node>
        <node concept="3Tm1VV" id="1HWyn8jvsQU" role="1B3o_S" />
        <node concept="3uibUv" id="1HWyn8jvsQV" role="3clF45">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
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
</model>

