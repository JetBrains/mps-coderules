<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
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
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="bid0" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.util(jetbrains.mps.logic.reactor/)" />
    <import index="xydz" ref="r:b198cb67-efdc-40c0-8817-11ab64523a5b(jetbrains.mps.lang.coderules.result)" />
    <import index="pxw9" ref="r:e3417884-ba0a-4330-9cea-64f01ace2e9d(jetbrains.mps.lang.coderules.aspect)" />
    <import index="ugy2" ref="r:57b2449f-b7c7-4941-bd75-9c594835f5cd(jetbrains.mps.lang.coderules.template)" />
    <import index="tpfl" ref="r:97d6f79f-4a27-4a9b-9122-9bccfb5317c9(jetbrains.mps.lang.coderules.predicate)" />
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
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
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
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
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
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
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
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
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
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
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
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="6801639034384703212" name="jetbrains.mps.baseLanguage.collections.structure.StackType" flags="in" index="oyxx6" />
      <concept id="5784983078884872741" name="jetbrains.mps.baseLanguage.collections.structure.PeekOperation" flags="nn" index="2oR75g" />
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
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1173946412755" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAllElementsOperation" flags="nn" index="1kEaZ2" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
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
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
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
      <concept id="599357942184015200" name="jetbrains.mps.baseLanguage.collections.structure.AlsoSortOperation" flags="nn" index="1XvEQZ" />
    </language>
  </registry>
  <node concept="312cEu" id="7eGEHDlcEJ0">
    <property role="TrG5h" value="ProgramEx" />
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
      <node concept="37vLTG" id="1XKnVPvvpc" role="3clF46">
        <property role="TrG5h" value="plan" />
        <node concept="3uibUv" id="1XKnVPvvOu" role="1tU5fm">
          <ref role="3uigEE" node="1XKnVPsWNc" resolve="RulesPlan" />
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
        <node concept="3clFbF" id="5NUR$OB3jH" role="3cqZAp">
          <node concept="37vLTI" id="5NUR$OB4Ne" role="3clFbG">
            <node concept="2OqwBi" id="5NUR$OB3$J" role="37vLTJ">
              <node concept="Xjq3P" id="5NUR$OB3jF" role="2Oq$k0" />
              <node concept="2OwXpG" id="5NUR$OB3Hq" role="2OqNvi">
                <ref role="2Oxat5" node="5NUR$OAZDF" resolve="rulesPlan" />
              </node>
            </node>
            <node concept="37vLTw" id="1XKnVPvzcp" role="37vLTx">
              <ref role="3cqZAo" node="1XKnVPvvpc" resolve="plan" />
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
    <node concept="3clFb_" id="55xYlrmEqJq" role="jymVt">
      <property role="TrG5h" value="rulesPlan" />
      <node concept="3uibUv" id="55xYlrmErv5" role="3clF45">
        <ref role="3uigEE" node="1XKnVPsWNc" resolve="RulesPlan" />
      </node>
      <node concept="3Tm1VV" id="55xYlrmEqJt" role="1B3o_S" />
      <node concept="3clFbS" id="55xYlrmEqJu" role="3clF47">
        <node concept="3clFbF" id="55xYlrmEswh" role="3cqZAp">
          <node concept="37vLTw" id="55xYlrmEswg" role="3clFbG">
            <ref role="3cqZAo" node="5NUR$OAZDF" resolve="rulesPlan" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="55xYlrmEqra" role="jymVt" />
    <node concept="3clFb_" id="5NUR$OAQkx" role="jymVt">
      <property role="TrG5h" value="rules" />
      <node concept="3Tm1VV" id="5NUR$OAQky" role="1B3o_S" />
      <node concept="3uibUv" id="5NUR$OAQk$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5NUR$OAQk_" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3clFbS" id="5NUR$OAQkA" role="3clF47">
        <node concept="3clFbF" id="5NUR$OBc9g" role="3cqZAp">
          <node concept="2OqwBi" id="5NUR$OBcVE" role="3clFbG">
            <node concept="37vLTw" id="5NUR$OBc9f" role="2Oq$k0">
              <ref role="3cqZAo" node="5NUR$OAZDF" resolve="rulesPlan" />
            </node>
            <node concept="liA8E" id="1XKnVPvzsK" role="2OqNvi">
              <ref role="37wK5l" node="1XKnVPsWOb" resolve="allRules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5NUR$OAQkB" role="2AJF6D">
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
    <node concept="2tJIrI" id="1XKnVPy5KY" role="jymVt" />
    <node concept="312cEg" id="7Oc59RSE6Qy" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="7Oc59RSE6Qz" role="1B3o_S" />
      <node concept="17QB3L" id="7Oc59RSE6Q_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5NUR$OAZDF" role="jymVt">
      <property role="TrG5h" value="rulesPlan" />
      <node concept="3Tm6S6" id="5NUR$OAZDG" role="1B3o_S" />
      <node concept="3uibUv" id="1XKnVPvxBr" role="1tU5fm">
        <ref role="3uigEE" node="1XKnVPsWNc" resolve="RulesPlan" />
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
    <property role="TrG5h" value="RulesPlanHandler" />
    <node concept="2tJIrI" id="1LBj9w_9Df1" role="jymVt" />
    <node concept="3clFbW" id="1LBj9w_EhDG" role="jymVt">
      <node concept="3cqZAl" id="1LBj9w_EhDI" role="3clF45" />
      <node concept="3Tm1VV" id="1LBj9w_EhDJ" role="1B3o_S" />
      <node concept="3clFbS" id="1LBj9w_EhDK" role="3clF47" />
      <node concept="P$JXv" id="1LBj9w_EpeU" role="lGtFl">
        <node concept="TZ5HA" id="1LBj9w_EpeV" role="TZ5H$">
          <node concept="1dT_AC" id="1LBj9w_EpeW" role="1dT_Ay">
            <property role="1dT_AB" value="Only for tests." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Uagp" role="jymVt" />
    <node concept="3clFb_" id="1Pi9pJ$agGv" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="5EDW3XFuukb" role="3clF46">
        <property role="TrG5h" value="manifests" />
        <node concept="A3Dl8" id="5EDW3XFuukc" role="1tU5fm">
          <node concept="3uibUv" id="5EDW3XFuukd" role="A3Ik2">
            <ref role="3uigEE" to="pxw9:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Pi9pJ$cIw8" role="3clF46">
        <property role="TrG5h" value="aspectClique" />
        <node concept="3uibUv" id="1Pi9pJ$cIw9" role="1tU5fm">
          <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="3qUE_q" id="1Pi9pJ$cIwa" role="11_B2D">
            <node concept="3uibUv" id="1Pi9pJ$cIwb" role="3qUE_r">
              <ref role="3uigEE" to="pxw9:NKt6yomNZE" resolve="CoderulesAspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1Pi9pJ$agGx" role="3clF45" />
      <node concept="3Tm1VV" id="1Pi9pJ$agGy" role="1B3o_S" />
      <node concept="3clFbS" id="1Pi9pJ$agGz" role="3clF47">
        <node concept="3cpWs8" id="zL5ZaNMxME" role="3cqZAp">
          <node concept="3cpWsn" id="zL5ZaNMxMF" role="3cpWs9">
            <property role="TrG5h" value="ruleTables" />
            <node concept="A3Dl8" id="zL5ZaNMxza" role="1tU5fm">
              <node concept="3uibUv" id="zL5ZaNMxzd" role="A3Ik2">
                <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
              </node>
            </node>
            <node concept="2OqwBi" id="zL5ZaNMxMG" role="33vP2m">
              <node concept="37vLTw" id="zL5ZaNMxMH" role="2Oq$k0">
                <ref role="3cqZAo" node="5EDW3XFuukb" resolve="manifests" />
              </node>
              <node concept="3goQfb" id="zL5ZaNMxMI" role="2OqNvi">
                <node concept="1bVj0M" id="zL5ZaNMxMJ" role="23t8la">
                  <node concept="3clFbS" id="zL5ZaNMxMK" role="1bW5cS">
                    <node concept="3clFbF" id="zL5ZaNMxML" role="3cqZAp">
                      <node concept="2OqwBi" id="zL5ZaNMxMM" role="3clFbG">
                        <node concept="2OqwBi" id="zL5ZaNMxMN" role="2Oq$k0">
                          <node concept="37vLTw" id="zL5ZaNMxMO" role="2Oq$k0">
                            <ref role="3cqZAo" node="6E5fMGvfKQe" resolve="it" />
                          </node>
                          <node concept="liA8E" id="zL5ZaNMxMP" role="2OqNvi">
                            <ref role="37wK5l" to="pxw9:4MqhgXUaiLz" resolve="ruleTables" />
                          </node>
                        </node>
                        <node concept="ANE8D" id="zL5ZaNMxMQ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="6E5fMGvfKQe" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6E5fMGvfKQf" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="IfzMHGgUOf" role="3cqZAp">
          <node concept="1PaTwC" id="IfzMHGgUOg" role="1aUNEU">
            <node concept="3oM_SD" id="IfzMHGgUR8" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgURa" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgURm" role="1PaTwD">
              <property role="3oM_SC" value="map[ruleTable" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgURq" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgURv" role="1PaTwD">
              <property role="3oM_SC" value="builder]" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgUR_" role="1PaTwD">
              <property role="3oM_SC" value="according" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgURG" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgURO" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgURX" role="1PaTwD">
              <property role="3oM_SC" value="topological" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgUS7" role="1PaTwD">
              <property role="3oM_SC" value="sort" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgUSi" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1Pi9pJ$dFhE" role="3cqZAp">
          <node concept="3clFbS" id="1Pi9pJ$dFhH" role="2LFqv$">
            <node concept="3cpWs8" id="1Pi9pJ$bExD" role="3cqZAp">
              <node concept="3cpWsn" id="1Pi9pJ$bExE" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="1Pi9pJ$bExF" role="1tU5fm">
                  <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
                </node>
                <node concept="2ShNRf" id="1Pi9pJ$cdk4" role="33vP2m">
                  <node concept="1pGfFk" id="1Pi9pJ$cdk5" role="2ShVmc">
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesPlanHandler.PlanBuilder" />
                    <node concept="2OqwBi" id="1Pi9pJ$cdk6" role="37wK5m">
                      <node concept="37vLTw" id="1Pi9pJ$e7pr" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Pi9pJ$dFhI" resolve="ruleTable" />
                      </node>
                      <node concept="liA8E" id="1Pi9pJ$cdk8" role="2OqNvi">
                        <ref role="37wK5l" to="ugy2:4MqhgXUaiON" resolve="ruleTemplates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="15s5l7" id="1Pi9pJ$cwbo" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
                <property role="huDt6" value="all typesystem messages" />
              </node>
            </node>
            <node concept="3clFbF" id="1Pi9pJ$bExU" role="3cqZAp">
              <node concept="37vLTI" id="1Pi9pJ$bExV" role="3clFbG">
                <node concept="37vLTw" id="1Pi9pJ$bExW" role="37vLTx">
                  <ref role="3cqZAo" node="1Pi9pJ$bExE" resolve="builder" />
                </node>
                <node concept="3EllGN" id="1Pi9pJ$bExX" role="37vLTJ">
                  <node concept="37vLTw" id="1Pi9pJ$e7r6" role="3ElVtu">
                    <ref role="3cqZAo" node="1Pi9pJ$dFhI" resolve="ruleTable" />
                  </node>
                  <node concept="37vLTw" id="1Pi9pJ$bExZ" role="3ElQJh">
                    <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="rulePlanBuilders" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1Pi9pJ$dFhI" role="1Duv9x">
            <property role="TrG5h" value="ruleTable" />
            <node concept="3uibUv" id="1Pi9pJ$dFhM" role="1tU5fm">
              <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
            </node>
          </node>
          <node concept="2YIFZM" id="IfzMHGfQZT" role="1DdaDG">
            <ref role="37wK5l" node="IfzMHGfK0$" resolve="topoSort" />
            <ref role="1Pybhc" node="IfzMHGfDvc" resolve="RuleTableUtil" />
            <node concept="37vLTw" id="1Pi9pJ$dFhO" role="37wK5m">
              <ref role="3cqZAo" node="zL5ZaNMxMF" resolve="ruleTables" />
            </node>
            <node concept="37vLTw" id="1Pi9pJ$dFhP" role="37wK5m">
              <ref role="3cqZAo" node="1Pi9pJ$cIw8" resolve="aspectClique" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Pi9pJ$3DNW" role="jymVt" />
    <node concept="2tJIrI" id="1Pi9pJ$3Eee" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9Uagq" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="37vLTG" id="7DvO2M9Uagr" role="3clF46">
        <property role="TrG5h" value="ruleTemplate" />
        <node concept="3uibUv" id="7DvO2M9Uags" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="3OUB6BCcGW4" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3OUB6BCiXp$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2hQbw6HCsn9" role="3clF46">
        <property role="TrG5h" value="staticRules" />
        <node concept="10P_77" id="2hQbw6HCBcP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7DvO2M9Uagt" role="3clF46">
        <property role="TrG5h" value="ruleBuilders" />
        <node concept="1ajhzC" id="47oVduOzTYR" role="1tU5fm">
          <node concept="1LlUBW" id="47oVduOFbBr" role="1ajl9A">
            <node concept="3vKaQO" id="47oVduOF92p" role="1Lm7xW">
              <node concept="3uibUv" id="47oVduOF92r" role="3O5elw">
                <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
              </node>
            </node>
            <node concept="3vKaQO" id="47oVduOFeYx" role="1Lm7xW">
              <node concept="3Tqbb2" id="47oVduOFfNK" role="3O5elw" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7DvO2M9Uagx" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Uagy" role="3clF47">
        <node concept="3clFbF" id="7DvO2M9UagD" role="3cqZAp">
          <node concept="2OqwBi" id="7DvO2M9UagE" role="3clFbG">
            <node concept="1rXfSq" id="7DvO2M9UagF" role="2Oq$k0">
              <ref role="37wK5l" node="1XKnVP4HJx" resolve="planBuilder" />
              <node concept="2OqwBi" id="7DvO2M9UagG" role="37wK5m">
                <node concept="37vLTw" id="7DvO2M9UagH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvO2M9Uagr" resolve="ruleTemplate" />
                </node>
                <node concept="liA8E" id="7DvO2M9UagI" role="2OqNvi">
                  <ref role="37wK5l" to="ugy2:4MqhgXUndvp" resolve="table" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7DvO2M9UagJ" role="2OqNvi">
              <ref role="37wK5l" node="5NUR$OCWAA" resolve="updateRules" />
              <node concept="37vLTw" id="7DvO2M9UagK" role="37wK5m">
                <ref role="3cqZAo" node="7DvO2M9Uagr" resolve="ruleTemplate" />
              </node>
              <node concept="37vLTw" id="3OUB6BCcNeG" role="37wK5m">
                <ref role="3cqZAo" node="3OUB6BCcGW4" resolve="node" />
              </node>
              <node concept="37vLTw" id="2D0V9mfxCNb" role="37wK5m">
                <ref role="3cqZAo" node="2hQbw6HCsn9" resolve="staticRules" />
              </node>
              <node concept="37vLTw" id="5NUR$ODdHB" role="37wK5m">
                <ref role="3cqZAo" node="7DvO2M9Uagt" resolve="ruleBuilders" />
              </node>
            </node>
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
      <node concept="1LlUBW" id="47oVduOFgBg" role="3clF45">
        <node concept="3vKaQO" id="47oVduOFgBh" role="1Lm7xW">
          <node concept="3uibUv" id="47oVduOKUmz" role="3O5elw">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3vKaQO" id="47oVduOFgBj" role="1Lm7xW">
          <node concept="3Tqbb2" id="47oVduOFgBk" role="3O5elw" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9UagT" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDy0Er4" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3cqZAl" id="6OXbTDy0Er6" role="3clF45" />
      <node concept="3Tm1VV" id="6OXbTDy0Er7" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy0Er8" role="3clF47">
        <node concept="3clFbF" id="6OXbTDy1aOX" role="3cqZAp">
          <node concept="2OqwBi" id="6OXbTDy1bak" role="3clFbG">
            <node concept="1rXfSq" id="6OXbTDy1aOW" role="2Oq$k0">
              <ref role="37wK5l" node="6OXbTDy166r" resolve="queryPlanBuilder" />
              <node concept="37vLTw" id="6OXbTDy1aSW" role="37wK5m">
                <ref role="3cqZAo" node="6OXbTDy0I1M" resolve="queryTemplate" />
              </node>
            </node>
            <node concept="liA8E" id="6OXbTDy1cVH" role="2OqNvi">
              <ref role="37wK5l" node="4MqhgXUMbtk" resolve="updateRulesQuery" />
              <node concept="37vLTw" id="6OXbTDzw0p5" role="37wK5m">
                <ref role="3cqZAo" node="6OXbTDy0I1M" resolve="queryTemplate" />
              </node>
              <node concept="37vLTw" id="5NUR$PxNJX" role="37wK5m">
                <ref role="3cqZAo" node="6OXbTDy0Z6U" resolve="ruleBuilders" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDy0I1M" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="6OXbTD$xzi7" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:6OXbTD$iNPP" resolve="QueryTemplate" />
          <node concept="3qTvmN" id="6OXbTD$xEq3" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDy0Z6U" role="3clF46">
        <property role="TrG5h" value="ruleBuilders" />
        <node concept="A3Dl8" id="6OXbTDy0Z6V" role="1tU5fm">
          <node concept="3uibUv" id="6OXbTDy0Z6W" role="A3Ik2">
            <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
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
          <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="4J__M64SiG" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4J__M6525A" role="1tU5fm" />
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
              <ref role="37wK5l" node="1XKnVP4HJx" resolve="planBuilder" />
              <node concept="2OqwBi" id="cmlg9Ov5u7" role="37wK5m">
                <node concept="37vLTw" id="cmlg9Ov5u8" role="2Oq$k0">
                  <ref role="3cqZAo" node="cmlg9Ov1RK" resolve="ruleTemplate" />
                </node>
                <node concept="liA8E" id="cmlg9Ov5u9" role="2OqNvi">
                  <ref role="37wK5l" to="ugy2:4MqhgXUndvp" resolve="table" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="cmlg9Ow9wm" role="2OqNvi">
              <ref role="37wK5l" node="cmlg9OvtXS" resolve="invalidateAllWithTags" />
              <node concept="37vLTw" id="cmlg9Owatt" role="37wK5m">
                <ref role="3cqZAo" node="cmlg9Ov1RK" resolve="ruleTemplate" />
              </node>
              <node concept="37vLTw" id="4J__M65hyK" role="37wK5m">
                <ref role="3cqZAo" node="4J__M64SiG" resolve="node" />
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
    <node concept="3clFb_" id="4J__M63pdY" role="jymVt">
      <property role="TrG5h" value="markAllValidated" />
      <node concept="3cqZAl" id="4J__M63pe0" role="3clF45" />
      <node concept="3Tm1VV" id="4J__M63pe1" role="1B3o_S" />
      <node concept="3clFbS" id="4J__M63pe2" role="3clF47">
        <node concept="1DcWWT" id="4J__M6hnKc" role="3cqZAp">
          <node concept="3clFbS" id="4J__M6hnKf" role="2LFqv$">
            <node concept="3clFbF" id="17DrR$RFL$i" role="3cqZAp">
              <node concept="2OqwBi" id="17DrR$RFLGo" role="3clFbG">
                <node concept="37vLTw" id="17DrR$RFL$g" role="2Oq$k0">
                  <ref role="3cqZAo" node="4J__M6hnKg" resolve="planBuilder" />
                </node>
                <node concept="liA8E" id="17DrR$RFLPz" role="2OqNvi">
                  <ref role="37wK5l" node="17DrR$REwQy" resolve="markAllValidated" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4J__M6hnKg" role="1Duv9x">
            <property role="TrG5h" value="planBuilder" />
            <node concept="3uibUv" id="4J__M6hnKk" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
            </node>
          </node>
          <node concept="2OqwBi" id="4J__M6hnKl" role="1DdaDG">
            <node concept="37vLTw" id="4J__M6hnKm" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="rulePlanBuilders" />
            </node>
            <node concept="T8wYR" id="4J__M6hnKn" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="4J__M6lwIh" role="lGtFl">
        <node concept="TZ5HA" id="4J__M6lwIi" role="TZ5H$">
          <node concept="1dT_AC" id="4J__M6lwIj" role="1dT_Ay">
            <property role="1dT_AB" value="Marks all known rules are validated. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4J__M64qqM" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9UagU" role="jymVt">
      <property role="TrG5h" value="buildPlan" />
      <node concept="37vLTG" id="1XKnVPtnWG" role="3clF46">
        <property role="TrG5h" value="plan" />
        <node concept="3uibUv" id="1XKnVPtuDF" role="1tU5fm">
          <ref role="3uigEE" node="1XKnVPsWNc" resolve="RulesPlan" />
        </node>
      </node>
      <node concept="37vLTG" id="zL5ZaO39JA" role="3clF46">
        <property role="TrG5h" value="aspectClique" />
        <node concept="3uibUv" id="zL5ZaO3n$t" role="1tU5fm">
          <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="3qUE_q" id="zL5ZaO3q51" role="11_B2D">
            <node concept="3uibUv" id="zL5ZaO3r3A" role="3qUE_r">
              <ref role="3uigEE" to="pxw9:NKt6yomNZE" resolve="CoderulesAspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1XKnVPvPdt" role="3clF45">
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7DvO2M9UagX" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9UagY" role="3clF47">
        <node concept="3cpWs8" id="1XKnVPw3ai" role="3cqZAp">
          <node concept="3cpWsn" id="1XKnVPw3aj" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="1XKnVPw3ak" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="1XKnVPw3z6" role="33vP2m">
              <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="IfzMHGgUUS" role="3cqZAp">
          <node concept="1PaTwC" id="IfzMHGgUUT" role="1aUNEU">
            <node concept="3oM_SD" id="IfzMHGgV1H" role="1PaTwD">
              <property role="3oM_SC" value="every" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgV1J" role="1PaTwD">
              <property role="3oM_SC" value="rule" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgV1M" role="1PaTwD">
              <property role="3oM_SC" value="table" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgV1Q" role="1PaTwD">
              <property role="3oM_SC" value="corresponds" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgV1V" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgV21" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgV2v" role="1PaTwD">
              <property role="3oM_SC" value="plan" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgV3f" role="1PaTwD">
              <property role="3oM_SC" value="builder" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="IfzMHGgVcI" role="3cqZAp">
          <node concept="1PaTwC" id="IfzMHGgVcJ" role="1aUNEU">
            <node concept="3oM_SD" id="IfzMHGgVea" role="1PaTwD">
              <property role="3oM_SC" value="plan" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVjJ" role="1PaTwD">
              <property role="3oM_SC" value="builders" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVk2" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVkm" role="1PaTwD">
              <property role="3oM_SC" value="evaluated" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVkF" role="1PaTwD">
              <property role="3oM_SC" value="according" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVl1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVl8" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVlg" role="1PaTwD">
              <property role="3oM_SC" value="topological" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVlD" role="1PaTwD">
              <property role="3oM_SC" value="sort" />
            </node>
            <node concept="3oM_SD" id="IfzMHGgVm3" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1Pi9pJ$fObs" role="3cqZAp">
          <node concept="3clFbS" id="2$$Q_FeVbzX" role="2LFqv$">
            <node concept="3clFbF" id="1XKnVPw4gQ" role="3cqZAp">
              <node concept="37vLTI" id="1XKnVPw4vZ" role="3clFbG">
                <node concept="2OqwBi" id="1XKnVPw4zN" role="37vLTx">
                  <node concept="37vLTw" id="1XKnVPw4xR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
                  </node>
                  <node concept="liA8E" id="1XKnVPw4F9" role="2OqNvi">
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="1XKnVPtx5I" role="37wK5m">
                      <node concept="liA8E" id="1XKnVPtx5J" role="2OqNvi">
                        <ref role="37wK5l" node="4MqhgXUNDLG" resolve="buildPlan" />
                        <node concept="37vLTw" id="1Pi9pJ$gg83" role="37wK5m">
                          <ref role="3cqZAo" node="1XKnVPtnWG" resolve="plan" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1Pi9pJ$fyBK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Pi9pJ$fObQ" resolve="planBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1XKnVPw4gO" role="37vLTJ">
                  <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1Pi9pJ$f4KX" role="1DdaDG">
            <node concept="37vLTw" id="1Pi9pJ$eZhP" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="rulePlanBuilders" />
            </node>
            <node concept="T8wYR" id="1Pi9pJ$fdiZ" role="2OqNvi" />
          </node>
          <node concept="3cpWsn" id="1Pi9pJ$fObQ" role="1Duv9x">
            <property role="TrG5h" value="planBuilder" />
            <node concept="3uibUv" id="1Pi9pJ$fObr" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
            </node>
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
            <node concept="3clFbF" id="1XKnVPw67H" role="3cqZAp">
              <node concept="37vLTI" id="1XKnVPw6em" role="3clFbG">
                <node concept="2OqwBi" id="1XKnVPw6oq" role="37vLTx">
                  <node concept="37vLTw" id="1XKnVPw6ge" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
                  </node>
                  <node concept="liA8E" id="1XKnVPw6u4" role="2OqNvi">
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="1XKnVPt$bI" role="37wK5m">
                      <node concept="37vLTw" id="1XKnVPt$bJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6OXbTDzHkqu" resolve="planBuilder" />
                      </node>
                      <node concept="liA8E" id="1XKnVPt$bK" role="2OqNvi">
                        <ref role="37wK5l" node="4MqhgXUNDLG" resolve="buildPlan" />
                        <node concept="37vLTw" id="1XKnVPt$bL" role="37wK5m">
                          <ref role="3cqZAo" node="1XKnVPtnWG" resolve="plan" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1XKnVPw67F" role="37vLTJ">
                  <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6OXbTDzHkqu" role="1Duv9x">
            <property role="TrG5h" value="planBuilder" />
            <node concept="3uibUv" id="6OXbTDzHkqv" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
            </node>
          </node>
          <node concept="2OqwBi" id="6OXbTDzHkqw" role="1DdaDG">
            <node concept="37vLTw" id="6OXbTDzHkPF" role="2Oq$k0">
              <ref role="3cqZAo" node="6OXbTDy15hb" resolve="queryPlanBuilders" />
            </node>
            <node concept="T8wYR" id="6OXbTDzHkqy" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1XKnVPbt9i" role="3cqZAp" />
        <node concept="3SKdUt" id="1XKnVPbu8e" role="3cqZAp">
          <node concept="1PaTwC" id="1XKnVPbwy5" role="1aUNEU">
            <node concept="3oM_SD" id="1XKnVPbwy6" role="1PaTwD">
              <property role="3oM_SC" value="finishing" />
            </node>
            <node concept="3oM_SD" id="1XKnVPbxTM" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="1XKnVPbxTv" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1XKnVPbu7Y" role="3cqZAp">
          <node concept="3clFbS" id="1XKnVPbu7Z" role="2LFqv$">
            <node concept="3clFbF" id="1XKnVPw7M3" role="3cqZAp">
              <node concept="37vLTI" id="1XKnVPw7SK" role="3clFbG">
                <node concept="2OqwBi" id="1XKnVPw7Y6" role="37vLTx">
                  <node concept="37vLTw" id="1XKnVPw7UC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
                  </node>
                  <node concept="liA8E" id="1XKnVPw83K" role="2OqNvi">
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                    <node concept="2OqwBi" id="1XKnVPbu84" role="37wK5m">
                      <node concept="37vLTw" id="1XKnVPbu85" role="2Oq$k0">
                        <ref role="3cqZAo" node="1XKnVPbu89" resolve="planBuilder" />
                      </node>
                      <node concept="liA8E" id="1XKnVPbu86" role="2OqNvi">
                        <ref role="37wK5l" node="4MqhgXUNDLG" resolve="buildPlan" />
                        <node concept="37vLTw" id="1XKnVPt_LV" role="37wK5m">
                          <ref role="3cqZAo" node="1XKnVPtnWG" resolve="plan" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1XKnVPw7M1" role="37vLTJ">
                  <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1XKnVPbu89" role="1Duv9x">
            <property role="TrG5h" value="planBuilder" />
            <node concept="3uibUv" id="1XKnVPbu8a" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
            </node>
          </node>
          <node concept="2OqwBi" id="1XKnVPbu8b" role="1DdaDG">
            <node concept="37vLTw" id="1XKnVPbxaV" role="2Oq$k0">
              <ref role="3cqZAo" node="1XKnVP8Viq" resolve="auxPlanBuilders" />
            </node>
            <node concept="T8wYR" id="1XKnVPbu8d" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="2hQbw6HTU8u" role="3cqZAp">
          <node concept="37vLTI" id="2hQbw6HTXa6" role="3clFbG">
            <node concept="37vLTw" id="2hQbw6HTXhg" role="37vLTx">
              <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
            </node>
            <node concept="2OqwBi" id="2hQbw6HTUzo" role="37vLTJ">
              <node concept="Xjq3P" id="2hQbw6HTU8s" role="2Oq$k0" />
              <node concept="2OwXpG" id="2hQbw6HTUKA" role="2OqNvi">
                <ref role="2Oxat5" node="2hQbw6HSS4K" resolve="lastResult" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XKnVPw9aq" role="3cqZAp">
          <node concept="37vLTw" id="1XKnVPw9ao" role="3clFbG">
            <ref role="3cqZAo" node="1XKnVPw3aj" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2$$Q_FeU7wo" role="lGtFl">
        <node concept="TZ5HA" id="2$$Q_FeU7wp" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeU7wq" role="1dT_Ay">
            <property role="1dT_AB" value="Builds plan and removes invalidated rules. " />
          </node>
        </node>
        <node concept="TZ5HA" id="1XKnVP30dj" role="TZ5H$">
          <node concept="1dT_AC" id="1XKnVP30dk" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="1XKnVP2ZAq" role="TZ5H$">
          <node concept="1dT_AC" id="1XKnVP2ZAr" role="1dT_Ay">
            <property role="1dT_AB" value="The order of rules returned here must correspond to the partial order of rule lists " />
          </node>
        </node>
        <node concept="TZ5HA" id="5NUR$P2JsU" role="TZ5H$">
          <node concept="1dT_AC" id="5NUR$P2JsV" role="1dT_Ay">
            <property role="1dT_AB" value="defined by the &quot;extends&quot; relation. " />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeU7w$" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeU7w_" role="1dT_Ay">
            <property role="1dT_AB" value="Within a list the rules must be in the same order as the rule templates. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5NUR$P2JEX" role="TZ5H$">
          <node concept="1dT_AC" id="5NUR$P2JEY" role="1dT_Ay">
            <property role="1dT_AB" value="Additionally the rules that are the result of appllying templates to different nodes are sorted" />
          </node>
        </node>
        <node concept="TZ5HA" id="5NUR$P2JQ1" role="TZ5H$">
          <node concept="1dT_AC" id="5NUR$P2JQ2" role="1dT_Ay">
            <property role="1dT_AB" value="internally according to the key derived from the node's identity." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2hQbw6HT6Vp" role="jymVt" />
    <node concept="3clFb_" id="2hQbw6HTiY$" role="jymVt">
      <property role="TrG5h" value="lastResult" />
      <node concept="3uibUv" id="2hQbw6HTsYY" role="3clF45">
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="2hQbw6HTiYB" role="1B3o_S" />
      <node concept="3clFbS" id="2hQbw6HTiYC" role="3clF47">
        <node concept="3clFbF" id="2hQbw6HTSXa" role="3cqZAp">
          <node concept="37vLTw" id="2hQbw6HTSX9" role="3clFbG">
            <ref role="3cqZAo" node="2hQbw6HSS4K" resolve="lastResult" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Uaho" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9Uahp" role="jymVt">
      <property role="TrG5h" value="updateAuxRules" />
      <node concept="37vLTG" id="7DvO2M9Uahq" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="5F2qBBEuFVp" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="1XKnVP6hBI" role="3clF46">
        <property role="TrG5h" value="ruleBuilders" />
        <node concept="3vKaQO" id="47oVduOM7$h" role="1tU5fm">
          <node concept="3uibUv" id="47oVduOM7$j" role="3O5elw">
            <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1XKnVPl3dw" role="3clF45" />
      <node concept="3Tm1VV" id="1XKnVP5jlU" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Uahu" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9Uahv" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9Uahw" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="7DvO2M9Uahx" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
            </node>
            <node concept="3EllGN" id="7DvO2M9Uahy" role="33vP2m">
              <node concept="37vLTw" id="7DvO2M9Uahz" role="3ElVtu">
                <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="key" />
              </node>
              <node concept="37vLTw" id="1XKnVP9fEY" role="3ElQJh">
                <ref role="3cqZAo" node="1XKnVP8Viq" resolve="auxPlanBuilders" />
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
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesPlanHandler.PlanBuilder" />
                    <node concept="2ShNRf" id="1XKnVPkTK4" role="37wK5m">
                      <node concept="2HTt$P" id="1XKnVPkTK5" role="2ShVmc">
                        <node concept="3uibUv" id="1XKnVPkTK6" role="2HTBi0">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="1XKnVPkTK7" role="2HTEbv">
                          <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="key" />
                        </node>
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
                    <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="1XKnVP9ier" role="3ElQJh">
                    <ref role="3cqZAo" node="1XKnVP8Viq" resolve="auxPlanBuilders" />
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
          <node concept="2OqwBi" id="1XKnVPkZAr" role="3clFbG">
            <node concept="37vLTw" id="7DvO2M9Uaie" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvO2M9Uahw" resolve="builder" />
            </node>
            <node concept="liA8E" id="1XKnVPkZIV" role="2OqNvi">
              <ref role="37wK5l" node="5NUR$OCWAA" resolve="updateRules" />
              <node concept="37vLTw" id="1XKnVPl0y_" role="37wK5m">
                <ref role="3cqZAo" node="7DvO2M9Uahq" resolve="key" />
              </node>
              <node concept="10Nm6u" id="1XKnVPl1dn" role="37wK5m" />
              <node concept="3clFbT" id="2hQbw6HJPW5" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="1bVj0M" id="47oVduOCnI8" role="37wK5m">
                <node concept="3clFbS" id="47oVduOCnIa" role="1bW5cS">
                  <node concept="3clFbF" id="47oVduOCoo8" role="3cqZAp">
                    <node concept="1Ls8ON" id="47oVduOLv5Z" role="3clFbG">
                      <node concept="37vLTw" id="47oVduOLzrV" role="1Lso8e">
                        <ref role="3cqZAo" node="1XKnVP6hBI" resolve="ruleBuilders" />
                      </node>
                      <node concept="1eOMI4" id="47oVduONKHT" role="1Lso8e">
                        <node concept="10QFUN" id="47oVduONKHS" role="1eOMHV">
                          <node concept="10Nm6u" id="47oVduONKHR" role="10QFUP" />
                          <node concept="3vKaQO" id="47oVduONKSe" role="10QFUM">
                            <node concept="3Tqbb2" id="47oVduONL1c" role="3O5elw" />
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
      <node concept="3uibUv" id="1XKnVPle_6" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="1XKnVP4Qrj" role="jymVt" />
    <node concept="3clFb_" id="1XKnVP4HJx" role="jymVt">
      <property role="TrG5h" value="planBuilder" />
      <node concept="37vLTG" id="1XKnVP4HJy" role="3clF46">
        <property role="TrG5h" value="ruleTable" />
        <node concept="3uibUv" id="1XKnVP4HJz" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="3uibUv" id="1XKnVP4HJ$" role="3clF45">
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
      </node>
      <node concept="3Tm6S6" id="1XKnVP4HJ_" role="1B3o_S" />
      <node concept="3clFbS" id="1XKnVP4HJA" role="3clF47">
        <node concept="3cpWs8" id="1XKnVP4HJB" role="3cqZAp">
          <node concept="3cpWsn" id="1XKnVP4HJC" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="1XKnVP4HJD" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
            </node>
            <node concept="3EllGN" id="1XKnVP4HJE" role="33vP2m">
              <node concept="37vLTw" id="1XKnVP4HJF" role="3ElVtu">
                <ref role="3cqZAo" node="1XKnVP4HJy" resolve="ruleTable" />
              </node>
              <node concept="37vLTw" id="1XKnVP4HJG" role="3ElQJh">
                <ref role="3cqZAo" node="7DvO2M9Uaig" resolve="rulePlanBuilders" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1XKnVP4HJH" role="3cqZAp">
          <node concept="3clFbS" id="1XKnVP4HJI" role="3clFbx">
            <node concept="YS8fn" id="1Pi9pJ$i1OZ" role="3cqZAp">
              <node concept="2ShNRf" id="1Pi9pJ$i7tK" role="YScLw">
                <node concept="1pGfFk" id="1Pi9pJ$iebG" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="1Pi9pJ$ilgY" role="37wK5m">
                    <property role="Xl_RC" value="not initialized" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1XKnVP4HK1" role="3clFbw">
            <node concept="10Nm6u" id="1XKnVP4HK2" role="3uHU7w" />
            <node concept="37vLTw" id="1XKnVP4HK3" role="3uHU7B">
              <ref role="3cqZAo" node="1XKnVP4HJC" resolve="builder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XKnVP4HK4" role="3cqZAp">
          <node concept="37vLTw" id="1XKnVP4HK5" role="3clFbG">
            <ref role="3cqZAo" node="1XKnVP4HJC" resolve="builder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDy16SM" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDy166r" role="jymVt">
      <property role="TrG5h" value="queryPlanBuilder" />
      <node concept="37vLTG" id="6OXbTDy166s" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="6OXbTD$xHlq" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:6OXbTD$iNPP" resolve="QueryTemplate" />
          <node concept="3qTvmN" id="6OXbTD$xHAd" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="6OXbTDzvEX_" role="3clF45">
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
      </node>
      <node concept="3Tm6S6" id="6OXbTDy166v" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy166w" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDy166x" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDy166y" role="3cpWs9">
            <property role="TrG5h" value="handlerBuilder" />
            <node concept="3uibUv" id="6OXbTDzvoxW" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
            </node>
            <node concept="3EllGN" id="6OXbTDy166$" role="33vP2m">
              <node concept="37vLTw" id="6OXbTDy166_" role="3ElVtu">
                <ref role="3cqZAo" node="6OXbTDy166s" resolve="queryTemplate" />
              </node>
              <node concept="37vLTw" id="6OXbTDy19TR" role="3ElQJh">
                <ref role="3cqZAo" node="6OXbTDy15hb" resolve="queryPlanBuilders" />
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
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="RulesPlanHandler.PlanBuilder" />
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
                    <ref role="3cqZAo" node="6OXbTDy15hb" resolve="queryPlanBuilders" />
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
    <node concept="2tJIrI" id="IfzMHGfTzb" role="jymVt" />
    <node concept="312cEu" id="4MqhgXUMauK" role="jymVt">
      <property role="TrG5h" value="PlanBuilder" />
      <node concept="2tJIrI" id="4MqhgXUMb3v" role="jymVt" />
      <node concept="3clFbW" id="4MqhgXUMb4h" role="jymVt">
        <node concept="3cqZAl" id="4MqhgXUMb4j" role="3clF45" />
        <node concept="3Tm6S6" id="1XKnVPk6O8" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUMb4l" role="3clF47">
          <node concept="1DcWWT" id="4MqhgXUMhDW" role="3cqZAp">
            <node concept="3clFbS" id="4MqhgXUMhDZ" role="2LFqv$">
              <node concept="3clFbF" id="1Pi9pJzObxy" role="3cqZAp">
                <node concept="37vLTI" id="1Pi9pJzOwF2" role="3clFbG">
                  <node concept="2ShNRf" id="1Pi9pJzOAMD" role="37vLTx">
                    <node concept="HV5vD" id="1Pi9pJzOHEO" role="2ShVmc">
                      <ref role="HV5vE" node="1Pi9pJzMSf$" resolve="RulesPlanHandler.UpdatesIndex" />
                    </node>
                  </node>
                  <node concept="3EllGN" id="1Pi9pJzOj6r" role="37vLTJ">
                    <node concept="37vLTw" id="1Pi9pJzOpF4" role="3ElVtu">
                      <ref role="3cqZAo" node="4MqhgXUMhE0" resolve="loc" />
                    </node>
                    <node concept="37vLTw" id="1Pi9pJzObxw" role="3ElQJh">
                      <ref role="3cqZAo" node="1Pi9pJzNTWh" resolve="templateLoc2updateIndex" />
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
        <node concept="37vLTG" id="4MqhgXUMh3C" role="3clF46">
          <property role="TrG5h" value="locations" />
          <node concept="A3Dl8" id="4MqhgXUMh7W" role="1tU5fm">
            <node concept="3qUE_q" id="47oVduOPwj8" role="A3Ik2">
              <node concept="3uibUv" id="47oVduOPz9v" role="3qUE_r">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUMLGb" role="jymVt" />
      <node concept="3clFb_" id="4MqhgXUMbtk" role="jymVt">
        <property role="TrG5h" value="updateRulesQuery" />
        <node concept="37vLTG" id="4MqhgXUMgMT" role="3clF46">
          <property role="TrG5h" value="template" />
          <node concept="3uibUv" id="4MqhgXUMgVa" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="5NUR$PxJcs" role="3clF46">
          <property role="TrG5h" value="ruleBuilders" />
          <node concept="A3Dl8" id="5NUR$PxJct" role="1tU5fm">
            <node concept="3uibUv" id="5NUR$PxJcu" role="A3Ik2">
              <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4MqhgXUMbtm" role="3clF45" />
        <node concept="3Tm6S6" id="1XKnVPk7Im" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUMbto" role="3clF47">
          <node concept="3cpWs8" id="2gPa6JJ_C5S" role="3cqZAp">
            <node concept="3cpWsn" id="2gPa6JJ_C5T" role="3cpWs9">
              <property role="TrG5h" value="update" />
              <node concept="3uibUv" id="2gPa6JJ_A5F" role="1tU5fm">
                <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
              </node>
              <node concept="2OqwBi" id="1Pi9pJzPXZl" role="33vP2m">
                <node concept="3EllGN" id="1Pi9pJzPXZm" role="2Oq$k0">
                  <node concept="37vLTw" id="1Pi9pJzPXZn" role="3ElVtu">
                    <ref role="3cqZAo" node="4MqhgXUMgMT" resolve="template" />
                  </node>
                  <node concept="37vLTw" id="1Pi9pJzPXZo" role="3ElQJh">
                    <ref role="3cqZAo" node="1Pi9pJzNTWh" resolve="templateLoc2updateIndex" />
                  </node>
                </node>
                <node concept="liA8E" id="1Pi9pJzPXZp" role="2OqNvi">
                  <ref role="37wK5l" node="1Pi9pJzN0ej" resolve="getOrCreateUpdate" />
                  <node concept="10Nm6u" id="1Pi9pJzPXZq" role="37wK5m" />
                  <node concept="3clFbT" id="1Pi9pJzPXZr" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4baZKvaXzR9" role="3cqZAp">
            <node concept="3cpWsn" id="4baZKvaXzRa" role="3cpWs9">
              <property role="TrG5h" value="oldRules" />
              <node concept="_YKpA" id="4baZKvaXzQK" role="1tU5fm">
                <node concept="3uibUv" id="4baZKvaXzQN" role="_ZDj9">
                  <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                </node>
              </node>
              <node concept="3K4zz7" id="2gPa6JJBXfD" role="33vP2m">
                <node concept="2OqwBi" id="2gPa6JJCmaC" role="3K4E3e">
                  <node concept="37vLTw" id="2gPa6JJC9nU" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPa6JJ_C5T" resolve="update" />
                  </node>
                  <node concept="liA8E" id="2gPa6JJC$Op" role="2OqNvi">
                    <ref role="37wK5l" node="2gPa6JIZSi0" resolve="rules" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2gPa6JJCL_1" role="3K4GZi" />
                <node concept="2OqwBi" id="2gPa6JJBhDZ" role="3K4Cdx">
                  <node concept="37vLTw" id="2gPa6JJB3Mg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPa6JJ_C5T" resolve="update" />
                  </node>
                  <node concept="liA8E" id="2gPa6JJBLZv" role="2OqNvi">
                    <ref role="37wK5l" node="2gPa6JJhpOQ" resolve="hasData" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2gPa6JJDFzm" role="3cqZAp" />
          <node concept="3SKdUt" id="5NUR$PxV01" role="3cqZAp">
            <node concept="1PaTwC" id="5NUR$PxV02" role="1aUNEU">
              <node concept="3oM_SD" id="5NUR$PxV03" role="1PaTwD">
                <property role="3oM_SC" value="find" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV04" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV05" role="1PaTwD">
                <property role="3oM_SC" value="appropriate" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV06" role="1PaTwD">
                <property role="3oM_SC" value="location" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV07" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV08" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV09" role="1PaTwD">
                <property role="3oM_SC" value="template" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV0a" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV0b" role="1PaTwD">
                <property role="3oM_SC" value="execute" />
              </node>
              <node concept="3oM_SD" id="5NUR$PxV0c" role="1PaTwD">
                <property role="3oM_SC" value="builders" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5NUR$PxV0d" role="3cqZAp">
            <node concept="3cpWsn" id="5NUR$PxV0e" role="3cpWs9">
              <property role="TrG5h" value="newRules" />
              <node concept="_YKpA" id="5NUR$PxV0f" role="1tU5fm">
                <node concept="3uibUv" id="5NUR$PxV0g" role="_ZDj9">
                  <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                </node>
              </node>
              <node concept="2ShNRf" id="5NUR$PxV0h" role="33vP2m">
                <node concept="Tc6Ow" id="5NUR$PxV0i" role="2ShVmc">
                  <node concept="3uibUv" id="5NUR$PxV0j" role="HW$YZ">
                    <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                  </node>
                  <node concept="3cmrfG" id="5NUR$PxV0k" role="3lWHg$">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="5NUR$PxV0l" role="3cqZAp">
            <node concept="3clFbS" id="5NUR$PxV0m" role="2LFqv$">
              <node concept="3cpWs8" id="1XKnVPFIXp" role="3cqZAp">
                <node concept="3cpWsn" id="1XKnVPFIXq" role="3cpWs9">
                  <property role="TrG5h" value="toRule" />
                  <node concept="3uibUv" id="1XKnVPFIMs" role="1tU5fm">
                    <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                  </node>
                  <node concept="2OqwBi" id="1XKnVPFIXr" role="33vP2m">
                    <node concept="37vLTw" id="1XKnVPFIXs" role="2Oq$k0">
                      <ref role="3cqZAo" node="5NUR$PxV0u" resolve="rb" />
                    </node>
                    <node concept="liA8E" id="1XKnVPFIXt" role="2OqNvi">
                      <ref role="37wK5l" to="ugy2:7eGEHDlc$ck" resolve="toRule" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5NUR$PxV0n" role="3cqZAp">
                <node concept="2OqwBi" id="5NUR$PxV0o" role="3clFbG">
                  <node concept="37vLTw" id="5NUR$PxV0p" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                  </node>
                  <node concept="TSZUe" id="5NUR$PxV0q" role="2OqNvi">
                    <node concept="37vLTw" id="1XKnVPFIXu" role="25WWJ7">
                      <ref role="3cqZAo" node="1XKnVPFIXq" resolve="toRule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5NUR$PxV0u" role="1Duv9x">
              <property role="TrG5h" value="rb" />
              <node concept="3uibUv" id="5NUR$PxV0v" role="1tU5fm">
                <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
              </node>
            </node>
            <node concept="37vLTw" id="5NUR$PxV0w" role="1DdaDG">
              <ref role="3cqZAo" node="5NUR$PxJcs" resolve="ruleBuilders" />
            </node>
          </node>
          <node concept="3clFbH" id="1XKnVPHrA8" role="3cqZAp" />
          <node concept="3SKdUt" id="1XKnVPHs_M" role="3cqZAp">
            <node concept="1PaTwC" id="1XKnVPHs_N" role="1aUNEU">
              <node concept="3oM_SD" id="1XKnVPHs_O" role="1PaTwD">
                <property role="3oM_SC" value="sync" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtwW" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtEb" role="1PaTwD">
                <property role="3oM_SC" value="old" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtEf" role="1PaTwD">
                <property role="3oM_SC" value="rules" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtEs" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtEy" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtED" role="1PaTwD">
                <property role="3oM_SC" value="new" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtET" role="1PaTwD">
                <property role="3oM_SC" value="ones," />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtFi" role="1PaTwD">
                <property role="3oM_SC" value="replace" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtF$" role="1PaTwD">
                <property role="3oM_SC" value="those" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtFZ" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtGb" role="1PaTwD">
                <property role="3oM_SC" value="different" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtHP" role="1PaTwD">
                <property role="3oM_SC" value="unique" />
              </node>
              <node concept="3oM_SD" id="1XKnVPHtI3" role="1PaTwD">
                <property role="3oM_SC" value="ids" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1XKnVPHTYM" role="3cqZAp">
            <node concept="3cpWsn" id="1XKnVPHTYP" role="3cpWs9">
              <property role="TrG5h" value="retainedIds" />
              <node concept="_YKpA" id="1XKnVPHTYI" role="1tU5fm">
                <node concept="3uibUv" id="1XKnVPHW3z" role="_ZDj9">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2ShNRf" id="1XKnVPHXl2" role="33vP2m">
                <node concept="Tc6Ow" id="1XKnVPHXi$" role="2ShVmc">
                  <node concept="3uibUv" id="1XKnVPHXi_" role="HW$YZ">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1XKnVPGBJ1" role="3cqZAp">
            <node concept="3clFbS" id="1XKnVPGBJ3" role="3clFbx">
              <node concept="1Dw8fO" id="1XKnVPGPrM" role="3cqZAp">
                <node concept="3clFbS" id="1XKnVPGPrO" role="2LFqv$">
                  <node concept="3clFbJ" id="1XKnVPGT8B" role="3cqZAp">
                    <node concept="3clFbS" id="1XKnVPGT8D" role="3clFbx">
                      <node concept="3clFbF" id="2fVm_54JLXY" role="3cqZAp">
                        <node concept="1rXfSq" id="2fVm_54JLXW" role="3clFbG">
                          <ref role="37wK5l" node="2fVm_54HGgz" resolve="drop" />
                          <node concept="1y4W85" id="2fVm_54K5hQ" role="37wK5m">
                            <node concept="37vLTw" id="2fVm_54KcsR" role="1y58nS">
                              <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="2fVm_54JVtg" role="1y566C">
                              <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1XKnVPH74l" role="3cqZAp">
                        <node concept="1rXfSq" id="1XKnVPH74j" role="3clFbG">
                          <ref role="37wK5l" node="3OUB6BCcAc6" resolve="register" />
                          <node concept="1y4W85" id="1XKnVPHkcj" role="37wK5m">
                            <node concept="37vLTw" id="1XKnVPHkck" role="1y58nS">
                              <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="1XKnVPHkcl" role="1y566C">
                              <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1XKnVPHDXx" role="3cqZAp" />
                    </node>
                    <node concept="17QLQc" id="1XKnVPHE1M" role="3clFbw">
                      <node concept="2OqwBi" id="1XKnVPGUyT" role="3uHU7B">
                        <node concept="1y4W85" id="1XKnVPGUeb" role="2Oq$k0">
                          <node concept="37vLTw" id="1XKnVPGUtO" role="1y58nS">
                            <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="1XKnVPGTdP" role="1y566C">
                            <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1XKnVPGUKo" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1XKnVPGX7Z" role="3uHU7w">
                        <node concept="1y4W85" id="1XKnVPGWWl" role="2Oq$k0">
                          <node concept="37vLTw" id="1XKnVPGX0e" role="1y58nS">
                            <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="1XKnVPGVi5" role="1y566C">
                            <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1XKnVPGXiM" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="1XKnVPHDRz" role="9aQIa">
                      <node concept="3clFbS" id="1XKnVPHDR$" role="9aQI4">
                        <node concept="3clFbF" id="1XKnVPGXxw" role="3cqZAp">
                          <node concept="37vLTI" id="1XKnVPGYqU" role="3clFbG">
                            <node concept="1y4W85" id="1XKnVPGZ18" role="37vLTx">
                              <node concept="37vLTw" id="1XKnVPGZ4L" role="1y58nS">
                                <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="1XKnVPHDpi" role="1y566C">
                                <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                              </node>
                            </node>
                            <node concept="1y4W85" id="1XKnVPGYfJ" role="37vLTJ">
                              <node concept="37vLTw" id="1XKnVPGYij" role="1y58nS">
                                <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="1XKnVPHDbC" role="1y566C">
                                <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1XKnVPHYtX" role="3cqZAp">
                          <node concept="2OqwBi" id="1XKnVPHZcV" role="3clFbG">
                            <node concept="37vLTw" id="1XKnVPHYtV" role="2Oq$k0">
                              <ref role="3cqZAo" node="1XKnVPHTYP" resolve="retainedIds" />
                            </node>
                            <node concept="TSZUe" id="1XKnVPHZLN" role="2OqNvi">
                              <node concept="2OqwBi" id="1XKnVPI07R" role="25WWJ7">
                                <node concept="1y4W85" id="1XKnVPHZVJ" role="2Oq$k0">
                                  <node concept="37vLTw" id="1XKnVPHZVK" role="1y58nS">
                                    <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                                  </node>
                                  <node concept="37vLTw" id="1XKnVPHZVL" role="1y566C">
                                    <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1XKnVPI0ld" role="2OqNvi">
                                  <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="1XKnVPGPrP" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="1XKnVPGPt4" role="1tU5fm" />
                  <node concept="3cmrfG" id="1XKnVPGPxH" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="1XKnVPGQsF" role="1Dwp0S">
                  <node concept="2OqwBi" id="1XKnVPGRIa" role="3uHU7w">
                    <node concept="37vLTw" id="1XKnVPGQyJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                    </node>
                    <node concept="34oBXx" id="1XKnVPGSfs" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="1XKnVPGP_f" role="3uHU7B">
                    <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="1XKnVPGT2f" role="1Dwrff">
                  <node concept="37vLTw" id="1XKnVPGT2h" role="2$L3a6">
                    <ref role="3cqZAo" node="1XKnVPGPrP" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1XKnVPHNiW" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2fVm_54O5q3" role="3clFbw">
              <node concept="3clFbC" id="2fVm_54OALR" role="3uHU7w">
                <node concept="2OqwBi" id="2fVm_54OSzX" role="3uHU7w">
                  <node concept="37vLTw" id="2fVm_54OKpe" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                  </node>
                  <node concept="34oBXx" id="2fVm_54P2d8" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="2fVm_54On59" role="3uHU7B">
                  <node concept="37vLTw" id="2fVm_54OdFZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                  </node>
                  <node concept="34oBXx" id="2fVm_54OuHM" role="2OqNvi" />
                </node>
              </node>
              <node concept="3y3z36" id="1XKnVPGELI" role="3uHU7B">
                <node concept="37vLTw" id="1XKnVPGDS1" role="3uHU7B">
                  <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                </node>
                <node concept="10Nm6u" id="1XKnVPGFjS" role="3uHU7w" />
              </node>
            </node>
            <node concept="3eNFk2" id="2fVm_54KrKT" role="3eNLev">
              <node concept="3clFbS" id="2fVm_54KrKU" role="3eOfB_">
                <node concept="3clFbF" id="2fVm_54KrKV" role="3cqZAp">
                  <node concept="1rXfSq" id="2fVm_54KrKW" role="3clFbG">
                    <ref role="37wK5l" node="3OUB6BCcgkq" resolve="registerRules" />
                    <node concept="37vLTw" id="2fVm_54KrKX" role="37wK5m">
                      <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2fVm_54L$Zw" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2fVm_54Pas9" role="3eO9$A">
                <node concept="3clFbC" id="2fVm_54PsZ6" role="3uHU7B">
                  <node concept="10Nm6u" id="2fVm_54Pt8L" role="3uHU7w" />
                  <node concept="37vLTw" id="2fVm_54Pj7q" role="3uHU7B">
                    <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2fVm_54KHAv" role="3uHU7w">
                  <node concept="37vLTw" id="2fVm_54K$8d" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                  </node>
                  <node concept="3GX2aA" id="2fVm_54KQ21" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2fVm_55aVwY" role="3eNLev">
              <node concept="3clFbS" id="2fVm_55aVwZ" role="3eOfB_">
                <node concept="3clFbF" id="2fVm_55aVx0" role="3cqZAp">
                  <node concept="1rXfSq" id="2fVm_55aVx1" role="3clFbG">
                    <ref role="37wK5l" node="2fVm_54Gh6B" resolve="dropRules" />
                    <node concept="37vLTw" id="2fVm_55aVx2" role="37wK5m">
                      <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2fVm_55beyV" role="3eO9$A">
                <node concept="10Nm6u" id="2fVm_55blH5" role="3uHU7w" />
                <node concept="37vLTw" id="2fVm_55b5cW" role="3uHU7B">
                  <ref role="3cqZAo" node="4baZKvaXzRa" resolve="oldRules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2gPa6JJDTzu" role="3cqZAp" />
          <node concept="3clFbF" id="2gPa6JJEmXK" role="3cqZAp">
            <node concept="2OqwBi" id="2gPa6JJEzst" role="3clFbG">
              <node concept="37vLTw" id="2gPa6JJEmXI" role="2Oq$k0">
                <ref role="3cqZAo" node="2gPa6JJ_C5T" resolve="update" />
              </node>
              <node concept="liA8E" id="2gPa6JJEN1J" role="2OqNvi">
                <ref role="37wK5l" node="2gPa6JJcvn2" resolve="setData" />
                <node concept="37vLTw" id="2gPa6JJFiL_" role="37wK5m">
                  <ref role="3cqZAo" node="5NUR$PxV0e" resolve="newRules" />
                </node>
                <node concept="10Nm6u" id="2gPa6JJH9rc" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5NUR$Py04a" role="Sfmx6">
          <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
        </node>
      </node>
      <node concept="2tJIrI" id="5NUR$OCWA_" role="jymVt" />
      <node concept="3clFb_" id="5NUR$OCWAA" role="jymVt">
        <property role="TrG5h" value="updateRules" />
        <node concept="37vLTG" id="5NUR$OCWAB" role="3clF46">
          <property role="TrG5h" value="template" />
          <node concept="3uibUv" id="5F2qBBEqhDJ" role="1tU5fm">
            <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
        </node>
        <node concept="37vLTG" id="5NUR$OCWAD" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="5NUR$OCWAE" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="2hQbw6HI6yJ" role="3clF46">
          <property role="TrG5h" value="staticRules" />
          <node concept="10P_77" id="2hQbw6HIggI" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5NUR$OD1YQ" role="3clF46">
          <property role="TrG5h" value="ruleBuilders" />
          <node concept="1ajhzC" id="47oVduOBQI8" role="1tU5fm">
            <node concept="1LlUBW" id="47oVduOF4Kf" role="1ajl9A">
              <node concept="3vKaQO" id="47oVduOF78l" role="1Lm7xW">
                <node concept="3uibUv" id="47oVduOF78n" role="3O5elw">
                  <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
              </node>
              <node concept="3vKaQO" id="47oVduOF7Mh" role="1Lm7xW">
                <node concept="3Tqbb2" id="47oVduOF8qp" role="3O5elw" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5NUR$OCWAJ" role="3clF47">
          <node concept="3cpWs8" id="2gPa6JJLbhw" role="3cqZAp">
            <node concept="3cpWsn" id="2gPa6JJLbhx" role="3cpWs9">
              <property role="TrG5h" value="update" />
              <node concept="3uibUv" id="2gPa6JJLbhy" role="1tU5fm">
                <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
              </node>
              <node concept="2OqwBi" id="1Pi9pJzPrf3" role="33vP2m">
                <node concept="3EllGN" id="1Pi9pJzPfzm" role="2Oq$k0">
                  <node concept="37vLTw" id="1Pi9pJzPlzp" role="3ElVtu">
                    <ref role="3cqZAo" node="5NUR$OCWAB" resolve="template" />
                  </node>
                  <node concept="37vLTw" id="1Pi9pJzOX5F" role="3ElQJh">
                    <ref role="3cqZAo" node="1Pi9pJzNTWh" resolve="templateLoc2updateIndex" />
                  </node>
                </node>
                <node concept="liA8E" id="1Pi9pJzPyUK" role="2OqNvi">
                  <ref role="37wK5l" node="1Pi9pJzN0ej" resolve="getOrCreateUpdate" />
                  <node concept="37vLTw" id="1Pi9pJzQqrx" role="37wK5m">
                    <ref role="3cqZAo" node="5NUR$OCWAD" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="1Pi9pJzQwG_" role="37wK5m">
                    <ref role="3cqZAo" node="2hQbw6HI6yJ" resolve="staticRules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="4baZKvaHMer" role="3cqZAp">
            <node concept="1PaTwC" id="4baZKvaHMes" role="1aUNEU">
              <node concept="3oM_SD" id="4baZKvaHMet" role="1PaTwD">
                <property role="3oM_SC" value="reuse" />
              </node>
              <node concept="3oM_SD" id="4baZKvaHPby" role="1PaTwD">
                <property role="3oM_SC" value="rules" />
              </node>
              <node concept="3oM_SD" id="4baZKvaHPes" role="1PaTwD">
                <property role="3oM_SC" value="generated" />
              </node>
              <node concept="3oM_SD" id="4baZKvaHPeC" role="1PaTwD">
                <property role="3oM_SC" value="previously" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4baZKvaHkjk" role="3cqZAp">
            <node concept="3clFbS" id="4baZKvaHkjm" role="3clFbx">
              <node concept="3cpWs8" id="4baZKvaHtCj" role="3cqZAp">
                <node concept="3cpWsn" id="4baZKvaHtCk" role="3cpWs9">
                  <property role="TrG5h" value="cachedRules" />
                  <node concept="_YKpA" id="4baZKvaHsXi" role="1tU5fm">
                    <node concept="3uibUv" id="4baZKvaHsXl" role="_ZDj9">
                      <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2gPa6JJMTJC" role="33vP2m">
                    <node concept="37vLTw" id="2gPa6JJMIoK" role="2Oq$k0">
                      <ref role="3cqZAo" node="2gPa6JJLbhx" resolve="update" />
                    </node>
                    <node concept="liA8E" id="2gPa6JJN7x4" role="2OqNvi">
                      <ref role="37wK5l" node="2gPa6JIZSi0" resolve="rules" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="47oVduOFP$Z" role="3cqZAp">
                <node concept="3cpWsn" id="47oVduOFP_0" role="3cpWs9">
                  <property role="TrG5h" value="cachedRequired" />
                  <node concept="3vKaQO" id="47oVduOFZTf" role="1tU5fm">
                    <node concept="3Tqbb2" id="47oVduOG0qV" role="3O5elw" />
                  </node>
                  <node concept="2OqwBi" id="2gPa6JJNwNH" role="33vP2m">
                    <node concept="37vLTw" id="2gPa6JJNkRD" role="2Oq$k0">
                      <ref role="3cqZAo" node="2gPa6JJLbhx" resolve="update" />
                    </node>
                    <node concept="liA8E" id="2gPa6JJNIUZ" role="2OqNvi">
                      <ref role="37wK5l" node="2gPa6JIZXdg" resolve="requiredNodes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2gPa6JJNVhi" role="3cqZAp">
                <node concept="2OqwBi" id="2gPa6JJO8em" role="3clFbG">
                  <node concept="37vLTw" id="2gPa6JJNVhg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPa6JJLbhx" resolve="update" />
                  </node>
                  <node concept="liA8E" id="2gPa6JJPGcz" role="2OqNvi">
                    <ref role="37wK5l" node="2gPa6JJ8_Mm" resolve="setValidated" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2gPa6JJPT8R" role="3cqZAp" />
              <node concept="3cpWs8" id="4baZKvb6gnB" role="3cqZAp">
                <node concept="3cpWsn" id="4baZKvb6gnC" role="3cpWs9">
                  <property role="TrG5h" value="validated" />
                  <node concept="3vKaQO" id="47oVduOGVtg" role="1tU5fm">
                    <node concept="3uibUv" id="47oVduOGVti" role="3O5elw">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4baZKvb6gnD" role="33vP2m">
                    <node concept="2OqwBi" id="4baZKvb6gnE" role="2Oq$k0">
                      <node concept="37vLTw" id="4baZKvb6gnF" role="2Oq$k0">
                        <ref role="3cqZAo" node="4baZKvaHtCk" resolve="cachedRules" />
                      </node>
                      <node concept="3$u5V9" id="4baZKvb6gnG" role="2OqNvi">
                        <node concept="1bVj0M" id="4baZKvb6gnH" role="23t8la">
                          <node concept="3clFbS" id="4baZKvb6gnI" role="1bW5cS">
                            <node concept="3clFbF" id="4baZKvb6gnJ" role="3cqZAp">
                              <node concept="0kSF2" id="6KCGZaSy04t" role="3clFbG">
                                <node concept="3uibUv" id="6KCGZaSy8Kx" role="0kSFW">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="2OqwBi" id="4baZKvb6gnK" role="0kSFX">
                                  <node concept="37vLTw" id="4baZKvb6gnL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6E5fMGvfKQg" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="4baZKvb6gnM" role="2OqNvi">
                                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="6E5fMGvfKQg" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6E5fMGvfKQh" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="4baZKvb6gnP" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4baZKvaHA0A" role="3cqZAp">
                <node concept="1Ls8ON" id="47oVduOG0AY" role="3cqZAk">
                  <node concept="37vLTw" id="47oVduOGhdE" role="1Lso8e">
                    <ref role="3cqZAo" node="4baZKvb6gnC" resolve="validated" />
                  </node>
                  <node concept="37vLTw" id="47oVduOGNpL" role="1Lso8e">
                    <ref role="3cqZAo" node="47oVduOFP_0" resolve="cachedRequired" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2gPa6JJLUA6" role="3clFbw">
              <node concept="37vLTw" id="2gPa6JJLKgV" role="2Oq$k0">
                <ref role="3cqZAo" node="2gPa6JJLbhx" resolve="update" />
              </node>
              <node concept="liA8E" id="2gPa6JJMl$m" role="2OqNvi">
                <ref role="37wK5l" node="2gPa6JJhpOQ" resolve="hasData" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4baZKvaHJKE" role="3cqZAp" />
          <node concept="3SKdUt" id="5NUR$OD58K" role="3cqZAp">
            <node concept="1PaTwC" id="5NUR$OD58L" role="1aUNEU">
              <node concept="3oM_SD" id="5NUR$OD58M" role="1PaTwD">
                <property role="3oM_SC" value="find" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58N" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58O" role="1PaTwD">
                <property role="3oM_SC" value="appropriate" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58P" role="1PaTwD">
                <property role="3oM_SC" value="location" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58Q" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58R" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58S" role="1PaTwD">
                <property role="3oM_SC" value="template" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58T" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58U" role="1PaTwD">
                <property role="3oM_SC" value="execute" />
              </node>
              <node concept="3oM_SD" id="5NUR$OD58V" role="1PaTwD">
                <property role="3oM_SC" value="builders" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5NUR$OD58W" role="3cqZAp">
            <node concept="3cpWsn" id="5NUR$OD58X" role="3cpWs9">
              <property role="TrG5h" value="rules" />
              <node concept="_YKpA" id="5NUR$OD58Y" role="1tU5fm">
                <node concept="3uibUv" id="5NUR$OD58Z" role="_ZDj9">
                  <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                </node>
              </node>
              <node concept="2ShNRf" id="5NUR$OD590" role="33vP2m">
                <node concept="Tc6Ow" id="5NUR$OD591" role="2ShVmc">
                  <node concept="3uibUv" id="5NUR$OD592" role="HW$YZ">
                    <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                  </node>
                  <node concept="3cmrfG" id="5NUR$OD593" role="3lWHg$">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="47oVduOHbow" role="3cqZAp">
            <node concept="3cpWsn" id="47oVduOHbox" role="3cpWs9">
              <property role="TrG5h" value="pair" />
              <node concept="1LlUBW" id="47oVduOHax0" role="1tU5fm">
                <node concept="3vKaQO" id="47oVduOHaxf" role="1Lm7xW">
                  <node concept="3uibUv" id="47oVduOHaxg" role="3O5elw">
                    <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="3vKaQO" id="47oVduOHaxd" role="1Lm7xW">
                  <node concept="3Tqbb2" id="47oVduOHaxe" role="3O5elw" />
                </node>
              </node>
              <node concept="2Sg_IR" id="47oVduOHboy" role="33vP2m">
                <node concept="37vLTw" id="47oVduOHboz" role="2SgG2M">
                  <ref role="3cqZAo" node="5NUR$OD1YQ" resolve="ruleBuilders" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3rrtTcS6$lM" role="3cqZAp">
            <node concept="3clFbS" id="3rrtTcS6$lO" role="3clFbx">
              <node concept="3cpWs6" id="3rrtTcS6HMz" role="3cqZAp">
                <node concept="10Nm6u" id="3rrtTcS6T4U" role="3cqZAk" />
              </node>
            </node>
            <node concept="3clFbC" id="3rrtTcS6H$C" role="3clFbw">
              <node concept="10Nm6u" id="3rrtTcS6HB2" role="3uHU7w" />
              <node concept="37vLTw" id="3rrtTcS6G5H" role="3uHU7B">
                <ref role="3cqZAo" node="47oVduOHbox" resolve="pair" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3rrtTcS72nV" role="3cqZAp" />
          <node concept="3cpWs8" id="47oVduOIc2A" role="3cqZAp">
            <node concept="3cpWsn" id="47oVduOIc2B" role="3cpWs9">
              <property role="TrG5h" value="rbs" />
              <node concept="3vKaQO" id="47oVduOHju4" role="1tU5fm">
                <node concept="3uibUv" id="47oVduOHju7" role="3O5elw">
                  <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
              </node>
              <node concept="1LFfDK" id="47oVduOIc2C" role="33vP2m">
                <node concept="3cmrfG" id="47oVduOIc2D" role="1LF_Uc">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="47oVduOIc2E" role="1LFl5Q">
                  <ref role="3cqZAo" node="47oVduOHbox" resolve="pair" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="47oVduOIlWC" role="3cqZAp">
            <node concept="3cpWsn" id="47oVduOIlWD" role="3cpWs9">
              <property role="TrG5h" value="reqs" />
              <node concept="3vKaQO" id="47oVduOIjFV" role="1tU5fm">
                <node concept="3Tqbb2" id="47oVduOIjFY" role="3O5elw" />
              </node>
              <node concept="1LFfDK" id="47oVduOIlWE" role="33vP2m">
                <node concept="3cmrfG" id="47oVduOIlWF" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="47oVduOIlWG" role="1LFl5Q">
                  <ref role="3cqZAo" node="47oVduOHbox" resolve="pair" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="47oVduOIKTF" role="3cqZAp" />
          <node concept="1DcWWT" id="5NUR$OD594" role="3cqZAp">
            <node concept="3clFbS" id="5NUR$OD595" role="2LFqv$">
              <node concept="3clFbF" id="5NUR$OD596" role="3cqZAp">
                <node concept="2OqwBi" id="5NUR$OD597" role="3clFbG">
                  <node concept="37vLTw" id="5NUR$OD598" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NUR$OD58X" resolve="rules" />
                  </node>
                  <node concept="TSZUe" id="5NUR$OD599" role="2OqNvi">
                    <node concept="2OqwBi" id="5NUR$OD59a" role="25WWJ7">
                      <node concept="37vLTw" id="5NUR$OD59b" role="2Oq$k0">
                        <ref role="3cqZAo" node="5NUR$OD59d" resolve="rb" />
                      </node>
                      <node concept="liA8E" id="5NUR$OD59c" role="2OqNvi">
                        <ref role="37wK5l" to="ugy2:7eGEHDlc$ck" resolve="toRule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5NUR$OD59d" role="1Duv9x">
              <property role="TrG5h" value="rb" />
              <node concept="3uibUv" id="5NUR$OD59e" role="1tU5fm">
                <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
              </node>
            </node>
            <node concept="37vLTw" id="47oVduOIc2F" role="1DdaDG">
              <ref role="3cqZAo" node="47oVduOIc2B" resolve="rbs" />
            </node>
          </node>
          <node concept="3clFbF" id="5NUR$OCWAK" role="3cqZAp">
            <node concept="1rXfSq" id="5NUR$OCWAL" role="3clFbG">
              <ref role="37wK5l" node="3OUB6BCcgkq" resolve="registerRules" />
              <node concept="37vLTw" id="5NUR$OD5Yj" role="37wK5m">
                <ref role="3cqZAo" node="5NUR$OD58X" resolve="rules" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5NUR$PpquL" role="3cqZAp" />
          <node concept="3clFbF" id="2gPa6JJQDPI" role="3cqZAp">
            <node concept="2OqwBi" id="2gPa6JJQPf_" role="3clFbG">
              <node concept="37vLTw" id="2gPa6JJQDPG" role="2Oq$k0">
                <ref role="3cqZAo" node="2gPa6JJLbhx" resolve="update" />
              </node>
              <node concept="liA8E" id="2gPa6JJR1ez" role="2OqNvi">
                <ref role="37wK5l" node="2gPa6JJcvn2" resolve="setData" />
                <node concept="37vLTw" id="2gPa6JJRbF2" role="37wK5m">
                  <ref role="3cqZAo" node="5NUR$OD58X" resolve="rules" />
                </node>
                <node concept="37vLTw" id="2gPa6JJRxs5" role="37wK5m">
                  <ref role="3cqZAo" node="47oVduOIlWD" resolve="reqs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="47oVduOJe2a" role="3cqZAp" />
          <node concept="3cpWs8" id="4baZKvb26tb" role="3cqZAp">
            <node concept="3cpWsn" id="4baZKvb26tc" role="3cpWs9">
              <property role="TrG5h" value="ids" />
              <node concept="3vKaQO" id="47oVduOQ8$X" role="1tU5fm">
                <node concept="3uibUv" id="47oVduOQ8$Z" role="3O5elw">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="2OqwBi" id="4baZKvb26td" role="33vP2m">
                <node concept="2OqwBi" id="4baZKvb26te" role="2Oq$k0">
                  <node concept="37vLTw" id="4baZKvb26tf" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NUR$OD58X" resolve="rules" />
                  </node>
                  <node concept="3$u5V9" id="4baZKvb26tg" role="2OqNvi">
                    <node concept="1bVj0M" id="4baZKvb26th" role="23t8la">
                      <node concept="3clFbS" id="4baZKvb26ti" role="1bW5cS">
                        <node concept="3clFbF" id="4baZKvb26tj" role="3cqZAp">
                          <node concept="0kSF2" id="6KCGZaSygz_" role="3clFbG">
                            <node concept="3uibUv" id="6KCGZaSyhlC" role="0kSFW">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="2OqwBi" id="4baZKvb26tk" role="0kSFX">
                              <node concept="37vLTw" id="4baZKvb26tl" role="2Oq$k0">
                                <ref role="3cqZAo" node="6E5fMGvfKQi" resolve="it" />
                              </node>
                              <node concept="liA8E" id="4baZKvb26tm" role="2OqNvi">
                                <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKQi" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6E5fMGvfKQj" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="4baZKvb26tp" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="47oVduOHOGt" role="3cqZAp">
            <node concept="1Ls8ON" id="47oVduOHOGr" role="3clFbG">
              <node concept="37vLTw" id="47oVduOHXeR" role="1Lso8e">
                <ref role="3cqZAo" node="4baZKvb26tc" resolve="ids" />
              </node>
              <node concept="37vLTw" id="47oVduOIlWH" role="1Lso8e">
                <ref role="3cqZAo" node="47oVduOIlWD" resolve="reqs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1XKnVPl$Zd" role="1B3o_S" />
        <node concept="3uibUv" id="5NUR$OD9xh" role="Sfmx6">
          <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
        </node>
        <node concept="1LlUBW" id="47oVduOFrIP" role="3clF45">
          <node concept="3vKaQO" id="47oVduOFrIQ" role="1Lm7xW">
            <node concept="3uibUv" id="47oVduOHXmg" role="3O5elw">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="3vKaQO" id="47oVduOFrIS" role="1Lm7xW">
            <node concept="3Tqbb2" id="47oVduOFrIT" role="3O5elw" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OUB6BC9d9$" role="jymVt" />
      <node concept="3clFb_" id="cmlg9OvtXS" role="jymVt">
        <property role="TrG5h" value="invalidateAllWithTags" />
        <node concept="37vLTG" id="cmlg9OvR2K" role="3clF46">
          <property role="TrG5h" value="template" />
          <node concept="3uibUv" id="cmlg9OvT_h" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="4J__M654a6" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="4J__M65ddC" role="1tU5fm" />
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
          <node concept="3cpWs8" id="1Pi9pJzS_Zg" role="3cqZAp">
            <node concept="3cpWsn" id="1Pi9pJzS_Zh" role="3cpWs9">
              <property role="TrG5h" value="update" />
              <node concept="3uibUv" id="1Pi9pJzS$IN" role="1tU5fm">
                <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
              </node>
              <node concept="2OqwBi" id="1Pi9pJzS_Zi" role="33vP2m">
                <node concept="3EllGN" id="1Pi9pJzS_Zj" role="2Oq$k0">
                  <node concept="37vLTw" id="1Pi9pJzS_Zk" role="3ElVtu">
                    <ref role="3cqZAo" node="cmlg9OvR2K" resolve="template" />
                  </node>
                  <node concept="37vLTw" id="1Pi9pJzS_Zl" role="3ElQJh">
                    <ref role="3cqZAo" node="1Pi9pJzNTWh" resolve="templateLoc2updateIndex" />
                  </node>
                </node>
                <node concept="liA8E" id="1Pi9pJzS_Zm" role="2OqNvi">
                  <ref role="37wK5l" node="1Pi9pJzRgOv" resolve="lookupUpdate" />
                  <node concept="37vLTw" id="1Pi9pJzS_Zn" role="37wK5m">
                    <ref role="3cqZAo" node="4J__M654a6" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2gPa6JJSIAt" role="3cqZAp">
            <node concept="3clFbS" id="2gPa6JJSIAS" role="3clFbx">
              <node concept="3clFbH" id="2gPa6JJYWPH" role="3cqZAp" />
              <node concept="3clFbJ" id="2gPa6JJZucp" role="3cqZAp">
                <node concept="3clFbS" id="2gPa6JJZucJ" role="3clFbx">
                  <node concept="3cpWs8" id="6tXRJZa$p99" role="3cqZAp">
                    <node concept="3cpWsn" id="6tXRJZa$p9a" role="3cpWs9">
                      <property role="TrG5h" value="rules" />
                      <node concept="3vKaQO" id="47oVduOI8VZ" role="1tU5fm">
                        <node concept="3uibUv" id="47oVduOI8W1" role="3O5elw">
                          <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2gPa6JK0X9L" role="33vP2m">
                        <node concept="37vLTw" id="1Pi9pJzTC7t" role="2Oq$k0">
                          <ref role="3cqZAo" node="1Pi9pJzS_Zh" resolve="update" />
                        </node>
                        <node concept="liA8E" id="2gPa6JK16C9" role="2OqNvi">
                          <ref role="37wK5l" node="2gPa6JIZSi0" resolve="rules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6tXRJZaAzZe" role="3cqZAp">
                    <node concept="3clFbS" id="6tXRJZaAzZg" role="3clFbx">
                      <node concept="3cpWs8" id="6tXRJZa$Adg" role="3cqZAp">
                        <node concept="3cpWsn" id="6tXRJZa$Adh" role="3cpWs9">
                          <property role="TrG5h" value="uids" />
                          <node concept="_YKpA" id="6tXRJZa$AcR" role="1tU5fm">
                            <node concept="3uibUv" id="6tXRJZa$AcU" role="_ZDj9">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6tXRJZa$Adi" role="33vP2m">
                            <node concept="2OqwBi" id="6tXRJZa$Adj" role="2Oq$k0">
                              <node concept="37vLTw" id="6tXRJZa$Adk" role="2Oq$k0">
                                <ref role="3cqZAo" node="6tXRJZa$p9a" resolve="rules" />
                              </node>
                              <node concept="3$u5V9" id="6tXRJZa$Adl" role="2OqNvi">
                                <node concept="1bVj0M" id="6tXRJZa$Adm" role="23t8la">
                                  <node concept="3clFbS" id="6tXRJZa$Adn" role="1bW5cS">
                                    <node concept="3clFbF" id="6tXRJZa$Ado" role="3cqZAp">
                                      <node concept="0kSF2" id="6KCGZaSyiRH" role="3clFbG">
                                        <node concept="3uibUv" id="6KCGZaSyjgR" role="0kSFW">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="2OqwBi" id="6tXRJZa$Adp" role="0kSFX">
                                          <node concept="37vLTw" id="6tXRJZa$Adq" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6E5fMGvfKQk" resolve="it" />
                                          </node>
                                          <node concept="liA8E" id="6tXRJZa$Adr" role="2OqNvi">
                                            <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="6E5fMGvfKQk" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="6E5fMGvfKQl" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="ANE8D" id="6tXRJZa$Adu" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6tXRJZa$I2T" role="3cqZAp">
                        <node concept="3clFbS" id="6tXRJZa$I2V" role="3clFbx">
                          <node concept="YS8fn" id="6tXRJZa$LNW" role="3cqZAp">
                            <node concept="2ShNRf" id="6tXRJZa$LQM" role="YScLw">
                              <node concept="1pGfFk" id="6tXRJZa$P54" role="2ShVmc">
                                <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                                <node concept="Xl_RD" id="6tXRJZa$PqT" role="37wK5m">
                                  <property role="Xl_RC" value="INVARIANT VIOLATION" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="17QLQc" id="6tXRJZa$KT3" role="3clFbw">
                          <node concept="37vLTw" id="6tXRJZa$L_9" role="3uHU7w">
                            <ref role="3cqZAo" node="6tXRJZa$Adh" resolve="uids" />
                          </node>
                          <node concept="37vLTw" id="6tXRJZa$JwT" role="3uHU7B">
                            <ref role="3cqZAo" node="cmlg9Ov_xf" resolve="uniqueTags" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6tXRJZa_j5h" role="3cqZAp" />
                      <node concept="1DcWWT" id="6tXRJZa_gUA" role="3cqZAp">
                        <node concept="3clFbS" id="6tXRJZa_gUD" role="2LFqv$">
                          <node concept="3clFbF" id="6tXRJZa_lF5" role="3cqZAp">
                            <node concept="2OqwBi" id="6tXRJZa_m$g" role="3clFbG">
                              <node concept="37vLTw" id="6tXRJZa_lF4" role="2Oq$k0">
                                <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                              </node>
                              <node concept="kI3uX" id="6tXRJZa_nvM" role="2OqNvi">
                                <node concept="2OqwBi" id="6tXRJZa_nIs" role="kIiFs">
                                  <node concept="37vLTw" id="6tXRJZa_n$Q" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6tXRJZa_gUE" resolve="r" />
                                  </node>
                                  <node concept="liA8E" id="6tXRJZa_nTx" role="2OqNvi">
                                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="55xYlrm$Z1j" role="3cqZAp">
                            <node concept="2OqwBi" id="55xYlrm$Z1k" role="3clFbG">
                              <node concept="37vLTw" id="55xYlrm_e4E" role="2Oq$k0">
                                <ref role="3cqZAo" node="55xYlrm$InP" resolve="invalidatedRuleIds" />
                              </node>
                              <node concept="TSZUe" id="55xYlrm$Z1m" role="2OqNvi">
                                <node concept="2OqwBi" id="55xYlrm$Z1n" role="25WWJ7">
                                  <node concept="37vLTw" id="55xYlrm$Z1o" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6tXRJZa_gUE" resolve="r" />
                                  </node>
                                  <node concept="liA8E" id="55xYlrm$Z1p" role="2OqNvi">
                                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="6tXRJZa_gUE" role="1Duv9x">
                          <property role="TrG5h" value="r" />
                          <node concept="3uibUv" id="6tXRJZa_gUI" role="1tU5fm">
                            <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="6tXRJZa_gUJ" role="1DdaDG">
                          <ref role="3cqZAo" node="6tXRJZa$p9a" resolve="rules" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="6tXRJZaA_HI" role="3clFbw">
                      <node concept="10Nm6u" id="6tXRJZaAA1g" role="3uHU7w" />
                      <node concept="37vLTw" id="6tXRJZaA$PG" role="3uHU7B">
                        <ref role="3cqZAo" node="6tXRJZa$p9a" resolve="rules" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2gPa6JK1q1F" role="3cqZAp">
                    <node concept="2OqwBi" id="2gPa6JK1z1F" role="3clFbG">
                      <node concept="37vLTw" id="1Pi9pJzTINn" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Pi9pJzS_Zh" resolve="update" />
                      </node>
                      <node concept="liA8E" id="2gPa6JK1IG3" role="2OqNvi">
                        <ref role="37wK5l" node="2gPa6JJaZG2" resolve="clearData" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2gPa6JJZ7sc" role="3clFbw">
                  <node concept="37vLTw" id="1Pi9pJzTx8p" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Pi9pJzS_Zh" resolve="update" />
                  </node>
                  <node concept="liA8E" id="2gPa6JJZi5p" role="2OqNvi">
                    <ref role="37wK5l" node="2gPa6JJhpOQ" resolve="hasData" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1Pi9pJzTcN2" role="3clFbw">
              <node concept="10Nm6u" id="1Pi9pJzTi4j" role="3uHU7w" />
              <node concept="37vLTw" id="1Pi9pJzT6A4" role="3uHU7B">
                <ref role="3cqZAo" node="1Pi9pJzS_Zh" resolve="update" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="cmlg9Ovv7f" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4MqhgXUNBTW" role="jymVt" />
      <node concept="3clFb_" id="17DrR$REwQy" role="jymVt">
        <property role="TrG5h" value="markAllValidated" />
        <node concept="3cqZAl" id="17DrR$REwQ$" role="3clF45" />
        <node concept="3clFbS" id="17DrR$REwQ_" role="3clF47">
          <node concept="3clFbF" id="17DrR$RFuRm" role="3cqZAp">
            <node concept="2OqwBi" id="17DrR$RFvzu" role="3clFbG">
              <node concept="37vLTw" id="17DrR$RFuRl" role="2Oq$k0">
                <ref role="3cqZAo" node="4baZKvb1VEX" resolve="validatedRuleIds" />
              </node>
              <node concept="X8dFx" id="17DrR$RFwak" role="2OqNvi">
                <node concept="2OqwBi" id="17DrR$RFyCU" role="25WWJ7">
                  <node concept="37vLTw" id="17DrR$RFy2t" role="2Oq$k0">
                    <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
                  </node>
                  <node concept="3lbrtF" id="17DrR$RF$3_" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="17DrR$REETT" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="17DrR$REl9D" role="jymVt" />
      <node concept="3clFb_" id="3OUB6BCcgkq" role="jymVt">
        <property role="TrG5h" value="registerRules" />
        <node concept="37vLTG" id="3OUB6BCclji" role="3clF46">
          <property role="TrG5h" value="rules" />
          <node concept="A3Dl8" id="3OUB6BCcnKy" role="1tU5fm">
            <node concept="3uibUv" id="3OUB6BCemLr" role="A3Ik2">
              <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
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
        <node concept="3uibUv" id="4baZKvaVP1_" role="Sfmx6">
          <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OUB6BCcCXV" role="jymVt" />
      <node concept="3clFb_" id="2fVm_54Gh6B" role="jymVt">
        <property role="TrG5h" value="dropRules" />
        <node concept="3cqZAl" id="2fVm_54Gh6D" role="3clF45" />
        <node concept="3clFbS" id="2fVm_54Gh6E" role="3clF47">
          <node concept="1DcWWT" id="2fVm_54IMbI" role="3cqZAp">
            <node concept="3clFbS" id="2fVm_54IMbL" role="2LFqv$">
              <node concept="3clFbF" id="2fVm_54J0LU" role="3cqZAp">
                <node concept="1rXfSq" id="2fVm_54JgS7" role="3clFbG">
                  <ref role="37wK5l" node="2fVm_54HGgz" resolve="drop" />
                  <node concept="37vLTw" id="2fVm_54Jpwv" role="37wK5m">
                    <ref role="3cqZAo" node="2fVm_54IMbM" resolve="rule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2fVm_54IMbM" role="1Duv9x">
              <property role="TrG5h" value="rule" />
              <node concept="3uibUv" id="2fVm_54IMbQ" role="1tU5fm">
                <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
              </node>
            </node>
            <node concept="37vLTw" id="2fVm_54IMbR" role="1DdaDG">
              <ref role="3cqZAo" node="2fVm_54GRo3" resolve="rules" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="2fVm_54Gq3O" role="1B3o_S" />
        <node concept="37vLTG" id="2fVm_54GRo3" role="3clF46">
          <property role="TrG5h" value="rules" />
          <node concept="A3Dl8" id="2fVm_54I9GE" role="1tU5fm">
            <node concept="3uibUv" id="2fVm_54I9GF" role="A3Ik2">
              <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OUB6BCce8e" role="jymVt" />
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
                            <node concept="liA8E" id="7ElRE1BM$tJ" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
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
                        <node concept="liA8E" id="7ElRE1BM_9K" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="3OUB6BCcAbE" role="3cqZAp">
                <node concept="2ShNRf" id="3OUB6BCcAbF" role="YScLw">
                  <node concept="1pGfFk" id="3OUB6BCcAbG" role="2ShVmc">
                    <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String)" resolve="InvalidRuleException" />
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
        <node concept="3uibUv" id="4baZKvaVIRr" role="Sfmx6">
          <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
        </node>
      </node>
      <node concept="2tJIrI" id="2fVm_54G7iD" role="jymVt" />
      <node concept="3clFb_" id="2fVm_54HGgz" role="jymVt">
        <property role="TrG5h" value="drop" />
        <node concept="3cqZAl" id="2fVm_54HGg$" role="3clF45" />
        <node concept="3clFbS" id="2fVm_54HGg_" role="3clF47">
          <node concept="3clFbF" id="2fVm_54HGgA" role="3cqZAp">
            <node concept="2OqwBi" id="2fVm_54HGgB" role="3clFbG">
              <node concept="37vLTw" id="2fVm_54HGgC" role="2Oq$k0">
                <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
              </node>
              <node concept="kI3uX" id="2fVm_54HGgD" role="2OqNvi">
                <node concept="2OqwBi" id="2fVm_54HGgE" role="kIiFs">
                  <node concept="37vLTw" id="2fVm_54HGgF" role="2Oq$k0">
                    <ref role="3cqZAo" node="2fVm_54HGgI" resolve="rule" />
                  </node>
                  <node concept="liA8E" id="2fVm_54HGgG" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="2fVm_54HGgH" role="1B3o_S" />
        <node concept="37vLTG" id="2fVm_54HGgI" role="3clF46">
          <property role="TrG5h" value="rule" />
          <node concept="3uibUv" id="2fVm_54HGgJ" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2fVm_54HGgy" role="jymVt" />
      <node concept="3clFb_" id="4MqhgXUNDLG" role="jymVt">
        <property role="TrG5h" value="buildPlan" />
        <node concept="3uibUv" id="1XKnVPvVj6" role="3clF45">
          <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3Tm6S6" id="1XKnVPgiq6" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUNDLK" role="3clF47">
          <node concept="3cpWs8" id="1XKnVPw9A4" role="3cqZAp">
            <node concept="3cpWsn" id="1XKnVPw9A5" role="3cpWs9">
              <property role="TrG5h" value="res" />
              <node concept="3uibUv" id="1XKnVPw2nj" role="1tU5fm">
                <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
              </node>
              <node concept="2YIFZM" id="1XKnVPw9A6" role="33vP2m">
                <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
                <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2gPa6JK2dun" role="3cqZAp" />
          <node concept="1DcWWT" id="6DQTzHxcmoG" role="3cqZAp">
            <node concept="3clFbS" id="6DQTzHxcmoJ" role="2LFqv$">
              <node concept="1DcWWT" id="6DQTzHxdeyb" role="3cqZAp">
                <node concept="3clFbS" id="6DQTzHxdeye" role="2LFqv$">
                  <node concept="3clFbJ" id="2gPa6JK6I2w" role="3cqZAp">
                    <node concept="3clFbS" id="2gPa6JK6I2y" role="3clFbx">
                      <node concept="1DcWWT" id="2gPa6JK8Imj" role="3cqZAp">
                        <node concept="3clFbS" id="2gPa6JK8Imm" role="2LFqv$">
                          <node concept="3clFbF" id="1Pi9pJ$26ay" role="3cqZAp">
                            <node concept="2OqwBi" id="1Pi9pJ$26a$" role="3clFbG">
                              <node concept="37vLTw" id="1Pi9pJ$26a_" role="2Oq$k0">
                                <ref role="3cqZAo" node="1XKnVPt8iN" resolve="plan" />
                              </node>
                              <node concept="liA8E" id="1Pi9pJ$26aA" role="2OqNvi">
                                <ref role="37wK5l" node="1XKnVPsXAS" resolve="addRule" />
                                <node concept="37vLTw" id="1Pi9pJ$26aB" role="37wK5m">
                                  <ref role="3cqZAo" node="2gPa6JK8Imn" resolve="r" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="6DQTzHxOyKa" role="3cqZAp">
                            <node concept="3clFbS" id="6DQTzHxOyKc" role="3clFbx">
                              <node concept="3clFbF" id="2gPa6JKelik" role="3cqZAp">
                                <node concept="2OqwBi" id="2gPa6JKevEs" role="3clFbG">
                                  <node concept="37vLTw" id="2gPa6JKelii" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4baZKvb1VEX" resolve="validatedRuleIds" />
                                  </node>
                                  <node concept="TSZUe" id="2gPa6JKeG0j" role="2OqNvi">
                                    <node concept="2OqwBi" id="2gPa6JKeXJp" role="25WWJ7">
                                      <node concept="37vLTw" id="2gPa6JKeNrc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2gPa6JK8Imn" resolve="r" />
                                      </node>
                                      <node concept="liA8E" id="2gPa6JKf5u1" role="2OqNvi">
                                        <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="6DQTzHxOJZi" role="3clFbw">
                              <node concept="2OqwBi" id="6DQTzHxOJZk" role="3fr31v">
                                <node concept="37vLTw" id="6DQTzHxOJZl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6DQTzHxdeyf" resolve="update" />
                                </node>
                                <node concept="liA8E" id="6DQTzHxOJZm" role="2OqNvi">
                                  <ref role="37wK5l" node="2gPa6JJ5Ede" resolve="isStatic" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="2gPa6JK8Imn" role="1Duv9x">
                          <property role="TrG5h" value="r" />
                          <node concept="3uibUv" id="2gPa6JK8Imr" role="1tU5fm">
                            <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2gPa6JK8Ims" role="1DdaDG">
                          <node concept="37vLTw" id="6DQTzHxeIOB" role="2Oq$k0">
                            <ref role="3cqZAo" node="6DQTzHxdeyf" resolve="update" />
                          </node>
                          <node concept="liA8E" id="2gPa6JK8Imu" role="2OqNvi">
                            <ref role="37wK5l" node="2gPa6JIZSi0" resolve="rules" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6DQTzHwNNON" role="3cqZAp">
                        <node concept="2OqwBi" id="6DQTzHwNWmK" role="3clFbG">
                          <node concept="37vLTw" id="6DQTzHxeTEW" role="2Oq$k0">
                            <ref role="3cqZAo" node="6DQTzHxdeyf" resolve="update" />
                          </node>
                          <node concept="liA8E" id="6DQTzHwO52W" role="2OqNvi">
                            <ref role="37wK5l" node="2gPa6JJP6Nh" resolve="clearValidated" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="2gPa6JK7m18" role="3clFbw">
                      <node concept="2OqwBi" id="2gPa6JK7EdH" role="3uHU7w">
                        <node concept="37vLTw" id="6DQTzHxe$N2" role="2Oq$k0">
                          <ref role="3cqZAo" node="6DQTzHxdeyf" resolve="update" />
                        </node>
                        <node concept="liA8E" id="2gPa6JK7Qs$" role="2OqNvi">
                          <ref role="37wK5l" node="2gPa6JJ77$8" resolve="isValidated" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2gPa6JK735$" role="3uHU7B">
                        <node concept="37vLTw" id="6DQTzHxeqA1" role="2Oq$k0">
                          <ref role="3cqZAo" node="6DQTzHxdeyf" resolve="update" />
                        </node>
                        <node concept="liA8E" id="2gPa6JK7b7A" role="2OqNvi">
                          <ref role="37wK5l" node="2gPa6JJ5Ede" resolve="isStatic" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="6DQTzHxdeyf" role="1Duv9x">
                  <property role="TrG5h" value="update" />
                  <node concept="3uibUv" id="6DQTzHxdeyj" role="1tU5fm">
                    <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6DQTzHxdeyk" role="1DdaDG">
                  <node concept="37vLTw" id="6DQTzHxdeyl" role="2Oq$k0">
                    <ref role="3cqZAo" node="6DQTzHxcmoK" resolve="updates" />
                  </node>
                  <node concept="liA8E" id="1Pi9pJzUo2f" role="2OqNvi">
                    <ref role="37wK5l" node="1Pi9pJzNHq5" resolve="allUpdates" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6DQTzHxcmoK" role="1Duv9x">
              <property role="TrG5h" value="updates" />
              <node concept="3uibUv" id="1Pi9pJzTWVq" role="1tU5fm">
                <ref role="3uigEE" node="1Pi9pJzMSf$" resolve="RulesPlanHandler.UpdatesIndex" />
              </node>
            </node>
            <node concept="2OqwBi" id="6DQTzHxcmoR" role="1DdaDG">
              <node concept="37vLTw" id="1Pi9pJzTORV" role="2Oq$k0">
                <ref role="3cqZAo" node="1Pi9pJzNTWh" resolve="templateLoc2updateIndex" />
              </node>
              <node concept="T8wYR" id="6DQTzHxcmoT" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="6DQTzHx079V" role="3cqZAp" />
          <node concept="3clFbF" id="55xYlrmB4wy" role="3cqZAp">
            <node concept="2OqwBi" id="55xYlrmB4wz" role="3clFbG">
              <node concept="37vLTw" id="55xYlrmB4w$" role="2Oq$k0">
                <ref role="3cqZAo" node="1XKnVPt8iN" resolve="plan" />
              </node>
              <node concept="liA8E" id="55xYlrmB4w_" role="2OqNvi">
                <ref role="37wK5l" node="55xYlrm_rt9" resolve="addInvalidatedRuleIds" />
                <node concept="37vLTw" id="55xYlrmC9j6" role="37wK5m">
                  <ref role="3cqZAo" node="55xYlrm$InP" resolve="invalidatedRuleIds" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="55xYlrmC$mC" role="3cqZAp">
            <node concept="2OqwBi" id="55xYlrmCKZj" role="3clFbG">
              <node concept="37vLTw" id="55xYlrmC$mA" role="2Oq$k0">
                <ref role="3cqZAo" node="55xYlrm$InP" resolve="invalidatedRuleIds" />
              </node>
              <node concept="2EZike" id="55xYlrmCZdm" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="2LxIQemoZQc" role="3cqZAp" />
          <node concept="3clFbF" id="1tzntNAhjVx" role="3cqZAp">
            <node concept="2OqwBi" id="1tzntNAhx0K" role="3clFbG">
              <node concept="37vLTw" id="1tzntNAhjVv" role="2Oq$k0">
                <ref role="3cqZAo" node="1XKnVPt8iN" resolve="plan" />
              </node>
              <node concept="liA8E" id="1tzntNAhHx2" role="2OqNvi">
                <ref role="37wK5l" node="55xYlrmIlZ3" resolve="addValidatedRuleIds" />
                <node concept="37vLTw" id="1tzntNAhSfi" role="37wK5m">
                  <ref role="3cqZAo" node="4baZKvb1VEX" resolve="validatedRuleIds" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4baZKvb2E2C" role="3cqZAp">
            <node concept="2OqwBi" id="4baZKvb2FcM" role="3clFbG">
              <node concept="37vLTw" id="4baZKvb2E2A" role="2Oq$k0">
                <ref role="3cqZAo" node="4baZKvb1VEX" resolve="validatedRuleIds" />
              </node>
              <node concept="2EZike" id="4baZKvb2GdH" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="2gPa6JKfQ5V" role="3cqZAp" />
          <node concept="3clFbF" id="1XKnVPw1Ss" role="3cqZAp">
            <node concept="37vLTw" id="1XKnVPw9A7" role="3clFbG">
              <ref role="3cqZAo" node="1XKnVPw9A5" resolve="res" />
            </node>
          </node>
        </node>
        <node concept="P$JXv" id="1LBj9w_7moG" role="lGtFl">
          <node concept="TZ5HA" id="1LBj9w_7moH" role="TZ5H$">
            <node concept="1dT_AC" id="1LBj9w_7moI" role="1dT_Ay">
              <property role="1dT_AB" value="Builds plan and removes invalidated rules." />
            </node>
          </node>
          <node concept="TZ5HA" id="1XKnVP30td" role="TZ5H$">
            <node concept="1dT_AC" id="1XKnVP30te" role="1dT_Ay">
              <property role="1dT_AB" value="" />
            </node>
          </node>
          <node concept="TZ5HA" id="1XKnVP30gz" role="TZ5H$">
            <node concept="1dT_AC" id="1XKnVP30g$" role="1dT_Ay">
              <property role="1dT_AB" value="The ordering of rules within the plan correspond to partial ordering of rule templates according to " />
            </node>
          </node>
          <node concept="TZ5HA" id="1LBj9w_7pqv" role="TZ5H$">
            <node concept="1dT_AC" id="1LBj9w_7pqw" role="1dT_Ay">
              <property role="1dT_AB" value="extends relation, and also takes into account the extended languages. " />
            </node>
          </node>
          <node concept="TZ5HA" id="1LBj9w_7psZ" role="TZ5H$">
            <node concept="1dT_AC" id="1LBj9w_7pt0" role="1dT_Ay">
              <property role="1dT_AB" value="Otherwise, ordering of rules withing the rule template is kept." />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1XKnVPt8iN" role="3clF46">
          <property role="TrG5h" value="plan" />
          <node concept="3uibUv" id="1XKnVPt8iM" role="1tU5fm">
            <ref role="3uigEE" node="1XKnVPsWNc" resolve="RulesPlan" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1Pi9pJzUGXR" role="jymVt" />
      <node concept="312cEg" id="1Pi9pJzNTWh" role="jymVt">
        <property role="TrG5h" value="templateLoc2updateIndex" />
        <node concept="3Tm6S6" id="1Pi9pJzNTWi" role="1B3o_S" />
        <node concept="3rvAFt" id="1Pi9pJzO0O5" role="1tU5fm">
          <node concept="3uibUv" id="1Pi9pJzO1gv" role="3rvQeY">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="1Pi9pJzO25M" role="3rvSg0">
            <ref role="3uigEE" node="1Pi9pJzMSf$" resolve="RulesPlanHandler.UpdatesIndex" />
          </node>
        </node>
        <node concept="2ShNRf" id="1Pi9pJzO4c$" role="33vP2m">
          <node concept="32Fmki" id="1Pi9pJzO4ah" role="2ShVmc">
            <node concept="3uibUv" id="1Pi9pJzO4ai" role="3rHrn6">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3uibUv" id="1Pi9pJzO4aj" role="3rHtpV">
              <ref role="3uigEE" node="1Pi9pJzMSf$" resolve="RulesPlanHandler.UpdatesIndex" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JJz7nv" role="jymVt" />
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
      <node concept="2tJIrI" id="2LxIQemoyV4" role="jymVt" />
      <node concept="312cEg" id="4baZKvb1VEX" role="jymVt">
        <property role="TrG5h" value="validatedRuleIds" />
        <node concept="3Tm6S6" id="4baZKvb1VEY" role="1B3o_S" />
        <node concept="2hMVRd" id="4baZKvb1YEJ" role="1tU5fm">
          <node concept="3uibUv" id="4baZKvb1YYh" role="2hN53Y">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2ShNRf" id="4baZKvb23Nf" role="33vP2m">
          <node concept="2i4dXS" id="4baZKvb23KS" role="2ShVmc">
            <node concept="3uibUv" id="4baZKvb23KT" role="HW$YZ">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="55xYlrm$InP" role="jymVt">
        <property role="TrG5h" value="invalidatedRuleIds" />
        <node concept="3Tm6S6" id="55xYlrm$InQ" role="1B3o_S" />
        <node concept="2hMVRd" id="55xYlrm$InR" role="1tU5fm">
          <node concept="3uibUv" id="55xYlrm$InS" role="2hN53Y">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2ShNRf" id="55xYlrm$InT" role="33vP2m">
          <node concept="2i4dXS" id="55xYlrm$InU" role="2ShVmc">
            <node concept="3uibUv" id="55xYlrm$InV" role="HW$YZ">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
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
    <node concept="2tJIrI" id="2gPa6JIZ2WZ" role="jymVt" />
    <node concept="312cEu" id="1Pi9pJzMSf$" role="jymVt">
      <property role="TrG5h" value="UpdatesIndex" />
      <node concept="2tJIrI" id="1Pi9pJzMZDM" role="jymVt" />
      <node concept="3clFb_" id="1Pi9pJzN0ej" role="jymVt">
        <property role="TrG5h" value="getOrCreateUpdate" />
        <node concept="37vLTG" id="1Pi9pJzN36g" role="3clF46">
          <property role="TrG5h" value="input" />
          <node concept="3uibUv" id="1Pi9pJzN3EQ" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="1Pi9pJzN4wn" role="3clF46">
          <property role="TrG5h" value="isStatic" />
          <node concept="10P_77" id="1Pi9pJzN7CV" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="1Pi9pJzNG1g" role="3clF45">
          <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
        </node>
        <node concept="3Tm1VV" id="1Pi9pJzN0MT" role="1B3o_S" />
        <node concept="3clFbS" id="1Pi9pJzN0en" role="3clF47">
          <node concept="3cpWs8" id="1Pi9pJzN$kw" role="3cqZAp">
            <node concept="3cpWsn" id="1Pi9pJzN$kx" role="3cpWs9">
              <property role="TrG5h" value="rec" />
              <node concept="3uibUv" id="1Pi9pJzNzG5" role="1tU5fm">
                <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
              </node>
              <node concept="3EllGN" id="1Pi9pJzN$ky" role="33vP2m">
                <node concept="37vLTw" id="1Pi9pJzN$kz" role="3ElVtu">
                  <ref role="3cqZAo" node="1Pi9pJzN36g" resolve="input" />
                </node>
                <node concept="37vLTw" id="1Pi9pJzN$k$" role="3ElQJh">
                  <ref role="3cqZAo" node="1Pi9pJzN8f4" resolve="index" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1Pi9pJzNfDH" role="3cqZAp">
            <node concept="3clFbC" id="1Pi9pJzNAJu" role="3clFbw">
              <node concept="10Nm6u" id="1Pi9pJzNBr3" role="3uHU7w" />
              <node concept="37vLTw" id="1Pi9pJzNAz$" role="3uHU7B">
                <ref role="3cqZAo" node="1Pi9pJzN$kx" resolve="rec" />
              </node>
            </node>
            <node concept="3clFbS" id="1Pi9pJzNxsK" role="3clFbx">
              <node concept="3clFbF" id="1Pi9pJzNC2G" role="3cqZAp">
                <node concept="37vLTI" id="1Pi9pJzNC2I" role="3clFbG">
                  <node concept="2ShNRf" id="1Pi9pJzNwH7" role="37vLTx">
                    <node concept="1pGfFk" id="1Pi9pJzNwH8" role="2ShVmc">
                      <ref role="37wK5l" node="2gPa6JIZOt8" resolve="RulesPlanHandler.UpdateRec" />
                      <node concept="37vLTw" id="1Pi9pJzNwH9" role="37wK5m">
                        <ref role="3cqZAo" node="1Pi9pJzN4wn" resolve="isStatic" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1Pi9pJzNDzL" role="37vLTJ">
                    <ref role="3cqZAo" node="1Pi9pJzN$kx" resolve="rec" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1Pi9pJzWe73" role="3cqZAp">
                <node concept="37vLTI" id="1Pi9pJzWxWu" role="3clFbG">
                  <node concept="37vLTw" id="1Pi9pJzWBJT" role="37vLTx">
                    <ref role="3cqZAo" node="1Pi9pJzN$kx" resolve="rec" />
                  </node>
                  <node concept="3EllGN" id="1Pi9pJzWlw0" role="37vLTJ">
                    <node concept="37vLTw" id="1Pi9pJzWr3G" role="3ElVtu">
                      <ref role="3cqZAo" node="1Pi9pJzN36g" resolve="input" />
                    </node>
                    <node concept="37vLTw" id="1Pi9pJzWe71" role="3ElQJh">
                      <ref role="3cqZAo" node="1Pi9pJzN8f4" resolve="index" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1Pi9pJzZ8c1" role="3cqZAp">
                <node concept="2OqwBi" id="1Pi9pJzZeWd" role="3clFbG">
                  <node concept="37vLTw" id="1Pi9pJzZ8bZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Pi9pJzYRNy" resolve="updatesList" />
                  </node>
                  <node concept="TSZUe" id="1Pi9pJzZlny" role="2OqNvi">
                    <node concept="37vLTw" id="1Pi9pJ$0gV7" role="25WWJ7">
                      <ref role="3cqZAo" node="1Pi9pJzN$kx" resolve="rec" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Pi9pJzNENo" role="3cqZAp">
            <node concept="37vLTw" id="1Pi9pJzNENm" role="3clFbG">
              <ref role="3cqZAo" node="1Pi9pJzN$kx" resolve="rec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1Pi9pJzNGK_" role="jymVt" />
      <node concept="3clFb_" id="1Pi9pJzRgOv" role="jymVt">
        <property role="TrG5h" value="lookupUpdate" />
        <node concept="37vLTG" id="1Pi9pJzRO95" role="3clF46">
          <property role="TrG5h" value="input" />
          <node concept="3uibUv" id="1Pi9pJzRTvV" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3uibUv" id="1Pi9pJzRvsN" role="3clF45">
          <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
        </node>
        <node concept="3Tm1VV" id="1Pi9pJzRn$W" role="1B3o_S" />
        <node concept="3clFbS" id="1Pi9pJzRgOz" role="3clF47">
          <node concept="3clFbF" id="1Pi9pJzS1Gd" role="3cqZAp">
            <node concept="3EllGN" id="1Pi9pJzS9nZ" role="3clFbG">
              <node concept="37vLTw" id="1Pi9pJzSfNh" role="3ElVtu">
                <ref role="3cqZAo" node="1Pi9pJzRO95" resolve="input" />
              </node>
              <node concept="37vLTw" id="1Pi9pJzS1Gc" role="3ElQJh">
                <ref role="3cqZAo" node="1Pi9pJzN8f4" resolve="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1Pi9pJzR8Tk" role="jymVt" />
      <node concept="3clFb_" id="1Pi9pJzNHq5" role="jymVt">
        <property role="TrG5h" value="allUpdates" />
        <node concept="3uibUv" id="1Pi9pJzNIBJ" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1Pi9pJzNJmx" role="11_B2D">
            <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1Pi9pJzNI1e" role="1B3o_S" />
        <node concept="3clFbS" id="1Pi9pJzNHq9" role="3clF47">
          <node concept="3clFbF" id="1Pi9pJ$0vpl" role="3cqZAp">
            <node concept="37vLTw" id="1Pi9pJ$0vpg" role="3clFbG">
              <ref role="3cqZAo" node="1Pi9pJzYRNy" resolve="updatesList" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1Pi9pJzN7Eb" role="jymVt" />
      <node concept="312cEg" id="1Pi9pJzN8f4" role="jymVt">
        <property role="TrG5h" value="index" />
        <node concept="3Tm6S6" id="1Pi9pJzN8f5" role="1B3o_S" />
        <node concept="3rvAFt" id="1Pi9pJzN8NT" role="1tU5fm">
          <node concept="3uibUv" id="1Pi9pJzN8Op" role="3rvQeY">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="1Pi9pJzN9F2" role="3rvSg0">
            <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
          </node>
        </node>
        <node concept="2ShNRf" id="1Pi9pJzNaoM" role="33vP2m">
          <node concept="3rGOSV" id="1Pi9pJzYozt" role="2ShVmc">
            <node concept="3uibUv" id="1Pi9pJzY_gS" role="3rHrn6">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3uibUv" id="1Pi9pJzYFgH" role="3rHtpV">
              <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="1Pi9pJzYRNy" role="jymVt">
        <property role="TrG5h" value="updatesList" />
        <node concept="3Tm6S6" id="1Pi9pJzYRNz" role="1B3o_S" />
        <node concept="_YKpA" id="1Pi9pJzYY7q" role="1tU5fm">
          <node concept="3uibUv" id="1Pi9pJzZzFF" role="_ZDj9">
            <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
          </node>
        </node>
        <node concept="2ShNRf" id="1Pi9pJzYZ0n" role="33vP2m">
          <node concept="Tc6Ow" id="1Pi9pJzYZvW" role="2ShVmc">
            <node concept="3uibUv" id="1Pi9pJ$09W1" role="HW$YZ">
              <ref role="3uigEE" node="2gPa6JIZsdd" resolve="RulesPlanHandler.UpdateRec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1Pi9pJzMK11" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1Pi9pJzMBRO" role="jymVt" />
    <node concept="312cEu" id="2gPa6JIZsdd" role="jymVt">
      <property role="TrG5h" value="UpdateRec" />
      <node concept="312cEg" id="2gPa6JIZMvp" role="jymVt">
        <property role="TrG5h" value="rules" />
        <node concept="3Tm6S6" id="2gPa6JIZMvq" role="1B3o_S" />
        <node concept="_YKpA" id="2gPa6JJ11ft" role="1tU5fm">
          <node concept="3uibUv" id="2gPa6JJ11fv" role="_ZDj9">
            <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="2gPa6JIZNaS" role="jymVt">
        <property role="TrG5h" value="reqNodes" />
        <node concept="3Tm6S6" id="2gPa6JIZNaT" role="1B3o_S" />
        <node concept="3vKaQO" id="2gPa6JIZNOs" role="1tU5fm">
          <node concept="3Tqbb2" id="2gPa6JIZNOP" role="3O5elw" />
        </node>
      </node>
      <node concept="312cEg" id="2gPa6JJjEUW" role="jymVt">
        <property role="TrG5h" value="hasData" />
        <node concept="3Tm6S6" id="2gPa6JJjEUX" role="1B3o_S" />
        <node concept="10P_77" id="2gPa6JJjSYD" role="1tU5fm" />
        <node concept="3clFbT" id="2gPa6JJjT5z" role="33vP2m" />
      </node>
      <node concept="312cEg" id="2gPa6JJ4EYN" role="jymVt">
        <property role="TrG5h" value="isValidated" />
        <node concept="3Tm6S6" id="2gPa6JJ4EYO" role="1B3o_S" />
        <node concept="10P_77" id="2gPa6JJ4T$r" role="1tU5fm" />
        <node concept="3clFbT" id="2gPa6JJ59st" role="33vP2m" />
      </node>
      <node concept="312cEg" id="2gPa6JJ59sS" role="jymVt">
        <property role="TrG5h" value="isStatic" />
        <node concept="3Tm6S6" id="2gPa6JJ59sT" role="1B3o_S" />
        <node concept="10P_77" id="2gPa6JJ5kGg" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="2gPa6JJjejM" role="jymVt" />
      <node concept="3clFbW" id="2gPa6JIZOt8" role="jymVt">
        <node concept="37vLTG" id="2gPa6JJ5nRO" role="3clF46">
          <property role="TrG5h" value="isStatic" />
          <node concept="10P_77" id="2gPa6JJ5o3S" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="2gPa6JIZOta" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JIZSx_" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JIZOtc" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJ5o6g" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJ5oYU" role="3clFbG">
              <node concept="37vLTw" id="2gPa6JJ5p4U" role="37vLTx">
                <ref role="3cqZAo" node="2gPa6JJ5nRO" resolve="isStatic" />
              </node>
              <node concept="2OqwBi" id="2gPa6JJ5oni" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJ5o6e" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJ5ovU" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JJ59sS" resolve="isStatic" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JIZSi0" role="jymVt">
        <property role="TrG5h" value="rules" />
        <node concept="_YKpA" id="2gPa6JJ214p" role="3clF45">
          <node concept="3uibUv" id="2gPa6JJ214r" role="_ZDj9">
            <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
          </node>
        </node>
        <node concept="3Tm1VV" id="2gPa6JIZSXs" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JIZSi4" role="3clF47">
          <node concept="3clFbF" id="2gPa6JIZUrW" role="3cqZAp">
            <node concept="37vLTw" id="2gPa6JIZUrV" role="3clFbG">
              <ref role="3cqZAo" node="2gPa6JIZMvp" resolve="rules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JIZXdg" role="jymVt">
        <property role="TrG5h" value="requiredNodes" />
        <node concept="3vKaQO" id="2gPa6JIZYx8" role="3clF45">
          <node concept="3Tqbb2" id="2gPa6JIZZaK" role="3O5elw" />
        </node>
        <node concept="3Tm1VV" id="2gPa6JIZXRs" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JIZXdk" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJ01ng" role="3cqZAp">
            <node concept="37vLTw" id="2gPa6JJ01nf" role="3clFbG">
              <ref role="3cqZAo" node="2gPa6JIZNaS" resolve="reqNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JJ5Ede" role="jymVt">
        <property role="TrG5h" value="isStatic" />
        <node concept="10P_77" id="2gPa6JJ5PwY" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JJ6Jhz" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JJ5Edi" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJ6xG_" role="3cqZAp">
            <node concept="37vLTw" id="2gPa6JJ6xG$" role="3clFbG">
              <ref role="3cqZAo" node="2gPa6JJ59sS" resolve="isStatic" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JJ77$8" role="jymVt">
        <property role="TrG5h" value="isValidated" />
        <node concept="10P_77" id="2gPa6JJ8bAJ" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JJ7kh5" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JJ77$c" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJ7WAh" role="3cqZAp">
            <node concept="37vLTw" id="2gPa6JJ7WAg" role="3clFbG">
              <ref role="3cqZAo" node="2gPa6JJ4EYN" resolve="isValidated" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JJ8_Mm" role="jymVt">
        <property role="TrG5h" value="setValidated" />
        <node concept="3cqZAl" id="2gPa6JJ93CC" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JJ8O42" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JJ8_Mq" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJ9DR7" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJamza" role="3clFbG">
              <node concept="3clFbT" id="2gPa6JJa$Ot" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2gPa6JJ9TBu" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJ9DR6" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJa5Pd" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JJ4EYN" resolve="isValidated" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JJP6Nh" role="jymVt">
        <property role="TrG5h" value="clearValidated" />
        <node concept="3cqZAl" id="2gPa6JJP6Ni" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JJP6Nj" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JJP6Nk" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJP6Nl" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJP6Nm" role="3clFbG">
              <node concept="3clFbT" id="2gPa6JJP6Nn" role="37vLTx" />
              <node concept="2OqwBi" id="2gPa6JJP6No" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJP6Np" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJP6Nq" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JJ4EYN" resolve="isValidated" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JJhpOQ" role="jymVt">
        <property role="TrG5h" value="hasData" />
        <node concept="10P_77" id="2gPa6JJhP_4" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JJhCuj" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JJhpOU" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJk7UG" role="3cqZAp">
            <node concept="37vLTw" id="2gPa6JJk7UF" role="3clFbG">
              <ref role="3cqZAo" node="2gPa6JJjEUW" resolve="hasData" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JJcvn2" role="jymVt">
        <property role="TrG5h" value="setData" />
        <node concept="37vLTG" id="2gPa6JIZP4G" role="3clF46">
          <property role="TrG5h" value="rules" />
          <node concept="_YKpA" id="2gPa6JJ0ZT$" role="1tU5fm">
            <node concept="3uibUv" id="2gPa6JJ0ZTA" role="_ZDj9">
              <ref role="3uigEE" to="ugy2:7nPD14OaO1O" resolve="RuleEx" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2gPa6JIZP78" role="3clF46">
          <property role="TrG5h" value="requiredNodes" />
          <node concept="3vKaQO" id="2gPa6JIZP7Y" role="1tU5fm">
            <node concept="3Tqbb2" id="2gPa6JIZP8m" role="3O5elw" />
          </node>
        </node>
        <node concept="3cqZAl" id="2gPa6JJcvn4" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JJcEOp" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JJcvn6" role="3clF47">
          <node concept="3clFbF" id="2gPa6JIZPas" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JIZPSp" role="3clFbG">
              <node concept="37vLTw" id="2gPa6JIZPUB" role="37vLTx">
                <ref role="3cqZAo" node="2gPa6JIZP4G" resolve="rules" />
              </node>
              <node concept="2OqwBi" id="2gPa6JIZPg0" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JIZPar" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JIZPmd" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JIZMvp" resolve="rules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JIZQ3g" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JIZR4Q" role="3clFbG">
              <node concept="37vLTw" id="2gPa6JIZRjm" role="37vLTx">
                <ref role="3cqZAo" node="2gPa6JIZP78" resolve="requiredNodes" />
              </node>
              <node concept="2OqwBi" id="2gPa6JIZQes" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JIZQ3e" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JIZQqn" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JIZNaS" resolve="reqNodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JJg5Bm" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJgLSw" role="3clFbG">
              <node concept="3clFbT" id="2gPa6JJgZ17" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2gPa6JJgkmT" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJg5Bk" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJgxLS" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JJ4EYN" resolve="isValidated" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JJk$3O" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJlf0g" role="3clFbG">
              <node concept="3clFbT" id="2gPa6JJlvu_" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2gPa6JJkN4N" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJk$3M" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJl0tk" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JJjEUW" resolve="hasData" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2gPa6JJaZG2" role="jymVt">
        <property role="TrG5h" value="clearData" />
        <node concept="3cqZAl" id="2gPa6JJaZG4" role="3clF45" />
        <node concept="3Tm1VV" id="2gPa6JJbfm_" role="1B3o_S" />
        <node concept="3clFbS" id="2gPa6JJaZG6" role="3clF47">
          <node concept="3clFbF" id="2gPa6JJbS3a" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJepbW" role="3clFbG">
              <node concept="10Nm6u" id="2gPa6JJeAOM" role="37vLTx" />
              <node concept="2OqwBi" id="2gPa6JJc4Zy" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJbS39" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJeb3U" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JIZMvp" resolve="rules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JJeOc3" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJfxxS" role="3clFbG">
              <node concept="10Nm6u" id="2gPa6JJfFA8" role="37vLTx" />
              <node concept="2OqwBi" id="2gPa6JJf4$P" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJeOc1" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJfjlx" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JIZNaS" resolve="reqNodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JJlU8y" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJmxyu" role="3clFbG">
              <node concept="3clFbT" id="2gPa6JJmIga" role="37vLTx" />
              <node concept="2OqwBi" id="2gPa6JJm5NV" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJlU8w" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJminP" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JJjEUW" resolve="hasData" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JJnaHz" role="3cqZAp">
            <node concept="37vLTI" id="2gPa6JJoyZx" role="3clFbG">
              <node concept="3clFbT" id="2gPa6JJoLzi" role="37vLTx" />
              <node concept="2OqwBi" id="2gPa6JJnp$N" role="37vLTJ">
                <node concept="Xjq3P" id="2gPa6JJnaHx" role="2Oq$k0" />
                <node concept="2OwXpG" id="2gPa6JJohht" role="2OqNvi">
                  <ref role="2Oxat5" node="2gPa6JJ4EYN" resolve="isValidated" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2gPa6JIZGUK" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="cmlg9NgZ6M" role="jymVt" />
    <node concept="312cEg" id="1XKnVP8Viq" role="jymVt">
      <property role="TrG5h" value="auxPlanBuilders" />
      <node concept="3Tm6S6" id="1XKnVP8Vir" role="1B3o_S" />
      <node concept="3rvAFt" id="1XKnVP940s" role="1tU5fm">
        <node concept="3uibUv" id="1XKnVP95fY" role="3rvQeY">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="1XKnVP940u" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="1XKnVP9beG" role="33vP2m">
        <node concept="3rGOSV" id="1XKnVP9bcV" role="2ShVmc">
          <node concept="3uibUv" id="1XKnVP9bcW" role="3rHrn6">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="1XKnVP9bcX" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7DvO2M9Uaig" role="jymVt">
      <property role="TrG5h" value="rulePlanBuilders" />
      <node concept="3Tm6S6" id="7DvO2M9Uaih" role="1B3o_S" />
      <node concept="3rvAFt" id="7DvO2M9Uaii" role="1tU5fm">
        <node concept="3uibUv" id="1XKnVP758O" role="3rvQeY">
          <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
        <node concept="3uibUv" id="7DvO2M9Uaik" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="7DvO2M9Uail" role="33vP2m">
        <node concept="32Fmki" id="1Pi9pJ$efCe" role="2ShVmc">
          <node concept="3uibUv" id="1Pi9pJ$et84" role="3rHrn6">
            <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
          <node concept="3uibUv" id="1Pi9pJ$eLZg" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6OXbTDy15hb" role="jymVt">
      <property role="TrG5h" value="queryPlanBuilders" />
      <node concept="3Tm6S6" id="6OXbTDy15hc" role="1B3o_S" />
      <node concept="3rvAFt" id="6OXbTDy15UP" role="1tU5fm">
        <node concept="3uibUv" id="1XKnVP5yWX" role="3rvQeY">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="6OXbTDzvogx" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="6OXbTDy164P" role="33vP2m">
        <node concept="3rGOSV" id="6OXbTDy163E" role="2ShVmc">
          <node concept="3uibUv" id="1XKnVP5ABa" role="3rHrn6">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="6OXbTDzvor7" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="RulesPlanHandler.PlanBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2hQbw6HSS4K" role="jymVt">
      <property role="TrG5h" value="lastResult" />
      <node concept="3Tm6S6" id="2hQbw6HSS4L" role="1B3o_S" />
      <node concept="3uibUv" id="2hQbw6HT3UL" role="1tU5fm">
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="10Nm6u" id="2hQbw6HT6iu" role="33vP2m" />
    </node>
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
      <node concept="2tJIrI" id="1eEe91P1UxR" role="jymVt" />
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
                  <node concept="1bVj0M" id="4UTrqZZNWZV" role="kMx8a">
                    <node concept="3clFbS" id="4UTrqZZNWZW" role="1bW5cS">
                      <node concept="3clFbH" id="1eEe91P40hC" role="3cqZAp" />
                      <node concept="3cpWs8" id="4UTrqZZNWZX" role="3cqZAp">
                        <node concept="3cpWsn" id="4UTrqZZNWZY" role="3cpWs9">
                          <property role="TrG5h" value="queue" />
                          <node concept="3O6Q9H" id="4UTrqZZNWZZ" role="1tU5fm">
                            <node concept="3Tqbb2" id="1eEe91P52Er" role="3O5elw" />
                          </node>
                          <node concept="2ShNRf" id="4UTrqZZNX01" role="33vP2m">
                            <node concept="2Jqq0_" id="4UTrqZZNX02" role="2ShVmc">
                              <node concept="3Tqbb2" id="IFW4V3qBZP" role="HW$YZ" />
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
                            <node concept="37vLTw" id="3IIf9O_iBeR" role="25WWJ7">
                              <ref role="3cqZAo" node="4UTrqZZNZvj" resolve="startFrom" />
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
                              <node concept="2OqwBi" id="4UTrqZZNX0f" role="33vP2m">
                                <node concept="37vLTw" id="4UTrqZZNX0g" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                                </node>
                                <node concept="2Kt2Hk" id="4UTrqZZNX0h" role="2OqNvi" />
                              </node>
                              <node concept="3Tqbb2" id="IFW4V3qFLW" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="799SgOKwxHO" role="3cqZAp" />
                          <node concept="2n63Yl" id="4UTrqZZNX0j" role="3cqZAp">
                            <node concept="37vLTw" id="1eEe91P5Apw" role="2n6tg2">
                              <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="4UTrqZZNX0l" role="3cqZAp" />
                          <node concept="1DcWWT" id="4UTrqZZNX0m" role="3cqZAp">
                            <node concept="3clFbS" id="4UTrqZZNX0n" role="2LFqv$">
                              <node concept="3clFbJ" id="4UTrqZZO60T" role="3cqZAp">
                                <node concept="3clFbS" id="4UTrqZZO60V" role="3clFbx">
                                  <node concept="3N13vt" id="4UTrqZZO6ZA" role="3cqZAp" />
                                </node>
                                <node concept="1rXfSq" id="4UTrqZZO6nB" role="3clFbw">
                                  <ref role="37wK5l" node="4UTrqZZO4eL" resolve="skip" />
                                  <node concept="37vLTw" id="IFW4V3qPxv" role="37wK5m">
                                    <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="1eEe91P5F7x" role="3cqZAp" />
                              <node concept="3clFbF" id="4UTrqZZNX0I" role="3cqZAp">
                                <node concept="2OqwBi" id="4UTrqZZNX0J" role="3clFbG">
                                  <node concept="37vLTw" id="4UTrqZZNX0K" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4UTrqZZNWZY" resolve="queue" />
                                  </node>
                                  <node concept="2Ke9KJ" id="4UTrqZZNX0L" role="2OqNvi">
                                    <node concept="37vLTw" id="IFW4V3qSGk" role="25WWJ7">
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
                              <node concept="32TBzR" id="4UTrqZZNX0R" role="2OqNvi" />
                              <node concept="37vLTw" id="IFW4V3qIE9" role="2Oq$k0">
                                <ref role="3cqZAo" node="4UTrqZZNX0d" resolve="next" />
                              </node>
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
                  <node concept="3Tqbb2" id="IFW4V3qDFR" role="kMuH3" />
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
      </node>
      <node concept="16euLQ" id="4UTrqZZNWwV" role="16eVyc">
        <property role="TrG5h" value="S" />
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
          <node concept="3Tqbb2" id="IFW4V3qWu$" role="A3Ik2" />
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
                  <node concept="2GrUjf" id="IFW4V3qZNB" role="37wK5m">
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
              <node concept="37vLTw" id="IFW4V3r8dd" role="37wK5m">
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
      </node>
    </node>
    <node concept="16euLQ" id="tIwzd1IC9f" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="2tJIrI" id="7DvO2M9_As1" role="jymVt" />
  </node>
  <node concept="312cEu" id="70Wv0dJhQb2">
    <property role="TrG5h" value="OriginIndex" />
    <node concept="2tJIrI" id="70Wv0dJhQb4" role="jymVt" />
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
                            <ref role="3cqZAo" node="6E5fMGvfKQm" resolve="it" />
                          </node>
                          <node concept="iZEcu" id="42eP3ws2UQq" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="6E5fMGvfKQm" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6E5fMGvfKQn" role="1tU5fm" />
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
          <property role="1dT_AB" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjY_ErV" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY_ErW" role="1dT_Ay">
          <property role="1dT_AB" value="A node that served as an input is an origin node." />
        </node>
      </node>
      <node concept="TZ5HA" id="3mytCjY_JAX" role="TZ5H$">
        <node concept="1dT_AC" id="3mytCjY_JAY" role="1dT_Ay">
          <property role="1dT_AB" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="TZ5HA" id="4nDRG5D7Fwl" role="TZ5H$">
        <node concept="1dT_AC" id="4nDRG5D7Fwm" role="1dT_Ay">
          <property role="1dT_AB" value="A node that is referenced from an origin node and is located within the same root is a relevant node." />
        </node>
      </node>
      <node concept="TZ5HA" id="4xOVfZ_CaRR" role="TZ5H$">
        <node concept="1dT_AC" id="4xOVfZ_CaA2" role="1dT_Ay">
          <property role="1dT_AB" value="Only the same root is considered because" />
        </node>
        <node concept="1dT_AC" id="4xOVfZ_CaJ2" role="1dT_Ay">
          <property role="1dT_AB" value="relevant nodes can be used for reporting errors." />
        </node>
        <node concept="1dT_AC" id="4xOVfZ_CaRS" role="1dT_Ay">
          <property role="1dT_AB" value="" />
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
              <ref role="3cqZAo" node="cmlg9OLhb5" resolve="planHandler" />
            </node>
            <node concept="2OqwBi" id="cmlg9OLl2O" role="37vLTJ">
              <node concept="Xjq3P" id="cmlg9OLkT0" role="2Oq$k0" />
              <node concept="2OwXpG" id="cmlg9OLn_U" role="2OqNvi">
                <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="planHandler" />
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
                <ref role="2Oxat5" node="cmlg9OIRky" resolve="ruleProcessingSession" />
              </node>
            </node>
            <node concept="37vLTw" id="zL5ZaNC2ML" role="37vLTx">
              <ref role="3cqZAo" node="cmlg9OINa8" resolve="ruleProcessingSession" />
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
        <node concept="3clFbF" id="23Habm3ss6v" role="3cqZAp">
          <node concept="37vLTI" id="23Habm3ss6x" role="3clFbG">
            <node concept="2OqwBi" id="23Habm3sDnR" role="37vLTJ">
              <node concept="Xjq3P" id="23Habm3sDCt" role="2Oq$k0" />
              <node concept="2OwXpG" id="23Habm3sDnU" role="2OqNvi">
                <ref role="2Oxat5" node="23Habm3ss6r" resolve="profiler" />
              </node>
            </node>
            <node concept="37vLTw" id="23Habm3ss6_" role="37vLTx">
              <ref role="3cqZAo" node="23Habm3snHP" resolve="profiler" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9OLhb5" role="3clF46">
        <property role="TrG5h" value="planHandler" />
        <node concept="3uibUv" id="cmlg9OLiZ1" role="1tU5fm">
          <ref role="3uigEE" node="7DvO2M9Uago" resolve="RulesPlanHandler" />
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9OJCww" role="3clF46">
        <property role="TrG5h" value="applicationSession" />
        <node concept="3uibUv" id="cmlg9OJEno" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="37vLTG" id="cmlg9OINa8" role="3clF46">
        <property role="TrG5h" value="ruleProcessingSession" />
        <node concept="3uibUv" id="zL5ZaNC2BV" role="1tU5fm">
          <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
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
        </node>
      </node>
      <node concept="37vLTG" id="23Habm3snHP" role="3clF46">
        <property role="TrG5h" value="profiler" />
        <node concept="3uibUv" id="23Habm3snHQ" role="1tU5fm">
          <ref role="3uigEE" to="bid0:~Profiler" resolve="Profiler" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6i42QSspmaL" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7ncaN" role="jymVt">
      <property role="TrG5h" value="processAux" />
      <node concept="3uibUv" id="7nkyKX7nfei" role="3clF45">
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="cmlg9O$qY1" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7ncaR" role="3clF47">
        <node concept="3cpWs8" id="2Z9Itkddll5" role="3cqZAp">
          <node concept="3cpWsn" id="2Z9Itkddll6" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="2Z9Itkddll7" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oD" role="33vP2m">
              <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1XKnVPc5Vg" role="3cqZAp" />
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
                      <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                      <node concept="2YIFZM" id="7TC1Xcd$6oR" role="37wK5m">
                        <ref role="37wK5l" to="xydz:5X1yxJHYPm2" resolve="FAIL" />
                        <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
            <node concept="3cpWs8" id="6i42QSskaRB" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSskaRC" role="3cpWs9">
                <property role="TrG5h" value="mainRulesBuilder" />
                <node concept="3uibUv" id="6i42QSskaR_" role="1tU5fm">
                  <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
                <node concept="2ShNRf" id="6i42QSskaRD" role="33vP2m">
                  <node concept="1pGfFk" id="6i42QSskaRE" role="2ShVmc">
                    <ref role="37wK5l" to="ugy2:5yr01fE1Jnt" resolve="RuleBuilder" />
                    <node concept="10Nm6u" id="5yr01fE2e5j" role="37wK5m" />
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
                  <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainRulesBuilder" />
                </node>
                <node concept="liA8E" id="6i42QSskfKn" role="2OqNvi">
                  <ref role="37wK5l" to="ugy2:7eGEHDlc$bq" resolve="appendHeadReplaced" />
                  <node concept="37vLTw" id="6i42QSskgaA" role="37wK5m">
                    <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6i42QSskgAG" role="3cqZAp">
              <node concept="2OqwBi" id="6i42QSskgZE" role="3clFbG">
                <node concept="37vLTw" id="6i42QSskgAE" role="2Oq$k0">
                  <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainRulesBuilder" />
                </node>
                <node concept="liA8E" id="6i42QSskhfn" role="2OqNvi">
                  <ref role="37wK5l" to="ugy2:7eGEHDlc$aw" resolve="appendBody" />
                  <node concept="2ShNRf" id="6i42QSskpry" role="37wK5m">
                    <node concept="1pGfFk" id="6i42QSskq5F" role="2ShVmc">
                      <ref role="37wK5l" to="tpfl:4xBopTzrPWl" resolve="AssertPredicate" />
                      <node concept="10M0yZ" id="6i42QSskqiG" role="37wK5m">
                        <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                        <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5F2qBBEuDVN" role="3cqZAp">
              <node concept="3cpWsn" id="5F2qBBEuDVO" role="3cpWs9">
                <property role="TrG5h" value="dummyMainTemplate" />
                <node concept="3uibUv" id="5F2qBBEuDVP" role="1tU5fm">
                  <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="2ShNRf" id="5F2qBBEuEZW" role="33vP2m">
                  <node concept="1pGfFk" id="5F2qBBEuFvp" role="2ShVmc">
                    <ref role="37wK5l" to="ugy2:5F2qBBEufuQ" resolve="ConstRuleTemplate" />
                    <node concept="Xl_RD" id="5F2qBBEuFAr" role="37wK5m">
                      <property role="Xl_RC" value="main" />
                    </node>
                    <node concept="37vLTw" id="5F2qBBEuFPJ" role="37wK5m">
                      <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainRulesBuilder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1XKnVPbj6S" role="3cqZAp" />
            <node concept="3clFbF" id="1XKnVPlss5" role="3cqZAp">
              <node concept="2OqwBi" id="1XKnVPlss7" role="3clFbG">
                <node concept="37vLTw" id="1XKnVPlss8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tPOoeT4XhE" resolve="planHandler" />
                </node>
                <node concept="liA8E" id="1XKnVPlss9" role="2OqNvi">
                  <ref role="37wK5l" node="7DvO2M9Uahp" resolve="updateAuxRules" />
                  <node concept="37vLTw" id="5F2qBBEvaJ5" role="37wK5m">
                    <ref role="3cqZAo" node="5F2qBBEuDVO" resolve="dummyMainTemplate" />
                  </node>
                  <node concept="2ShNRf" id="1XKnVPlvCB" role="37wK5m">
                    <node concept="Tc6Ow" id="47oVduORjgv" role="2ShVmc">
                      <node concept="3uibUv" id="47oVduORjN9" role="HW$YZ">
                        <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                      <node concept="37vLTw" id="47oVduORkvF" role="HW$Y0">
                        <ref role="3cqZAo" node="6i42QSskaRC" resolve="mainRulesBuilder" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1XKnVPbVEb" role="3cqZAp" />
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
      <node concept="37vLTG" id="3VwM5b6awf7" role="3clF46">
        <property role="TrG5h" value="invalidatedOnly" />
        <node concept="10P_77" id="3VwM5b6aAXH" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4QPCta1bMC8" role="3clF45">
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4$YN6QuyBIN" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1bMCa" role="3clF47">
        <node concept="3cpWs8" id="4QPCta1bMCb" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1bMCc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4QPCta1bMCd" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="3VwM5b5YOTJ" role="33vP2m">
              <ref role="37wK5l" to="xydz:3VwM5b5YDoi" resolve="SKIP" />
              <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
        <node concept="3clFbJ" id="2hQbw6HAUJT" role="3cqZAp">
          <node concept="3clFbS" id="2hQbw6HAUJV" role="3clFbx">
            <node concept="3cpWs8" id="5HxDM7D9SVX" role="3cqZAp">
              <node concept="3cpWsn" id="5HxDM7D9SW0" role="3cpWs9">
                <property role="TrG5h" value="isPreamble" />
                <node concept="10P_77" id="5HxDM7D9SVV" role="1tU5fm" />
                <node concept="3clFbT" id="5HxDM7D9TJz" role="33vP2m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="23Habm3tYwn" role="3cqZAp" />
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
            <node concept="3cpWs8" id="23Habm3w7T_" role="3cqZAp">
              <node concept="3cpWsn" id="23Habm3w7TA" role="3cpWs9">
                <property role="TrG5h" value="token1" />
                <node concept="3uibUv" id="23Habm3w5t7" role="1tU5fm">
                  <ref role="3uigEE" to="bid0:~Token" resolve="Token" />
                </node>
                <node concept="2EnYce" id="23Habm3w7TB" role="33vP2m">
                  <node concept="37vLTw" id="23Habm3w7TC" role="2Oq$k0">
                    <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
                  </node>
                  <node concept="liA8E" id="23Habm3w7TD" role="2OqNvi">
                    <ref role="37wK5l" to="bid0:~Profiler.start(java.lang.String)" resolve="start" />
                    <node concept="Xl_RD" id="23Habm3w7TE" role="37wK5m">
                      <property role="Xl_RC" value="process rule templates (no input)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="23Habm3wxY1" role="3cqZAp" />
            <node concept="3cpWs8" id="2hQbw6Hwurj" role="3cqZAp">
              <node concept="3cpWsn" id="2hQbw6Hwurk" role="3cpWs9">
                <property role="TrG5h" value="allRuleTemplatesWithNoInput" />
                <node concept="A3Dl8" id="2hQbw6Hw1nD" role="1tU5fm">
                  <node concept="3uibUv" id="2hQbw6Hw1nQ" role="A3Ik2">
                    <ref role="3uigEE" to="ugy2:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                    <node concept="3qUE_q" id="2hQbw6Hw1nR" role="11_B2D">
                      <node concept="3uibUv" id="2hQbw6Hw1nS" role="3qUE_r">
                        <ref role="3uigEE" to="ugy2:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2hQbw6Hw$EL" role="33vP2m">
                  <node concept="37vLTw" id="2hQbw6HwxKK" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                  </node>
                  <node concept="liA8E" id="2hQbw6Hw_XT" role="2OqNvi">
                    <ref role="37wK5l" to="ugy2:5HVB6JR7NAD" resolve="memoize" />
                    <node concept="Xl_RD" id="2hQbw6HwASR" role="37wK5m">
                      <property role="Xl_RC" value="allRuleTemplatesWithNoInput" />
                    </node>
                    <node concept="1bVj0M" id="2hQbw6HwKjx" role="37wK5m">
                      <node concept="3clFbS" id="2hQbw6HwKjz" role="1bW5cS">
                        <node concept="3clFbF" id="2hQbw6HwKzM" role="3cqZAp">
                          <node concept="2OqwBi" id="2hQbw6Hwurl" role="3clFbG">
                            <node concept="2OqwBi" id="zL5ZaNBYOp" role="2Oq$k0">
                              <node concept="37vLTw" id="2hQbw6Hwurm" role="2Oq$k0">
                                <ref role="3cqZAo" node="cmlg9OIRky" resolve="ruleProcessingSession" />
                              </node>
                              <node concept="liA8E" id="zL5ZaNC0rO" role="2OqNvi">
                                <ref role="37wK5l" to="hano:20Ay2VeR9qk" resolve="ruleTemplates" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2hQbw6Hwurn" role="2OqNvi">
                              <ref role="37wK5l" to="hano:5NuEpF1qn9x" resolve="allRuleTemplatesWithNoInput" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="2hQbw6HATsN" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2Qe6u2cltUr" role="3cqZAp">
              <node concept="3cpWsn" id="2Qe6u2cltUs" role="3cpWs9">
                <property role="TrG5h" value="res_reqs" />
                <node concept="1LlUBW" id="2Qe6u2cltUt" role="1tU5fm">
                  <node concept="3uibUv" id="2Qe6u2cltUu" role="1Lm7xW">
                    <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
                  </node>
                  <node concept="3vKaQO" id="2Qe6u2cltUv" role="1Lm7xW">
                    <node concept="3Tqbb2" id="2Qe6u2cltUw" role="3O5elw" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2Qe6u2cltUx" role="33vP2m">
                  <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyRuleTemplatesAndCollectRequired" />
                  <node concept="37vLTw" id="2hQbw6Hwuro" role="37wK5m">
                    <ref role="3cqZAo" node="2hQbw6Hwurk" resolve="allRuleTemplatesWithNoInput" />
                  </node>
                  <node concept="10Nm6u" id="2Qe6u2cltUB" role="37wK5m" />
                  <node concept="3clFbT" id="xaaVXviDd8" role="37wK5m" />
                  <node concept="37vLTw" id="5HxDM7D9TSc" role="37wK5m">
                    <ref role="3cqZAo" node="5HxDM7D9SW0" resolve="isPreamble" />
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
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                    <node concept="1LFfDK" id="2Qe6u2clsyS" role="37wK5m">
                      <node concept="3cmrfG" id="2Qe6u2clsJr" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="2Qe6u2clrym" role="1LFl5Q">
                        <ref role="3cqZAo" node="2Qe6u2cltUs" resolve="res_reqs" />
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
                      <ref role="3cqZAo" node="2Qe6u2cltUs" resolve="res_reqs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="23Habm3xyA9" role="3cqZAp" />
            <node concept="3clFbF" id="23Habm3$Kbr" role="3cqZAp">
              <node concept="2EnYce" id="23Habm3$Kbs" role="3clFbG">
                <node concept="37vLTw" id="23Habm3$Kbt" role="2Oq$k0">
                  <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
                </node>
                <node concept="liA8E" id="23Habm3$Kbu" role="2OqNvi">
                  <ref role="37wK5l" to="bid0:~Profiler.end(jetbrains.mps.logic.reactor.util.Token)" resolve="end" />
                  <node concept="37vLTw" id="23Habm3$Kbv" role="37wK5m">
                    <ref role="3cqZAo" node="23Habm3w7TA" resolve="token1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="23Habm3_dz7" role="3cqZAp" />
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
                <node concept="3oM_SD" id="5HxDM7DazvJ" role="1PaTwD">
                  <property role="3oM_SC" value="initially" />
                </node>
                <node concept="3oM_SD" id="5HxDM7DazvW" role="1PaTwD">
                  <property role="3oM_SC" value="required" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="23Habm3$kb1" role="3cqZAp">
              <node concept="3cpWsn" id="23Habm3$kb2" role="3cpWs9">
                <property role="TrG5h" value="token2" />
                <node concept="3uibUv" id="23Habm3$kb3" role="1tU5fm">
                  <ref role="3uigEE" to="bid0:~Token" resolve="Token" />
                </node>
                <node concept="2EnYce" id="23Habm3$kb4" role="33vP2m">
                  <node concept="37vLTw" id="23Habm3$kb5" role="2Oq$k0">
                    <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
                  </node>
                  <node concept="liA8E" id="23Habm3$kb6" role="2OqNvi">
                    <ref role="37wK5l" to="bid0:~Profiler.start(java.lang.String)" resolve="start" />
                    <node concept="Xl_RD" id="23Habm3$kb7" role="37wK5m">
                      <property role="Xl_RC" value="process required (no input)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="23Habm3xacg" role="3cqZAp" />
            <node concept="3cpWs8" id="5HxDM7D5Ykm" role="3cqZAp">
              <node concept="3cpWsn" id="5HxDM7D5Ykn" role="3cpWs9">
                <property role="TrG5h" value="visited" />
                <node concept="3vKaQO" id="5HxDM7D5Yko" role="1tU5fm">
                  <node concept="3Tqbb2" id="5HxDM7D5Ykp" role="3O5elw" />
                </node>
                <node concept="2ShNRf" id="5HxDM7D5WHc" role="33vP2m">
                  <node concept="2i4dXS" id="5HxDM7D8SNf" role="2ShVmc">
                    <node concept="3Tqbb2" id="5HxDM7D5Xzg" role="HW$YZ" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5HxDM7D5QJ3" role="3cqZAp">
              <node concept="37vLTI" id="5HxDM7D5RrK" role="3clFbG">
                <node concept="37vLTw" id="5HxDM7D5QJ1" role="37vLTJ">
                  <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
                </node>
                <node concept="2OqwBi" id="5HxDM7D5RUm" role="37vLTx">
                  <node concept="37vLTw" id="5HxDM7D5RUn" role="2Oq$k0">
                    <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
                  </node>
                  <node concept="liA8E" id="5HxDM7D5RUo" role="2OqNvi">
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                    <node concept="1rXfSq" id="5HxDM7D5RUp" role="37wK5m">
                      <ref role="37wK5l" node="tIwzd1MM22" resolve="processRequired" />
                      <node concept="37vLTw" id="5HxDM7D8W7g" role="37wK5m">
                        <ref role="3cqZAo" node="4hQVL4fbdNS" resolve="required" />
                      </node>
                      <node concept="37vLTw" id="5HxDM7D5Zoq" role="37wK5m">
                        <ref role="3cqZAo" node="5HxDM7D5Ykn" resolve="visited" />
                      </node>
                      <node concept="37vLTw" id="5HxDM7D9UrY" role="37wK5m">
                        <ref role="3cqZAo" node="5HxDM7D9SW0" resolve="isPreamble" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="23Habm3xqoY" role="3cqZAp" />
            <node concept="3clFbF" id="23Habm3uETv" role="3cqZAp">
              <node concept="2EnYce" id="23Habm3uXBJ" role="3clFbG">
                <node concept="37vLTw" id="23Habm3uETt" role="2Oq$k0">
                  <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
                </node>
                <node concept="liA8E" id="23Habm3v6pd" role="2OqNvi">
                  <ref role="37wK5l" to="bid0:~Profiler.end(jetbrains.mps.logic.reactor.util.Token)" resolve="end" />
                  <node concept="37vLTw" id="23Habm3wEI$" role="37wK5m">
                    <ref role="3cqZAo" node="23Habm3$kb2" resolve="token2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2hQbw6HYQOY" role="3clFbw">
            <node concept="2OqwBi" id="2hQbw6HU0SZ" role="3uHU7B">
              <node concept="37vLTw" id="2hQbw6HTZqA" role="2Oq$k0">
                <ref role="3cqZAo" node="6tPOoeT4XhE" resolve="planHandler" />
              </node>
              <node concept="liA8E" id="2hQbw6HU2Gc" role="2OqNvi">
                <ref role="37wK5l" node="2hQbw6HTiY$" resolve="lastResult" />
              </node>
            </node>
            <node concept="10Nm6u" id="2hQbw6HWZn9" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="5HxDM7D61eM" role="3cqZAp" />
        <node concept="3SKdUt" id="5HxDM7D60NC" role="3cqZAp">
          <node concept="1PaTwC" id="5HxDM7D60ND" role="1aUNEU">
            <node concept="3oM_SD" id="5HxDM7D60NE" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="5HxDM7D61dx" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="5HxDM7D61d$" role="1PaTwD">
              <property role="3oM_SC" value="input" />
            </node>
            <node concept="3oM_SD" id="5HxDM7Dazwa" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="5HxDM7D61dK" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5HxDM7D61dX" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5HxDM7D61ej" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
            <node concept="3oM_SD" id="5HxDM7D61eq" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="23Habm3wOOl" role="3cqZAp">
          <node concept="3cpWsn" id="23Habm3wOOm" role="3cpWs9">
            <property role="TrG5h" value="token3" />
            <node concept="3uibUv" id="23Habm3wLej" role="1tU5fm">
              <ref role="3uigEE" to="bid0:~Token" resolve="Token" />
            </node>
            <node concept="2EnYce" id="23Habm3wOOn" role="33vP2m">
              <node concept="37vLTw" id="23Habm3wOOo" role="2Oq$k0">
                <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
              </node>
              <node concept="liA8E" id="23Habm3wOOp" role="2OqNvi">
                <ref role="37wK5l" to="bid0:~Profiler.start(java.lang.String)" resolve="start" />
                <node concept="Xl_RD" id="23Habm3wOOq" role="37wK5m">
                  <property role="Xl_RC" value="process rules (specified input)" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Habm3zs$T" role="3cqZAp" />
        <node concept="3cpWs8" id="17DrR$SPIhm" role="3cqZAp">
          <node concept="3cpWsn" id="17DrR$SPIhn" role="3cpWs9">
            <property role="TrG5h" value="skip" />
            <node concept="10P_77" id="17DrR$SPkMX" role="1tU5fm" />
            <node concept="1Wc70l" id="17DrR$SSuda" role="33vP2m">
              <node concept="1Wc70l" id="17DrR$SPIho" role="3uHU7B">
                <node concept="37vLTw" id="17DrR$SPIhp" role="3uHU7B">
                  <ref role="3cqZAo" node="3VwM5b6awf7" resolve="invalidatedOnly" />
                </node>
                <node concept="2OqwBi" id="17DrR$SPIhq" role="3uHU7w">
                  <node concept="2OqwBi" id="17DrR$SPIhr" role="2Oq$k0">
                    <node concept="37vLTw" id="17DrR$SPIhs" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                    </node>
                    <node concept="liA8E" id="17DrR$SPIht" role="2OqNvi">
                      <ref role="37wK5l" node="3DPJ8QIziiQ" resolve="invalidatedSet" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="17DrR$SPIhu" role="2OqNvi" />
                </node>
              </node>
              <node concept="2OqwBi" id="17DrR$SSw1C" role="3uHU7w">
                <node concept="2OqwBi" id="17DrR$SSw1D" role="2Oq$k0">
                  <node concept="37vLTw" id="17DrR$SSw1E" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                  </node>
                  <node concept="liA8E" id="17DrR$SSy2I" role="2OqNvi">
                    <ref role="37wK5l" node="17DrR$SS7Jv" resolve="introducedSet" />
                  </node>
                </node>
                <node concept="1v1jN8" id="17DrR$SSw1G" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VwM5b5J6_6" role="3cqZAp">
          <node concept="3clFbS" id="3VwM5b5J6_8" role="3clFbx">
            <node concept="3clFbF" id="4QPCta1bMCp" role="3cqZAp">
              <node concept="37vLTI" id="4QPCta1bMCq" role="3clFbG">
                <node concept="2OqwBi" id="4QPCta1bMCr" role="37vLTx">
                  <node concept="37vLTw" id="4QPCta1bMCs" role="2Oq$k0">
                    <ref role="3cqZAo" node="4QPCta1bMCc" resolve="result" />
                  </node>
                  <node concept="liA8E" id="4QPCta1bMCt" role="2OqNvi">
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
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
                        <node concept="2ShNRf" id="2hQbw6HB4BX" role="37wK5m">
                          <node concept="2i4dXS" id="2hQbw6HB6J5" role="2ShVmc">
                            <node concept="3Tqbb2" id="2hQbw6HB7e7" role="HW$YZ" />
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
          </node>
          <node concept="3fqX7Q" id="3VwM5b64e8w" role="3clFbw">
            <node concept="37vLTw" id="17DrR$SPIhv" role="3fr31v">
              <ref role="3cqZAo" node="17DrR$SPIhn" resolve="skip" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Habm3zjUM" role="3cqZAp" />
        <node concept="3clFbF" id="23Habm3vvRu" role="3cqZAp">
          <node concept="2EnYce" id="23Habm3vJP4" role="3clFbG">
            <node concept="37vLTw" id="23Habm3vvRs" role="2Oq$k0">
              <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
            </node>
            <node concept="liA8E" id="23Habm3vRsX" role="2OqNvi">
              <ref role="37wK5l" to="bid0:~Profiler.end(jetbrains.mps.logic.reactor.util.Token)" resolve="end" />
              <node concept="37vLTw" id="23Habm3ximU" role="37wK5m">
                <ref role="3cqZAo" node="23Habm3wOOm" resolve="token3" />
              </node>
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
          <ref role="3uigEE" to="ugy2:6OXbTD$iNPP" resolve="QueryTemplate" />
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
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4$YN6QuyIUM" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDxOzxx" role="3clF47">
        <node concept="3cpWs8" id="1C_jAsq3YPc" role="3cqZAp">
          <node concept="3cpWsn" id="1C_jAsq3YPd" role="3cpWs9">
            <property role="TrG5h" value="res_reqs" />
            <node concept="1LlUBW" id="1C_jAsq3VSa" role="1tU5fm">
              <node concept="3uibUv" id="1C_jAsq3VSl" role="1Lm7xW">
                <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
              </node>
              <node concept="_YKpA" id="1C_jAsq3VSj" role="1Lm7xW">
                <node concept="3Tqbb2" id="1C_jAsq3VSk" role="_ZDj9" />
              </node>
            </node>
            <node concept="1rXfSq" id="1C_jAsq3YPe" role="33vP2m">
              <ref role="37wK5l" node="6OXbTDy1oEg" resolve="applyQueryTemplates" />
              <node concept="37vLTw" id="1C_jAsq3YPf" role="37wK5m">
                <ref role="3cqZAo" node="cmlg9OIsrb" resolve="queryTemplate" />
              </node>
              <node concept="37vLTw" id="1C_jAsq3YPg" role="37wK5m">
                <ref role="3cqZAo" node="5EDW3XEuhZd" resolve="query" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1C_jAsq5j9V" role="3cqZAp">
          <node concept="3cpWsn" id="1C_jAsq5j9W" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="1C_jAsq5ghJ" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="1LFfDK" id="1C_jAsq5j9X" role="33vP2m">
              <node concept="3cmrfG" id="1C_jAsq5j9Y" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="1C_jAsq5j9Z" role="1LFl5Q">
                <ref role="3cqZAo" node="1C_jAsq3YPd" resolve="res_reqs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1C_jAsq5MBj" role="3cqZAp">
          <node concept="3clFbS" id="1C_jAsq5MBl" role="3clFbx">
            <node concept="3clFbF" id="1C_jAsq6tUT" role="3cqZAp">
              <node concept="37vLTI" id="1C_jAsq6tUU" role="3clFbG">
                <node concept="37vLTw" id="1C_jAsq6tUV" role="37vLTJ">
                  <ref role="3cqZAo" node="1C_jAsq5j9W" resolve="result" />
                </node>
                <node concept="2OqwBi" id="1C_jAsq6tUW" role="37vLTx">
                  <node concept="37vLTw" id="1C_jAsq6tUX" role="2Oq$k0">
                    <ref role="3cqZAo" node="1C_jAsq5j9W" resolve="result" />
                  </node>
                  <node concept="liA8E" id="1C_jAsq6tUY" role="2OqNvi">
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                    <node concept="1rXfSq" id="1C_jAsq6tUZ" role="37wK5m">
                      <ref role="37wK5l" node="tIwzd1MM22" resolve="processRequired" />
                      <node concept="1LFfDK" id="1C_jAsq6I3m" role="37wK5m">
                        <node concept="3cmrfG" id="1C_jAsq6Rg3" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="1C_jAsq6tV0" role="1LFl5Q">
                          <ref role="3cqZAo" node="1C_jAsq3YPd" resolve="res_reqs" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="1C_jAsq70rd" role="37wK5m">
                        <node concept="2i4dXS" id="1C_jAsq7djT" role="2ShVmc">
                          <node concept="3Tqbb2" id="1C_jAsq80uz" role="HW$YZ" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="1C_jAsq89vz" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1C_jAsq60MJ" role="3clFbw">
            <node concept="37vLTw" id="1C_jAsq5T_n" role="2Oq$k0">
              <ref role="3cqZAo" node="1C_jAsq5j9W" resolve="result" />
            </node>
            <node concept="liA8E" id="1C_jAsq6a68" role="2OqNvi">
              <ref role="37wK5l" to="xydz:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1C_jAsq4Szp" role="3cqZAp">
          <node concept="37vLTw" id="1C_jAsq5ja0" role="3clFbG">
            <ref role="3cqZAo" node="1C_jAsq5j9W" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEwI2i" role="16eVyc">
        <property role="TrG5h" value="Q" />
        <node concept="3uibUv" id="5EDW3XEwI2j" role="3ztrMU">
          <ref role="3uigEE" to="ugy2:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEwI2k" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5EDW3XEwI2l" role="3ztrMU">
          <ref role="3uigEE" to="ugy2:6R6MIbU8M46" resolve="QueryTemplate.Token" />
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
      <node concept="3uibUv" id="4QPCta1aZLv" role="3clF45">
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm6S6" id="4QPCta1aZLw" role="1B3o_S" />
      <node concept="3clFbS" id="4QPCta1aZLx" role="3clF47">
        <node concept="3clFbH" id="4tC1JBnsp4U" role="3cqZAp" />
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
            <property role="TrG5h" value="applyResult" />
            <node concept="3uibUv" id="4QPCta1aZLG" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
        <node concept="3clFbF" id="5HxDM7D76b9" role="3cqZAp">
          <node concept="2OqwBi" id="5HxDM7D7eZN" role="3clFbG">
            <node concept="37vLTw" id="5HxDM7D76b7" role="2Oq$k0">
              <ref role="3cqZAo" node="5HxDM7D6$xL" resolve="collectedVisited" />
            </node>
            <node concept="X8dFx" id="5HxDM7D7lgu" role="2OqNvi">
              <node concept="2OqwBi" id="2Qe6u2cmBf0" role="25WWJ7">
                <node concept="37vLTw" id="2Qe6u2cmBf1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
                </node>
                <node concept="2OwXpG" id="2Qe6u2cmBf2" role="2OqNvi">
                  <ref role="2Oxat5" node="4MqhgXU_1wg" resolve="visited" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="23Habm5QwsP" role="3cqZAp">
          <node concept="3cpWsn" id="23Habm5QwsQ" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="3uibUv" id="23Habm5QwsR" role="1tU5fm">
              <ref role="3uigEE" to="bid0:~Token" resolve="Token" />
            </node>
            <node concept="2EnYce" id="23Habm5QwsS" role="33vP2m">
              <node concept="37vLTw" id="23Habm5QwsT" role="2Oq$k0">
                <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
              </node>
              <node concept="liA8E" id="23Habm5QwsU" role="2OqNvi">
                <ref role="37wK5l" to="bid0:~Profiler.start(java.lang.String)" resolve="start" />
                <node concept="Xl_RD" id="23Habm5QwsV" role="37wK5m">
                  <property role="Xl_RC" value="process required (specified input)" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Habm5Qr5A" role="3cqZAp" />
        <node concept="3cpWs8" id="23Habm5RYmf" role="3cqZAp">
          <node concept="3cpWsn" id="23Habm5RYmg" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="23Habm5RVOA" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="23Habm5RYmh" role="33vP2m">
              <node concept="37vLTw" id="23Habm5RYmi" role="2Oq$k0">
                <ref role="3cqZAo" node="4QPCta1aZLF" resolve="applyResult" />
              </node>
              <node concept="liA8E" id="23Habm5RYmj" role="2OqNvi">
                <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                <node concept="1rXfSq" id="23Habm5RYmk" role="37wK5m">
                  <ref role="37wK5l" node="tIwzd1MM22" resolve="processRequired" />
                  <node concept="2OqwBi" id="23Habm5RYml" role="37wK5m">
                    <node concept="37vLTw" id="23Habm5RYmm" role="2Oq$k0">
                      <ref role="3cqZAo" node="4QPCta1aZL_" resolve="applyingResult" />
                    </node>
                    <node concept="2OwXpG" id="23Habm5RYmn" role="2OqNvi">
                      <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="23Habm5RYmo" role="37wK5m">
                    <ref role="3cqZAo" node="5HxDM7D6$xL" resolve="collectedVisited" />
                  </node>
                  <node concept="3clFbT" id="23Habm5RYmp" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Habm5QZxM" role="3cqZAp" />
        <node concept="3clFbF" id="23Habm5RdQ2" role="3cqZAp">
          <node concept="2EnYce" id="23Habm5RrGu" role="3clFbG">
            <node concept="37vLTw" id="23Habm5RdQ0" role="2Oq$k0">
              <ref role="3cqZAo" node="23Habm3ss6r" resolve="profiler" />
            </node>
            <node concept="liA8E" id="23Habm5R$7x" role="2OqNvi">
              <ref role="37wK5l" to="bid0:~Profiler.end(jetbrains.mps.logic.reactor.util.Token)" resolve="end" />
              <node concept="37vLTw" id="23Habm5ROEK" role="37wK5m">
                <ref role="3cqZAo" node="23Habm5QwsQ" resolve="token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Habm5SqJJ" role="3cqZAp" />
        <node concept="3cpWs6" id="2fobfNk6_p1" role="3cqZAp">
          <node concept="37vLTw" id="23Habm5RYmq" role="3cqZAk">
            <ref role="3cqZAo" node="23Habm5RYmg" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5HxDM7D6$xL" role="3clF46">
        <property role="TrG5h" value="collectedVisited" />
        <node concept="3vKaQO" id="5HxDM7D6$xN" role="1tU5fm">
          <node concept="3Tqbb2" id="5HxDM7D6$xO" role="3O5elw" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1LqJe" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1MM22" role="jymVt">
      <property role="TrG5h" value="processRequired" />
      <node concept="3Tm6S6" id="tIwzd1MM23" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsq0Nv" role="3clF45">
        <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3clFbS" id="tIwzd1MM0J" role="3clF47">
        <node concept="3cpWs8" id="6i42QSsq4kW" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSsq4kX" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6i42QSsq4kV" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oG" role="33vP2m">
              <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7kTeLbQm9Tn" role="3cqZAp" />
        <node concept="3cpWs8" id="5NUR$OpuiF" role="3cqZAp">
          <node concept="3cpWsn" id="5NUR$OpuiG" role="3cpWs9">
            <property role="TrG5h" value="allRequired" />
            <node concept="2hMVRd" id="5NUR$Opuiv" role="1tU5fm">
              <node concept="3Tqbb2" id="5NUR$Opuiy" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="5NUR$OpuiH" role="33vP2m">
              <node concept="2i4dXS" id="5NUR$OpuiI" role="2ShVmc">
                <node concept="3Tqbb2" id="5NUR$OpuiJ" role="HW$YZ" />
                <node concept="37vLTw" id="5NUR$OpxrK" role="I$8f6">
                  <ref role="3cqZAo" node="5HxDM7D7rLB" resolve="required" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5NUR$OptcA" role="3cqZAp">
          <node concept="2OqwBi" id="5NUR$OpvC6" role="3clFbG">
            <node concept="37vLTw" id="5NUR$OpuiK" role="2Oq$k0">
              <ref role="3cqZAo" node="5NUR$OpuiG" resolve="allRequired" />
            </node>
            <node concept="1kEaZ2" id="5NUR$Op$4m" role="2OqNvi">
              <node concept="37vLTw" id="5NUR$Op_oH" role="25WWJ7">
                <ref role="3cqZAo" node="5HxDM7D8viE" resolve="visited" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5NUR$OpBSC" role="3cqZAp">
          <node concept="2OqwBi" id="5NUR$OpDm_" role="3clFbG">
            <node concept="37vLTw" id="5NUR$OpBSA" role="2Oq$k0">
              <ref role="3cqZAo" node="5NUR$OpuiG" resolve="allRequired" />
            </node>
            <node concept="3dhRuq" id="5NUR$OpDS0" role="2OqNvi">
              <node concept="10Nm6u" id="5NUR$OpDYP" role="25WWJ7" />
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
                    <node concept="37vLTw" id="5NUR$OpFSC" role="37wK5m">
                      <ref role="3cqZAo" node="5NUR$OpuiG" resolve="allRequired" />
                    </node>
                    <node concept="2ShNRf" id="6nFpYltT7bd" role="37wK5m">
                      <node concept="1pGfFk" id="6nFpYltT7Nw" role="2ShVmc">
                        <ref role="37wK5l" node="5HxDM7DadcM" resolve="ProgramFactory.TemplateApplicator" />
                        <node concept="3clFbT" id="6nFpYltT9q2" role="37wK5m" />
                        <node concept="37vLTw" id="5HxDM7DaxyF" role="37wK5m">
                          <ref role="3cqZAo" node="5HxDM7D9VFX" resolve="isPreamble" />
                        </node>
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
                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
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
                <node concept="37vLTw" id="51nMZI9_bXv" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HxDM7D8viE" resolve="visited" />
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
            <node concept="3clFbF" id="5NUR$OpGRB" role="3cqZAp">
              <node concept="37vLTI" id="5NUR$OpK6Y" role="3clFbG">
                <node concept="2ShNRf" id="5NUR$OpKfd" role="37vLTx">
                  <node concept="2i4dXS" id="5NUR$OpKci" role="2ShVmc">
                    <node concept="3Tqbb2" id="5NUR$OpKcj" role="HW$YZ" />
                    <node concept="2OqwBi" id="5NUR$OpLZU" role="I$8f6">
                      <node concept="37vLTw" id="5NUR$OpLZV" role="2Oq$k0">
                        <ref role="3cqZAo" node="6i42QSsvfVd" resolve="applyResult" />
                      </node>
                      <node concept="2OwXpG" id="5NUR$OpLZW" role="2OqNvi">
                        <ref role="2Oxat5" node="4MqhgXU_1ti" resolve="required" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5NUR$OpGR_" role="37vLTJ">
                  <ref role="3cqZAo" node="5NUR$OpuiG" resolve="allRequired" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5NUR$OpO6u" role="3cqZAp">
              <node concept="2OqwBi" id="5NUR$OpPxQ" role="3clFbG">
                <node concept="37vLTw" id="5NUR$OpO6s" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NUR$OpuiG" resolve="allRequired" />
                </node>
                <node concept="1kEaZ2" id="5NUR$OpRk5" role="2OqNvi">
                  <node concept="37vLTw" id="5NUR$OpSb1" role="25WWJ7">
                    <ref role="3cqZAo" node="5HxDM7D8viE" resolve="visited" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5NUR$OpUoI" role="3cqZAp">
              <node concept="2OqwBi" id="5NUR$OpWqS" role="3clFbG">
                <node concept="37vLTw" id="5NUR$OpUoG" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NUR$OpuiG" resolve="allRequired" />
                </node>
                <node concept="3dhRuq" id="5NUR$OpWOU" role="2OqNvi">
                  <node concept="10Nm6u" id="5NUR$OpY5q" role="25WWJ7" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="tIwzd1MM1F" role="2$JKZa">
            <node concept="37vLTw" id="5NUR$OpFNq" role="2Oq$k0">
              <ref role="3cqZAo" node="5NUR$OpuiG" resolve="allRequired" />
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
      <node concept="37vLTG" id="5HxDM7D7rLB" role="3clF46">
        <property role="TrG5h" value="required" />
        <node concept="3vKaQO" id="tIwzd1MM1K" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1MM1L" role="3O5elw" />
        </node>
      </node>
      <node concept="37vLTG" id="5HxDM7D8viE" role="3clF46">
        <property role="TrG5h" value="visited" />
        <node concept="3vKaQO" id="tIwzd1MM1M" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1MM1N" role="3O5elw" />
        </node>
      </node>
      <node concept="37vLTG" id="5HxDM7D9VFX" role="3clF46">
        <property role="TrG5h" value="isPreamble" />
        <node concept="10P_77" id="5HxDM7D9VFZ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1pMvG" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8GlSnU" role="jymVt">
      <property role="TrG5h" value="applyRuleTemplate" />
      <node concept="3Tm6S6" id="5ntLU8GlSnV" role="1B3o_S" />
      <node concept="37vLTG" id="5ntLU8GlSnJ" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="1ffsG7c51iR" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
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
        <node concept="3J1_TO" id="7Oc59RSA9rg" role="3cqZAp">
          <node concept="3uVAMA" id="5X1yxJI7J0W" role="1zxBo5">
            <node concept="XOnhg" id="5X1yxJI7J0X" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="5X1yxJI7J0Y" role="1tU5fm">
                <node concept="3uibUv" id="5X1yxJI7Rqk" role="nSUat">
                  <ref role="3uigEE" to="ugy2:5X1yxJHUo54" resolve="TemplateApplicationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5X1yxJI7J0Z" role="1zc67A">
              <node concept="3cpWs6" id="5X1yxJI8ze0" role="3cqZAp">
                <node concept="1Ls8ON" id="5X1yxJI8ze1" role="3cqZAk">
                  <node concept="2YIFZM" id="7TC1Xcd$6oW" role="1Lso8e">
                    <ref role="37wK5l" to="xydz:5X1yxJHYTYX" resolve="RECOVER" />
                    <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="5X1yxJI8ze3" role="37wK5m">
                      <node concept="1pGfFk" id="5X1yxJI8ze4" role="2ShVmc">
                        <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
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
                      <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
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
          <node concept="3uVAMA" id="30mNApVb1dh" role="1zxBo5">
            <node concept="XOnhg" id="30mNApVb1di" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="30mNApVb1dj" role="1tU5fm">
                <node concept="3uibUv" id="30mNApVbal6" role="nSUat">
                  <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="30mNApVb1dl" role="1zc67A">
              <node concept="3cpWs6" id="30mNApVb1dm" role="3cqZAp">
                <node concept="1Ls8ON" id="30mNApVb1dn" role="3cqZAk">
                  <node concept="2YIFZM" id="30mNApVb1do" role="1Lso8e">
                    <ref role="37wK5l" to="xydz:5X1yxJHYTYX" resolve="RECOVER" />
                    <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="30mNApVb1dp" role="37wK5m">
                      <node concept="1pGfFk" id="30mNApVb1dq" role="2ShVmc">
                        <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                        <node concept="3cpWs3" id="30mNApVb1dr" role="37wK5m">
                          <node concept="1rXfSq" id="30mNApVb1ds" role="3uHU7w">
                            <ref role="37wK5l" node="5X1yxJI81iu" resolve="details" />
                            <node concept="37vLTw" id="30mNApVb1dt" role="37wK5m">
                              <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="30mNApVb1du" role="3uHU7B">
                            <node concept="3cpWs3" id="30mNApVb1dv" role="3uHU7B">
                              <node concept="Xl_RD" id="30mNApVb1dw" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="30mNApVb1dx" role="3uHU7w">
                                <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="30mNApVb1dy" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="30mNApVb1dz" role="37wK5m">
                          <ref role="3cqZAo" node="30mNApVb1di" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="30mNApVb1d$" role="1Lso8e">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3uibUv" id="30mNApVb1d_" role="3PaCim">
                      <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="30mNApVb1dA" role="1Lso8e">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3Tqbb2" id="30mNApVb1dB" role="3PaCim" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="30mNApVb1dC" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="7Oc59RSA9ri" role="1zxBo7">
            <node concept="3cpWs8" id="1C_jAspW_tR" role="3cqZAp">
              <node concept="3cpWsn" id="1C_jAspW_tS" role="3cpWs9">
                <property role="TrG5h" value="builders_reqs" />
                <node concept="1LlUBW" id="1C_jAspWyvn" role="1tU5fm">
                  <node concept="_YKpA" id="1C_jAspWyvz" role="1Lm7xW">
                    <node concept="3uibUv" id="1C_jAspWyv$" role="_ZDj9">
                      <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                  <node concept="_YKpA" id="1C_jAspWyv_" role="1Lm7xW">
                    <node concept="3Tqbb2" id="1C_jAspWyvA" role="_ZDj9" />
                  </node>
                </node>
                <node concept="1rXfSq" id="1C_jAspW_tT" role="33vP2m">
                  <ref role="37wK5l" node="1C_jAspMvaf" resolve="collectRequired" />
                  <node concept="1bVj0M" id="1C_jAspW_tU" role="37wK5m">
                    <node concept="3clFbS" id="1C_jAspW_tV" role="1bW5cS">
                      <node concept="3clFbF" id="1C_jAspW_tW" role="3cqZAp">
                        <node concept="2OqwBi" id="1C_jAspW_tX" role="3clFbG">
                          <node concept="37vLTw" id="1C_jAspW_tY" role="2Oq$k0">
                            <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                          </node>
                          <node concept="liA8E" id="1C_jAspW_tZ" role="2OqNvi">
                            <ref role="37wK5l" to="ugy2:7XdbJdyi9Ld" resolve="applyReduce" />
                            <node concept="37vLTw" id="1C_jAspW_u0" role="37wK5m">
                              <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                            </node>
                            <node concept="37vLTw" id="1C_jAspW_u1" role="37wK5m">
                              <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                            </node>
                            <node concept="2ShNRf" id="1C_jAspW_u2" role="37wK5m">
                              <node concept="Tc6Ow" id="1C_jAspW_u3" role="2ShVmc">
                                <node concept="3uibUv" id="1C_jAspW_u4" role="HW$YZ">
                                  <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                                </node>
                              </node>
                            </node>
                            <node concept="1bVj0M" id="1C_jAspW_u5" role="37wK5m">
                              <node concept="37vLTG" id="1C_jAspW_u6" role="1bW2Oz">
                                <property role="TrG5h" value="builders" />
                                <node concept="_YKpA" id="1C_jAspW_u7" role="1tU5fm">
                                  <node concept="3uibUv" id="1C_jAspW_u8" role="_ZDj9">
                                    <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="1C_jAspW_u9" role="1bW2Oz">
                                <property role="TrG5h" value="token" />
                                <node concept="16syzq" id="1C_jAspW_ua" role="1tU5fm">
                                  <ref role="16sUi3" node="7XdbJdyQdwM" resolve="T" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="1C_jAspW_ub" role="1bW5cS">
                                <node concept="3clFbF" id="1C_jAspW_uc" role="3cqZAp">
                                  <node concept="2OqwBi" id="1C_jAspW_ud" role="3clFbG">
                                    <node concept="37vLTw" id="1C_jAspW_ue" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1C_jAspW_u6" resolve="builders" />
                                    </node>
                                    <node concept="X8dFx" id="1C_jAspW_uf" role="2OqNvi">
                                      <node concept="2OqwBi" id="1C_jAspW_ug" role="25WWJ7">
                                        <node concept="37vLTw" id="1C_jAspW_uh" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1C_jAspW_u9" resolve="token" />
                                        </node>
                                        <node concept="liA8E" id="1C_jAspW_ui" role="2OqNvi">
                                          <ref role="37wK5l" to="ugy2:2RRx4MZ6CCe" resolve="apply" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1C_jAspW_uj" role="3cqZAp">
                                  <node concept="37vLTw" id="1C_jAspW_uk" role="3clFbG">
                                    <ref role="3cqZAo" node="1C_jAspW_u6" resolve="builders" />
                                  </node>
                                </node>
                                <node concept="3clFbH" id="1C_jAspW_ul" role="3cqZAp" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1C_jAspW_um" role="3cqZAp" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1C_jAspXI42" role="3cqZAp" />
            <node concept="3cpWs6" id="5MHpiyl_Uhz" role="3cqZAp">
              <node concept="1Ls8ON" id="6i42QSsqED_" role="3cqZAk">
                <node concept="2YIFZM" id="7TC1Xcd$6oH" role="1Lso8e">
                  <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
                  <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="1LFfDK" id="1C_jAspX5cl" role="1Lso8e">
                  <node concept="3cmrfG" id="1C_jAspXe5s" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5HVB6JRA$Cm" role="1LFl5Q">
                    <ref role="3cqZAo" node="1C_jAspW_tS" resolve="builders_reqs" />
                  </node>
                </node>
                <node concept="1LFfDK" id="1C_jAspXurh" role="1Lso8e">
                  <node concept="3cmrfG" id="1C_jAspXuu3" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="5HVB6JRUkHh" role="1LFl5Q">
                    <ref role="3cqZAo" node="1C_jAspW_tS" resolve="builders_reqs" />
                  </node>
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
                  <node concept="2YIFZM" id="51h1DIGuKJm" role="1Lso8e">
                    <ref role="37wK5l" to="xydz:5X1yxJHYTYX" resolve="RECOVER" />
                    <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="51h1DIGuKJn" role="37wK5m">
                      <node concept="1pGfFk" id="51h1DIGuKJo" role="2ShVmc">
                        <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                        <node concept="3cpWs3" id="51h1DIGuKJp" role="37wK5m">
                          <node concept="1rXfSq" id="51h1DIGuKJq" role="3uHU7w">
                            <ref role="37wK5l" node="5X1yxJI81iu" resolve="details" />
                            <node concept="37vLTw" id="51h1DIGuKJr" role="37wK5m">
                              <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="51h1DIGuKJs" role="3uHU7B">
                            <node concept="3cpWs3" id="51h1DIGuKJt" role="3uHU7B">
                              <node concept="Xl_RD" id="51h1DIGuKJu" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="51h1DIGuKJv" role="3uHU7w">
                                <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="51h1DIGuKJw" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="51h1DIGuKJx" role="37wK5m">
                          <ref role="3cqZAo" node="7Oc59RSA9rl" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5HVB6JRY6BI" role="1Lso8e">
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <node concept="3uibUv" id="5HVB6JRY6BJ" role="3PaCim">
                      <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
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
        </node>
      </node>
      <node concept="1LlUBW" id="6i42QSsqj9x" role="3clF45">
        <node concept="3uibUv" id="6i42QSsqniA" role="1Lm7xW">
          <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="_YKpA" id="5HVB6JRXu9t" role="1Lm7xW">
          <node concept="3uibUv" id="5HVB6JRXu9v" role="_ZDj9">
            <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
        <node concept="_YKpA" id="5HVB6JRPZ0M" role="1Lm7xW">
          <node concept="3Tqbb2" id="5HVB6JRQ07l" role="_ZDj9" />
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyQdwM" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="7XdbJdyQhEU" role="3ztrMU">
          <ref role="3uigEE" to="ugy2:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
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
          <ref role="3uigEE" to="ugy2:6OXbTD$iNPP" resolve="QueryTemplate" />
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
                  <ref role="3uigEE" to="ugy2:5X1yxJHUo54" resolve="TemplateApplicationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5X1yxJI9h8G" role="1zc67A">
              <node concept="3cpWs6" id="5X1yxJI9FIO" role="3cqZAp">
                <node concept="1Ls8ON" id="5X1yxJI9FIP" role="3cqZAk">
                  <node concept="2YIFZM" id="HwwsI3jg_D" role="1Lso8e">
                    <ref role="37wK5l" to="xydz:5X1yxJHYPm2" resolve="FAIL" />
                    <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="HwwsI3jg_E" role="37wK5m">
                      <node concept="1pGfFk" id="HwwsI3jg_F" role="2ShVmc">
                        <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
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
                        <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="1C_jAsqcc0m" role="1Lso8e">
                    <node concept="2T8Vx0" id="1C_jAsqcnnO" role="2ShVmc">
                      <node concept="2I9FWS" id="1C_jAsqcnnQ" role="2T96Bj" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5X1yxJI9qKU" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbS" id="6OXbTDyaL$4" role="1zxBo7">
            <node concept="3cpWs8" id="1C_jAspZQGo" role="3cqZAp">
              <node concept="3cpWsn" id="1C_jAspZQGp" role="3cpWs9">
                <property role="TrG5h" value="builders_reqs" />
                <node concept="1LlUBW" id="1C_jAspZNKM" role="1tU5fm">
                  <node concept="A3Dl8" id="1C_jAspZNL0" role="1Lm7xW">
                    <node concept="3uibUv" id="1C_jAspZNL1" role="A3Ik2">
                      <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                  </node>
                  <node concept="_YKpA" id="1C_jAspZNKY" role="1Lm7xW">
                    <node concept="3Tqbb2" id="1C_jAspZNKZ" role="_ZDj9" />
                  </node>
                </node>
                <node concept="1rXfSq" id="1C_jAspZQGq" role="33vP2m">
                  <ref role="37wK5l" node="1C_jAspMvaf" resolve="collectRequired" />
                  <node concept="1bVj0M" id="1C_jAspZQGr" role="37wK5m">
                    <node concept="3clFbS" id="1C_jAspZQGs" role="1bW5cS">
                      <node concept="3clFbF" id="1C_jAspZQGt" role="3cqZAp">
                        <node concept="2OqwBi" id="1C_jAspZQGu" role="3clFbG">
                          <node concept="1eOMI4" id="1C_jAspZQGv" role="2Oq$k0">
                            <node concept="2OqwBi" id="1C_jAspZQGw" role="1eOMHV">
                              <node concept="2OqwBi" id="1C_jAspZQGx" role="2Oq$k0">
                                <node concept="37vLTw" id="1C_jAspZQGy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6OXbTDyaLzX" resolve="tpl" />
                                </node>
                                <node concept="liA8E" id="1C_jAspZQGz" role="2OqNvi">
                                  <ref role="37wK5l" to="ugy2:5itBwM78vMu" resolve="createToken" />
                                  <node concept="37vLTw" id="1C_jAspZQG$" role="37wK5m">
                                    <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="1C_jAspZQG_" role="2OqNvi">
                                <ref role="37wK5l" to="ugy2:5EDW3XEg_7p" resolve="withQuery" />
                                <node concept="37vLTw" id="1C_jAspZQGA" role="37wK5m">
                                  <ref role="3cqZAo" node="5EDW3XEuKDu" resolve="query" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1C_jAspZQGB" role="2OqNvi">
                            <ref role="37wK5l" to="ugy2:6R6MIbUcYSn" resolve="apply" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6OXbTDyc$Kv" role="3cqZAp">
              <node concept="1Ls8ON" id="6OXbTDyc$Kw" role="3cqZAk">
                <node concept="2YIFZM" id="7TC1Xcd$6oI" role="1Lso8e">
                  <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
                  <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="1LFfDK" id="1C_jAsq0y4T" role="1Lso8e">
                  <node concept="3cmrfG" id="1C_jAsq0FmN" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="6OXbTDyc$Ky" role="1LFl5Q">
                    <ref role="3cqZAo" node="1C_jAspZQGp" resolve="builders_reqs" />
                  </node>
                </node>
                <node concept="1LFfDK" id="1C_jAsq14lz" role="1Lso8e">
                  <node concept="3cmrfG" id="1C_jAsq14ol" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="1C_jAsq0WR5" role="1LFl5Q">
                    <ref role="3cqZAo" node="1C_jAspZQGp" resolve="builders_reqs" />
                  </node>
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
                    <ref role="37wK5l" to="xydz:5X1yxJHYPm2" resolve="FAIL" />
                    <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                    <node concept="2ShNRf" id="5X1yxJIa385" role="37wK5m">
                      <node concept="1pGfFk" id="5X1yxJIa386" role="2ShVmc">
                        <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
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
                        <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="1C_jAsqcwsA" role="1Lso8e">
                    <node concept="2T8Vx0" id="1C_jAsqcwsB" role="2ShVmc">
                      <node concept="2I9FWS" id="1C_jAsqcwsC" role="2T96Bj" />
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
          <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="A3Dl8" id="6OXbTDyaL_w" role="1Lm7xW">
          <node concept="3uibUv" id="6OXbTDyaL_x" role="A3Ik2">
            <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
        <node concept="_YKpA" id="1C_jAsq1uOM" role="1Lm7xW">
          <node concept="3Tqbb2" id="1C_jAsq1Qlh" role="_ZDj9" />
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEvo5m" role="16eVyc">
        <property role="TrG5h" value="Q" />
        <node concept="3uibUv" id="5EDW3XEvwaZ" role="3ztrMU">
          <ref role="3uigEE" to="ugy2:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="16euLQ" id="6OXbTDyaL_y" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="6R6MIbUdgwE" role="3ztrMU">
          <ref role="3uigEE" to="ugy2:6R6MIbU8M46" resolve="QueryTemplate.Token" />
          <node concept="16syzq" id="5EDW3XEvy57" role="11_B2D">
            <ref role="16sUi3" node="5EDW3XEvo5m" resolve="Q" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1C_jAspMeB6" role="jymVt" />
    <node concept="3clFb_" id="1C_jAspMvaf" role="jymVt">
      <property role="TrG5h" value="collectRequired" />
      <node concept="37vLTG" id="1C_jAspMvF_" role="3clF46">
        <property role="TrG5h" value="worker" />
        <node concept="3uibUv" id="1C_jAspMM_U" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="16syzq" id="1C_jAspPtVK" role="11_B2D">
            <ref role="16sUi3" node="1C_jAspPfKT" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1C_jAspMAx6" role="1B3o_S" />
      <node concept="3clFbS" id="1C_jAspMvaj" role="3clF47">
        <node concept="3cpWs8" id="1C_jAspMZ7L" role="3cqZAp">
          <node concept="3cpWsn" id="1C_jAspMZ7M" role="3cpWs9">
            <property role="TrG5h" value="requiredNodes" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="1C_jAspMZ7N" role="1tU5fm">
              <node concept="3Tqbb2" id="1C_jAspMZ7O" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="1C_jAspMZ7P" role="33vP2m">
              <node concept="Tc6Ow" id="1C_jAspMZ7Q" role="2ShVmc">
                <node concept="3Tqbb2" id="1C_jAspMZ7R" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1C_jAspMZ7S" role="3cqZAp">
          <node concept="3cpWsn" id="1C_jAspMZ7T" role="3cpWs9">
            <property role="TrG5h" value="requiredCollector" />
            <node concept="3uibUv" id="1C_jAspMZ7U" role="1tU5fm">
              <ref role="3uigEE" to="ugy2:4vBwiiV6130" resolve="TemplateApplicationSession.RequireHook" />
            </node>
            <node concept="2ShNRf" id="1C_jAspMZ7V" role="33vP2m">
              <node concept="YeOm9" id="1C_jAspMZ7W" role="2ShVmc">
                <node concept="1Y3b0j" id="1C_jAspMZ7X" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="ugy2:4vBwiiV6130" resolve="TemplateApplicationSession.RequireHook" />
                  <node concept="3Tm1VV" id="1C_jAspMZ7Y" role="1B3o_S" />
                  <node concept="3clFb_" id="1C_jAspMZ7Z" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="require" />
                    <node concept="37vLTG" id="1C_jAspMZ80" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1C_jAspMZ81" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1C_jAspMZ82" role="3clF45" />
                    <node concept="3Tm1VV" id="1C_jAspMZ83" role="1B3o_S" />
                    <node concept="3clFbS" id="1C_jAspMZ84" role="3clF47">
                      <node concept="3clFbF" id="1C_jAspMZ85" role="3cqZAp">
                        <node concept="2OqwBi" id="1C_jAspMZ86" role="3clFbG">
                          <node concept="37vLTw" id="1C_jAspMZ87" role="2Oq$k0">
                            <ref role="3cqZAo" node="1C_jAspMZ7M" resolve="requiredNodes" />
                          </node>
                          <node concept="TSZUe" id="1C_jAspMZ88" role="2OqNvi">
                            <node concept="37vLTw" id="1C_jAspMZ89" role="25WWJ7">
                              <ref role="3cqZAo" node="1C_jAspMZ80" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1C_jAspMZ8a" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1C_jAspN9hI" role="3cqZAp" />
        <node concept="3J1_TO" id="1C_jAspNyyZ" role="3cqZAp">
          <node concept="3clFbS" id="1C_jAspNyz1" role="1zxBo7">
            <node concept="3clFbF" id="1C_jAspNPR2" role="3cqZAp">
              <node concept="2OqwBi" id="1C_jAspNPR3" role="3clFbG">
                <node concept="liA8E" id="1C_jAspNPR4" role="2OqNvi">
                  <ref role="37wK5l" to="ugy2:7DvO2M9IiN4" resolve="addRequireHook" />
                  <node concept="37vLTw" id="1C_jAspNPR5" role="37wK5m">
                    <ref role="3cqZAo" node="1C_jAspMZ7T" resolve="requiredCollector" />
                  </node>
                </node>
                <node concept="37vLTw" id="1C_jAspNPR6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1C_jAspStn_" role="3cqZAp">
              <node concept="3cpWsn" id="1C_jAspStnA" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="16syzq" id="1C_jAspSqfh" role="1tU5fm">
                  <ref role="16sUi3" node="1C_jAspPfKT" resolve="T" />
                </node>
                <node concept="2OqwBi" id="1C_jAspStnB" role="33vP2m">
                  <node concept="37vLTw" id="1C_jAspStnC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1C_jAspMvF_" resolve="worker" />
                  </node>
                  <node concept="liA8E" id="1C_jAspStnD" role="2OqNvi">
                    <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1C_jAspR2cm" role="3cqZAp">
              <node concept="1Ls8ON" id="1C_jAspRyij" role="3cqZAk">
                <node concept="37vLTw" id="1C_jAspStnE" role="1Lso8e">
                  <ref role="3cqZAo" node="1C_jAspStnA" resolve="value" />
                </node>
                <node concept="37vLTw" id="1C_jAspS3GX" role="1Lso8e">
                  <ref role="3cqZAo" node="1C_jAspMZ7M" resolve="requiredNodes" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1C_jAspOsaP" role="3cqZAp" />
          </node>
          <node concept="1wplmZ" id="1C_jAspNGjh" role="1zxBo6">
            <node concept="3clFbS" id="1C_jAspNGji" role="1wplMD">
              <node concept="3clFbF" id="1C_jAspO0d7" role="3cqZAp">
                <node concept="2OqwBi" id="1C_jAspO0d8" role="3clFbG">
                  <node concept="liA8E" id="1C_jAspO0d9" role="2OqNvi">
                    <ref role="37wK5l" to="ugy2:7DvO2M9IiNh" resolve="removeRequireHook" />
                    <node concept="37vLTw" id="1C_jAspO0da" role="37wK5m">
                      <ref role="3cqZAo" node="1C_jAspMZ7T" resolve="requiredCollector" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1C_jAspO0db" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvO2Mah9z5" resolve="applicationSession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="1C_jAspPfKT" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="1LlUBW" id="1C_jAspPK2g" role="3clF45">
        <node concept="16syzq" id="1C_jAspQ0Kp" role="1Lm7xW">
          <ref role="16sUi3" node="1C_jAspPfKT" resolve="T" />
        </node>
        <node concept="_YKpA" id="1C_jAspQicn" role="1Lm7xW">
          <node concept="3Tqbb2" id="1C_jAspQriC" role="_ZDj9" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1C_jAspMfDv" role="jymVt" />
    <node concept="2tJIrI" id="6OXbTDyaRKT" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1I3Xv" role="jymVt">
      <property role="TrG5h" value="applyRuleTemplatesAndCollectRequired" />
      <node concept="3Tm6S6" id="tIwzd1I3Xw" role="1B3o_S" />
      <node concept="37vLTG" id="tIwzd1I3Xm" role="3clF46">
        <property role="TrG5h" value="tpls" />
        <node concept="A3Dl8" id="tIwzd1I3Xn" role="1tU5fm">
          <node concept="3uibUv" id="6tPOoeTdbj8" role="A3Ik2">
            <ref role="3uigEE" to="ugy2:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
            <node concept="3qUE_q" id="6tPOoeTdbj9" role="11_B2D">
              <node concept="3uibUv" id="6tPOoeTdbja" role="3qUE_r">
                <ref role="3uigEE" to="ugy2:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
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
      <node concept="3clFbS" id="tIwzd1I3Wv" role="3clF47">
        <node concept="3clFbH" id="3DPJ8QIV5YQ" role="3cqZAp" />
        <node concept="3clFbJ" id="3DPJ8QIV0vQ" role="3cqZAp">
          <node concept="3clFbS" id="3DPJ8QIV0vR" role="3clFbx">
            <node concept="3clFbF" id="3DPJ8QIV0vS" role="3cqZAp">
              <node concept="2OqwBi" id="3DPJ8QIV0vT" role="3clFbG">
                <node concept="37vLTw" id="3DPJ8QIV0vU" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                </node>
                <node concept="liA8E" id="3DPJ8QIV0vV" role="2OqNvi">
                  <ref role="37wK5l" node="3DPJ8QIUFaa" resolve="recordSource" />
                  <node concept="37vLTw" id="3DPJ8QIV0vW" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2hQbw6Hzz4N" role="3clFbw">
            <node concept="3fqX7Q" id="2hQbw6Hzzkv" role="3uHU7w">
              <node concept="37vLTw" id="2hQbw6Hz$oU" role="3fr31v">
                <ref role="3cqZAo" node="5HxDM7D4Qx4" resolve="isPreamble" />
              </node>
            </node>
            <node concept="1Wc70l" id="1XKnVPWx0Y" role="3uHU7B">
              <node concept="3y3z36" id="3DPJ8QIV0w3" role="3uHU7B">
                <node concept="37vLTw" id="3DPJ8QIV0w5" role="3uHU7B">
                  <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                </node>
                <node concept="10Nm6u" id="3DPJ8QIV0w4" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="1XKnVPWytK" role="3uHU7w">
                <node concept="37vLTw" id="1XKnVPWyjM" role="3uHU7B">
                  <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                </node>
                <node concept="10Nm6u" id="1XKnVPWywH" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Q576RaYENC" role="3cqZAp">
          <node concept="2OqwBi" id="4Q576RaYGF2" role="3clFbG">
            <node concept="37vLTw" id="4Q576RaYENA" role="2Oq$k0">
              <ref role="3cqZAo" node="39eNUjlTflP" resolve="templateTrace" />
            </node>
            <node concept="liA8E" id="4Q576RaYIJL" role="2OqNvi">
              <ref role="37wK5l" to="hano:799SgOKz0oW" resolve="enterNode" />
              <node concept="37vLTw" id="4Q576RaYIT7" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DPJ8QIV07Y" role="3cqZAp" />
        <node concept="3cpWs8" id="6i42QSsrVMN" role="3cqZAp">
          <node concept="3cpWsn" id="6i42QSsrVMO" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6i42QSsrVMM" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oJ" role="33vP2m">
              <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
        <node concept="3clFbH" id="39eNUjlUjCO" role="3cqZAp" />
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
                  <node concept="liA8E" id="xaaVXvp77z" role="2OqNvi">
                    <ref role="37wK5l" to="ugy2:xaaVXv6GTE" resolve="isAuxiliary" />
                  </node>
                  <node concept="37vLTw" id="5HxDM7D5qHb" role="2Oq$k0">
                    <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="xaaVXvp7Co" role="3cqZAp" />
            <node concept="3J1_TO" id="47oVduO$1Lv" role="3cqZAp">
              <node concept="3uVAMA" id="47oVduO$23w" role="1zxBo5">
                <node concept="XOnhg" id="47oVduO$23x" role="1zc67B">
                  <property role="TrG5h" value="ex" />
                  <node concept="nSUau" id="47oVduO$23y" role="1tU5fm">
                    <node concept="3uibUv" id="47oVduO$2eq" role="nSUat">
                      <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="47oVduO$23z" role="1zc67A">
                  <node concept="3cpWs8" id="47oVduOAAd1" role="3cqZAp">
                    <node concept="3cpWsn" id="47oVduOAAd2" role="3cpWs9">
                      <property role="TrG5h" value="details" />
                      <node concept="17QB3L" id="47oVduOAAd3" role="1tU5fm" />
                      <node concept="3K4zz7" id="47oVduOAAd4" role="33vP2m">
                        <node concept="Xl_RD" id="47oVduOAAd5" role="3K4GZi">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="3y3z36" id="47oVduOAAd6" role="3K4Cdx">
                          <node concept="10Nm6u" id="47oVduOAAd7" role="3uHU7w" />
                          <node concept="37vLTw" id="47oVduOAAd8" role="3uHU7B">
                            <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="47oVduOAAd9" role="3K4E3e">
                          <node concept="2OqwBi" id="47oVduOAAda" role="3uHU7w">
                            <node concept="2JrnkZ" id="47oVduOAAdb" role="2Oq$k0">
                              <node concept="37vLTw" id="47oVduOAAdc" role="2JrQYb">
                                <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                              </node>
                            </node>
                            <node concept="liA8E" id="47oVduOAAdd" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="47oVduOAAde" role="3uHU7B">
                            <node concept="3cpWs3" id="47oVduOAAdf" role="3uHU7B">
                              <node concept="Xl_RD" id="47oVduOAAdg" role="3uHU7B">
                                <property role="Xl_RC" value=" triggered by " />
                              </node>
                              <node concept="2OqwBi" id="47oVduOAAdh" role="3uHU7w">
                                <node concept="37vLTw" id="47oVduOAAdi" role="2Oq$k0">
                                  <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                </node>
                                <node concept="2qgKlT" id="47oVduOAAdj" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="47oVduOAAdk" role="3uHU7w">
                              <property role="Xl_RC" value="@" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="47oVduOAAdl" role="3cqZAp">
                    <node concept="37vLTI" id="47oVduOAAdm" role="3clFbG">
                      <node concept="2OqwBi" id="47oVduOAAdn" role="37vLTx">
                        <node concept="37vLTw" id="47oVduOACQ3" role="2Oq$k0">
                          <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                        </node>
                        <node concept="liA8E" id="47oVduOAAdp" role="2OqNvi">
                          <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                          <node concept="2YIFZM" id="51h1DIGuTeM" role="37wK5m">
                            <ref role="37wK5l" to="xydz:5X1yxJHYTYX" resolve="RECOVER" />
                            <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                            <node concept="2ShNRf" id="51h1DIGuTeN" role="37wK5m">
                              <node concept="1pGfFk" id="51h1DIGuTeO" role="2ShVmc">
                                <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                                <node concept="3cpWs3" id="51h1DIGuTeP" role="37wK5m">
                                  <node concept="37vLTw" id="51h1DIGuTeQ" role="3uHU7w">
                                    <ref role="3cqZAo" node="47oVduOAAd2" resolve="details" />
                                  </node>
                                  <node concept="3cpWs3" id="51h1DIGuTeR" role="3uHU7B">
                                    <node concept="3cpWs3" id="51h1DIGuTeS" role="3uHU7B">
                                      <node concept="3cpWs3" id="51h1DIGuTeT" role="3uHU7B">
                                        <node concept="2OqwBi" id="51h1DIGuTeU" role="3uHU7B">
                                          <node concept="37vLTw" id="51h1DIGuTeV" role="2Oq$k0">
                                            <ref role="3cqZAo" node="47oVduO$23x" resolve="ex" />
                                          </node>
                                          <node concept="liA8E" id="51h1DIGuTeW" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="51h1DIGuTeX" role="3uHU7w">
                                          <property role="Xl_RC" value="(" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="51h1DIGuTeY" role="3uHU7w">
                                        <node concept="37vLTw" id="51h1DIGuTeZ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                        </node>
                                        <node concept="liA8E" id="51h1DIGuTf0" role="2OqNvi">
                                          <ref role="37wK5l" to="ugy2:1ffsG7bUgP4" resolve="toString" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="51h1DIGuTf1" role="3uHU7w">
                                      <property role="Xl_RC" value=")" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="51h1DIGuTf2" role="37wK5m">
                                  <ref role="3cqZAo" node="47oVduO$23x" resolve="ex" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="47oVduOACab" role="37vLTJ">
                        <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="47oVduO$1Lx" role="1zxBo7">
                <node concept="3cpWs8" id="3rrtTcScZYt" role="3cqZAp">
                  <node concept="3cpWsn" id="3rrtTcScZYu" role="3cpWs9">
                    <property role="TrG5h" value="cause" />
                    <node concept="3uibUv" id="3rrtTcScZCU" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                    </node>
                    <node concept="10Nm6u" id="3rrtTcSd8pa" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs8" id="47oVduO_Y8h" role="3cqZAp">
                  <node concept="3cpWsn" id="47oVduO_Y8i" role="3cpWs9">
                    <property role="TrG5h" value="ids_reqs" />
                    <node concept="2OqwBi" id="47oVduO_Y8l" role="33vP2m">
                      <node concept="2OqwBi" id="47oVduO_Y8m" role="2Oq$k0">
                        <node concept="Xjq3P" id="47oVduO_Y8n" role="2Oq$k0" />
                        <node concept="2OwXpG" id="47oVduO_Y8o" role="2OqNvi">
                          <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="planHandler" />
                        </node>
                      </node>
                      <node concept="liA8E" id="47oVduO_Y8p" role="2OqNvi">
                        <ref role="37wK5l" node="7DvO2M9Uagq" resolve="update" />
                        <node concept="37vLTw" id="47oVduO_Y8q" role="37wK5m">
                          <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                        </node>
                        <node concept="37vLTw" id="47oVduO_Y8r" role="37wK5m">
                          <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                        </node>
                        <node concept="37vLTw" id="2D0V9mfxon2" role="37wK5m">
                          <ref role="3cqZAo" node="5HxDM7D4Qx4" resolve="isPreamble" />
                        </node>
                        <node concept="1bVj0M" id="47oVduOzZMM" role="37wK5m">
                          <node concept="3clFbS" id="47oVduOzZMO" role="1bW5cS">
                            <node concept="3clFbH" id="47oVduO$1n$" role="3cqZAp" />
                            <node concept="3cpWs8" id="47oVduO$as$" role="3cqZAp">
                              <node concept="3cpWsn" id="47oVduO$as_" role="3cpWs9">
                                <property role="TrG5h" value="res_rbs_reqs" />
                                <node concept="1LlUBW" id="47oVduO$9gw" role="1tU5fm">
                                  <node concept="3uibUv" id="47oVduO$9gJ" role="1Lm7xW">
                                    <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
                                  </node>
                                  <node concept="_YKpA" id="47oVduO$9gK" role="1Lm7xW">
                                    <node concept="3uibUv" id="47oVduO$9gL" role="_ZDj9">
                                      <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                                    </node>
                                  </node>
                                  <node concept="_YKpA" id="47oVduO$9gM" role="1Lm7xW">
                                    <node concept="3Tqbb2" id="47oVduO$9gN" role="_ZDj9" />
                                  </node>
                                </node>
                                <node concept="1rXfSq" id="47oVduO$asA" role="33vP2m">
                                  <ref role="37wK5l" node="5ntLU8GlSnU" resolve="applyRuleTemplate" />
                                  <node concept="37vLTw" id="47oVduO$asB" role="37wK5m">
                                    <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                  </node>
                                  <node concept="37vLTw" id="47oVduO$asC" role="37wK5m">
                                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="47oVduO$eJX" role="3cqZAp">
                              <node concept="3cpWsn" id="47oVduO$eJY" role="3cpWs9">
                                <property role="TrG5h" value="res" />
                                <node concept="3uibUv" id="47oVduO$eAV" role="1tU5fm">
                                  <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
                                </node>
                                <node concept="1LFfDK" id="47oVduO$eJZ" role="33vP2m">
                                  <node concept="3cmrfG" id="47oVduO$eK0" role="1LF_Uc">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="37vLTw" id="47oVduO$eK1" role="1LFl5Q">
                                    <ref role="3cqZAo" node="47oVduO$as_" resolve="res_rbs_reqs" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="47oVduO$fi7" role="3cqZAp">
                              <node concept="3cpWsn" id="47oVduO$fi8" role="3cpWs9">
                                <property role="TrG5h" value="builders" />
                                <node concept="3vKaQO" id="47oVduOQIbA" role="1tU5fm">
                                  <node concept="3uibUv" id="47oVduOQIbC" role="3O5elw">
                                    <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                                  </node>
                                </node>
                                <node concept="1LFfDK" id="47oVduO$fi9" role="33vP2m">
                                  <node concept="3cmrfG" id="47oVduO$fia" role="1LF_Uc">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                  <node concept="37vLTw" id="47oVduO$fib" role="1LFl5Q">
                                    <ref role="3cqZAo" node="47oVduO$as_" resolve="res_rbs_reqs" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="47oVduO$gmo" role="3cqZAp">
                              <node concept="3cpWsn" id="47oVduO$gmp" role="3cpWs9">
                                <property role="TrG5h" value="reqs" />
                                <node concept="3vKaQO" id="47oVduOQHnT" role="1tU5fm">
                                  <node concept="3Tqbb2" id="47oVduOQHnV" role="3O5elw" />
                                </node>
                                <node concept="1LFfDK" id="47oVduO$gmq" role="33vP2m">
                                  <node concept="3cmrfG" id="47oVduO$gmr" role="1LF_Uc">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="37vLTw" id="47oVduO$gms" role="1LFl5Q">
                                    <ref role="3cqZAo" node="47oVduO$as_" resolve="res_rbs_reqs" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="5F2qBBEu0og" role="3cqZAp" />
                            <node concept="3clFbF" id="47oVduOAgbp" role="3cqZAp">
                              <node concept="2OqwBi" id="47oVduOAgbq" role="3clFbG">
                                <node concept="37vLTw" id="47oVduOAgbr" role="2Oq$k0">
                                  <ref role="3cqZAo" node="39eNUjlTflP" resolve="templateTrace" />
                                </node>
                                <node concept="liA8E" id="47oVduOAgbs" role="2OqNvi">
                                  <ref role="37wK5l" to="hano:799SgOKyHdU" resolve="templateApplied" />
                                  <node concept="37vLTw" id="47oVduOAgbt" role="37wK5m">
                                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                  </node>
                                  <node concept="37vLTw" id="47oVduOAgbu" role="37wK5m">
                                    <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                  </node>
                                  <node concept="37vLTw" id="47oVduOAify" role="37wK5m">
                                    <ref role="3cqZAo" node="47oVduO$eJY" resolve="res" />
                                  </node>
                                  <node concept="37vLTw" id="47oVduOUlPx" role="37wK5m">
                                    <ref role="3cqZAo" node="47oVduO$gmp" resolve="reqs" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="47oVduOArGE" role="3cqZAp" />
                            <node concept="3clFbF" id="47oVduOApPh" role="3cqZAp">
                              <node concept="37vLTI" id="47oVduOApPi" role="3clFbG">
                                <node concept="2OqwBi" id="47oVduOApPj" role="37vLTx">
                                  <node concept="37vLTw" id="47oVduOApPk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                                  </node>
                                  <node concept="liA8E" id="47oVduOApPl" role="2OqNvi">
                                    <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                                    <node concept="37vLTw" id="47oVduOAqZE" role="37wK5m">
                                      <ref role="3cqZAo" node="47oVduO$eJY" resolve="res" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="47oVduOApPn" role="37vLTJ">
                                  <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="47oVduO$8Wh" role="3cqZAp" />
                            <node concept="3clFbJ" id="47oVduO_NV1" role="3cqZAp">
                              <node concept="3clFbS" id="47oVduO_NV3" role="3clFbx">
                                <node concept="3clFbF" id="47oVduO_nzl" role="3cqZAp">
                                  <node concept="1rXfSq" id="47oVduO_nzn" role="3clFbG">
                                    <ref role="37wK5l" node="47oVduO$qDM" resolve="finalizeRuleBuilders" />
                                    <node concept="37vLTw" id="47oVduO_peB" role="37wK5m">
                                      <ref role="3cqZAo" node="47oVduO$fi8" resolve="builders" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="47oVduOAlJy" role="3cqZAp">
                                  <node concept="1Ls8ON" id="47oVduOJvt3" role="3cqZAk">
                                    <node concept="37vLTw" id="47oVduOJwWS" role="1Lso8e">
                                      <ref role="3cqZAo" node="47oVduO$fi8" resolve="builders" />
                                    </node>
                                    <node concept="37vLTw" id="47oVduOJyt_" role="1Lso8e">
                                      <ref role="3cqZAo" node="47oVduO$gmp" resolve="reqs" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="47oVduOAoIj" role="3cqZAp" />
                              </node>
                              <node concept="2OqwBi" id="47oVduO_O_l" role="3clFbw">
                                <node concept="37vLTw" id="47oVduO_OlT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="47oVduO$eJY" resolve="res" />
                                </node>
                                <node concept="liA8E" id="47oVduO_P3f" role="2OqNvi">
                                  <ref role="37wK5l" to="xydz:7Oc59RS_hsj" resolve="isSuccessful" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="47oVduOAna0" role="9aQIa">
                                <node concept="3clFbS" id="47oVduOAna1" role="9aQI4">
                                  <node concept="3clFbF" id="3rrtTcSd1ko" role="3cqZAp">
                                    <node concept="37vLTI" id="3rrtTcSd1kq" role="3clFbG">
                                      <node concept="2OqwBi" id="6cGbuqO89e6" role="37vLTx">
                                        <node concept="2OqwBi" id="3rrtTcScZYv" role="2Oq$k0">
                                          <node concept="37vLTw" id="3rrtTcScZYw" role="2Oq$k0">
                                            <ref role="3cqZAo" node="47oVduO$eJY" resolve="res" />
                                          </node>
                                          <node concept="liA8E" id="6cGbuqO82xb" role="2OqNvi">
                                            <ref role="37wK5l" to="xydz:5X1yxJI3E6N" resolve="allCauses" />
                                          </node>
                                        </node>
                                        <node concept="1uHKPH" id="6cGbuqO8k5q" role="2OqNvi" />
                                      </node>
                                      <node concept="37vLTw" id="3rrtTcSd1ku" role="37vLTJ">
                                        <ref role="3cqZAo" node="3rrtTcScZYu" resolve="cause" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="47oVduOAnQB" role="3cqZAp">
                                    <node concept="10Nm6u" id="47oVduOAo9R" role="3cqZAk" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1LlUBW" id="47oVduOJB5A" role="1tU5fm">
                      <node concept="3vKaQO" id="47oVduOJCSs" role="1Lm7xW">
                        <node concept="3uibUv" id="47oVduOJDI1" role="3O5elw">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="3vKaQO" id="47oVduOJIpk" role="1Lm7xW">
                        <node concept="3Tqbb2" id="47oVduOJJhT" role="3O5elw" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3rrtTcScWvD" role="3cqZAp" />
                <node concept="3clFbJ" id="3rrtTcS7jMO" role="3cqZAp">
                  <node concept="3clFbS" id="3rrtTcS7jMQ" role="3clFbx">
                    <node concept="3cpWs8" id="3rrtTcS7pQN" role="3cqZAp">
                      <node concept="3cpWsn" id="3rrtTcS7pQO" role="3cpWs9">
                        <property role="TrG5h" value="details" />
                        <node concept="17QB3L" id="3rrtTcS7pQP" role="1tU5fm" />
                        <node concept="3K4zz7" id="3rrtTcS7pQQ" role="33vP2m">
                          <node concept="Xl_RD" id="3rrtTcS7pQR" role="3K4GZi">
                            <property role="Xl_RC" value="" />
                          </node>
                          <node concept="3y3z36" id="3rrtTcS7pQS" role="3K4Cdx">
                            <node concept="10Nm6u" id="3rrtTcS7pQT" role="3uHU7w" />
                            <node concept="37vLTw" id="3rrtTcS7pQU" role="3uHU7B">
                              <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="3rrtTcS7pQV" role="3K4E3e">
                            <node concept="2OqwBi" id="3rrtTcS7pQW" role="3uHU7w">
                              <node concept="2JrnkZ" id="3rrtTcS7pQX" role="2Oq$k0">
                                <node concept="37vLTw" id="3rrtTcS7pQY" role="2JrQYb">
                                  <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                </node>
                              </node>
                              <node concept="liA8E" id="3rrtTcS7pQZ" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                              </node>
                            </node>
                            <node concept="3cpWs3" id="3rrtTcS7pR0" role="3uHU7B">
                              <node concept="3cpWs3" id="3rrtTcS7pR1" role="3uHU7B">
                                <node concept="Xl_RD" id="3rrtTcS7pR2" role="3uHU7B">
                                  <property role="Xl_RC" value=" triggered by " />
                                </node>
                                <node concept="2OqwBi" id="3rrtTcS7pR3" role="3uHU7w">
                                  <node concept="37vLTw" id="3rrtTcS7pR4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                  </node>
                                  <node concept="2qgKlT" id="3rrtTcS7pR5" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="3rrtTcS7pR6" role="3uHU7w">
                                <property role="Xl_RC" value="@" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3rrtTcS7pR7" role="3cqZAp">
                      <node concept="37vLTI" id="3rrtTcS7pR8" role="3clFbG">
                        <node concept="2OqwBi" id="3rrtTcS7pR9" role="37vLTx">
                          <node concept="37vLTw" id="3rrtTcS7pRa" role="2Oq$k0">
                            <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                          </node>
                          <node concept="liA8E" id="3rrtTcS7pRb" role="2OqNvi">
                            <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                            <node concept="2YIFZM" id="51h1DIGv0Lu" role="37wK5m">
                              <ref role="37wK5l" to="xydz:5X1yxJHYTYX" resolve="RECOVER" />
                              <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                              <node concept="2ShNRf" id="51h1DIGv0Lv" role="37wK5m">
                                <node concept="1pGfFk" id="51h1DIGv0Lw" role="2ShVmc">
                                  <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
                                  <node concept="3cpWs3" id="51h1DIGv0Lx" role="37wK5m">
                                    <node concept="37vLTw" id="51h1DIGv0Ly" role="3uHU7w">
                                      <ref role="3cqZAo" node="3rrtTcS7pQO" resolve="details" />
                                    </node>
                                    <node concept="3cpWs3" id="51h1DIGv0Lz" role="3uHU7B">
                                      <node concept="3cpWs3" id="51h1DIGv0L$" role="3uHU7B">
                                        <node concept="3cpWs3" id="51h1DIGv0L_" role="3uHU7B">
                                          <node concept="2OqwBi" id="51h1DIGv0LA" role="3uHU7B">
                                            <node concept="37vLTw" id="51h1DIGv0LB" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3rrtTcScZYu" resolve="cause" />
                                            </node>
                                            <node concept="liA8E" id="51h1DIGv0LC" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="51h1DIGv0LD" role="3uHU7w">
                                            <property role="Xl_RC" value=" (" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="51h1DIGv0LE" role="3uHU7w">
                                          <node concept="37vLTw" id="51h1DIGv0LF" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                          </node>
                                          <node concept="liA8E" id="51h1DIGv0LG" role="2OqNvi">
                                            <ref role="37wK5l" to="ugy2:1ffsG7bUgP4" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="51h1DIGv0LH" role="3uHU7w">
                                        <property role="Xl_RC" value=")" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="51h1DIGv0LI" role="37wK5m">
                                    <ref role="3cqZAo" node="3rrtTcScZYu" resolve="cause" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="3rrtTcS7pRt" role="37vLTJ">
                          <ref role="3cqZAo" node="6i42QSsrVMO" resolve="result" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3rrtTcS7jMP" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="3rrtTcS7lmn" role="3clFbw">
                    <node concept="10Nm6u" id="3rrtTcS7lte" role="3uHU7w" />
                    <node concept="37vLTw" id="3rrtTcS7kDK" role="3uHU7B">
                      <ref role="3cqZAo" node="47oVduO_Y8i" resolve="ids_reqs" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="3rrtTcS7lGL" role="9aQIa">
                    <node concept="3clFbS" id="3rrtTcS7lGM" role="9aQI4">
                      <node concept="3cpWs8" id="47oVduOUrug" role="3cqZAp">
                        <node concept="3cpWsn" id="47oVduOUruh" role="3cpWs9">
                          <property role="TrG5h" value="ruleIds" />
                          <node concept="3vKaQO" id="47oVduOUqTp" role="1tU5fm">
                            <node concept="3uibUv" id="47oVduOUqTs" role="3O5elw">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="1LFfDK" id="47oVduOUrui" role="33vP2m">
                            <node concept="3cmrfG" id="47oVduOUruj" role="1LF_Uc">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="47oVduOUruk" role="1LFl5Q">
                              <ref role="3cqZAo" node="47oVduO_Y8i" resolve="ids_reqs" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="47oVduOUin_" role="3cqZAp">
                        <node concept="3cpWsn" id="47oVduOUinA" role="3cpWs9">
                          <property role="TrG5h" value="reqs" />
                          <node concept="3vKaQO" id="47oVduOUi8U" role="1tU5fm">
                            <node concept="3Tqbb2" id="47oVduOUi8X" role="3O5elw" />
                          </node>
                          <node concept="1LFfDK" id="47oVduOUinB" role="33vP2m">
                            <node concept="3cmrfG" id="47oVduOUinC" role="1LF_Uc">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="47oVduOUinD" role="1LFl5Q">
                              <ref role="3cqZAo" node="47oVduO_Y8i" resolve="ids_reqs" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="47oVduOU$_u" role="3cqZAp" />
                      <node concept="3clFbF" id="47oVduOAt6Y" role="3cqZAp">
                        <node concept="2OqwBi" id="47oVduOAt6Z" role="3clFbG">
                          <node concept="37vLTw" id="47oVduOAt70" role="2Oq$k0">
                            <ref role="3cqZAo" node="tIwzd1IbDT" resolve="collectedRequired" />
                          </node>
                          <node concept="X8dFx" id="47oVduOAt71" role="2OqNvi">
                            <node concept="37vLTw" id="47oVduOUliY" role="25WWJ7">
                              <ref role="3cqZAo" node="47oVduOUinA" resolve="reqs" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="47oVduOUdkl" role="3cqZAp" />
                      <node concept="3clFbJ" id="47oVduO_Y9p" role="3cqZAp">
                        <node concept="3clFbS" id="47oVduO_Y9q" role="3clFbx">
                          <node concept="3clFbF" id="47oVduO_Y9r" role="3cqZAp">
                            <node concept="2OqwBi" id="47oVduO_Y9s" role="3clFbG">
                              <node concept="37vLTw" id="47oVduO_Y9t" role="2Oq$k0">
                                <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                              </node>
                              <node concept="liA8E" id="47oVduO_Y9u" role="2OqNvi">
                                <ref role="37wK5l" node="6nFpYlucRT5" resolve="recordUpdate" />
                                <node concept="37vLTw" id="47oVduO_Y9v" role="37wK5m">
                                  <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                </node>
                                <node concept="1Ls8ON" id="47oVduO_Y9w" role="37wK5m">
                                  <node concept="1eOMI4" id="47oVduO_Y9x" role="1Lso8e">
                                    <node concept="10QFUN" id="47oVduO_Y9y" role="1eOMHV">
                                      <node concept="37vLTw" id="47oVduO_Y9z" role="10QFUP">
                                        <ref role="3cqZAo" node="4MqhgXUBzFo" resolve="template" />
                                      </node>
                                      <node concept="3uibUv" id="47oVduO_Y9$" role="10QFUM">
                                        <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="47oVduOUrul" role="1Lso8e">
                                    <ref role="3cqZAo" node="47oVduOUruh" resolve="ruleIds" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="2hQbw6Hz_o$" role="3clFbw">
                          <node concept="3fqX7Q" id="2hQbw6HzAuh" role="3uHU7w">
                            <node concept="37vLTw" id="2hQbw6HzABM" role="3fr31v">
                              <ref role="3cqZAo" node="5HxDM7D4Qx4" resolve="isPreamble" />
                            </node>
                          </node>
                          <node concept="1Wc70l" id="47oVduO_Y9A" role="3uHU7B">
                            <node concept="3y3z36" id="47oVduO_Y9E" role="3uHU7B">
                              <node concept="37vLTw" id="47oVduO_Y9F" role="3uHU7B">
                                <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                              </node>
                              <node concept="10Nm6u" id="47oVduO_Y9G" role="3uHU7w" />
                            </node>
                            <node concept="3y3z36" id="47oVduO_Y9B" role="3uHU7w">
                              <node concept="37vLTw" id="47oVduO_Y9D" role="3uHU7B">
                                <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                              </node>
                              <node concept="10Nm6u" id="47oVduO_Y9C" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="47oVduOAeE1" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="tIwzd1I3Xs" role="1DdaDG">
            <ref role="3cqZAo" node="tIwzd1I3Xm" resolve="tpls" />
          </node>
          <node concept="3cpWsn" id="4MqhgXUBzFo" role="1Duv9x">
            <property role="TrG5h" value="template" />
            <node concept="3uibUv" id="4MqhgXUBzF7" role="1tU5fm">
              <ref role="3uigEE" to="ugy2:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
              <node concept="3qUE_q" id="7XdbJdyRy2h" role="11_B2D">
                <node concept="3uibUv" id="7XdbJdyRyYU" role="3qUE_r">
                  <ref role="3uigEE" to="ugy2:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Q576Rb5Nds" role="3cqZAp" />
        <node concept="3clFbF" id="4Q576Rb5KTi" role="3cqZAp">
          <node concept="2OqwBi" id="4Q576Rb5KTj" role="3clFbG">
            <node concept="37vLTw" id="4Q576Rb5KTk" role="2Oq$k0">
              <ref role="3cqZAo" node="39eNUjlTflP" resolve="templateTrace" />
            </node>
            <node concept="liA8E" id="4Q576Rb5KTl" role="2OqNvi">
              <ref role="37wK5l" to="hano:799SgOKz3YM" resolve="exitNode" />
              <node concept="37vLTw" id="4Q576Rb5KTm" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
              </node>
            </node>
          </node>
        </node>
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
          <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3vKaQO" id="tIwzd1JBnD" role="1Lm7xW">
          <node concept="3Tqbb2" id="tIwzd1JBnF" role="3O5elw" />
        </node>
      </node>
      <node concept="37vLTG" id="5HxDM7D4Qx4" role="3clF46">
        <property role="TrG5h" value="isPreamble" />
        <node concept="10P_77" id="5HxDM7D4ZC5" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="47oVduO$_u5" role="jymVt" />
    <node concept="3clFb_" id="47oVduO$qDM" role="jymVt">
      <property role="TrG5h" value="finalizeRuleBuilders" />
      <node concept="3Tm6S6" id="47oVduO$qDN" role="1B3o_S" />
      <node concept="3cqZAl" id="47oVduO_CbD" role="3clF45" />
      <node concept="37vLTG" id="47oVduO_4Od" role="3clF46">
        <property role="TrG5h" value="builders" />
        <node concept="A3Dl8" id="47oVduO_dYg" role="1tU5fm">
          <node concept="3uibUv" id="47oVduO_gBJ" role="A3Ik2">
            <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="47oVduO$qBJ" role="3clF47">
        <node concept="3cpWs8" id="47oVduO$qBK" role="3cqZAp">
          <node concept="3cpWsn" id="47oVduO$qBL" role="3cpWs9">
            <property role="TrG5h" value="tags" />
            <node concept="2hMVRd" id="47oVduO$qBM" role="1tU5fm">
              <node concept="3uibUv" id="47oVduO$qBN" role="2hN53Y">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="47oVduO$qBO" role="33vP2m">
              <node concept="2i4dXS" id="47oVduO$qBP" role="2ShVmc">
                <node concept="3uibUv" id="47oVduO$qBQ" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="47oVduO$qBR" role="3cqZAp">
          <node concept="3cpWsn" id="47oVduO$qBS" role="3cpWs9">
            <property role="TrG5h" value="tagSuffix" />
            <node concept="10Oyi0" id="47oVduO$qBT" role="1tU5fm" />
            <node concept="3cmrfG" id="47oVduO$qBU" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="47oVduO$qBV" role="3cqZAp" />
        <node concept="2Gpval" id="47oVduO$qBW" role="3cqZAp">
          <node concept="3clFbS" id="47oVduO$qBX" role="2LFqv$">
            <node concept="3clFbJ" id="47oVduO$qBY" role="3cqZAp">
              <node concept="3clFbS" id="47oVduO$qBZ" role="3clFbx">
                <node concept="3SKdUt" id="47oVduO$qC0" role="3cqZAp">
                  <node concept="1PaTwC" id="47oVduO$qC1" role="1aUNEU">
                    <node concept="3oM_SD" id="47oVduO$qC2" role="1PaTwD">
                      <property role="3oM_SC" value="goals" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC3" role="1PaTwD">
                      <property role="3oM_SC" value="get" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC4" role="1PaTwD">
                      <property role="3oM_SC" value="triggered" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC5" role="1PaTwD">
                      <property role="3oM_SC" value="by" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC6" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC7" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;main&quot;" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC8" role="1PaTwD">
                      <property role="3oM_SC" value="constraint" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="47oVduO$qC9" role="3cqZAp">
                  <node concept="2OqwBi" id="47oVduO$qCa" role="3clFbG">
                    <node concept="2GrUjf" id="47oVduO$qCb" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="47oVduO$qD_" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="47oVduO$qCc" role="2OqNvi">
                      <ref role="37wK5l" to="ugy2:7eGEHDlc$bR" resolve="appendHeadKept" />
                      <node concept="37vLTw" id="47oVduO$qCd" role="37wK5m">
                        <ref role="3cqZAo" node="6i42QSsj_y2" resolve="mainConstraint" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="47oVduO$qCe" role="3clFbw">
                <node concept="2OqwBi" id="47oVduO$qCf" role="3fr31v">
                  <node concept="2GrUjf" id="47oVduO$qCg" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="47oVduO$qD_" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="47oVduO$qCh" role="2OqNvi">
                    <ref role="37wK5l" to="ugy2:7nkyKX7mcq7" resolve="hasHead" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="47oVduO$qCi" role="3cqZAp">
              <node concept="3clFbS" id="47oVduO$qCj" role="3clFbx">
                <node concept="3SKdUt" id="47oVduO$qCk" role="3cqZAp">
                  <node concept="1PaTwC" id="47oVduO$qCl" role="1aUNEU">
                    <node concept="3oM_SD" id="47oVduO$qCm" role="1PaTwD">
                      <property role="3oM_SC" value="facts" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCn" role="1PaTwD">
                      <property role="3oM_SC" value="have" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCo" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;assert(true)&quot;" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCp" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCq" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCr" role="1PaTwD">
                      <property role="3oM_SC" value="body" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="47oVduO$qCs" role="3cqZAp">
                  <node concept="1PaTwC" id="47oVduO$qCt" role="1aUNEU">
                    <node concept="3oM_SD" id="47oVduO$qCu" role="1PaTwD">
                      <property role="3oM_SC" value="TODO:" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCv" role="1PaTwD">
                      <property role="3oM_SC" value="support" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCw" role="1PaTwD">
                      <property role="3oM_SC" value="facts" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="47oVduO$qCx" role="3cqZAp">
                  <node concept="1PaTwC" id="47oVduO$qCy" role="1aUNEU">
                    <node concept="3oM_SD" id="47oVduO$qCz" role="1PaTwD">
                      <property role="3oM_SC" value="FIXME:" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC$" role="1PaTwD">
                      <property role="3oM_SC" value="support" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qC_" role="1PaTwD">
                      <property role="3oM_SC" value="rules" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCA" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCB" role="1PaTwD">
                      <property role="3oM_SC" value="only" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCC" role="1PaTwD">
                      <property role="3oM_SC" value="add" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCD" role="1PaTwD">
                      <property role="3oM_SC" value="required" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCE" role="1PaTwD">
                      <property role="3oM_SC" value="roots" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCF" role="1PaTwD">
                      <property role="3oM_SC" value="instead" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCG" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCH" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="47oVduO$qCI" role="1PaTwD">
                      <property role="3oM_SC" value="hacks!" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="47oVduO$qCJ" role="3cqZAp">
                  <node concept="2OqwBi" id="47oVduO$qCK" role="3clFbG">
                    <node concept="2GrUjf" id="47oVduO$qCL" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="47oVduO$qD_" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="47oVduO$qCM" role="2OqNvi">
                      <ref role="37wK5l" to="ugy2:7eGEHDlc$aw" resolve="appendBody" />
                      <node concept="2ShNRf" id="47oVduO$qCN" role="37wK5m">
                        <node concept="1pGfFk" id="47oVduO$qCO" role="2ShVmc">
                          <ref role="37wK5l" to="tpfl:4xBopTzrPWl" resolve="AssertPredicate" />
                          <node concept="10M0yZ" id="47oVduO$qCP" role="37wK5m">
                            <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                            <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="47oVduO$qCQ" role="3clFbw">
                <node concept="2OqwBi" id="47oVduO$qCR" role="3fr31v">
                  <node concept="2GrUjf" id="47oVduO$qCS" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="47oVduO$qD_" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="47oVduO$qCT" role="2OqNvi">
                    <ref role="37wK5l" to="ugy2:7nkyKX7mnWq" resolve="hasBody" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="47oVduO$qCU" role="3cqZAp">
              <node concept="1PaTwC" id="47oVduO$qCV" role="1aUNEU">
                <node concept="3oM_SD" id="47oVduO$qCW" role="1PaTwD">
                  <property role="3oM_SC" value="tag" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qCX" role="1PaTwD">
                  <property role="3oM_SC" value="suffix" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qCY" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qCZ" role="1PaTwD">
                  <property role="3oM_SC" value="required" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qD0" role="1PaTwD">
                  <property role="3oM_SC" value="when" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qD1" role="1PaTwD">
                  <property role="3oM_SC" value="rules" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qD2" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qD3" role="1PaTwD">
                  <property role="3oM_SC" value="generated" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qD4" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qD5" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="47oVduO$qD6" role="1PaTwD">
                  <property role="3oM_SC" value="loop" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="47oVduO$qD7" role="3cqZAp">
              <node concept="3clFbS" id="47oVduO$qD8" role="3clFbx">
                <node concept="3clFbF" id="47oVduO$qD9" role="3cqZAp">
                  <node concept="2OqwBi" id="47oVduO$qDa" role="3clFbG">
                    <node concept="2GrUjf" id="47oVduO$qDb" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="47oVduO$qD_" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="47oVduO$qDc" role="2OqNvi">
                      <ref role="37wK5l" to="ugy2:1lzLQ0zuv5E" resolve="setTagSuffix" />
                      <node concept="3uNrnE" id="47oVduO$qDd" role="37wK5m">
                        <node concept="37vLTw" id="47oVduO$qDe" role="2$L3a6">
                          <ref role="3cqZAo" node="47oVduO$qBS" resolve="tagSuffix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="47oVduO$qDf" role="3clFbw">
                <node concept="37vLTw" id="47oVduO$qDg" role="2Oq$k0">
                  <ref role="3cqZAo" node="47oVduO$qBL" resolve="tags" />
                </node>
                <node concept="3JPx81" id="47oVduO$qDh" role="2OqNvi">
                  <node concept="2OqwBi" id="47oVduO$qDi" role="25WWJ7">
                    <node concept="2GrUjf" id="47oVduO$qDj" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="47oVduO$qD_" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="47oVduO$qDk" role="2OqNvi">
                      <ref role="37wK5l" to="ugy2:1lzLQ0zv1m2" resolve="tag" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="47oVduO$qDl" role="9aQIa">
                <node concept="3clFbS" id="47oVduO$qDm" role="9aQI4">
                  <node concept="3clFbF" id="47oVduO$qDn" role="3cqZAp">
                    <node concept="2OqwBi" id="47oVduO$qDo" role="3clFbG">
                      <node concept="37vLTw" id="47oVduO$qDp" role="2Oq$k0">
                        <ref role="3cqZAo" node="47oVduO$qBL" resolve="tags" />
                      </node>
                      <node concept="TSZUe" id="47oVduO$qDq" role="2OqNvi">
                        <node concept="2OqwBi" id="47oVduO$qDr" role="25WWJ7">
                          <node concept="2GrUjf" id="47oVduO$qDs" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="47oVduO$qD_" resolve="builder" />
                          </node>
                          <node concept="liA8E" id="47oVduO$qDt" role="2OqNvi">
                            <ref role="37wK5l" to="ugy2:1lzLQ0zv1m2" resolve="tag" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="47oVduO_lWk" role="2GsD0m">
            <ref role="3cqZAo" node="47oVduO_4Od" resolve="builders" />
          </node>
          <node concept="2GrKxI" id="47oVduO$qD_" role="2Gsz3X">
            <property role="TrG5h" value="builder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDzFf$i" role="jymVt" />
    <node concept="3clFb_" id="6OXbTDy1oEg" role="jymVt">
      <property role="TrG5h" value="applyQueryTemplates" />
      <node concept="1LlUBW" id="1C_jAsq31kx" role="3clF45">
        <node concept="3uibUv" id="1C_jAsq3xnU" role="1Lm7xW">
          <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="_YKpA" id="1C_jAsq3KmN" role="1Lm7xW">
          <node concept="3Tqbb2" id="1C_jAsq3Qj7" role="_ZDj9" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6OXbTDy1oEj" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy1oEk" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDyef8q" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDyef8r" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6OXbTDyef8s" role="1tU5fm">
              <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7TC1Xcd$6oK" role="33vP2m">
              <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTDyeezy" role="3cqZAp" />
        <node concept="3cpWs8" id="6OXbTDydyNR" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDydyNS" role="3cpWs9">
            <property role="TrG5h" value="result_builders_reqs" />
            <node concept="1LlUBW" id="6OXbTDydyMo" role="1tU5fm">
              <node concept="3uibUv" id="6OXbTDydyMz" role="1Lm7xW">
                <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
              </node>
              <node concept="A3Dl8" id="6OXbTDydyMx" role="1Lm7xW">
                <node concept="3uibUv" id="6OXbTDydyMy" role="A3Ik2">
                  <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
              </node>
              <node concept="_YKpA" id="1C_jAsq27SG" role="1Lm7xW">
                <node concept="3Tqbb2" id="1C_jAsq2w0d" role="_ZDj9" />
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
                <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                <node concept="1LFfDK" id="2BZXJed1X2p" role="37wK5m">
                  <node concept="3cmrfG" id="2BZXJed1Xfp" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="2BZXJed1W$4" role="1LFl5Q">
                    <ref role="3cqZAo" node="6OXbTDydyNS" resolve="result_builders_reqs" />
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
                    <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6OXbTDzFnYM" role="33vP2m">
                  <node concept="Tc6Ow" id="6OXbTDzFnYN" role="2ShVmc">
                    <node concept="3uibUv" id="6OXbTDzFnYO" role="HW$YZ">
                      <ref role="3uigEE" to="ugy2:7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="1LFfDK" id="6OXbTDzFnYP" role="I$8f6">
                      <node concept="3cmrfG" id="6OXbTDzFnYQ" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="6OXbTDzFoOp" role="1LFl5Q">
                        <ref role="3cqZAo" node="6OXbTDydyNS" resolve="result_builders_reqs" />
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
                              <ref role="37wK5l" to="ugy2:7eGEHDlc$bR" resolve="appendHeadKept" />
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
                            <ref role="37wK5l" to="ugy2:7nkyKX7mcq7" resolve="hasHead" />
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
                              <ref role="37wK5l" to="ugy2:7eGEHDlc$aw" resolve="appendBody" />
                              <node concept="2ShNRf" id="6OXbTDzFl4N" role="37wK5m">
                                <node concept="1pGfFk" id="6OXbTDzFl4O" role="2ShVmc">
                                  <ref role="37wK5l" to="tpfl:4xBopTzrPWl" resolve="AssertPredicate" />
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
                            <ref role="37wK5l" to="ugy2:7nkyKX7mnWq" resolve="hasBody" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7L9cSENHzpO" role="3cqZAp">
                      <node concept="2OqwBi" id="7L9cSENHzCY" role="3clFbG">
                        <node concept="2GrUjf" id="7L9cSENHzpM" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6OXbTDzFl4V" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="7L9cSENHzYC" role="2OqNvi">
                          <ref role="37wK5l" to="ugy2:7L9cSENGVlN" resolve="setQuery" />
                          <node concept="3clFbT" id="7L9cSENH$5H" role="37wK5m">
                            <property role="3clFbU" value="true" />
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
                        <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="planHandler" />
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
                          <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
                          <node concept="2YIFZM" id="7TC1Xcd$6oV" role="37wK5m">
                            <ref role="37wK5l" to="xydz:5X1yxJHYPm2" resolve="FAIL" />
                            <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
                            <node concept="2ShNRf" id="5X1yxJI1zs_" role="37wK5m">
                              <node concept="1pGfFk" id="5X1yxJI1zsA" role="2ShVmc">
                                <ref role="37wK5l" to="ugy2:5X1yxJHUoaR" resolve="TemplateApplicationException" />
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
              <ref role="37wK5l" to="xydz:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1C_jAsqacc8" role="3cqZAp" />
        <node concept="3clFbF" id="1C_jAsq9dgq" role="3cqZAp">
          <node concept="1Ls8ON" id="1C_jAsq9dgo" role="3clFbG">
            <node concept="1LFfDK" id="1C_jAsq9Aq3" role="1Lso8e">
              <node concept="3cmrfG" id="1C_jAsq9G7W" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="1C_jAsq9uFQ" role="1LFl5Q">
                <ref role="3cqZAo" node="6OXbTDydyNS" resolve="result_builders_reqs" />
              </node>
            </node>
            <node concept="1LFfDK" id="1C_jAsqa2Yp" role="1Lso8e">
              <node concept="3cmrfG" id="1C_jAsqa31a" role="1LF_Uc">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="37vLTw" id="1C_jAsq9U7q" role="1LFl5Q">
                <ref role="3cqZAo" node="6OXbTDydyNS" resolve="result_builders_reqs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDydhIZ" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="6tPOoeT4z8$" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:6OXbTD$iNPP" resolve="QueryTemplate" />
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
          <ref role="3uigEE" to="ugy2:5EDW3XDYeWv" resolve="Query" />
        </node>
      </node>
      <node concept="16euLQ" id="5EDW3XEwksj" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5EDW3XEwksk" role="3ztrMU">
          <ref role="3uigEE" to="ugy2:6R6MIbU8M46" resolve="QueryTemplate.Token" />
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
    <node concept="3clFb_" id="39eNUjlYQzk" role="jymVt">
      <property role="TrG5h" value="setTrace" />
      <node concept="37vLTG" id="39eNUjm1V5f" role="3clF46">
        <property role="TrG5h" value="trace" />
        <node concept="3uibUv" id="39eNUjm1W8p" role="1tU5fm">
          <ref role="3uigEE" to="hano:39eNUjlSJ9Q" resolve="TemplateTrace" />
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
              <node concept="2OwXpG" id="39eNUjm2Lmm" role="2OqNvi">
                <ref role="2Oxat5" node="39eNUjlTflP" resolve="templateTrace" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="39eNUjm2xNQ" role="jymVt" />
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
          <node concept="3clFbF" id="5HxDM7Dap4z" role="3cqZAp">
            <node concept="37vLTI" id="5HxDM7Dap4$" role="3clFbG">
              <node concept="3clFbT" id="5HxDM7Dapo6" role="37vLTx" />
              <node concept="2OqwBi" id="5HxDM7Dap4A" role="37vLTJ">
                <node concept="Xjq3P" id="5HxDM7Dap4B" role="2Oq$k0" />
                <node concept="2OwXpG" id="5HxDM7Dap4C" role="2OqNvi">
                  <ref role="2Oxat5" node="5HxDM7DaixD" resolve="isProgramPreamble" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="5HxDM7DadcM" role="jymVt">
        <node concept="37vLTG" id="5HxDM7DadcN" role="3clF46">
          <property role="TrG5h" value="includeAuxiliary" />
          <node concept="10P_77" id="5HxDM7DadcO" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5HxDM7DaihJ" role="3clF46">
          <property role="TrG5h" value="isPreamble" />
          <node concept="10P_77" id="5HxDM7DaioW" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="5HxDM7DadcP" role="3clF45" />
        <node concept="3Tm6S6" id="5HxDM7DadcQ" role="1B3o_S" />
        <node concept="3clFbS" id="5HxDM7DadcR" role="3clF47">
          <node concept="3clFbF" id="5HxDM7DadcS" role="3cqZAp">
            <node concept="37vLTI" id="5HxDM7DadcT" role="3clFbG">
              <node concept="37vLTw" id="5HxDM7DadcU" role="37vLTx">
                <ref role="3cqZAo" node="5HxDM7DadcN" resolve="includeAuxiliary" />
              </node>
              <node concept="2OqwBi" id="5HxDM7DadcV" role="37vLTJ">
                <node concept="Xjq3P" id="5HxDM7DadcW" role="2Oq$k0" />
                <node concept="2OwXpG" id="5HxDM7DadcX" role="2OqNvi">
                  <ref role="2Oxat5" node="42eP3wrZOvp" resolve="includeAuxiliary" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5HxDM7DanO2" role="3cqZAp">
            <node concept="37vLTI" id="5HxDM7DaoMf" role="3clFbG">
              <node concept="37vLTw" id="5HxDM7Dap43" role="37vLTx">
                <ref role="3cqZAo" node="5HxDM7DaihJ" resolve="isPreamble" />
              </node>
              <node concept="2OqwBi" id="5HxDM7Dao3S" role="37vLTJ">
                <node concept="Xjq3P" id="5HxDM7DanO0" role="2Oq$k0" />
                <node concept="2OwXpG" id="5HxDM7DaoiC" role="2OqNvi">
                  <ref role="2Oxat5" node="5HxDM7DaixD" resolve="isProgramPreamble" />
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
        <node concept="3Tm1VV" id="5ntLU8GlzgJ" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlzgL" role="3clF47">
          <node concept="3cpWs8" id="5ntLU8GlzSI" role="3cqZAp">
            <node concept="3cpWsn" id="5ntLU8GlzSJ" role="3cpWs9">
              <property role="TrG5h" value="tpls" />
              <node concept="3vKaQO" id="7gMIJIyrFld" role="1tU5fm">
                <node concept="3uibUv" id="7gMIJIyrFlf" role="3O5elw">
                  <ref role="3uigEE" to="ugy2:1ffsG7bUbCM" resolve="AbstractRuleTemplate" />
                  <node concept="3qUE_q" id="7gMIJIyrFlg" role="11_B2D">
                    <node concept="3uibUv" id="7gMIJIyrFlh" role="3qUE_r">
                      <ref role="3uigEE" to="ugy2:2RRx4MZ6_68" resolve="RuleTemplate.Token" />
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
                <node concept="2OqwBi" id="zL5ZaNC0Wd" role="2Oq$k0">
                  <node concept="37vLTw" id="3OUB6BCqOrO" role="2Oq$k0">
                    <ref role="3cqZAo" node="cmlg9OIRky" resolve="ruleProcessingSession" />
                  </node>
                  <node concept="liA8E" id="zL5ZaNC24Q" role="2OqNvi">
                    <ref role="37wK5l" to="hano:20Ay2VeR9qk" resolve="ruleTemplates" />
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
              <property role="TrG5h" value="res_reqs" />
              <node concept="1LlUBW" id="6i42QSssRXK" role="1tU5fm">
                <node concept="3uibUv" id="6i42QSssRXT" role="1Lm7xW">
                  <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
                <node concept="37vLTw" id="4baZKvbn3qR" role="37wK5m">
                  <ref role="3cqZAo" node="5HxDM7DaixD" resolve="isProgramPreamble" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="4VNF0fTdhDk" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbJ" id="6nFpYlu8fDj" role="8Wnug">
              <node concept="3clFbS" id="6nFpYlu8fDl" role="3clFbx">
                <node concept="3clFbF" id="6nFpYlu0dq2" role="3cqZAp">
                  <node concept="2OqwBi" id="6nFpYlu0xLz" role="3clFbG">
                    <node concept="37vLTw" id="6nFpYlukFHv" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                    </node>
                    <node concept="liA8E" id="6nFpYlu0$Ow" role="2OqNvi">
                      <ref role="37wK5l" to="ugy2:4VNF0fT1ttn" resolve="addDependencies" />
                      <node concept="37vLTw" id="6nFpYlu0_0q" role="37wK5m">
                        <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                      </node>
                      <node concept="1LFfDK" id="6nFpYlu0_Xx" role="37wK5m">
                        <node concept="3cmrfG" id="6nFpYlu0A1I" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="6nFpYlu0_rR" role="1LFl5Q">
                          <ref role="3cqZAo" node="6i42QSssRXX" resolve="res_reqs" />
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
          </node>
          <node concept="3clFbF" id="4MqhgXU__BJ" role="3cqZAp">
            <node concept="2ShNRf" id="4MqhgXU__BF" role="3clFbG">
              <node concept="1pGfFk" id="4MqhgXU_A60" role="2ShVmc">
                <ref role="37wK5l" node="4MqhgXU_xEx" resolve="ProgramFactory.ResultTriple" />
                <node concept="1LFfDK" id="4MqhgXU_Aq9" role="37wK5m">
                  <node concept="3cmrfG" id="4MqhgXU_Aqa" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5NUR$OnKyQ" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSssRXX" resolve="res_reqs" />
                  </node>
                </node>
                <node concept="1LFfDK" id="4MqhgXU_Aqc" role="37wK5m">
                  <node concept="3cmrfG" id="4MqhgXU_Aqd" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="4MqhgXU_Aqe" role="1LFl5Q">
                    <ref role="3cqZAo" node="6i42QSssRXX" resolve="res_reqs" />
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
                  <ref role="37wK5l" to="xydz:7nkyKX7v7xb" resolve="and" />
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
      <node concept="312cEg" id="42eP3wrZOvp" role="jymVt">
        <property role="TrG5h" value="includeAuxiliary" />
        <node concept="3Tm6S6" id="42eP3wrZOvq" role="1B3o_S" />
        <node concept="10P_77" id="42eP3wrZUxy" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5HxDM7DaixD" role="jymVt">
        <property role="TrG5h" value="isProgramPreamble" />
        <node concept="3Tm6S6" id="5HxDM7DaixE" role="1B3o_S" />
        <node concept="10P_77" id="5HxDM7DaixF" role="1tU5fm" />
      </node>
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
                <ref role="37wK5l" to="xydz:7Oc59RSEjeq" resolve="OK" />
                <ref role="1Pybhc" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
                <node concept="2i4dXS" id="5NUR$OjdAB" role="2ShVmc">
                  <node concept="3Tqbb2" id="5NUR$OjdAD" role="HW$YZ" />
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
                <node concept="2i4dXS" id="5NUR$Ojek9" role="2ShVmc">
                  <node concept="3Tqbb2" id="5NUR$Ojekb" role="HW$YZ" />
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
            <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
          <ref role="3uigEE" to="xydz:7Oc59RSEjdb" resolve="Result" />
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
          </node>
        </node>
        <node concept="3clFbS" id="61G6TdDSwHp" role="3clF47">
          <node concept="3cpWs8" id="61G6TdDSwHq" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdDSwHr" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="61G6TdDSwHs" role="1tU5fm">
                <ref role="16sUi3" node="61G6TdDSwIC" resolve="T" />
              </node>
              <node concept="1rXfSq" id="3DPJ8QI_4WS" role="33vP2m">
                <ref role="37wK5l" node="6nFpYltFTQQ" resolve="flat" />
                <node concept="37vLTw" id="3DPJ8QI_4WT" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDSwHi" resolve="startFrom" />
                </node>
                <node concept="1rXfSq" id="3DPJ8QI_rtd" role="37wK5m">
                  <ref role="37wK5l" node="6nFpYltM1Er" resolve="invalidatedOrNew" />
                  <node concept="1rXfSq" id="3DPJ8QI_4WU" role="37wK5m">
                    <ref role="37wK5l" node="3DPJ8QIyRC9" resolve="recursive" />
                    <node concept="37vLTw" id="3DPJ8QI_4WV" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdDSwHl" resolve="action" />
                    </node>
                  </node>
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
                    <node concept="1rXfSq" id="3DPJ8QIRyFj" role="37wK5m">
                      <ref role="37wK5l" node="6nFpYltM1Er" resolve="invalidatedOrNew" />
                      <node concept="1rXfSq" id="3DPJ8QIRyFk" role="37wK5m">
                        <ref role="37wK5l" node="3DPJ8QIyRC9" resolve="recursive" />
                        <node concept="37vLTw" id="3DPJ8QIRyFl" role="37wK5m">
                          <ref role="3cqZAo" node="61G6TdDSwHl" resolve="action" />
                        </node>
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
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltNprk" role="3clF47">
          <node concept="3cpWs8" id="6nFpYlvbrJU" role="3cqZAp">
            <node concept="3cpWsn" id="6nFpYlvbrJX" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="6nFpYlvbrJS" role="1tU5fm">
                <ref role="16sUi3" node="6nFpYltNyaU" resolve="T" />
              </node>
              <node concept="1rXfSq" id="3DPJ8QIzQ7G" role="33vP2m">
                <ref role="37wK5l" node="6nFpYltFTtW" resolve="deepAll" />
                <node concept="37vLTw" id="3DPJ8QIzQ7H" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltNprf" resolve="startFrom" />
                </node>
                <node concept="1rXfSq" id="3DPJ8QI$38K" role="37wK5m">
                  <ref role="37wK5l" node="6nFpYltM1Er" resolve="invalidatedOrNew" />
                  <node concept="1rXfSq" id="3DPJ8QIzQ7I" role="37wK5m">
                    <ref role="37wK5l" node="3DPJ8QIyRC9" resolve="recursive" />
                    <node concept="37vLTw" id="3DPJ8QIzQ7J" role="37wK5m">
                      <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3DPJ8QIOrdA" role="3cqZAp">
            <node concept="3cpWsn" id="3DPJ8QIOrdB" role="3cpWs9">
              <property role="TrG5h" value="newOrigins" />
              <node concept="3vKaQO" id="3DPJ8QIO6Aa" role="1tU5fm">
                <node concept="3Tqbb2" id="3DPJ8QIO6Ad" role="3O5elw" />
              </node>
              <node concept="1rXfSq" id="3DPJ8QIOrdC" role="33vP2m">
                <ref role="37wK5l" node="61G6TdDTpT1" resolve="newOrigins" />
                <node concept="37vLTw" id="3DPJ8QIOrdD" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltNprf" resolve="startFrom" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6nFpYlvcUG4" role="3cqZAp">
            <node concept="3clFbS" id="6nFpYlvcUG6" role="3clFbx">
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
                      <node concept="1rXfSq" id="3DPJ8QIODEI" role="37wK5m">
                        <ref role="37wK5l" node="6nFpYltFTtW" resolve="deepAll" />
                        <node concept="37vLTw" id="3DPJ8QIODEJ" role="37wK5m">
                          <ref role="3cqZAo" node="3DPJ8QIOrdB" resolve="newOrigins" />
                        </node>
                        <node concept="1rXfSq" id="3DPJ8QIPq5q" role="37wK5m">
                          <ref role="37wK5l" node="6nFpYltM1Er" resolve="invalidatedOrNew" />
                          <node concept="1rXfSq" id="3DPJ8QIPq5r" role="37wK5m">
                            <ref role="37wK5l" node="3DPJ8QIyRC9" resolve="recursive" />
                            <node concept="37vLTw" id="3DPJ8QIPq5s" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYltNFdA" resolve="action" />
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
              <node concept="37vLTw" id="3DPJ8QIOrdE" role="2Oq$k0">
                <ref role="3cqZAo" node="3DPJ8QIOrdB" resolve="newOrigins" />
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
          </node>
        </node>
        <node concept="3clFbS" id="61G6TdDQN_l" role="3clF47">
          <node concept="3cpWs8" id="61G6TdDQN_n" role="3cqZAp">
            <node concept="3cpWsn" id="61G6TdDQN_o" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="16syzq" id="61G6TdDQN_p" role="1tU5fm">
                <ref role="16sUi3" node="61G6TdDQNAL" resolve="T" />
              </node>
              <node concept="1rXfSq" id="3DPJ8QI$w1O" role="33vP2m">
                <ref role="37wK5l" node="6nFpYltFQaQ" resolve="deepInterfacePart" />
                <node concept="37vLTw" id="3DPJ8QI$w1P" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDQN_c" resolve="startFrom" />
                </node>
                <node concept="1rXfSq" id="3DPJ8QI$F_5" role="37wK5m">
                  <ref role="37wK5l" node="6nFpYltM1Er" resolve="invalidatedOrNew" />
                  <node concept="1rXfSq" id="3DPJ8QI$w1Q" role="37wK5m">
                    <ref role="37wK5l" node="3DPJ8QIyRC9" resolve="recursive" />
                    <node concept="37vLTw" id="3DPJ8QI$w1R" role="37wK5m">
                      <ref role="3cqZAo" node="61G6TdDQN_f" resolve="action" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3DPJ8QIOzvg" role="3cqZAp">
            <node concept="3cpWsn" id="3DPJ8QIOzvh" role="3cpWs9">
              <property role="TrG5h" value="newOrigins" />
              <node concept="3vKaQO" id="3DPJ8QIOtSq" role="1tU5fm">
                <node concept="3Tqbb2" id="3DPJ8QIOtSt" role="3O5elw" />
              </node>
              <node concept="1rXfSq" id="3DPJ8QIOzvi" role="33vP2m">
                <ref role="37wK5l" node="61G6TdDTpT1" resolve="newOrigins" />
                <node concept="37vLTw" id="3DPJ8QIOzvj" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdDQN_c" resolve="startFrom" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="61G6TdDQN_Z" role="3cqZAp">
            <node concept="3clFbS" id="61G6TdDQNA0" role="3clFbx">
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
                      <node concept="1rXfSq" id="3DPJ8QIOEkr" role="37wK5m">
                        <ref role="37wK5l" node="6nFpYltFQaQ" resolve="deepInterfacePart" />
                        <node concept="37vLTw" id="3DPJ8QIOEks" role="37wK5m">
                          <ref role="3cqZAo" node="3DPJ8QIOzvh" resolve="newOrigins" />
                        </node>
                        <node concept="1rXfSq" id="3DPJ8QIPqSl" role="37wK5m">
                          <ref role="37wK5l" node="6nFpYltM1Er" resolve="invalidatedOrNew" />
                          <node concept="1rXfSq" id="3DPJ8QIPqSm" role="37wK5m">
                            <ref role="37wK5l" node="3DPJ8QIyRC9" resolve="recursive" />
                            <node concept="37vLTw" id="3DPJ8QIPqSn" role="37wK5m">
                              <ref role="3cqZAo" node="61G6TdDQN_f" resolve="action" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="61G6TdDQNAF" role="3clFbw">
              <node concept="37vLTw" id="3DPJ8QIOzvk" role="2Oq$k0">
                <ref role="3cqZAo" node="3DPJ8QIOzvh" resolve="newOrigins" />
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
          </node>
        </node>
        <node concept="16syzq" id="6nFpYltTlXP" role="3clF45">
          <ref role="16sUi3" node="6nFpYltS$IB" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="6nFpYltSnCR" role="1B3o_S" />
        <node concept="3clFbS" id="6nFpYltSnCS" role="3clF47">
          <node concept="3clFbF" id="3DPJ8QIIN3D" role="3cqZAp">
            <node concept="1rXfSq" id="3DPJ8QIIN3F" role="3clFbG">
              <ref role="37wK5l" node="6nFpYltFTQQ" resolve="flat" />
              <node concept="37vLTw" id="3DPJ8QIIN3G" role="37wK5m">
                <ref role="3cqZAo" node="6nFpYltSFnC" resolve="nodes" />
              </node>
              <node concept="1rXfSq" id="3DPJ8QIIN3I" role="37wK5m">
                <ref role="37wK5l" node="6nFpYltVXdg" resolve="singular" />
                <node concept="37vLTw" id="3DPJ8QIIN3J" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltSFn$" resolve="action" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltS$IB" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="7vRcs5$YXnG" role="jymVt" />
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
                                      <ref role="3cqZAo" node="6E5fMGvfKQu" resolve="it" />
                                    </node>
                                    <node concept="iZEcu" id="61G6TdDTMon" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="6E5fMGvfKQu" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6E5fMGvfKQv" role="1tU5fm" />
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
        <property role="TrG5h" value="invalidatedOrNew" />
        <node concept="3Tm6S6" id="6nFpYltM1Es" role="1B3o_S" />
        <node concept="3uibUv" id="6nFpYltMhaY" role="3clF45">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="6nFpYltMtL1" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltMnGF" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="6nFpYltM1Ej" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltM1Ek" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltM1El" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltMnGF" resolve="T" />
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
                  <node concept="3clFb_" id="6nFpYltM1DO" role="jymVt">
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="6nFpYltM1DP" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6nFpYltM1DQ" role="1tU5fm" />
                    </node>
                    <node concept="16syzq" id="6nFpYltM1DT" role="3clF45">
                      <ref role="16sUi3" node="6nFpYltMnGF" resolve="T" />
                    </node>
                    <node concept="3Tm1VV" id="6nFpYltM1DU" role="1B3o_S" />
                    <node concept="2AHcQZ" id="6nFpYltM1DV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="6nFpYltM1DW" role="3clF47">
                      <node concept="3clFbF" id="6nFpYltM1Ef" role="3cqZAp">
                        <node concept="3K4zz7" id="3DPJ8QIzOU_" role="3clFbG">
                          <node concept="1rXfSq" id="3DPJ8QIzOUA" role="3K4GZi">
                            <ref role="37wK5l" node="6nFpYltLJrR" resolve="initial" />
                          </node>
                          <node concept="22lmx$" id="3DPJ8QIEj1x" role="3K4Cdx">
                            <node concept="3fqX7Q" id="3DPJ8QIEkbY" role="3uHU7w">
                              <node concept="2OqwBi" id="3DPJ8QIEkTx" role="3fr31v">
                                <node concept="3JPx81" id="3DPJ8QIEm7z" role="2OqNvi">
                                  <node concept="37vLTw" id="3DPJ8QIEmk5" role="25WWJ7">
                                    <ref role="3cqZAo" node="6nFpYltM1DP" resolve="node" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3DPJ8QIFfHX" role="2Oq$k0">
                                  <node concept="37vLTw" id="3DPJ8QIFdp0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                                  </node>
                                  <node concept="liA8E" id="3DPJ8QIFhYV" role="2OqNvi">
                                    <ref role="37wK5l" node="3DPJ8QIErAb" resolve="sourceSet" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3DPJ8QIzOUB" role="3uHU7B">
                              <node concept="2OqwBi" id="3DPJ8QIF7H0" role="2Oq$k0">
                                <node concept="37vLTw" id="3DPJ8QIF4U6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6nFpYlujVzU" resolve="updatesRecorder" />
                                </node>
                                <node concept="liA8E" id="3DPJ8QIFbu4" role="2OqNvi">
                                  <ref role="37wK5l" node="3DPJ8QIziiQ" resolve="invalidatedSet" />
                                </node>
                              </node>
                              <node concept="3JPx81" id="3DPJ8QIzOUD" role="2OqNvi">
                                <node concept="37vLTw" id="3DPJ8QIzOUE" role="25WWJ7">
                                  <ref role="3cqZAo" node="6nFpYltM1DP" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3nyPlj" id="3DPJ8QIzOUF" role="3K4E3e">
                            <ref role="37wK5l" node="6nFpYltLJru" resolve="doAction" />
                            <node concept="37vLTw" id="3DPJ8QIzOUG" role="37wK5m">
                              <ref role="3cqZAo" node="6nFpYltM1DP" resolve="node" />
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
        <node concept="16euLQ" id="6nFpYltMnGF" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6nFpYltMpXP" role="16eVyc">
          <property role="TrG5h" value="P" />
        </node>
      </node>
      <node concept="2tJIrI" id="3DPJ8QIyUlp" role="jymVt" />
      <node concept="3clFb_" id="3DPJ8QIyRC9" role="jymVt">
        <property role="TrG5h" value="recursive" />
        <node concept="3Tm6S6" id="3DPJ8QIyRCa" role="1B3o_S" />
        <node concept="3uibUv" id="3DPJ8QIyRCb" role="3clF45">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="3DPJ8QIyRCc" role="11_B2D">
            <ref role="16sUi3" node="3DPJ8QIyRCI" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="3DPJ8QIyRCe" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="3DPJ8QIyRCf" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="3DPJ8QIyRCg" role="11_B2D">
              <ref role="16sUi3" node="3DPJ8QIyRCI" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3DPJ8QIyRCi" role="3clF47">
          <node concept="3cpWs6" id="3DPJ8QIyRCj" role="3cqZAp">
            <node concept="2ShNRf" id="3DPJ8QIyRCk" role="3cqZAk">
              <node concept="1pGfFk" id="4nDRG5JoR5E" role="2ShVmc">
                <ref role="37wK5l" node="6nFpYltLIxT" />
                <node concept="16syzq" id="3DPJ8QIyRCp" role="1pMfVU">
                  <ref role="16sUi3" node="3DPJ8QIyRCI" resolve="T" />
                </node>
                <node concept="37vLTw" id="3DPJ8QIyRCo" role="37wK5m">
                  <ref role="3cqZAo" node="3DPJ8QIyRCe" resolve="action" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="3DPJ8QIyRCI" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="3DPJ8QIyRCJ" role="16eVyc">
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
        </node>
        <node concept="37vLTG" id="6nFpYltVXdl" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="3uibUv" id="6nFpYltVXdm" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltVXdn" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltVXe1" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6nFpYltVXdp" role="3clF47">
          <node concept="3cpWs6" id="6nFpYltVXdq" role="3cqZAp">
            <node concept="2ShNRf" id="6nFpYltVXdr" role="3cqZAk">
              <node concept="1pGfFk" id="4nDRG5JoIDX" role="2ShVmc">
                <ref role="37wK5l" node="6nFpYltLIxT" />
                <node concept="16syzq" id="6nFpYltVXdw" role="1pMfVU">
                  <ref role="16sUi3" node="6nFpYltVXe1" resolve="T" />
                </node>
                <node concept="37vLTw" id="6nFpYltVXdv" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltVXdl" resolve="action" />
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
        <node concept="2tJIrI" id="6nFpYltLIwg" role="jymVt" />
        <node concept="3Tm6S6" id="6nFpYltMDV6" role="1B3o_S" />
        <node concept="3uibUv" id="6nFpYltLI0Z" role="EKbjA">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="6nFpYltLIta" role="11_B2D">
            <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
          </node>
        </node>
        <node concept="16euLQ" id="6nFpYltLIpo" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="312cEg" id="6nFpYltLIXL" role="jymVt">
          <property role="TrG5h" value="delegate" />
          <node concept="3Tm6S6" id="6nFpYltLIXM" role="1B3o_S" />
          <node concept="3uibUv" id="6nFpYltLIXO" role="1tU5fm">
            <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
            <node concept="16syzq" id="6nFpYltLIXP" role="11_B2D">
              <ref role="16sUi3" node="6nFpYltLIpo" resolve="T" />
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
        <ref role="3uigEE" to="ugy2:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
      </node>
    </node>
    <node concept="312cEg" id="cmlg9OIRky" role="jymVt">
      <property role="TrG5h" value="ruleProcessingSession" />
      <node concept="3Tm6S6" id="cmlg9OIRkz" role="1B3o_S" />
      <node concept="3uibUv" id="zL5ZaNBS2C" role="1tU5fm">
        <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
      </node>
      <node concept="z59LJ" id="3swcsd3GyiD" role="lGtFl">
        <node concept="TZ5HA" id="3swcsd3GyiE" role="TZ5H$">
          <node concept="1dT_AC" id="3swcsd3GyiF" role="1dT_Ay">
            <property role="1dT_AB" value="FIXME: replace this dependency with one on RuleTemplateIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6tPOoeT4XhE" role="jymVt">
      <property role="TrG5h" value="planHandler" />
      <node concept="3Tm6S6" id="6tPOoeT4XhF" role="1B3o_S" />
      <node concept="3uibUv" id="6tPOoeT51Qn" role="1tU5fm">
        <ref role="3uigEE" node="7DvO2M9Uago" resolve="RulesPlanHandler" />
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
            <ref role="37wK5l" to="ugy2:4sSe4$oM2rk" resolve="ConstraintBuilder" />
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
          <ref role="37wK5l" to="ugy2:4sSe4$oM2zI" resolve="toConstraint" />
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
      </node>
    </node>
    <node concept="312cEg" id="39eNUjlTflP" role="jymVt">
      <property role="TrG5h" value="templateTrace" />
      <node concept="3Tm6S6" id="39eNUjlT6Cm" role="1B3o_S" />
      <node concept="3uibUv" id="39eNUjlTeLk" role="1tU5fm">
        <ref role="3uigEE" to="hano:39eNUjlSJ9Q" resolve="TemplateTrace" />
      </node>
      <node concept="10M0yZ" id="4tC1JBnm7rM" role="33vP2m">
        <ref role="3cqZAo" to="hano:39eNUjlX_RD" resolve="NULL" />
        <ref role="1PxDUh" to="hano:39eNUjlSJ9Q" resolve="TemplateTrace" />
      </node>
    </node>
    <node concept="312cEg" id="23Habm3ss6r" role="jymVt">
      <property role="TrG5h" value="profiler" />
      <node concept="3Tm6S6" id="23Habm3ss6s" role="1B3o_S" />
      <node concept="3uibUv" id="23Habm3ss6u" role="1tU5fm">
        <ref role="3uigEE" to="bid0:~Profiler" resolve="Profiler" />
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
                <ref role="2Oxat5" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
              </node>
            </node>
            <node concept="2ShNRf" id="3GLv42NdC3W" role="37vLTx">
              <node concept="1pGfFk" id="3GLv42NdC$E" role="2ShVmc">
                <ref role="37wK5l" node="3GLv42NdnWY" resolve="UpdatesRecorder.RelevantNodesMonitor" />
                <node concept="37vLTw" id="3GLv42NdCGo" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYlu7giH" resolve="unit" />
                </node>
              </node>
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
      <node concept="2AHcQZ" id="3GLv42MN6Pa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
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
                  <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="changesTracker" />
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
                <ref role="2Oxat5" node="6nFpYlu6O1H" resolve="changesTracker" />
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
    <node concept="3clFb_" id="3DPJ8QIUFaa" role="jymVt">
      <property role="TrG5h" value="recordSource" />
      <node concept="37vLTG" id="3DPJ8QIUPLv" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="3DPJ8QIUSkv" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3DPJ8QIUFac" role="3clF45" />
      <node concept="3Tm1VV" id="3DPJ8QIUFad" role="1B3o_S" />
      <node concept="3clFbS" id="3DPJ8QIUFae" role="3clF47">
        <node concept="3clFbF" id="3DPJ8QIKwmi" role="3cqZAp">
          <node concept="2OqwBi" id="3DPJ8QIKwYE" role="3clFbG">
            <node concept="37vLTw" id="3DPJ8QIKwmg" role="2Oq$k0">
              <ref role="3cqZAo" node="3DPJ8QIKjSz" resolve="sourceSet" />
            </node>
            <node concept="TSZUe" id="3DPJ8QIKx$a" role="2OqNvi">
              <node concept="37vLTw" id="3DPJ8QIUUkK" role="25WWJ7">
                <ref role="3cqZAo" node="3DPJ8QIUPLv" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3DPJ8QIUAsm" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu02nI" role="jymVt">
      <property role="TrG5h" value="addDependency" />
      <node concept="37vLTG" id="6nFpYlu02rL" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="1ZiI2IC50oP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6nFpYlu02t7" role="3clF46">
        <property role="TrG5h" value="dependency" />
        <node concept="3Tqbb2" id="4VNF0fT4uT5" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6nFpYlu02nK" role="3clF45" />
      <node concept="3Tm1VV" id="6nFpYlu02nL" role="1B3o_S" />
      <node concept="3clFbS" id="6nFpYlu02nM" role="3clF47">
        <node concept="3clFbJ" id="u$i61wmoJ0" role="3cqZAp">
          <node concept="3clFbS" id="u$i61wmoJ2" role="3clFbx">
            <node concept="3clFbF" id="6nFpYlu4aBM" role="3cqZAp">
              <node concept="2OqwBi" id="6nFpYlu4biz" role="3clFbG">
                <node concept="1rXfSq" id="6nFpYlu4aBL" role="2Oq$k0">
                  <ref role="37wK5l" node="6nFpYlu3KpJ" resolve="sourcesOf" />
                  <node concept="37vLTw" id="4VNF0fT4yfg" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYlu02t7" resolve="dependency" />
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
          <node concept="1Wc70l" id="1XKnVPXS6U" role="3clFbw">
            <node concept="3y3z36" id="1XKnVPXSJq" role="3uHU7B">
              <node concept="10Nm6u" id="1XKnVPXSRM" role="3uHU7w" />
              <node concept="37vLTw" id="1XKnVPXSCW" role="3uHU7B">
                <ref role="3cqZAo" node="6nFpYlu02rL" resolve="source" />
              </node>
            </node>
            <node concept="3y3z36" id="u$i61wmp85" role="3uHU7w">
              <node concept="10Nm6u" id="u$i61wmpf_" role="3uHU7w" />
              <node concept="37vLTw" id="4VNF0fT4xGw" role="3uHU7B">
                <ref role="3cqZAo" node="6nFpYlu02t7" resolve="dependency" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4VNF0fT1Pqc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
        <node concept="1LlUBW" id="51ek2rQMJ04" role="1tU5fm">
          <node concept="3uibUv" id="51ek2rQMJ05" role="1Lm7xW">
            <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
          <node concept="3vKaQO" id="51ek2rQMJ06" role="1Lm7xW">
            <node concept="3uibUv" id="51ek2rQMJ07" role="3O5elw">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
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
                  <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
                </node>
                <node concept="liA8E" id="357z3MCq6PQ" role="2OqNvi">
                  <ref role="37wK5l" node="3GLv42NdnXx" resolve="update" />
                  <node concept="37vLTw" id="357z3MCq73_" role="37wK5m">
                    <ref role="3cqZAo" node="6nFpYlud3F7" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="gedWzVkKdk" role="3clFbw">
            <node concept="10Nm6u" id="gedWzVkKJL" role="3uHU7w" />
            <node concept="37vLTw" id="3DPJ8QJ40e2" role="3uHU7B">
              <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
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
    <node concept="3clFb_" id="At0yqMNzB3" role="jymVt">
      <property role="TrG5h" value="hasChanges" />
      <node concept="10P_77" id="At0yqMNH$M" role="3clF45" />
      <node concept="3Tm1VV" id="At0yqMNzB6" role="1B3o_S" />
      <node concept="3clFbS" id="At0yqMNzB7" role="3clF47">
        <node concept="3clFbF" id="At0yqMO6VW" role="3cqZAp">
          <node concept="2OqwBi" id="At0yqMOc9M" role="3clFbG">
            <node concept="37vLTw" id="At0yqMO6VV" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changedSet" />
            </node>
            <node concept="3GX2aA" id="At0yqMOgR1" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="At0yqMNuiC" role="jymVt" />
    <node concept="3clFb_" id="1XKnVQioNo" role="jymVt">
      <property role="TrG5h" value="invalidateChanged" />
      <node concept="37vLTG" id="1XKnVQiz0H" role="3clF46">
        <property role="TrG5h" value="planHandler" />
        <node concept="3uibUv" id="1XKnVQiB1Z" role="1tU5fm">
          <ref role="3uigEE" node="7DvO2M9Uago" resolve="RulesPlanHandler" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1XKnVQioNr" role="1B3o_S" />
      <node concept="3clFbS" id="1XKnVQioNs" role="3clF47">
        <node concept="3SKdUt" id="51ek2rQMIYJ" role="3cqZAp">
          <node concept="1PaTwC" id="51ek2rQMIYK" role="1aUNEU">
            <node concept="3oM_SD" id="51ek2rQMIYL" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYM" role="1PaTwD">
              <property role="3oM_SC" value="valid" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYN" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYO" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYP" role="1PaTwD">
              <property role="3oM_SC" value="changeSetClosure" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYQ" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYS" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYT" role="1PaTwD">
              <property role="3oM_SC" value="walked" />
            </node>
            <node concept="3oM_SD" id="51ek2rQMIYU" role="1PaTwD">
              <property role="3oM_SC" value="again" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XKnVQiLVb" role="3cqZAp">
          <node concept="3cpWsn" id="1XKnVQiLVc" role="3cpWs9">
            <property role="TrG5h" value="changedSetClosure" />
            <node concept="2hMVRd" id="1XKnVQiLrG" role="1tU5fm">
              <node concept="3Tqbb2" id="1XKnVQiLrJ" role="2hN53Y" />
            </node>
            <node concept="1rXfSq" id="1XKnVQiLVd" role="33vP2m">
              <ref role="37wK5l" node="6nFpYlu7lKh" resolve="changedSetClosure" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XKnVQiKSm" role="3cqZAp">
          <node concept="1rXfSq" id="1XKnVQiSRh" role="3clFbG">
            <ref role="37wK5l" node="5Qx6_652C4k" resolve="invalidateAll" />
            <node concept="37vLTw" id="1XKnVQiVKk" role="37wK5m">
              <ref role="3cqZAo" node="1XKnVQiLVc" resolve="changedSetClosure" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XKnVQiYhX" role="3cqZAp">
          <node concept="1rXfSq" id="1XKnVQiYhV" role="3clFbG">
            <ref role="37wK5l" node="6nFpYlue$oB" resolve="forEachUpdate" />
            <node concept="37vLTw" id="1XKnVQiZvZ" role="37wK5m">
              <ref role="3cqZAo" node="1XKnVQiLVc" resolve="changedSetClosure" />
            </node>
            <node concept="1bVj0M" id="51ek2rQMJ02" role="37wK5m">
              <node concept="37vLTG" id="4J__M64Nfo" role="1bW2Oz">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="4J__M64Npp" role="1tU5fm" />
              </node>
              <node concept="37vLTG" id="51ek2rQMJ03" role="1bW2Oz">
                <property role="TrG5h" value="update" />
                <node concept="1LlUBW" id="1XKnVQjTxo" role="1tU5fm">
                  <node concept="3uibUv" id="1XKnVQjTxp" role="1Lm7xW">
                    <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                  <node concept="3vKaQO" id="1XKnVQjTxq" role="1Lm7xW">
                    <node concept="3uibUv" id="1XKnVQjTxr" role="3O5elw">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="51ek2rQMJ08" role="1bW5cS">
                <node concept="3clFbF" id="51ek2rQMJ0a" role="3cqZAp">
                  <node concept="2OqwBi" id="51ek2rQMJ0b" role="3clFbG">
                    <node concept="37vLTw" id="1XKnVQj4kz" role="2Oq$k0">
                      <ref role="3cqZAo" node="1XKnVQiz0H" resolve="planHandler" />
                    </node>
                    <node concept="liA8E" id="51ek2rQMJ0d" role="2OqNvi">
                      <ref role="37wK5l" node="cmlg9OuIxN" resolve="invalidate" />
                      <node concept="1LFfDK" id="51ek2rQMJ0e" role="37wK5m">
                        <node concept="3cmrfG" id="51ek2rQMJ0f" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="51ek2rQMJ0g" role="1LFl5Q">
                          <ref role="3cqZAo" node="51ek2rQMJ03" resolve="update" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4J__M64Riq" role="37wK5m">
                        <ref role="3cqZAo" node="4J__M64Nfo" resolve="node" />
                      </node>
                      <node concept="1LFfDK" id="51ek2rQMJ0h" role="37wK5m">
                        <node concept="3cmrfG" id="51ek2rQMJ0i" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="51ek2rQMJ0j" role="1LFl5Q">
                          <ref role="3cqZAo" node="51ek2rQMJ03" resolve="update" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="51ek2rQMJ0k" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1XKnVQkJXN" role="lGtFl">
        <node concept="TZ5HA" id="1XKnVQkJXO" role="TZ5H$">
          <node concept="1dT_AC" id="1XKnVQkJXP" role="1dT_Ay">
            <property role="1dT_AB" value="Performs invalidation on the passed RulesPlanHandler using the changed set. " />
          </node>
        </node>
        <node concept="TZ5HA" id="55xYlrlJHGn" role="TZ5H$">
          <node concept="1dT_AC" id="55xYlrlJHGo" role="1dT_Ay">
            <property role="1dT_AB" value="Clears internally collected changes. " />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="55xYlrlJoZI" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1XKnVQihdz" role="jymVt" />
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
          <node concept="3cqZAl" id="6nFpYlueUbX" role="1ajl9A" />
          <node concept="3Tqbb2" id="4J__M64MBW" role="1ajw0F" />
          <node concept="1LlUBW" id="1XKnVQjVhx" role="1ajw0F">
            <node concept="3uibUv" id="1XKnVQjVhy" role="1Lm7xW">
              <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
            </node>
            <node concept="3vKaQO" id="1XKnVQjVhz" role="1Lm7xW">
              <node concept="3uibUv" id="1XKnVQjVh$" role="3O5elw">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6nFpYlue$oD" role="3clF45" />
      <node concept="3clFbS" id="6nFpYlue$oF" role="3clF47">
        <node concept="1DcWWT" id="6nFpYlueVGs" role="3cqZAp">
          <node concept="3clFbS" id="6nFpYlueVGv" role="2LFqv$">
            <node concept="3clFbJ" id="6KCGZaSvRGn" role="3cqZAp">
              <node concept="3clFbS" id="6KCGZaSvRGp" role="3clFbx">
                <node concept="3N13vt" id="6KCGZaSvWMg" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="6KCGZaSvWJS" role="3clFbw">
                <node concept="37vLTw" id="6KCGZaSvRIJ" role="3uHU7B">
                  <ref role="3cqZAo" node="6nFpYlueVGw" resolve="n" />
                </node>
                <node concept="10Nm6u" id="6KCGZaSvWHs" role="3uHU7w" />
              </node>
            </node>
            <node concept="3cpWs8" id="6nFpYlueYAi" role="3cqZAp">
              <node concept="3cpWsn" id="6nFpYlueYAj" role="3cpWs9">
                <property role="TrG5h" value="updates" />
                <node concept="_YKpA" id="6nFpYlueY$a" role="1tU5fm">
                  <node concept="1LlUBW" id="1XKnVQjYKA" role="_ZDj9">
                    <node concept="3uibUv" id="1XKnVQjYKB" role="1Lm7xW">
                      <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
                    </node>
                    <node concept="3vKaQO" id="1XKnVQjYKC" role="1Lm7xW">
                      <node concept="3uibUv" id="1XKnVQjYKD" role="3O5elw">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
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
                        <node concept="37vLTw" id="4J__M67d26" role="2SgHGx">
                          <ref role="3cqZAo" node="6nFpYlueVGw" resolve="n" />
                        </node>
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
                    <node concept="1LlUBW" id="1XKnVQk15T" role="1tU5fm">
                      <node concept="3uibUv" id="1XKnVQk15U" role="1Lm7xW">
                        <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
                      </node>
                      <node concept="3vKaQO" id="1XKnVQk15V" role="1Lm7xW">
                        <node concept="3uibUv" id="1XKnVQk15W" role="3O5elw">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
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
      <node concept="3Tm6S6" id="1XKnVQmpds" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6nFpYlu7kHM" role="jymVt" />
    <node concept="2tJIrI" id="6nFpYluexMi" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu7lKh" role="jymVt">
      <property role="TrG5h" value="changedSetClosure" />
      <node concept="2hMVRd" id="6nFpYlu7m_S" role="3clF45">
        <node concept="3Tqbb2" id="1ZiI2IC5n$Q" role="2hN53Y" />
      </node>
      <node concept="3clFbS" id="6nFpYlu7lKl" role="3clF47">
        <node concept="3cpWs8" id="6nFpYlu7tZi" role="3cqZAp">
          <node concept="3cpWsn" id="6nFpYlu7tZj" role="3cpWs9">
            <property role="TrG5h" value="closure" />
            <node concept="2hMVRd" id="6nFpYlu7tFG" role="1tU5fm">
              <node concept="3Tqbb2" id="1ZiI2IC56RH" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="6nFpYlu7tZk" role="33vP2m">
              <node concept="2i4dXS" id="6nFpYlu7tZl" role="2ShVmc">
                <node concept="3Tqbb2" id="1ZiI2IC58iO" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4J__M5LiCW" role="3cqZAp">
          <node concept="3cpWsn" id="4J__M5LiCZ" role="3cpWs9">
            <property role="TrG5h" value="queue" />
            <node concept="3O6Q9H" id="4J__M5LiCQ" role="1tU5fm">
              <node concept="3Tqbb2" id="4J__M5Lkpv" role="3O5elw" />
            </node>
            <node concept="2ShNRf" id="4J__M5LkAG" role="33vP2m">
              <node concept="2Jqq0_" id="4J__M5Lkzs" role="2ShVmc">
                <node concept="3Tqbb2" id="4J__M5Lkzt" role="HW$YZ" />
                <node concept="37vLTw" id="4J__M5Llha" role="I$8f6">
                  <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changedSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="4J__M5Lo9b" role="3cqZAp">
          <node concept="3clFbS" id="4J__M5Lo9d" role="2LFqv$">
            <node concept="3cpWs8" id="4J__M5L$AJ" role="3cqZAp">
              <node concept="3cpWsn" id="4J__M5L$AK" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="4J__M5L$Ai" role="1tU5fm" />
                <node concept="2OqwBi" id="4J__M5L$AL" role="33vP2m">
                  <node concept="37vLTw" id="4J__M5L$AM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4J__M5LiCZ" resolve="queue" />
                  </node>
                  <node concept="2Kt2Hk" id="4J__M5L$AN" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4J__M5PEns" role="3cqZAp">
              <node concept="3clFbS" id="4J__M5PEnu" role="3clFbx">
                <node concept="3clFbF" id="4J__M5PGQH" role="3cqZAp">
                  <node concept="2OqwBi" id="4J__M5PGXa" role="3clFbG">
                    <node concept="37vLTw" id="4J__M5PGQF" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nFpYlu7tZj" resolve="closure" />
                    </node>
                    <node concept="TSZUe" id="4J__M5PH69" role="2OqNvi">
                      <node concept="37vLTw" id="4J__M5PHqK" role="25WWJ7">
                        <ref role="3cqZAo" node="4J__M5L$AK" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4J__M5LsMc" role="3cqZAp">
                  <node concept="3clFbS" id="4J__M5LsMe" role="3clFbx">
                    <node concept="3clFbF" id="4J__M5LtIH" role="3cqZAp">
                      <node concept="2OqwBi" id="4J__M5Lus0" role="3clFbG">
                        <node concept="37vLTw" id="4J__M5LtIF" role="2Oq$k0">
                          <ref role="3cqZAo" node="4J__M5LiCZ" resolve="queue" />
                        </node>
                        <node concept="X8dFx" id="4J__M5Lvc7" role="2OqNvi">
                          <node concept="3EllGN" id="4J__M5LvhC" role="25WWJ7">
                            <node concept="37vLTw" id="4J__M5LClJ" role="3ElVtu">
                              <ref role="3cqZAo" node="4J__M5L$AK" resolve="node" />
                            </node>
                            <node concept="37vLTw" id="4J__M5LvhE" role="3ElQJh">
                              <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedDependencies" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4J__M5LsY6" role="3clFbw">
                    <node concept="37vLTw" id="4J__M5LsY7" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedDependencies" />
                    </node>
                    <node concept="2Nt0df" id="4J__M5LsY8" role="2OqNvi">
                      <node concept="37vLTw" id="4J__M5LCfd" role="38cxEo">
                        <ref role="3cqZAo" node="4J__M5L$AK" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4J__M5PFjo" role="3clFbw">
                <node concept="2OqwBi" id="4J__M5PGdg" role="3fr31v">
                  <node concept="37vLTw" id="4J__M5PFqg" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nFpYlu7tZj" resolve="closure" />
                  </node>
                  <node concept="3JPx81" id="4J__M5PGDr" role="2OqNvi">
                    <node concept="37vLTw" id="4J__M5PGI0" role="25WWJ7">
                      <ref role="3cqZAo" node="4J__M5L$AK" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4J__M5LpHz" role="2$JKZa">
            <node concept="37vLTw" id="4J__M5LoRz" role="2Oq$k0">
              <ref role="3cqZAo" node="4J__M5LiCZ" resolve="queue" />
            </node>
            <node concept="3GX2aA" id="4J__M5Lq98" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlu7u$t" role="3cqZAp">
          <node concept="2OqwBi" id="6nFpYlu7von" role="3clFbG">
            <node concept="37vLTw" id="6nFpYlu7u$r" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changedSet" />
            </node>
            <node concept="2EZike" id="6nFpYlu7w9R" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7ItWvj6Y$KL" role="3cqZAp">
          <node concept="2OqwBi" id="7ItWvj6YAxH" role="3clFbG">
            <node concept="37vLTw" id="7ItWvj6Y$KJ" role="2Oq$k0">
              <ref role="3cqZAo" node="6nFpYlu7tZj" resolve="closure" />
            </node>
            <node concept="3dhRuq" id="7ItWvj6YB2M" role="2OqNvi">
              <node concept="10Nm6u" id="7ItWvj6YC40" role="25WWJ7" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlu7s$p" role="3cqZAp">
          <node concept="37vLTw" id="6nFpYlu7tZo" role="3clFbG">
            <ref role="3cqZAo" node="6nFpYlu7tZj" resolve="closure" />
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
            <property role="1dT_AB" value="That is, for every node in changed set, if there are nodes that require it, add all these nodes to the resulting closure." />
          </node>
        </node>
        <node concept="TZ5HA" id="5Qx6_656IhF" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_656IhG" role="1dT_Ay">
            <property role="1dT_AB" value="Clears the internal cache of changes collected so far, so that the next invocation yields newly collected changes. " />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1XKnVQlV_0" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3DPJ8QIzby2" role="jymVt" />
    <node concept="3clFb_" id="3DPJ8QIziiQ" role="jymVt">
      <property role="TrG5h" value="invalidatedSet" />
      <node concept="2hMVRd" id="3DPJ8QIzouK" role="3clF45">
        <node concept="3Tqbb2" id="3DPJ8QIzr0M" role="2hN53Y" />
      </node>
      <node concept="3Tm1VV" id="3DPJ8QIziiT" role="1B3o_S" />
      <node concept="3clFbS" id="3DPJ8QIziiU" role="3clF47">
        <node concept="3clFbF" id="3DPJ8QIzAPp" role="3cqZAp">
          <node concept="2OqwBi" id="3DPJ8QIzBNc" role="3clFbG">
            <node concept="37vLTw" id="3DPJ8QIzAPo" role="2Oq$k0">
              <ref role="3cqZAo" node="3DPJ8QIuOwX" resolve="invalidatedSet" />
            </node>
            <node concept="26Dbio" id="3DPJ8QIzCWk" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17DrR$SS7JC" role="jymVt" />
    <node concept="3clFb_" id="17DrR$SS7Jv" role="jymVt">
      <property role="TrG5h" value="introducedSet" />
      <node concept="2hMVRd" id="17DrR$SS7Jw" role="3clF45">
        <node concept="3Tqbb2" id="17DrR$SS7Jx" role="2hN53Y" />
      </node>
      <node concept="3Tm1VV" id="17DrR$SS7Jy" role="1B3o_S" />
      <node concept="3clFbS" id="17DrR$SS7Jz" role="3clF47">
        <node concept="3clFbF" id="17DrR$SS7J$" role="3cqZAp">
          <node concept="2OqwBi" id="17DrR$SS7J_" role="3clFbG">
            <node concept="26Dbio" id="17DrR$SS7JB" role="2OqNvi" />
            <node concept="37vLTw" id="17DrR$SSmDo" role="2Oq$k0">
              <ref role="3cqZAo" node="17DrR$SRYI4" resolve="introducedSet" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3DPJ8QIErAk" role="jymVt" />
    <node concept="3clFb_" id="3DPJ8QIErAb" role="jymVt">
      <property role="TrG5h" value="sourceSet" />
      <node concept="2hMVRd" id="3DPJ8QIErAc" role="3clF45">
        <node concept="3Tqbb2" id="3DPJ8QIErAd" role="2hN53Y" />
      </node>
      <node concept="3Tm1VV" id="3DPJ8QIErAe" role="1B3o_S" />
      <node concept="3clFbS" id="3DPJ8QIErAf" role="3clF47">
        <node concept="3clFbF" id="3DPJ8QIErAg" role="3cqZAp">
          <node concept="2OqwBi" id="3DPJ8QIKyH5" role="3clFbG">
            <node concept="37vLTw" id="3DPJ8QIKyuS" role="2Oq$k0">
              <ref role="3cqZAo" node="3DPJ8QIKjSz" resolve="sourceSet" />
            </node>
            <node concept="26Dbio" id="3DPJ8QIKzxp" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="357z3MCf013" role="jymVt" />
    <node concept="3clFb_" id="5Qx6_652C4k" role="jymVt">
      <property role="TrG5h" value="invalidateAll" />
      <node concept="37vLTG" id="5Qx6_652RX9" role="3clF46">
        <property role="TrG5h" value="changedSetClosure" />
        <node concept="A3Dl8" id="5Qx6_652W6M" role="1tU5fm">
          <node concept="3Tqbb2" id="5Qx6_652Wtc" role="A3Ik2" />
        </node>
      </node>
      <node concept="3cqZAl" id="5Qx6_652C4m" role="3clF45" />
      <node concept="3clFbS" id="5Qx6_652C4o" role="3clF47">
        <node concept="3clFbF" id="3DPJ8QIvNNG" role="3cqZAp">
          <node concept="2OqwBi" id="3DPJ8QIvP9_" role="3clFbG">
            <node concept="37vLTw" id="3DPJ8QIvNNE" role="2Oq$k0">
              <ref role="3cqZAo" node="3DPJ8QIuOwX" resolve="invalidatedSet" />
            </node>
            <node concept="2EZike" id="3DPJ8QIvQ8q" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="17DrR$SSqH3" role="3cqZAp">
          <node concept="2OqwBi" id="17DrR$SSsCn" role="3clFbG">
            <node concept="37vLTw" id="17DrR$SSqH1" role="2Oq$k0">
              <ref role="3cqZAo" node="17DrR$SRYI4" resolve="introducedSet" />
            </node>
            <node concept="2EZike" id="17DrR$SStRM" role="2OqNvi" />
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
                    <node concept="2OqwBi" id="3DPJ8QIBYv5" role="33vP2m">
                      <node concept="2OqwBi" id="3DPJ8QIBUsW" role="2Oq$k0">
                        <node concept="37vLTw" id="3DPJ8QIBUbS" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Qx6_6533W7" resolve="changed" />
                        </node>
                        <node concept="z$bX8" id="3DPJ8QIBWtT" role="2OqNvi">
                          <node concept="1xIGOp" id="3DPJ8QIBY77" role="1xVPHs" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="3DPJ8QIC01w" role="2OqNvi">
                        <node concept="1bVj0M" id="3DPJ8QIC01y" role="23t8la">
                          <node concept="3clFbS" id="3DPJ8QIC01z" role="1bW5cS">
                            <node concept="3clFbF" id="3DPJ8QIC0if" role="3cqZAp">
                              <node concept="2OqwBi" id="3DPJ8QJ01tg" role="3clFbG">
                                <node concept="37vLTw" id="3DPJ8QJ00B6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3DPJ8QIKjSz" resolve="sourceSet" />
                                </node>
                                <node concept="3JPx81" id="3DPJ8QJ029V" role="2OqNvi">
                                  <node concept="37vLTw" id="3DPJ8QJ02px" role="25WWJ7">
                                    <ref role="3cqZAo" node="6E5fMGvfKQw" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="6E5fMGvfKQw" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6E5fMGvfKQx" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3DPJ8QIitff" role="3cqZAp">
                  <node concept="1PaTwC" id="3DPJ8QIitfg" role="1aUNEU">
                    <node concept="3oM_SD" id="3DPJ8QIitfh" role="1PaTwD">
                      <property role="3oM_SC" value="TODO" />
                    </node>
                    <node concept="3oM_SD" id="3DPJ8QIittG" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="3DPJ8QIitu1" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="3DPJ8QIitun" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="3DPJ8QIitus" role="1PaTwD">
                      <property role="3oM_SC" value="hack" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3DPJ8QIiqvv" role="3cqZAp">
                  <node concept="3clFbS" id="3DPJ8QIiqvx" role="3clFbx">
                    <node concept="3clFbF" id="3DPJ8QIiqPy" role="3cqZAp">
                      <node concept="37vLTI" id="3DPJ8QIiqTY" role="3clFbG">
                        <node concept="37vLTw" id="3DPJ8QIiqPw" role="37vLTJ">
                          <ref role="3cqZAo" node="5Qx6_6535W5" resolve="input" />
                        </node>
                        <node concept="2OqwBi" id="51ek2rQMIZs" role="37vLTx">
                          <node concept="2OqwBi" id="51ek2rQMIZt" role="2Oq$k0">
                            <node concept="2OqwBi" id="51ek2rQMIZu" role="2Oq$k0">
                              <node concept="2OqwBi" id="3DPJ8QIissM" role="2Oq$k0">
                                <node concept="37vLTw" id="3DPJ8QIissN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
                                </node>
                                <node concept="liA8E" id="3DPJ8QIissO" role="2OqNvi">
                                  <ref role="37wK5l" node="3GLv42NdnXl" resolve="getRelevantOrigins" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="51ek2rQMIZy" role="2OqNvi">
                                <node concept="1bVj0M" id="51ek2rQMIZz" role="23t8la">
                                  <node concept="3clFbS" id="51ek2rQMIZ$" role="1bW5cS">
                                    <node concept="3clFbF" id="51ek2rQMIZ_" role="3cqZAp">
                                      <node concept="2OqwBi" id="51ek2rQMIZA" role="3clFbG">
                                        <node concept="37vLTw" id="51ek2rQMIZB" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6E5fMGvfKQy" resolve="it" />
                                        </node>
                                        <node concept="Vyspw" id="51ek2rQMIZC" role="2OqNvi">
                                          <node concept="37vLTw" id="51ek2rQMIZD" role="Vysub">
                                            <ref role="3cqZAo" node="4mdCe2gzxYJ" resolve="repository" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="6E5fMGvfKQy" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="6E5fMGvfKQz" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1KnU$U" id="51ek2rQMIZG" role="2OqNvi" />
                          </node>
                          <node concept="1z4cxt" id="51ek2rQMIZH" role="2OqNvi">
                            <node concept="1bVj0M" id="51ek2rQMIZI" role="23t8la">
                              <node concept="3clFbS" id="51ek2rQMIZJ" role="1bW5cS">
                                <node concept="3clFbF" id="51ek2rQMIZK" role="3cqZAp">
                                  <node concept="2OqwBi" id="51ek2rQMIZL" role="3clFbG">
                                    <node concept="2OqwBi" id="51ek2rQMIZM" role="2Oq$k0">
                                      <node concept="37vLTw" id="51ek2rQMIZN" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5Qx6_6533W7" resolve="changed" />
                                      </node>
                                      <node concept="z$bX8" id="51ek2rQMIZO" role="2OqNvi">
                                        <node concept="1xIGOp" id="51ek2rQMIZP" role="1xVPHs" />
                                      </node>
                                    </node>
                                    <node concept="3JPx81" id="51ek2rQMIZQ" role="2OqNvi">
                                      <node concept="37vLTw" id="51ek2rQMIZR" role="25WWJ7">
                                        <ref role="3cqZAo" node="6E5fMGvfKQ$" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="6E5fMGvfKQ$" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6E5fMGvfKQ_" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="3DPJ8QJ40$y" role="3clFbw">
                    <node concept="3y3z36" id="3DPJ8QJ41eO" role="3uHU7w">
                      <node concept="10Nm6u" id="3DPJ8QJ41gD" role="3uHU7w" />
                      <node concept="37vLTw" id="3DPJ8QJ40M4" role="3uHU7B">
                        <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="3DPJ8QIiqKR" role="3uHU7B">
                      <node concept="37vLTw" id="3DPJ8QIiqAd" role="3uHU7B">
                        <ref role="3cqZAo" node="5Qx6_6535W5" resolve="input" />
                      </node>
                      <node concept="10Nm6u" id="3DPJ8QIiqMI" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3DPJ8QIiqqr" role="3cqZAp" />
                <node concept="3clFbJ" id="5Qx6_6536kK" role="3cqZAp">
                  <node concept="3clFbS" id="5Qx6_6536kW" role="3clFbx">
                    <node concept="3clFbF" id="4J__M62Op1" role="3cqZAp">
                      <node concept="2OqwBi" id="4J__M62Op2" role="3clFbG">
                        <node concept="37vLTw" id="4J__M62Op3" role="2Oq$k0">
                          <ref role="3cqZAo" node="3DPJ8QIuOwX" resolve="invalidatedSet" />
                        </node>
                        <node concept="TSZUe" id="4J__M62Op4" role="2OqNvi">
                          <node concept="37vLTw" id="4J__M62Op6" role="25WWJ7">
                            <ref role="3cqZAo" node="5Qx6_6535W5" resolve="input" />
                          </node>
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
                  <node concept="9aQIb" id="17DrR$SSnol" role="9aQIa">
                    <node concept="3clFbS" id="17DrR$SSnom" role="9aQI4">
                      <node concept="3clFbF" id="17DrR$SSnSq" role="3cqZAp">
                        <node concept="2OqwBi" id="17DrR$SSoAR" role="3clFbG">
                          <node concept="37vLTw" id="17DrR$SSnSp" role="2Oq$k0">
                            <ref role="3cqZAo" node="17DrR$SRYI4" resolve="introducedSet" />
                          </node>
                          <node concept="TSZUe" id="17DrR$SSpGw" role="2OqNvi">
                            <node concept="37vLTw" id="17DrR$SSpZ8" role="25WWJ7">
                              <ref role="3cqZAo" node="5Qx6_6533W7" resolve="changed" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6nFpYluV3hm" role="3clFbw">
                <node concept="37vLTw" id="1ZiI2IC5B59" role="3uHU7B">
                  <ref role="3cqZAo" node="5Qx6_6533W7" resolve="changed" />
                </node>
                <node concept="10Nm6u" id="6nFpYluV4m9" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5Qx6_6533W7" role="1Duv9x">
            <property role="TrG5h" value="changed" />
            <node concept="3Tqbb2" id="5Qx6_6533Wb" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="5Qx6_6533Wc" role="1DdaDG">
            <ref role="3cqZAo" node="5Qx6_652RX9" resolve="changedSetClosure" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5Qx6_653Jzl" role="lGtFl">
        <node concept="TZ5HA" id="5Qx6_653Jzm" role="TZ5H$">
          <node concept="1dT_AC" id="5Qx6_653Jzn" role="1dT_Ay">
            <property role="1dT_AB" value="Walk all nodes from " />
          </node>
          <node concept="1dT_AA" id="5Qx6_653P3G" role="1dT_Ay">
            <node concept="VVOAv" id="5Qx6_653P3U" role="qph3F">
              <node concept="TZ5HA" id="5Qx6_653P3W" role="2Xj1qM">
                <node concept="1dT_AC" id="5Qx6_653P48" role="1dT_Ay">
                  <property role="1dT_AB" value="changedSetClosure" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Qx6_653P3F" role="1dT_Ay">
            <property role="1dT_AB" value=", find the appropriate input node and mark" />
          </node>
        </node>
        <node concept="TZ5HA" id="3DPJ8QIY6Xk" role="TZ5H$">
          <node concept="1dT_AC" id="3DPJ8QIY6Xl" role="1dT_Ay">
            <property role="1dT_AB" value="it as invalidated." />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1XKnVQm249" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Qx6_652yo9" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu3KpJ" role="jymVt">
      <property role="TrG5h" value="sourcesOf" />
      <node concept="37vLTG" id="6nFpYlu3W$E" role="3clF46">
        <property role="TrG5h" value="dep" />
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
                <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedDependencies" />
              </node>
              <node concept="2Nt0df" id="6nFpYlu46uV" role="2OqNvi">
                <node concept="37vLTw" id="3DPJ8QIEMBs" role="38cxEo">
                  <ref role="3cqZAo" node="6nFpYlu3W$E" resolve="dep" />
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
                  <node concept="37vLTw" id="3DPJ8QIEMBr" role="3ElVtu">
                    <ref role="3cqZAo" node="6nFpYlu3W$E" resolve="dep" />
                  </node>
                  <node concept="37vLTw" id="6nFpYlu46yl" role="3ElQJh">
                    <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedDependencies" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6nFpYlu48sk" role="3cqZAp">
          <node concept="3EllGN" id="6nFpYlu48VU" role="3clFbG">
            <node concept="37vLTw" id="3DPJ8QIEMBt" role="3ElVtu">
              <ref role="3cqZAo" node="6nFpYlu3W$E" resolve="dep" />
            </node>
            <node concept="37vLTw" id="6nFpYlu48si" role="3ElQJh">
              <ref role="3cqZAo" node="6nFpYlu3FKa" resolve="reversedDependencies" />
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
        <node concept="1LlUBW" id="1XKnVQk48U" role="_ZDj9">
          <node concept="3uibUv" id="1XKnVQk48V" role="1Lm7xW">
            <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
          <node concept="3vKaQO" id="1XKnVQk48W" role="1Lm7xW">
            <node concept="3uibUv" id="1XKnVQk48X" role="3O5elw">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
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
                    <node concept="1LlUBW" id="1XKnVQk61G" role="HW$YZ">
                      <node concept="3uibUv" id="1XKnVQk61H" role="1Lm7xW">
                        <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
                      </node>
                      <node concept="3vKaQO" id="1XKnVQk61I" role="1Lm7xW">
                        <node concept="3uibUv" id="1XKnVQk61J" role="3O5elw">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
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
    <node concept="3clFb_" id="3u5wJtdQ7a" role="jymVt">
      <property role="TrG5h" value="startTrackingChanges" />
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
                <ref role="2Oxat5" node="6nFpYlu6O1H" resolve="changesTracker" />
              </node>
            </node>
            <node concept="2ShNRf" id="3u5wJtebs7" role="37vLTx">
              <node concept="1pGfFk" id="4jShfh66_sM" role="2ShVmc">
                <ref role="37wK5l" node="2gPSxXTVNXh" resolve="UpdatesRecorder.ChangesTracker" />
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
              <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="changesTracker" />
            </node>
            <node concept="liA8E" id="6nFpYlvpOJq" role="2OqNvi">
              <ref role="37wK5l" node="3GLv42NcIeZ" resolve="activate" />
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
                  <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="changesTracker" />
                </node>
                <node concept="liA8E" id="4jShfh66NBh" role="2OqNvi">
                  <ref role="37wK5l" node="3GLv42Ne5DL" resolve="deactivate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3u5wJtebVE" role="3cqZAp">
              <node concept="37vLTI" id="3u5wJtecK5" role="3clFbG">
                <node concept="10Nm6u" id="3u5wJtecSP" role="37vLTx" />
                <node concept="2OqwBi" id="3u5wJtec9g" role="37vLTJ">
                  <node concept="Xjq3P" id="3u5wJtebVC" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6nFpYlu6QYK" role="2OqNvi">
                    <ref role="2Oxat5" node="6nFpYlu6O1H" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4jShfh66OX1" role="3clFbw">
            <node concept="10Nm6u" id="4jShfh66Pc_" role="3uHU7w" />
            <node concept="37vLTw" id="6nFpYlu6QBa" role="3uHU7B">
              <ref role="3cqZAo" node="6nFpYlu6O1H" resolve="changesTracker" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nFpYlu6Kdc" role="jymVt" />
    <node concept="3clFb_" id="6nFpYlu71k3" role="jymVt">
      <property role="TrG5h" value="updateChangedSet" />
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
              <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changedSet" />
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
                <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangedSet" />
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
    <node concept="2tJIrI" id="3swcsd3HyC3" role="jymVt" />
    <node concept="3clFb_" id="3swcsd3HEpD" role="jymVt">
      <property role="TrG5h" value="updateChangeAnscestors" />
      <node concept="37vLTG" id="3swcsd3IfZX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3swcsd3Ik2T" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3swcsd3HEpF" role="3clF45" />
      <node concept="3Tm6S6" id="3swcsd3HKXF" role="1B3o_S" />
      <node concept="3clFbS" id="3swcsd3HEpH" role="3clF47">
        <node concept="3clFbF" id="3swcsd3Imke" role="3cqZAp">
          <node concept="2OqwBi" id="3swcsd3ILC$" role="3clFbG">
            <node concept="2OqwBi" id="3swcsd3I$Am" role="2Oq$k0">
              <node concept="2OqwBi" id="3swcsd3IpN9" role="2Oq$k0">
                <node concept="37vLTw" id="3swcsd3Imkd" role="2Oq$k0">
                  <ref role="3cqZAo" node="3swcsd3IfZX" resolve="node" />
                </node>
                <node concept="z$bX8" id="3swcsd3ItXD" role="2OqNvi" />
              </node>
              <node concept="1KnU$U" id="3swcsd3IGFJ" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="3swcsd3IQJK" role="2OqNvi">
              <node concept="1bVj0M" id="3swcsd3IQJM" role="23t8la">
                <node concept="3clFbS" id="3swcsd3IQJN" role="1bW5cS">
                  <node concept="3clFbF" id="3swcsd3IUY2" role="3cqZAp">
                    <node concept="2OqwBi" id="3swcsd3IYUk" role="3clFbG">
                      <node concept="37vLTw" id="3swcsd3IUY1" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nFpYlu6n2t" resolve="changedSet" />
                      </node>
                      <node concept="TSZUe" id="3swcsd3J38z" role="2OqNvi">
                        <node concept="37vLTw" id="3swcsd3J7pE" role="25WWJ7">
                          <ref role="3cqZAo" node="3swcsd3IQJO" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="3swcsd3IQJO" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3swcsd3IQJP" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3DPJ8QIsyJo" role="jymVt" />
    <node concept="312cEu" id="6nFpYltKKoQ" role="jymVt">
      <property role="TrG5h" value="ChangesTracker" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="6nFpYltKQon" role="jymVt" />
      <node concept="3clFbW" id="2gPSxXTVNXh" role="jymVt">
        <node concept="37vLTG" id="2gPSxXTVNXk" role="3clF46">
          <property role="TrG5h" value="observable" />
          <node concept="H_c77" id="2gPSxXTVNXl" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="2gPSxXTVNXm" role="3clF45" />
        <node concept="3Tm1VV" id="2gPSxXTVNXn" role="1B3o_S" />
        <node concept="3clFbS" id="2gPSxXTVNXo" role="3clF47">
          <node concept="3clFbF" id="3GLv42NcQES" role="3cqZAp">
            <node concept="37vLTI" id="3GLv42NcQET" role="3clFbG">
              <node concept="37vLTw" id="3GLv42NcQEU" role="37vLTx">
                <ref role="3cqZAo" node="2gPSxXTVNXk" resolve="observable" />
              </node>
              <node concept="2OqwBi" id="3GLv42NcQEV" role="37vLTJ">
                <node concept="Xjq3P" id="3GLv42NcQEW" role="2Oq$k0" />
                <node concept="2OwXpG" id="3GLv42NcQEX" role="2OqNvi">
                  <ref role="2Oxat5" node="3GLv42NcOC7" resolve="observable" />
                </node>
              </node>
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
              <node concept="1rXfSq" id="3DPJ8QIsneu" role="2Oq$k0">
                <ref role="37wK5l" node="3DPJ8QIkRmQ" resolve="getRelevantModels" />
              </node>
              <node concept="2es0OD" id="6PD9XvnQH0Q" role="2OqNvi">
                <node concept="1bVj0M" id="6PD9XvnQH0R" role="23t8la">
                  <node concept="3clFbS" id="6PD9XvnQH0S" role="1bW5cS">
                    <node concept="3clFbF" id="6PD9XvnQH$1" role="3cqZAp">
                      <node concept="2OqwBi" id="6PD9XvnQH$2" role="3clFbG">
                        <node concept="liA8E" id="6PD9XvnQH$3" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                          <node concept="Xjq3P" id="6PD9XvnQH$4" role="37wK5m" />
                        </node>
                        <node concept="2JrnkZ" id="6PD9XvnQH$5" role="2Oq$k0">
                          <node concept="37vLTw" id="3GLv42NdYKf" role="2JrQYb">
                            <ref role="3cqZAo" node="6E5fMGvfKQA" resolve="m" />
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
                          <node concept="37vLTw" id="3GLv42NdYRU" role="2JrQYb">
                            <ref role="3cqZAo" node="6E5fMGvfKQA" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="6E5fMGvfKQA" role="1bW2Oz">
                    <property role="TrG5h" value="m" />
                    <node concept="2jxLKc" id="6E5fMGvfKQB" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6PD9XvnQChN" role="1B3o_S" />
        <node concept="3cqZAl" id="6PD9XvnQDwp" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="3GLv42NcCdJ" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NcIeZ" role="jymVt">
        <property role="TrG5h" value="activate" />
        <node concept="3cqZAl" id="3GLv42NcIf1" role="3clF45" />
        <node concept="3Tm6S6" id="3GLv42NcIf2" role="1B3o_S" />
        <node concept="3clFbS" id="3GLv42NcIf3" role="3clF47">
          <node concept="3clFbF" id="3GLv42Ne9Yw" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42Ne9Yx" role="3clFbG">
              <node concept="1rXfSq" id="3GLv42Ne9Yy" role="2Oq$k0">
                <ref role="37wK5l" node="3DPJ8QIkRmQ" resolve="getRelevantModels" />
              </node>
              <node concept="2es0OD" id="3GLv42Ne9Yz" role="2OqNvi">
                <node concept="1bVj0M" id="3GLv42Ne9Y$" role="23t8la">
                  <node concept="3clFbS" id="3GLv42Ne9Y_" role="1bW5cS">
                    <node concept="3clFbF" id="3GLv42Ne9YJ" role="3cqZAp">
                      <node concept="2OqwBi" id="3GLv42Ne9YK" role="3clFbG">
                        <node concept="liA8E" id="3GLv42Ne9YL" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                          <node concept="Xjq3P" id="3GLv42Ne9YM" role="37wK5m" />
                        </node>
                        <node concept="2JrnkZ" id="3GLv42Ne9YN" role="2Oq$k0">
                          <node concept="37vLTw" id="3GLv42NebhA" role="2JrQYb">
                            <ref role="3cqZAo" node="6E5fMGvfKQC" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="6E5fMGvfKQC" role="1bW2Oz">
                    <property role="TrG5h" value="m" />
                    <node concept="2jxLKc" id="6E5fMGvfKQD" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GLv42NcNT7" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42NcNT8" role="3clFbG">
              <node concept="2JrnkZ" id="3GLv42NcNT9" role="2Oq$k0">
                <node concept="37vLTw" id="3GLv42NdZ1a" role="2JrQYb">
                  <ref role="3cqZAo" node="3GLv42NcOC7" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="3GLv42NcNTb" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                <node concept="Xjq3P" id="3GLv42NcNTc" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GLv42NcNTd" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42NcNTe" role="3clFbG">
              <node concept="2JrnkZ" id="3GLv42NcNTf" role="2Oq$k0">
                <node concept="37vLTw" id="3GLv42NdZl2" role="2JrQYb">
                  <ref role="3cqZAo" node="3GLv42NcOC7" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="3GLv42NcNTh" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="addModelListener" />
                <node concept="Xjq3P" id="3GLv42NcNTi" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42Ne6Y6" role="jymVt" />
      <node concept="3clFb_" id="3GLv42Ne5DL" role="jymVt">
        <property role="TrG5h" value="deactivate" />
        <node concept="3cqZAl" id="3GLv42Ne5DM" role="3clF45" />
        <node concept="3Tm1VV" id="3GLv42Ne5DN" role="1B3o_S" />
        <node concept="3clFbS" id="3GLv42Ne5DO" role="3clF47">
          <node concept="3clFbF" id="3GLv42NebNV" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42NebNW" role="3clFbG">
              <node concept="1rXfSq" id="3GLv42NebNX" role="2Oq$k0">
                <ref role="37wK5l" node="3DPJ8QIkRmQ" resolve="getRelevantModels" />
              </node>
              <node concept="2es0OD" id="3GLv42NebNY" role="2OqNvi">
                <node concept="1bVj0M" id="3GLv42NebNZ" role="23t8la">
                  <node concept="3clFbS" id="3GLv42NebO0" role="1bW5cS">
                    <node concept="3clFbF" id="3GLv42NebOa" role="3cqZAp">
                      <node concept="2OqwBi" id="3GLv42NebOb" role="3clFbG">
                        <node concept="liA8E" id="3GLv42NebOc" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                          <node concept="Xjq3P" id="3GLv42NebOd" role="37wK5m" />
                        </node>
                        <node concept="2JrnkZ" id="3GLv42NebOe" role="2Oq$k0">
                          <node concept="37vLTw" id="3GLv42Nedcu" role="2JrQYb">
                            <ref role="3cqZAo" node="6E5fMGvfKQE" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="6E5fMGvfKQE" role="1bW2Oz">
                    <property role="TrG5h" value="m" />
                    <node concept="2jxLKc" id="6E5fMGvfKQF" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GLv42Ne5El" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42Ne5Em" role="3clFbG">
              <node concept="2JrnkZ" id="3GLv42Ne5En" role="2Oq$k0">
                <node concept="37vLTw" id="3GLv42Ne5Eo" role="2JrQYb">
                  <ref role="3cqZAo" node="3GLv42NcOC7" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="3GLv42Ne5Ep" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                <node concept="Xjq3P" id="3GLv42Ne5Eq" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GLv42Ne5Er" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42Ne5Es" role="3clFbG">
              <node concept="2JrnkZ" id="3GLv42Ne5Et" role="2Oq$k0">
                <node concept="37vLTw" id="3GLv42Ne5Eu" role="2JrQYb">
                  <ref role="3cqZAo" node="3GLv42NcOC7" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="3GLv42Ne5Ev" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="removeModelListener" />
                <node concept="Xjq3P" id="3GLv42Ne5Ew" role="37wK5m" />
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
              <node concept="37vLTw" id="3DPJ8QImfWn" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
              </node>
              <node concept="liA8E" id="357z3MCehDP" role="2OqNvi">
                <ref role="37wK5l" node="3GLv42NdnXR" resolve="isRelevant" />
                <node concept="37vLTw" id="357z3MCehMs" role="37wK5m">
                  <ref role="3cqZAo" node="6nFpYltKQqr" resolve="event" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6nFpYlu6mL5" role="3clFbx">
              <node concept="3clFbF" id="6nFpYlu73j7" role="3cqZAp">
                <node concept="1rXfSq" id="6nFpYlu73j6" role="3clFbG">
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangedSet" />
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
              <node concept="3clFbF" id="3swcsd3Lm5Z" role="3cqZAp">
                <node concept="1rXfSq" id="3swcsd3Lm60" role="3clFbG">
                  <ref role="37wK5l" node="3swcsd3HEpD" resolve="updateChangeAnscestors" />
                  <node concept="10QFUN" id="3swcsd3Lm61" role="37wK5m">
                    <node concept="2OqwBi" id="3swcsd3Lm62" role="10QFUP">
                      <node concept="37vLTw" id="3swcsd3Lm63" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nFpYltKQqr" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3swcsd3LqwY" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="3swcsd3Lm65" role="10QFUM" />
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
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangedSet" />
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
              <node concept="3clFbF" id="3swcsd3Lgq9" role="3cqZAp">
                <node concept="1rXfSq" id="3swcsd3Lgqa" role="3clFbG">
                  <ref role="37wK5l" node="3swcsd3HEpD" resolve="updateChangeAnscestors" />
                  <node concept="10QFUN" id="3swcsd3Lgqb" role="37wK5m">
                    <node concept="2OqwBi" id="3swcsd3Lgqc" role="10QFUP">
                      <node concept="37vLTw" id="3swcsd3Lgqd" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nFpYltKQq$" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3swcsd3LuKw" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="3swcsd3Lgqf" role="10QFUM" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="357z3MCeia9" role="3clFbw">
              <node concept="37vLTw" id="3DPJ8QImfrm" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
              </node>
              <node concept="liA8E" id="357z3MCeiab" role="2OqNvi">
                <ref role="37wK5l" node="3GLv42NdnY3" resolve="isRelevant" />
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
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangedSet" />
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
              <node concept="3clFbF" id="3swcsd3JhpE" role="3cqZAp">
                <node concept="1rXfSq" id="3swcsd3JhpC" role="3clFbG">
                  <ref role="37wK5l" node="3swcsd3HEpD" resolve="updateChangeAnscestors" />
                  <node concept="10QFUN" id="3swcsd3JA$9" role="37wK5m">
                    <node concept="2OqwBi" id="3swcsd3JA$a" role="10QFUP">
                      <node concept="37vLTw" id="3swcsd3JA$b" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nFpYltKQqH" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3swcsd3JA$c" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="3swcsd3JA$d" role="10QFUM" />
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
              <node concept="37vLTw" id="3DPJ8QImf5o" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
              </node>
              <node concept="liA8E" id="357z3MCeiDw" role="2OqNvi">
                <ref role="37wK5l" node="3GLv42NdnYf" resolve="isRelevant" />
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
                  <ref role="37wK5l" node="6nFpYlu71k3" resolve="updateChangedSet" />
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
              <node concept="3clFbF" id="3swcsd3JJmQ" role="3cqZAp">
                <node concept="1rXfSq" id="3swcsd3JJmR" role="3clFbG">
                  <ref role="37wK5l" node="3swcsd3HEpD" resolve="updateChangeAnscestors" />
                  <node concept="10QFUN" id="3swcsd3JJmS" role="37wK5m">
                    <node concept="2OqwBi" id="3swcsd3JJmT" role="10QFUP">
                      <node concept="37vLTw" id="3swcsd3JJmU" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nFpYltKQqQ" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3swcsd3JJmV" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="3swcsd3JJmW" role="10QFUM" />
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
              <node concept="37vLTw" id="3DPJ8QImeJx" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
              </node>
              <node concept="liA8E" id="357z3MCej8S" role="2OqNvi">
                <ref role="37wK5l" node="3GLv42NdnYw" resolve="isRelevant" />
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
      <node concept="2tJIrI" id="3DPJ8QIkPQK" role="jymVt" />
      <node concept="3clFb_" id="3DPJ8QIkRmQ" role="jymVt">
        <property role="TrG5h" value="getRelevantModels" />
        <node concept="3Tm1VV" id="3DPJ8QIkRmS" role="1B3o_S" />
        <node concept="3vKaQO" id="3GLv42Nd1CY" role="3clF45">
          <node concept="H_c77" id="3GLv42Nd1CZ" role="3O5elw" />
        </node>
        <node concept="3clFbS" id="3DPJ8QIkRmV" role="3clF47">
          <node concept="3clFbF" id="3DPJ8QIkT44" role="3cqZAp">
            <node concept="2OqwBi" id="3DPJ8QIkTy$" role="3clFbG">
              <node concept="37vLTw" id="3DPJ8QImemt" role="2Oq$k0">
                <ref role="3cqZAo" node="357z3MCpd1F" resolve="relevantNodesMonitor" />
              </node>
              <node concept="liA8E" id="3DPJ8QIkTY1" role="2OqNvi">
                <ref role="37wK5l" node="3GLv42NdnXb" resolve="getRelevantModels" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NcA8t" role="jymVt" />
      <node concept="312cEg" id="3GLv42NcOC7" role="jymVt">
        <property role="TrG5h" value="observable" />
        <node concept="3Tm6S6" id="3GLv42NcOC8" role="1B3o_S" />
        <node concept="H_c77" id="3GLv42NcOC9" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3GLv42NcUtL" role="1zkMxy">
        <ref role="3uigEE" to="mhbf:~SModelListenerBase" resolve="SModelListenerBase" />
      </node>
      <node concept="3uibUv" id="3GLv42NcX9K" role="EKbjA">
        <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="3GLv42Ndv3W" role="jymVt" />
    <node concept="312cEu" id="3GLv42NdnWW" role="jymVt">
      <property role="TrG5h" value="RelevantNodesMonitor" />
      <node concept="2tJIrI" id="3GLv42NdnWX" role="jymVt" />
      <node concept="3clFbW" id="3GLv42NdnWY" role="jymVt">
        <node concept="37vLTG" id="3GLv42NdnWZ" role="3clF46">
          <property role="TrG5h" value="unit" />
          <node concept="3Tqbb2" id="3GLv42NdnX0" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="3GLv42NdnX1" role="3clF45" />
        <node concept="3clFbS" id="3GLv42NdnX2" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnX3" role="3cqZAp">
            <node concept="37vLTI" id="3GLv42NdnX4" role="3clFbG">
              <node concept="37vLTw" id="3GLv42NdnX5" role="37vLTx">
                <ref role="3cqZAo" node="3GLv42NdnWZ" resolve="unit" />
              </node>
              <node concept="2OqwBi" id="3GLv42NdnX6" role="37vLTJ">
                <node concept="Xjq3P" id="3GLv42NdnX7" role="2Oq$k0" />
                <node concept="2OwXpG" id="3GLv42NdnX8" role="2OqNvi">
                  <ref role="2Oxat5" node="3GLv42Ndo0X" resolve="unit" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3GLv42NdnX9" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3GLv42NdnXa" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnXb" role="jymVt">
        <property role="TrG5h" value="getRelevantModels" />
        <node concept="3clFbS" id="3GLv42NdnXc" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnXd" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42NdnXe" role="3clFbG">
              <node concept="37vLTw" id="3GLv42NdnXf" role="2Oq$k0">
                <ref role="3cqZAo" node="3GLv42Ndo1b" resolve="referredModels" />
              </node>
              <node concept="26Dbio" id="3GLv42NdnXg" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3GLv42NdnXh" role="1B3o_S" />
        <node concept="3vKaQO" id="3GLv42NdnXi" role="3clF45">
          <node concept="H_c77" id="3GLv42NdXTR" role="3O5elw" />
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NdnXk" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnXl" role="jymVt">
        <property role="TrG5h" value="getRelevantOrigins" />
        <node concept="3Tm1VV" id="3GLv42NdnXm" role="1B3o_S" />
        <node concept="3vKaQO" id="3GLv42NdnXn" role="3clF45">
          <node concept="2sp9CU" id="3GLv42NdnXo" role="3O5elw" />
        </node>
        <node concept="3clFbS" id="3GLv42NdnXp" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnXq" role="3cqZAp">
            <node concept="2OqwBi" id="3GLv42NdnXr" role="3clFbG">
              <node concept="2OqwBi" id="3GLv42NdnXs" role="2Oq$k0">
                <node concept="37vLTw" id="3GLv42NdnXt" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GLv42Ndo10" resolve="origin2relevantNodes" />
                </node>
                <node concept="3lbrtF" id="3GLv42NdnXu" role="2OqNvi" />
              </node>
              <node concept="26Dbio" id="3GLv42NdnXv" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NdnXw" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnXx" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="3clFbS" id="3GLv42NdnXy" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnXz" role="3cqZAp">
            <node concept="1rXfSq" id="3GLv42NdnX$" role="3clFbG">
              <ref role="37wK5l" node="3GLv42NdnZy" resolve="updateRelevantNodes" />
              <node concept="37vLTw" id="3GLv42NdnX_" role="37wK5m">
                <ref role="3cqZAo" node="3GLv42NdnXO" resolve="updatedNode" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="3GLv42NdnXA" role="3cqZAp">
            <node concept="3cpWsn" id="3GLv42NdnXB" role="1Duv9x">
              <property role="TrG5h" value="ref" />
              <node concept="2z4iKi" id="3GLv42NdnXC" role="1tU5fm" />
            </node>
            <node concept="2OqwBi" id="3GLv42NdnXD" role="1DdaDG">
              <node concept="37vLTw" id="3GLv42NdnXE" role="2Oq$k0">
                <ref role="3cqZAo" node="3GLv42NdnXO" resolve="updatedNode" />
              </node>
              <node concept="2z74zc" id="3GLv42NdnXF" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="3GLv42NdnXG" role="2LFqv$">
              <node concept="3clFbF" id="3GLv42NdnXH" role="3cqZAp">
                <node concept="1rXfSq" id="3GLv42NdnXI" role="3clFbG">
                  <ref role="37wK5l" node="3GLv42NdnZy" resolve="updateRelevantNodes" />
                  <node concept="2OqwBi" id="3GLv42NdnXJ" role="37wK5m">
                    <node concept="37vLTw" id="3GLv42NdnXK" role="2Oq$k0">
                      <ref role="3cqZAo" node="3GLv42NdnXB" resolve="ref" />
                    </node>
                    <node concept="2ZHEkA" id="3GLv42NdnXL" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3GLv42NdnXM" role="1B3o_S" />
        <node concept="3cqZAl" id="3GLv42NdnXN" role="3clF45" />
        <node concept="37vLTG" id="3GLv42NdnXO" role="3clF46">
          <property role="TrG5h" value="updatedNode" />
          <node concept="3Tqbb2" id="3GLv42NdnXP" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NdnXQ" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnXR" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="3GLv42NdnXS" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="3GLv42NdnXT" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
          </node>
        </node>
        <node concept="10P_77" id="3GLv42NdnXU" role="3clF45" />
        <node concept="3Tm1VV" id="3GLv42NdnXV" role="1B3o_S" />
        <node concept="3clFbS" id="3GLv42NdnXW" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnXX" role="3cqZAp">
            <node concept="1rXfSq" id="3GLv42NdnXY" role="3clFbG">
              <ref role="37wK5l" node="3GLv42NdnYX" resolve="isRelevantNode" />
              <node concept="2OqwBi" id="3GLv42NdnXZ" role="37wK5m">
                <node concept="37vLTw" id="3GLv42NdnY0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GLv42NdnXS" resolve="event" />
                </node>
                <node concept="liA8E" id="3GLv42NdnY1" role="2OqNvi">
                  <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NdnY2" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnY3" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="3GLv42NdnY4" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="3GLv42NdnY5" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
          </node>
        </node>
        <node concept="10P_77" id="3GLv42NdnY6" role="3clF45" />
        <node concept="3Tm1VV" id="3GLv42NdnY7" role="1B3o_S" />
        <node concept="3clFbS" id="3GLv42NdnY8" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnY9" role="3cqZAp">
            <node concept="1rXfSq" id="3GLv42NdnYa" role="3clFbG">
              <ref role="37wK5l" node="3GLv42NdnYX" resolve="isRelevantNode" />
              <node concept="2OqwBi" id="3GLv42NdnYb" role="37wK5m">
                <node concept="37vLTw" id="3GLv42NdnYc" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GLv42NdnY4" resolve="event" />
                </node>
                <node concept="liA8E" id="3GLv42NdnYd" role="2OqNvi">
                  <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NdnYe" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnYf" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="3GLv42NdnYg" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="3GLv42NdnYh" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
          </node>
        </node>
        <node concept="10P_77" id="3GLv42NdnYi" role="3clF45" />
        <node concept="3Tm1VV" id="3GLv42NdnYj" role="1B3o_S" />
        <node concept="3clFbS" id="3GLv42NdnYk" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnYl" role="3cqZAp">
            <node concept="1Wc70l" id="3GLv42NdnYm" role="3clFbG">
              <node concept="3fqX7Q" id="3GLv42NdnYn" role="3uHU7B">
                <node concept="2OqwBi" id="3GLv42NdnYo" role="3fr31v">
                  <node concept="37vLTw" id="3GLv42NdnYp" role="2Oq$k0">
                    <ref role="3cqZAo" node="3GLv42NdnYg" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3GLv42NdnYq" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeAddEvent.isRoot()" resolve="isRoot" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="3GLv42NdnYr" role="3uHU7w">
                <ref role="37wK5l" node="3GLv42NdnYX" resolve="isRelevantNode" />
                <node concept="2OqwBi" id="3GLv42NdnYs" role="37wK5m">
                  <node concept="37vLTw" id="3GLv42NdnYt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3GLv42NdnYg" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3GLv42NdnYu" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NdnYv" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnYw" role="jymVt">
        <property role="TrG5h" value="isRelevant" />
        <node concept="37vLTG" id="3GLv42NdnYx" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="3GLv42NdnYy" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
          </node>
        </node>
        <node concept="10P_77" id="3GLv42NdnYz" role="3clF45" />
        <node concept="3Tm1VV" id="3GLv42NdnY$" role="1B3o_S" />
        <node concept="3clFbS" id="3GLv42NdnY_" role="3clF47">
          <node concept="3clFbF" id="3GLv42NdnYA" role="3cqZAp">
            <node concept="22lmx$" id="3GLv42NdnYB" role="3clFbG">
              <node concept="1eOMI4" id="3GLv42NdnYC" role="3uHU7w">
                <node concept="1Wc70l" id="3GLv42NdnYD" role="1eOMHV">
                  <node concept="3y3z36" id="3GLv42NdnYE" role="3uHU7B">
                    <node concept="10Nm6u" id="3GLv42NdnYF" role="3uHU7w" />
                    <node concept="2OqwBi" id="3GLv42NdnYG" role="3uHU7B">
                      <node concept="37vLTw" id="3GLv42NdnYH" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42NdnYx" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3GLv42NdnYI" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="3GLv42NdnYJ" role="3uHU7w">
                    <ref role="37wK5l" node="3GLv42NdnYX" resolve="isRelevantNode" />
                    <node concept="2OqwBi" id="3GLv42NdnYK" role="37wK5m">
                      <node concept="37vLTw" id="3GLv42NdnYL" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42NdnYx" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3GLv42NdnYM" role="2OqNvi">
                        <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="3GLv42NdnYN" role="3uHU7B">
                <node concept="1Wc70l" id="3GLv42NdnYO" role="1eOMHV">
                  <node concept="2OqwBi" id="3GLv42NdnYP" role="3uHU7B">
                    <node concept="37vLTw" id="3GLv42NdnYQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3GLv42NdnYx" resolve="event" />
                    </node>
                    <node concept="liA8E" id="3GLv42NdnYR" role="2OqNvi">
                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.isRoot()" resolve="isRoot" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="3GLv42NdnYS" role="3uHU7w">
                    <ref role="37wK5l" node="3GLv42NdnYX" resolve="isRelevantNode" />
                    <node concept="2OqwBi" id="3GLv42NdnYT" role="37wK5m">
                      <node concept="37vLTw" id="3GLv42NdnYU" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42NdnYx" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3GLv42NdnYV" role="2OqNvi">
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
      <node concept="2tJIrI" id="3GLv42NdnYW" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnYX" role="jymVt">
        <property role="TrG5h" value="isRelevantNode" />
        <node concept="3clFbS" id="3GLv42NdnYY" role="3clF47">
          <node concept="3cpWs8" id="3GLv42NdnYZ" role="3cqZAp">
            <node concept="3cpWsn" id="3GLv42NdnZ0" role="3cpWs9">
              <property role="TrG5h" value="root" />
              <node concept="3Tqbb2" id="3GLv42NdnZ1" role="1tU5fm" />
              <node concept="2OqwBi" id="3GLv42NdnZ2" role="33vP2m">
                <node concept="liA8E" id="3GLv42NdnZ3" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                </node>
                <node concept="37vLTw" id="3GLv42NdnZ4" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GLv42NdnZv" resolve="n" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3GLv42NdnZ5" role="3cqZAp">
            <node concept="22lmx$" id="3GLv42NdnZ6" role="3cqZAk">
              <node concept="1Wc70l" id="3GLv42NdnZ7" role="3uHU7w">
                <node concept="2OqwBi" id="3GLv42NdnZ8" role="3uHU7B">
                  <node concept="37vLTw" id="3GLv42NdnZ9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3GLv42Ndo10" resolve="origin2relevantNodes" />
                  </node>
                  <node concept="2Nt0df" id="3GLv42NdnZa" role="2OqNvi">
                    <node concept="2OqwBi" id="3GLv42NdnZb" role="38cxEo">
                      <node concept="37vLTw" id="3GLv42NdnZc" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42NdnZ0" resolve="root" />
                      </node>
                      <node concept="iZEcu" id="3GLv42NdnZd" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3GLv42NdnZe" role="3uHU7w">
                  <node concept="3EllGN" id="3GLv42NdnZf" role="2Oq$k0">
                    <node concept="2OqwBi" id="3GLv42NdnZg" role="3ElVtu">
                      <node concept="37vLTw" id="3GLv42NdnZh" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42NdnZ0" resolve="root" />
                      </node>
                      <node concept="iZEcu" id="3GLv42NdnZi" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="3GLv42NdnZj" role="3ElQJh">
                      <ref role="3cqZAo" node="3GLv42Ndo10" resolve="origin2relevantNodes" />
                    </node>
                  </node>
                  <node concept="3JPx81" id="3GLv42NdnZk" role="2OqNvi">
                    <node concept="2OqwBi" id="3GLv42NdnZl" role="25WWJ7">
                      <node concept="liA8E" id="3GLv42NdnZm" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                      </node>
                      <node concept="37vLTw" id="3GLv42NdnZn" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42NdnZv" resolve="n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3GLv42NdnZo" role="3uHU7B">
                <node concept="37vLTw" id="3GLv42NdnZp" role="3uHU7B">
                  <ref role="3cqZAo" node="3GLv42NdnZ0" resolve="root" />
                </node>
                <node concept="2OqwBi" id="3GLv42NdnZq" role="3uHU7w">
                  <node concept="Xjq3P" id="3GLv42NdnZr" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3GLv42NdnZs" role="2OqNvi">
                    <ref role="2Oxat5" node="3GLv42Ndo0X" resolve="unit" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3GLv42NdnZt" role="1B3o_S" />
        <node concept="10P_77" id="3GLv42NdnZu" role="3clF45" />
        <node concept="37vLTG" id="3GLv42NdnZv" role="3clF46">
          <property role="TrG5h" value="n" />
          <node concept="3uibUv" id="3GLv42NdnZw" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42NdnZx" role="jymVt" />
      <node concept="3clFb_" id="3GLv42NdnZy" role="jymVt">
        <property role="TrG5h" value="updateRelevantNodes" />
        <node concept="3clFbS" id="3GLv42NdnZz" role="3clF47">
          <node concept="3cpWs8" id="3GLv42NdnZ$" role="3cqZAp">
            <node concept="3cpWsn" id="3GLv42NdnZ_" role="3cpWs9">
              <property role="TrG5h" value="otherUnit" />
              <node concept="3Tqbb2" id="3GLv42NdnZA" role="1tU5fm" />
              <node concept="2OqwBi" id="3GLv42NdnZB" role="33vP2m">
                <node concept="37vLTw" id="3GLv42NdnZC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GLv42Ndo0U" resolve="n" />
                </node>
                <node concept="2Rxl7S" id="3GLv42NdnZD" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3GLv42NdnZE" role="3cqZAp">
            <node concept="3clFbS" id="3GLv42NdnZF" role="3clFbx">
              <node concept="3cpWs6" id="3GLv42NdnZG" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="3GLv42NdnZH" role="3clFbw">
              <node concept="3clFbC" id="3GLv42NdnZI" role="3uHU7w">
                <node concept="10Nm6u" id="3GLv42NdnZJ" role="3uHU7w" />
                <node concept="2OqwBi" id="3GLv42NdnZK" role="3uHU7B">
                  <node concept="37vLTw" id="3GLv42NdnZL" role="2Oq$k0">
                    <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
                  </node>
                  <node concept="I4A8Y" id="3GLv42NdnZM" role="2OqNvi" />
                </node>
              </node>
              <node concept="22lmx$" id="3GLv42NdnZN" role="3uHU7B">
                <node concept="3clFbC" id="3GLv42NdnZO" role="3uHU7B">
                  <node concept="37vLTw" id="3GLv42NdnZP" role="3uHU7B">
                    <ref role="3cqZAo" node="3GLv42Ndo0U" resolve="n" />
                  </node>
                  <node concept="10Nm6u" id="3GLv42NdnZQ" role="3uHU7w" />
                </node>
                <node concept="3clFbC" id="3GLv42NdnZR" role="3uHU7w">
                  <node concept="37vLTw" id="3GLv42NdnZS" role="3uHU7B">
                    <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
                  </node>
                  <node concept="10Nm6u" id="3GLv42NdnZT" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3GLv42NdnZU" role="3cqZAp" />
          <node concept="3clFbJ" id="3GLv42NdnZV" role="3cqZAp">
            <node concept="3y3z36" id="3GLv42NdnZW" role="3clFbw">
              <node concept="2OqwBi" id="3GLv42NdnZX" role="3uHU7w">
                <node concept="Xjq3P" id="3GLv42NdnZY" role="2Oq$k0" />
                <node concept="2OwXpG" id="3GLv42NdnZZ" role="2OqNvi">
                  <ref role="2Oxat5" node="3GLv42Ndo0X" resolve="unit" />
                </node>
              </node>
              <node concept="37vLTw" id="3GLv42Ndo00" role="3uHU7B">
                <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
              </node>
            </node>
            <node concept="3clFbS" id="3GLv42Ndo01" role="3clFbx">
              <node concept="3clFbH" id="3GLv42Ndo02" role="3cqZAp" />
              <node concept="3clFbJ" id="3GLv42Ndo03" role="3cqZAp">
                <node concept="3clFbS" id="3GLv42Ndo04" role="3clFbx">
                  <node concept="3clFbF" id="3GLv42Ndo05" role="3cqZAp">
                    <node concept="2OqwBi" id="3GLv42Ndo06" role="3clFbG">
                      <node concept="37vLTw" id="3GLv42Ndo07" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42Ndo1b" resolve="referredModels" />
                      </node>
                      <node concept="TSZUe" id="3GLv42Ndo08" role="2OqNvi">
                        <node concept="2OqwBi" id="3GLv42Ndo0c" role="25WWJ7">
                          <node concept="37vLTw" id="3GLv42Ndo0d" role="2Oq$k0">
                            <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
                          </node>
                          <node concept="I4A8Y" id="3GLv42Ndo0e" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="3GLv42Ndo0f" role="3clFbw">
                  <node concept="2OqwBi" id="3GLv42Ndo0g" role="3uHU7w">
                    <node concept="2OqwBi" id="3GLv42Ndo0h" role="2Oq$k0">
                      <node concept="Xjq3P" id="3GLv42Ndo0i" role="2Oq$k0" />
                      <node concept="2OwXpG" id="3GLv42Ndo0j" role="2OqNvi">
                        <ref role="2Oxat5" node="3GLv42Ndo0X" resolve="unit" />
                      </node>
                    </node>
                    <node concept="I4A8Y" id="3GLv42Ndo0k" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="3GLv42Ndo0l" role="3uHU7B">
                    <node concept="37vLTw" id="3GLv42Ndo0m" role="2Oq$k0">
                      <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
                    </node>
                    <node concept="I4A8Y" id="3GLv42Ndo0n" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3GLv42Ndo0o" role="3cqZAp" />
              <node concept="3clFbJ" id="3GLv42Ndo0p" role="3cqZAp">
                <node concept="3clFbS" id="3GLv42Ndo0q" role="3clFbx">
                  <node concept="3clFbF" id="3GLv42Ndo0r" role="3cqZAp">
                    <node concept="37vLTI" id="3GLv42Ndo0s" role="3clFbG">
                      <node concept="2ShNRf" id="3GLv42Ndo0t" role="37vLTx">
                        <node concept="2i4dXS" id="3GLv42Ndo0u" role="2ShVmc">
                          <node concept="3uibUv" id="3GLv42Ndo0v" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                          </node>
                        </node>
                      </node>
                      <node concept="3EllGN" id="3GLv42Ndo0w" role="37vLTJ">
                        <node concept="2OqwBi" id="3GLv42Ndo0x" role="3ElVtu">
                          <node concept="37vLTw" id="3GLv42Ndo0y" role="2Oq$k0">
                            <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
                          </node>
                          <node concept="iZEcu" id="3GLv42Ndo0z" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="3GLv42Ndo0$" role="3ElQJh">
                          <ref role="3cqZAo" node="3GLv42Ndo10" resolve="origin2relevantNodes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3GLv42Ndo0_" role="3clFbw">
                  <node concept="2OqwBi" id="3GLv42Ndo0A" role="3fr31v">
                    <node concept="37vLTw" id="3GLv42Ndo0B" role="2Oq$k0">
                      <ref role="3cqZAo" node="3GLv42Ndo10" resolve="origin2relevantNodes" />
                    </node>
                    <node concept="2Nt0df" id="3GLv42Ndo0C" role="2OqNvi">
                      <node concept="2OqwBi" id="3GLv42Ndo0D" role="38cxEo">
                        <node concept="37vLTw" id="3GLv42Ndo0E" role="2Oq$k0">
                          <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
                        </node>
                        <node concept="iZEcu" id="3GLv42Ndo0F" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3GLv42Ndo0G" role="3cqZAp">
                <node concept="2OqwBi" id="3GLv42Ndo0H" role="3clFbG">
                  <node concept="3EllGN" id="3GLv42Ndo0I" role="2Oq$k0">
                    <node concept="2OqwBi" id="3GLv42Ndo0J" role="3ElVtu">
                      <node concept="37vLTw" id="3GLv42Ndo0K" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GLv42NdnZ_" resolve="otherUnit" />
                      </node>
                      <node concept="iZEcu" id="3GLv42Ndo0L" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="3GLv42Ndo0M" role="3ElQJh">
                      <ref role="3cqZAo" node="3GLv42Ndo10" resolve="origin2relevantNodes" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="3GLv42Ndo0N" role="2OqNvi">
                    <node concept="2OqwBi" id="3GLv42Ndo0O" role="25WWJ7">
                      <node concept="liA8E" id="3GLv42Ndo0P" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                      </node>
                      <node concept="2JrnkZ" id="3GLv42Ndo0Q" role="2Oq$k0">
                        <node concept="37vLTw" id="3GLv42Ndo0R" role="2JrQYb">
                          <ref role="3cqZAo" node="3GLv42Ndo0U" resolve="n" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3GLv42Ndo0S" role="1B3o_S" />
        <node concept="3cqZAl" id="3GLv42Ndo0T" role="3clF45" />
        <node concept="37vLTG" id="3GLv42Ndo0U" role="3clF46">
          <property role="TrG5h" value="n" />
          <node concept="3Tqbb2" id="3GLv42Ndo0V" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="3GLv42Ndo0W" role="jymVt" />
      <node concept="312cEg" id="3GLv42Ndo0X" role="jymVt">
        <property role="TrG5h" value="unit" />
        <node concept="3Tm6S6" id="3GLv42Ndo0Y" role="1B3o_S" />
        <node concept="3Tqbb2" id="3GLv42Ndo0Z" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="3GLv42Ndo10" role="jymVt">
        <property role="TrG5h" value="origin2relevantNodes" />
        <node concept="3Tm6S6" id="3GLv42Ndo11" role="1B3o_S" />
        <node concept="3rvAFt" id="3GLv42Ndo12" role="1tU5fm">
          <node concept="2sp9CU" id="3GLv42Ndo13" role="3rvQeY" />
          <node concept="2hMVRd" id="3GLv42Ndo14" role="3rvSg0">
            <node concept="3uibUv" id="3GLv42Ndo15" role="2hN53Y">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
          </node>
        </node>
        <node concept="2ShNRf" id="3GLv42Ndo16" role="33vP2m">
          <node concept="3rGOSV" id="3GLv42Ndo17" role="2ShVmc">
            <node concept="2sp9CU" id="3GLv42Ndo18" role="3rHrn6" />
            <node concept="2hMVRd" id="3GLv42Ndo19" role="3rHtpV">
              <node concept="3uibUv" id="3GLv42Ndo1a" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3GLv42Ndo1b" role="jymVt">
        <property role="TrG5h" value="referredModels" />
        <node concept="3Tm6S6" id="3GLv42Ndo1c" role="1B3o_S" />
        <node concept="2hMVRd" id="3GLv42Ndo1d" role="1tU5fm">
          <node concept="H_c77" id="3GLv42NdWmQ" role="2hN53Y" />
        </node>
        <node concept="2ShNRf" id="3GLv42Ndo1f" role="33vP2m">
          <node concept="2i4dXS" id="3GLv42Ndo1g" role="2ShVmc">
            <node concept="H_c77" id="3GLv42NdX5R" role="HW$YZ" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3GLv42Nd_WF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3GLv42NdjZX" role="jymVt" />
    <node concept="2tJIrI" id="357z3MC8N8k" role="jymVt" />
    <node concept="312cEg" id="6nFpYlu3FKa" role="jymVt">
      <property role="TrG5h" value="reversedDependencies" />
      <node concept="3Tm6S6" id="6nFpYlu3FKb" role="1B3o_S" />
      <node concept="3rvAFt" id="6nFpYlu3INu" role="1tU5fm">
        <node concept="2hMVRd" id="6nFpYlu3S8L" role="3rvSg0">
          <node concept="3Tqbb2" id="1ZiI2IC5di4" role="2hN53Y" />
        </node>
        <node concept="3Tqbb2" id="3DPJ8QIEGT4" role="3rvQeY" />
      </node>
      <node concept="2ShNRf" id="6nFpYlu3KnQ" role="33vP2m">
        <node concept="3rGOSV" id="6nFpYlu3Knd" role="2ShVmc">
          <node concept="2hMVRd" id="6nFpYlu3QAX" role="3rHtpV">
            <node concept="3Tqbb2" id="1ZiI2IC5gIq" role="2hN53Y" />
          </node>
          <node concept="3Tqbb2" id="3DPJ8QIEFQ_" role="3rHrn6" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6nFpYlud9Ge" role="jymVt">
      <property role="TrG5h" value="source2updates" />
      <node concept="3Tm6S6" id="6nFpYlud9Gf" role="1B3o_S" />
      <node concept="3rvAFt" id="6nFpYludbDB" role="1tU5fm">
        <node concept="3Tqbb2" id="1ZiI2IC5aVV" role="3rvQeY" />
        <node concept="_YKpA" id="6nFpYludxlp" role="3rvSg0">
          <node concept="1LlUBW" id="1XKnVQkaFP" role="_ZDj9">
            <node concept="3uibUv" id="1XKnVQkaFQ" role="1Lm7xW">
              <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
            </node>
            <node concept="3vKaQO" id="1XKnVQkaFR" role="1Lm7xW">
              <node concept="3uibUv" id="1XKnVQkaFS" role="3O5elw">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="6nFpYludivF" role="33vP2m">
        <node concept="3rGOSV" id="6nFpYluditI" role="2ShVmc">
          <node concept="3Tqbb2" id="1ZiI2IC5i9d" role="3rHrn6" />
          <node concept="_YKpA" id="6nFpYludyYL" role="3rHtpV">
            <node concept="1LlUBW" id="1XKnVQkdYv" role="_ZDj9">
              <node concept="3uibUv" id="1XKnVQkdYw" role="1Lm7xW">
                <ref role="3uigEE" to="ugy2:1ffsG7bW_V4" resolve="RuleTemplate" />
              </node>
              <node concept="3vKaQO" id="1XKnVQkdYx" role="1Lm7xW">
                <node concept="3uibUv" id="1XKnVQkdYy" role="3O5elw">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6nFpYlu6O1H" role="jymVt">
      <property role="TrG5h" value="changesTracker" />
      <node concept="3Tm6S6" id="6nFpYlu6O1I" role="1B3o_S" />
      <node concept="3uibUv" id="6nFpYlu6PXo" role="1tU5fm">
        <ref role="3uigEE" node="6nFpYltKKoQ" resolve="UpdatesRecorder.ChangesTracker" />
      </node>
    </node>
    <node concept="312cEg" id="357z3MCpd1F" role="jymVt">
      <property role="TrG5h" value="relevantNodesMonitor" />
      <node concept="3Tm6S6" id="357z3MCp7gl" role="1B3o_S" />
      <node concept="3uibUv" id="3GLv42NdCHT" role="1tU5fm">
        <ref role="3uigEE" node="3GLv42NdnWW" resolve="UpdatesRecorder.RelevantNodesMonitor" />
      </node>
    </node>
    <node concept="312cEg" id="6nFpYlu6n2t" role="jymVt">
      <property role="TrG5h" value="changedSet" />
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
    <node concept="312cEg" id="3DPJ8QIKjSz" role="jymVt">
      <property role="TrG5h" value="sourceSet" />
      <node concept="3Tm6S6" id="3DPJ8QIKjS$" role="1B3o_S" />
      <node concept="2hMVRd" id="3DPJ8QIKjS_" role="1tU5fm">
        <node concept="3Tqbb2" id="3DPJ8QIKjSA" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="3DPJ8QIKjSB" role="33vP2m">
        <node concept="2i4dXS" id="3DPJ8QIKjSC" role="2ShVmc">
          <node concept="3Tqbb2" id="3DPJ8QIKjSD" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3DPJ8QIuOwX" role="jymVt">
      <property role="TrG5h" value="invalidatedSet" />
      <node concept="3Tm6S6" id="3DPJ8QIuOwY" role="1B3o_S" />
      <node concept="2hMVRd" id="3DPJ8QIuOwZ" role="1tU5fm">
        <node concept="3Tqbb2" id="3DPJ8QIuOx0" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="3DPJ8QIuOx1" role="33vP2m">
        <node concept="2i4dXS" id="3DPJ8QIuOx2" role="2ShVmc">
          <node concept="3Tqbb2" id="3DPJ8QIuOx3" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="17DrR$SRYI4" role="jymVt">
      <property role="TrG5h" value="introducedSet" />
      <node concept="3Tm6S6" id="17DrR$SRYI5" role="1B3o_S" />
      <node concept="2hMVRd" id="17DrR$SRYI6" role="1tU5fm">
        <node concept="3Tqbb2" id="17DrR$SRYI7" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="17DrR$SRYI8" role="33vP2m">
        <node concept="2i4dXS" id="17DrR$SRYI9" role="2ShVmc">
          <node concept="3Tqbb2" id="17DrR$SRYIa" role="HW$YZ" />
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
    <node concept="3uibUv" id="4VNF0fT1Bx3" role="EKbjA">
      <ref role="3uigEE" to="ugy2:4VNF0fT1sxk" resolve="DependencyUpdatable" />
    </node>
  </node>
  <node concept="312cEu" id="1XKnVPsWNc">
    <property role="TrG5h" value="RulesPlan" />
    <node concept="2tJIrI" id="1XKnVPsWNO" role="jymVt" />
    <node concept="3clFb_" id="1XKnVPsWOb" role="jymVt">
      <property role="TrG5h" value="allRules" />
      <node concept="A3Dl8" id="1XKnVPsWOT" role="3clF45">
        <node concept="3uibUv" id="1XKnVPsWPk" role="A3Ik2">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1XKnVPsWOe" role="1B3o_S" />
      <node concept="3clFbS" id="1XKnVPsWOf" role="3clF47">
        <node concept="3clFbF" id="1XKnVPt6aN" role="3cqZAp">
          <node concept="37vLTw" id="1XKnVPt6aM" role="3clFbG">
            <ref role="3cqZAo" node="1XKnVPsYuP" resolve="allRules" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1XKnVPsWNT" role="jymVt" />
    <node concept="3clFb_" id="55xYlrmGsza" role="jymVt">
      <property role="TrG5h" value="invalidatedRuleIds" />
      <node concept="A3Dl8" id="55xYlrmGszb" role="3clF45">
        <node concept="3uibUv" id="55xYlrmGszc" role="A3Ik2">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="55xYlrmGszd" role="1B3o_S" />
      <node concept="3clFbS" id="55xYlrmGsze" role="3clF47">
        <node concept="3clFbF" id="55xYlrmGszf" role="3cqZAp">
          <node concept="37vLTw" id="55xYlrmGDAV" role="3clFbG">
            <ref role="3cqZAo" node="55xYlrm_yi5" resolve="invalidatedRuleIds" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="55xYlrmGsz9" role="jymVt" />
    <node concept="3clFb_" id="55xYlrmIHsb" role="jymVt">
      <property role="TrG5h" value="validatedRuleIds" />
      <node concept="A3Dl8" id="55xYlrmIHsc" role="3clF45">
        <node concept="3uibUv" id="55xYlrmIHsd" role="A3Ik2">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="55xYlrmIHse" role="1B3o_S" />
      <node concept="3clFbS" id="55xYlrmIHsf" role="3clF47">
        <node concept="3clFbF" id="55xYlrmIXiz" role="3cqZAp">
          <node concept="37vLTw" id="55xYlrmIXiy" role="3clFbG">
            <ref role="3cqZAo" node="55xYlrmIvEW" resolve="validatedRuleIds" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="55xYlrmIHsa" role="jymVt" />
    <node concept="3clFb_" id="1XKnVPsXAS" role="jymVt">
      <property role="TrG5h" value="addRule" />
      <node concept="37vLTG" id="1XKnVPsXCT" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="1XKnVPsXDt" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3cqZAl" id="1Pi9pJ$1VKj" role="3clF45" />
      <node concept="3Tmbuc" id="1XKnVPsXBK" role="1B3o_S" />
      <node concept="3clFbS" id="1XKnVPsXAW" role="3clF47">
        <node concept="3clFbF" id="1XKnVPzSnv" role="3cqZAp">
          <node concept="2OqwBi" id="1XKnVPzTqZ" role="3clFbG">
            <node concept="37vLTw" id="1XKnVPzSnt" role="2Oq$k0">
              <ref role="3cqZAo" node="1XKnVPsYuP" resolve="allRules" />
            </node>
            <node concept="TSZUe" id="1XKnVPzUsI" role="2OqNvi">
              <node concept="37vLTw" id="1XKnVPzU$G" role="25WWJ7">
                <ref role="3cqZAo" node="1XKnVPsXCT" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1XKnVPsXHn" role="jymVt" />
    <node concept="3clFb_" id="55xYlrm_rt9" role="jymVt">
      <property role="TrG5h" value="addInvalidatedRuleIds" />
      <node concept="37vLTG" id="55xYlrm_rta" role="3clF46">
        <property role="TrG5h" value="ids" />
        <node concept="A3Dl8" id="55xYlrmAfpr" role="1tU5fm">
          <node concept="3uibUv" id="55xYlrmAfps" role="A3Ik2">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="55xYlrm_rtc" role="3clF45" />
      <node concept="3Tmbuc" id="55xYlrm_rtd" role="1B3o_S" />
      <node concept="3clFbS" id="55xYlrm_rte" role="3clF47">
        <node concept="3clFbF" id="55xYlrm_rtf" role="3cqZAp">
          <node concept="2OqwBi" id="55xYlrm_rtg" role="3clFbG">
            <node concept="37vLTw" id="55xYlrm__L1" role="2Oq$k0">
              <ref role="3cqZAo" node="55xYlrm_yi5" resolve="invalidatedRuleIds" />
            </node>
            <node concept="X8dFx" id="55xYlrmAlWj" role="2OqNvi">
              <node concept="37vLTw" id="55xYlrmAlWl" role="25WWJ7">
                <ref role="3cqZAo" node="55xYlrm_rta" resolve="ids" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="55xYlrm_rt8" role="jymVt" />
    <node concept="3clFb_" id="55xYlrmIlZ3" role="jymVt">
      <property role="TrG5h" value="addValidatedRuleIds" />
      <node concept="37vLTG" id="55xYlrmIlZ4" role="3clF46">
        <property role="TrG5h" value="ids" />
        <node concept="A3Dl8" id="55xYlrmIlZ5" role="1tU5fm">
          <node concept="3uibUv" id="55xYlrmIlZ6" role="A3Ik2">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="55xYlrmIlZ7" role="3clF45" />
      <node concept="3Tmbuc" id="55xYlrmIlZ8" role="1B3o_S" />
      <node concept="3clFbS" id="55xYlrmIlZ9" role="3clF47">
        <node concept="3clFbF" id="55xYlrmIlZa" role="3cqZAp">
          <node concept="2OqwBi" id="55xYlrmIlZb" role="3clFbG">
            <node concept="37vLTw" id="55xYlrmIFKt" role="2Oq$k0">
              <ref role="3cqZAo" node="55xYlrmIvEW" resolve="validatedRuleIds" />
            </node>
            <node concept="X8dFx" id="55xYlrmIlZd" role="2OqNvi">
              <node concept="37vLTw" id="55xYlrmIlZe" role="25WWJ7">
                <ref role="3cqZAo" node="55xYlrmIlZ4" resolve="ids" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1XKnVPsXIq" role="jymVt" />
    <node concept="312cEg" id="1XKnVPsYuP" role="jymVt">
      <property role="TrG5h" value="allRules" />
      <node concept="3Tm6S6" id="1XKnVPsYuQ" role="1B3o_S" />
      <node concept="_YKpA" id="1XKnVPsYvL" role="1tU5fm">
        <node concept="3uibUv" id="1XKnVPsYw7" role="_ZDj9">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="2ShNRf" id="1XKnVPt0Gb" role="33vP2m">
        <node concept="Tc6Ow" id="1XKnVPt0FN" role="2ShVmc">
          <node concept="3uibUv" id="1XKnVPt0FO" role="HW$YZ">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="55xYlrm_yi5" role="jymVt">
      <property role="TrG5h" value="invalidatedRuleIds" />
      <node concept="3Tm6S6" id="55xYlrm_yi6" role="1B3o_S" />
      <node concept="_YKpA" id="55xYlrm_yi7" role="1tU5fm">
        <node concept="3uibUv" id="55xYlrm_yi8" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="55xYlrm_yi9" role="33vP2m">
        <node concept="Tc6Ow" id="55xYlrm_yia" role="2ShVmc">
          <node concept="3uibUv" id="55xYlrm_yib" role="HW$YZ">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="55xYlrmIvEW" role="jymVt">
      <property role="TrG5h" value="validatedRuleIds" />
      <node concept="3Tm6S6" id="55xYlrmIvEX" role="1B3o_S" />
      <node concept="_YKpA" id="55xYlrmIvEY" role="1tU5fm">
        <node concept="3uibUv" id="55xYlrmIvEZ" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="55xYlrmIvF0" role="33vP2m">
        <node concept="Tc6Ow" id="55xYlrmIvF1" role="2ShVmc">
          <node concept="3uibUv" id="55xYlrmIvF2" role="HW$YZ">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1XKnVPsWNd" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="IfzMHGfDvc">
    <property role="TrG5h" value="RuleTableUtil" />
    <node concept="2tJIrI" id="IfzMHGfDDX" role="jymVt" />
    <node concept="2YIFZL" id="IfzMHGfK0$" role="jymVt">
      <property role="TrG5h" value="topoSort" />
      <node concept="3clFbS" id="IfzMHGfK0_" role="3clF47">
        <node concept="3SKdUt" id="IfzMHGfK0A" role="3cqZAp">
          <node concept="1PaTwC" id="IfzMHGfK0B" role="1aUNEU">
            <node concept="3oM_SD" id="IfzMHGfK0C" role="1PaTwD">
              <property role="3oM_SC" value="fqName" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK0D" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK0E" role="1PaTwD">
              <property role="3oM_SC" value="Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IfzMHGfK0F" role="3cqZAp">
          <node concept="3cpWsn" id="IfzMHGfK0G" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="IfzMHGfK0H" role="1tU5fm">
              <node concept="3uibUv" id="IfzMHGfK0I" role="3rvQeY">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="IfzMHGfK0J" role="3rvSg0">
                <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="IfzMHGfK0K" role="33vP2m">
              <node concept="3rGOSV" id="IfzMHGfK0L" role="2ShVmc">
                <node concept="3uibUv" id="IfzMHGfK0M" role="3rHrn6">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="IfzMHGfK0N" role="3rHtpV">
                  <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="IfzMHGfK0O" role="3cqZAp">
          <node concept="3clFbS" id="IfzMHGfK0P" role="2LFqv$">
            <node concept="3cpWs8" id="IfzMHGfK0Q" role="3cqZAp">
              <node concept="3cpWsn" id="IfzMHGfK0R" role="3cpWs9">
                <property role="TrG5h" value="priority" />
                <node concept="10Oyi0" id="IfzMHGfK0S" role="1tU5fm" />
                <node concept="3cmrfG" id="IfzMHGfK0T" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="IfzMHGfK0U" role="3cqZAp">
              <node concept="3clFbS" id="IfzMHGfK0V" role="3clFbx">
                <node concept="3cpWs8" id="IfzMHGfK0W" role="3cqZAp">
                  <node concept="3cpWsn" id="IfzMHGfK0X" role="3cpWs9">
                    <property role="TrG5h" value="mf" />
                    <node concept="3uibUv" id="IfzMHGfK0Y" role="1tU5fm">
                      <ref role="3uigEE" to="pxw9:5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
                    </node>
                    <node concept="2OqwBi" id="IfzMHGfK0Z" role="33vP2m">
                      <node concept="1eOMI4" id="IfzMHGfK10" role="2Oq$k0">
                        <node concept="10QFUN" id="IfzMHGfK11" role="1eOMHV">
                          <node concept="2GrUjf" id="IfzMHGfK12" role="10QFUP">
                            <ref role="2Gs0qQ" node="IfzMHGfK1Q" resolve="tpl" />
                          </node>
                          <node concept="3uibUv" id="IfzMHGfK13" role="10QFUM">
                            <ref role="3uigEE" to="ugy2:5EDW3XF5Zh6" resolve="AbstractRuleTable" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="IfzMHGfK14" role="2OqNvi">
                        <ref role="37wK5l" to="ugy2:1LBj9w_9RCi" resolve="manifest" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="IfzMHGfK15" role="3cqZAp">
                  <node concept="3cpWsn" id="IfzMHGfK16" role="3cpWs9">
                    <property role="TrG5h" value="asp" />
                    <node concept="3uibUv" id="IfzMHGfK17" role="1tU5fm">
                      <ref role="3uigEE" to="pxw9:NKt6yomNZE" resolve="CoderulesAspect" />
                    </node>
                    <node concept="2OqwBi" id="IfzMHGfK18" role="33vP2m">
                      <node concept="37vLTw" id="IfzMHGfK19" role="2Oq$k0">
                        <ref role="3cqZAo" node="IfzMHGfK0X" resolve="mf" />
                      </node>
                      <node concept="liA8E" id="IfzMHGfK1a" role="2OqNvi">
                        <ref role="37wK5l" to="pxw9:1LBj9w_9VAl" resolve="coderulesAspect" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="IfzMHGfK1b" role="3cqZAp">
                  <node concept="37vLTI" id="IfzMHGfK1c" role="3clFbG">
                    <node concept="2OqwBi" id="IfzMHGfK1d" role="37vLTx">
                      <node concept="2OqwBi" id="IfzMHGfK1e" role="2Oq$k0">
                        <node concept="37vLTw" id="IfzMHGfK1f" role="2Oq$k0">
                          <ref role="3cqZAo" node="IfzMHGfK4u" resolve="aspectClique" />
                        </node>
                        <node concept="liA8E" id="IfzMHGfK1g" role="2OqNvi">
                          <ref role="37wK5l" to="pxw9:3KN3A4uUhpW" resolve="aspects" />
                        </node>
                      </node>
                      <node concept="2WmjW8" id="IfzMHGfK1h" role="2OqNvi">
                        <node concept="37vLTw" id="IfzMHGfK1i" role="25WWJ7">
                          <ref role="3cqZAo" node="IfzMHGfK16" resolve="asp" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="IfzMHGfK1j" role="37vLTJ">
                      <ref role="3cqZAo" node="IfzMHGfK0R" resolve="priority" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="IfzMHGfK1k" role="3clFbw">
                <node concept="10Nm6u" id="IfzMHGfK1l" role="3uHU7w" />
                <node concept="37vLTw" id="IfzMHGfK1m" role="3uHU7B">
                  <ref role="3cqZAo" node="IfzMHGfK4u" resolve="aspectClique" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="IfzMHGfK1n" role="3cqZAp" />
            <node concept="3clFbJ" id="IfzMHGfK1o" role="3cqZAp">
              <node concept="3fqX7Q" id="IfzMHGfK1p" role="3clFbw">
                <node concept="2OqwBi" id="IfzMHGfK1q" role="3fr31v">
                  <node concept="37vLTw" id="IfzMHGfK1r" role="2Oq$k0">
                    <ref role="3cqZAo" node="IfzMHGfK0G" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="IfzMHGfK1s" role="2OqNvi">
                    <node concept="2OqwBi" id="IfzMHGfK1t" role="38cxEo">
                      <node concept="2GrUjf" id="IfzMHGfK1u" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="IfzMHGfK1Q" resolve="tpl" />
                      </node>
                      <node concept="liA8E" id="IfzMHGfK1v" role="2OqNvi">
                        <ref role="37wK5l" to="ugy2:7P_FdVQoZmr" resolve="fqName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="IfzMHGfK1w" role="3clFbx">
                <node concept="3cpWs8" id="IfzMHGfK1x" role="3cqZAp">
                  <node concept="3cpWsn" id="IfzMHGfK1y" role="3cpWs9">
                    <property role="TrG5h" value="vtx" />
                    <node concept="3uibUv" id="IfzMHGfK1z" role="1tU5fm">
                      <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
                    </node>
                    <node concept="2ShNRf" id="IfzMHGfK1$" role="33vP2m">
                      <node concept="1pGfFk" id="IfzMHGfK1_" role="2ShVmc">
                        <ref role="37wK5l" node="IfzMHGfK4B" resolve="RuleTableUtil.Vtx" />
                        <node concept="2GrUjf" id="IfzMHGfK1A" role="37wK5m">
                          <ref role="2Gs0qQ" node="IfzMHGfK1Q" resolve="tpl" />
                        </node>
                        <node concept="37vLTw" id="IfzMHGfK1B" role="37wK5m">
                          <ref role="3cqZAo" node="IfzMHGfK0R" resolve="priority" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="IfzMHGfK1C" role="3cqZAp">
                  <node concept="37vLTI" id="IfzMHGfK1D" role="3clFbG">
                    <node concept="37vLTw" id="IfzMHGfK1E" role="37vLTx">
                      <ref role="3cqZAo" node="IfzMHGfK1y" resolve="vtx" />
                    </node>
                    <node concept="3EllGN" id="IfzMHGfK1F" role="37vLTJ">
                      <node concept="2OqwBi" id="IfzMHGfK1G" role="3ElVtu">
                        <node concept="2GrUjf" id="IfzMHGfK1H" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="IfzMHGfK1Q" resolve="tpl" />
                        </node>
                        <node concept="liA8E" id="IfzMHGfK1I" role="2OqNvi">
                          <ref role="37wK5l" to="ugy2:7P_FdVQoZmr" resolve="fqName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="IfzMHGfK1J" role="3ElQJh">
                        <ref role="3cqZAo" node="IfzMHGfK0G" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="IfzMHGfK1K" role="3cqZAp">
                  <node concept="2OqwBi" id="IfzMHGfK1L" role="3clFbG">
                    <node concept="37vLTw" id="IfzMHGfK1M" role="2Oq$k0">
                      <ref role="3cqZAo" node="IfzMHGfK1y" resolve="vtx" />
                    </node>
                    <node concept="liA8E" id="IfzMHGfK1N" role="2OqNvi">
                      <ref role="37wK5l" node="IfzMHGfK4V" resolve="update" />
                      <node concept="37vLTw" id="IfzMHGfK1O" role="37wK5m">
                        <ref role="3cqZAo" node="IfzMHGfK0G" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="IfzMHGfK1P" role="2GsD0m">
            <ref role="3cqZAo" node="IfzMHGfK4r" resolve="unsorted" />
          </node>
          <node concept="2GrKxI" id="IfzMHGfK1Q" role="2Gsz3X">
            <property role="TrG5h" value="tpl" />
          </node>
        </node>
        <node concept="3clFbH" id="IfzMHGfK1R" role="3cqZAp" />
        <node concept="3SKdUt" id="IfzMHGfK1S" role="3cqZAp">
          <node concept="1PaTwC" id="IfzMHGfK1T" role="1aUNEU">
            <node concept="3oM_SD" id="IfzMHGfK1U" role="1PaTwD">
              <property role="3oM_SC" value="depth-first" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK1V" role="1PaTwD">
              <property role="3oM_SC" value="search." />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK1W" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK1X" role="1PaTwD">
              <property role="3oM_SC" value="vertex" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK1Y" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK1Z" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK20" role="1PaTwD">
              <property role="3oM_SC" value="visited" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK21" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK22" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK23" role="1PaTwD">
              <property role="3oM_SC" value="moved" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK24" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK25" role="1PaTwD">
              <property role="3oM_SC" value="front" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK26" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK27" role="1PaTwD">
              <property role="3oM_SC" value="others" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="IfzMHGfK28" role="3cqZAp">
          <node concept="1PaTwC" id="IfzMHGfK29" role="1aUNEU">
            <node concept="3oM_SD" id="IfzMHGfK2a" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK2b" role="1PaTwD">
              <property role="3oM_SC" value="handlers" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK2c" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK2d" role="1PaTwD">
              <property role="3oM_SC" value="extended" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK2e" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK2f" role="1PaTwD">
              <property role="3oM_SC" value="lower" />
            </node>
            <node concept="3oM_SD" id="IfzMHGfK2g" role="1PaTwD">
              <property role="3oM_SC" value="priority" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IfzMHGfK2h" role="3cqZAp">
          <node concept="3cpWsn" id="IfzMHGfK2i" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="IfzMHGfK2j" role="1tU5fm">
              <node concept="3uibUv" id="IfzMHGfK2k" role="3O5elw">
                <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="IfzMHGfK2l" role="33vP2m">
              <node concept="2Jqq0_" id="IfzMHGfK2m" role="2ShVmc">
                <node concept="3uibUv" id="IfzMHGfK2n" role="HW$YZ">
                  <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IfzMHGfK2o" role="3cqZAp">
          <node concept="3cpWsn" id="IfzMHGfK2p" role="3cpWs9">
            <property role="TrG5h" value="sorted" />
            <node concept="2BANLN" id="IfzMHGfK2q" role="1tU5fm">
              <node concept="3uibUv" id="IfzMHGfK2r" role="_ZDj9">
                <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="IfzMHGfK2s" role="33vP2m">
              <node concept="2Jqq0_" id="IfzMHGfK2t" role="2ShVmc">
                <node concept="3uibUv" id="IfzMHGfK2u" role="HW$YZ">
                  <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IfzMHGfK2v" role="3cqZAp">
          <node concept="3cpWsn" id="IfzMHGfK2w" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="IfzMHGfK2x" role="1tU5fm">
              <node concept="3uibUv" id="IfzMHGfK2y" role="2hN53Y">
                <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="IfzMHGfK2z" role="33vP2m">
              <node concept="2i4dXS" id="IfzMHGfK2$" role="2ShVmc">
                <node concept="3uibUv" id="IfzMHGfK2_" role="HW$YZ">
                  <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IfzMHGfK2A" role="3cqZAp">
          <node concept="3cpWsn" id="IfzMHGfK2B" role="3cpWs9">
            <property role="TrG5h" value="orderedVts" />
            <node concept="_YKpA" id="IfzMHGfK2C" role="1tU5fm">
              <node concept="3uibUv" id="IfzMHGfK2D" role="_ZDj9">
                <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
              </node>
            </node>
            <node concept="2OqwBi" id="IfzMHGfK2E" role="33vP2m">
              <node concept="2OqwBi" id="IfzMHGfK2F" role="2Oq$k0">
                <node concept="2OqwBi" id="IfzMHGfK2G" role="2Oq$k0">
                  <node concept="2OqwBi" id="IfzMHGfK2H" role="2Oq$k0">
                    <node concept="37vLTw" id="IfzMHGfK2I" role="2Oq$k0">
                      <ref role="3cqZAo" node="IfzMHGfK0G" resolve="graph" />
                    </node>
                    <node concept="T8wYR" id="IfzMHGfK2J" role="2OqNvi" />
                  </node>
                  <node concept="2S7cBI" id="IfzMHGfK2K" role="2OqNvi">
                    <node concept="1bVj0M" id="IfzMHGfK2L" role="23t8la">
                      <node concept="3clFbS" id="IfzMHGfK2M" role="1bW5cS">
                        <node concept="3clFbF" id="IfzMHGfK2N" role="3cqZAp">
                          <node concept="2OqwBi" id="IfzMHGfK2O" role="3clFbG">
                            <node concept="37vLTw" id="IfzMHGfK2P" role="2Oq$k0">
                              <ref role="3cqZAo" node="6E5fMGvfKQG" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="IfzMHGfK2Q" role="2OqNvi">
                              <ref role="2Oxat5" node="IfzMHGfK5U" resolve="priority" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKQG" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6E5fMGvfKQH" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="1nlBCl" id="IfzMHGfK2T" role="2S7zOq" />
                  </node>
                </node>
                <node concept="1XvEQZ" id="IfzMHGfK2U" role="2OqNvi">
                  <node concept="1bVj0M" id="IfzMHGfK2V" role="23t8la">
                    <node concept="3clFbS" id="IfzMHGfK2W" role="1bW5cS">
                      <node concept="3clFbF" id="IfzMHGfK2X" role="3cqZAp">
                        <node concept="2OqwBi" id="IfzMHGfK2Y" role="3clFbG">
                          <node concept="2OqwBi" id="IfzMHGfK2Z" role="2Oq$k0">
                            <node concept="37vLTw" id="IfzMHGfK30" role="2Oq$k0">
                              <ref role="3cqZAo" node="6E5fMGvfKQI" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="IfzMHGfK31" role="2OqNvi">
                              <ref role="2Oxat5" node="IfzMHGfK5K" resolve="ruleTemplateTable" />
                            </node>
                          </node>
                          <node concept="liA8E" id="IfzMHGfK32" role="2OqNvi">
                            <ref role="37wK5l" to="ugy2:4MqhgXUN1Pe" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="6E5fMGvfKQI" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6E5fMGvfKQJ" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1nlBCl" id="IfzMHGfK35" role="2S7zOq">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="IfzMHGfK36" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="IfzMHGfK37" role="3cqZAp">
          <node concept="3clFbS" id="IfzMHGfK38" role="2LFqv$">
            <node concept="3clFbJ" id="IfzMHGfK39" role="3cqZAp">
              <node concept="3clFbS" id="IfzMHGfK3a" role="3clFbx">
                <node concept="3N13vt" id="IfzMHGfK3b" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="IfzMHGfK3c" role="3clFbw">
                <node concept="37vLTw" id="IfzMHGfK3d" role="2Oq$k0">
                  <ref role="3cqZAo" node="IfzMHGfK2w" resolve="visited" />
                </node>
                <node concept="3JPx81" id="IfzMHGfK3e" role="2OqNvi">
                  <node concept="37vLTw" id="IfzMHGfK3f" role="25WWJ7">
                    <ref role="3cqZAo" node="IfzMHGfK49" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="IfzMHGfK3g" role="3cqZAp" />
            <node concept="3clFbF" id="IfzMHGfK3h" role="3cqZAp">
              <node concept="2OqwBi" id="IfzMHGfK3i" role="3clFbG">
                <node concept="37vLTw" id="IfzMHGfK3j" role="2Oq$k0">
                  <ref role="3cqZAo" node="IfzMHGfK2i" resolve="stack" />
                </node>
                <node concept="2ArzE6" id="IfzMHGfK3k" role="2OqNvi">
                  <node concept="37vLTw" id="IfzMHGfK3l" role="25WWJ7">
                    <ref role="3cqZAo" node="IfzMHGfK49" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="IfzMHGfK3m" role="3cqZAp">
              <node concept="3clFbS" id="IfzMHGfK3n" role="2LFqv$">
                <node concept="3cpWs8" id="IfzMHGfK3o" role="3cqZAp">
                  <node concept="3cpWsn" id="IfzMHGfK3p" role="3cpWs9">
                    <property role="TrG5h" value="v" />
                    <node concept="3uibUv" id="IfzMHGfK3q" role="1tU5fm">
                      <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
                    </node>
                    <node concept="2OqwBi" id="IfzMHGfK3r" role="33vP2m">
                      <node concept="37vLTw" id="IfzMHGfK3s" role="2Oq$k0">
                        <ref role="3cqZAo" node="IfzMHGfK2i" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="IfzMHGfK3t" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="IfzMHGfK3u" role="3cqZAp">
                  <node concept="3clFbS" id="IfzMHGfK3v" role="2LFqv$">
                    <node concept="3clFbJ" id="IfzMHGfK3w" role="3cqZAp">
                      <node concept="3clFbS" id="IfzMHGfK3x" role="3clFbx">
                        <node concept="3clFbF" id="IfzMHGfK3y" role="3cqZAp">
                          <node concept="2OqwBi" id="IfzMHGfK3z" role="3clFbG">
                            <node concept="37vLTw" id="IfzMHGfK3$" role="2Oq$k0">
                              <ref role="3cqZAo" node="IfzMHGfK2i" resolve="stack" />
                            </node>
                            <node concept="2ArzE6" id="IfzMHGfK3_" role="2OqNvi">
                              <node concept="37vLTw" id="IfzMHGfK3A" role="25WWJ7">
                                <ref role="3cqZAo" node="IfzMHGfK3G" resolve="e" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="IfzMHGfK3B" role="3clFbw">
                        <node concept="2OqwBi" id="IfzMHGfK3C" role="3fr31v">
                          <node concept="37vLTw" id="IfzMHGfK3D" role="2Oq$k0">
                            <ref role="3cqZAo" node="IfzMHGfK2w" resolve="visited" />
                          </node>
                          <node concept="3JPx81" id="IfzMHGfK3E" role="2OqNvi">
                            <node concept="37vLTw" id="IfzMHGfK3F" role="25WWJ7">
                              <ref role="3cqZAo" node="IfzMHGfK3G" resolve="e" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="IfzMHGfK3G" role="1Duv9x">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="IfzMHGfK3H" role="1tU5fm">
                      <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="IfzMHGfK3I" role="1DdaDG">
                    <node concept="37vLTw" id="IfzMHGfK3J" role="2Oq$k0">
                      <ref role="3cqZAo" node="IfzMHGfK3p" resolve="v" />
                    </node>
                    <node concept="2OwXpG" id="IfzMHGfK3K" role="2OqNvi">
                      <ref role="2Oxat5" node="IfzMHGfK5N" resolve="extended" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="IfzMHGfK3L" role="3cqZAp">
                  <node concept="3clFbS" id="IfzMHGfK3M" role="3clFbx">
                    <node concept="3clFbF" id="IfzMHGfK3N" role="3cqZAp">
                      <node concept="2OqwBi" id="IfzMHGfK3O" role="3clFbG">
                        <node concept="37vLTw" id="IfzMHGfK3P" role="2Oq$k0">
                          <ref role="3cqZAo" node="IfzMHGfK2p" resolve="sorted" />
                        </node>
                        <node concept="2Ke4WJ" id="IfzMHGfK3Q" role="2OqNvi">
                          <node concept="37vLTw" id="IfzMHGfK3R" role="25WWJ7">
                            <ref role="3cqZAo" node="IfzMHGfK3p" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="IfzMHGfK3S" role="3cqZAp">
                      <node concept="2OqwBi" id="IfzMHGfK3T" role="3clFbG">
                        <node concept="37vLTw" id="IfzMHGfK3U" role="2Oq$k0">
                          <ref role="3cqZAo" node="IfzMHGfK2w" resolve="visited" />
                        </node>
                        <node concept="TSZUe" id="IfzMHGfK3V" role="2OqNvi">
                          <node concept="37vLTw" id="IfzMHGfK3W" role="25WWJ7">
                            <ref role="3cqZAo" node="IfzMHGfK3p" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="IfzMHGfK3X" role="3cqZAp">
                      <node concept="2OqwBi" id="IfzMHGfK3Y" role="3clFbG">
                        <node concept="37vLTw" id="IfzMHGfK3Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="IfzMHGfK2i" resolve="stack" />
                        </node>
                        <node concept="2AryhJ" id="IfzMHGfK40" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="IfzMHGfK41" role="3clFbw">
                    <node concept="37vLTw" id="IfzMHGfK42" role="3uHU7w">
                      <ref role="3cqZAo" node="IfzMHGfK3p" resolve="v" />
                    </node>
                    <node concept="2OqwBi" id="IfzMHGfK43" role="3uHU7B">
                      <node concept="37vLTw" id="IfzMHGfK44" role="2Oq$k0">
                        <ref role="3cqZAo" node="IfzMHGfK2i" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="IfzMHGfK45" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="IfzMHGfK46" role="2$JKZa">
                <node concept="37vLTw" id="IfzMHGfK47" role="2Oq$k0">
                  <ref role="3cqZAo" node="IfzMHGfK2i" resolve="stack" />
                </node>
                <node concept="3GX2aA" id="IfzMHGfK48" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="IfzMHGfK49" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="IfzMHGfK4a" role="1tU5fm">
              <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
            </node>
          </node>
          <node concept="37vLTw" id="IfzMHGfK4b" role="1DdaDG">
            <ref role="3cqZAo" node="IfzMHGfK2B" resolve="orderedVts" />
          </node>
        </node>
        <node concept="3clFbH" id="IfzMHGfK4c" role="3cqZAp" />
        <node concept="3clFbF" id="IfzMHGfK4d" role="3cqZAp">
          <node concept="2OqwBi" id="IfzMHGfK4e" role="3clFbG">
            <node concept="2OqwBi" id="IfzMHGfK4f" role="2Oq$k0">
              <node concept="37vLTw" id="IfzMHGfK4g" role="2Oq$k0">
                <ref role="3cqZAo" node="IfzMHGfK2p" resolve="sorted" />
              </node>
              <node concept="3$u5V9" id="IfzMHGfK4h" role="2OqNvi">
                <node concept="1bVj0M" id="IfzMHGfK4i" role="23t8la">
                  <node concept="3clFbS" id="IfzMHGfK4j" role="1bW5cS">
                    <node concept="3clFbF" id="IfzMHGfK4k" role="3cqZAp">
                      <node concept="2OqwBi" id="IfzMHGfK4l" role="3clFbG">
                        <node concept="37vLTw" id="IfzMHGfK4m" role="2Oq$k0">
                          <ref role="3cqZAo" node="6E5fMGvfKQK" resolve="it" />
                        </node>
                        <node concept="2OwXpG" id="IfzMHGfK4n" role="2OqNvi">
                          <ref role="2Oxat5" node="IfzMHGfK5K" resolve="ruleTemplateTable" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="6E5fMGvfKQK" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6E5fMGvfKQL" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="IfzMHGfK4q" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="IfzMHGfK4r" role="3clF46">
        <property role="TrG5h" value="unsorted" />
        <node concept="A3Dl8" id="IfzMHGfK4s" role="1tU5fm">
          <node concept="3uibUv" id="IfzMHGfK4t" role="A3Ik2">
            <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="IfzMHGfK4u" role="3clF46">
        <property role="TrG5h" value="aspectClique" />
        <node concept="3uibUv" id="IfzMHGfK4v" role="1tU5fm">
          <ref role="3uigEE" to="pxw9:3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="3qUE_q" id="IfzMHGfK4w" role="11_B2D">
            <node concept="3uibUv" id="IfzMHGfK4x" role="3qUE_r">
              <ref role="3uigEE" to="pxw9:NKt6yomNZE" resolve="CoderulesAspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="IfzMHGfK4y" role="3clF45">
        <node concept="3uibUv" id="IfzMHGfK4z" role="3O5elw">
          <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="IfzMHGfKWO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="IfzMHGfK4_" role="jymVt" />
    <node concept="312cEu" id="IfzMHGfK4A" role="jymVt">
      <property role="TrG5h" value="Vtx" />
      <node concept="3clFbW" id="IfzMHGfK4B" role="jymVt">
        <node concept="37vLTG" id="IfzMHGfK4C" role="3clF46">
          <property role="TrG5h" value="ruleTemplateTable" />
          <node concept="3uibUv" id="IfzMHGfK4D" role="1tU5fm">
            <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
          </node>
        </node>
        <node concept="37vLTG" id="IfzMHGfK4E" role="3clF46">
          <property role="TrG5h" value="priority" />
          <node concept="10Oyi0" id="IfzMHGfK4F" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="IfzMHGfK4G" role="3clF45" />
        <node concept="3Tm6S6" id="IfzMHGfK4H" role="1B3o_S" />
        <node concept="3clFbS" id="IfzMHGfK4I" role="3clF47">
          <node concept="3clFbF" id="IfzMHGfK4J" role="3cqZAp">
            <node concept="37vLTI" id="IfzMHGfK4K" role="3clFbG">
              <node concept="2OqwBi" id="IfzMHGfK4L" role="37vLTJ">
                <node concept="Xjq3P" id="IfzMHGfK4M" role="2Oq$k0" />
                <node concept="2OwXpG" id="IfzMHGfK4N" role="2OqNvi">
                  <ref role="2Oxat5" node="IfzMHGfK5K" resolve="ruleTemplateTable" />
                </node>
              </node>
              <node concept="37vLTw" id="IfzMHGfK4O" role="37vLTx">
                <ref role="3cqZAo" node="IfzMHGfK4C" resolve="ruleTemplateTable" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="IfzMHGfK4P" role="3cqZAp">
            <node concept="37vLTI" id="IfzMHGfK4Q" role="3clFbG">
              <node concept="37vLTw" id="IfzMHGfK4R" role="37vLTx">
                <ref role="3cqZAo" node="IfzMHGfK4E" resolve="priority" />
              </node>
              <node concept="2OqwBi" id="IfzMHGfK4S" role="37vLTJ">
                <node concept="Xjq3P" id="IfzMHGfK4T" role="2Oq$k0" />
                <node concept="2OwXpG" id="IfzMHGfK4U" role="2OqNvi">
                  <ref role="2Oxat5" node="IfzMHGfK5U" resolve="priority" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="IfzMHGfK4V" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="37vLTG" id="IfzMHGfK4W" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="IfzMHGfK4X" role="1tU5fm">
            <node concept="3uibUv" id="IfzMHGfK4Y" role="3rvQeY">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3uibUv" id="IfzMHGfK4Z" role="3rvSg0">
              <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="IfzMHGfK50" role="3clF45" />
        <node concept="3Tm6S6" id="IfzMHGfK51" role="1B3o_S" />
        <node concept="3clFbS" id="IfzMHGfK52" role="3clF47">
          <node concept="3clFbJ" id="IfzMHGfK53" role="3cqZAp">
            <node concept="3clFbS" id="IfzMHGfK54" role="3clFbx">
              <node concept="3clFbF" id="IfzMHGfK55" role="3cqZAp">
                <node concept="2OqwBi" id="IfzMHGfK56" role="3clFbG">
                  <node concept="2OqwBi" id="IfzMHGfK57" role="2Oq$k0">
                    <node concept="Xjq3P" id="IfzMHGfK58" role="2Oq$k0" />
                    <node concept="2OwXpG" id="IfzMHGfK59" role="2OqNvi">
                      <ref role="2Oxat5" node="IfzMHGfK5N" resolve="extended" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="IfzMHGfK5a" role="2OqNvi">
                    <node concept="3EllGN" id="IfzMHGfK5b" role="25WWJ7">
                      <node concept="2OqwBi" id="IfzMHGfK5c" role="3ElVtu">
                        <node concept="37vLTw" id="IfzMHGfK5d" role="2Oq$k0">
                          <ref role="3cqZAo" node="IfzMHGfK5K" resolve="ruleTemplateTable" />
                        </node>
                        <node concept="liA8E" id="IfzMHGfK5e" role="2OqNvi">
                          <ref role="37wK5l" to="ugy2:7P_FdVQoGPt" resolve="extendedFqName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="IfzMHGfK5f" role="3ElQJh">
                        <ref role="3cqZAo" node="IfzMHGfK4W" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="IfzMHGfK5g" role="3clFbw">
              <node concept="37vLTw" id="IfzMHGfK5h" role="2Oq$k0">
                <ref role="3cqZAo" node="IfzMHGfK4W" resolve="graph" />
              </node>
              <node concept="2Nt0df" id="IfzMHGfK5i" role="2OqNvi">
                <node concept="2OqwBi" id="IfzMHGfK5j" role="38cxEo">
                  <node concept="37vLTw" id="IfzMHGfK5k" role="2Oq$k0">
                    <ref role="3cqZAo" node="IfzMHGfK5K" resolve="ruleTemplateTable" />
                  </node>
                  <node concept="liA8E" id="IfzMHGfK5l" role="2OqNvi">
                    <ref role="37wK5l" to="ugy2:7P_FdVQoGPt" resolve="extendedFqName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="IfzMHGfK5m" role="3cqZAp">
            <node concept="3clFbS" id="IfzMHGfK5n" role="2LFqv$">
              <node concept="3clFbJ" id="IfzMHGfK5o" role="3cqZAp">
                <node concept="3clFbS" id="IfzMHGfK5p" role="3clFbx">
                  <node concept="3clFbF" id="IfzMHGfK5q" role="3cqZAp">
                    <node concept="2OqwBi" id="IfzMHGfK5r" role="3clFbG">
                      <node concept="2OqwBi" id="IfzMHGfK5s" role="2Oq$k0">
                        <node concept="2GrUjf" id="IfzMHGfK5t" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="IfzMHGfK5I" resolve="v" />
                        </node>
                        <node concept="2OwXpG" id="IfzMHGfK5u" role="2OqNvi">
                          <ref role="2Oxat5" node="IfzMHGfK5N" resolve="extended" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="IfzMHGfK5v" role="2OqNvi">
                        <node concept="Xjq3P" id="IfzMHGfK5w" role="25WWJ7" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="IfzMHGfK5x" role="3clFbw">
                  <node concept="2OqwBi" id="IfzMHGfK5y" role="2Oq$k0">
                    <node concept="37vLTw" id="IfzMHGfK5z" role="2Oq$k0">
                      <ref role="3cqZAo" node="IfzMHGfK5K" resolve="ruleTemplateTable" />
                    </node>
                    <node concept="liA8E" id="IfzMHGfK5$" role="2OqNvi">
                      <ref role="37wK5l" to="ugy2:7P_FdVQoZmr" resolve="fqName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="IfzMHGfK5_" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="IfzMHGfK5A" role="37wK5m">
                      <node concept="2OqwBi" id="IfzMHGfK5B" role="2Oq$k0">
                        <node concept="2GrUjf" id="IfzMHGfK5C" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="IfzMHGfK5I" resolve="v" />
                        </node>
                        <node concept="2OwXpG" id="IfzMHGfK5D" role="2OqNvi">
                          <ref role="2Oxat5" node="IfzMHGfK5K" resolve="ruleTemplateTable" />
                        </node>
                      </node>
                      <node concept="liA8E" id="IfzMHGfK5E" role="2OqNvi">
                        <ref role="37wK5l" to="ugy2:7P_FdVQoGPt" resolve="extendedFqName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="IfzMHGfK5F" role="2GsD0m">
              <node concept="37vLTw" id="IfzMHGfK5G" role="2Oq$k0">
                <ref role="3cqZAo" node="IfzMHGfK4W" resolve="graph" />
              </node>
              <node concept="T8wYR" id="IfzMHGfK5H" role="2OqNvi" />
            </node>
            <node concept="2GrKxI" id="IfzMHGfK5I" role="2Gsz3X">
              <property role="TrG5h" value="v" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="IfzMHGfK5J" role="1B3o_S" />
      <node concept="312cEg" id="IfzMHGfK5K" role="jymVt">
        <property role="TrG5h" value="ruleTemplateTable" />
        <node concept="3Tm6S6" id="IfzMHGfK5L" role="1B3o_S" />
        <node concept="3uibUv" id="IfzMHGfK5M" role="1tU5fm">
          <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="312cEg" id="IfzMHGfK5N" role="jymVt">
        <property role="TrG5h" value="extended" />
        <node concept="3Tm6S6" id="IfzMHGfK5O" role="1B3o_S" />
        <node concept="_YKpA" id="IfzMHGfK5P" role="1tU5fm">
          <node concept="3uibUv" id="IfzMHGfK5Q" role="_ZDj9">
            <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="IfzMHGfK5R" role="33vP2m">
          <node concept="Tc6Ow" id="IfzMHGfK5S" role="2ShVmc">
            <node concept="3uibUv" id="IfzMHGfK5T" role="HW$YZ">
              <ref role="3uigEE" node="IfzMHGfK4A" resolve="RuleTableUtil.Vtx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="IfzMHGfK5U" role="jymVt">
        <property role="TrG5h" value="priority" />
        <node concept="3Tm6S6" id="IfzMHGfK5V" role="1B3o_S" />
        <node concept="10Oyi0" id="IfzMHGfK5W" role="1tU5fm" />
        <node concept="3cmrfG" id="IfzMHGfK5X" role="33vP2m">
          <property role="3cmrfH" value="0" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="IfzMHGfDEg" role="jymVt" />
    <node concept="2tJIrI" id="IfzMHGfDEk" role="jymVt" />
    <node concept="2tJIrI" id="IfzMHGfDDZ" role="jymVt" />
    <node concept="3Tm1VV" id="IfzMHGfDvd" role="1B3o_S" />
  </node>
</model>

