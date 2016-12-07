<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="4" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="3o3z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:com.google.common.collect(MPS.Core/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="7n8k" ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.builtin.program)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.type)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="fqlx" ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.typesystem2.aspect)" />
    <import index="zx3l" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.core(jetbrains.mps.logic.reactor/)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="1564179198502666296" name="jetbrains.mps.logic.structure.LogicalType" flags="ig" index="26uTi9" />
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
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="7eGEHDlc$ap">
    <property role="TrG5h" value="RuleBuilder" />
    <node concept="2tJIrI" id="6lpwCiZjgvw" role="jymVt" />
    <node concept="3clFbW" id="6lpwCiZjdph" role="jymVt">
      <node concept="3cqZAl" id="6lpwCiZjdpi" role="3clF45" />
      <node concept="3Tm1VV" id="6lpwCiZjdpj" role="1B3o_S" />
      <node concept="3clFbS" id="6lpwCiZjdpk" role="3clF47">
        <node concept="1VxSAg" id="7nPD14Oesbn" role="3cqZAp">
          <ref role="37wK5l" node="7nPD14OeqYJ" resolve="RuleBuilder" />
          <node concept="37vLTw" id="62MNP_kXJYe" role="37wK5m">
            <ref role="3cqZAo" node="62MNP_kXJV2" resolve="tag" />
          </node>
          <node concept="10Nm6u" id="62MNP_kXH6g" role="37wK5m" />
          <node concept="10Nm6u" id="62MNP_kXY9O" role="37wK5m" />
        </node>
      </node>
      <node concept="37vLTG" id="62MNP_kXJV2" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="62MNP_kXJV1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3KXGt7WvW6X" role="jymVt" />
    <node concept="3clFbW" id="7nPD14OeqYJ" role="jymVt">
      <node concept="37vLTG" id="7nPD14OeqYK" role="3clF46">
        <property role="TrG5h" value="tag" />
        <node concept="17QB3L" id="7nPD14OeqYL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6RFuZEC8tYV" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="6i42QSs9mbZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="7nPD14OeqYM" role="3clF46">
        <property role="TrG5h" value="originRef" />
        <node concept="3uibUv" id="6i42QSs9mgq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nPD14OeqYO" role="3clF45" />
      <node concept="3Tm1VV" id="7nPD14OeqYP" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14OeqYQ" role="3clF47">
        <node concept="3clFbF" id="7nPD14OeqYR" role="3cqZAp">
          <node concept="37vLTI" id="7nPD14OeqYS" role="3clFbG">
            <node concept="2OqwBi" id="7nPD14OeqYT" role="37vLTJ">
              <node concept="Xjq3P" id="7nPD14OeqYU" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nPD14OeqYV" role="2OqNvi">
                <ref role="2Oxat5" node="6lpwCiZjjEm" resolve="tag" />
              </node>
            </node>
            <node concept="37vLTw" id="7nPD14OeqYW" role="37vLTx">
              <ref role="3cqZAo" node="7nPD14OeqYK" resolve="tag" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6RFuZEC8uau" role="3cqZAp">
          <node concept="37vLTI" id="6RFuZEC8ufo" role="3clFbG">
            <node concept="37vLTw" id="6RFuZEC8uhK" role="37vLTx">
              <ref role="3cqZAo" node="6RFuZEC8tYV" resolve="templateRef" />
            </node>
            <node concept="2OqwBi" id="6RFuZEC8ucj" role="37vLTJ">
              <node concept="Xjq3P" id="6RFuZEC8uas" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RFuZEC8udm" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14Ob4vA" resolve="templateRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6RFuZEC7tPF" role="3cqZAp">
          <node concept="37vLTI" id="6RFuZEC7tTI" role="3clFbG">
            <node concept="37vLTw" id="6RFuZEC7tW6" role="37vLTx">
              <ref role="3cqZAo" node="7nPD14OeqYM" resolve="originRef" />
            </node>
            <node concept="2OqwBi" id="6RFuZEC7tQo" role="37vLTJ">
              <node concept="Xjq3P" id="6RFuZEC7tPD" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RFuZEC7tR_" role="2OqNvi">
                <ref role="2Oxat5" node="7nPD14Ob4B1" resolve="originRef" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="32fHqDf8Y5W" role="jymVt" />
    <node concept="3clFb_" id="32fHqDf8Vx1" role="jymVt">
      <property role="TrG5h" value="appendAlternation" />
      <node concept="3uibUv" id="32fHqDf936x" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="32fHqDf8Vx4" role="1B3o_S" />
      <node concept="3clFbS" id="32fHqDf8Vx5" role="3clF47">
        <node concept="3clFbF" id="32fHqDf93HO" role="3cqZAp">
          <node concept="2OqwBi" id="32fHqDf93HP" role="3clFbG">
            <node concept="37vLTw" id="32fHqDf93HQ" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
            </node>
            <node concept="liA8E" id="32fHqDf93HR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="2ShNRf" id="32fHqDf93HS" role="37wK5m">
                <node concept="1pGfFk" id="32fHqDf93HT" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                  <node concept="3cmrfG" id="32fHqDf93HU" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="3uibUv" id="32fHqDf93HV" role="1pMfVU">
                    <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="32fHqDf98uX" role="3cqZAp">
          <node concept="Xjq3P" id="32fHqDf98uV" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="32fHqDf90A3" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$aw" role="jymVt">
      <property role="TrG5h" value="appendBody" />
      <node concept="37vLTG" id="7eGEHDlc$ax" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="8X2XB" id="7eGEHDlc$ay" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7BJyBn" role="8Xvag">
            <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7eGEHDlc$a$" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$a_" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$aA" role="3clF47">
        <node concept="3clFbJ" id="2_NfR5wksMC" role="3cqZAp">
          <node concept="3clFbS" id="2_NfR5wksME" role="3clFbx">
            <node concept="3clFbF" id="2_NfR5wkw_Y" role="3cqZAp">
              <node concept="2OqwBi" id="2_NfR5wkwI$" role="3clFbG">
                <node concept="37vLTw" id="2_NfR5wkw_X" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
                </node>
                <node concept="liA8E" id="2_NfR5wkwVz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2ShNRf" id="2_NfR5wkx09" role="37wK5m">
                    <node concept="1pGfFk" id="2_NfR5wkxkq" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                      <node concept="3cmrfG" id="2_NfR5wkxEN" role="37wK5m">
                        <property role="3cmrfH" value="4" />
                      </node>
                      <node concept="3uibUv" id="2_NfR5wkxwM" role="1pMfVU">
                        <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2_NfR5wktC4" role="3clFbw">
            <node concept="37vLTw" id="2_NfR5wktC5" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
            </node>
            <node concept="liA8E" id="2_NfR5wktC6" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2_NfR5wky2s" role="3cqZAp" />
        <node concept="3cpWs8" id="2_NfR5wkuUP" role="3cqZAp">
          <node concept="3cpWsn" id="2_NfR5wkuUQ" role="3cpWs9">
            <property role="TrG5h" value="body" />
            <node concept="3uibUv" id="2_NfR5wkuUo" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2_NfR5wkuUr" role="11_B2D">
                <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="2_NfR5wkyOL" role="33vP2m">
              <node concept="37vLTw" id="2_NfR5wkyOM" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
              </node>
              <node concept="liA8E" id="2_NfR5wkyON" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cpWsd" id="2_NfR5wkyOO" role="37wK5m">
                  <node concept="3cmrfG" id="2_NfR5wkyOP" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="2_NfR5wkyOQ" role="3uHU7B">
                    <node concept="37vLTw" id="2_NfR5wkyOR" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
                    </node>
                    <node concept="liA8E" id="2_NfR5wkyOS" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="7eGEHDlc$aB" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlc$aC" role="2LFqv$">
            <node concept="3clFbF" id="7eGEHDlc$aD" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDlc$aE" role="3clFbG">
                <node concept="37vLTw" id="2_NfR5wky0k" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_NfR5wkuUQ" resolve="body" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$aG" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="AH0OO" id="7eGEHDlc$aH" role="37wK5m">
                    <node concept="37vLTw" id="7eGEHDlc$aI" role="AHEQo">
                      <ref role="3cqZAo" node="7eGEHDlc$aK" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7eGEHDlc$aJ" role="AHHXb">
                      <ref role="3cqZAo" node="7eGEHDlc$ax" resolve="item" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDlc$aK" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7eGEHDlc$aL" role="1tU5fm" />
            <node concept="3cmrfG" id="7eGEHDlc$aM" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7eGEHDlc$aN" role="1Dwp0S">
            <node concept="2OqwBi" id="7eGEHDlc$aO" role="3uHU7w">
              <node concept="37vLTw" id="7eGEHDlc$aP" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$ax" resolve="item" />
              </node>
              <node concept="1Rwk04" id="7eGEHDlc$aQ" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7eGEHDlc$aR" role="3uHU7B">
              <ref role="3cqZAo" node="7eGEHDlc$aK" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7eGEHDlc$aS" role="1Dwrff">
            <node concept="37vLTw" id="7eGEHDlc$aT" role="2$L3a6">
              <ref role="3cqZAo" node="7eGEHDlc$aK" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eGEHDlc$aU" role="3cqZAp">
          <node concept="Xjq3P" id="7eGEHDlc$aV" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$aW" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$aX" role="jymVt">
      <property role="TrG5h" value="appendGuard" />
      <node concept="37vLTG" id="7eGEHDlc$aY" role="3clF46">
        <property role="TrG5h" value="pred" />
        <node concept="8X2XB" id="7eGEHDlc$aZ" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7BJyQi" role="8Xvag">
            <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7eGEHDlc$b1" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$b2" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$b3" role="3clF47">
        <node concept="1Dw8fO" id="7eGEHDlc$b4" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlc$b5" role="2LFqv$">
            <node concept="3clFbF" id="7eGEHDlc$b6" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDlc$b7" role="3clFbG">
                <node concept="37vLTw" id="7eGEHDlc$b8" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$b9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="AH0OO" id="7eGEHDlc$ba" role="37wK5m">
                    <node concept="37vLTw" id="7eGEHDlc$bb" role="AHEQo">
                      <ref role="3cqZAo" node="7eGEHDlc$bd" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7eGEHDlc$bc" role="AHHXb">
                      <ref role="3cqZAo" node="7eGEHDlc$aY" resolve="pred" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDlc$bd" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7eGEHDlc$be" role="1tU5fm" />
            <node concept="3cmrfG" id="7eGEHDlc$bf" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7eGEHDlc$bg" role="1Dwp0S">
            <node concept="2OqwBi" id="7eGEHDlc$bh" role="3uHU7w">
              <node concept="37vLTw" id="7eGEHDlc$bi" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$aY" resolve="pred" />
              </node>
              <node concept="1Rwk04" id="7eGEHDlc$bj" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7eGEHDlc$bk" role="3uHU7B">
              <ref role="3cqZAo" node="7eGEHDlc$bd" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7eGEHDlc$bl" role="1Dwrff">
            <node concept="37vLTw" id="7eGEHDlc$bm" role="2$L3a6">
              <ref role="3cqZAo" node="7eGEHDlc$bd" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eGEHDlc$bn" role="3cqZAp">
          <node concept="Xjq3P" id="7eGEHDlc$bo" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$bp" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$bq" role="jymVt">
      <property role="TrG5h" value="appendHeadReplaced" />
      <node concept="3uibUv" id="7eGEHDlc$br" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$bs" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$bt" role="3clF47">
        <node concept="1Dw8fO" id="7eGEHDlc$bu" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlc$bv" role="2LFqv$">
            <node concept="3clFbF" id="7eGEHDlc$bw" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDlc$bx" role="3clFbG">
                <node concept="37vLTw" id="7eGEHDlc$by" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$bz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="AH0OO" id="7eGEHDlc$b$" role="37wK5m">
                    <node concept="37vLTw" id="7eGEHDlc$b_" role="AHEQo">
                      <ref role="3cqZAo" node="7eGEHDlc$bB" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7eGEHDlc$bA" role="AHHXb">
                      <ref role="3cqZAo" node="7eGEHDlc$bN" resolve="cst" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDlc$bB" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7eGEHDlc$bC" role="1tU5fm" />
            <node concept="3cmrfG" id="7eGEHDlc$bD" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7eGEHDlc$bE" role="1Dwp0S">
            <node concept="2OqwBi" id="7eGEHDlc$bF" role="3uHU7w">
              <node concept="37vLTw" id="7eGEHDlc$bG" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$bN" resolve="cst" />
              </node>
              <node concept="1Rwk04" id="7eGEHDlc$bH" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7eGEHDlc$bI" role="3uHU7B">
              <ref role="3cqZAo" node="7eGEHDlc$bB" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7eGEHDlc$bJ" role="1Dwrff">
            <node concept="37vLTw" id="7eGEHDlc$bK" role="2$L3a6">
              <ref role="3cqZAo" node="7eGEHDlc$bB" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eGEHDlc$bL" role="3cqZAp">
          <node concept="Xjq3P" id="7eGEHDlc$bM" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="7eGEHDlc$bN" role="3clF46">
        <property role="TrG5h" value="cst" />
        <node concept="8X2XB" id="7eGEHDlc$bO" role="1tU5fm">
          <node concept="3uibUv" id="1HG00HG1Ha2" role="8Xvag">
            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$bQ" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$bR" role="jymVt">
      <property role="TrG5h" value="appendHeadKept" />
      <node concept="3uibUv" id="7eGEHDlc$bS" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$bT" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$bU" role="3clF47">
        <node concept="1Dw8fO" id="7eGEHDlc$bV" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlc$bW" role="2LFqv$">
            <node concept="3clFbF" id="7eGEHDlc$bX" role="3cqZAp">
              <node concept="2OqwBi" id="7eGEHDlc$bY" role="3clFbG">
                <node concept="37vLTw" id="7eGEHDlc$bZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$c0" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="AH0OO" id="7eGEHDlc$c1" role="37wK5m">
                    <node concept="37vLTw" id="7eGEHDlc$c2" role="AHEQo">
                      <ref role="3cqZAo" node="7eGEHDlc$c4" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7eGEHDlc$c3" role="AHHXb">
                      <ref role="3cqZAo" node="7eGEHDlc$cg" resolve="cst" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7eGEHDlc$c4" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7eGEHDlc$c5" role="1tU5fm" />
            <node concept="3cmrfG" id="7eGEHDlc$c6" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7eGEHDlc$c7" role="1Dwp0S">
            <node concept="2OqwBi" id="7eGEHDlc$c8" role="3uHU7w">
              <node concept="37vLTw" id="7eGEHDlc$c9" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$cg" resolve="cst" />
              </node>
              <node concept="1Rwk04" id="7eGEHDlc$ca" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7eGEHDlc$cb" role="3uHU7B">
              <ref role="3cqZAo" node="7eGEHDlc$c4" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="7eGEHDlc$cc" role="1Dwrff">
            <node concept="37vLTw" id="7eGEHDlc$cd" role="2$L3a6">
              <ref role="3cqZAo" node="7eGEHDlc$c4" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eGEHDlc$ce" role="3cqZAp">
          <node concept="Xjq3P" id="7eGEHDlc$cf" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="7eGEHDlc$cg" role="3clF46">
        <property role="TrG5h" value="cst" />
        <node concept="8X2XB" id="7eGEHDlc$ch" role="1tU5fm">
          <node concept="3uibUv" id="1HG00HG1S9w" role="8Xvag">
            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="77AxcO4ZrEu" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7mcq7" role="jymVt">
      <property role="TrG5h" value="hasHead" />
      <node concept="10P_77" id="7nkyKX7mds5" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7mcqa" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7mcqb" role="3clF47">
        <node concept="3clFbF" id="7nkyKX7mgDd" role="3cqZAp">
          <node concept="3fqX7Q" id="7nkyKX7mh4R" role="3clFbG">
            <node concept="1eOMI4" id="7nkyKX7mh4T" role="3fr31v">
              <node concept="1Wc70l" id="7nkyKX7mh9o" role="1eOMHV">
                <node concept="2OqwBi" id="7nkyKX7mhkG" role="3uHU7w">
                  <node concept="37vLTw" id="7nkyKX7mhdR" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7mhwW" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7nkyKX7mh4U" role="3uHU7B">
                  <node concept="37vLTw" id="7nkyKX7mh4V" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7mh4W" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7miFS" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7mh_a" role="jymVt">
      <property role="TrG5h" value="hasGuard" />
      <node concept="10P_77" id="7nkyKX7mh_b" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7mh_c" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7mh_d" role="3clF47">
        <node concept="3clFbF" id="7nkyKX7mnyT" role="3cqZAp">
          <node concept="3fqX7Q" id="7nkyKX7mnyR" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7mnHG" role="3fr31v">
              <node concept="37vLTw" id="7nkyKX7mtuO" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
              </node>
              <node concept="liA8E" id="7nkyKX7mnTd" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7mp2d" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7mnWq" role="jymVt">
      <property role="TrG5h" value="hasBody" />
      <node concept="10P_77" id="7nkyKX7mnWr" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7mnWs" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7mnWt" role="3clF47">
        <node concept="3clFbF" id="7nkyKX7mnWu" role="3cqZAp">
          <node concept="3fqX7Q" id="7nkyKX7mnWv" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7mnWw" role="3fr31v">
              <node concept="37vLTw" id="7nkyKX7mnWx" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
              </node>
              <node concept="liA8E" id="7nkyKX7mnWy" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7mboQ" role="jymVt" />
    <node concept="3clFb_" id="77AxcO4ZwMR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="merge" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="77AxcO4ZwMU" role="3clF47">
        <node concept="3clFbF" id="2$F5QpusUuX" role="3cqZAp">
          <node concept="1rXfSq" id="2$F5QpusUuW" role="3clFbG">
            <ref role="37wK5l" node="2$F5QpusUuS" resolve="doMerge" />
            <node concept="3cmrfG" id="2_NfR5wobws" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="2$F5QpusUuV" role="37wK5m">
              <ref role="3cqZAo" node="77AxcO4Zzio" resolve="other" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="77AxcO4ZTIZ" role="3cqZAp">
          <node concept="Xjq3P" id="77AxcO4ZTIX" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="77AxcO4Zufd" role="1B3o_S" />
      <node concept="3uibUv" id="77AxcO4ZwI9" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="37vLTG" id="77AxcO4Zzio" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="8X2XB" id="77AxcO4Z_BY" role="1tU5fm">
          <node concept="3uibUv" id="77AxcO4Zzin" role="8Xvag">
            <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QpusVCM" role="jymVt" />
    <node concept="3clFb_" id="2_NfR5wo4nJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="merge" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2_NfR5wo4nK" role="3clF47">
        <node concept="3clFbF" id="2_NfR5wo4nL" role="3cqZAp">
          <node concept="1rXfSq" id="2_NfR5wo4nM" role="3clFbG">
            <ref role="37wK5l" node="2$F5QpusUuS" resolve="doMerge" />
            <node concept="37vLTw" id="2_NfR5wobzD" role="37wK5m">
              <ref role="3cqZAo" node="2_NfR5wo8Il" resolve="intoAlt" />
            </node>
            <node concept="37vLTw" id="2_NfR5wo4nN" role="37wK5m">
              <ref role="3cqZAo" node="2_NfR5wo4nS" resolve="other" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_NfR5wo4nO" role="3cqZAp">
          <node concept="Xjq3P" id="2_NfR5wo4nP" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2_NfR5wo4nQ" role="1B3o_S" />
      <node concept="3uibUv" id="2_NfR5wo4nR" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="37vLTG" id="2_NfR5wo8Il" role="3clF46">
        <property role="TrG5h" value="intoAlt" />
        <node concept="10Oyi0" id="2_NfR5woa2O" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2_NfR5wo4nS" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="8X2XB" id="2_NfR5wo4nT" role="1tU5fm">
          <node concept="3uibUv" id="2_NfR5wo4nU" role="8Xvag">
            <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_NfR5wo4nI" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$ck" role="jymVt">
      <property role="TrG5h" value="toRule" />
      <node concept="3uibUv" id="6i42QSsjTSO" role="3clF45">
        <ref role="3uigEE" node="7nPD14OaO1O" resolve="RuleEx" />
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$cm" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$cn" role="3clF47">
        <node concept="3cpWs8" id="7eGEHDlc$co" role="3cqZAp">
          <node concept="3cpWsn" id="7eGEHDlc$cp" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="1HG00HG0Y0l" role="1tU5fm">
              <ref role="3uigEE" to="av0y:~Rule$Kind" resolve="Rule.Kind" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7eGEHDlc$cr" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlc$cs" role="3clFbx">
            <node concept="3clFbF" id="7eGEHDlc$ct" role="3cqZAp">
              <node concept="37vLTI" id="7eGEHDlc$cu" role="3clFbG">
                <node concept="Rm8GO" id="7eGEHDlc$cv" role="37vLTx">
                  <ref role="1Px2BO" to="av0y:~Rule$Kind" resolve="Rule.Kind" />
                  <ref role="Rm8GQ" to="av0y:~Rule$Kind.SIMPAGATION" resolve="SIMPAGATION" />
                </node>
                <node concept="37vLTw" id="7eGEHDlc$cw" role="37vLTJ">
                  <ref role="3cqZAo" node="7eGEHDlc$cp" resolve="kind" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3KXGt7Ws8ra" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="7eGEHDlc$cx" role="3clFbw">
            <node concept="3fqX7Q" id="7eGEHDlc$cy" role="3uHU7w">
              <node concept="2OqwBi" id="7eGEHDlc$cz" role="3fr31v">
                <node concept="37vLTw" id="7eGEHDlc$c$" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$c_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7eGEHDlc$cA" role="3uHU7B">
              <node concept="2OqwBi" id="7eGEHDlc$cB" role="3fr31v">
                <node concept="37vLTw" id="7eGEHDlc$cC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$cD" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7eGEHDlc$cE" role="3eNLev">
            <node concept="3clFbS" id="7eGEHDlc$cF" role="3eOfB_">
              <node concept="3clFbF" id="7eGEHDlc$cG" role="3cqZAp">
                <node concept="37vLTI" id="7eGEHDlc$cH" role="3clFbG">
                  <node concept="Rm8GO" id="7eGEHDlc$cI" role="37vLTx">
                    <ref role="1Px2BO" to="av0y:~Rule$Kind" resolve="Rule.Kind" />
                    <ref role="Rm8GQ" to="av0y:~Rule$Kind.SIMPLIFICATION" resolve="SIMPLIFICATION" />
                  </node>
                  <node concept="37vLTw" id="7eGEHDlc$cJ" role="37vLTJ">
                    <ref role="3cqZAo" node="7eGEHDlc$cp" resolve="kind" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3KXGt7Ws8rr" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="7eGEHDlc$cK" role="3eO9$A">
              <node concept="2OqwBi" id="7eGEHDlc$cL" role="3fr31v">
                <node concept="37vLTw" id="7eGEHDlc$cM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$cN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7eGEHDlc$cO" role="3eNLev">
            <node concept="3fqX7Q" id="7eGEHDlc$cP" role="3eO9$A">
              <node concept="2OqwBi" id="7eGEHDlc$cQ" role="3fr31v">
                <node concept="37vLTw" id="7eGEHDlc$cR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
                </node>
                <node concept="liA8E" id="7eGEHDlc$cS" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7eGEHDlc$cT" role="3eOfB_">
              <node concept="3clFbF" id="7eGEHDlc$cU" role="3cqZAp">
                <node concept="37vLTI" id="7eGEHDlc$cV" role="3clFbG">
                  <node concept="37vLTw" id="7eGEHDlc$cW" role="37vLTJ">
                    <ref role="3cqZAo" node="7eGEHDlc$cp" resolve="kind" />
                  </node>
                  <node concept="Rm8GO" id="7eGEHDlc$cX" role="37vLTx">
                    <ref role="1Px2BO" to="av0y:~Rule$Kind" resolve="Rule.Kind" />
                    <ref role="Rm8GQ" to="av0y:~Rule$Kind.PROPAGATION" resolve="PROPAGATION" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3KXGt7Ws8rG" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="7eGEHDlc$cY" role="9aQIa">
            <node concept="3clFbS" id="7eGEHDlc$cZ" role="9aQI4">
              <node concept="YS8fn" id="7eGEHDlc$d0" role="3cqZAp">
                <node concept="2ShNRf" id="7eGEHDlc$d1" role="YScLw">
                  <node concept="1pGfFk" id="7eGEHDlc$d2" role="2ShVmc">
                    <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String)" resolve="InvalidRuleException" />
                    <node concept="3cpWs3" id="3KXGt7Wsf0I" role="37wK5m">
                      <node concept="1rXfSq" id="3KXGt7Wsf1V" role="3uHU7w">
                        <ref role="37wK5l" node="3KXGt7Wsam5" resolve="toString" />
                      </node>
                      <node concept="Xl_RD" id="7eGEHDlc$d3" role="3uHU7B">
                        <property role="Xl_RC" value="Invalid rule: empty head in " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7eGEHDlc$d4" role="3cqZAp" />
        <node concept="3clFbJ" id="7eGEHDlc$d5" role="3cqZAp">
          <node concept="3clFbS" id="7eGEHDlc$d6" role="3clFbx">
            <node concept="YS8fn" id="7eGEHDlc$d7" role="3cqZAp">
              <node concept="2ShNRf" id="7eGEHDlc$d8" role="YScLw">
                <node concept="1pGfFk" id="7eGEHDlc$d9" role="2ShVmc">
                  <ref role="37wK5l" to="av0y:~InvalidRuleException.&lt;init&gt;(java.lang.String)" resolve="InvalidRuleException" />
                  <node concept="3cpWs3" id="3KXGt7Wsf9r" role="37wK5m">
                    <node concept="1rXfSq" id="3KXGt7WsfaC" role="3uHU7w">
                      <ref role="37wK5l" node="3KXGt7Wsam5" resolve="toString" />
                    </node>
                    <node concept="Xl_RD" id="7eGEHDlc$da" role="3uHU7B">
                      <property role="Xl_RC" value="Invalid rule: empty body in " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7eGEHDlc$db" role="3clFbw">
            <node concept="37vLTw" id="7eGEHDlc$dc" role="2Oq$k0">
              <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
            </node>
            <node concept="liA8E" id="7eGEHDlc$dd" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7eGEHDlc$de" role="3cqZAp" />
        <node concept="3clFbF" id="7eGEHDlc$df" role="3cqZAp">
          <node concept="37vLTI" id="7eGEHDlc$dg" role="3clFbG">
            <node concept="2YIFZM" id="7eGEHDlc$dh" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="7eGEHDlc$di" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
              </node>
            </node>
            <node concept="37vLTw" id="7eGEHDlc$dj" role="37vLTJ">
              <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eGEHDlc$dk" role="3cqZAp">
          <node concept="37vLTI" id="7eGEHDlc$dl" role="3clFbG">
            <node concept="2YIFZM" id="7eGEHDlc$dm" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="7eGEHDlc$dn" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
              </node>
            </node>
            <node concept="37vLTw" id="7eGEHDlc$do" role="37vLTJ">
              <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eGEHDlc$dp" role="3cqZAp">
          <node concept="37vLTI" id="7eGEHDlc$dq" role="3clFbG">
            <node concept="2YIFZM" id="7eGEHDlc$dr" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="7eGEHDlc$ds" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
              </node>
            </node>
            <node concept="37vLTw" id="7eGEHDlc$dt" role="37vLTJ">
              <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eGEHDlc$du" role="3cqZAp">
          <node concept="37vLTI" id="7eGEHDlc$dv" role="3clFbG">
            <node concept="2YIFZM" id="7eGEHDlc$dw" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="7eGEHDlc$dx" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
              </node>
            </node>
            <node concept="37vLTw" id="7eGEHDlc$dy" role="37vLTJ">
              <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7eGEHDlc$dz" role="3cqZAp" />
        <node concept="3clFbF" id="7eGEHDlc$d$" role="3cqZAp">
          <node concept="2ShNRf" id="7eGEHDlc$d_" role="3clFbG">
            <node concept="1pGfFk" id="7eGEHDlc$dA" role="2ShVmc">
              <ref role="37wK5l" node="7eGEHDlc$dF" resolve="RuleBuilder.Rule" />
              <node concept="37vLTw" id="7eGEHDlc$dB" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$cp" resolve="kind" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RS$GvZ" role="Sfmx6">
        <ref role="3uigEE" to="av0y:~InvalidRuleException" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3KXGt7Ws9oH" role="jymVt" />
    <node concept="3clFb_" id="3KXGt7Wsam5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3KXGt7Wsam6" role="1B3o_S" />
      <node concept="3uibUv" id="3KXGt7Wsam8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3KXGt7Wsam9" role="3clF47">
        <node concept="3clFbF" id="3KXGt7WsboW" role="3cqZAp">
          <node concept="2YIFZM" id="3KXGt7Wsbqk" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
            <node concept="Xl_RD" id="3KXGt7WsbrR" role="37wK5m">
              <property role="Xl_RC" value="%s (%d,%d,%d,%d)" />
            </node>
            <node concept="37vLTw" id="3KXGt7WsbET" role="37wK5m">
              <ref role="3cqZAo" node="6lpwCiZjjEm" resolve="tag" />
            </node>
            <node concept="2OqwBi" id="3KXGt7WsbVC" role="37wK5m">
              <node concept="37vLTw" id="3KXGt7WsbNp" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
              </node>
              <node concept="liA8E" id="3KXGt7Wscd_" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KXGt7WsczF" role="37wK5m">
              <node concept="37vLTw" id="3KXGt7WscpV" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
              </node>
              <node concept="liA8E" id="3KXGt7WscRr" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KXGt7WsdgT" role="37wK5m">
              <node concept="37vLTw" id="3KXGt7Wsd4M" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
              </node>
              <node concept="liA8E" id="3KXGt7WsdAI" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KXGt7Wse6B" role="37wK5m">
              <node concept="37vLTw" id="3KXGt7WsdTh" role="2Oq$k0">
                <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
              </node>
              <node concept="liA8E" id="3KXGt7WseOV" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3KXGt7Wsama" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$dC" role="jymVt" />
    <node concept="3clFb_" id="2$F5QpusUuS" role="jymVt">
      <property role="TrG5h" value="doMerge" />
      <node concept="3Tm6S6" id="2$F5QpusUuT" role="1B3o_S" />
      <node concept="3cqZAl" id="2$F5QpusUuU" role="3clF45" />
      <node concept="37vLTG" id="2_NfR5woa4k" role="3clF46">
        <property role="TrG5h" value="intoAlt" />
        <node concept="10Oyi0" id="2_NfR5woboe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2$F5QpusUuL" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="8X2XB" id="2$F5QpusUuM" role="1tU5fm">
          <node concept="3uibUv" id="2$F5QpusUuN" role="8Xvag">
            <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2$F5QpusUu1" role="3clF47">
        <node concept="1Dw8fO" id="2$F5QpusUu2" role="3cqZAp">
          <node concept="3cpWsn" id="2$F5QpusUu3" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2$F5QpusUu4" role="1tU5fm" />
            <node concept="3cmrfG" id="2$F5QpusUu5" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="2$F5QpusUu6" role="2LFqv$">
            <node concept="3cpWs8" id="2$F5QpusUu7" role="3cqZAp">
              <node concept="3cpWsn" id="2$F5QpusUu8" role="3cpWs9">
                <property role="TrG5h" value="toMerge" />
                <node concept="3uibUv" id="2$F5QpusUu9" role="1tU5fm">
                  <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
                </node>
                <node concept="AH0OO" id="2$F5QpusUua" role="33vP2m">
                  <node concept="37vLTw" id="2$F5QpusUub" role="AHEQo">
                    <ref role="3cqZAo" node="2$F5QpusUu3" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="2$F5QpusUuO" role="AHHXb">
                    <ref role="3cqZAo" node="2$F5QpusUuL" resolve="other" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2$F5QpusUud" role="3cqZAp" />
            <node concept="3clFbF" id="2$F5QpusUue" role="3cqZAp">
              <node concept="2OqwBi" id="2$F5QpusUuf" role="3clFbG">
                <node concept="37vLTw" id="2$F5QpusUug" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
                </node>
                <node concept="liA8E" id="2$F5QpusUuh" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                  <node concept="2OqwBi" id="2$F5QpusUui" role="37wK5m">
                    <node concept="37vLTw" id="2$F5QpusUuj" role="2Oq$k0">
                      <ref role="3cqZAo" node="2$F5QpusUu8" resolve="toMerge" />
                    </node>
                    <node concept="2OwXpG" id="2$F5QpusUuk" role="2OqNvi">
                      <ref role="2Oxat5" node="7eGEHDlc$eH" resolve="headReplaced" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2$F5QpusUul" role="3cqZAp">
              <node concept="2OqwBi" id="2$F5QpusUum" role="3clFbG">
                <node concept="37vLTw" id="2$F5QpusUun" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
                </node>
                <node concept="liA8E" id="2$F5QpusUuo" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                  <node concept="2OqwBi" id="2$F5QpusUup" role="37wK5m">
                    <node concept="37vLTw" id="2$F5QpusUuq" role="2Oq$k0">
                      <ref role="3cqZAo" node="2$F5QpusUu8" resolve="toMerge" />
                    </node>
                    <node concept="2OwXpG" id="2$F5QpusUur" role="2OqNvi">
                      <ref role="2Oxat5" node="7eGEHDlc$e_" resolve="headKept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2$F5QpusUus" role="3cqZAp">
              <node concept="2OqwBi" id="2$F5QpusUut" role="3clFbG">
                <node concept="37vLTw" id="2$F5QpusUuu" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
                </node>
                <node concept="liA8E" id="2$F5QpusUuv" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                  <node concept="2OqwBi" id="2$F5QpusUuw" role="37wK5m">
                    <node concept="37vLTw" id="2$F5QpusUux" role="2Oq$k0">
                      <ref role="3cqZAo" node="2$F5QpusUu8" resolve="toMerge" />
                    </node>
                    <node concept="2OwXpG" id="2$F5QpusUuy" role="2OqNvi">
                      <ref role="2Oxat5" node="7eGEHDlc$eP" resolve="guard" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2_NfR5wnEuz" role="3cqZAp" />
            <node concept="3SKdUt" id="2_NfR5wnNsf" role="3cqZAp">
              <node concept="3SKdUq" id="2_NfR5wnNsh" role="3SKWNk">
                <property role="3SKdUp" value="merge body alternation slots. create new slots on demand" />
              </node>
            </node>
            <node concept="3cpWs8" id="2_NfR5wnF32" role="3cqZAp">
              <node concept="3cpWsn" id="2_NfR5wnF33" role="3cpWs9">
                <property role="TrG5h" value="bodyToMerge" />
                <node concept="3uibUv" id="2_NfR5wnF2A" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2_NfR5wnF2H" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="2_NfR5wnF2I" role="11_B2D">
                      <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2_NfR5wnF34" role="33vP2m">
                  <node concept="37vLTw" id="2_NfR5wnF35" role="2Oq$k0">
                    <ref role="3cqZAo" node="2$F5QpusUu8" resolve="toMerge" />
                  </node>
                  <node concept="2OwXpG" id="2_NfR5wnF36" role="2OqNvi">
                    <ref role="2Oxat5" node="7eGEHDlc$eX" resolve="bodyAlternation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="2_NfR5wnGmi" role="3cqZAp">
              <node concept="3clFbS" id="2_NfR5wnGmk" role="2LFqv$">
                <node concept="2$JKZl" id="2_NfR5wocuA" role="3cqZAp">
                  <node concept="3clFbS" id="2_NfR5wocuS" role="2LFqv$">
                    <node concept="3clFbF" id="2_NfR5wocuD" role="3cqZAp">
                      <node concept="2OqwBi" id="2_NfR5wocuE" role="3clFbG">
                        <node concept="37vLTw" id="2_NfR5wocuF" role="2Oq$k0">
                          <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
                        </node>
                        <node concept="liA8E" id="2_NfR5wocuG" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="2ShNRf" id="2_NfR5wocuH" role="37wK5m">
                            <node concept="1pGfFk" id="2_NfR5wocuI" role="2ShVmc">
                              <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                              <node concept="3uibUv" id="2_NfR5wocuJ" role="1pMfVU">
                                <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                              </node>
                              <node concept="3cmrfG" id="2_NfR5wocuK" role="37wK5m">
                                <property role="3cmrfH" value="4" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2d3UOw" id="2_NfR5wocuU" role="2$JKZa">
                    <node concept="37vLTw" id="2_NfR5wocuV" role="3uHU7B">
                      <ref role="3cqZAo" node="2_NfR5wnGml" resolve="j" />
                    </node>
                    <node concept="3cpWs3" id="2_NfR5wocuW" role="3uHU7w">
                      <node concept="37vLTw" id="2_NfR5wocuX" role="3uHU7w">
                        <ref role="3cqZAo" node="2_NfR5woa4k" resolve="intoAlt" />
                      </node>
                      <node concept="2OqwBi" id="2_NfR5wocuY" role="3uHU7B">
                        <node concept="37vLTw" id="2_NfR5wocuZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
                        </node>
                        <node concept="liA8E" id="2_NfR5wocv0" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2_NfR5wnL0X" role="3cqZAp">
                  <node concept="2OqwBi" id="2_NfR5wnLxD" role="3clFbG">
                    <node concept="2OqwBi" id="2_NfR5wnLcH" role="2Oq$k0">
                      <node concept="37vLTw" id="2_NfR5wnL0V" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
                      </node>
                      <node concept="liA8E" id="2_NfR5wnLkp" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                        <node concept="3cpWs3" id="2_NfR5wobVk" role="37wK5m">
                          <node concept="37vLTw" id="2_NfR5woc7d" role="3uHU7w">
                            <ref role="3cqZAo" node="2_NfR5woa4k" resolve="intoAlt" />
                          </node>
                          <node concept="37vLTw" id="2_NfR5wnLro" role="3uHU7B">
                            <ref role="3cqZAo" node="2_NfR5wnGml" resolve="j" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2_NfR5wnLF3" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                      <node concept="2OqwBi" id="2_NfR5wnLVl" role="37wK5m">
                        <node concept="37vLTw" id="2_NfR5wnLLI" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_NfR5wnF33" resolve="bodyToMerge" />
                        </node>
                        <node concept="liA8E" id="2_NfR5wnM5M" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                          <node concept="37vLTw" id="2_NfR5wnMd2" role="37wK5m">
                            <ref role="3cqZAo" node="2_NfR5wnGml" resolve="j" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2_NfR5wnGml" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="2_NfR5wnGA6" role="1tU5fm" />
                <node concept="3cmrfG" id="2_NfR5wnGAX" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2_NfR5wnGFw" role="1Dwp0S">
                <node concept="2OqwBi" id="2_NfR5wnH0L" role="3uHU7w">
                  <node concept="37vLTw" id="2_NfR5wnGQX" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_NfR5wnF33" resolve="bodyToMerge" />
                  </node>
                  <node concept="liA8E" id="2_NfR5wnH6B" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                  </node>
                </node>
                <node concept="37vLTw" id="2_NfR5wnWcT" role="3uHU7B">
                  <ref role="3cqZAo" node="2_NfR5wnGml" resolve="j" />
                </node>
              </node>
              <node concept="3uNrnE" id="2_NfR5wnHf2" role="1Dwrff">
                <node concept="37vLTw" id="2_NfR5wnHf4" role="2$L3a6">
                  <ref role="3cqZAo" node="2_NfR5wnGml" resolve="j" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="2$F5QpusUuE" role="1Dwp0S">
            <node concept="2OqwBi" id="2$F5QpusUuF" role="3uHU7w">
              <node concept="37vLTw" id="2$F5QpusUuP" role="2Oq$k0">
                <ref role="3cqZAo" node="2$F5QpusUuL" resolve="other" />
              </node>
              <node concept="1Rwk04" id="2$F5QpusUuH" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="2$F5QpusUuI" role="3uHU7B">
              <ref role="3cqZAo" node="2$F5QpusUu3" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="2$F5QpusUuJ" role="1Dwrff">
            <node concept="37vLTw" id="2$F5QpusUuK" role="2$L3a6">
              <ref role="3cqZAo" node="2$F5QpusUu3" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$cj" role="jymVt" />
    <node concept="312cEu" id="7eGEHDlc$dD" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Rule" />
      <node concept="2tJIrI" id="7eGEHDlc$dE" role="jymVt" />
      <node concept="3clFbW" id="7eGEHDlc$dF" role="jymVt">
        <node concept="3cqZAl" id="7eGEHDlc$dG" role="3clF45" />
        <node concept="3Tm6S6" id="7eGEHDlc$dH" role="1B3o_S" />
        <node concept="3clFbS" id="7eGEHDlc$dI" role="3clF47">
          <node concept="3clFbF" id="7eGEHDlc$dJ" role="3cqZAp">
            <node concept="37vLTI" id="7eGEHDlc$dK" role="3clFbG">
              <node concept="2OqwBi" id="7eGEHDlc$dL" role="37vLTJ">
                <node concept="Xjq3P" id="7eGEHDlc$dM" role="2Oq$k0" />
                <node concept="2OwXpG" id="7eGEHDlc$dN" role="2OqNvi">
                  <ref role="2Oxat5" node="7eGEHDlc$ex" resolve="kind" />
                </node>
              </node>
              <node concept="37vLTw" id="7eGEHDlc$dO" role="37vLTx">
                <ref role="3cqZAo" node="7eGEHDlc$dP" resolve="kind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7eGEHDlc$dP" role="3clF46">
          <property role="TrG5h" value="kind" />
          <node concept="3uibUv" id="1HG00HG0Y1y" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~Rule$Kind" resolve="Rule.Kind" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7eGEHDlc$dR" role="jymVt" />
      <node concept="3clFb_" id="7nPD14Ob6b5" role="jymVt">
        <property role="TrG5h" value="originRef" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="6i42QSs9phk" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3Tm1VV" id="7nPD14Ob6b7" role="1B3o_S" />
        <node concept="3clFbS" id="7nPD14Ob6b9" role="3clF47">
          <node concept="3clFbF" id="7nPD14Ob6E1" role="3cqZAp">
            <node concept="37vLTw" id="7nPD14Ob6E0" role="3clFbG">
              <ref role="3cqZAo" node="7nPD14Ob4B1" resolve="originRef" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6i42QSs9ruB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7nPD14Ob6EG" role="jymVt" />
      <node concept="3clFb_" id="7nPD14Ob6ba" role="jymVt">
        <property role="TrG5h" value="templateRef" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="6i42QSs9tGc" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3Tm1VV" id="7nPD14Ob6bc" role="1B3o_S" />
        <node concept="3clFbS" id="7nPD14Ob6be" role="3clF47">
          <node concept="3clFbF" id="7nPD14Ob78I" role="3cqZAp">
            <node concept="37vLTw" id="7nPD14Ob78H" role="3clFbG">
              <ref role="3cqZAo" node="7nPD14Ob4vA" resolve="templateRef" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6i42QSs9vOh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7nPD14Ob79p" role="jymVt" />
      <node concept="3clFb_" id="7eGEHDlc$dS" role="jymVt">
        <property role="TrG5h" value="kind" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="1HG00HG0Y1W" role="3clF45">
          <ref role="3uigEE" to="av0y:~Rule$Kind" resolve="Rule.Kind" />
        </node>
        <node concept="3Tm1VV" id="7eGEHDlc$dU" role="1B3o_S" />
        <node concept="3clFbS" id="7eGEHDlc$dV" role="3clF47">
          <node concept="3clFbF" id="7eGEHDlc$dW" role="3cqZAp">
            <node concept="37vLTw" id="7eGEHDlc$dX" role="3clFbG">
              <ref role="3cqZAo" node="7eGEHDlc$ex" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7eGEHDlc$dY" role="jymVt" />
      <node concept="3clFb_" id="6lpwCiZjCun" role="jymVt">
        <property role="TrG5h" value="tag" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="6lpwCiZjCuo" role="3clF45" />
        <node concept="3Tm1VV" id="6lpwCiZjCup" role="1B3o_S" />
        <node concept="3clFbS" id="6lpwCiZjCur" role="3clF47">
          <node concept="3clFbF" id="6lpwCiZjHnM" role="3cqZAp">
            <node concept="37vLTw" id="6lpwCiZjHnL" role="3clFbG">
              <ref role="3cqZAo" node="6lpwCiZjjEm" resolve="tag" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6lpwCiZjEWh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6lpwCiZjDH9" role="jymVt" />
      <node concept="3Tm1VV" id="7eGEHDlc$dZ" role="1B3o_S" />
      <node concept="3uibUv" id="7nPD14Ob5KM" role="1zkMxy">
        <ref role="3uigEE" node="7nPD14OaO1O" resolve="RuleEx" />
      </node>
      <node concept="3clFb_" id="7eGEHDlc$e1" role="jymVt">
        <property role="TrG5h" value="headKept" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7eGEHDlc$e2" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1HG00HG1IaD" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7eGEHDlc$e4" role="1B3o_S" />
        <node concept="3clFbS" id="7eGEHDlc$e5" role="3clF47">
          <node concept="3clFbF" id="7eGEHDlc$e6" role="3cqZAp">
            <node concept="37vLTw" id="7eGEHDlc$e7" role="3clFbG">
              <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7eGEHDldzrd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7eGEHDlc$e8" role="jymVt" />
      <node concept="3clFb_" id="7eGEHDlc$e9" role="jymVt">
        <property role="TrG5h" value="headReplaced" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7eGEHDlc$ea" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1HG00HG1XKf" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7eGEHDlc$ec" role="1B3o_S" />
        <node concept="3clFbS" id="7eGEHDlc$ed" role="3clF47">
          <node concept="3clFbF" id="7eGEHDlc$ee" role="3cqZAp">
            <node concept="37vLTw" id="7eGEHDlc$ef" role="3clFbG">
              <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7eGEHDld$ps" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7eGEHDlc$eg" role="jymVt" />
      <node concept="3clFb_" id="7eGEHDlc$eh" role="jymVt">
        <property role="TrG5h" value="guard" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7eGEHDlc$ei" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5uFPQ7BHbBx" role="11_B2D">
            <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7eGEHDlc$ek" role="1B3o_S" />
        <node concept="3clFbS" id="7eGEHDlc$el" role="3clF47">
          <node concept="3clFbF" id="7eGEHDlc$em" role="3cqZAp">
            <node concept="37vLTw" id="7eGEHDlc$en" role="3clFbG">
              <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7eGEHDld_ov" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7eGEHDlc$eo" role="jymVt" />
      <node concept="3clFb_" id="7eGEHDlc$ep" role="jymVt">
        <property role="TrG5h" value="body" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7eGEHDlc$eq" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5uFPQ7BHb5l" role="11_B2D">
            <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7eGEHDlc$es" role="1B3o_S" />
        <node concept="3clFbS" id="7eGEHDlc$et" role="3clF47">
          <node concept="YS8fn" id="2_NfR5wmTaG" role="3cqZAp">
            <node concept="2ShNRf" id="2_NfR5wmTCQ" role="YScLw">
              <node concept="1pGfFk" id="2_NfR5wmTUa" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7eGEHDldApc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="TYqmVPFZAf" role="jymVt" />
      <node concept="3clFb_" id="TYqmVPG0r5" role="jymVt">
        <property role="TrG5h" value="bodyAlternation" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="TYqmVPG0r6" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="2_NfR5wkKtp" role="11_B2D">
            <node concept="3uibUv" id="TYqmVPFYK7" role="3qUE_r">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3uibUv" id="TYqmVPFYL1" role="11_B2D">
                <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="TYqmVPG0r9" role="1B3o_S" />
        <node concept="3clFbS" id="TYqmVPG0rc" role="3clF47">
          <node concept="3clFbF" id="2_NfR5wkzkn" role="3cqZAp">
            <node concept="37vLTw" id="2_NfR5wkzkl" role="3clFbG">
              <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="TYqmVPG0OZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7eGEHDldtSh" role="jymVt" />
      <node concept="3clFb_" id="7eGEHDlduu6" role="jymVt">
        <property role="TrG5h" value="all" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7eGEHDlduu7" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5uFPQ7BH6yV" role="11_B2D">
            <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7eGEHDlduu9" role="1B3o_S" />
        <node concept="3clFbS" id="7eGEHDlduub" role="3clF47">
          <node concept="3clFbF" id="7eGEHDldZQo" role="3cqZAp">
            <node concept="2YIFZM" id="7eGEHDle1bj" role="3clFbG">
              <ref role="1Pybhc" to="3o3z:~Iterables" resolve="Iterables" />
              <ref role="37wK5l" to="3o3z:~Iterables.concat(java.lang.Iterable...):java.lang.Iterable" resolve="concat" />
              <node concept="37vLTw" id="7eGEHDle1im" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$e_" resolve="headKept" />
              </node>
              <node concept="37vLTw" id="7eGEHDle27t" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$eH" resolve="headReplaced" />
              </node>
              <node concept="37vLTw" id="7eGEHDle37$" role="37wK5m">
                <ref role="3cqZAo" node="7eGEHDlc$eP" resolve="guard" />
              </node>
              <node concept="1rXfSq" id="2_NfR5wkFag" role="37wK5m">
                <ref role="37wK5l" node="2_NfR5wkFnF" resolve="flattenBody" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7eGEHDldBg5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2_NfR5wkG0c" role="jymVt" />
      <node concept="3clFb_" id="2_NfR5wkFnF" role="jymVt">
        <property role="TrG5h" value="flattenBody" />
        <node concept="3Tm6S6" id="2_NfR5wkFnG" role="1B3o_S" />
        <node concept="3uibUv" id="2_NfR5wkFnH" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="2_NfR5wkFnI" role="11_B2D">
            <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
          </node>
        </node>
        <node concept="3clFbS" id="2_NfR5wkFni" role="3clF47">
          <node concept="3cpWs8" id="2_NfR5wkFnj" role="3cqZAp">
            <node concept="3cpWsn" id="2_NfR5wkFnk" role="3cpWs9">
              <property role="TrG5h" value="res" />
              <node concept="3uibUv" id="2_NfR5wkFnl" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="2_NfR5wkFnm" role="11_B2D">
                  <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                </node>
              </node>
              <node concept="2ShNRf" id="2_NfR5wkFnn" role="33vP2m">
                <node concept="1pGfFk" id="2_NfR5wkFno" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="2_NfR5wkFnp" role="1pMfVU">
                    <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="2_NfR5wkFnq" role="3cqZAp">
            <node concept="3clFbS" id="2_NfR5wkFnr" role="2LFqv$">
              <node concept="3clFbF" id="2_NfR5wkFns" role="3cqZAp">
                <node concept="2OqwBi" id="2_NfR5wkFnt" role="3clFbG">
                  <node concept="37vLTw" id="2_NfR5wkFnu" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_NfR5wkFnk" resolve="res" />
                  </node>
                  <node concept="liA8E" id="2_NfR5wkFnv" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection):boolean" resolve="addAll" />
                    <node concept="37vLTw" id="2_NfR5wm6m8" role="37wK5m">
                      <ref role="3cqZAo" node="2_NfR5wkFnx" resolve="list" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2_NfR5wkFnx" role="1Duv9x">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="2_NfR5wkFny" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2_NfR5wkFnz" role="11_B2D">
                  <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2_NfR5wkFn$" role="1DdaDG">
              <ref role="3cqZAo" node="7eGEHDlc$eX" resolve="bodyAlternation" />
            </node>
          </node>
          <node concept="3clFbF" id="2_NfR5wkFn_" role="3cqZAp">
            <node concept="37vLTw" id="2_NfR5wkFnA" role="3clFbG">
              <ref role="3cqZAo" node="2_NfR5wkFnk" resolve="res" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7eGEHDlc$ew" role="jymVt" />
      <node concept="312cEg" id="7eGEHDlc$ex" role="jymVt">
        <property role="TrG5h" value="kind" />
        <node concept="3Tm6S6" id="7eGEHDlc$ey" role="1B3o_S" />
        <node concept="3uibUv" id="1HG00HG0Y36" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule$Kind" resolve="Rule.Kind" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$e$" role="jymVt" />
    <node concept="312cEg" id="6lpwCiZjjEm" role="jymVt">
      <property role="TrG5h" value="tag" />
      <node concept="3Tm6S6" id="6lpwCiZjjEn" role="1B3o_S" />
      <node concept="17QB3L" id="6lpwCiZjjEp" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7nPD14Ob4vA" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3Tm6S6" id="7nPD14Ob4vB" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSs9mkS" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="312cEg" id="7nPD14Ob4B1" role="jymVt">
      <property role="TrG5h" value="originRef" />
      <node concept="3Tm6S6" id="7nPD14Ob4B2" role="1B3o_S" />
      <node concept="3uibUv" id="6i42QSs9moZ" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="312cEg" id="7eGEHDlc$e_" role="jymVt">
      <property role="TrG5h" value="headKept" />
      <node concept="3Tm6S6" id="7eGEHDlc$eA" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDlc$eB" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HG00HG1YdR" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eGEHDlc$eD" role="33vP2m">
        <node concept="1pGfFk" id="7eGEHDlc$eE" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
          <node concept="3cmrfG" id="7eGEHDlc$eF" role="37wK5m">
            <property role="3cmrfH" value="4" />
          </node>
          <node concept="3uibUv" id="1HG00HG1ZPp" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7eGEHDlc$eH" role="jymVt">
      <property role="TrG5h" value="headReplaced" />
      <node concept="3Tm6S6" id="7eGEHDlc$eI" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDlc$eJ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HG00HG21te" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eGEHDlc$eL" role="33vP2m">
        <node concept="1pGfFk" id="7eGEHDlc$eM" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
          <node concept="3cmrfG" id="7eGEHDlc$eN" role="37wK5m">
            <property role="3cmrfH" value="4" />
          </node>
          <node concept="3uibUv" id="1HG00HG22UU" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7eGEHDlc$eP" role="jymVt">
      <property role="TrG5h" value="guard" />
      <node concept="3Tm6S6" id="7eGEHDlc$eQ" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDlc$eR" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5uFPQ7BH7BV" role="11_B2D">
          <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eGEHDlc$eT" role="33vP2m">
        <node concept="1pGfFk" id="7eGEHDlc$eU" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
          <node concept="3cmrfG" id="7eGEHDlc$eV" role="37wK5m">
            <property role="3cmrfH" value="4" />
          </node>
          <node concept="3uibUv" id="5uFPQ7BH9Dn" role="1pMfVU">
            <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7eGEHDlc$eX" role="jymVt">
      <property role="TrG5h" value="bodyAlternation" />
      <node concept="3Tm6S6" id="7eGEHDlc$eY" role="1B3o_S" />
      <node concept="3uibUv" id="7eGEHDlc$eZ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2_NfR5wkbAi" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2_NfR5wkcfq" role="11_B2D">
            <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7eGEHDlc$f1" role="33vP2m">
        <node concept="1pGfFk" id="7eGEHDlc$f2" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
          <node concept="3uibUv" id="2_NfR5wkjUe" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="2_NfR5wkkDv" role="11_B2D">
              <ref role="3uigEE" to="av0y:~AndItem" resolve="AndItem" />
            </node>
          </node>
          <node concept="3cmrfG" id="2_NfR5wkrqS" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7eGEHDlc$f6" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2$F5QputikM">
    <property role="TrG5h" value="NamingContext" />
    <node concept="2tJIrI" id="2$F5Qputilx" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPiEo" role="jymVt">
      <property role="TrG5h" value="uniqueName" />
      <node concept="37vLTG" id="7HUwyZaPiEp" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="7HUwyZaPjnM" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        </node>
      </node>
      <node concept="17QB3L" id="7HUwyZaPiEr" role="3clF45" />
      <node concept="3Tm1VV" id="7HUwyZaPiEs" role="1B3o_S" />
      <node concept="3clFbS" id="7HUwyZaPiEt" role="3clF47">
        <node concept="3cpWs6" id="7HUwyZaPiEu" role="3cqZAp">
          <node concept="1rXfSq" id="7HUwyZaPiEv" role="3cqZAk">
            <ref role="37wK5l" node="7HUwyZaPhk$" resolve="cachedOrMakeUnique" />
            <node concept="37vLTw" id="7HUwyZaPiEw" role="37wK5m">
              <ref role="3cqZAo" node="7HUwyZaPiEp" resolve="logical" />
            </node>
            <node concept="2OqwBi" id="7HUwyZaPiEx" role="37wK5m">
              <node concept="37vLTw" id="7HUwyZaPiEy" role="2Oq$k0">
                <ref role="3cqZAo" node="7HUwyZaPiEp" resolve="logical" />
              </node>
              <node concept="liA8E" id="7HUwyZaPiEz" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~MetaLogical.name():java.lang.String" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7HUwyZaPhFV" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaPhk$" role="jymVt">
      <property role="TrG5h" value="cachedOrMakeUnique" />
      <node concept="3Tm6S6" id="7HUwyZaPhk_" role="1B3o_S" />
      <node concept="17QB3L" id="7HUwyZaPhkA" role="3clF45" />
      <node concept="37vLTG" id="7HUwyZaPhkq" role="3clF46">
        <property role="TrG5h" value="named" />
        <node concept="3uibUv" id="7HUwyZaPi12" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="7HUwyZaPhks" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7HUwyZaPhkt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7HUwyZaPhk6" role="3clF47">
        <node concept="3clFbJ" id="7HUwyZaPhk7" role="3cqZAp">
          <node concept="3clFbS" id="7HUwyZaPhk8" role="3clFbx">
            <node concept="3clFbF" id="7HUwyZaPhk9" role="3cqZAp">
              <node concept="2OqwBi" id="7HUwyZaPhka" role="3clFbG">
                <node concept="37vLTw" id="7HUwyZaPhkb" role="2Oq$k0">
                  <ref role="3cqZAo" node="2$F5Qputtl8" resolve="cachedUnique" />
                </node>
                <node concept="liA8E" id="7HUwyZaPhkc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                  <node concept="37vLTw" id="7HUwyZaPhku" role="37wK5m">
                    <ref role="3cqZAo" node="7HUwyZaPhkq" resolve="named" />
                  </node>
                  <node concept="1rXfSq" id="7HUwyZaPhke" role="37wK5m">
                    <ref role="37wK5l" node="2$F5Qputrbb" resolve="makeUnique" />
                    <node concept="37vLTw" id="7HUwyZaPhkw" role="37wK5m">
                      <ref role="3cqZAo" node="7HUwyZaPhks" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7HUwyZaPhkg" role="3clFbw">
            <node concept="2OqwBi" id="7HUwyZaPhkh" role="3fr31v">
              <node concept="37vLTw" id="7HUwyZaPhki" role="2Oq$k0">
                <ref role="3cqZAo" node="2$F5Qputtl8" resolve="cachedUnique" />
              </node>
              <node concept="liA8E" id="7HUwyZaPhkj" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="7HUwyZaPhkx" role="37wK5m">
                  <ref role="3cqZAo" node="7HUwyZaPhkq" resolve="named" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZaPhkl" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZaPhkm" role="3clFbG">
            <node concept="37vLTw" id="7HUwyZaPhkn" role="2Oq$k0">
              <ref role="3cqZAo" node="2$F5Qputtl8" resolve="cachedUnique" />
            </node>
            <node concept="liA8E" id="7HUwyZaPhko" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="7HUwyZaPhkv" role="37wK5m">
                <ref role="3cqZAo" node="7HUwyZaPhkq" resolve="named" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5Qputiyw" role="jymVt" />
    <node concept="3clFb_" id="2$F5Qputrbb" role="jymVt">
      <property role="TrG5h" value="makeUnique" />
      <node concept="17QB3L" id="2$F5QputrI9" role="3clF45" />
      <node concept="3Tm6S6" id="2$F5QputvYb" role="1B3o_S" />
      <node concept="3clFbS" id="2$F5Qputrbf" role="3clF47">
        <node concept="3cpWs8" id="6KkyQm3YW6m" role="3cqZAp">
          <node concept="3cpWsn" id="6KkyQm3YW6n" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="10Oyi0" id="6KkyQm3YW6k" role="1tU5fm" />
            <node concept="1rXfSq" id="6KkyQm3YW6o" role="33vP2m">
              <ref role="37wK5l" node="6KkyQm3YIHb" resolve="getAndIncrementCounter" />
              <node concept="37vLTw" id="6KkyQm3YW6p" role="37wK5m">
                <ref role="3cqZAo" node="2$F5Qputs7K" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KkyQm3YVV7" role="3cqZAp">
          <node concept="3K4zz7" id="6KkyQm3YWFm" role="3clFbG">
            <node concept="37vLTw" id="6KkyQm3YWGp" role="3K4E3e">
              <ref role="3cqZAo" node="2$F5Qputs7K" resolve="name" />
            </node>
            <node concept="3cpWs3" id="6KkyQm3YWK4" role="3K4GZi">
              <node concept="37vLTw" id="6KkyQm3YWKp" role="3uHU7w">
                <ref role="3cqZAo" node="6KkyQm3YW6n" resolve="c" />
              </node>
              <node concept="37vLTw" id="6KkyQm3YWH4" role="3uHU7B">
                <ref role="3cqZAo" node="2$F5Qputs7K" resolve="name" />
              </node>
            </node>
            <node concept="3clFbC" id="6KkyQm3YWrJ" role="3K4Cdx">
              <node concept="3cmrfG" id="6KkyQm3YWuO" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6KkyQm3YW6q" role="3uHU7B">
                <ref role="3cqZAo" node="6KkyQm3YW6n" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2$F5Qputs7K" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2$F5Qputs7J" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputqPl" role="jymVt" />
    <node concept="3clFb_" id="6KkyQm3YIHb" role="jymVt">
      <property role="TrG5h" value="getAndIncrementCounter" />
      <node concept="10Oyi0" id="6KkyQm3YKix" role="3clF45" />
      <node concept="3Tm6S6" id="6KkyQm3YIKB" role="1B3o_S" />
      <node concept="3clFbS" id="6KkyQm3YIHf" role="3clF47">
        <node concept="3cpWs8" id="6KkyQm3YOGH" role="3cqZAp">
          <node concept="3cpWsn" id="6KkyQm3YOGI" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="6KkyQm3YOGz" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="3K4zz7" id="6KkyQm3YTy1" role="33vP2m">
              <node concept="2OqwBi" id="6KkyQm3YTU3" role="3K4E3e">
                <node concept="37vLTw" id="6KkyQm3YTGW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2$F5Qputiuc" resolve="uniqueCounters" />
                </node>
                <node concept="liA8E" id="6KkyQm3YUh_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="6KkyQm3YUrO" role="37wK5m">
                    <ref role="3cqZAo" node="6KkyQm3YIVT" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="6KkyQm3YUxd" role="3K4GZi">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="6KkyQm3YTeZ" role="3K4Cdx">
                <node concept="37vLTw" id="6KkyQm3YTf0" role="2Oq$k0">
                  <ref role="3cqZAo" node="2$F5Qputiuc" resolve="uniqueCounters" />
                </node>
                <node concept="liA8E" id="6KkyQm3YTf1" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                  <node concept="37vLTw" id="6KkyQm3YTf2" role="37wK5m">
                    <ref role="3cqZAo" node="6KkyQm3YIVT" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KkyQm3YPci" role="3cqZAp">
          <node concept="2OqwBi" id="6KkyQm3YPtG" role="3clFbG">
            <node concept="37vLTw" id="6KkyQm3YPcg" role="2Oq$k0">
              <ref role="3cqZAo" node="2$F5Qputiuc" resolve="uniqueCounters" />
            </node>
            <node concept="liA8E" id="6KkyQm3YPXe" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="6KkyQm3YQ59" role="37wK5m">
                <ref role="3cqZAo" node="6KkyQm3YIVT" resolve="name" />
              </node>
              <node concept="3cpWs3" id="6KkyQm44fmr" role="37wK5m">
                <node concept="3cmrfG" id="6KkyQm44fmK" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="6KkyQm44ffB" role="3uHU7B">
                  <ref role="3cqZAo" node="6KkyQm3YOGI" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6KkyQm3YNI3" role="3cqZAp">
          <node concept="37vLTw" id="6KkyQm3YOGN" role="3clFbG">
            <ref role="3cqZAo" node="6KkyQm3YOGI" resolve="c" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6KkyQm3YIVT" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6KkyQm3YIVS" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputiyL" role="jymVt" />
    <node concept="312cEg" id="2$F5Qputiuc" role="jymVt">
      <property role="TrG5h" value="uniqueCounters" />
      <node concept="3Tm6S6" id="2$F5Qputiud" role="1B3o_S" />
      <node concept="3uibUv" id="2$F5QputiuG" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="2$F5Qputiv5" role="11_B2D" />
        <node concept="3uibUv" id="2$F5QputiwU" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="2ShNRf" id="2$F5QputlyY" role="33vP2m">
        <node concept="1pGfFk" id="2$F5QputmMW" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="17QB3L" id="2$F5QputmUF" role="1pMfVU" />
          <node concept="3uibUv" id="2$F5Qputn5D" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputsV9" role="jymVt" />
    <node concept="312cEg" id="2$F5Qputtl8" role="jymVt">
      <property role="TrG5h" value="cachedUnique" />
      <node concept="3Tm6S6" id="2$F5Qputtl9" role="1B3o_S" />
      <node concept="3uibUv" id="2$F5Qputtyw" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7HUwyZaPgOl" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="17QB3L" id="2$F5Qputt$o" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="2$F5QputtAZ" role="33vP2m">
        <node concept="1pGfFk" id="2$F5QputtRA" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~IdentityHashMap.&lt;init&gt;()" resolve="IdentityHashMap" />
          <node concept="3uibUv" id="7HUwyZaPgXT" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="17QB3L" id="2$F5Qputu0m" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputsHN" role="jymVt" />
    <node concept="3Tm1VV" id="2$F5QputikN" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7nPD14NOCSa">
    <property role="TrG5h" value="MetaLogicalFactory" />
    <node concept="2tJIrI" id="7nPD14O1soX" role="jymVt" />
    <node concept="2YIFZL" id="7nPD14NOCTS" role="jymVt">
      <property role="TrG5h" value="metaLogical" />
      <node concept="37vLTG" id="7nPD14NODps" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7nPD14NODpt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nPD14NODpu" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NODpv" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="7nPD14NOHFA" role="11_B2D">
            <ref role="16sUi3" node="7nPD14NOHEv" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7nPD14NOCUy" role="3clF45">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
      </node>
      <node concept="3Tm1VV" id="7nPD14NOCTV" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14NOCTW" role="3clF47">
        <node concept="3clFbF" id="7nPD14NODrD" role="3cqZAp">
          <node concept="2ShNRf" id="7nPD14NODrB" role="3clFbG">
            <node concept="1pGfFk" id="7nPD14NOD$h" role="2ShVmc">
              <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
              <node concept="37vLTw" id="7nPD14NOFsO" role="37wK5m">
                <ref role="3cqZAo" node="7nPD14NODps" resolve="name" />
              </node>
              <node concept="37vLTw" id="7nPD14NOHDs" role="37wK5m">
                <ref role="3cqZAo" node="7nPD14NODpu" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7nPD14NOHEv" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NOHIY" role="jymVt" />
    <node concept="2YIFZL" id="7nPD14NOI_T" role="jymVt">
      <property role="TrG5h" value="multiMetaLogical" />
      <node concept="37vLTG" id="7nPD14NOI_U" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7nPD14NOI_V" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nPD14NOI_W" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NOI_X" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="7nPD14NOI_Y" role="11_B2D">
            <ref role="16sUi3" node="7nPD14NOIA7" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nPD14NOIRc" role="3clF46">
        <property role="TrG5h" value="cardinality" />
        <node concept="10Oyi0" id="7nPD14NOISV" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7nPD14NOIGv" role="3clF45">
        <ref role="3uigEE" to="bj13:~MultiMetaLogical" resolve="MultiMetaLogical" />
      </node>
      <node concept="3Tm1VV" id="7nPD14NOIA0" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14NOIA1" role="3clF47">
        <node concept="3clFbF" id="7nPD14NOIA2" role="3cqZAp">
          <node concept="2ShNRf" id="7nPD14NOIA3" role="3clFbG">
            <node concept="1pGfFk" id="7nPD14NOIA4" role="2ShVmc">
              <ref role="37wK5l" to="bj13:~MultiMetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class,int)" resolve="MultiMetaLogical" />
              <node concept="37vLTw" id="7nPD14NOIA5" role="37wK5m">
                <ref role="3cqZAo" node="7nPD14NOI_U" resolve="name" />
              </node>
              <node concept="37vLTw" id="7nPD14NOIA6" role="37wK5m">
                <ref role="3cqZAo" node="7nPD14NOI_W" resolve="type" />
              </node>
              <node concept="37vLTw" id="7nPD14NOJ0q" role="37wK5m">
                <ref role="3cqZAo" node="7nPD14NOIRc" resolve="cardinality" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7nPD14NOIA7" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14NOIs7" role="jymVt" />
    <node concept="2YIFZL" id="7nPD14NOHGU" role="jymVt">
      <property role="TrG5h" value="wildcardMetaLogical" />
      <node concept="37vLTG" id="7nPD14NOHGX" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7nPD14NOHGY" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="7nPD14NOHGZ" role="11_B2D">
            <ref role="16sUi3" node="7nPD14NOHH8" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7nPD14NOHH0" role="3clF45">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
      </node>
      <node concept="3Tm1VV" id="7nPD14NOHH1" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14NOHH2" role="3clF47">
        <node concept="3clFbF" id="7nPD14NOHH3" role="3cqZAp">
          <node concept="2ShNRf" id="7nPD14NOHH4" role="3clFbG">
            <node concept="1pGfFk" id="7nPD14NOHH5" role="2ShVmc">
              <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.Class)" resolve="MetaLogical" />
              <node concept="37vLTw" id="7nPD14NOHH7" role="37wK5m">
                <ref role="3cqZAo" node="7nPD14NOHGX" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7nPD14NOHH8" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nPD14O1iIK" role="jymVt" />
    <node concept="3Tm1VV" id="7nPD14NOCSb" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7nPD14OaO1O">
    <property role="TrG5h" value="RuleEx" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7nPD14OaO2C" role="jymVt" />
    <node concept="3clFb_" id="7nPD14Ob4em" role="jymVt">
      <property role="TrG5h" value="originRef" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="6i42QSs9msQ" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="7nPD14Ob4ep" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14Ob4eq" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7nPD14Ob4kL" role="jymVt" />
    <node concept="3clFb_" id="7nPD14Ob4lt" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="6i42QSs9mt4" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="7nPD14Ob4lw" role="1B3o_S" />
      <node concept="3clFbS" id="7nPD14Ob4lx" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7nPD14OaO2E" role="jymVt" />
    <node concept="3Tm1VV" id="7nPD14OaO1P" role="1B3o_S" />
    <node concept="3uibUv" id="7nPD14OaO2v" role="1zkMxy">
      <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
    </node>
  </node>
  <node concept="312cEu" id="4sSe4$oM01W">
    <property role="TrG5h" value="ConstraintBuilder" />
    <node concept="2tJIrI" id="4sSe4$oSHLP" role="jymVt" />
    <node concept="Wx3nA" id="4sSe4$oSjkE" role="jymVt">
      <property role="TrG5h" value="EMPTY_ARGS" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="4sSe4$oSjb$" role="1tU5fm">
        <node concept="3uibUv" id="4sSe4$oSjb_" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4sSe4$oSjbz" role="1B3o_S" />
      <node concept="2ShNRf" id="4sSe4$oSjbA" role="33vP2m">
        <node concept="3$_iS1" id="4sSe4$oSjbB" role="2ShVmc">
          <node concept="3$GHV9" id="4sSe4$oSjbC" role="3$GQph">
            <node concept="3cmrfG" id="4sSe4$oSjbD" role="3$I4v7">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uibUv" id="4sSe4$oSjbE" role="3$_nBY">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oSHUb" role="jymVt" />
    <node concept="Wx3nA" id="4sSe4$oSjPd" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EMPTY_LOGICALS" />
      <node concept="3Tm6S6" id="4sSe4$oSjP3" role="1B3o_S" />
      <node concept="10Q1$e" id="4sSe4$oSjP4" role="1tU5fm">
        <node concept="3uibUv" id="4sSe4$oSjP5" role="10Q1$1">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3qTvmN" id="4sSe4$oSjP6" role="11_B2D" />
        </node>
      </node>
      <node concept="2ShNRf" id="4sSe4$oSjP7" role="33vP2m">
        <node concept="3$_iS1" id="4sSe4$oSjP8" role="2ShVmc">
          <node concept="3$GHV9" id="4sSe4$oSjP9" role="3$GQph">
            <node concept="3cmrfG" id="4sSe4$oSjPa" role="3$I4v7">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uibUv" id="4sSe4$oSjPb" role="3$_nBY">
            <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
            <node concept="3qTvmN" id="4sSe4$oSjPc" role="11_B2D" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM02g" role="jymVt" />
    <node concept="3clFbW" id="4sSe4$oM2rk" role="jymVt">
      <node concept="37vLTG" id="4sSe4$oM2rW" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="4sSe4$oM2rX" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3cqZAl" id="4sSe4$oM2rm" role="3clF45" />
      <node concept="3Tm1VV" id="4sSe4$oM2rn" role="1B3o_S" />
      <node concept="3clFbS" id="4sSe4$oM2ro" role="3clF47">
        <node concept="3clFbF" id="4sSe4$oM5Pw" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$oM5Py" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$oM5PA" role="37vLTJ">
              <node concept="Xjq3P" id="4sSe4$oM5PD" role="2Oq$k0" />
              <node concept="2OwXpG" id="4sSe4$oM5P_" role="2OqNvi">
                <ref role="2Oxat5" node="4sSe4$oM5Ps" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="4sSe4$oM5PE" role="37vLTx">
              <ref role="3cqZAo" node="4sSe4$oM2rW" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM2qs" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$oM2sT" role="jymVt">
      <property role="TrG5h" value="withArguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="429xoypV5Zt" role="3clF47">
        <node concept="3clFbF" id="4sSe4$oM5SE" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$oM5SG" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$oM5SK" role="37vLTJ">
              <node concept="Xjq3P" id="4sSe4$oM5SN" role="2Oq$k0" />
              <node concept="2OwXpG" id="4sSe4$oM5SJ" role="2OqNvi">
                <ref role="2Oxat5" node="4sSe4$oM5S_" resolve="args" />
              </node>
            </node>
            <node concept="37vLTw" id="4sSe4$oM5SO" role="37vLTx">
              <ref role="3cqZAo" node="429xoypV5Zn" resolve="args" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$oM64Z" role="3cqZAp">
          <node concept="Xjq3P" id="4sSe4$oM64X" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="429xoypV5Zn" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="429xoypV5Zo" role="1tU5fm">
          <node concept="3uibUv" id="429xoypV5Zp" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4sSe4$oM07A" role="3clF45">
        <ref role="3uigEE" node="4sSe4$oM01W" resolve="ConstraintBuilder" />
      </node>
      <node concept="3Tm1VV" id="429xoypV5Zr" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4sSe4$oM02i" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$oM05h" role="jymVt">
      <property role="TrG5h" value="withPatternLogicals" />
      <node concept="3uibUv" id="4sSe4$oM2tC" role="3clF45">
        <ref role="3uigEE" node="4sSe4$oM01W" resolve="ConstraintBuilder" />
      </node>
      <node concept="3Tm1VV" id="4sSe4$oM05k" role="1B3o_S" />
      <node concept="3clFbS" id="4sSe4$oM05l" role="3clF47">
        <node concept="3clFbF" id="4sSe4$oSgKW" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$oSgKY" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$oSgL2" role="37vLTJ">
              <node concept="Xjq3P" id="4sSe4$oSgL5" role="2Oq$k0" />
              <node concept="2OwXpG" id="4sSe4$oSgL1" role="2OqNvi">
                <ref role="2Oxat5" node="4sSe4$oSgKQ" resolve="logicals" />
              </node>
            </node>
            <node concept="37vLTw" id="4sSe4$oSgL6" role="37vLTx">
              <ref role="3cqZAo" node="4sSe4$oM2vc" resolve="logicals" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$oSkHd" role="3cqZAp">
          <node concept="Xjq3P" id="4sSe4$oSkHb" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="4sSe4$oM2vc" role="3clF46">
        <property role="TrG5h" value="logicals" />
        <node concept="8X2XB" id="4sSe4$oM2wy" role="1tU5fm">
          <node concept="3uibUv" id="4sSe4$oM2vb" role="8Xvag">
            <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
            <node concept="3qTvmN" id="4sSe4$oM2wb" role="11_B2D" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM02l" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$oM2zI" role="jymVt">
      <property role="TrG5h" value="toConstraint" />
      <node concept="3uibUv" id="1HG00HG1GZm" role="3clF45">
        <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="4sSe4$oM2zL" role="1B3o_S" />
      <node concept="3clFbS" id="4sSe4$oM2zM" role="3clF47">
        <node concept="3clFbF" id="429xoypVGks" role="3cqZAp">
          <node concept="2ShNRf" id="429xoypVGkq" role="3clFbG">
            <node concept="1pGfFk" id="429xoypVIuq" role="2ShVmc">
              <ref role="37wK5l" to="yg8f:5uFPQ7BZtsU" resolve="AbstractConstraint" />
              <node concept="37vLTw" id="429xoypVIwj" role="37wK5m">
                <ref role="3cqZAo" node="4sSe4$oM5Ps" resolve="symbol" />
              </node>
              <node concept="37vLTw" id="429xoypVI$L" role="37wK5m">
                <ref role="3cqZAo" node="4sSe4$oM5S_" resolve="args" />
              </node>
              <node concept="37vLTw" id="4sSe4$oUOIZ" role="37wK5m">
                <ref role="3cqZAo" node="4sSe4$oSgKQ" resolve="logicals" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM2yz" role="jymVt" />
    <node concept="3Tm1VV" id="4sSe4$oM01X" role="1B3o_S" />
    <node concept="312cEg" id="4sSe4$oM5Ps" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="4sSe4$oM5Pt" role="1B3o_S" />
      <node concept="3uibUv" id="4sSe4$oM5Pv" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM5Zr" role="jymVt" />
    <node concept="312cEg" id="4sSe4$oM5S_" role="jymVt">
      <property role="TrG5h" value="args" />
      <node concept="3Tm6S6" id="4sSe4$oM5SA" role="1B3o_S" />
      <node concept="10Q1$e" id="4sSe4$oM5Xi" role="1tU5fm">
        <node concept="3uibUv" id="4sSe4$oM5SD" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTw" id="4sSe4$oSjA7" role="33vP2m">
        <ref role="3cqZAo" node="4sSe4$oSjkE" resolve="EMPTY_ARGS" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oN00V" role="jymVt" />
    <node concept="312cEg" id="4sSe4$oSgKQ" role="jymVt">
      <property role="TrG5h" value="logicals" />
      <node concept="3Tm6S6" id="4sSe4$oSgKR" role="1B3o_S" />
      <node concept="10Q1$e" id="4sSe4$oSgY0" role="1tU5fm">
        <node concept="3uibUv" id="4sSe4$oSgKU" role="10Q1$1">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          <node concept="3qTvmN" id="4sSe4$oSgKV" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTw" id="4sSe4$oSjPg" role="33vP2m">
        <ref role="3cqZAo" node="4sSe4$oSjPd" resolve="EMPTY_LOGICALS" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oYwt9" role="jymVt" />
  </node>
  <node concept="312cEu" id="4sSe4$oM2B2">
    <property role="TrG5h" value="PredicateBuilder" />
    <node concept="2tJIrI" id="4sSe4$oZ0Pv" role="jymVt" />
    <node concept="Wx3nA" id="4sSe4$oSkdA" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EMPTY_ARGS" />
      <node concept="3Tm6S6" id="4sSe4$oSkdu" role="1B3o_S" />
      <node concept="10Q1$e" id="4sSe4$oSkdv" role="1tU5fm">
        <node concept="3uibUv" id="4sSe4$oSkdw" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="4sSe4$oSkdx" role="33vP2m">
        <node concept="3$_iS1" id="4sSe4$oSkdy" role="2ShVmc">
          <node concept="3$GHV9" id="4sSe4$oSkdz" role="3$GQph">
            <node concept="3cmrfG" id="4sSe4$oSkd$" role="3$I4v7">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uibUv" id="4sSe4$oSkd_" role="3$_nBY">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM2B3" role="jymVt" />
    <node concept="3clFbW" id="4sSe4$oM2B4" role="jymVt">
      <node concept="37vLTG" id="4sSe4$oM2B5" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="4sSe4$oM2CN" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3cqZAl" id="4sSe4$oM2B7" role="3clF45" />
      <node concept="3Tm1VV" id="4sSe4$oM2B8" role="1B3o_S" />
      <node concept="3clFbS" id="4sSe4$oM2B9" role="3clF47">
        <node concept="3clFbF" id="4sSe4$oM2YS" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$oM2YU" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$oM2YY" role="37vLTJ">
              <node concept="Xjq3P" id="4sSe4$oM2Z1" role="2Oq$k0" />
              <node concept="2OwXpG" id="4sSe4$oM2YX" role="2OqNvi">
                <ref role="2Oxat5" node="4sSe4$oM2YO" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="4sSe4$oM2Z2" role="37vLTx">
              <ref role="3cqZAo" node="4sSe4$oM2B5" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM2Ba" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$oM2Bb" role="jymVt">
      <property role="TrG5h" value="withArguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4sSe4$oM2Bc" role="3clF47">
        <node concept="3clFbF" id="4sSe4$oM2EQ" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$oM2ES" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$oM2EW" role="37vLTJ">
              <node concept="Xjq3P" id="4sSe4$oM2EZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="4sSe4$oM2EV" role="2OqNvi">
                <ref role="2Oxat5" node="4sSe4$oM2EL" resolve="args" />
              </node>
            </node>
            <node concept="37vLTw" id="4sSe4$oM2F0" role="37vLTx">
              <ref role="3cqZAo" node="4sSe4$oM2Bd" resolve="args" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$oM3No" role="3cqZAp">
          <node concept="Xjq3P" id="4sSe4$oM3Nm" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="4sSe4$oM2Bd" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="4sSe4$oM2Be" role="1tU5fm">
          <node concept="3uibUv" id="4sSe4$oM2Bf" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4sSe4$oM2Bg" role="3clF45">
        <ref role="3uigEE" node="4sSe4$oM2B2" resolve="PredicateBuilder" />
      </node>
      <node concept="3Tm1VV" id="4sSe4$oM2Bh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4sSe4$oM2Bi" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$oM2Bs" role="jymVt">
      <property role="TrG5h" value="toPredicate" />
      <node concept="3uibUv" id="4sSe4$oM4dc" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="4sSe4$oM2Bu" role="1B3o_S" />
      <node concept="3clFbS" id="4sSe4$oM2Bv" role="3clF47">
        <node concept="3SKdUt" id="7rf49NgpNhe" role="3cqZAp">
          <node concept="3SKdUq" id="7rf49NgpNhg" role="3SKWNk">
            <property role="3SKdUp" value="FIXME the predicate symbols must not be hardcoded!" />
          </node>
        </node>
        <node concept="3clFbJ" id="429xoypW6DU" role="3cqZAp">
          <node concept="3clFbS" id="429xoypW6DV" role="3clFbx">
            <node concept="3cpWs6" id="429xoypW6N_" role="3cqZAp">
              <node concept="2ShNRf" id="429xoypW6UY" role="3cqZAk">
                <node concept="1pGfFk" id="429xoypW7wN" role="2ShVmc">
                  <ref role="37wK5l" to="cxk7:429xoyqax91" resolve="JavaPredicate" />
                  <node concept="10QFUN" id="429xoypW8pV" role="37wK5m">
                    <node concept="3uibUv" id="429xoypW8pT" role="10QFUM">
                      <ref role="3uigEE" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
                    </node>
                    <node concept="37vLTw" id="429xoypW8pU" role="10QFUP">
                      <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="429xoypW8dW" role="37wK5m">
                    <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="429xoypW6HX" role="3clFbw">
            <node concept="3uibUv" id="429xoypW6Ld" role="2ZW6by">
              <ref role="3uigEE" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
            </node>
            <node concept="37vLTw" id="429xoypW6EG" role="2ZW6bz">
              <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="429xoypW8M3" role="3cqZAp">
          <node concept="3clFbS" id="429xoypW8M5" role="3clFbx">
            <node concept="3cpWs6" id="429xoypW96T" role="3cqZAp">
              <node concept="2ShNRf" id="429xoypW97H" role="3cqZAk">
                <node concept="1pGfFk" id="429xoypW9I$" role="2ShVmc">
                  <ref role="37wK5l" to="cxk7:4xBopTzmopz" resolve="UnificationPredicate" />
                  <node concept="AH0OO" id="429xoyq8NSi" role="37wK5m">
                    <node concept="3cmrfG" id="429xoyq8O3V" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="429xoypWa7J" role="AHHXb">
                      <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="429xoyq8OEn" role="37wK5m">
                    <node concept="3cmrfG" id="429xoyq8OF7" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="429xoyq8Ouh" role="AHHXb">
                      <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="429xoypW8ZJ" role="3clFbw">
            <node concept="10M0yZ" id="429xoypW93t" role="3uHU7w">
              <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
              <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
            </node>
            <node concept="37vLTw" id="429xoypW8Yl" role="3uHU7B">
              <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="429xoypWajI" role="3cqZAp">
          <node concept="3clFbS" id="429xoypWajJ" role="3clFbx">
            <node concept="3cpWs6" id="429xoypWajK" role="3cqZAp">
              <node concept="2ShNRf" id="429xoypWajL" role="3cqZAk">
                <node concept="1pGfFk" id="429xoypWajM" role="2ShVmc">
                  <ref role="37wK5l" to="cxk7:4xBopTzo_Q1" resolve="EqualsPredicate" />
                  <node concept="AH0OO" id="429xoyq8OUf" role="37wK5m">
                    <node concept="3cmrfG" id="429xoyq8OUg" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="429xoyq8OUh" role="AHHXb">
                      <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="429xoyq8OUi" role="37wK5m">
                    <node concept="3cmrfG" id="429xoyq8OUj" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="429xoyq8OUk" role="AHHXb">
                      <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="429xoypWajP" role="3clFbw">
            <node concept="10M0yZ" id="429xoypWayy" role="3uHU7w">
              <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
              <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            </node>
            <node concept="37vLTw" id="429xoypWajR" role="3uHU7B">
              <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="429xoypWaLC" role="3cqZAp">
          <node concept="3clFbS" id="429xoypWaLD" role="3clFbx">
            <node concept="3cpWs6" id="429xoypWaLE" role="3cqZAp">
              <node concept="2ShNRf" id="429xoypWaLF" role="3cqZAk">
                <node concept="1pGfFk" id="429xoypWaLG" role="2ShVmc">
                  <ref role="37wK5l" to="cxk7:4xBopTzrPWl" resolve="AssertPredicate" />
                  <node concept="AH0OO" id="429xoypWbly" role="37wK5m">
                    <node concept="3cmrfG" id="429xoypWbvG" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="429xoypWaLI" role="AHHXb">
                      <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="429xoypWaLJ" role="3clFbw">
            <node concept="10M0yZ" id="429xoypWaLK" role="3uHU7w">
              <ref role="3cqZAo" to="cxk7:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
              <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
            </node>
            <node concept="37vLTw" id="429xoypWaLL" role="3uHU7B">
              <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="429xoypWbWs" role="3cqZAp">
          <node concept="3clFbS" id="429xoypWbWt" role="3clFbx">
            <node concept="3cpWs6" id="429xoypWbWu" role="3cqZAp">
              <node concept="2YIFZM" id="429xoypWdny" role="3cqZAk">
                <ref role="1Pybhc" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
                <ref role="37wK5l" to="cxk7:5uFPQ7CiQEd" resolve="FREE" />
                <node concept="AH0OO" id="429xoypWdKi" role="37wK5m">
                  <node concept="3cmrfG" id="429xoypWdV8" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="429xoypWd_w" role="AHHXb">
                    <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="429xoypWbW$" role="3clFbw">
            <node concept="10M0yZ" id="429xoypWbW_" role="3uHU7w">
              <ref role="3cqZAo" to="cxk7:5uFPQ7C279$" resolve="FREE_SYM" />
              <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
            </node>
            <node concept="37vLTw" id="429xoypWbWA" role="3uHU7B">
              <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="429xoypWe8V" role="3cqZAp">
          <node concept="3clFbS" id="429xoypWe8W" role="3clFbx">
            <node concept="3cpWs6" id="429xoypWe8X" role="3cqZAp">
              <node concept="2YIFZM" id="429xoypWeqd" role="3cqZAk">
                <ref role="37wK5l" to="cxk7:5uFPQ7CiPYx" resolve="BOUND" />
                <ref role="1Pybhc" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
                <node concept="AH0OO" id="429xoypWeqe" role="37wK5m">
                  <node concept="3cmrfG" id="429xoypWeqf" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="429xoypWeqg" role="AHHXb">
                    <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="429xoypWe92" role="3clFbw">
            <node concept="10M0yZ" id="429xoypWe93" role="3uHU7w">
              <ref role="3cqZAo" to="cxk7:5uFPQ7C26$b" resolve="BOUND_SYM" />
              <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
            </node>
            <node concept="37vLTw" id="429xoypWe94" role="3uHU7B">
              <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7rf49NgpNI2" role="3cqZAp">
          <node concept="3clFbS" id="7rf49NgpNI3" role="3clFbx">
            <node concept="3cpWs6" id="7rf49NgpNI4" role="3cqZAp">
              <node concept="2ShNRf" id="7rf49NgpPss" role="3cqZAk">
                <node concept="1pGfFk" id="7rf49NgpQeO" role="2ShVmc">
                  <ref role="37wK5l" to="cxk7:7rf49NgkbFA" resolve="NotPredicate" />
                  <node concept="10QFUN" id="7rf49NgpSHW" role="37wK5m">
                    <node concept="3uibUv" id="7rf49NgpSHS" role="10QFUM">
                      <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                    </node>
                    <node concept="AH0OO" id="7rf49NgpSHT" role="10QFUP">
                      <node concept="3cmrfG" id="7rf49NgpSHU" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="7rf49NgpSHV" role="AHHXb">
                        <ref role="3cqZAo" node="4sSe4$oM2EL" resolve="args" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7rf49NgpNI9" role="3clFbw">
            <node concept="10M0yZ" id="7rf49NgpNIa" role="3uHU7w">
              <ref role="1PxDUh" to="cxk7:7rf49NgkbDQ" resolve="NotPredicate" />
              <ref role="3cqZAo" to="cxk7:7rf49Ngke3n" resolve="NOT_SYM" />
            </node>
            <node concept="37vLTw" id="7rf49NgpNIb" role="3uHU7B">
              <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="429xoypWfOD" role="3cqZAp">
          <node concept="2ShNRf" id="429xoypWg1a" role="YScLw">
            <node concept="1pGfFk" id="429xoypWgtn" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="429xoypWgFJ" role="37wK5m">
                <node concept="37vLTw" id="429xoypWgIw" role="3uHU7w">
                  <ref role="3cqZAo" node="4sSe4$oM2YO" resolve="symbol" />
                </node>
                <node concept="Xl_RD" id="429xoypWguJ" role="3uHU7B">
                  <property role="Xl_RC" value="unknown predicate symbol: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oM2Bw" role="jymVt" />
    <node concept="3Tm1VV" id="4sSe4$oM2Bx" role="1B3o_S" />
    <node concept="312cEg" id="4sSe4$oM2EL" role="jymVt">
      <property role="TrG5h" value="args" />
      <node concept="3Tm6S6" id="4sSe4$oM2EM" role="1B3o_S" />
      <node concept="10Q1$e" id="4sSe4$oM2I0" role="1tU5fm">
        <node concept="3uibUv" id="4sSe4$oM2EP" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTw" id="4sSe4$oSkdD" role="33vP2m">
        <ref role="3cqZAo" node="4sSe4$oSkdA" resolve="EMPTY_ARGS" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oMYLV" role="jymVt" />
    <node concept="312cEg" id="4sSe4$oM2YO" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="4sSe4$oM2YP" role="1B3o_S" />
      <node concept="3uibUv" id="4sSe4$oM2YR" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oMZ04" role="jymVt" />
  </node>
  <node concept="312cEu" id="18kNIl1vDPZ">
    <property role="TrG5h" value="ApplicationSession" />
    <node concept="2tJIrI" id="18kNIl1vDQp" role="jymVt" />
    <node concept="3clFbW" id="4JJCDImSW0_" role="jymVt">
      <node concept="37vLTG" id="4JJCDImSW1u" role="3clF46">
        <property role="TrG5h" value="typeTemplates" />
        <node concept="3uibUv" id="Ya9Z$kQMuo" role="1tU5fm">
          <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateCollection" />
        </node>
      </node>
      <node concept="3cqZAl" id="4JJCDImSW0B" role="3clF45" />
      <node concept="3Tm1VV" id="4JJCDImSW0C" role="1B3o_S" />
      <node concept="3clFbS" id="4JJCDImSW0D" role="3clF47">
        <node concept="3clFbF" id="Ya9Z$kQMM4" role="3cqZAp">
          <node concept="37vLTI" id="Ya9Z$kQMM6" role="3clFbG">
            <node concept="2OqwBi" id="Ya9Z$kQQ5O" role="37vLTJ">
              <node concept="Xjq3P" id="Ya9Z$kQQ7R" role="2Oq$k0" />
              <node concept="2OwXpG" id="Ya9Z$kQQ5R" role="2OqNvi">
                <ref role="2Oxat5" node="Ya9Z$kQMM0" resolve="typeTemplates" />
              </node>
            </node>
            <node concept="37vLTw" id="Ya9Z$kQMMa" role="37vLTx">
              <ref role="3cqZAo" node="4JJCDImSW1u" resolve="typeTemplates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4KRwoelDGEj" role="jymVt" />
    <node concept="3clFb_" id="18kNIl1wWgU" role="jymVt">
      <property role="TrG5h" value="asType" />
      <node concept="37vLTG" id="18kNIl1wWhK" role="3clF46">
        <property role="TrG5h" value="typevar" />
        <property role="3TUv4t" value="true" />
        <node concept="26uTi9" id="18kNIl1wWkp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="18kNIl1x7Wn" role="3clF46">
        <property role="TrG5h" value="typeNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="18kNIl1x7Z0" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4JJCDImUub8" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="18kNIl1wWgX" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl1wWgY" role="3clF47">
        <node concept="3clFbF" id="1eKXYsjwfbo" role="3cqZAp">
          <node concept="1rXfSq" id="1eKXYsjwfbm" role="3clFbG">
            <ref role="37wK5l" node="1eKXYsjx_2N" resolve="withTypeTemplate" />
            <node concept="2OqwBi" id="1eKXYsjwfpq" role="37wK5m">
              <node concept="37vLTw" id="1eKXYsjwfpr" role="2Oq$k0">
                <ref role="3cqZAo" node="18kNIl1x7Wn" resolve="typeNode" />
              </node>
              <node concept="2yIwOk" id="1eKXYsjwfps" role="2OqNvi" />
            </node>
            <node concept="2ShNRf" id="1eKXYsjwfM7" role="37wK5m">
              <node concept="YeOm9" id="1eKXYsjwh9J" role="2ShVmc">
                <node concept="1Y3b0j" id="1eKXYsjwh9M" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractTypeTemplate.TypeTemplateAction" />
                  <node concept="3Tm1VV" id="1eKXYsjwh9N" role="1B3o_S" />
                  <node concept="3clFb_" id="1eKXYsjwh9O" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="1eKXYsjwh9P" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="1eKXYsjwh9Q" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                        <node concept="16syzq" id="1eKXYsjwomx" role="11_B2D">
                          <ref role="16sUi3" node="1eKXYsjwnJY" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1eKXYsjwssR" role="3clF45">
                      <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="1eKXYsjwh9T" role="1B3o_S" />
                    <node concept="3clFbS" id="1eKXYsjwh9V" role="3clF47">
                      <node concept="3clFbF" id="4KRwoelDHjC" role="3cqZAp">
                        <node concept="2OqwBi" id="4KRwoelDHzQ" role="3clFbG">
                          <node concept="37vLTw" id="1eKXYsjwpyT" role="2Oq$k0">
                            <ref role="3cqZAo" node="1eKXYsjwh9P" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="4KRwoelDHKF" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:60NbDCXG$nh" resolve="bindType" />
                            <node concept="37vLTw" id="60NbDCXGVru" role="37wK5m">
                              <ref role="3cqZAo" node="18kNIl1x7Wn" resolve="typeNode" />
                            </node>
                            <node concept="37vLTw" id="4KRwoelDN6E" role="37wK5m">
                              <ref role="3cqZAo" node="18kNIl1wWhK" resolve="typevar" />
                            </node>
                            <node concept="Xjq3P" id="4KRwoelDNTu" role="37wK5m">
                              <ref role="1HBi2w" node="18kNIl1vDPZ" resolve="ApplicationSession" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="1eKXYsjwnJY" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="1eKXYsjwnJZ" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1eKXYsjwEKc" role="2Ghqu4">
                    <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1eKXYsjvS86" role="jymVt" />
    <node concept="3clFb_" id="7IysFeAaLtH" role="jymVt">
      <property role="TrG5h" value="newType" />
      <node concept="37vLTG" id="7IysFeAaLtI" role="3clF46">
        <property role="TrG5h" value="typevar" />
        <property role="3TUv4t" value="true" />
        <node concept="26uTi9" id="7IysFeAaLtJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7IysFeAaLx9" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="7IysFeAaLxa" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7IysFeAaLxb" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="true" />
        <node concept="8X2XB" id="7IysFeAaLxc" role="1tU5fm">
          <node concept="3uibUv" id="7IysFeAaLxd" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4JJCDImUuo7" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
      <node concept="3Tm1VV" id="7IysFeAaLtN" role="1B3o_S" />
      <node concept="3clFbS" id="7IysFeAaLtO" role="3clF47">
        <node concept="3clFbF" id="1eKXYsjwI5T" role="3cqZAp">
          <node concept="1rXfSq" id="1eKXYsjwI5U" role="3clFbG">
            <ref role="37wK5l" node="1eKXYsjx_2N" resolve="withTypeTemplate" />
            <node concept="37vLTw" id="1eKXYsjwJDF" role="37wK5m">
              <ref role="3cqZAo" node="7IysFeAaLx9" resolve="typeConcept" />
            </node>
            <node concept="2ShNRf" id="1eKXYsjwI5Y" role="37wK5m">
              <node concept="YeOm9" id="1eKXYsjwI5Z" role="2ShVmc">
                <node concept="1Y3b0j" id="1eKXYsjwI60" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractTypeTemplate.TypeTemplateAction" />
                  <node concept="3Tm1VV" id="1eKXYsjwI61" role="1B3o_S" />
                  <node concept="3clFb_" id="1eKXYsjwI62" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="1eKXYsjwI63" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="1eKXYsjwI64" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                        <node concept="16syzq" id="1eKXYsjwI65" role="11_B2D">
                          <ref role="16sUi3" node="1eKXYsjwI6j" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1eKXYsjwI66" role="3clF45">
                      <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
                    </node>
                    <node concept="3Tm1VV" id="1eKXYsjwI67" role="1B3o_S" />
                    <node concept="3clFbS" id="1eKXYsjwI68" role="3clF47">
                      <node concept="3clFbF" id="4KRwoelDUAi" role="3cqZAp">
                        <node concept="2OqwBi" id="4KRwoelDUAj" role="3clFbG">
                          <node concept="37vLTw" id="4KRwoelDUAk" role="2Oq$k0">
                            <ref role="3cqZAo" node="1eKXYsjwI63" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="4KRwoelDUAl" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:1eKXYsjvsWF" resolve="bindType" />
                            <node concept="2OqwBi" id="4KRwoelDUAm" role="37wK5m">
                              <node concept="37vLTw" id="4KRwoelDUAn" role="2Oq$k0">
                                <ref role="3cqZAo" node="1eKXYsjwI63" resolve="typeTemplate" />
                              </node>
                              <node concept="liA8E" id="4KRwoelDUAo" role="2OqNvi">
                                <ref role="37wK5l" to="psr6:1eKXYsjvsWn" resolve="withArgs" />
                                <node concept="37vLTw" id="4KRwoelDX7G" role="37wK5m">
                                  <ref role="3cqZAo" node="7IysFeAaLxb" resolve="args" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="4KRwoelDUAq" role="37wK5m">
                              <ref role="3cqZAo" node="7IysFeAaLtI" resolve="typevar" />
                            </node>
                            <node concept="Xjq3P" id="4KRwoelDUAr" role="37wK5m">
                              <ref role="1HBi2w" node="18kNIl1vDPZ" resolve="ApplicationSession" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="1eKXYsjwI6j" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="1eKXYsjwI6k" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1eKXYsjwI6l" role="2Ghqu4">
                    <ref role="3uigEE" node="7eGEHDlc$ap" resolve="RuleBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1L74NXEx6$J" role="jymVt" />
    <node concept="3clFb_" id="1L74NXEx75v" role="jymVt">
      <property role="TrG5h" value="typeTerm" />
      <node concept="37vLTG" id="1L74NXEx75y" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="1L74NXEx75z" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1L74NXEx75$" role="3clF46">
        <property role="TrG5h" value="args" />
        <property role="3TUv4t" value="true" />
        <node concept="8X2XB" id="1L74NXEx75_" role="1tU5fm">
          <node concept="3uibUv" id="1L74NXEx75A" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4gW0vesTseu" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="1L74NXEx75C" role="1B3o_S" />
      <node concept="3clFbS" id="1L74NXEx75D" role="3clF47">
        <node concept="3clFbF" id="1eKXYsjwS$a" role="3cqZAp">
          <node concept="1rXfSq" id="1eKXYsjwS$b" role="3clFbG">
            <ref role="37wK5l" node="1eKXYsjx_2N" resolve="withTypeTemplate" />
            <node concept="37vLTw" id="1eKXYsjwS$c" role="37wK5m">
              <ref role="3cqZAo" node="1L74NXEx75y" resolve="typeConcept" />
            </node>
            <node concept="2ShNRf" id="1eKXYsjwS$d" role="37wK5m">
              <node concept="YeOm9" id="1eKXYsjwS$e" role="2ShVmc">
                <node concept="1Y3b0j" id="1eKXYsjwS$f" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractTypeTemplate.TypeTemplateAction" />
                  <node concept="3Tm1VV" id="1eKXYsjwS$g" role="1B3o_S" />
                  <node concept="3clFb_" id="1eKXYsjwS$h" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="1eKXYsjwS$i" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="1eKXYsjwS$j" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                        <node concept="16syzq" id="1eKXYsjwS$k" role="11_B2D">
                          <ref role="16sUi3" node="1eKXYsjwS$y" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1eKXYsjwU6m" role="3clF45">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                    </node>
                    <node concept="3Tm1VV" id="1eKXYsjwS$m" role="1B3o_S" />
                    <node concept="3clFbS" id="1eKXYsjwS$n" role="3clF47">
                      <node concept="3clFbF" id="4KRwoelE0VR" role="3cqZAp">
                        <node concept="2OqwBi" id="4KRwoelE1ck" role="3clFbG">
                          <node concept="37vLTw" id="4KRwoelE0VP" role="2Oq$k0">
                            <ref role="3cqZAo" node="1eKXYsjwS$i" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="4KRwoelE1w4" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:1eKXYsjvsW$" resolve="typeTerm" />
                            <node concept="2OqwBi" id="4KRwoelE1J1" role="37wK5m">
                              <node concept="37vLTw" id="4KRwoelE1J2" role="2Oq$k0">
                                <ref role="3cqZAo" node="1eKXYsjwS$i" resolve="typeTemplate" />
                              </node>
                              <node concept="liA8E" id="4KRwoelE1J3" role="2OqNvi">
                                <ref role="37wK5l" to="psr6:1eKXYsjvsWn" resolve="withArgs" />
                                <node concept="37vLTw" id="4KRwoelE1J4" role="37wK5m">
                                  <ref role="3cqZAo" node="1L74NXEx75$" resolve="args" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="1eKXYsjwS$y" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="1eKXYsjwS$z" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1eKXYsjwT46" role="2Ghqu4">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1eKXYsjwR_Y" role="jymVt" />
    <node concept="3clFb_" id="1L74NXGis3$" role="jymVt">
      <property role="TrG5h" value="typeTermOverriding" />
      <node concept="37vLTG" id="1L74NXGis3_" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="1L74NXGis3A" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1L74NXGit9e" role="3clF46">
        <property role="TrG5h" value="config" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1eKXYsjLDox" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
        </node>
      </node>
      <node concept="3uibUv" id="4gW0vesTEXg" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="1L74NXGis3F" role="1B3o_S" />
      <node concept="3clFbS" id="1L74NXGis3G" role="3clF47">
        <node concept="3clFbF" id="1eKXYsjwXOg" role="3cqZAp">
          <node concept="1rXfSq" id="1eKXYsjwXOh" role="3clFbG">
            <ref role="37wK5l" node="1eKXYsjx_2N" resolve="withTypeTemplate" />
            <node concept="37vLTw" id="1eKXYsjwXOi" role="37wK5m">
              <ref role="3cqZAo" node="1L74NXGis3_" resolve="typeConcept" />
            </node>
            <node concept="2ShNRf" id="1eKXYsjwXOj" role="37wK5m">
              <node concept="YeOm9" id="1eKXYsjwXOk" role="2ShVmc">
                <node concept="1Y3b0j" id="1eKXYsjwXOl" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractTypeTemplate.TypeTemplateAction" />
                  <node concept="3Tm1VV" id="1eKXYsjwXOm" role="1B3o_S" />
                  <node concept="3clFb_" id="1eKXYsjwXOn" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="1eKXYsjwXOo" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="1eKXYsjwXOp" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                        <node concept="16syzq" id="1eKXYsjwXOq" role="11_B2D">
                          <ref role="16sUi3" node="1eKXYsjwXOA" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1eKXYsjwXOr" role="3clF45">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                    </node>
                    <node concept="3Tm1VV" id="1eKXYsjwXOs" role="1B3o_S" />
                    <node concept="3clFbS" id="1eKXYsjwXOt" role="3clF47">
                      <node concept="3clFbF" id="4KRwoelGtnV" role="3cqZAp">
                        <node concept="2OqwBi" id="4KRwoelGtnW" role="3clFbG">
                          <node concept="37vLTw" id="4KRwoelGtnX" role="2Oq$k0">
                            <ref role="3cqZAo" node="1eKXYsjwXOo" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="4KRwoelGtnY" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:1eKXYsjvsW$" resolve="typeTerm" />
                            <node concept="10QFUN" id="1eKXYsjxhwb" role="37wK5m">
                              <node concept="16syzq" id="1eKXYsjxh$S" role="10QFUM">
                                <ref role="16sUi3" node="1eKXYsjwXOA" resolve="Cfg" />
                              </node>
                              <node concept="37vLTw" id="4KRwoelGuUy" role="10QFUP">
                                <ref role="3cqZAo" node="1L74NXGit9e" resolve="config" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="1eKXYsjwXOA" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="1eKXYsjwXOB" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1eKXYsjwXOC" role="2Ghqu4">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="60NbDCXJZ2H" role="jymVt" />
    <node concept="3clFb_" id="1L74NXF7OB0" role="jymVt">
      <property role="TrG5h" value="typePattern" />
      <node concept="37vLTG" id="1L74NXF7OB1" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="1L74NXF7OB2" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4gW0vesTFpY" role="3clF45">
        <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="1L74NXF7OB7" role="1B3o_S" />
      <node concept="3clFbS" id="1L74NXF7OB8" role="3clF47">
        <node concept="3clFbF" id="1eKXYsjxbaz" role="3cqZAp">
          <node concept="1rXfSq" id="1eKXYsjxba$" role="3clFbG">
            <ref role="37wK5l" node="1eKXYsjx_2N" resolve="withTypeTemplate" />
            <node concept="37vLTw" id="1eKXYsjxba_" role="37wK5m">
              <ref role="3cqZAo" node="1L74NXF7OB1" resolve="typeConcept" />
            </node>
            <node concept="2ShNRf" id="1eKXYsjxbaA" role="37wK5m">
              <node concept="YeOm9" id="1eKXYsjxbaB" role="2ShVmc">
                <node concept="1Y3b0j" id="1eKXYsjxbaC" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="psr6:1eKXYsjvSZy" resolve="AbstractTypeTemplate.TypeTemplateAction" />
                  <node concept="3Tm1VV" id="1eKXYsjxbaD" role="1B3o_S" />
                  <node concept="3clFb_" id="1eKXYsjxbaE" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="doAction" />
                    <node concept="37vLTG" id="1eKXYsjxbaF" role="3clF46">
                      <property role="TrG5h" value="typeTemplate" />
                      <node concept="3uibUv" id="1eKXYsjxbaG" role="1tU5fm">
                        <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
                        <node concept="16syzq" id="1eKXYsjLyJe" role="11_B2D">
                          <ref role="16sUi3" node="1eKXYsjxbaT" resolve="Cfg" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1eKXYsjxbaI" role="3clF45">
                      <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                    </node>
                    <node concept="3Tm1VV" id="1eKXYsjxbaJ" role="1B3o_S" />
                    <node concept="3clFbS" id="1eKXYsjxbaK" role="3clF47">
                      <node concept="3clFbF" id="1eKXYsjLwJX" role="3cqZAp">
                        <node concept="2OqwBi" id="1eKXYsjLwUb" role="3clFbG">
                          <node concept="37vLTw" id="1eKXYsjLwJV" role="2Oq$k0">
                            <ref role="3cqZAo" node="1eKXYsjxbaF" resolve="typeTemplate" />
                          </node>
                          <node concept="liA8E" id="1eKXYsjLx5F" role="2OqNvi">
                            <ref role="37wK5l" to="psr6:1eKXYsjIChF" resolve="patternTypeTerm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="1eKXYsjxbaT" role="16eVyc">
                      <property role="TrG5h" value="Cfg" />
                      <node concept="3uibUv" id="1eKXYsjxbaU" role="3ztrMU">
                        <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="1eKXYsjxbaV" role="2Ghqu4">
                    <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1L74NXF7OAZ" role="jymVt" />
    <node concept="3clFb_" id="3TnYLtqf9a6" role="jymVt">
      <property role="TrG5h" value="putParameter" />
      <node concept="37vLTG" id="3TnYLtqf9RL" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="3TnYLtqfa_S" role="1tU5fm">
          <ref role="16sUi3" node="3TnYLtqfa16" resolve="K" />
        </node>
      </node>
      <node concept="37vLTG" id="3TnYLtqfaAe" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="3TnYLtqfaJB" role="1tU5fm">
          <ref role="16sUi3" node="3TnYLtqfaav" resolve="V" />
        </node>
      </node>
      <node concept="3cqZAl" id="3TnYLtqf9a8" role="3clF45" />
      <node concept="3Tm1VV" id="3TnYLtqf9a9" role="1B3o_S" />
      <node concept="3clFbS" id="3TnYLtqf9aa" role="3clF47">
        <node concept="3clFbF" id="10IUAVUmLdA" role="3cqZAp">
          <node concept="37vLTI" id="10IUAVUmMbD" role="3clFbG">
            <node concept="37vLTw" id="10IUAVUmMfx" role="37vLTx">
              <ref role="3cqZAo" node="3TnYLtqfaAe" resolve="value" />
            </node>
            <node concept="3EllGN" id="10IUAVUmM1B" role="37vLTJ">
              <node concept="37vLTw" id="10IUAVUmM6n" role="3ElVtu">
                <ref role="3cqZAo" node="3TnYLtqf9RL" resolve="key" />
              </node>
              <node concept="37vLTw" id="10IUAVUmLd_" role="3ElQJh">
                <ref role="3cqZAo" node="10IUAVUmKSC" resolve="params" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3TnYLtqfa16" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="3TnYLtqfaav" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="3TnYLtqf8Yl" role="jymVt" />
    <node concept="3clFb_" id="3TnYLtqfaVk" role="jymVt">
      <property role="TrG5h" value="getParameter" />
      <node concept="37vLTG" id="3TnYLtqfbUi" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="3TnYLtqfcvE" role="1tU5fm">
          <ref role="16sUi3" node="3TnYLtqfc3D" resolve="K" />
        </node>
      </node>
      <node concept="37vLTG" id="3TnYLtqff0l" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="3TnYLtqff9M" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="3TnYLtqffaw" role="11_B2D">
            <ref role="16sUi3" node="3TnYLtqfccO" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="3TnYLtqfcmn" role="3clF45">
        <ref role="16sUi3" node="3TnYLtqfccO" resolve="V" />
      </node>
      <node concept="3Tm1VV" id="3TnYLtqfaVn" role="1B3o_S" />
      <node concept="3clFbS" id="3TnYLtqfaVo" role="3clF47">
        <node concept="3clFbF" id="10IUAVUmMtT" role="3cqZAp">
          <node concept="10QFUN" id="10IUAVUmMtQ" role="3clFbG">
            <node concept="16syzq" id="10IUAVUmMu$" role="10QFUM">
              <ref role="16sUi3" node="3TnYLtqfccO" resolve="V" />
            </node>
            <node concept="3EllGN" id="10IUAVUmMKG" role="10QFUP">
              <node concept="37vLTw" id="10IUAVUmMP2" role="3ElVtu">
                <ref role="3cqZAo" node="3TnYLtqfbUi" resolve="key" />
              </node>
              <node concept="37vLTw" id="10IUAVUmMwz" role="3ElQJh">
                <ref role="3cqZAo" node="10IUAVUmKSC" resolve="params" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3TnYLtqfc3D" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
      <node concept="16euLQ" id="3TnYLtqfccO" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="3TnYLtqfdwf" role="jymVt" />
    <node concept="3clFb_" id="3TnYLtqfdPI" role="jymVt">
      <property role="TrG5h" value="removeParameter" />
      <node concept="37vLTG" id="3TnYLtqfeH0" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="16syzq" id="3TnYLtqff07" role="1tU5fm">
          <ref role="16sUi3" node="3TnYLtqfeQr" resolve="K" />
        </node>
      </node>
      <node concept="3cqZAl" id="3TnYLtqfdPK" role="3clF45" />
      <node concept="3Tm1VV" id="3TnYLtqfdPL" role="1B3o_S" />
      <node concept="3clFbS" id="3TnYLtqfdPM" role="3clF47">
        <node concept="3clFbF" id="10IUAVUmNUQ" role="3cqZAp">
          <node concept="2OqwBi" id="10IUAVUmOmH" role="3clFbG">
            <node concept="37vLTw" id="10IUAVUmNUP" role="2Oq$k0">
              <ref role="3cqZAo" node="10IUAVUmKSC" resolve="params" />
            </node>
            <node concept="kI3uX" id="10IUAVUmOGh" role="2OqNvi">
              <node concept="37vLTw" id="10IUAVUmOKU" role="kIiFs">
                <ref role="3cqZAo" node="3TnYLtqfeH0" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3TnYLtqfeQr" role="16eVyc">
        <property role="TrG5h" value="K" />
      </node>
    </node>
    <node concept="2tJIrI" id="1eKXYsjvBb4" role="jymVt" />
    <node concept="3clFb_" id="1eKXYsjx_2N" role="jymVt">
      <property role="TrG5h" value="withTypeTemplate" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1eKXYsjvBJG" role="3clF47">
        <node concept="3SKdUt" id="1eKXYsjvFcw" role="3cqZAp">
          <node concept="3SKdUq" id="1eKXYsjvFcx" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: load the correct typetable!!!" />
          </node>
        </node>
        <node concept="3cpWs8" id="1eKXYsjvFcy" role="3cqZAp">
          <node concept="3cpWsn" id="1eKXYsjvFcz" role="3cpWs9">
            <property role="TrG5h" value="typeTemplate" />
            <node concept="3uibUv" id="1eKXYsjvFc$" role="1tU5fm">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
              <node concept="16syzq" id="1eKXYsjvFc_" role="11_B2D">
                <ref role="16sUi3" node="1eKXYsjvE11" resolve="Cfg" />
              </node>
            </node>
            <node concept="2OqwBi" id="1eKXYsjvFcA" role="33vP2m">
              <node concept="2OqwBi" id="1eKXYsjvFcB" role="2Oq$k0">
                <node concept="2OqwBi" id="Ya9Z$kQPL2" role="2Oq$k0">
                  <node concept="37vLTw" id="Ya9Z$kQPBR" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ya9Z$kQMM0" resolve="typeTemplates" />
                  </node>
                  <node concept="liA8E" id="Ya9Z$kQPT_" role="2OqNvi">
                    <ref role="37wK5l" to="fqlx:4JJCDIn5F0n" resolve="typeTables" />
                  </node>
                </node>
                <node concept="1uHKPH" id="1eKXYsjvFcD" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="1eKXYsjvFcE" role="2OqNvi">
                <ref role="37wK5l" to="psr6:4KRwoelAtxl" resolve="typeTemplate" />
                <node concept="37vLTw" id="1eKXYsjvG5v" role="37wK5m">
                  <ref role="3cqZAo" node="1eKXYsjvECZ" resolve="typeConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1eKXYsjvGxg" role="3cqZAp" />
        <node concept="3clFbF" id="1eKXYsjwdMK" role="3cqZAp">
          <node concept="2OqwBi" id="1eKXYsjweh4" role="3clFbG">
            <node concept="37vLTw" id="1eKXYsjwdMI" role="2Oq$k0">
              <ref role="3cqZAo" node="1eKXYsjvGCF" resolve="action" />
            </node>
            <node concept="liA8E" id="1eKXYsjweqN" role="2OqNvi">
              <ref role="37wK5l" to="psr6:1eKXYsjvTXf" resolve="doAction" />
              <node concept="37vLTw" id="1eKXYsjwevZ" role="37wK5m">
                <ref role="3cqZAo" node="1eKXYsjvFcz" resolve="typeTemplate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1eKXYsjvECZ" role="3clF46">
        <property role="TrG5h" value="typeConcept" />
        <node concept="3bZ5Sz" id="1eKXYsjvFbd" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1eKXYsjvGCF" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="1eKXYsjwc8u" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1eKXYsjvSZy" resolve="AbstractTypeTemplate.TypeTemplateAction" />
          <node concept="16syzq" id="1eKXYsjwv3H" role="11_B2D">
            <ref role="16sUi3" node="1eKXYsjwtjG" resolve="R" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="1eKXYsjwvge" role="3clF45">
        <ref role="16sUi3" node="1eKXYsjwtjG" resolve="R" />
      </node>
      <node concept="16euLQ" id="1eKXYsjvE11" role="16eVyc">
        <property role="TrG5h" value="Cfg" />
        <node concept="3uibUv" id="1eKXYsjvEzD" role="3ztrMU">
          <ref role="3uigEE" to="psr6:1eKXYsjvsOy" resolve="TypeTemplate.Config" />
        </node>
      </node>
      <node concept="16euLQ" id="1eKXYsjwtjG" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
      <node concept="3Tm6S6" id="Ya9Z$kToDB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3TnYLtqf8Zx" role="jymVt" />
    <node concept="3Tm1VV" id="18kNIl1vDQ0" role="1B3o_S" />
    <node concept="312cEg" id="Ya9Z$kQMM0" role="jymVt">
      <property role="TrG5h" value="typeTemplates" />
      <node concept="3Tm6S6" id="Ya9Z$kQMM1" role="1B3o_S" />
      <node concept="3uibUv" id="Ya9Z$kQMM3" role="1tU5fm">
        <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateCollection" />
      </node>
    </node>
    <node concept="2tJIrI" id="10IUAVUm$ge" role="jymVt" />
    <node concept="312cEg" id="10IUAVUmKSC" role="jymVt">
      <property role="TrG5h" value="params" />
      <node concept="3Tm6S6" id="10IUAVUmKSD" role="1B3o_S" />
      <node concept="3rvAFt" id="10IUAVUmL5d" role="1tU5fm">
        <node concept="3uibUv" id="10IUAVUmL63" role="3rvQeY">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="10IUAVUmL6W" role="3rvSg0">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="10IUAVUmLaN" role="33vP2m">
        <node concept="3rGOSV" id="10IUAVUmL9F" role="2ShVmc">
          <node concept="3uibUv" id="10IUAVUmL9G" role="3rHrn6">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="10IUAVUmL9H" role="3rHtpV">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="10IUAVUm$jB" role="jymVt" />
  </node>
  <node concept="312cEu" id="18kNIl0r2ay">
    <property role="TrG5h" value="LogicalSubstitution" />
    <node concept="2tJIrI" id="18kNIl0GuPm" role="jymVt" />
    <node concept="3clFbW" id="18kNIl0GkmH" role="jymVt">
      <node concept="37vLTG" id="18kNIl0Gknr" role="3clF46">
        <property role="TrG5h" value="anchors" />
        <node concept="2I9FWS" id="18kNIl0Gkr7" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="18kNIl0GkmJ" role="3clF45" />
      <node concept="3Tm1VV" id="18kNIl0GkmK" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl0GkmL" role="3clF47">
        <node concept="3clFbF" id="18kNIl0Gkse" role="3cqZAp">
          <node concept="37vLTI" id="18kNIl0Gksg" role="3clFbG">
            <node concept="37vLTw" id="18kNIl0Gksj" role="37vLTJ">
              <ref role="3cqZAo" node="18kNIl0Gksa" resolve="myAnchors" />
            </node>
            <node concept="37vLTw" id="18kNIl0Gksk" role="37vLTx">
              <ref role="3cqZAo" node="18kNIl0Gknr" resolve="anchors" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18kNIl0Glk6" role="3cqZAp">
          <node concept="37vLTI" id="18kNIl0Glk7" role="3clFbG">
            <node concept="2OqwBi" id="18kNIl0Glk8" role="37vLTJ">
              <node concept="Xjq3P" id="18kNIl0Glk9" role="2Oq$k0" />
              <node concept="2OwXpG" id="18kNIl0Glka" role="2OqNvi">
                <ref role="2Oxat5" node="18kNIl0GljU" resolve="myMultiMetaLogical" />
              </node>
            </node>
            <node concept="2YIFZM" id="18kNIl0Glkb" role="37vLTx">
              <ref role="37wK5l" node="7nPD14NOI_T" resolve="multiMetaLogical" />
              <ref role="1Pybhc" node="7nPD14NOCSa" resolve="MetaLogicalFactory" />
              <node concept="Xl_RD" id="18kNIl0Glkc" role="37wK5m">
                <property role="Xl_RC" value="Pattern" />
              </node>
              <node concept="3VsKOn" id="18kNIl0Glkd" role="37wK5m">
                <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
              </node>
              <node concept="2OqwBi" id="18kNIl0Glke" role="37wK5m">
                <node concept="37vLTw" id="18kNIl0Glkf" role="2Oq$k0">
                  <ref role="3cqZAo" node="18kNIl0Gknr" resolve="anchors" />
                </node>
                <node concept="34oBXx" id="18kNIl0Glkg" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18kNIl0Gkmd" role="jymVt" />
    <node concept="3clFb_" id="18kNIl0r2cQ" role="jymVt">
      <property role="TrG5h" value="hasLogical" />
      <node concept="37vLTG" id="18kNIl0r2eo" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="18kNIl0r2eG" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="18kNIl0r2di" role="3clF45" />
      <node concept="3Tm1VV" id="18kNIl0r2cT" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl0r2cU" role="3clF47">
        <node concept="3clFbF" id="18kNIl0GnTQ" role="3cqZAp">
          <node concept="2OqwBi" id="18kNIl0GoIs" role="3clFbG">
            <node concept="37vLTw" id="18kNIl0GnTP" role="2Oq$k0">
              <ref role="3cqZAo" node="18kNIl0Gksa" resolve="myAnchors" />
            </node>
            <node concept="3JPx81" id="18kNIl0GqE2" role="2OqNvi">
              <node concept="37vLTw" id="18kNIl0GqRw" role="25WWJ7">
                <ref role="3cqZAo" node="18kNIl0r2eo" resolve="anchor" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18kNIl0r2j9" role="jymVt" />
    <node concept="3clFb_" id="18kNIl0r2jH" role="jymVt">
      <property role="TrG5h" value="logicalFor" />
      <node concept="37vLTG" id="18kNIl0r2l3" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3Tqbb2" id="18kNIl0r2lo" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="18kNIl0Gtbu" role="3clF45">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
      </node>
      <node concept="3Tm1VV" id="18kNIl0r2jK" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl0r2jL" role="3clF47">
        <node concept="3cpWs8" id="6f8YfqEw0N" role="3cqZAp">
          <node concept="3cpWsn" id="6f8YfqEw0O" role="3cpWs9">
            <property role="TrG5h" value="idx" />
            <node concept="10Oyi0" id="6f8YfqEw0I" role="1tU5fm" />
            <node concept="2OqwBi" id="6f8YfqEw0P" role="33vP2m">
              <node concept="37vLTw" id="18kNIl0GrNL" role="2Oq$k0">
                <ref role="3cqZAo" node="18kNIl0Gksa" resolve="myAnchors" />
              </node>
              <node concept="2WmjW8" id="6f8YfqEw0R" role="2OqNvi">
                <node concept="37vLTw" id="18kNIl0Gs6b" role="25WWJ7">
                  <ref role="3cqZAo" node="18kNIl0r2l3" resolve="anchor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6f8YfqEwx0" role="3cqZAp">
          <node concept="3clFbS" id="6f8YfqEwx2" role="3clFbx">
            <node concept="YS8fn" id="6f8YfqEx2D" role="3cqZAp">
              <node concept="2ShNRf" id="6f8YfqEx8y" role="YScLw">
                <node concept="1pGfFk" id="6f8YfqExwX" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~NoSuchElementException.&lt;init&gt;()" resolve="NoSuchElementException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="6f8YfqEwRm" role="3clFbw">
            <node concept="3cmrfG" id="6f8YfqEwTB" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6f8YfqEwGk" role="3uHU7B">
              <ref role="3cqZAo" node="6f8YfqEw0O" resolve="idx" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7HUwyZb21G1" role="3cqZAp">
          <node concept="2OqwBi" id="7HUwyZb22jG" role="3clFbG">
            <node concept="37vLTw" id="18kNIl0Gsrx" role="2Oq$k0">
              <ref role="3cqZAo" node="18kNIl0GljU" resolve="myMultiMetaLogical" />
            </node>
            <node concept="liA8E" id="7HUwyZb22jL" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~MultiMetaLogical.logicalAt(int):jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="logicalAt" />
              <node concept="37vLTw" id="7HUwyZb22jM" role="37wK5m">
                <ref role="3cqZAo" node="6f8YfqEw0O" resolve="idx" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18kNIl0r2bJ" role="jymVt" />
    <node concept="312cEg" id="18kNIl0GljU" role="jymVt">
      <property role="TrG5h" value="myMultiMetaLogical" />
      <node concept="3Tm6S6" id="18kNIl0GljS" role="1B3o_S" />
      <node concept="3uibUv" id="18kNIl0GljT" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~MultiMetaLogical" resolve="MultiMetaLogical" />
      </node>
    </node>
    <node concept="3Tm1VV" id="18kNIl0r2az" role="1B3o_S" />
    <node concept="2tJIrI" id="18kNIl0Gn7L" role="jymVt" />
    <node concept="312cEg" id="18kNIl0Gksa" role="jymVt">
      <property role="TrG5h" value="myAnchors" />
      <node concept="3Tm6S6" id="18kNIl0Gksb" role="1B3o_S" />
      <node concept="2I9FWS" id="18kNIl0Gksd" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="18kNIl0Gnkp" role="jymVt" />
  </node>
  <node concept="312cEu" id="Ya9Z$kMIRb">
    <property role="TrG5h" value="RecoverySession" />
    <node concept="2tJIrI" id="Ya9Z$kMIRL" role="jymVt" />
    <node concept="3clFbW" id="Ya9Z$kRaR0" role="jymVt">
      <node concept="37vLTG" id="Ya9Z$kRaRp" role="3clF46">
        <property role="TrG5h" value="typeTemplates" />
        <node concept="3uibUv" id="Ya9Z$kRaSY" role="1tU5fm">
          <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateCollection" />
        </node>
      </node>
      <node concept="3cqZAl" id="Ya9Z$kRaR2" role="3clF45" />
      <node concept="3Tm1VV" id="Ya9Z$kRaR3" role="1B3o_S" />
      <node concept="3clFbS" id="Ya9Z$kRaR4" role="3clF47">
        <node concept="3clFbF" id="Ya9Z$kRaUV" role="3cqZAp">
          <node concept="37vLTI" id="Ya9Z$kRaUX" role="3clFbG">
            <node concept="2OqwBi" id="Ya9Z$kRaYe" role="37vLTJ">
              <node concept="Xjq3P" id="Ya9Z$kRaZg" role="2Oq$k0" />
              <node concept="2OwXpG" id="Ya9Z$kRaYh" role="2OqNvi">
                <ref role="2Oxat5" node="Ya9Z$kRaUR" resolve="typeTemplates" />
              </node>
            </node>
            <node concept="37vLTw" id="Ya9Z$kRaV1" role="37vLTx">
              <ref role="3cqZAo" node="Ya9Z$kRaRp" resolve="typeTemplates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="52a_GfILXtw" role="jymVt" />
    <node concept="3clFb_" id="5YVpdheCZfk" role="jymVt">
      <property role="TrG5h" value="recoverRoot" />
      <node concept="37vLTG" id="5YVpdheD8tS" role="3clF46">
        <property role="TrG5h" value="typeTerm" />
        <node concept="3uibUv" id="5YVpdheD8tT" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="5YVpdheD9BJ" role="3clF46">
        <property role="TrG5h" value="typesModel" />
        <node concept="H_c77" id="5YVpdheD9BK" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="5YVpdheD1eI" role="3clF45" />
      <node concept="3Tm1VV" id="5YVpdheCZfn" role="1B3o_S" />
      <node concept="3clFbS" id="5YVpdheCZfo" role="3clF47">
        <node concept="3clFbJ" id="5YVpdheDeWH" role="3cqZAp">
          <node concept="3clFbS" id="5YVpdheDeWJ" role="3clFbx">
            <node concept="3cpWs6" id="5YVpdheDfjC" role="3cqZAp">
              <node concept="10Nm6u" id="5YVpdheDfkK" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5YVpdheDfgS" role="3clFbw">
            <node concept="10Nm6u" id="5YVpdheDfid" role="3uHU7w" />
            <node concept="37vLTw" id="5YVpdheDf1O" role="3uHU7B">
              <ref role="3cqZAo" node="5YVpdheD8tS" resolve="typeTerm" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YVpdheDgu7" role="3cqZAp" />
        <node concept="3cpWs8" id="5YVpdheDc2P" role="3cqZAp">
          <node concept="3cpWsn" id="5YVpdheDc2Q" role="3cpWs9">
            <property role="TrG5h" value="typeNode" />
            <node concept="3Tqbb2" id="5YVpdheDc2N" role="1tU5fm" />
            <node concept="1rXfSq" id="5YVpdheDc2R" role="33vP2m">
              <ref role="37wK5l" node="Ya9Z$kRb7o" resolve="recover" />
              <node concept="37vLTw" id="5YVpdheDc2S" role="37wK5m">
                <ref role="3cqZAo" node="5YVpdheD8tS" resolve="typeTerm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4nb5svh9rw" role="3cqZAp">
          <node concept="3clFbS" id="4nb5svh9ry" role="3clFbx">
            <node concept="3clFbF" id="5YVpdheDc9v" role="3cqZAp">
              <node concept="2OqwBi" id="5YVpdheDch0" role="3clFbG">
                <node concept="37vLTw" id="5YVpdheDc9t" role="2Oq$k0">
                  <ref role="3cqZAo" node="5YVpdheD9BJ" resolve="typesModel" />
                </node>
                <node concept="3BYIHo" id="5YVpdheDcpk" role="2OqNvi">
                  <node concept="37vLTw" id="5YVpdheDcsR" role="3BYIHq">
                    <ref role="3cqZAo" node="5YVpdheDc2Q" resolve="typeNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4nb5svhaII" role="3clFbw">
            <node concept="10Nm6u" id="4nb5svhaK4" role="3uHU7w" />
            <node concept="37vLTw" id="4nb5svhaBq" role="3uHU7B">
              <ref role="3cqZAo" node="5YVpdheDc2Q" resolve="typeNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4nb5svhbYm" role="3cqZAp">
          <node concept="37vLTw" id="4nb5svhbYn" role="3cqZAk">
            <ref role="3cqZAo" node="5YVpdheDc2Q" resolve="typeNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YVpdheCXgE" role="jymVt" />
    <node concept="3clFb_" id="Ya9Z$kRb7o" role="jymVt">
      <property role="TrG5h" value="recover" />
      <node concept="37vLTG" id="Ya9Z$kRbee" role="3clF46">
        <property role="TrG5h" value="typeTerm" />
        <node concept="3uibUv" id="Ya9Z$kRbhh" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3Tqbb2" id="Ya9Z$kRbop" role="3clF45" />
      <node concept="3Tm1VV" id="Ya9Z$kRb7r" role="1B3o_S" />
      <node concept="3clFbS" id="Ya9Z$kRb7s" role="3clF47">
        <node concept="3clFbJ" id="5YVpdhetVW9" role="3cqZAp">
          <node concept="3clFbS" id="5YVpdhetVWb" role="3clFbx">
            <node concept="3cpWs6" id="5YVpdhetWjv" role="3cqZAp">
              <node concept="10Nm6u" id="5YVpdhetWkj" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5YVpdhetWhk" role="3clFbw">
            <node concept="10Nm6u" id="5YVpdhetWi7" role="3uHU7w" />
            <node concept="37vLTw" id="5YVpdhetW2p" role="3uHU7B">
              <ref role="3cqZAo" node="Ya9Z$kRbee" resolve="typeTerm" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5YVpdhetWkD" role="3cqZAp" />
        <node concept="3cpWs8" id="Ya9Z$kTxJw" role="3cqZAp">
          <node concept="3cpWsn" id="Ya9Z$kTxJx" role="3cpWs9">
            <property role="TrG5h" value="typeTemplate" />
            <node concept="3uibUv" id="Ya9Z$kTxJn" role="1tU5fm">
              <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
              <node concept="3qTvmN" id="Ya9Z$kTy64" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="Ya9Z$kTxJy" role="33vP2m">
              <node concept="37vLTw" id="Ya9Z$kTxJz" role="2Oq$k0">
                <ref role="3cqZAo" node="Ya9Z$kRaUR" resolve="typeTemplates" />
              </node>
              <node concept="liA8E" id="Ya9Z$kTxJ$" role="2OqNvi">
                <ref role="37wK5l" to="fqlx:4nxCIBqyBNp" resolve="forTerm" />
                <node concept="37vLTw" id="Ya9Z$kTxJ_" role="37wK5m">
                  <ref role="3cqZAo" node="Ya9Z$kRbee" resolve="typeTerm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4nb5svgXAu" role="3cqZAp">
          <node concept="3K4zz7" id="4nb5svh3_N" role="3cqZAk">
            <node concept="10Nm6u" id="4nb5svh5VS" role="3K4GZi" />
            <node concept="3y3z36" id="4nb5svh19I" role="3K4Cdx">
              <node concept="10Nm6u" id="4nb5svh2nH" role="3uHU7w" />
              <node concept="37vLTw" id="4nb5svgZR1" role="3uHU7B">
                <ref role="3cqZAo" node="Ya9Z$kTxJx" resolve="typeTemplate" />
              </node>
            </node>
            <node concept="1rXfSq" id="4nb5svh4KF" role="3K4E3e">
              <ref role="37wK5l" node="4nb5svgxco" resolve="doRecover" />
              <node concept="37vLTw" id="4nb5svh4KG" role="37wK5m">
                <ref role="3cqZAo" node="Ya9Z$kTxJx" resolve="typeTemplate" />
              </node>
              <node concept="37vLTw" id="4nb5svh4KH" role="37wK5m">
                <ref role="3cqZAo" node="Ya9Z$kRbee" resolve="typeTerm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nb5svgyty" role="jymVt" />
    <node concept="3clFb_" id="4nb5svgxco" role="jymVt">
      <property role="TrG5h" value="doRecover" />
      <node concept="3Tm6S6" id="4nb5svgxcp" role="1B3o_S" />
      <node concept="3Tqbb2" id="4nb5svgxcq" role="3clF45" />
      <node concept="37vLTG" id="4nb5svgxcf" role="3clF46">
        <property role="TrG5h" value="typeTemplate" />
        <node concept="3uibUv" id="4nb5svgxcg" role="1tU5fm">
          <ref role="3uigEE" to="psr6:1hX44vNnjJ$" resolve="TypeTemplate" />
          <node concept="3qTvmN" id="4nb5svgxch" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="4nb5svgxci" role="3clF46">
        <property role="TrG5h" value="typeTerm" />
        <node concept="3uibUv" id="4nb5svgxcj" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3clFbS" id="4nb5svgxc8" role="3clF47">
        <node concept="3SKdUt" id="4nb5svgJin" role="3cqZAp">
          <node concept="3SKdUq" id="4nb5svgJip" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="SfApY" id="4nb5svgJmc" role="3cqZAp">
          <node concept="3clFbS" id="4nb5svgJme" role="SfCbr">
            <node concept="3cpWs6" id="4nb5svgP4h" role="3cqZAp">
              <node concept="2OqwBi" id="4nb5svgP4i" role="3cqZAk">
                <node concept="37vLTw" id="4nb5svgP4j" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nb5svgxcf" resolve="typeTemplate" />
                </node>
                <node concept="liA8E" id="4nb5svgP4k" role="2OqNvi">
                  <ref role="37wK5l" to="psr6:Ya9Z$kGXxs" resolve="recover" />
                  <node concept="37vLTw" id="4nb5svgP4l" role="37wK5m">
                    <ref role="3cqZAo" node="4nb5svgxci" resolve="typeTerm" />
                  </node>
                  <node concept="Xjq3P" id="4nb5svgP4m" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4nb5svgJmd" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="4nb5svgJmf" role="TEbGg">
            <node concept="3cpWsn" id="4nb5svgJmh" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="4nb5svgJtZ" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
              </node>
            </node>
            <node concept="3clFbS" id="4nb5svgJml" role="TDEfX">
              <node concept="34ab3g" id="4nb5svgJGx" role="3cqZAp">
                <property role="35gtTG" value="warn" />
                <property role="34fQS0" value="true" />
                <node concept="Xl_RD" id="4nb5svgJGz" role="34bqiv">
                  <property role="Xl_RC" value="Error while recovering type" />
                </node>
                <node concept="37vLTw" id="4nb5svgJG_" role="34bMjA">
                  <ref role="3cqZAo" node="4nb5svgJmh" resolve="ex" />
                </node>
              </node>
              <node concept="3cpWs6" id="4nb5svgJMz" role="3cqZAp">
                <node concept="10Nm6u" id="4nb5svgM9M" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2V8TwD0Sk0z" role="jymVt" />
    <node concept="3clFb_" id="2V8TwD0SkoV" role="jymVt">
      <property role="TrG5h" value="logical" />
      <node concept="37vLTG" id="2V8TwD0Sl_I" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2V8TwD0SlYI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2V8TwD0VER3" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="2V8TwD0VFJs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="2L20jGtgglj" role="11_B2D">
            <ref role="16sUi3" node="2L20jGtgb6Z" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2V8TwD0SkMo" role="3clF45">
        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        <node concept="16syzq" id="2L20jGtgfUl" role="11_B2D">
          <ref role="16sUi3" node="2L20jGtgb6Z" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2V8TwD0SkoY" role="1B3o_S" />
      <node concept="3clFbS" id="2V8TwD0SkoZ" role="3clF47">
        <node concept="3cpWs8" id="2V8TwD0TgAW" role="3cqZAp">
          <node concept="3cpWsn" id="2V8TwD0TgAX" role="3cpWs9">
            <property role="TrG5h" value="logical" />
            <node concept="3uibUv" id="2V8TwD0TgAT" role="1tU5fm">
              <ref role="3uigEE" to="zx3l:~MemLogical" resolve="MemLogical" />
              <node concept="16syzq" id="2L20jGtgk4Y" role="11_B2D">
                <ref role="16sUi3" node="2L20jGtgb6Z" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="2V8TwD0TgAY" role="33vP2m">
              <node concept="1pGfFk" id="2V8TwD0TgAZ" role="2ShVmc">
                <ref role="37wK5l" to="zx3l:~MemLogical.&lt;init&gt;(jetbrains.mps.logic.reactor.logical.MetaLogical)" resolve="MemLogical" />
                <node concept="2ShNRf" id="2V8TwD0VFMX" role="37wK5m">
                  <node concept="1pGfFk" id="2V8TwD0VG_I" role="2ShVmc">
                    <ref role="37wK5l" to="bj13:~MetaLogical.&lt;init&gt;(java.lang.String,java.lang.Class)" resolve="MetaLogical" />
                    <node concept="37vLTw" id="2V8TwD0VGOY" role="37wK5m">
                      <ref role="3cqZAo" node="2V8TwD0Sl_I" resolve="name" />
                    </node>
                    <node concept="37vLTw" id="2V8TwD0VGXf" role="37wK5m">
                      <ref role="3cqZAo" node="2V8TwD0VER3" resolve="klass" />
                    </node>
                  </node>
                </node>
                <node concept="16syzq" id="2L20jGtgjt5" role="1pMfVU">
                  <ref role="16sUi3" node="2L20jGtgb6Z" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2V8TwD0TgIq" role="3cqZAp">
          <node concept="37vLTI" id="2V8TwD0Ti0A" role="3clFbG">
            <node concept="37vLTw" id="2V8TwD0Ti8c" role="37vLTx">
              <ref role="3cqZAo" node="2V8TwD0TgAX" resolve="logical" />
            </node>
            <node concept="3EllGN" id="2V8TwD0ThM3" role="37vLTJ">
              <node concept="37vLTw" id="2V8TwD0ThTr" role="3ElVtu">
                <ref role="3cqZAo" node="2V8TwD0TgAX" resolve="logical" />
              </node>
              <node concept="37vLTw" id="2V8TwD0TgIo" role="3ElQJh">
                <ref role="3cqZAo" node="2V8TwD0Sq5J" resolve="logicals" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2V8TwD0Sm45" role="3cqZAp">
          <node concept="37vLTw" id="2V8TwD0TgB1" role="3clFbG">
            <ref role="3cqZAo" node="2V8TwD0TgAX" resolve="logical" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2L20jGtgb6Z" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2V8TwD0S_cX" role="jymVt" />
    <node concept="3clFb_" id="2V8TwD0S_M9" role="jymVt">
      <property role="TrG5h" value="captureLogicals" />
      <node concept="37vLTG" id="2V8TwD0SCfN" role="3clF46">
        <property role="TrG5h" value="capture" />
        <node concept="3uibUv" id="2V8TwD0SCCc" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="2V8TwD0SEt6" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3uibUv" id="2V8TwD0SEPx" role="1tU5fm">
          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3cqZAl" id="2V8TwD0S_Mb" role="3clF45" />
      <node concept="3Tm1VV" id="2V8TwD0S_Mc" role="1B3o_S" />
      <node concept="3clFbS" id="2V8TwD0S_Md" role="3clF47">
        <node concept="3cpWs8" id="2V8TwD0TNzZ" role="3cqZAp">
          <node concept="3cpWsn" id="2V8TwD0TN$0" role="3cpWs9">
            <property role="TrG5h" value="subst" />
            <node concept="3uibUv" id="2V8TwD0TNyW" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="2V8TwD0TN$1" role="33vP2m">
              <ref role="1Pybhc" to="yt73:~Unification" resolve="Unification" />
              <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term,jetbrains.mps.unification.TermWrapper):jetbrains.mps.unification.Substitution" resolve="unify" />
              <node concept="37vLTw" id="2V8TwD0TN$2" role="37wK5m">
                <ref role="3cqZAo" node="2V8TwD0SCfN" resolve="capture" />
              </node>
              <node concept="37vLTw" id="2V8TwD0TN$3" role="37wK5m">
                <ref role="3cqZAo" node="2V8TwD0SEt6" resolve="term" />
              </node>
              <node concept="2ShNRf" id="2V8TwD0TN$4" role="37wK5m">
                <node concept="YeOm9" id="2V8TwD0TN$5" role="2ShVmc">
                  <node concept="1Y3b0j" id="2V8TwD0TN$6" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="yt73:~TermWrapper" resolve="TermWrapper" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2V8TwD0TN$7" role="1B3o_S" />
                    <node concept="3clFb_" id="2V8TwD0TN$8" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="wrap" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="2V8TwD0TN$9" role="1B3o_S" />
                      <node concept="3uibUv" id="2V8TwD0TN$a" role="3clF45">
                        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                      </node>
                      <node concept="37vLTG" id="2V8TwD0TN$b" role="3clF46">
                        <property role="TrG5h" value="orig" />
                        <node concept="3uibUv" id="2V8TwD0TN$c" role="1tU5fm">
                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2V8TwD0TN$d" role="3clF47">
                        <node concept="3clFbJ" id="2V8TwD0TN$e" role="3cqZAp">
                          <node concept="3clFbS" id="2V8TwD0TN$f" role="3clFbx">
                            <node concept="3cpWs8" id="2V8TwD0TN$g" role="3cqZAp">
                              <node concept="3cpWsn" id="2V8TwD0TN$h" role="3cpWs9">
                                <property role="TrG5h" value="symbol" />
                                <node concept="3uibUv" id="2V8TwD0TN$i" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="2OqwBi" id="2V8TwD0TN$j" role="33vP2m">
                                  <node concept="37vLTw" id="2V8TwD0TN$k" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2V8TwD0TN$b" resolve="orig" />
                                  </node>
                                  <node concept="liA8E" id="2V8TwD0TN$l" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2V8TwD0TN$m" role="3cqZAp">
                              <node concept="3clFbS" id="2V8TwD0TN$n" role="3clFbx">
                                <node concept="3cpWs8" id="2V8TwD0TN$o" role="3cqZAp">
                                  <node concept="3cpWsn" id="2V8TwD0TN$p" role="3cpWs9">
                                    <property role="TrG5h" value="logical" />
                                    <node concept="3uibUv" id="2V8TwD0TN$q" role="1tU5fm">
                                      <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                                      <node concept="3uibUv" id="2V8TwD0TN$r" role="11_B2D">
                                        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                                      </node>
                                    </node>
                                    <node concept="10QFUN" id="2V8TwD0TN$s" role="33vP2m">
                                      <node concept="3uibUv" id="2V8TwD0TN$t" role="10QFUM">
                                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                                        <node concept="3uibUv" id="2V8TwD0TN$u" role="11_B2D">
                                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="2V8TwD0TN$v" role="10QFUP">
                                        <ref role="3cqZAo" node="2V8TwD0TN$h" resolve="symbol" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="2V8TwD0TN$w" role="3cqZAp">
                                  <property role="TyiWK" value="true" />
                                  <property role="TyiWL" value="false" />
                                  <node concept="3clFbS" id="2V8TwD0TN$x" role="3clFbx">
                                    <node concept="3cpWs6" id="2V8TwD0TN$y" role="3cqZAp">
                                      <node concept="3K4zz7" id="2V8TwD0TN$z" role="3cqZAk">
                                        <node concept="2OqwBi" id="2V8TwD0TN$$" role="3K4Cdx">
                                          <node concept="37vLTw" id="2V8TwD0TN$_" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2V8TwD0TN$p" resolve="logical" />
                                          </node>
                                          <node concept="liA8E" id="2V8TwD0TN$A" role="2OqNvi">
                                            <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                                          </node>
                                        </node>
                                        <node concept="2ShNRf" id="2V8TwD0TN$B" role="3K4E3e">
                                          <node concept="1pGfFk" id="2V8TwD0TN$C" role="2ShVmc">
                                            <ref role="37wK5l" node="2V8TwD0SN8F" resolve="RecoverySession.GroundLogicalWrapper" />
                                            <node concept="37vLTw" id="2V8TwD0TN$D" role="37wK5m">
                                              <ref role="3cqZAo" node="2V8TwD0TN$p" resolve="logical" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2ShNRf" id="2V8TwD0TN$E" role="3K4GZi">
                                          <node concept="1pGfFk" id="2V8TwD0TN$F" role="2ShVmc">
                                            <ref role="37wK5l" node="2V8TwD0T7Ov" resolve="RecoverySession.FreeLogicalWrapper" />
                                            <node concept="37vLTw" id="2V8TwD0TN$G" role="37wK5m">
                                              <ref role="3cqZAo" node="2V8TwD0TN$p" resolve="logical" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3fqX7Q" id="2V8TwD0TN$H" role="3clFbw">
                                    <node concept="2OqwBi" id="2V8TwD0TN$I" role="3fr31v">
                                      <node concept="37vLTw" id="2V8TwD0TN$J" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2V8TwD0Sq5J" resolve="logicals" />
                                      </node>
                                      <node concept="2Nt0df" id="2V8TwD0TN$K" role="2OqNvi">
                                        <node concept="37vLTw" id="2V8TwD0TN$L" role="38cxEo">
                                          <ref role="3cqZAo" node="2V8TwD0TN$p" resolve="logical" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2V8TwD0TN$M" role="3cqZAp" />
                              </node>
                              <node concept="2ZW3vV" id="2V8TwD0TN$N" role="3clFbw">
                                <node concept="3uibUv" id="2V8TwD0TN$O" role="2ZW6by">
                                  <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                                </node>
                                <node concept="37vLTw" id="2V8TwD0TN$P" role="2ZW6bz">
                                  <ref role="3cqZAo" node="2V8TwD0TN$h" resolve="symbol" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="2V8TwD0TN$Q" role="9aQIa">
                                <node concept="3clFbS" id="2V8TwD0TN$R" role="9aQI4">
                                  <node concept="3cpWs6" id="2V8TwD0TN$S" role="3cqZAp">
                                    <node concept="2ShNRf" id="2V8TwD0TN$T" role="3cqZAk">
                                      <node concept="1pGfFk" id="2V8TwD0TN$U" role="2ShVmc">
                                        <ref role="37wK5l" node="2V8TwD0Tz_I" resolve="RecoverySession.ConstantWrapper" />
                                        <node concept="37vLTw" id="2V8TwD0TN$V" role="37wK5m">
                                          <ref role="3cqZAo" node="2V8TwD0TN$b" resolve="orig" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2V8TwD0TN$W" role="3clFbw">
                            <node concept="37vLTw" id="2V8TwD0TN$X" role="2Oq$k0">
                              <ref role="3cqZAo" node="2V8TwD0TN$b" resolve="orig" />
                            </node>
                            <node concept="liA8E" id="2V8TwD0TN$Y" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
                              <node concept="Rm8GO" id="2V8TwD0TN$Z" role="37wK5m">
                                <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                                <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="2V8TwD0TN_0" role="3cqZAp" />
                        <node concept="3cpWs6" id="2V8TwD0TN_1" role="3cqZAp">
                          <node concept="37vLTw" id="2V8TwD0TN_2" role="3cqZAk">
                            <ref role="3cqZAo" node="2V8TwD0TN$b" resolve="orig" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2V8TwD0TN_3" role="jymVt" />
                    <node concept="3clFb_" id="2V8TwD0TN_4" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="unwrap" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="2V8TwD0TN_5" role="1B3o_S" />
                      <node concept="3uibUv" id="2V8TwD0TN_6" role="3clF45">
                        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                      </node>
                      <node concept="37vLTG" id="2V8TwD0TN_7" role="3clF46">
                        <property role="TrG5h" value="wrapped" />
                        <node concept="3uibUv" id="2V8TwD0TN_8" role="1tU5fm">
                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2V8TwD0TN_9" role="3clF47">
                        <node concept="3clFbJ" id="2V8TwD0TN_a" role="3cqZAp">
                          <node concept="2ZW3vV" id="2V8TwD0TN_b" role="3clFbw">
                            <node concept="3uibUv" id="2V8TwD0TN_c" role="2ZW6by">
                              <ref role="3uigEE" node="2V8TwD0SKOK" resolve="RecoverySession.GroundLogicalWrapper" />
                            </node>
                            <node concept="37vLTw" id="2V8TwD0TN_d" role="2ZW6bz">
                              <ref role="3cqZAo" node="2V8TwD0TN_7" resolve="wrapped" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="2V8TwD0TN_e" role="3clFbx">
                            <node concept="3cpWs6" id="2V8TwD0TN_f" role="3cqZAp">
                              <node concept="2OqwBi" id="2V8TwD0TN_g" role="3cqZAk">
                                <node concept="2OqwBi" id="2V8TwD0TN_h" role="2Oq$k0">
                                  <node concept="2OqwBi" id="2V8TwD0TN_i" role="2Oq$k0">
                                    <node concept="1eOMI4" id="2V8TwD0TN_j" role="2Oq$k0">
                                      <node concept="10QFUN" id="2V8TwD0TN_k" role="1eOMHV">
                                        <node concept="3uibUv" id="2V8TwD0TN_l" role="10QFUM">
                                          <ref role="3uigEE" node="2V8TwD0SKOK" resolve="RecoverySession.GroundLogicalWrapper" />
                                        </node>
                                        <node concept="37vLTw" id="2V8TwD0TN_m" role="10QFUP">
                                          <ref role="3cqZAo" node="2V8TwD0TN_7" resolve="wrapped" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OwXpG" id="2V8TwD0TN_n" role="2OqNvi">
                                      <ref role="2Oxat5" node="2V8TwD0Tnfk" resolve="logical" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2V8TwD0TN_o" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2V8TwD0TN_p" role="2OqNvi">
                                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="2V8TwD0TN_q" role="3cqZAp" />
                          </node>
                          <node concept="3eNFk2" id="2V8TwD0TN_r" role="3eNLev">
                            <node concept="2ZW3vV" id="2V8TwD0TN_s" role="3eO9$A">
                              <node concept="3uibUv" id="2V8TwD0TN_t" role="2ZW6by">
                                <ref role="3uigEE" node="2V8TwD0T7Ot" resolve="RecoverySession.FreeLogicalWrapper" />
                              </node>
                              <node concept="37vLTw" id="2V8TwD0TN_u" role="2ZW6bz">
                                <ref role="3cqZAo" node="2V8TwD0TN_7" resolve="wrapped" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2V8TwD0TN_v" role="3eOfB_">
                              <node concept="3cpWs6" id="2V8TwD0TN_w" role="3cqZAp">
                                <node concept="10Nm6u" id="5YVpdheCu_V" role="3cqZAk" />
                              </node>
                              <node concept="3clFbH" id="2V8TwD0TN_y" role="3cqZAp" />
                            </node>
                          </node>
                          <node concept="3eNFk2" id="2V8TwD0TN_z" role="3eNLev">
                            <node concept="3clFbS" id="2V8TwD0TN_$" role="3eOfB_">
                              <node concept="3cpWs6" id="2V8TwD0TN__" role="3cqZAp">
                                <node concept="2OqwBi" id="2V8TwD0TN_A" role="3cqZAk">
                                  <node concept="1eOMI4" id="2V8TwD0TN_B" role="2Oq$k0">
                                    <node concept="10QFUN" id="2V8TwD0TN_C" role="1eOMHV">
                                      <node concept="3uibUv" id="2V8TwD0TN_D" role="10QFUM">
                                        <ref role="3uigEE" node="2V8TwD0TykP" resolve="RecoverySession.ConstantWrapper" />
                                      </node>
                                      <node concept="37vLTw" id="2V8TwD0TN_E" role="10QFUP">
                                        <ref role="3cqZAo" node="2V8TwD0TN_7" resolve="wrapped" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OwXpG" id="2V8TwD0TN_F" role="2OqNvi">
                                    <ref role="2Oxat5" node="2V8TwD0TzKx" resolve="orig" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="2V8TwD0TN_G" role="3cqZAp" />
                            </node>
                            <node concept="2ZW3vV" id="2V8TwD0TN_H" role="3eO9$A">
                              <node concept="3uibUv" id="2V8TwD0TN_I" role="2ZW6by">
                                <ref role="3uigEE" node="2V8TwD0TykP" resolve="RecoverySession.ConstantWrapper" />
                              </node>
                              <node concept="37vLTw" id="2V8TwD0TN_J" role="2ZW6bz">
                                <ref role="3cqZAo" node="2V8TwD0TN_7" resolve="wrapped" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="2V8TwD0TN_K" role="9aQIa">
                            <node concept="3clFbS" id="2V8TwD0TN_L" role="9aQI4">
                              <node concept="3cpWs6" id="2V8TwD0TN_M" role="3cqZAp">
                                <node concept="37vLTw" id="2V8TwD0TN_N" role="3cqZAk">
                                  <ref role="3cqZAo" node="2V8TwD0TN_7" resolve="wrapped" />
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
        </node>
        <node concept="3clFbH" id="2V8TwD0TOKu" role="3cqZAp" />
        <node concept="3clFbJ" id="2V8TwD0$BEY" role="3cqZAp">
          <node concept="3fqX7Q" id="2V8TwD0AZb7" role="3clFbw">
            <node concept="2OqwBi" id="2V8TwD0AZb8" role="3fr31v">
              <node concept="37vLTw" id="2V8TwD0AZb9" role="2Oq$k0">
                <ref role="3cqZAo" node="2V8TwD0TN$0" resolve="subst" />
              </node>
              <node concept="liA8E" id="2V8TwD0AZba" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2V8TwD0$CH$" role="3clFbx">
            <node concept="YS8fn" id="2V8TwD0$Ip0" role="3cqZAp">
              <node concept="2ShNRf" id="2V8TwD0$Irs" role="YScLw">
                <node concept="1pGfFk" id="2V8TwD0$LXl" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="2V8TwD0$MDf" role="37wK5m">
                    <node concept="2OqwBi" id="2V8TwD0$PWN" role="3uHU7w">
                      <node concept="37vLTw" id="2V8TwD0$MKu" role="2Oq$k0">
                        <ref role="3cqZAo" node="2V8TwD0TN$0" resolve="subst" />
                      </node>
                      <node concept="liA8E" id="2V8TwD0$Q5q" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.failureCause():jetbrains.mps.unification.Substitution$FailureCause" resolve="failureCause" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2V8TwD0$M2T" role="3uHU7B">
                      <property role="Xl_RC" value="unification failed: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2V8TwD0TRWQ" role="3cqZAp" />
        <node concept="1DcWWT" id="2V8TwD0MACM" role="3cqZAp">
          <node concept="3clFbS" id="2V8TwD0MACP" role="2LFqv$">
            <node concept="3cpWs8" id="2V8TwD0P8jT" role="3cqZAp">
              <node concept="3cpWsn" id="2V8TwD0P8jU" role="3cpWs9">
                <property role="TrG5h" value="logical" />
                <node concept="3uibUv" id="2V8TwD0P8jO" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                  <node concept="3uibUv" id="2V8TwD0TStS" role="11_B2D">
                    <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                  </node>
                </node>
                <node concept="10QFUN" id="2V8TwD0P8jX" role="33vP2m">
                  <node concept="3uibUv" id="2V8TwD0TTs9" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                    <node concept="3uibUv" id="2V8TwD0TT_f" role="11_B2D">
                      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2V8TwD0TSZU" role="10QFUP">
                    <node concept="2OqwBi" id="2V8TwD0P8jZ" role="2Oq$k0">
                      <node concept="37vLTw" id="2V8TwD0P8k0" role="2Oq$k0">
                        <ref role="3cqZAo" node="2V8TwD0MACQ" resolve="bnd" />
                      </node>
                      <node concept="liA8E" id="2V8TwD0P8k1" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2V8TwD0TTj6" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2V8TwD0TUkv" role="3cqZAp">
              <node concept="3SKdUq" id="2V8TwD0TUkx" role="3SKWNk">
                <property role="3SKdUp" value="set the value directly instead of uniting the logicals to avoid side-effects as observables are triggered" />
              </node>
            </node>
            <node concept="3cpWs8" id="2V8TwD0TUrS" role="3cqZAp">
              <node concept="3cpWsn" id="2V8TwD0TUrT" role="3cpWs9">
                <property role="TrG5h" value="valueTerm" />
                <node concept="3uibUv" id="2V8TwD0TUrP" role="1tU5fm">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="2OqwBi" id="2V8TwD0TUrU" role="33vP2m">
                  <node concept="37vLTw" id="2V8TwD0TUrV" role="2Oq$k0">
                    <ref role="3cqZAo" node="2V8TwD0MACQ" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="2V8TwD0TUrW" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5YVpdheCCi9" role="3cqZAp">
              <node concept="3clFbS" id="5YVpdheCCib" role="3clFbx">
                <node concept="3clFbF" id="2V8TwD0MBKl" role="3cqZAp">
                  <node concept="2OqwBi" id="2V8TwD0MCyV" role="3clFbG">
                    <node concept="1eOMI4" id="2V8TwD0MCpU" role="2Oq$k0">
                      <node concept="10QFUN" id="2V8TwD0MCpR" role="1eOMHV">
                        <node concept="3uibUv" id="2V8TwD0MCOR" role="10QFUM">
                          <ref role="3uigEE" to="zx3l:~MemLogical" resolve="MemLogical" />
                        </node>
                        <node concept="37vLTw" id="2V8TwD0P8k3" role="10QFUP">
                          <ref role="3cqZAo" node="2V8TwD0P8jU" resolve="logical" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2V8TwD0MDdI" role="2OqNvi">
                      <ref role="37wK5l" to="zx3l:~MemLogical.setValue(java.lang.Object):void" resolve="setValue" />
                      <node concept="2OqwBi" id="2V8TwD0TWSC" role="37wK5m">
                        <node concept="37vLTw" id="2V8TwD0TWGz" role="2Oq$k0">
                          <ref role="3cqZAo" node="2V8TwD0TUrT" resolve="valueTerm" />
                        </node>
                        <node concept="liA8E" id="2V8TwD0TXas" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5YVpdheCC$Z" role="3clFbw">
                <node concept="10Nm6u" id="5YVpdheCCAi" role="3uHU7w" />
                <node concept="37vLTw" id="5YVpdheCCox" role="3uHU7B">
                  <ref role="3cqZAo" node="2V8TwD0TUrT" resolve="valueTerm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2V8TwD0MACQ" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="2V8TwD0MACU" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="2V8TwD0MACV" role="1DdaDG">
            <node concept="37vLTw" id="2V8TwD0MACW" role="2Oq$k0">
              <ref role="3cqZAo" node="2V8TwD0TN$0" resolve="subst" />
            </node>
            <node concept="liA8E" id="2V8TwD0MACX" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2V8TwD0TOMo" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="2V8TwD0SK5_" role="jymVt" />
    <node concept="312cEu" id="2V8TwD0SKOK" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="GroundLogicalWrapper" />
      <node concept="2tJIrI" id="2V8TwD0SN7$" role="jymVt" />
      <node concept="3clFbW" id="2V8TwD0SN8F" role="jymVt">
        <node concept="3cqZAl" id="2V8TwD0SN8H" role="3clF45" />
        <node concept="3Tm1VV" id="2V8TwD0SN8I" role="1B3o_S" />
        <node concept="3clFbS" id="2V8TwD0SN8J" role="3clF47">
          <node concept="XkiVB" id="2V8TwD0SNUX" role="3cqZAp">
            <ref role="37wK5l" to="zx3l:~Function.&lt;init&gt;(java.lang.Object,java.util.List)" resolve="Function" />
            <node concept="2OqwBi" id="2V8TwD0SRY2" role="37wK5m">
              <node concept="2OqwBi" id="2V8TwD0SZRK" role="2Oq$k0">
                <node concept="2OqwBi" id="2V8TwD0SZRL" role="2Oq$k0">
                  <node concept="37vLTw" id="2V8TwD0SZRM" role="2Oq$k0">
                    <ref role="3cqZAo" node="2V8TwD0SPV5" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="2V8TwD0SZRN" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="2V8TwD0SZRO" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
              <node concept="liA8E" id="2V8TwD0SSu8" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
              </node>
            </node>
            <node concept="2ShNRf" id="2V8TwD0SVQ8" role="37wK5m">
              <node concept="1pGfFk" id="2V8TwD0SWj0" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                <node concept="2OqwBi" id="2V8TwD0SXXA" role="37wK5m">
                  <node concept="2OqwBi" id="2V8TwD0SZRF" role="2Oq$k0">
                    <node concept="2OqwBi" id="2V8TwD0SZRG" role="2Oq$k0">
                      <node concept="37vLTw" id="2V8TwD0SZRH" role="2Oq$k0">
                        <ref role="3cqZAo" node="2V8TwD0SPV5" resolve="logical" />
                      </node>
                      <node concept="liA8E" id="2V8TwD0SZRI" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2V8TwD0SZRJ" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2V8TwD0SYri" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.arguments():java.util.Collection" resolve="arguments" />
                  </node>
                </node>
                <node concept="3uibUv" id="2V8TwD0SX2q" role="1pMfVU">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2V8TwD0TnWr" role="3cqZAp">
            <node concept="37vLTI" id="2V8TwD0Tpjt" role="3clFbG">
              <node concept="37vLTw" id="2V8TwD0TpxY" role="37vLTx">
                <ref role="3cqZAo" node="2V8TwD0SPV5" resolve="logical" />
              </node>
              <node concept="2OqwBi" id="2V8TwD0ToeM" role="37vLTJ">
                <node concept="Xjq3P" id="2V8TwD0TnWp" role="2Oq$k0" />
                <node concept="2OwXpG" id="2V8TwD0ToVW" role="2OqNvi">
                  <ref role="2Oxat5" node="2V8TwD0Tnfk" resolve="logical" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2V8TwD0SPV5" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="2V8TwD0SPV4" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3uibUv" id="2V8TwD0SQqV" role="11_B2D">
              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2V8TwD0SO63" role="jymVt" />
      <node concept="312cEg" id="2V8TwD0Tnfk" role="jymVt">
        <property role="TrG5h" value="logical" />
        <node concept="3Tmbuc" id="2V8TwD0TnCU" role="1B3o_S" />
        <node concept="3uibUv" id="2V8TwD0TnDy" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="3uibUv" id="2V8TwD0TnFg" role="11_B2D">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2V8TwD0SKOL" role="1B3o_S" />
      <node concept="3uibUv" id="2V8TwD0SLEU" role="1zkMxy">
        <ref role="3uigEE" to="zx3l:~Function" resolve="Function" />
      </node>
    </node>
    <node concept="2tJIrI" id="2V8TwD0T9dD" role="jymVt" />
    <node concept="312cEu" id="2V8TwD0T7Ot" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="FreeLogicalWrapper" />
      <node concept="2tJIrI" id="2V8TwD0T7Ou" role="jymVt" />
      <node concept="3clFbW" id="2V8TwD0T7Ov" role="jymVt">
        <node concept="3cqZAl" id="2V8TwD0T7Ow" role="3clF45" />
        <node concept="3Tm1VV" id="2V8TwD0T7Ox" role="1B3o_S" />
        <node concept="3clFbS" id="2V8TwD0T7Oy" role="3clF47">
          <node concept="XkiVB" id="2V8TwD0T7Oz" role="3cqZAp">
            <ref role="37wK5l" to="zx3l:~Function.&lt;init&gt;(java.lang.Object,java.util.List)" resolve="Function" />
            <node concept="2OqwBi" id="2V8TwD0T7OA" role="37wK5m">
              <node concept="37vLTw" id="2V8TwD0T7OB" role="2Oq$k0">
                <ref role="3cqZAo" node="2V8TwD0T7OP" resolve="logical" />
              </node>
              <node concept="liA8E" id="2V8TwD0T7OC" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.findRoot():jetbrains.mps.logic.reactor.logical.Logical" resolve="findRoot" />
              </node>
            </node>
            <node concept="2YIFZM" id="2V8TwD0TbtQ" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="3uibUv" id="2V8TwD0Tb$_" role="3PaCim">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2V8TwD0Trns" role="3cqZAp">
            <node concept="37vLTI" id="2V8TwD0Trnt" role="3clFbG">
              <node concept="37vLTw" id="2V8TwD0TvZ7" role="37vLTx">
                <ref role="3cqZAo" node="2V8TwD0T7OP" resolve="logical" />
              </node>
              <node concept="2OqwBi" id="2V8TwD0Trnv" role="37vLTJ">
                <node concept="Xjq3P" id="2V8TwD0Trnw" role="2Oq$k0" />
                <node concept="2OwXpG" id="2V8TwD0Tvw5" role="2OqNvi">
                  <ref role="2Oxat5" node="2V8TwD0Tp_K" resolve="logical" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2V8TwD0T7OP" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="2V8TwD0T7OQ" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3uibUv" id="2V8TwD0T7OR" role="11_B2D">
              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2V8TwD0T7OS" role="jymVt" />
      <node concept="312cEg" id="2V8TwD0Tp_K" role="jymVt">
        <property role="TrG5h" value="logical" />
        <node concept="3Tmbuc" id="2V8TwD0Tp_L" role="1B3o_S" />
        <node concept="3uibUv" id="2V8TwD0Tp_M" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="3uibUv" id="2V8TwD0Tp_N" role="11_B2D">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2V8TwD0T7OT" role="1B3o_S" />
      <node concept="3uibUv" id="2V8TwD0T7OU" role="1zkMxy">
        <ref role="3uigEE" to="zx3l:~Function" resolve="Function" />
      </node>
    </node>
    <node concept="2tJIrI" id="Ya9Z$kTslm" role="jymVt" />
    <node concept="312cEu" id="2V8TwD0TykP" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ConstantWrapper" />
      <node concept="2tJIrI" id="2V8TwD0TzAm" role="jymVt" />
      <node concept="3clFbW" id="2V8TwD0Tz_I" role="jymVt">
        <node concept="3cqZAl" id="2V8TwD0Tz_K" role="3clF45" />
        <node concept="3Tm1VV" id="2V8TwD0Tz_L" role="1B3o_S" />
        <node concept="3clFbS" id="2V8TwD0Tz_M" role="3clF47">
          <node concept="XkiVB" id="2V8TwD0T$8u" role="3cqZAp">
            <ref role="37wK5l" to="zx3l:~Function.&lt;init&gt;(java.lang.Object,java.util.List)" resolve="Function" />
            <node concept="37vLTw" id="2V8TwD0T$cW" role="37wK5m">
              <ref role="3cqZAo" node="2V8TwD0TzBq" resolve="orig" />
            </node>
            <node concept="2YIFZM" id="2V8TwD0T$vD" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="3uibUv" id="2V8TwD0T$EJ" role="3PaCim">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2V8TwD0TzK_" role="3cqZAp">
            <node concept="37vLTI" id="2V8TwD0TzKB" role="3clFbG">
              <node concept="2OqwBi" id="2V8TwD0T$01" role="37vLTJ">
                <node concept="Xjq3P" id="2V8TwD0T$1s" role="2Oq$k0" />
                <node concept="2OwXpG" id="2V8TwD0T$04" role="2OqNvi">
                  <ref role="2Oxat5" node="2V8TwD0TzKx" resolve="orig" />
                </node>
              </node>
              <node concept="37vLTw" id="2V8TwD0TzKF" role="37vLTx">
                <ref role="3cqZAo" node="2V8TwD0TzBq" resolve="orig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2V8TwD0TzBq" role="3clF46">
          <property role="TrG5h" value="orig" />
          <node concept="3uibUv" id="2V8TwD0TzBp" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2V8TwD0TzAE" role="jymVt" />
      <node concept="3Tm1VV" id="2V8TwD0TykQ" role="1B3o_S" />
      <node concept="3uibUv" id="2V8TwD0Tzyw" role="1zkMxy">
        <ref role="3uigEE" to="zx3l:~Function" resolve="Function" />
      </node>
      <node concept="312cEg" id="2V8TwD0TzKx" role="jymVt">
        <property role="TrG5h" value="orig" />
        <node concept="3Tm6S6" id="2V8TwD0TzKy" role="1B3o_S" />
        <node concept="3uibUv" id="2V8TwD0TzK$" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2V8TwD0Txdx" role="jymVt" />
    <node concept="312cEg" id="2V8TwD0Sq5J" role="jymVt">
      <property role="TrG5h" value="logicals" />
      <node concept="3Tm6S6" id="2V8TwD0Sq5K" role="1B3o_S" />
      <node concept="3rvAFt" id="2V8TwD0Sqtc" role="1tU5fm">
        <node concept="3uibUv" id="2V8TwD0SqtI" role="3rvQeY">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
        </node>
        <node concept="3uibUv" id="2V8TwD0Squo" role="3rvSg0">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="2V8TwD0SqST" role="33vP2m">
        <node concept="1pGfFk" id="2V8TwD0Srf9" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~IdentityHashMap.&lt;init&gt;()" resolve="IdentityHashMap" />
          <node concept="3uibUv" id="2V8TwD0SrBF" role="1pMfVU">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          </node>
          <node concept="3uibUv" id="2V8TwD0SrMr" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="Ya9Z$kMIRc" role="1B3o_S" />
    <node concept="312cEg" id="Ya9Z$kRaUR" role="jymVt">
      <property role="TrG5h" value="typeTemplates" />
      <node concept="3Tm6S6" id="Ya9Z$kRaUS" role="1B3o_S" />
      <node concept="3uibUv" id="Ya9Z$kRaUU" role="1tU5fm">
        <ref role="3uigEE" to="fqlx:1hX44vNlSIA" resolve="TypeTemplateCollection" />
      </node>
    </node>
    <node concept="2tJIrI" id="2V8TwD0SnCd" role="jymVt" />
  </node>
</model>

