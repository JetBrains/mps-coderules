<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6285678b-007f-4527-bcf5-6fd38ba8c969(jetbrains.mps.lang.coderules.program)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="9x2e" ref="r:0730b0d1-7e2f-4982-aac3-8069c5060a9c(jetbrains.mps.lang.typesystem2.reporting)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.coderules.eval)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
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
      <concept id="1224500799915" name="jetbrains.mps.baseLanguage.structure.BitwiseXorExpression" flags="nn" index="pVQyQ" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
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
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
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
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
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
      <node concept="37vLTG" id="5rhZO$TZMH3" role="3clF46">
        <property role="TrG5h" value="rules" />
        <node concept="3uibUv" id="5rhZO$TZMNx" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5rhZO$TZMSL" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4MqhgXUS0Q6" role="3clF46">
        <property role="TrG5h" value="handlers" />
        <node concept="3uibUv" id="4MqhgXUS0Q7" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4MqhgXUS0Q8" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5rhZO$TZmur" role="3clF46">
        <property role="TrG5h" value="constraintRegistry" />
        <node concept="3uibUv" id="5rhZO$TZm$4" role="1tU5fm">
          <ref role="3uigEE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
        </node>
      </node>
      <node concept="37vLTG" id="70Wv0dJiJjG" role="3clF46">
        <property role="TrG5h" value="originIndex" />
        <node concept="3uibUv" id="70Wv0dJiJjU" role="1tU5fm">
          <ref role="3uigEE" node="70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
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
        <node concept="3clFbF" id="5rhZO$TZN2t" role="3cqZAp">
          <node concept="37vLTI" id="5rhZO$TZNA$" role="3clFbG">
            <node concept="37vLTw" id="5rhZO$TZNG$" role="37vLTx">
              <ref role="3cqZAo" node="5rhZO$TZMH3" resolve="rules" />
            </node>
            <node concept="2OqwBi" id="5rhZO$TZN4J" role="37vLTJ">
              <node concept="Xjq3P" id="5rhZO$TZN2r" role="2Oq$k0" />
              <node concept="2OwXpG" id="5rhZO$TZN8u" role="2OqNvi">
                <ref role="2Oxat5" node="7eGEHDlcFpc" resolve="rules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXURWMC" role="3cqZAp">
          <node concept="37vLTI" id="4MqhgXURWMD" role="3clFbG">
            <node concept="37vLTw" id="4MqhgXURWME" role="37vLTx">
              <ref role="3cqZAo" node="4MqhgXUS0Q6" resolve="handlers" />
            </node>
            <node concept="2OqwBi" id="4MqhgXURWMF" role="37vLTJ">
              <node concept="Xjq3P" id="4MqhgXURWMG" role="2Oq$k0" />
              <node concept="2OwXpG" id="4MqhgXURZ4o" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXULUc0" resolve="handlers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rhZO$TZmCy" role="3cqZAp">
          <node concept="37vLTI" id="5rhZO$TZoeN" role="3clFbG">
            <node concept="37vLTw" id="5rhZO$TZoiD" role="37vLTx">
              <ref role="3cqZAo" node="5rhZO$TZmur" resolve="constraintRegistry" />
            </node>
            <node concept="2OqwBi" id="5rhZO$TZmE8" role="37vLTJ">
              <node concept="Xjq3P" id="5rhZO$TZmCw" role="2Oq$k0" />
              <node concept="2OwXpG" id="5rhZO$TZoak" role="2OqNvi">
                <ref role="2Oxat5" node="5rhZO$TZnaE" resolve="registry" />
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
        <ref role="3uigEE" node="70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
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
    <node concept="2tJIrI" id="4MqhgXURXJo" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcXhUF" role="jymVt">
      <property role="TrG5h" value="constraintArgumentTypes" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="78CwJJcXhUG" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="78CwJJcXhUH" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="78CwJJcXhUI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcXhUJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcXhUK" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcXhUL" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcXhUN" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXjXI" role="3cqZAp">
          <node concept="2OqwBi" id="78CwJJcXk1o" role="3clFbG">
            <node concept="37vLTw" id="78CwJJcXjXH" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZnaE" resolve="registry" />
            </node>
            <node concept="liA8E" id="78CwJJcXq47" role="2OqNvi">
              <ref role="37wK5l" node="78CwJJcXcEs" resolve="constraintArgTypes" />
              <node concept="37vLTw" id="78CwJJcXq6w" role="37wK5m">
                <ref role="3cqZAo" node="78CwJJcXhUG" resolve="constraintSymbol" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcWPAF" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTorQ" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="78CwJJcTorR" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcTorS" role="11_B2D">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcTorT" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTorV" role="3clF47">
        <node concept="3clFbF" id="78CwJJcWNUm" role="3cqZAp">
          <node concept="2OqwBi" id="78CwJJcWNVb" role="3clFbG">
            <node concept="37vLTw" id="78CwJJcWNUl" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZnaE" resolve="registry" />
            </node>
            <node concept="liA8E" id="78CwJJcWNY_" role="2OqNvi">
              <ref role="37wK5l" node="78CwJJcXKoo" resolve="constraintSymbols" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="78CwJJcWS94" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcWRd_" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTos7" role="jymVt">
      <property role="TrG5h" value="predicateSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="78CwJJcTos8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcTos9" role="11_B2D">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcTosa" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTosc" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXJZt" role="3cqZAp">
          <node concept="2OqwBi" id="78CwJJcXRZo" role="3clFbG">
            <node concept="37vLTw" id="78CwJJcXJZs" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZnaE" resolve="registry" />
            </node>
            <node concept="liA8E" id="78CwJJcXS0z" role="2OqNvi">
              <ref role="37wK5l" node="ZqZbw4RIlL" resolve="predicateSymbols" />
            </node>
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
      <property role="TrG5h" value="handlers" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4MqhgXUKgMd" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXUKgMf" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="4MqhgXUKgMg" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3clFbS" id="4MqhgXUKgMh" role="3clF47">
        <node concept="3clFbF" id="4MqhgXUT$0V" role="3cqZAp">
          <node concept="2YIFZM" id="4MqhgXUT$36" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="4MqhgXUT$4h" role="37wK5m">
              <ref role="3cqZAo" node="4MqhgXULUc0" resolve="handlers" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4MqhgXUKgMi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jCHAT2R0T$" role="jymVt" />
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
                    <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="60zk4o6SxJo" role="37wK5m">
                          <node concept="37vLTw" id="60zk4o6SxJp" role="2Oq$k0">
                            <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                          </node>
                          <node concept="liA8E" id="60zk4o6SxJq" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~LogicalContext.variable(jetbrains.mps.logic.reactor.logical.MetaLogical):jetbrains.mps.logic.reactor.logical.Logical" resolve="variable" />
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
                          <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
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
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="5WBVN_M1MSf" role="3cqZAp">
                    <node concept="3SKdUq" id="5WBVN_M1MSh" role="3SKWNk">
                      <property role="3SKdUp" value="TODO: user code" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="5WBVN_M1Hyh" role="3cqZAp">
                    <node concept="2OqwBi" id="5WBVN_M1HRh" role="3clFbG">
                      <node concept="37vLTw" id="5WBVN_M1Hyf" role="2Oq$k0">
                        <ref role="3cqZAo" node="60zk4o6SxJ1" resolve="res" />
                      </node>
                      <node concept="liA8E" id="5WBVN_M1IHI" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="5WBVN_M1JzG" role="37wK5m">
                          <node concept="37vLTw" id="5WBVN_M1JhL" role="2Oq$k0">
                            <ref role="3cqZAo" node="5WBVN_M1J08" resolve="exp" />
                          </node>
                          <node concept="liA8E" id="5WBVN_M1JVL" role="2OqNvi">
                            <ref role="37wK5l" to="i348:5WBVN_M1BLN" resolve="eval" />
                            <node concept="37vLTw" id="6yUEjXvTvSG" role="37wK5m">
                              <ref role="3cqZAo" node="60zk4o6Suop" resolve="logicalContext" />
                            </node>
                            <node concept="2OqwBi" id="5WBVN_M1KyJ" role="37wK5m">
                              <node concept="37vLTw" id="5WBVN_M1K7z" role="2Oq$k0">
                                <ref role="3cqZAo" node="5WBVN_M1GEu" resolve="expArgs" />
                              </node>
                              <node concept="liA8E" id="5WBVN_M1L1T" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.toArray():java.lang.Object[]" resolve="toArray" />
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
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
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
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
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
    <node concept="2tJIrI" id="60zk4o6RdRN" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSE1WF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="7Oc59RSE1WG" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHR" role="3clF45" />
      <node concept="3clFbS" id="7Oc59RSE1WJ" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSE2Pm" role="3cqZAp">
          <node concept="3cpWs3" id="7Oc59RSE4SY" role="3clFbG">
            <node concept="Xl_RD" id="7Oc59RSE4T8" role="3uHU7w">
              <property role="Xl_RC" value=" rules}" />
            </node>
            <node concept="3cpWs3" id="7Oc59RSE3JM" role="3uHU7B">
              <node concept="3cpWs3" id="7Oc59RSE3vq" role="3uHU7B">
                <node concept="3cpWs3" id="7Oc59RSE80q" role="3uHU7B">
                  <node concept="37vLTw" id="7Oc59RSE8b2" role="3uHU7w">
                    <ref role="3cqZAo" node="7Oc59RSE6Qy" resolve="name" />
                  </node>
                  <node concept="3cpWs3" id="7Oc59RSE7HS" role="3uHU7B">
                    <node concept="2OqwBi" id="7Oc59RSE3ij" role="3uHU7B">
                      <node concept="1rXfSq" id="7Oc59RSE2Pl" role="2Oq$k0">
                        <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                      </node>
                      <node concept="liA8E" id="7Oc59RSE3pt" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getSimpleName():java.lang.String" resolve="getSimpleName" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7Oc59RSE7MB" role="3uHU7w">
                      <property role="Xl_RC" value="(" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="7Oc59RSE3v$" role="3uHU7w">
                  <property role="Xl_RC" value=") {" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Oc59RSE48e" role="3uHU7w">
                <node concept="37vLTw" id="7Oc59RSE3UI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlcFpc" resolve="rules" />
                </node>
                <node concept="liA8E" id="7Oc59RSE4y6" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Oc59RSE1WK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSE2oP" role="jymVt" />
    <node concept="312cEg" id="7Oc59RSE6Qy" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="7Oc59RSE6Qz" role="1B3o_S" />
      <node concept="17QB3L" id="7Oc59RSE6Q_" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7eGEHDlcFpc" role="jymVt">
      <property role="TrG5h" value="rules" />
      <node concept="3Tm6S6" id="7eGEHDlcFpd" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDlcFrm" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7eGEHDlcFuc" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXULUc0" role="jymVt">
      <property role="TrG5h" value="handlers" />
      <node concept="3Tm6S6" id="4MqhgXULUc1" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXULV52" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="4MqhgXULVdx" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5rhZO$TZnaE" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="registry" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5rhZO$TZnaF" role="1B3o_S" />
      <node concept="3uibUv" id="5rhZO$TZnaG" role="1tU5fm">
        <ref role="3uigEE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="70Wv0dJiJjX" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <node concept="3Tm6S6" id="70Wv0dJiJjY" role="1B3o_S" />
      <node concept="3uibUv" id="70Wv0dJiJk0" role="1tU5fm">
        <ref role="3uigEE" node="70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7nPD14O5B_4" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7eGEHDldgwf">
    <property role="TrG5h" value="ConstraintRegistry" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="78CwJJcXKoy" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcXKoo" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <node concept="3uibUv" id="78CwJJcXKop" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="78CwJJcXKoq" role="11_B2D">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcXKor" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcXKos" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXKot" role="3cqZAp">
          <node concept="2YIFZM" id="78CwJJcXKou" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2OqwBi" id="78CwJJcXKov" role="37wK5m">
              <node concept="37vLTw" id="78CwJJcXKow" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
              </node>
              <node concept="liA8E" id="78CwJJcXKox" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.keySet():java.util.Set" resolve="keySet" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSJx7i" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcXcEs" role="jymVt">
      <property role="TrG5h" value="constraintArgTypes" />
      <node concept="3uibUv" id="78CwJJcXkY_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcXlA4" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcXlAG" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcXcEv" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcXcEw" role="3clF47">
        <node concept="3clFbF" id="78CwJJcXfFE" role="3cqZAp">
          <node concept="2YIFZM" id="78CwJJcXnYO" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2OqwBi" id="78CwJJcXo6Q" role="37wK5m">
              <node concept="37vLTw" id="78CwJJcXo2d" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
              </node>
              <node concept="liA8E" id="78CwJJcXofr" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="78CwJJcXpeO" role="37wK5m">
                  <ref role="3cqZAo" node="78CwJJcXom8" resolve="constraintSymbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="78CwJJcXom8" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="78CwJJcXom7" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2fk6$tOrcbX" role="jymVt" />
    <node concept="3clFb_" id="ZqZbw4RIlL" role="jymVt">
      <property role="TrG5h" value="predicateSymbols" />
      <node concept="3uibUv" id="ZqZbw4RJ9K" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="78CwJJcXOef" role="11_B2D">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="ZqZbw4RIlO" role="1B3o_S" />
      <node concept="3clFbS" id="ZqZbw4RIlP" role="3clF47">
        <node concept="3clFbF" id="ZqZbw4RKWT" role="3cqZAp">
          <node concept="2YIFZM" id="ZqZbw4RKXF" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set):java.util.Set" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="78CwJJcXRtE" role="37wK5m">
              <ref role="3cqZAo" node="7ISVfSJtsW" resolve="solvers" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcXbSO" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDldpbj" role="jymVt">
      <property role="TrG5h" value="checkValidConstraint" />
      <node concept="3cqZAl" id="7Oc59RSHNKF" role="3clF45" />
      <node concept="3Tmbuc" id="5rhZO$U00JE" role="1B3o_S" />
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
                        <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="30XHGaOWfgx" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7eGEHDlg3RX" role="3uHU7B">
                    <node concept="2OqwBi" id="30XHGaP5pkH" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEoPo" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                      </node>
                      <node concept="liA8E" id="30XHGaP5pQG" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7eGEHDlg3RZ" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Symbol.arity():int" resolve="arity" />
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
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <node concept="2OqwBi" id="7Oc59RSHQey" role="37wK5m">
                            <node concept="37vLTw" id="5uFPQ7BEpeQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                            </node>
                            <node concept="liA8E" id="7Oc59RSHQe$" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
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
                  <node concept="3SKdUq" id="Vlk31yQOwh" role="3SKWNk">
                    <property role="3SKdUp" value="FIXME: introduce RT types to LateExpression, reinstate this check" />
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
                                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                                        <node concept="2OqwBi" id="1zN1RIln3iH" role="37wK5m">
                                          <node concept="37vLTw" id="5uFPQ7BEsjZ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                          </node>
                                          <node concept="liA8E" id="1zN1RIln3iJ" role="2OqNvi">
                                            <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
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
                                      <ref role="37wK5l" to="av0y:~Constraint.argumentTypes():java.util.List" resolve="argumentTypes" />
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
                                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                                  <node concept="2OqwBi" id="4sSe4$prWcU" role="37wK5m">
                                    <node concept="37vLTw" id="4sSe4$prWcV" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                    </node>
                                    <node concept="liA8E" id="4sSe4$prWcW" role="2OqNvi">
                                      <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
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
                            <ref role="37wK5l" to="av0y:~Constraint.argumentTypes():java.util.List" resolve="argumentTypes" />
                          </node>
                        </node>
                        <node concept="liA8E" id="78CwJJcX49I" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="30XHGaP5H3s" role="37wK5m">
                            <node concept="37vLTw" id="30XHGaP5H3t" role="2Oq$k0">
                              <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                            </node>
                            <node concept="liA8E" id="30XHGaP5H3u" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                              <node concept="2OqwBi" id="30XHGaP5H3v" role="37wK5m">
                                <node concept="37vLTw" id="5uFPQ7BEs2s" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                                </node>
                                <node concept="liA8E" id="30XHGaP5H3x" role="2OqNvi">
                                  <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
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
                  <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                  <node concept="2OqwBi" id="7eGEHDleLtw" role="37wK5m">
                    <node concept="37vLTw" id="5uFPQ7BEppf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7BEo4w" resolve="cst" />
                    </node>
                    <node concept="liA8E" id="7eGEHDleLzH" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
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
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                            <node concept="2OqwBi" id="2pvEdquuFKH" role="37wK5m">
                              <node concept="37vLTw" id="5uFPQ7BEvpY" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                              </node>
                              <node concept="liA8E" id="2pvEdquuFKJ" role="2OqNvi">
                                <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
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
                        <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="30XHGaOWeVo" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2pvEdquuFm4" role="3uHU7w">
                    <node concept="2OqwBi" id="2pvEdquuFm5" role="2Oq$k0">
                      <node concept="37vLTw" id="5uFPQ7BEvly" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BEu6z" resolve="pred" />
                      </node>
                      <node concept="liA8E" id="2pvEdquuFma" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2pvEdquuFmb" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Symbol.arity():int" resolve="arity" />
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
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="2OqwBi" id="2KVRGowWE4s" role="37wK5m">
                            <node concept="37vLTw" id="2KVRGowWDWb" role="2Oq$k0">
                              <ref role="3cqZAo" node="7eGEHDldphF" resolve="item" />
                            </node>
                            <node concept="liA8E" id="2KVRGowWEea" role="2OqNvi">
                              <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
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
              <ref role="37wK5l" to="av0y:~AndItem.arguments():java.util.List" resolve="arguments" />
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
            <node concept="3clFbF" id="7eGEHDleQCQ" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDleQIf" role="3clFbG">
                <node concept="37vLTw" id="7eGEHDleQCP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDley5W" resolve="constraintArgTypes" />
                </node>
                <node concept="liA8E" id="7eGEHDleQZ$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                  <node concept="2OqwBi" id="7eGEHDleR63" role="37wK5m">
                    <node concept="37vLTw" id="5uFPQ7BH1JL" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7BH1yJ" resolve="cst" />
                    </node>
                    <node concept="liA8E" id="7eGEHDleRaS" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Constraint.symbol():jetbrains.mps.logic.reactor.program.ConstraintSymbol" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="78CwJJcWZ_9" role="37wK5m">
                    <node concept="37vLTw" id="78CwJJcWZx1" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7BH1yJ" resolve="cst" />
                    </node>
                    <node concept="liA8E" id="78CwJJcWZFx" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Constraint.argumentTypes():java.util.List" resolve="argumentTypes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="78CwJJcXaLt" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="5uFPQ7BH0Nf" role="3clFbw">
            <node concept="3uibUv" id="5uFPQ7BH0W3" role="2ZW6by">
              <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
            </node>
            <node concept="37vLTw" id="5uFPQ7BH0oU" role="2ZW6bz">
              <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
            </node>
          </node>
          <node concept="3eNFk2" id="5uFPQ7BH23e" role="3eNLev">
            <node concept="2ZW3vV" id="5uFPQ7BH2ms" role="3eO9$A">
              <node concept="3uibUv" id="5uFPQ7BH2ni" role="2ZW6by">
                <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
              </node>
              <node concept="37vLTw" id="5uFPQ7BH2j_" role="2ZW6bz">
                <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
              </node>
            </node>
            <node concept="3clFbS" id="5uFPQ7BH23g" role="3eOfB_">
              <node concept="3cpWs8" id="5uFPQ7BH2qS" role="3cqZAp">
                <node concept="3cpWsn" id="5uFPQ7BH2qT" role="3cpWs9">
                  <property role="TrG5h" value="pred" />
                  <node concept="3uibUv" id="5uFPQ7BH2qQ" role="1tU5fm">
                    <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                  </node>
                  <node concept="10QFUN" id="5uFPQ7BH2qU" role="33vP2m">
                    <node concept="37vLTw" id="5uFPQ7BH2qV" role="10QFUP">
                      <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
                    </node>
                    <node concept="3uibUv" id="5uFPQ7BH2qW" role="10QFUM">
                      <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ISVfSJv16" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSJvhy" role="3clFbG">
                  <node concept="37vLTw" id="7ISVfSJv14" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ISVfSJtsW" resolve="solvers" />
                  </node>
                  <node concept="liA8E" id="7ISVfSJvtA" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                    <node concept="2OqwBi" id="78CwJJcX$kh" role="37wK5m">
                      <node concept="37vLTw" id="78CwJJcX$fr" role="2Oq$k0">
                        <ref role="3cqZAo" node="5uFPQ7BH2qT" resolve="pred" />
                      </node>
                      <node concept="liA8E" id="78CwJJcX$qQ" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5uFPQ7BH2PB" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="5uFPQ7BH2T$" role="9aQIa">
            <node concept="3clFbS" id="5uFPQ7BH2T_" role="9aQI4">
              <node concept="YS8fn" id="54i3FxcRWd9" role="3cqZAp">
                <node concept="2ShNRf" id="54i3FxcRWee" role="YScLw">
                  <node concept="1pGfFk" id="54i3FxcRX6D" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="54i3FxcRXPF" role="37wK5m">
                      <node concept="Xl_RD" id="54i3FxcRXPT" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="54i3FxcRYkz" role="3uHU7B">
                        <node concept="37vLTw" id="54i3FxcRYpR" role="3uHU7w">
                          <ref role="3cqZAo" node="7eGEHDleg3E" resolve="item" />
                        </node>
                        <node concept="Xl_RD" id="54i3FxcRXaq" role="3uHU7B">
                          <property role="Xl_RC" value="unknown item '" />
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
      <node concept="37vLTG" id="7eGEHDleg3E" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="5uFPQ7BGZBH" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSHLFV" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
      </node>
      <node concept="3Tmbuc" id="5rhZO$U01k6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1zN1RIlmLd2" role="jymVt" />
    <node concept="2tJIrI" id="2pvEdquu$2W" role="jymVt" />
    <node concept="312cEg" id="7ISVfSJtsW" role="jymVt">
      <property role="TrG5h" value="solvers" />
      <node concept="3Tm6S6" id="7ISVfSJtsX" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJtsY" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="78CwJJcXzcn" role="11_B2D">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="2ShNRf" id="7ISVfSJtt0" role="33vP2m">
        <node concept="1pGfFk" id="7ISVfSJtt1" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="78CwJJcXzNm" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2pvEdquuHIN" role="jymVt" />
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
    <node concept="2tJIrI" id="78CwJJcX5vW" role="jymVt" />
  </node>
  <node concept="312cEu" id="4MqhgXUMauK">
    <property role="TrG5h" value="HandlerBuilder" />
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
        <node concept="3clFbF" id="4MqhgXUMKBn" role="3cqZAp">
          <node concept="1rXfSq" id="4MqhgXUMKBl" role="3clFbG">
            <ref role="37wK5l" node="4MqhgXUMhh_" resolve="init" />
            <node concept="37vLTw" id="4MqhgXUMKU9" role="37wK5m">
              <ref role="3cqZAo" node="4MqhgXUMh3C" resolve="locations" />
            </node>
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
            <node concept="YS8fn" id="1N8$BG_2PoZ" role="3cqZAp">
              <node concept="2ShNRf" id="1N8$BG_2Ppr" role="YScLw">
                <node concept="1pGfFk" id="1N8$BG_2QBw" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="1N8$BG_2RYk" role="37wK5m">
                    <node concept="Xl_RD" id="1N8$BG_2RYW" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="1N8$BG_2RaX" role="3uHU7B">
                      <node concept="Xl_RD" id="1N8$BG_2QBT" role="3uHU7B">
                        <property role="Xl_RC" value="duplicate tag '" />
                      </node>
                      <node concept="2OqwBi" id="1N8$BG_2Rmd" role="3uHU7w">
                        <node concept="37vLTw" id="1N8$BG_2Rbq" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MqhgXUMggv" resolve="rule" />
                        </node>
                        <node concept="liA8E" id="1N8$BG_2RtG" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Rule.tag():java.lang.String" resolve="tag" />
                        </node>
                      </node>
                    </node>
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
                <node concept="liA8E" id="1N8$BG_2V_S" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Rule.tag():java.lang.String" resolve="tag" />
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
                <node concept="liA8E" id="1N8$BG_3hjk" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Rule.tag():java.lang.String" resolve="tag" />
                </node>
              </node>
              <node concept="37vLTw" id="1N8$BG_3gnC" role="3ElQJh">
                <ref role="3cqZAo" node="1N8$BG_2NH_" resolve="tag2rule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MqhgXUMgBM" role="3cqZAp">
          <node concept="3SKdUq" id="4MqhgXUMgBO" role="3SKWNk">
            <property role="3SKdUp" value="TODO: invariant: the rule's head must have a constraint with the primary symbol" />
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUMICn" role="3cqZAp">
          <node concept="2OqwBi" id="4MqhgXUMJAd" role="3clFbG">
            <node concept="3EllGN" id="4MqhgXUMIXB" role="2Oq$k0">
              <node concept="37vLTw" id="4MqhgXUMJ3s" role="3ElVtu">
                <ref role="3cqZAo" node="4MqhgXUMgMT" resolve="location" />
              </node>
              <node concept="37vLTw" id="4MqhgXUMICl" role="3ElQJh">
                <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="location2rules" />
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
    <node concept="3clFb_" id="4MqhgXUMhh_" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="4MqhgXUMhtr" role="3clF46">
        <property role="TrG5h" value="locations" />
        <node concept="A3Dl8" id="4MqhgXUMhxO" role="1tU5fm">
          <node concept="3qUE_q" id="4$YN6QuKBWx" role="A3Ik2">
            <node concept="3uibUv" id="4$YN6QuKCoF" role="3qUE_r">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4MqhgXUMhhB" role="3clF45" />
      <node concept="3Tm6S6" id="4MqhgXUMhmy" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUMhhD" role="3clF47">
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
                    <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="location2rules" />
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
          <node concept="37vLTw" id="4MqhgXUMhE5" role="1DdaDG">
            <ref role="3cqZAo" node="4MqhgXUMhtr" resolve="locations" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUNBTW" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUNDLG" role="jymVt">
      <property role="TrG5h" value="toHandler" />
      <node concept="3uibUv" id="4MqhgXUNEFF" role="3clF45">
        <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
      </node>
      <node concept="3Tm1VV" id="4MqhgXUNDLJ" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUNDLK" role="3clF47">
        <node concept="3clFbF" id="4MqhgXUNGR0" role="3cqZAp">
          <node concept="37vLTI" id="4MqhgXUNHvW" role="3clFbG">
            <node concept="2OqwBi" id="4MqhgXUNGW4" role="37vLTJ">
              <node concept="Xjq3P" id="4MqhgXUNGQZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="4MqhgXUNH1M" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXUMgHN" resolve="location2rules" />
              </node>
            </node>
            <node concept="2YIFZM" id="4MqhgXUNJ$f" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map):java.util.Map" resolve="unmodifiableMap" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="4MqhgXUNJJ2" role="37wK5m">
                <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="location2rules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUNKmT" role="3cqZAp">
          <node concept="2ShNRf" id="4MqhgXUNKmP" role="3clFbG">
            <node concept="1pGfFk" id="4MqhgXUNKOX" role="2ShVmc">
              <ref role="37wK5l" node="4MqhgXUM$CT" resolve="HandlerBuilder.HandlerImpl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUMb3H" role="jymVt" />
    <node concept="312cEu" id="4MqhgXUMzTQ" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="HandlerImpl" />
      <node concept="2tJIrI" id="4MqhgXUM$3u" role="jymVt" />
      <node concept="3clFbW" id="4MqhgXUM$CT" role="jymVt">
        <node concept="3cqZAl" id="4MqhgXUM$CV" role="3clF45" />
        <node concept="3Tm6S6" id="4MqhgXUM$Jk" role="1B3o_S" />
        <node concept="3clFbS" id="4MqhgXUM$CX" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="4MqhgXUM$ym" role="jymVt" />
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
            <node concept="37vLTw" id="4MqhgXUM$ba" role="3clFbG">
              <ref role="3cqZAo" node="4MqhgXUMb9p" resolve="name" />
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
                <ref role="3cqZAo" node="4MqhgXUMgHN" resolve="location2rules" />
              </node>
              <node concept="T8wYR" id="4MqhgXUPgUg" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="4MqhgXUM_3o" role="3cqZAp">
            <node concept="2OqwBi" id="4MqhgXUMGPA" role="3clFbG">
              <node concept="37vLTw" id="4MqhgXUM_3m" role="2Oq$k0">
                <ref role="3cqZAo" node="4MqhgXUCPqM" resolve="allRules" />
              </node>
              <node concept="26Dbio" id="4MqhgXUMHQy" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4MqhgXUM$46" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4MqhgXUM$3z" role="jymVt" />
      <node concept="3Tm1VV" id="4MqhgXUMzTR" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXUM$3j" role="1zkMxy">
        <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
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
      <property role="TrG5h" value="location2rules" />
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
        <node concept="17QB3L" id="1N8$BG_2NKm" role="3rvQeY" />
        <node concept="3uibUv" id="1N8$BG_2NKp" role="3rvSg0">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="2ShNRf" id="1N8$BG_2NLz" role="33vP2m">
        <node concept="3rGOSV" id="1N8$BG_2NL4" role="2ShVmc">
          <node concept="17QB3L" id="1N8$BG_2NL5" role="3rHrn6" />
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
          <property role="1dT_AB" value="The builder maintains the list of locations. Every rule added must correspond to a location from the " />
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
          <property role="1dT_AB" value="Instance of Handler produced by toHandler() returns the rules sorted by location key." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7DvO2M9Uago">
    <property role="TrG5h" value="HandlerTable" />
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
      <node concept="3cqZAl" id="7DvO2M9Uagw" role="3clF45" />
      <node concept="3Tm1VV" id="7DvO2M9Uagx" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Uagy" role="3clF47">
        <node concept="3clFbH" id="7DvO2M9Uagz" role="3cqZAp" />
        <node concept="3SKdUt" id="7DvO2M9Uag$" role="3cqZAp">
          <node concept="3SKdUq" id="7DvO2M9Uag_" role="3SKWNk">
            <property role="3SKdUp" value="find the appropriate location for the template and execute builders" />
          </node>
        </node>
        <node concept="3clFbH" id="7DvO2M9UagA" role="3cqZAp" />
        <node concept="1DcWWT" id="7DvO2M9UagB" role="3cqZAp">
          <node concept="3clFbS" id="7DvO2M9UagC" role="2LFqv$">
            <node concept="3clFbF" id="7DvO2M9UagD" role="3cqZAp">
              <node concept="2OqwBi" id="7DvO2M9UagE" role="3clFbG">
                <node concept="1rXfSq" id="7DvO2M9UagF" role="2Oq$k0">
                  <ref role="37wK5l" node="7DvO2M9Uahp" resolve="handlerBuilder" />
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
                  <node concept="2OqwBi" id="7DvO2M9UagL" role="37wK5m">
                    <node concept="37vLTw" id="7DvO2M9UagM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7DvO2M9UagO" resolve="ruleBuilder" />
                    </node>
                    <node concept="liA8E" id="7DvO2M9UagN" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7eGEHDlc$ck" resolve="toRule" />
                    </node>
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
      </node>
      <node concept="3uibUv" id="7DvO2M9UagS" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
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
                  <node concept="2OqwBi" id="6OXbTDy1d8D" role="37wK5m">
                    <node concept="2GrUjf" id="6OXbTDyyjW7" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6OXbTDyyjW5" resolve="ruleBuilder" />
                    </node>
                    <node concept="liA8E" id="6OXbTDy1dgn" role="2OqNvi">
                      <ref role="37wK5l" to="i348:7eGEHDlc$ck" resolve="toRule" />
                    </node>
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
    <node concept="2tJIrI" id="6OXbTDy0F6L" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9UagU" role="jymVt">
      <property role="TrG5h" value="allHandlers" />
      <node concept="A3Dl8" id="7DvO2M9UagV" role="3clF45">
        <node concept="3uibUv" id="7DvO2M9UagW" role="A3Ik2">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7DvO2M9UagX" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9UagY" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9UagZ" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9Uah0" role="3cpWs9">
            <property role="TrG5h" value="allHandlers" />
            <node concept="_YKpA" id="7DvO2M9Uah1" role="1tU5fm">
              <node concept="3uibUv" id="7DvO2M9Uah2" role="_ZDj9">
                <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
              </node>
            </node>
            <node concept="2ShNRf" id="7DvO2M9Uah3" role="33vP2m">
              <node concept="Tc6Ow" id="7DvO2M9Uah4" role="2ShVmc">
                <node concept="3uibUv" id="7DvO2M9Uah5" role="HW$YZ">
                  <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
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
                      <ref role="37wK5l" node="4MqhgXUNDLG" resolve="toHandler" />
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
          <node concept="3SKdUq" id="6OXbTDzUJvB" role="3SKWNk">
            <property role="3SKdUp" value="queries should go last" />
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
                      <ref role="3cqZAo" node="6OXbTDzHkqu" resolve="handlerBuilder" />
                    </node>
                    <node concept="liA8E" id="6OXbTDzHkqt" role="2OqNvi">
                      <ref role="37wK5l" node="4MqhgXUNDLG" resolve="toHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6OXbTDzHkqu" role="1Duv9x">
            <property role="TrG5h" value="handlerBuilder" />
            <node concept="3uibUv" id="6OXbTDzHkqv" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
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
            <property role="1dT_AB" value="The order of handlers returned must correspond to the partial order of hanldlers set by &quot;extends&quot; relation. " />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeU7w$" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeU7w_" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="2$$Q_FeU7wE" role="TZ5H$">
          <node concept="1dT_AC" id="2$$Q_FeU7wF" role="1dT_Ay">
            <property role="1dT_AB" value="Every handler must contain rules in the same order as rule templates within a handler template. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Uaho" role="jymVt" />
    <node concept="3clFb_" id="7DvO2M9Uahp" role="jymVt">
      <property role="TrG5h" value="handlerBuilder" />
      <node concept="37vLTG" id="7DvO2M9Uahq" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="7DvO2M9Uahr" role="1tU5fm">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="3uibUv" id="7DvO2M9Uahs" role="3clF45">
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
      </node>
      <node concept="3Tm6S6" id="7DvO2M9Uaht" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9Uahu" role="3clF47">
        <node concept="3cpWs8" id="7DvO2M9Uahv" role="3cqZAp">
          <node concept="3cpWsn" id="7DvO2M9Uahw" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="7DvO2M9Uahx" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
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
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="HandlerBuilder" />
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
        <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
      </node>
      <node concept="3Tm6S6" id="6OXbTDy166v" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDy166w" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDy166x" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDy166y" role="3cpWs9">
            <property role="TrG5h" value="handlerBuilder" />
            <node concept="3uibUv" id="6OXbTDzvoxW" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
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
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="HandlerBuilder" />
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
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="2$$Q_FeUrOK" role="3clF45">
        <node concept="3uibUv" id="2$$Q_FeUrP1" role="3O5elw">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2$$Q_FeUqdR" role="1B3o_S" />
      <node concept="3clFbS" id="2$$Q_FeUpFz" role="3clF47">
        <node concept="3SKdUt" id="2$$Q_FeUDy7" role="3cqZAp">
          <node concept="3SKdUq" id="2$$Q_FeUDy9" role="3SKWNk">
            <property role="3SKdUp" value="fqName -&gt; Vtx" />
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
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="2$$Q_FeUrVB" role="33vP2m">
              <node concept="3rGOSV" id="2$$Q_FeUrU4" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUDuF" role="3rHrn6">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="3uibUv" id="2$$Q_FeUrU6" role="3rHtpV">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
                      <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
                    </node>
                    <node concept="2ShNRf" id="2$$Q_FeV42X" role="33vP2m">
                      <node concept="1pGfFk" id="2$$Q_FeV42Y" role="2ShVmc">
                        <ref role="37wK5l" node="2$$Q_FeUj7r" resolve="HandlerTable.Vtx" />
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
          <node concept="3SKdUq" id="NKt6ynosm8" role="3SKWNk">
            <property role="3SKdUp" value="depth-first search. the vertex that is visited last is moved in front of others" />
          </node>
        </node>
        <node concept="3SKdUt" id="2$$Q_FeV7TG" role="3cqZAp">
          <node concept="3SKdUq" id="2$$Q_FeV7TI" role="3SKWNk">
            <property role="3SKdUp" value="the handlers being extended have lower priority" />
          </node>
        </node>
        <node concept="3cpWs8" id="NKt6ynosm9" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosma" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="NKt6ynosmb" role="1tU5fm">
              <node concept="3uibUv" id="2$$Q_FeUywA" role="3O5elw">
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmd" role="33vP2m">
              <node concept="2Jqq0_" id="NKt6ynosme" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUywJ" role="HW$YZ">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmk" role="33vP2m">
              <node concept="2Jqq0_" id="NKt6ynosml" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUyx1" role="HW$YZ">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
                <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmr" role="33vP2m">
              <node concept="2i4dXS" id="NKt6ynosms" role="2ShVmc">
                <node concept="3uibUv" id="2$$Q_FeUyxj" role="HW$YZ">
                  <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
                      <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
                      <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
              <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
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
              <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
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
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
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
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="312cEg" id="2$$Q_FeUozA" role="jymVt">
        <property role="TrG5h" value="extended" />
        <node concept="3Tm6S6" id="2$$Q_FeUozB" role="1B3o_S" />
        <node concept="_YKpA" id="2$$Q_FeUo$c" role="1tU5fm">
          <node concept="3uibUv" id="2$$Q_FeUo$m" role="_ZDj9">
            <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="2$$Q_FeUoAS" role="33vP2m">
          <node concept="Tc6Ow" id="2$$Q_FeUo_G" role="2ShVmc">
            <node concept="3uibUv" id="2$$Q_FeUo_H" role="HW$YZ">
              <ref role="3uigEE" node="2$$Q_FeUi_7" resolve="HandlerTable.Vtx" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9$xQ6" role="jymVt" />
    <node concept="312cEg" id="7DvO2M9Uaig" role="jymVt">
      <property role="TrG5h" value="handlerBuilders" />
      <node concept="3Tm6S6" id="7DvO2M9Uaih" role="1B3o_S" />
      <node concept="3rvAFt" id="7DvO2M9Uaii" role="1tU5fm">
        <node concept="3uibUv" id="7DvO2M9Uaij" role="3rvQeY">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
        <node concept="3uibUv" id="7DvO2M9Uaik" role="3rvSg0">
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="7DvO2M9Uail" role="33vP2m">
        <node concept="3rGOSV" id="7DvO2M9Uaim" role="2ShVmc">
          <node concept="3uibUv" id="7DvO2M9Uain" role="3rHrn6">
            <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="HandlerTemplate" />
          </node>
          <node concept="3uibUv" id="7DvO2M9Uaio" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
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
          <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="6OXbTDy164P" role="33vP2m">
        <node concept="3rGOSV" id="6OXbTDy163E" role="2ShVmc">
          <node concept="3uibUv" id="6OXbTD$xIHz" role="3rHrn6">
            <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
            <node concept="3qTvmN" id="6OXbTD$xJlQ" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="6OXbTDzvor7" role="3rHtpV">
            <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvO2M9Uaip" role="jymVt" />
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
      <property role="TrG5h" value="SINGLE" />
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
    <node concept="2tJIrI" id="7DvO2M9_As1" role="jymVt" />
  </node>
  <node concept="312cEu" id="70Wv0dJhQb2">
    <property role="TrG5h" value="PrincipalOriginIndex" />
    <node concept="2tJIrI" id="70Wv0dJhQb4" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJhQbd" role="jymVt">
      <property role="TrG5h" value="isPrincipal" />
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
                <ref role="3cqZAo" node="70Wv0dJjR_A" resolve="principalRefs" />
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
    <node concept="3clFb_" id="42eP3ws38rS" role="jymVt">
      <property role="TrG5h" value="isPrincipalAncestor" />
      <node concept="37vLTG" id="42eP3ws3$HT" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="42eP3ws3ZT5" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="42eP3ws3cdT" role="3clF45" />
      <node concept="3Tm1VV" id="42eP3ws38rV" role="1B3o_S" />
      <node concept="3clFbS" id="42eP3ws38rW" role="3clF47">
        <node concept="3clFbF" id="42eP3ws3E_j" role="3cqZAp">
          <node concept="2OqwBi" id="42eP3ws3Fh2" role="3clFbG">
            <node concept="37vLTw" id="42eP3ws3E_i" role="2Oq$k0">
              <ref role="3cqZAo" node="42eP3ws2olF" resolve="principalAncestorsRefs" />
            </node>
            <node concept="3JPx81" id="42eP3ws3TMZ" role="2OqNvi">
              <node concept="2OqwBi" id="42eP3ws40dh" role="25WWJ7">
                <node concept="37vLTw" id="42eP3ws3TWA" role="2Oq$k0">
                  <ref role="3cqZAo" node="42eP3ws3$HT" resolve="node" />
                </node>
                <node concept="iZEcu" id="42eP3ws40FG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="42eP3ws33KR" role="jymVt" />
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
                  <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42eP3ws2t2Y" role="3cqZAp">
          <node concept="2OqwBi" id="42eP3ws2vJx" role="3clFbG">
            <node concept="37vLTw" id="42eP3ws2v4d" role="2Oq$k0">
              <ref role="3cqZAo" node="42eP3ws2olF" resolve="principalAncestorsRefs" />
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
      </node>
    </node>
    <node concept="2tJIrI" id="70Wv0dJj0m2" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJj0l_" role="jymVt">
      <property role="TrG5h" value="addOrigin" />
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
            <node concept="3clFbF" id="70Wv0dJjFnm" role="3cqZAp">
              <node concept="2OqwBi" id="70Wv0dJjGd4" role="3clFbG">
                <node concept="37vLTw" id="70Wv0dJk2zg" role="2Oq$k0">
                  <ref role="3cqZAo" node="70Wv0dJjMTf" resolve="originRefs" />
                </node>
                <node concept="TSZUe" id="70Wv0dJkd05" role="2OqNvi">
                  <node concept="2OqwBi" id="70Wv0dJk23O" role="25WWJ7">
                    <node concept="2JrnkZ" id="70Wv0dJk23P" role="2Oq$k0">
                      <node concept="37vLTw" id="70Wv0dJkeOD" role="2JrQYb">
                        <ref role="3cqZAo" node="70Wv0dJkbgv" resolve="n" />
                      </node>
                    </node>
                    <node concept="liA8E" id="70Wv0dJk23R" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="42eP3ws2W__" role="3cqZAp">
              <node concept="2OqwBi" id="42eP3ws2W_A" role="3clFbG">
                <node concept="37vLTw" id="42eP3ws2W_B" role="2Oq$k0">
                  <ref role="3cqZAo" node="42eP3ws2olF" resolve="principalAncestorsRefs" />
                </node>
                <node concept="X8dFx" id="42eP3ws2W_C" role="2OqNvi">
                  <node concept="2OqwBi" id="42eP3ws2W_D" role="25WWJ7">
                    <node concept="2OqwBi" id="42eP3ws2W_E" role="2Oq$k0">
                      <node concept="37vLTw" id="42eP3ws2XcN" role="2Oq$k0">
                        <ref role="3cqZAo" node="70Wv0dJkbgv" resolve="n" />
                      </node>
                      <node concept="z$bX8" id="42eP3ws2W_G" role="2OqNvi" />
                    </node>
                    <node concept="3$u5V9" id="42eP3ws2W_H" role="2OqNvi">
                      <node concept="1bVj0M" id="42eP3ws2W_I" role="23t8la">
                        <node concept="3clFbS" id="42eP3ws2W_J" role="1bW5cS">
                          <node concept="3clFbF" id="42eP3ws2W_K" role="3cqZAp">
                            <node concept="2OqwBi" id="42eP3ws2W_L" role="3clFbG">
                              <node concept="37vLTw" id="42eP3ws2W_M" role="2Oq$k0">
                                <ref role="3cqZAo" node="42eP3ws2W_O" resolve="it" />
                              </node>
                              <node concept="iZEcu" id="42eP3ws2W_N" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="42eP3ws2W_O" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="42eP3ws2W_P" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
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
    <node concept="2tJIrI" id="70Wv0dJjD99" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJjDa1" role="jymVt">
      <property role="TrG5h" value="addPrincipal" />
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
              <ref role="3cqZAo" node="70Wv0dJjR_A" resolve="principalRefs" />
            </node>
            <node concept="TSZUe" id="70Wv0dJkdpd" role="2OqNvi">
              <node concept="2OqwBi" id="70Wv0dJkdp9" role="25WWJ7">
                <node concept="2JrnkZ" id="70Wv0dJkdpa" role="2Oq$k0">
                  <node concept="37vLTw" id="70Wv0dJkdpb" role="2JrQYb">
                    <ref role="3cqZAo" node="70Wv0dJjDa_" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="70Wv0dJkdpc" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73aHuggbwye" role="3cqZAp">
          <node concept="2OqwBi" id="73aHuggbwyf" role="3clFbG">
            <node concept="37vLTw" id="73aHuggbwyg" role="2Oq$k0">
              <ref role="3cqZAo" node="42eP3ws2olF" resolve="principalAncestorsRefs" />
            </node>
            <node concept="3JPx81" id="73aHuggbwyh" role="2OqNvi">
              <node concept="2OqwBi" id="73aHuggbwyi" role="25WWJ7">
                <node concept="37vLTw" id="73aHuggbwSF" role="2Oq$k0">
                  <ref role="3cqZAo" node="70Wv0dJjDa_" resolve="node" />
                </node>
                <node concept="iZEcu" id="73aHuggbwyk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="70Wv0dJjMWX" role="jymVt" />
    <node concept="3clFb_" id="70Wv0dJjMVT" role="jymVt">
      <property role="TrG5h" value="addAllPrincipal" />
      <node concept="37vLTG" id="70Wv0dJjMVU" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="70Wv0dJjMY1" role="1tU5fm">
          <node concept="3Tqbb2" id="70Wv0dJjMY2" role="A3Ik2" />
        </node>
      </node>
      <node concept="3cqZAl" id="70Wv0dJjMVW" role="3clF45" />
      <node concept="3Tm1VV" id="70Wv0dJjMVX" role="1B3o_S" />
      <node concept="3clFbS" id="70Wv0dJjMVY" role="3clF47">
        <node concept="1DcWWT" id="70Wv0dJjOpF" role="3cqZAp">
          <node concept="3clFbS" id="70Wv0dJjOpI" role="2LFqv$">
            <node concept="3cpWs8" id="70Wv0dJjVpL" role="3cqZAp">
              <node concept="3cpWsn" id="70Wv0dJjVpM" role="3cpWs9">
                <property role="TrG5h" value="ref" />
                <node concept="3uibUv" id="70Wv0dJjVpF" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="70Wv0dJjVpN" role="33vP2m">
                  <node concept="2JrnkZ" id="70Wv0dJjVpO" role="2Oq$k0">
                    <node concept="37vLTw" id="70Wv0dJk0p4" role="2JrQYb">
                      <ref role="3cqZAo" node="70Wv0dJjOpJ" resolve="n" />
                    </node>
                  </node>
                  <node concept="liA8E" id="70Wv0dJjVpQ" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="70Wv0dJjVCn" role="3cqZAp">
              <node concept="2OqwBi" id="70Wv0dJjWfE" role="3clFbG">
                <node concept="37vLTw" id="70Wv0dJjVCl" role="2Oq$k0">
                  <ref role="3cqZAo" node="70Wv0dJjR_A" resolve="principalRefs" />
                </node>
                <node concept="TSZUe" id="70Wv0dJkfUm" role="2OqNvi">
                  <node concept="37vLTw" id="70Wv0dJkfUl" role="25WWJ7">
                    <ref role="3cqZAo" node="70Wv0dJjVpM" resolve="ref" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="73aHuggby40" role="3cqZAp">
              <node concept="2OqwBi" id="73aHuggby41" role="3clFbG">
                <node concept="37vLTw" id="73aHuggby42" role="2Oq$k0">
                  <ref role="3cqZAo" node="42eP3ws2olF" resolve="principalAncestorsRefs" />
                </node>
                <node concept="X8dFx" id="73aHuggby43" role="2OqNvi">
                  <node concept="2OqwBi" id="73aHuggby44" role="25WWJ7">
                    <node concept="2OqwBi" id="73aHuggby45" role="2Oq$k0">
                      <node concept="37vLTw" id="73aHuggby46" role="2Oq$k0">
                        <ref role="3cqZAo" node="70Wv0dJjOpJ" resolve="n" />
                      </node>
                      <node concept="z$bX8" id="73aHuggby47" role="2OqNvi" />
                    </node>
                    <node concept="3$u5V9" id="73aHuggby48" role="2OqNvi">
                      <node concept="1bVj0M" id="73aHuggby49" role="23t8la">
                        <node concept="3clFbS" id="73aHuggby4a" role="1bW5cS">
                          <node concept="3clFbF" id="73aHuggby4b" role="3cqZAp">
                            <node concept="2OqwBi" id="73aHuggby4c" role="3clFbG">
                              <node concept="37vLTw" id="73aHuggby4d" role="2Oq$k0">
                                <ref role="3cqZAo" node="73aHuggby4f" resolve="it" />
                              </node>
                              <node concept="iZEcu" id="73aHuggby4e" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="73aHuggby4f" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="73aHuggby4g" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="70Wv0dJjOpJ" role="1Duv9x">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="70Wv0dJjOpN" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="70Wv0dJjOpO" role="1DdaDG">
            <ref role="3cqZAo" node="70Wv0dJjMVU" resolve="nodes" />
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
    <node concept="312cEg" id="70Wv0dJjR_A" role="jymVt">
      <property role="TrG5h" value="principalRefs" />
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
    <node concept="312cEg" id="42eP3ws2olF" role="jymVt">
      <property role="TrG5h" value="principalAncestorsRefs" />
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
          <property role="1dT_AB" value="Enables to track principal nodes, that is the nodes in source model which were included in templates" />
        </node>
      </node>
      <node concept="TZ5HA" id="42eP3wrZwMd" role="TZ5H$">
        <node concept="1dT_AC" id="42eP3wrZwMe" role="1dT_Ay">
          <property role="1dT_AB" value="application process as origins or principals, as opposed to those that were merely required." />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4$YN6Quy64$" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5rhZO$TYZJM">
    <property role="TrG5h" value="ProgramBuilder" />
    <node concept="2tJIrI" id="5rhZO$TZ4oM" role="jymVt" />
    <node concept="3clFbW" id="5rhZO$TZ9Ji" role="jymVt">
      <node concept="3cqZAl" id="5rhZO$TZ9Jk" role="3clF45" />
      <node concept="3Tm1VV" id="5rhZO$TZ9Jl" role="1B3o_S" />
      <node concept="3clFbS" id="5rhZO$TZ9Jm" role="3clF47">
        <node concept="3clFbF" id="2pvEdqupY9F" role="3cqZAp">
          <node concept="37vLTI" id="2pvEdqupYhL" role="3clFbG">
            <node concept="2ShNRf" id="7ISVfSJNAZ" role="37vLTx">
              <node concept="HV5vD" id="7ISVfSK4LO" role="2ShVmc">
                <ref role="HV5vE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
              </node>
            </node>
            <node concept="2OqwBi" id="2pvEdqupYaI" role="37vLTJ">
              <node concept="Xjq3P" id="2pvEdqupY9D" role="2Oq$k0" />
              <node concept="2OwXpG" id="2pvEdqupYds" role="2OqNvi">
                <ref role="2Oxat5" node="7eGEHDldhr$" resolve="registry" />
              </node>
            </node>
          </node>
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
      <node concept="37vLTG" id="70Wv0dJiIGc" role="3clF46">
        <property role="TrG5h" value="originIndex" />
        <node concept="3uibUv" id="70Wv0dJiIGk" role="1tU5fm">
          <ref role="3uigEE" node="70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
        </node>
      </node>
      <node concept="3uibUv" id="5rhZO$U0jE9" role="3clF45">
        <ref role="3uigEE" to="av0y:~Program" resolve="Program" />
      </node>
      <node concept="3Tm1VV" id="5rhZO$TZiL7" role="1B3o_S" />
      <node concept="3clFbS" id="5rhZO$TZiL9" role="3clF47">
        <node concept="1gVbGN" id="4MqhgXURQew" role="3cqZAp">
          <node concept="pVQyQ" id="4MqhgXURRRp" role="1gVkn0">
            <node concept="3fqX7Q" id="4MqhgXURV8E" role="3uHU7w">
              <node concept="2OqwBi" id="4MqhgXURV8G" role="3fr31v">
                <node concept="37vLTw" id="4MqhgXURV8H" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXULVBA" resolve="handlers" />
                </node>
                <node concept="liA8E" id="4MqhgXURV8I" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4MqhgXURUx9" role="3uHU7B">
              <node concept="2OqwBi" id="4MqhgXURUxb" role="3fr31v">
                <node concept="37vLTw" id="4MqhgXURUxc" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rhZO$TZNO3" resolve="rules" />
                </node>
                <node concept="liA8E" id="4MqhgXURUxd" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4MqhgXURU2s" role="3cqZAp" />
        <node concept="3clFbF" id="5rhZO$TZjg5" role="3cqZAp">
          <node concept="2ShNRf" id="5rhZO$TZjg3" role="3clFbG">
            <node concept="1pGfFk" id="5rhZO$TZlOE" role="2ShVmc">
              <ref role="37wK5l" node="7eGEHDlcF69" resolve="CodeRulesProgram" />
              <node concept="37vLTw" id="5rhZO$TZlPA" role="37wK5m">
                <ref role="3cqZAo" node="5rhZO$TZiL2" resolve="name" />
              </node>
              <node concept="2YIFZM" id="5rhZO$TZR_0" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="5rhZO$TZRBt" role="37wK5m">
                  <ref role="3cqZAo" node="5rhZO$TZNO3" resolve="rules" />
                </node>
              </node>
              <node concept="2YIFZM" id="4MqhgXUS4Rt" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="4MqhgXUS57F" role="37wK5m">
                  <ref role="3cqZAo" node="4MqhgXULVBA" resolve="handlers" />
                </node>
              </node>
              <node concept="37vLTw" id="5rhZO$TZmsR" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDldhr$" resolve="registry" />
              </node>
              <node concept="37vLTw" id="70Wv0dJiJjz" role="37wK5m">
                <ref role="3cqZAo" node="70Wv0dJiIGc" resolve="originIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZio3" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUQoOL" role="jymVt">
      <property role="TrG5h" value="addHandler" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="4MqhgXUQrZn" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="4MqhgXUQsf0" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3cqZAl" id="4MqhgXUQoON" role="3clF45" />
      <node concept="3Tm1VV" id="4MqhgXUQoOO" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUQoOP" role="3clF47">
        <node concept="SfApY" id="4MqhgXUQtfM" role="3cqZAp">
          <node concept="3clFbS" id="4MqhgXUQtfO" role="SfCbr">
            <node concept="1DcWWT" id="4MqhgXUQtEm" role="3cqZAp">
              <node concept="3clFbS" id="4MqhgXUQtEp" role="2LFqv$">
                <node concept="3clFbF" id="4MqhgXUQtNT" role="3cqZAp">
                  <node concept="1rXfSq" id="4MqhgXUQtNU" role="3clFbG">
                    <ref role="37wK5l" node="7eGEHDldbFC" resolve="updateConstraintRegistry" />
                    <node concept="37vLTw" id="4MqhgXUQtNV" role="37wK5m">
                      <ref role="3cqZAo" node="4MqhgXUQtEq" resolve="rule" />
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
                  <ref role="37wK5l" to="av0y:~Handler.rules():java.lang.Iterable" resolve="rules" />
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
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
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
              <ref role="3cqZAo" node="4MqhgXULVBA" resolve="handlers" />
            </node>
            <node concept="liA8E" id="4MqhgXUQvxp" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4MqhgXUQvRp" role="37wK5m">
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
    <node concept="2tJIrI" id="4MqhgXUQozc" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlcF9o" role="jymVt">
      <property role="TrG5h" value="addRule" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7eGEHDlcFbs" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="7eGEHDlcFct" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7eGEHDlcF9q" role="3clF45" />
      <node concept="3Tm1VV" id="7eGEHDlcF9r" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlcF9s" role="3clF47">
        <node concept="SfApY" id="7Oc59RSI60w" role="3cqZAp">
          <node concept="3clFbS" id="7Oc59RSI60x" role="SfCbr">
            <node concept="3clFbF" id="7Oc59RSI5I7" role="3cqZAp">
              <node concept="1rXfSq" id="7Oc59RSI5I9" role="3clFbG">
                <ref role="37wK5l" node="7eGEHDldbFC" resolve="updateConstraintRegistry" />
                <node concept="37vLTw" id="7Oc59RSI5Ia" role="37wK5m">
                  <ref role="3cqZAo" node="7eGEHDlcFbs" resolve="rule" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4MqhgXUQova" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="7Oc59RSI60s" role="TEbGg">
            <node concept="3clFbS" id="7Oc59RSI60t" role="TDEfX">
              <node concept="YS8fn" id="7eGEHDlfYpR" role="3cqZAp">
                <node concept="2ShNRf" id="7eGEHDlfYqe" role="YScLw">
                  <node concept="1pGfFk" id="7eGEHDlfYFY" role="2ShVmc">
                    <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="InvalidRuleException" />
                    <node concept="3cpWs3" id="7eGEHDlg7tx" role="37wK5m">
                      <node concept="2OqwBi" id="7Oc59RSI7ly" role="3uHU7w">
                        <node concept="37vLTw" id="7Oc59RSI7hx" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Oc59RSI60u" resolve="e" />
                        </node>
                        <node concept="liA8E" id="7Oc59RSI7xh" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7eGEHDlfYIn" role="3uHU7B">
                        <property role="Xl_RC" value="Invalid rule/constraint: " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7Oc59RSI7PF" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RSI60u" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7Oc59RSI60u" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7Oc59RSI60v" role="1tU5fm">
                <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Oc59RSI5wg" role="3cqZAp" />
        <node concept="3clFbF" id="7eGEHDlcT0a" role="3cqZAp">
          <node concept="2OqwBi" id="7eGEHDlcT93" role="3clFbG">
            <node concept="37vLTw" id="7eGEHDlcT09" role="2Oq$k0">
              <ref role="3cqZAo" node="5rhZO$TZNO3" resolve="rules" />
            </node>
            <node concept="liA8E" id="7eGEHDlcTyK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="7eGEHDlcTIH" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlcFbs" resolve="rule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSHX2Z" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="429xoypV6tp" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDldbFC" role="jymVt">
      <property role="TrG5h" value="updateConstraintRegistry" />
      <node concept="37vLTG" id="7eGEHDldi8e" role="3clF46">
        <property role="TrG5h" value="rule" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7eGEHDldikz" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7Oc59RSHXMC" role="3clF45" />
      <node concept="3Tm6S6" id="7eGEHDlemfL" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDldbFG" role="3clF47">
        <node concept="3SKdUt" id="7Oc59RSI2zT" role="3cqZAp">
          <node concept="3SKdUq" id="7Oc59RSI2HK" role="3SKWNk">
            <property role="3SKdUp" value="catch invalid constraints early to avoid adding a broken rule" />
          </node>
        </node>
        <node concept="1DcWWT" id="7eGEHDldjbC" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDldjbD" role="2LFqv$">
            <node concept="3clFbF" id="7Oc59RSHYHZ" role="3cqZAp">
              <node concept="2OqwBi" id="7Oc59RSHYI1" role="3clFbG">
                <node concept="37vLTw" id="7Oc59RSHYI2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDldhr$" resolve="registry" />
                </node>
                <node concept="liA8E" id="7Oc59RSHYI3" role="2OqNvi">
                  <ref role="37wK5l" node="7eGEHDldpbj" resolve="checkValidConstraint" />
                  <node concept="37vLTw" id="7Oc59RSHYI4" role="37wK5m">
                    <ref role="3cqZAo" node="7eGEHDldjbG" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDldjbG" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <node concept="3uibUv" id="5uFPQ7BHdLO" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
            </node>
          </node>
          <node concept="2OqwBi" id="7eGEHDldjbL" role="1DdaDG">
            <node concept="37vLTw" id="7eGEHDldjbM" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDldi8e" resolve="rule" />
            </node>
            <node concept="liA8E" id="7eGEHDldjbN" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.all():java.lang.Iterable" resolve="all" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Oc59RSI3vp" role="3cqZAp" />
        <node concept="1DcWWT" id="7eGEHDlf0NZ" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlf0O0" role="2LFqv$">
            <node concept="3clFbF" id="7eGEHDlf0O4" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDlf0O5" role="3clFbG">
                <node concept="37vLTw" id="7eGEHDlf0O6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDldhr$" resolve="registry" />
                </node>
                <node concept="liA8E" id="7eGEHDlf0O7" role="2OqNvi">
                  <ref role="37wK5l" node="7eGEHDlefwa" resolve="introduceConstraint" />
                  <node concept="37vLTw" id="7eGEHDlf0O8" role="37wK5m">
                    <ref role="3cqZAo" node="7eGEHDlf0Og" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDlf0Og" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <node concept="3uibUv" id="5uFPQ7BHdOW" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
            </node>
          </node>
          <node concept="2OqwBi" id="7eGEHDlf0Oi" role="1DdaDG">
            <node concept="37vLTw" id="7eGEHDlf0Oj" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDldi8e" resolve="rule" />
            </node>
            <node concept="liA8E" id="7eGEHDlf0Ok" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Rule.all():java.lang.Iterable" resolve="all" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSI0zY" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidConstraintException" resolve="InvalidConstraintException" />
      </node>
    </node>
    <node concept="2tJIrI" id="5rhZO$TZNO2" role="jymVt" />
    <node concept="312cEg" id="5rhZO$TZNO3" role="jymVt">
      <property role="TrG5h" value="rules" />
      <node concept="3Tm6S6" id="5rhZO$TZNO4" role="1B3o_S" />
      <node concept="3uibUv" id="5rhZO$TZNO5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5rhZO$TZNO6" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="2ShNRf" id="5rhZO$TZNO7" role="33vP2m">
        <node concept="1pGfFk" id="5rhZO$TZNO8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5rhZO$TZNO9" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXULVBA" role="jymVt">
      <property role="TrG5h" value="handlers" />
      <node concept="3Tm6S6" id="4MqhgXULVBB" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXULVBC" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="4MqhgXULVY5" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="2ShNRf" id="4MqhgXULVBE" role="33vP2m">
        <node concept="1pGfFk" id="4MqhgXULVBF" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="4MqhgXULW7z" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7eGEHDldhr$" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="registry" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7eGEHDldh6O" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDldhly" role="1tU5fm">
        <ref role="3uigEE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
      </node>
      <node concept="2ShNRf" id="5rhZO$TZPDc" role="33vP2m">
        <node concept="HV5vD" id="5rhZO$TZPU6" role="2ShVmc">
          <ref role="HV5vE" node="7eGEHDldgwf" resolve="ConstraintRegistry" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4$YN6Quy2aJ" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="12yN8DyF_E1">
    <property role="TrG5h" value="ProgramFactory" />
    <node concept="2tJIrI" id="5ntLU8GlxKW" role="jymVt" />
    <node concept="3clFbW" id="7DvO2M9uuLO" role="jymVt">
      <node concept="3cqZAl" id="7DvO2M9uuLQ" role="3clF45" />
      <node concept="3Tm1VV" id="4$YN6QuzaKb" role="1B3o_S" />
      <node concept="3clFbS" id="7DvO2M9uuLS" role="3clF47">
        <node concept="3clFbF" id="7DvO2M9uJI0" role="3cqZAp">
          <node concept="37vLTI" id="7DvO2M9uJI1" role="3clFbG">
            <node concept="37vLTw" id="7DvO2M9uKg9" role="37vLTx">
              <ref role="3cqZAo" node="7DvO2M9uz54" resolve="mainConstraint" />
            </node>
            <node concept="2OqwBi" id="7DvO2M9uJI3" role="37vLTJ">
              <node concept="Xjq3P" id="7DvO2M9uJI4" role="2Oq$k0" />
              <node concept="2OwXpG" id="7DvO2M9uJI5" role="2OqNvi">
                <ref role="2Oxat5" node="6i42QSsj_y2" resolve="mainConstraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6OXbTDxv6BH" role="3cqZAp">
          <node concept="37vLTI" id="6OXbTDxv6BJ" role="3clFbG">
            <node concept="2OqwBi" id="6OXbTDxvc9O" role="37vLTJ">
              <node concept="Xjq3P" id="6OXbTDxvci3" role="2Oq$k0" />
              <node concept="2OwXpG" id="6OXbTDxvc9R" role="2OqNvi">
                <ref role="2Oxat5" node="6OXbTDxv6BA" resolve="programBuilder" />
              </node>
            </node>
            <node concept="37vLTw" id="6OXbTDxv6BN" role="37vLTx">
              <ref role="3cqZAo" node="6OXbTDxv1Kn" resolve="programBuilder" />
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
            <node concept="37vLTw" id="6OXbTDxQvEU" role="37vLTx">
              <ref role="3cqZAo" node="6OXbTDxQtT2" resolve="applicationSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="70Wv0dJiUYC" role="3cqZAp">
          <node concept="37vLTI" id="70Wv0dJiUYE" role="3clFbG">
            <node concept="2OqwBi" id="70Wv0dJiZ0$" role="37vLTJ">
              <node concept="Xjq3P" id="70Wv0dJiZ73" role="2Oq$k0" />
              <node concept="2OwXpG" id="70Wv0dJiZ0B" role="2OqNvi">
                <ref role="2Oxat5" node="70Wv0dJiUY$" resolve="originIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="70Wv0dJiUYI" role="37vLTx">
              <ref role="3cqZAo" node="70Wv0dJiUYa" resolve="originIndex" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4$YN6Qt$22_" role="3cqZAp">
          <node concept="37vLTI" id="4$YN6Qt$22B" role="3clFbG">
            <node concept="2OqwBi" id="4$YN6Qt$9ue" role="37vLTJ">
              <node concept="Xjq3P" id="4$YN6Qt$9$g" role="2Oq$k0" />
              <node concept="2OwXpG" id="4$YN6Qt$9uh" role="2OqNvi">
                <ref role="2Oxat5" node="4$YN6Qt$22x" resolve="ruleProcessingSession" />
              </node>
            </node>
            <node concept="37vLTw" id="4$YN6Qt$22F" role="37vLTx">
              <ref role="3cqZAo" node="4$YN6QtzVa5" resolve="processingSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4$YN6Qt$cgH" role="3cqZAp">
          <node concept="37vLTI" id="4$YN6Qt$cgJ" role="3clFbG">
            <node concept="2OqwBi" id="4$YN6Qt$kov" role="37vLTJ">
              <node concept="Xjq3P" id="4$YN6Qt$kux" role="2Oq$k0" />
              <node concept="2OwXpG" id="4$YN6Qt$koy" role="2OqNvi">
                <ref role="2Oxat5" node="4$YN6Qt$cgD" resolve="queryTemplate" />
              </node>
            </node>
            <node concept="37vLTw" id="4$YN6Qt$cgN" role="37vLTx">
              <ref role="3cqZAo" node="4$YN6QtzXS$" resolve="queryTemplate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4$YN6QtzVa5" role="3clF46">
        <property role="TrG5h" value="processingSession" />
        <node concept="3uibUv" id="4$YN6QtzXBx" role="1tU5fm">
          <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="4$YN6QtzXS$" role="3clF46">
        <property role="TrG5h" value="queryTemplate" />
        <node concept="3uibUv" id="4$YN6Qt$00w" role="1tU5fm">
          <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDxQtT2" role="3clF46">
        <property role="TrG5h" value="applicationSession" />
        <node concept="3uibUv" id="6OXbTDxQuow" role="1tU5fm">
          <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvO2M9uz54" role="3clF46">
        <property role="TrG5h" value="mainConstraint" />
        <node concept="3uibUv" id="7DvO2M9uz8W" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="6OXbTDxv1Kn" role="3clF46">
        <property role="TrG5h" value="programBuilder" />
        <node concept="3uibUv" id="6OXbTDxv2zJ" role="1tU5fm">
          <ref role="3uigEE" node="5rhZO$TYZJM" resolve="ProgramBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="70Wv0dJiUYa" role="3clF46">
        <property role="TrG5h" value="originIndex" />
        <node concept="3uibUv" id="70Wv0dJiUYw" role="1tU5fm">
          <ref role="3uigEE" node="70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6i42QSspmaL" role="jymVt" />
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
        <node concept="3clFbH" id="4QPCta1bMCf" role="3cqZAp" />
        <node concept="3SKdUt" id="6OXbTDxA$Dn" role="3cqZAp">
          <node concept="3SKdUq" id="6OXbTDxA$Dp" role="3SKWNk">
            <property role="3SKdUp" value="first apply templates with no input" />
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
                <node concept="1rXfSq" id="7WKNeR9dXvY" role="2Oq$k0">
                  <ref role="37wK5l" node="7WKNeR9c0Kn" resolve="ruleTemplates" />
                </node>
                <node concept="liA8E" id="2Qe6u2cltUA" role="2OqNvi">
                  <ref role="37wK5l" to="hano:5NuEpF1qn9x" resolve="allRuleTemplatesWithNoInput" />
                </node>
              </node>
              <node concept="10Nm6u" id="2Qe6u2cltUB" role="37wK5m" />
              <node concept="3clFbT" id="xaaVXviDd8" role="37wK5m">
                <property role="3clFbU" value="false" />
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
        <node concept="3SKdUt" id="6OXbTDxAA$7" role="3cqZAp">
          <node concept="3SKdUq" id="6OXbTDxAA$9" role="3SKWNk">
            <property role="3SKdUp" value="then process all required as new input" />
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
        <node concept="3clFbJ" id="6OXbTDxYdTp" role="3cqZAp">
          <node concept="3clFbS" id="6OXbTDxYdTr" role="3clFbx">
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
                      <node concept="37vLTw" id="6tPOoeT4ylm" role="37wK5m">
                        <ref role="3cqZAo" node="4$YN6Qt$cgD" resolve="queryTemplate" />
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
          <node concept="3y3z36" id="6OXbTDxYeKq" role="3clFbw">
            <node concept="10Nm6u" id="6OXbTDxYf5o" role="3uHU7w" />
            <node concept="37vLTw" id="6OXbTDxYekV" role="3uHU7B">
              <ref role="3cqZAo" node="4$YN6Qt$cgD" resolve="queryTemplate" />
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
    <node concept="3clFb_" id="6OXbTDzR_RU" role="jymVt">
      <property role="TrG5h" value="buildProgram" />
      <node concept="3uibUv" id="6OXbTDzSiaf" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="4$YN6QuyQ7C" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTDzR_RY" role="3clF47">
        <node concept="3cpWs8" id="6OXbTDzSgzt" role="3cqZAp">
          <node concept="3cpWsn" id="6OXbTDzSgzu" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6OXbTDzSgzv" role="1tU5fm">
              <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="6OXbTDzSgzw" role="33vP2m">
              <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTDzSnKQ" role="3cqZAp" />
        <node concept="3clFbF" id="6OXbTDzSgFN" role="3cqZAp">
          <node concept="37vLTI" id="6OXbTDzSgFO" role="3clFbG">
            <node concept="2OqwBi" id="6OXbTDzSgFP" role="37vLTx">
              <node concept="37vLTw" id="6OXbTDzSgFQ" role="2Oq$k0">
                <ref role="3cqZAo" node="6OXbTDzSgzu" resolve="result" />
              </node>
              <node concept="liA8E" id="6OXbTDzSgFR" role="2OqNvi">
                <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                <node concept="2OqwBi" id="6OXbTDzSgFS" role="37wK5m">
                  <node concept="Xjq3P" id="6OXbTDzSgFT" role="2Oq$k0" />
                  <node concept="liA8E" id="6OXbTDzSgFU" role="2OqNvi">
                    <ref role="37wK5l" node="7nkyKX7ncaN" resolve="buildProgramStage" />
                    <node concept="37vLTw" id="6tPOoeTbwGr" role="37wK5m">
                      <ref role="3cqZAo" node="6OXbTDxv6BA" resolve="programBuilder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6OXbTDzSgG1" role="37vLTJ">
              <ref role="3cqZAo" node="6OXbTDzSgzu" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6OXbTDzSoqA" role="3cqZAp" />
        <node concept="3clFbF" id="6OXbTDzSgG8" role="3cqZAp">
          <node concept="37vLTw" id="6OXbTDzSgG9" role="3clFbG">
            <ref role="3cqZAo" node="6OXbTDzSgzu" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDzRXc5" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7ncaN" role="jymVt">
      <property role="TrG5h" value="buildProgramStage" />
      <node concept="37vLTG" id="1CcQBrPh8x2" role="3clF46">
        <property role="TrG5h" value="programBuilder" />
        <node concept="3uibUv" id="1CcQBrPhbzq" role="1tU5fm">
          <ref role="3uigEE" node="5rhZO$TYZJM" resolve="ProgramBuilder" />
        </node>
      </node>
      <node concept="3uibUv" id="7nkyKX7nfei" role="3clF45">
        <ref role="3uigEE" to="hano:7Oc59RSEjdb" resolve="Result" />
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
                      <ref role="37wK5l" node="4MqhgXUQoOL" resolve="addHandler" />
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
                  <ref role="3uigEE" to="av0y:~Handler" resolve="Handler" />
                </node>
              </node>
              <node concept="2OqwBi" id="6tPOoeTbtQC" role="1DdaDG">
                <node concept="37vLTw" id="6tPOoeTbtQD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tPOoeT4XhE" resolve="handlerTable" />
                </node>
                <node concept="liA8E" id="6tPOoeTbtQE" role="2OqNvi">
                  <ref role="37wK5l" node="7DvO2M9UagU" resolve="allHandlers" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="23c4kVtlK7K" role="3cqZAp" />
            <node concept="3cpWs8" id="6i42QSskaRB" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSskaRC" role="3cpWs9">
                <property role="TrG5h" value="mainBuilder" />
                <node concept="3uibUv" id="6i42QSskaR_" role="1tU5fm">
                  <ref role="3uigEE" to="i348:7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
                <node concept="2ShNRf" id="6i42QSskaRD" role="33vP2m">
                  <node concept="1pGfFk" id="6i42QSskaRE" role="2ShVmc">
                    <ref role="37wK5l" to="i348:6lpwCiZjdph" resolve="RuleBuilder" />
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
                <property role="TrG5h" value="mainHandlerBuilder" />
                <node concept="3uibUv" id="4MqhgXUQinf" role="1tU5fm">
                  <ref role="3uigEE" node="4MqhgXUMauK" resolve="HandlerBuilder" />
                </node>
                <node concept="2ShNRf" id="4MqhgXUQinw" role="33vP2m">
                  <node concept="1pGfFk" id="4MqhgXUQinx" role="2ShVmc">
                    <ref role="37wK5l" node="4MqhgXUMb4h" resolve="HandlerBuilder" />
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
            </node>
            <node concept="3clFbF" id="4MqhgXUQeMk" role="3cqZAp">
              <node concept="2OqwBi" id="4MqhgXUQjy0" role="3clFbG">
                <node concept="37vLTw" id="4MqhgXUQinE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4MqhgXUQinv" resolve="mainHandlerBuilder" />
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
                  <ref role="37wK5l" node="4MqhgXUQoOL" resolve="addHandler" />
                  <node concept="2OqwBi" id="4MqhgXUSPwA" role="37wK5m">
                    <node concept="37vLTw" id="4MqhgXUSPaX" role="2Oq$k0">
                      <ref role="3cqZAo" node="4MqhgXUQinv" resolve="mainHandlerBuilder" />
                    </node>
                    <node concept="liA8E" id="4MqhgXUSPSg" role="2OqNvi">
                      <ref role="37wK5l" node="4MqhgXUNDLG" resolve="toHandler" />
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
                  <ref role="37wK5l" to="hano:7Oc59RSH6VB" resolve="FAIL" />
                  <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
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
            <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
            <ref role="37wK5l" to="hano:7Oc59RSEjeq" resolve="OK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSy_Bt" role="jymVt" />
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
        <node concept="3clFbH" id="70Wv0dJj0jN" role="3cqZAp" />
        <node concept="3clFbF" id="70Wv0dJiZP4" role="3cqZAp">
          <node concept="2OqwBi" id="70Wv0dJj0hQ" role="3clFbG">
            <node concept="37vLTw" id="70Wv0dJiZP3" role="2Oq$k0">
              <ref role="3cqZAo" node="70Wv0dJiUY$" resolve="originIndex" />
            </node>
            <node concept="liA8E" id="70Wv0dJj0Ot" role="2OqNvi">
              <ref role="37wK5l" node="70Wv0dJj0l_" resolve="addOrigin" />
              <node concept="37vLTw" id="70Wv0dJj12a" role="37wK5m">
                <ref role="3cqZAo" node="4QPCta1aZLt" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="70Wv0dJj131" role="3cqZAp" />
        <node concept="3SKdUt" id="4QPCta1aZLy" role="3cqZAp">
          <node concept="3SKdUq" id="4QPCta1aZLz" role="3SKWNk">
            <property role="3SKdUp" value="walk the AST and apply templates" />
          </node>
        </node>
        <node concept="3cpWs8" id="4QPCta1aZL$" role="3cqZAp">
          <node concept="3cpWsn" id="4QPCta1aZL_" role="3cpWs9">
            <property role="TrG5h" value="applyingResult" />
            <node concept="1rXfSq" id="4QPCta1aZLA" role="33vP2m">
              <ref role="37wK5l" node="3IIf9O_gMkQ" resolve="applyEachRecursively" />
              <node concept="37vLTw" id="4QPCta1aZLB" role="37wK5m">
                <ref role="3cqZAo" node="4QPCta1aZLt" resolve="input" />
              </node>
              <node concept="3clFbT" id="3IIf9O_govW" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
            <node concept="3uibUv" id="4QPCta1aZLD" role="1tU5fm">
              <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
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
          <node concept="3SKdUq" id="4QPCta1aZLM" role="3SKWNk">
            <property role="3SKdUp" value="process the required nodes" />
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
        <node concept="3clFbF" id="4QPCta1aZLN" role="3cqZAp">
          <node concept="2OqwBi" id="4QPCta1aZLO" role="3clFbG">
            <node concept="37vLTw" id="4QPCta1aZLP" role="2Oq$k0">
              <ref role="3cqZAo" node="4QPCta1aZLF" resolve="result" />
            </node>
            <node concept="liA8E" id="4QPCta1aZLQ" role="2OqNvi">
              <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
              <node concept="1rXfSq" id="4QPCta1aZLR" role="37wK5m">
                <ref role="37wK5l" node="tIwzd1MM22" resolve="processRequired" />
                <node concept="1Ls8ON" id="4QPCta1aZLS" role="37wK5m">
                  <node concept="37vLTw" id="3rCAg5k6tZ3" role="1Lso8e">
                    <ref role="3cqZAo" node="3rCAg5k6tYU" resolve="reqd" />
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
            <node concept="3cpWs8" id="6i42QSsvfVc" role="3cqZAp">
              <node concept="3cpWsn" id="6i42QSsvfVd" role="3cpWs9">
                <property role="TrG5h" value="applyingResult" />
                <node concept="1rXfSq" id="6i42QSsvfVe" role="33vP2m">
                  <ref role="37wK5l" node="tIwzd1LKZY" resolve="applyEachRequired" />
                  <node concept="37vLTw" id="6i42QSsvfVg" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1MM10" resolve="allRequired" />
                  </node>
                </node>
                <node concept="3uibUv" id="4MqhgXU_RVs" role="1tU5fm">
                  <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
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
    <node concept="2tJIrI" id="7Oc59RS_GdO" role="jymVt" />
    <node concept="3clFb_" id="3IIf9O_gMkQ" role="jymVt">
      <property role="TrG5h" value="applyEachRecursively" />
      <node concept="3Tm6S6" id="3IIf9O_gMkR" role="1B3o_S" />
      <node concept="3uibUv" id="3IIf9O_gMkS" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
      </node>
      <node concept="37vLTG" id="3IIf9O_gMkT" role="3clF46">
        <property role="TrG5h" value="startFrom" />
        <node concept="A3Dl8" id="3IIf9O_gW9A" role="1tU5fm">
          <node concept="3Tqbb2" id="3IIf9O_gW9B" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="3IIf9O_gMkV" role="3clF46">
        <property role="TrG5h" value="interfacePartOnly" />
        <node concept="10P_77" id="3IIf9O_gMkW" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3IIf9O_gMkX" role="3clF47">
        <node concept="3clFbJ" id="3IIf9O_gMkY" role="3cqZAp">
          <node concept="3clFbS" id="3IIf9O_gMkZ" role="3clFbx">
            <node concept="3cpWs6" id="3IIf9O_gMl0" role="3cqZAp">
              <node concept="2OqwBi" id="3IIf9O_gMl1" role="3cqZAk">
                <node concept="2ShNRf" id="3IIf9O_gMl2" role="2Oq$k0">
                  <node concept="1pGfFk" id="3IIf9O_gMl3" role="2ShVmc">
                    <ref role="37wK5l" node="3IIf9O_hpaa" resolve="NodeWalker.INTERFACE_PART_DEEP" />
                    <node concept="37vLTw" id="3IIf9O_gMl4" role="37wK5m">
                      <ref role="3cqZAo" node="3IIf9O_gMkT" resolve="startFrom" />
                    </node>
                    <node concept="2ShNRf" id="3IIf9O_gMl5" role="37wK5m">
                      <node concept="1pGfFk" id="xaaVXviCec" role="2ShVmc">
                        <ref role="37wK5l" node="xaaVXvi$I3" resolve="ProgramFactory.TemplateApplicator" />
                        <node concept="3clFbT" id="xaaVXviCkr" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="3IIf9O_gMl7" role="1pMfVU">
                      <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3IIf9O_gMl8" role="2OqNvi">
                  <ref role="37wK5l" node="4UTrqZZNWym" resolve="doWalk" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3IIf9O_gMl9" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="3IIf9O_gMla" role="3clFbw">
            <ref role="3cqZAo" node="3IIf9O_gMkV" resolve="interfacePartOnly" />
          </node>
          <node concept="9aQIb" id="3IIf9O_gMlb" role="9aQIa">
            <node concept="3clFbS" id="3IIf9O_gMlc" role="9aQI4">
              <node concept="3cpWs6" id="3IIf9O_gMld" role="3cqZAp">
                <node concept="2OqwBi" id="3IIf9O_gMle" role="3cqZAk">
                  <node concept="2ShNRf" id="3IIf9O_gMlf" role="2Oq$k0">
                    <node concept="1pGfFk" id="3IIf9O_gMlg" role="2ShVmc">
                      <ref role="37wK5l" node="3IIf9O_hbbq" resolve="NodeWalker.ALL_DEEP" />
                      <node concept="37vLTw" id="3IIf9O_gMlh" role="37wK5m">
                        <ref role="3cqZAo" node="3IIf9O_gMkT" resolve="startFrom" />
                      </node>
                      <node concept="2ShNRf" id="3IIf9O_gMli" role="37wK5m">
                        <node concept="1pGfFk" id="xaaVXviCy0" role="2ShVmc">
                          <ref role="37wK5l" node="xaaVXvi$I3" resolve="ProgramFactory.TemplateApplicator" />
                          <node concept="3clFbT" id="xaaVXviCCf" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="3IIf9O_gMlk" role="1pMfVU">
                        <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3IIf9O_gMll" role="2OqNvi">
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
      <property role="TrG5h" value="applyEachRequired" />
      <node concept="3Tm6S6" id="tIwzd1LKZZ" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXU_Ik5" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
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
                <ref role="37wK5l" node="4UTrqZZOjgP" resolve="NodeWalker.SINGLE" />
                <node concept="37vLTw" id="4UTrqZZPKD$" role="37wK5m">
                  <ref role="3cqZAo" node="tIwzd1LL0a" resolve="nodes" />
                </node>
                <node concept="2ShNRf" id="4UTrqZZPyYW" role="37wK5m">
                  <node concept="1pGfFk" id="xaaVXviCPO" role="2ShVmc">
                    <ref role="37wK5l" node="xaaVXvi$I3" resolve="ProgramFactory.TemplateApplicator" />
                    <node concept="3clFbT" id="xaaVXviCW3" role="37wK5m" />
                  </node>
                </node>
                <node concept="3uibUv" id="4UTrqZZPyYY" role="1pMfVU">
                  <ref role="3uigEE" node="4MqhgXU$YdP" resolve="ProgramFactory.ResultTriple" />
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
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
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
              <ref role="3uigEE" to="i348:4vBwiiV6130" resolve="TemplateApplicationSession.TemplateApplicationListener" />
            </node>
            <node concept="2ShNRf" id="4vBwiiV7yNW" role="33vP2m">
              <node concept="YeOm9" id="4vBwiiV7yNX" role="2ShVmc">
                <node concept="1Y3b0j" id="4vBwiiV7yNY" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="i348:4vBwiiV6130" resolve="TemplateApplicationSession.TemplateApplicationListener" />
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
              <node concept="3SKdUq" id="42eP3ws0HmP" role="3SKWNk">
                <property role="3SKdUp" value="FIXME drop this feature" />
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
                  <ref role="37wK5l" to="i348:7DvO2M9IiN4" resolve="addListener" />
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
                        <node concept="3cpWs8" id="1N8$BG_3tdN" role="3cqZAp">
                          <node concept="3cpWsn" id="1N8$BG_3tdO" role="3cpWs9">
                            <property role="TrG5h" value="tags" />
                            <node concept="2hMVRd" id="1N8$BG_3tdF" role="1tU5fm">
                              <node concept="17QB3L" id="1N8$BG_3tdI" role="2hN53Y" />
                            </node>
                            <node concept="2ShNRf" id="1N8$BG_3tdP" role="33vP2m">
                              <node concept="2i4dXS" id="1N8$BG_3tdQ" role="2ShVmc">
                                <node concept="17QB3L" id="1N8$BG_3tdR" role="HW$YZ" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1N8$BG_3t$s" role="3cqZAp">
                          <node concept="3cpWsn" id="1N8$BG_3t$v" role="3cpWs9">
                            <property role="TrG5h" value="nextSuffix" />
                            <node concept="10Oyi0" id="1N8$BG_3t$q" role="1tU5fm" />
                            <node concept="3cmrfG" id="1N8$BG_3tFH" role="33vP2m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
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
                                    <property role="3SKdUp" value="FIXME: support rules that only add required roots instead of this hacks!" />
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
                            <node concept="3clFbJ" id="1N8$BG_3tmp" role="3cqZAp">
                              <node concept="3clFbS" id="1N8$BG_3tmr" role="3clFbx">
                                <node concept="3clFbF" id="1N8$BG_3FkB" role="3cqZAp">
                                  <node concept="2OqwBi" id="1N8$BG_3GLd" role="3clFbG">
                                    <node concept="2GrUjf" id="1N8$BG_3Fk_" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="1N8$BG_3MW2" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:1N8$BG_3HFe" resolve="setTagSuffix" />
                                      <node concept="3cpWs3" id="1N8$BG_3N_k" role="37wK5m">
                                        <node concept="1eOMI4" id="1N8$BG_3OIU" role="3uHU7w">
                                          <node concept="3uNrnE" id="1N8$BG_3QfT" role="1eOMHV">
                                            <node concept="37vLTw" id="1N8$BG_3QfV" role="2$L3a6">
                                              <ref role="3cqZAo" node="1N8$BG_3t$v" resolve="nextSuffix" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="1N8$BG_3N2h" role="3uHU7B">
                                          <property role="Xl_RC" value="_" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1N8$BG_3uEV" role="3clFbw">
                                <node concept="37vLTw" id="1N8$BG_3tFJ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1N8$BG_3tdO" resolve="tags" />
                                </node>
                                <node concept="3JPx81" id="1N8$BG_3vA2" role="2OqNvi">
                                  <node concept="2OqwBi" id="1N8$BG_3vOI" role="25WWJ7">
                                    <node concept="2GrUjf" id="1N8$BG_3vGk" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="1N8$BG_3yOG" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:1N8$BG_3xre" resolve="uniqueTag" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1N8$BG_gPsg" role="3cqZAp">
                              <node concept="2OqwBi" id="1N8$BG_gQsy" role="3clFbG">
                                <node concept="37vLTw" id="1N8$BG_gPse" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1N8$BG_3tdO" resolve="tags" />
                                </node>
                                <node concept="TSZUe" id="1GKPrS22Ki8" role="2OqNvi">
                                  <node concept="2OqwBi" id="1GKPrS22Ki5" role="25WWJ7">
                                    <node concept="2GrUjf" id="1GKPrS22Ki6" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="1GKPrS22Ki7" role="2OqNvi">
                                      <ref role="37wK5l" to="i348:1N8$BG_3xre" resolve="uniqueTag" />
                                    </node>
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
                        <node concept="3clFbF" id="6tPOoeT5wvK" role="3cqZAp">
                          <node concept="2OqwBi" id="6tPOoeT5xBh" role="3clFbG">
                            <node concept="2OqwBi" id="6tPOoeT5wQk" role="2Oq$k0">
                              <node concept="Xjq3P" id="6tPOoeT5wvI" role="2Oq$k0" />
                              <node concept="2OwXpG" id="6tPOoeT5xh1" role="2OqNvi">
                                <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="handlerTable" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6tPOoeT5xYf" role="2OqNvi">
                              <ref role="37wK5l" node="7DvO2M9Uagq" resolve="update" />
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
                                  <ref role="37wK5l" to="hano:7nkyKX7v7xb" resolve="and" />
                                  <node concept="2YIFZM" id="6i42QSss4Co" role="37wK5m">
                                    <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
                                    <ref role="37wK5l" to="hano:7Oc59RSH6VB" resolve="FAIL" />
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
                                              <ref role="37wK5l" to="i348:1ffsG7bUgP4" resolve="toString" />
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
                      <ref role="37wK5l" to="i348:7DvO2M9IiNh" resolve="removeListener" />
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
                              <node concept="3SKdUq" id="6OXbTDzFl4t" role="3SKWNk">
                                <property role="3SKdUp" value="goals get triggered by the &quot;main&quot; constraint" />
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
                              <node concept="3SKdUq" id="6OXbTDzFl4E" role="3SKWNk">
                                <property role="3SKdUp" value="facts have &quot;assert(true)&quot; in the body" />
                              </node>
                            </node>
                            <node concept="3SKdUt" id="6OXbTDzFl4F" role="3cqZAp">
                              <node concept="3SKdUq" id="6OXbTDzFl4G" role="3SKWNk">
                                <property role="3SKdUp" value="TODO: support facts" />
                              </node>
                            </node>
                            <node concept="3SKdUt" id="6OXbTDzFl4H" role="3cqZAp">
                              <node concept="3SKdUq" id="6OXbTDzFl4I" role="3SKWNk">
                                <property role="3SKdUp" value="FIXME: support rules that only add required roots instead of this hack!s" />
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
                    <node concept="3clFbJ" id="6tPOoeT54Pn" role="3cqZAp">
                      <node concept="3clFbS" id="6tPOoeT54Pp" role="3clFbx">
                        <node concept="3clFbH" id="6tPOoeT54Po" role="3cqZAp" />
                      </node>
                      <node concept="3clFbC" id="6tPOoeT55Q3" role="3clFbw">
                        <node concept="10Nm6u" id="6tPOoeT55Wy" role="3uHU7w" />
                        <node concept="37vLTw" id="6tPOoeT55_U" role="3uHU7B">
                          <ref role="3cqZAo" node="6tPOoeT4XhE" resolve="handlerTable" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6tPOoeT524D" role="3cqZAp">
                      <node concept="2OqwBi" id="6tPOoeT53LW" role="3clFbG">
                        <node concept="2OqwBi" id="6tPOoeT52Fu" role="2Oq$k0">
                          <node concept="Xjq3P" id="6tPOoeT524B" role="2Oq$k0" />
                          <node concept="2OwXpG" id="6tPOoeT538g" role="2OqNvi">
                            <ref role="2Oxat5" node="6tPOoeT4XhE" resolve="handlerTable" />
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
                            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
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
                                <ref role="37wK5l" to="hano:7Oc59RSH6VB" resolve="FAIL" />
                                <ref role="1Pybhc" to="hano:7Oc59RSEjdb" resolve="Result" />
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
                                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="6OXbTDydY2_" role="3uHU7w">
                                          <property role="Xl_RC" value="(" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="6OXbTDydY2A" role="3uHU7w">
                                        <node concept="liA8E" id="6OXbTDydY2C" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
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
    <node concept="3clFb_" id="7WKNeR9c0Kn" role="jymVt">
      <property role="TrG5h" value="ruleTemplates" />
      <node concept="3uibUv" id="7WKNeR9cd5o" role="3clF45">
        <ref role="3uigEE" to="hano:6fdr4UgftiG" resolve="RuleTemplateIndex" />
      </node>
      <node concept="3Tm6S6" id="7WKNeR9c7gI" role="1B3o_S" />
      <node concept="3clFbS" id="7WKNeR9c0Kr" role="3clF47">
        <node concept="3clFbJ" id="7WKNeR9ctuv" role="3cqZAp">
          <node concept="3y3z36" id="7WKNeR9ctCP" role="3clFbw">
            <node concept="10Nm6u" id="7WKNeR9ctEU" role="3uHU7w" />
            <node concept="37vLTw" id="4$YN6Qt_8mS" role="3uHU7B">
              <ref role="3cqZAo" node="4$YN6Qt$cgD" resolve="queryTemplate" />
            </node>
          </node>
          <node concept="3clFbS" id="7WKNeR9ctux" role="3clFbx">
            <node concept="3cpWs6" id="7WKNeR9cKJK" role="3cqZAp">
              <node concept="2OqwBi" id="7WKNeR9cKJL" role="3cqZAk">
                <node concept="2OqwBi" id="7WKNeR9cKJM" role="2Oq$k0">
                  <node concept="37vLTw" id="4$YN6Qt_8wM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4$YN6Qt$22x" resolve="ruleProcessingSession" />
                  </node>
                  <node concept="liA8E" id="7WKNeR9cKJO" role="2OqNvi">
                    <ref role="37wK5l" to="hano:7WKNeR9alW4" resolve="queryTemplates" />
                  </node>
                </node>
                <node concept="liA8E" id="7WKNeR9cKJP" role="2OqNvi">
                  <ref role="37wK5l" to="hano:7WKNeR98sU4" resolve="ruleTemplates" />
                  <node concept="37vLTw" id="4$YN6Qt_f6O" role="37wK5m">
                    <ref role="3cqZAo" node="4$YN6Qt$cgD" resolve="queryTemplate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7WKNeR9cW1A" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="7WKNeR9d1qz" role="9aQIa">
            <node concept="3clFbS" id="7WKNeR9d1q$" role="9aQI4">
              <node concept="3cpWs6" id="7WKNeR9d7U5" role="3cqZAp">
                <node concept="2OqwBi" id="7WKNeR9diJ6" role="3cqZAk">
                  <node concept="37vLTw" id="4$YN6Qt_m0T" role="2Oq$k0">
                    <ref role="3cqZAo" node="4$YN6Qt$22x" resolve="ruleProcessingSession" />
                  </node>
                  <node concept="liA8E" id="7WKNeR9d$jv" role="2OqNvi">
                    <ref role="37wK5l" to="hano:20Ay2VeR9qk" resolve="ruleTemplates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTDy1jF3" role="jymVt" />
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
        <node concept="3Tm1VV" id="5ntLU8GlzgJ" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlzgL" role="3clF47">
          <node concept="3clFbJ" id="6EY0p2wqrQp" role="3cqZAp">
            <node concept="3clFbS" id="6EY0p2wqrQr" role="3clFbx">
              <node concept="3clFbF" id="6EY0p2wqsbo" role="3cqZAp">
                <node concept="2OqwBi" id="6EY0p2wqsuQ" role="3clFbG">
                  <node concept="37vLTw" id="6EY0p2wqsbm" role="2Oq$k0">
                    <ref role="3cqZAo" node="70Wv0dJiUY$" resolve="originIndex" />
                  </node>
                  <node concept="liA8E" id="6EY0p2wqsGP" role="2OqNvi">
                    <ref role="37wK5l" node="70Wv0dJjDa1" resolve="addPrincipal" />
                    <node concept="37vLTw" id="6EY0p2wqsQK" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="42eP3ws3Uq_" role="3clFbw">
              <node concept="2OqwBi" id="42eP3ws3Vd2" role="3uHU7w">
                <node concept="37vLTw" id="42eP3ws3UXo" role="2Oq$k0">
                  <ref role="3cqZAo" node="70Wv0dJiUY$" resolve="originIndex" />
                </node>
                <node concept="liA8E" id="42eP3ws3Y4O" role="2OqNvi">
                  <ref role="37wK5l" node="42eP3ws38rS" resolve="isPrincipalAncestor" />
                  <node concept="37vLTw" id="42eP3ws3ZmG" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="42eP3ws1rLb" role="3uHU7B">
                <ref role="3cqZAo" node="42eP3wrZOvp" resolve="recursive" />
              </node>
            </node>
          </node>
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
                <node concept="1rXfSq" id="7WKNeR9dXOK" role="2Oq$k0">
                  <ref role="37wK5l" node="7WKNeR9c0Kn" resolve="ruleTemplates" />
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
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4MqhgXU_3BT" role="3cqZAp" />
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
      </node>
      <node concept="2tJIrI" id="1CcQBrPgAwx" role="jymVt" />
      <node concept="312cEg" id="42eP3wrZOvp" role="jymVt">
        <property role="TrG5h" value="recursive" />
        <node concept="3Tm6S6" id="42eP3wrZOvq" role="1B3o_S" />
        <node concept="10P_77" id="42eP3wrZUxy" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GlzbG" role="jymVt" />
    <node concept="312cEu" id="4MqhgXU$YdP" role="jymVt">
      <property role="2bfB8j" value="true" />
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
    <node concept="2tJIrI" id="7kTeLbPhr4f" role="jymVt" />
    <node concept="312cEg" id="7DvO2Mah9z5" role="jymVt">
      <property role="TrG5h" value="applicationSession" />
      <node concept="3Tm6S6" id="7DvO2Mah9z3" role="1B3o_S" />
      <node concept="3uibUv" id="6OXbTDxQvHL" role="1tU5fm">
        <ref role="3uigEE" to="i348:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
      </node>
    </node>
    <node concept="312cEg" id="6i42QSsj_y2" role="jymVt">
      <property role="TrG5h" value="mainConstraint" />
      <node concept="3Tm6S6" id="6i42QSsj_y3" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSsjBno" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
    </node>
    <node concept="312cEg" id="6tPOoeT4XhE" role="jymVt">
      <property role="TrG5h" value="handlerTable" />
      <node concept="3Tm6S6" id="6tPOoeT4XhF" role="1B3o_S" />
      <node concept="3uibUv" id="6tPOoeT51Qn" role="1tU5fm">
        <ref role="3uigEE" node="7DvO2M9Uago" resolve="HandlerTable" />
      </node>
      <node concept="2ShNRf" id="6tPOoeT5rTq" role="33vP2m">
        <node concept="HV5vD" id="6tPOoeT5tv5" role="2ShVmc">
          <ref role="HV5vE" node="7DvO2M9Uago" resolve="HandlerTable" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6OXbTDxv6BA" role="jymVt">
      <property role="TrG5h" value="programBuilder" />
      <node concept="3Tm6S6" id="6OXbTDxv6BB" role="1B3o_S" />
      <node concept="3uibUv" id="6tPOoeTaVdp" role="1tU5fm">
        <ref role="3uigEE" node="5rhZO$TYZJM" resolve="ProgramBuilder" />
      </node>
    </node>
    <node concept="312cEg" id="70Wv0dJiUY$" role="jymVt">
      <property role="TrG5h" value="originIndex" />
      <node concept="3Tm6S6" id="70Wv0dJiUY_" role="1B3o_S" />
      <node concept="3uibUv" id="70Wv0dJiUYB" role="1tU5fm">
        <ref role="3uigEE" node="70Wv0dJhQb2" resolve="PrincipalOriginIndex" />
      </node>
    </node>
    <node concept="312cEg" id="4$YN6Qt$22x" role="jymVt">
      <property role="TrG5h" value="ruleProcessingSession" />
      <node concept="3Tm6S6" id="4$YN6Qt$22y" role="1B3o_S" />
      <node concept="3uibUv" id="4$YN6Qt$22$" role="1tU5fm">
        <ref role="3uigEE" to="hano:CGeqIk8WWU" resolve="RuleProcessingSession" />
      </node>
    </node>
    <node concept="312cEg" id="4$YN6Qt$cgD" role="jymVt">
      <property role="TrG5h" value="queryTemplate" />
      <node concept="3Tm6S6" id="4$YN6Qt$cgE" role="1B3o_S" />
      <node concept="3uibUv" id="4$YN6Qt$cgG" role="1tU5fm">
        <ref role="3uigEE" to="i348:6OXbTD$iNPP" resolve="QueryTemplate" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4$YN6QudkOJ" role="1B3o_S" />
  </node>
</model>

