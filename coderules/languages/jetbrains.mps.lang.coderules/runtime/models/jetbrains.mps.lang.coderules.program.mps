<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="5" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
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
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="2217234381367049075" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTag" flags="ng" index="VVOAv">
        <child id="3106559687488741665" name="line" index="2Xj1qM" />
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
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="6801639034384703212" name="jetbrains.mps.baseLanguage.collections.structure.StackType" flags="in" index="oyxx6" />
      <concept id="5784983078884872741" name="jetbrains.mps.baseLanguage.collections.structure.PeekOperation" flags="nn" index="2oR75g" />
      <concept id="1237467461002" name="jetbrains.mps.baseLanguage.collections.structure.GetIteratorOperation" flags="nn" index="uNJiE" />
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="3358009230508699637" name="jetbrains.mps.baseLanguage.collections.structure.PopOperation" flags="nn" index="2AryhJ" />
      <concept id="3358009230508699932" name="jetbrains.mps.baseLanguage.collections.structure.PushOperation" flags="nn" index="2ArzE6" />
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="3358009230509553641" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListType" flags="in" index="2BANLN" />
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
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
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
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
      <concept id="1240151247486" name="jetbrains.mps.baseLanguage.collections.structure.ContainerIteratorType" flags="in" index="2YL$Hu" />
      <concept id="1240151544672" name="jetbrains.mps.baseLanguage.collections.structure.RemoveOperation" flags="nn" index="2YMH90" />
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1173946412755" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAllElementsOperation" flags="nn" index="1kEaZ2" />
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
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
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
  <node concept="312cEu" id="7eGEHDlcEJ0">
    <property role="TrG5h" value="CodeRulesProgram" />
    <node concept="3uibUv" id="4$YN6Qucgl0" role="1zkMxy">
      <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
    </node>
    <node concept="2tJIrI" id="78CwJJd1ZwT" role="jymVt" />
    <node concept="3clFbW" id="7eGEHDlcF69" role="jymVt">
      <node concept="3Tm1VV" id="506k$zeU2T8" role="1B3o_S" />
      <node concept="37vLTG" id="7Oc59RSE6Q3" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7Oc59RSE6Qh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4MqhgXUS0Q6" role="3clF46">
        <property role="TrG5h" value="ruleLists" />
        <node concept="3uibUv" id="4MqhgXUS0Q7" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4MqhgXUS0Q8" role="11_B2D">
            <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="70Wv0dJiJjG" role="3clF46">
        <property role="TrG5h" value="originIndex" />
        <node concept="3uibUv" id="70Wv0dJiJjU" role="1tU5fm">
          <ref role="3uigEE" node="70Wv0dJhQb2" resolve="OriginIndex" />
        </node>
      </node>
      <node concept="3cqZAl" id="7eGEHDlcF6b" role="3clF45" />
      <node concept="3clFbS" id="7eGEHDlcF6d" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSE6QA" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSE6QC" role="3clFbG">
            <node concept="2OqwBi" id="7Oc59RSE6QG" role="37vLTJ">
              <node concept="Xjq3P" id="7Oc59RSE6QJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="7Oc59RSE6QF" role="2OqNvi">
                <ref role="2Oxat5" node="7Oc59RSE6Qy" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="7Oc59RSE6QK" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSE6Q3" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXURWMC" role="3cqZAp">
          <node concept="37vLTI" id="4MqhgXURWMD" role="3clFbG">
            <node concept="37vLTw" id="4MqhgXURWME" role="37vLTx">
              <ref role="3cqZAo" node="4MqhgXUS0Q6" resolve="ruleLists" />
            </node>
            <node concept="2OqwBi" id="4MqhgXURWMF" role="37vLTJ">
              <node concept="Xjq3P" id="4MqhgXURWMG" role="2Oq$k0" />
              <node concept="2OwXpG" id="4MqhgXURZ4o" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXULUc0" resolve="rulesLists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="70Wv0dJiJk1" role="3cqZAp">
          <node concept="37vLTI" id="70Wv0dJiJk3" role="3clFbG">
            <node concept="2OqwBi" id="70Wv0dJiKNS" role="37vLTJ">
              <node concept="Xjq3P" id="70Wv0dJiKOd" role="2Oq$k0" />
              <node concept="2OwXpG" id="70Wv0dJiKNV" role="2OqNvi">
                <ref role="2Oxat5" node="70Wv0dJiJjX" resolve="originIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="70Wv0dJiJk7" role="37vLTx">
              <ref role="3cqZAo" node="70Wv0dJiJjG" resolve="originIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="70Wv0dJiKOi" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJiKW2" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="70Wv0dJiKW3" role="3clF45">
        <ref role="3uigEE" node="70Wv0dJhQb2" resolve="OriginIndex" />
      </node>
      <node concept="3Tm1VV" id="70Wv0dJiKW4" role="1B3o_S" />
      <node concept="3clFbS" id="70Wv0dJiKW6" role="3clF47">
        <node concept="3clFbF" id="70Wv0dJiL0k" role="3cqZAp">
          <node concept="37vLTw" id="70Wv0dJiL0j" role="3clFbG">
            <ref role="3cqZAo" node="70Wv0dJiJjX" resolve="originIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="16gGH0VyPQh" role="jymVt" />
    <node concept="3clFb_" id="16gGH0Vz2Uo" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="16gGH0Vz6sJ" role="3clF45" />
      <node concept="3Tm1VV" id="16gGH0Vz2Ur" role="1B3o_S" />
      <node concept="3clFbS" id="16gGH0Vz2Us" role="3clF47">
        <node concept="3clFbF" id="16gGH0Vz6t9" role="3cqZAp">
          <node concept="37vLTw" id="16gGH0Vz6t8" role="3clFbG">
            <ref role="3cqZAo" node="7Oc59RSE6Qy" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ZqZbw4QkdO" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUKgMc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="rulesLists" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4MqhgXUKgMd" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXUKgMf" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="4MqhgXUKgMg" role="11_B2D">
          <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
        </node>
      </node>
      <node concept="3clFbS" id="4MqhgXUKgMh" role="3clF47">
        <node concept="3clFbF" id="4MqhgXUT$0V" role="3cqZAp">
          <node concept="2YIFZM" id="4MqhgXUT$36" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="4MqhgXUT$4h" role="37wK5m">
              <ref role="3cqZAo" node="4MqhgXULUc0" resolve="rulesLists" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4MqhgXUKgMi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jCHAT2R0T$" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSE1WF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="7Oc59RSE1WG" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHR" role="3clF45" />
      <node concept="3clFbS" id="7Oc59RSE1WJ" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSE2Pm" role="3cqZAp">
          <node concept="3cpWs3" id="7Oc59RSE3vq" role="3clFbG">
            <node concept="3cpWs3" id="7Oc59RSE80q" role="3uHU7B">
              <node concept="37vLTw" id="7Oc59RSE8b2" role="3uHU7w">
                <ref role="3cqZAo" node="7Oc59RSE6Qy" resolve="name" />
              </node>
              <node concept="3cpWs3" id="7Oc59RSE7HS" role="3uHU7B">
                <node concept="2OqwBi" id="7Oc59RSE3ij" role="3uHU7B">
                  <node concept="1rXfSq" id="7Oc59RSE2Pl" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSE3pt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7Oc59RSE7MB" role="3uHU7w">
                  <property role="Xl_RC" value="(" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="7Oc59RSE3v$" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Oc59RSE1WK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jxMt58b9gJ" role="jymVt" />
    <node concept="3clFb_" id="2jxMt58b9Wv" role="jymVt">
      <property role="TrG5h" value="withRulesDiff" />
      <node concept="3Tm1VV" id="2jxMt58b9Ww" role="1B3o_S" />
      <node concept="3uibUv" id="2jxMt58b9Wy" role="3clF45">
        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
      </node>
      <node concept="37vLTG" id="2jxMt58b9Wz" role="3clF46">
        <property role="TrG5h" value="diff" />
        <node concept="3uibUv" id="2jxMt58b9W$" role="1tU5fm">
          <ref role="3uigEE" to="zx3l:~RulesDiff" resolve="RulesDiff" />
        </node>
      </node>
      <node concept="3clFbS" id="2jxMt58b9W_" role="3clF47">
        <node concept="3clFbF" id="2jxMt58bk0z" role="3cqZAp">
          <node concept="37vLTI" id="2jxMt58bk_F" role="3clFbG">
            <node concept="37vLTw" id="2jxMt58bkYe" role="37vLTx">
              <ref role="3cqZAo" node="2jxMt58b9Wz" resolve="diff" />
            </node>
            <node concept="2OqwBi" id="2jxMt58bkdo" role="37vLTJ">
              <node concept="Xjq3P" id="2jxMt58bk0y" role="2Oq$k0" />
              <node concept="2OwXpG" id="2jxMt58bkps" role="2OqNvi">
                <ref role="2Oxat5" node="2jxMt58biXX" resolve="rulesDiff" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jxMt58$9iI" role="3cqZAp" />
        <node concept="3SKdUt" id="2jxMt58$gL3" role="3cqZAp">
          <node concept="1PaTwC" id="2jxMt58$gL4" role="3ndbpf">
            <node concept="3oM_SD" id="2jxMt58$hGb" role="1PaTwD">
              <property role="3oM_SC" value="Drop" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$hNV" role="1PaTwD">
              <property role="3oM_SC" value="regenerated" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$hRT" role="1PaTwD">
              <property role="3oM_SC" value="rules" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$hVS" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$hZS" role="1PaTwD">
              <property role="3oM_SC" value="preserved" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$i41" role="1PaTwD">
              <property role="3oM_SC" value="rules" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$i83" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$i8b" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$icn" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$igk" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$igv" role="1PaTwD">
              <property role="3oM_SC" value="previous" />
            </node>
            <node concept="3oM_SD" id="2jxMt58$ikA" role="1PaTwD">
              <property role="3oM_SC" value="session" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jxMt58zLvu" role="3cqZAp">
          <node concept="3clFbS" id="2jxMt58zLvw" role="3clFbx">
            <node concept="3cpWs8" id="2jxMt58zJRv" role="3cqZAp">
              <node concept="3cpWsn" id="2jxMt58zJRy" role="3cpWs9">
                <property role="TrG5h" value="updatedRuleLists" />
                <node concept="3uibUv" id="2jxMt58zKtX" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2jxMt58zKyq" role="11_B2D">
                    <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2jxMt58$abV" role="33vP2m">
                  <node concept="1pGfFk" id="2jxMt58$bKz" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                    <node concept="2OqwBi" id="2jxMt58$dgJ" role="37wK5m">
                      <node concept="37vLTw" id="2jxMt58$c6K" role="2Oq$k0">
                        <ref role="3cqZAo" node="4MqhgXULUc0" resolve="rulesLists" />
                      </node>
                      <node concept="liA8E" id="2jxMt58$dYk" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2jxMt58$lHW" role="1pMfVU">
                      <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="2jxMt58zFQB" role="3cqZAp">
              <node concept="3clFbS" id="2jxMt58zFQD" role="2LFqv$">
                <node concept="3cpWs8" id="2jxMt58$eq0" role="3cqZAp">
                  <node concept="3cpWsn" id="2jxMt58$eq1" role="3cpWs9">
                    <property role="TrG5h" value="updatedRules" />
                    <node concept="3uibUv" id="2jxMt58$eq2" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="2jxMt58$mwx" role="11_B2D">
                        <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="2jxMt58$eq4" role="33vP2m">
                      <node concept="1pGfFk" id="2jxMt58$eq5" role="2ShVmc">
                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                        <node concept="3uibUv" id="2jxMt58$mjp" role="1pMfVU">
                          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2jxMt58$Ecd" role="3cqZAp" />
                <node concept="1DcWWT" id="2jxMt58zHr0" role="3cqZAp">
                  <node concept="3clFbS" id="2jxMt58zHr2" role="2LFqv$">
                    <node concept="3cpWs8" id="2jxMt58$qZ8" role="3cqZAp">
                      <node concept="3cpWsn" id="2jxMt58$qZ9" role="3cpWs9">
                        <property role="TrG5h" value="preserved" />
                        <node concept="3uibUv" id="2jxMt58$qZa" role="1tU5fm">
                          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                        </node>
                        <node concept="2OqwBi" id="2jxMt58$vsY" role="33vP2m">
                          <node concept="37vLTw" id="2jxMt58$vkJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jxMt58biXX" resolve="rulesDiff" />
                          </node>
                          <node concept="liA8E" id="2jxMt58$vRS" role="2OqNvi">
                            <ref role="37wK5l" to="zx3l:~RulesDiff.getPreservedRule(java.lang.Object)" resolve="getPreservedRule" />
                            <node concept="2OqwBi" id="2jxMt58$w6v" role="37wK5m">
                              <node concept="37vLTw" id="2jxMt58$vZ5" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jxMt58zHr3" resolve="rule" />
                              </node>
                              <node concept="liA8E" id="2jxMt58$wh2" role="2OqNvi">
                                <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2jxMt58$peA" role="3cqZAp">
                      <node concept="2OqwBi" id="2jxMt58$pKY" role="3clFbG">
                        <node concept="37vLTw" id="2jxMt58$pe$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jxMt58$eq1" resolve="updatedRules" />
                        </node>
                        <node concept="liA8E" id="2jxMt58$qrq" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="3K4zz7" id="2jxMt58$uHr" role="37wK5m">
                            <node concept="37vLTw" id="2jxMt58$uUc" role="3K4E3e">
                              <ref role="3cqZAo" node="2jxMt58zHr3" resolve="rule" />
                            </node>
                            <node concept="37vLTw" id="2jxMt58$v47" role="3K4GZi">
                              <ref role="3cqZAo" node="2jxMt58$qZ9" resolve="preserved" />
                            </node>
                            <node concept="3clFbC" id="2jxMt58$uhf" role="3K4Cdx">
                              <node concept="10Nm6u" id="2jxMt58$ux2" role="3uHU7w" />
                              <node concept="37vLTw" id="2jxMt58$tQB" role="3uHU7B">
                                <ref role="3cqZAo" node="2jxMt58$qZ9" resolve="preserved" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2jxMt58zHr3" role="1Duv9x">
                    <property role="TrG5h" value="rule" />
                    <node concept="3uibUv" id="2jxMt58zHxn" role="1tU5fm">
                      <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2jxMt58zI2V" role="1DdaDG">
                    <node concept="37vLTw" id="2jxMt58zHFt" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jxMt58zFQE" resolve="rulesList" />
                    </node>
                    <node concept="liA8E" id="2jxMt58zIlF" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~RulesList.rules()" resolve="rules" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2jxMt58$xrY" role="3cqZAp">
                  <node concept="2OqwBi" id="2jxMt58$y6j" role="3clFbG">
                    <node concept="37vLTw" id="2jxMt58$xrW" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jxMt58zJRy" resolve="updatedRuleLists" />
                    </node>
                    <node concept="liA8E" id="2jxMt58$yQk" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="2jxMt58$_az" role="37wK5m">
                        <node concept="1pGfFk" id="2jxMt58$_Lf" role="2ShVmc">
                          <ref role="37wK5l" node="4MqhgXUM$CT" resolve="RulesListTable.RulesListImpl" />
                          <node concept="2OqwBi" id="2jxMt58$A3k" role="37wK5m">
                            <node concept="37vLTw" id="2jxMt58$_Vz" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jxMt58zFQE" resolve="rulesList" />
                            </node>
                            <node concept="liA8E" id="2jxMt58$Abh" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~RulesList.name()" resolve="name" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2jxMt58$B06" role="37wK5m">
                            <ref role="3cqZAo" node="2jxMt58$eq1" resolve="updatedRules" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2jxMt58zFQE" role="1Duv9x">
                <property role="TrG5h" value="rulesList" />
                <node concept="3uibUv" id="2jxMt58zG5H" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
                </node>
              </node>
              <node concept="37vLTw" id="2jxMt58zGzq" role="1DdaDG">
                <ref role="3cqZAo" node="4MqhgXULUc0" resolve="rulesLists" />
              </node>
            </node>
            <node concept="3clFbF" id="2jxMt58$FMz" role="3cqZAp">
              <node concept="37vLTI" id="2jxMt58$HQ5" role="3clFbG">
                <node concept="37vLTw" id="2jxMt58$I7N" role="37vLTx">
                  <ref role="3cqZAo" node="2jxMt58zJRy" resolve="updatedRuleLists" />
                </node>
                <node concept="2OqwBi" id="2jxMt58$GIZ" role="37vLTJ">
                  <node concept="Xjq3P" id="2jxMt58$FMx" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2jxMt58$H4w" role="2OqNvi">
                    <ref role="2Oxat5" node="4MqhgXULUc0" resolve="rulesLists" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2jxMt58$iC8" role="3clFbw">
            <node concept="2OqwBi" id="2jxMt58$iCa" role="3fr31v">
              <node concept="2OqwBi" id="2jxMt58$iCb" role="2Oq$k0">
                <node concept="liA8E" id="2jxMt58$iCf" role="2OqNvi">
                  <ref role="37wK5l" to="zx3l:~RulesDiff.getPreserved()" resolve="getPreserved" />
                </node>
                <node concept="37vLTw" id="2jxMt58$D5a" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jxMt58biXX" resolve="rulesDiff" />
                </node>
              </node>
              <node concept="liA8E" id="2jxMt58$iCg" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jxMt58bleb" role="3cqZAp">
          <node concept="Xjq3P" id="2jxMt58ble9" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2jxMt58b9WA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jxMt58bgpe" role="jymVt" />
    <node concept="3clFb_" id="2jxMt58b9WE" role="jymVt">
      <property role="TrG5h" value="incrementalDiff" />
      <node concept="3Tm1VV" id="2jxMt58b9WF" role="1B3o_S" />
      <node concept="3uibUv" id="2jxMt58b9WH" role="3clF45">
        <ref role="3uigEE" to="zx3l:~RulesDiff" resolve="RulesDiff" />
      </node>
      <node concept="3clFbS" id="2jxMt58b9WI" role="3clF47">
        <node concept="3clFbF" id="2jxMt58bjtU" role="3cqZAp">
          <node concept="37vLTw" id="2jxMt58bjL8" role="3clFbG">
            <ref role="3cqZAo" node="2jxMt58biXX" resolve="rulesDiff" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2jxMt58b9WJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jxMt58bfN8" role="jymVt" />
    <node concept="312cEg" id="7Oc59RSE6Qy" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="7Oc59RSE6Qz" role="1B3o_S" />
      <node concept="17QB3L" id="7Oc59RSE6Q_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4MqhgXULUc0" role="jymVt">
      <property role="TrG5h" value="rulesLists" />
      <node concept="3Tm6S6" id="4MqhgXULUc1" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXULV52" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="4MqhgXULVdx" role="11_B2D">
          <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2jxMt58biXX" role="jymVt">
      <property role="TrG5h" value="rulesDiff" />
      <node concept="3Tm6S6" id="2jxMt58bioR" role="1B3o_S" />
      <node concept="3uibUv" id="2jxMt58biL7" role="1tU5fm">
        <ref role="3uigEE" to="zx3l:~RulesDiff" resolve="RulesDiff" />
      </node>
    </node>
    <node concept="312cEg" id="70Wv0dJiJjX" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <node concept="3Tm6S6" id="70Wv0dJiJjY" role="1B3o_S" />
      <node concept="3uibUv" id="70Wv0dJiJk0" role="1tU5fm">
        <ref role="3uigEE" node="70Wv0dJhQb2" resolve="OriginIndex" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7nPD14O5B_4" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7DvO2M9Uago">
    <property role="TrG5h" value="RulesListTable" />
    <node concept="2tJIrI" id="7DvO2M9Uagp" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9Uagq" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="37vLTG" id="7DvO2M9Uagr" role="3clF46">
        <property role="TrG5h" value="ruleTemplate" />
        <node concept="3uibUv" id="7DvO2M9Uags" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9Uagt" role="3clF46">
        <property role="TrG5h" value="ruleBuilders" />
        <node concept="A3Dl8" id="7DvO2M9Uagu" role="1tU5fm">
          <node concept="3uibUv" id="7DvO2M9Uagv" role="A3Ik2">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="cmlg9OuhSZ" role="3clF45">
        <node concept="3uibUv" id="cmlg9OujQD" role="3O5elw">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7DvO2M9Uagx" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Uagy" role="3clF47">
        <node concept="3clFbH" id="7DvO2M9Uagz" role="3cqZAp" />
        <node concept="3cpWs8" id="cmlg9Oupox" role="3cqZAp">
          <node concept="3cpWsn" id="cmlg9Oupo$" role="3cpWs9">
            <property role="TrG5h" value="uniqueTags" />
            <node concept="_YKpA" id="cmlg9Oupot" role="1tU5fm">
              <node concept="3uibUv" id="cmlg9OuprN" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="cmlg9Ousiv" role="33vP2m">
              <node concept="Tc6Ow" id="cmlg9Oushw" role="2ShVmc">
                <node concept="3uibUv" id="cmlg9Oushx" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7DvO2M9Uag$" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxPg" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxPh" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="589APehYxPi" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxPj" role="1PaTwD">
              <property role="3oM_SC" value="appropriate" />
            </node>
            <node concept="3oM_SD" id="589APehYxPk" role="1PaTwD">
              <property role="3oM_SC" value="location" />
            </node>
            <node concept="3oM_SD" id="589APehYxPl" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="589APehYxPm" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxPn" role="1PaTwD">
              <property role="3oM_SC" value="template" />
            </node>
            <node concept="3oM_SD" id="589APehYxPo" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="589APehYxPp" role="1PaTwD">
              <property role="3oM_SC" value="execute" />
            </node>
            <node concept="3oM_SD" id="589APehYxPq" role="1PaTwD">
              <property role="3oM_SC" value="builders" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7DvO2M9UagB" role="3cqZAp">
          <node concept="3clFbS" id="7DvO2M9UagC" role="2LFqv$">
            <node concept="3cpWs8" id="4$YN6QuWnhn" role="3cqZAp">
              <node concept="3cpWsn" id="4$YN6QuWnho" role="3cpWs9">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="4$YN6QuWnhl" role="1tU5fm">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
                <node concept="2OqwBi" id="4$YN6QuWnhp" role="33vP2m">
                  <node concept="37vLTw" id="4$YN6QuWnhq" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvO2M9UagO" resolve="ruleBuilder" />
                  </node>
                  <node concept="liA8E" id="4$YN6QuWnhr" role="2OqNvi">
                    <ref role="37wK5l" to="i348:7eGEHDlc$ck" resolve="toRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="cmlg9OuuSp" role="3cqZAp">
              <node concept="2OqwBi" id="cmlg9Ouv$M" role="3clFbG">
                <node concept="37vLTw" id="cmlg9OuuSn" role="2Oq$k0">
                  <ref role="3cqZAo" node="cmlg9Oupo$" resolve="uniqueTags" />
                </node>
                <node concept="TSZUe" id="cmlg9Ouw9M" role="2OqNvi">
                  <node concept="2OqwBi" id="cmlg9OuwDA" role="25WWJ7">
                    <node concept="37vLTw" id="cmlg9Ouwtk" role="2Oq$k0">
                      <ref role="3cqZAo" node="4$YN6QuWnho" resolve="rule" />
                    </node>
                    <node concept="liA8E" id="cmlg9OuwQe" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7DvO2M9UagD" role="3cqZAp">
              <node concept="2OqwBi" id="7DvO2M9UagE" role="3clFbG">
                <node concept="1rXfSq" id="7DvO2M9UagF" role="2Oq$k0">
                  <ref role="37wK5l" node="7DvO2M9Uahp" resolve="rulesListBuilder" />
                  <node concept="2OqwBi" id="7DvO2M9UagG" role="37wK5m">
                    <node concept="37vLTw" id="7DvO2M9UagH" role="2Oq$k0">
                      <ref role="3cqZAo" node="7DvO2M9Uagr" resolve="ruleTemplate" />
                    </node>
                    <node concept="liA8E" id="7DvO2M9UagI" role="2OqNvi">
                      <ref role="37wK5l" to="i348:4MqhgXUndvp" resolve="handlerTemplate" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7DvO2M9UagJ" role="2OqNvi">
                  <ref role="37wK5l" node="4MqhgXUMbtk" resolve="addRule" />
                  <node concept="37vLTw" id="7DvO2M9UagK" role="37wK5m">
                    <ref role="3cqZAo" node="7DvO2M9Uagr" resolve="ruleTemplate" />
                  </node>
                  <node concept="37vLTw" id="4$YN6QuWnhs" role="37wK5m">
                    <ref role="3cqZAo" node="4$YN6QuWnho" resolve="rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7DvO2M9UagO" role="1Duv9x">
            <property role="TrG5h" value="ruleBuilder" />
            <node concept="3uibUv" id="7DvO2M9UagP" role="1tU5fm">
              <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
            </node>
          </node>
          <node concept="37vLTw" id="7DvO2M9UagQ" role="1DdaDG">
            <ref role="3cqZAo" node="7DvO2M9Uagt" resolve="ruleBuilders" />
          </node>
        </node>
        <node concept="3clFbH" id="7DvO2M9UagR" role="3cqZAp" />
        <node concept="3cpWs6" id="cmlg9Oux0n" role="3cqZAp">
          <node concept="37vLTw" id="cmlg9Ouxaj" role="3cqZAk">
            <ref role="3cqZAo" node="cmlg9Oupo$" resolve="uniqueTags" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7DvO2M9UagS" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
      <node concept="P$JXv" id="cmlg9OumEa" role="lGtFl">
        <node concept="TZ5HA" id="cmlg9OumEb" role="TZ5H$">
          <node concept="1dT_AC" id="cmlg9OumEc" role="1dT_Ay">
            <property role="1dT_AB" value="Updates the rules lists with rules produced from " />
          </node>
          <node concept="1dT_AA" id="cmlg9Oupai" role="1dT_Ay">
            <node concept="VVOAv" id="cmlg9OupaV" role="qph3F">
              <node concept="TZ5HA" id="cmlg9OupaX" role="2Xj1qM">
                <node concept="1dT_AC" id="cmlg9Oupb9" role="1dT_Ay">
                  <property role="1dT_AB" value="ruleBuilders" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="cmlg9Oupah" role="1dT_Ay">
            <property role="1dT_AB" value=" parameter." />
          </node>
        </node>
        <node concept="TZ5HA" id="cmlg9Oupbj" role="TZ5H$">
          <node concept="1dT_AC" id="cmlg9Oupbk" role="1dT_Ay">
            <property role="1dT_AB" value="Returns the collection of unique tags corresponding to the rules created. " />
          </node>
        </node>
        <node concept="TZ5HA" id="cmlg9Oupdb" role="TZ5H$">
          <node concept="1dT_AC" id="cmlg9Oupdc" role="1dT_Ay">
            <property role="1dT_AB" value="The unique tags can be later used to invalidate rules lists." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9UagT" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDy0Er4" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3cqZAl" id="6OXbTDy0Er6" role="3clF45" />
      <node concept="3Tm1VV" id="6OXbTDy0Er7" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy0Er8" role="3clF47">
        <node concept="3clFbH" id="6tPOoeT5u8K" role="3cqZAp" />
        <node concept="2Gpval" id="6OXbTDyyjVd" role="3cqZAp">
          <node concept="3clFbS" id="6OXbTDy10Jh" role="2LFqv$">
            <node concept="3cpWs8" id="4$YN6QuWS0Y" role="3cqZAp">
              <node concept="3cpWsn" id="4$YN6QuWS0Z" role="3cpWs9">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="4$YN6QuWS0I" role="1tU5fm">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
                <node concept="2OqwBi" id="4$YN6QuWS10" role="33vP2m">
                  <node concept="2GrUjf" id="4$YN6QuWS11" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6OXbTDyyjW5" resolve="ruleBuilder" />
                  </node>
                  <node concept="liA8E" id="4$YN6QuWS12" role="2OqNvi">
                    <ref role="37wK5l" to="i348:7eGEHDlc$ck" resolve="toRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6OXbTDy1aOX" role="3cqZAp">
              <node concept="2OqwBi" id="6OXbTDy1bak" role="3clFbG">
                <node concept="1rXfSq" id="6OXbTDy1aOW" role="2Oq$k0">
                  <ref role="37wK5l" node="6OXbTDy166r" resolve="queryHandlerBuilder" />
                  <node concept="37vLTw" id="6OXbTDy1aSW" role="37wK5m">
                    <ref role="3cqZAo" node="6OXbTDy0I1M" resolve="queryTemplate" />
                  </node>
                </node>
                <node concept="liA8E" id="6OXbTDy1cVH" role="2OqNvi">
                  <ref role="37wK5l" node="4MqhgXUMbtk" resolve="addRule" />
                  <node concept="37vLTw" id="6OXbTDzw0p5" role="37wK5m">
                    <ref role="3cqZAo" node="6OXbTDy0I1M" resolve="queryTemplate" />
                  </node>
                  <node concept="37vLTw" id="4$YN6QuWS13" role="37wK5m">
                    <ref role="3cqZAo" node="4$YN6QuWS0Z" resolve="rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6OXbTDy10Jn" role="2GsD0m">
            <ref role="3cqZAo" node="6OXbTDy0Z6U" resolve="ruleBuilders" />
          </node>
          <node concept="2GrKxI" id="6OXbTDyyjW5" role="2Gsz3X">
            <property role="TrG5h" value="ruleBuilder" />
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTDy0KT9" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="6OXbTDy0I1M" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="6OXbTD$xzi7" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          <node concept="3qTvmN" id="6OXbTD$xEq3" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDy0Z6U" role="3clF46">
        <property role="TrG5h" value="ruleBuilders" />
        <node concept="A3Dl8" id="6OXbTDy0Z6V" role="1tU5fm">
          <node concept="3uibUv" id="6OXbTDy0Z6W" role="A3Ik2">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6OXbTDy1iXV" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="cmlg9OuDN5" role="jymVt" />
    <node concept="3clFb_" id="cmlg9OuIxN" role="jymVt">
      <property role="TrG5h" value="invalidate" />
      <node concept="37vLTG" id="cmlg9Ov1RK" role="3clF46">
        <property role="TrG5h" value="ruleTemplate" />
        <node concept="3uibUv" id="cmlg9Ov1RL" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9OuRzZ" role="3clF46">
        <property role="TrG5h" value="uniqueTags" />
        <node concept="3vKaQO" id="cmlg9OuTNi" role="1tU5fm">
          <node concept="3uibUv" id="cmlg9OuU49" role="3O5elw">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="cmlg9OuIxP" role="3clF45" />
      <node concept="3clFbS" id="cmlg9OuIxQ" role="3clF47">
        <node concept="3clFbF" id="cmlg9Ov5u4" role="3cqZAp">
          <node concept="2OqwBi" id="cmlg9Ow9om" role="3clFbG">
            <node concept="1rXfSq" id="cmlg9Ov5u6" role="2Oq$k0">
              <ref role="37wK5l" node="7DvO2M9Uahp" resolve="rulesListBuilder" />
              <node concept="2OqwBi" id="cmlg9Ov5u7" role="37wK5m">
                <node concept="37vLTw" id="cmlg9Ov5u8" role="2Oq$k0">
                  <ref role="3cqZAo" node="cmlg9Ov1RK" resolve="ruleTemplate" />
                </node>
                <node concept="liA8E" id="cmlg9Ov5u9" role="2OqNvi">
                  <ref role="37wK5l" to="i348:4MqhgXUndvp" resolve="handlerTemplate" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="cmlg9Ow9wm" role="2OqNvi">
              <ref role="37wK5l" node="cmlg9OvtXS" resolve="removeAllWithTags" />
              <node concept="37vLTw" id="cmlg9Owatt" role="37wK5m">
                <ref role="3cqZAo" node="cmlg9Ov1RK" resolve="ruleTemplate" />
              </node>
              <node concept="37vLTw" id="cmlg9Ow9WM" role="37wK5m">
                <ref role="3cqZAo" node="cmlg9OuRzZ" resolve="uniqueTags" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="cmlg9OuMya" role="1B3o_S" />
      <node concept="P$JXv" id="cmlg9OuXnK" role="lGtFl">
        <node concept="TZ5HA" id="cmlg9OuXnL" role="TZ5H$">
          <node concept="1dT_AC" id="cmlg9OuXnM" role="1dT_Ay">
            <property role="1dT_AB" value="Removes the rules identified by unique tags." />
          </node>
        </node>
        <node concept="TZ5HA" id="cmlg9OuZTr" role="TZ5H$">
          <node concept="1dT_AC" id="cmlg9OuZTs" role="1dT_Ay">
            <property role="1dT_AB" value="Treats the collection passed in " />
          </node>
          <node concept="1dT_AA" id="cmlg9OuZpP" role="1dT_Ay">
            <node concept="VVOAv" id="cmlg9OuZq3" role="qph3F">
              <node concept="TZ5HA" id="cmlg9OuZq5" role="2Xj1qM">
                <node concept="1dT_AC" id="cmlg9OuZqh" role="1dT_Ay">
                  <property role="1dT_AB" value="uniqueTags" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="cmlg9OuZpO" role="1dT_Ay">
            <property role="1dT_AB" value=" parameter as a collection of unique tags" />
          </node>
        </node>
        <node concept="TZ5HA" id="cmlg9OuZrz" role="TZ5H$">
          <node concept="1dT_AC" id="cmlg9OuZr$" role="1dT_Ay">
            <property role="1dT_AB" value="identifying the rules produced earlier by a call to " />
          </node>
          <node concept="1dT_AA" id="cmlg9OuZrR" role="1dT_Ay">
            <node concept="92FcH" id="cmlg9OuZs5" role="qph3F">
              <node concept="TZ5HA" id="cmlg9OuZs7" role="2XjZqd" />
              <node concept="VXe0Z" id="cmlg9OuZsm" role="92FcQ">
                <ref role="VXe0S" node="7DvO2M9Uagq" resolve="update" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="cmlg9OuZrQ" role="1dT_Ay">
            <property role="1dT_AB" value=". " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDy0F6L" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9UagU" role="jymVt">
      <property role="TrG5h" value="allLists" />
      <node concept="A3Dl8" id="7DvO2M9UagV" role="3clF45">
        <node concept="3uibUv" id="7DvO2M9UagW" role="A3Ik2">
          <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7DvO2M9UagX" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9UagY" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9UagZ" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9Uah0" role="3cpWs9">
            <property role="TrG5h" value="allHandlers" />
            <node concept="_YKpA" id="7DvO2M9Uah1" role="1tU5fm">
              <node concept="3uibUv" id="7DvO2M9Uah2" role="_ZDj9">
                <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
              </node>
            </node>
            <node concept="2ShNRf" id="7DvO2M9Uah3" role="33vP2m">
              <node concept="Tc6Ow" id="7DvO2M9Uah4" role="2ShVmc">
                <node concept="3uibUv" id="7DvO2M9Uah5" role="HW$YZ">
                  <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2$$Q_FeVcdY" role="3cqZAp">
          <node concept="3clFbS" id="2$$Q_FeVbzX" role="2LFqv$">
            <node concept="3clFbF" id="7DvO2M9Uah8" role="3cqZAp">
              <node concept="2OqwBi" id="7DvO2M9Uah9" role="3clFbG">
                <node concept="37vLTw" id="7DvO2M9Uaha" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvO2M9Uah0" resolve="allHandlers" />
                </node>
                <node concept="TSZUe" id="7DvO2M9Uahb" role="2OqNvi">
                  <node concept="2OqwBi" id="7DvO2M9Uahc" role="25WWJ7">
                    <node concept="liA8E" id="7DvO2M9Uahe" role="2OqNvi">
                      <ref role="37wK5l" node="4MqhgXUNDLG" resolve="toRulesList" />
                    </node>
                    <node concept="3EllGN" id="2$$Q_FeVdfK" role="2Oq$k0">
                      <node concept="2GrUjf" id="2$$Q_FeVdhk" role="3ElVtu">
                        <ref role="2Gs0qQ" node="2$$Q_FeVcey" resolve="tpl" />
                      </node>
                      <node concept="37vLTw" id="2$$Q_FeVcOg" role="3ElQJh">
                        <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="handlerBuilders" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="2$$Q_FeVb$3" role="2GsD0m">
            <ref role="37wK5l" node="2$$Q_FeUpFv" resolve="topoSort" />
            <node concept="2OqwBi" id="2$$Q_FeVb$4" role="37wK5m">
              <node concept="37vLTw" id="2$$Q_FeVb$5" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="handlerBuilders" />
              </node>
              <node concept="3lbrtF" id="2$$Q_FeVb$6" role="2OqNvi" />
            </node>
          </node>
          <node concept="2GrKxI" id="2$$Q_FeVcey" role="2Gsz3X">
            <property role="TrG5h" value="tpl" />
          </node>
        </node>
        <node concept="3clFbH" id="2$$Q_FeV80k" role="3cqZAp" />
        <node concept="3SKdUt" id="6OXbTDzUJv_" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxPr" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxPs" role="1PaTwD">
              <property role="3oM_SC" value="queries" />
            </node>
            <node concept="3oM_SD" id="589APehYxPt" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="589APehYxPu" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="589APehYxPv" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6OXbTDzHkql" role="3cqZAp">
          <node concept="3clFbS" id="6OXbTDzHkqm" role="2LFqv$">
            <node concept="3clFbF" id="6OXbTDzHkqn" role="3cqZAp">
              <node concept="2OqwBi" id="6OXbTDzHkqo" role="3clFbG">
                <node concept="37vLTw" id="6OXbTDzHkqp" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvO2M9Uah0" resolve="allHandlers" />
                </node>
                <node concept="TSZUe" id="6OXbTDzHkqq" role="2OqNvi">
                  <node concept="2OqwBi" id="6OXbTDzHkqr" role="25WWJ7">
                    <node concept="37vLTw" id="6OXbTDzHkqs" role="2Oq$k0">
                      <ref role="3cqZAo" node="6OXbTDzHkqu" resolve="rulesListBuilder" />
                    </node>
                    <node concept="liA8E" id="cmlg9Nhb9$" role="2OqNvi">
                      <ref role="37wK5l" node="4MqhgXUNDLG" resolve="toRulesList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6OXbTDzHkqu" role="1Duv9x">
            <property role="TrG5h" value="rulesListBuilder" />
            <node concept="3uibUv" id="6OXbTDzHkqv" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
            </node>
          </node>
          <node concept="2OqwBi" id="6OXbTDzHkqw" role="1DdaDG">
            <node concept="37vLTw" id="6OXbTDzHkPF" role="2Oq$k0">
              <ref role="3cqZAo" node="6OXbTDy15hb" resolve="queryHandlerBuilders" />
            </node>
            <node concept="T8wYR" id="6OXbTDzHkqy" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7DvO2M9Uahk" role="3cqZAp">
          <node concept="2OqwBi" id="7DvO2M9Uahl" role="3clFbG">
            <node concept="37vLTw" id="7DvO2M9Uahm" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvO2M9Uah0" resolve="allHandlers" />
            </node>
            <node concept="26Dbio" id="7DvO2M9Uahn" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2$$Q_FeU7wo" role="lGtFl">
        <node concept="TZ5HA" id="2$$Q_FeU7wp" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeU7wq" role="1dT_Ay">
            <property role="1dT_AB" value="The order of lists returned must correspond to the partial order of lists set by &quot;extends&quot; relation. " />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeU7w$" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeU7w_" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeU7wE" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeU7wF" role="1dT_Ay">
            <property role="1dT_AB" value="Every list must contain rules in the same order as the rule templates. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Uaho" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9Uahp" role="jymVt">
      <property role="TrG5h" value="rulesListBuilder" />
      <node concept="37vLTG" id="7DvO2M9Uahq" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="7DvO2M9Uahr" role="1tU5fm">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
        </node>
      </node>
      <node concept="3uibUv" id="7DvO2M9Uahs" role="3clF45">
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
      </node>
      <node concept="3Tm6S6" id="7DvO2M9Uaht" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Uahu" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9Uahv" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9Uahw" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="7DvO2M9Uahx" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
            </node>
            <node concept="3EllGN" id="7DvO2M9Uahy" role="33vP2m">
              <node concept="37vLTw" id="7DvO2M9Uahz" role="3ElVtu">
                <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="handlerTemplate" />
              </node>
              <node concept="37vLTw" id="7DvO2M9Uah$" role="3ElQJh">
                <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="handlerBuilders" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7DvO2M9Uah_" role="3cqZAp">
          <node concept="3clFbS" id="7DvO2M9UahA" role="3clFbx">
            <node concept="3clFbF" id="7DvO2M9UahB" role="3cqZAp">
              <node concept="37vLTI" id="7DvO2M9UahC" role="3clFbG">
                <node concept="2ShNRf" id="7DvO2M9UahD" role="37vLTx">
                  <node concept="1pGfFk" id="7DvO2M9UahE" role="2ShVmc">
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesListTable.RulesListBuilder" />
                    <node concept="2OqwBi" id="7DvO2M9UahF" role="37wK5m">
                      <node concept="37vLTw" id="7DvO2M9UahG" role="2Oq$k0">
                        <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="handlerTemplate" />
                      </node>
                      <node concept="liA8E" id="7DvO2M9UahH" role="2OqNvi">
                        <ref role="37wK5l" to="i348:4MqhgXUN1Pe" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7DvO2M9UahL" role="37wK5m">
                      <node concept="37vLTw" id="7DvO2M9UahM" role="2Oq$k0">
                        <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="handlerTemplate" />
                      </node>
                      <node concept="liA8E" id="7DvO2M9UahN" role="2OqNvi">
                        <ref role="37wK5l" to="i348:4MqhgXUaiON" resolve="ruleTemplates" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7DvO2M9UahO" role="37vLTJ">
                  <ref role="3cqZAo" node="7DvO2M9Uahw" resolve="builder" />
                </node>
              </node>
              <node concept="15s5l7" id="4$YN6QuUhBR" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
              </node>
            </node>
            <node concept="3clFbF" id="7DvO2M9Uai4" role="3cqZAp">
              <node concept="37vLTI" id="7DvO2M9Uai5" role="3clFbG">
                <node concept="37vLTw" id="7DvO2M9Uai6" role="37vLTx">
                  <ref role="3cqZAo" node="7DvO2M9Uahw" resolve="builder" />
                </node>
                <node concept="3EllGN" id="7DvO2M9Uai7" role="37vLTJ">
                  <node concept="37vLTw" id="7DvO2M9Uai8" role="3ElVtu">
                    <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="handlerTemplate" />
                  </node>
                  <node concept="37vLTw" id="7DvO2M9Uai9" role="3ElQJh">
                    <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="handlerBuilders" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7DvO2M9Uaia" role="3clFbw">
            <node concept="10Nm6u" id="7DvO2M9Uaib" role="3uHU7w" />
            <node concept="37vLTw" id="7DvO2M9Uaic" role="3uHU7B">
              <ref role="3cqZAo" node="7DvO2M9Uahw" resolve="builder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvO2M9Uaid" role="3cqZAp">
          <node concept="37vLTw" id="7DvO2M9Uaie" role="3clFbG">
            <ref role="3cqZAo" node="7DvO2M9Uahw" resolve="builder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDy16SM" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDy166r" role="jymVt">
      <property role="TrG5h" value="queryHandlerBuilder" />
      <node concept="37vLTG" id="6OXbTDy166s" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="6OXbTD$xHlq" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          <node concept="3qTvmN" id="6OXbTD$xHAd" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="6OXbTDzvEX_" role="3clF45">
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
      </node>
      <node concept="3Tm6S6" id="6OXbTDy166v" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy166w" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDy166x" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDy166y" role="3cpWs9">
            <property role="TrG5h" value="handlerBuilder" />
            <node concept="3uibUv" id="6OXbTDzvoxW" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
            </node>
            <node concept="3EllGN" id="6OXbTDy166$" role="33vP2m">
              <node concept="37vLTw" id="6OXbTDy166_" role="3ElVtu">
                <ref role="3cqZAo" node="6OXbTDy166s" resolve="queryTemplate" />
              </node>
              <node concept="37vLTw" id="6OXbTDy19TR" role="3ElQJh">
                <ref role="3cqZAo" node="6OXbTDy15hb" resolve="queryHandlerBuilders" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6OXbTDy166B" role="3cqZAp">
          <node concept="3clFbS" id="6OXbTDy166C" role="3clFbx">
            <node concept="3clFbF" id="6OXbTDzvpO9" role="3cqZAp">
              <node concept="37vLTI" id="6OXbTDzvpOb" role="3clFbG">
                <node concept="2ShNRf" id="6OXbTDzvnFP" role="37vLTx">
                  <node concept="1pGfFk" id="6OXbTDzvnFQ" role="2ShVmc">
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesListTable.RulesListBuilder" />
                    <node concept="2OqwBi" id="6OXbTDzvnFR" role="37wK5m">
                      <node concept="37vLTw" id="6OXbTD$xJB6" role="2Oq$k0">
                        <ref role="3cqZAo" node="6OXbTDy166s" resolve="queryTemplate" />
                      </node>
                      <node concept="liA8E" id="6OXbTDzvnFT" role="2OqNvi">
                        <ref role="37wK5l" to="i348:6OXbTD$iO0w" resolve="name" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="6OXbTDzvnFX" role="37wK5m">
                      <node concept="2HTt$P" id="6OXbTDzvnFY" role="2ShVmc">
                        <node concept="3uibUv" id="6OXbTDzvnFZ" role="2HTBi0">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="6OXbTDzvnG0" role="2HTEbv">
                          <ref role="3cqZAo" node="6OXbTDy166s" resolve="queryTemplate" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6OXbTDzvpOf" role="37vLTJ">
                  <ref role="3cqZAo" node="6OXbTDy166y" resolve="handlerBuilder" />
                </node>
              </node>
              <node concept="15s5l7" id="4$YN6QuUhHb" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
              </node>
            </node>
            <node concept="3clFbF" id="6OXbTDy1676" role="3cqZAp">
              <node concept="37vLTI" id="6OXbTDy1677" role="3clFbG">
                <node concept="37vLTw" id="6OXbTDy1678" role="37vLTx">
                  <ref role="3cqZAo" node="6OXbTDy166y" resolve="handlerBuilder" />
                </node>
                <node concept="3EllGN" id="6OXbTDy1679" role="37vLTJ">
                  <node concept="37vLTw" id="6OXbTDy167a" role="3ElVtu">
                    <ref role="3cqZAo" node="6OXbTDy166s" resolve="queryTemplate" />
                  </node>
                  <node concept="37vLTw" id="6OXbTDy1aJG" role="3ElQJh">
                    <ref role="3cqZAo" node="6OXbTDy15hb" resolve="queryHandlerBuilders" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6OXbTDy167c" role="3clFbw">
            <node concept="10Nm6u" id="6OXbTDy167d" role="3uHU7w" />
            <node concept="37vLTw" id="6OXbTDy167e" role="3uHU7B">
              <ref role="3cqZAo" node="6OXbTDy166y" resolve="handlerBuilder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6OXbTDy167f" role="3cqZAp">
          <node concept="37vLTw" id="6OXbTDzvEUp" role="3clFbG">
            <ref role="3cqZAo" node="6OXbTDy166y" resolve="handlerBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Uaif" role="jymVt" />
    <node concept="3clFb_" id="2$$Q_FeUpFv" role="jymVt">
      <property role="TrG5h" value="topoSort" />
      <node concept="37vLTG" id="2$$Q_FeUrOq" role="3clF46">
        <property role="TrG5h" value="unsorted" />
        <node concept="3vKaQO" id="2$$Q_FeUrPa" role="1tU5fm">
          <node concept="3uibUv" id="2$$Q_FeUrP_" role="3O5elw">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="2$$Q_FeUrOK" role="3clF45">
        <node concept="3uibUv" id="2$$Q_FeUrP1" role="3O5elw">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2$$Q_FeUqdR" role="1B3o_S" />
      <node concept="3clFbS" id="2$$Q_FeUpFz" role="3clF47">
        <node concept="3SKdUt" id="2$$Q_FeUDy7" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxPw" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxPx" role="1PaTwD">
              <property role="3oM_SC" value="fqName" />
            </node>
            <node concept="3oM_SD" id="589APehYxPy" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="589APehYxPz" role="1PaTwD">
              <property role="3oM_SC" value="Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2$$Q_FeUrRh" role="3cqZAp">
          <node concept="3cpWsn" id="2$$Q_FeUrRn" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="2$$Q_FeUrRp" role="1tU5fm">
              <node concept="3uibUv" id="2$$Q_FeUDuy" role="3rvQeY">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="2$$Q_FeUrSl" role="3rvSg0">
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="2$$Q_FeUrVB" role="33vP2m">
              <node concept="3rGOSV" id="2$$Q_FeUrU4" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUDuF" role="3rHrn6">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="2$$Q_FeUrU6" role="3rHtpV">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2$$Q_FeUrVH" role="3cqZAp" />
        <node concept="2Gpval" id="2$$Q_FeV0AR" role="3cqZAp">
          <node concept="3clFbS" id="2$$Q_FeV0gm" role="2LFqv$">
            <node concept="3clFbJ" id="2$$Q_FeV0EM" role="3cqZAp">
              <node concept="3fqX7Q" id="2$$Q_FeV0HG" role="3clFbw">
                <node concept="2OqwBi" id="2$$Q_FeV1aM" role="3fr31v">
                  <node concept="37vLTw" id="2$$Q_FeV0Ja" role="2Oq$k0">
                    <ref role="3cqZAo" node="2$$Q_FeUrRn" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="2$$Q_FeV1Hj" role="2OqNvi">
                    <node concept="2OqwBi" id="2$$Q_FeV1Rr" role="38cxEo">
                      <node concept="2GrUjf" id="2$$Q_FeV1IN" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2$$Q_FeV0Bf" resolve="tpl" />
                      </node>
                      <node concept="liA8E" id="2$$Q_FeV2aX" role="2OqNvi">
                        <ref role="37wK5l" to="i348:7P_FdVQoZmr" resolve="fqName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2$$Q_FeV0EO" role="3clFbx">
                <node concept="3cpWs8" id="2$$Q_FeV42V" role="3cqZAp">
                  <node concept="3cpWsn" id="2$$Q_FeV42W" role="3cpWs9">
                    <property role="TrG5h" value="vtx" />
                    <node concept="3uibUv" id="2$$Q_FeV42L" role="1tU5fm">
                      <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
                    </node>
                    <node concept="2ShNRf" id="2$$Q_FeV42X" role="33vP2m">
                      <node concept="1pGfFk" id="2$$Q_FeV42Y" role="2ShVmc">
                        <ref role="37wK5l" node="2$$Q_FeUj7r" resolve="RulesListTable.Vtx" />
                        <node concept="2GrUjf" id="2$$Q_FeV42Z" role="37wK5m">
                          <ref role="2Gs0qQ" node="2$$Q_FeV0Bf" resolve="tpl" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2$$Q_FeV2e1" role="3cqZAp">
                  <node concept="37vLTI" id="2$$Q_FeV3EL" role="3clFbG">
                    <node concept="37vLTw" id="2$$Q_FeV430" role="37vLTx">
                      <ref role="3cqZAo" node="2$$Q_FeV42W" resolve="vtx" />
                    </node>
                    <node concept="3EllGN" id="2$$Q_FeV2XK" role="37vLTJ">
                      <node concept="2OqwBi" id="2$$Q_FeV37K" role="3ElVtu">
                        <node concept="2GrUjf" id="2$$Q_FeV2Zk" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2$$Q_FeV0Bf" resolve="tpl" />
                        </node>
                        <node concept="liA8E" id="2$$Q_FeV3rY" role="2OqNvi">
                          <ref role="37wK5l" to="i348:7P_FdVQoZmr" resolve="fqName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2$$Q_FeV2e0" role="3ElQJh">
                        <ref role="3cqZAo" node="2$$Q_FeUrRn" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2$$Q_FeV44N" role="3cqZAp">
                  <node concept="2OqwBi" id="2$$Q_FeV4gl" role="3clFbG">
                    <node concept="37vLTw" id="2$$Q_FeV44L" role="2Oq$k0">
                      <ref role="3cqZAo" node="2$$Q_FeV42W" resolve="vtx" />
                    </node>
                    <node concept="liA8E" id="2$$Q_FeV4nA" role="2OqNvi">
                      <ref role="37wK5l" node="2$$Q_FeUoy1" resolve="update" />
                      <node concept="37vLTw" id="2$$Q_FeV4p3" role="37wK5m">
                        <ref role="3cqZAo" node="2$$Q_FeUrRn" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2$$Q_FeV0gs" role="2GsD0m">
            <ref role="3cqZAo" node="2$$Q_FeUrOq" resolve="unsorted" />
          </node>
          <node concept="2GrKxI" id="2$$Q_FeV0Bf" role="2Gsz3X">
            <property role="TrG5h" value="tpl" />
          </node>
        </node>
        <node concept="3clFbH" id="2$$Q_FeV07y" role="3cqZAp" />
        <node concept="3SKdUt" id="NKt6ynosm7" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxP$" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxP_" role="1PaTwD">
              <property role="3oM_SC" value="depth-first" />
            </node>
            <node concept="3oM_SD" id="589APehYxPA" role="1PaTwD">
              <property role="3oM_SC" value="search." />
            </node>
            <node concept="3oM_SD" id="589APehYxPB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxPC" role="1PaTwD">
              <property role="3oM_SC" value="vertex" />
            </node>
            <node concept="3oM_SD" id="589APehYxPD" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="589APehYxPE" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="589APehYxPF" role="1PaTwD">
              <property role="3oM_SC" value="visited" />
            </node>
            <node concept="3oM_SD" id="589APehYxPG" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
            <node concept="3oM_SD" id="589APehYxPH" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="589APehYxPI" role="1PaTwD">
              <property role="3oM_SC" value="moved" />
            </node>
            <node concept="3oM_SD" id="589APehYxPJ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="589APehYxPK" role="1PaTwD">
              <property role="3oM_SC" value="front" />
            </node>
            <node concept="3oM_SD" id="589APehYxPL" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="589APehYxPM" role="1PaTwD">
              <property role="3oM_SC" value="others" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2$$Q_FeV7TG" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxPN" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxPO" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxPP" role="1PaTwD">
              <property role="3oM_SC" value="handlers" />
            </node>
            <node concept="3oM_SD" id="589APehYxPQ" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="589APehYxPR" role="1PaTwD">
              <property role="3oM_SC" value="extended" />
            </node>
            <node concept="3oM_SD" id="589APehYxPS" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="589APehYxPT" role="1PaTwD">
              <property role="3oM_SC" value="lower" />
            </node>
            <node concept="3oM_SD" id="589APehYxPU" role="1PaTwD">
              <property role="3oM_SC" value="priority" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NKt6ynosm9" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosma" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="NKt6ynosmb" role="1tU5fm">
              <node concept="3uibUv" id="2$$Q_FeUywA" role="3O5elw">
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmd" role="33vP2m">
              <node concept="2Jqq0_" id="NKt6ynosme" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUywJ" role="HW$YZ">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NKt6ynosmg" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosmh" role="3cpWs9">
            <property role="TrG5h" value="sorted" />
            <node concept="2BANLN" id="NKt6ynosmi" role="1tU5fm">
              <node concept="3uibUv" id="2$$Q_FeUywS" role="_ZDj9">
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmk" role="33vP2m">
              <node concept="2Jqq0_" id="NKt6ynosml" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUyx1" role="HW$YZ">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NKt6ynosmn" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosmo" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="NKt6ynosmp" role="1tU5fm">
              <node concept="3uibUv" id="2$$Q_FeUyxa" role="2hN53Y">
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmr" role="33vP2m">
              <node concept="2i4dXS" id="NKt6ynosms" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUyxj" role="HW$YZ">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="NKt6ynosmu" role="3cqZAp">
          <node concept="3clFbS" id="NKt6ynosmv" role="2LFqv$">
            <node concept="3clFbJ" id="NKt6ynosmw" role="3cqZAp">
              <node concept="3clFbS" id="NKt6ynosmx" role="3clFbx">
                <node concept="3N13vt" id="NKt6ynosmy" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="NKt6ynosmz" role="3clFbw">
                <node concept="37vLTw" id="NKt6ynosm$" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynosmo" resolve="visited" />
                </node>
                <node concept="3JPx81" id="NKt6ynosm_" role="2OqNvi">
                  <node concept="37vLTw" id="NKt6ynosmA" role="25WWJ7">
                    <ref role="3cqZAo" node="NKt6ynosnw" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="NKt6ynosmB" role="3cqZAp" />
            <node concept="3clFbF" id="NKt6ynosmC" role="3cqZAp">
              <node concept="2OqwBi" id="NKt6ynosmD" role="3clFbG">
                <node concept="37vLTw" id="NKt6ynosmE" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                </node>
                <node concept="2ArzE6" id="NKt6ynosmF" role="2OqNvi">
                  <node concept="37vLTw" id="NKt6ynosmG" role="25WWJ7">
                    <ref role="3cqZAo" node="NKt6ynosnw" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="NKt6ynosmH" role="3cqZAp">
              <node concept="3clFbS" id="NKt6ynosmI" role="2LFqv$">
                <node concept="3cpWs8" id="NKt6ynosmJ" role="3cqZAp">
                  <node concept="3cpWsn" id="NKt6ynosmK" role="3cpWs9">
                    <property role="TrG5h" value="v" />
                    <node concept="3uibUv" id="2$$Q_FeUyx_" role="1tU5fm">
                      <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
                    </node>
                    <node concept="2OqwBi" id="NKt6ynosmM" role="33vP2m">
                      <node concept="37vLTw" id="NKt6ynosmN" role="2Oq$k0">
                        <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="NKt6ynosmO" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="NKt6ynosmP" role="3cqZAp">
                  <node concept="3clFbS" id="NKt6ynosmQ" role="2LFqv$">
                    <node concept="3clFbJ" id="NKt6ynosmR" role="3cqZAp">
                      <node concept="3clFbS" id="NKt6ynosmS" role="3clFbx">
                        <node concept="3clFbF" id="NKt6ynosmT" role="3cqZAp">
                          <node concept="2OqwBi" id="NKt6ynosmU" role="3clFbG">
                            <node concept="37vLTw" id="NKt6ynosmV" role="2Oq$k0">
                              <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                            </node>
                            <node concept="2ArzE6" id="NKt6ynosmW" role="2OqNvi">
                              <node concept="37vLTw" id="NKt6ynosmX" role="25WWJ7">
                                <ref role="3cqZAo" node="NKt6ynosn3" resolve="e" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="NKt6ynosmY" role="3clFbw">
                        <node concept="2OqwBi" id="NKt6ynosmZ" role="3fr31v">
                          <node concept="37vLTw" id="NKt6ynosn0" role="2Oq$k0">
                            <ref role="3cqZAo" node="NKt6ynosmo" resolve="visited" />
                          </node>
                          <node concept="3JPx81" id="NKt6ynosn1" role="2OqNvi">
                            <node concept="37vLTw" id="NKt6ynosn2" role="25WWJ7">
                              <ref role="3cqZAo" node="NKt6ynosn3" resolve="e" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="NKt6ynosn3" role="1Duv9x">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="2$$Q_FeUyxI" role="1tU5fm">
                      <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="NKt6ynosn5" role="1DdaDG">
                    <node concept="37vLTw" id="NKt6ynosn6" role="2Oq$k0">
                      <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                    </node>
                    <node concept="2OwXpG" id="74q$MmS0bJ6" role="2OqNvi">
                      <ref role="2Oxat5" node="2$$Q_FeUozA" resolve="extended" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="NKt6ynosn8" role="3cqZAp">
                  <node concept="3clFbS" id="NKt6ynosn9" role="3clFbx">
                    <node concept="3clFbF" id="NKt6ynosna" role="3cqZAp">
                      <node concept="2OqwBi" id="NKt6ynosnb" role="3clFbG">
                        <node concept="37vLTw" id="NKt6ynosnc" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynosmh" resolve="sorted" />
                        </node>
                        <node concept="2Ke4WJ" id="FAZzzir4Gu" role="2OqNvi">
                          <node concept="37vLTw" id="FAZzzir4Gw" role="25WWJ7">
                            <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="NKt6ynosnf" role="3cqZAp">
                      <node concept="2OqwBi" id="NKt6ynosng" role="3clFbG">
                        <node concept="37vLTw" id="NKt6ynosnh" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynosmo" resolve="visited" />
                        </node>
                        <node concept="TSZUe" id="NKt6ynosni" role="2OqNvi">
                          <node concept="37vLTw" id="NKt6ynosnj" role="25WWJ7">
                            <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="NKt6ynosnk" role="3cqZAp">
                      <node concept="2OqwBi" id="NKt6ynosnl" role="3clFbG">
                        <node concept="37vLTw" id="NKt6ynosnm" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                        </node>
                        <node concept="2AryhJ" id="NKt6ynosnn" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="NKt6ynosno" role="3clFbw">
                    <node concept="37vLTw" id="NKt6ynosnp" role="3uHU7w">
                      <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                    </node>
                    <node concept="2OqwBi" id="NKt6ynosnq" role="3uHU7B">
                      <node concept="37vLTw" id="NKt6ynosnr" role="2Oq$k0">
                        <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="NKt6ynosns" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="NKt6ynosnt" role="2$JKZa">
                <node concept="37vLTw" id="NKt6ynosnu" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                </node>
                <node concept="3GX2aA" id="NKt6ynosnv" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="NKt6ynosnw" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="2$$Q_FeUyxs" role="1tU5fm">
              <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
            </node>
          </node>
          <node concept="2OqwBi" id="NKt6ynosny" role="1DdaDG">
            <node concept="37vLTw" id="NKt6ynosnz" role="2Oq$k0">
              <ref role="3cqZAo" node="2$$Q_FeUrRn" resolve="graph" />
            </node>
            <node concept="T8wYR" id="NKt6ynosn$" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2$$Q_FeUz57" role="3cqZAp" />
        <node concept="3clFbF" id="2$$Q_FeUzbu" role="3cqZAp">
          <node concept="2OqwBi" id="2$$Q_FeUCqf" role="3clFbG">
            <node concept="2OqwBi" id="2$$Q_FeU_po" role="2Oq$k0">
              <node concept="37vLTw" id="2$$Q_FeUzbs" role="2Oq$k0">
                <ref role="3cqZAo" node="NKt6ynosmh" resolve="sorted" />
              </node>
              <node concept="3$u5V9" id="2$$Q_FeUByt" role="2OqNvi">
                <node concept="1bVj0M" id="2$$Q_FeUByv" role="23t8la">
                  <node concept="3clFbS" id="2$$Q_FeUByw" role="1bW5cS">
                    <node concept="3clFbF" id="2$$Q_FeUB$9" role="3cqZAp">
                      <node concept="2OqwBi" id="2$$Q_FeUBKr" role="3clFbG">
                        <node concept="37vLTw" id="2$$Q_FeUB$8" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$$Q_FeUByx" resolve="it" />
                        </node>
                        <node concept="2OwXpG" id="2$$Q_FeUC7u" role="2OqNvi">
                          <ref role="2Oxat5" node="2$$Q_FeUj83" resolve="handlerTemplate" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2$$Q_FeUByx" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2$$Q_FeUByy" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2$$Q_FeUD3Y" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$$Q_FeUp9c" role="jymVt" />
    <node concept="312cEu" id="2$$Q_FeUi_7" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Vtx" />
      <node concept="3clFbW" id="2$$Q_FeUj7r" role="jymVt">
        <node concept="37vLTG" id="2$$Q_FeUj7B" role="3clF46">
          <property role="TrG5h" value="handlerTemplate" />
          <node concept="3uibUv" id="2$$Q_FeUj7R" role="1tU5fm">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
          </node>
        </node>
        <node concept="3cqZAl" id="2$$Q_FeUj7t" role="3clF45" />
        <node concept="3Tm6S6" id="2$$Q_FeUj7u" role="1B3o_S" />
        <node concept="3clFbS" id="2$$Q_FeUj7v" role="3clF47">
          <node concept="3clFbF" id="2$$Q_FeUj87" role="3cqZAp">
            <node concept="37vLTI" id="2$$Q_FeUj89" role="3clFbG">
              <node concept="2OqwBi" id="2$$Q_FeUowV" role="37vLTJ">
                <node concept="Xjq3P" id="2$$Q_FeUoxS" role="2Oq$k0" />
                <node concept="2OwXpG" id="2$$Q_FeUowY" role="2OqNvi">
                  <ref role="2Oxat5" node="2$$Q_FeUj83" resolve="handlerTemplate" />
                </node>
              </node>
              <node concept="37vLTw" id="2$$Q_FeUj8d" role="37vLTx">
                <ref role="3cqZAo" node="2$$Q_FeUj7B" resolve="handlerTemplate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2$$Q_FeUoy1" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="37vLTG" id="2$$Q_FeUoyr" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="2$$Q_FeUoy_" role="1tU5fm">
            <node concept="3uibUv" id="2$$Q_FeUDup" role="3rvQeY">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3uibUv" id="2$$Q_FeUoz3" role="3rvSg0">
              <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="2$$Q_FeUoy3" role="3clF45" />
        <node concept="3Tm6S6" id="2$$Q_FeUoy4" role="1B3o_S" />
        <node concept="3clFbS" id="2$$Q_FeUoy5" role="3clF47">
          <node concept="3clFbJ" id="2$$Q_FeUIf_" role="3cqZAp">
            <node concept="3clFbS" id="2$$Q_FeUIfB" role="3clFbx">
              <node concept="3clFbF" id="2$$Q_FeUJlu" role="3cqZAp">
                <node concept="2OqwBi" id="2$$Q_FeUKtp" role="3clFbG">
                  <node concept="2OqwBi" id="2$$Q_FeUJtn" role="2Oq$k0">
                    <node concept="Xjq3P" id="2$$Q_FeUJls" role="2Oq$k0" />
                    <node concept="2OwXpG" id="2$$Q_FeUJDm" role="2OqNvi">
                      <ref role="2Oxat5" node="2$$Q_FeUozA" resolve="extended" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="2$$Q_FeULD8" role="2OqNvi">
                    <node concept="3EllGN" id="2$$Q_FeUN34" role="25WWJ7">
                      <node concept="2OqwBi" id="2$$Q_FeUZOL" role="3ElVtu">
                        <node concept="37vLTw" id="2$$Q_FeUZOM" role="2Oq$k0">
                          <ref role="3cqZAo" node="2$$Q_FeUj83" resolve="handlerTemplate" />
                        </node>
                        <node concept="liA8E" id="2$$Q_FeUZON" role="2OqNvi">
                          <ref role="37wK5l" to="i348:7P_FdVQoGPt" resolve="extendedFqName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2$$Q_FeULGW" role="3ElQJh">
                        <ref role="3cqZAo" node="2$$Q_FeUoyr" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2$$Q_FeUIId" role="3clFbw">
              <node concept="37vLTw" id="2$$Q_FeUIjC" role="2Oq$k0">
                <ref role="3cqZAo" node="2$$Q_FeUoyr" resolve="graph" />
              </node>
              <node concept="2Nt0df" id="2$$Q_FeUJf_" role="2OqNvi">
                <node concept="2OqwBi" id="2$$Q_FeUZOO" role="38cxEo">
                  <node concept="37vLTw" id="2$$Q_FeUZOP" role="2Oq$k0">
                    <ref role="3cqZAo" node="2$$Q_FeUj83" resolve="handlerTemplate" />
                  </node>
                  <node concept="liA8E" id="2$$Q_FeUZOQ" role="2OqNvi">
                    <ref role="37wK5l" to="i348:7P_FdVQoGPt" resolve="extendedFqName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2$$Q_FeUN9b" role="3cqZAp" />
          <node concept="2Gpval" id="2$$Q_FeUQB3" role="3cqZAp">
            <node concept="3clFbS" id="2$$Q_FeUQ4c" role="2LFqv$">
              <node concept="3clFbJ" id="2$$Q_FeUQEo" role="3cqZAp">
                <node concept="3clFbS" id="2$$Q_FeUQEq" role="3clFbx">
                  <node concept="3clFbF" id="2$$Q_FeUX2b" role="3cqZAp">
                    <node concept="2OqwBi" id="2$$Q_FeUYpZ" role="3clFbG">
                      <node concept="2OqwBi" id="2$$Q_FeUXa8" role="2Oq$k0">
                        <node concept="2GrUjf" id="2$$Q_FeUX2a" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2$$Q_FeUQBF" resolve="v" />
                        </node>
                        <node concept="2OwXpG" id="2$$Q_FeUXyh" role="2OqNvi">
                          <ref role="2Oxat5" node="2$$Q_FeUozA" resolve="extended" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="2$$Q_FeUZM0" role="2OqNvi">
                        <node concept="Xjq3P" id="2$$Q_FeUZNX" role="25WWJ7" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2$$Q_FeUWsc" role="3clFbw">
                  <node concept="2OqwBi" id="2$$Q_FeUVRe" role="2Oq$k0">
                    <node concept="37vLTw" id="2$$Q_FeUVFy" role="2Oq$k0">
                      <ref role="3cqZAo" node="2$$Q_FeUj83" resolve="handlerTemplate" />
                    </node>
                    <node concept="liA8E" id="2$$Q_FeUW5M" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7P_FdVQoZmr" resolve="fqName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2$$Q_FeUWXQ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="2$$Q_FeUUS1" role="37wK5m">
                      <node concept="2OqwBi" id="2$$Q_FeUUqF" role="2Oq$k0">
                        <node concept="2GrUjf" id="2$$Q_FeUUhy" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2$$Q_FeUQBF" resolve="v" />
                        </node>
                        <node concept="2OwXpG" id="2$$Q_FeUUAO" role="2OqNvi">
                          <ref role="2Oxat5" node="2$$Q_FeUj83" resolve="handlerTemplate" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2$$Q_FeUV50" role="2OqNvi">
                        <ref role="37wK5l" to="i348:7P_FdVQoGPt" resolve="extendedFqName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2$$Q_FeUQ4j" role="2GsD0m">
              <node concept="37vLTw" id="2$$Q_FeUQ4k" role="2Oq$k0">
                <ref role="3cqZAo" node="2$$Q_FeUoyr" resolve="graph" />
              </node>
              <node concept="T8wYR" id="2$$Q_FeUQ4l" role="2OqNvi" />
            </node>
            <node concept="2GrKxI" id="2$$Q_FeUQBF" role="2Gsz3X">
              <property role="TrG5h" value="v" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2$$Q_FeUj7b" role="jymVt" />
      <node concept="3Tm6S6" id="2$$Q_FeUj73" role="1B3o_S" />
      <node concept="312cEg" id="2$$Q_FeUj83" role="jymVt">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3Tm6S6" id="2$$Q_FeUj84" role="1B3o_S" />
        <node concept="3uibUv" id="2$$Q_FeUj86" role="1tU5fm">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
        </node>
      </node>
      <node concept="312cEg" id="2$$Q_FeUozA" role="jymVt">
        <property role="TrG5h" value="extended" />
        <node concept="3Tm6S6" id="2$$Q_FeUozB" role="1B3o_S" />
        <node concept="_YKpA" id="2$$Q_FeUo$c" role="1tU5fm">
          <node concept="3uibUv" id="2$$Q_FeUo$m" role="_ZDj9">
            <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="2$$Q_FeUoAS" role="33vP2m">
          <node concept="Tc6Ow" id="2$$Q_FeUo_G" role="2ShVmc">
            <node concept="3uibUv" id="2$$Q_FeUo_H" role="HW$YZ">
              <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="RulesListTable.Vtx" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cmlg9NgZ6M" role="jymVt" />
    <node concept="312cEu" id="4MqhgXUMauK" role="jymVt">
      <property role="TrG5h" value="RulesListBuilder" />
      <node concept="2tJIrI" id="4MqhgXUMb3v" role="jymVt" />
      <node concept="3clFbW" id="4MqhgXUMb4h" role="jymVt">
        <node concept="3cqZAl" id="4MqhgXUMb4j" role="3clF45" />
        <node concept="3Tm1VV" id="4MqhgXUMb4k" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUMb4l" role="3clF47">
          <node concept="3clFbF" id="4MqhgXUMb9t" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXUMb9v" role="3clFbG">
              <node concept="2OqwBi" id="4MqhgXUMbh6" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXUMbhX" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXUMbh9" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXUMb9p" resolve="name" />
                </node>
              </node>
              <node concept="37vLTw" id="4MqhgXUMb9z" role="37vLTx">
                <ref role="3cqZAo" node="4MqhgXUMb4S" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="4MqhgXUMhDW" role="3cqZAp">
            <node concept="3clFbS" id="4MqhgXUMhDZ" role="2LFqv$">
              <node concept="3clFbF" id="4MqhgXUMi_d" role="3cqZAp">
                <node concept="37vLTI" id="4MqhgXUMjxs" role="3clFbG">
                  <node concept="2ShNRf" id="4MqhgXUMjCn" role="37vLTx">
                    <node concept="Tc6Ow" id="4MqhgXUMj_U" role="2ShVmc">
                      <node concept="3uibUv" id="4MqhgXUMj_V" role="HW$YZ">
                        <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3EllGN" id="4MqhgXUMiU9" role="37vLTJ">
                    <node concept="37vLTw" id="4MqhgXUMiYy" role="3ElVtu">
                      <ref role="3cqZAo" node="4MqhgXUMhE0" resolve="loc" />
                    </node>
                    <node concept="37vLTw" id="4MqhgXUMi_c" role="3ElQJh">
                      <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="templateLoc2rules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4MqhgXUMhE0" role="1Duv9x">
              <property role="TrG5h" value="loc" />
              <node concept="3uibUv" id="4MqhgXUMhE4" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="37vLTw" id="cmlg9Ovn8Q" role="1DdaDG">
              <ref role="3cqZAo" node="4MqhgXUMh3C" resolve="locations" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4MqhgXUMb4S" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="4MqhgXUMb4R" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4MqhgXUMh3C" role="3clF46">
          <property role="TrG5h" value="locations" />
          <node concept="A3Dl8" id="4MqhgXUMh7W" role="1tU5fm">
            <node concept="3qUE_q" id="4$YN6QuJyMz" role="A3Ik2">
              <node concept="3uibUv" id="4$YN6QuJyNZ" role="3qUE_r">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUMLGb" role="jymVt" />
      <node concept="3clFb_" id="4MqhgXUMbtk" role="jymVt">
        <property role="TrG5h" value="addRule" />
        <node concept="37vLTG" id="4MqhgXUMgMT" role="3clF46">
          <property role="TrG5h" value="location" />
          <node concept="3uibUv" id="4MqhgXUMgVa" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="4MqhgXUMggv" role="3clF46">
          <property role="TrG5h" value="rule" />
          <node concept="3uibUv" id="4MqhgXUMgkS" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
        <node concept="3cqZAl" id="4MqhgXUMbtm" role="3clF45" />
        <node concept="3Tm1VV" id="4MqhgXUMbtn" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUMbto" role="3clF47">
          <node concept="3clFbJ" id="1N8$BG_2Ocv" role="3cqZAp">
            <node concept="3clFbS" id="1N8$BG_2Ocx" role="3clFbx">
              <node concept="3cpWs8" id="6$HuwhruiFV" role="3cqZAp">
                <node concept="3cpWsn" id="6$HuwhruiFW" role="3cpWs9">
                  <property role="TrG5h" value="msg" />
                  <node concept="17QB3L" id="6$HuwhruikY" role="1tU5fm" />
                  <node concept="3cpWs3" id="6$HuwhruiFX" role="33vP2m">
                    <node concept="Xl_RD" id="6$HuwhruiFY" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                    <node concept="3cpWs3" id="6$HuwhruiFZ" role="3uHU7B">
                      <node concept="3cpWs3" id="6$HuwhruiG0" role="3uHU7B">
                        <node concept="3cpWs3" id="6$HuwhruiG1" role="3uHU7B">
                          <node concept="3cpWs3" id="6$HuwhruiG2" role="3uHU7B">
                            <node concept="3cpWs3" id="6$HuwhruiG3" role="3uHU7B">
                              <node concept="Xl_RD" id="6$HuwhruiG4" role="3uHU7B">
                                <property role="Xl_RC" value="duplicate tag '" />
                              </node>
                              <node concept="2OqwBi" id="6$HuwhruiG5" role="3uHU7w">
                                <node concept="37vLTw" id="6$HuwhruiG6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                                </node>
                                <node concept="liA8E" id="6$HuwhruiG7" role="2OqNvi">
                                  <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="6$HuwhruiG8" role="3uHU7w">
                              <property role="Xl_RC" value="' (" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6$HuwhruiG9" role="3uHU7w">
                            <node concept="37vLTw" id="6$HuwhruiGa" role="2Oq$k0">
                              <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                            </node>
                            <node concept="liA8E" id="6$HuwhruiGb" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6$HuwhruiGc" role="3uHU7w">
                          <property role="Xl_RC" value=" and " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6$HuwhruiGd" role="3uHU7w">
                        <node concept="3EllGN" id="6$HuwhruiGe" role="2Oq$k0">
                          <node concept="2OqwBi" id="6$HuwhruiGf" role="3ElVtu">
                            <node concept="37vLTw" id="6$HuwhruiGg" role="2Oq$k0">
                              <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                            </node>
                            <node concept="liA8E" id="6$HuwhruiGh" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6$HuwhruiGi" role="3ElQJh">
                            <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6$HuwhruiGj" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="1N8$BG_2PoZ" role="3cqZAp">
                <node concept="2ShNRf" id="1N8$BG_2Ppr" role="YScLw">
                  <node concept="1pGfFk" id="1N8$BG_2QBw" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="37vLTw" id="6$HuwhruiGk" role="37wK5m">
                      <ref role="3cqZAo" node="6$HuwhruiFW" resolve="msg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1N8$BG_2O_w" role="3clFbw">
              <node concept="37vLTw" id="1N8$BG_2Odt" role="2Oq$k0">
                <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
              </node>
              <node concept="2Nt0df" id="1N8$BG_2VmT" role="2OqNvi">
                <node concept="2OqwBi" id="1N8$BG_2VuR" role="38cxEo">
                  <node concept="37vLTw" id="1N8$BG_2Vnr" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                  </node>
                  <node concept="liA8E" id="51V709lg01G" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1N8$BG_3gnE" role="3cqZAp">
            <node concept="37vLTI" id="1N8$BG_3huW" role="3clFbG">
              <node concept="37vLTw" id="1N8$BG_3hEG" role="37vLTx">
                <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
              </node>
              <node concept="3EllGN" id="1N8$BG_3gQw" role="37vLTJ">
                <node concept="2OqwBi" id="1N8$BG_3hbs" role="3ElVtu">
                  <node concept="37vLTw" id="1N8$BG_3h39" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                  </node>
                  <node concept="liA8E" id="51V709lg0Ho" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                  </node>
                </node>
                <node concept="37vLTw" id="1N8$BG_3gnC" role="3ElQJh">
                  <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXUMICn" role="3cqZAp">
            <node concept="2OqwBi" id="4MqhgXUMJAd" role="3clFbG">
              <node concept="3EllGN" id="4MqhgXUMIXB" role="2Oq$k0">
                <node concept="37vLTw" id="4MqhgXUMJ3s" role="3ElVtu">
                  <ref role="3cqZAo" node="4MqhgXUMgMT" resolve="location" />
                </node>
                <node concept="37vLTw" id="4MqhgXUMICl" role="3ElQJh">
                  <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="templateLoc2rules" />
                </node>
              </node>
              <node concept="TSZUe" id="4MqhgXUMKap" role="2OqNvi">
                <node concept="37vLTw" id="4MqhgXUMKgW" role="25WWJ7">
                  <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUMb3C" role="jymVt" />
      <node concept="3clFb_" id="cmlg9OvtXS" role="jymVt">
        <property role="TrG5h" value="removeAllWithTags" />
        <node concept="37vLTG" id="cmlg9OvR2K" role="3clF46">
          <property role="TrG5h" value="location" />
          <node concept="3uibUv" id="cmlg9OvT_h" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="cmlg9Ov_xf" role="3clF46">
          <property role="TrG5h" value="uniqueTags" />
          <node concept="3vKaQO" id="cmlg9OvEIp" role="1tU5fm">
            <node concept="3uibUv" id="cmlg9OvERd" role="3O5elw">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="cmlg9OvtXU" role="3clF45" />
        <node concept="3clFbS" id="cmlg9OvtXV" role="3clF47">
          <node concept="3cpWs8" id="cmlg9Ow0RU" role="3cqZAp">
            <node concept="3cpWsn" id="cmlg9Ow0RX" role="3cpWs9">
              <property role="TrG5h" value="toRemove" />
              <node concept="2hMVRd" id="cmlg9Ow0RQ" role="1tU5fm">
                <node concept="3uibUv" id="cmlg9Ow0Yd" role="2hN53Y">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
              <node concept="2ShNRf" id="cmlg9Ow1oI" role="33vP2m">
                <node concept="2i4dXS" id="cmlg9Ow1nd" role="2ShVmc">
                  <node concept="3uibUv" id="cmlg9Ow1ne" role="HW$YZ">
                    <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="cmlg9OvI4G" role="3cqZAp">
            <node concept="3clFbS" id="cmlg9OvI4J" role="2LFqv$">
              <node concept="3clFbJ" id="cmlg9OvNYE" role="3cqZAp">
                <node concept="3clFbS" id="cmlg9OvNZ1" role="3clFbx">
                  <node concept="3clFbF" id="cmlg9Ow1GY" role="3cqZAp">
                    <node concept="2OqwBi" id="cmlg9Ow2mD" role="3clFbG">
                      <node concept="37vLTw" id="cmlg9Ow1GW" role="2Oq$k0">
                        <ref role="3cqZAo" node="cmlg9Ow0RX" resolve="toRemove" />
                      </node>
                      <node concept="TSZUe" id="cmlg9Ow2S0" role="2OqNvi">
                        <node concept="2OqwBi" id="cmlg9Ow3V0" role="25WWJ7">
                          <node concept="37vLTw" id="cmlg9Ow3V1" role="2Oq$k0">
                            <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                          </node>
                          <node concept="kI3uX" id="cmlg9Ow3V2" role="2OqNvi">
                            <node concept="37vLTw" id="cmlg9Ow3V3" role="kIiFs">
                              <ref role="3cqZAo" node="cmlg9OvI4K" resolve="tag" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="cmlg9OvNyg" role="3clFbw">
                  <node concept="37vLTw" id="cmlg9OvNqe" role="2Oq$k0">
                    <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                  </node>
                  <node concept="2Nt0df" id="cmlg9OvNLE" role="2OqNvi">
                    <node concept="37vLTw" id="cmlg9OvNSy" role="38cxEo">
                      <ref role="3cqZAo" node="cmlg9OvI4K" resolve="tag" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="cmlg9OvI4K" role="1Duv9x">
              <property role="TrG5h" value="tag" />
              <node concept="3uibUv" id="cmlg9OvI4O" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="37vLTw" id="cmlg9OvI4P" role="1DdaDG">
              <ref role="3cqZAo" node="cmlg9Ov_xf" resolve="uniqueTags" />
            </node>
          </node>
          <node concept="3cpWs8" id="cmlg9OvXpf" role="3cqZAp">
            <node concept="3cpWsn" id="cmlg9OvXpg" role="3cpWs9">
              <property role="TrG5h" value="rules" />
              <node concept="_YKpA" id="cmlg9OvXi_" role="1tU5fm">
                <node concept="3uibUv" id="cmlg9OvXiC" role="_ZDj9">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
              <node concept="3EllGN" id="cmlg9OvXph" role="33vP2m">
                <node concept="37vLTw" id="cmlg9OvXpi" role="3ElVtu">
                  <ref role="3cqZAo" node="cmlg9OvR2K" resolve="location" />
                </node>
                <node concept="37vLTw" id="cmlg9OvXpj" role="3ElQJh">
                  <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="templateLoc2rules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="cmlg9OvYem" role="3cqZAp">
            <node concept="3clFbS" id="cmlg9OvYeo" role="3clFbx">
              <node concept="3cpWs8" id="cmlg9Ow60P" role="3cqZAp">
                <node concept="3cpWsn" id="cmlg9Ow60Q" role="3cpWs9">
                  <property role="TrG5h" value="itr" />
                  <node concept="2YL$Hu" id="cmlg9Ow60z" role="1tU5fm">
                    <node concept="3uibUv" id="cmlg9Ow60A" role="uOL27">
                      <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="cmlg9Ow60R" role="33vP2m">
                    <node concept="37vLTw" id="cmlg9Ow60S" role="2Oq$k0">
                      <ref role="3cqZAo" node="cmlg9OvXpg" resolve="rules" />
                    </node>
                    <node concept="uNJiE" id="cmlg9Ow60T" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2$JKZl" id="cmlg9Ow6nu" role="3cqZAp">
                <node concept="3clFbS" id="cmlg9Ow6nw" role="2LFqv$">
                  <node concept="3clFbJ" id="cmlg9Ow6OG" role="3cqZAp">
                    <node concept="3clFbS" id="cmlg9Ow6OI" role="3clFbx">
                      <node concept="3clFbF" id="cmlg9Ow8Qp" role="3cqZAp">
                        <node concept="2OqwBi" id="cmlg9Ow92L" role="3clFbG">
                          <node concept="37vLTw" id="cmlg9Ow8Qo" role="2Oq$k0">
                            <ref role="3cqZAo" node="cmlg9Ow60Q" resolve="itr" />
                          </node>
                          <node concept="2YMH90" id="cmlg9Ow9il" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="cmlg9Ow80G" role="3clFbw">
                      <node concept="37vLTw" id="cmlg9Ow7hG" role="2Oq$k0">
                        <ref role="3cqZAo" node="cmlg9Ow0RX" resolve="toRemove" />
                      </node>
                      <node concept="3JPx81" id="cmlg9Ow8AU" role="2OqNvi">
                        <node concept="2OqwBi" id="cmlg9Ow8JN" role="25WWJ7">
                          <node concept="37vLTw" id="cmlg9Ow8DS" role="2Oq$k0">
                            <ref role="3cqZAo" node="cmlg9Ow60Q" resolve="itr" />
                          </node>
                          <node concept="v1n4t" id="cmlg9Ow8N2" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="cmlg9Ow6Db" role="2$JKZa">
                  <node concept="37vLTw" id="cmlg9Ow6pU" role="2Oq$k0">
                    <ref role="3cqZAo" node="cmlg9Ow60Q" resolve="itr" />
                  </node>
                  <node concept="v0PNk" id="cmlg9Ow6MK" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="cmlg9Ow4D0" role="3clFbw">
              <node concept="37vLTw" id="cmlg9OvYl7" role="3uHU7B">
                <ref role="3cqZAo" node="cmlg9OvXpg" resolve="rules" />
              </node>
              <node concept="10Nm6u" id="cmlg9OvZ$X" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="cmlg9Ovv7f" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4MqhgXUNBTW" role="jymVt" />
      <node concept="3clFb_" id="4MqhgXUNDLG" role="jymVt">
        <property role="TrG5h" value="toRulesList" />
        <node concept="3uibUv" id="4MqhgXUNEFF" role="3clF45">
          <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
        </node>
        <node concept="3Tm1VV" id="4MqhgXUNDLJ" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUNDLK" role="3clF47">
          <node concept="3clFbF" id="4MqhgXUNGR0" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXUNHvW" role="3clFbG">
              <node concept="2OqwBi" id="4MqhgXUNGW4" role="37vLTJ">
                <node concept="Xjq3P" id="4MqhgXUNGQZ" role="2Oq$k0" />
                <node concept="2OwXpG" id="4MqhgXUNH1M" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXUMgHN" resolve="templateLoc2rules" />
                </node>
              </node>
              <node concept="2YIFZM" id="4MqhgXUNJ$f" role="37vLTx">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map)" resolve="unmodifiableMap" />
                <node concept="37vLTw" id="4MqhgXUNJJ2" role="37wK5m">
                  <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="templateLoc2rules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2jxMt584Ru7" role="3cqZAp" />
          <node concept="3cpWs8" id="4MqhgXUCPqL" role="3cqZAp">
            <node concept="3cpWsn" id="4MqhgXUCPqM" role="3cpWs9">
              <property role="TrG5h" value="allRules" />
              <node concept="_YKpA" id="4MqhgXUCPqH" role="1tU5fm">
                <node concept="3uibUv" id="4MqhgXUCPqK" role="_ZDj9">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
              <node concept="2ShNRf" id="4MqhgXUCPqN" role="33vP2m">
                <node concept="Tc6Ow" id="4MqhgXUCPqO" role="2ShVmc">
                  <node concept="3uibUv" id="4MqhgXUCPqP" role="HW$YZ">
                    <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="4MqhgXUPgU4" role="3cqZAp">
            <node concept="3clFbS" id="4MqhgXUPgU7" role="2LFqv$">
              <node concept="3clFbF" id="4MqhgXUMDP5" role="3cqZAp">
                <node concept="2OqwBi" id="4MqhgXUMErd" role="3clFbG">
                  <node concept="37vLTw" id="4MqhgXUMDP3" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MqhgXUCPqM" resolve="allRules" />
                  </node>
                  <node concept="X8dFx" id="4MqhgXUMFuM" role="2OqNvi">
                    <node concept="37vLTw" id="4MqhgXUPjiz" role="25WWJ7">
                      <ref role="3cqZAo" node="4MqhgXUPgU8" resolve="rules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4MqhgXUPgU8" role="1Duv9x">
              <property role="TrG5h" value="rules" />
              <node concept="_YKpA" id="4MqhgXUPgUc" role="1tU5fm">
                <node concept="3uibUv" id="4MqhgXUPgUd" role="_ZDj9">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4MqhgXUPgUe" role="1DdaDG">
              <node concept="37vLTw" id="4MqhgXUPgUf" role="2Oq$k0">
                <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="templateLoc2rules" />
              </node>
              <node concept="T8wYR" id="4MqhgXUPgUg" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXUNKmT" role="3cqZAp">
            <node concept="2ShNRf" id="4MqhgXUNKmP" role="3clFbG">
              <node concept="1pGfFk" id="4MqhgXUNKOX" role="2ShVmc">
                <ref role="37wK5l" node="4MqhgXUM$CT" resolve="RulesListTable.RulesListImpl" />
                <node concept="37vLTw" id="2jxMt584R0F" role="37wK5m">
                  <ref role="3cqZAo" node="4MqhgXUMb9p" resolve="name" />
                </node>
                <node concept="37vLTw" id="2jxMt584Ree" role="37wK5m">
                  <ref role="3cqZAo" node="4MqhgXUCPqM" resolve="allRules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUMb3H" role="jymVt" />
      <node concept="2tJIrI" id="4MqhgXUMzKi" role="jymVt" />
      <node concept="312cEg" id="4MqhgXUMb9p" role="jymVt">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4MqhgXUMb9q" role="1B3o_S" />
        <node concept="17QB3L" id="4MqhgXUMb9s" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="4MqhgXUMgHN" role="jymVt">
        <property role="TrG5h" value="templateLoc2rules" />
        <node concept="3Tm6S6" id="4MqhgXUMgHO" role="1B3o_S" />
        <node concept="3rvAFt" id="4MqhgXUMgMp" role="1tU5fm">
          <node concept="3uibUv" id="4MqhgXUMhRm" role="3rvQeY">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="_YKpA" id="4MqhgXUMhTI" role="3rvSg0">
            <node concept="3uibUv" id="4MqhgXUMhUi" role="_ZDj9">
              <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
            </node>
          </node>
        </node>
        <node concept="2ShNRf" id="4MqhgXUMifo" role="33vP2m">
          <node concept="32Fmki" id="4MqhgXUMieq" role="2ShVmc">
            <node concept="3uibUv" id="4MqhgXUMier" role="3rHrn6">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="_YKpA" id="4MqhgXUMies" role="3rHtpV">
              <node concept="3uibUv" id="4MqhgXUMiet" role="_ZDj9">
                <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="1N8$BG_2NH_" role="jymVt">
        <property role="TrG5h" value="tag2rule" />
        <node concept="3Tm6S6" id="1N8$BG_2NHA" role="1B3o_S" />
        <node concept="3rvAFt" id="1N8$BG_2NKd" role="1tU5fm">
          <node concept="3uibUv" id="51V709lg0Pm" role="3rvQeY">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="1N8$BG_2NKp" role="3rvSg0">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
        <node concept="2ShNRf" id="1N8$BG_2NLz" role="33vP2m">
          <node concept="3rGOSV" id="1N8$BG_2NL4" role="2ShVmc">
            <node concept="3uibUv" id="51V709lg13e" role="3rHrn6">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3uibUv" id="1N8$BG_2NL6" role="3rHtpV">
              <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUMNaI" role="jymVt" />
      <node concept="3UR2Jj" id="2$$Q_FeW4$G" role="lGtFl">
        <node concept="TZ5HA" id="2$$Q_FeW4$H" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeW4$I" role="1dT_Ay">
            <property role="1dT_AB" value="The builder maintains the list of template locations. Every rule added must correspond to a location from the " />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeW4$P" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeW4$Q" role="1dT_Ay">
            <property role="1dT_AB" value="initial list. " />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeW4$V" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeW4$W" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeW4_3" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeW4_4" role="1dT_Ay">
            <property role="1dT_AB" value="Instance of RulesList produced by toRulesList() returns the rules sorted by template location." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cmlg9NhRb0" role="jymVt" />
    <node concept="312cEu" id="4MqhgXUMzTQ" role="jymVt">
      <property role="TrG5h" value="RulesListImpl" />
      <node concept="2tJIrI" id="4MqhgXUM$3u" role="jymVt" />
      <node concept="3clFbW" id="4MqhgXUM$CT" role="jymVt">
        <node concept="37vLTG" id="2jxMt584M2F" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="2jxMt584Mcf" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2jxMt584FXr" role="3clF46">
          <property role="TrG5h" value="rules" />
          <node concept="_YKpA" id="2jxMt584G50" role="1tU5fm">
            <node concept="3uibUv" id="2jxMt584GaA" role="_ZDj9">
              <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4MqhgXUM$CV" role="3clF45" />
        <node concept="3Tm1VV" id="2jxMt584FBG" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUM$CX" role="3clF47">
          <node concept="3clFbF" id="2jxMt584IJp" role="3cqZAp">
            <node concept="37vLTI" id="2jxMt584JSb" role="3clFbG">
              <node concept="2OqwBi" id="2jxMt584KTq" role="37vLTx">
                <node concept="37vLTw" id="2jxMt584Kaa" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jxMt584FXr" resolve="rules" />
                </node>
                <node concept="26Dbio" id="2jxMt584LFu" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="2jxMt584IRD" role="37vLTJ">
                <node concept="Xjq3P" id="2jxMt584IJo" role="2Oq$k0" />
                <node concept="2OwXpG" id="2jxMt584J3L" role="2OqNvi">
                  <ref role="2Oxat5" node="2jxMt584H9j" resolve="rules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2jxMt584NH7" role="3cqZAp">
            <node concept="37vLTI" id="2jxMt584Oxi" role="3clFbG">
              <node concept="37vLTw" id="2jxMt584OHI" role="37vLTx">
                <ref role="3cqZAo" node="2jxMt584M2F" resolve="name" />
              </node>
              <node concept="2OqwBi" id="2jxMt584NVD" role="37vLTJ">
                <node concept="Xjq3P" id="2jxMt584NH5" role="2Oq$k0" />
                <node concept="2OwXpG" id="2jxMt584O8d" role="2OqNvi">
                  <ref role="2Oxat5" node="2jxMt584Njj" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUM$ym" role="jymVt" />
      <node concept="312cEg" id="2jxMt584H9j" role="jymVt">
        <property role="TrG5h" value="rules" />
        <node concept="3Tm6S6" id="2jxMt584GL4" role="1B3o_S" />
        <node concept="_YKpA" id="2jxMt584GZB" role="1tU5fm">
          <node concept="3uibUv" id="2jxMt584Hzl" role="_ZDj9">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="2jxMt584Njj" role="jymVt">
        <property role="TrG5h" value="name" />
        <node concept="3Tm6S6" id="2jxMt584MKP" role="1B3o_S" />
        <node concept="17QB3L" id="2jxMt584Nds" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="2jxMt584Idf" role="jymVt" />
      <node concept="3clFb_" id="4MqhgXUM$3K" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="name" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4MqhgXUM$3L" role="1B3o_S" />
        <node concept="3uibUv" id="4MqhgXUM$3N" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="4MqhgXUM$3O" role="3clF47">
          <node concept="3clFbF" id="4MqhgXUM$bb" role="3cqZAp">
            <node concept="37vLTw" id="2jxMt5853Y1" role="3clFbG">
              <ref role="3cqZAo" node="2jxMt584Njj" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4MqhgXUM$3P" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUM$rD" role="jymVt" />
      <node concept="3clFb_" id="4MqhgXUM$40" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="rules" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4MqhgXUM$41" role="1B3o_S" />
        <node concept="3uibUv" id="4MqhgXUM$43" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="4MqhgXUM$44" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
        <node concept="3clFbS" id="4MqhgXUM$45" role="3clF47">
          <node concept="3clFbF" id="2jxMt584SG4" role="3cqZAp">
            <node concept="37vLTw" id="2jxMt584T1J" role="3clFbG">
              <ref role="3cqZAo" node="2jxMt584H9j" resolve="rules" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4MqhgXUM$46" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUM$3z" role="jymVt" />
      <node concept="3uibUv" id="4MqhgXUM$3j" role="1zkMxy">
        <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
      </node>
    </node>
    <node concept="2tJIrI" id="cmlg9NhRlY" role="jymVt" />
    <node concept="2tJIrI" id="7DvO2M9$xQ6" role="jymVt" />
    <node concept="312cEg" id="7DvO2M9Uaig" role="jymVt">
      <property role="TrG5h" value="handlerBuilders" />
      <node concept="3Tm6S6" id="7DvO2M9Uaih" role="1B3o_S" />
      <node concept="3rvAFt" id="7DvO2M9Uaii" role="1tU5fm">
        <node concept="3uibUv" id="7DvO2M9Uaij" role="3rvQeY">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
        </node>
        <node concept="3uibUv" id="7DvO2M9Uaik" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="7DvO2M9Uail" role="33vP2m">
        <node concept="3rGOSV" id="7DvO2M9Uaim" role="2ShVmc">
          <node concept="3uibUv" id="7DvO2M9Uain" role="3rHrn6">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RulesListTemplate" />
          </node>
          <node concept="3uibUv" id="7DvO2M9Uaio" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6OXbTDy15hb" role="jymVt">
      <property role="TrG5h" value="queryHandlerBuilders" />
      <node concept="3Tm6S6" id="6OXbTDy15hc" role="1B3o_S" />
      <node concept="3rvAFt" id="6OXbTDy15UP" role="1tU5fm">
        <node concept="3uibUv" id="6OXbTD$xHLp" role="3rvQeY">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          <node concept="3qTvmN" id="6OXbTD$xIpJ" role="11_B2D" />
        </node>
        <node concept="3uibUv" id="6OXbTDzvogx" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="6OXbTDy164P" role="33vP2m">
        <node concept="3rGOSV" id="6OXbTDy163E" role="2ShVmc">
          <node concept="3uibUv" id="6OXbTD$xIHz" role="3rHrn6">
            <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
            <node concept="3qTvmN" id="6OXbTD$xJlQ" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="6OXbTDzvor7" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Uaip" role="jymVt" />
    <node concept="3Tm1VV" id="cmlg9OLXEa" role="1B3o_S" />
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
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="12yN8DyNqfm" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="12yN8DyNqgv" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1eEe91P05bm" role="3clF46">
          <property role="TrG5h" value="param" />
          <node concept="16syzq" id="1eEe91P05YL" role="1tU5fm">
            <ref role="16sUi3" node="1eEe91P03Zq" resolve="P" />
          </node>
        </node>
        <node concept="16syzq" id="tIwzd1IBoE" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="12yN8DyNqeR" role="1B3o_S" />
        <node concept="3clFbS" id="12yN8DyNqeS" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="tIwzd1IBNS" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IBXa" role="jymVt">
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
        <property role="TrG5h" value="initial" />
        <node concept="16syzq" id="tIwzd1IM3B" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="tIwzd1ILXp" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1ILXq" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="12yN8DyNqfE" role="jymVt" />
      <node concept="3clFb_" id="1eEe91P21Wg" role="jymVt">
        <property role="TrG5h" value="initialParam" />
        <node concept="16syzq" id="1eEe91P29ch" role="3clF45">
          <ref role="16sUi3" node="1eEe91P03Zq" resolve="P" />
        </node>
        <node concept="3Tm1VV" id="1eEe91P21Wj" role="1B3o_S" />
        <node concept="3clFbS" id="1eEe91P21Wk" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="1eEe91P2ebP" role="jymVt" />
      <node concept="3clFb_" id="1eEe91P2lma" role="jymVt">
        <property role="TrG5h" value="nextParam" />
        <node concept="37vLTG" id="1eEe91P2vYz" role="3clF46">
          <property role="TrG5h" value="parent" />
          <node concept="3Tqbb2" id="1eEe91P2x6O" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1eEe91P2xwO" role="3clF46">
          <property role="TrG5h" value="child" />
          <node concept="3Tqbb2" id="1eEe91P2z4z" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1eEe91P2ziL" role="3clF46">
          <property role="TrG5h" value="prevParam" />
          <node concept="16syzq" id="1eEe91P2$DI" role="1tU5fm">
            <ref role="16sUi3" node="1eEe91P03Zq" resolve="P" />
          </node>
        </node>
        <node concept="16syzq" id="1eEe91P2r8m" role="3clF45">
          <ref role="16sUi3" node="1eEe91P03Zq" resolve="P" />
        </node>
        <node concept="3Tm1VV" id="1eEe91P2lmd" role="1B3o_S" />
        <node concept="3clFbS" id="1eEe91P2lme" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="1eEe91P1UxR" role="jymVt" />
      <node concept="3Tm1VV" id="12yN8DyNqe9" role="1B3o_S" />
      <node concept="16euLQ" id="tIwzd1IBnx" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16euLQ" id="1eEe91P03Zq" role="16eVyc">
        <property role="TrG5h" value="P" />
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
          <property role="TrG5h" value="startFrom" />
          <node concept="3Tqbb2" id="4UTrqZZNZjN" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4UTrqZZNYZf" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="4UTrqZZNYZg" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="4UTrqZZNZlu" role="11_B2D">
              <ref role="16sUi3" node="4UTrqZZNWwV" resolve="S" />
            </node>
            <node concept="16syzq" id="1eEe91P0CA3" role="11_B2D">
              <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
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
                  <ref role="2Oxat5" node="4UTrqZZNZvj" resolve="startFrom" />
                </node>
              </node>
              <node concept="2ShNRf" id="3IIf9O_hb3u" role="37vLTx">
                <node concept="2HTt$P" id="3IIf9O_hb1N" role="2ShVmc">
                  <node concept="3Tqbb2" id="3IIf9O_hb1O" role="2HTBi0" />
                  <node concept="37vLTw" id="3IIf9O_hb8T" role="2HTEbv">
                    <ref role="3cqZAo" node="4UTrqZZNZcY" resolve="startFrom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3IIf9O_hg2B" role="jymVt" />
      <node concept="3clFbW" id="3IIf9O_hbbq" role="jymVt">
        <node concept="37vLTG" id="3IIf9O_hbbr" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="3IIf9O_hkSP" role="1tU5fm">
            <node concept="3Tqbb2" id="3IIf9O_hkSQ" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="3IIf9O_hbbt" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="3IIf9O_hbbu" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="3IIf9O_hbbv" role="11_B2D">
              <ref role="16sUi3" node="4UTrqZZNWwV" resolve="S" />
            </node>
            <node concept="16syzq" id="1eEe91P0CL$" role="11_B2D">
              <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3IIf9O_hbbw" role="3clF45" />
        <node concept="3Tm1VV" id="3IIf9O_hbbx" role="1B3o_S" />
        <node concept="3clFbS" id="3IIf9O_hbby" role="3clF47">
          <node concept="XkiVB" id="3IIf9O_hbbz" role="3cqZAp">
            <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
            <node concept="37vLTw" id="3IIf9O_hbb$" role="37wK5m">
              <ref role="3cqZAo" node="3IIf9O_hbbt" resolve="action" />
            </node>
          </node>
          <node concept="3clFbF" id="3IIf9O_hbb_" role="3cqZAp">
            <node concept="37vLTI" id="3IIf9O_hbbA" role="3clFbG">
              <node concept="2OqwBi" id="3IIf9O_hbbB" role="37vLTJ">
                <node concept="Xjq3P" id="3IIf9O_hbbC" role="2Oq$k0" />
                <node concept="2OwXpG" id="3IIf9O_hbbD" role="2OqNvi">
                  <ref role="2Oxat5" node="4UTrqZZNZvj" resolve="startFrom" />
                </node>
              </node>
              <node concept="37vLTw" id="3IIf9O_hp7Q" role="37vLTx">
                <ref role="3cqZAo" node="3IIf9O_hbbr" resolve="startFrom" />
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
                  <node concept="1LlUBW" id="1eEe91P0WEw" role="kMuH3">
                    <node concept="3Tqbb2" id="1eEe91P0WXI" role="1Lm7xW" />
                    <node concept="16syzq" id="1eEe91P0YiB" role="1Lm7xW">
                      <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
                    </node>
                  </node>
                  <node concept="1bVj0M" id="4UTrqZZNWZV" role="kMx8a">
                    <node concept="3clFbS" id="4UTrqZZNWZW" role="1bW5cS">
                      <node concept="3cpWs8" id="1eEe91P3Y1W" role="3cqZAp">
                        <node concept="3cpWsn" id="1eEe91P3Y1X" role="3cpWs9">
                          <property role="TrG5h" value="initialParam" />
                          <node concept="16syzq" id="1eEe91P3XDa" role="1tU5fm">
                            <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
                          </node>
                          <node concept="2OqwBi" id="1eEe91P3Y1Y" role="33vP2m">
                            <node concept="37vLTw" id="1eEe91P3Y1Z" role="2Oq$k0">
                              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
                            </node>
                            <node concept="liA8E" id="1eEe91P3Y20" role="2OqNvi">
                              <ref role="37wK5l" node="1eEe91P21Wg" resolve="initialParam" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1eEe91P40hC" role="3cqZAp" />
                      <node concept="3cpWs8" id="4UTrqZZNWZX" role="3cqZAp">
                        <node concept="3cpWsn" id="4UTrqZZNWZY" role="3cpWs9">
                          <property role="TrG5h" value="queue" />
                          <node concept="3O6Q9H" id="4UTrqZZNWZZ" role="1tU5fm">
                            <node concept="1LlUBW" id="1eEe91P4ZHZ" role="3O5elw">
                              <node concept="3Tqbb2" id="1eEe91P52Er" role="1Lm7xW" />
                              <node concept="16syzq" id="1eEe91P565S" role="1Lm7xW">
                                <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
                              </node>
                            </node>
                          </node>
                          <node concept="2ShNRf" id="4UTrqZZNX01" role="33vP2m">
                            <node concept="2Jqq0_" id="4UTrqZZNX02" role="2ShVmc">
                              <node concept="1LlUBW" id="1eEe91P58rM" role="HW$YZ">
                                <node concept="3Tqbb2" id="1eEe91P5cre" role="1Lm7xW" />
                                <node concept="16syzq" id="1eEe91P5hgj" role="1Lm7xW">
                                  <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4UTrqZZNX04" role="3cqZAp">
                        <node concept="2OqwBi" id="4UTrqZZNX05" role="3clFbG">
                          <node concept="37vLTw" id="4UTrqZZNX06" role="2Oq$k0">
                            <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                          </node>
                          <node concept="X8dFx" id="3IIf9O_iBeP" role="2OqNvi">
                            <node concept="2OqwBi" id="1eEe91P5qbq" role="25WWJ7">
                              <node concept="37vLTw" id="3IIf9O_iBeR" role="2Oq$k0">
                                <ref role="3cqZAo" node="4UTrqZZNZvj" resolve="startFrom" />
                              </node>
                              <node concept="3$u5V9" id="1eEe91P5rqG" role="2OqNvi">
                                <node concept="1bVj0M" id="1eEe91P5rqI" role="23t8la">
                                  <node concept="3clFbS" id="1eEe91P5rqJ" role="1bW5cS">
                                    <node concept="3clFbF" id="1eEe91P5sl9" role="3cqZAp">
                                      <node concept="1Ls8ON" id="1eEe91P5sl8" role="3clFbG">
                                        <node concept="37vLTw" id="1eEe91P5tIb" role="1Lso8e">
                                          <ref role="3cqZAo" node="1eEe91P5rqK" resolve="it" />
                                        </node>
                                        <node concept="37vLTw" id="1eEe91P5vnO" role="1Lso8e">
                                          <ref role="3cqZAo" node="1eEe91P3Y1X" resolve="initialParam" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="1eEe91P5rqK" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="1eEe91P5rqL" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
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
                              <node concept="1LlUBW" id="1eEe91P5vKn" role="1tU5fm">
                                <node concept="3Tqbb2" id="1eEe91P5y8B" role="1Lm7xW" />
                                <node concept="16syzq" id="1eEe91P5$mZ" role="1Lm7xW">
                                  <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
                                </node>
                              </node>
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
                            <node concept="37vLTw" id="1eEe91P5Apw" role="2n6tg2">
                              <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="4UTrqZZNX0l" role="3cqZAp" />
                          <node concept="1DcWWT" id="4UTrqZZNX0m" role="3cqZAp">
                            <node concept="3clFbS" id="4UTrqZZNX0n" role="2LFqv$">
                              <node concept="3SKdUt" id="4UTrqZZO0z8" role="3cqZAp">
                                <node concept="1PaTwC" id="589APehYxPV" role="3ndbpf">
                                  <node concept="3oM_SD" id="589APehYxPW" role="1PaTwD">
                                    <property role="3oM_SC" value="FIXME:" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYxPX" role="1PaTwD">
                                    <property role="3oM_SC" value="WTH?" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYxPY" role="1PaTwD">
                                    <property role="3oM_SC" value="skipping" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYxPZ" role="1PaTwD">
                                    <property role="3oM_SC" value="all" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYxQ0" role="1PaTwD">
                                    <property role="3oM_SC" value="attributes?" />
                                  </node>
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
                                  <node concept="1LFfDK" id="1eEe91P5DJo" role="37wK5m">
                                    <node concept="3cmrfG" id="1eEe91P5ExY" role="1LF_Uc">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="37vLTw" id="4UTrqZZOcm6" role="1LFl5Q">
                                      <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1eEe91P5F7x" role="3cqZAp" />
                              <node concept="3cpWs8" id="1eEe91P5O1S" role="3cqZAp">
                                <node concept="3cpWsn" id="1eEe91P5O1T" role="3cpWs9">
                                  <property role="TrG5h" value="nextParam" />
                                  <node concept="16syzq" id="1eEe91P5NVm" role="1tU5fm">
                                    <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
                                  </node>
                                  <node concept="2OqwBi" id="1eEe91P5O1U" role="33vP2m">
                                    <node concept="37vLTw" id="1eEe91P5O1V" role="2Oq$k0">
                                      <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
                                    </node>
                                    <node concept="liA8E" id="1eEe91P5O1W" role="2OqNvi">
                                      <ref role="37wK5l" node="1eEe91P2lma" resolve="nextParam" />
                                      <node concept="1LFfDK" id="1eEe91P5O1X" role="37wK5m">
                                        <node concept="3cmrfG" id="1eEe91P5O1Y" role="1LF_Uc">
                                          <property role="3cmrfH" value="0" />
                                        </node>
                                        <node concept="37vLTw" id="1eEe91P5O1Z" role="1LFl5Q">
                                          <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="1eEe91P5O20" role="37wK5m">
                                        <ref role="3cqZAo" node="4UTrqZZNX0N" resolve="ch" />
                                      </node>
                                      <node concept="1LFfDK" id="1eEe91P5O21" role="37wK5m">
                                        <node concept="3cmrfG" id="1eEe91P5O22" role="1LF_Uc">
                                          <property role="3cmrfH" value="1" />
                                        </node>
                                        <node concept="37vLTw" id="1eEe91P5O23" role="1LFl5Q">
                                          <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4UTrqZZNX0I" role="3cqZAp">
                                <node concept="2OqwBi" id="4UTrqZZNX0J" role="3clFbG">
                                  <node concept="37vLTw" id="4UTrqZZNX0K" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                                  </node>
                                  <node concept="2Ke9KJ" id="4UTrqZZNX0L" role="2OqNvi">
                                    <node concept="1Ls8ON" id="1eEe91P5QF9" role="25WWJ7">
                                      <node concept="37vLTw" id="1eEe91P5SyO" role="1Lso8e">
                                        <ref role="3cqZAo" node="4UTrqZZNX0N" resolve="ch" />
                                      </node>
                                      <node concept="37vLTw" id="1eEe91P5THe" role="1Lso8e">
                                        <ref role="3cqZAo" node="1eEe91P5O1T" resolve="nextParam" />
                                      </node>
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
                              <node concept="1LFfDK" id="1eEe91P5B5Q" role="2Oq$k0">
                                <node concept="3cmrfG" id="1eEe91P5Ck4" role="1LF_Uc">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="37vLTw" id="4UTrqZZNX0Q" role="1LFl5Q">
                                  <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                                </node>
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
          <node concept="3clFbF" id="2ZFX$PQrZTu" role="3cqZAp">
            <node concept="2OqwBi" id="2ZFX$PQs07F" role="3clFbG">
              <node concept="37vLTw" id="2ZFX$PQs07G" role="2Oq$k0">
                <ref role="3cqZAo" node="4UTrqZZO5aI" resolve="next" />
              </node>
              <node concept="1BlSNk" id="2ZFX$PQtRUy" role="2OqNvi">
                <ref role="1BmUXE" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                <ref role="1Bn3mz" to="tpck:2ETBKOyieyt" resolve="commentedNode" />
              </node>
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
        <node concept="16syzq" id="1eEe91P0BHq" role="11_B2D">
          <ref role="16sUi3" node="1eEe91P0A8O" resolve="P" />
        </node>
      </node>
      <node concept="16euLQ" id="4UTrqZZNWwV" role="16eVyc">
        <property role="TrG5h" value="S" />
      </node>
      <node concept="16euLQ" id="1eEe91P0A8O" role="16eVyc">
        <property role="TrG5h" value="P" />
      </node>
      <node concept="312cEg" id="4UTrqZZNZvj" role="jymVt">
        <property role="TrG5h" value="startFrom" />
        <node concept="3Tm6S6" id="4UTrqZZNZvk" role="1B3o_S" />
        <node concept="A3Dl8" id="3IIf9O_haHB" role="1tU5fm">
          <node concept="3Tqbb2" id="3IIf9O_haHC" role="A3Ik2" />
        </node>
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
          <property role="TrG5h" value="startFrom" />
          <node concept="3Tqbb2" id="4UTrqZZOb5T" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4UTrqZZOb7I" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="4UTrqZZOb9_" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="4UTrqZZObkm" role="11_B2D">
              <ref role="16sUi3" node="4UTrqZZOaLH" resolve="S" />
            </node>
            <node concept="16syzq" id="1eEe91P0MZP" role="11_B2D">
              <ref role="16sUi3" node="1eEe91P0Mqf" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4UTrqZZOaY8" role="3clF45" />
        <node concept="3Tm1VV" id="4UTrqZZOaY9" role="1B3o_S" />
        <node concept="3clFbS" id="4UTrqZZOaYa" role="3clF47">
          <node concept="XkiVB" id="4UTrqZZObpZ" role="3cqZAp">
            <ref role="37wK5l" node="4UTrqZZNYyd" resolve="NodeWalker.ALL_DEEP" />
            <node concept="37vLTw" id="4UTrqZZObxU" role="37wK5m">
              <ref role="3cqZAo" node="4UTrqZZOb46" resolve="startFrom" />
            </node>
            <node concept="37vLTw" id="4UTrqZZObBy" role="37wK5m">
              <ref role="3cqZAo" node="4UTrqZZOb7I" resolve="action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3IIf9O_htpy" role="jymVt" />
      <node concept="3clFbW" id="3IIf9O_hpaa" role="jymVt">
        <node concept="37vLTG" id="3IIf9O_hpab" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="3IIf9O_hybC" role="1tU5fm">
            <node concept="3Tqbb2" id="3IIf9O_hybD" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="3IIf9O_hpad" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="3IIf9O_hpae" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="3IIf9O_hpaf" role="11_B2D">
              <ref role="16sUi3" node="4UTrqZZOaLH" resolve="S" />
            </node>
            <node concept="16syzq" id="1eEe91P0Ne3" role="11_B2D">
              <ref role="16sUi3" node="1eEe91P0Mqf" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3IIf9O_hpag" role="3clF45" />
        <node concept="3Tm1VV" id="3IIf9O_hpah" role="1B3o_S" />
        <node concept="3clFbS" id="3IIf9O_hpai" role="3clF47">
          <node concept="XkiVB" id="3IIf9O_hpaj" role="3cqZAp">
            <ref role="37wK5l" node="3IIf9O_hbbq" resolve="NodeWalker.ALL_DEEP" />
            <node concept="37vLTw" id="3IIf9O_hpak" role="37wK5m">
              <ref role="3cqZAo" node="3IIf9O_hpab" resolve="startFrom" />
            </node>
            <node concept="37vLTw" id="3IIf9O_hpal" role="37wK5m">
              <ref role="3cqZAo" node="3IIf9O_hpad" resolve="action" />
            </node>
          </node>
        </node>
      </node>
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
          <node concept="3clFbJ" id="2ZFX$PQsbc7" role="3cqZAp">
            <node concept="3clFbS" id="2ZFX$PQsbc9" role="3clFbx">
              <node concept="3cpWs6" id="2ZFX$PQsigo" role="3cqZAp">
                <node concept="3clFbT" id="2ZFX$PQsiic" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3nyPlj" id="2ZFX$PQsfxs" role="3clFbw">
              <ref role="37wK5l" node="4UTrqZZO4eL" resolve="skip" />
              <node concept="37vLTw" id="2ZFX$PQsi9F" role="37wK5m">
                <ref role="3cqZAo" node="4UTrqZZObWD" resolve="next" />
              </node>
            </node>
          </node>
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
        <node concept="16syzq" id="1eEe91P0MNF" role="11_B2D">
          <ref role="16sUi3" node="1eEe91P0Mqf" resolve="P" />
        </node>
      </node>
      <node concept="16euLQ" id="4UTrqZZOaLH" role="16eVyc">
        <property role="TrG5h" value="S" />
      </node>
      <node concept="16euLQ" id="1eEe91P0Mqf" role="16eVyc">
        <property role="TrG5h" value="P" />
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
      <property role="TrG5h" value="FLAT" />
      <node concept="2tJIrI" id="4UTrqZZOleh" role="jymVt" />
      <node concept="3clFbW" id="4UTrqZZOjgP" role="jymVt">
        <property role="TrG5h" value="FLAT" />
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
            <node concept="16syzq" id="1eEe91P0NLW" role="11_B2D">
              <ref role="16sUi3" node="1eEe91P0NiJ" resolve="P" />
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
              <node concept="2OqwBi" id="1eEe91P11Z1" role="37wK5m">
                <node concept="37vLTw" id="4UTrqZZQ_Hb" role="2Oq$k0">
                  <ref role="3cqZAo" node="4UTrqZZOjSr" resolve="nodes" />
                </node>
                <node concept="3$u5V9" id="1eEe91P12h_" role="2OqNvi">
                  <node concept="1bVj0M" id="1eEe91P12hB" role="23t8la">
                    <node concept="3clFbS" id="1eEe91P12hC" role="1bW5cS">
                      <node concept="3clFbF" id="1eEe91P12qh" role="3cqZAp">
                        <node concept="1Ls8ON" id="1eEe91P12qg" role="3clFbG">
                          <node concept="37vLTw" id="1eEe91P12_g" role="1Lso8e">
                            <ref role="3cqZAo" node="1eEe91P12hD" resolve="it" />
                          </node>
                          <node concept="2OqwBi" id="1eEe91P41lZ" role="1Lso8e">
                            <node concept="37vLTw" id="1eEe91P410B" role="2Oq$k0">
                              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
                            </node>
                            <node concept="liA8E" id="1eEe91P41WR" role="2OqNvi">
                              <ref role="37wK5l" node="1eEe91P21Wg" resolve="initialParam" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1eEe91P12hD" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1eEe91P12hE" role="1tU5fm" />
                    </node>
                  </node>
                </node>
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
      <node concept="16euLQ" id="1eEe91P0NiJ" role="16eVyc">
        <property role="TrG5h" value="P" />
      </node>
      <node concept="3uibUv" id="4UTrqZZOj1t" role="1zkMxy">
        <ref role="3uigEE" node="12yN8DyNqdl" resolve="NodeWalker" />
        <node concept="16syzq" id="4UTrqZZOjas" role="11_B2D">
          <ref role="16sUi3" node="4UTrqZZOiH2" resolve="S" />
        </node>
        <node concept="16syzq" id="1eEe91P0NDw" role="11_B2D">
          <ref role="16sUi3" node="1eEe91P0NiJ" resolve="P" />
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
            <property role="1dT_AB" value="Walks the nodes in the given sequence individually." />
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
          <node concept="16syzq" id="1eEe91P0NYA" role="11_B2D">
            <ref role="16sUi3" node="1eEe91P0CSK" resolve="P" />
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
        <property role="TrG5h" value="nodes_param" />
        <node concept="A3Dl8" id="tIwzd1KZEw" role="1tU5fm">
          <node concept="1LlUBW" id="1eEe91P0QK2" role="A3Ik2">
            <node concept="3Tqbb2" id="1eEe91P0RLV" role="1Lm7xW" />
            <node concept="16syzq" id="1eEe91P0T9Z" role="1Lm7xW">
              <ref role="16sUi3" node="1eEe91P0CSK" resolve="P" />
            </node>
          </node>
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
                  <node concept="1LFfDK" id="1eEe91P0URN" role="37wK5m">
                    <node concept="3cmrfG" id="1eEe91P0UWv" role="1LF_Uc">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2GrUjf" id="tIwzd1KZp6" role="1LFl5Q">
                      <ref role="2Gs0qQ" node="tIwzd1KYfA" resolve="next" />
                    </node>
                  </node>
                  <node concept="1LFfDK" id="1eEe91P0V90" role="37wK5m">
                    <node concept="3cmrfG" id="1eEe91P0Va1" role="1LF_Uc">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2GrUjf" id="1eEe91P0V6c" role="1LFl5Q">
                      <ref role="2Gs0qQ" node="tIwzd1KYfA" resolve="next" />
                    </node>
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
            <ref role="3cqZAo" node="tIwzd1KVkd" resolve="nodes_param" />
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
      <node concept="37vLTG" id="1eEe91P0Veh" role="3clF46">
        <property role="TrG5h" value="param" />
        <node concept="16syzq" id="1eEe91P0Wes" role="1tU5fm">
          <ref role="16sUi3" node="1eEe91P0CSK" resolve="P" />
        </node>
      </node>
      <node concept="3clFbS" id="5ntLU8Gjd90" role="3clF47">
        <node concept="3SKdUt" id="5ntLU8GjdpF" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxQ1" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxQ2" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="589APehYxQ3" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="589APehYxQ4" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
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
              <node concept="37vLTw" id="1eEe91P0W$H" role="37wK5m">
                <ref role="3cqZAo" node="1eEe91P0Veh" resolve="param" />
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
          <node concept="1PaTwC" id="589APehYxQ5" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxQ6" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="589APehYxQ7" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="589APehYxQ8" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
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
          <node concept="1PaTwC" id="589APehYxQ9" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxQa" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="589APehYxQb" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="589APehYxQc" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
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
      <node concept="3Tmbuc" id="1eEe91P3OWP" role="1B3o_S" />
      <node concept="3uibUv" id="12yN8DyNqkj" role="1tU5fm">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
        <node concept="16syzq" id="tIwzd1ID1q" role="11_B2D">
          <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
        </node>
        <node concept="16syzq" id="1eEe91P0OF7" role="11_B2D">
          <ref role="16sUi3" node="1eEe91P0CSK" resolve="P" />
        </node>
      </node>
    </node>
    <node concept="16euLQ" id="tIwzd1IC9f" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="16euLQ" id="1eEe91P0CSK" role="16eVyc">
      <property role="TrG5h" value="P" />
    </node>
    <node concept="2tJIrI" id="7DvO2M9_As1" role="jymVt" />
  </node>
  <node concept="312cEu" id="70Wv0dJhQb2">
    <property role="TrG5h" value="OriginIndex" />
    <node concept="2tJIrI" id="70Wv0dJhQb4" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJhQbd" role="jymVt">
      <property role="TrG5h" value="isValidTarget" />
      <node concept="37vLTG" id="70Wv0dJhQbs" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="70Wv0dJhQbw" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="70Wv0dJhQbp" role="3clF45" />
      <node concept="3Tm1VV" id="70Wv0dJhQbg" role="1B3o_S" />
      <node concept="3clFbS" id="70Wv0dJhQbh" role="3clF47">
        <node concept="3clFbF" id="70Wv0dJk3YO" role="3cqZAp">
          <node concept="22lmx$" id="70Wv0dJk6g2" role="3clFbG">
            <node concept="2OqwBi" id="70Wv0dJk7pt" role="3uHU7w">
              <node concept="37vLTw" id="70Wv0dJk6hD" role="2Oq$k0">
                <ref role="3cqZAo" node="70Wv0dJjR_A" resolve="validTargetRefs" />
              </node>
              <node concept="3JPx81" id="70Wv0dJk8uu" role="2OqNvi">
                <node concept="37vLTw" id="70Wv0dJk8Ec" role="25WWJ7">
                  <ref role="3cqZAo" node="70Wv0dJhQbs" resolve="ref" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="70Wv0dJk4Ke" role="3uHU7B">
              <node concept="37vLTw" id="70Wv0dJk3YN" role="2Oq$k0">
                <ref role="3cqZAo" node="70Wv0dJjMTf" resolve="originRefs" />
              </node>
              <node concept="3JPx81" id="70Wv0dJk5KL" role="2OqNvi">
                <node concept="37vLTw" id="70Wv0dJk5Vx" role="25WWJ7">
                  <ref role="3cqZAo" node="70Wv0dJhQbs" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="70Wv0dJhQb9" role="jymVt" />
    <node concept="3clFb_" id="6nFpYluRAm8" role="jymVt">
      <property role="TrG5h" value="isOrigin" />
      <node concept="37vLTG" id="6nFpYluRAm9" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="6nFpYluRH_t" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="6nFpYluRAmb" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYluRAmc" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYluRAmd" role="3clF47">
        <node concept="3clFbF" id="6nFpYluRAme" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYluRGzA" role="3clFbG">
            <node concept="37vLTw" id="6nFpYluRFOI" role="2Oq$k0">
              <ref role="3cqZAo" node="70Wv0dJjMTf" resolve="originRefs" />
            </node>
            <node concept="3JPx81" id="6nFpYluRHab" role="2OqNvi">
              <node concept="37vLTw" id="6nFpYluRHuR" role="25WWJ7">
                <ref role="3cqZAo" node="6nFpYluRAm9" resolve="ref" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYluRAm7" role="jymVt" />
    <node concept="3clFb_" id="42eP3ws38rS" role="jymVt">
      <property role="TrG5h" value="isOriginAncestor" />
      <node concept="37vLTG" id="42eP3ws3$HT" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="6nFpYluRLK6" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="42eP3ws3cdT" role="3clF45" />
      <node concept="3Tm1VV" id="42eP3ws38rV" role="1B3o_S" />
      <node concept="3clFbS" id="42eP3ws38rW" role="3clF47">
        <node concept="3clFbF" id="42eP3ws3E_j" role="3cqZAp">
          <node concept="2OqwBi" id="42eP3ws3Fh2" role="3clFbG">
            <node concept="37vLTw" id="42eP3ws3E_i" role="2Oq$k0">
              <ref role="3cqZAo" node="42eP3ws2olF" resolve="originAncestorsRefs" />
            </node>
            <node concept="3JPx81" id="42eP3ws3TMZ" role="2OqNvi">
              <node concept="37vLTw" id="42eP3ws3TWA" role="25WWJ7">
                <ref role="3cqZAo" node="42eP3ws3$HT" resolve="ref" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="42eP3ws33KR" role="jymVt" />
    <node concept="3clFb_" id="3Tm1CT$vjrt" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="3Tm1CT$vjru" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="6nFpYluRN6Y" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="3Tm1CT$vjrw" role="3clF45" />
      <node concept="3Tm1VV" id="3Tm1CT$vjrx" role="1B3o_S" />
      <node concept="3clFbS" id="3Tm1CT$vjry" role="3clF47">
        <node concept="3clFbF" id="3Tm1CT$vjrz" role="3cqZAp">
          <node concept="2OqwBi" id="3Tm1CT$vjr$" role="3clFbG">
            <node concept="37vLTw" id="3Tm1CT$vq9W" role="2Oq$k0">
              <ref role="3cqZAo" node="3Tm1CT$uN9Q" resolve="relevantRefs" />
            </node>
            <node concept="3JPx81" id="3Tm1CT$vjrA" role="2OqNvi">
              <node concept="37vLTw" id="3Tm1CT$vjrC" role="25WWJ7">
                <ref role="3cqZAo" node="3Tm1CT$vjru" resolve="ref" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Tm1CT$vjrs" role="jymVt" />
    <node concept="3clFb_" id="4hQVL4fbvvK" role="jymVt">
      <property role="TrG5h" value="isEmpty" />
      <node concept="10P_77" id="4hQVL4fbzSN" role="3clF45" />
      <node concept="3Tm1VV" id="4hQVL4fbvvN" role="1B3o_S" />
      <node concept="3clFbS" id="4hQVL4fbvvO" role="3clF47">
        <node concept="3cpWs6" id="4hQVL4fbStY" role="3cqZAp">
          <node concept="2OqwBi" id="4hQVL4fc4fF" role="3cqZAk">
            <node concept="37vLTw" id="4hQVL4fc0Iw" role="2Oq$k0">
              <ref role="3cqZAo" node="70Wv0dJjMTf" resolve="originRefs" />
            </node>
            <node concept="1v1jN8" id="4hQVL4fc7va" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4hQVL4fbqcR" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJj0l7" role="jymVt">
      <property role="TrG5h" value="addOrigin" />
      <node concept="37vLTG" id="70Wv0dJj0ls" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="70Wv0dJj0ly" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="70Wv0dJj0l9" role="3clF45" />
      <node concept="3Tm1VV" id="70Wv0dJj0la" role="1B3o_S" />
      <node concept="3clFbS" id="70Wv0dJj0lb" role="3clF47">
        <node concept="3clFbF" id="70Wv0dJjIU2" role="3cqZAp">
          <node concept="2OqwBi" id="70Wv0dJjKVZ" role="3clFbG">
            <node concept="37vLTw" id="70Wv0dJk0$2" role="2Oq$k0">
              <ref role="3cqZAo" node="70Wv0dJjMTf" resolve="originRefs" />
            </node>
            <node concept="TSZUe" id="70Wv0dJjMCE" role="2OqNvi">
              <node concept="2OqwBi" id="70Wv0dJk1wt" role="25WWJ7">
                <node concept="2JrnkZ" id="70Wv0dJk1eT" role="2Oq$k0">
                  <node concept="37vLTw" id="70Wv0dJjMRB" role="2JrQYb">
                    <ref role="3cqZAo" node="70Wv0dJj0ls" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="70Wv0dJk23L" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42eP3ws2t2Y" role="3cqZAp">
          <node concept="2OqwBi" id="42eP3ws2vJx" role="3clFbG">
            <node concept="37vLTw" id="42eP3ws2v4d" role="2Oq$k0">
              <ref role="3cqZAo" node="42eP3ws2olF" resolve="originAncestorsRefs" />
            </node>
            <node concept="X8dFx" id="42eP3ws2ITI" role="2OqNvi">
              <node concept="2OqwBi" id="42eP3ws2ODl" role="25WWJ7">
                <node concept="2OqwBi" id="42eP3ws2LzL" role="2Oq$k0">
                  <node concept="37vLTw" id="42eP3ws2KdD" role="2Oq$k0">
                    <ref role="3cqZAo" node="70Wv0dJj0ls" resolve="node" />
                  </node>
                  <node concept="z$bX8" id="42eP3ws2MLj" role="2OqNvi" />
                </node>
                <node concept="3$u5V9" id="42eP3ws2Rr5" role="2OqNvi">
                  <node concept="1bVj0M" id="42eP3ws2Rr7" role="23t8la">
                    <node concept="3clFbS" id="42eP3ws2Rr8" role="1bW5cS">
                      <node concept="3clFbF" id="42eP3ws2S9m" role="3cqZAp">
                        <node concept="2OqwBi" id="42eP3ws2Txp" role="3clFbG">
                          <node concept="37vLTw" id="42eP3ws2S9l" role="2Oq$k0">
                            <ref role="3cqZAo" node="42eP3ws2Rr9" resolve="it" />
                          </node>
                          <node concept="iZEcu" id="42eP3ws2UQq" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="42eP3ws2Rr9" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="42eP3ws2Rra" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Tm1CT$uOA6" role="3cqZAp">
          <node concept="2OqwBi" id="3Tm1CT$uQoj" role="3clFbG">
            <node concept="37vLTw" id="3Tm1CT$uOA4" role="2Oq$k0">
              <ref role="3cqZAo" node="3Tm1CT$uN9Q" resolve="relevantRefs" />
            </node>
            <node concept="X8dFx" id="3Tm1CT$v7K$" role="2OqNvi">
              <node concept="2OqwBi" id="3Tm1CT$vanx" role="25WWJ7">
                <node concept="2OqwBi" id="3Tm1CT$yezt" role="2Oq$k0">
                  <node concept="2OqwBi" id="3Tm1CT$v8G0" role="2Oq$k0">
                    <node concept="37vLTw" id="3Tm1CT$v8qi" role="2Oq$k0">
                      <ref role="3cqZAo" node="70Wv0dJj0ls" resolve="node" />
                    </node>
                    <node concept="2z74zc" id="3Tm1CT$v9Em" role="2OqNvi" />
                  </node>
                  <node concept="3zZkjj" id="3Tm1CT$yfKV" role="2OqNvi">
                    <node concept="1bVj0M" id="3Tm1CT$yfKX" role="23t8la">
                      <node concept="3clFbS" id="3Tm1CT$yfKY" role="1bW5cS">
                        <node concept="3clFbF" id="3Tm1CT$ygh6" role="3cqZAp">
                          <node concept="3clFbC" id="3Tm1CT$ypML" role="3clFbG">
                            <node concept="2OqwBi" id="3Tm1CT$yqTa" role="3uHU7w">
                              <node concept="37vLTw" id="3Tm1CT$yq8T" role="2Oq$k0">
                                <ref role="3cqZAo" node="70Wv0dJj0ls" resolve="node" />
                              </node>
                              <node concept="2Rxl7S" id="3Tm1CT$yrGN" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="3Tm1CT$ylHk" role="3uHU7B">
                              <node concept="2OqwBi" id="3Tm1CT$ygQ7" role="2Oq$k0">
                                <node concept="37vLTw" id="3Tm1CT$ygh5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Tm1CT$yfKZ" resolve="it" />
                                </node>
                                <node concept="2ZHEkA" id="3Tm1CT$yjNp" role="2OqNvi" />
                              </node>
                              <node concept="2Rxl7S" id="3Tm1CT$ynqO" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3Tm1CT$yfKZ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3Tm1CT$yfL0" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="3Tm1CT$vbN5" role="2OqNvi">
                  <node concept="1bVj0M" id="3Tm1CT$vbN7" role="23t8la">
                    <node concept="3clFbS" id="3Tm1CT$vbN8" role="1bW5cS">
                      <node concept="3clFbF" id="3Tm1CT$vchT" role="3cqZAp">
                        <node concept="2OqwBi" id="3Tm1CT$vh2C" role="3clFbG">
                          <node concept="2OqwBi" id="3Tm1CT$vduh" role="2Oq$k0">
                            <node concept="37vLTw" id="3Tm1CT$vchS" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Tm1CT$vbN9" resolve="it" />
                            </node>
                            <node concept="2ZHEkA" id="3Tm1CT$veXy" role="2OqNvi" />
                          </node>
                          <node concept="iZEcu" id="3Tm1CT$vjaS" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3Tm1CT$vbN9" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3Tm1CT$vbNa" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="70Wv0dJj0m2" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJj0l_" role="jymVt">
      <property role="TrG5h" value="addOrigins" />
      <node concept="37vLTG" id="70Wv0dJj0lA" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="70Wv0dJj0mv" role="1tU5fm">
          <node concept="3Tqbb2" id="70Wv0dJj0mw" role="A3Ik2" />
        </node>
      </node>
      <node concept="3cqZAl" id="70Wv0dJj0lC" role="3clF45" />
      <node concept="3Tm1VV" id="70Wv0dJj0lD" role="1B3o_S" />
      <node concept="3clFbS" id="70Wv0dJj0lE" role="3clF47">
        <node concept="1DcWWT" id="70Wv0dJkbgr" role="3cqZAp">
          <node concept="3clFbS" id="70Wv0dJkbgu" role="2LFqv$">
            <node concept="3clFbF" id="3Tm1CT$tGkz" role="3cqZAp">
              <node concept="1rXfSq" id="3Tm1CT$tGkx" role="3clFbG">
                <ref role="37wK5l" node="70Wv0dJj0l7" resolve="addOrigin" />
                <node concept="37vLTw" id="3Tm1CT$tHmR" role="37wK5m">
                  <ref role="3cqZAo" node="70Wv0dJkbgv" resolve="n" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="70Wv0dJkbgv" role="1Duv9x">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="70Wv0dJkbgz" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="70Wv0dJkbg$" role="1DdaDG">
            <ref role="3cqZAo" node="70Wv0dJj0lA" resolve="nodes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlv2Pyo" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJjDa1" role="jymVt">
      <property role="TrG5h" value="addValidTarget" />
      <node concept="37vLTG" id="70Wv0dJjDa_" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="70Wv0dJjDaK" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="70Wv0dJjDa3" role="3clF45" />
      <node concept="3Tm1VV" id="70Wv0dJjDa4" role="1B3o_S" />
      <node concept="3clFbS" id="70Wv0dJjDa5" role="3clF47">
        <node concept="3clFbF" id="70Wv0dJjXxv" role="3cqZAp">
          <node concept="2OqwBi" id="70Wv0dJjY4G" role="3clFbG">
            <node concept="37vLTw" id="70Wv0dJjXxu" role="2Oq$k0">
              <ref role="3cqZAo" node="70Wv0dJjR_A" resolve="validTargetRefs" />
            </node>
            <node concept="TSZUe" id="70Wv0dJkdpd" role="2OqNvi">
              <node concept="2OqwBi" id="70Wv0dJkdp9" role="25WWJ7">
                <node concept="2JrnkZ" id="70Wv0dJkdpa" role="2Oq$k0">
                  <node concept="37vLTw" id="70Wv0dJkdpb" role="2JrQYb">
                    <ref role="3cqZAo" node="70Wv0dJjDa_" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="70Wv0dJkdpc" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Tm1CT$wHht" role="3cqZAp">
          <node concept="2OqwBi" id="3Tm1CT$wHhu" role="3clFbG">
            <node concept="37vLTw" id="3Tm1CT$wHhv" role="2Oq$k0">
              <ref role="3cqZAo" node="3Tm1CT$uN9Q" resolve="relevantRefs" />
            </node>
            <node concept="X8dFx" id="3Tm1CT$wHhw" role="2OqNvi">
              <node concept="2OqwBi" id="3Tm1CT$wHhx" role="25WWJ7">
                <node concept="2OqwBi" id="3Tm1CT$ytcI" role="2Oq$k0">
                  <node concept="2OqwBi" id="3Tm1CT$wHhy" role="2Oq$k0">
                    <node concept="37vLTw" id="3Tm1CT$wHhz" role="2Oq$k0">
                      <ref role="3cqZAo" node="70Wv0dJjDa_" resolve="node" />
                    </node>
                    <node concept="2z74zc" id="3Tm1CT$wHh$" role="2OqNvi" />
                  </node>
                  <node concept="3zZkjj" id="3Tm1CT$yuQ_" role="2OqNvi">
                    <node concept="1bVj0M" id="3Tm1CT$yuQB" role="23t8la">
                      <node concept="3clFbS" id="3Tm1CT$yuQC" role="1bW5cS">
                        <node concept="3clFbF" id="3Tm1CT$yvM3" role="3cqZAp">
                          <node concept="3clFbC" id="3Tm1CT$yBWu" role="3clFbG">
                            <node concept="2OqwBi" id="3Tm1CT$yCzu" role="3uHU7w">
                              <node concept="37vLTw" id="3Tm1CT$yCfv" role="2Oq$k0">
                                <ref role="3cqZAo" node="70Wv0dJjDa_" resolve="node" />
                              </node>
                              <node concept="2Rxl7S" id="3Tm1CT$yDOG" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="3Tm1CT$yzT4" role="3uHU7B">
                              <node concept="2OqwBi" id="3Tm1CT$ywn2" role="2Oq$k0">
                                <node concept="37vLTw" id="3Tm1CT$yvM2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Tm1CT$yuQD" resolve="it" />
                                </node>
                                <node concept="2ZHEkA" id="3Tm1CT$yyTr" role="2OqNvi" />
                              </node>
                              <node concept="2Rxl7S" id="3Tm1CT$yA28" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3Tm1CT$yuQD" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3Tm1CT$yuQE" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="3Tm1CT$wHh_" role="2OqNvi">
                  <node concept="1bVj0M" id="3Tm1CT$wHhA" role="23t8la">
                    <node concept="3clFbS" id="3Tm1CT$wHhB" role="1bW5cS">
                      <node concept="3clFbF" id="3Tm1CT$wHhC" role="3cqZAp">
                        <node concept="2OqwBi" id="3Tm1CT$wHhD" role="3clFbG">
                          <node concept="2OqwBi" id="3Tm1CT$wHhE" role="2Oq$k0">
                            <node concept="37vLTw" id="3Tm1CT$wHhF" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Tm1CT$wHhI" resolve="it" />
                            </node>
                            <node concept="2ZHEkA" id="3Tm1CT$wHhG" role="2OqNvi" />
                          </node>
                          <node concept="iZEcu" id="3Tm1CT$wHhH" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3Tm1CT$wHhI" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3Tm1CT$wHhJ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="70Wv0dJk25C" role="jymVt" />
    <node concept="312cEg" id="70Wv0dJjMTf" role="jymVt">
      <property role="TrG5h" value="originRefs" />
      <node concept="3Tm6S6" id="70Wv0dJjMTg" role="1B3o_S" />
      <node concept="2hMVRd" id="70Wv0dJjMUm" role="1tU5fm">
        <node concept="2sp9CU" id="70Wv0dJjMUu" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="70Wv0dJjMVO" role="33vP2m">
        <node concept="2i4dXS" id="70Wv0dJjMVe" role="2ShVmc">
          <node concept="2sp9CU" id="70Wv0dJjMVf" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="42eP3ws2olF" role="jymVt">
      <property role="TrG5h" value="originAncestorsRefs" />
      <node concept="3Tm6S6" id="42eP3ws2olG" role="1B3o_S" />
      <node concept="2hMVRd" id="42eP3ws2olH" role="1tU5fm">
        <node concept="2sp9CU" id="42eP3ws2olI" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="42eP3ws2olJ" role="33vP2m">
        <node concept="2i4dXS" id="42eP3ws2olK" role="2ShVmc">
          <node concept="2sp9CU" id="42eP3ws2olL" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3Tm1CT$uN9Q" role="jymVt">
      <property role="TrG5h" value="relevantRefs" />
      <node concept="3Tm6S6" id="3Tm1CT$uN9R" role="1B3o_S" />
      <node concept="2hMVRd" id="3Tm1CT$uN9S" role="1tU5fm">
        <node concept="2sp9CU" id="3Tm1CT$uN9T" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="3Tm1CT$uN9U" role="33vP2m">
        <node concept="2i4dXS" id="3Tm1CT$uN9V" role="2ShVmc">
          <node concept="2sp9CU" id="3Tm1CT$uN9W" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="70Wv0dJjR_A" role="jymVt">
      <property role="TrG5h" value="validTargetRefs" />
      <node concept="3Tm6S6" id="70Wv0dJjR_B" role="1B3o_S" />
      <node concept="2hMVRd" id="70Wv0dJjR_C" role="1tU5fm">
        <node concept="2sp9CU" id="70Wv0dJjR_D" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="70Wv0dJjR_E" role="33vP2m">
        <node concept="2i4dXS" id="70Wv0dJjR_F" role="2ShVmc">
          <node concept="2sp9CU" id="70Wv0dJjR_G" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlvcD7N" role="jymVt" />
    <node concept="3UR2Jj" id="42eP3wrZwa3" role="lGtFl">
      <node concept="TZ5HA" id="42eP3wrZwa4" role="TZ5H$">
        <node concept="1dT_AC" id="42eP3wrZwa5" role="1dT_Ay">
          <property role="1dT_AB" value="Enables to track origin nodes, that is the nodes in source model which were included in templates" />
        </node>
      </node>
      <node concept="TZ5HA" id="42eP3wrZwMd" role="TZ5H$">
        <node concept="1dT_AC" id="42eP3wrZwMe" role="1dT_Ay">
          <property role="1dT_AB" value="application process as origins as opposed to those that were merely required." />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjY_ErN" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY_ErO" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjY_ErV" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY_ErW" role="1dT_Ay">
          <property role="1dT_AB" value="A node that served as an input is an origin node." />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjY_JAX" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY_JAY" role="1dT_Ay">
          <property role="1dT_AB" value="A node that is referenced from an origin node and is located within the same root (???) is a relevant node." />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjYA7LB" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjYA7LC" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjY_EEM" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY_EEN" role="1dT_Ay">
          <property role="1dT_AB" value="A node specified as a valid target can be used for reporting errors. " />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4$YN6Quy64$" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="12yN8DyF_E1">
    <property role="TrG5h" value="ProgramFactory" />
    <node concept="2tJIrI" id="5ntLU8GlxKW" role="jymVt" />
    <node concept="3clFbW" id="7DvO2M9uuLO" role="jymVt">
      <node concept="3cqZAl" id="7DvO2M9uuLQ" role="3clF45" />
      <node concept="3Tm1VV" id="4$YN6QuzaKb" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9uuLS" role="3clF47">
        <node concept="3clFbF" id="cmlg9OLkT2" role="3cqZAp">
          <node concept="37vLTI" id="cmlg9OLpE7" role="3clFbG">
            <node concept="37vLTw" id="cmlg9OLrFS" role="37vLTx">
              <ref role="3cqZAo" node="cmlg9OLhb5" resolve="rulesListTable" />
            </node>
            <node concept="2OqwBi" id="cmlg9OLl2O" role="37vLTJ">
              <node concept="Xjq3P" id="cmlg9OLkT0" role="2Oq$k0" />
              <node concept="2OwXpG" id="cmlg9OLn_U" role="2OqNvi">
                <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="rulesListTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6OXbTDxQh32" role="3cqZAp">
          <node concept="37vLTI" id="6OXbTDxQi9x" role="3clFbG">
            <node concept="2OqwBi" id="6OXbTDxQhiM" role="37vLTJ">
              <node concept="Xjq3P" id="6OXbTDxQh30" role="2Oq$k0" />
              <node concept="2OwXpG" id="6OXbTDxQhDL" role="2OqNvi">
                <ref role="2Oxat5" node="7DvO2Mah9z5" resolve="applicationSession" />
              </node>
            </node>
            <node concept="37vLTw" id="cmlg9OJGEd" role="37vLTx">
              <ref role="3cqZAo" node="cmlg9OJCww" resolve="applicationSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cmlg9OIRkA" role="3cqZAp">
          <node concept="37vLTI" id="cmlg9OIRkC" role="3clFbG">
            <node concept="2OqwBi" id="cmlg9OIZC$" role="37vLTJ">
              <node concept="Xjq3P" id="cmlg9OIZIm" role="2Oq$k0" />
              <node concept="2OwXpG" id="cmlg9OIZCB" role="2OqNvi">
                <ref role="2Oxat5" node="cmlg9OIRky" resolve="ruleTemplates" />
              </node>
            </node>
            <node concept="37vLTw" id="cmlg9OIRkG" role="37vLTx">
              <ref role="3cqZAo" node="cmlg9OINa8" resolve="ruleTemplates" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4hQVL4f8WTg" role="3cqZAp">
          <node concept="37vLTI" id="4hQVL4f8WTi" role="3clFbG">
            <node concept="2OqwBi" id="4hQVL4f96ns" role="37vLTJ">
              <node concept="Xjq3P" id="4hQVL4f96sQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="4hQVL4f96nv" role="2OqNvi">
                <ref role="2Oxat5" node="4hQVL4f8WTc" resolve="originIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="4hQVL4f8WTm" role="37vLTx">
              <ref role="3cqZAo" node="6nFpYluW4uH" resolve="originIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlujV$2" role="3cqZAp">
          <node concept="37vLTI" id="6nFpYlujV$4" role="3clFbG">
            <node concept="2OqwBi" id="6nFpYluk4M4" role="37vLTJ">
              <node concept="Xjq3P" id="6nFpYluk6oI" role="2Oq$k0" />
              <node concept="2OwXpG" id="6nFpYluk4M7" role="2OqNvi">
                <ref role="2Oxat5" node="6nFpYlujVzU" resolve="updatesRecorder" />
              </node>
            </node>
            <node concept="37vLTw" id="6nFpYlujV$8" role="37vLTx">
              <ref role="3cqZAo" node="6nFpYlujKf7" resolve="updatesRecorder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9OLhb5" role="3clF46">
        <property role="TrG5h" value="rulesListTable" />
        <node concept="3uibUv" id="cmlg9OLiZ1" role="1tU5fm">
          <ref role="3uigEE" node="7DvO2M9Uago" resolve="RulesListTable" />
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9OJCww" role="3clF46">
        <property role="TrG5h" value="applicationSession" />
        <node concept="3uibUv" id="cmlg9OJEno" role="1tU5fm">
          <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9OINa8" role="3clF46">
        <property role="TrG5h" value="ruleTemplates" />
        <node concept="3uibUv" id="cmlg9OIQFQ" role="1tU5fm">
          <ref role="3uigEE" to="hano:6fdr4UgftiG" resolve="RuleTemplateIndex" />
        </node>
      </node>
      <node concept="37vLTG" id="6nFpYluW4uH" role="3clF46">
        <property role="TrG5h" value="originIndex" />
        <node concept="3uibUv" id="6nFpYluW6g1" role="1tU5fm">
          <ref role="3uigEE" node="70Wv0dJhQb2" resolve="OriginIndex" />
        </node>
      </node>
      <node concept="37vLTG" id="6nFpYlujKf7" role="3clF46">
        <property role="TrG5h" value="updatesRecorder" />
        <node concept="3uibUv" id="6nFpYlujNlq" role="1tU5fm">
          <ref role="3uigEE" node="6nFpYlu02jD" resolve="UpdatesRecorder" />
          <node concept="1LlUBW" id="6nFpYlujG_w" role="11_B2D">
            <node concept="3uibUv" id="6nFpYlujHxV" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            </node>
            <node concept="3vKaQO" id="6nFpYlujHPS" role="1Lm7xW">
              <node concept="3uibUv" id="6nFpYlujI37" role="3O5elw">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6i42QSspmaL" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7ncaN" role="jymVt">
      <property role="TrG5h" value="buildProgram" />
      <node concept="37vLTG" id="1CcQBrPh8x2" role="3clF46">
        <property role="TrG5h" value="programBuilder" />
        <node concept="3uibUv" id="cmlg9NfzGu" role="1tU5fm">
          <ref role="3uigEE" node="5rhZO$TYZJM" resolve="ProgramBuilder" />
        </node>
      </node>
      <node concept="3uibUv" id="7nkyKX7nfei" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="cmlg9O$qY1" role="1B3o_S" />
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
                      <ref role="37wK5l" node="4MqhgXUQoOL" resolve="addRulesList" />
                      <node concept="37vLTw" id="6tPOoeTbvfq" role="37wK5m">
                        <ref role="3cqZAo" node="4MqhgXUSKVP" resolve="handler" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUSKVP" role="1Duv9x">
                <property role="TrG5h" value="handler" />
                <node concept="3uibUv" id="4MqhgXUSKVT" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
                </node>
              </node>
              <node concept="2OqwBi" id="6tPOoeTbtQC" role="1DdaDG">
                <node concept="37vLTw" id="6tPOoeTbtQD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tPOoeT4XhE" resolve="rulesListTable" />
                </node>
                <node concept="liA8E" id="6tPOoeTbtQE" role="2OqNvi">
                  <ref role="37wK5l" node="7DvO2M9UagU" resolve="allLists" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5yr01fE2ejp" role="3cqZAp">
              <node concept="1PaTwC" id="5yr01fE2ejq" role="3ndbpf">
                <node concept="3oM_SD" id="5yr01fE2ejs" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="5yr01fE2eBk" role="1PaTwD">
                  <property role="3oM_SC" value="provide" />
                </node>
                <node concept="3oM_SD" id="5yr01fE2eFr" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5yr01fE2eHx" role="1PaTwD">
                  <property role="3oM_SC" value="session" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6i42QSskaRB" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSskaRC" role="3cpWs9">
                <property role="TrG5h" value="mainBuilder" />
                <node concept="3uibUv" id="6i42QSskaR_" role="1tU5fm">
                  <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
                <node concept="2ShNRf" id="6i42QSskaRD" role="33vP2m">
                  <node concept="1pGfFk" id="6i42QSskaRE" role="2ShVmc">
                    <ref role="37wK5l" to="i348:5yr01fE1Jnt" resolve="RuleBuilder" />
                    <node concept="10Nm6u" id="5yr01fE2e5j" role="37wK5m" />
                    <node concept="Xl_RD" id="6i42QSskaRF" role="37wK5m">
                      <property role="Xl_RC" value="finish" />
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
                  <ref role="37wK5l" to="i348:7eGEHDlc$bq" resolve="appendHeadReplaced" />
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
                  <ref role="37wK5l" to="i348:7eGEHDlc$aw" resolve="appendBody" />
                  <node concept="2ShNRf" id="6i42QSskpry" role="37wK5m">
                    <node concept="1pGfFk" id="6i42QSskq5F" role="2ShVmc">
                      <ref role="37wK5l" to="cxk7:4xBopTzrPWl" resolve="AssertPredicate" />
                      <node concept="10M0yZ" id="6i42QSskqiG" role="37wK5m">
                        <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                        <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUQmg3" role="3cqZAp" />
            <node concept="3cpWs8" id="4MqhgXUQinu" role="3cqZAp">
              <node concept="3cpWsn" id="4MqhgXUQinv" role="3cpWs9">
                <property role="TrG5h" value="mainRulesListBuilder" />
                <node concept="3uibUv" id="4MqhgXUQinf" role="1tU5fm">
                  <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RulesListBuilder" />
                </node>
                <node concept="2ShNRf" id="4MqhgXUQinw" role="33vP2m">
                  <node concept="1pGfFk" id="4MqhgXUQinx" role="2ShVmc">
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesListTable.RulesListBuilder" />
                    <node concept="Xl_RD" id="4MqhgXUQiny" role="37wK5m">
                      <property role="Xl_RC" value="finish" />
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
              <node concept="15s5l7" id="1H_6AUT6WmZ" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type java.lang.Object is not a subtype of ? extends Object&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)/5108199730660924415,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/2062135263152102048]&quot;;" />
                <property role="huDt6" value="Error: type java.lang.Object is not a subtype of ? extends Object" />
              </node>
            </node>
            <node concept="3clFbF" id="4MqhgXUQeMk" role="3cqZAp">
              <node concept="2OqwBi" id="4MqhgXUQjy0" role="3clFbG">
                <node concept="37vLTw" id="4MqhgXUQinE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUQinv" resolve="mainRulesListBuilder" />
                </node>
                <node concept="liA8E" id="4MqhgXUQjH0" role="2OqNvi">
                  <ref role="37wK5l" node="4MqhgXUMbtk" resolve="addRule" />
                  <node concept="37vLTw" id="4MqhgXUQmTK" role="37wK5m">
                    <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                  </node>
                  <node concept="2OqwBi" id="4MqhgXUQnL1" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUQn$6" role="2Oq$k0">
                      <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUQolJ" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7eGEHDlc$ck" resolve="toRule" />
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
                  <ref role="37wK5l" node="4MqhgXUQoOL" resolve="addRulesList" />
                  <node concept="2OqwBi" id="4MqhgXUSPwA" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUSPaX" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUQinv" resolve="mainRulesListBuilder" />
                    </node>
                    <node concept="liA8E" id="cmlg9NhrJf" role="2OqNvi">
                      <ref role="37wK5l" node="4MqhgXUNDLG" resolve="toRulesList" />
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
                  <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                  <ref role="37wK5l" to="hano:6i42QSsr2_r" resolve="FAIL" />
                  <node concept="2OqwBi" id="6i42QSsp6Fk" role="37wK5m">
                    <node concept="37vLTw" id="6i42QSsp6Fl" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nkyKX7nl0T" resolve="e" />
                    </node>
                    <node concept="liA8E" id="6i42QSsp6Fm" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5zqVskM9lCB" role="37wK5m">
                    <ref role="3cqZAo" node="7nkyKX7nl0T" resolve="e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7nkyKX7nrdm" role="3cqZAp" />
        <node concept="3cpWs6" id="7nkyKX7nru7" role="3cqZAp">
          <node concept="2YIFZM" id="6i42QSspfHj" role="3cqZAk">
            <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
            <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSy_Bt" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1bMC1" role="jymVt">
      <property role="TrG5h" value="processInput" />
      <node concept="37vLTG" id="4QPCta1bMC2" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="A3Dl8" id="4QPCta1bRUn" role="1tU5fm">
          <node concept="3Tqbb2" id="4QPCta1bRUo" role="A3Ik2" />
        </node>
      </node>
      <node concept="3uibUv" id="4QPCta1bMC8" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4$YN6QuyBIN" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1bMCa" role="3clF47">
        <node concept="3cpWs8" id="4QPCta1bMCb" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1bMCc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4QPCta1bMCd" role="1tU5fm">
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="4QPCta1bMCe" role="33vP2m">
              <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4hQVL4fbdNR" role="3cqZAp">
          <node concept="3cpWsn" id="4hQVL4fbdNS" role="3cpWs9">
            <property role="TrG5h" value="required" />
            <node concept="3vKaQO" id="4hQVL4fahqn" role="1tU5fm">
              <node concept="3Tqbb2" id="4hQVL4fahqq" role="3O5elw" />
            </node>
            <node concept="10Nm6u" id="4hQVL4fbnMs" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="4hQVL4fjaox" role="3cqZAp" />
        <node concept="3clFbJ" id="4hQVL4fbhuA" role="3cqZAp">
          <node concept="3clFbS" id="4hQVL4fbhuC" role="3clFbx">
            <node concept="3SKdUt" id="6OXbTDxA$Dn" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxQo" role="3ndbpf">
                <node concept="3oM_SD" id="589APehYxQp" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="589APehYxQq" role="1PaTwD">
                  <property role="3oM_SC" value="apply" />
                </node>
                <node concept="3oM_SD" id="589APehYxQr" role="1PaTwD">
                  <property role="3oM_SC" value="templates" />
                </node>
                <node concept="3oM_SD" id="589APehYxQs" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="589APehYxQt" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="589APehYxQu" role="1PaTwD">
                  <property role="3oM_SC" value="input" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2Qe6u2cltUr" role="3cqZAp">
              <node concept="3cpWsn" id="2Qe6u2cltUs" role="3cpWs9">
                <property role="TrG5h" value="noInput" />
                <node concept="1LlUBW" id="2Qe6u2cltUt" role="1tU5fm">
                  <node concept="3uibUv" id="2Qe6u2cltUu" role="1Lm7xW">
                    <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
                  </node>
                  <node concept="3vKaQO" id="2Qe6u2cltUv" role="1Lm7xW">
                    <node concept="3Tqbb2" id="2Qe6u2cltUw" role="3O5elw" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2Qe6u2cltUx" role="33vP2m">
                  <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyRuleTemplatesAndCollectRequired" />
                  <node concept="2OqwBi" id="2Qe6u2cltUy" role="37wK5m">
                    <node concept="37vLTw" id="cmlg9OJjeR" role="2Oq$k0">
                      <ref role="3cqZAo" node="cmlg9OIRky" resolve="ruleTemplates" />
                    </node>
                    <node concept="liA8E" id="2Qe6u2cltUA" role="2OqNvi">
                      <ref role="37wK5l" to="hano:5NuEpF1qn9x" resolve="allRuleTemplatesWithNoInput" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="2Qe6u2cltUB" role="37wK5m" />
                  <node concept="3clFbT" id="xaaVXviDd8" role="37wK5m" />
                  <node concept="2YIFZM" id="1eEe91OYC50" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  </node>
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
                    <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
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
            <node concept="3clFbF" id="4hQVL4fbewz" role="3cqZAp">
              <node concept="37vLTI" id="4hQVL4fbew_" role="3clFbG">
                <node concept="1LFfDK" id="4hQVL4fbdNT" role="37vLTx">
                  <node concept="3cmrfG" id="4hQVL4fbdNU" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4hQVL4fbdNV" role="1LFl5Q">
                    <ref role="3cqZAo" node="2Qe6u2cltUs" resolve="noInput" />
                  </node>
                </node>
                <node concept="37vLTw" id="4hQVL4fbewD" role="37vLTJ">
                  <ref role="3cqZAo" node="4hQVL4fbdNS" resolve="required" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4hQVL4fcadZ" role="3clFbw">
            <node concept="37vLTw" id="4hQVL4fbo4I" role="2Oq$k0">
              <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
            </node>
            <node concept="liA8E" id="4hQVL4fccef" role="2OqNvi">
              <ref role="37wK5l" node="4hQVL4fbvvK" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6nFpYltL7jq" role="3cqZAp" />
        <node concept="3SKdUt" id="6OXbTDxAA$7" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxQv" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxQw" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="589APehYxQx" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="589APehYxQy" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="589APehYxQz" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
            <node concept="3oM_SD" id="589APehYxQ$" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="589APehYxQ_" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="589APehYxQA" role="1PaTwD">
              <property role="3oM_SC" value="input" />
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
                <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="4QPCta1bMCu" role="37wK5m">
                  <node concept="Xjq3P" id="4QPCta1bMCv" role="2Oq$k0" />
                  <node concept="liA8E" id="4QPCta1bMCw" role="2OqNvi">
                    <ref role="37wK5l" node="4QPCta1aZLs" resolve="processInput" />
                    <node concept="37vLTw" id="4QPCta1bMCx" role="37wK5m">
                      <ref role="3cqZAo" node="4QPCta1bMC2" resolve="input" />
                    </node>
                    <node concept="37vLTw" id="4hQVL4fbmMe" role="37wK5m">
                      <ref role="3cqZAo" node="4hQVL4fbdNS" resolve="required" />
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
        <node concept="3clFbF" id="4QPCta1bMCK" role="3cqZAp">
          <node concept="37vLTw" id="4QPCta1bMCL" role="3clFbG">
            <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDxOujb" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDxOzxt" role="jymVt">
      <property role="TrG5h" value="processQuery" />
      <node concept="37vLTG" id="cmlg9OIsrb" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="cmlg9OI$gY" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDxP7qn" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="8X2XB" id="6OXbTDxPb_p" role="1tU5fm">
          <node concept="3uibUv" id="6OXbTDxPbo6" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6OXbTDxOCKa" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4$YN6QuyIUM" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDxOzxx" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDxPbTd" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDxPbTe" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6OXbTDxPbTf" role="1tU5fm">
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="6OXbTDxPbTg" role="33vP2m">
              <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Zz6A5IcR5L" role="3cqZAp">
          <node concept="3clFbS" id="4Zz6A5IcR5N" role="3clFbx">
            <node concept="3clFbF" id="6OXbTDyhwPN" role="3cqZAp">
              <node concept="37vLTI" id="6OXbTDyhxjF" role="3clFbG">
                <node concept="2OqwBi" id="6OXbTDyhxAR" role="37vLTx">
                  <node concept="37vLTw" id="6OXbTDyhxq$" role="2Oq$k0">
                    <ref role="3cqZAo" node="6OXbTDxPbTe" resolve="result" />
                  </node>
                  <node concept="liA8E" id="6OXbTDyhxJe" role="2OqNvi">
                    <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                    <node concept="1rXfSq" id="6OXbTDyhxQW" role="37wK5m">
                      <ref role="37wK5l" node="6OXbTDy1oEg" resolve="applyQueryTemplates" />
                      <node concept="37vLTw" id="cmlg9OIGvM" role="37wK5m">
                        <ref role="3cqZAo" node="cmlg9OIsrb" resolve="queryTemplate" />
                      </node>
                      <node concept="37vLTw" id="6OXbTDyhxR8" role="37wK5m">
                        <ref role="3cqZAo" node="6OXbTDxP7qn" resolve="parameter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6OXbTDyhwPL" role="37vLTJ">
                  <ref role="3cqZAo" node="6OXbTDxPbTe" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4Zz6A5IcRzB" role="3clFbw">
            <node concept="37vLTw" id="4Zz6A5IcRlA" role="2Oq$k0">
              <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
            </node>
            <node concept="liA8E" id="4Zz6A5IcRGA" role="2OqNvi">
              <ref role="37wK5l" node="4hQVL4fbvvK" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6OXbTDxPc9M" role="3cqZAp">
          <node concept="37vLTw" id="6OXbTDxPc9K" role="3clFbG">
            <ref role="3cqZAo" node="6OXbTDxPbTe" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDzRR6o" role="jymVt" />
    <node concept="3clFb_" id="4QPCta1aZLs" role="jymVt">
      <property role="TrG5h" value="processInput" />
      <node concept="37vLTG" id="4QPCta1aZLt" role="3clF46">
        <property role="TrG5h" value="input" />
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
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="4QPCta1aZLw" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1aZLx" role="3clF47">
        <node concept="3SKdUt" id="4QPCta1aZLy" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxQB" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxQC" role="1PaTwD">
              <property role="3oM_SC" value="walk" />
            </node>
            <node concept="3oM_SD" id="589APehYxQD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxQE" role="1PaTwD">
              <property role="3oM_SC" value="AST" />
            </node>
            <node concept="3oM_SD" id="589APehYxQF" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="589APehYxQG" role="1PaTwD">
              <property role="3oM_SC" value="apply" />
            </node>
            <node concept="3oM_SD" id="589APehYxQH" role="1PaTwD">
              <property role="3oM_SC" value="templates" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6nFpYltTvL8" role="3cqZAp">
          <node concept="1PaTwC" id="6nFpYltTvL9" role="3ndbpf">
            <node concept="3oM_SD" id="6nFpYltTvLb" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwkC" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwkN" role="1PaTwD">
              <property role="3oM_SC" value="&quot;interfaceOnly&quot;" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwlJ" role="1PaTwD">
              <property role="3oM_SC" value="param" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwmc" role="1PaTwD">
              <property role="3oM_SC" value="--" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwmi" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwna" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwny" role="1PaTwD">
              <property role="3oM_SC" value="ever" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwnV" role="1PaTwD">
              <property role="3oM_SC" value="!=" />
            </node>
            <node concept="3oM_SD" id="6nFpYltTwol" role="1PaTwD">
              <property role="3oM_SC" value="false?" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1aZL$" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1aZL_" role="3cpWs9">
            <property role="TrG5h" value="applyingResult" />
            <node concept="3uibUv" id="4QPCta1aZLD" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
            </node>
            <node concept="2OqwBi" id="6nFpYltOZug" role="33vP2m">
              <node concept="2ShNRf" id="4hQVL4f9U1H" role="2Oq$k0">
                <node concept="HV5vD" id="4hQVL4f9XMM" role="2ShVmc">
                  <ref role="HV5vE" node="6nFpYltFQ8I" resolve="ProgramFactory.AssistedWalk" />
                </node>
              </node>
              <node concept="liA8E" id="6nFpYltP1kN" role="2OqNvi">
                <ref role="37wK5l" node="6nFpYltNprc" resolve="forEachOriginRecursively" />
                <node concept="37vLTw" id="6nFpYltP1Ha" role="37wK5m">
                  <ref role="3cqZAo" node="4QPCta1aZLt" resolve="input" />
                </node>
                <node concept="2ShNRf" id="6nFpYltP4bb" role="37wK5m">
                  <node concept="1pGfFk" id="6nFpYltP4bc" role="2ShVmc">
                    <ref role="37wK5l" node="xaaVXvi$I3" resolve="ProgramFactory.TemplateApplicator" />
                    <node concept="3clFbT" id="6nFpYltP4bd" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="6nFpYltP3Gs" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1aZLE" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1aZLF" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4QPCta1aZLG" role="1tU5fm">
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
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
          <node concept="1PaTwC" id="589APehYxQI" role="3ndbpf">
            <node concept="3oM_SD" id="589APehYxQJ" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="589APehYxQK" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="589APehYxQL" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
            <node concept="3oM_SD" id="589APehYxQM" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Qe6u2cmBeW" role="3cqZAp">
          <node concept="3cpWsn" id="2Qe6u2cmBeX" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="3vKaQO" id="2Qe6u2cmBEJ" role="1tU5fm">
              <node concept="3Tqbb2" id="2Qe6u2cmC60" role="3O5elw" />
            </node>
            <node concept="2OqwBi" id="2Qe6u2cmBeY" role="33vP2m">
              <node concept="2OqwBi" id="2Qe6u2cmBf0" role="2Oq$k0">
                <node concept="37vLTw" id="2Qe6u2cmBf1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
                </node>
                <node concept="2OwXpG" id="2Qe6u2cmBf2" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                </node>
              </node>
              <node concept="ANE8D" id="2Qe6u2cmBf5" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3rCAg5k6tYT" role="3cqZAp">
          <node concept="3cpWsn" id="3rCAg5k6tYU" role="3cpWs9">
            <property role="TrG5h" value="reqd" />
            <node concept="3vKaQO" id="3rCAg5k6uK4" role="1tU5fm">
              <node concept="3Tqbb2" id="3rCAg5k6uK6" role="3O5elw" />
            </node>
            <node concept="2OqwBi" id="3rCAg5k6tYV" role="33vP2m">
              <node concept="2OqwBi" id="3rCAg5k6tYW" role="2Oq$k0">
                <node concept="2OqwBi" id="3rCAg5k6tYX" role="2Oq$k0">
                  <node concept="37vLTw" id="3rCAg5k6tYY" role="2Oq$k0">
                    <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
                  </node>
                  <node concept="2OwXpG" id="3rCAg5k6tYZ" role="2OqNvi">
                    <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                  </node>
                </node>
                <node concept="3QWeyG" id="3rCAg5k6tZ0" role="2OqNvi">
                  <node concept="37vLTw" id="3rCAg5k6tZ1" role="576Qk">
                    <ref role="3cqZAo" node="2Qe6u2ckhfY" resolve="required" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="3rCAg5k6tZ2" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2fobfNk6_p1" role="3cqZAp">
          <node concept="2OqwBi" id="2fobfNk6_p2" role="3cqZAk">
            <node concept="37vLTw" id="2fobfNk6_p3" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1aZLF" resolve="result" />
            </node>
            <node concept="liA8E" id="2fobfNk6_p4" role="2OqNvi">
              <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
              <node concept="1rXfSq" id="2fobfNk6_p5" role="37wK5m">
                <ref role="37wK5l" node="tIwzd1MM22" resolve="processRequired" />
                <node concept="1Ls8ON" id="2fobfNk6_p6" role="37wK5m">
                  <node concept="37vLTw" id="2fobfNk6_p7" role="1Lso8e">
                    <ref role="3cqZAo" node="3rCAg5k6tYU" resolve="reqd" />
                  </node>
                  <node concept="37vLTw" id="2fobfNk6_p8" role="1Lso8e">
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
    <node concept="3clFb_" id="tIwzd1MM22" role="jymVt">
      <property role="TrG5h" value="processRequired" />
      <node concept="3Tm6S6" id="tIwzd1MM23" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsq0Nv" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
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
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="6i42QSsq4kY" role="33vP2m">
              <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
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
            <node concept="3clFbH" id="6nFpYltPoAo" role="3cqZAp" />
            <node concept="3cpWs8" id="6i42QSsvfVc" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsvfVd" role="3cpWs9">
                <property role="TrG5h" value="applyingResult" />
                <node concept="3uibUv" id="4MqhgXU_RVs" role="1tU5fm">
                  <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
                </node>
                <node concept="2OqwBi" id="6nFpYltT1RY" role="33vP2m">
                  <node concept="2ShNRf" id="4hQVL4f9ZQX" role="2Oq$k0">
                    <node concept="HV5vD" id="4hQVL4fa1ph" role="2ShVmc">
                      <ref role="HV5vE" node="6nFpYltFQ8I" resolve="ProgramFactory.AssistedWalk" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6nFpYltT4sz" role="2OqNvi">
                    <ref role="37wK5l" node="6nFpYltSnCO" resolve="forEachRequired" />
                    <node concept="37vLTw" id="6nFpYltT5X8" role="37wK5m">
                      <ref role="3cqZAo" node="tIwzd1MM10" resolve="allRequired" />
                    </node>
                    <node concept="2ShNRf" id="6nFpYltT7bd" role="37wK5m">
                      <node concept="1pGfFk" id="6nFpYltT7Nw" role="2ShVmc">
                        <ref role="37wK5l" node="xaaVXvi$I3" resolve="ProgramFactory.TemplateApplicator" />
                        <node concept="3clFbT" id="6nFpYltT9q2" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6nFpYltPrHZ" role="3cqZAp" />
            <node concept="3clFbF" id="6i42QSsvqpg" role="3cqZAp">
              <node concept="37vLTI" id="6i42QSsvqPG" role="3clFbG">
                <node concept="2OqwBi" id="6i42QSsvr5W" role="37vLTx">
                  <node concept="37vLTw" id="6i42QSsvr1D" role="2Oq$k0">
                    <ref role="3cqZAo" node="6i42QSsq4kX" resolve="result" />
                  </node>
                  <node concept="liA8E" id="6i42QSsvreX" role="2OqNvi">
                    <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
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
    <node concept="2tJIrI" id="5NuEpF1pMvG" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8GlSnU" role="jymVt">
      <property role="TrG5h" value="applyRuleTemplate" />
      <node concept="3Tm6S6" id="5ntLU8GlSnV" role="1B3o_S" />
      <node concept="37vLTG" id="5ntLU8GlSnJ" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="1ffsG7c51iR" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
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
                    <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7XdbJdyLA3m" role="33vP2m">
                  <node concept="37vLTw" id="7XdbJdyLzeU" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="7XdbJdyLAB$" role="2OqNvi">
                    <ref role="37wK5l" to="i348:7XdbJdyi9Ld" resolve="applyReduce" />
                    <node concept="37vLTw" id="7XdbJdyLAMJ" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                    </node>
                    <node concept="2ShNRf" id="7XdbJdyLCh3" role="37wK5m">
                      <node concept="Tc6Ow" id="7XdbJdyLDeJ" role="2ShVmc">
                        <node concept="3uibUv" id="7XdbJdyLDvC" role="HW$YZ">
                          <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                        </node>
                      </node>
                    </node>
                    <node concept="1bVj0M" id="7XdbJdyLDL4" role="37wK5m">
                      <node concept="37vLTG" id="7XdbJdyLESK" role="1bW2Oz">
                        <property role="TrG5h" value="builders" />
                        <node concept="_YKpA" id="7XdbJdyLG5y" role="1tU5fm">
                          <node concept="3uibUv" id="7XdbJdyLHij" role="_ZDj9">
                            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="7XdbJdyLDP7" role="1bW2Oz">
                        <property role="TrG5h" value="token" />
                        <node concept="3uibUv" id="7XdbJdyLEet" role="1tU5fm">
                          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
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
                                      <node concept="37vLTw" id="7DvO2MaieSB" role="37wK5m">
                                        <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
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
                  <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
                  <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
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
                            <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
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
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
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
                    <ref role="37wK5l" to="hano:6i42QSsr2_r" resolve="FAIL" />
                    <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
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
                        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
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
          <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="A3Dl8" id="5MHpiylC8T$" role="1Lm7xW">
          <node concept="3uibUv" id="5MHpiylCa5h" role="A3Ik2">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyQdwM" role="16eVyc">
        <property role="TrG5h" value="Token" />
        <node concept="3uibUv" id="7XdbJdyQhEU" role="3ztrMU">
          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDyaRKT" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDyaLzV" role="jymVt">
      <property role="TrG5h" value="applyQueryTemplate" />
      <node concept="3Tm6S6" id="6OXbTDyaLzW" role="1B3o_S" />
      <node concept="37vLTG" id="6OXbTDyaLzX" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="6OXbTDybcP0" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          <node concept="16syzq" id="6OXbTDybqOL" role="11_B2D">
            <ref role="16sUi3" node="6OXbTDyaL_y" resolve="Token" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDycbjU" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="8X2XB" id="6OXbTDycfvT" role="1tU5fm">
          <node concept="3uibUv" id="6OXbTDycfht" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6OXbTDyaL$2" role="3clF47">
        <node concept="SfApY" id="6OXbTDyaL$3" role="3cqZAp">
          <node concept="3clFbS" id="6OXbTDyaL$4" role="SfCbr">
            <node concept="3cpWs8" id="6OXbTDycgwD" role="3cqZAp">
              <node concept="3cpWsn" id="6OXbTDycgwE" role="3cpWs9">
                <property role="TrG5h" value="newToken" />
                <node concept="16syzq" id="6OXbTDycgwC" role="1tU5fm">
                  <ref role="16sUi3" node="6OXbTDyaL_y" resolve="Token" />
                </node>
                <node concept="2OqwBi" id="6OXbTDycgwF" role="33vP2m">
                  <node concept="37vLTw" id="6OXbTDyhhGJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6OXbTDyaLzX" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="6OXbTDycgwH" role="2OqNvi">
                    <ref role="37wK5l" to="i348:6tPOoeT3pU7" resolve="newToken" />
                    <node concept="37vLTw" id="6OXbTDycgwJ" role="37wK5m">
                      <ref role="3cqZAo" node="6OXbTDycbjU" resolve="parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6OXbTDycmTi" role="3cqZAp">
              <node concept="3cpWsn" id="6OXbTDycmTj" role="3cpWs9">
                <property role="TrG5h" value="builders" />
                <node concept="A3Dl8" id="6OXbTDycmSS" role="1tU5fm">
                  <node concept="3uibUv" id="6OXbTDycmSV" role="A3Ik2">
                    <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6OXbTDycmTk" role="33vP2m">
                  <node concept="37vLTw" id="6OXbTDycmTl" role="2Oq$k0">
                    <ref role="3cqZAo" node="6OXbTDycgwE" resolve="newToken" />
                  </node>
                  <node concept="liA8E" id="6OXbTDycmTm" role="2OqNvi">
                    <ref role="37wK5l" to="i348:mJ_D14woVW" resolve="apply" />
                    <node concept="37vLTw" id="6OXbTDycmTn" role="37wK5m">
                      <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6OXbTDyc$Kv" role="3cqZAp">
              <node concept="1Ls8ON" id="6OXbTDyc$Kw" role="3cqZAk">
                <node concept="2YIFZM" id="6OXbTDyc$Kx" role="1Lso8e">
                  <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
                  <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="37vLTw" id="6OXbTDyc$Ky" role="1Lso8e">
                  <ref role="3cqZAo" node="6OXbTDycmTj" resolve="builders" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6OXbTDyaL$F" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="6OXbTDyaL$G" role="TEbGg">
            <node concept="3cpWsn" id="6OXbTDyaL$H" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="6OXbTDyaL$I" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
              </node>
            </node>
            <node concept="3clFbS" id="6OXbTDyaL$J" role="TDEfX">
              <node concept="3clFbH" id="6OXbTDyaL$K" role="3cqZAp" />
              <node concept="3cpWs8" id="6OXbTDyaL$L" role="3cqZAp">
                <node concept="3cpWsn" id="6OXbTDyaL$M" role="3cpWs9">
                  <property role="TrG5h" value="details" />
                  <node concept="17QB3L" id="6OXbTDyaL$N" role="1tU5fm" />
                  <node concept="2YIFZM" id="6OXbTDycVSX" role="33vP2m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="37vLTw" id="6OXbTDyd7qU" role="37wK5m">
                      <ref role="3cqZAo" node="6OXbTDycbjU" resolve="parameter" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6OXbTDyaL_g" role="3cqZAp">
                <node concept="1Ls8ON" id="6OXbTDyaL_h" role="3cqZAk">
                  <node concept="2YIFZM" id="6OXbTDyaL_i" role="1Lso8e">
                    <ref role="37wK5l" to="hano:6i42QSsr2_r" resolve="FAIL" />
                    <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                    <node concept="3cpWs3" id="6OXbTDyaL_j" role="37wK5m">
                      <node concept="37vLTw" id="6OXbTDyaL_k" role="3uHU7w">
                        <ref role="3cqZAo" node="6OXbTDyaL$M" resolve="details" />
                      </node>
                      <node concept="3cpWs3" id="6OXbTDyaL_l" role="3uHU7B">
                        <node concept="3cpWs3" id="6OXbTDyaL_m" role="3uHU7B">
                          <node concept="Xl_RD" id="6OXbTDyaL_n" role="3uHU7B">
                            <property role="Xl_RC" value="Error applying template (" />
                          </node>
                          <node concept="37vLTw" id="6OXbTDyaL_o" role="3uHU7w">
                            <ref role="3cqZAo" node="6OXbTDyaLzX" resolve="tpl" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6OXbTDyaL_p" role="3uHU7w">
                          <property role="Xl_RC" value=")" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6OXbTDyaL_q" role="37wK5m">
                      <ref role="3cqZAo" node="6OXbTDyaL$H" resolve="ex" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="6OXbTDyaL_r" role="1Lso8e">
                    <node concept="kMnCb" id="6OXbTDyaL_s" role="2ShVmc">
                      <node concept="3uibUv" id="6OXbTDyaL_t" role="kMuH3">
                        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="6OXbTDyaL_u" role="3clF45">
        <node concept="3uibUv" id="6OXbTDyaL_v" role="1Lm7xW">
          <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="A3Dl8" id="6OXbTDyaL_w" role="1Lm7xW">
          <node concept="3uibUv" id="6OXbTDyaL_x" role="A3Ik2">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6OXbTDyaL_y" role="16eVyc">
        <property role="TrG5h" value="Token" />
        <node concept="3uibUv" id="6OXbTDyblTM" role="3ztrMU">
          <ref role="3uigEE" to="i348:mJ_D14woL$" resolve="TemplateToken" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8Glzbb" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyMJjJ" role="jymVt">
      <property role="TrG5h" value="collectRequired" />
      <node concept="37vLTG" id="7XdbJdyNeFb" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="7XdbJdyNeFc" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
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
        <property role="TrG5h" value="requiredNodes" />
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
                <ref role="37wK5l" to="i348:7XdbJdyi9Ld" resolve="applyReduce" />
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
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7XdbJdyNlx8" role="1bW5cS">
                    <node concept="3clFbJ" id="7kTeLbQiXFV" role="3cqZAp">
                      <node concept="3clFbS" id="7kTeLbQiXFX" role="3clFbx">
                        <node concept="1X3_iC" id="6tPOoeSEcF$" role="lGtFl">
                          <property role="3V$3am" value="statement" />
                          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                          <node concept="3clFbF" id="7XdbJdyNlxa" role="8Wnug">
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
                        </node>
                        <node concept="3clFbH" id="5lxnBcU9jKE" role="3cqZAp" />
                        <node concept="1X3_iC" id="6tPOoeSEimQ" role="lGtFl">
                          <property role="3V$3am" value="statement" />
                          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                          <node concept="3clFbF" id="61wrp1Ja3bW" role="8Wnug">
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
                        </node>
                        <node concept="3clFbH" id="5lxnBcU9jKP" role="3cqZAp" />
                        <node concept="3clFbF" id="4vBwiiV93PW" role="3cqZAp">
                          <node concept="2OqwBi" id="4vBwiiV9a97" role="3clFbG">
                            <node concept="37vLTw" id="4vBwiiV93PU" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XdbJdyNlx3" resolve="req" />
                            </node>
                            <node concept="X8dFx" id="4vBwiiV9gaM" role="2OqNvi">
                              <node concept="37vLTw" id="4vBwiiV9kvj" role="25WWJ7">
                                <ref role="3cqZAo" node="4vBwiiV8GXc" resolve="requiredNodes" />
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
                                  <ref role="3cqZAo" node="4vBwiiV8GXc" resolve="requiredNodes" />
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
                          <node concept="1PaTwC" id="589APehYxQN" role="3ndbpf">
                            <node concept="3oM_SD" id="589APehYxQO" role="1PaTwD">
                              <property role="3oM_SC" value="FIXME:" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQP" role="1PaTwD">
                              <property role="3oM_SC" value="treat" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQQ" role="1PaTwD">
                              <property role="3oM_SC" value="all" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQR" role="1PaTwD">
                              <property role="3oM_SC" value="type" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQS" role="1PaTwD">
                              <property role="3oM_SC" value="node's" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQT" role="1PaTwD">
                              <property role="3oM_SC" value="descendants" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQU" role="1PaTwD">
                              <property role="3oM_SC" value="as" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQV" role="1PaTwD">
                              <property role="3oM_SC" value="required" />
                            </node>
                            <node concept="3oM_SD" id="589APehYxQW" role="1PaTwD">
                              <property role="3oM_SC" value="nodes" />
                            </node>
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
          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyMFSz" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1I3Xv" role="jymVt">
      <property role="TrG5h" value="applyRuleTemplatesAndCollectRequired" />
      <node concept="3Tm6S6" id="tIwzd1I3Xw" role="1B3o_S" />
      <node concept="37vLTG" id="tIwzd1I3Xm" role="3clF46">
        <property role="TrG5h" value="tpls" />
        <node concept="A3Dl8" id="tIwzd1I3Xn" role="1tU5fm">
          <node concept="3uibUv" id="6tPOoeTdbj8" role="A3Ik2">
            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
            <node concept="3qUE_q" id="6tPOoeTdbj9" role="11_B2D">
              <node concept="3uibUv" id="6tPOoeTdbja" role="3qUE_r">
                <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1I3Xp" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="tIwzd1I3Xq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="xaaVXvi$r8" role="3clF46">
        <property role="TrG5h" value="skipPrincipal" />
        <node concept="10P_77" id="xaaVXvi$Eh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1eEe91OYhWx" role="3clF46">
        <property role="TrG5h" value="segmentPath" />
        <node concept="3uibUv" id="1eEe91OYp0N" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1eEe91OYqTx" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1I3Wv" role="3clF47">
        <node concept="3cpWs8" id="6i42QSsrVMN" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSsrVMO" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6i42QSsrVMM" role="1tU5fm">
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="6i42QSsrVMP" role="33vP2m">
              <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
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
            <property role="TrG5h" value="requiredNodes" />
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
            <property role="TrG5h" value="requiredCollector" />
            <node concept="3uibUv" id="4vBwiiV7yNT" role="1tU5fm">
              <ref role="3uigEE" to="i348:4vBwiiV6130" resolve="TemplateApplicationSession.RequireHook" />
            </node>
            <node concept="2ShNRf" id="4vBwiiV7yNW" role="33vP2m">
              <node concept="YeOm9" id="4vBwiiV7yNX" role="2ShVmc">
                <node concept="1Y3b0j" id="4vBwiiV7yNY" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="i348:4vBwiiV6130" resolve="TemplateApplicationSession.RequireHook" />
                  <node concept="3Tm1VV" id="4vBwiiV7yNZ" role="1B3o_S" />
                  <node concept="3clFb_" id="36tQV5BDNjJ" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="require" />
                    <node concept="37vLTG" id="36tQV5BDNjK" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="36tQV5BDNjL" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="36tQV5BDNjM" role="3clF45" />
                    <node concept="3Tm1VV" id="36tQV5BDNjN" role="1B3o_S" />
                    <node concept="3clFbS" id="36tQV5BDNjQ" role="3clF47">
                      <node concept="3clFbF" id="36tQV5BDP8p" role="3cqZAp">
                        <node concept="2OqwBi" id="36tQV5BDP8q" role="3clFbG">
                          <node concept="37vLTw" id="36tQV5BDP8r" role="2Oq$k0">
                            <ref role="3cqZAo" node="4vBwiiV8bzf" resolve="requiredNodes" />
                          </node>
                          <node concept="TSZUe" id="36tQV5BDP8s" role="2OqNvi">
                            <node concept="37vLTw" id="36tQV5BDPyM" role="25WWJ7">
                              <ref role="3cqZAo" node="36tQV5BDNjK" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="36tQV5BDNjR" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
            <node concept="3SKdUt" id="42eP3ws0HmN" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxQX" role="3ndbpf">
                <node concept="3oM_SD" id="589APehYxQY" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="589APehYxQZ" role="1PaTwD">
                  <property role="3oM_SC" value="drop" />
                </node>
                <node concept="3oM_SD" id="589APehYxR0" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="589APehYxR1" role="1PaTwD">
                  <property role="3oM_SC" value="feature" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="xaaVXvp4el" role="3cqZAp">
              <node concept="3clFbS" id="xaaVXvp4en" role="3clFbx">
                <node concept="3N13vt" id="xaaVXvp7Cl" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="xaaVXvp7fb" role="3clFbw">
                <node concept="37vLTw" id="xaaVXvp7rI" role="3uHU7B">
                  <ref role="3cqZAo" node="xaaVXvi$r8" resolve="skipPrincipal" />
                </node>
                <node concept="2OqwBi" id="xaaVXvp6wJ" role="3uHU7w">
                  <node concept="37vLTw" id="xaaVXvp4ng" role="2Oq$k0">
                    <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="xaaVXvp77z" role="2OqNvi">
                    <ref role="37wK5l" to="i348:xaaVXv6GTE" resolve="isPrincipal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="xaaVXvp7Co" role="3cqZAp" />
            <node concept="3clFbF" id="4vBwiiV8A41" role="3cqZAp">
              <node concept="2OqwBi" id="4vBwiiV8C0C" role="3clFbG">
                <node concept="37vLTw" id="4vBwiiV8A3Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="4vBwiiV8bzf" resolve="requiredNodes" />
                </node>
                <node concept="2Kehj3" id="4vBwiiV8DII" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="4vBwiiV7uJ1" role="3cqZAp">
              <node concept="2OqwBi" id="4vBwiiV7w5X" role="3clFbG">
                <node concept="liA8E" id="4vBwiiV7x2n" role="2OqNvi">
                  <ref role="37wK5l" to="i348:7DvO2M9IiN4" resolve="addRequireHook" />
                  <node concept="37vLTw" id="4vBwiiV7yO6" role="37wK5m">
                    <ref role="3cqZAo" node="4vBwiiV7yNV" resolve="requiredCollector" />
                  </node>
                </node>
                <node concept="37vLTw" id="7DvO2Mai8k2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                </node>
              </node>
            </node>
            <node concept="2GUZhq" id="4vBwiiV7qJC" role="3cqZAp">
              <node concept="3clFbS" id="4vBwiiV7qJE" role="2GV8ay">
                <node concept="3cpWs8" id="4MqhgXUBzFn" role="3cqZAp">
                  <node concept="3cpWsn" id="4MqhgXUBzFo" role="3cpWs9">
                    <property role="TrG5h" value="template" />
                    <node concept="3uibUv" id="4MqhgXUBzF7" role="1tU5fm">
                      <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                      <node concept="3qUE_q" id="7XdbJdyRy2h" role="11_B2D">
                        <node concept="3uibUv" id="7XdbJdyRyYU" role="3qUE_r">
                          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6tPOoeTdh1V" role="33vP2m">
                      <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4MqhgXUB$qu" role="3cqZAp" />
                <node concept="3clFbH" id="xaaVXvp45H" role="3cqZAp" />
                <node concept="3cpWs8" id="6i42QSsrrpL" role="3cqZAp">
                  <node concept="3cpWsn" id="6i42QSsrrpM" role="3cpWs9">
                    <property role="TrG5h" value="result_builder" />
                    <node concept="1LlUBW" id="6i42QSsrrp$" role="1tU5fm">
                      <node concept="3uibUv" id="6i42QSsrrpJ" role="1Lm7xW">
                        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
                      </node>
                      <node concept="A3Dl8" id="6i42QSsrrpH" role="1Lm7xW">
                        <node concept="3uibUv" id="6i42QSsrrpI" role="A3Ik2">
                          <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                        </node>
                      </node>
                    </node>
                    <node concept="1rXfSq" id="6i42QSsrrpN" role="33vP2m">
                      <ref role="37wK5l" node="5ntLU8GlSnU" resolve="applyRuleTemplate" />
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
                            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="4MqhgXUBmIF" role="33vP2m">
                          <node concept="Tc6Ow" id="4MqhgXUBmIG" role="2ShVmc">
                            <node concept="3uibUv" id="4MqhgXUBmIH" role="HW$YZ">
                              <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
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
                        <node concept="3cpWs8" id="1lzLQ0zthoQ" role="3cqZAp">
                          <node concept="3cpWsn" id="1lzLQ0zthoT" role="3cpWs9">
                            <property role="TrG5h" value="tags" />
                            <node concept="2hMVRd" id="1lzLQ0zthoM" role="1tU5fm">
                              <node concept="3uibUv" id="1lzLQ0zthJ4" role="2hN53Y">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="1lzLQ0ztk2x" role="33vP2m">
                              <node concept="2i4dXS" id="1lzLQ0ztlh2" role="2ShVmc">
                                <node concept="3uibUv" id="1lzLQ0ztlyx" role="HW$YZ">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1lzLQ0ztorX" role="3cqZAp">
                          <node concept="3cpWsn" id="1lzLQ0ztos0" role="3cpWs9">
                            <property role="TrG5h" value="tagSuffix" />
                            <node concept="10Oyi0" id="1lzLQ0ztorV" role="1tU5fm" />
                            <node concept="3cmrfG" id="1lzLQ0ztp0b" role="33vP2m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="1lzLQ0zvDes" role="3cqZAp" />
                        <node concept="2Gpval" id="tIwzd1I3Wy" role="3cqZAp">
                          <node concept="3clFbS" id="tIwzd1I3Wz" role="2LFqv$">
                            <node concept="3clFbJ" id="6i42QSsjOPU" role="3cqZAp">
                              <node concept="3clFbS" id="6i42QSsjOPW" role="3clFbx">
                                <node concept="3SKdUt" id="4MqhgXUCa7a" role="3cqZAp">
                                  <node concept="1PaTwC" id="589APehYxR2" role="3ndbpf">
                                    <node concept="3oM_SD" id="589APehYxR3" role="1PaTwD">
                                      <property role="3oM_SC" value="goals" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxR4" role="1PaTwD">
                                      <property role="3oM_SC" value="get" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxR5" role="1PaTwD">
                                      <property role="3oM_SC" value="triggered" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxR6" role="1PaTwD">
                                      <property role="3oM_SC" value="by" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxR7" role="1PaTwD">
                                      <property role="3oM_SC" value="the" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxR8" role="1PaTwD">
                                      <property role="3oM_SC" value="&quot;main&quot;" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxR9" role="1PaTwD">
                                      <property role="3oM_SC" value="constraint" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6i42QSsByAx" role="3cqZAp">
                                  <node concept="2OqwBi" id="6i42QSsByLa" role="3clFbG">
                                    <node concept="2GrUjf" id="6i42QSsByAv" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="6i42QSsBzce" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:7eGEHDlc$bR" resolve="appendHeadKept" />
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
                                    <ref role="37wK5l" to="i348:7nkyKX7mcq7" resolve="hasHead" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="6i42QSsDtbA" role="3cqZAp">
                              <node concept="3clFbS" id="6i42QSsDtbC" role="3clFbx">
                                <node concept="3SKdUt" id="4MqhgXUCar2" role="3cqZAp">
                                  <node concept="1PaTwC" id="589APehYxRa" role="3ndbpf">
                                    <node concept="3oM_SD" id="589APehYxRb" role="1PaTwD">
                                      <property role="3oM_SC" value="facts" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRc" role="1PaTwD">
                                      <property role="3oM_SC" value="have" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRd" role="1PaTwD">
                                      <property role="3oM_SC" value="&quot;assert(true)&quot;" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRe" role="1PaTwD">
                                      <property role="3oM_SC" value="in" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRf" role="1PaTwD">
                                      <property role="3oM_SC" value="the" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRg" role="1PaTwD">
                                      <property role="3oM_SC" value="body" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3SKdUt" id="4MqhgXUCaOO" role="3cqZAp">
                                  <node concept="1PaTwC" id="589APehYxRh" role="3ndbpf">
                                    <node concept="3oM_SD" id="589APehYxRi" role="1PaTwD">
                                      <property role="3oM_SC" value="TODO:" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRj" role="1PaTwD">
                                      <property role="3oM_SC" value="support" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRk" role="1PaTwD">
                                      <property role="3oM_SC" value="facts" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3SKdUt" id="6i42QSsDyfr" role="3cqZAp">
                                  <node concept="1PaTwC" id="589APehYxRl" role="3ndbpf">
                                    <node concept="3oM_SD" id="589APehYxRm" role="1PaTwD">
                                      <property role="3oM_SC" value="FIXME:" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRn" role="1PaTwD">
                                      <property role="3oM_SC" value="support" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRo" role="1PaTwD">
                                      <property role="3oM_SC" value="rules" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRp" role="1PaTwD">
                                      <property role="3oM_SC" value="that" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRq" role="1PaTwD">
                                      <property role="3oM_SC" value="only" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRr" role="1PaTwD">
                                      <property role="3oM_SC" value="add" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRs" role="1PaTwD">
                                      <property role="3oM_SC" value="required" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRt" role="1PaTwD">
                                      <property role="3oM_SC" value="roots" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRu" role="1PaTwD">
                                      <property role="3oM_SC" value="instead" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRv" role="1PaTwD">
                                      <property role="3oM_SC" value="of" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRw" role="1PaTwD">
                                      <property role="3oM_SC" value="this" />
                                    </node>
                                    <node concept="3oM_SD" id="589APehYxRx" role="1PaTwD">
                                      <property role="3oM_SC" value="hacks!" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6i42QSsDvfw" role="3cqZAp">
                                  <node concept="2OqwBi" id="6i42QSsDvq9" role="3clFbG">
                                    <node concept="2GrUjf" id="6i42QSsDvfu" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="6i42QSsDvRB" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:7eGEHDlc$aw" resolve="appendBody" />
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
                                    <ref role="37wK5l" to="i348:7nkyKX7mnWq" resolve="hasBody" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="1lzLQ0zvEbS" role="3cqZAp">
                              <node concept="1PaTwC" id="1lzLQ0zvEbT" role="3ndbpf">
                                <node concept="3oM_SD" id="1lzLQ0zvEI6" role="1PaTwD">
                                  <property role="3oM_SC" value="tag" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvEKV" role="1PaTwD">
                                  <property role="3oM_SC" value="suffix" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvETC" role="1PaTwD">
                                  <property role="3oM_SC" value="is" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvEWv" role="1PaTwD">
                                  <property role="3oM_SC" value="required" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvF27" role="1PaTwD">
                                  <property role="3oM_SC" value="when" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvF50" role="1PaTwD">
                                  <property role="3oM_SC" value="rules" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvF7U" role="1PaTwD">
                                  <property role="3oM_SC" value="are" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvF82" role="1PaTwD">
                                  <property role="3oM_SC" value="generated" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvF8b" role="1PaTwD">
                                  <property role="3oM_SC" value="in" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvF8l" role="1PaTwD">
                                  <property role="3oM_SC" value="a" />
                                </node>
                                <node concept="3oM_SD" id="1lzLQ0zvF8w" role="1PaTwD">
                                  <property role="3oM_SC" value="loop" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1lzLQ0ztp_v" role="3cqZAp">
                              <node concept="3clFbS" id="1lzLQ0ztp_x" role="3clFbx">
                                <node concept="3clFbF" id="1lzLQ0ztwHU" role="3cqZAp">
                                  <node concept="2OqwBi" id="1lzLQ0ztwP9" role="3clFbG">
                                    <node concept="2GrUjf" id="1lzLQ0ztwHS" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="1lzLQ0zvBXd" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:1lzLQ0zuv5E" resolve="setTagSuffix" />
                                      <node concept="3uNrnE" id="1lzLQ0zvD5Y" role="37wK5m">
                                        <node concept="37vLTw" id="1lzLQ0zvD60" role="2$L3a6">
                                          <ref role="3cqZAo" node="1lzLQ0ztos0" resolve="tagSuffix" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1lzLQ0ztuv8" role="3clFbw">
                                <node concept="37vLTw" id="1lzLQ0zttAO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1lzLQ0zthoT" resolve="tags" />
                                </node>
                                <node concept="3JPx81" id="1lzLQ0ztv4_" role="2OqNvi">
                                  <node concept="2OqwBi" id="1lzLQ0ztvnG" role="25WWJ7">
                                    <node concept="2GrUjf" id="1lzLQ0ztveq" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="1lzLQ0zvBun" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:1lzLQ0zv1m2" resolve="tag" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="9aQIb" id="1lzLQ0zvMAC" role="9aQIa">
                                <node concept="3clFbS" id="1lzLQ0zvMAD" role="9aQI4">
                                  <node concept="3clFbF" id="1lzLQ0ztq5K" role="3cqZAp">
                                    <node concept="2OqwBi" id="1lzLQ0ztqUm" role="3clFbG">
                                      <node concept="37vLTw" id="1lzLQ0ztq5I" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1lzLQ0zthoT" resolve="tags" />
                                      </node>
                                      <node concept="TSZUe" id="1lzLQ0ztrRZ" role="2OqNvi">
                                        <node concept="2OqwBi" id="1lzLQ0ztsAw" role="25WWJ7">
                                          <node concept="2GrUjf" id="1lzLQ0ztsgx" role="2Oq$k0">
                                            <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                          </node>
                                          <node concept="liA8E" id="1lzLQ0zvFmp" role="2OqNvi">
                                            <ref role="37wK5l" to="i348:1lzLQ0zv1m2" resolve="tag" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="2oBDv9rjEj2" role="3cqZAp" />
                            <node concept="3clFbF" id="1eEe91OYzk3" role="3cqZAp">
                              <node concept="2OqwBi" id="1eEe91OYzIe" role="3clFbG">
                                <node concept="2GrUjf" id="1eEe91OYzk1" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="1eEe91OY$m_" role="2OqNvi">
                                  <ref role="37wK5l" to="i348:1eEe91OXtFC" resolve="setSegmentPath" />
                                  <node concept="37vLTw" id="1eEe91OY$F6" role="37wK5m">
                                    <ref role="3cqZAo" node="1eEe91OYhWx" resolve="segmentPath" />
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
                        <node concept="3cpWs8" id="6nFpYltF$fY" role="3cqZAp">
                          <node concept="3cpWsn" id="6nFpYltF$fZ" role="3cpWs9">
                            <property role="TrG5h" value="ruleIds" />
                            <node concept="3vKaQO" id="6nFpYltFcb6" role="1tU5fm">
                              <node concept="3uibUv" id="6nFpYltFcb9" role="3O5elw">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6nFpYltF$g0" role="33vP2m">
                              <node concept="2OqwBi" id="6nFpYltF$g1" role="2Oq$k0">
                                <node concept="Xjq3P" id="6nFpYltF$g2" role="2Oq$k0" />
                                <node concept="2OwXpG" id="6nFpYltF$g3" role="2OqNvi">
                                  <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="rulesListTable" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6nFpYltF$g4" role="2OqNvi">
                                <ref role="37wK5l" node="7DvO2M9Uagq" resolve="update" />
                                <node concept="37vLTw" id="6nFpYltF$g5" role="37wK5m">
                                  <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                </node>
                                <node concept="37vLTw" id="6nFpYltF$g6" role="37wK5m">
                                  <ref role="3cqZAo" node="4MqhgXUBix2" resolve="builders" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6nFpYluOuyZ" role="3cqZAp">
                          <node concept="3clFbS" id="6nFpYluOuz0" role="3clFbx">
                            <node concept="3clFbF" id="6nFpYluOuz1" role="3cqZAp">
                              <node concept="2OqwBi" id="6nFpYluOuz2" role="3clFbG">
                                <node concept="37vLTw" id="6nFpYluOuz3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                                </node>
                                <node concept="liA8E" id="6nFpYluOuz4" role="2OqNvi">
                                  <ref role="37wK5l" node="6nFpYlucRT5" resolve="recordUpdate" />
                                  <node concept="37vLTw" id="6nFpYluOuz5" role="37wK5m">
                                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                  </node>
                                  <node concept="1Ls8ON" id="6nFpYluOyjg" role="37wK5m">
                                    <node concept="1eOMI4" id="6nFpYluP4qL" role="1Lso8e">
                                      <node concept="10QFUN" id="6nFpYluP4qK" role="1eOMHV">
                                        <node concept="37vLTw" id="6nFpYluP4qJ" role="10QFUP">
                                          <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                        </node>
                                        <node concept="3uibUv" id="6nFpYluP5pD" role="10QFUM">
                                          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="6nFpYluOAnI" role="1Lso8e">
                                      <ref role="3cqZAo" node="6nFpYltF$fZ" resolve="ruleIds" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="6nFpYluOuz9" role="3clFbw">
                            <node concept="10Nm6u" id="6nFpYluOuza" role="3uHU7w" />
                            <node concept="37vLTw" id="6nFpYluOuzb" role="3uHU7B">
                              <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
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
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
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
                                  <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                                  <node concept="2YIFZM" id="6i42QSss4Co" role="37wK5m">
                                    <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                                    <ref role="37wK5l" to="hano:6i42QSsr2_r" resolve="FAIL" />
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
                                                <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
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
                                              <ref role="37wK5l" to="i348:1ffsG7bUgP4" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="6i42QSss4S5" role="3uHU7w">
                                          <property role="Xl_RC" value=")" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="5zqVskM9tqT" role="37wK5m">
                                      <ref role="3cqZAo" node="tIwzd1I3X5" resolve="e" />
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
                      <ref role="37wK5l" to="hano:7Oc59RS_hsj" resolve="isSuccessful" />
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
                              <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
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
                          <ref role="3cqZAo" node="4vBwiiV8bzf" resolve="requiredNodes" />
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
                    <node concept="liA8E" id="4vBwiiV7_an" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7DvO2M9IiNh" resolve="removeRequireHook" />
                      <node concept="37vLTw" id="4vBwiiV7_ao" role="37wK5m">
                        <ref role="3cqZAo" node="4vBwiiV7yNV" resolve="requiredCollector" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7DvO2Mai8Ie" role="2Oq$k0">
                      <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4vBwiiV8iBJ" role="3cqZAp" />
          </node>
          <node concept="3cpWsn" id="tIwzd1I3Xj" role="1Duv9x">
            <property role="TrG5h" value="tpl" />
            <node concept="3uibUv" id="6tPOoeTdcfx" role="1tU5fm">
              <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
              <node concept="3qUE_q" id="6tPOoeTdcfy" role="11_B2D">
                <node concept="3uibUv" id="6tPOoeTdcfz" role="3qUE_r">
                  <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="tIwzd1I3Xs" role="1DdaDG">
            <ref role="3cqZAo" node="tIwzd1I3Xm" resolve="tpls" />
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
          <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3vKaQO" id="tIwzd1JBnD" role="1Lm7xW">
          <node concept="3Tqbb2" id="tIwzd1JBnF" role="3O5elw" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDzFf$i" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDy1oEg" role="jymVt">
      <property role="TrG5h" value="applyQueryTemplates" />
      <node concept="3uibUv" id="6OXbTDyaHuW" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="6OXbTDy1oEj" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy1oEk" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDyef8q" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDyef8r" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6OXbTDyef8s" role="1tU5fm">
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="6OXbTDyef8t" role="33vP2m">
              <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTDyeezy" role="3cqZAp" />
        <node concept="2GUZhq" id="6OXbTDye_gp" role="3cqZAp">
          <node concept="3clFbS" id="6OXbTDy1Beq" role="2GV8ay">
            <node concept="3cpWs8" id="6OXbTDydyNR" role="3cqZAp">
              <node concept="3cpWsn" id="6OXbTDydyNS" role="3cpWs9">
                <property role="TrG5h" value="result_builders" />
                <node concept="1LlUBW" id="6OXbTDydyMo" role="1tU5fm">
                  <node concept="3uibUv" id="6OXbTDydyMz" role="1Lm7xW">
                    <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
                  </node>
                  <node concept="A3Dl8" id="6OXbTDydyMx" role="1Lm7xW">
                    <node concept="3uibUv" id="6OXbTDydyMy" role="A3Ik2">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="6OXbTDydyNT" role="33vP2m">
                  <ref role="37wK5l" node="6OXbTDyaLzV" resolve="applyQueryTemplate" />
                  <node concept="37vLTw" id="6tPOoeT4SaD" role="37wK5m">
                    <ref role="3cqZAo" node="6OXbTDydhIZ" resolve="queryTemplate" />
                  </node>
                  <node concept="37vLTw" id="6OXbTDydyO0" role="37wK5m">
                    <ref role="3cqZAo" node="6OXbTDyaDvN" resolve="parameter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6OXbTDyd$2C" role="3cqZAp" />
            <node concept="3clFbJ" id="6OXbTDydW47" role="3cqZAp">
              <node concept="3clFbS" id="6OXbTDydW49" role="3clFbx">
                <node concept="3clFbH" id="6OXbTDydW48" role="3cqZAp" />
                <node concept="3cpWs8" id="6OXbTDzFnYI" role="3cqZAp">
                  <node concept="3cpWsn" id="6OXbTDzFnYJ" role="3cpWs9">
                    <property role="TrG5h" value="builders" />
                    <node concept="3vKaQO" id="6OXbTDzFnYK" role="1tU5fm">
                      <node concept="3uibUv" id="6OXbTDzFnYL" role="3O5elw">
                        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="6OXbTDzFnYM" role="33vP2m">
                      <node concept="Tc6Ow" id="6OXbTDzFnYN" role="2ShVmc">
                        <node concept="3uibUv" id="6OXbTDzFnYO" role="HW$YZ">
                          <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                        </node>
                        <node concept="1LFfDK" id="6OXbTDzFnYP" role="I$8f6">
                          <node concept="3cmrfG" id="6OXbTDzFnYQ" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="6OXbTDzFoOp" role="1LFl5Q">
                            <ref role="3cqZAo" node="6OXbTDydyNS" resolve="result_builders" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="SfApY" id="6OXbTDye1zC" role="3cqZAp">
                  <node concept="3clFbS" id="6OXbTDye1zE" role="SfCbr">
                    <node concept="2Gpval" id="6OXbTDzFl4o" role="3cqZAp">
                      <node concept="3clFbS" id="6OXbTDzFl4p" role="2LFqv$">
                        <node concept="3clFbJ" id="6OXbTDzFl4q" role="3cqZAp">
                          <node concept="3clFbS" id="6OXbTDzFl4r" role="3clFbx">
                            <node concept="3SKdUt" id="6OXbTDzFl4s" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYxRy" role="3ndbpf">
                                <node concept="3oM_SD" id="589APehYxRz" role="1PaTwD">
                                  <property role="3oM_SC" value="goals" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxR$" role="1PaTwD">
                                  <property role="3oM_SC" value="get" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxR_" role="1PaTwD">
                                  <property role="3oM_SC" value="triggered" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRA" role="1PaTwD">
                                  <property role="3oM_SC" value="by" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRB" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRC" role="1PaTwD">
                                  <property role="3oM_SC" value="&quot;main&quot;" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRD" role="1PaTwD">
                                  <property role="3oM_SC" value="constraint" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6OXbTDzFl4u" role="3cqZAp">
                              <node concept="2OqwBi" id="6OXbTDzFl4v" role="3clFbG">
                                <node concept="2GrUjf" id="6OXbTDzFl4w" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="6OXbTDzFl4V" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="6OXbTDzFl4x" role="2OqNvi">
                                  <ref role="37wK5l" to="i348:7eGEHDlc$bR" resolve="appendHeadKept" />
                                  <node concept="37vLTw" id="6OXbTDzFl4y" role="37wK5m">
                                    <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="6OXbTDzFl4z" role="3clFbw">
                            <node concept="2OqwBi" id="6OXbTDzFl4$" role="3fr31v">
                              <node concept="2GrUjf" id="6OXbTDzFl4_" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6OXbTDzFl4V" resolve="builder" />
                              </node>
                              <node concept="liA8E" id="6OXbTDzFl4A" role="2OqNvi">
                                <ref role="37wK5l" to="i348:7nkyKX7mcq7" resolve="hasHead" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6OXbTDzFl4B" role="3cqZAp">
                          <node concept="3clFbS" id="6OXbTDzFl4C" role="3clFbx">
                            <node concept="3SKdUt" id="6OXbTDzFl4D" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYxRE" role="3ndbpf">
                                <node concept="3oM_SD" id="589APehYxRF" role="1PaTwD">
                                  <property role="3oM_SC" value="facts" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRG" role="1PaTwD">
                                  <property role="3oM_SC" value="have" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRH" role="1PaTwD">
                                  <property role="3oM_SC" value="&quot;assert(true)&quot;" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRI" role="1PaTwD">
                                  <property role="3oM_SC" value="in" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRJ" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRK" role="1PaTwD">
                                  <property role="3oM_SC" value="body" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="6OXbTDzFl4F" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYxRL" role="3ndbpf">
                                <node concept="3oM_SD" id="589APehYxRM" role="1PaTwD">
                                  <property role="3oM_SC" value="TODO:" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRN" role="1PaTwD">
                                  <property role="3oM_SC" value="support" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRO" role="1PaTwD">
                                  <property role="3oM_SC" value="facts" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="6OXbTDzFl4H" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYxRP" role="3ndbpf">
                                <node concept="3oM_SD" id="589APehYxRQ" role="1PaTwD">
                                  <property role="3oM_SC" value="FIXME:" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRR" role="1PaTwD">
                                  <property role="3oM_SC" value="support" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRS" role="1PaTwD">
                                  <property role="3oM_SC" value="rules" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRT" role="1PaTwD">
                                  <property role="3oM_SC" value="that" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRU" role="1PaTwD">
                                  <property role="3oM_SC" value="only" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRV" role="1PaTwD">
                                  <property role="3oM_SC" value="add" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRW" role="1PaTwD">
                                  <property role="3oM_SC" value="required" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRX" role="1PaTwD">
                                  <property role="3oM_SC" value="roots" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRY" role="1PaTwD">
                                  <property role="3oM_SC" value="instead" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxRZ" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxS0" role="1PaTwD">
                                  <property role="3oM_SC" value="this" />
                                </node>
                                <node concept="3oM_SD" id="589APehYxS1" role="1PaTwD">
                                  <property role="3oM_SC" value="hack!s" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6OXbTDzFl4J" role="3cqZAp">
                              <node concept="2OqwBi" id="6OXbTDzFl4K" role="3clFbG">
                                <node concept="2GrUjf" id="6OXbTDzFl4L" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="6OXbTDzFl4V" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="6OXbTDzFl4M" role="2OqNvi">
                                  <ref role="37wK5l" to="i348:7eGEHDlc$aw" resolve="appendBody" />
                                  <node concept="2ShNRf" id="6OXbTDzFl4N" role="37wK5m">
                                    <node concept="1pGfFk" id="6OXbTDzFl4O" role="2ShVmc">
                                      <ref role="37wK5l" to="cxk7:4xBopTzrPWl" resolve="AssertPredicate" />
                                      <node concept="10M0yZ" id="6OXbTDzFl4P" role="37wK5m">
                                        <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                                        <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="6OXbTDzFl4Q" role="3clFbw">
                            <node concept="2OqwBi" id="6OXbTDzFl4R" role="3fr31v">
                              <node concept="2GrUjf" id="6OXbTDzFl4S" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6OXbTDzFl4V" resolve="builder" />
                              </node>
                              <node concept="liA8E" id="6OXbTDzFl4T" role="2OqNvi">
                                <ref role="37wK5l" to="i348:7nkyKX7mnWq" resolve="hasBody" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6OXbTDzFwae" role="2GsD0m">
                        <ref role="3cqZAo" node="6OXbTDzFnYJ" resolve="builders" />
                      </node>
                      <node concept="2GrKxI" id="6OXbTDzFl4V" role="2Gsz3X">
                        <property role="TrG5h" value="builder" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="6tPOoeT524D" role="3cqZAp">
                      <node concept="2OqwBi" id="6tPOoeT53LW" role="3clFbG">
                        <node concept="2OqwBi" id="6tPOoeT52Fu" role="2Oq$k0">
                          <node concept="Xjq3P" id="6tPOoeT524B" role="2Oq$k0" />
                          <node concept="2OwXpG" id="6tPOoeT538g" role="2OqNvi">
                            <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="rulesListTable" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6tPOoeT544o" role="2OqNvi">
                          <ref role="37wK5l" node="6OXbTDy0Er4" resolve="update" />
                          <node concept="37vLTw" id="6tPOoeT5urx" role="37wK5m">
                            <ref role="3cqZAo" node="6OXbTDydhIZ" resolve="queryTemplate" />
                          </node>
                          <node concept="37vLTw" id="6tPOoeT5v0Z" role="37wK5m">
                            <ref role="3cqZAo" node="6OXbTDzFnYJ" resolve="builders" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6OXbTDyecwE" role="3cqZAp" />
                  </node>
                  <node concept="TDmWw" id="6OXbTDydX1w" role="TEbGg">
                    <node concept="3cpWsn" id="6OXbTDydX1x" role="TDEfY">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="6OXbTDydXmU" role="1tU5fm">
                        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6OXbTDydX1z" role="TDEfX">
                      <node concept="3cpWs8" id="6OXbTDydY23" role="3cqZAp">
                        <node concept="3cpWsn" id="6OXbTDydY24" role="3cpWs9">
                          <property role="TrG5h" value="details" />
                          <node concept="17QB3L" id="6OXbTDydY25" role="1tU5fm" />
                          <node concept="2YIFZM" id="6OXbTDyeyio" role="33vP2m">
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="37vLTw" id="6OXbTDyeyYP" role="37wK5m">
                              <ref role="3cqZAo" node="6OXbTDyaDvN" resolve="parameter" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6OXbTDydY2n" role="3cqZAp">
                        <node concept="37vLTI" id="6OXbTDydY2o" role="3clFbG">
                          <node concept="2OqwBi" id="6OXbTDydY2p" role="37vLTx">
                            <node concept="37vLTw" id="6OXbTDyegrm" role="2Oq$k0">
                              <ref role="3cqZAo" node="6OXbTDyef8r" resolve="result" />
                            </node>
                            <node concept="liA8E" id="6OXbTDydY2r" role="2OqNvi">
                              <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                              <node concept="2YIFZM" id="6OXbTDydY2s" role="37wK5m">
                                <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                                <ref role="37wK5l" to="hano:6i42QSsr2_r" resolve="FAIL" />
                                <node concept="3cpWs3" id="6OXbTDydY2t" role="37wK5m">
                                  <node concept="37vLTw" id="6OXbTDydY2u" role="3uHU7w">
                                    <ref role="3cqZAo" node="6OXbTDydY24" resolve="details" />
                                  </node>
                                  <node concept="3cpWs3" id="6OXbTDydY2v" role="3uHU7B">
                                    <node concept="3cpWs3" id="6OXbTDydY2w" role="3uHU7B">
                                      <node concept="3cpWs3" id="6OXbTDydY2x" role="3uHU7B">
                                        <node concept="2OqwBi" id="6OXbTDydY2y" role="3uHU7B">
                                          <node concept="37vLTw" id="6OXbTDyeu9V" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6OXbTDydX1x" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="6OXbTDydY2$" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="6OXbTDydY2_" role="3uHU7w">
                                          <property role="Xl_RC" value="(" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="6OXbTDydY2A" role="3uHU7w">
                                        <node concept="liA8E" id="6OXbTDydY2C" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                        </node>
                                        <node concept="37vLTw" id="6tPOoeTbwWq" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6OXbTDydhIZ" resolve="queryTemplate" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="6OXbTDydY2D" role="3uHU7w">
                                      <property role="Xl_RC" value=")" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="5zqVskM9tZ6" role="37wK5m">
                                  <ref role="3cqZAo" node="6OXbTDydX1x" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="6OXbTDyefYD" role="37vLTJ">
                            <ref role="3cqZAo" node="6OXbTDyef8r" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2BZXJed1UUQ" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6OXbTDye0r$" role="3clFbw">
                <node concept="1LFfDK" id="6OXbTDydZtr" role="2Oq$k0">
                  <node concept="37vLTw" id="6OXbTDydZ0n" role="1LFl5Q">
                    <ref role="3cqZAo" node="6OXbTDydyNS" resolve="result_builders" />
                  </node>
                  <node concept="3cmrfG" id="6OXbTDye03w" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="liA8E" id="6OXbTDye0IL" role="2OqNvi">
                  <ref role="37wK5l" to="hano:7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
              <node concept="9aQIb" id="2BZXJed1UiI" role="9aQIa">
                <node concept="3clFbS" id="2BZXJed1UiJ" role="9aQI4">
                  <node concept="3clFbF" id="2BZXJed1VFt" role="3cqZAp">
                    <node concept="37vLTI" id="2BZXJed1VPh" role="3clFbG">
                      <node concept="2OqwBi" id="2BZXJed1W6q" role="37vLTx">
                        <node concept="37vLTw" id="2BZXJed1W0J" role="2Oq$k0">
                          <ref role="3cqZAo" node="6OXbTDyef8r" resolve="result" />
                        </node>
                        <node concept="liA8E" id="2BZXJed1We4" role="2OqNvi">
                          <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                          <node concept="1LFfDK" id="2BZXJed1X2p" role="37wK5m">
                            <node concept="3cmrfG" id="2BZXJed1Xfp" role="1LF_Uc">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="2BZXJed1W$4" role="1LFl5Q">
                              <ref role="3cqZAo" node="6OXbTDydyNS" resolve="result_builders" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2BZXJed1VFs" role="37vLTJ">
                        <ref role="3cqZAo" node="6OXbTDyef8r" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6OXbTDydmGN" role="3cqZAp" />
          </node>
          <node concept="3clFbS" id="6OXbTDye_gs" role="2GVbov" />
        </node>
        <node concept="3clFbH" id="6OXbTDye$9R" role="3cqZAp" />
        <node concept="3clFbF" id="6OXbTDye$GS" role="3cqZAp">
          <node concept="37vLTw" id="6OXbTDye$GQ" role="3clFbG">
            <ref role="3cqZAo" node="6OXbTDyef8r" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDydhIZ" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="6tPOoeT4z8$" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDyaDvN" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="8X2XB" id="6OXbTDyaGSr" role="1tU5fm">
          <node concept="3uibUv" id="6OXbTDyaDvM" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7nb0M" role="jymVt" />
    <node concept="312cEu" id="5ntLU8Glzc7" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TemplateApplicator" />
      <node concept="2tJIrI" id="4vBwiiVcARn" role="jymVt" />
      <node concept="3clFbW" id="xaaVXvi$I3" role="jymVt">
        <node concept="37vLTG" id="xaaVXvi$JH" role="3clF46">
          <property role="TrG5h" value="recursive" />
          <node concept="10P_77" id="xaaVXvi$JX" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="xaaVXvi$I5" role="3clF45" />
        <node concept="3Tm6S6" id="xaaVXvi$I6" role="1B3o_S" />
        <node concept="3clFbS" id="xaaVXvi$I7" role="3clF47">
          <node concept="3clFbF" id="42eP3wrZV0R" role="3cqZAp">
            <node concept="37vLTI" id="42eP3wrZWla" role="3clFbG">
              <node concept="37vLTw" id="42eP3wrZWFo" role="37vLTx">
                <ref role="3cqZAo" node="xaaVXvi$JH" resolve="recursive" />
              </node>
              <node concept="2OqwBi" id="42eP3wrZVdb" role="37vLTJ">
                <node concept="Xjq3P" id="42eP3wrZV0P" role="2Oq$k0" />
                <node concept="2OwXpG" id="42eP3wrZVFR" role="2OqNvi">
                  <ref role="2Oxat5" node="42eP3wrZOvp" resolve="recursive" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6EY0p2wqgRW" role="jymVt" />
      <node concept="3clFb_" id="5ntLU8GlzgF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="5ntLU8GlzgG" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="5ntLU8GlzgH" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1eEe91P0sqE" role="3clF46">
          <property role="TrG5h" value="segmentPath" />
          <node concept="3uibUv" id="1eEe91P0wHh" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="1eEe91P0yIX" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5ntLU8GlzgJ" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlzgL" role="3clF47">
          <node concept="3cpWs8" id="5ntLU8GlzSI" role="3cqZAp">
            <node concept="3cpWsn" id="5ntLU8GlzSJ" role="3cpWs9">
              <property role="TrG5h" value="tpls" />
              <node concept="A3Dl8" id="5ntLU8GlzSt" role="1tU5fm">
                <node concept="3uibUv" id="1ffsG7c5hrm" role="A3Ik2">
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="BaseRuleTemplate" />
                  <node concept="3qUE_q" id="7XdbJdyRI0u" role="11_B2D">
                    <node concept="3uibUv" id="7XdbJdyRId5" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplateToken" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5ntLU8GlzSK" role="33vP2m">
                <node concept="37vLTw" id="cmlg9OJljC" role="2Oq$k0">
                  <ref role="3cqZAo" node="cmlg9OIRky" resolve="ruleTemplates" />
                </node>
                <node concept="liA8E" id="5ntLU8GlzSM" role="2OqNvi">
                  <ref role="37wK5l" to="hano:6fdr4UgfuGk" resolve="allRuleTemplates" />
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
                  <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="3vKaQO" id="6i42QSssRXU" role="1Lm7xW">
                  <node concept="3Tqbb2" id="6i42QSssRXV" role="3O5elw" />
                </node>
              </node>
              <node concept="1rXfSq" id="6i42QSssRXY" role="33vP2m">
                <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyRuleTemplatesAndCollectRequired" />
                <node concept="37vLTw" id="6i42QSssRXZ" role="37wK5m">
                  <ref role="3cqZAo" node="5ntLU8GlzSJ" resolve="tpls" />
                </node>
                <node concept="37vLTw" id="6i42QSssRY0" role="37wK5m">
                  <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                </node>
                <node concept="3fqX7Q" id="42eP3ws1Zx5" role="37wK5m">
                  <node concept="37vLTw" id="42eP3ws1Zx7" role="3fr31v">
                    <ref role="3cqZAo" node="42eP3wrZOvp" resolve="recursive" />
                  </node>
                </node>
                <node concept="37vLTw" id="1eEe91P0_t8" role="37wK5m">
                  <ref role="3cqZAo" node="1eEe91P0sqE" resolve="segmentPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6nFpYlu8fDj" role="3cqZAp">
            <node concept="3clFbS" id="6nFpYlu8fDl" role="3clFbx">
              <node concept="3clFbF" id="6nFpYlu0dq2" role="3cqZAp">
                <node concept="2OqwBi" id="6nFpYlu0xLz" role="3clFbG">
                  <node concept="37vLTw" id="6nFpYlukFHv" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                  </node>
                  <node concept="liA8E" id="6nFpYlu0$Ow" role="2OqNvi">
                    <ref role="37wK5l" node="6nFpYlu02nI" resolve="recordRequirements" />
                    <node concept="37vLTw" id="6nFpYlu0_0q" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                    </node>
                    <node concept="1LFfDK" id="6nFpYlu0_Xx" role="37wK5m">
                      <node concept="3cmrfG" id="6nFpYlu0A1I" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="6nFpYlu0_rR" role="1LFl5Q">
                        <ref role="3cqZAo" node="6i42QSssRXX" resolve="res2reqd" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6nFpYlu8gEg" role="3clFbw">
              <node concept="10Nm6u" id="6nFpYlu8h5G" role="3uHU7w" />
              <node concept="37vLTw" id="6nFpYlukDXV" role="3uHU7B">
                <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXU__BJ" role="3cqZAp">
            <node concept="2ShNRf" id="4MqhgXU__BF" role="3clFbG">
              <node concept="1pGfFk" id="4MqhgXU_A60" role="2ShVmc">
                <ref role="37wK5l" node="4MqhgXU_xEx" resolve="ProgramFactory.ResultTriple" />
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
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
        </node>
        <node concept="2AHcQZ" id="1eEe91P2Vos" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5ntLU8Glzld" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glzg8" role="EKbjA">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
        <node concept="3uibUv" id="4MqhgXU_ix8" role="11_B2D">
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
        </node>
        <node concept="3uibUv" id="1eEe91P0kf8" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1eEe91P0nHd" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSFIrK" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IJm5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="bind" />
        <node concept="37vLTG" id="tIwzd1IJm6" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="3uibUv" id="4MqhgXU_lQw" role="1tU5fm">
            <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
          </node>
        </node>
        <node concept="37vLTG" id="tIwzd1IJm8" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="3uibUv" id="4MqhgXU_mDE" role="1tU5fm">
            <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
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
                  <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
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
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
        </node>
        <node concept="2AHcQZ" id="1eEe91P30ze" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
                <ref role="37wK5l" node="4MqhgXU_6Bn" resolve="ProgramFactory.ResultTriple" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4MqhgXU_59g" role="3clF45">
          <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
        </node>
        <node concept="2AHcQZ" id="1eEe91P35ul" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1CcQBrPgAwx" role="jymVt" />
      <node concept="3clFb_" id="1eEe91P3gTo" role="jymVt">
        <property role="TrG5h" value="initialParam" />
        <node concept="3uibUv" id="1eEe91P3gTs" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1eEe91P3gTt" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1eEe91P3gTq" role="1B3o_S" />
        <node concept="3clFbS" id="1eEe91P3gTu" role="3clF47">
          <node concept="3clFbF" id="1eEe91P3LUF" role="3cqZAp">
            <node concept="2YIFZM" id="1eEe91P3LWQ" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1eEe91P3gTv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1eEe91P3sDJ" role="jymVt" />
      <node concept="3clFb_" id="1eEe91P3xTh" role="jymVt">
        <property role="TrG5h" value="nextParam" />
        <node concept="37vLTG" id="1eEe91P3xTi" role="3clF46">
          <property role="TrG5h" value="parent" />
          <node concept="3Tqbb2" id="1eEe91P3xTj" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1eEe91P3xTk" role="3clF46">
          <property role="TrG5h" value="child" />
          <node concept="3Tqbb2" id="1eEe91P3xTl" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1eEe91P3xTm" role="3clF46">
          <property role="TrG5h" value="prevParam" />
          <node concept="3uibUv" id="1eEe91P3xTt" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="1eEe91P3xTu" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="1eEe91P3xTr" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1eEe91P3xTs" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1eEe91P3xTp" role="1B3o_S" />
        <node concept="3clFbS" id="1eEe91P3xTv" role="3clF47">
          <node concept="3SKdUt" id="6nFpYltXD2$" role="3cqZAp">
            <node concept="1PaTwC" id="6nFpYltXD2_" role="3ndbpf">
              <node concept="3oM_SD" id="6nFpYltXD2B" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="6nFpYltXIFT" role="1PaTwD">
                <property role="3oM_SC" value="dead" />
              </node>
              <node concept="3oM_SD" id="6nFpYltXIGc" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1eEe91P7BEJ" role="3cqZAp">
            <node concept="3clFbS" id="1eEe91P7BEL" role="3clFbx">
              <node concept="3clFbJ" id="1eEe91P7MuR" role="3cqZAp">
                <node concept="3clFbS" id="1eEe91P7MuT" role="3clFbx">
                  <node concept="3cpWs8" id="2oBDv9rispy" role="3cqZAp">
                    <node concept="3cpWsn" id="2oBDv9rispz" role="3cpWs9">
                      <property role="TrG5h" value="segment" />
                      <node concept="3uibUv" id="2oBDv9riz4x" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="2oBDv9risp$" role="33vP2m">
                        <node concept="2JrnkZ" id="2oBDv9risp_" role="2Oq$k0">
                          <node concept="37vLTw" id="2oBDv9rispA" role="2JrQYb">
                            <ref role="3cqZAo" node="1eEe91P3xTk" resolve="child" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2oBDv9rispB" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1eEe91P84d6" role="3cqZAp">
                    <node concept="2YIFZM" id="1eEe91P8kuH" role="3cqZAk">
                      <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <node concept="37vLTw" id="2oBDv9rispC" role="37wK5m">
                        <ref role="3cqZAo" node="2oBDv9rispz" resolve="segment" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1eEe91P8FyS" role="3cqZAp" />
                </node>
                <node concept="1Wc70l" id="1eEe91P7NFw" role="3clFbw">
                  <node concept="2OqwBi" id="1eEe91P7OeZ" role="3uHU7w">
                    <node concept="37vLTw" id="1eEe91P7NK9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1eEe91P3xTk" resolve="child" />
                    </node>
                    <node concept="1mIQ4w" id="1eEe91P7O_z" role="2OqNvi">
                      <node concept="chp4Y" id="1eEe91P7OA_" role="cj9EA">
                        <ref role="cht4Q" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="2oBDv9rn9IH" role="3uHU7B">
                    <node concept="2OqwBi" id="1eEe91P7N0J" role="3uHU7w">
                      <node concept="37vLTw" id="1eEe91P7MzG" role="2Oq$k0">
                        <ref role="3cqZAo" node="1eEe91P3xTi" resolve="parent" />
                      </node>
                      <node concept="1mIQ4w" id="1eEe91P7NgX" role="2OqNvi">
                        <node concept="chp4Y" id="1eEe91P7NoZ" role="cj9EA">
                          <ref role="cht4Q" to="tpck:19gBtYEvilR" resolve="ImplementationContainer" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2oBDv9rn9Sn" role="3uHU7B">
                      <node concept="37vLTw" id="2oBDv9rn9So" role="2Oq$k0">
                        <ref role="3cqZAo" node="1eEe91P3xTm" resolve="prevParam" />
                      </node>
                      <node concept="liA8E" id="2oBDv9rn9Sp" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1eEe91P8KUd" role="9aQIa">
                  <node concept="3clFbS" id="1eEe91P8KUe" role="9aQI4">
                    <node concept="3cpWs6" id="1eEe91P8Scv" role="3cqZAp">
                      <node concept="37vLTw" id="1eEe91P92pE" role="3cqZAk">
                        <ref role="3cqZAo" node="1eEe91P3xTm" resolve="prevParam" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1eEe91P7Mqe" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2uT5t21Rcrt" role="3clFbw">
              <node concept="3clFbT" id="2uT5t21RcvT" role="3uHU7B" />
              <node concept="37vLTw" id="1eEe91P7GT$" role="3uHU7w">
                <ref role="3cqZAo" node="42eP3wrZOvp" resolve="recursive" />
              </node>
            </node>
            <node concept="9aQIb" id="1eEe91P7Hfl" role="9aQIa">
              <node concept="3clFbS" id="1eEe91P7Hfm" role="9aQI4">
                <node concept="3cpWs6" id="1eEe91P7wK_" role="3cqZAp">
                  <node concept="2YIFZM" id="1eEe91P7wKA" role="3cqZAk">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1eEe91P3xTw" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1eEe91P3Bce" role="jymVt" />
      <node concept="312cEg" id="42eP3wrZOvp" role="jymVt">
        <property role="TrG5h" value="recursive" />
        <node concept="3Tm6S6" id="42eP3wrZOvq" role="1B3o_S" />
        <node concept="10P_77" id="42eP3wrZUxy" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="6nFpYlukyoG" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="5ntLU8GlzbG" role="jymVt" />
    <node concept="312cEu" id="4MqhgXU$YdP" role="jymVt">
      <property role="TrG5h" value="ResultTriple" />
      <node concept="2tJIrI" id="1CcQBrPgAXE" role="jymVt" />
      <node concept="3clFbW" id="4MqhgXU_6Bn" role="jymVt">
        <node concept="3cqZAl" id="4MqhgXU_6Bp" role="3clF45" />
        <node concept="3Tm6S6" id="4MqhgXU_6Bq" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXU_6Br" role="3clF47">
          <node concept="3clFbF" id="4MqhgXU_6Q4" role="3cqZAp">
            <node concept="37vLTI" id="4MqhgXU_7co" role="3clFbG">
              <node concept="2YIFZM" id="4MqhgXU_7NE" role="37vLTx">
                <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
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
            <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
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
          <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
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
    <node concept="2tJIrI" id="cmlg9Nf3tR" role="jymVt" />
    <node concept="312cEu" id="6nFpYltFQ8I" role="jymVt">
      <property role="TrG5h" value="AssistedWalk" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="6nFpYltFQam" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltNprc" role="jymVt">
        <property role="TrG5h" value="forEachOriginRecursively" />
        <node concept="3Tm1VV" id="6nFpYltNvRk" role="1B3o_S" />
        <node concept="16syzq" id="6nFpYltNC$b" role="3clF45">
          <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
        </node>
        <node concept="37vLTG" id="6nFpYltNprf" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="6nFpYltNprg" role="1tU5fm">
            <node concept="3Tqbb2" id="6nFpYltNprh" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltNFdA" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltNHMX" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltNIg6" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltNJZa" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltN$ut" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltNpri" role="3clF46">
          <property role="TrG5h" value="interfacePartOnly" />
          <node concept="10P_77" id="6nFpYltNprj" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="6nFpYltNprk" role="3clF47">
          <node concept="3clFbH" id="6nFpYlvadc2" role="3cqZAp" />
          <node concept="3SKdUt" id="6nFpYlvl2Fw" role="3cqZAp">
            <node concept="1PaTwC" id="6nFpYlvl2Fx" role="3ndbpf">
              <node concept="3oM_SD" id="6nFpYlvl2Fz" role="1PaTwD">
                <property role="3oM_SC" value="nodes" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld3y" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld3I" role="1PaTwD">
                <property role="3oM_SC" value="have" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld3M" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld3R" role="1PaTwD">
                <property role="3oM_SC" value="been" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld3X" role="1PaTwD">
                <property role="3oM_SC" value="processed" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld4v" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld5c" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld5l" role="1PaTwD">
                <property role="3oM_SC" value="index" />
              </node>
              <node concept="3oM_SD" id="6nFpYlvld5v" role="1PaTwD">
                <property role="3oM_SC" value="yet" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6nFpYlvl6Jg" role="3cqZAp">
            <node concept="3cpWsn" id="6nFpYlvl6Jh" role="3cpWs9">
              <property role="TrG5h" value="newOrigins" />
              <node concept="_YKpA" id="6nFpYlvl4NY" role="1tU5fm">
                <node concept="3Tqbb2" id="6nFpYlvl4O1" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="6nFpYlvl6Ji" role="33vP2m">
                <node concept="Tc6Ow" id="6nFpYlvl6Jj" role="2ShVmc">
                  <node concept="3Tqbb2" id="6nFpYlvl6Jk" role="HW$YZ" />
                  <node concept="2OqwBi" id="6nFpYlvl6Jl" role="I$8f6">
                    <node concept="37vLTw" id="6nFpYlvl6Jm" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nFpYltNprf" resolve="startFrom" />
                    </node>
                    <node concept="3zZkjj" id="6nFpYlvl6Jn" role="2OqNvi">
                      <node concept="1bVj0M" id="6nFpYlvl6Jo" role="23t8la">
                        <node concept="3clFbS" id="6nFpYlvl6Jp" role="1bW5cS">
                          <node concept="3clFbF" id="6nFpYlvl6Jq" role="3cqZAp">
                            <node concept="3fqX7Q" id="6nFpYlvl6Jr" role="3clFbG">
                              <node concept="2OqwBi" id="6nFpYlvl6Js" role="3fr31v">
                                <node concept="37vLTw" id="4hQVL4f9Cj9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
                                </node>
                                <node concept="liA8E" id="6nFpYlvl6Ju" role="2OqNvi">
                                  <ref role="37wK5l" node="6nFpYluRAm8" resolve="isOrigin" />
                                  <node concept="2OqwBi" id="6nFpYlvl6Jv" role="37wK5m">
                                    <node concept="37vLTw" id="6nFpYlvl6Jw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6nFpYlvl6Jy" resolve="it" />
                                    </node>
                                    <node concept="iZEcu" id="6nFpYlvl6Jx" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6nFpYlvl6Jy" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6nFpYlvl6Jz" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6nFpYlvkPI4" role="3cqZAp" />
          <node concept="3cpWs8" id="6nFpYlvbrJU" role="3cqZAp">
            <node concept="3cpWsn" id="6nFpYlvbrJX" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="6nFpYlvbrJS" role="1tU5fm">
                <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
              </node>
              <node concept="2OqwBi" id="6nFpYlvmR9j" role="33vP2m">
                <node concept="37vLTw" id="6nFpYlvmPz7" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                </node>
                <node concept="liA8E" id="6nFpYlvmVik" role="2OqNvi">
                  <ref role="37wK5l" node="tIwzd1ILXm" resolve="initial" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6nFpYlvaYtc" role="3cqZAp">
            <node concept="2OqwBi" id="6nFpYlvaZPj" role="3clFbG">
              <node concept="37vLTw" id="4hQVL4f9xON" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
              </node>
              <node concept="liA8E" id="6nFpYlvb3j5" role="2OqNvi">
                <ref role="37wK5l" node="6nFpYlv9QQj" resolve="forEachInvalidated" />
                <node concept="1bVj0M" id="6nFpYlvb3_Y" role="37wK5m">
                  <node concept="37vLTG" id="6nFpYlvb3Cq" role="1bW2Oz">
                    <property role="TrG5h" value="orig" />
                    <node concept="3Tqbb2" id="6nFpYlvcME2" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="6nFpYlvb3Od" role="1bW2Oz">
                    <property role="TrG5h" value="invalidated" />
                    <node concept="2I9FWS" id="6nFpYlvb45B" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="6nFpYlvb3A0" role="1bW5cS">
                    <node concept="3clFbH" id="6nFpYlvbegt" role="3cqZAp" />
                    <node concept="3cpWs8" id="6nFpYlvbfZ0" role="3cqZAp">
                      <node concept="3cpWsn" id="6nFpYlvbfZ1" role="3cpWs9">
                        <property role="TrG5h" value="t" />
                        <node concept="16syzq" id="6nFpYlvbfNW" role="1tU5fm">
                          <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
                        </node>
                        <node concept="1rXfSq" id="6nFpYlvbfZ2" role="33vP2m">
                          <ref role="37wK5l" node="6nFpYltFTQQ" resolve="flat" />
                          <node concept="37vLTw" id="6nFpYlvbfZ3" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYlvb3Od" resolve="invalidated" />
                          </node>
                          <node concept="1rXfSq" id="6nFpYlvbfZ4" role="37wK5m">
                            <ref role="37wK5l" node="6nFpYltM1Er" resolve="recursive" />
                            <node concept="37vLTw" id="6nFpYlvbfZ5" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6nFpYlvbXc9" role="3cqZAp">
                      <node concept="37vLTI" id="6nFpYlvbXyt" role="3clFbG">
                        <node concept="37vLTw" id="6nFpYlvbXc7" role="37vLTJ">
                          <ref role="3cqZAo" node="6nFpYlvbrJX" resolve="value" />
                        </node>
                        <node concept="2OqwBi" id="6nFpYlvbZAj" role="37vLTx">
                          <node concept="37vLTw" id="6nFpYlvbZej" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                          </node>
                          <node concept="liA8E" id="6nFpYlvc06m" role="2OqNvi">
                            <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                            <node concept="37vLTw" id="6nFpYlvc0sE" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYlvbrJX" resolve="value" />
                            </node>
                            <node concept="37vLTw" id="6nFpYlvc1y0" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYlvbfZ1" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6nFpYlvchOh" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6nFpYlvaRLs" role="3cqZAp" />
          <node concept="3clFbJ" id="6nFpYlvcUG4" role="3cqZAp">
            <node concept="3clFbS" id="6nFpYlvcUG6" role="3clFbx">
              <node concept="3clFbF" id="6nFpYltOME_" role="3cqZAp">
                <node concept="2OqwBi" id="6nFpYltOOOv" role="3clFbG">
                  <node concept="37vLTw" id="4hQVL4f9Egh" role="2Oq$k0">
                    <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
                  </node>
                  <node concept="liA8E" id="6nFpYltOQJT" role="2OqNvi">
                    <ref role="37wK5l" node="70Wv0dJj0l_" resolve="addOrigins" />
                    <node concept="37vLTw" id="6nFpYlvlkC0" role="37wK5m">
                      <ref role="3cqZAo" node="6nFpYlvl6Jh" resolve="newOrigins" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6nFpYltOLWe" role="3cqZAp" />
              <node concept="3clFbJ" id="6nFpYltNprl" role="3cqZAp">
                <node concept="3clFbS" id="6nFpYltNprm" role="3clFbx">
                  <node concept="3cpWs8" id="6nFpYlvbzPp" role="3cqZAp">
                    <node concept="3cpWsn" id="6nFpYlvbzPq" role="3cpWs9">
                      <property role="TrG5h" value="t" />
                      <node concept="16syzq" id="6nFpYlvbsZv" role="1tU5fm">
                        <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
                      </node>
                      <node concept="1rXfSq" id="6nFpYlvbzPr" role="33vP2m">
                        <ref role="37wK5l" node="6nFpYltFQaQ" resolve="deepInterfacePart" />
                        <node concept="37vLTw" id="6nFpYlvbzPs" role="37wK5m">
                          <ref role="3cqZAo" node="6nFpYltNprf" resolve="startFrom" />
                        </node>
                        <node concept="1rXfSq" id="6nFpYlvbzPt" role="37wK5m">
                          <ref role="37wK5l" node="6nFpYltM1Er" resolve="recursive" />
                          <node concept="37vLTw" id="6nFpYlvbzPu" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6nFpYlvmZQR" role="3cqZAp">
                    <node concept="37vLTI" id="6nFpYlvmZQS" role="3clFbG">
                      <node concept="37vLTw" id="6nFpYlvmZQT" role="37vLTJ">
                        <ref role="3cqZAo" node="6nFpYlvbrJX" resolve="value" />
                      </node>
                      <node concept="2OqwBi" id="6nFpYlvmZQU" role="37vLTx">
                        <node concept="37vLTw" id="6nFpYlvmZQV" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                        </node>
                        <node concept="liA8E" id="6nFpYlvmZQW" role="2OqNvi">
                          <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                          <node concept="37vLTw" id="6nFpYlvmZQX" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYlvbrJX" resolve="value" />
                          </node>
                          <node concept="37vLTw" id="6nFpYlvmZQY" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYlvbzPq" resolve="t" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6nFpYltNprv" role="3cqZAp" />
                </node>
                <node concept="37vLTw" id="6nFpYltNprw" role="3clFbw">
                  <ref role="3cqZAo" node="6nFpYltNpri" resolve="interfacePartOnly" />
                </node>
                <node concept="9aQIb" id="6nFpYltNprx" role="9aQIa">
                  <node concept="3clFbS" id="6nFpYltNpry" role="9aQI4">
                    <node concept="3cpWs8" id="6nFpYlvbFeh" role="3cqZAp">
                      <node concept="3cpWsn" id="6nFpYlvbFei" role="3cpWs9">
                        <property role="TrG5h" value="t" />
                        <node concept="16syzq" id="6nFpYlvbDm1" role="1tU5fm">
                          <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
                        </node>
                        <node concept="1rXfSq" id="6nFpYlvbFej" role="33vP2m">
                          <ref role="37wK5l" node="6nFpYltFTtW" resolve="deepAll" />
                          <node concept="37vLTw" id="6nFpYlvbFek" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYltNprf" resolve="startFrom" />
                          </node>
                          <node concept="1rXfSq" id="6nFpYlvbFel" role="37wK5m">
                            <ref role="37wK5l" node="6nFpYltM1Er" resolve="recursive" />
                            <node concept="37vLTw" id="6nFpYlvbFem" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6nFpYlvn3Nk" role="3cqZAp">
                      <node concept="37vLTI" id="6nFpYlvn3Nl" role="3clFbG">
                        <node concept="37vLTw" id="6nFpYlvn3Nm" role="37vLTJ">
                          <ref role="3cqZAo" node="6nFpYlvbrJX" resolve="value" />
                        </node>
                        <node concept="2OqwBi" id="6nFpYlvn3Nn" role="37vLTx">
                          <node concept="37vLTw" id="6nFpYlvn3No" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                          </node>
                          <node concept="liA8E" id="6nFpYlvn3Np" role="2OqNvi">
                            <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                            <node concept="37vLTw" id="6nFpYlvn3Nq" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYlvbrJX" resolve="value" />
                            </node>
                            <node concept="37vLTw" id="6nFpYlvn3Nr" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYlvbFei" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6nFpYlvd8AV" role="3clFbw">
              <node concept="37vLTw" id="6nFpYlvlki9" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlvl6Jh" resolve="newOrigins" />
              </node>
              <node concept="3GX2aA" id="6nFpYlvdcl3" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="6nFpYlvdr8e" role="3cqZAp" />
          <node concept="3cpWs6" id="6nFpYltO1bG" role="3cqZAp">
            <node concept="37vLTw" id="6nFpYlvbSSU" role="3cqZAk">
              <ref role="3cqZAo" node="6nFpYlvbrJX" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltNyaU" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltN$ut" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltShkx" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltSnCO" role="jymVt">
        <property role="TrG5h" value="forEachRequired" />
        <node concept="37vLTG" id="6nFpYltSFnC" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="A3Dl8" id="6nFpYltSFnD" role="1tU5fm">
            <node concept="3Tqbb2" id="6nFpYltSFnE" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltSFn$" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltSFn_" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltSFnA" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltS$IB" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltSFnB" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltSATb" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6nFpYltTlXP" role="3clF45">
          <ref role="16sUi3" node="6nFpYltS$IB" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="6nFpYltSnCR" role="1B3o_S" />
        <node concept="3clFbS" id="6nFpYltSnCS" role="3clF47">
          <node concept="3cpWs8" id="31_3CqJgOIt" role="3cqZAp">
            <node concept="3cpWsn" id="31_3CqJgOIu" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="31_3CqJgOIv" role="1tU5fm">
                <ref role="16sUi3" node="6nFpYltS$IB" resolve="T" />
              </node>
              <node concept="2OqwBi" id="31_3CqJgOIw" role="33vP2m">
                <node concept="37vLTw" id="31_3CqJgOIx" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYltSFn$" resolve="action" />
                </node>
                <node concept="liA8E" id="31_3CqJgOIy" role="2OqNvi">
                  <ref role="37wK5l" node="tIwzd1ILXm" resolve="initial" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="31_3CqJgFgo" role="3cqZAp">
            <node concept="2OqwBi" id="31_3CqJgFCG" role="3clFbG">
              <node concept="37vLTw" id="31_3CqJgFgm" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
              </node>
              <node concept="liA8E" id="31_3CqJgHIq" role="2OqNvi">
                <ref role="37wK5l" node="31_3CqJfPFl" resolve="forAllFresh" />
                <node concept="37vLTw" id="31_3CqJgM7A" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltSFnC" resolve="nodes" />
                </node>
                <node concept="1bVj0M" id="31_3CqJgMH7" role="37wK5m">
                  <node concept="3clFbS" id="31_3CqJgMH9" role="1bW5cS">
                    <node concept="3clFbH" id="31_3CqJgN$3" role="3cqZAp" />
                    <node concept="3cpWs8" id="31_3CqJgPYf" role="3cqZAp">
                      <node concept="3cpWsn" id="31_3CqJgPYg" role="3cpWs9">
                        <property role="TrG5h" value="t" />
                        <node concept="16syzq" id="31_3CqJgPPL" role="1tU5fm">
                          <ref role="16sUi3" node="6nFpYltS$IB" resolve="T" />
                        </node>
                        <node concept="1rXfSq" id="31_3CqJgPYh" role="33vP2m">
                          <ref role="37wK5l" node="6nFpYltFTQQ" resolve="flat" />
                          <node concept="37vLTw" id="31_3CqJgPYi" role="37wK5m">
                            <ref role="3cqZAo" node="31_3CqJgMSQ" resolve="fresh" />
                          </node>
                          <node concept="1rXfSq" id="31_3CqJgPYj" role="37wK5m">
                            <ref role="37wK5l" node="6nFpYltVXdg" resolve="singular" />
                            <node concept="37vLTw" id="31_3CqJgPYk" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYltSFn$" resolve="action" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="31_3CqJgQWO" role="3cqZAp">
                      <node concept="37vLTI" id="31_3CqJgQWP" role="3clFbG">
                        <node concept="37vLTw" id="31_3CqJgQWQ" role="37vLTJ">
                          <ref role="3cqZAo" node="31_3CqJgOIu" resolve="value" />
                        </node>
                        <node concept="2OqwBi" id="31_3CqJgQWR" role="37vLTx">
                          <node concept="37vLTw" id="31_3CqJgQWS" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nFpYltSFn$" resolve="action" />
                          </node>
                          <node concept="liA8E" id="31_3CqJgQWT" role="2OqNvi">
                            <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                            <node concept="37vLTw" id="31_3CqJgQWU" role="37wK5m">
                              <ref role="3cqZAo" node="31_3CqJgOIu" resolve="value" />
                            </node>
                            <node concept="37vLTw" id="31_3CqJgQWV" role="37wK5m">
                              <ref role="3cqZAo" node="31_3CqJgPYg" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="31_3CqJgN$8" role="3cqZAp" />
                  </node>
                  <node concept="37vLTG" id="31_3CqJgMSQ" role="1bW2Oz">
                    <property role="TrG5h" value="fresh" />
                    <node concept="2I9FWS" id="31_3CqJgNi8" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="31_3CqJgSmX" role="3cqZAp">
            <node concept="37vLTw" id="31_3CqJgSmV" role="3clFbG">
              <ref role="3cqZAo" node="31_3CqJgOIu" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltS$IB" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltSATb" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltNhb0" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltFQaQ" role="jymVt">
        <property role="TrG5h" value="deepInterfacePart" />
        <node concept="37vLTG" id="6nFpYltFYAs" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="6nFpYltFYKM" role="1tU5fm">
            <node concept="3Tqbb2" id="6nFpYltFYMt" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltFQdJ" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltFQfY" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltFRjL" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltFQCT" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltFRlM" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltFQDd" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6nFpYltH_ao" role="3clF45">
          <ref role="16sUi3" node="6nFpYltFQCT" resolve="T" />
        </node>
        <node concept="3Tm6S6" id="6nFpYltZidJ" role="1B3o_S" />
        <node concept="3clFbS" id="6nFpYltFQaU" role="3clF47">
          <node concept="3clFbF" id="6nFpYltFUi5" role="3cqZAp">
            <node concept="2OqwBi" id="6nFpYltH$xX" role="3clFbG">
              <node concept="2ShNRf" id="6nFpYltFUi3" role="2Oq$k0">
                <node concept="1pGfFk" id="6nFpYltFVFn" role="2ShVmc">
                  <ref role="37wK5l" node="3IIf9O_hpaa" resolve="NodeWalker.INTERFACE_PART_DEEP" />
                  <node concept="16syzq" id="6nFpYltFVZO" role="1pMfVU">
                    <ref role="16sUi3" node="6nFpYltFQCT" resolve="T" />
                  </node>
                  <node concept="16syzq" id="6nFpYltFW9$" role="1pMfVU">
                    <ref role="16sUi3" node="6nFpYltFQDd" resolve="P" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltFZ8B" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltFYAs" resolve="startFrom" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltUDUi" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltFQdJ" resolve="action" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6nFpYltH_3X" role="2OqNvi">
                <ref role="37wK5l" node="4UTrqZZNWym" resolve="doWalk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltFQCT" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltFQDd" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltM8zr" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltFTtW" role="jymVt">
        <property role="TrG5h" value="deepAll" />
        <node concept="37vLTG" id="6nFpYltFZVX" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="6nFpYltFZVY" role="1tU5fm">
            <node concept="3Tqbb2" id="6nFpYltFZVZ" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltFTtX" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltFTtY" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltFTtZ" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltFTu6" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltFTu0" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltFTu7" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6nFpYltHFRV" role="3clF45">
          <ref role="16sUi3" node="6nFpYltFTu6" resolve="T" />
        </node>
        <node concept="3Tm6S6" id="6nFpYltZoNr" role="1B3o_S" />
        <node concept="3clFbS" id="6nFpYltFTu5" role="3clF47">
          <node concept="3clFbF" id="6nFpYltG0kc" role="3cqZAp">
            <node concept="2OqwBi" id="6nFpYltHFlN" role="3clFbG">
              <node concept="2ShNRf" id="6nFpYltG0kd" role="2Oq$k0">
                <node concept="1pGfFk" id="6nFpYltG0ke" role="2ShVmc">
                  <ref role="37wK5l" node="3IIf9O_hbbq" resolve="NodeWalker.ALL_DEEP" />
                  <node concept="16syzq" id="6nFpYltG0kf" role="1pMfVU">
                    <ref role="16sUi3" node="6nFpYltFTu6" resolve="T" />
                  </node>
                  <node concept="16syzq" id="6nFpYltG0kg" role="1pMfVU">
                    <ref role="16sUi3" node="6nFpYltFTu7" resolve="P" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltG0kh" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltFZVX" resolve="startFrom" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltUGim" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltFTtX" resolve="action" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6nFpYltHFLx" role="2OqNvi">
                <ref role="37wK5l" node="4UTrqZZNWym" resolve="doWalk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltFTu6" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltFTu7" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltFUfK" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltFTQQ" role="jymVt">
        <property role="TrG5h" value="flat" />
        <node concept="37vLTG" id="6nFpYltG10Q" role="3clF46">
          <property role="TrG5h" value="nodes" />
          <node concept="A3Dl8" id="6nFpYltG10R" role="1tU5fm">
            <node concept="3Tqbb2" id="6nFpYltG10S" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltFTQR" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltFTQS" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltFTQT" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltFTR0" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltFTQU" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltFTR1" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6nFpYltHFZu" role="3clF45">
          <ref role="16sUi3" node="6nFpYltFTR0" resolve="T" />
        </node>
        <node concept="3Tm6S6" id="6nFpYltZv$Y" role="1B3o_S" />
        <node concept="3clFbS" id="6nFpYltFTQZ" role="3clF47">
          <node concept="3clFbF" id="6nFpYltG0Dh" role="3cqZAp">
            <node concept="2OqwBi" id="6nFpYltHGnc" role="3clFbG">
              <node concept="2ShNRf" id="6nFpYltG0Di" role="2Oq$k0">
                <node concept="1pGfFk" id="6nFpYltG0Dj" role="2ShVmc">
                  <ref role="37wK5l" node="4UTrqZZOjgP" resolve="NodeWalker.FLAT" />
                  <node concept="16syzq" id="6nFpYltG0Dk" role="1pMfVU">
                    <ref role="16sUi3" node="6nFpYltFTR0" resolve="T" />
                  </node>
                  <node concept="16syzq" id="6nFpYltG0Dl" role="1pMfVU">
                    <ref role="16sUi3" node="6nFpYltFTR1" resolve="P" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltG1n9" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltG10Q" resolve="nodes" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltG0Dn" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltFTQR" resolve="action" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6nFpYltHGL$" role="2OqNvi">
                <ref role="37wK5l" node="4UTrqZZOkjp" resolve="doWalk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltFTR0" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltFTR1" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltLHJJ" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltM1Er" role="jymVt">
        <property role="TrG5h" value="recursive" />
        <node concept="3Tm6S6" id="6nFpYltM1Es" role="1B3o_S" />
        <node concept="3uibUv" id="6nFpYltMhaY" role="3clF45">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="6nFpYltMtL1" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltMnGF" resolve="T" />
          </node>
          <node concept="16syzq" id="6nFpYltMuf5" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltMpXP" resolve="P" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltM1Ej" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltM1Ek" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltM1El" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltMnGF" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltM1Em" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltMpXP" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltM1DF" role="3clF47">
          <node concept="3cpWs6" id="6nFpYltM1DG" role="3cqZAp">
            <node concept="2ShNRf" id="6nFpYltM1DH" role="3cqZAk">
              <node concept="YeOm9" id="6nFpYltM1DI" role="2ShVmc">
                <node concept="1Y3b0j" id="6nFpYltM1DJ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" node="6nFpYltLIxT" resolve="ProgramFactory.AssistedWalk.ActionWrapper" />
                  <ref role="1Y3XeK" node="6nFpYltLHQ$" resolve="ProgramFactory.AssistedWalk.ActionWrapper" />
                  <node concept="3Tm1VV" id="6nFpYltM1DK" role="1B3o_S" />
                  <node concept="37vLTw" id="6nFpYltM1En" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltM1Ej" resolve="action" />
                  </node>
                  <node concept="16syzq" id="6nFpYltM1DM" role="2Ghqu4">
                    <ref role="16sUi3" node="6nFpYltMnGF" resolve="T" />
                  </node>
                  <node concept="16syzq" id="6nFpYltM1DN" role="2Ghqu4">
                    <ref role="16sUi3" node="6nFpYltMpXP" resolve="P" />
                  </node>
                  <node concept="3clFb_" id="6nFpYltM1DO" role="jymVt">
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="6nFpYltM1DP" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6nFpYltM1DQ" role="1tU5fm" />
                    </node>
                    <node concept="37vLTG" id="6nFpYltM1DR" role="3clF46">
                      <property role="TrG5h" value="param" />
                      <node concept="16syzq" id="6nFpYltM1DS" role="1tU5fm">
                        <ref role="16sUi3" node="6nFpYltMpXP" resolve="P" />
                      </node>
                    </node>
                    <node concept="16syzq" id="6nFpYltM1DT" role="3clF45">
                      <ref role="16sUi3" node="6nFpYltMnGF" resolve="T" />
                    </node>
                    <node concept="3Tm1VV" id="6nFpYltM1DU" role="1B3o_S" />
                    <node concept="2AHcQZ" id="6nFpYltM1DV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="6nFpYltM1DW" role="3clF47">
                      <node concept="3clFbF" id="6nFpYltM1E0" role="3cqZAp">
                        <node concept="2OqwBi" id="6nFpYltM1E1" role="3clFbG">
                          <node concept="37vLTw" id="4hQVL4f9G3d" role="2Oq$k0">
                            <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
                          </node>
                          <node concept="liA8E" id="6nFpYltM1E3" role="2OqNvi">
                            <ref role="37wK5l" node="70Wv0dJjDa1" resolve="addValidTarget" />
                            <node concept="37vLTw" id="6nFpYltM1E4" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYltM1DP" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6nFpYltWpQI" role="3cqZAp" />
                      <node concept="3clFbF" id="6nFpYltM1Ef" role="3cqZAp">
                        <node concept="3nyPlj" id="6nFpYltM1Eg" role="3clFbG">
                          <ref role="37wK5l" node="6nFpYltLJru" resolve="doAction" />
                          <node concept="37vLTw" id="6nFpYltM1Eh" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYltM1DP" resolve="node" />
                          </node>
                          <node concept="37vLTw" id="6nFpYltM1Ei" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYltM1DR" resolve="param" />
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
        <node concept="16euLQ" id="6nFpYltMnGF" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltMpXP" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltFQa$" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltVXdg" role="jymVt">
        <property role="TrG5h" value="singular" />
        <node concept="3Tm6S6" id="6nFpYltVXdh" role="1B3o_S" />
        <node concept="3uibUv" id="6nFpYltVXdi" role="3clF45">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="6nFpYltVXdj" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltVXe1" resolve="T" />
          </node>
          <node concept="16syzq" id="6nFpYltVXdk" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltVXe2" resolve="P" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltVXdl" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltVXdm" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltVXdn" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltVXe1" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltVXdo" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltVXe2" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltVXdp" role="3clF47">
          <node concept="3cpWs6" id="6nFpYltVXdq" role="3cqZAp">
            <node concept="2ShNRf" id="6nFpYltVXdr" role="3cqZAk">
              <node concept="YeOm9" id="6nFpYltVXds" role="2ShVmc">
                <node concept="1Y3b0j" id="6nFpYltVXdt" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" node="6nFpYltLIxT" resolve="ProgramFactory.AssistedWalk.ActionWrapper" />
                  <ref role="1Y3XeK" node="6nFpYltLHQ$" resolve="ProgramFactory.AssistedWalk.ActionWrapper" />
                  <node concept="3Tm1VV" id="6nFpYltVXdu" role="1B3o_S" />
                  <node concept="37vLTw" id="6nFpYltVXdv" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltVXdl" resolve="action" />
                  </node>
                  <node concept="16syzq" id="6nFpYltVXdw" role="2Ghqu4">
                    <ref role="16sUi3" node="6nFpYltVXe1" resolve="T" />
                  </node>
                  <node concept="16syzq" id="6nFpYltVXdx" role="2Ghqu4">
                    <ref role="16sUi3" node="6nFpYltVXe2" resolve="P" />
                  </node>
                  <node concept="3clFb_" id="6nFpYltVXdy" role="jymVt">
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="6nFpYltVXdz" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6nFpYltVXd$" role="1tU5fm" />
                    </node>
                    <node concept="37vLTG" id="6nFpYltVXd_" role="3clF46">
                      <property role="TrG5h" value="param" />
                      <node concept="16syzq" id="6nFpYltVXdA" role="1tU5fm">
                        <ref role="16sUi3" node="6nFpYltVXe2" resolve="P" />
                      </node>
                    </node>
                    <node concept="16syzq" id="6nFpYltVXdB" role="3clF45">
                      <ref role="16sUi3" node="6nFpYltVXe1" resolve="T" />
                    </node>
                    <node concept="3Tm1VV" id="6nFpYltVXdC" role="1B3o_S" />
                    <node concept="2AHcQZ" id="6nFpYltVXdD" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="6nFpYltVXdE" role="3clF47">
                      <node concept="3clFbJ" id="6nFpYltVXdG" role="3cqZAp">
                        <node concept="3clFbS" id="6nFpYltVXdH" role="3clFbx">
                          <node concept="3clFbF" id="6nFpYltVXdI" role="3cqZAp">
                            <node concept="2OqwBi" id="6nFpYltVXdJ" role="3clFbG">
                              <node concept="37vLTw" id="4hQVL4f9HPG" role="2Oq$k0">
                                <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
                              </node>
                              <node concept="liA8E" id="6nFpYltVXdL" role="2OqNvi">
                                <ref role="37wK5l" node="70Wv0dJjDa1" resolve="addValidTarget" />
                                <node concept="37vLTw" id="6nFpYltVXdM" role="37wK5m">
                                  <ref role="3cqZAo" node="6nFpYltVXdz" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="22lmx$" id="6nFpYltVXdN" role="3clFbw">
                          <node concept="2OqwBi" id="6nFpYltVXdO" role="3uHU7w">
                            <node concept="37vLTw" id="4hQVL4f9JLn" role="2Oq$k0">
                              <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
                            </node>
                            <node concept="liA8E" id="6nFpYltVXdQ" role="2OqNvi">
                              <ref role="37wK5l" node="3Tm1CT$vjrt" resolve="isRelevant" />
                              <node concept="2OqwBi" id="6nFpYluRMqN" role="37wK5m">
                                <node concept="37vLTw" id="6nFpYluRMqO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6nFpYltVXdz" resolve="node" />
                                </node>
                                <node concept="iZEcu" id="6nFpYluRMqP" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6nFpYltVXdS" role="3uHU7B">
                            <node concept="37vLTw" id="4hQVL4f9JCa" role="2Oq$k0">
                              <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
                            </node>
                            <node concept="liA8E" id="6nFpYltVXdU" role="2OqNvi">
                              <ref role="37wK5l" node="42eP3ws38rS" resolve="isOriginAncestor" />
                              <node concept="2OqwBi" id="6nFpYluRLnq" role="37wK5m">
                                <node concept="37vLTw" id="6nFpYltVXdV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6nFpYltVXdz" resolve="node" />
                                </node>
                                <node concept="iZEcu" id="6nFpYluRLE6" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6nFpYltVXdW" role="3cqZAp" />
                      <node concept="3clFbF" id="6nFpYltVXdX" role="3cqZAp">
                        <node concept="3nyPlj" id="6nFpYltVXdY" role="3clFbG">
                          <ref role="37wK5l" node="6nFpYltLJru" resolve="doAction" />
                          <node concept="37vLTw" id="6nFpYltVXdZ" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYltVXdz" resolve="node" />
                          </node>
                          <node concept="37vLTw" id="6nFpYltVXe0" role="37wK5m">
                            <ref role="3cqZAo" node="6nFpYltVXd_" resolve="param" />
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
        <node concept="16euLQ" id="6nFpYltVXe1" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltVXe2" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltVXdf" role="jymVt" />
      <node concept="312cEu" id="6nFpYltLHQ$" role="jymVt">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="ActionWrapper" />
        <property role="1sVAO0" value="true" />
        <node concept="2tJIrI" id="6nFpYltLIum" role="jymVt" />
        <node concept="3clFbW" id="6nFpYltLIxT" role="jymVt">
          <node concept="3cqZAl" id="6nFpYltLIxV" role="3clF45" />
          <node concept="3Tm1VV" id="6nFpYltLIxW" role="1B3o_S" />
          <node concept="3clFbS" id="6nFpYltLIxX" role="3clF47">
            <node concept="3clFbF" id="6nFpYltLIXR" role="3cqZAp">
              <node concept="37vLTI" id="6nFpYltLIXT" role="3clFbG">
                <node concept="2OqwBi" id="6nFpYltLJkp" role="37vLTJ">
                  <node concept="Xjq3P" id="6nFpYltLJmM" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6nFpYltLOzo" role="2OqNvi">
                    <ref role="2Oxat5" node="6nFpYltLIXL" resolve="delegate" />
                  </node>
                </node>
                <node concept="37vLTw" id="6nFpYltLIXX" role="37vLTx">
                  <ref role="3cqZAo" node="6nFpYltLIzL" resolve="delegate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="6nFpYltLIzL" role="3clF46">
            <property role="TrG5h" value="delegate" />
            <node concept="3uibUv" id="6nFpYltLIzK" role="1tU5fm">
              <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
              <node concept="16syzq" id="6nFpYltLISk" role="11_B2D">
                <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
              </node>
              <node concept="16syzq" id="6nFpYltLIU7" role="11_B2D">
                <ref role="16sUi3" node="6nFpYltLIqK" resolve="P" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="6nFpYltLIwc" role="jymVt" />
        <node concept="3clFb_" id="6nFpYltLJru" role="jymVt">
          <property role="TrG5h" value="doAction" />
          <node concept="37vLTG" id="6nFpYltLJrv" role="3clF46">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="6nFpYltLJrw" role="1tU5fm" />
          </node>
          <node concept="37vLTG" id="6nFpYltLJrx" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="16syzq" id="6nFpYltLJrA" role="1tU5fm">
              <ref role="16sUi3" node="6nFpYltLIqK" resolve="P" />
            </node>
          </node>
          <node concept="16syzq" id="6nFpYltLJrB" role="3clF45">
            <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6nFpYltLJr$" role="1B3o_S" />
          <node concept="3clFbS" id="6nFpYltLJrC" role="3clF47">
            <node concept="3clFbF" id="6nFpYltQoBC" role="3cqZAp">
              <node concept="2OqwBi" id="6nFpYltQoPl" role="3clFbG">
                <node concept="37vLTw" id="6nFpYltQoBB" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYltLIXL" resolve="delegate" />
                </node>
                <node concept="liA8E" id="6nFpYltQqKE" role="2OqNvi">
                  <ref role="37wK5l" node="12yN8DyNqeO" resolve="doAction" />
                  <node concept="37vLTw" id="6nFpYltQrjn" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltLJrv" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltQrLH" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltLJrx" resolve="param" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6nFpYltLJrD" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="6nFpYltLONI" role="jymVt" />
        <node concept="3clFb_" id="6nFpYltLJrE" role="jymVt">
          <property role="TrG5h" value="bind" />
          <node concept="37vLTG" id="6nFpYltLJrF" role="3clF46">
            <property role="TrG5h" value="a" />
            <node concept="16syzq" id="6nFpYltLJrM" role="1tU5fm">
              <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
            </node>
          </node>
          <node concept="37vLTG" id="6nFpYltLJrH" role="3clF46">
            <property role="TrG5h" value="b" />
            <node concept="16syzq" id="6nFpYltLJrO" role="1tU5fm">
              <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
            </node>
          </node>
          <node concept="16syzq" id="6nFpYltLJrN" role="3clF45">
            <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6nFpYltLJrK" role="1B3o_S" />
          <node concept="3clFbS" id="6nFpYltLJrP" role="3clF47">
            <node concept="3clFbF" id="6nFpYltLJJZ" role="3cqZAp">
              <node concept="2OqwBi" id="6nFpYltLJX$" role="3clFbG">
                <node concept="37vLTw" id="6nFpYltLJJY" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYltLIXL" resolve="delegate" />
                </node>
                <node concept="liA8E" id="6nFpYltLKj6" role="2OqNvi">
                  <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                  <node concept="37vLTw" id="6nFpYltLKxV" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltLJrF" resolve="a" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltLKKt" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltLJrH" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6nFpYltLJrQ" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="6nFpYltVSUQ" role="jymVt" />
        <node concept="3clFb_" id="6nFpYltLJrR" role="jymVt">
          <property role="TrG5h" value="initial" />
          <node concept="16syzq" id="6nFpYltLJrV" role="3clF45">
            <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6nFpYltLJrT" role="1B3o_S" />
          <node concept="3clFbS" id="6nFpYltLJrW" role="3clF47">
            <node concept="3clFbF" id="6nFpYltLKXk" role="3cqZAp">
              <node concept="2OqwBi" id="6nFpYltLLio" role="3clFbG">
                <node concept="37vLTw" id="6nFpYltLKXj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYltLIXL" resolve="delegate" />
                </node>
                <node concept="liA8E" id="6nFpYltLLE$" role="2OqNvi">
                  <ref role="37wK5l" node="tIwzd1ILXm" resolve="initial" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6nFpYltLJrX" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="6nFpYltVQAM" role="jymVt" />
        <node concept="3clFb_" id="6nFpYltLJrY" role="jymVt">
          <property role="TrG5h" value="initialParam" />
          <node concept="16syzq" id="6nFpYltLJs2" role="3clF45">
            <ref role="16sUi3" node="6nFpYltLIqK" resolve="P" />
          </node>
          <node concept="3Tm1VV" id="6nFpYltLJs0" role="1B3o_S" />
          <node concept="3clFbS" id="6nFpYltLJs3" role="3clF47">
            <node concept="3clFbF" id="6nFpYltLLUk" role="3cqZAp">
              <node concept="2OqwBi" id="6nFpYltLLYQ" role="3clFbG">
                <node concept="37vLTw" id="6nFpYltLLUj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYltLIXL" resolve="delegate" />
                </node>
                <node concept="liA8E" id="6nFpYltLMd7" role="2OqNvi">
                  <ref role="37wK5l" node="1eEe91P21Wg" resolve="initialParam" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6nFpYltLJs4" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="6nFpYltVPG9" role="jymVt" />
        <node concept="3clFb_" id="6nFpYltLJs5" role="jymVt">
          <property role="TrG5h" value="nextParam" />
          <node concept="37vLTG" id="6nFpYltLJs6" role="3clF46">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="6nFpYltLJs7" role="1tU5fm" />
          </node>
          <node concept="37vLTG" id="6nFpYltLJs8" role="3clF46">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="6nFpYltLJs9" role="1tU5fm" />
          </node>
          <node concept="37vLTG" id="6nFpYltLJsa" role="3clF46">
            <property role="TrG5h" value="prevParam" />
            <node concept="16syzq" id="6nFpYltLJsf" role="1tU5fm">
              <ref role="16sUi3" node="6nFpYltLIqK" resolve="P" />
            </node>
          </node>
          <node concept="16syzq" id="6nFpYltLJsg" role="3clF45">
            <ref role="16sUi3" node="6nFpYltLIqK" resolve="P" />
          </node>
          <node concept="3Tm1VV" id="6nFpYltLJsd" role="1B3o_S" />
          <node concept="3clFbS" id="6nFpYltLJsh" role="3clF47">
            <node concept="3clFbF" id="6nFpYltLMsC" role="3cqZAp">
              <node concept="2OqwBi" id="6nFpYltLMv9" role="3clFbG">
                <node concept="37vLTw" id="6nFpYltLMsB" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYltLIXL" resolve="delegate" />
                </node>
                <node concept="liA8E" id="6nFpYltLMHy" role="2OqNvi">
                  <ref role="37wK5l" node="1eEe91P2lma" resolve="nextParam" />
                  <node concept="37vLTw" id="6nFpYltLMWZ" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltLJs6" resolve="parent" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltLNeh" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltLJs8" resolve="child" />
                  </node>
                  <node concept="37vLTw" id="6nFpYltLO0M" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYltLJsa" resolve="prevParam" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6nFpYltLJsi" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="6nFpYltLIwg" role="jymVt" />
        <node concept="3Tm6S6" id="6nFpYltMDV6" role="1B3o_S" />
        <node concept="3uibUv" id="6nFpYltLI0Z" role="EKbjA">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="6nFpYltLIta" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
          </node>
          <node concept="16syzq" id="6nFpYltLItJ" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltLIqK" resolve="P" />
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltLIpo" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltLIqK" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
        <node concept="312cEg" id="6nFpYltLIXL" role="jymVt">
          <property role="TrG5h" value="delegate" />
          <node concept="3Tm6S6" id="6nFpYltLIXM" role="1B3o_S" />
          <node concept="3uibUv" id="6nFpYltLIXO" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltLIXP" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
            </node>
            <node concept="16syzq" id="6nFpYltLIXQ" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltLIqK" resolve="P" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4hQVL4f9kqB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6nFpYlv7TD1" role="jymVt" />
    <node concept="312cEg" id="7DvO2Mah9z5" role="jymVt">
      <property role="TrG5h" value="applicationSession" />
      <node concept="3Tm6S6" id="7DvO2Mah9z3" role="1B3o_S" />
      <node concept="3uibUv" id="6OXbTDxQvHL" role="1tU5fm">
        <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
      </node>
    </node>
    <node concept="312cEg" id="cmlg9OIRky" role="jymVt">
      <property role="TrG5h" value="ruleTemplates" />
      <node concept="3Tm6S6" id="cmlg9OIRkz" role="1B3o_S" />
      <node concept="3uibUv" id="cmlg9OIRk_" role="1tU5fm">
        <ref role="3uigEE" to="hano:6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
    </node>
    <node concept="312cEg" id="6tPOoeT4XhE" role="jymVt">
      <property role="TrG5h" value="rulesListTable" />
      <node concept="3Tm6S6" id="6tPOoeT4XhF" role="1B3o_S" />
      <node concept="3uibUv" id="6tPOoeT51Qn" role="1tU5fm">
        <ref role="3uigEE" node="7DvO2M9Uago" resolve="RulesListTable" />
      </node>
    </node>
    <node concept="312cEg" id="6i42QSsj_y2" role="jymVt">
      <property role="TrG5h" value="mainConstraint" />
      <node concept="3Tm6S6" id="6i42QSsj_y3" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsjBno" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="2OqwBi" id="7kTeLbPnP2o" role="33vP2m">
        <node concept="2ShNRf" id="7kTeLbPnP2p" role="2Oq$k0">
          <node concept="1pGfFk" id="7kTeLbPnP2q" role="2ShVmc">
            <ref role="37wK5l" to="i348:4sSe4$oM2rk" resolve="ConstraintBuilder" />
            <node concept="2YIFZM" id="7kTeLbPnP2r" role="37wK5m">
              <ref role="1Pybhc" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
              <ref role="37wK5l" to="av0y:~ConstraintSymbol.symbol(java.lang.String,int)" resolve="symbol" />
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
    <node concept="3Tm1VV" id="4$YN6QudkOJ" role="1B3o_S" />
    <node concept="312cEg" id="4hQVL4f8WTc" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <node concept="3Tm6S6" id="4hQVL4f8WTd" role="1B3o_S" />
      <node concept="3uibUv" id="4hQVL4f8WTf" role="1tU5fm">
        <ref role="3uigEE" node="70Wv0dJhQb2" resolve="OriginIndex" />
      </node>
    </node>
    <node concept="312cEg" id="6nFpYlujVzU" role="jymVt">
      <property role="TrG5h" value="updatesRecorder" />
      <node concept="3Tm6S6" id="6nFpYlujVzV" role="1B3o_S" />
      <node concept="3uibUv" id="6nFpYlujVzX" role="1tU5fm">
        <ref role="3uigEE" node="6nFpYlu02jD" resolve="UpdatesRecorder" />
        <node concept="1LlUBW" id="6nFpYlujVzY" role="11_B2D">
          <node concept="3uibUv" id="6nFpYlujVzZ" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
          <node concept="3vKaQO" id="6nFpYlujV$0" role="1Lm7xW">
            <node concept="3uibUv" id="6nFpYlujV$1" role="3O5elw">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7DvO2M9IiKB">
    <property role="TrG5h" value="MacroProcessing" />
    <property role="2bfB8j" value="false" />
    <node concept="2tJIrI" id="7DvO2M9IiKC" role="jymVt" />
    <node concept="3clFbW" id="7DvO2Ma0h_M" role="jymVt">
      <node concept="3cqZAl" id="7DvO2Ma0h_O" role="3clF45" />
      <node concept="3Tm1VV" id="7DvO2Ma0h_P" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2Ma0h_Q" role="3clF47">
        <node concept="XkiVB" id="5yr01fEef9a" role="3cqZAp">
          <ref role="37wK5l" to="i348:5yr01fEdYJE" resolve="TemplateApplicationSession" />
          <node concept="37vLTw" id="5yr01fEefkr" role="37wK5m">
            <ref role="3cqZAo" node="5yr01fEeeBY" resolve="repository" />
          </node>
        </node>
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
      <node concept="37vLTG" id="5yr01fEeeBY" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5yr01fEef1_" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2Ma0k9h" role="3clF46">
        <property role="TrG5h" value="macroTemplateIndex" />
        <node concept="3uibUv" id="7P_FdVPvlsI" role="1tU5fm">
          <ref role="3uigEE" to="hano:1hX44vNlSIA" resolve="MacroTemplateIndex" />
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
              <node concept="10M0yZ" id="5yr01fDt_oo" role="3cqZAk">
                <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
                <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
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
              <ref role="3cqZAo" to="i348:7DvO2M9IiOO" resolve="requireHooks" />
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
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Token" />
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
                        <node concept="10M0yZ" id="5yr01fDtC9O" role="3clFbG">
                          <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
                          <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
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
              <node concept="10M0yZ" id="5yr01fDtBsC" role="3cqZAk">
                <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
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
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Token" />
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
                        <node concept="10M0yZ" id="5yr01fDtCtM" role="3clFbG">
                          <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
                          <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
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
        <property role="TrG5h" value="macroTemplateRef" />
        <node concept="3uibUv" id="5yr01fDuQLx" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
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
              <ref role="3cqZAo" node="7DvO2M9IiLG" resolve="macroTemplateRef" />
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
                      <property role="TrG5h" value="macroTemplate" />
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
                            <ref role="3cqZAo" node="7DvO2M9IiLW" resolve="macroTemplate" />
                          </node>
                          <node concept="liA8E" id="7DvO2M9IiM5" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:1eKXYsjvsWF" resolve="doCall" />
                            <node concept="2OqwBi" id="7DvO2M9IiM6" role="37wK5m">
                              <node concept="37vLTw" id="7DvO2M9IiM7" role="2Oq$k0">
                                <ref role="3cqZAo" node="7DvO2M9IiLW" resolve="macroTemplate" />
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
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Token" />
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
                        <node concept="10M0yZ" id="5yr01fDtCLJ" role="3clFbG">
                          <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
                          <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
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
                <ref role="37wK5l" to="hano:4nxCIBqy$vr" resolve="macroTemplate" />
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
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Token" />
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
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="5yr01fDuPU0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
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
                <ref role="37wK5l" to="hano:6UWSvq4Qqe$" resolve="macroTemplate" />
                <node concept="37vLTw" id="5yr01fDuQDE" role="37wK5m">
                  <ref role="3cqZAo" node="7DvO2M9IiO2" resolve="templateRef" />
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
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="MacroTemplate.Token" />
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
        <ref role="3uigEE" to="hano:1hX44vNlSIA" resolve="MacroTemplateIndex" />
      </node>
    </node>
    <node concept="3uibUv" id="7DvO2M9IiOV" role="1zkMxy">
      <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
    </node>
  </node>
  <node concept="312cEu" id="5rhZO$TYZJM">
    <property role="TrG5h" value="ProgramBuilder" />
    <node concept="2tJIrI" id="5rhZO$TZ4oM" role="jymVt" />
    <node concept="3clFbW" id="5rhZO$TZ9Ji" role="jymVt">
      <node concept="3cqZAl" id="5rhZO$TZ9Jk" role="3clF45" />
      <node concept="3Tm1VV" id="5rhZO$TZ9Jl" role="1B3o_S" />
      <node concept="3clFbS" id="5rhZO$TZ9Jm" role="3clF47">
        <node concept="3clFbF" id="cmlg9ODYfU" role="3cqZAp">
          <node concept="37vLTI" id="cmlg9ODYfW" role="3clFbG">
            <node concept="2OqwBi" id="cmlg9OE0yk" role="37vLTJ">
              <node concept="Xjq3P" id="cmlg9OE2bz" role="2Oq$k0" />
              <node concept="2OwXpG" id="cmlg9OE0yn" role="2OqNvi">
                <ref role="2Oxat5" node="cmlg9ODYfQ" resolve="originIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="cmlg9ODYg0" role="37vLTx">
              <ref role="3cqZAo" node="cmlg9ODYcq" resolve="originIndex" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9ODYcq" role="3clF46">
        <property role="TrG5h" value="originIndex" />
        <node concept="3uibUv" id="cmlg9ODYcp" role="1tU5fm">
          <ref role="3uigEE" node="70Wv0dJhQb2" resolve="OriginIndex" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUS5TY" role="jymVt" />
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
              <ref role="37wK5l" node="7eGEHDlcF69" resolve="CodeRulesProgram" />
              <node concept="37vLTw" id="5rhZO$TZlPA" role="37wK5m">
                <ref role="3cqZAo" node="5rhZO$TZiL2" resolve="name" />
              </node>
              <node concept="2OqwBi" id="4$YN6Qv0luC" role="37wK5m">
                <node concept="37vLTw" id="4$YN6Qv0kG_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXULVBA" resolve="rulesLists" />
                </node>
                <node concept="26Dbio" id="4$YN6Qv0Bzz" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="cmlg9OE34h" role="37wK5m">
                <ref role="3cqZAo" node="cmlg9ODYfQ" resolve="originIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZio3" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUQoOL" role="jymVt">
      <property role="TrG5h" value="addRulesList" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="4MqhgXUQrZn" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="4MqhgXUQsf0" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
        </node>
      </node>
      <node concept="3cqZAl" id="4MqhgXUQoON" role="3clF45" />
      <node concept="3Tm1VV" id="4MqhgXUQoOO" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUQoOP" role="3clF47">
        <node concept="SfApY" id="4MqhgXUQtfM" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUQtfO" role="SfCbr">
            <node concept="1DcWWT" id="4MqhgXUQtEm" role="3cqZAp">
              <node concept="3clFbS" id="4MqhgXUQtEp" role="2LFqv$">
                <node concept="3SKdUt" id="2fZlvnrsIJv" role="3cqZAp">
                  <node concept="1PaTwC" id="2fZlvnrsIJw" role="3ndbpf">
                    <node concept="3oM_SD" id="2fZlvnrsIJx" role="1PaTwD">
                      <property role="3oM_SC" value="catch" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJy" role="1PaTwD">
                      <property role="3oM_SC" value="invalid" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJz" role="1PaTwD">
                      <property role="3oM_SC" value="constraints" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJ$" role="1PaTwD">
                      <property role="3oM_SC" value="early" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJ_" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJA" role="1PaTwD">
                      <property role="3oM_SC" value="avoid" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJB" role="1PaTwD">
                      <property role="3oM_SC" value="adding" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJC" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJD" role="1PaTwD">
                      <property role="3oM_SC" value="broken" />
                    </node>
                    <node concept="3oM_SD" id="2fZlvnrsIJE" role="1PaTwD">
                      <property role="3oM_SC" value="rule" />
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="2fZlvnrsIJF" role="3cqZAp">
                  <node concept="3clFbS" id="2fZlvnrsIJG" role="2LFqv$">
                    <node concept="3clFbF" id="2fZlvnrsIJH" role="3cqZAp">
                      <node concept="1rXfSq" id="2fZlvnrsIJI" role="3clFbG">
                        <ref role="37wK5l" node="7eGEHDlefwa" resolve="introduceConstraint" />
                        <node concept="37vLTw" id="2fZlvnrsIJJ" role="37wK5m">
                          <ref role="3cqZAo" node="2fZlvnrsIJK" resolve="item" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2fZlvnrsIJK" role="1Duv9x">
                    <property role="TrG5h" value="item" />
                    <node concept="3uibUv" id="2fZlvnrsIJL" role="1tU5fm">
                      <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2fZlvnrsIJM" role="1DdaDG">
                    <node concept="37vLTw" id="2fZlvnrsIJP" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUQtEq" resolve="rule" />
                    </node>
                    <node concept="liA8E" id="2fZlvnrsIJO" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Rule.all()" resolve="all" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4MqhgXUQtEq" role="1Duv9x">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="4MqhgXUQtEu" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
              <node concept="2OqwBi" id="4MqhgXUQtEv" role="1DdaDG">
                <node concept="37vLTw" id="4MqhgXUQtEw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUQrZn" resolve="handler" />
                </node>
                <node concept="liA8E" id="4MqhgXUQtEx" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~RulesList.rules()" resolve="rules" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUQtuw" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="4MqhgXUQtfP" role="TEbGg">
            <node concept="3cpWsn" id="4MqhgXUQtfR" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4MqhgXUQthM" role="1tU5fm">
                <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
              </node>
            </node>
            <node concept="3clFbS" id="4MqhgXUQtfV" role="TDEfX">
              <node concept="YS8fn" id="4MqhgXUQtUn" role="3cqZAp">
                <node concept="2ShNRf" id="4MqhgXUQtUo" role="YScLw">
                  <node concept="1pGfFk" id="4MqhgXUQtUp" role="2ShVmc">
                    <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="InvalidRuleException" />
                    <node concept="3cpWs3" id="4MqhgXUQtUq" role="37wK5m">
                      <node concept="2OqwBi" id="4MqhgXUQtUr" role="3uHU7w">
                        <node concept="37vLTw" id="4MqhgXUQtUs" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MqhgXUQtfR" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4MqhgXUQtUt" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4MqhgXUQtUu" role="3uHU7B">
                        <property role="Xl_RC" value="Invalid rule/constraint: " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4MqhgXUQtUv" role="37wK5m">
                      <ref role="3cqZAo" node="4MqhgXUQtfR" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUQuKx" role="3cqZAp">
          <node concept="2OqwBi" id="4MqhgXUQv8b" role="3clFbG">
            <node concept="37vLTw" id="4MqhgXUQuKv" role="2Oq$k0">
              <ref role="3cqZAo" node="4MqhgXULVBA" resolve="rulesLists" />
            </node>
            <node concept="TSZUe" id="4$YN6Qv1S83" role="2OqNvi">
              <node concept="37vLTw" id="4$YN6Qv1SkQ" role="25WWJ7">
                <ref role="3cqZAo" node="4MqhgXUQrZn" resolve="handler" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4MqhgXUQsXS" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="429xoypV6tp" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlefwa" role="jymVt">
      <property role="TrG5h" value="introduceConstraint" />
      <node concept="3cqZAl" id="7Oc59RSHdhK" role="3clF45" />
      <node concept="3clFbS" id="7eGEHDlefwc" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSHTjZ" role="3cqZAp">
          <node concept="1rXfSq" id="7Oc59RSHTjX" role="3clFbG">
            <ref role="37wK5l" node="7eGEHDldpbj" resolve="checkValidConstraint" />
            <node concept="37vLTw" id="7Oc59RSHTE1" role="37wK5m">
              <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5uFPQ7BH0cX" role="3cqZAp">
          <node concept="3clFbS" id="5uFPQ7BH0cZ" role="3clFbx">
            <node concept="3cpWs8" id="5uFPQ7BH1yI" role="3cqZAp">
              <node concept="3cpWsn" id="5uFPQ7BH1yJ" role="3cpWs9">
                <property role="TrG5h" value="cst" />
                <node concept="3uibUv" id="5uFPQ7BH1yG" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                </node>
                <node concept="10QFUN" id="5uFPQ7BH1yK" role="33vP2m">
                  <node concept="37vLTw" id="5uFPQ7BH1yL" role="10QFUP">
                    <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
                  </node>
                  <node concept="3uibUv" id="5uFPQ7BH1yM" role="10QFUM">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2fZlvnrsV9u" role="3cqZAp">
              <node concept="3clFbS" id="2fZlvnrsV9w" role="3clFbx">
                <node concept="3clFbF" id="7eGEHDleQCQ" role="3cqZAp">
                  <node concept="2OqwBi" id="7eGEHDleQIf" role="3clFbG">
                    <node concept="37vLTw" id="7eGEHDleQCP" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                    </node>
                    <node concept="liA8E" id="7eGEHDleQZ$" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="2OqwBi" id="7eGEHDleR63" role="37wK5m">
                        <node concept="37vLTw" id="5uFPQ7BH1JL" role="2Oq$k0">
                          <ref role="3cqZAo" node="5uFPQ7BH1yJ" resolve="cst" />
                        </node>
                        <node concept="liA8E" id="7eGEHDleRaS" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="78CwJJcWZ_9" role="37wK5m">
                        <node concept="37vLTw" id="78CwJJcWZx1" role="2Oq$k0">
                          <ref role="3cqZAo" node="5uFPQ7BH1yJ" resolve="cst" />
                        </node>
                        <node concept="liA8E" id="78CwJJcWZFx" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Constraint.argumentTypes()" resolve="argumentTypes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2fZlvnrsWGQ" role="3clFbw">
                <node concept="2OqwBi" id="2fZlvnrsWGS" role="3fr31v">
                  <node concept="37vLTw" id="2fZlvnrsWGT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                  </node>
                  <node concept="liA8E" id="2fZlvnrsWGU" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                    <node concept="2OqwBi" id="2fZlvnrsWZE" role="37wK5m">
                      <node concept="37vLTw" id="2fZlvnrsWZF" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BH1yJ" resolve="cst" />
                      </node>
                      <node concept="liA8E" id="2fZlvnrsWZG" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5uFPQ7BH0Nf" role="3clFbw">
            <node concept="3uibUv" id="5uFPQ7BH0W3" role="2ZW6by">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
            <node concept="37vLTw" id="5uFPQ7BH0oU" role="2ZW6bz">
              <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eGEHDleg3E" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="5uFPQ7BGZBH" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSHLFV" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
      </node>
      <node concept="3Tm6S6" id="2fZlvnrs_z0" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2pvEdquu$2W" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDldpbj" role="jymVt">
      <property role="TrG5h" value="checkValidConstraint" />
      <node concept="3cqZAl" id="7Oc59RSHNKF" role="3clF45" />
      <node concept="3Tm6S6" id="2fZlvnrsAHp" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDldpbn" role="3clF47">
        <node concept="3clFbJ" id="5uFPQ7BEi6d" role="3cqZAp">
          <node concept="3clFbS" id="5uFPQ7BEi6f" role="3clFbx">
            <node concept="3cpWs8" id="5uFPQ7BEo4v" role="3cqZAp">
              <node concept="3cpWsn" id="5uFPQ7BEo4w" role="3cpWs9">
                <property role="TrG5h" value="cst" />
                <node concept="3uibUv" id="5uFPQ7BEo4s" role="1tU5fm">
                  <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                </node>
                <node concept="10QFUN" id="5uFPQ7BEo4x" role="33vP2m">
                  <node concept="37vLTw" id="5uFPQ7BEo4y" role="10QFUP">
                    <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
                  </node>
                  <node concept="3uibUv" id="5uFPQ7BEo4z" role="10QFUM">
                    <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7eGEHDlg3RR" role="3cqZAp">
              <node concept="3cpWsn" id="7eGEHDlg3RS" role="3cpWs9">
                <property role="TrG5h" value="matches" />
                <node concept="10P_77" id="7eGEHDlg3RE" role="1tU5fm" />
                <node concept="3clFbC" id="7eGEHDlg3RT" role="33vP2m">
                  <node concept="2OqwBi" id="30XHGaOWf5H" role="3uHU7w">
                    <node concept="2OqwBi" id="7eGEHDlg3RU" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEp2v" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                      </node>
                      <node concept="liA8E" id="30XHGaOWeZv" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~AndItem.arguments()" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="30XHGaOWfgx" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7eGEHDlg3RX" role="3uHU7B">
                    <node concept="2OqwBi" id="30XHGaP5pkH" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEoPo" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                      </node>
                      <node concept="liA8E" id="30XHGaP5pQG" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7eGEHDlg3RZ" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Symbol.arity()" resolve="arity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7eGEHDlg4M0" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="7eGEHDlg4M3" role="3clFbx">
                <node concept="YS8fn" id="7Oc59RSHOPS" role="3cqZAp">
                  <node concept="2ShNRf" id="7Oc59RSHPbM" role="YScLw">
                    <node concept="1pGfFk" id="7Oc59RSHPxc" role="2ShVmc">
                      <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                      <node concept="3cpWs3" id="7Oc59RSHQew" role="37wK5m">
                        <node concept="2YIFZM" id="7Oc59RSHQex" role="3uHU7w">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                          <node concept="2OqwBi" id="7Oc59RSHQey" role="37wK5m">
                            <node concept="37vLTw" id="5uFPQ7BEpeQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                            </node>
                            <node concept="liA8E" id="7Oc59RSHQe$" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7Oc59RSHQe_" role="3uHU7B">
                          <property role="Xl_RC" value="arity mismatch for " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7eGEHDlg51Y" role="3clFbw">
                <node concept="37vLTw" id="7eGEHDlg57r" role="3fr31v">
                  <ref role="3cqZAo" node="7eGEHDlg3RS" resolve="matches" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1zN1RIln3l9" role="3cqZAp" />
            <node concept="3clFbJ" id="7eGEHDleMeh" role="3cqZAp">
              <node concept="3clFbS" id="7eGEHDleMei" role="3clFbx">
                <node concept="3SKdUt" id="Vlk31yQOwf" role="3cqZAp">
                  <node concept="1PaTwC" id="589APehYxOS" role="3ndbpf">
                    <node concept="3oM_SD" id="589APehYxOT" role="1PaTwD">
                      <property role="3oM_SC" value="FIXME:" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOU" role="1PaTwD">
                      <property role="3oM_SC" value="introduce" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOV" role="1PaTwD">
                      <property role="3oM_SC" value="RT" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOW" role="1PaTwD">
                      <property role="3oM_SC" value="types" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOX" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOY" role="1PaTwD">
                      <property role="3oM_SC" value="LateExpression," />
                    </node>
                    <node concept="3oM_SD" id="589APehYxOZ" role="1PaTwD">
                      <property role="3oM_SC" value="reinstate" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxP0" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="589APehYxP1" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="Vlk31yQOnf" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3clFbJ" id="1zN1RIlmYBW" role="8Wnug">
                    <node concept="3clFbS" id="1zN1RIlmYBY" role="3clFbx">
                      <node concept="3clFbH" id="78CwJJcX4mm" role="3cqZAp" />
                      <node concept="YS8fn" id="1zN1RIln3iC" role="3cqZAp">
                        <node concept="2ShNRf" id="1zN1RIln3iD" role="YScLw">
                          <node concept="1pGfFk" id="1zN1RIln3iE" role="2ShVmc">
                            <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                            <node concept="3cpWs3" id="4sSe4$prVxK" role="37wK5m">
                              <node concept="3cpWs3" id="4sSe4$prSVy" role="3uHU7B">
                                <node concept="3cpWs3" id="4sSe4$prRB1" role="3uHU7B">
                                  <node concept="3cpWs3" id="4sSe4$prPGF" role="3uHU7B">
                                    <node concept="3cpWs3" id="1zN1RIln3iF" role="3uHU7B">
                                      <node concept="Xl_RD" id="1zN1RIln3iK" role="3uHU7B">
                                        <property role="Xl_RC" value="argument type mismatch for " />
                                      </node>
                                      <node concept="2YIFZM" id="1zN1RIln3iG" role="3uHU7w">
                                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                                        <node concept="2OqwBi" id="1zN1RIln3iH" role="37wK5m">
                                          <node concept="37vLTw" id="5uFPQ7BEsjZ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                          </node>
                                          <node concept="liA8E" id="1zN1RIln3iJ" role="2OqNvi">
                                            <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="4sSe4$prQnq" role="3uHU7w">
                                      <property role="Xl_RC" value=": " />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="4sSe4$prSgv" role="3uHU7w">
                                    <node concept="37vLTw" id="4sSe4$prSgw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                    </node>
                                    <node concept="liA8E" id="4sSe4$prSgx" role="2OqNvi">
                                      <ref role="37wK5l" to="av0y:~Constraint.argumentTypes()" resolve="argumentTypes" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="4sSe4$prSVN" role="3uHU7w">
                                  <property role="Xl_RC" value=" != " />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4sSe4$prWcR" role="3uHU7w">
                                <node concept="37vLTw" id="4sSe4$prWcS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                                </node>
                                <node concept="liA8E" id="4sSe4$prWcT" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                  <node concept="2OqwBi" id="4sSe4$prWcU" role="37wK5m">
                                    <node concept="37vLTw" id="4sSe4$prWcV" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                    </node>
                                    <node concept="liA8E" id="4sSe4$prWcW" role="2OqNvi">
                                      <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="1zN1RIlmYCN" role="3clFbw">
                      <node concept="2OqwBi" id="78CwJJcX3XB" role="3fr31v">
                        <node concept="2OqwBi" id="78CwJJcX3Qz" role="2Oq$k0">
                          <node concept="37vLTw" id="78CwJJcX3Pp" role="2Oq$k0">
                            <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                          </node>
                          <node concept="liA8E" id="78CwJJcX3RX" role="2OqNvi">
                            <ref role="37wK5l" to="av0y:~Constraint.argumentTypes()" resolve="argumentTypes" />
                          </node>
                        </node>
                        <node concept="liA8E" id="78CwJJcX49I" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.equals(java.lang.Object)" resolve="equals" />
                          <node concept="2OqwBi" id="30XHGaP5H3s" role="37wK5m">
                            <node concept="37vLTw" id="30XHGaP5H3t" role="2Oq$k0">
                              <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                            </node>
                            <node concept="liA8E" id="30XHGaP5H3u" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                              <node concept="2OqwBi" id="30XHGaP5H3v" role="37wK5m">
                                <node concept="37vLTw" id="5uFPQ7BEs2s" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                </node>
                                <node concept="liA8E" id="30XHGaP5H3x" role="2OqNvi">
                                  <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
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
              <node concept="2OqwBi" id="7eGEHDleL6q" role="3clFbw">
                <node concept="37vLTw" id="7eGEHDleIbQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                </node>
                <node concept="liA8E" id="7eGEHDleLnR" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                  <node concept="2OqwBi" id="7eGEHDleLtw" role="37wK5m">
                    <node concept="37vLTw" id="5uFPQ7BEppf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                    </node>
                    <node concept="liA8E" id="7eGEHDleLzH" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5uFPQ7BEtME" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="5uFPQ7BEjM3" role="3clFbw">
            <node concept="3uibUv" id="5uFPQ7BEk3l" role="2ZW6by">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
            <node concept="37vLTw" id="5uFPQ7BEjxn" role="2ZW6bz">
              <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
            </node>
          </node>
          <node concept="3eNFk2" id="5uFPQ7BEsMn" role="3eNLev">
            <node concept="2ZW3vV" id="5uFPQ7BEtf6" role="3eO9$A">
              <node concept="3uibUv" id="5uFPQ7BEtlm" role="2ZW6by">
                <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
              </node>
              <node concept="37vLTw" id="5uFPQ7BEt9u" role="2ZW6bz">
                <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
              </node>
            </node>
            <node concept="3clFbS" id="5uFPQ7BEsMp" role="3eOfB_">
              <node concept="3cpWs8" id="5uFPQ7BEu6y" role="3cqZAp">
                <node concept="3cpWsn" id="5uFPQ7BEu6z" role="3cpWs9">
                  <property role="TrG5h" value="pred" />
                  <node concept="3uibUv" id="5uFPQ7BEu6w" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                  </node>
                  <node concept="10QFUN" id="5uFPQ7BEu6$" role="33vP2m">
                    <node concept="37vLTw" id="5uFPQ7BEu6_" role="10QFUP">
                      <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
                    </node>
                    <node concept="3uibUv" id="5uFPQ7BEu6A" role="10QFUM">
                      <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2pvEdquuzfg" role="3cqZAp">
                <property role="TyiWK" value="true" />
                <property role="TyiWL" value="false" />
                <node concept="3clFbS" id="2pvEdquuzfh" role="3clFbx">
                  <node concept="YS8fn" id="2pvEdquuFKC" role="3cqZAp">
                    <node concept="2ShNRf" id="2pvEdquuFKD" role="YScLw">
                      <node concept="1pGfFk" id="2pvEdquuFKE" role="2ShVmc">
                        <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                        <node concept="3cpWs3" id="2pvEdquuFKF" role="37wK5m">
                          <node concept="2YIFZM" id="2pvEdquuFKG" role="3uHU7w">
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="2OqwBi" id="2pvEdquuFKH" role="37wK5m">
                              <node concept="37vLTw" id="5uFPQ7BEvpY" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                              </node>
                              <node concept="liA8E" id="2pvEdquuFKJ" role="2OqNvi">
                                <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2pvEdquuFKK" role="3uHU7B">
                            <property role="Xl_RC" value="arity mismatch for " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2pvEdquuFm2" role="3clFbw">
                  <node concept="2OqwBi" id="30XHGaOWeKw" role="3uHU7B">
                    <node concept="2OqwBi" id="2pvEdquuFmc" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEvh9" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                      </node>
                      <node concept="liA8E" id="30XHGaOWeEi" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~AndItem.arguments()" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="30XHGaOWeVo" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2pvEdquuFm4" role="3uHU7w">
                    <node concept="2OqwBi" id="2pvEdquuFm5" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEvly" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                      </node>
                      <node concept="liA8E" id="2pvEdquuFma" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2pvEdquuFmb" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Symbol.arity()" resolve="arity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5uFPQ7BEhJz" role="3cqZAp" />
        <node concept="1DcWWT" id="2KVRGowW$Kl" role="3cqZAp">
          <node concept="3clFbS" id="2KVRGowW$Km" role="2LFqv$">
            <node concept="3clFbJ" id="2KVRGowW_mo" role="3cqZAp">
              <node concept="3clFbS" id="2KVRGowW_mp" role="3clFbx">
                <node concept="YS8fn" id="2KVRGowW_uZ" role="3cqZAp">
                  <node concept="2ShNRf" id="2KVRGowW_w4" role="YScLw">
                    <node concept="1pGfFk" id="2KVRGowWD9N" role="2ShVmc">
                      <ref role="37wK5l" to="av0y:~InvalidConstraintException.&lt;init&gt;(java.lang.String)" resolve="InvalidConstraintException" />
                      <node concept="3cpWs3" id="2KVRGowWD$u" role="37wK5m">
                        <node concept="2YIFZM" id="2KVRGowWDMj" role="3uHU7w">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="2KVRGowWE4s" role="37wK5m">
                            <node concept="37vLTw" id="2KVRGowWDWb" role="2Oq$k0">
                              <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
                            </node>
                            <node concept="liA8E" id="2KVRGowWEea" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~AndItem.symbol()" resolve="symbol" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2KVRGowWDb8" role="3uHU7B">
                          <property role="Xl_RC" value="argument is null in " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5uFPQ7BH4xL" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="2KVRGowW_pF" role="3clFbw">
                <node concept="10Nm6u" id="2KVRGowW_qV" role="3uHU7w" />
                <node concept="37vLTw" id="2KVRGowW_ol" role="3uHU7B">
                  <ref role="3cqZAo" node="2KVRGowW$Kp" resolve="arg" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2KVRGowW$Kp" role="1Duv9x">
            <property role="TrG5h" value="arg" />
            <node concept="3uibUv" id="2KVRGowW$Kt" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="2OqwBi" id="2KVRGowW$Ku" role="1DdaDG">
            <node concept="37vLTw" id="2KVRGowW$Kv" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
            </node>
            <node concept="liA8E" id="2KVRGowW$Kw" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~AndItem.arguments()" resolve="arguments" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eGEHDldphF" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="5uFPQ7BEg4K" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSHN4l" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDldnO1" role="jymVt" />
    <node concept="312cEg" id="7eGEHDley5W" role="jymVt">
      <property role="TrG5h" value="constraintArgTypes" />
      <node concept="3Tm6S6" id="7eGEHDley5X" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDley91" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="30XHGaP58dI" role="11_B2D">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
        <node concept="3uibUv" id="78CwJJcX046" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="78CwJJcX0tv" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="78CwJJcX1kP" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7eGEHDleyjJ" role="33vP2m">
        <node concept="1pGfFk" id="7eGEHDle_f8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="30XHGaP58v0" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
          </node>
          <node concept="3uibUv" id="78CwJJcX2Zu" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="30XHGaP5wzw" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="30XHGaP5wzx" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXULVBA" role="jymVt">
      <property role="TrG5h" value="rulesLists" />
      <node concept="3Tm6S6" id="4MqhgXULVBB" role="1B3o_S" />
      <node concept="_YKpA" id="4$YN6Qv0idE" role="1tU5fm">
        <node concept="3uibUv" id="4$YN6Qv0idG" role="_ZDj9">
          <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
        </node>
      </node>
      <node concept="2ShNRf" id="4$YN6Qv0kjy" role="33vP2m">
        <node concept="Tc6Ow" id="4$YN6Qv0kjj" role="2ShVmc">
          <node concept="3uibUv" id="4$YN6Qv0kjk" role="HW$YZ">
            <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4$YN6Quy2aJ" role="1B3o_S" />
    <node concept="312cEg" id="cmlg9ODYfQ" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <node concept="3Tm6S6" id="cmlg9ODYfR" role="1B3o_S" />
      <node concept="3uibUv" id="cmlg9ODYfT" role="1tU5fm">
        <ref role="3uigEE" node="70Wv0dJhQb2" resolve="OriginIndex" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6nFpYlu02jD">
    <property role="TrG5h" value="UpdatesRecorder" />
    <node concept="2tJIrI" id="6nFpYlu02mz" role="jymVt" />
    <node concept="3clFbW" id="6nFpYlu7fpM" role="jymVt">
      <node concept="37vLTG" id="6nFpYlu7giF" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="6nFpYlu7giG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6nFpYlu7giH" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="3Tqbb2" id="6nFpYlu7giI" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6nFpYlu7fpO" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlu7fpP" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu7fpQ" role="3clF47">
        <node concept="3clFbF" id="6YGKjaPwvlA" role="3cqZAp">
          <node concept="37vLTI" id="6YGKjaPwvlC" role="3clFbG">
            <node concept="2OqwBi" id="6YGKjaPw_Bk" role="37vLTJ">
              <node concept="Xjq3P" id="6YGKjaPw_NL" role="2Oq$k0" />
              <node concept="2OwXpG" id="6YGKjaPw_Bn" role="2OqNvi">
                <ref role="2Oxat5" node="6YGKjaPwvly" resolve="model" />
              </node>
            </node>
            <node concept="37vLTw" id="6YGKjaPwvlG" role="37vLTx">
              <ref role="3cqZAo" node="6nFpYlu7giF" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YGKjaPwyUY" role="3cqZAp">
          <node concept="37vLTI" id="6YGKjaPwyV0" role="3clFbG">
            <node concept="2OqwBi" id="6YGKjaPw_Qt" role="37vLTJ">
              <node concept="Xjq3P" id="6YGKjaPw_S6" role="2Oq$k0" />
              <node concept="2OwXpG" id="6YGKjaPw_Qw" role="2OqNvi">
                <ref role="2Oxat5" node="6YGKjaPwyUU" resolve="unit" />
              </node>
            </node>
            <node concept="37vLTw" id="6YGKjaPwyV4" role="37vLTx">
              <ref role="3cqZAo" node="6nFpYlu7giH" resolve="unit" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu7gKO" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu7hTH" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="6nFpYlu7hTJ" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlu7hTK" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu7hTL" role="3clF47">
        <node concept="3clFbF" id="6nFpYlu7kwf" role="3cqZAp">
          <node concept="1rXfSq" id="6nFpYlu7kwe" role="3clFbG">
            <ref role="37wK5l" node="3u5wJte1ac" resolve="stopTrackingChanges" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu7eAJ" role="jymVt" />
    <node concept="3clFb_" id="6YGKjaPwkND" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3cqZAl" id="6YGKjaPwkNE" role="3clF45" />
      <node concept="3Tm1VV" id="6YGKjaPwkNF" role="1B3o_S" />
      <node concept="3clFbS" id="6YGKjaPwkNG" role="3clF47">
        <node concept="3clFbJ" id="4Zz6A5Ih2MG" role="3cqZAp">
          <node concept="3clFbS" id="4Zz6A5Ih2MI" role="3clFbx">
            <node concept="3clFbF" id="6nFpYlu7gv$" role="3cqZAp">
              <node concept="1rXfSq" id="6nFpYlu7gvz" role="3clFbG">
                <ref role="37wK5l" node="3u5wJtdQ7a" resolve="startTrackingChanges" />
                <node concept="37vLTw" id="6YGKjaPwASZ" role="37wK5m">
                  <ref role="3cqZAo" node="6YGKjaPwvly" resolve="model" />
                </node>
                <node concept="37vLTw" id="6YGKjaPwB8m" role="37wK5m">
                  <ref role="3cqZAo" node="6YGKjaPwyUU" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4Zz6A5Ih39Q" role="3clFbw">
            <node concept="3y3z36" id="4Zz6A5Ih3mO" role="3uHU7w">
              <node concept="10Nm6u" id="4Zz6A5Ih3tG" role="3uHU7w" />
              <node concept="37vLTw" id="6YGKjaPwAEI" role="3uHU7B">
                <ref role="3cqZAo" node="6YGKjaPwyUU" resolve="unit" />
              </node>
            </node>
            <node concept="3y3z36" id="4Zz6A5Ih31f" role="3uHU7B">
              <node concept="37vLTw" id="6YGKjaPwAsJ" role="3uHU7B">
                <ref role="3cqZAo" node="6YGKjaPwvly" resolve="model" />
              </node>
              <node concept="10Nm6u" id="4Zz6A5Ih37Y" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YGKjaPwkNC" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu02nI" role="jymVt">
      <property role="TrG5h" value="recordRequirements" />
      <node concept="37vLTG" id="6nFpYlu02rL" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="1ZiI2IC50oP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6nFpYlu02t7" role="3clF46">
        <property role="TrG5h" value="requirements" />
        <node concept="A3Dl8" id="6nFpYlu0Akh" role="1tU5fm">
          <node concept="3Tqbb2" id="6nFpYlu0Atb" role="A3Ik2" />
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYlu02nK" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlu02nL" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu02nM" role="3clF47">
        <node concept="1DcWWT" id="6nFpYlu4aqa" role="3cqZAp">
          <node concept="3clFbS" id="6nFpYlu4aqd" role="2LFqv$">
            <node concept="3clFbF" id="6nFpYlu4aBM" role="3cqZAp">
              <node concept="2OqwBi" id="6nFpYlu4biz" role="3clFbG">
                <node concept="1rXfSq" id="6nFpYlu4aBL" role="2Oq$k0">
                  <ref role="37wK5l" node="6nFpYlu3KpJ" resolve="sourcesOf" />
                  <node concept="37vLTw" id="6nFpYlu4aFl" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYlu4aqe" resolve="req" />
                  </node>
                </node>
                <node concept="TSZUe" id="6nFpYlu4bNY" role="2OqNvi">
                  <node concept="37vLTw" id="6nFpYlu4caT" role="25WWJ7">
                    <ref role="3cqZAo" node="6nFpYlu02rL" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6nFpYlu4aqe" role="1Duv9x">
            <property role="TrG5h" value="req" />
            <node concept="3Tqbb2" id="6nFpYlu4aqi" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="6nFpYlu4aqj" role="1DdaDG">
            <ref role="3cqZAo" node="6nFpYlu02t7" resolve="requirements" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="721IDwqGKlJ" role="lGtFl">
        <node concept="TZ5HA" id="721IDwqGKlK" role="TZ5H$">
          <node concept="1dT_AC" id="721IDwqGKlL" role="1dT_Ay">
            <property role="1dT_AB" value="Record requirements for a source node." />
          </node>
        </node>
        <node concept="TZ5HA" id="721IDwqGU6_" role="TZ5H$">
          <node concept="1dT_AC" id="721IDwqGU6A" role="1dT_Ay">
            <property role="1dT_AB" value="Updates internally maintained map (required -&gt; source). " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlucPih" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlucRT5" role="jymVt">
      <property role="TrG5h" value="recordUpdate" />
      <node concept="37vLTG" id="6nFpYlud3F7" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="1ZiI2IC52UC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6nFpYlud4G6" role="3clF46">
        <property role="TrG5h" value="update" />
        <node concept="16syzq" id="6nFpYludYO1" role="1tU5fm">
          <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYlucRT7" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlucRT8" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlucRT9" role="3clF47">
        <node concept="3clFbF" id="6nFpYludYWM" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYludZZm" role="3clFbG">
            <node concept="1rXfSq" id="6nFpYludZ61" role="2Oq$k0">
              <ref role="37wK5l" node="6nFpYludzRO" resolve="updatesOf" />
              <node concept="37vLTw" id="6nFpYludZe$" role="37wK5m">
                <ref role="3cqZAo" node="6nFpYlud3F7" resolve="source" />
              </node>
            </node>
            <node concept="TSZUe" id="6nFpYlue0Dx" role="2OqNvi">
              <node concept="37vLTw" id="6nFpYlue15a" role="25WWJ7">
                <ref role="3cqZAo" node="6nFpYlud4G6" resolve="update" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="721IDwqGU93" role="lGtFl">
        <node concept="TZ5HA" id="721IDwqGU94" role="TZ5H$">
          <node concept="1dT_AC" id="721IDwqGU95" role="1dT_Ay">
            <property role="1dT_AB" value="Add update to the list of updates for source node. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlufd2K" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlue$oB" role="jymVt">
      <property role="TrG5h" value="forEachUpdate" />
      <node concept="37vLTG" id="6nFpYluT3XT" role="3clF46">
        <property role="TrG5h" value="srcNodes" />
        <node concept="3vKaQO" id="6nFpYluT6Ha" role="1tU5fm">
          <node concept="3Tqbb2" id="1ZiI2IC5kiS" role="3O5elw" />
        </node>
      </node>
      <node concept="37vLTG" id="6nFpYlueEY7" role="3clF46">
        <property role="TrG5h" value="proc" />
        <node concept="1ajhzC" id="6nFpYlueHef" role="1tU5fm">
          <node concept="16syzq" id="6nFpYlueU1q" role="1ajw0F">
            <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
          </node>
          <node concept="3cqZAl" id="6nFpYlueUbX" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYlue$oD" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlue$oE" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlue$oF" role="3clF47">
        <node concept="1DcWWT" id="6nFpYlueVGs" role="3cqZAp">
          <node concept="3clFbS" id="6nFpYlueVGv" role="2LFqv$">
            <node concept="3cpWs8" id="6nFpYlueYAi" role="3cqZAp">
              <node concept="3cpWsn" id="6nFpYlueYAj" role="3cpWs9">
                <property role="TrG5h" value="updates" />
                <node concept="_YKpA" id="6nFpYlueY$a" role="1tU5fm">
                  <node concept="16syzq" id="6nFpYlueY$d" role="_ZDj9">
                    <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6nFpYlueYAk" role="33vP2m">
                  <node concept="37vLTw" id="6nFpYlueYAl" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nFpYlud9Ge" resolve="source2updates" />
                  </node>
                  <node concept="kI3uX" id="6nFpYlueYAm" role="2OqNvi">
                    <node concept="37vLTw" id="6nFpYlueYAn" role="kIiFs">
                      <ref role="3cqZAo" node="6nFpYlueVGw" resolve="n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6nFpYluf3g3" role="3cqZAp">
              <node concept="3clFbS" id="6nFpYluf3gx" role="3clFbx">
                <node concept="1DcWWT" id="6nFpYluf4Br" role="3cqZAp">
                  <node concept="3clFbS" id="6nFpYluf4Bu" role="2LFqv$">
                    <node concept="3clFbF" id="6nFpYluf5ME" role="3cqZAp">
                      <node concept="2Sg_IR" id="6nFpYluf60u" role="3clFbG">
                        <node concept="37vLTw" id="6nFpYluf6ft" role="2SgHGx">
                          <ref role="3cqZAo" node="6nFpYluf4Bv" resolve="u" />
                        </node>
                        <node concept="37vLTw" id="6nFpYluf60v" role="2SgG2M">
                          <ref role="3cqZAo" node="6nFpYlueEY7" resolve="proc" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="6nFpYluf4Bv" role="1Duv9x">
                    <property role="TrG5h" value="u" />
                    <node concept="16syzq" id="6nFpYluf4Bz" role="1tU5fm">
                      <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6nFpYluf4B$" role="1DdaDG">
                    <ref role="3cqZAo" node="6nFpYlueYAj" resolve="updates" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6nFpYluf45s" role="3clFbw">
                <node concept="10Nm6u" id="6nFpYluf4wi" role="3uHU7w" />
                <node concept="37vLTw" id="6nFpYlueYAo" role="3uHU7B">
                  <ref role="3cqZAo" node="6nFpYlueYAj" resolve="updates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6nFpYlueVGw" role="1Duv9x">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="1ZiI2IC5v73" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="6nFpYluTkDq" role="1DdaDG">
            <ref role="3cqZAo" node="6nFpYluT3XT" resolve="srcNodes" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6nFpYlufgr1" role="lGtFl">
        <node concept="TZ5HA" id="6nFpYlufgr2" role="TZ5H$">
          <node concept="1dT_AC" id="6nFpYlufgr3" role="1dT_Ay">
            <property role="1dT_AB" value="For all elements in " />
          </node>
          <node concept="1dT_AA" id="6nFpYluTb8Y" role="1dT_Ay">
            <node concept="VVOAv" id="6nFpYluTb9k" role="qph3F">
              <node concept="TZ5HA" id="6nFpYluTb9m" role="2Xj1qM">
                <node concept="1dT_AC" id="6nFpYluTb9E" role="1dT_Ay">
                  <property role="1dT_AB" value="srcNodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="6nFpYluTb8X" role="1dT_Ay">
            <property role="1dT_AB" value=" the set of collected update objects is recovered. " />
          </node>
        </node>
        <node concept="TZ5HA" id="6nFpYlufiVe" role="TZ5H$">
          <node concept="1dT_AC" id="6nFpYlufiVf" role="1dT_Ay">
            <property role="1dT_AB" value="The function " />
          </node>
          <node concept="1dT_AA" id="6nFpYlufiWR" role="1dT_Ay">
            <node concept="VVOAv" id="6nFpYlufiX5" role="qph3F">
              <node concept="TZ5HA" id="6nFpYlufiX7" role="2Xj1qM">
                <node concept="1dT_AC" id="6nFpYlufiXj" role="1dT_Ay">
                  <property role="1dT_AB" value="proc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="6nFpYlufiWQ" role="1dT_Ay">
            <property role="1dT_AB" value=" is invoked for every such object." />
          </node>
        </node>
        <node concept="TZ5HA" id="6nFpYlufmn_" role="TZ5H$">
          <node concept="1dT_AC" id="6nFpYlufmnA" role="1dT_Ay">
            <property role="1dT_AB" value="All invalidated data is cleared." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu7kHM" role="jymVt" />
    <node concept="3clFb_" id="31_3CqJfPFl" role="jymVt">
      <property role="TrG5h" value="forAllFresh" />
      <node concept="37vLTG" id="31_3CqJgdi5" role="3clF46">
        <property role="TrG5h" value="srcNodes" />
        <node concept="A3Dl8" id="31_3CqJglvD" role="1tU5fm">
          <node concept="3Tqbb2" id="31_3CqJglMR" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="31_3CqJgmzB" role="3clF46">
        <property role="TrG5h" value="proc" />
        <node concept="1ajhzC" id="31_3CqJgplz" role="1tU5fm">
          <node concept="3cqZAl" id="31_3CqJgqf1" role="1ajl9A" />
          <node concept="2I9FWS" id="31_3CqJgpVS" role="1ajw0F" />
        </node>
      </node>
      <node concept="3cqZAl" id="31_3CqJfPFn" role="3clF45" />
      <node concept="3Tm1VV" id="31_3CqJfPFo" role="1B3o_S" />
      <node concept="3clFbS" id="31_3CqJfPFp" role="3clF47">
        <node concept="3cpWs8" id="31_3CqJgBGo" role="3cqZAp">
          <node concept="3cpWsn" id="31_3CqJgBGp" role="3cpWs9">
            <property role="TrG5h" value="fresh" />
            <node concept="_YKpA" id="31_3CqJgBvx" role="1tU5fm">
              <node concept="3Tqbb2" id="31_3CqJgBv$" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="31_3CqJgBGq" role="33vP2m">
              <node concept="Tc6Ow" id="31_3CqJgBGr" role="2ShVmc">
                <node concept="3Tqbb2" id="31_3CqJgBGs" role="HW$YZ" />
                <node concept="37vLTw" id="31_3CqJgBGt" role="I$8f6">
                  <ref role="3cqZAo" node="31_3CqJgdi5" resolve="srcNodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="31_3CqJgqMB" role="3cqZAp">
          <node concept="2OqwBi" id="31_3CqJgtZQ" role="3clFbG">
            <node concept="37vLTw" id="31_3CqJgENO" role="2Oq$k0">
              <ref role="3cqZAo" node="31_3CqJgBGp" resolve="fresh" />
            </node>
            <node concept="1kEaZ2" id="31_3CqJguvc" role="2OqNvi">
              <node concept="2OqwBi" id="31_3CqJgwCu" role="25WWJ7">
                <node concept="37vLTw" id="31_3CqJgv$f" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYlud9Ge" resolve="source2updates" />
                </node>
                <node concept="3lbrtF" id="31_3CqJgyAr" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="31_3CqJg$fY" role="3cqZAp">
          <node concept="2Sg_IR" id="31_3CqJg$A5" role="3clFbG">
            <node concept="37vLTw" id="31_3CqJg$A6" role="2SgG2M">
              <ref role="3cqZAo" node="31_3CqJgmzB" resolve="proc" />
            </node>
            <node concept="37vLTw" id="31_3CqJgEYM" role="2SgHGx">
              <ref role="3cqZAo" node="31_3CqJgBGp" resolve="fresh" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="721IDwqI68d" role="lGtFl">
        <node concept="TZ5HA" id="721IDwqI68e" role="TZ5H$">
          <node concept="1dT_AC" id="721IDwqI68f" role="1dT_Ay">
            <property role="1dT_AB" value="From the set of nodes in " />
          </node>
          <node concept="1dT_AA" id="721IDwqIbwk" role="1dT_Ay">
            <node concept="VVOAv" id="721IDwqIbwE" role="qph3F">
              <node concept="TZ5HA" id="721IDwqIbwG" role="2Xj1qM">
                <node concept="1dT_AC" id="721IDwqIbx0" role="1dT_Ay">
                  <property role="1dT_AB" value="srcNodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="721IDwqIbwj" role="1dT_Ay">
            <property role="1dT_AB" value=" parameter all source nodes for which" />
          </node>
        </node>
        <node concept="TZ5HA" id="721IDwqIbDU" role="TZ5H$">
          <node concept="1dT_AC" id="721IDwqIbDV" role="1dT_Ay">
            <property role="1dT_AB" value="any update has been recorded are removed." />
          </node>
        </node>
        <node concept="TZ5HA" id="5Qx6_652psI" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_652psJ" role="1dT_Ay">
            <property role="1dT_AB" value="The function " />
          </node>
          <node concept="1dT_AA" id="5Qx6_652ptA" role="1dT_Ay">
            <node concept="VVOAv" id="5Qx6_652ptO" role="qph3F">
              <node concept="TZ5HA" id="5Qx6_652ptQ" role="2Xj1qM">
                <node concept="1dT_AC" id="5Qx6_652pu2" role="1dT_Ay">
                  <property role="1dT_AB" value="proc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Qx6_652pt_" role="1dT_Ay">
            <property role="1dT_AB" value=" is then invoked with the resulting list of &quot;fresh&quot; nodes." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYluexMi" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlv9QQj" role="jymVt">
      <property role="TrG5h" value="forEachInvalidated" />
      <node concept="37vLTG" id="6nFpYlvah24" role="3clF46">
        <property role="TrG5h" value="proc" />
        <node concept="1ajhzC" id="6nFpYlvajju" role="1tU5fm">
          <node concept="3Tqbb2" id="6nFpYlvcA_M" role="1ajw0F" />
          <node concept="2I9FWS" id="6nFpYlvamc0" role="1ajw0F" />
          <node concept="3cqZAl" id="6nFpYlvamkw" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYlv9QQl" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlv9QQm" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlv9QQn" role="3clF47">
        <node concept="1DcWWT" id="6nFpYlvaCXw" role="3cqZAp">
          <node concept="3clFbS" id="6nFpYlvaCXz" role="2LFqv$">
            <node concept="3cpWs8" id="6nFpYlvaFyX" role="3cqZAp">
              <node concept="3cpWsn" id="6nFpYlvaFyY" role="3cpWs9">
                <property role="TrG5h" value="invalidated" />
                <node concept="2I9FWS" id="6nFpYlvaFx5" role="1tU5fm" />
                <node concept="2OqwBi" id="6nFpYlvaFyZ" role="33vP2m">
                  <node concept="37vLTw" id="6nFpYlvcMx4" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nFpYlv3d4Y" resolve="origin2invList" />
                  </node>
                  <node concept="kI3uX" id="6nFpYlvaFz1" role="2OqNvi">
                    <node concept="37vLTw" id="6nFpYlvaFz2" role="kIiFs">
                      <ref role="3cqZAo" node="6nFpYlvaCX$" resolve="orig" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6nFpYlvaFP2" role="3cqZAp">
              <node concept="2Sg_IR" id="6nFpYlvaFVh" role="3clFbG">
                <node concept="37vLTw" id="6nFpYlvaFVi" role="2SgG2M">
                  <ref role="3cqZAo" node="6nFpYlvah24" resolve="proc" />
                </node>
                <node concept="37vLTw" id="6nFpYlvaG0y" role="2SgHGx">
                  <ref role="3cqZAo" node="6nFpYlvaCX$" resolve="orig" />
                </node>
                <node concept="37vLTw" id="6nFpYlvaG8e" role="2SgHGx">
                  <ref role="3cqZAo" node="6nFpYlvaFyY" resolve="invalidated" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6nFpYlvaCX$" role="1Duv9x">
            <property role="TrG5h" value="orig" />
            <node concept="3Tqbb2" id="6nFpYlvcBJP" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="6nFpYlvaCXD" role="1DdaDG">
            <node concept="2OqwBi" id="6nFpYlvaCXE" role="2Oq$k0">
              <node concept="37vLTw" id="6nFpYlvaCXF" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlv3d4Y" resolve="origin2invList" />
              </node>
              <node concept="3lbrtF" id="6nFpYlvaCXG" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="6nFpYlvaCXH" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6nFpYlvaJpB" role="lGtFl">
        <node concept="TZ5HA" id="6nFpYlvaJpC" role="TZ5H$">
          <node concept="1dT_AC" id="6nFpYlvaJpD" role="1dT_Ay">
            <property role="1dT_AB" value="Invokes the procedure " />
          </node>
          <node concept="1dT_AA" id="6nFpYlvaNc_" role="1dT_Ay">
            <node concept="VVOAv" id="6nFpYlvaNcV" role="qph3F">
              <node concept="TZ5HA" id="6nFpYlvaNcX" role="2Xj1qM">
                <node concept="1dT_AC" id="6nFpYlvaNdh" role="1dT_Ay">
                  <property role="1dT_AB" value="proc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="6nFpYlvaNc$" role="1dT_Ay">
            <property role="1dT_AB" value=" for every pair [input node, invalidated list]" />
          </node>
        </node>
        <node concept="TZ5HA" id="6nFpYlvaNlX" role="TZ5H$">
          <node concept="1dT_AC" id="6nFpYlvaNlY" role="1dT_Ay">
            <property role="1dT_AB" value="of collected invalidations. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5Qx6_652yam" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_652yan" role="1dT_Ay">
            <property role="1dT_AB" value="The nodes in invalidated list are guaranteed to be alive and be descendants of the input node." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="721IDwqImcF" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu7lKh" role="jymVt">
      <property role="TrG5h" value="changeSetClosure" />
      <node concept="37vLTG" id="5Qx6_656dLk" role="3clF46">
        <property role="TrG5h" value="inputFinder" />
        <node concept="1ajhzC" id="5Qx6_656dLl" role="1tU5fm">
          <node concept="3Tqbb2" id="5Qx6_656dLm" role="1ajw0F" />
          <node concept="3Tqbb2" id="5Qx6_656dLn" role="1ajl9A" />
        </node>
      </node>
      <node concept="2hMVRd" id="6nFpYlu7m_S" role="3clF45">
        <node concept="3Tqbb2" id="1ZiI2IC5n$Q" role="2hN53Y" />
      </node>
      <node concept="3Tm1VV" id="6nFpYluSUUT" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu7lKl" role="3clF47">
        <node concept="3cpWs8" id="6nFpYlu7tZi" role="3cqZAp">
          <node concept="3cpWsn" id="6nFpYlu7tZj" role="3cpWs9">
            <property role="TrG5h" value="changeSetClosure" />
            <node concept="2hMVRd" id="6nFpYlu7tFG" role="1tU5fm">
              <node concept="3Tqbb2" id="1ZiI2IC56RH" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="6nFpYlu7tZk" role="33vP2m">
              <node concept="2i4dXS" id="6nFpYlu7tZl" role="2ShVmc">
                <node concept="3Tqbb2" id="1ZiI2IC58iO" role="HW$YZ" />
                <node concept="37vLTw" id="6nFpYlu7tZn" role="I$8f6">
                  <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changeSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlu7BT6" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYlu7CG3" role="3clFbG">
            <node concept="37vLTw" id="6nFpYlu7BT4" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlu7tZj" resolve="changeSetClosure" />
            </node>
            <node concept="X8dFx" id="6nFpYlu7DbM" role="2OqNvi">
              <node concept="2OqwBi" id="6nFpYlu7FkK" role="25WWJ7">
                <node concept="2OqwBi" id="6nFpYlu7FkL" role="2Oq$k0">
                  <node concept="37vLTw" id="6nFpYlu7P9Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changeSet" />
                  </node>
                  <node concept="3zZkjj" id="6nFpYlu7FkN" role="2OqNvi">
                    <node concept="1bVj0M" id="6nFpYlu7FkO" role="23t8la">
                      <node concept="3clFbS" id="6nFpYlu7FkP" role="1bW5cS">
                        <node concept="3clFbF" id="6nFpYlu7FkQ" role="3cqZAp">
                          <node concept="2OqwBi" id="6nFpYlu7FkR" role="3clFbG">
                            <node concept="37vLTw" id="6nFpYlu7FkS" role="2Oq$k0">
                              <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedRequirements" />
                            </node>
                            <node concept="2Nt0df" id="6nFpYlu7FkT" role="2OqNvi">
                              <node concept="37vLTw" id="6nFpYlu7FkU" role="38cxEo">
                                <ref role="3cqZAo" node="6nFpYlu7FkV" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6nFpYlu7FkV" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6nFpYlu7FkW" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3goQfb" id="6nFpYlu7FkX" role="2OqNvi">
                  <node concept="1bVj0M" id="6nFpYlu7FkY" role="23t8la">
                    <node concept="3clFbS" id="6nFpYlu7FkZ" role="1bW5cS">
                      <node concept="3clFbF" id="6nFpYlu7Fl0" role="3cqZAp">
                        <node concept="3EllGN" id="6nFpYlu7Fl1" role="3clFbG">
                          <node concept="37vLTw" id="6nFpYlu7Fl2" role="3ElVtu">
                            <ref role="3cqZAo" node="6nFpYlu7Fl4" resolve="it" />
                          </node>
                          <node concept="37vLTw" id="6nFpYlu7Fl3" role="3ElQJh">
                            <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedRequirements" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6nFpYlu7Fl4" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6nFpYlu7Fl5" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlu7u$t" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYlu7von" role="3clFbG">
            <node concept="37vLTw" id="6nFpYlu7u$r" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changeSet" />
            </node>
            <node concept="2EZike" id="6nFpYlu7w9R" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="5Qx6_656pcx" role="3cqZAp">
          <node concept="1rXfSq" id="5Qx6_656pcv" role="3clFbG">
            <ref role="37wK5l" node="5Qx6_652C4k" resolve="invalidateAll" />
            <node concept="37vLTw" id="5Qx6_656qp$" role="37wK5m">
              <ref role="3cqZAo" node="6nFpYlu7tZj" resolve="changeSetClosure" />
            </node>
            <node concept="37vLTw" id="5Qx6_656vLg" role="37wK5m">
              <ref role="3cqZAo" node="5Qx6_656dLk" resolve="inputFinder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlu7s$p" role="3cqZAp">
          <node concept="37vLTw" id="6nFpYlu7tZo" role="3clFbG">
            <ref role="3cqZAo" node="6nFpYlu7tZj" resolve="changeSetClosure" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6nFpYlu7Z0I" role="lGtFl">
        <node concept="TZ5HA" id="6nFpYlu7Z0J" role="TZ5H$">
          <node concept="1dT_AC" id="6nFpYlu7Z0K" role="1dT_Ay">
            <property role="1dT_AB" value="Returns a collection of all changed nodes, taking into account the reverse dependencies on requirements." />
          </node>
        </node>
        <node concept="TZ5HA" id="721IDwqHrcs" role="TZ5H$">
          <node concept="1dT_AC" id="721IDwqHrct" role="1dT_Ay">
            <property role="1dT_AB" value="That is, for every node in changed set, if there are nodes require it, add all these nodes to the resulting closure." />
          </node>
        </node>
        <node concept="TZ5HA" id="6nFpYlu80FL" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_656Igo" role="1dT_Ay">
            <property role="1dT_AB" value="Additionally, add all nodes from changeSet as invalidated, provided that the node exists and" />
          </node>
          <node concept="1dT_AC" id="6nFpYlu80FM" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5Qx6_656Iej" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_656Ijl" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="1dT_AA" id="5Qx6_656Ijm" role="1dT_Ay">
            <node concept="VVOAv" id="5Qx6_656Ijn" role="qph3F">
              <node concept="TZ5HA" id="5Qx6_656Ijo" role="2Xj1qM">
                <node concept="1dT_AC" id="5Qx6_656Ijp" role="1dT_Ay">
                  <property role="1dT_AB" value="inputFinder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Qx6_656Ijq" role="1dT_Ay">
            <property role="1dT_AB" value=" returns a non null node for it." />
          </node>
        </node>
        <node concept="TZ5HA" id="5Qx6_656Kus" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_656Kut" role="1dT_Ay">
            <property role="1dT_AB" value="The function " />
          </node>
          <node concept="1dT_AA" id="5Qx6_656Kwk" role="1dT_Ay">
            <node concept="VVOAv" id="5Qx6_656Kwl" role="qph3F">
              <node concept="TZ5HA" id="5Qx6_656Kwm" role="2Xj1qM">
                <node concept="1dT_AC" id="5Qx6_656Kwn" role="1dT_Ay">
                  <property role="1dT_AB" value="inputFinder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Qx6_656Iek" role="1dT_Ay">
            <property role="1dT_AB" value=" is expected to return the corresponding input node for a given node, or null." />
          </node>
        </node>
        <node concept="TZ5HA" id="5Qx6_656IhF" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_656IhG" role="1dT_Ay">
            <property role="1dT_AB" value="Clears the internal cache of changes collected so far, so that the next invocation yields newly collected changes. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4hQVL4f8ngQ" role="jymVt" />
    <node concept="3clFb_" id="5Qx6_652C4k" role="jymVt">
      <property role="TrG5h" value="invalidateAll" />
      <node concept="37vLTG" id="5Qx6_652RX9" role="3clF46">
        <property role="TrG5h" value="changeSetClosure" />
        <node concept="A3Dl8" id="5Qx6_652W6M" role="1tU5fm">
          <node concept="3Tqbb2" id="5Qx6_652Wtc" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="5Qx6_652WRX" role="3clF46">
        <property role="TrG5h" value="inputFinder" />
        <node concept="1ajhzC" id="5Qx6_6530AF" role="1tU5fm">
          <node concept="3Tqbb2" id="5Qx6_6531ja" role="1ajw0F" />
          <node concept="3Tqbb2" id="5Qx6_6531Dj" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Qx6_652C4m" role="3clF45" />
      <node concept="3Tm6S6" id="5Qx6_656BQp" role="1B3o_S" />
      <node concept="3clFbS" id="5Qx6_652C4o" role="3clF47">
        <node concept="3clFbF" id="5Qx6_656GGl" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_656HqV" role="3clFbG">
            <node concept="37vLTw" id="5Qx6_656GGj" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlv3d4Y" resolve="origin2invList" />
            </node>
            <node concept="1yHZxX" id="5Qx6_656HKE" role="2OqNvi" />
          </node>
        </node>
        <node concept="1DcWWT" id="5Qx6_6533W3" role="3cqZAp">
          <node concept="3clFbS" id="5Qx6_6533W6" role="2LFqv$">
            <node concept="3clFbJ" id="5Qx6_6534sK" role="3cqZAp">
              <node concept="3clFbS" id="5Qx6_6534sM" role="3clFbx">
                <node concept="3cpWs8" id="5Qx6_6535W4" role="3cqZAp">
                  <node concept="3cpWsn" id="5Qx6_6535W5" role="3cpWs9">
                    <property role="TrG5h" value="input" />
                    <node concept="3Tqbb2" id="5Qx6_6535Vc" role="1tU5fm" />
                    <node concept="2Sg_IR" id="5Qx6_6535W6" role="33vP2m">
                      <node concept="37vLTw" id="5Qx6_6535W7" role="2SgHGx">
                        <ref role="3cqZAo" node="5Qx6_6533W7" resolve="inv" />
                      </node>
                      <node concept="37vLTw" id="5Qx6_6535W8" role="2SgG2M">
                        <ref role="3cqZAo" node="5Qx6_652WRX" resolve="inputFinder" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5Qx6_6536kK" role="3cqZAp">
                  <node concept="3clFbS" id="5Qx6_6536kW" role="3clFbx">
                    <node concept="3clFbF" id="5Qx6_6536Ah" role="3cqZAp">
                      <node concept="1rXfSq" id="5Qx6_6536Ag" role="3clFbG">
                        <ref role="37wK5l" node="6nFpYlv2RVN" resolve="addInvalidated" />
                        <node concept="37vLTw" id="5Qx6_6536Zq" role="37wK5m">
                          <ref role="3cqZAo" node="5Qx6_6535W5" resolve="input" />
                        </node>
                        <node concept="37vLTw" id="5Qx6_6537at" role="37wK5m">
                          <ref role="3cqZAo" node="5Qx6_6533W7" resolve="inv" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5Qx6_6536vO" role="3clFbw">
                    <node concept="10Nm6u" id="5Qx6_6536xI" role="3uHU7w" />
                    <node concept="37vLTw" id="5Qx6_6535W9" role="3uHU7B">
                      <ref role="3cqZAo" node="5Qx6_6535W5" resolve="input" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1ZiI2IC5DPm" role="3clFbw">
                <node concept="3y3z36" id="1ZiI2IC5OlR" role="3uHU7w">
                  <node concept="10Nm6u" id="1ZiI2IC5PGL" role="3uHU7w" />
                  <node concept="2OqwBi" id="1ZiI2IC5JST" role="3uHU7B">
                    <node concept="2JrnkZ" id="1ZiI2IC5III" role="2Oq$k0">
                      <node concept="37vLTw" id="1ZiI2IC5F8R" role="2JrQYb">
                        <ref role="3cqZAo" node="5Qx6_6533W7" resolve="inv" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1ZiI2IC5KZp" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="6nFpYluV3hm" role="3uHU7B">
                  <node concept="37vLTw" id="1ZiI2IC5B59" role="3uHU7B">
                    <ref role="3cqZAo" node="5Qx6_6533W7" resolve="inv" />
                  </node>
                  <node concept="10Nm6u" id="6nFpYluV4m9" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5Qx6_6533W7" role="1Duv9x">
            <property role="TrG5h" value="inv" />
            <node concept="3Tqbb2" id="5Qx6_6533Wb" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="5Qx6_6533Wc" role="1DdaDG">
            <ref role="3cqZAo" node="5Qx6_652RX9" resolve="changeSetClosure" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5Qx6_653Jzl" role="lGtFl">
        <node concept="TZ5HA" id="5Qx6_653Jzm" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_653Jzn" role="1dT_Ay">
            <property role="1dT_AB" value="Add all nodes from " />
          </node>
          <node concept="1dT_AA" id="5Qx6_653P3G" role="1dT_Ay">
            <node concept="VVOAv" id="5Qx6_653P3U" role="qph3F">
              <node concept="TZ5HA" id="5Qx6_653P3W" role="2Xj1qM">
                <node concept="1dT_AC" id="5Qx6_653P48" role="1dT_Ay">
                  <property role="1dT_AB" value="invalidatedSet" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Qx6_653P3F" role="1dT_Ay">
            <property role="1dT_AB" value=" parameter as invalidated, provided that the node exists and" />
          </node>
        </node>
        <node concept="TZ5HA" id="5Qx6_653Q$X" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_653Q$Y" role="1dT_Ay">
            <property role="1dT_AB" value="the function " />
          </node>
          <node concept="1dT_AA" id="5Qx6_653Q$7" role="1dT_Ay">
            <node concept="VVOAv" id="5Qx6_653Q$l" role="qph3F">
              <node concept="TZ5HA" id="5Qx6_653Q$n" role="2Xj1qM">
                <node concept="1dT_AC" id="5Qx6_653Q$z" role="1dT_Ay">
                  <property role="1dT_AB" value="inputFinder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Qx6_653Q$6" role="1dT_Ay">
            <property role="1dT_AB" value=" returns a non null node for it. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Qx6_652yo9" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu3KpJ" role="jymVt">
      <property role="TrG5h" value="sourcesOf" />
      <node concept="37vLTG" id="6nFpYlu3W$E" role="3clF46">
        <property role="TrG5h" value="req" />
        <node concept="3Tqbb2" id="1ZiI2IC5qMN" role="1tU5fm" />
      </node>
      <node concept="2hMVRd" id="6nFpYlu3SaN" role="3clF45">
        <node concept="3Tqbb2" id="1ZiI2IC5qFB" role="2hN53Y" />
      </node>
      <node concept="3Tm6S6" id="6nFpYlu3N1F" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu3KpN" role="3clF47">
        <node concept="3clFbJ" id="6nFpYlu43V5" role="3cqZAp">
          <node concept="3fqX7Q" id="6nFpYlu46uR" role="3clFbw">
            <node concept="2OqwBi" id="6nFpYlu46uT" role="3fr31v">
              <node concept="37vLTw" id="6nFpYlu46uU" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedRequirements" />
              </node>
              <node concept="2Nt0df" id="6nFpYlu46uV" role="2OqNvi">
                <node concept="37vLTw" id="6nFpYlu46uW" role="38cxEo">
                  <ref role="3cqZAo" node="6nFpYlu3W$E" resolve="req" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6nFpYlu43V7" role="3clFbx">
            <node concept="3clFbF" id="6nFpYlu46ym" role="3cqZAp">
              <node concept="37vLTI" id="6nFpYlu48gs" role="3clFbG">
                <node concept="2ShNRf" id="6nFpYlu48lo" role="37vLTx">
                  <node concept="2i4dXS" id="6nFpYlu48jD" role="2ShVmc">
                    <node concept="3Tqbb2" id="1ZiI2IC5rpg" role="HW$YZ" />
                  </node>
                </node>
                <node concept="3EllGN" id="6nFpYlu47AA" role="37vLTJ">
                  <node concept="37vLTw" id="6nFpYlu47Ey" role="3ElVtu">
                    <ref role="3cqZAo" node="6nFpYlu3W$E" resolve="req" />
                  </node>
                  <node concept="37vLTw" id="6nFpYlu46yl" role="3ElQJh">
                    <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedRequirements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlu48sk" role="3cqZAp">
          <node concept="3EllGN" id="6nFpYlu48VU" role="3clFbG">
            <node concept="37vLTw" id="6nFpYlu48YO" role="3ElVtu">
              <ref role="3cqZAo" node="6nFpYlu3W$E" resolve="req" />
            </node>
            <node concept="37vLTw" id="6nFpYlu48si" role="3ElQJh">
              <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedRequirements" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu6K7K" role="jymVt" />
    <node concept="3clFb_" id="6nFpYludzRO" role="jymVt">
      <property role="TrG5h" value="updatesOf" />
      <node concept="37vLTG" id="6nFpYludzRP" role="3clF46">
        <property role="TrG5h" value="src" />
        <node concept="3Tqbb2" id="1ZiI2IC5ruK" role="1tU5fm" />
      </node>
      <node concept="_YKpA" id="6nFpYludUyx" role="3clF45">
        <node concept="16syzq" id="6nFpYludUyy" role="_ZDj9">
          <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6nFpYludzRT" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYludzRU" role="3clF47">
        <node concept="3clFbJ" id="6nFpYludzRV" role="3cqZAp">
          <node concept="3fqX7Q" id="6nFpYludzRW" role="3clFbw">
            <node concept="2OqwBi" id="6nFpYludzRX" role="3fr31v">
              <node concept="37vLTw" id="6nFpYludCCW" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlud9Ge" resolve="source2updates" />
              </node>
              <node concept="2Nt0df" id="6nFpYludzRZ" role="2OqNvi">
                <node concept="37vLTw" id="6nFpYludzS0" role="38cxEo">
                  <ref role="3cqZAo" node="6nFpYludzRP" resolve="src" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6nFpYludzS1" role="3clFbx">
            <node concept="3clFbF" id="6nFpYludzS2" role="3cqZAp">
              <node concept="37vLTI" id="6nFpYludzS3" role="3clFbG">
                <node concept="2ShNRf" id="6nFpYludzS4" role="37vLTx">
                  <node concept="Tc6Ow" id="6nFpYludF0U" role="2ShVmc">
                    <node concept="16syzq" id="6nFpYludX3S" role="HW$YZ">
                      <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="6nFpYludzS7" role="37vLTJ">
                  <node concept="37vLTw" id="6nFpYludzS8" role="3ElVtu">
                    <ref role="3cqZAo" node="6nFpYludzRP" resolve="src" />
                  </node>
                  <node concept="37vLTw" id="6nFpYludDar" role="3ElQJh">
                    <ref role="3cqZAo" node="6nFpYlud9Ge" resolve="source2updates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYludzSa" role="3cqZAp">
          <node concept="3EllGN" id="6nFpYludzSb" role="3clFbG">
            <node concept="37vLTw" id="6nFpYludzSc" role="3ElVtu">
              <ref role="3cqZAo" node="6nFpYludzRP" resolve="src" />
            </node>
            <node concept="37vLTw" id="6nFpYludIrk" role="3ElQJh">
              <ref role="3cqZAo" node="6nFpYlud9Ge" resolve="source2updates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYludzRN" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlv2RVN" role="jymVt">
      <property role="TrG5h" value="addInvalidated" />
      <node concept="37vLTG" id="6nFpYlv3uM5" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3Tqbb2" id="6nFpYlv3A2V" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6nFpYlv2ZIe" role="3clF46">
        <property role="TrG5h" value="invalidated" />
        <node concept="3Tqbb2" id="6nFpYlv3292" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6nFpYlv2RVP" role="3clF45" />
      <node concept="3Tm6S6" id="5Qx6_6537f6" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlv2RVR" role="3clF47">
        <node concept="3clFbJ" id="6nFpYlv4kUz" role="3cqZAp">
          <node concept="3clFbS" id="6nFpYlv4kU_" role="3clFbx">
            <node concept="3clFbF" id="6nFpYlv4nvH" role="3cqZAp">
              <node concept="37vLTI" id="6nFpYlv4pIC" role="3clFbG">
                <node concept="2ShNRf" id="6nFpYlv4pRb" role="37vLTx">
                  <node concept="2T8Vx0" id="6nFpYlvakSY" role="2ShVmc">
                    <node concept="2I9FWS" id="6nFpYlvakT1" role="2T96Bj" />
                  </node>
                </node>
                <node concept="3EllGN" id="6nFpYlv4ofQ" role="37vLTJ">
                  <node concept="37vLTw" id="6nFpYlv4olQ" role="3ElVtu">
                    <ref role="3cqZAo" node="6nFpYlv3uM5" resolve="origin" />
                  </node>
                  <node concept="37vLTw" id="6nFpYlv4nvF" role="3ElQJh">
                    <ref role="3cqZAo" node="6nFpYlv3d4Y" resolve="origin2invList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6nFpYlv4nkG" role="3clFbw">
            <node concept="2OqwBi" id="6nFpYlv4nkI" role="3fr31v">
              <node concept="37vLTw" id="6nFpYlv4nkJ" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlv3d4Y" resolve="origin2invList" />
              </node>
              <node concept="2Nt0df" id="6nFpYlv4nkK" role="2OqNvi">
                <node concept="37vLTw" id="6nFpYlv4nkM" role="38cxEo">
                  <ref role="3cqZAo" node="6nFpYlv3uM5" resolve="origin" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlv3hJL" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYlv3jkl" role="3clFbG">
            <node concept="3EllGN" id="6nFpYlv4qeK" role="2Oq$k0">
              <node concept="37vLTw" id="6nFpYlv4qow" role="3ElVtu">
                <ref role="3cqZAo" node="6nFpYlv3uM5" resolve="origin" />
              </node>
              <node concept="37vLTw" id="6nFpYlv3hJJ" role="3ElQJh">
                <ref role="3cqZAo" node="6nFpYlv3d4Y" resolve="origin2invList" />
              </node>
            </node>
            <node concept="TSZUe" id="6nFpYlv3l3A" role="2OqNvi">
              <node concept="37vLTw" id="6nFpYlv4qNc" role="25WWJ7">
                <ref role="3cqZAo" node="6nFpYlv2ZIe" resolve="invalidated" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31_3CqJfK8C" role="jymVt" />
    <node concept="3clFb_" id="3u5wJtdQ7a" role="jymVt">
      <property role="TrG5h" value="startTrackingChanges" />
      <node concept="37vLTG" id="3u5wJtdRvH" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="3u5wJtdRXN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="19OC90ls0a" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="3Tqbb2" id="19OC90lt_y" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3u5wJtdQ7c" role="3clF45" />
      <node concept="3Tm6S6" id="3u5wJtdQ7d" role="1B3o_S" />
      <node concept="3clFbS" id="3u5wJtdQ7e" role="3clF47">
        <node concept="3clFbF" id="3u5wJteamL" role="3cqZAp">
          <node concept="37vLTI" id="3u5wJtebaN" role="3clFbG">
            <node concept="2OqwBi" id="3u5wJtea$n" role="37vLTJ">
              <node concept="Xjq3P" id="3u5wJteamJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="6nFpYlu6Qyb" role="2OqNvi">
                <ref role="2Oxat5" node="6nFpYlu6O1H" resolve="nodeChangeTracker" />
              </node>
            </node>
            <node concept="2ShNRf" id="3u5wJtebs7" role="37vLTx">
              <node concept="1pGfFk" id="4jShfh66_sM" role="2ShVmc">
                <ref role="37wK5l" node="6nFpYlu6BP4" resolve="UpdatesRecorder.ChangesTracker" />
                <node concept="37vLTw" id="4jShfh66JDa" role="37wK5m">
                  <ref role="3cqZAo" node="3u5wJtdRvH" resolve="model" />
                </node>
                <node concept="37vLTw" id="19OC90ltQW" role="37wK5m">
                  <ref role="3cqZAo" node="19OC90ls0a" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlvpO2s" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYlvpOkp" role="3clFbG">
            <node concept="37vLTw" id="6nFpYlvpO2q" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="nodeChangeTracker" />
            </node>
            <node concept="liA8E" id="6nFpYlvpOJq" role="2OqNvi">
              <ref role="37wK5l" node="4jShfh66D4u" resolve="activate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3u5wJte1Sx" role="jymVt" />
    <node concept="3clFb_" id="3u5wJte1ac" role="jymVt">
      <property role="TrG5h" value="stopTrackingChanges" />
      <node concept="3cqZAl" id="3u5wJte1af" role="3clF45" />
      <node concept="3Tm6S6" id="3u5wJte1ag" role="1B3o_S" />
      <node concept="3clFbS" id="3u5wJte1ah" role="3clF47">
        <node concept="3clFbJ" id="4jShfh66O2V" role="3cqZAp">
          <node concept="3clFbS" id="4jShfh66O2X" role="3clFbx">
            <node concept="3clFbF" id="4jShfh66MJe" role="3cqZAp">
              <node concept="2OqwBi" id="4jShfh66Nhq" role="3clFbG">
                <node concept="37vLTw" id="6nFpYlu6QHm" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="nodeChangeTracker" />
                </node>
                <node concept="liA8E" id="4jShfh66NBh" role="2OqNvi">
                  <ref role="37wK5l" node="4jShfh66FaG" resolve="deactivate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3u5wJtebVE" role="3cqZAp">
              <node concept="37vLTI" id="3u5wJtecK5" role="3clFbG">
                <node concept="10Nm6u" id="3u5wJtecSP" role="37vLTx" />
                <node concept="2OqwBi" id="3u5wJtec9g" role="37vLTJ">
                  <node concept="Xjq3P" id="3u5wJtebVC" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6nFpYlu6QYK" role="2OqNvi">
                    <ref role="2Oxat5" node="6nFpYlu6O1H" resolve="nodeChangeTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4jShfh66OX1" role="3clFbw">
            <node concept="10Nm6u" id="4jShfh66Pc_" role="3uHU7w" />
            <node concept="37vLTw" id="6nFpYlu6QBa" role="3uHU7B">
              <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="nodeChangeTracker" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu6Kdc" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu71k3" role="jymVt">
      <property role="TrG5h" value="updateChangeSet" />
      <node concept="3Tm6S6" id="6nFpYlu71k4" role="1B3o_S" />
      <node concept="3cqZAl" id="6nFpYlu71k5" role="3clF45" />
      <node concept="37vLTG" id="6nFpYlu71jw" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1ZiI2IC5rR2" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6nFpYlu71jq" role="3clF47">
        <node concept="3clFbF" id="6nFpYlu71jr" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYlu71js" role="3clFbG">
            <node concept="37vLTw" id="6nFpYlu7cTH" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changeSet" />
            </node>
            <node concept="TSZUe" id="6nFpYlu71ju" role="2OqNvi">
              <node concept="37vLTw" id="6nFpYlu71k0" role="25WWJ7">
                <ref role="3cqZAo" node="6nFpYlu71jw" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu4rA6" role="jymVt" />
    <node concept="3clFb_" id="3yEb0I3Qr8G" role="jymVt">
      <property role="TrG5h" value="updateChangeSetRecursively" />
      <node concept="3Tm6S6" id="3yEb0I3Qr8H" role="1B3o_S" />
      <node concept="3cqZAl" id="3yEb0I3Qr8I" role="3clF45" />
      <node concept="37vLTG" id="3yEb0I3Qr8J" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3yEb0I3Qr8K" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3yEb0I3Qr8L" role="3clF47">
        <node concept="3cpWs8" id="3yEb0I3QDqX" role="3cqZAp">
          <node concept="3cpWsn" id="3yEb0I3QDqY" role="3cpWs9">
            <property role="TrG5h" value="queue" />
            <node concept="_YKpA" id="3yEb0I3QDNl" role="1tU5fm">
              <node concept="3Tqbb2" id="3yEb0I3QDNn" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="3yEb0I3QDqZ" role="33vP2m">
              <node concept="2Jqq0_" id="3yEb0I3QDr0" role="2ShVmc">
                <node concept="3Tqbb2" id="3yEb0I3QDr1" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yEb0I3QAKW" role="3cqZAp">
          <node concept="2OqwBi" id="3yEb0I3QELL" role="3clFbG">
            <node concept="37vLTw" id="3yEb0I3QDr2" role="2Oq$k0">
              <ref role="3cqZAo" node="3yEb0I3QDqY" resolve="queue" />
            </node>
            <node concept="TSZUe" id="3yEb0I3QFN6" role="2OqNvi">
              <node concept="37vLTw" id="3yEb0I3QFSb" role="25WWJ7">
                <ref role="3cqZAo" node="3yEb0I3Qr8J" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="3yEb0I3QGfX" role="3cqZAp">
          <node concept="3clFbS" id="3yEb0I3QGfZ" role="2LFqv$">
            <node concept="3cpWs8" id="3yEb0I3QJfV" role="3cqZAp">
              <node concept="3cpWsn" id="3yEb0I3QJfW" role="3cpWs9">
                <property role="TrG5h" value="n" />
                <node concept="3Tqbb2" id="3yEb0I3QJee" role="1tU5fm" />
                <node concept="2OqwBi" id="3yEb0I3QJfX" role="33vP2m">
                  <node concept="37vLTw" id="3yEb0I3QJfY" role="2Oq$k0">
                    <ref role="3cqZAo" node="3yEb0I3QDqY" resolve="queue" />
                  </node>
                  <node concept="2Kt2Hk" id="3yEb0I3QJfZ" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3yEb0I3Qr8M" role="3cqZAp">
              <node concept="2OqwBi" id="3yEb0I3Qr8N" role="3clFbG">
                <node concept="37vLTw" id="3yEb0I3Qr8O" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changeSet" />
                </node>
                <node concept="TSZUe" id="3yEb0I3Qr8P" role="2OqNvi">
                  <node concept="37vLTw" id="3yEb0I3QKQp" role="25WWJ7">
                    <ref role="3cqZAo" node="3yEb0I3QJfW" resolve="n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3yEb0I3QLUX" role="3cqZAp">
              <node concept="2OqwBi" id="3yEb0I3QN8L" role="3clFbG">
                <node concept="37vLTw" id="3yEb0I3QLUV" role="2Oq$k0">
                  <ref role="3cqZAo" node="3yEb0I3QDqY" resolve="queue" />
                </node>
                <node concept="X8dFx" id="3yEb0I3QOaA" role="2OqNvi">
                  <node concept="2OqwBi" id="3yEb0I3QOs8" role="25WWJ7">
                    <node concept="37vLTw" id="3yEb0I3QOg0" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yEb0I3QJfW" resolve="n" />
                    </node>
                    <node concept="32TBzR" id="3yEb0I3QOAh" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3yEb0I3QHEc" role="2$JKZa">
            <node concept="37vLTw" id="3yEb0I3QGA5" role="2Oq$k0">
              <ref role="3cqZAo" node="3yEb0I3QDqY" resolve="queue" />
            </node>
            <node concept="3GX2aA" id="3yEb0I3QIFz" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3yEb0I3Qr8F" role="jymVt" />
    <node concept="312cEu" id="6nFpYltKKoQ" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ChangesTracker" />
      <node concept="2tJIrI" id="6nFpYltKQon" role="jymVt" />
      <node concept="3clFbW" id="6nFpYlu6BP4" role="jymVt">
        <node concept="37vLTG" id="6nFpYlu6DqU" role="3clF46">
          <property role="TrG5h" value="observable" />
          <node concept="H_c77" id="6nFpYlu6DxE" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6nFpYlu6Dz_" role="3clF46">
          <property role="TrG5h" value="unit" />
          <node concept="3Tqbb2" id="6nFpYlu6DEj" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6nFpYlu6BP6" role="3clF45" />
        <node concept="3Tm6S6" id="6nFpYlu6BP7" role="1B3o_S" />
        <node concept="3clFbS" id="6nFpYlu6BP8" role="3clF47">
          <node concept="3clFbF" id="6nFpYlu6DGD" role="3cqZAp">
            <node concept="37vLTI" id="6nFpYlu6Eb$" role="3clFbG">
              <node concept="37vLTw" id="6nFpYlu6EkL" role="37vLTx">
                <ref role="3cqZAo" node="6nFpYlu6DqU" resolve="observable" />
              </node>
              <node concept="2OqwBi" id="6nFpYlu6DOT" role="37vLTJ">
                <node concept="Xjq3P" id="6nFpYlu6DGC" role="2Oq$k0" />
                <node concept="2OwXpG" id="6nFpYlu6DXO" role="2OqNvi">
                  <ref role="2Oxat5" node="4jShfh66A9n" resolve="observable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6nFpYlu6Em7" role="3cqZAp">
            <node concept="37vLTI" id="6nFpYlu6EBN" role="3clFbG">
              <node concept="37vLTw" id="6nFpYlu6EDR" role="37vLTx">
                <ref role="3cqZAo" node="6nFpYlu6Dz_" resolve="unit" />
              </node>
              <node concept="2OqwBi" id="6nFpYlu6Eo$" role="37vLTJ">
                <node concept="Xjq3P" id="6nFpYlu6Em5" role="2Oq$k0" />
                <node concept="2OwXpG" id="6nFpYlu6EpJ" role="2OqNvi">
                  <ref role="2Oxat5" node="19OC90l6Pw" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYlu6IG_" role="jymVt" />
      <node concept="3clFb_" id="4jShfh66D4u" role="jymVt">
        <property role="TrG5h" value="activate" />
        <node concept="3cqZAl" id="4jShfh66D4w" role="3clF45" />
        <node concept="3Tm6S6" id="4jShfh66D4x" role="1B3o_S" />
        <node concept="3clFbS" id="4jShfh66D4y" role="3clF47">
          <node concept="3clFbF" id="4jShfh66IBP" role="3cqZAp">
            <node concept="2OqwBi" id="4jShfh66IBQ" role="3clFbG">
              <node concept="2JrnkZ" id="4jShfh66IBR" role="2Oq$k0">
                <node concept="37vLTw" id="4jShfh66IBS" role="2JrQYb">
                  <ref role="3cqZAo" node="4jShfh66A9n" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="4jShfh66IBT" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                <node concept="Xjq3P" id="4jShfh66IBU" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4jShfh66IBJ" role="3cqZAp">
            <node concept="2OqwBi" id="4jShfh66IBK" role="3clFbG">
              <node concept="2JrnkZ" id="4jShfh66IBL" role="2Oq$k0">
                <node concept="37vLTw" id="5AFANm9LWvZ" role="2JrQYb">
                  <ref role="3cqZAo" node="4jShfh66A9n" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="4jShfh66IBN" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="addModelListener" />
                <node concept="Xjq3P" id="4jShfh66IBO" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4jShfh66Esl" role="jymVt" />
      <node concept="3clFb_" id="4jShfh66FaG" role="jymVt">
        <property role="TrG5h" value="deactivate" />
        <node concept="3cqZAl" id="4jShfh66FaI" role="3clF45" />
        <node concept="3Tm6S6" id="4jShfh66FaJ" role="1B3o_S" />
        <node concept="3clFbS" id="4jShfh66FaK" role="3clF47">
          <node concept="3clFbF" id="4jShfh66G$9" role="3cqZAp">
            <node concept="2OqwBi" id="4jShfh66HKU" role="3clFbG">
              <node concept="2JrnkZ" id="4jShfh66HyL" role="2Oq$k0">
                <node concept="37vLTw" id="4jShfh66G$8" role="2JrQYb">
                  <ref role="3cqZAo" node="4jShfh66A9n" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="4jShfh66I0S" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                <node concept="Xjq3P" id="4jShfh66Ii9" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4jShfh66Imc" role="3cqZAp">
            <node concept="2OqwBi" id="4jShfh66Imd" role="3clFbG">
              <node concept="2JrnkZ" id="4jShfh66Ime" role="2Oq$k0">
                <node concept="37vLTw" id="5AFANm9LWZD" role="2JrQYb">
                  <ref role="3cqZAo" node="4jShfh66A9n" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="4jShfh66Img" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="removeModelListener" />
                <node concept="Xjq3P" id="4jShfh66Imh" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4jShfh66$Av" role="jymVt" />
      <node concept="3clFb_" id="4jShfh66BqK" role="jymVt">
        <property role="TrG5h" value="modelDetached" />
        <node concept="3Tm1VV" id="4jShfh66BqL" role="1B3o_S" />
        <node concept="3cqZAl" id="4jShfh66BqN" role="3clF45" />
        <node concept="37vLTG" id="4jShfh66BqO" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="4jShfh66BqP" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="37vLTG" id="4jShfh66BqQ" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="4jShfh66BqR" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3clFbS" id="4jShfh66BqS" role="3clF47">
          <node concept="3clFbF" id="6nFpYlu70uk" role="3cqZAp">
            <node concept="1rXfSq" id="6nFpYlu70uj" role="3clFbG">
              <ref role="37wK5l" node="3u5wJte1ac" resolve="stopTrackingChanges" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4jShfh66BqT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4jShfh66C3b" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtdOBE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="modelReplaced" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="3u5wJtdOBF" role="1B3o_S" />
        <node concept="3cqZAl" id="3u5wJtdOBH" role="3clF45" />
        <node concept="37vLTG" id="3u5wJtdOBI" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="H_c77" id="443LGHB5Ro2" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3u5wJtdOBK" role="3clF47">
          <node concept="3clFbF" id="6nFpYlu70x7" role="3cqZAp">
            <node concept="1rXfSq" id="6nFpYlu70x8" role="3clFbG">
              <ref role="37wK5l" node="3u5wJte1ac" resolve="stopTrackingChanges" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3u5wJtdOBL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYlu6Aw4" role="jymVt" />
      <node concept="3Tm6S6" id="6nFpYltZA1V" role="1B3o_S" />
      <node concept="3uibUv" id="6nFpYltKQlu" role="EKbjA">
        <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
      </node>
      <node concept="3clFb_" id="6nFpYltKQqn" role="jymVt">
        <property role="TrG5h" value="propertyChanged" />
        <node concept="3Tm1VV" id="6nFpYltKQqo" role="1B3o_S" />
        <node concept="3cqZAl" id="6nFpYltKQqq" role="3clF45" />
        <node concept="37vLTG" id="6nFpYltKQqr" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6nFpYltKQqs" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
          </node>
          <node concept="2AHcQZ" id="6nFpYltKQqt" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltKQqu" role="3clF47">
          <node concept="3clFbJ" id="6nFpYlu6mL3" role="3cqZAp">
            <node concept="1rXfSq" id="6nFpYlu6mML" role="3clFbw">
              <ref role="37wK5l" node="19OC90kZ5T" resolve="isRelevant" />
              <node concept="37vLTw" id="6nFpYlu6mX0" role="37wK5m">
                <ref role="3cqZAo" node="6nFpYltKQqr" resolve="event" />
              </node>
            </node>
            <node concept="3clFbS" id="6nFpYlu6mL5" role="3clFbx">
              <node concept="3clFbF" id="6nFpYlu73j7" role="3cqZAp">
                <node concept="1rXfSq" id="6nFpYlu73j6" role="3clFbG">
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangeSet" />
                  <node concept="1eOMI4" id="6nFpYlu73iZ" role="37wK5m">
                    <node concept="10QFUN" id="6nFpYlu73j0" role="1eOMHV">
                      <node concept="2OqwBi" id="6nFpYlu73j1" role="10QFUP">
                        <node concept="37vLTw" id="6nFpYlu73j2" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nFpYltKQqr" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6nFpYlu73j3" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="6nFpYlu73j4" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6nFpYltKQqv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltVVbr" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltKQqw" role="jymVt">
        <property role="TrG5h" value="referenceChanged" />
        <node concept="3Tm1VV" id="6nFpYltKQqx" role="1B3o_S" />
        <node concept="3cqZAl" id="6nFpYltKQqz" role="3clF45" />
        <node concept="37vLTG" id="6nFpYltKQq$" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6nFpYltKQq_" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
          </node>
          <node concept="2AHcQZ" id="6nFpYltKQqA" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltKQqB" role="3clF47">
          <node concept="3clFbJ" id="6nFpYlu6rYN" role="3cqZAp">
            <node concept="1rXfSq" id="6nFpYlu6rYO" role="3clFbw">
              <ref role="37wK5l" node="19OC90l2fQ" resolve="isRelevant" />
              <node concept="37vLTw" id="6nFpYlu6thh" role="37wK5m">
                <ref role="3cqZAo" node="6nFpYltKQq$" resolve="event" />
              </node>
            </node>
            <node concept="3clFbS" id="6nFpYlu6rYQ" role="3clFbx">
              <node concept="3clFbF" id="6nFpYlu73tX" role="3cqZAp">
                <node concept="1rXfSq" id="6nFpYlu73tW" role="3clFbG">
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangeSet" />
                  <node concept="1eOMI4" id="6nFpYlu73tP" role="37wK5m">
                    <node concept="10QFUN" id="6nFpYlu73tQ" role="1eOMHV">
                      <node concept="2OqwBi" id="6nFpYlu73tR" role="10QFUP">
                        <node concept="37vLTw" id="6nFpYlu73tS" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nFpYltKQq$" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6nFpYlu73tT" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="6nFpYlu73tU" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6nFpYltKQqC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltVWJy" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltKQqD" role="jymVt">
        <property role="TrG5h" value="nodeAdded" />
        <node concept="3Tm1VV" id="6nFpYltKQqE" role="1B3o_S" />
        <node concept="3cqZAl" id="6nFpYltKQqG" role="3clF45" />
        <node concept="37vLTG" id="6nFpYltKQqH" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6nFpYltKQqI" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
          </node>
          <node concept="2AHcQZ" id="6nFpYltKQqJ" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltKQqK" role="3clF47">
          <node concept="3clFbJ" id="6nFpYlu6uio" role="3cqZAp">
            <node concept="1rXfSq" id="6nFpYlu6uip" role="3clFbw">
              <ref role="37wK5l" node="19OC90l36p" resolve="isRelevant" />
              <node concept="37vLTw" id="6nFpYlu6uiq" role="37wK5m">
                <ref role="3cqZAo" node="6nFpYltKQqH" resolve="event" />
              </node>
            </node>
            <node concept="3clFbS" id="6nFpYlu6uir" role="3clFbx">
              <node concept="3clFbF" id="6nFpYlu73uh" role="3cqZAp">
                <node concept="1rXfSq" id="6nFpYlu73ug" role="3clFbG">
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangeSet" />
                  <node concept="1eOMI4" id="6nFpYlu73u9" role="37wK5m">
                    <node concept="10QFUN" id="6nFpYlu73ua" role="1eOMHV">
                      <node concept="2OqwBi" id="6nFpYlu73ub" role="10QFUP">
                        <node concept="37vLTw" id="6nFpYlu73uc" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nFpYltKQqH" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6nFpYlu73ud" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="6nFpYlu73ue" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6nFpYlu73uL" role="3cqZAp">
                <node concept="1rXfSq" id="6nFpYlu73uK" role="3clFbG">
                  <ref role="37wK5l" node="3yEb0I3Qr8G" resolve="updateChangeSetRecursively" />
                  <node concept="1eOMI4" id="6nFpYlu73uD" role="37wK5m">
                    <node concept="10QFUN" id="6nFpYlu73uE" role="1eOMHV">
                      <node concept="2OqwBi" id="6nFpYlu73uF" role="10QFUP">
                        <node concept="37vLTw" id="6nFpYlu73uG" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nFpYltKQqH" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6nFpYlu73uH" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getChild()" resolve="getChild" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="6nFpYlu73uI" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6nFpYltKQqL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYltVWS2" role="jymVt" />
      <node concept="3clFb_" id="6nFpYltKQqM" role="jymVt">
        <property role="TrG5h" value="nodeRemoved" />
        <node concept="3Tm1VV" id="6nFpYltKQqN" role="1B3o_S" />
        <node concept="3cqZAl" id="6nFpYltKQqP" role="3clF45" />
        <node concept="37vLTG" id="6nFpYltKQqQ" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6nFpYltKQqR" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
          </node>
          <node concept="2AHcQZ" id="6nFpYltKQqS" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltKQqT" role="3clF47">
          <node concept="3clFbJ" id="6nFpYlu6y2K" role="3cqZAp">
            <node concept="1rXfSq" id="6nFpYlu6y2L" role="3clFbw">
              <ref role="37wK5l" node="19OC90l5ll" resolve="isRelevant" />
              <node concept="37vLTw" id="6nFpYlu6zWx" role="37wK5m">
                <ref role="3cqZAo" node="6nFpYltKQqQ" resolve="event" />
              </node>
            </node>
            <node concept="3clFbS" id="6nFpYlu6y2N" role="3clFbx">
              <node concept="3clFbF" id="6nFpYlu73vf" role="3cqZAp">
                <node concept="1rXfSq" id="6nFpYlu73ve" role="3clFbG">
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangeSet" />
                  <node concept="1eOMI4" id="6nFpYlu73v7" role="37wK5m">
                    <node concept="10QFUN" id="6nFpYlu73v8" role="1eOMHV">
                      <node concept="2OqwBi" id="6nFpYlu73v9" role="10QFUP">
                        <node concept="37vLTw" id="6nFpYlu73va" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nFpYltKQqQ" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6nFpYlu73vb" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="6nFpYlu73vc" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6nFpYlu71k8" role="3cqZAp">
                <node concept="1rXfSq" id="6nFpYlu71k7" role="3clFbG">
                  <ref role="37wK5l" node="3yEb0I3Qr8G" resolve="updateChangeSetRecursively" />
                  <node concept="1eOMI4" id="6nFpYlu73KB" role="37wK5m">
                    <node concept="10QFUN" id="6nFpYlu73KC" role="1eOMHV">
                      <node concept="2OqwBi" id="6nFpYlu73KD" role="10QFUP">
                        <node concept="37vLTw" id="6nFpYlu73KE" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nFpYltKQqQ" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6nFpYlu73KF" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="6nFpYlu73KG" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6nFpYltKQqU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="19OC90kZ5T" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="19OC90l1Hs" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="19OC90l1Ht" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
          </node>
        </node>
        <node concept="10P_77" id="19OC90kZtH" role="3clF45" />
        <node concept="3Tm6S6" id="19OC90kZ5W" role="1B3o_S" />
        <node concept="3clFbS" id="19OC90kZ5X" role="3clF47">
          <node concept="3clFbF" id="19OC90la7Q" role="3cqZAp">
            <node concept="3clFbC" id="19OC90lbfc" role="3clFbG">
              <node concept="37vLTw" id="19OC90lb$V" role="3uHU7w">
                <ref role="3cqZAo" node="19OC90l6Pw" resolve="unit" />
              </node>
              <node concept="2OqwBi" id="19OC90laYi" role="3uHU7B">
                <node concept="2OqwBi" id="19OC90la$$" role="2Oq$k0">
                  <node concept="37vLTw" id="19OC90la7P" role="2Oq$k0">
                    <ref role="3cqZAo" node="19OC90l1Hs" resolve="event" />
                  </node>
                  <node concept="liA8E" id="19OC90laLm" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                  </node>
                </node>
                <node concept="liA8E" id="19OC90lb7L" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="19OC90l2z1" role="jymVt" />
      <node concept="3clFb_" id="19OC90l2fQ" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="19OC90l2Pa" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="19OC90l2Pb" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
          </node>
        </node>
        <node concept="10P_77" id="19OC90l2fT" role="3clF45" />
        <node concept="3Tm6S6" id="19OC90l2fU" role="1B3o_S" />
        <node concept="3clFbS" id="19OC90l2fV" role="3clF47">
          <node concept="3clFbF" id="19OC90lca9" role="3cqZAp">
            <node concept="3clFbC" id="19OC90lde6" role="3clFbG">
              <node concept="37vLTw" id="19OC90ld$6" role="3uHU7w">
                <ref role="3cqZAo" node="19OC90l6Pw" resolve="unit" />
              </node>
              <node concept="2OqwBi" id="19OC90lcYt" role="3uHU7B">
                <node concept="2OqwBi" id="19OC90lcAR" role="2Oq$k0">
                  <node concept="37vLTw" id="19OC90lca8" role="2Oq$k0">
                    <ref role="3cqZAo" node="19OC90l2Pa" resolve="event" />
                  </node>
                  <node concept="liA8E" id="19OC90lcN3" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                  </node>
                </node>
                <node concept="liA8E" id="19OC90ld7W" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="19OC90l3x6" role="jymVt" />
      <node concept="3clFb_" id="19OC90l36p" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="19OC90l3Nn" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="19OC90l3No" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
          </node>
        </node>
        <node concept="10P_77" id="19OC90l36s" role="3clF45" />
        <node concept="3Tm6S6" id="19OC90l36t" role="1B3o_S" />
        <node concept="3clFbS" id="19OC90l36u" role="3clF47">
          <node concept="3clFbF" id="19OC90ldYI" role="3cqZAp">
            <node concept="1Wc70l" id="19OC90lfa8" role="3clFbG">
              <node concept="3clFbC" id="19OC90lgyP" role="3uHU7w">
                <node concept="37vLTw" id="19OC90lgTF" role="3uHU7w">
                  <ref role="3cqZAo" node="19OC90l6Pw" resolve="unit" />
                </node>
                <node concept="2OqwBi" id="19OC90lghG" role="3uHU7B">
                  <node concept="2OqwBi" id="19OC90lfSR" role="2Oq$k0">
                    <node concept="37vLTw" id="19OC90lfrH" role="2Oq$k0">
                      <ref role="3cqZAo" node="19OC90l3Nn" resolve="event" />
                    </node>
                    <node concept="liA8E" id="19OC90lg5F" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="19OC90lgrN" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="19OC90ldYG" role="3uHU7B">
                <node concept="2OqwBi" id="19OC90leEL" role="3fr31v">
                  <node concept="37vLTw" id="19OC90ledY" role="2Oq$k0">
                    <ref role="3cqZAo" node="19OC90l3Nn" resolve="event" />
                  </node>
                  <node concept="liA8E" id="19OC90leR6" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeAddEvent.isRoot()" resolve="isRoot" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="19OC90l5CK" role="jymVt" />
      <node concept="3clFb_" id="19OC90l5ll" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="19OC90l5V9" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="19OC90l5Va" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
          </node>
        </node>
        <node concept="10P_77" id="19OC90l5lo" role="3clF45" />
        <node concept="3Tm6S6" id="19OC90l5lp" role="1B3o_S" />
        <node concept="3clFbS" id="19OC90l5lq" role="3clF47">
          <node concept="3clFbF" id="19OC90lhl1" role="3cqZAp">
            <node concept="22lmx$" id="19OC90lkbO" role="3clFbG">
              <node concept="1eOMI4" id="7IY4rnUGwQ6" role="3uHU7w">
                <node concept="1Wc70l" id="7IY4rnUGxjf" role="1eOMHV">
                  <node concept="3y3z36" id="7IY4rnUGyDg" role="3uHU7B">
                    <node concept="10Nm6u" id="7IY4rnUGyU7" role="3uHU7w" />
                    <node concept="2OqwBi" id="7IY4rnUGy7w" role="3uHU7B">
                      <node concept="37vLTw" id="7IY4rnUGxFm" role="2Oq$k0">
                        <ref role="3cqZAo" node="19OC90l5V9" resolve="event" />
                      </node>
                      <node concept="liA8E" id="7IY4rnUGyrX" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="19OC90llUt" role="3uHU7w">
                    <node concept="37vLTw" id="19OC90lmfa" role="3uHU7w">
                      <ref role="3cqZAo" node="19OC90l6Pw" resolve="unit" />
                    </node>
                    <node concept="2OqwBi" id="19OC90llwl" role="3uHU7B">
                      <node concept="2OqwBi" id="19OC90ll4H" role="2Oq$k0">
                        <node concept="37vLTw" id="19OC90lk_A" role="2Oq$k0">
                          <ref role="3cqZAo" node="19OC90l5V9" resolve="event" />
                        </node>
                        <node concept="liA8E" id="19OC90lliz" role="2OqNvi">
                          <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="19OC90llKY" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="19OC90ljJh" role="3uHU7B">
                <node concept="1Wc70l" id="19OC90ligP" role="1eOMHV">
                  <node concept="3clFbC" id="19OC90ljaC" role="3uHU7w">
                    <node concept="37vLTw" id="19OC90ljvy" role="3uHU7w">
                      <ref role="3cqZAo" node="19OC90l6Pw" resolve="unit" />
                    </node>
                    <node concept="2OqwBi" id="19OC90liLE" role="3uHU7B">
                      <node concept="37vLTw" id="19OC90liyf" role="2Oq$k0">
                        <ref role="3cqZAo" node="19OC90l5V9" resolve="event" />
                      </node>
                      <node concept="liA8E" id="19OC90liYI" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="19OC90lhLJ" role="3uHU7B">
                    <node concept="37vLTw" id="19OC90lhl0" role="2Oq$k0">
                      <ref role="3cqZAo" node="19OC90l5V9" resolve="event" />
                    </node>
                    <node concept="liA8E" id="19OC90lhXV" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.isRoot()" resolve="isRoot" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYlu6l_5" role="jymVt" />
      <node concept="312cEg" id="4jShfh66A9n" role="jymVt">
        <property role="TrG5h" value="observable" />
        <node concept="3Tm6S6" id="4jShfh66A9o" role="1B3o_S" />
        <node concept="H_c77" id="4jShfh66A9q" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="19OC90l6Pw" role="jymVt">
        <property role="TrG5h" value="unit" />
        <node concept="3Tm6S6" id="19OC90l6Px" role="1B3o_S" />
        <node concept="3Tqbb2" id="19OC90l6Pz" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6nFpYlu6SHO" role="1zkMxy">
        <ref role="3uigEE" to="mhbf:~SModelListenerBase" resolve="SModelListenerBase" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu02n4" role="jymVt" />
    <node concept="312cEg" id="6nFpYlu3FKa" role="jymVt">
      <property role="TrG5h" value="reversedRequirements" />
      <node concept="3Tm6S6" id="6nFpYlu3FKb" role="1B3o_S" />
      <node concept="3rvAFt" id="6nFpYlu3INu" role="1tU5fm">
        <node concept="3Tqbb2" id="1ZiI2IC5bJ4" role="3rvQeY" />
        <node concept="2hMVRd" id="6nFpYlu3S8L" role="3rvSg0">
          <node concept="3Tqbb2" id="1ZiI2IC5di4" role="2hN53Y" />
        </node>
      </node>
      <node concept="2ShNRf" id="6nFpYlu3KnQ" role="33vP2m">
        <node concept="3rGOSV" id="6nFpYlu3Knd" role="2ShVmc">
          <node concept="3Tqbb2" id="1ZiI2IC5f0J" role="3rHrn6" />
          <node concept="2hMVRd" id="6nFpYlu3QAX" role="3rHtpV">
            <node concept="3Tqbb2" id="1ZiI2IC5gIq" role="2hN53Y" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6nFpYlud9Ge" role="jymVt">
      <property role="TrG5h" value="source2updates" />
      <node concept="3Tm6S6" id="6nFpYlud9Gf" role="1B3o_S" />
      <node concept="3rvAFt" id="6nFpYludbDB" role="1tU5fm">
        <node concept="3Tqbb2" id="1ZiI2IC5aVV" role="3rvQeY" />
        <node concept="_YKpA" id="6nFpYludxlp" role="3rvSg0">
          <node concept="16syzq" id="6nFpYludTT$" role="_ZDj9">
            <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="6nFpYludivF" role="33vP2m">
        <node concept="3rGOSV" id="6nFpYluditI" role="2ShVmc">
          <node concept="3Tqbb2" id="1ZiI2IC5i9d" role="3rHrn6" />
          <node concept="_YKpA" id="6nFpYludyYL" role="3rHtpV">
            <node concept="16syzq" id="6nFpYludY1w" role="_ZDj9">
              <ref role="16sUi3" node="6nFpYludLhd" resolve="U" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6nFpYlu6O1H" role="jymVt">
      <property role="TrG5h" value="nodeChangeTracker" />
      <node concept="3Tm6S6" id="6nFpYlu6O1I" role="1B3o_S" />
      <node concept="3uibUv" id="6nFpYlu6PXo" role="1tU5fm">
        <ref role="3uigEE" node="6nFpYltKKoQ" resolve="UpdatesRecorder.ChangesTracker" />
      </node>
    </node>
    <node concept="312cEg" id="6nFpYlu6n2t" role="jymVt">
      <property role="TrG5h" value="changeSet" />
      <node concept="3Tm6S6" id="6nFpYlu6n2u" role="1B3o_S" />
      <node concept="2hMVRd" id="6nFpYlu6nmb" role="1tU5fm">
        <node concept="3Tqbb2" id="1ZiI2IC59TO" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="6nFpYlu6nQ6" role="33vP2m">
        <node concept="2i4dXS" id="6nFpYlu6nPk" role="2ShVmc">
          <node concept="3Tqbb2" id="1ZiI2IC5iRc" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4hQVL4f8_kw" role="jymVt" />
    <node concept="312cEg" id="6nFpYlv3d4Y" role="jymVt">
      <property role="TrG5h" value="origin2invList" />
      <node concept="3Tm6S6" id="6nFpYlv3d4Z" role="1B3o_S" />
      <node concept="3rvAFt" id="6nFpYlv4ePh" role="1tU5fm">
        <node concept="3Tqbb2" id="6nFpYlvcCf4" role="3rvQeY" />
        <node concept="2I9FWS" id="6nFpYlvalhe" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="6nFpYlv3gK6" role="33vP2m">
        <node concept="3rGOSV" id="6nFpYlv4ila" role="2ShVmc">
          <node concept="3Tqbb2" id="6nFpYlvcH1r" role="3rHrn6" />
          <node concept="2I9FWS" id="6nFpYlvalPW" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6YGKjaPwvly" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="6YGKjaPwvlz" role="1B3o_S" />
      <node concept="H_c77" id="6YGKjaPwvl_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6YGKjaPwyUU" role="jymVt">
      <property role="TrG5h" value="unit" />
      <node concept="3Tm6S6" id="6YGKjaPwyUV" role="1B3o_S" />
      <node concept="3Tqbb2" id="6YGKjaPwyUX" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4hQVL4f8_uU" role="jymVt" />
    <node concept="3Tm1VV" id="6nFpYlu02jE" role="1B3o_S" />
    <node concept="16euLQ" id="6nFpYludLhd" role="16eVyc">
      <property role="TrG5h" value="U" />
    </node>
    <node concept="3UR2Jj" id="721IDwqGO$k" role="lGtFl">
      <node concept="TZ5HA" id="721IDwqGO$l" role="TZ5H$">
        <node concept="1dT_AC" id="721IDwqGO$m" role="1dT_Ay">
          <property role="1dT_AB" value="Serves as an aid for implementing incremental update of Coderules program." />
        </node>
      </node>
      <node concept="TZ5HA" id="5Qx6_656drH" role="TZ5H$">
        <node concept="1dT_AC" id="5Qx6_656drI" role="1dT_Ay">
          <property role="1dT_AB" value="Enables to track a list of update objects: (source -&gt; list of U)." />
        </node>
      </node>
      <node concept="TZ5HA" id="721IDwqGYGf" role="TZ5H$">
        <node concept="1dT_AC" id="721IDwqGYGg" role="1dT_Ay">
          <property role="1dT_AB" value="Maintains a map of reversed dependencies: (required -&gt; source)." />
        </node>
      </node>
      <node concept="TZ5HA" id="721IDwqHaMB" role="TZ5H$">
        <node concept="1dT_AC" id="721IDwqHaMC" role="1dT_Ay">
          <property role="1dT_AB" value="Listens to model events and collects changed nodes. " />
        </node>
      </node>
      <node concept="TZ5HA" id="721IDwqHbeT" role="TZ5H$">
        <node concept="1dT_AC" id="721IDwqHbeU" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
    </node>
  </node>
</model>

