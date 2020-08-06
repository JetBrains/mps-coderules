<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="13" />
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
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="psoy" ref="r:78313117-90ee-47a5-a91e-b5213df7f611(jetbrains.mps.coderules.runtime.result)" />
    <import index="lehm" ref="r:464fcc95-fddb-47d1-b620-592cbf6b8bf2(jetbrains.mps.coderules.runtime.memoizer)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
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
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
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
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
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
          <node concept="1PaTwC" id="2jxMt58$gL4" role="1aUNEU">
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
      <node concept="37vLTG" id="3OUB6BCcGW4" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="3OUB6BCiXp$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
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
        <node concept="3SKdUt" id="7DvO2M9Uag$" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxPg" role="1aUNEU">
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
        <node concept="3cpWs8" id="3OUB6BCcYjb" role="3cqZAp">
          <node concept="3cpWsn" id="3OUB6BCcYjc" role="3cpWs9">
            <property role="TrG5h" value="rules" />
            <node concept="_YKpA" id="3OUB6BCcY0k" role="1tU5fm">
              <node concept="3uibUv" id="3OUB6BCel_n" role="_ZDj9">
                <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3OUB6BCf9hu" role="33vP2m">
              <node concept="Tc6Ow" id="3OUB6BCf92p" role="2ShVmc">
                <node concept="3uibUv" id="3OUB6BCf92r" role="HW$YZ">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
                <node concept="3cmrfG" id="3OUB6BCfdYw" role="3lWHg$">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3OUB6BCeWHE" role="3cqZAp">
          <node concept="3clFbS" id="3OUB6BCeWHH" role="2LFqv$">
            <node concept="3clFbF" id="3OUB6BCfc5X" role="3cqZAp">
              <node concept="2OqwBi" id="3OUB6BCfcSw" role="3clFbG">
                <node concept="37vLTw" id="3OUB6BCfc5V" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OUB6BCcYjc" resolve="rules" />
                </node>
                <node concept="TSZUe" id="3OUB6BCfdvi" role="2OqNvi">
                  <node concept="2OqwBi" id="3OUB6BCfdBx" role="25WWJ7">
                    <node concept="37vLTw" id="3OUB6BCfdBy" role="2Oq$k0">
                      <ref role="3cqZAo" node="3OUB6BCeWHI" resolve="rb" />
                    </node>
                    <node concept="liA8E" id="3OUB6BCfdBz" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7eGEHDlc$ck" resolve="toRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3OUB6BCeWHI" role="1Duv9x">
            <property role="TrG5h" value="rb" />
            <node concept="3uibUv" id="3OUB6BCeWHM" role="1tU5fm">
              <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
            </node>
          </node>
          <node concept="37vLTw" id="3OUB6BCeWHN" role="1DdaDG">
            <ref role="3cqZAo" node="7DvO2M9Uagt" resolve="ruleBuilders" />
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
                  <ref role="37wK5l" to="i348:4MqhgXUndvp" resolve="table" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7DvO2M9UagJ" role="2OqNvi">
              <ref role="37wK5l" node="3OUB6BC9eNe" resolve="addRules" />
              <node concept="37vLTw" id="7DvO2M9UagK" role="37wK5m">
                <ref role="3cqZAo" node="7DvO2M9Uagr" resolve="ruleTemplate" />
              </node>
              <node concept="37vLTw" id="3OUB6BCcNeG" role="37wK5m">
                <ref role="3cqZAo" node="3OUB6BCcGW4" resolve="key" />
              </node>
              <node concept="37vLTw" id="3OUB6BCd4mA" role="37wK5m">
                <ref role="3cqZAo" node="3OUB6BCcYjc" resolve="rules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OUB6BCdyE5" role="3cqZAp">
          <node concept="2OqwBi" id="3OUB6BCdCjw" role="3clFbG">
            <node concept="2OqwBi" id="3OUB6BCdAlY" role="2Oq$k0">
              <node concept="37vLTw" id="3OUB6BCdyE3" role="2Oq$k0">
                <ref role="3cqZAo" node="3OUB6BCcYjc" resolve="rules" />
              </node>
              <node concept="3$u5V9" id="3OUB6BCdBGu" role="2OqNvi">
                <node concept="1bVj0M" id="3OUB6BCdBGw" role="23t8la">
                  <node concept="3clFbS" id="3OUB6BCdBGx" role="1bW5cS">
                    <node concept="3clFbF" id="3OUB6BCdBKt" role="3cqZAp">
                      <node concept="2OqwBi" id="3OUB6BCdBSg" role="3clFbG">
                        <node concept="37vLTw" id="3OUB6BCdBKs" role="2Oq$k0">
                          <ref role="3cqZAo" node="3OUB6BCdBGy" resolve="it" />
                        </node>
                        <node concept="liA8E" id="3OUB6BCdC1E" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3OUB6BCdBGy" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3OUB6BCdBGz" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3OUB6BCdCL7" role="2OqNvi" />
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
                  <ref role="37wK5l" to="i348:4MqhgXUndvp" resolve="table" />
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
                        <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="ruleTableBuilders" />
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
                <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="ruleTableBuilders" />
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
          <node concept="1PaTwC" id="589APehYxPr" role="1aUNEU">
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
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
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
        <property role="TrG5h" value="ruleTable" />
        <node concept="3uibUv" id="7DvO2M9Uahr" role="1tU5fm">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="3uibUv" id="7DvO2M9Uahs" role="3clF45">
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
      </node>
      <node concept="3Tm6S6" id="7DvO2M9Uaht" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Uahu" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9Uahv" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9Uahw" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="7DvO2M9Uahx" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
            </node>
            <node concept="3EllGN" id="7DvO2M9Uahy" role="33vP2m">
              <node concept="37vLTw" id="7DvO2M9Uahz" role="3ElVtu">
                <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="ruleTable" />
              </node>
              <node concept="37vLTw" id="7DvO2M9Uah$" role="3ElQJh">
                <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="ruleTableBuilders" />
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
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesListTable.RuleTableBuilder" />
                    <node concept="2OqwBi" id="7DvO2M9UahF" role="37wK5m">
                      <node concept="37vLTw" id="7DvO2M9UahG" role="2Oq$k0">
                        <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="ruleTable" />
                      </node>
                      <node concept="liA8E" id="7DvO2M9UahH" role="2OqNvi">
                        <ref role="37wK5l" to="i348:4MqhgXUN1Pe" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7DvO2M9UahL" role="37wK5m">
                      <node concept="37vLTw" id="7DvO2M9UahM" role="2Oq$k0">
                        <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="ruleTable" />
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
                    <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="ruleTable" />
                  </node>
                  <node concept="37vLTw" id="7DvO2M9Uai9" role="3ElQJh">
                    <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="ruleTableBuilders" />
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
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
      </node>
      <node concept="3Tm6S6" id="6OXbTDy166v" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy166w" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDy166x" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDy166y" role="3cpWs9">
            <property role="TrG5h" value="handlerBuilder" />
            <node concept="3uibUv" id="6OXbTDzvoxW" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
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
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesListTable.RuleTableBuilder" />
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
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="2$$Q_FeUrOK" role="3clF45">
        <node concept="3uibUv" id="2$$Q_FeUrP1" role="3O5elw">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2$$Q_FeUqdR" role="1B3o_S" />
      <node concept="3clFbS" id="2$$Q_FeUpFz" role="3clF47">
        <node concept="3SKdUt" id="2$$Q_FeUDy7" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxPw" role="1aUNEU">
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
          <node concept="1PaTwC" id="589APehYxP$" role="1aUNEU">
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
          <node concept="1PaTwC" id="589APehYxPN" role="1aUNEU">
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
                          <ref role="2Oxat5" node="2$$Q_FeUj83" resolve="ruleTable" />
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
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
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
                  <ref role="2Oxat5" node="2$$Q_FeUj83" resolve="ruleTable" />
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
                          <ref role="3cqZAo" node="2$$Q_FeUj83" resolve="ruleTable" />
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
                    <ref role="3cqZAo" node="2$$Q_FeUj83" resolve="ruleTable" />
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
                      <ref role="3cqZAo" node="2$$Q_FeUj83" resolve="ruleTable" />
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
                          <ref role="2Oxat5" node="2$$Q_FeUj83" resolve="ruleTable" />
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
        <property role="TrG5h" value="ruleTable" />
        <node concept="3Tm6S6" id="2$$Q_FeUj84" role="1B3o_S" />
        <node concept="3uibUv" id="2$$Q_FeUj86" role="1tU5fm">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
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
      <property role="TrG5h" value="RuleTableBuilder" />
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
                      <node concept="1LlUBW" id="3OUB6BCfKqr" role="HW$YZ">
                        <node concept="3uibUv" id="3OUB6BCfKqs" role="1Lm7xW">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="_YKpA" id="3OUB6BCfKqt" role="1Lm7xW">
                          <node concept="3uibUv" id="3OUB6BCgleO" role="_ZDj9">
                            <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                          </node>
                        </node>
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
      <node concept="3clFb_" id="3OUB6BC9eNe" role="jymVt">
        <property role="TrG5h" value="addRules" />
        <node concept="37vLTG" id="3OUB6BC9mkc" role="3clF46">
          <property role="TrG5h" value="location" />
          <node concept="3uibUv" id="3OUB6BC9o58" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="3OUB6BC9kRj" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="3uibUv" id="3OUB6BCc8hN" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="3OUB6BC9rb_" role="3clF46">
          <property role="TrG5h" value="rules" />
          <node concept="_YKpA" id="3OUB6BCdjtt" role="1tU5fm">
            <node concept="3uibUv" id="3OUB6BCelZ7" role="_ZDj9">
              <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3OUB6BC9eNg" role="3clF45" />
        <node concept="3clFbS" id="3OUB6BC9eNh" role="3clF47">
          <node concept="3clFbF" id="3OUB6BCc$9Y" role="3cqZAp">
            <node concept="1rXfSq" id="3OUB6BCc$9W" role="3clFbG">
              <ref role="37wK5l" node="3OUB6BCcgkq" resolve="registerRules" />
              <node concept="37vLTw" id="3OUB6BCc$$V" role="37wK5m">
                <ref role="3cqZAo" node="3OUB6BC9rb_" resolve="rules" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OUB6BCcb$$" role="3cqZAp">
            <node concept="2OqwBi" id="3OUB6BCcb$_" role="3clFbG">
              <node concept="3EllGN" id="3OUB6BCcb$A" role="2Oq$k0">
                <node concept="37vLTw" id="3OUB6BCcb$B" role="3ElVtu">
                  <ref role="3cqZAo" node="3OUB6BC9mkc" resolve="location" />
                </node>
                <node concept="37vLTw" id="3OUB6BCcb$C" role="3ElQJh">
                  <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="templateLoc2rules" />
                </node>
              </node>
              <node concept="TSZUe" id="3OUB6BCcb$D" role="2OqNvi">
                <node concept="1Ls8ON" id="3OUB6BCccXD" role="25WWJ7">
                  <node concept="37vLTw" id="3OUB6BCcd_j" role="1Lso8e">
                    <ref role="3cqZAo" node="3OUB6BC9kRj" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="3OUB6BCc$NP" role="1Lso8e">
                    <ref role="3cqZAo" node="3OUB6BC9rb_" resolve="rules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3OUB6BC9gpU" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3OUB6BC9d9$" role="jymVt" />
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
          <node concept="3clFbF" id="3OUB6BCk884" role="3cqZAp">
            <node concept="1rXfSq" id="3OUB6BCk882" role="3clFbG">
              <ref role="37wK5l" node="3OUB6BC9eNe" resolve="addRules" />
              <node concept="37vLTw" id="3OUB6BCk8xZ" role="37wK5m">
                <ref role="3cqZAo" node="4MqhgXUMgMT" resolve="location" />
              </node>
              <node concept="Xl_RD" id="3OUB6BCk8RE" role="37wK5m">
                <property role="Xl_RC" value="&lt;no input&gt;" />
              </node>
              <node concept="2ShNRf" id="3OUB6BCk91j" role="37wK5m">
                <node concept="Tc6Ow" id="3OUB6BCk9wx" role="2ShVmc">
                  <node concept="3uibUv" id="3OUB6BCkaop" role="HW$YZ">
                    <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                  </node>
                  <node concept="10QFUN" id="3OUB6BCkbtY" role="HW$Y0">
                    <node concept="37vLTw" id="3OUB6BCkbtX" role="10QFUP">
                      <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                    </node>
                    <node concept="3uibUv" id="3OUB6BCkbIQ" role="10QFUM">
                      <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUMb3C" role="jymVt" />
      <node concept="3clFb_" id="3OUB6BCcgkq" role="jymVt">
        <property role="TrG5h" value="registerRules" />
        <node concept="37vLTG" id="3OUB6BCclji" role="3clF46">
          <property role="TrG5h" value="rules" />
          <node concept="A3Dl8" id="3OUB6BCcnKy" role="1tU5fm">
            <node concept="3uibUv" id="3OUB6BCemLr" role="A3Ik2">
              <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3OUB6BCcgks" role="3clF45" />
        <node concept="3clFbS" id="3OUB6BCcgkt" role="3clF47">
          <node concept="1DcWWT" id="3OUB6BCcxub" role="3cqZAp">
            <node concept="3clFbS" id="3OUB6BCcxue" role="2LFqv$">
              <node concept="3clFbF" id="3OUB6BCcAcy" role="3cqZAp">
                <node concept="1rXfSq" id="3OUB6BCcAcx" role="3clFbG">
                  <ref role="37wK5l" node="3OUB6BCcAc6" resolve="register" />
                  <node concept="37vLTw" id="3OUB6BCcAcw" role="37wK5m">
                    <ref role="3cqZAo" node="3OUB6BCcxuf" resolve="rule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3OUB6BCcxuf" role="1Duv9x">
              <property role="TrG5h" value="rule" />
              <node concept="3uibUv" id="3OUB6BCcxuj" role="1tU5fm">
                <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
              </node>
            </node>
            <node concept="37vLTw" id="3OUB6BCcxuk" role="1DdaDG">
              <ref role="3cqZAo" node="3OUB6BCclji" resolve="rules" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3OUB6BCciKp" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3OUB6BCcCXV" role="jymVt" />
      <node concept="3clFb_" id="3OUB6BCcAc6" role="jymVt">
        <property role="TrG5h" value="register" />
        <node concept="3Tm6S6" id="3OUB6BCcAc7" role="1B3o_S" />
        <node concept="3cqZAl" id="3OUB6BCcAc8" role="3clF45" />
        <node concept="37vLTG" id="3OUB6BCcAbW" role="3clF46">
          <property role="TrG5h" value="rule" />
          <node concept="3uibUv" id="3OUB6BCcAbX" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
        <node concept="3clFbS" id="3OUB6BCcAbd" role="3clF47">
          <node concept="3clFbJ" id="3OUB6BCcAbe" role="3cqZAp">
            <node concept="3clFbS" id="3OUB6BCcAbf" role="3clFbx">
              <node concept="3cpWs8" id="3OUB6BCcAbg" role="3cqZAp">
                <node concept="3cpWsn" id="3OUB6BCcAbh" role="3cpWs9">
                  <property role="TrG5h" value="msg" />
                  <node concept="17QB3L" id="3OUB6BCcAbi" role="1tU5fm" />
                  <node concept="3cpWs3" id="3OUB6BCcAbj" role="33vP2m">
                    <node concept="Xl_RD" id="3OUB6BCcAbk" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                    <node concept="3cpWs3" id="3OUB6BCcAbl" role="3uHU7B">
                      <node concept="3cpWs3" id="3OUB6BCcAbm" role="3uHU7B">
                        <node concept="3cpWs3" id="3OUB6BCcAbn" role="3uHU7B">
                          <node concept="3cpWs3" id="3OUB6BCcAbo" role="3uHU7B">
                            <node concept="3cpWs3" id="3OUB6BCcAbp" role="3uHU7B">
                              <node concept="Xl_RD" id="3OUB6BCcAbq" role="3uHU7B">
                                <property role="Xl_RC" value="duplicate tag '" />
                              </node>
                              <node concept="2OqwBi" id="3OUB6BCcAbr" role="3uHU7w">
                                <node concept="37vLTw" id="3OUB6BCcAc3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3OUB6BCcAbW" resolve="rule" />
                                </node>
                                <node concept="liA8E" id="3OUB6BCcAbt" role="2OqNvi">
                                  <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="3OUB6BCcAbu" role="3uHU7w">
                              <property role="Xl_RC" value="' (" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3OUB6BCcAbv" role="3uHU7w">
                            <node concept="37vLTw" id="3OUB6BCcAbY" role="2Oq$k0">
                              <ref role="3cqZAo" node="3OUB6BCcAbW" resolve="rule" />
                            </node>
                            <node concept="liA8E" id="3OUB6BCcAbx" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3OUB6BCcAby" role="3uHU7w">
                          <property role="Xl_RC" value=" and " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3OUB6BCcAbz" role="3uHU7w">
                        <node concept="3EllGN" id="3OUB6BCcAb$" role="2Oq$k0">
                          <node concept="2OqwBi" id="3OUB6BCcAb_" role="3ElVtu">
                            <node concept="37vLTw" id="3OUB6BCcAc1" role="2Oq$k0">
                              <ref role="3cqZAo" node="3OUB6BCcAbW" resolve="rule" />
                            </node>
                            <node concept="liA8E" id="3OUB6BCcAbB" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3OUB6BCcAbC" role="3ElQJh">
                            <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3OUB6BCcAbD" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.tag()" resolve="tag" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="3OUB6BCcAbE" role="3cqZAp">
                <node concept="2ShNRf" id="3OUB6BCcAbF" role="YScLw">
                  <node concept="1pGfFk" id="3OUB6BCcAbG" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="37vLTw" id="3OUB6BCcAbH" role="37wK5m">
                      <ref role="3cqZAo" node="3OUB6BCcAbh" resolve="msg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3OUB6BCcAbI" role="3clFbw">
              <node concept="37vLTw" id="3OUB6BCcAbJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
              </node>
              <node concept="2Nt0df" id="3OUB6BCcAbK" role="2OqNvi">
                <node concept="2OqwBi" id="3OUB6BCcAbL" role="38cxEo">
                  <node concept="37vLTw" id="3OUB6BCcAc2" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OUB6BCcAbW" resolve="rule" />
                  </node>
                  <node concept="liA8E" id="3OUB6BCcAbN" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OUB6BCcAbO" role="3cqZAp">
            <node concept="37vLTI" id="3OUB6BCcAbP" role="3clFbG">
              <node concept="37vLTw" id="3OUB6BCcAc0" role="37vLTx">
                <ref role="3cqZAo" node="3OUB6BCcAbW" resolve="rule" />
              </node>
              <node concept="3EllGN" id="3OUB6BCcAbR" role="37vLTJ">
                <node concept="2OqwBi" id="3OUB6BCcAbS" role="3ElVtu">
                  <node concept="37vLTw" id="3OUB6BCcAbZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OUB6BCcAbW" resolve="rule" />
                  </node>
                  <node concept="liA8E" id="3OUB6BCcAbU" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                  </node>
                </node>
                <node concept="37vLTw" id="3OUB6BCcAbV" role="3ElQJh">
                  <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OUB6BCcAcv" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OUB6BCce8e" role="jymVt" />
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
                <node concept="1LlUBW" id="3OUB6BCgNu7" role="_ZDj9">
                  <node concept="3uibUv" id="3OUB6BCgNu8" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="_YKpA" id="3OUB6BCgNu9" role="1Lm7xW">
                    <node concept="3uibUv" id="3OUB6BCgR0M" role="_ZDj9">
                      <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                    </node>
                  </node>
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
                    <node concept="1LlUBW" id="3OUB6BCgRxM" role="uOL27">
                      <node concept="3uibUv" id="3OUB6BCgRxN" role="1Lm7xW">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="_YKpA" id="3OUB6BCgRxO" role="1Lm7xW">
                        <node concept="3uibUv" id="3OUB6BCgV1k" role="_ZDj9">
                          <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                        </node>
                      </node>
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
                  <node concept="3cpWs8" id="3OUB6BCgXzr" role="3cqZAp">
                    <node concept="3cpWsn" id="3OUB6BCgXzs" role="3cpWs9">
                      <property role="TrG5h" value="pair" />
                      <node concept="1LlUBW" id="3OUB6BCgXzf" role="1tU5fm">
                        <node concept="3uibUv" id="3OUB6BCgXzq" role="1Lm7xW">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="_YKpA" id="3OUB6BCgXzo" role="1Lm7xW">
                          <node concept="3uibUv" id="3OUB6BCgXzp" role="_ZDj9">
                            <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3OUB6BCgXzt" role="33vP2m">
                        <node concept="37vLTw" id="3OUB6BCgXzu" role="2Oq$k0">
                          <ref role="3cqZAo" node="cmlg9Ow60Q" resolve="itr" />
                        </node>
                        <node concept="v1n4t" id="3OUB6BCgXzv" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3OUB6BCgWKO" role="3cqZAp">
                    <node concept="3clFbS" id="3OUB6BCgWKQ" role="3clFbx">
                      <node concept="3clFbF" id="3OUB6BChb_o" role="3cqZAp">
                        <node concept="2OqwBi" id="3OUB6BChbO2" role="3clFbG">
                          <node concept="37vLTw" id="3OUB6BChb_m" role="2Oq$k0">
                            <ref role="3cqZAo" node="cmlg9Ow60Q" resolve="itr" />
                          </node>
                          <node concept="2YMH90" id="3OUB6BChckG" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3OUB6BCh2k2" role="3clFbw">
                      <node concept="1LFfDK" id="3OUB6BCh1ve" role="2Oq$k0">
                        <node concept="3cmrfG" id="3OUB6BCh1yO" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="3OUB6BCgXzw" role="1LFl5Q">
                          <ref role="3cqZAo" node="3OUB6BCgXzs" resolve="pair" />
                        </node>
                      </node>
                      <node concept="2HwmR7" id="3OUB6BCh2T$" role="2OqNvi">
                        <node concept="1bVj0M" id="3OUB6BCh2TA" role="23t8la">
                          <node concept="3clFbS" id="3OUB6BCh2TB" role="1bW5cS">
                            <node concept="3clFbF" id="3OUB6BCh9T1" role="3cqZAp">
                              <node concept="2OqwBi" id="3OUB6BChaEq" role="3clFbG">
                                <node concept="37vLTw" id="3OUB6BCh9T0" role="2Oq$k0">
                                  <ref role="3cqZAo" node="cmlg9Ow0RX" resolve="toRemove" />
                                </node>
                                <node concept="3JPx81" id="3OUB6BChblf" role="2OqNvi">
                                  <node concept="37vLTw" id="3OUB6BChbv6" role="25WWJ7">
                                    <ref role="3cqZAo" node="3OUB6BCh2TC" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="3OUB6BCh2TC" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="3OUB6BCh2TD" role="1tU5fm" />
                          </node>
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
              <node concept="3clFbF" id="3OUB6BC6npI" role="3cqZAp">
                <node concept="2YIFZM" id="3OUB6BC6ntH" role="3clFbG">
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List,java.util.Comparator)" resolve="sort" />
                  <node concept="37vLTw" id="3OUB6BC6nw8" role="37wK5m">
                    <ref role="3cqZAo" node="4MqhgXUPgU8" resolve="pairs" />
                  </node>
                  <node concept="1bVj0M" id="3OUB6BC6nE5" role="37wK5m">
                    <node concept="3clFbS" id="3OUB6BC6nE7" role="1bW5cS">
                      <node concept="3cpWs6" id="3OUB6BC9Kjx" role="3cqZAp">
                        <node concept="2YIFZM" id="3OUB6BC9Lrc" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~CharSequence" resolve="CharSequence" />
                          <ref role="37wK5l" to="wyt6:~CharSequence.compare(java.lang.CharSequence,java.lang.CharSequence)" resolve="compare" />
                          <node concept="2YIFZM" id="3OUB6BC9Lrd" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                            <node concept="1LFfDK" id="3OUB6BCi1mR" role="37wK5m">
                              <node concept="3cmrfG" id="3OUB6BCi1GE" role="1LF_Uc">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="3OUB6BChZOO" role="1LFl5Q">
                                <ref role="3cqZAo" node="3OUB6BC6nHz" resolve="a" />
                              </node>
                            </node>
                          </node>
                          <node concept="2YIFZM" id="3OUB6BC9Lrh" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                            <node concept="1LFfDK" id="3OUB6BCi5j6" role="37wK5m">
                              <node concept="3cmrfG" id="3OUB6BCi5XB" role="1LF_Uc">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="3OUB6BCi4rH" role="1LFl5Q">
                                <ref role="3cqZAo" node="3OUB6BC6nXb" resolve="b" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3OUB6BC6nHz" role="1bW2Oz">
                      <property role="TrG5h" value="a" />
                      <node concept="1LlUBW" id="3OUB6BChQbi" role="1tU5fm">
                        <node concept="3uibUv" id="3OUB6BChQbj" role="1Lm7xW">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="_YKpA" id="3OUB6BChQbk" role="1Lm7xW">
                          <node concept="3uibUv" id="3OUB6BChQbl" role="_ZDj9">
                            <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3OUB6BC6nXb" role="1bW2Oz">
                      <property role="TrG5h" value="b" />
                      <node concept="1LlUBW" id="3OUB6BChTci" role="1tU5fm">
                        <node concept="3uibUv" id="3OUB6BChTcj" role="1Lm7xW">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="_YKpA" id="3OUB6BChTck" role="1Lm7xW">
                          <node concept="3uibUv" id="3OUB6BChTcl" role="_ZDj9">
                            <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4MqhgXUMDP5" role="3cqZAp">
                <node concept="2OqwBi" id="4MqhgXUMErd" role="3clFbG">
                  <node concept="37vLTw" id="4MqhgXUMDP3" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MqhgXUCPqM" resolve="allRules" />
                  </node>
                  <node concept="X8dFx" id="4MqhgXUMFuM" role="2OqNvi">
                    <node concept="2OqwBi" id="3OUB6BChNuc" role="25WWJ7">
                      <node concept="37vLTw" id="4MqhgXUPjiz" role="2Oq$k0">
                        <ref role="3cqZAo" node="4MqhgXUPgU8" resolve="pairs" />
                      </node>
                      <node concept="3goQfb" id="3OUB6BChO_x" role="2OqNvi">
                        <node concept="1bVj0M" id="3OUB6BChO_z" role="23t8la">
                          <node concept="3clFbS" id="3OUB6BChO_$" role="1bW5cS">
                            <node concept="3clFbF" id="3OUB6BChOWF" role="3cqZAp">
                              <node concept="1LFfDK" id="3OUB6BChPIR" role="3clFbG">
                                <node concept="3cmrfG" id="3OUB6BChPUk" role="1LF_Uc">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="37vLTw" id="3OUB6BChOWE" role="1LFl5Q">
                                  <ref role="3cqZAo" node="3OUB6BChO__" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="3OUB6BChO__" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="3OUB6BChO_A" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4MqhgXUPgU8" role="1Duv9x">
              <property role="TrG5h" value="pairs" />
              <node concept="_YKpA" id="4MqhgXUPgUc" role="1tU5fm">
                <node concept="1LlUBW" id="3OUB6BChGKn" role="_ZDj9">
                  <node concept="3uibUv" id="3OUB6BChGKo" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="_YKpA" id="3OUB6BChGKp" role="1Lm7xW">
                    <node concept="3uibUv" id="3OUB6BChKRO" role="_ZDj9">
                      <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                    </node>
                  </node>
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
            <node concept="1LlUBW" id="3OUB6BCbQwv" role="_ZDj9">
              <node concept="3uibUv" id="3OUB6BCbSdj" role="1Lm7xW">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="_YKpA" id="3OUB6BCbWkI" role="1Lm7xW">
                <node concept="3uibUv" id="3OUB6BCgijc" role="_ZDj9">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2ShNRf" id="4MqhgXUMifo" role="33vP2m">
          <node concept="32Fmki" id="4MqhgXUMieq" role="2ShVmc">
            <node concept="3uibUv" id="4MqhgXUMier" role="3rHrn6">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="_YKpA" id="4MqhgXUMies" role="3rHtpV">
              <node concept="1LlUBW" id="3OUB6BCbZ0F" role="_ZDj9">
                <node concept="3uibUv" id="3OUB6BCc0Yt" role="1Lm7xW">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="_YKpA" id="3OUB6BCc2Iw" role="1Lm7xW">
                  <node concept="3uibUv" id="3OUB6BCgk1i" role="_ZDj9">
                    <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                  </node>
                </node>
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
      <property role="TrG5h" value="ruleTableBuilders" />
      <node concept="3Tm6S6" id="7DvO2M9Uaih" role="1B3o_S" />
      <node concept="3rvAFt" id="7DvO2M9Uaii" role="1tU5fm">
        <node concept="3uibUv" id="7DvO2M9Uaij" role="3rvQeY">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
        <node concept="3uibUv" id="7DvO2M9Uaik" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="7DvO2M9Uail" role="33vP2m">
        <node concept="3rGOSV" id="7DvO2M9Uaim" role="2ShVmc">
          <node concept="3uibUv" id="7DvO2M9Uain" role="3rHrn6">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
          <node concept="3uibUv" id="7DvO2M9Uaio" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
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
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="6OXbTDy164P" role="33vP2m">
        <node concept="3rGOSV" id="6OXbTDy163E" role="2ShVmc">
          <node concept="3uibUv" id="6OXbTD$xIHz" role="3rHrn6">
            <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
            <node concept="3qTvmN" id="6OXbTD$xJlQ" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="6OXbTDzvor7" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
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
                                <node concept="1PaTwC" id="589APehYxPV" role="1aUNEU">
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
          <node concept="1PaTwC" id="589APehYxQ1" role="1aUNEU">
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
          <node concept="1PaTwC" id="589APehYxQ5" role="1aUNEU">
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
          <node concept="1PaTwC" id="589APehYxQ9" role="1aUNEU">
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
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="cmlg9O$qY1" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7ncaR" role="3clF47">
        <node concept="3cpWs8" id="2Z9Itkddll5" role="3cqZAp">
          <node concept="3cpWsn" id="2Z9Itkddll6" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="2Z9Itkddll7" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oD" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Z9Itkdelyf" role="3cqZAp" />
        <node concept="1DcWWT" id="4MqhgXUSKVL" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUSKVO" role="2LFqv$">
            <node concept="3clFbF" id="2Z9ItkddN6w" role="3cqZAp">
              <node concept="37vLTI" id="2Z9ItkddNs6" role="3clFbG">
                <node concept="2OqwBi" id="2Z9ItkddNMX" role="37vLTx">
                  <node concept="37vLTw" id="2Z9ItkddNGc" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Z9Itkddll6" resolve="res" />
                  </node>
                  <node concept="liA8E" id="2Z9ItkddNZZ" role="2OqNvi">
                    <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="4MqhgXUSMc_" role="37wK5m">
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
                <node concept="37vLTw" id="2Z9ItkddN6u" role="37vLTJ">
                  <ref role="3cqZAo" node="2Z9Itkddll6" resolve="res" />
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
          <node concept="1PaTwC" id="5yr01fE2ejq" role="1aUNEU">
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
        <node concept="3J1_TO" id="2TBKto$1$4H" role="3cqZAp">
          <node concept="3uVAMA" id="2TBKto$1GRC" role="1zxBo5">
            <node concept="XOnhg" id="2TBKto$1GRD" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="2TBKto$1GRE" role="1tU5fm">
                <node concept="3uibUv" id="2TBKto$28zi" role="nSUat">
                  <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2TBKto$1GRF" role="1zc67A">
              <node concept="3clFbF" id="2Z9ItkdeTOA" role="3cqZAp">
                <node concept="37vLTI" id="2Z9Itkdf2r_" role="3clFbG">
                  <node concept="2OqwBi" id="2Z9Itkdf2VT" role="37vLTx">
                    <node concept="37vLTw" id="2Z9Itkdf2FF" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Z9Itkddll6" resolve="res" />
                    </node>
                    <node concept="liA8E" id="2Z9Itkdf37I" role="2OqNvi">
                      <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                      <node concept="2YIFZM" id="7TC1Xcd$6oR" role="37wK5m">
                        <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                        <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                        <node concept="37vLTw" id="2TBKto$2$X$" role="37wK5m">
                          <ref role="3cqZAo" node="2TBKto$1GRD" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2Z9ItkdeTO_" role="37vLTJ">
                    <ref role="3cqZAo" node="2Z9Itkddll6" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2TBKto$1$4J" role="1zxBo7">
            <node concept="3cpWs8" id="4MqhgXUQinu" role="3cqZAp">
              <node concept="3cpWsn" id="4MqhgXUQinv" role="3cpWs9">
                <property role="TrG5h" value="mainRulesListBuilder" />
                <node concept="3uibUv" id="4MqhgXUQinf" role="1tU5fm">
                  <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesListTable.RuleTableBuilder" />
                </node>
                <node concept="2ShNRf" id="4MqhgXUQinw" role="33vP2m">
                  <node concept="1pGfFk" id="4MqhgXUQinx" role="2ShVmc">
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesListTable.RuleTableBuilder" />
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
            <node concept="3clFbF" id="2Z9ItkddSpy" role="3cqZAp">
              <node concept="37vLTI" id="2Z9ItkddT2f" role="3clFbG">
                <node concept="2OqwBi" id="2Z9ItkddTdd" role="37vLTx">
                  <node concept="37vLTw" id="2Z9ItkddT7G" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Z9Itkddll6" resolve="res" />
                  </node>
                  <node concept="liA8E" id="2Z9ItkddTgR" role="2OqNvi">
                    <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="4MqhgXUSOsg" role="37wK5m">
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
                </node>
                <node concept="37vLTw" id="2Z9ItkddSpw" role="37vLTJ">
                  <ref role="3cqZAo" node="2Z9Itkddll6" resolve="res" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2TBKto$2ijV" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs6" id="7nkyKX7nru7" role="3cqZAp">
          <node concept="37vLTw" id="2Z9ItkddEBa" role="3cqZAk">
            <ref role="3cqZAo" node="2Z9Itkddll6" resolve="res" />
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
      <node concept="37vLTG" id="61G6TdDK_5y" role="3clF46">
        <property role="TrG5h" value="recursively" />
        <node concept="10P_77" id="61G6TdDKG4G" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4QPCta1bMC8" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4$YN6QuyBIN" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1bMCa" role="3clF47">
        <node concept="3cpWs8" id="4QPCta1bMCb" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1bMCc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4QPCta1bMCd" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oE" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4hQVL4fbdNR" role="3cqZAp">
          <node concept="3cpWsn" id="4hQVL4fbdNS" role="3cpWs9">
            <property role="TrG5h" value="required" />
            <node concept="3vKaQO" id="4hQVL4fahqn" role="1tU5fm">
              <node concept="3Tqbb2" id="4hQVL4fahqq" role="3O5elw" />
            </node>
            <node concept="2ShNRf" id="3OUB6BBR90f" role="33vP2m">
              <node concept="2i4dXS" id="3OUB6BBR9vl" role="2ShVmc">
                <node concept="3Tqbb2" id="3OUB6BBRa5m" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4hQVL4fjaox" role="3cqZAp" />
        <node concept="3clFbJ" id="4hQVL4fbhuA" role="3cqZAp">
          <node concept="3clFbS" id="4hQVL4fbhuC" role="3clFbx">
            <node concept="3SKdUt" id="6OXbTDxA$Dn" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYxQo" role="1aUNEU">
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
                    <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
                    <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
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
              <node concept="2OqwBi" id="3OUB6BBRauS" role="3clFbG">
                <node concept="37vLTw" id="4hQVL4fbewD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4hQVL4fbdNS" resolve="required" />
                </node>
                <node concept="X8dFx" id="3OUB6BBRaFH" role="2OqNvi">
                  <node concept="1LFfDK" id="4hQVL4fbdNT" role="25WWJ7">
                    <node concept="3cmrfG" id="4hQVL4fbdNU" role="1LF_Uc">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="4hQVL4fbdNV" role="1LFl5Q">
                      <ref role="3cqZAo" node="2Qe6u2cltUs" resolve="noInput" />
                    </node>
                  </node>
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
          <node concept="1PaTwC" id="589APehYxQv" role="1aUNEU">
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
                <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="4QPCta1bMCu" role="37wK5m">
                  <node concept="Xjq3P" id="4QPCta1bMCv" role="2Oq$k0" />
                  <node concept="liA8E" id="4QPCta1bMCw" role="2OqNvi">
                    <ref role="37wK5l" node="4QPCta1aZLs" resolve="processInput" />
                    <node concept="37vLTw" id="4QPCta1bMCx" role="37wK5m">
                      <ref role="3cqZAo" node="4QPCta1bMC2" resolve="input" />
                    </node>
                    <node concept="37vLTw" id="61G6TdDL5vd" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdDK_5y" resolve="recursively" />
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
          <node concept="16syzq" id="5EDW3XEwYlf" role="11_B2D">
            <ref role="16sUi3" node="5EDW3XEwI2k" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5EDW3XEuhZd" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="16syzq" id="5EDW3XExFLR" role="1tU5fm">
          <ref role="16sUi3" node="5EDW3XEwI2i" resolve="Q" />
        </node>
      </node>
      <node concept="3uibUv" id="6OXbTDxOCKa" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4$YN6QuyIUM" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDxOzxx" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDxPbTd" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDxPbTe" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6OXbTDxPbTf" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oF" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
                    <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                    <node concept="1rXfSq" id="6OXbTDyhxQW" role="37wK5m">
                      <ref role="37wK5l" node="6OXbTDy1oEg" resolve="applyQueryTemplates" />
                      <node concept="37vLTw" id="cmlg9OIGvM" role="37wK5m">
                        <ref role="3cqZAo" node="cmlg9OIsrb" resolve="queryTemplate" />
                      </node>
                      <node concept="37vLTw" id="5EDW3XEurPf" role="37wK5m">
                        <ref role="3cqZAo" node="5EDW3XEuhZd" resolve="query" />
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
      <node concept="16euLQ" id="5EDW3XEwI2i" role="16eVyc">
        <property role="TrG5h" value="Q" />
        <node concept="3uibUv" id="5EDW3XEwI2j" role="3ztrMU">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEwI2k" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5EDW3XEwI2l" role="3ztrMU">
          <ref role="3uigEE" to="i348:6R6MIbU8M46" resolve="QueryTemplate.Token" />
          <node concept="16syzq" id="5EDW3XEwI2m" role="11_B2D">
            <ref role="16sUi3" node="5EDW3XEwI2i" resolve="Q" />
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
      <node concept="37vLTG" id="61G6TdDKMD5" role="3clF46">
        <property role="TrG5h" value="recursively" />
        <node concept="10P_77" id="61G6TdDKV8U" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2Qe6u2ckhfY" role="3clF46">
        <property role="TrG5h" value="collectedRequired" />
        <node concept="3vKaQO" id="3OUB6BBRaP9" role="1tU5fm">
          <node concept="3Tqbb2" id="3OUB6BBRaPb" role="3O5elw" />
        </node>
      </node>
      <node concept="3uibUv" id="4QPCta1aZLv" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="4QPCta1aZLw" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1aZLx" role="3clF47">
        <node concept="3SKdUt" id="4QPCta1aZLy" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxQB" role="1aUNEU">
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
        <node concept="3cpWs8" id="4QPCta1aZL$" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1aZL_" role="3cpWs9">
            <property role="TrG5h" value="applyingResult" />
            <node concept="3uibUv" id="4QPCta1aZLD" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
            </node>
            <node concept="3K4zz7" id="61G6TdDX2zW" role="33vP2m">
              <node concept="37vLTw" id="61G6TdDWVXj" role="3K4Cdx">
                <ref role="3cqZAo" node="61G6TdDKMD5" resolve="recursively" />
              </node>
              <node concept="2OqwBi" id="6nFpYltOZug" role="3K4E3e">
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
                </node>
              </node>
              <node concept="2OqwBi" id="61G6TdDXfHG" role="3K4GZi">
                <node concept="2ShNRf" id="61G6TdDXfHH" role="2Oq$k0">
                  <node concept="HV5vD" id="61G6TdDXfHI" role="2ShVmc">
                    <ref role="HV5vE" node="6nFpYltFQ8I" resolve="ProgramFactory.AssistedWalk" />
                  </node>
                </node>
                <node concept="liA8E" id="61G6TdDXfHJ" role="2OqNvi">
                  <ref role="37wK5l" node="61G6TdDSwHf" resolve="forEachOrigin" />
                  <node concept="37vLTw" id="61G6TdDXfHK" role="37wK5m">
                    <ref role="3cqZAo" node="4QPCta1aZLt" resolve="input" />
                  </node>
                  <node concept="2ShNRf" id="61G6TdDXfHL" role="37wK5m">
                    <node concept="1pGfFk" id="61G6TdDXfHM" role="2ShVmc">
                      <ref role="37wK5l" node="xaaVXvi$I3" resolve="ProgramFactory.TemplateApplicator" />
                      <node concept="3clFbT" id="61G6TdDXfHN" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1aZLE" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1aZLF" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4QPCta1aZLG" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
        <node concept="3clFbH" id="61G6TdDXut8" role="3cqZAp" />
        <node concept="3SKdUt" id="4QPCta1aZLL" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYxQI" role="1aUNEU">
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
        <node concept="3clFbF" id="3OUB6BBRQoq" role="3cqZAp">
          <node concept="2OqwBi" id="3OUB6BBRWvD" role="3clFbG">
            <node concept="37vLTw" id="3OUB6BBRQoo" role="2Oq$k0">
              <ref role="3cqZAo" node="2Qe6u2ckhfY" resolve="collectedRequired" />
            </node>
            <node concept="X8dFx" id="3OUB6BBS3OT" role="2OqNvi">
              <node concept="2OqwBi" id="3OUB6BBS6zv" role="25WWJ7">
                <node concept="37vLTw" id="3OUB6BBS6zw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
                </node>
                <node concept="2OwXpG" id="3OUB6BBS6zx" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2fobfNk6_p1" role="3cqZAp">
          <node concept="2OqwBi" id="2fobfNk6_p2" role="3cqZAk">
            <node concept="37vLTw" id="2fobfNk6_p3" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1aZLF" resolve="result" />
            </node>
            <node concept="liA8E" id="2fobfNk6_p4" role="2OqNvi">
              <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
              <node concept="1rXfSq" id="2fobfNk6_p5" role="37wK5m">
                <ref role="37wK5l" node="tIwzd1MM22" resolve="processRequired" />
                <node concept="1Ls8ON" id="2fobfNk6_p6" role="37wK5m">
                  <node concept="37vLTw" id="3OUB6BBSfmo" role="1Lso8e">
                    <ref role="3cqZAo" node="2Qe6u2ckhfY" resolve="collectedRequired" />
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
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oG" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
              <node concept="2OqwBi" id="3OUB6BBVQbf" role="2Oq$k0">
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
                <node concept="1KnU$U" id="3OUB6BBVS_d" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="tIwzd1MM1c" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="tIwzd1MM1d" role="3cqZAp">
          <node concept="3clFbS" id="tIwzd1MM1e" role="2LFqv$">
            <node concept="3cpWs8" id="6i42QSsvfVc" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsvfVd" role="3cpWs9">
                <property role="TrG5h" value="applyResult" />
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
                    <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="4MqhgXUA1zd" role="37wK5m">
                      <node concept="37vLTw" id="4MqhgXUA1j8" role="2Oq$k0">
                        <ref role="3cqZAo" node="6i42QSsvfVd" resolve="applyResult" />
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
                      <ref role="3cqZAo" node="6i42QSsvfVd" resolve="applyResult" />
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
                  <node concept="2OqwBi" id="3OUB6BBVTzw" role="2Oq$k0">
                    <node concept="2OqwBi" id="tIwzd1MM1y" role="2Oq$k0">
                      <node concept="2OqwBi" id="tIwzd1MM1z" role="2Oq$k0">
                        <node concept="2OqwBi" id="4MqhgXUA2j$" role="2Oq$k0">
                          <node concept="37vLTw" id="4MqhgXUA24H" role="2Oq$k0">
                            <ref role="3cqZAo" node="6i42QSsvfVd" resolve="applyResult" />
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
                    <node concept="1KnU$U" id="3OUB6BBVTZz" role="2OqNvi" />
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
          <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
          <node concept="16syzq" id="7XdbJdyQi3s" role="11_B2D">
            <ref role="16sUi3" node="7XdbJdyQdwM" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ntLU8GlSnL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5ntLU8GlSnM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5ntLU8GlSnC" role="3clF47">
        <node concept="3clFbH" id="5HVB6JRPBhO" role="3cqZAp" />
        <node concept="3cpWs8" id="5HVB6JRPBkr" role="3cqZAp">
          <node concept="3cpWsn" id="5HVB6JRPBks" role="3cpWs9">
            <property role="TrG5h" value="requiredNodes" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="5HVB6JRPBkt" role="1tU5fm">
              <node concept="3Tqbb2" id="5HVB6JRPBku" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="5HVB6JRPBkv" role="33vP2m">
              <node concept="Tc6Ow" id="5HVB6JRPBkw" role="2ShVmc">
                <node concept="3Tqbb2" id="5HVB6JRPBkx" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HVB6JRPBky" role="3cqZAp">
          <node concept="3cpWsn" id="5HVB6JRPBkz" role="3cpWs9">
            <property role="TrG5h" value="requiredCollector" />
            <node concept="3uibUv" id="5HVB6JRPBk$" role="1tU5fm">
              <ref role="3uigEE" to="i348:4vBwiiV6130" resolve="TemplateApplicationSession.RequireHook" />
            </node>
            <node concept="2ShNRf" id="5HVB6JRPBk_" role="33vP2m">
              <node concept="YeOm9" id="5HVB6JRPBkA" role="2ShVmc">
                <node concept="1Y3b0j" id="5HVB6JRPBkB" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="i348:4vBwiiV6130" resolve="TemplateApplicationSession.RequireHook" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="5HVB6JRPBkC" role="1B3o_S" />
                  <node concept="3clFb_" id="5HVB6JRPBkD" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="require" />
                    <node concept="37vLTG" id="5HVB6JRPBkE" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="5HVB6JRPBkF" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="5HVB6JRPBkG" role="3clF45" />
                    <node concept="3Tm1VV" id="5HVB6JRPBkH" role="1B3o_S" />
                    <node concept="3clFbS" id="5HVB6JRPBkI" role="3clF47">
                      <node concept="3clFbF" id="5HVB6JRPBkJ" role="3cqZAp">
                        <node concept="2OqwBi" id="5HVB6JRPBkK" role="3clFbG">
                          <node concept="37vLTw" id="5HVB6JRPBkL" role="2Oq$k0">
                            <ref role="3cqZAo" node="5HVB6JRPBks" resolve="requiredNodes" />
                          </node>
                          <node concept="TSZUe" id="5HVB6JRPBkM" role="2OqNvi">
                            <node concept="37vLTw" id="5HVB6JRPBkN" role="25WWJ7">
                              <ref role="3cqZAo" node="5HVB6JRPBkE" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5HVB6JRPBkO" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5HVB6JRPBj7" role="3cqZAp" />
        <node concept="3J1_TO" id="7Oc59RSA9rg" role="3cqZAp">
          <node concept="3uVAMA" id="5X1yxJI7J0W" role="1zxBo5">
            <node concept="XOnhg" id="5X1yxJI7J0X" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="5X1yxJI7J0Y" role="1tU5fm">
                <node concept="3uibUv" id="5X1yxJI7Rqk" role="nSUat">
                  <ref role="3uigEE" to="i348:5X1yxJHUo54" resolve="TemplateApplicationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5X1yxJI7J0Z" role="1zc67A">
              <node concept="3cpWs6" id="5X1yxJI8ze0" role="3cqZAp">
                <node concept="1Ls8ON" id="5X1yxJI8ze1" role="3cqZAk">
                  <node concept="2YIFZM" id="7TC1Xcd$6oW" role="1Lso8e">
                    <ref role="37wK5l" to="psoy:5X1yxJHYTYX" resolve="RECOVER" />
                    <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="5X1yxJI8ze3" role="37wK5m">
                      <node concept="1pGfFk" id="5X1yxJI8ze4" role="2ShVmc">
                        <ref role="37wK5l" to="i348:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                        <node concept="3cpWs3" id="5X1yxJI8ze5" role="37wK5m">
                          <node concept="1rXfSq" id="5X1yxJI8ze6" role="3uHU7w">
                            <ref role="37wK5l" node="5X1yxJI81iu" resolve="details" />
                            <node concept="37vLTw" id="5X1yxJI8ze7" role="37wK5m">
                              <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="5X1yxJI8ze8" role="3uHU7B">
                            <node concept="3cpWs3" id="5X1yxJI8ze9" role="3uHU7B">
                              <node concept="Xl_RD" id="5X1yxJI8zea" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="5X1yxJI8zeb" role="3uHU7w">
                                <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5X1yxJI8zec" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5X1yxJIamSZ" role="37wK5m">
                          <ref role="3cqZAo" node="5X1yxJI7J0X" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5HVB6JRVC_m" role="1Lso8e">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3uibUv" id="5HVB6JRWByM" role="3PaCim">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5HVB6JRVLiA" role="1Lso8e">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3Tqbb2" id="5HVB6JRWTib" role="3PaCim" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5X1yxJI7RAP" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="7Oc59RSA9ri" role="1zxBo7">
            <node concept="3clFbF" id="5HVB6JRQnmL" role="3cqZAp">
              <node concept="2OqwBi" id="5HVB6JRQnmM" role="3clFbG">
                <node concept="liA8E" id="5HVB6JRQnmN" role="2OqNvi">
                  <ref role="37wK5l" to="i348:7DvO2M9IiN4" resolve="addRequireHook" />
                  <node concept="37vLTw" id="5HVB6JRQnmO" role="37wK5m">
                    <ref role="3cqZAo" node="5HVB6JRPBkz" resolve="requiredCollector" />
                  </node>
                </node>
                <node concept="37vLTw" id="5HVB6JRQnmP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5HVB6JRQgYz" role="3cqZAp" />
            <node concept="3cpWs8" id="6i42QSsqtxd" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsqtxe" role="3cpWs9">
                <property role="TrG5h" value="builders" />
                <node concept="_YKpA" id="5HVB6JRXYZO" role="1tU5fm">
                  <node concept="3uibUv" id="5HVB6JRXYZQ" role="_ZDj9">
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
                    <node concept="37vLTw" id="7DvO2MaieSB" role="37wK5m">
                      <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
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
                        <node concept="16syzq" id="6R6MIbURx8Q" role="1tU5fm">
                          <ref role="16sUi3" node="7XdbJdyQdwM" resolve="T" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7XdbJdyLDL6" role="1bW5cS">
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
                                </node>
                              </node>
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
                <node concept="2YIFZM" id="7TC1Xcd$6oH" role="1Lso8e">
                  <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
                  <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="37vLTw" id="5HVB6JRA$Cm" role="1Lso8e">
                  <ref role="3cqZAo" node="6i42QSsqtxe" resolve="builders" />
                </node>
                <node concept="37vLTw" id="5HVB6JRUkHh" role="1Lso8e">
                  <ref role="3cqZAo" node="5HVB6JRPBks" resolve="requiredNodes" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7Oc59RSFW0W" role="3cqZAp" />
          </node>
          <node concept="3uVAMA" id="7Oc59RSA9rj" role="1zxBo5">
            <node concept="XOnhg" id="7Oc59RSA9rl" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="3QWExnoPAJG" role="1tU5fm">
                <node concept="3uibUv" id="7Oc59RSA9CO" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7Oc59RSA9rp" role="1zc67A">
              <node concept="3cpWs6" id="5MHpiylA5DD" role="3cqZAp">
                <node concept="1Ls8ON" id="6i42QSsqS_w" role="3cqZAk">
                  <node concept="2YIFZM" id="7TC1Xcd$6oS" role="1Lso8e">
                    <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                    <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="5X1yxJI9byg" role="37wK5m">
                      <node concept="1pGfFk" id="5X1yxJI9byh" role="2ShVmc">
                        <ref role="37wK5l" to="i348:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                        <node concept="3cpWs3" id="5X1yxJI9byi" role="37wK5m">
                          <node concept="1rXfSq" id="5X1yxJI9byj" role="3uHU7w">
                            <ref role="37wK5l" node="5X1yxJI81iu" resolve="details" />
                            <node concept="37vLTw" id="5X1yxJI9byk" role="37wK5m">
                              <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="5X1yxJI9byl" role="3uHU7B">
                            <node concept="3cpWs3" id="5X1yxJI9bym" role="3uHU7B">
                              <node concept="Xl_RD" id="5X1yxJI9byn" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="5X1yxJI9byo" role="3uHU7w">
                                <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5X1yxJI9byp" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5X1yxJI9byq" role="37wK5m">
                          <ref role="3cqZAo" node="7Oc59RSA9rl" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5HVB6JRY6BI" role="1Lso8e">
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <node concept="3uibUv" id="5HVB6JRY6BJ" role="3PaCim">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5HVB6JRY6BK" role="1Lso8e">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3Tqbb2" id="5HVB6JRY6BL" role="3PaCim" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5HVB6JRUsUC" role="3cqZAp" />
            </node>
          </node>
          <node concept="1wplmZ" id="5HVB6JRQuO_" role="1zxBo6">
            <node concept="3clFbS" id="5HVB6JRQuOA" role="1wplMD">
              <node concept="3clFbF" id="5HVB6JRQDJ6" role="3cqZAp">
                <node concept="2OqwBi" id="5HVB6JRQDJ7" role="3clFbG">
                  <node concept="liA8E" id="5HVB6JRQDJ8" role="2OqNvi">
                    <ref role="37wK5l" to="i348:7DvO2M9IiNh" resolve="removeRequireHook" />
                    <node concept="37vLTw" id="5HVB6JRQDJ9" role="37wK5m">
                      <ref role="3cqZAo" node="5HVB6JRPBkz" resolve="requiredCollector" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5HVB6JRQDJa" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="6i42QSsqj9x" role="3clF45">
        <node concept="3uibUv" id="6i42QSsqniA" role="1Lm7xW">
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="_YKpA" id="5HVB6JRXu9t" role="1Lm7xW">
          <node concept="3uibUv" id="5HVB6JRXu9v" role="_ZDj9">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
        <node concept="_YKpA" id="5HVB6JRPZ0M" role="1Lm7xW">
          <node concept="3Tqbb2" id="5HVB6JRQ07l" role="_ZDj9" />
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyQdwM" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="7XdbJdyQhEU" role="3ztrMU">
          <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5X1yxJI89YV" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDyaLzV" role="jymVt">
      <property role="TrG5h" value="applyQueryTemplate" />
      <node concept="3Tm6S6" id="6OXbTDyaLzW" role="1B3o_S" />
      <node concept="37vLTG" id="6OXbTDyaLzX" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="6OXbTDybcP0" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
          <node concept="16syzq" id="6OXbTDybqOL" role="11_B2D">
            <ref role="16sUi3" node="6OXbTDyaL_y" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5EDW3XEuKDu" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="16syzq" id="5EDW3XEvDel" role="1tU5fm">
          <ref role="16sUi3" node="5EDW3XEvo5m" resolve="Q" />
        </node>
      </node>
      <node concept="3clFbS" id="6OXbTDyaL$2" role="3clF47">
        <node concept="3J1_TO" id="6OXbTDyaL$3" role="3cqZAp">
          <node concept="3uVAMA" id="5X1yxJI9h8D" role="1zxBo5">
            <node concept="XOnhg" id="5X1yxJI9h8E" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="5X1yxJI9h8F" role="1tU5fm">
                <node concept="3uibUv" id="5X1yxJI9qC6" role="nSUat">
                  <ref role="3uigEE" to="i348:5X1yxJHUo54" resolve="TemplateApplicationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5X1yxJI9h8G" role="1zc67A">
              <node concept="3cpWs6" id="5X1yxJI9FIO" role="3cqZAp">
                <node concept="1Ls8ON" id="5X1yxJI9FIP" role="3cqZAk">
                  <node concept="2YIFZM" id="HwwsI3jg_D" role="1Lso8e">
                    <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                    <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="HwwsI3jg_E" role="37wK5m">
                      <node concept="1pGfFk" id="HwwsI3jg_F" role="2ShVmc">
                        <ref role="37wK5l" to="i348:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                        <node concept="3cpWs3" id="HwwsI3jg_G" role="37wK5m">
                          <node concept="2YIFZM" id="HwwsI3jg_H" role="3uHU7w">
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="37vLTw" id="HwwsI3jg_I" role="37wK5m">
                              <ref role="3cqZAo" node="5EDW3XEuKDu" resolve="query" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="HwwsI3jg_J" role="3uHU7B">
                            <node concept="3cpWs3" id="HwwsI3jg_K" role="3uHU7B">
                              <node concept="Xl_RD" id="HwwsI3jg_L" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="HwwsI3jg_M" role="3uHU7w">
                                <ref role="3cqZAo" node="6OXbTDyaLzX" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="HwwsI3jg_N" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="HwwsI3jg_O" role="37wK5m">
                          <ref role="3cqZAo" node="5X1yxJI9h8E" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="5X1yxJI9FJ2" role="1Lso8e">
                    <node concept="kMnCb" id="5X1yxJI9FJ3" role="2ShVmc">
                      <node concept="3uibUv" id="5X1yxJI9FJ4" role="kMuH3">
                        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5X1yxJI9qKU" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="6OXbTDyaL$4" role="1zxBo7">
            <node concept="3cpWs8" id="6OXbTDycmTi" role="3cqZAp">
              <node concept="3cpWsn" id="6OXbTDycmTj" role="3cpWs9">
                <property role="TrG5h" value="builders" />
                <node concept="A3Dl8" id="6OXbTDycmSS" role="1tU5fm">
                  <node concept="3uibUv" id="6OXbTDycmSV" role="A3Ik2">
                    <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6OXbTDycmTk" role="33vP2m">
                  <node concept="1eOMI4" id="6R6MIbUuWzx" role="2Oq$k0">
                    <node concept="2OqwBi" id="6R6MIbUuWzq" role="1eOMHV">
                      <node concept="2OqwBi" id="6R6MIbUuWzr" role="2Oq$k0">
                        <node concept="37vLTw" id="6R6MIbUuWzs" role="2Oq$k0">
                          <ref role="3cqZAo" node="6OXbTDyaLzX" resolve="tpl" />
                        </node>
                        <node concept="liA8E" id="6R6MIbUuWzt" role="2OqNvi">
                          <ref role="37wK5l" to="i348:5itBwM78vMu" resolve="createToken" />
                          <node concept="37vLTw" id="6R6MIbUuWzu" role="37wK5m">
                            <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6R6MIbUuWzv" role="2OqNvi">
                        <ref role="37wK5l" to="i348:5EDW3XEg_7p" resolve="withQuery" />
                        <node concept="37vLTw" id="5EDW3XEvNP2" role="37wK5m">
                          <ref role="3cqZAo" node="5EDW3XEuKDu" resolve="query" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6OXbTDycmTm" role="2OqNvi">
                    <ref role="37wK5l" to="i348:6R6MIbUcYSn" resolve="apply" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6OXbTDyc$Kv" role="3cqZAp">
              <node concept="1Ls8ON" id="6OXbTDyc$Kw" role="3cqZAk">
                <node concept="2YIFZM" id="7TC1Xcd$6oI" role="1Lso8e">
                  <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
                  <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="37vLTw" id="6OXbTDyc$Ky" role="1Lso8e">
                  <ref role="3cqZAo" node="6OXbTDycmTj" resolve="builders" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6OXbTDyaL$F" role="3cqZAp" />
          </node>
          <node concept="3uVAMA" id="6OXbTDyaL$G" role="1zxBo5">
            <node concept="XOnhg" id="6OXbTDyaL$H" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="1RuR1FHGngs" role="1tU5fm">
                <node concept="3uibUv" id="6OXbTDyaL$I" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6OXbTDyaL$J" role="1zc67A">
              <node concept="3cpWs6" id="6OXbTDyaL_g" role="3cqZAp">
                <node concept="1Ls8ON" id="6OXbTDyaL_h" role="3cqZAk">
                  <node concept="2YIFZM" id="7TC1Xcd$6oT" role="1Lso8e">
                    <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                    <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="5X1yxJIa385" role="37wK5m">
                      <node concept="1pGfFk" id="5X1yxJIa386" role="2ShVmc">
                        <ref role="37wK5l" to="i348:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                        <node concept="3cpWs3" id="5X1yxJIa387" role="37wK5m">
                          <node concept="2YIFZM" id="5X1yxJIa388" role="3uHU7w">
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="37vLTw" id="5X1yxJIa389" role="37wK5m">
                              <ref role="3cqZAo" node="5EDW3XEuKDu" resolve="query" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="5X1yxJIa38a" role="3uHU7B">
                            <node concept="3cpWs3" id="5X1yxJIa38b" role="3uHU7B">
                              <node concept="Xl_RD" id="5X1yxJIa38c" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="5X1yxJIa38d" role="3uHU7w">
                                <ref role="3cqZAo" node="6OXbTDyaLzX" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5X1yxJIa38e" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5X1yxJIa38f" role="37wK5m">
                          <ref role="3cqZAo" node="6OXbTDyaL$H" resolve="ex" />
                        </node>
                      </node>
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
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="A3Dl8" id="6OXbTDyaL_w" role="1Lm7xW">
          <node concept="3uibUv" id="6OXbTDyaL_x" role="A3Ik2">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
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
    <node concept="2tJIrI" id="6OXbTDyaRKT" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1I3Xv" role="jymVt">
      <property role="TrG5h" value="applyRuleTemplatesAndCollectRequired" />
      <node concept="3Tm6S6" id="tIwzd1I3Xw" role="1B3o_S" />
      <node concept="37vLTG" id="tIwzd1I3Xm" role="3clF46">
        <property role="TrG5h" value="tpls" />
        <node concept="A3Dl8" id="tIwzd1I3Xn" role="1tU5fm">
          <node concept="3uibUv" id="6tPOoeTdbj8" role="A3Ik2">
            <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
            <node concept="3qUE_q" id="6tPOoeTdbj9" role="11_B2D">
              <node concept="3uibUv" id="6tPOoeTdbja" role="3qUE_r">
                <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
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
        <property role="TrG5h" value="skipAuxiliary" />
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
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oJ" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="tIwzd1IbDQ" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1IbDT" role="3cpWs9">
            <property role="TrG5h" value="collectedRequired" />
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
            <node concept="3clFbJ" id="xaaVXvp4el" role="3cqZAp">
              <node concept="3clFbS" id="xaaVXvp4en" role="3clFbx">
                <node concept="3N13vt" id="xaaVXvp7Cl" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="xaaVXvp7fb" role="3clFbw">
                <node concept="37vLTw" id="xaaVXvp7rI" role="3uHU7B">
                  <ref role="3cqZAo" node="xaaVXvi$r8" resolve="skipAuxiliary" />
                </node>
                <node concept="2OqwBi" id="xaaVXvp6wJ" role="3uHU7w">
                  <node concept="37vLTw" id="xaaVXvp4ng" role="2Oq$k0">
                    <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="xaaVXvp77z" role="2OqNvi">
                    <ref role="37wK5l" to="i348:xaaVXv6GTE" resolve="isAuxiliary" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="xaaVXvp7Co" role="3cqZAp" />
            <node concept="3cpWs8" id="4MqhgXUBzFn" role="3cqZAp">
              <node concept="3cpWsn" id="4MqhgXUBzFo" role="3cpWs9">
                <property role="TrG5h" value="template" />
                <node concept="3uibUv" id="4MqhgXUBzF7" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                  <node concept="3qUE_q" id="7XdbJdyRy2h" role="11_B2D">
                    <node concept="3uibUv" id="7XdbJdyRyYU" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6tPOoeTdh1V" role="33vP2m">
                  <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5HVB6JRwPfT" role="3cqZAp" />
            <node concept="3cpWs8" id="5HVB6JRBxJ2" role="3cqZAp">
              <node concept="3cpWsn" id="5HVB6JRBxJ3" role="3cpWs9">
                <property role="TrG5h" value="memoKey" />
                <node concept="1LlUBW" id="5HVB6JRBqR$" role="1tU5fm">
                  <node concept="3uibUv" id="5HVB6JRBqRD" role="1Lm7xW">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                  <node concept="3uibUv" id="5HVB6JRBqRE" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="1Ls8ON" id="5HVB6JRBxJ4" role="33vP2m">
                  <node concept="2OqwBi" id="5HVB6JRBxJ5" role="1Lso8e">
                    <node concept="37vLTw" id="5HVB6JRBxJ6" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                    </node>
                    <node concept="liA8E" id="5HVB6JRBxJ7" role="2OqNvi">
                      <ref role="37wK5l" to="i348:62MNP_kY8lD" resolve="getTemplateRef" />
                    </node>
                  </node>
                  <node concept="1eOMI4" id="5HVB6JRBxJ8" role="1Lso8e">
                    <node concept="3K4zz7" id="5HVB6JRBxJ9" role="1eOMHV">
                      <node concept="37vLTw" id="5HVB6JRBxJa" role="3K4E3e">
                        <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                      </node>
                      <node concept="Xl_RD" id="5HVB6JRBxJb" role="3K4GZi">
                        <property role="Xl_RC" value="null" />
                      </node>
                      <node concept="3y3z36" id="5HVB6JRBxJc" role="3K4Cdx">
                        <node concept="10Nm6u" id="5HVB6JRBxJd" role="3uHU7w" />
                        <node concept="37vLTw" id="5HVB6JRBxJe" role="3uHU7B">
                          <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6i42QSsrrpL" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsrrpM" role="3cpWs9">
                <property role="TrG5h" value="result_builders_req" />
                <node concept="1LlUBW" id="6i42QSsrrp$" role="1tU5fm">
                  <node concept="3uibUv" id="6i42QSsrrpJ" role="1Lm7xW">
                    <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
                  </node>
                  <node concept="_YKpA" id="5HVB6JRYKgl" role="1Lm7xW">
                    <node concept="3uibUv" id="5HVB6JRYKgn" role="_ZDj9">
                      <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                  <node concept="_YKpA" id="5HVB6JRQJKV" role="1Lm7xW">
                    <node concept="3Tqbb2" id="5HVB6JRQLY7" role="_ZDj9" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5HVB6JREAyk" role="33vP2m">
                  <node concept="37vLTw" id="5HVB6JRE_FE" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                  </node>
                  <node concept="liA8E" id="5HVB6JREDA1" role="2OqNvi">
                    <ref role="37wK5l" to="i348:5HVB6JR7NAD" resolve="memoize" />
                    <node concept="37vLTw" id="5HVB6JREKkw" role="37wK5m">
                      <ref role="3cqZAo" node="5HVB6JRBxJ3" resolve="memoKey" />
                    </node>
                    <node concept="1bVj0M" id="5HVB6JREGvb" role="37wK5m">
                      <node concept="3clFbS" id="5HVB6JREGvd" role="1bW5cS">
                        <node concept="3clFbF" id="5HVB6JREH9G" role="3cqZAp">
                          <node concept="1rXfSq" id="5HVB6JRughd" role="3clFbG">
                            <ref role="37wK5l" node="5ntLU8GlSnU" resolve="applyRuleTemplate" />
                            <node concept="37vLTw" id="5HVB6JRughe" role="37wK5m">
                              <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                            </node>
                            <node concept="37vLTw" id="5HVB6JRughf" role="37wK5m">
                              <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5HVB6JRwNRb" role="3cqZAp" />
            <node concept="3cpWs8" id="2gw7OvgBDWT" role="3cqZAp">
              <node concept="3cpWsn" id="2gw7OvgBDWU" role="3cpWs9">
                <property role="TrG5h" value="apply_result" />
                <node concept="3uibUv" id="2gw7OvgBDwH" role="1tU5fm">
                  <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="1LFfDK" id="2gw7OvgBDWV" role="33vP2m">
                  <node concept="3cmrfG" id="2gw7OvgBDWW" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="2gw7OvgBDWX" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSsrrpM" resolve="result_builders_req" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4MqhgXUBix1" role="3cqZAp">
              <node concept="3cpWsn" id="4MqhgXUBix2" role="3cpWs9">
                <property role="TrG5h" value="builders" />
                <node concept="3vKaQO" id="4MqhgXUBnCR" role="1tU5fm">
                  <node concept="3uibUv" id="4MqhgXUBprf" role="3O5elw">
                    <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="1LFfDK" id="4MqhgXUBmII" role="33vP2m">
                  <node concept="3cmrfG" id="4MqhgXUBmIJ" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4MqhgXUBmIK" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSsrrpM" resolve="result_builders_req" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5HVB6JRR3kO" role="3cqZAp">
              <node concept="3cpWsn" id="5HVB6JRR3kP" role="3cpWs9">
                <property role="TrG5h" value="requiredNodes" />
                <node concept="_YKpA" id="5HVB6JRR3kQ" role="1tU5fm">
                  <node concept="3Tqbb2" id="5HVB6JRR3kR" role="_ZDj9" />
                </node>
                <node concept="1LFfDK" id="5HVB6JRR6wk" role="33vP2m">
                  <node concept="3cmrfG" id="5HVB6JRR6$X" role="1LF_Uc">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="5HVB6JRR4GQ" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSsrrpM" resolve="result_builders_req" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5HVB6JRR0ul" role="3cqZAp" />
            <node concept="3clFbJ" id="6i42QSsrCE1" role="3cqZAp">
              <node concept="3clFbS" id="6i42QSsrCE3" role="3clFbx">
                <node concept="3clFbH" id="5HVB6JRR2$c" role="3cqZAp" />
                <node concept="3J1_TO" id="tIwzd1I3W$" role="3cqZAp">
                  <node concept="3clFbS" id="tIwzd1I3W_" role="1zxBo7">
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
                              <node concept="1PaTwC" id="589APehYxR2" role="1aUNEU">
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
                              <node concept="1PaTwC" id="589APehYxRa" role="1aUNEU">
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
                              <node concept="1PaTwC" id="589APehYxRh" role="1aUNEU">
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
                              <node concept="1PaTwC" id="589APehYxRl" role="1aUNEU">
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
                          <node concept="1PaTwC" id="1lzLQ0zvEbT" role="1aUNEU">
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
                    <node concept="3cpWs8" id="3OUB6BCiQcj" role="3cqZAp">
                      <node concept="3cpWsn" id="3OUB6BCiQck" role="3cpWs9">
                        <property role="TrG5h" value="rulesKey" />
                        <node concept="3uibUv" id="3OUB6BCiQ7V" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="3K4zz7" id="3OUB6BClRDX" role="33vP2m">
                          <node concept="2YIFZM" id="3OUB6BClU7E" role="3K4E3e">
                            <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <node concept="37vLTw" id="3OUB6BClUxB" role="37wK5m">
                              <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                            </node>
                          </node>
                          <node concept="3cmrfG" id="3OUB6BClWuC" role="3K4GZi">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="3y3z36" id="3OUB6BCiQcq" role="3K4Cdx">
                            <node concept="10Nm6u" id="3OUB6BCiQcr" role="3uHU7w" />
                            <node concept="37vLTw" id="3OUB6BCiQcs" role="3uHU7B">
                              <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                            </node>
                          </node>
                        </node>
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
                            <node concept="37vLTw" id="3OUB6BCiU_3" role="37wK5m">
                              <ref role="3cqZAo" node="3OUB6BCiQck" resolve="rulesKey" />
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
                  <node concept="3uVAMA" id="tIwzd1I3WM" role="1zxBo5">
                    <node concept="XOnhg" id="tIwzd1I3X5" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="e" />
                      <node concept="nSUau" id="c_TxOyE_Nzd" role="1tU5fm">
                        <node concept="3uibUv" id="tIwzd1I3X6" role="nSUat">
                          <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="tIwzd1I3WN" role="1zc67A">
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
                            <node concept="37vLTw" id="2gw7OvgBIsI" role="2Oq$k0">
                              <ref role="3cqZAo" node="2gw7OvgBDWU" resolve="apply_result" />
                            </node>
                            <node concept="liA8E" id="6i42QSss41w" role="2OqNvi">
                              <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                              <node concept="2YIFZM" id="7TC1Xcd$6oU" role="37wK5m">
                                <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                                <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                                <node concept="2ShNRf" id="5X1yxJI1n_b" role="37wK5m">
                                  <node concept="1pGfFk" id="5X1yxJI1n_c" role="2ShVmc">
                                    <ref role="37wK5l" to="i348:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                                    <node concept="3cpWs3" id="5X1yxJI1n_d" role="37wK5m">
                                      <node concept="37vLTw" id="5X1yxJI1n_e" role="3uHU7w">
                                        <ref role="3cqZAo" node="2DKqMqOkbN1" resolve="details" />
                                      </node>
                                      <node concept="3cpWs3" id="5X1yxJI1n_f" role="3uHU7B">
                                        <node concept="3cpWs3" id="5X1yxJI1n_g" role="3uHU7B">
                                          <node concept="3cpWs3" id="5X1yxJI1n_h" role="3uHU7B">
                                            <node concept="2OqwBi" id="5X1yxJI1n_i" role="3uHU7B">
                                              <node concept="37vLTw" id="5X1yxJI1n_j" role="2Oq$k0">
                                                <ref role="3cqZAo" node="tIwzd1I3X5" resolve="e" />
                                              </node>
                                              <node concept="liA8E" id="5X1yxJI1n_k" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="5X1yxJI1n_l" role="3uHU7w">
                                              <property role="Xl_RC" value="(" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="5X1yxJI1n_m" role="3uHU7w">
                                            <node concept="37vLTw" id="5X1yxJI1n_n" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                            </node>
                                            <node concept="liA8E" id="5X1yxJI1n_o" role="2OqNvi">
                                              <ref role="37wK5l" to="i348:1ffsG7bUgP4" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="5X1yxJI1n_p" role="3uHU7w">
                                          <property role="Xl_RC" value=")" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="5X1yxJI1n_q" role="37wK5m">
                                      <ref role="3cqZAo" node="tIwzd1I3X5" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="2gw7OvgBHLw" role="37vLTJ">
                            <ref role="3cqZAo" node="2gw7OvgBDWU" resolve="apply_result" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6i42QSsrMxD" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6i42QSsrFkd" role="3clFbw">
                <node concept="37vLTw" id="2gw7OvgBDWY" role="2Oq$k0">
                  <ref role="3cqZAo" node="2gw7OvgBDWU" resolve="apply_result" />
                </node>
                <node concept="liA8E" id="6i42QSsrFxK" role="2OqNvi">
                  <ref role="37wK5l" to="psoy:7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2gw7OvgBCUb" role="3cqZAp" />
            <node concept="3clFbF" id="6i42QSsrZRl" role="3cqZAp">
              <node concept="37vLTI" id="6i42QSss0c7" role="3clFbG">
                <node concept="2OqwBi" id="6i42QSss0Fl" role="37vLTx">
                  <node concept="37vLTw" id="6i42QSss0pH" role="2Oq$k0">
                    <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                  </node>
                  <node concept="liA8E" id="6i42QSss0Nd" role="2OqNvi">
                    <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                    <node concept="37vLTw" id="2gw7OvgBDWZ" role="37wK5m">
                      <ref role="3cqZAo" node="2gw7OvgBDWU" resolve="apply_result" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6i42QSsrZRk" role="37vLTJ">
                  <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3OUB6BBLLk5" role="3cqZAp">
              <node concept="2OqwBi" id="3OUB6BBLNgr" role="3clFbG">
                <node concept="37vLTw" id="3OUB6BBLLk3" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1IbDT" resolve="collectedRequired" />
                </node>
                <node concept="X8dFx" id="3OUB6BBLNFQ" role="2OqNvi">
                  <node concept="37vLTw" id="3OUB6BBLQvm" role="25WWJ7">
                    <ref role="3cqZAo" node="5HVB6JRR3kP" resolve="requiredNodes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3OUB6BBLRoP" role="3cqZAp">
              <node concept="2OqwBi" id="3OUB6BBLUte" role="3clFbG">
                <node concept="37vLTw" id="3OUB6BBLRoN" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1IbDT" resolve="collectedRequired" />
                </node>
                <node concept="X8dFx" id="3OUB6BBLVnh" role="2OqNvi">
                  <node concept="2OqwBi" id="3OUB6BBLW0$" role="25WWJ7">
                    <node concept="37vLTw" id="3OUB6BBLW0_" role="2Oq$k0">
                      <ref role="3cqZAo" node="5HVB6JRR3kP" resolve="requiredNodes" />
                    </node>
                    <node concept="3goQfb" id="3OUB6BBLW0A" role="2OqNvi">
                      <node concept="1bVj0M" id="3OUB6BBLW0B" role="23t8la">
                        <node concept="3clFbS" id="3OUB6BBLW0C" role="1bW5cS">
                          <node concept="3clFbF" id="3OUB6BBLW0D" role="3cqZAp">
                            <node concept="2OqwBi" id="3OUB6BBLW0E" role="3clFbG">
                              <node concept="2OqwBi" id="3OUB6BBLW0F" role="2Oq$k0">
                                <node concept="37vLTw" id="3OUB6BBLW0G" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3OUB6BBLW0R" resolve="it" />
                                </node>
                                <node concept="2z74zc" id="3OUB6BBLW0H" role="2OqNvi" />
                              </node>
                              <node concept="3$u5V9" id="3OUB6BBLW0I" role="2OqNvi">
                                <node concept="1bVj0M" id="3OUB6BBLW0J" role="23t8la">
                                  <node concept="3clFbS" id="3OUB6BBLW0K" role="1bW5cS">
                                    <node concept="3clFbF" id="3OUB6BBLW0L" role="3cqZAp">
                                      <node concept="2OqwBi" id="3OUB6BBLW0M" role="3clFbG">
                                        <node concept="37vLTw" id="3OUB6BBLW0N" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3OUB6BBLW0P" resolve="ref" />
                                        </node>
                                        <node concept="2ZHEkA" id="3OUB6BBLW0O" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="3OUB6BBLW0P" role="1bW2Oz">
                                    <property role="TrG5h" value="ref" />
                                    <node concept="2jxLKc" id="3OUB6BBLW0Q" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3OUB6BBLW0R" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="3OUB6BBLW0S" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="tIwzd1I3Xj" role="1Duv9x">
            <property role="TrG5h" value="tpl" />
            <node concept="3uibUv" id="6tPOoeTdcfx" role="1tU5fm">
              <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
              <node concept="3qUE_q" id="6tPOoeTdcfy" role="11_B2D">
                <node concept="3uibUv" id="6tPOoeTdcfz" role="3qUE_r">
                  <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
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
            <node concept="37vLTw" id="3OUB6BBQTk7" role="1Lso8e">
              <ref role="3cqZAo" node="tIwzd1IbDT" resolve="collectedRequired" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="6i42QSss8Ot" role="3clF45">
        <node concept="3uibUv" id="6i42QSssbTx" role="1Lm7xW">
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="6OXbTDy1oEj" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy1oEk" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDyef8q" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDyef8r" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6OXbTDyef8s" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oK" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTDyeezy" role="3cqZAp" />
        <node concept="3cpWs8" id="6OXbTDydyNR" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDydyNS" role="3cpWs9">
            <property role="TrG5h" value="result_builders" />
            <node concept="1LlUBW" id="6OXbTDydyMo" role="1tU5fm">
              <node concept="3uibUv" id="6OXbTDydyMz" role="1Lm7xW">
                <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
              <node concept="37vLTw" id="5EDW3XEuGAn" role="37wK5m">
                <ref role="3cqZAo" node="5EDW3XEuyBX" resolve="query" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2BZXJed1VFt" role="3cqZAp">
          <node concept="37vLTI" id="2BZXJed1VPh" role="3clFbG">
            <node concept="2OqwBi" id="2BZXJed1W6q" role="37vLTx">
              <node concept="37vLTw" id="2BZXJed1W0J" role="2Oq$k0">
                <ref role="3cqZAo" node="6OXbTDyef8r" resolve="result" />
              </node>
              <node concept="liA8E" id="2BZXJed1We4" role="2OqNvi">
                <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
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
            <node concept="3J1_TO" id="6OXbTDye1zC" role="3cqZAp">
              <node concept="3clFbS" id="6OXbTDye1zE" role="1zxBo7">
                <node concept="2Gpval" id="6OXbTDzFl4o" role="3cqZAp">
                  <node concept="3clFbS" id="6OXbTDzFl4p" role="2LFqv$">
                    <node concept="3clFbJ" id="6OXbTDzFl4q" role="3cqZAp">
                      <node concept="3clFbS" id="6OXbTDzFl4r" role="3clFbx">
                        <node concept="3SKdUt" id="6OXbTDzFl4s" role="3cqZAp">
                          <node concept="1PaTwC" id="589APehYxRy" role="1aUNEU">
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
                          <node concept="1PaTwC" id="589APehYxRE" role="1aUNEU">
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
                          <node concept="1PaTwC" id="589APehYxRL" role="1aUNEU">
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
                          <node concept="1PaTwC" id="589APehYxRP" role="1aUNEU">
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
              <node concept="3uVAMA" id="6OXbTDydX1w" role="1zxBo5">
                <node concept="XOnhg" id="6OXbTDydX1x" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="1RuR1FHyeq4" role="1tU5fm">
                    <node concept="3uibUv" id="6OXbTDydXmU" role="nSUat">
                      <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6OXbTDydX1z" role="1zc67A">
                  <node concept="3cpWs8" id="6OXbTDydY23" role="3cqZAp">
                    <node concept="3cpWsn" id="6OXbTDydY24" role="3cpWs9">
                      <property role="TrG5h" value="details" />
                      <node concept="17QB3L" id="6OXbTDydY25" role="1tU5fm" />
                      <node concept="2YIFZM" id="6OXbTDyeyio" role="33vP2m">
                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="37vLTw" id="5EDW3XEuIQB" role="37wK5m">
                          <ref role="3cqZAo" node="5EDW3XEuyBX" resolve="query" />
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
                          <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                          <node concept="2YIFZM" id="7TC1Xcd$6oV" role="37wK5m">
                            <ref role="37wK5l" to="psoy:5X1yxJHYPm2" resolve="FAIL" />
                            <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                            <node concept="2ShNRf" id="5X1yxJI1zs_" role="37wK5m">
                              <node concept="1pGfFk" id="5X1yxJI1zsA" role="2ShVmc">
                                <ref role="37wK5l" to="i348:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                                <node concept="3cpWs3" id="5X1yxJI1zsB" role="37wK5m">
                                  <node concept="37vLTw" id="5X1yxJI1zsC" role="3uHU7w">
                                    <ref role="3cqZAo" node="6OXbTDydY24" resolve="details" />
                                  </node>
                                  <node concept="3cpWs3" id="5X1yxJI1zsD" role="3uHU7B">
                                    <node concept="3cpWs3" id="5X1yxJI1zsE" role="3uHU7B">
                                      <node concept="3cpWs3" id="5X1yxJI1zsF" role="3uHU7B">
                                        <node concept="2OqwBi" id="5X1yxJI1zsG" role="3uHU7B">
                                          <node concept="37vLTw" id="5X1yxJI1zsH" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6OXbTDydX1x" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="5X1yxJI1zsI" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="5X1yxJI1zsJ" role="3uHU7w">
                                          <property role="Xl_RC" value="(" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="5X1yxJI1zsK" role="3uHU7w">
                                        <node concept="liA8E" id="5X1yxJI1zsL" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                        </node>
                                        <node concept="37vLTw" id="5X1yxJI1zsM" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6OXbTDydhIZ" resolve="queryTemplate" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="5X1yxJI1zsN" role="3uHU7w">
                                      <property role="Xl_RC" value=")" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="5X1yxJI1zsO" role="37wK5m">
                                  <ref role="3cqZAo" node="6OXbTDydX1x" resolve="e" />
                                </node>
                              </node>
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
          </node>
          <node concept="2OqwBi" id="6OXbTDye0r$" role="3clFbw">
            <node concept="37vLTw" id="5ygLqKOC9kH" role="2Oq$k0">
              <ref role="3cqZAo" node="6OXbTDyef8r" resolve="result" />
            </node>
            <node concept="liA8E" id="6OXbTDye0IL" role="2OqNvi">
              <ref role="37wK5l" to="psoy:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
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
          <node concept="16syzq" id="5EDW3XEwzKu" role="11_B2D">
            <ref role="16sUi3" node="5EDW3XEwksj" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5EDW3XEuyBX" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="16syzq" id="5EDW3XExHCy" role="1tU5fm">
          <ref role="16sUi3" node="5EDW3XEwksh" resolve="Q" />
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEwksh" role="16eVyc">
        <property role="TrG5h" value="Q" />
        <node concept="3uibUv" id="5EDW3XEwksi" role="3ztrMU">
          <ref role="3uigEE" to="i348:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEwksj" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5EDW3XEwksk" role="3ztrMU">
          <ref role="3uigEE" to="i348:6R6MIbU8M46" resolve="QueryTemplate.Token" />
          <node concept="16syzq" id="5EDW3XEwksl" role="11_B2D">
            <ref role="16sUi3" node="5EDW3XEwksh" resolve="Q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7nb0M" role="jymVt" />
    <node concept="3clFb_" id="5X1yxJI81iu" role="jymVt">
      <property role="TrG5h" value="details" />
      <node concept="3Tm6S6" id="5X1yxJI81iv" role="1B3o_S" />
      <node concept="17QB3L" id="5X1yxJI81iw" role="3clF45" />
      <node concept="37vLTG" id="5X1yxJI81in" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5X1yxJI81io" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5X1yxJI81hT" role="3clF47">
        <node concept="3cpWs6" id="5X1yxJI81hU" role="3cqZAp">
          <node concept="3K4zz7" id="5X1yxJI81hV" role="3cqZAk">
            <node concept="Xl_RD" id="5X1yxJI81hW" role="3K4GZi" />
            <node concept="3y3z36" id="5X1yxJI81hX" role="3K4Cdx">
              <node concept="10Nm6u" id="5X1yxJI81hY" role="3uHU7w" />
              <node concept="37vLTw" id="5X1yxJI81ip" role="3uHU7B">
                <ref role="3cqZAo" node="5X1yxJI81in" resolve="node" />
              </node>
            </node>
            <node concept="3cpWs3" id="5X1yxJI81i0" role="3K4E3e">
              <node concept="Xl_RD" id="5X1yxJI81i1" role="3uHU7w">
                <property role="Xl_RC" value="]" />
              </node>
              <node concept="3cpWs3" id="5X1yxJI81i2" role="3uHU7B">
                <node concept="2EnYce" id="5X1yxJI81i3" role="3uHU7w">
                  <node concept="2JrnkZ" id="5X1yxJI81i4" role="2Oq$k0">
                    <node concept="2OqwBi" id="5X1yxJI81i5" role="2JrQYb">
                      <node concept="37vLTw" id="5X1yxJI81ir" role="2Oq$k0">
                        <ref role="3cqZAo" node="5X1yxJI81in" resolve="node" />
                      </node>
                      <node concept="I4A8Y" id="5X1yxJI81i7" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5X1yxJI81i8" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                  </node>
                </node>
                <node concept="3cpWs3" id="5X1yxJI81i9" role="3uHU7B">
                  <node concept="3cpWs3" id="5X1yxJI81ia" role="3uHU7B">
                    <node concept="3cpWs3" id="5X1yxJI81ib" role="3uHU7B">
                      <node concept="3cpWs3" id="5X1yxJI81ic" role="3uHU7B">
                        <node concept="Xl_RD" id="5X1yxJI81id" role="3uHU7B">
                          <property role="Xl_RC" value=" to " />
                        </node>
                        <node concept="2OqwBi" id="5X1yxJI81ie" role="3uHU7w">
                          <node concept="37vLTw" id="5X1yxJI81iq" role="2Oq$k0">
                            <ref role="3cqZAo" node="5X1yxJI81in" resolve="node" />
                          </node>
                          <node concept="2qgKlT" id="5X1yxJI81ig" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5X1yxJI81ih" role="3uHU7w">
                        <property role="Xl_RC" value="@" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5X1yxJI81ii" role="3uHU7w">
                      <node concept="2JrnkZ" id="5X1yxJI81ij" role="2Oq$k0">
                        <node concept="37vLTw" id="5X1yxJI81is" role="2JrQYb">
                          <ref role="3cqZAo" node="5X1yxJI81in" resolve="node" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5X1yxJI81il" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5X1yxJI81im" role="3uHU7w">
                    <property role="Xl_RC" value=" [" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyMFSz" role="jymVt" />
    <node concept="312cEu" id="5ntLU8Glzc7" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TemplateApplicator" />
      <node concept="2tJIrI" id="4vBwiiVcARn" role="jymVt" />
      <node concept="3clFbW" id="xaaVXvi$I3" role="jymVt">
        <node concept="37vLTG" id="xaaVXvi$JH" role="3clF46">
          <property role="TrG5h" value="includeAuxiliary" />
          <node concept="10P_77" id="xaaVXvi$JX" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="xaaVXvi$I5" role="3clF45" />
        <node concept="3Tm6S6" id="xaaVXvi$I6" role="1B3o_S" />
        <node concept="3clFbS" id="xaaVXvi$I7" role="3clF47">
          <node concept="3clFbF" id="42eP3wrZV0R" role="3cqZAp">
            <node concept="37vLTI" id="42eP3wrZWla" role="3clFbG">
              <node concept="37vLTw" id="42eP3wrZWFo" role="37vLTx">
                <ref role="3cqZAo" node="xaaVXvi$JH" resolve="includeAuxiliary" />
              </node>
              <node concept="2OqwBi" id="42eP3wrZVdb" role="37vLTJ">
                <node concept="Xjq3P" id="42eP3wrZV0P" role="2Oq$k0" />
                <node concept="2OwXpG" id="42eP3wrZVFR" role="2OqNvi">
                  <ref role="2Oxat5" node="42eP3wrZOvp" resolve="includeAuxiliary" />
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
                  <ref role="3uigEE" to="i348:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                  <node concept="3qUE_q" id="7XdbJdyRI0u" role="11_B2D">
                    <node concept="3uibUv" id="7XdbJdyRId5" role="3qUE_r">
                      <ref role="3uigEE" to="i348:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5ntLU8GlzSK" role="33vP2m">
                <node concept="liA8E" id="5ntLU8GlzSM" role="2OqNvi">
                  <ref role="37wK5l" to="hano:6fdr4UgfuGk" resolve="allRuleTemplates" />
                  <node concept="37vLTw" id="5ntLU8GlzSN" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                </node>
                <node concept="37vLTw" id="3OUB6BCqOrO" role="2Oq$k0">
                  <ref role="3cqZAo" node="cmlg9OIRky" resolve="ruleTemplates" />
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
                  <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
                    <ref role="3cqZAo" node="42eP3wrZOvp" resolve="includeAuxiliary" />
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
                  <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
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
          <node concept="3cpWs6" id="1eEe91P7wK_" role="3cqZAp">
            <node concept="2YIFZM" id="1eEe91P7wKA" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1eEe91P3xTw" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1eEe91P3Bce" role="jymVt" />
      <node concept="312cEg" id="42eP3wrZOvp" role="jymVt">
        <property role="TrG5h" value="includeAuxiliary" />
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
              <node concept="2YIFZM" id="7TC1Xcd$6oL" role="37vLTx">
                <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
                <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
            <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
          <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
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
      <node concept="3clFb_" id="61G6TdDSwHf" role="jymVt">
        <property role="TrG5h" value="forEachOrigin" />
        <node concept="3Tm1VV" id="61G6TdDSwHg" role="1B3o_S" />
        <node concept="16syzq" id="61G6TdDSwHh" role="3clF45">
          <ref role="16sUi3" node="61G6TdDSwIC" resolve="T" />
        </node>
        <node concept="37vLTG" id="61G6TdDSwHi" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="61G6TdDSwHj" role="1tU5fm">
            <node concept="3Tqbb2" id="61G6TdDSwHk" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="61G6TdDSwHl" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="61G6TdDSwHm" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="61G6TdDSwHn" role="11_B2D">
              <ref role="16sUi3" node="61G6TdDSwIC" resolve="T" />
            </node>
            <node concept="16syzq" id="61G6TdDSwHo" role="11_B2D">
              <ref role="16sUi3" node="61G6TdDSwID" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="61G6TdDSwHp" role="3clF47">
          <node concept="3cpWs8" id="61G6TdDSwHq" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdDSwHr" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="61G6TdDSwHs" role="1tU5fm">
                <ref role="16sUi3" node="61G6TdDSwIC" resolve="T" />
              </node>
              <node concept="1rXfSq" id="61G6TdDSwHt" role="33vP2m">
                <ref role="37wK5l" node="61G6TdDOcW_" resolve="forEachInvalidated" />
                <node concept="37vLTw" id="61G6TdDSwHu" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDSwHl" resolve="action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="61G6TdDSwI2" role="3cqZAp">
            <node concept="3clFbS" id="61G6TdDSwI3" role="3clFbx">
              <node concept="3SKdUt" id="61G6TdDSwIa" role="3cqZAp">
                <node concept="1PaTwC" id="61G6TdDSwIb" role="1aUNEU">
                  <node concept="3oM_SD" id="61G6TdDSwIc" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDSwId" role="1PaTwD">
                    <property role="3oM_SC" value="should" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDSwIe" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDSwIf" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDSwIg" role="1PaTwD">
                    <property role="3oM_SC" value="new" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDSwIh" role="1PaTwD">
                    <property role="3oM_SC" value="origins" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDSwIi" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDSwIj" role="1PaTwD">
                    <property role="3oM_SC" value="processed?" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="61G6TdDSwIk" role="3cqZAp">
                <node concept="3cpWsn" id="61G6TdDSwIl" role="3cpWs9">
                  <property role="TrG5h" value="t" />
                  <node concept="16syzq" id="61G6TdDSwIm" role="1tU5fm">
                    <ref role="16sUi3" node="61G6TdDSwIC" resolve="T" />
                  </node>
                  <node concept="1rXfSq" id="61G6TdDSwIn" role="33vP2m">
                    <ref role="37wK5l" node="6nFpYltFTQQ" resolve="flat" />
                    <node concept="37vLTw" id="61G6TdDSwIo" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdDSwHi" resolve="startFrom" />
                    </node>
                    <node concept="1rXfSq" id="61G6TdDSwIp" role="37wK5m">
                      <ref role="37wK5l" node="6nFpYltM1Er" resolve="recursive" />
                      <node concept="37vLTw" id="61G6TdDSwIq" role="37wK5m">
                        <ref role="3cqZAo" node="61G6TdDSwHl" resolve="action" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="61G6TdDSwIr" role="3cqZAp">
                <node concept="37vLTI" id="61G6TdDSwIs" role="3clFbG">
                  <node concept="37vLTw" id="61G6TdDSwIt" role="37vLTJ">
                    <ref role="3cqZAo" node="61G6TdDSwHr" resolve="value" />
                  </node>
                  <node concept="2OqwBi" id="61G6TdDSwIu" role="37vLTx">
                    <node concept="37vLTw" id="61G6TdDSwIv" role="2Oq$k0">
                      <ref role="3cqZAo" node="61G6TdDSwHl" resolve="action" />
                    </node>
                    <node concept="liA8E" id="61G6TdDSwIw" role="2OqNvi">
                      <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                      <node concept="37vLTw" id="61G6TdDSwIx" role="37wK5m">
                        <ref role="3cqZAo" node="61G6TdDSwHr" resolve="value" />
                      </node>
                      <node concept="37vLTw" id="61G6TdDSwIy" role="37wK5m">
                        <ref role="3cqZAo" node="61G6TdDSwIl" resolve="t" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="61G6TdDSwIz" role="3clFbw">
              <node concept="1rXfSq" id="61G6TdDUTMq" role="2Oq$k0">
                <ref role="37wK5l" node="61G6TdDTpT1" resolve="newOrigins" />
                <node concept="37vLTw" id="61G6TdDUUDk" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDSwHi" resolve="startFrom" />
                </node>
              </node>
              <node concept="3GX2aA" id="61G6TdDSwI_" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cpWs6" id="61G6TdDSwIA" role="3cqZAp">
            <node concept="37vLTw" id="61G6TdDSwIB" role="3cqZAk">
              <ref role="3cqZAo" node="61G6TdDSwHr" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="61G6TdDSwIC" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="61G6TdDSwID" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="61G6TdDL7nU" role="jymVt" />
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
        <node concept="3clFbS" id="6nFpYltNprk" role="3clF47">
          <node concept="3cpWs8" id="6nFpYlvbrJU" role="3cqZAp">
            <node concept="3cpWsn" id="6nFpYlvbrJX" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="6nFpYlvbrJS" role="1tU5fm">
                <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
              </node>
              <node concept="1rXfSq" id="61G6TdDQgy2" role="33vP2m">
                <ref role="37wK5l" node="61G6TdDOcW_" resolve="forEachInvalidated" />
                <node concept="37vLTw" id="61G6TdDQozI" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6nFpYlvcUG4" role="3cqZAp">
            <node concept="3clFbS" id="6nFpYlvcUG6" role="3clFbx">
              <node concept="3SKdUt" id="61G6TdDS7JM" role="3cqZAp">
                <node concept="1PaTwC" id="61G6TdDS7JN" role="1aUNEU">
                  <node concept="3oM_SD" id="61G6TdDS7JO" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDS7W0" role="1PaTwD">
                    <property role="3oM_SC" value="should" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDS7Wz" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDS7WB" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDS7WG" role="1PaTwD">
                    <property role="3oM_SC" value="new" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDS7Xx" role="1PaTwD">
                    <property role="3oM_SC" value="origins" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDS7XS" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDS7Y8" role="1PaTwD">
                    <property role="3oM_SC" value="processed?" />
                  </node>
                </node>
              </node>
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
            <node concept="2OqwBi" id="6nFpYlvd8AV" role="3clFbw">
              <node concept="1rXfSq" id="61G6TdDV5iH" role="2Oq$k0">
                <ref role="37wK5l" node="61G6TdDTpT1" resolve="newOrigins" />
                <node concept="37vLTw" id="61G6TdDV67V" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltNprf" resolve="startFrom" />
                </node>
              </node>
              <node concept="3GX2aA" id="6nFpYlvdcl3" role="2OqNvi" />
            </node>
          </node>
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
      <node concept="2tJIrI" id="61G6TdDSDku" role="jymVt" />
      <node concept="3clFb_" id="61G6TdDQN_9" role="jymVt">
        <property role="TrG5h" value="forEachOriginRecursivelyInterface" />
        <node concept="3Tm1VV" id="61G6TdDQN_a" role="1B3o_S" />
        <node concept="16syzq" id="61G6TdDQN_b" role="3clF45">
          <ref role="16sUi3" node="61G6TdDQNAL" resolve="T" />
        </node>
        <node concept="37vLTG" id="61G6TdDQN_c" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="61G6TdDQN_d" role="1tU5fm">
            <node concept="3Tqbb2" id="61G6TdDQN_e" role="A3Ik2" />
          </node>
        </node>
        <node concept="37vLTG" id="61G6TdDQN_f" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="61G6TdDQN_g" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="61G6TdDQN_h" role="11_B2D">
              <ref role="16sUi3" node="61G6TdDQNAL" resolve="T" />
            </node>
            <node concept="16syzq" id="61G6TdDQN_i" role="11_B2D">
              <ref role="16sUi3" node="61G6TdDQNAM" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="61G6TdDQN_l" role="3clF47">
          <node concept="3cpWs8" id="61G6TdDQN_n" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdDQN_o" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="61G6TdDQN_p" role="1tU5fm">
                <ref role="16sUi3" node="61G6TdDQNAL" resolve="T" />
              </node>
              <node concept="1rXfSq" id="61G6TdDQN_q" role="33vP2m">
                <ref role="37wK5l" node="61G6TdDOcW_" resolve="forEachInvalidated" />
                <node concept="37vLTw" id="61G6TdDQN_r" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDQN_f" resolve="action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="61G6TdDQN_Z" role="3cqZAp">
            <node concept="3clFbS" id="61G6TdDQNA0" role="3clFbx">
              <node concept="3SKdUt" id="61G6TdDT7YT" role="3cqZAp">
                <node concept="1PaTwC" id="61G6TdDT7YU" role="1aUNEU">
                  <node concept="3oM_SD" id="61G6TdDT7YV" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDT7YW" role="1PaTwD">
                    <property role="3oM_SC" value="should" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDT7YX" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDT7YY" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDT7YZ" role="1PaTwD">
                    <property role="3oM_SC" value="new" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDT7Z0" role="1PaTwD">
                    <property role="3oM_SC" value="origins" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDT7Z1" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="61G6TdDT7Z2" role="1PaTwD">
                    <property role="3oM_SC" value="processed?" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="61G6TdDQNA9" role="3cqZAp">
                <node concept="3cpWsn" id="61G6TdDQNAa" role="3cpWs9">
                  <property role="TrG5h" value="t" />
                  <node concept="16syzq" id="61G6TdDQNAb" role="1tU5fm">
                    <ref role="16sUi3" node="61G6TdDQNAL" resolve="T" />
                  </node>
                  <node concept="1rXfSq" id="61G6TdDQNAc" role="33vP2m">
                    <ref role="37wK5l" node="6nFpYltFQaQ" resolve="deepInterfacePart" />
                    <node concept="37vLTw" id="61G6TdDQNAd" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdDQN_c" resolve="startFrom" />
                    </node>
                    <node concept="1rXfSq" id="61G6TdDQNAe" role="37wK5m">
                      <ref role="37wK5l" node="6nFpYltM1Er" resolve="recursive" />
                      <node concept="37vLTw" id="61G6TdDQNAf" role="37wK5m">
                        <ref role="3cqZAo" node="61G6TdDQN_f" resolve="action" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="61G6TdDQNAg" role="3cqZAp">
                <node concept="37vLTI" id="61G6TdDQNAh" role="3clFbG">
                  <node concept="37vLTw" id="61G6TdDQNAi" role="37vLTJ">
                    <ref role="3cqZAo" node="61G6TdDQN_o" resolve="value" />
                  </node>
                  <node concept="2OqwBi" id="61G6TdDQNAj" role="37vLTx">
                    <node concept="37vLTw" id="61G6TdDQNAk" role="2Oq$k0">
                      <ref role="3cqZAo" node="61G6TdDQN_f" resolve="action" />
                    </node>
                    <node concept="liA8E" id="61G6TdDQNAl" role="2OqNvi">
                      <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                      <node concept="37vLTw" id="61G6TdDQNAm" role="37wK5m">
                        <ref role="3cqZAo" node="61G6TdDQN_o" resolve="value" />
                      </node>
                      <node concept="37vLTw" id="61G6TdDQNAn" role="37wK5m">
                        <ref role="3cqZAo" node="61G6TdDQNAa" resolve="t" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="61G6TdDQNAF" role="3clFbw">
              <node concept="1rXfSq" id="61G6TdDUJ27" role="2Oq$k0">
                <ref role="37wK5l" node="61G6TdDTpT1" resolve="newOrigins" />
                <node concept="37vLTw" id="61G6TdDUJUv" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDQN_c" resolve="startFrom" />
                </node>
              </node>
              <node concept="3GX2aA" id="61G6TdDQNAH" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cpWs6" id="61G6TdDQNAJ" role="3cqZAp">
            <node concept="37vLTw" id="61G6TdDQNAK" role="3cqZAk">
              <ref role="3cqZAo" node="61G6TdDQN_o" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="61G6TdDQNAL" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="61G6TdDQNAM" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="61G6TdDQN_8" role="jymVt" />
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
      <node concept="2tJIrI" id="7vRcs5$YXnG" role="jymVt" />
      <node concept="3clFb_" id="61G6TdDOcW_" role="jymVt">
        <property role="TrG5h" value="forEachInvalidated" />
        <node concept="37vLTG" id="61G6TdDOIKn" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="61G6TdDOIKo" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="61G6TdDOIKp" role="11_B2D">
              <ref role="16sUi3" node="61G6TdDOwkK" resolve="T" />
            </node>
            <node concept="16syzq" id="61G6TdDOIKq" role="11_B2D">
              <ref role="16sUi3" node="61G6TdDOB_2" resolve="P" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="61G6TdDOVLM" role="3clF45">
          <ref role="16sUi3" node="61G6TdDOwkK" resolve="T" />
        </node>
        <node concept="3Tm6S6" id="61G6TdDOcWC" role="1B3o_S" />
        <node concept="3clFbS" id="61G6TdDOcWD" role="3clF47">
          <node concept="3cpWs8" id="61G6TdDORC9" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdDORCa" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="61G6TdDORCb" role="1tU5fm">
                <ref role="16sUi3" node="61G6TdDOwkK" resolve="T" />
              </node>
              <node concept="2OqwBi" id="61G6TdDORCc" role="33vP2m">
                <node concept="37vLTw" id="61G6TdDORCd" role="2Oq$k0">
                  <ref role="3cqZAo" node="61G6TdDOIKn" resolve="action" />
                </node>
                <node concept="liA8E" id="61G6TdDORCe" role="2OqNvi">
                  <ref role="37wK5l" node="tIwzd1ILXm" resolve="initial" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="61G6TdDORCf" role="3cqZAp">
            <node concept="2OqwBi" id="61G6TdDORCg" role="3clFbG">
              <node concept="37vLTw" id="61G6TdDORCh" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
              </node>
              <node concept="liA8E" id="61G6TdDORCi" role="2OqNvi">
                <ref role="37wK5l" node="6nFpYlv9QQj" resolve="forEachInvalidated" />
                <node concept="1bVj0M" id="61G6TdDORCj" role="37wK5m">
                  <node concept="37vLTG" id="61G6TdDORCk" role="1bW2Oz">
                    <property role="TrG5h" value="orig" />
                    <node concept="3Tqbb2" id="61G6TdDORCl" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="61G6TdDORCm" role="1bW2Oz">
                    <property role="TrG5h" value="invalidated" />
                    <node concept="2I9FWS" id="61G6TdDORCn" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="61G6TdDORCo" role="1bW5cS">
                    <node concept="3clFbH" id="61G6TdDORCp" role="3cqZAp" />
                    <node concept="3cpWs8" id="61G6TdDORCq" role="3cqZAp">
                      <node concept="3cpWsn" id="61G6TdDORCr" role="3cpWs9">
                        <property role="TrG5h" value="t" />
                        <node concept="16syzq" id="61G6TdDORCs" role="1tU5fm">
                          <ref role="16sUi3" node="61G6TdDOwkK" resolve="T" />
                        </node>
                        <node concept="1rXfSq" id="61G6TdDORCt" role="33vP2m">
                          <ref role="37wK5l" node="6nFpYltFTQQ" resolve="flat" />
                          <node concept="37vLTw" id="61G6TdDORCu" role="37wK5m">
                            <ref role="3cqZAo" node="61G6TdDORCm" resolve="invalidated" />
                          </node>
                          <node concept="1rXfSq" id="61G6TdDORCv" role="37wK5m">
                            <ref role="37wK5l" node="6nFpYltM1Er" resolve="recursive" />
                            <node concept="37vLTw" id="61G6TdDORCw" role="37wK5m">
                              <ref role="3cqZAo" node="61G6TdDOIKn" resolve="action" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="61G6TdDORCx" role="3cqZAp">
                      <node concept="37vLTI" id="61G6TdDORCy" role="3clFbG">
                        <node concept="37vLTw" id="61G6TdDORCz" role="37vLTJ">
                          <ref role="3cqZAo" node="61G6TdDORCa" resolve="value" />
                        </node>
                        <node concept="2OqwBi" id="61G6TdDORC$" role="37vLTx">
                          <node concept="37vLTw" id="61G6TdDORC_" role="2Oq$k0">
                            <ref role="3cqZAo" node="61G6TdDOIKn" resolve="action" />
                          </node>
                          <node concept="liA8E" id="61G6TdDORCA" role="2OqNvi">
                            <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
                            <node concept="37vLTw" id="61G6TdDORCB" role="37wK5m">
                              <ref role="3cqZAo" node="61G6TdDORCa" resolve="value" />
                            </node>
                            <node concept="37vLTw" id="61G6TdDORCC" role="37wK5m">
                              <ref role="3cqZAo" node="61G6TdDORCr" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="61G6TdDORCD" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="61G6TdDOVrP" role="3cqZAp">
            <node concept="37vLTw" id="61G6TdDOVrN" role="3clFbG">
              <ref role="3cqZAo" node="61G6TdDORCa" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="61G6TdDOwkK" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="61G6TdDOB_2" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="61G6TdDQDii" role="jymVt" />
      <node concept="3clFb_" id="61G6TdDTpT1" role="jymVt">
        <property role="TrG5h" value="newOrigins" />
        <node concept="37vLTG" id="61G6TdDTvzd" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="A3Dl8" id="61G6TdDTvze" role="1tU5fm">
            <node concept="3Tqbb2" id="61G6TdDTvzf" role="A3Ik2" />
          </node>
        </node>
        <node concept="3vKaQO" id="61G6TdDU54_" role="3clF45">
          <node concept="3Tqbb2" id="61G6TdDUset" role="3O5elw" />
        </node>
        <node concept="3Tm6S6" id="61G6TdDTpT4" role="1B3o_S" />
        <node concept="3clFbS" id="61G6TdDTpT5" role="3clF47">
          <node concept="3SKdUt" id="61G6TdDTMnS" role="3cqZAp">
            <node concept="1PaTwC" id="61G6TdDTMnT" role="1aUNEU">
              <node concept="3oM_SD" id="61G6TdDTMnU" role="1PaTwD">
                <property role="3oM_SC" value="nodes" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMnV" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMnW" role="1PaTwD">
                <property role="3oM_SC" value="have" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMnX" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMnY" role="1PaTwD">
                <property role="3oM_SC" value="been" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMnZ" role="1PaTwD">
                <property role="3oM_SC" value="processed" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMo0" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMo1" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMo2" role="1PaTwD">
                <property role="3oM_SC" value="index" />
              </node>
              <node concept="3oM_SD" id="61G6TdDTMo3" role="1PaTwD">
                <property role="3oM_SC" value="yet" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="61G6TdDTMo4" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdDTMo5" role="3cpWs9">
              <property role="TrG5h" value="newOrigins" />
              <node concept="_YKpA" id="61G6TdDTMo6" role="1tU5fm">
                <node concept="3Tqbb2" id="61G6TdDTMo7" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="61G6TdDTMo8" role="33vP2m">
                <node concept="Tc6Ow" id="61G6TdDTMo9" role="2ShVmc">
                  <node concept="3Tqbb2" id="61G6TdDTMoa" role="HW$YZ" />
                  <node concept="2OqwBi" id="61G6TdDTMob" role="I$8f6">
                    <node concept="37vLTw" id="61G6TdDTMoc" role="2Oq$k0">
                      <ref role="3cqZAo" node="61G6TdDTvzd" resolve="startFrom" />
                    </node>
                    <node concept="3zZkjj" id="61G6TdDTMod" role="2OqNvi">
                      <node concept="1bVj0M" id="61G6TdDTMoe" role="23t8la">
                        <node concept="3clFbS" id="61G6TdDTMof" role="1bW5cS">
                          <node concept="3clFbF" id="61G6TdDTMog" role="3cqZAp">
                            <node concept="3fqX7Q" id="61G6TdDTMoh" role="3clFbG">
                              <node concept="2OqwBi" id="61G6TdDTMoi" role="3fr31v">
                                <node concept="37vLTw" id="61G6TdDTMoj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
                                </node>
                                <node concept="liA8E" id="61G6TdDTMok" role="2OqNvi">
                                  <ref role="37wK5l" node="6nFpYluRAm8" resolve="isOrigin" />
                                  <node concept="2OqwBi" id="61G6TdDTMol" role="37wK5m">
                                    <node concept="37vLTw" id="61G6TdDTMom" role="2Oq$k0">
                                      <ref role="3cqZAo" node="61G6TdDTMoo" resolve="it" />
                                    </node>
                                    <node concept="iZEcu" id="61G6TdDTMon" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="61G6TdDTMoo" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="61G6TdDTMop" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="61G6TdDTPAm" role="3cqZAp">
            <node concept="2OqwBi" id="61G6TdDTS0T" role="3clFbG">
              <node concept="37vLTw" id="61G6TdDTPAk" role="2Oq$k0">
                <ref role="3cqZAo" node="4hQVL4f8WTc" resolve="originIndex" />
              </node>
              <node concept="liA8E" id="61G6TdDTUyB" role="2OqNvi">
                <ref role="37wK5l" node="70Wv0dJj0l_" resolve="addOrigins" />
                <node concept="37vLTw" id="61G6TdDTURH" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDTMo5" resolve="newOrigins" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="61G6TdDTVq8" role="3cqZAp">
            <node concept="37vLTw" id="61G6TdDTVq6" role="3clFbG">
              <ref role="3cqZAo" node="61G6TdDTMo5" resolve="newOrigins" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="61G6TdDTe0T" role="jymVt" />
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
    <property role="1sVAO0" value="true" />
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
    <node concept="3clFb_" id="6PWFJfG6VOq" role="jymVt">
      <property role="TrG5h" value="withMemo" />
      <node concept="37vLTG" id="6PWFJfG6VOr" role="3clF46">
        <property role="TrG5h" value="memo" />
        <node concept="3uibUv" id="6PWFJfG6VOs" role="1tU5fm">
          <ref role="3uigEE" to="i348:6PWFJfG5LMK" resolve="Memo" />
        </node>
      </node>
      <node concept="3uibUv" id="6PWFJfG6Xbm" role="3clF45">
        <ref role="3uigEE" node="7DvO2M9IiKB" resolve="MacroProcessing" />
      </node>
      <node concept="3Tm1VV" id="6PWFJfG6VOu" role="1B3o_S" />
      <node concept="3clFbS" id="6PWFJfG6VOy" role="3clF47">
        <node concept="3clFbF" id="6PWFJfG6VOA" role="3cqZAp">
          <node concept="10QFUN" id="6PWFJfG6XPZ" role="3clFbG">
            <node concept="3nyPlj" id="6PWFJfG6XPX" role="10QFUP">
              <ref role="37wK5l" to="i348:6PWFJfG6OFJ" resolve="withMemo" />
              <node concept="37vLTw" id="6PWFJfG6XPY" role="37wK5m">
                <ref role="3cqZAo" node="6PWFJfG6VOr" resolve="memo" />
              </node>
            </node>
            <node concept="3uibUv" id="6PWFJfG6YcN" role="10QFUM">
              <ref role="3uigEE" node="7DvO2M9IiKB" resolve="MacroProcessing" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6PWFJfG6VOz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5DUvKnrzdJ3" role="jymVt" />
    <node concept="3clFb_" id="5itBwM7VEuy" role="jymVt">
      <property role="TrG5h" value="expandMacro" />
      <node concept="37vLTG" id="5itBwM7VEuz" role="3clF46">
        <property role="TrG5h" value="inputNode" />
        <node concept="3Tqbb2" id="5itBwM7VEu$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5itBwM7VEu_" role="3clF46">
        <property role="TrG5h" value="prototypeTemplateRef" />
        <node concept="3uibUv" id="5itBwM7VEuA" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="5itBwM7VEuB" role="3clF46">
        <property role="TrG5h" value="proc" />
        <node concept="3uibUv" id="5itBwM7VEuC" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3qUtgH" id="5itBwM7XcWF" role="11_B2D">
            <node concept="16syzq" id="5itBwM7XebV" role="3qUvdb">
              <ref role="16sUi3" node="5itBwM7VEuJ" resolve="T" />
            </node>
          </node>
          <node concept="3uibUv" id="5itBwM7VEuF" role="11_B2D">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5itBwM7VEuG" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="5itBwM7VEuH" role="1B3o_S" />
      <node concept="16euLQ" id="5itBwM7VEuJ" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5itBwM86BsU" role="3ztrMU">
          <ref role="3uigEE" to="i348:5itBwM86qUH" resolve="ExpandMacroTemplate.Token" />
        </node>
      </node>
      <node concept="3clFbS" id="5itBwM7VEuL" role="3clF47">
        <node concept="3SKdUt" id="5itBwM7VHtb" role="3cqZAp">
          <node concept="1PaTwC" id="5itBwM7VHtc" role="1aUNEU">
            <node concept="3oM_SD" id="5itBwM7VHtd" role="1PaTwD">
              <property role="3oM_SC" value="calling" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHte" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHtf" role="1PaTwD">
              <property role="3oM_SC" value="macro" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHtg" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHth" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHti" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHtj" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHtk" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHtl" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHtm" role="1PaTwD">
              <property role="3oM_SC" value="effect" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5itBwM7VHtn" role="3cqZAp">
          <node concept="3clFbS" id="5itBwM7VHto" role="3clFbx">
            <node concept="3cpWs6" id="5itBwM7VHtp" role="3cqZAp">
              <node concept="10M0yZ" id="5itBwM7VHtq" role="3cqZAk">
                <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5itBwM7VHtr" role="3clFbw">
            <node concept="10Nm6u" id="5itBwM7VHts" role="3uHU7w" />
            <node concept="37vLTw" id="5itBwM7VHtt" role="3uHU7B">
              <ref role="3cqZAo" node="5itBwM7VEuz" resolve="inputNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5itBwM7VHsS" role="3cqZAp" />
        <node concept="3SKdUt" id="5itBwM7VHYu" role="3cqZAp">
          <node concept="1PaTwC" id="5itBwM7VHYv" role="1aUNEU">
            <node concept="3oM_SD" id="5itBwM7VHYw" role="1PaTwD">
              <property role="3oM_SC" value="mark" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHYx" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHYy" role="1PaTwD">
              <property role="3oM_SC" value="input" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHYz" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHY$" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5itBwM7VHY_" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5itBwM7VHYA" role="3cqZAp">
          <node concept="2OqwBi" id="5itBwM7VHYB" role="3clFbG">
            <node concept="37vLTw" id="5itBwM7VHYC" role="2Oq$k0">
              <ref role="3cqZAo" to="i348:7DvO2M9IiOO" resolve="requireHooks" />
            </node>
            <node concept="2es0OD" id="5itBwM7VHYD" role="2OqNvi">
              <node concept="1bVj0M" id="5itBwM7VHYE" role="23t8la">
                <node concept="3clFbS" id="5itBwM7VHYF" role="1bW5cS">
                  <node concept="3clFbF" id="5itBwM7VHYG" role="3cqZAp">
                    <node concept="2OqwBi" id="5itBwM7VHYH" role="3clFbG">
                      <node concept="37vLTw" id="5itBwM7VHYI" role="2Oq$k0">
                        <ref role="3cqZAo" node="5itBwM7VHYL" resolve="it" />
                      </node>
                      <node concept="liA8E" id="5itBwM7VHYJ" role="2OqNvi">
                        <ref role="37wK5l" to="i348:36tQV5BD$_p" resolve="require" />
                        <node concept="37vLTw" id="5itBwM7VHYK" role="37wK5m">
                          <ref role="3cqZAo" node="5itBwM7VEuz" resolve="inputNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5itBwM7VHYL" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5itBwM7VHYM" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5itBwM7VIPU" role="3cqZAp" />
        <node concept="3cpWs8" id="5itBwM7W9cH" role="3cqZAp">
          <node concept="3cpWsn" id="5itBwM7W9cI" role="3cpWs9">
            <property role="TrG5h" value="tpl" />
            <node concept="3uibUv" id="5itBwM7W9bP" role="1tU5fm">
              <ref role="3uigEE" to="i348:5itBwM75Jiy" resolve="ExpandMacroTemplate" />
              <node concept="16syzq" id="5itBwM7W9bS" role="11_B2D">
                <ref role="16sUi3" node="5itBwM7VEuJ" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="5itBwM7W9cJ" role="33vP2m">
              <node concept="37vLTw" id="5itBwM7W9cK" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2Ma0klb" resolve="macroTemplateIndex" />
              </node>
              <node concept="liA8E" id="5itBwM7W9cL" role="2OqNvi">
                <ref role="37wK5l" to="hano:5itBwM7W0ZG" resolve="expandMacroTemplate" />
                <node concept="2OqwBi" id="5itBwM7W9cM" role="37wK5m">
                  <node concept="37vLTw" id="5itBwM7W9cN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5itBwM7VEuz" resolve="inputNode" />
                  </node>
                  <node concept="2yIwOk" id="5itBwM7W9cO" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="5itBwM9tzhi" role="37wK5m">
                  <ref role="3cqZAo" node="5itBwM7VEu_" resolve="prototypeTemplateRef" />
                </node>
                <node concept="16syzq" id="5itBwM7W9cP" role="3PaCim">
                  <ref role="16sUi3" node="5itBwM7VEuJ" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5itBwM7Wak7" role="3cqZAp">
          <node concept="3clFbS" id="5itBwM7Wak_" role="3clFbx">
            <node concept="3cpWs8" id="5itBwM7WhOF" role="3cqZAp">
              <node concept="3cpWsn" id="5itBwM7WhOG" role="3cpWs9">
                <property role="TrG5h" value="tok" />
                <node concept="16syzq" id="5itBwM7WuWh" role="1tU5fm">
                  <ref role="16sUi3" node="5itBwM7VEuJ" resolve="T" />
                </node>
                <node concept="2OqwBi" id="5itBwM7WhOH" role="33vP2m">
                  <node concept="37vLTw" id="5itBwM7WhOI" role="2Oq$k0">
                    <ref role="3cqZAo" node="5itBwM7W9cI" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="5itBwM7WhOJ" role="2OqNvi">
                    <ref role="37wK5l" to="i348:5ynGfcflmnr" resolve="createToken" />
                    <node concept="37vLTw" id="5itBwM7WhOK" role="37wK5m">
                      <ref role="3cqZAo" node="5itBwM7VEuz" resolve="inputNode" />
                    </node>
                    <node concept="Xjq3P" id="5itBwM7WhOL" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5itBwM7WoCY" role="3cqZAp">
              <node concept="2OqwBi" id="5itBwM7WoCZ" role="3cqZAk">
                <node concept="37vLTw" id="5itBwM7WoD0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5itBwM7VEuB" resolve="proc" />
                </node>
                <node concept="liA8E" id="5itBwM7WoD1" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                  <node concept="37vLTw" id="5itBwM7WoD2" role="37wK5m">
                    <ref role="3cqZAo" node="5itBwM7WhOG" resolve="tok" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5itBwM7Wbo$" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="5itBwM7Wbht" role="3clFbw">
            <node concept="10Nm6u" id="5itBwM7WbnX" role="3uHU7w" />
            <node concept="37vLTw" id="5itBwM7W9cQ" role="3uHU7B">
              <ref role="3cqZAo" node="5itBwM7W9cI" resolve="tpl" />
            </node>
          </node>
          <node concept="9aQIb" id="5itBwM7WakD" role="9aQIa">
            <node concept="3clFbS" id="5itBwM7WakE" role="9aQI4">
              <node concept="3cpWs6" id="5itBwM7Win1" role="3cqZAp">
                <node concept="10M0yZ" id="5itBwM7Wkd5" role="3cqZAk">
                  <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
                  <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5itBwM7VEuM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5itBwM7VGqB" role="jymVt" />
    <node concept="3clFb_" id="5itBwMbbLT3" role="jymVt">
      <property role="TrG5h" value="expandMacro" />
      <node concept="37vLTG" id="5itBwMbbLT4" role="3clF46">
        <property role="TrG5h" value="inputConcept" />
        <node concept="3bZ5Sz" id="5itBwMbbLT5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5itBwMbbLT6" role="3clF46">
        <property role="TrG5h" value="prototypeTemplateRef" />
        <node concept="3uibUv" id="5itBwMbbLT7" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="5itBwMbbLT8" role="3clF46">
        <property role="TrG5h" value="proc" />
        <node concept="3uibUv" id="5itBwMbbLT9" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3qUtgH" id="5itBwMbbLTa" role="11_B2D">
            <node concept="16syzq" id="5itBwMbbLTb" role="3qUvdb">
              <ref role="16sUi3" node="5itBwMbbLTg" resolve="T" />
            </node>
          </node>
          <node concept="3uibUv" id="5itBwMbbLTc" role="11_B2D">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5itBwMbbLTd" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="5itBwMbbLTe" role="1B3o_S" />
      <node concept="16euLQ" id="5itBwMbbLTg" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5itBwMbbLTh" role="3ztrMU">
          <ref role="3uigEE" to="i348:5itBwM86qUH" resolve="ExpandMacroTemplate.Token" />
        </node>
      </node>
      <node concept="3clFbS" id="5itBwMbbLTi" role="3clF47">
        <node concept="3clFbH" id="5itBwMbbRFu" role="3cqZAp" />
        <node concept="3cpWs8" id="5itBwMbbRFP" role="3cqZAp">
          <node concept="3cpWsn" id="5itBwMbbRFQ" role="3cpWs9">
            <property role="TrG5h" value="tpl" />
            <node concept="3uibUv" id="5itBwMbbRFR" role="1tU5fm">
              <ref role="3uigEE" to="i348:5itBwM75Jiy" resolve="ExpandMacroTemplate" />
              <node concept="16syzq" id="5itBwMbbRFS" role="11_B2D">
                <ref role="16sUi3" node="5itBwMbbLTg" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="5itBwMbbRFT" role="33vP2m">
              <node concept="37vLTw" id="5itBwMbbRFU" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2Ma0klb" resolve="macroTemplateIndex" />
              </node>
              <node concept="liA8E" id="5itBwMbbRFV" role="2OqNvi">
                <ref role="37wK5l" to="hano:5itBwM7W0ZG" resolve="expandMacroTemplate" />
                <node concept="37vLTw" id="5itBwMbc0kX" role="37wK5m">
                  <ref role="3cqZAo" node="5itBwMbbLT4" resolve="inputConcept" />
                </node>
                <node concept="37vLTw" id="5itBwMbbRFZ" role="37wK5m">
                  <ref role="3cqZAo" node="5itBwMbbLT6" resolve="prototypeTemplateRef" />
                </node>
                <node concept="16syzq" id="5itBwMbbRG0" role="3PaCim">
                  <ref role="16sUi3" node="5itBwMbbLTg" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5itBwMbbRG1" role="3cqZAp">
          <node concept="3clFbS" id="5itBwMbbRG2" role="3clFbx">
            <node concept="3cpWs8" id="5itBwMbbRG3" role="3cqZAp">
              <node concept="3cpWsn" id="5itBwMbbRG4" role="3cpWs9">
                <property role="TrG5h" value="tok" />
                <node concept="16syzq" id="5itBwMbbRG5" role="1tU5fm">
                  <ref role="16sUi3" node="5itBwMbbLTg" resolve="T" />
                </node>
                <node concept="2OqwBi" id="5itBwMbbRG6" role="33vP2m">
                  <node concept="37vLTw" id="5itBwMbbRG7" role="2Oq$k0">
                    <ref role="3cqZAo" node="5itBwMbbRFQ" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="5itBwMbbRG8" role="2OqNvi">
                    <ref role="37wK5l" to="i348:5ynGfcflmnr" resolve="createToken" />
                    <node concept="10Nm6u" id="5itBwMbc2Mp" role="37wK5m" />
                    <node concept="Xjq3P" id="5itBwMbbRGa" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5itBwMbbRGb" role="3cqZAp">
              <node concept="2OqwBi" id="5itBwMbbRGc" role="3cqZAk">
                <node concept="37vLTw" id="5itBwMbbRGd" role="2Oq$k0">
                  <ref role="3cqZAo" node="5itBwMbbLT8" resolve="proc" />
                </node>
                <node concept="liA8E" id="5itBwMbbRGe" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                  <node concept="37vLTw" id="5itBwMbbRGf" role="37wK5m">
                    <ref role="3cqZAo" node="5itBwMbbRG4" resolve="tok" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5itBwMbbRGg" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="5itBwMbbRGh" role="3clFbw">
            <node concept="10Nm6u" id="5itBwMbbRGi" role="3uHU7w" />
            <node concept="37vLTw" id="5itBwMbbRGj" role="3uHU7B">
              <ref role="3cqZAo" node="5itBwMbbRFQ" resolve="tpl" />
            </node>
          </node>
          <node concept="9aQIb" id="5itBwMbbRGk" role="9aQIa">
            <node concept="3clFbS" id="5itBwMbbRGl" role="9aQI4">
              <node concept="3cpWs6" id="5itBwMbbRGm" role="3cqZAp">
                <node concept="10M0yZ" id="5itBwMbbRGn" role="3cqZAk">
                  <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
                  <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5itBwMbbLTj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5itBwMbbNrF" role="jymVt" />
    <node concept="3clFb_" id="5itBwM7VEuP" role="jymVt">
      <property role="TrG5h" value="callMacro" />
      <node concept="37vLTG" id="5itBwM7VEuQ" role="3clF46">
        <property role="TrG5h" value="callMacroTemplateRef" />
        <node concept="3uibUv" id="5itBwM7VEuR" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="5itBwM7VEuS" role="3clF46">
        <property role="TrG5h" value="proc" />
        <node concept="3uibUv" id="5itBwM7VEuT" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3qUtgH" id="5itBwM7Xg1G" role="11_B2D">
            <node concept="16syzq" id="5itBwM7Xhek" role="3qUvdb">
              <ref role="16sUi3" node="5itBwM7VEv0" resolve="T" />
            </node>
          </node>
          <node concept="3uibUv" id="5itBwM7VEuW" role="11_B2D">
            <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5itBwM7VEuX" role="3clF45">
        <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="5itBwM7VEuY" role="1B3o_S" />
      <node concept="16euLQ" id="5itBwM7VEv0" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5itBwM86CB5" role="3ztrMU">
          <ref role="3uigEE" to="i348:5itBwM86qnn" resolve="CallMacroTemplate.Token" />
        </node>
      </node>
      <node concept="3clFbS" id="5itBwM7VEv2" role="3clF47">
        <node concept="3cpWs8" id="5itBwM7W$4z" role="3cqZAp">
          <node concept="3cpWsn" id="5itBwM7W$4$" role="3cpWs9">
            <property role="TrG5h" value="tpl" />
            <node concept="3uibUv" id="5itBwM7W$4_" role="1tU5fm">
              <ref role="3uigEE" to="i348:5itBwM7auSJ" resolve="CallMacroTemplate" />
              <node concept="16syzq" id="5itBwM7W$4A" role="11_B2D">
                <ref role="16sUi3" node="5itBwM7VEv0" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="5itBwM7W$4B" role="33vP2m">
              <node concept="37vLTw" id="5itBwM7W$4C" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvO2Ma0klb" resolve="macroTemplateIndex" />
              </node>
              <node concept="liA8E" id="5itBwM7W$4D" role="2OqNvi">
                <ref role="37wK5l" to="hano:5itBwM7WF$n" resolve="callMacroTemplate" />
                <node concept="37vLTw" id="5itBwM7WBEk" role="37wK5m">
                  <ref role="3cqZAo" node="5itBwM7VEuQ" resolve="callMacroTemplateRef" />
                </node>
                <node concept="16syzq" id="5itBwM7W$4H" role="3PaCim">
                  <ref role="16sUi3" node="5itBwM7VEv0" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5itBwM7W$4I" role="3cqZAp">
          <node concept="3clFbS" id="5itBwM7W$4J" role="3clFbx">
            <node concept="3cpWs8" id="5itBwM7W$4K" role="3cqZAp">
              <node concept="3cpWsn" id="5itBwM7W$4L" role="3cpWs9">
                <property role="TrG5h" value="tok" />
                <node concept="16syzq" id="5itBwM7W$4M" role="1tU5fm">
                  <ref role="16sUi3" node="5itBwM7VEv0" resolve="T" />
                </node>
                <node concept="2OqwBi" id="5itBwM7W$4N" role="33vP2m">
                  <node concept="37vLTw" id="5itBwM7W$4O" role="2Oq$k0">
                    <ref role="3cqZAo" node="5itBwM7W$4$" resolve="tpl" />
                  </node>
                  <node concept="liA8E" id="5itBwM7W$4P" role="2OqNvi">
                    <ref role="37wK5l" to="i348:5ynGfcflmnm" resolve="createToken" />
                    <node concept="Xjq3P" id="5itBwM7W$4R" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5itBwM7W$4S" role="3cqZAp">
              <node concept="2OqwBi" id="5itBwM7W$4T" role="3cqZAk">
                <node concept="37vLTw" id="5itBwM7W$4U" role="2Oq$k0">
                  <ref role="3cqZAo" node="5itBwM7VEuS" resolve="proc" />
                </node>
                <node concept="liA8E" id="5itBwM7W$4V" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                  <node concept="37vLTw" id="5itBwM7W$4W" role="37wK5m">
                    <ref role="3cqZAo" node="5itBwM7W$4L" resolve="tok" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5itBwM7W$4X" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="5itBwM7W$4Y" role="3clFbw">
            <node concept="10Nm6u" id="5itBwM7W$4Z" role="3uHU7w" />
            <node concept="37vLTw" id="5itBwM7W$50" role="3uHU7B">
              <ref role="3cqZAo" node="5itBwM7W$4$" resolve="tpl" />
            </node>
          </node>
          <node concept="9aQIb" id="5itBwM7W$51" role="9aQIa">
            <node concept="3clFbS" id="5itBwM7W$52" role="9aQI4">
              <node concept="3cpWs6" id="5itBwM7W$53" role="3cqZAp">
                <node concept="10M0yZ" id="5itBwM7W$54" role="3cqZAk">
                  <ref role="1PxDUh" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                  <ref role="3cqZAo" to="i348:5yr01fDteq2" resolve="EMPTY" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5itBwM7VEv3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5itBwM7VFqM" role="jymVt" />
    <node concept="3Tm1VV" id="7DvO2M9IiOz" role="1B3o_S" />
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
        <property role="TrG5h" value="rulesList" />
        <node concept="3uibUv" id="4MqhgXUQsf0" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
        </node>
      </node>
      <node concept="3uibUv" id="2Z9ItkdcX5u" role="3clF45">
        <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4MqhgXUQoOO" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUQoOP" role="3clF47">
        <node concept="3clFbH" id="2Z9Itkdbdci" role="3cqZAp" />
        <node concept="3cpWs8" id="2Z9ItkdcHIm" role="3cqZAp">
          <node concept="3cpWsn" id="2Z9ItkdcHIn" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="2Z9ItkdcHIo" role="1tU5fm">
              <ref role="3uigEE" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oM" role="33vP2m">
              <ref role="37wK5l" to="psoy:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Z9Itkdba04" role="3cqZAp">
          <node concept="3cpWsn" id="2Z9Itkdba07" role="3cpWs9">
            <property role="TrG5h" value="validRules" />
            <node concept="_YKpA" id="2Z9Itkdba00" role="1tU5fm">
              <node concept="3uibUv" id="2Z9Itkdbacy" role="_ZDj9">
                <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
              </node>
            </node>
            <node concept="2ShNRf" id="2Z9Itkdbayv" role="33vP2m">
              <node concept="Tc6Ow" id="2Z9ItkdbaU4" role="2ShVmc">
                <node concept="3uibUv" id="2Z9Itkdbb_x" role="HW$YZ">
                  <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Z9Itkdbflb" role="3cqZAp" />
        <node concept="1DcWWT" id="4MqhgXUQtEm" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUQtEp" role="2LFqv$">
            <node concept="3J1_TO" id="2Z9ItkdaP90" role="3cqZAp">
              <node concept="3clFbS" id="2Z9ItkdaP92" role="1zxBo7">
                <node concept="3clFbF" id="2Z9ItkdcTdA" role="3cqZAp">
                  <node concept="1rXfSq" id="2Z9ItkdaMQh" role="3clFbG">
                    <ref role="37wK5l" node="2Z9ItkdaJ0K" resolve="introduceRule" />
                    <node concept="37vLTw" id="2Z9ItkdaMXr" role="37wK5m">
                      <ref role="3cqZAo" node="4MqhgXUQtEq" resolve="rule" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2Z9Itkdbqx4" role="3cqZAp">
                  <node concept="2OqwBi" id="2Z9Itkdbrcg" role="3clFbG">
                    <node concept="37vLTw" id="2Z9Itkdbqx2" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Z9Itkdba07" resolve="validRules" />
                    </node>
                    <node concept="TSZUe" id="2Z9ItkdbrMP" role="2OqNvi">
                      <node concept="37vLTw" id="2Z9ItkdbrSX" role="25WWJ7">
                        <ref role="3cqZAo" node="4MqhgXUQtEq" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2Z9ItkdaP91" role="3cqZAp" />
              </node>
              <node concept="3uVAMA" id="2Z9ItkdaP93" role="1zxBo5">
                <node concept="XOnhg" id="2Z9ItkdaP95" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="9wRW8gNGubd" role="1tU5fm">
                    <node concept="3uibUv" id="2Z9ItkdaPdz" role="nSUat">
                      <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2Z9ItkdaP99" role="1zc67A">
                  <node concept="3SKdUt" id="2Z9Itkdk4Fb" role="3cqZAp">
                    <node concept="1PaTwC" id="2Z9Itkdk4Fc" role="1aUNEU">
                      <node concept="3oM_SD" id="2Z9Itkdk69I" role="1PaTwD">
                        <property role="3oM_SC" value="errors" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6fo" role="1PaTwD">
                        <property role="3oM_SC" value="that" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6ix" role="1PaTwD">
                        <property role="3oM_SC" value="can" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6kr" role="1PaTwD">
                        <property role="3oM_SC" value="arise" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6pE" role="1PaTwD">
                        <property role="3oM_SC" value="here" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6rA" role="1PaTwD">
                        <property role="3oM_SC" value="seem" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6vh" role="1PaTwD">
                        <property role="3oM_SC" value="not" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6wN" role="1PaTwD">
                        <property role="3oM_SC" value="fatal," />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6$Q" role="1PaTwD">
                        <property role="3oM_SC" value="so" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6AS" role="1PaTwD">
                        <property role="3oM_SC" value="any" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk4LO" role="1PaTwD">
                        <property role="3oM_SC" value="rule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="2TBKtozZhly" role="3cqZAp">
                    <node concept="1PaTwC" id="2Z9Itkdk6CU" role="1aUNEU">
                      <node concept="3oM_SD" id="2Z9Itkdk6H3" role="1PaTwD">
                        <property role="3oM_SC" value="which" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk4Ph" role="1PaTwD">
                        <property role="3oM_SC" value="failed" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk4Sh" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk6N$" role="1PaTwD">
                        <property role="3oM_SC" value="generate" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk4Za" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk52d" role="1PaTwD">
                        <property role="3oM_SC" value="considered" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk5bK" role="1PaTwD">
                        <property role="3oM_SC" value="safe" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk5da" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="2Z9Itkdk5e_" role="1PaTwD">
                        <property role="3oM_SC" value="drop" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2Z9ItkdcTto" role="3cqZAp">
                    <node concept="37vLTI" id="2Z9ItkdcTFX" role="3clFbG">
                      <node concept="2OqwBi" id="2Z9ItkdcTLI" role="37vLTx">
                        <node concept="37vLTw" id="2Z9ItkdcTL6" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Z9ItkdcHIn" resolve="res" />
                        </node>
                        <node concept="liA8E" id="2Z9ItkdcTTy" role="2OqNvi">
                          <ref role="37wK5l" to="psoy:7nkyKX7v7xb" resolve="and" />
                          <node concept="2YIFZM" id="7TC1Xcd$6oY" role="37wK5m">
                            <ref role="37wK5l" to="psoy:5X1yxJHYTYX" resolve="RECOVER" />
                            <ref role="1Pybhc" to="psoy:7Oc59RSEjdb" resolve="Result" />
                            <node concept="37vLTw" id="2Z9ItkdcUuG" role="37wK5m">
                              <ref role="3cqZAo" node="2Z9ItkdaP95" resolve="e" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2Z9ItkdcTtn" role="37vLTJ">
                        <ref role="3cqZAo" node="2Z9ItkdcHIn" resolve="res" />
                      </node>
                    </node>
                  </node>
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
              <ref role="3cqZAo" node="4MqhgXUQrZn" resolve="rulesList" />
            </node>
            <node concept="liA8E" id="4MqhgXUQtEx" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~RulesList.rules()" resolve="rules" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Z9Itkdblok" role="3cqZAp" />
        <node concept="3cpWs8" id="2Z9Itkdbsb1" role="3cqZAp">
          <node concept="3cpWsn" id="2Z9Itkdbsb2" role="3cpWs9">
            <property role="TrG5h" value="introducedRules" />
            <node concept="3uibUv" id="2Z9Itkdbsb3" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~RulesList" resolve="RulesList" />
            </node>
            <node concept="2ShNRf" id="2Z9ItkdbsEW" role="33vP2m">
              <node concept="1pGfFk" id="2Z9Itkdbt2w" role="2ShVmc">
                <ref role="37wK5l" node="4MqhgXUM$CT" resolve="RulesListTable.RulesListImpl" />
                <node concept="2OqwBi" id="2Z9Itkdbtcw" role="37wK5m">
                  <node concept="37vLTw" id="2Z9Itkdbt6J" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MqhgXUQrZn" resolve="rulesList" />
                  </node>
                  <node concept="liA8E" id="2Z9ItkdbtkK" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~RulesList.name()" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="2Z9Itkdbtr2" role="37wK5m">
                  <ref role="3cqZAo" node="2Z9Itkdba07" resolve="validRules" />
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
              <node concept="37vLTw" id="2Z9ItkdbtLR" role="25WWJ7">
                <ref role="3cqZAo" node="2Z9Itkdbsb2" resolve="introducedRules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Z9ItkdcY7y" role="3cqZAp">
          <node concept="37vLTw" id="2Z9ItkdcY8P" role="3cqZAk">
            <ref role="3cqZAo" node="2Z9ItkdcHIn" resolve="res" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2Z9ItkdaH7h" role="jymVt" />
    <node concept="3clFb_" id="2Z9ItkdaJ0K" role="jymVt">
      <property role="TrG5h" value="introduceRule" />
      <node concept="3clFbS" id="2Z9ItkdaJ0N" role="3clF47">
        <node concept="3J1_TO" id="2Z9ItkdaNUt" role="3cqZAp">
          <node concept="3clFbS" id="2Z9ItkdaNUv" role="1zxBo7">
            <node concept="1DcWWT" id="2fZlvnrsIJF" role="3cqZAp">
              <node concept="3clFbS" id="2fZlvnrsIJG" role="2LFqv$">
                <node concept="3SKdUt" id="2fZlvnrsIJv" role="3cqZAp">
                  <node concept="1PaTwC" id="2fZlvnrsIJw" role="1aUNEU">
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
                  <ref role="3cqZAo" node="2Z9ItkdaJNw" resolve="rule" />
                </node>
                <node concept="liA8E" id="2fZlvnrsIJO" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Rule.all()" resolve="all" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2Z9ItkdcGMJ" role="3cqZAp" />
          </node>
          <node concept="3uVAMA" id="2Z9ItkdaNUw" role="1zxBo5">
            <node concept="XOnhg" id="2Z9ItkdaNUy" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="9wRW8gNGjG3" role="1tU5fm">
                <node concept="3uibUv" id="2Z9ItkdaNZl" role="nSUat">
                  <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2Z9ItkdaNUA" role="1zc67A">
              <node concept="YS8fn" id="2Z9ItkdcSvQ" role="3cqZAp">
                <node concept="2ShNRf" id="2Z9ItkdaO4S" role="YScLw">
                  <node concept="1pGfFk" id="2Z9ItkdaO4T" role="2ShVmc">
                    <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="InvalidRuleException" />
                    <node concept="2YIFZM" id="5BtuWK5vJ1r" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                      <node concept="Xl_RD" id="2Z9ItkdaO4Y" role="37wK5m">
                        <property role="Xl_RC" value="Invalid rule (%s): %s" />
                      </node>
                      <node concept="2OqwBi" id="5BtuWK5vJQi" role="37wK5m">
                        <node concept="37vLTw" id="5BtuWK5vJz8" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Z9ItkdaJNw" resolve="rule" />
                        </node>
                        <node concept="liA8E" id="5BtuWK5vJYH" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2Z9ItkdaO4V" role="37wK5m">
                        <node concept="37vLTw" id="2Z9ItkdaO4W" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Z9ItkdaNUy" resolve="e" />
                        </node>
                        <node concept="liA8E" id="2Z9ItkdaO4X" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2Z9ItkdaO4Z" role="37wK5m">
                      <ref role="3cqZAo" node="2Z9ItkdaNUy" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2Z9ItkdaIq$" role="1B3o_S" />
      <node concept="3cqZAl" id="2Z9ItkdcQFN" role="3clF45" />
      <node concept="37vLTG" id="2Z9ItkdaJNw" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="2Z9ItkdaJNv" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3uibUv" id="2Z9ItkdcPp2" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="429xoypV6tp" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlefwa" role="jymVt">
      <property role="TrG5h" value="introduceConstraint" />
      <node concept="3cqZAl" id="7Oc59RSHdhK" role="3clF45" />
      <node concept="3clFbS" id="7eGEHDlefwc" role="3clF47">
        <node concept="3clFbH" id="2Z9Itkd9Rv4" role="3cqZAp" />
        <node concept="3clFbF" id="7Oc59RSHTjZ" role="3cqZAp">
          <node concept="1rXfSq" id="7Oc59RSHTjX" role="3clFbG">
            <ref role="37wK5l" node="7eGEHDldpbj" resolve="checkValidConstraint" />
            <node concept="37vLTw" id="7Oc59RSHTE1" role="37wK5m">
              <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Z9Itkd9Rcg" role="3cqZAp" />
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
      <node concept="3cqZAl" id="2Z9ItkdaPM0" role="3clF45" />
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
                  <node concept="1PaTwC" id="589APehYxOS" role="1aUNEU">
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
      <node concept="37vLTG" id="4mdCe2gzkVI" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="4mdCe2gzlYj" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="6nFpYlu7giF" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="6nFpYlu7giG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6nFpYlu7giH" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="3Tqbb2" id="6nFpYlu7giI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7NeFFOg3az8" role="3clF46">
        <property role="TrG5h" value="watchedNodesTracker" />
        <node concept="3uibUv" id="7NeFFOg3b_J" role="1tU5fm">
          <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYlu7fpO" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlu7fpP" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu7fpQ" role="3clF47">
        <node concept="3clFbF" id="4mdCe2gzP3E" role="3cqZAp">
          <node concept="37vLTI" id="4mdCe2gzRhg" role="3clFbG">
            <node concept="37vLTw" id="4mdCe2gzRJj" role="37vLTx">
              <ref role="3cqZAo" node="4mdCe2gzkVI" resolve="repo" />
            </node>
            <node concept="2OqwBi" id="4mdCe2gzQqf" role="37vLTJ">
              <node concept="Xjq3P" id="4mdCe2gzP3C" role="2Oq$k0" />
              <node concept="2OwXpG" id="4mdCe2gzQBy" role="2OqNvi">
                <ref role="2Oxat5" node="4mdCe2gzxYJ" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
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
        <node concept="3clFbF" id="357z3MCphQr" role="3cqZAp">
          <node concept="37vLTI" id="357z3MCpiWT" role="3clFbG">
            <node concept="2OqwBi" id="357z3MCpi1j" role="37vLTJ">
              <node concept="Xjq3P" id="357z3MCphQp" role="2Oq$k0" />
              <node concept="2OwXpG" id="357z3MCpifc" role="2OqNvi">
                <ref role="2Oxat5" node="357z3MCpd1F" resolve="watchedNodesTracker" />
              </node>
            </node>
            <node concept="37vLTw" id="7NeFFOg3foA" role="37vLTx">
              <ref role="3cqZAo" node="7NeFFOg3az8" resolve="watchedNodesTracker" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4mdCe2g_tQ4" role="jymVt" />
    <node concept="3clFbW" id="4mdCe2g_MnB" role="jymVt">
      <node concept="3cqZAl" id="4mdCe2g_MnC" role="3clF45" />
      <node concept="3clFbS" id="4mdCe2g_MnE" role="3clF47" />
      <node concept="3Tm1VV" id="4mdCe2g_MnF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4mdCe2g_RHs" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu7hTH" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="6nFpYlu7hTJ" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlu7hTK" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu7hTL" role="3clF47">
        <node concept="3clFbF" id="6nFpYlu7kwf" role="3cqZAp">
          <node concept="1rXfSq" id="6nFpYlu7kwe" role="3clFbG">
            <ref role="37wK5l" node="3u5wJte1ac" resolve="stopTrackingChanges" />
            <node concept="37vLTw" id="4mdCe2g_hf0" role="37wK5m">
              <ref role="3cqZAo" node="4mdCe2gzxYJ" resolve="repository" />
            </node>
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
                <node concept="37vLTw" id="7NeFFOg6ycK" role="37wK5m">
                  <ref role="3cqZAo" node="357z3MCpd1F" resolve="watchedNodesTracker" />
                </node>
                <node concept="37vLTw" id="4mdCe2g_gEq" role="37wK5m">
                  <ref role="3cqZAo" node="4mdCe2gzxYJ" resolve="repository" />
                </node>
                <node concept="37vLTw" id="6YGKjaPwASZ" role="37wK5m">
                  <ref role="3cqZAo" node="6YGKjaPwvly" resolve="model" />
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
            <node concept="1Wc70l" id="4mdCe2g_qO0" role="3uHU7B">
              <node concept="3y3z36" id="4mdCe2g_rMU" role="3uHU7B">
                <node concept="10Nm6u" id="4mdCe2g_shi" role="3uHU7w" />
                <node concept="37vLTw" id="4mdCe2g_rgC" role="3uHU7B">
                  <ref role="3cqZAo" node="4mdCe2gzxYJ" resolve="repository" />
                </node>
              </node>
              <node concept="3y3z36" id="4Zz6A5Ih31f" role="3uHU7w">
                <node concept="37vLTw" id="6YGKjaPwAsJ" role="3uHU7B">
                  <ref role="3cqZAo" node="6YGKjaPwvly" resolve="model" />
                </node>
                <node concept="10Nm6u" id="4Zz6A5Ih37Y" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6PD9XvnQeX4" role="jymVt" />
    <node concept="3clFb_" id="6PD9XvnQtjo" role="jymVt">
      <property role="TrG5h" value="activateOnReferredModels" />
      <node concept="3clFbS" id="6PD9XvnQtjr" role="3clF47">
        <node concept="3clFbJ" id="6PD9XvnQxso" role="3cqZAp">
          <node concept="3clFbS" id="6PD9XvnQxsp" role="3clFbx">
            <node concept="3clFbF" id="6PD9XvnQ$II" role="3cqZAp">
              <node concept="2OqwBi" id="6PD9XvnQ_q1" role="3clFbG">
                <node concept="37vLTw" id="6PD9XvnQ$IH" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="nodeChangeTracker" />
                </node>
                <node concept="liA8E" id="6PD9XvnQZU9" role="2OqNvi">
                  <ref role="37wK5l" node="6PD9XvnQE1T" resolve="activateOnReferredModels" />
                  <node concept="37vLTw" id="6PD9XvnR0wa" role="37wK5m">
                    <ref role="3cqZAo" node="4mdCe2gzxYJ" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6PD9XvnQzJq" role="3clFbw">
            <node concept="2OqwBi" id="6PD9XvnQyjP" role="3uHU7B">
              <node concept="Xjq3P" id="6PD9XvnQy4D" role="2Oq$k0" />
              <node concept="2OwXpG" id="6PD9XvnQyWZ" role="2OqNvi">
                <ref role="2Oxat5" node="6nFpYlu6O1H" resolve="nodeChangeTracker" />
              </node>
            </node>
            <node concept="10Nm6u" id="6PD9XvnQ$jr" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6PD9XvnQnVt" role="1B3o_S" />
      <node concept="3cqZAl" id="6PD9XvnQsHm" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="bkE56gf1fB" role="jymVt" />
    <node concept="3clFb_" id="bkE56gf5Wy" role="jymVt">
      <property role="TrG5h" value="getRelevantOrigins" />
      <node concept="3Tm1VV" id="bkE56gf5Wz" role="1B3o_S" />
      <node concept="3vKaQO" id="bkE56gf5W$" role="3clF45">
        <node concept="2sp9CU" id="bkE56gf5W_" role="3O5elw" />
      </node>
      <node concept="3clFbS" id="bkE56gf5WA" role="3clF47">
        <node concept="3clFbF" id="bkE56gff5$" role="3cqZAp">
          <node concept="2OqwBi" id="bkE56gff$t" role="3clFbG">
            <node concept="37vLTw" id="bkE56gff5z" role="2Oq$k0">
              <ref role="3cqZAo" node="357z3MCpd1F" resolve="watchedNodesTracker" />
            </node>
            <node concept="liA8E" id="bkE56gfg0M" role="2OqNvi">
              <ref role="37wK5l" node="5$0KRV_gS_6" resolve="getRelevantOrigins" />
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
            <node concept="3clFbJ" id="u$i61wmoJ0" role="3cqZAp">
              <node concept="3clFbS" id="u$i61wmoJ2" role="3clFbx">
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
              <node concept="3y3z36" id="u$i61wmp85" role="3clFbw">
                <node concept="10Nm6u" id="u$i61wmpf_" role="3uHU7w" />
                <node concept="37vLTw" id="u$i61wmoOk" role="3uHU7B">
                  <ref role="3cqZAo" node="6nFpYlu4aqe" resolve="req" />
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
        <node concept="3clFbJ" id="gedWzVkJ5Y" role="3cqZAp">
          <node concept="3clFbS" id="gedWzVkJ60" role="3clFbx">
            <node concept="3clFbF" id="357z3MCq5Hf" role="3cqZAp">
              <node concept="2OqwBi" id="357z3MCq6hP" role="3clFbG">
                <node concept="37vLTw" id="357z3MCq5Hd" role="2Oq$k0">
                  <ref role="3cqZAo" node="357z3MCpd1F" resolve="watchedNodesTracker" />
                </node>
                <node concept="liA8E" id="357z3MCq6PQ" role="2OqNvi">
                  <ref role="37wK5l" node="6Ml8Ui52MWy" resolve="update" />
                  <node concept="37vLTw" id="357z3MCq73_" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYlud3F7" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="gedWzVkKdk" role="3clFbw">
            <node concept="10Nm6u" id="gedWzVkKJL" role="3uHU7w" />
            <node concept="2OqwBi" id="gedWzVkJue" role="3uHU7B">
              <node concept="Xjq3P" id="gedWzVkJcU" role="2Oq$k0" />
              <node concept="2OwXpG" id="7NeFFOg4Klh" role="2OqNvi">
                <ref role="2Oxat5" node="357z3MCpd1F" resolve="watchedNodesTracker" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="721IDwqGU93" role="lGtFl">
        <node concept="TZ5HA" id="721IDwqGU94" role="TZ5H$">
          <node concept="1dT_AC" id="721IDwqGU95" role="1dT_Ay">
            <property role="1dT_AB" value="Add update to the list of updates for source node." />
          </node>
        </node>
        <node concept="TZ5HA" id="4mdCe2g_ky4" role="TZ5H$">
          <node concept="1dT_AC" id="4mdCe2g_ky5" role="1dT_Ay">
            <property role="1dT_AB" value="and record information about nodes from different roots and models." />
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
                              <node concept="2OqwBi" id="TwMhbMGmQX" role="38cxEo">
                                <node concept="liA8E" id="TwMhbMGnF0" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                </node>
                                <node concept="2JrnkZ" id="TwMhbMGmR2" role="2Oq$k0">
                                  <node concept="37vLTw" id="6nFpYlu7FkU" role="2JrQYb">
                                    <ref role="3cqZAo" node="6nFpYlu7FkV" resolve="it" />
                                  </node>
                                </node>
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
                          <node concept="2OqwBi" id="TwMhbMGogb" role="3ElVtu">
                            <node concept="liA8E" id="TwMhbMGpQc" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="TwMhbMGogg" role="2Oq$k0">
                              <node concept="37vLTw" id="6nFpYlu7Fl2" role="2JrQYb">
                                <ref role="3cqZAo" node="6nFpYlu7Fl4" resolve="it" />
                              </node>
                            </node>
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
    <node concept="2tJIrI" id="357z3MCf013" role="jymVt" />
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
        <node concept="3cpWs8" id="TwMhbMGqw_" role="3cqZAp">
          <node concept="3cpWsn" id="TwMhbMGqwA" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="3uibUv" id="TwMhbMGqwB" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="2OqwBi" id="TwMhbMGr2o" role="33vP2m">
              <node concept="liA8E" id="TwMhbMGrq$" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
              </node>
              <node concept="2JrnkZ" id="TwMhbMGr2t" role="2Oq$k0">
                <node concept="37vLTw" id="TwMhbMGqCr" role="2JrQYb">
                  <ref role="3cqZAo" node="6nFpYlu3W$E" resolve="req" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6nFpYlu43V5" role="3cqZAp">
          <node concept="3fqX7Q" id="6nFpYlu46uR" role="3clFbw">
            <node concept="2OqwBi" id="6nFpYlu46uT" role="3fr31v">
              <node concept="37vLTw" id="6nFpYlu46uU" role="2Oq$k0">
                <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedRequirements" />
              </node>
              <node concept="2Nt0df" id="6nFpYlu46uV" role="2OqNvi">
                <node concept="37vLTw" id="TwMhbMGruH" role="38cxEo">
                  <ref role="3cqZAo" node="TwMhbMGqwA" resolve="key" />
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
                  <node concept="37vLTw" id="TwMhbMGsgQ" role="3ElVtu">
                    <ref role="3cqZAo" node="TwMhbMGqwA" resolve="key" />
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
            <node concept="37vLTw" id="TwMhbMGrSe" role="3ElVtu">
              <ref role="3cqZAo" node="TwMhbMGqwA" resolve="key" />
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
      <node concept="37vLTG" id="357z3MCoC5K" role="3clF46">
        <property role="TrG5h" value="changeFilter" />
        <node concept="3uibUv" id="357z3MCoGOQ" role="1tU5fm">
          <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
        </node>
      </node>
      <node concept="37vLTG" id="4mdCe2g_9K1" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="4mdCe2g_ekT" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="3u5wJtdRvH" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="3u5wJtdRXN" role="1tU5fm" />
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
                <ref role="37wK5l" node="2gPSxXTVNXh" resolve="UpdatesRecorder.ChangesTracker" />
                <node concept="37vLTw" id="357z3MCoQzq" role="37wK5m">
                  <ref role="3cqZAo" node="357z3MCoC5K" resolve="changeFilter" />
                </node>
                <node concept="37vLTw" id="4jShfh66JDa" role="37wK5m">
                  <ref role="3cqZAo" node="3u5wJtdRvH" resolve="model" />
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
              <ref role="37wK5l" node="2gPSxXTVH37" resolve="activate" />
              <node concept="37vLTw" id="4mdCe2g_fES" role="37wK5m">
                <ref role="3cqZAo" node="4mdCe2g_9K1" resolve="repo" />
              </node>
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
                  <ref role="37wK5l" node="2gPSxXTVH3S" resolve="deactivate" />
                  <node concept="37vLTw" id="4mdCe2g_g4P" role="37wK5m">
                    <ref role="3cqZAo" node="4mdCe2g_4HY" resolve="repo" />
                  </node>
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
      <node concept="37vLTG" id="4mdCe2g_4HY" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="4mdCe2g_4HX" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
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
        <node concept="3clFbJ" id="g_$eSbXZh7" role="3cqZAp">
          <node concept="3clFbS" id="g_$eSbXZh8" role="3clFbx">
            <node concept="3cpWs6" id="g_$eSbXZh9" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="g_$eSbXZha" role="3clFbw">
            <node concept="10Nm6u" id="g_$eSbXZhb" role="3uHU7w" />
            <node concept="37vLTw" id="g_$eSbXZhc" role="3uHU7B">
              <ref role="3cqZAo" node="6nFpYlu71jw" resolve="node" />
            </node>
          </node>
        </node>
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
        <node concept="3clFbJ" id="g_$eSbXXEl" role="3cqZAp">
          <node concept="3clFbS" id="g_$eSbXXEn" role="3clFbx">
            <node concept="3cpWs6" id="g_$eSbXYm7" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="g_$eSbXXTe" role="3clFbw">
            <node concept="10Nm6u" id="g_$eSbXYdQ" role="3uHU7w" />
            <node concept="37vLTw" id="g_$eSbXXJ4" role="3uHU7B">
              <ref role="3cqZAo" node="3yEb0I3Qr8J" resolve="node" />
            </node>
          </node>
        </node>
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
            <node concept="3clFbF" id="g_$eSbXTMt" role="3cqZAp">
              <node concept="1rXfSq" id="g_$eSbXTMr" role="3clFbG">
                <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangeSet" />
                <node concept="37vLTw" id="g_$eSbXU_8" role="37wK5m">
                  <ref role="3cqZAo" node="3yEb0I3QJfW" resolve="n" />
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
    <node concept="2tJIrI" id="357z3MCcHS8" role="jymVt" />
    <node concept="2tJIrI" id="3yEb0I3Qr8F" role="jymVt" />
    <node concept="2tJIrI" id="357z3MCasZC" role="jymVt" />
    <node concept="312cEu" id="6nFpYltKKoQ" role="jymVt">
      <property role="TrG5h" value="ChangesTracker" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="6nFpYltKQon" role="jymVt" />
      <node concept="3clFbW" id="2gPSxXTVNXh" role="jymVt">
        <node concept="37vLTG" id="2gPSxXTVNXi" role="3clF46">
          <property role="TrG5h" value="relevantNodesTracker" />
          <node concept="3uibUv" id="2gPSxXTVNXj" role="1tU5fm">
            <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
          </node>
        </node>
        <node concept="37vLTG" id="2gPSxXTVNXk" role="3clF46">
          <property role="TrG5h" value="observable" />
          <node concept="H_c77" id="2gPSxXTVNXl" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="2gPSxXTVNXm" role="3clF45" />
        <node concept="3Tm1VV" id="2gPSxXTVNXn" role="1B3o_S" />
        <node concept="3clFbS" id="2gPSxXTVNXo" role="3clF47">
          <node concept="XkiVB" id="2gPSxXTVNX_" role="3cqZAp">
            <ref role="37wK5l" node="2gPSxXTVH2K" resolve="ChangesTrackerBase" />
            <node concept="37vLTw" id="2gPSxXTVNXA" role="37wK5m">
              <ref role="3cqZAo" node="2gPSxXTVNXi" resolve="relevantNodesTracker" />
            </node>
            <node concept="37vLTw" id="2gPSxXTVNXB" role="37wK5m">
              <ref role="3cqZAo" node="2gPSxXTVNXk" resolve="observable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6PD9XvnQAcL" role="jymVt" />
      <node concept="3clFb_" id="6PD9XvnQE1T" role="jymVt">
        <property role="TrG5h" value="activateOnReferredModels" />
        <node concept="37vLTG" id="6PD9XvnQFnO" role="3clF46">
          <property role="TrG5h" value="repo" />
          <node concept="3uibUv" id="6PD9XvnQG4c" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3clFbS" id="6PD9XvnQE1W" role="3clF47">
          <node concept="3clFbF" id="6PD9XvnQH0L" role="3cqZAp">
            <node concept="2OqwBi" id="6PD9XvnQH0M" role="3clFbG">
              <node concept="2OqwBi" id="6PD9XvnQH0N" role="2Oq$k0">
                <node concept="37vLTw" id="6PD9XvnQH0O" role="2Oq$k0">
                  <ref role="3cqZAo" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
                </node>
                <node concept="liA8E" id="6PD9XvnQH0P" role="2OqNvi">
                  <ref role="37wK5l" node="3x4yg2XfY3J" resolve="getRelevantModels" />
                </node>
              </node>
              <node concept="2es0OD" id="6PD9XvnQH0Q" role="2OqNvi">
                <node concept="1bVj0M" id="6PD9XvnQH0R" role="23t8la">
                  <node concept="3clFbS" id="6PD9XvnQH0S" role="1bW5cS">
                    <node concept="3cpWs8" id="6PD9XvnQH0T" role="3cqZAp">
                      <node concept="3cpWsn" id="6PD9XvnQH0U" role="3cpWs9">
                        <property role="TrG5h" value="m" />
                        <node concept="H_c77" id="6PD9XvnQH0V" role="1tU5fm" />
                        <node concept="2OqwBi" id="6PD9XvnQH0W" role="33vP2m">
                          <node concept="37vLTw" id="6PD9XvnQH0X" role="2Oq$k0">
                            <ref role="3cqZAo" node="6PD9XvnQH1b" resolve="it" />
                          </node>
                          <node concept="liA8E" id="6PD9XvnQH0Y" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="37vLTw" id="6PD9XvnQH0Z" role="37wK5m">
                              <ref role="3cqZAo" node="6PD9XvnQFnO" resolve="repo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6PD9XvnQH10" role="3cqZAp">
                      <node concept="3clFbS" id="6PD9XvnQH11" role="3clFbx">
                        <node concept="3clFbF" id="6PD9XvnQH$1" role="3cqZAp">
                          <node concept="2OqwBi" id="6PD9XvnQH$2" role="3clFbG">
                            <node concept="liA8E" id="6PD9XvnQH$3" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                              <node concept="Xjq3P" id="6PD9XvnQH$4" role="37wK5m" />
                            </node>
                            <node concept="2JrnkZ" id="6PD9XvnQH$5" role="2Oq$k0">
                              <node concept="37vLTw" id="6PD9XvnQH$6" role="2JrQYb">
                                <ref role="3cqZAo" node="6PD9XvnQH0U" resolve="m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6PD9XvnQH12" role="3cqZAp">
                          <node concept="2OqwBi" id="6PD9XvnQH13" role="3clFbG">
                            <node concept="liA8E" id="6PD9XvnQH14" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                              <node concept="Xjq3P" id="6PD9XvnQH15" role="37wK5m" />
                            </node>
                            <node concept="2JrnkZ" id="6PD9XvnQH16" role="2Oq$k0">
                              <node concept="37vLTw" id="6PD9XvnQH17" role="2JrQYb">
                                <ref role="3cqZAo" node="6PD9XvnQH0U" resolve="m" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="6PD9XvnQH18" role="3clFbw">
                        <node concept="10Nm6u" id="6PD9XvnQH19" role="3uHU7w" />
                        <node concept="37vLTw" id="6PD9XvnQH1a" role="3uHU7B">
                          <ref role="3cqZAo" node="6PD9XvnQH0U" resolve="m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6PD9XvnQH1b" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6PD9XvnQH1c" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6PD9XvnQChN" role="1B3o_S" />
        <node concept="3cqZAl" id="6PD9XvnQDwp" role="3clF45" />
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
              <node concept="37vLTw" id="4mdCe2g_hJR" role="37wK5m">
                <ref role="3cqZAo" node="4jShfh66BqQ" resolve="repository" />
              </node>
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
              <node concept="2OqwBi" id="4mdCe2g_jZG" role="37wK5m">
                <node concept="liA8E" id="4mdCe2g_kqu" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
                <node concept="2JrnkZ" id="4mdCe2g_jZL" role="2Oq$k0">
                  <node concept="37vLTw" id="4mdCe2g_iRH" role="2JrQYb">
                    <ref role="3cqZAo" node="3u5wJtdOBI" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3u5wJtdOBL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6nFpYlu6Aw4" role="jymVt" />
      <node concept="3Tm6S6" id="6nFpYltZA1V" role="1B3o_S" />
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
            <node concept="2OqwBi" id="357z3MCehiM" role="3clFbw">
              <node concept="37vLTw" id="2gPSxXTVWoH" role="2Oq$k0">
                <ref role="3cqZAo" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
              </node>
              <node concept="liA8E" id="357z3MCehDP" role="2OqNvi">
                <ref role="37wK5l" node="357z3MCcFiT" resolve="isRelevant" />
                <node concept="37vLTw" id="357z3MCehMs" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltKQqr" resolve="event" />
                </node>
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
            <node concept="2OqwBi" id="357z3MCeia9" role="3clFbw">
              <node concept="37vLTw" id="2gPSxXTVWI_" role="2Oq$k0">
                <ref role="3cqZAo" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
              </node>
              <node concept="liA8E" id="357z3MCeiab" role="2OqNvi">
                <ref role="37wK5l" node="357z3MCcFlC" resolve="isRelevant" />
                <node concept="37vLTw" id="357z3MCeiac" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltKQq$" resolve="event" />
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
            <node concept="2OqwBi" id="357z3MCeiDu" role="3clFbw">
              <node concept="37vLTw" id="2gPSxXTVX4_" role="2Oq$k0">
                <ref role="3cqZAo" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
              </node>
              <node concept="liA8E" id="357z3MCeiDw" role="2OqNvi">
                <ref role="37wK5l" node="357z3MCcFlU" resolve="isRelevant" />
                <node concept="37vLTw" id="357z3MCeiDx" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltKQqH" resolve="event" />
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
            <node concept="2OqwBi" id="357z3MCej8Q" role="3clFbw">
              <node concept="37vLTw" id="2gPSxXTVXq3" role="2Oq$k0">
                <ref role="3cqZAo" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
              </node>
              <node concept="liA8E" id="357z3MCej8S" role="2OqNvi">
                <ref role="37wK5l" node="357z3MCcFmi" resolve="isRelevant" />
                <node concept="37vLTw" id="357z3MCej8T" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltKQqQ" resolve="event" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6nFpYltKQqU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="2gPSxXTVLzK" role="1zkMxy">
        <ref role="3uigEE" node="2gPSxXTVEd1" resolve="ChangesTrackerBase" />
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MC8N8k" role="jymVt" />
    <node concept="312cEg" id="6nFpYlu3FKa" role="jymVt">
      <property role="TrG5h" value="reversedRequirements" />
      <node concept="3Tm6S6" id="6nFpYlu3FKb" role="1B3o_S" />
      <node concept="3rvAFt" id="6nFpYlu3INu" role="1tU5fm">
        <node concept="2hMVRd" id="6nFpYlu3S8L" role="3rvSg0">
          <node concept="3Tqbb2" id="1ZiI2IC5di4" role="2hN53Y" />
        </node>
        <node concept="3uibUv" id="TwMhbMGjRh" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="2ShNRf" id="6nFpYlu3KnQ" role="33vP2m">
        <node concept="3rGOSV" id="6nFpYlu3Knd" role="2ShVmc">
          <node concept="2hMVRd" id="6nFpYlu3QAX" role="3rHtpV">
            <node concept="3Tqbb2" id="1ZiI2IC5gIq" role="2hN53Y" />
          </node>
          <node concept="3uibUv" id="u$i61wkJLd" role="3rHrn6">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
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
    <node concept="312cEg" id="357z3MCpd1F" role="jymVt">
      <property role="TrG5h" value="watchedNodesTracker" />
      <node concept="3Tm6S6" id="357z3MCp7gl" role="1B3o_S" />
      <node concept="3uibUv" id="7NeFFOg39ly" role="1tU5fm">
        <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
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
    <node concept="312cEg" id="4mdCe2gzxYJ" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3uibUv" id="4mdCe2gzq9P" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
      <node concept="3Tm6S6" id="4mdCe2gzM_z" role="1B3o_S" />
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
  <node concept="3HP615" id="357z3MCcE_y">
    <property role="TrG5h" value="RelevantNodesTracker" />
    <node concept="2tJIrI" id="6Ml8Ui52K6E" role="jymVt" />
    <node concept="3clFb_" id="6Ml8Ui52MWy" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3clFbS" id="6Ml8Ui52MW_" role="3clF47" />
      <node concept="3Tm1VV" id="6Ml8Ui52MWA" role="1B3o_S" />
      <node concept="3cqZAl" id="6Ml8Ui52LSL" role="3clF45" />
      <node concept="37vLTG" id="6Ml8Ui52OaO" role="3clF46">
        <property role="TrG5h" value="updatedNode" />
        <node concept="3Tqbb2" id="6Ml8Ui52OaN" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="bkE56geHWt" role="jymVt" />
    <node concept="3clFb_" id="3x4yg2XfY3J" role="jymVt">
      <property role="TrG5h" value="getRelevantModels" />
      <node concept="3clFbS" id="3x4yg2XfY3M" role="3clF47" />
      <node concept="3Tm1VV" id="3x4yg2XfY3N" role="1B3o_S" />
      <node concept="3vKaQO" id="3x4yg2XfNj0" role="3clF45">
        <node concept="3uibUv" id="4mdCe2g$FW_" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$0KRV_gQAr" role="jymVt" />
    <node concept="3clFb_" id="5$0KRV_gS_6" role="jymVt">
      <property role="TrG5h" value="getRelevantOrigins" />
      <node concept="3clFbS" id="5$0KRV_gS_9" role="3clF47" />
      <node concept="3Tm1VV" id="5$0KRV_gS_a" role="1B3o_S" />
      <node concept="3vKaQO" id="5$0KRV_gRwM" role="3clF45">
        <node concept="2sp9CU" id="5$0KRV_h2Eq" role="3O5elw" />
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCcFv4" role="jymVt" />
    <node concept="3clFb_" id="357z3MCcFiT" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3clFbS" id="357z3MCcFiW" role="3clF47" />
      <node concept="3Tm1VV" id="357z3MCcFiX" role="1B3o_S" />
      <node concept="10P_77" id="357z3MCcFiG" role="3clF45" />
      <node concept="37vLTG" id="357z3MCcFkc" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCcFkb" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCcFwM" role="jymVt" />
    <node concept="3clFb_" id="357z3MCcFlC" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3clFbS" id="357z3MCcFlD" role="3clF47" />
      <node concept="3Tm1VV" id="357z3MCcFlE" role="1B3o_S" />
      <node concept="10P_77" id="357z3MCcFlF" role="3clF45" />
      <node concept="37vLTG" id="357z3MCcFlG" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCcFoE" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCcFyx" role="jymVt" />
    <node concept="3clFb_" id="357z3MCcFlU" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3clFbS" id="357z3MCcFlV" role="3clF47" />
      <node concept="3Tm1VV" id="357z3MCcFlW" role="1B3o_S" />
      <node concept="10P_77" id="357z3MCcFlX" role="3clF45" />
      <node concept="37vLTG" id="357z3MCcFlY" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCcFq$" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCcF$h" role="jymVt" />
    <node concept="3clFb_" id="357z3MCcFmi" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3clFbS" id="357z3MCcFmj" role="3clF47" />
      <node concept="3Tm1VV" id="357z3MCcFmk" role="1B3o_S" />
      <node concept="10P_77" id="357z3MCcFml" role="3clF45" />
      <node concept="37vLTG" id="357z3MCcFmm" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCcFsK" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3x4yg2XfMdy" role="jymVt" />
    <node concept="3Tm1VV" id="357z3MCcE_z" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2gPSxXTVEd1">
    <property role="TrG5h" value="ChangesTrackerBase" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2gPSxXTVHWY" role="jymVt" />
    <node concept="3clFbW" id="2gPSxXTVH2K" role="jymVt">
      <node concept="37vLTG" id="2gPSxXTVH2L" role="3clF46">
        <property role="TrG5h" value="relevantNodesTracker" />
        <node concept="3uibUv" id="2gPSxXTVH2M" role="1tU5fm">
          <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
        </node>
      </node>
      <node concept="37vLTG" id="2gPSxXTVH2N" role="3clF46">
        <property role="TrG5h" value="observable" />
        <node concept="H_c77" id="2gPSxXTVH2O" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2gPSxXTVH2P" role="3clF45" />
      <node concept="3Tm1VV" id="2gPSxXTVKct" role="1B3o_S" />
      <node concept="3clFbS" id="2gPSxXTVH2R" role="3clF47">
        <node concept="3clFbF" id="2gPSxXTVH2S" role="3cqZAp">
          <node concept="37vLTI" id="2gPSxXTVH2T" role="3clFbG">
            <node concept="37vLTw" id="2gPSxXTVH2U" role="37vLTx">
              <ref role="3cqZAo" node="2gPSxXTVH2L" resolve="relevantNodesTracker" />
            </node>
            <node concept="2OqwBi" id="2gPSxXTVH2V" role="37vLTJ">
              <node concept="Xjq3P" id="2gPSxXTVH2W" role="2Oq$k0" />
              <node concept="2OwXpG" id="2gPSxXTVH2X" role="2OqNvi">
                <ref role="2Oxat5" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2gPSxXTVH2Y" role="3cqZAp">
          <node concept="37vLTI" id="2gPSxXTVH2Z" role="3clFbG">
            <node concept="37vLTw" id="2gPSxXTVH30" role="37vLTx">
              <ref role="3cqZAo" node="2gPSxXTVH2N" resolve="observable" />
            </node>
            <node concept="2OqwBi" id="2gPSxXTVH31" role="37vLTJ">
              <node concept="Xjq3P" id="2gPSxXTVH32" role="2Oq$k0" />
              <node concept="2OwXpG" id="2gPSxXTVH33" role="2OqNvi">
                <ref role="2Oxat5" node="2gPSxXTVG_O" resolve="observable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2gPSxXTVH36" role="jymVt" />
    <node concept="3clFb_" id="2gPSxXTVH37" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="37vLTG" id="4mdCe2g$EBy" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="4mdCe2g$ETO" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="2gPSxXTVH38" role="3clF45" />
      <node concept="3Tm1VV" id="2gPSxXTVKdL" role="1B3o_S" />
      <node concept="3clFbS" id="2gPSxXTVH3a" role="3clF47">
        <node concept="3clFbJ" id="4mdCe2gAsbq" role="3cqZAp">
          <node concept="3clFbS" id="4mdCe2gAsbs" role="3clFbx">
            <node concept="3clFbF" id="2gPSxXTVH3b" role="3cqZAp">
              <node concept="2OqwBi" id="2gPSxXTVH3c" role="3clFbG">
                <node concept="2OqwBi" id="2gPSxXTVH3d" role="2Oq$k0">
                  <node concept="37vLTw" id="2gPSxXTVH3e" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
                  </node>
                  <node concept="liA8E" id="2gPSxXTVH3f" role="2OqNvi">
                    <ref role="37wK5l" node="3x4yg2XfY3J" resolve="getRelevantModels" />
                  </node>
                </node>
                <node concept="2es0OD" id="2gPSxXTVH3g" role="2OqNvi">
                  <node concept="1bVj0M" id="2gPSxXTVH3h" role="23t8la">
                    <node concept="3clFbS" id="2gPSxXTVH3i" role="1bW5cS">
                      <node concept="3cpWs8" id="2gPSxXTVH3j" role="3cqZAp">
                        <node concept="3cpWsn" id="2gPSxXTVH3k" role="3cpWs9">
                          <property role="TrG5h" value="m" />
                          <node concept="H_c77" id="2gPSxXTVH3l" role="1tU5fm" />
                          <node concept="2OqwBi" id="4mdCe2g$L2A" role="33vP2m">
                            <node concept="37vLTw" id="4mdCe2g$KOR" role="2Oq$k0">
                              <ref role="3cqZAo" node="2gPSxXTVH3D" resolve="it" />
                            </node>
                            <node concept="liA8E" id="4mdCe2g$Ljv" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="37vLTw" id="4mdCe2g$LvH" role="37wK5m">
                                <ref role="3cqZAo" node="4mdCe2g$EBy" resolve="repo" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2gPSxXTVH3u" role="3cqZAp">
                        <node concept="3clFbS" id="2gPSxXTVH3v" role="3clFbx">
                          <node concept="3clFbF" id="2gPSxXTVH3w" role="3cqZAp">
                            <node concept="2OqwBi" id="2gPSxXTVH3x" role="3clFbG">
                              <node concept="liA8E" id="2gPSxXTVH3y" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                                <node concept="Xjq3P" id="2gPSxXTVH3z" role="37wK5m" />
                              </node>
                              <node concept="2JrnkZ" id="2gPSxXTVH3$" role="2Oq$k0">
                                <node concept="37vLTw" id="2gPSxXTVH3_" role="2JrQYb">
                                  <ref role="3cqZAo" node="2gPSxXTVH3k" resolve="m" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="2gPSxXTVH3A" role="3clFbw">
                          <node concept="10Nm6u" id="2gPSxXTVH3B" role="3uHU7w" />
                          <node concept="37vLTw" id="2gPSxXTVH3C" role="3uHU7B">
                            <ref role="3cqZAo" node="2gPSxXTVH3k" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2gPSxXTVH3D" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2gPSxXTVH3E" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4mdCe2gAsHQ" role="3clFbw">
            <node concept="10Nm6u" id="4mdCe2gAsYh" role="3uHU7w" />
            <node concept="37vLTw" id="4mdCe2gAspx" role="3uHU7B">
              <ref role="3cqZAo" node="4mdCe2g$EBy" resolve="repo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4mdCe2gAtJK" role="3cqZAp" />
        <node concept="3clFbF" id="2gPSxXTVH3F" role="3cqZAp">
          <node concept="2OqwBi" id="2gPSxXTVH3G" role="3clFbG">
            <node concept="2JrnkZ" id="2gPSxXTVH3H" role="2Oq$k0">
              <node concept="37vLTw" id="2gPSxXTVH3I" role="2JrQYb">
                <ref role="3cqZAo" node="2gPSxXTVG_O" resolve="observable" />
              </node>
            </node>
            <node concept="liA8E" id="2gPSxXTVH3J" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
              <node concept="Xjq3P" id="2gPSxXTVH3K" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2gPSxXTVH3L" role="3cqZAp">
          <node concept="2OqwBi" id="2gPSxXTVH3M" role="3clFbG">
            <node concept="2JrnkZ" id="2gPSxXTVH3N" role="2Oq$k0">
              <node concept="37vLTw" id="2gPSxXTVH3O" role="2JrQYb">
                <ref role="3cqZAo" node="2gPSxXTVG_O" resolve="observable" />
              </node>
            </node>
            <node concept="liA8E" id="2gPSxXTVH3P" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="addModelListener" />
              <node concept="Xjq3P" id="2gPSxXTVH3Q" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2gPSxXTVH3R" role="jymVt" />
    <node concept="3clFb_" id="2gPSxXTVH3S" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="2gPSxXTVH3T" role="3clF45" />
      <node concept="3Tm1VV" id="2gPSxXTVKuQ" role="1B3o_S" />
      <node concept="3clFbS" id="2gPSxXTVH3V" role="3clF47">
        <node concept="3clFbJ" id="4mdCe2gAulL" role="3cqZAp">
          <node concept="3clFbS" id="4mdCe2gAulN" role="3clFbx">
            <node concept="3clFbF" id="2gPSxXTVH3W" role="3cqZAp">
              <node concept="2OqwBi" id="2gPSxXTVH3X" role="3clFbG">
                <node concept="2OqwBi" id="2gPSxXTVH3Y" role="2Oq$k0">
                  <node concept="37vLTw" id="2gPSxXTVH3Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPSxXTVG_L" resolve="relevantNodesTracker" />
                  </node>
                  <node concept="liA8E" id="2gPSxXTVH40" role="2OqNvi">
                    <ref role="37wK5l" node="3x4yg2XfY3J" resolve="getRelevantModels" />
                  </node>
                </node>
                <node concept="2es0OD" id="2gPSxXTVH41" role="2OqNvi">
                  <node concept="1bVj0M" id="2gPSxXTVH42" role="23t8la">
                    <node concept="3clFbS" id="2gPSxXTVH43" role="1bW5cS">
                      <node concept="3cpWs8" id="2gPSxXTVH44" role="3cqZAp">
                        <node concept="3cpWsn" id="2gPSxXTVH45" role="3cpWs9">
                          <property role="TrG5h" value="m" />
                          <node concept="H_c77" id="2gPSxXTVH46" role="1tU5fm" />
                          <node concept="2OqwBi" id="4mdCe2g$LYM" role="33vP2m">
                            <node concept="37vLTw" id="4mdCe2g$LN5" role="2Oq$k0">
                              <ref role="3cqZAo" node="2gPSxXTVH4q" resolve="it" />
                            </node>
                            <node concept="liA8E" id="4mdCe2g$MfF" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="37vLTw" id="4mdCe2g$Mse" role="37wK5m">
                                <ref role="3cqZAo" node="4mdCe2g$FsE" resolve="repo" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2gPSxXTVH4f" role="3cqZAp">
                        <node concept="3clFbS" id="2gPSxXTVH4g" role="3clFbx">
                          <node concept="3clFbF" id="2gPSxXTVH4h" role="3cqZAp">
                            <node concept="2OqwBi" id="2gPSxXTVH4i" role="3clFbG">
                              <node concept="liA8E" id="2gPSxXTVH4j" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                                <node concept="Xjq3P" id="2gPSxXTVH4k" role="37wK5m" />
                              </node>
                              <node concept="2JrnkZ" id="2gPSxXTVH4l" role="2Oq$k0">
                                <node concept="37vLTw" id="2gPSxXTVH4m" role="2JrQYb">
                                  <ref role="3cqZAo" node="2gPSxXTVH45" resolve="m" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="2gPSxXTVH4n" role="3clFbw">
                          <node concept="10Nm6u" id="2gPSxXTVH4o" role="3uHU7w" />
                          <node concept="37vLTw" id="2gPSxXTVH4p" role="3uHU7B">
                            <ref role="3cqZAo" node="2gPSxXTVH45" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2gPSxXTVH4q" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2gPSxXTVH4r" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4mdCe2gAuLv" role="3clFbw">
            <node concept="10Nm6u" id="4mdCe2gAv1U" role="3uHU7w" />
            <node concept="37vLTw" id="4mdCe2gAuzT" role="3uHU7B">
              <ref role="3cqZAo" node="4mdCe2g$FsE" resolve="repo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2gPSxXTVH4s" role="3cqZAp" />
        <node concept="3clFbF" id="2gPSxXTVH4t" role="3cqZAp">
          <node concept="2OqwBi" id="2gPSxXTVH4u" role="3clFbG">
            <node concept="2JrnkZ" id="2gPSxXTVH4v" role="2Oq$k0">
              <node concept="37vLTw" id="2gPSxXTVH4w" role="2JrQYb">
                <ref role="3cqZAo" node="2gPSxXTVG_O" resolve="observable" />
              </node>
            </node>
            <node concept="liA8E" id="2gPSxXTVH4x" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
              <node concept="Xjq3P" id="2gPSxXTVH4y" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2gPSxXTVH4z" role="3cqZAp">
          <node concept="2OqwBi" id="2gPSxXTVH4$" role="3clFbG">
            <node concept="2JrnkZ" id="2gPSxXTVH4_" role="2Oq$k0">
              <node concept="37vLTw" id="2gPSxXTVH4A" role="2JrQYb">
                <ref role="3cqZAo" node="2gPSxXTVG_O" resolve="observable" />
              </node>
            </node>
            <node concept="liA8E" id="2gPSxXTVH4B" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="removeModelListener" />
              <node concept="Xjq3P" id="2gPSxXTVH4C" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4mdCe2g$FsE" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="4mdCe2g$FsD" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2gPSxXTVH4D" role="jymVt" />
    <node concept="2tJIrI" id="2gPSxXTVH2q" role="jymVt" />
    <node concept="312cEg" id="2gPSxXTVG_L" role="jymVt">
      <property role="TrG5h" value="relevantNodesTracker" />
      <node concept="3Tmbuc" id="2gPSxXTVIfh" role="1B3o_S" />
      <node concept="3uibUv" id="2gPSxXTVG_N" role="1tU5fm">
        <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
      </node>
    </node>
    <node concept="2tJIrI" id="2gPSxXTVIG1" role="jymVt" />
    <node concept="312cEg" id="2gPSxXTVG_O" role="jymVt">
      <property role="TrG5h" value="observable" />
      <node concept="3Tm6S6" id="2gPSxXTVG_P" role="1B3o_S" />
      <node concept="H_c77" id="2gPSxXTVG_Q" role="1tU5fm" />
    </node>
    <node concept="3Tm1VV" id="2gPSxXTVEd2" role="1B3o_S" />
    <node concept="3uibUv" id="2gPSxXTVFHA" role="1zkMxy">
      <ref role="3uigEE" to="mhbf:~SModelListenerBase" resolve="SModelListenerBase" />
    </node>
    <node concept="3uibUv" id="2gPSxXTVJBx" role="EKbjA">
      <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
    </node>
  </node>
  <node concept="312cEu" id="357z3MCgxhz">
    <property role="TrG5h" value="UnitNodeTracker" />
    <node concept="2tJIrI" id="357z3MCgUnc" role="jymVt" />
    <node concept="3clFbW" id="357z3MCgNd8" role="jymVt">
      <node concept="3cqZAl" id="357z3MCgNd9" role="3clF45" />
      <node concept="3clFbS" id="357z3MCgNdb" role="3clF47">
        <node concept="3clFbF" id="357z3MCgTQf" role="3cqZAp">
          <node concept="37vLTI" id="357z3MCgUgI" role="3clFbG">
            <node concept="37vLTw" id="357z3MCgUll" role="37vLTx">
              <ref role="3cqZAo" node="357z3MCgOOC" resolve="unit" />
            </node>
            <node concept="2OqwBi" id="357z3MCgTX7" role="37vLTJ">
              <node concept="Xjq3P" id="357z3MCgTQe" role="2Oq$k0" />
              <node concept="2OwXpG" id="357z3MCgU30" role="2OqNvi">
                <ref role="2Oxat5" node="357z3MCgSb$" resolve="unit" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="357z3MCgNdc" role="1B3o_S" />
      <node concept="37vLTG" id="357z3MCgOOC" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="3Tqbb2" id="357z3MCgOOB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7NeFFOg3lf5" role="jymVt" />
    <node concept="3clFb_" id="7NeFFOg3rFb" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3clFbS" id="7NeFFOg3rFe" role="3clF47" />
      <node concept="3Tm1VV" id="7NeFFOg3oyi" role="1B3o_S" />
      <node concept="3cqZAl" id="7NeFFOg3qW5" role="3clF45" />
      <node concept="37vLTG" id="7NeFFOg3uLr" role="3clF46">
        <property role="TrG5h" value="updatedNode" />
        <node concept="3Tqbb2" id="7NeFFOg3uLq" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4mdCe2gDd_T" role="jymVt" />
    <node concept="3clFb_" id="4mdCe2gD3ql" role="jymVt">
      <property role="TrG5h" value="getRelevantModels" />
      <node concept="3Tm1VV" id="4mdCe2gD3qn" role="1B3o_S" />
      <node concept="3vKaQO" id="4mdCe2gD3qo" role="3clF45">
        <node concept="3uibUv" id="4mdCe2gD3qp" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3clFbS" id="4mdCe2gD3qq" role="3clF47">
        <node concept="3clFbF" id="4mdCe2gDgDb" role="3cqZAp">
          <node concept="2ShNRf" id="4mdCe2gDgD9" role="3clFbG">
            <node concept="Tc6Ow" id="4mdCe2gDhvK" role="2ShVmc">
              <node concept="3cmrfG" id="4mdCe2gDi6Y" role="3lWHg$">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3uibUv" id="4mdCe2gDiBk" role="HW$YZ">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="bkE56geJmY" role="jymVt" />
    <node concept="3clFb_" id="5$0KRV_h3m$" role="jymVt">
      <property role="TrG5h" value="getRelevantOrigins" />
      <node concept="3Tm1VV" id="5$0KRV_h3mA" role="1B3o_S" />
      <node concept="3vKaQO" id="5$0KRV_h3mB" role="3clF45">
        <node concept="2sp9CU" id="5$0KRV_h3mC" role="3O5elw" />
      </node>
      <node concept="3clFbS" id="5$0KRV_h3mD" role="3clF47">
        <node concept="3clFbF" id="bkE56geK7c" role="3cqZAp">
          <node concept="2ShNRf" id="bkE56geK7d" role="3clFbG">
            <node concept="Tc6Ow" id="bkE56geK7e" role="2ShVmc">
              <node concept="3cmrfG" id="bkE56geK7f" role="3lWHg$">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2sp9CU" id="bkE56geKnE" role="HW$YZ" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCgZXr" role="jymVt" />
    <node concept="3clFb_" id="357z3MCgXBj" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCgXBk" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCgXBl" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCgXBm" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCh1MZ" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCgXBo" role="3clF47">
        <node concept="3clFbF" id="357z3MCgXBp" role="3cqZAp">
          <node concept="3clFbC" id="357z3MCgXBq" role="3clFbG">
            <node concept="37vLTw" id="357z3MCgXBr" role="3uHU7w">
              <ref role="3cqZAo" node="357z3MCgSb$" resolve="unit" />
            </node>
            <node concept="2OqwBi" id="357z3MCgXBs" role="3uHU7B">
              <node concept="2OqwBi" id="357z3MCgXBt" role="2Oq$k0">
                <node concept="37vLTw" id="357z3MCgXBu" role="2Oq$k0">
                  <ref role="3cqZAo" node="357z3MCgXBk" resolve="event" />
                </node>
                <node concept="liA8E" id="357z3MCgXBv" role="2OqNvi">
                  <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                </node>
              </node>
              <node concept="liA8E" id="357z3MCgXBw" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCgXBx" role="jymVt" />
    <node concept="3clFb_" id="357z3MCgXBy" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCgXBz" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCgXB$" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCgXB_" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCh2MN" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCgXBB" role="3clF47">
        <node concept="3clFbF" id="357z3MCgXBC" role="3cqZAp">
          <node concept="3clFbC" id="357z3MCgXBD" role="3clFbG">
            <node concept="37vLTw" id="357z3MCgXBE" role="3uHU7w">
              <ref role="3cqZAo" node="357z3MCgSb$" resolve="unit" />
            </node>
            <node concept="2OqwBi" id="357z3MCgXBF" role="3uHU7B">
              <node concept="2OqwBi" id="357z3MCgXBG" role="2Oq$k0">
                <node concept="37vLTw" id="357z3MCgXBH" role="2Oq$k0">
                  <ref role="3cqZAo" node="357z3MCgXBz" resolve="event" />
                </node>
                <node concept="liA8E" id="357z3MCgXBI" role="2OqNvi">
                  <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                </node>
              </node>
              <node concept="liA8E" id="357z3MCgXBJ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCgXBK" role="jymVt" />
    <node concept="3clFb_" id="357z3MCgXBL" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCgXBM" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCgXBN" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCgXBO" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCh3MB" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCgXBQ" role="3clF47">
        <node concept="3clFbF" id="357z3MCgXBR" role="3cqZAp">
          <node concept="1Wc70l" id="357z3MCgXBS" role="3clFbG">
            <node concept="3clFbC" id="357z3MCgXBT" role="3uHU7w">
              <node concept="37vLTw" id="357z3MCgXBU" role="3uHU7w">
                <ref role="3cqZAo" node="357z3MCgSb$" resolve="unit" />
              </node>
              <node concept="2OqwBi" id="357z3MCgXBV" role="3uHU7B">
                <node concept="2OqwBi" id="357z3MCgXBW" role="2Oq$k0">
                  <node concept="37vLTw" id="357z3MCgXBX" role="2Oq$k0">
                    <ref role="3cqZAo" node="357z3MCgXBM" resolve="event" />
                  </node>
                  <node concept="liA8E" id="357z3MCgXBY" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                  </node>
                </node>
                <node concept="liA8E" id="357z3MCgXBZ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="357z3MCgXC0" role="3uHU7B">
              <node concept="2OqwBi" id="357z3MCgXC1" role="3fr31v">
                <node concept="37vLTw" id="357z3MCgXC2" role="2Oq$k0">
                  <ref role="3cqZAo" node="357z3MCgXBM" resolve="event" />
                </node>
                <node concept="liA8E" id="357z3MCgXC3" role="2OqNvi">
                  <ref role="37wK5l" to="cmfw:~SNodeAddEvent.isRoot()" resolve="isRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCgXC4" role="jymVt" />
    <node concept="3clFb_" id="357z3MCgXC5" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCgXC6" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCgXC7" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCgXC8" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCh4Mx" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCgXCa" role="3clF47">
        <node concept="3clFbF" id="357z3MCgXCb" role="3cqZAp">
          <node concept="22lmx$" id="357z3MCgXCc" role="3clFbG">
            <node concept="1eOMI4" id="357z3MCgXCd" role="3uHU7w">
              <node concept="1Wc70l" id="357z3MCgXCe" role="1eOMHV">
                <node concept="3y3z36" id="357z3MCgXCf" role="3uHU7B">
                  <node concept="10Nm6u" id="357z3MCgXCg" role="3uHU7w" />
                  <node concept="2OqwBi" id="357z3MCgXCh" role="3uHU7B">
                    <node concept="37vLTw" id="357z3MCgXCi" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCgXC6" resolve="event" />
                    </node>
                    <node concept="liA8E" id="357z3MCgXCj" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="357z3MCgXCk" role="3uHU7w">
                  <node concept="37vLTw" id="357z3MCgXCl" role="3uHU7w">
                    <ref role="3cqZAo" node="357z3MCgSb$" resolve="unit" />
                  </node>
                  <node concept="2OqwBi" id="357z3MCgXCm" role="3uHU7B">
                    <node concept="2OqwBi" id="357z3MCgXCn" role="2Oq$k0">
                      <node concept="37vLTw" id="357z3MCgXCo" role="2Oq$k0">
                        <ref role="3cqZAo" node="357z3MCgXC6" resolve="event" />
                      </node>
                      <node concept="liA8E" id="357z3MCgXCp" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                      </node>
                    </node>
                    <node concept="liA8E" id="357z3MCgXCq" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="357z3MCgXCr" role="3uHU7B">
              <node concept="1Wc70l" id="357z3MCgXCs" role="1eOMHV">
                <node concept="3clFbC" id="357z3MCgXCt" role="3uHU7w">
                  <node concept="37vLTw" id="357z3MCgXCu" role="3uHU7w">
                    <ref role="3cqZAo" node="357z3MCgSb$" resolve="unit" />
                  </node>
                  <node concept="2OqwBi" id="357z3MCgXCv" role="3uHU7B">
                    <node concept="37vLTw" id="357z3MCgXCw" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCgXC6" resolve="event" />
                    </node>
                    <node concept="liA8E" id="357z3MCgXCx" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="357z3MCgXCy" role="3uHU7B">
                  <node concept="37vLTw" id="357z3MCgXCz" role="2Oq$k0">
                    <ref role="3cqZAo" node="357z3MCgXC6" resolve="event" />
                  </node>
                  <node concept="liA8E" id="357z3MCgXC$" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.isRoot()" resolve="isRoot" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCgVYN" role="jymVt" />
    <node concept="312cEg" id="357z3MCgSb$" role="jymVt">
      <property role="TrG5h" value="unit" />
      <node concept="3Tqbb2" id="357z3MCgQ$u" role="1tU5fm" />
      <node concept="3Tm6S6" id="357z3MCgTMF" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="357z3MCqDfY" role="1B3o_S" />
    <node concept="3uibUv" id="357z3MCicfJ" role="EKbjA">
      <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
    </node>
  </node>
  <node concept="312cEu" id="357z3MCcYVD">
    <property role="TrG5h" value="TypeDependenciesNodeTracker" />
    <node concept="2tJIrI" id="5$0KRV_h31d" role="jymVt" />
    <node concept="3clFbW" id="5$0KRV_h31e" role="jymVt">
      <node concept="37vLTG" id="5$0KRV_h31f" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="3Tqbb2" id="5$0KRV_h31g" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5$0KRV_h31h" role="3clF45" />
      <node concept="3clFbS" id="5$0KRV_h31i" role="3clF47">
        <node concept="3clFbF" id="5$0KRV_h31j" role="3cqZAp">
          <node concept="37vLTI" id="5$0KRV_h31k" role="3clFbG">
            <node concept="37vLTw" id="5$0KRV_h31l" role="37vLTx">
              <ref role="3cqZAo" node="5$0KRV_h31f" resolve="unit" />
            </node>
            <node concept="2OqwBi" id="5$0KRV_h31m" role="37vLTJ">
              <node concept="Xjq3P" id="5$0KRV_h31n" role="2Oq$k0" />
              <node concept="2OwXpG" id="5$0KRV_h31o" role="2OqNvi">
                <ref role="2Oxat5" node="357z3MCesvX" resolve="unit" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5$0KRV_h31p" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5$0KRV_h31v" role="jymVt" />
    <node concept="3clFb_" id="3x4yg2Xg7_W" role="jymVt">
      <property role="TrG5h" value="getRelevantModels" />
      <node concept="3clFbS" id="3x4yg2Xg7_Z" role="3clF47">
        <node concept="3clFbF" id="3x4yg2Xgcd3" role="3cqZAp">
          <node concept="2OqwBi" id="3x4yg2XgcVZ" role="3clFbG">
            <node concept="37vLTw" id="3x4yg2Xgcd2" role="2Oq$k0">
              <ref role="3cqZAo" node="3x4yg2Xf_WI" resolve="referredModels" />
            </node>
            <node concept="26Dbio" id="3x4yg2XgdIH" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3x4yg2Xg50G" role="1B3o_S" />
      <node concept="3vKaQO" id="3x4yg2Xg7n4" role="3clF45">
        <node concept="3uibUv" id="4mdCe2g$HxV" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$0KRV_gPtL" role="jymVt" />
    <node concept="3clFb_" id="5$0KRV_gTCf" role="jymVt">
      <property role="TrG5h" value="getRelevantOrigins" />
      <node concept="3Tm1VV" id="5$0KRV_gTCh" role="1B3o_S" />
      <node concept="3vKaQO" id="5$0KRV_gTCi" role="3clF45">
        <node concept="2sp9CU" id="5$0KRV_h2Mm" role="3O5elw" />
      </node>
      <node concept="3clFbS" id="5$0KRV_gTCk" role="3clF47">
        <node concept="3clFbF" id="5$0KRV_gYgX" role="3cqZAp">
          <node concept="2OqwBi" id="5$0KRV_h1wK" role="3clFbG">
            <node concept="2OqwBi" id="5$0KRV_gYRM" role="2Oq$k0">
              <node concept="37vLTw" id="5$0KRV_gYgW" role="2Oq$k0">
                <ref role="3cqZAo" node="45q4rZQbJP2" resolve="origin2relevantNodes" />
              </node>
              <node concept="3lbrtF" id="5$0KRV_h0Fh" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="5$0KRV_h2l4" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCpSFM" role="jymVt" />
    <node concept="3clFb_" id="45q4rZQbgMm" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3clFbS" id="45q4rZQbgMp" role="3clF47">
        <node concept="3clFbF" id="3Q4yQQKz6Nl" role="3cqZAp">
          <node concept="1rXfSq" id="3Q4yQQKz6Nj" role="3clFbG">
            <ref role="37wK5l" node="3Q4yQQKyW3r" resolve="updateRelevantNodes" />
            <node concept="37vLTw" id="3Q4yQQKz6YP" role="37wK5m">
              <ref role="3cqZAo" node="45q4rZQbljy" resolve="updatedNode" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="45q4rZQbpgT" role="3cqZAp">
          <node concept="3cpWsn" id="45q4rZQbpgU" role="1Duv9x">
            <property role="TrG5h" value="ref" />
            <node concept="2z4iKi" id="45q4rZQbrDe" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="45q4rZQbq8a" role="1DdaDG">
            <node concept="37vLTw" id="45q4rZQbpT9" role="2Oq$k0">
              <ref role="3cqZAo" node="45q4rZQbljy" resolve="updatedNode" />
            </node>
            <node concept="2z74zc" id="45q4rZQbqCQ" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="45q4rZQbpgW" role="2LFqv$">
            <node concept="3clFbF" id="3Q4yQQKz57i" role="3cqZAp">
              <node concept="1rXfSq" id="3Q4yQQKz57g" role="3clFbG">
                <ref role="37wK5l" node="3Q4yQQKyW3r" resolve="updateRelevantNodes" />
                <node concept="2OqwBi" id="3Q4yQQKz5EN" role="37wK5m">
                  <node concept="37vLTw" id="3Q4yQQKz5yh" role="2Oq$k0">
                    <ref role="3cqZAo" node="45q4rZQbpgU" resolve="ref" />
                  </node>
                  <node concept="2ZHEkA" id="3Q4yQQKz5LQ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="357z3MCpUjK" role="1B3o_S" />
      <node concept="3cqZAl" id="45q4rZQbgjL" role="3clF45" />
      <node concept="37vLTG" id="45q4rZQbljy" role="3clF46">
        <property role="TrG5h" value="updatedNode" />
        <node concept="3Tqbb2" id="45q4rZQbljx" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCpQbA" role="jymVt" />
    <node concept="3clFb_" id="357z3MCdcHk" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCdcHl" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCdcHm" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCdcHn" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCdf4X" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCdcHp" role="3clF47">
        <node concept="3clFbF" id="357z3MCdcHq" role="3cqZAp">
          <node concept="1rXfSq" id="357z3MCdcHr" role="3clFbG">
            <ref role="37wK5l" node="357z3MCdcIq" resolve="isRelevantNode" />
            <node concept="2OqwBi" id="357z3MCdcHs" role="37wK5m">
              <node concept="37vLTw" id="357z3MCdcHt" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCdcHl" resolve="event" />
              </node>
              <node concept="liA8E" id="357z3MCdcHu" role="2OqNvi">
                <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCdcHv" role="jymVt" />
    <node concept="3clFb_" id="357z3MCdcHw" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCdcHx" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCdcHy" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCdcHz" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCdfOP" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCdcH_" role="3clF47">
        <node concept="3clFbF" id="357z3MCdcHA" role="3cqZAp">
          <node concept="1rXfSq" id="357z3MCdcHB" role="3clFbG">
            <ref role="37wK5l" node="357z3MCdcIq" resolve="isRelevantNode" />
            <node concept="2OqwBi" id="357z3MCdcHC" role="37wK5m">
              <node concept="37vLTw" id="357z3MCdcHD" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCdcHx" resolve="event" />
              </node>
              <node concept="liA8E" id="357z3MCdcHE" role="2OqNvi">
                <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCdcHF" role="jymVt" />
    <node concept="3clFb_" id="357z3MCdcHG" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCdcHH" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCdcHI" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCdcHJ" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCdh$S" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCdcHL" role="3clF47">
        <node concept="3clFbF" id="357z3MCdcHM" role="3cqZAp">
          <node concept="1Wc70l" id="357z3MCdcHN" role="3clFbG">
            <node concept="3fqX7Q" id="357z3MCdcHO" role="3uHU7B">
              <node concept="2OqwBi" id="357z3MCdcHP" role="3fr31v">
                <node concept="37vLTw" id="357z3MCdcHQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="357z3MCdcHH" resolve="event" />
                </node>
                <node concept="liA8E" id="357z3MCdcHR" role="2OqNvi">
                  <ref role="37wK5l" to="cmfw:~SNodeAddEvent.isRoot()" resolve="isRoot" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="357z3MCdcHS" role="3uHU7w">
              <ref role="37wK5l" node="357z3MCdcIq" resolve="isRelevantNode" />
              <node concept="2OqwBi" id="357z3MCdcHT" role="37wK5m">
                <node concept="37vLTw" id="357z3MCdcHU" role="2Oq$k0">
                  <ref role="3cqZAo" node="357z3MCdcHH" resolve="event" />
                </node>
                <node concept="liA8E" id="357z3MCdcHV" role="2OqNvi">
                  <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCdcHW" role="jymVt" />
    <node concept="3clFb_" id="357z3MCdcHX" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="37vLTG" id="357z3MCdcHY" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="357z3MCdcHZ" role="1tU5fm">
          <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
        </node>
      </node>
      <node concept="10P_77" id="357z3MCdcI0" role="3clF45" />
      <node concept="3Tm1VV" id="357z3MCdin8" role="1B3o_S" />
      <node concept="3clFbS" id="357z3MCdcI2" role="3clF47">
        <node concept="3clFbF" id="357z3MCdcI3" role="3cqZAp">
          <node concept="22lmx$" id="357z3MCdcI4" role="3clFbG">
            <node concept="1eOMI4" id="357z3MCdcI5" role="3uHU7w">
              <node concept="1Wc70l" id="357z3MCdcI6" role="1eOMHV">
                <node concept="3y3z36" id="357z3MCdcI7" role="3uHU7B">
                  <node concept="10Nm6u" id="357z3MCdcI8" role="3uHU7w" />
                  <node concept="2OqwBi" id="357z3MCdcI9" role="3uHU7B">
                    <node concept="37vLTw" id="357z3MCdcIa" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCdcHY" resolve="event" />
                    </node>
                    <node concept="liA8E" id="357z3MCdcIb" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="357z3MCdcIc" role="3uHU7w">
                  <ref role="37wK5l" node="357z3MCdcIq" resolve="isRelevantNode" />
                  <node concept="2OqwBi" id="357z3MCdcId" role="37wK5m">
                    <node concept="37vLTw" id="357z3MCdcIe" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCdcHY" resolve="event" />
                    </node>
                    <node concept="liA8E" id="357z3MCdcIf" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="357z3MCdcIg" role="3uHU7B">
              <node concept="1Wc70l" id="357z3MCdcIh" role="1eOMHV">
                <node concept="2OqwBi" id="357z3MCdcIi" role="3uHU7B">
                  <node concept="37vLTw" id="357z3MCdcIj" role="2Oq$k0">
                    <ref role="3cqZAo" node="357z3MCdcHY" resolve="event" />
                  </node>
                  <node concept="liA8E" id="357z3MCdcIk" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.isRoot()" resolve="isRoot" />
                  </node>
                </node>
                <node concept="1rXfSq" id="357z3MCdcIl" role="3uHU7w">
                  <ref role="37wK5l" node="357z3MCdcIq" resolve="isRelevantNode" />
                  <node concept="2OqwBi" id="357z3MCdcIm" role="37wK5m">
                    <node concept="37vLTw" id="357z3MCdcIn" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCdcHY" resolve="event" />
                    </node>
                    <node concept="liA8E" id="357z3MCdcIo" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCdcIp" role="jymVt" />
    <node concept="3clFb_" id="357z3MCdcIq" role="jymVt">
      <property role="TrG5h" value="isRelevantNode" />
      <node concept="3clFbS" id="357z3MCdcIr" role="3clF47">
        <node concept="3cpWs8" id="357z3MCdcIs" role="3cqZAp">
          <node concept="3cpWsn" id="357z3MCdcIt" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="357z3MCdcIu" role="1tU5fm" />
            <node concept="2OqwBi" id="357z3MCdcIv" role="33vP2m">
              <node concept="liA8E" id="357z3MCdcIw" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
              <node concept="37vLTw" id="357z3MCdcIx" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCdcIU" resolve="n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="357z3MCdcIy" role="3cqZAp">
          <node concept="22lmx$" id="357z3MCdcIz" role="3cqZAk">
            <node concept="1Wc70l" id="357z3MCdcI$" role="3uHU7w">
              <node concept="2OqwBi" id="357z3MCdcI_" role="3uHU7B">
                <node concept="37vLTw" id="357z3MCdcIA" role="2Oq$k0">
                  <ref role="3cqZAo" node="45q4rZQbJP2" resolve="origin2relevantNodes" />
                </node>
                <node concept="2Nt0df" id="357z3MCdcIB" role="2OqNvi">
                  <node concept="2OqwBi" id="357z3MCdcIC" role="38cxEo">
                    <node concept="37vLTw" id="357z3MCdcID" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCdcIt" resolve="root" />
                    </node>
                    <node concept="iZEcu" id="357z3MCdcIE" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="357z3MCdcIF" role="3uHU7w">
                <node concept="3EllGN" id="357z3MCdcIG" role="2Oq$k0">
                  <node concept="2OqwBi" id="357z3MCdcIH" role="3ElVtu">
                    <node concept="37vLTw" id="357z3MCdcII" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCdcIt" resolve="root" />
                    </node>
                    <node concept="iZEcu" id="357z3MCdcIJ" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="357z3MCdcIK" role="3ElQJh">
                    <ref role="3cqZAo" node="45q4rZQbJP2" resolve="origin2relevantNodes" />
                  </node>
                </node>
                <node concept="3JPx81" id="357z3MCdcIL" role="2OqNvi">
                  <node concept="2OqwBi" id="357z3MCdcIM" role="25WWJ7">
                    <node concept="liA8E" id="357z3MCdcIN" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="37vLTw" id="357z3MCdcIO" role="2Oq$k0">
                      <ref role="3cqZAo" node="357z3MCdcIU" resolve="n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="357z3MCdcIP" role="3uHU7B">
              <node concept="37vLTw" id="357z3MCdcIQ" role="3uHU7B">
                <ref role="3cqZAo" node="357z3MCdcIt" resolve="root" />
              </node>
              <node concept="2OqwBi" id="357z3MCeDV9" role="3uHU7w">
                <node concept="Xjq3P" id="357z3MCeDvc" role="2Oq$k0" />
                <node concept="2OwXpG" id="357z3MCeEMK" role="2OqNvi">
                  <ref role="2Oxat5" node="357z3MCesvX" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="357z3MCdcIS" role="1B3o_S" />
      <node concept="10P_77" id="357z3MCdcIT" role="3clF45" />
      <node concept="37vLTG" id="357z3MCdcIU" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3uibUv" id="357z3MCdcIV" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Q4yQQKyTq3" role="jymVt" />
    <node concept="3clFb_" id="3Q4yQQKyW3r" role="jymVt">
      <property role="TrG5h" value="updateRelevantNodes" />
      <node concept="3clFbS" id="3Q4yQQKyW3u" role="3clF47">
        <node concept="3cpWs8" id="45q4rZQbt1T" role="3cqZAp">
          <node concept="3cpWsn" id="45q4rZQbt1W" role="3cpWs9">
            <property role="TrG5h" value="otherUnit" />
            <node concept="3Tqbb2" id="45q4rZQbt1R" role="1tU5fm" />
            <node concept="2OqwBi" id="45q4rZQbtx1" role="33vP2m">
              <node concept="37vLTw" id="3Q4yQQKz2fO" role="2Oq$k0">
                <ref role="3cqZAo" node="3Q4yQQKyWZe" resolve="n" />
              </node>
              <node concept="2Rxl7S" id="45q4rZQbtzD" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ljpBegVFdm" role="3cqZAp">
          <node concept="3clFbS" id="3ljpBegVFdo" role="3clFbx">
            <node concept="3cpWs6" id="3Q4yQQKz2xN" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="3Q4yQQKzEG4" role="3clFbw">
            <node concept="3clFbC" id="3Q4yQQKzFLR" role="3uHU7w">
              <node concept="10Nm6u" id="3Q4yQQKzFRG" role="3uHU7w" />
              <node concept="2OqwBi" id="3Q4yQQKzFw$" role="3uHU7B">
                <node concept="37vLTw" id="3Q4yQQKzFnp" role="2Oq$k0">
                  <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
                </node>
                <node concept="I4A8Y" id="3Q4yQQKzFAB" role="2OqNvi" />
              </node>
            </node>
            <node concept="22lmx$" id="3ljpBegVJ2B" role="3uHU7B">
              <node concept="3clFbC" id="3ljpBegVFZQ" role="3uHU7B">
                <node concept="37vLTw" id="3ljpBegVFBE" role="3uHU7B">
                  <ref role="3cqZAo" node="3Q4yQQKyWZe" resolve="n" />
                </node>
                <node concept="10Nm6u" id="3ljpBegVG7Z" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="3ljpBegVJh8" role="3uHU7w">
                <node concept="37vLTw" id="3ljpBegVJ6o" role="3uHU7B">
                  <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
                </node>
                <node concept="10Nm6u" id="3ljpBegVJoK" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3ljpBegVGab" role="3cqZAp" />
        <node concept="3clFbJ" id="45q4rZQbrRx" role="3cqZAp">
          <node concept="3y3z36" id="45q4rZQbssC" role="3clFbw">
            <node concept="2OqwBi" id="357z3MCpZ9Z" role="3uHU7w">
              <node concept="Xjq3P" id="357z3MCpYWr" role="2Oq$k0" />
              <node concept="2OwXpG" id="357z3MCpZnh" role="2OqNvi">
                <ref role="2Oxat5" node="357z3MCesvX" resolve="unit" />
              </node>
            </node>
            <node concept="37vLTw" id="45q4rZQbtAr" role="3uHU7B">
              <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
            </node>
          </node>
          <node concept="3clFbS" id="45q4rZQbrRz" role="3clFbx">
            <node concept="3clFbH" id="3x4yg2XfJXx" role="3cqZAp" />
            <node concept="3clFbJ" id="3x4yg2XftJK" role="3cqZAp">
              <node concept="3clFbS" id="3x4yg2XftJM" role="3clFbx">
                <node concept="3clFbF" id="3x4yg2XfBGy" role="3cqZAp">
                  <node concept="2OqwBi" id="3x4yg2XfCwN" role="3clFbG">
                    <node concept="37vLTw" id="3x4yg2XfBGw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3x4yg2Xf_WI" resolve="referredModels" />
                    </node>
                    <node concept="TSZUe" id="3x4yg2XfDeF" role="2OqNvi">
                      <node concept="2OqwBi" id="3x4yg2XfW4y" role="25WWJ7">
                        <node concept="liA8E" id="4mdCe2g$IUq" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                        </node>
                        <node concept="2JrnkZ" id="3x4yg2XfW4F" role="2Oq$k0">
                          <node concept="2OqwBi" id="3x4yg2XfLkb" role="2JrQYb">
                            <node concept="37vLTw" id="3x4yg2XfKPe" role="2Oq$k0">
                              <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
                            </node>
                            <node concept="I4A8Y" id="3x4yg2XfLuA" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3x4yg2XfuuB" role="3clFbw">
                <node concept="2OqwBi" id="3x4yg2XfvgD" role="3uHU7w">
                  <node concept="2OqwBi" id="3x4yg2XfuX9" role="2Oq$k0">
                    <node concept="Xjq3P" id="3x4yg2Xfu_N" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3x4yg2Xfv5r" role="2OqNvi">
                      <ref role="2Oxat5" node="357z3MCesvX" resolve="unit" />
                    </node>
                  </node>
                  <node concept="I4A8Y" id="3x4yg2Xfv_1" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="3x4yg2Xfujj" role="3uHU7B">
                  <node concept="37vLTw" id="3x4yg2Xfu8G" role="2Oq$k0">
                    <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
                  </node>
                  <node concept="I4A8Y" id="3x4yg2XfupP" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3x4yg2Xf$eh" role="3cqZAp" />
            <node concept="3clFbJ" id="45q4rZQbR6$" role="3cqZAp">
              <node concept="3clFbS" id="45q4rZQbR6A" role="3clFbx">
                <node concept="3clFbF" id="45q4rZQbWJI" role="3cqZAp">
                  <node concept="37vLTI" id="45q4rZQbYJY" role="3clFbG">
                    <node concept="2ShNRf" id="45q4rZQbZab" role="37vLTx">
                      <node concept="2i4dXS" id="45q4rZQbZoN" role="2ShVmc">
                        <node concept="3uibUv" id="45q4rZQbZBh" role="HW$YZ">
                          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                        </node>
                      </node>
                    </node>
                    <node concept="3EllGN" id="45q4rZQbXrA" role="37vLTJ">
                      <node concept="2OqwBi" id="45q4rZQbXYw" role="3ElVtu">
                        <node concept="37vLTw" id="45q4rZQbXOY" role="2Oq$k0">
                          <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
                        </node>
                        <node concept="iZEcu" id="45q4rZQbY2z" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="45q4rZQbWJG" role="3ElQJh">
                        <ref role="3cqZAo" node="45q4rZQbJP2" resolve="origin2relevantNodes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5eYRlKiKNuC" role="3clFbw">
                <node concept="2OqwBi" id="5eYRlKiKNuE" role="3fr31v">
                  <node concept="37vLTw" id="5eYRlKiKNuF" role="2Oq$k0">
                    <ref role="3cqZAo" node="45q4rZQbJP2" resolve="origin2relevantNodes" />
                  </node>
                  <node concept="2Nt0df" id="5eYRlKiKNuG" role="2OqNvi">
                    <node concept="2OqwBi" id="5eYRlKiKNuH" role="38cxEo">
                      <node concept="37vLTw" id="5eYRlKiKNuI" role="2Oq$k0">
                        <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
                      </node>
                      <node concept="iZEcu" id="5eYRlKiKNuJ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="45q4rZQbQFD" role="3cqZAp">
              <node concept="2OqwBi" id="45q4rZQc0Ln" role="3clFbG">
                <node concept="3EllGN" id="45q4rZQc03F" role="2Oq$k0">
                  <node concept="2OqwBi" id="45q4rZQc0$J" role="3ElVtu">
                    <node concept="37vLTw" id="45q4rZQc0rd" role="2Oq$k0">
                      <ref role="3cqZAo" node="45q4rZQbt1W" resolve="otherUnit" />
                    </node>
                    <node concept="iZEcu" id="45q4rZQc0BI" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="45q4rZQbQFC" role="3ElQJh">
                    <ref role="3cqZAo" node="45q4rZQbJP2" resolve="origin2relevantNodes" />
                  </node>
                </node>
                <node concept="TSZUe" id="45q4rZQc1Xd" role="2OqNvi">
                  <node concept="2OqwBi" id="45q4rZQc6bD" role="25WWJ7">
                    <node concept="liA8E" id="45q4rZQc6Us" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="2JrnkZ" id="45q4rZQc6bI" role="2Oq$k0">
                      <node concept="37vLTw" id="45q4rZQcqTz" role="2JrQYb">
                        <ref role="3cqZAo" node="3Q4yQQKyWZe" resolve="n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3Q4yQQKyU_R" role="1B3o_S" />
      <node concept="3cqZAl" id="3Q4yQQKyVVL" role="3clF45" />
      <node concept="37vLTG" id="3Q4yQQKyWZe" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="3Q4yQQKyWZd" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCevst" role="jymVt" />
    <node concept="312cEg" id="357z3MCesvX" role="jymVt">
      <property role="TrG5h" value="unit" />
      <node concept="3Tm6S6" id="357z3MCerCA" role="1B3o_S" />
      <node concept="3Tqbb2" id="357z3MCespZ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="45q4rZQbJP2" role="jymVt">
      <property role="TrG5h" value="origin2relevantNodes" />
      <node concept="3Tm6S6" id="45q4rZQby2S" role="1B3o_S" />
      <node concept="3rvAFt" id="45q4rZQbArp" role="1tU5fm">
        <node concept="2sp9CU" id="45q4rZQbAKu" role="3rvQeY" />
        <node concept="2hMVRd" id="45q4rZQbAKz" role="3rvSg0">
          <node concept="3uibUv" id="45q4rZQbAKD" role="2hN53Y">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="45q4rZQbOhT" role="33vP2m">
        <node concept="3rGOSV" id="45q4rZQbOKS" role="2ShVmc">
          <node concept="2sp9CU" id="45q4rZQbPwO" role="3rHrn6" />
          <node concept="2hMVRd" id="45q4rZQbPTq" role="3rHtpV">
            <node concept="3uibUv" id="45q4rZQbQiv" role="2hN53Y">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3x4yg2Xf_WI" role="jymVt">
      <property role="TrG5h" value="referredModels" />
      <node concept="3Tm6S6" id="3x4yg2Xfx5H" role="1B3o_S" />
      <node concept="2hMVRd" id="3x4yg2XfyoR" role="1tU5fm">
        <node concept="3uibUv" id="4mdCe2g$HQS" role="2hN53Y">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="2ShNRf" id="3x4yg2XfEc4" role="33vP2m">
        <node concept="2i4dXS" id="3x4yg2XfFHZ" role="2ShVmc">
          <node concept="3uibUv" id="4mdCe2g$Isy" role="HW$YZ">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="7NeFFOg2YmW" role="EKbjA">
      <ref role="3uigEE" node="357z3MCcE_y" resolve="RelevantNodesTracker" />
    </node>
    <node concept="3Tm1VV" id="7NeFFOg4fOl" role="1B3o_S" />
  </node>
</model>

