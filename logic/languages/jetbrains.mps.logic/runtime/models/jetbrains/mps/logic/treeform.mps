<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
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
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf">
        <child id="492581319488141108" name="method" index="2HKRsH" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2xQ7eRAD2dj">
    <property role="TrG5h" value="Value" />
    <node concept="2tJIrI" id="5JQSuNsxbjZ" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsxb_I" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5JQSuNsxb_L" role="3clF47">
        <node concept="3clFbF" id="5JQSuNsxbFA" role="3cqZAp">
          <node concept="2ShNRf" id="5JQSuNsxbF$" role="3clFbG">
            <node concept="1pGfFk" id="5JQSuNsxbK4" role="2ShVmc">
              <ref role="37wK5l" node="1msb0mq8QV7" resolve="Value" />
              <node concept="37vLTw" id="5JQSuNsxbRO" role="37wK5m">
                <ref role="3cqZAo" node="5JQSuNsxbEe" resolve="symbol" />
              </node>
              <node concept="16syzq" id="5JQSuNsxbPl" role="1pMfVU">
                <ref role="16sUi3" node="5JQSuNsxbCU" resolve="V" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsxbnS" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsxb$q" role="3clF45">
        <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
        <node concept="16syzq" id="5JQSuNsxbE1" role="11_B2D">
          <ref role="16sUi3" node="5JQSuNsxbCU" resolve="V" />
        </node>
      </node>
      <node concept="16euLQ" id="5JQSuNsxbCU" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="37vLTG" id="5JQSuNsxbEe" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="16syzq" id="5JQSuNsxbEd" role="1tU5fm">
          <ref role="16sUi3" node="5JQSuNsxbCU" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxbkO" role="jymVt" />
    <node concept="3clFbW" id="1msb0mq8QV7" role="jymVt">
      <node concept="3cqZAl" id="1msb0mq8QV8" role="3clF45" />
      <node concept="3clFbS" id="1msb0mq8QVa" role="3clF47">
        <node concept="3clFbF" id="1msb0mq8QXE" role="3cqZAp">
          <node concept="37vLTI" id="1msb0mq8QXG" role="3clFbG">
            <node concept="2OqwBi" id="1msb0mq8QXK" role="37vLTJ">
              <node concept="Xjq3P" id="1msb0mq8QXN" role="2Oq$k0" />
              <node concept="2OwXpG" id="1msb0mq8QXJ" role="2OqNvi">
                <ref role="2Oxat5" node="1msb0mq8QXA" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="1msb0mq8QXO" role="37vLTx">
              <ref role="3cqZAo" node="1msb0mq8QWr" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5BGv8yzwQFB" role="1B3o_S" />
      <node concept="37vLTG" id="1msb0mq8QWr" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="16syzq" id="1msb0mq99tq" role="1tU5fm">
          <ref role="16sUi3" node="1msb0mq99pI" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxbb6" role="jymVt" />
    <node concept="3clFb_" id="1msb0mq8QTt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1msb0mq8QTu" role="1B3o_S" />
      <node concept="3uibUv" id="1msb0mq8QTw" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="1msb0mq8QTy" role="3clF47">
        <node concept="3clFbF" id="1msb0mq99w1" role="3cqZAp">
          <node concept="37vLTw" id="1msb0mq99w0" role="3clFbG">
            <ref role="3cqZAo" node="1msb0mq8QXA" resolve="symbol" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNsxbhf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFNWBq" role="jymVt" />
    <node concept="3clFb_" id="104EUzFNW3o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="104EUzFNW3p" role="1B3o_S" />
      <node concept="3uibUv" id="104EUzFNW3q" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="573vQv1kkbz" role="11_B2D">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="104EUzFNW3s" role="3clF47">
        <node concept="3clFbF" id="104EUzFNW3t" role="3cqZAp">
          <node concept="2YIFZM" id="104EUzFNW3u" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFNW3v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFNTqX" role="jymVt" />
    <node concept="3clFb_" id="56MMu0AqCg1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="is" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="56MMu0AqCg2" role="1B3o_S" />
      <node concept="37vLTG" id="56MMu0AqCg3" role="3clF46">
        <property role="TrG5h" value="kind" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="18cJbc0HQOh" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term$Kind" resolve="Term.Kind" />
        </node>
      </node>
      <node concept="10P_77" id="56MMu0AqCg6" role="3clF45" />
      <node concept="3clFbS" id="56MMu0AqCg8" role="3clF47">
        <node concept="3clFbF" id="56MMu0AqDhG" role="3cqZAp">
          <node concept="3clFbC" id="56MMu0AqDoI" role="3clFbG">
            <node concept="Rm8GO" id="18cJbc0HQQz" role="3uHU7B">
              <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
              <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
            </node>
            <node concept="37vLTw" id="56MMu0AqD_r" role="3uHU7w">
              <ref role="3cqZAo" node="56MMu0AqCg3" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0AqCLx" role="jymVt" />
    <node concept="3clFb_" id="56MMu0Ar0iE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="56MMu0Ar0iF" role="1B3o_S" />
      <node concept="3uibUv" id="573vQv1km2j" role="3clF45">
        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
      </node>
      <node concept="3clFbS" id="56MMu0Ar0iJ" role="3clF47">
        <node concept="3clFbF" id="56MMu0Ar3LN" role="3cqZAp">
          <node concept="Xjq3P" id="56MMu0Ar3LM" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0Ar3kp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0Ar1oi" role="jymVt" />
    <node concept="3clFb_" id="56MMu0Ar0iM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="compareTo" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="56MMu0Ar0iN" role="1B3o_S" />
      <node concept="10Oyi0" id="56MMu0Ar0iP" role="3clF45" />
      <node concept="37vLTG" id="56MMu0Ar0iQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="573vQv1kmqh" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="56MMu0Ar0iW" role="3clF47">
        <node concept="3clFbF" id="56MMu0Ar9PX" role="3cqZAp">
          <node concept="2OqwBi" id="56MMu0Ar9PY" role="3clFbG">
            <node concept="2YIFZM" id="56MMu0Ar9PZ" role="2Oq$k0">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <node concept="1rXfSq" id="56MMu0Ar9Q0" role="37wK5m">
                <ref role="37wK5l" node="1msb0mq8QTt" resolve="symbol" />
              </node>
            </node>
            <node concept="liA8E" id="56MMu0Ar9Q1" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.compareTo(java.lang.String):int" resolve="compareTo" />
              <node concept="2YIFZM" id="56MMu0Ar9Q2" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="56MMu0Ar9Q3" role="37wK5m">
                  <node concept="37vLTw" id="56MMu0Ar9Q4" role="2Oq$k0">
                    <ref role="3cqZAo" node="56MMu0Ar0iQ" resolve="node" />
                  </node>
                  <node concept="liA8E" id="56MMu0Ar9Q5" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0Ar6QW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0Ar0Rq" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EZTKC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZV8U" role="3clF45">
        <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
        <node concept="16syzq" id="1bm7a6EZW6A" role="11_B2D">
          <ref role="16sUi3" node="1msb0mq99pI" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bm7a6EZTKE" role="1B3o_S" />
      <node concept="2AHcQZ" id="1bm7a6EZTKG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1bm7a6EZTKH" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EZWI8" role="3cqZAp">
          <node concept="Xjq3P" id="1bm7a6EZWI7" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02UIct" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02UImX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02UImY" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02UImZ" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02UIn0" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="3OPtF02UIn2" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02UIn9" role="3clF47">
        <node concept="3clFbF" id="5s497VqIRDt" role="3cqZAp">
          <node concept="Xjq3P" id="5s497VqIRDs" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF02UQC1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFORp5" role="jymVt" />
    <node concept="3clFb_" id="2QE4RCGngWG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="asRoot" />
      <node concept="3Tm1VV" id="2QE4RCGngWI" role="1B3o_S" />
      <node concept="3uibUv" id="2QE4RCGngWJ" role="3clF45">
        <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
        <node concept="16syzq" id="2QE4RCGniN8" role="11_B2D">
          <ref role="16sUi3" node="1msb0mq99pI" resolve="V" />
        </node>
      </node>
      <node concept="3clFbS" id="2QE4RCGngWM" role="3clF47">
        <node concept="3clFbF" id="2QE4RCGnh_H" role="3cqZAp">
          <node concept="Xjq3P" id="2QE4RCGnh_E" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2QE4RCGnsGc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1lUXr" role="jymVt" />
    <node concept="3clFb_" id="dfChU1lVFI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="attached" />
      <node concept="37vLTG" id="dfChU1lVFJ" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="dfChU1lVFK" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
        </node>
      </node>
      <node concept="3cqZAl" id="dfChU1lVFM" role="3clF45" />
      <node concept="3Tm1VV" id="dfChU1lVFN" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1lVFQ" role="3clF47">
        <node concept="3SKdUt" id="dfChU1lY6U" role="3cqZAp">
          <node concept="3SKdUq" id="dfChU1lY6W" role="3SKWNk">
            <property role="3SKdUp" value="do nothing" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1lXoj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2QE4RCGnhB7" role="jymVt" />
    <node concept="3clFb_" id="104EUzFOQG8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="104EUzFOQG9" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="104EUzFOQGa" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFOQGb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="104EUzFOQGc" role="1B3o_S" />
      <node concept="3clFbS" id="104EUzFOQGf" role="3clF47">
        <node concept="3clFbF" id="104EUzFYkBr" role="3cqZAp">
          <node concept="2OqwBi" id="104EUzFYkCH" role="3clFbG">
            <node concept="37vLTw" id="104EUzFYkBq" role="2Oq$k0">
              <ref role="3cqZAo" node="104EUzFOQG9" resolve="visitor" />
            </node>
            <node concept="liA8E" id="104EUzFYkVR" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOASf" resolve="visitValue" />
              <node concept="Xjq3P" id="104EUzFYkYK" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFORRh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqIpsl" role="jymVt" />
    <node concept="3clFb_" id="5BGv8yzwRq5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="variablesCount" />
      <node concept="10Oyi0" id="5BGv8yzwRq6" role="3clF45" />
      <node concept="3Tm1VV" id="5BGv8yzwRq7" role="1B3o_S" />
      <node concept="3clFbS" id="5BGv8yzwRq9" role="3clF47">
        <node concept="3clFbF" id="5BGv8yzwSdi" role="3cqZAp">
          <node concept="3cmrfG" id="5BGv8yzwSdh" role="3clFbG">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5BGv8yzwRR2" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNs$cd8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5JQSuNs$cd9" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UX7" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNs$cde" role="3clF47">
        <node concept="3clFbF" id="5JQSuNs$cTq" role="3cqZAp">
          <node concept="2YIFZM" id="5JQSuNs$d5U" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <node concept="1rXfSq" id="6$jH9oLlPTn" role="37wK5m">
              <ref role="37wK5l" node="1msb0mq8QTt" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNs$cdf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNs$ckc" role="jymVt" />
    <node concept="3Tm1VV" id="2xQ7eRAD2dk" role="1B3o_S" />
    <node concept="16euLQ" id="1msb0mq99pI" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
    <node concept="3uibUv" id="104EUzFNZ6w" role="EKbjA">
      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
    </node>
    <node concept="3clFb_" id="1mP5b6jQ__L" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="1mP5b6jQ__M" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jQ__N" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jQ__O" role="3clF47">
        <node concept="3clFbJ" id="1mP5b6jQ__P" role="3cqZAp">
          <node concept="3clFbS" id="1mP5b6jQ__Q" role="3clFbx">
            <node concept="3cpWs6" id="1mP5b6jQ__R" role="3cqZAp">
              <node concept="3clFbT" id="1mP5b6jQ__S" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1mP5b6jQ__T" role="3clFbw">
            <node concept="Xjq3P" id="1mP5b6jQ__K" role="3uHU7B" />
            <node concept="37vLTw" id="1mP5b6jQ__U" role="3uHU7w">
              <ref role="3cqZAo" node="1mP5b6jQ_Ah" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1mP5b6jQ__V" role="3cqZAp">
          <node concept="3clFbS" id="1mP5b6jQ__W" role="3clFbx">
            <node concept="3cpWs6" id="1mP5b6jQ__X" role="3cqZAp">
              <node concept="3clFbT" id="1mP5b6jQ__Y" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1mP5b6jQ__Z" role="3clFbw">
            <node concept="3clFbC" id="1mP5b6jQ_A0" role="3uHU7B">
              <node concept="37vLTw" id="1mP5b6jQ_A1" role="3uHU7B">
                <ref role="3cqZAo" node="1mP5b6jQ_Ah" resolve="o" />
              </node>
              <node concept="10Nm6u" id="1mP5b6jQ_A2" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="1mP5b6jQ_A3" role="3uHU7w">
              <node concept="2OqwBi" id="1mP5b6jQ_A4" role="3uHU7B">
                <node concept="Xjq3P" id="1mP5b6jQ_A5" role="2Oq$k0" />
                <node concept="liA8E" id="1mP5b6jQ_A6" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="1mP5b6jQ_A7" role="3uHU7w">
                <node concept="37vLTw" id="1mP5b6jQ_A8" role="2Oq$k0">
                  <ref role="3cqZAo" node="1mP5b6jQ_Ah" resolve="o" />
                </node>
                <node concept="liA8E" id="1mP5b6jQ_A9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mP5b6jQ_Aa" role="3cqZAp" />
        <node concept="3cpWs8" id="1mP5b6jQ_Ab" role="3cqZAp">
          <node concept="3cpWsn" id="1mP5b6jQ_Ac" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="1mP5b6jQ_Ad" role="1tU5fm">
              <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            </node>
            <node concept="10QFUN" id="1mP5b6jQ_Ae" role="33vP2m">
              <node concept="3uibUv" id="1mP5b6jQ_Af" role="10QFUM">
                <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
              </node>
              <node concept="37vLTw" id="1mP5b6jQ_Ag" role="10QFUP">
                <ref role="3cqZAo" node="1mP5b6jQ_Ah" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1mP5b6jQ_Ar" role="3cqZAp">
          <node concept="3clFbS" id="1mP5b6jQ_As" role="3clFbx">
            <node concept="3cpWs6" id="1mP5b6jQ_At" role="3cqZAp">
              <node concept="3clFbT" id="1mP5b6jQ_Au" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="1mP5b6jQ_Av" role="3clFbw">
            <node concept="3fqX7Q" id="1mP5b6jQ_Aw" role="3K4E3e">
              <node concept="2OqwBi" id="1mP5b6jQ_Ax" role="3fr31v">
                <node concept="liA8E" id="1mP5b6jQ_Ay" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="1mP5b6jQ_Az" role="37wK5m">
                    <node concept="37vLTw" id="1mP5b6jQ_Ak" role="2Oq$k0">
                      <ref role="3cqZAo" node="1mP5b6jQ_Ac" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="1mP5b6jQ_An" role="2OqNvi">
                      <ref role="2Oxat5" node="1msb0mq8QXA" resolve="symbol" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1mP5b6jQ_Ao" role="2Oq$k0">
                  <ref role="3cqZAo" node="1msb0mq8QXA" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1mP5b6jQ_AB" role="3K4Cdx">
              <node concept="10Nm6u" id="1mP5b6jQ_AC" role="3uHU7w" />
              <node concept="37vLTw" id="1mP5b6jQ_Ap" role="3uHU7B">
                <ref role="3cqZAo" node="1msb0mq8QXA" resolve="symbol" />
              </node>
            </node>
            <node concept="3y3z36" id="1mP5b6jQ_AD" role="3K4GZi">
              <node concept="10Nm6u" id="1mP5b6jQ_AE" role="3uHU7w" />
              <node concept="2OqwBi" id="1mP5b6jQ_AF" role="3uHU7B">
                <node concept="37vLTw" id="1mP5b6jQ_AG" role="2Oq$k0">
                  <ref role="3cqZAo" node="1mP5b6jQ_Ac" resolve="that" />
                </node>
                <node concept="2OwXpG" id="1mP5b6jQ_Aq" role="2OqNvi">
                  <ref role="2Oxat5" node="1msb0mq8QXA" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mP5b6jQ_AH" role="3cqZAp" />
        <node concept="3clFbF" id="1mP5b6jQ_AI" role="3cqZAp">
          <node concept="3clFbT" id="1mP5b6jQ_AJ" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1mP5b6jQ_Ah" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1mP5b6jQ_Ai" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1mP5b6jQ_Aj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jQCee" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jQ_AK" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="1mP5b6jQ_AL" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jQ_AM" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jQ_AN" role="3clF47">
        <node concept="3cpWs8" id="1mP5b6jQ_AP" role="3cqZAp">
          <node concept="3cpWsn" id="1mP5b6jQ_AQ" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="1mP5b6jQ_AR" role="1tU5fm" />
            <node concept="3cmrfG" id="1mP5b6jQ_AS" role="33vP2m">
              <property role="3cmrfH" value="59" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mP5b6jQ_B2" role="3cqZAp">
          <node concept="37vLTI" id="1mP5b6jQ_B3" role="3clFbG">
            <node concept="3cpWs3" id="1mP5b6jQ_B4" role="37vLTx">
              <node concept="1eOMI4" id="1mP5b6jQ_B5" role="3uHU7w">
                <node concept="3K4zz7" id="1mP5b6jQ_B6" role="1eOMHV">
                  <node concept="3cmrfG" id="1mP5b6jQ_B7" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="1mP5b6jQ_B8" role="3K4Cdx">
                    <node concept="10Nm6u" id="1mP5b6jQ_B9" role="3uHU7w" />
                    <node concept="37vLTw" id="1mP5b6jQ_B0" role="3uHU7B">
                      <ref role="3cqZAo" node="1msb0mq8QXA" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1mP5b6jQ_Ba" role="3K4E3e">
                    <node concept="liA8E" id="1mP5b6jQ_Be" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                    <node concept="37vLTw" id="1mP5b6jQ_B1" role="2Oq$k0">
                      <ref role="3cqZAo" node="1msb0mq8QXA" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="1mP5b6jQ_AY" role="3uHU7B">
                <node concept="37vLTw" id="1mP5b6jQ_AT" role="3uHU7w">
                  <ref role="3cqZAo" node="1mP5b6jQ_AQ" resolve="result" />
                </node>
                <node concept="3cmrfG" id="1mP5b6jQF4G" role="3uHU7B">
                  <property role="3cmrfH" value="67" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1mP5b6jQ_Bf" role="37vLTJ">
              <ref role="3cqZAo" node="1mP5b6jQ_AQ" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mP5b6jQ_Bg" role="3cqZAp">
          <node concept="37vLTw" id="1mP5b6jQ_Bh" role="3clFbG">
            <ref role="3cqZAo" node="1mP5b6jQ_AQ" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1mP5b6jQ_AO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jQBud" role="jymVt" />
    <node concept="312cEg" id="1msb0mq8QXA" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="1msb0mq8QXB" role="1B3o_S" />
      <node concept="16syzq" id="1msb0mq99yc" role="1tU5fm">
        <ref role="16sUi3" node="1msb0mq99pI" resolve="V" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1msb0mq99GH">
    <property role="TrG5h" value="ValueRole" />
    <node concept="3Tm1VV" id="1msb0mq99GI" role="1B3o_S" />
    <node concept="2tJIrI" id="5JQSuNsx59n" role="jymVt" />
    <node concept="2YIFZL" id="6cHSm2DiUE1" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="16euLQ" id="6cHSm2DiUE2" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="37vLTG" id="6cHSm2DiUE3" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6cHSm2DiUE4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6cHSm2DiUE5" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="6cHSm2DiZDH" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3clFbS" id="6cHSm2DiUE9" role="3clF47">
        <node concept="3clFbJ" id="6YPNC4O6Fk7" role="3cqZAp">
          <node concept="3clFbS" id="6YPNC4O6Fk9" role="3clFbx">
            <node concept="YS8fn" id="6YPNC4O6FzW" role="3cqZAp">
              <node concept="2ShNRf" id="6YPNC4O6F_m" role="YScLw">
                <node concept="1pGfFk" id="6YPNC4O6FKI" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6YPNC4O6FvS" role="3clFbw">
            <node concept="10Nm6u" id="6YPNC4O6FwL" role="3uHU7w" />
            <node concept="37vLTw" id="6YPNC4O6FmN" role="3uHU7B">
              <ref role="3cqZAo" node="6cHSm2DiUE5" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="kTK1BfcnAt" role="3cqZAp">
          <node concept="3clFbS" id="kTK1BfcnAv" role="3clFbx">
            <node concept="YS8fn" id="kTK1BfcrKc" role="3cqZAp">
              <node concept="2ShNRf" id="kTK1BfcrLs" role="YScLw">
                <node concept="1pGfFk" id="kTK1BfcvgO" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="kTK1BfcrDz" role="3clFbw">
            <node concept="1eOMI4" id="kTK1BfcrD_" role="3fr31v">
              <node concept="22lmx$" id="kTK1BfcrDA" role="1eOMHV">
                <node concept="2ZW3vV" id="kTK1BfcrDB" role="3uHU7w">
                  <node concept="3uibUv" id="kTK1BfcrDC" role="2ZW6by">
                    <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                  </node>
                  <node concept="37vLTw" id="kTK1BfcrDF" role="2ZW6bz">
                    <ref role="3cqZAo" node="6cHSm2DiUE5" resolve="value" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="kTK1BfcrDG" role="3uHU7B">
                  <node concept="3uibUv" id="kTK1BfcrDH" role="2ZW6by">
                    <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                  </node>
                  <node concept="37vLTw" id="kTK1BfcrDK" role="2ZW6bz">
                    <ref role="3cqZAo" node="6cHSm2DiUE5" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6cHSm2DiUEa" role="3cqZAp">
          <node concept="2ShNRf" id="6cHSm2DiUEb" role="3clFbG">
            <node concept="1pGfFk" id="6cHSm2DiUEc" role="2ShVmc">
              <ref role="37wK5l" node="1msb0mq99PP" resolve="ValueRole" />
              <node concept="16syzq" id="6cHSm2DiUEd" role="1pMfVU">
                <ref role="16sUi3" node="6cHSm2DiUE2" resolve="V" />
              </node>
              <node concept="2YIFZM" id="6cHSm2DiUEe" role="37wK5m">
                <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
                <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
                <node concept="37vLTw" id="6cHSm2DiUEf" role="37wK5m">
                  <ref role="3cqZAo" node="6cHSm2DiUE3" resolve="symbol" />
                </node>
              </node>
              <node concept="37vLTw" id="6cHSm2DiUEg" role="37wK5m">
                <ref role="3cqZAo" node="6cHSm2DiUE5" resolve="value" />
              </node>
              <node concept="2OqwBi" id="6YPNC4NY_W7" role="37wK5m">
                <node concept="37vLTw" id="6YPNC4NY_W8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6cHSm2DiUE5" resolve="value" />
                </node>
                <node concept="liA8E" id="6YPNC4NY_W9" role="2OqNvi">
                  <ref role="37wK5l" node="5BGv8yzvvIZ" resolve="variablesCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6cHSm2DiUEh" role="1B3o_S" />
      <node concept="3uibUv" id="6cHSm2DiUEi" role="3clF45">
        <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
        <node concept="16syzq" id="6cHSm2DiUEj" role="11_B2D">
          <ref role="16sUi3" node="6cHSm2DiUE2" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1msb0mq9GiG" role="jymVt" />
    <node concept="3clFbW" id="1msb0mq99PP" role="jymVt">
      <node concept="3cqZAl" id="1msb0mq99PQ" role="3clF45" />
      <node concept="3clFbS" id="1msb0mq99PS" role="3clF47">
        <node concept="XkiVB" id="1msb0mq9YEk" role="3cqZAp">
          <ref role="37wK5l" node="6YPNC4OE1nT" resolve="RoleNode" />
          <node concept="37vLTw" id="1R$Cm9qHaIM" role="37wK5m">
            <ref role="3cqZAo" node="1msb0mq99VR" resolve="symbolPath" />
          </node>
          <node concept="37vLTw" id="6YPNC4OE6CC" role="37wK5m">
            <ref role="3cqZAo" node="1msb0mq9vsN" resolve="value" />
          </node>
          <node concept="37vLTw" id="5BGv8yzwv56" role="37wK5m">
            <ref role="3cqZAo" node="5BGv8yzwqg0" resolve="varCount" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5BGv8yzwmPh" role="1B3o_S" />
      <node concept="37vLTG" id="1msb0mq99VR" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6$jH9oLdG1l" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="1msb0mq9vsN" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="6cHSm2DiTyM" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="5BGv8yzwqg0" role="3clF46">
        <property role="TrG5h" value="varCount" />
        <node concept="10Oyi0" id="5BGv8yzwr6b" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5YIOneORLBN" role="jymVt" />
    <node concept="3clFb_" id="5YIOneOMEJi" role="jymVt">
      <property role="TrG5h" value="values" />
      <node concept="3uibUv" id="5YIOneOMF29" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="16syzq" id="5YIOneOMFhF" role="11_B2D">
          <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5YIOneOMEJl" role="1B3o_S" />
      <node concept="3clFbS" id="5YIOneOMEJm" role="3clF47">
        <node concept="3SKdUt" id="kTK1Bfc_tO" role="3cqZAp">
          <node concept="3SKdUq" id="kTK1Bfc_tQ" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: inspect the method's usages, maybe drop." />
          </node>
        </node>
        <node concept="3cpWs8" id="5YIOneOMG9N" role="3cqZAp">
          <node concept="3cpWsn" id="5YIOneOMG9O" role="3cpWs9">
            <property role="TrG5h" value="valuesArr" />
            <node concept="10Q1$e" id="5YIOneOMG9P" role="1tU5fm">
              <node concept="16syzq" id="5YIOneOMG9Q" role="10Q1$1">
                <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
              </node>
            </node>
            <node concept="10QFUN" id="5YIOneOMG9R" role="33vP2m">
              <node concept="10Q1$e" id="5YIOneOMG9S" role="10QFUM">
                <node concept="16syzq" id="5YIOneOMG9T" role="10Q1$1">
                  <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
                </node>
              </node>
              <node concept="2ShNRf" id="5YIOneOMG9U" role="10QFUP">
                <node concept="3$_iS1" id="5YIOneOMG9V" role="2ShVmc">
                  <node concept="3$GHV9" id="5YIOneOMG9W" role="3$GQph">
                    <node concept="1rXfSq" id="5YIOneOS0Q1" role="3$I4v7">
                      <ref role="37wK5l" node="6$jH9oLbZOI" resolve="argsSize" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="5YIOneOMGa0" role="3$_nBY">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5YIOneOMGa1" role="3cqZAp">
          <node concept="3clFbS" id="5YIOneOMGa2" role="2LFqv$">
            <node concept="3cpWs8" id="5YIOneOMGa3" role="3cqZAp">
              <node concept="3cpWsn" id="5YIOneOMGa4" role="3cpWs9">
                <property role="TrG5h" value="ch" />
                <node concept="3uibUv" id="5YIOneOMGa5" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
                <node concept="AH0OO" id="5YIOneOMGa6" role="33vP2m">
                  <node concept="37vLTw" id="5YIOneOMGa7" role="AHEQo">
                    <ref role="3cqZAo" node="5YIOneOMGay" resolve="i" />
                  </node>
                  <node concept="1rXfSq" id="5YIOneOMGEM" role="AHHXb">
                    <ref role="37wK5l" node="1bm7a6EXK6a" resolve="argsArr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5YIOneOMGab" role="3cqZAp">
              <node concept="3cpWsn" id="5YIOneOMGac" role="3cpWs9">
                <property role="TrG5h" value="symbol" />
                <node concept="3uibUv" id="5YIOneOMGad" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="3K4zz7" id="5YIOneOMGae" role="33vP2m">
                  <node concept="37vLTw" id="5YIOneOMGaf" role="3K4GZi">
                    <ref role="3cqZAo" node="5YIOneOMGa4" resolve="ch" />
                  </node>
                  <node concept="2OqwBi" id="5YIOneOMGag" role="3K4E3e">
                    <node concept="1eOMI4" id="5YIOneOMGah" role="2Oq$k0">
                      <node concept="10QFUN" id="5YIOneOMGai" role="1eOMHV">
                        <node concept="3uibUv" id="5YIOneOMGaj" role="10QFUM">
                          <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                          <node concept="16syzq" id="5YIOneOMGak" role="11_B2D">
                            <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="5YIOneOMGal" role="10QFUP">
                          <ref role="3cqZAo" node="5YIOneOMGa4" resolve="ch" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5YIOneOMGam" role="2OqNvi">
                      <ref role="37wK5l" node="1msb0mq8QTt" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="5YIOneOMGan" role="3K4Cdx">
                    <node concept="3uibUv" id="5YIOneOMGao" role="2ZW6by">
                      <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
                    </node>
                    <node concept="37vLTw" id="5YIOneOMGap" role="2ZW6bz">
                      <ref role="3cqZAo" node="5YIOneOMGa4" resolve="ch" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5YIOneOMGaq" role="3cqZAp">
              <node concept="37vLTI" id="5YIOneOMGar" role="3clFbG">
                <node concept="10QFUN" id="5YIOneOMGas" role="37vLTx">
                  <node concept="16syzq" id="5YIOneOMGat" role="10QFUM">
                    <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
                  </node>
                  <node concept="37vLTw" id="5YIOneOMGau" role="10QFUP">
                    <ref role="3cqZAo" node="5YIOneOMGac" resolve="symbol" />
                  </node>
                </node>
                <node concept="AH0OO" id="5YIOneOMGav" role="37vLTJ">
                  <node concept="37vLTw" id="5YIOneOMGaw" role="AHEQo">
                    <ref role="3cqZAo" node="5YIOneOMGay" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="5YIOneOMGax" role="AHHXb">
                    <ref role="3cqZAo" node="5YIOneOMG9O" resolve="valuesArr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5YIOneOMGay" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5YIOneOMGaz" role="1tU5fm" />
            <node concept="3cmrfG" id="5YIOneOMGa$" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5YIOneOMGa_" role="1Dwp0S">
            <node concept="2OqwBi" id="5YIOneOMGaA" role="3uHU7w">
              <node concept="1Rwk04" id="5YIOneOMGaC" role="2OqNvi" />
              <node concept="1rXfSq" id="5YIOneOMGtZ" role="2Oq$k0">
                <ref role="37wK5l" node="1bm7a6EXK6a" resolve="argsArr" />
              </node>
            </node>
            <node concept="37vLTw" id="5YIOneOMGaD" role="3uHU7B">
              <ref role="3cqZAo" node="5YIOneOMGay" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5YIOneOMGaE" role="1Dwrff">
            <node concept="37vLTw" id="5YIOneOMGaF" role="2$L3a6">
              <ref role="3cqZAo" node="5YIOneOMGay" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YIOneORZDL" role="3cqZAp">
          <node concept="2YIFZM" id="5YIOneORZOB" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableCollection(java.util.Collection):java.util.Collection" resolve="unmodifiableCollection" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2YIFZM" id="5YIOneOMGZb" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <node concept="37vLTw" id="5YIOneOMH5Z" role="37wK5m">
                <ref role="3cqZAo" node="5YIOneOMG9O" resolve="valuesArr" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="kTK1Bfckqb" role="lGtFl">
        <node concept="TZ5HA" id="kTK1Bfckqc" role="TZ5H$">
          <node concept="1dT_AC" id="kTK1Bfckqd" role="1dT_Ay">
            <property role="1dT_AB" value="Returns the collection of values kept by this node. Variables are ignored." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YIOneOMEtb" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EXT8b" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZOQ6" role="3clF45">
        <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
        <node concept="16syzq" id="1bm7a6EZRhu" role="11_B2D">
          <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1bm7a6EXT8d" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EXT8i" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EXU3e" role="3cqZAp">
          <node concept="2YIFZM" id="kTK1Be5N_4" role="3clFbG">
            <ref role="37wK5l" node="6cHSm2DiUE1" resolve="create" />
            <ref role="1Pybhc" node="1msb0mq99GH" resolve="ValueRole" />
            <node concept="1rXfSq" id="kTK1Be5N_5" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="1rXfSq" id="6YPNC4OEsQm" role="37wK5m">
              <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1bm7a6EZQdc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EXTBm" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02TY7K" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02TY7L" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02TY7M" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF02TY7P" role="1B3o_S" />
      <node concept="2AHcQZ" id="3OPtF02TY7R" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3OPtF02TY7U" role="3clF47">
        <node concept="3cpWs8" id="6YPNC4NYEcX" role="3cqZAp">
          <node concept="3cpWsn" id="6YPNC4NYEcY" role="3cpWs9">
            <property role="TrG5h" value="mappedVal" />
            <node concept="3uibUv" id="6YPNC4NYEcU" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="2OqwBi" id="6YPNC4NYEcZ" role="33vP2m">
              <node concept="37vLTw" id="6YPNC4NYEd0" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF02TY7L" resolve="mapper" />
              </node>
              <node concept="liA8E" id="6YPNC4NYEd1" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                <node concept="1rXfSq" id="6YPNC4OEpAa" role="37wK5m">
                  <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4sgxfjnBLNw" role="3cqZAp">
          <node concept="3SKdUq" id="4sgxfjnBLNx" role="3SKWNk">
            <property role="3SKdUp" value="check if the returned value is different using referential equality" />
          </node>
        </node>
        <node concept="3clFbJ" id="4sgxfjnBLNy" role="3cqZAp">
          <node concept="3clFbS" id="4sgxfjnBLNz" role="3clFbx">
            <node concept="3cpWs6" id="6YPNC4NYKdU" role="3cqZAp">
              <node concept="Xjq3P" id="6YPNC4NYLod" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6YPNC4NYJJt" role="3clFbw">
            <node concept="37vLTw" id="6YPNC4NYI7R" role="3uHU7B">
              <ref role="3cqZAo" node="6YPNC4NYEcY" resolve="mappedVal" />
            </node>
            <node concept="1rXfSq" id="6YPNC4OEqD4" role="3uHU7w">
              <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YPNC4NYI_g" role="3cqZAp" />
        <node concept="3clFbF" id="3OPtF02Uiiw" role="3cqZAp">
          <node concept="2YIFZM" id="kTK1Be5O1Q" role="3clFbG">
            <ref role="37wK5l" node="6cHSm2DiUE1" resolve="create" />
            <ref role="1Pybhc" node="1msb0mq99GH" resolve="ValueRole" />
            <node concept="1rXfSq" id="kTK1Be5O1R" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="6YPNC4NYR39" role="37wK5m">
              <ref role="3cqZAo" node="6YPNC4NYEcY" resolve="mappedVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02V_L3" role="3clF45">
        <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
        <node concept="16syzq" id="3OPtF02V_L4" role="11_B2D">
          <ref role="16sUi3" node="1msb0mq99K4" resolve="V" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02TYRd" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTS3tu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="47nvOnTS3tv" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="3JgCwkqhJK9" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02YXD2" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTS3ty" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTS3tF" role="3clF47">
        <node concept="3clFbF" id="47nvOnTS58$" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTS59e" role="3clFbG">
            <node concept="37vLTw" id="47nvOnTS58z" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTS3tv" resolve="visitor" />
            </node>
            <node concept="liA8E" id="47nvOnTS5EH" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOARP" resolve="visitValueRole" />
              <node concept="Xjq3P" id="47nvOnTS5GC" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTS68s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTS4jN" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNs$e6A" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5JQSuNs$e6B" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UX8" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNs$e6G" role="3clF47">
        <node concept="3cpWs8" id="2q_78a93qs1" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a93qs2" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2q_78a93qs3" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2q_78a93qs4" role="33vP2m">
              <node concept="1pGfFk" id="2q_78a93qs5" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a93qs6" role="3cqZAp">
          <node concept="2OqwBi" id="6YPNC4OEj_I" role="3clFbG">
            <node concept="2OqwBi" id="6YPNC4OEf_$" role="2Oq$k0">
              <node concept="2OqwBi" id="2q_78a93qs7" role="2Oq$k0">
                <node concept="2OqwBi" id="2q_78a93qs8" role="2Oq$k0">
                  <node concept="37vLTw" id="2q_78a93qsa" role="2Oq$k0">
                    <ref role="3cqZAo" node="2q_78a93qs2" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="2q_78a93qsd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="2YIFZM" id="2q_78a93qse" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="1rXfSq" id="1OShD0HF7Km" role="37wK5m">
                        <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2q_78a93qsi" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="2q_78a93qsj" role="37wK5m">
                    <property role="Xl_RC" value="=\&quot;" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6YPNC4OEgmh" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object):java.lang.StringBuilder" resolve="append" />
                <node concept="1rXfSq" id="6YPNC4OEiPO" role="37wK5m">
                  <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6YPNC4OEl2o" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="6YPNC4OEl3g" role="37wK5m">
                <property role="Xl_RC" value="\&quot;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a93qsF" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a93qsG" role="3clFbG">
            <node concept="37vLTw" id="2q_78a93qsI" role="2Oq$k0">
              <ref role="3cqZAo" node="2q_78a93qs2" resolve="sb" />
            </node>
            <node concept="liA8E" id="2q_78a93qsL" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNs$e6H" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1msb0mq9$kL" role="jymVt" />
    <node concept="16euLQ" id="1msb0mq99K4" role="16eVyc">
      <property role="TrG5h" value="V" />
    </node>
    <node concept="3uibUv" id="6YPNC4OE4CZ" role="1zkMxy">
      <ref role="3uigEE" node="6YPNC4ODVle" resolve="RoleNode" />
    </node>
  </node>
  <node concept="312cEu" id="1msb0mq9ID4">
    <property role="TrG5h" value="Node" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="1msb0mq9ID5" role="1B3o_S" />
    <node concept="3uibUv" id="104EUzGgROM" role="EKbjA">
      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
    </node>
    <node concept="2tJIrI" id="6$jH9oLc2sE" role="jymVt" />
    <node concept="3clFbW" id="1msb0mq9JZ8" role="jymVt">
      <node concept="3cqZAl" id="1msb0mq9JZ9" role="3clF45" />
      <node concept="3clFbS" id="1msb0mq9JZb" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qH5zZ" role="3cqZAp">
          <node concept="37vLTI" id="1R$Cm9qH6Re" role="3clFbG">
            <node concept="2OqwBi" id="1R$Cm9qH5Wx" role="37vLTJ">
              <node concept="Xjq3P" id="1R$Cm9qH5zX" role="2Oq$k0" />
              <node concept="2OwXpG" id="1R$Cm9qH6oo" role="2OqNvi">
                <ref role="2Oxat5" node="1R$Cm9qGTDj" resolve="symbolPath" />
              </node>
            </node>
            <node concept="37vLTw" id="6$jH9oLdE3b" role="37vLTx">
              <ref role="3cqZAo" node="1R$Cm9qH1ri" resolve="symbolPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1msb0mq9KbB" role="3cqZAp">
          <node concept="37vLTI" id="1msb0mq9KbD" role="3clFbG">
            <node concept="2OqwBi" id="1msb0mq9KbH" role="37vLTJ">
              <node concept="Xjq3P" id="1msb0mq9KbK" role="2Oq$k0" />
              <node concept="2OwXpG" id="5JQSuNswGt$" role="2OqNvi">
                <ref role="2Oxat5" node="5JQSuNswjST" resolve="arguments" />
              </node>
            </node>
            <node concept="37vLTw" id="1msb0mq9KbL" role="37vLTx">
              <ref role="3cqZAo" node="1msb0mq9K2N" resolve="arguments" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BGv8yzv$Tc" role="3cqZAp">
          <node concept="37vLTI" id="5BGv8yzv$Te" role="3clFbG">
            <node concept="2OqwBi" id="5BGv8yzv$Ti" role="37vLTJ">
              <node concept="Xjq3P" id="5BGv8yzv$Tl" role="2Oq$k0" />
              <node concept="2OwXpG" id="5BGv8yzv$Th" role="2OqNvi">
                <ref role="2Oxat5" node="5BGv8yzv$T7" resolve="variablesCount" />
              </node>
            </node>
            <node concept="37vLTw" id="5BGv8yzv$Tm" role="37vLTx">
              <ref role="3cqZAo" node="5BGv8yzvycg" resolve="variablesCount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5BGv8yzvxJu" role="1B3o_S" />
      <node concept="37vLTG" id="1R$Cm9qH1ri" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6$jH9oLdDM2" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="1msb0mq9K2N" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="10Q1$e" id="1msb0mq9K4Q" role="1tU5fm">
          <node concept="3uibUv" id="3H0z$hTtmtl" role="10Q1$1">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5BGv8yzvycg" role="3clF46">
        <property role="TrG5h" value="variablesCount" />
        <node concept="10Oyi0" id="5BGv8yzvAy5" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1msb0mq9L$H" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNswjSg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5JQSuNswjSh" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNswjSi" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qUE_q" id="3H0z$hTtspr" role="11_B2D">
          <node concept="3uibUv" id="3H0z$hTtswN" role="3qUE_r">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNswjSk" role="3clF47">
        <node concept="3clFbF" id="5JQSuNswjSl" role="3cqZAp">
          <node concept="2YIFZM" id="5JQSuNswjSm" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableCollection(java.util.Collection):java.util.Collection" resolve="unmodifiableCollection" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2YIFZM" id="5JQSuNswjSn" role="37wK5m">
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <node concept="37vLTw" id="5JQSuNswjSo" role="37wK5m">
                <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNswKvf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNswjSq" role="jymVt" />
    <node concept="3clFb_" id="1pPMb_vk4Mo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="is" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1pPMb_vk4Mp" role="1B3o_S" />
      <node concept="37vLTG" id="1pPMb_vk4Mq" role="3clF46">
        <property role="TrG5h" value="kind" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="18cJbc0HRDO" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term$Kind" resolve="Term.Kind" />
        </node>
      </node>
      <node concept="10P_77" id="1pPMb_vk4Mt" role="3clF45" />
      <node concept="3clFbS" id="1pPMb_vk4Mv" role="3clF47">
        <node concept="3clFbF" id="56MMu0AoGpA" role="3cqZAp">
          <node concept="3clFbC" id="56MMu0AoGG2" role="3clFbG">
            <node concept="Rm8GO" id="18cJbc0HREm" role="3uHU7B">
              <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
              <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
            </node>
            <node concept="37vLTw" id="56MMu0AoGH8" role="3uHU7w">
              <ref role="3cqZAo" node="1pPMb_vk4Mq" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0AqLmA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1pPMb_vk6RW" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qGRoH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1R$Cm9qGRoI" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qGRoK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="1R$Cm9qGRoL" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qGUdZ" role="3cqZAp">
          <node concept="2OqwBi" id="3AEuFq_Mr2v" role="3clFbG">
            <node concept="37vLTw" id="1R$Cm9qGUdY" role="2Oq$k0">
              <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
            </node>
            <node concept="liA8E" id="3AEuFq_Mrw5" role="2OqNvi">
              <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0AqKC6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qGWIx" role="jymVt" />
    <node concept="3clFb_" id="56MMu0AqMKf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="56MMu0AqMKg" role="1B3o_S" />
      <node concept="3uibUv" id="573vQv1l0ib" role="3clF45">
        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
      </node>
      <node concept="3clFbS" id="56MMu0AqMKk" role="3clF47">
        <node concept="3clFbF" id="56MMu0AqPP2" role="3cqZAp">
          <node concept="Xjq3P" id="56MMu0AqPP1" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0AqNCl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0AqP1W" role="jymVt" />
    <node concept="3clFb_" id="56MMu0AqMKn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="compareTo" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="56MMu0AqMKo" role="1B3o_S" />
      <node concept="10Oyi0" id="56MMu0AqMKq" role="3clF45" />
      <node concept="37vLTG" id="56MMu0AqMKr" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="573vQv1l0J9" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="56MMu0AqMKx" role="3clF47">
        <node concept="3clFbF" id="56MMu0AqQuC" role="3cqZAp">
          <node concept="2OqwBi" id="56MMu0AqQX$" role="3clFbG">
            <node concept="2YIFZM" id="56MMu0AqQzB" role="2Oq$k0">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="1rXfSq" id="56MMu0AqQGg" role="37wK5m">
                <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
              </node>
            </node>
            <node concept="liA8E" id="56MMu0AqR_U" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.compareTo(java.lang.String):int" resolve="compareTo" />
              <node concept="2YIFZM" id="56MMu0AqRL4" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="56MMu0AqSaO" role="37wK5m">
                  <node concept="37vLTw" id="56MMu0AqRRz" role="2Oq$k0">
                    <ref role="3cqZAo" node="56MMu0AqMKr" resolve="node" />
                  </node>
                  <node concept="liA8E" id="56MMu0AqSsI" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0AqPPY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0AqM0q" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EYD0x" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZcE2" role="3clF45">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
      </node>
      <node concept="3Tm1VV" id="1bm7a6EYD0z" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EYD0A" role="3clF47" />
      <node concept="2AHcQZ" id="1bm7a6EYE2c" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EYF63" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02TqPB" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02TqPC" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02TqPD" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02Tu6P" role="3clF45">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
      </node>
      <node concept="3Tm1VV" id="3OPtF02TqPG" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02TqPP" role="3clF47" />
      <node concept="2AHcQZ" id="3OPtF02TsDH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02Txyh" role="jymVt" />
    <node concept="3clFb_" id="2QE4RCGnBX_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="asRoot" />
      <node concept="3Tm1VV" id="2QE4RCGnBXB" role="1B3o_S" />
      <node concept="3clFbS" id="2QE4RCGnBXH" role="3clF47">
        <node concept="3clFbJ" id="2QE4RCGoefy" role="3cqZAp">
          <node concept="3clFbS" id="2QE4RCGoefz" role="3clFbx">
            <node concept="3cpWs6" id="2QE4RCGof2r" role="3cqZAp">
              <node concept="Xjq3P" id="2QE4RCGofnH" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="2QE4RCGoezs" role="3clFbw">
            <node concept="liA8E" id="2QE4RCGoeKd" role="2OqNvi">
              <ref role="37wK5l" node="2QE4RCGoaTQ" resolve="isRoot" />
            </node>
            <node concept="37vLTw" id="1OShD0HBYdl" role="2Oq$k0">
              <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QE4RCGogGp" role="3cqZAp">
          <node concept="1rXfSq" id="2QE4RCGogGn" role="3clFbG">
            <ref role="37wK5l" node="1bm7a6EYD0x" resolve="copyRecursively" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2QE4RCGnD6S" role="3clF45">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
      </node>
      <node concept="2AHcQZ" id="2QE4RCGnDKs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2QE4RCGnBiQ" role="jymVt" />
    <node concept="3clFb_" id="dfChU1lNtX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="attached" />
      <node concept="37vLTG" id="dfChU1lNtY" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="dfChU1lNtZ" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
        </node>
      </node>
      <node concept="3cqZAl" id="dfChU1lNu1" role="3clF45" />
      <node concept="3Tm1VV" id="dfChU1lNu2" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1lNu5" role="3clF47">
        <node concept="3clFbF" id="dfChU1lQmZ" role="3cqZAp">
          <node concept="2OqwBi" id="dfChU1lQo0" role="3clFbG">
            <node concept="liA8E" id="dfChU1lQzS" role="2OqNvi">
              <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
              <node concept="2OqwBi" id="dfChU1lQEF" role="37wK5m">
                <node concept="37vLTw" id="dfChU1lQ_U" role="2Oq$k0">
                  <ref role="3cqZAo" node="dfChU1lNtY" resolve="parent" />
                </node>
                <node concept="2OwXpG" id="1OShD0HC1yU" role="2OqNvi">
                  <ref role="2Oxat5" node="1R$Cm9qGTDj" resolve="symbolPath" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1OShD0HBZ58" role="2Oq$k0">
              <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1lSG_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1lMar" role="jymVt" />
    <node concept="3clFb_" id="5BGv8yzwj1c" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="variablesCount" />
      <node concept="10Oyi0" id="5BGv8yzwj1d" role="3clF45" />
      <node concept="3Tm1VV" id="5BGv8yzwj1e" role="1B3o_S" />
      <node concept="3clFbS" id="5BGv8yzwj1g" role="3clF47">
        <node concept="3clFbF" id="5BGv8yzwjUm" role="3cqZAp">
          <node concept="37vLTw" id="5BGv8yzwjUl" role="3clFbG">
            <ref role="3cqZAo" node="5BGv8yzv$T7" resolve="variablesCount" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5BGv8yzwltt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5BGv8yzwkCT" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qGYlZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="path" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="1R$Cm9qGYm2" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qGYJ8" role="3cqZAp">
          <node concept="37vLTw" id="1R$Cm9qGYJ7" role="3clFbG">
            <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3AEuFq_MUxn" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qGYgL" role="3clF45">
        <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
      </node>
      <node concept="2AHcQZ" id="3AEuFq_MW9c" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="P$JXv" id="3AEuFq_MZsK" role="lGtFl">
        <node concept="TZ5HA" id="3AEuFq_MZsL" role="TZ5H$">
          <node concept="1dT_AC" id="3AEuFq_MZsM" role="1dT_Ay">
            <property role="1dT_AB" value="TODO: remove" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1OShD0HCtUD" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jP_HO" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="1mP5b6jP_HP" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jP_HQ" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jP_HR" role="3clF47">
        <node concept="3clFbJ" id="1mP5b6jP_HS" role="3cqZAp">
          <node concept="3clFbS" id="1mP5b6jP_HT" role="3clFbx">
            <node concept="3cpWs6" id="1mP5b6jP_HU" role="3cqZAp">
              <node concept="3clFbT" id="1mP5b6jP_HV" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1mP5b6jP_HW" role="3clFbw">
            <node concept="Xjq3P" id="1mP5b6jP_HN" role="3uHU7B" />
            <node concept="37vLTw" id="1mP5b6jP_HX" role="3uHU7w">
              <ref role="3cqZAo" node="1mP5b6jP_Ik" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1mP5b6jP_HY" role="3cqZAp">
          <node concept="3clFbS" id="1mP5b6jP_HZ" role="3clFbx">
            <node concept="3cpWs6" id="1mP5b6jP_I0" role="3cqZAp">
              <node concept="3clFbT" id="1mP5b6jP_I1" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1mP5b6jP_I2" role="3clFbw">
            <node concept="3clFbC" id="1mP5b6jP_I3" role="3uHU7B">
              <node concept="37vLTw" id="1mP5b6jP_I4" role="3uHU7B">
                <ref role="3cqZAo" node="1mP5b6jP_Ik" resolve="o" />
              </node>
              <node concept="10Nm6u" id="1mP5b6jP_I5" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="1mP5b6jP_I6" role="3uHU7w">
              <node concept="2OqwBi" id="1mP5b6jP_I7" role="3uHU7B">
                <node concept="Xjq3P" id="1mP5b6jP_I8" role="2Oq$k0" />
                <node concept="liA8E" id="1mP5b6jP_I9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="1mP5b6jP_Ia" role="3uHU7w">
                <node concept="37vLTw" id="1mP5b6jP_Ib" role="2Oq$k0">
                  <ref role="3cqZAo" node="1mP5b6jP_Ik" resolve="o" />
                </node>
                <node concept="liA8E" id="1mP5b6jP_Ic" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mP5b6jP_Id" role="3cqZAp" />
        <node concept="3cpWs8" id="1mP5b6jP_Ie" role="3cqZAp">
          <node concept="3cpWsn" id="1mP5b6jP_If" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="1mP5b6jP_Ig" role="1tU5fm">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
            </node>
            <node concept="10QFUN" id="1mP5b6jP_Ih" role="33vP2m">
              <node concept="3uibUv" id="1mP5b6jP_Ii" role="10QFUM">
                <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
              </node>
              <node concept="37vLTw" id="1mP5b6jP_Ij" role="10QFUP">
                <ref role="3cqZAo" node="1mP5b6jP_Ik" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1mP5b6jP_Is" role="3cqZAp">
          <node concept="3fqX7Q" id="1mP5b6jP_It" role="3clFbw">
            <node concept="2YIFZM" id="1mP5b6jP_Iu" role="3fr31v">
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="33ny:~Arrays.equals(java.lang.Object[],java.lang.Object[]):boolean" resolve="equals" />
              <node concept="37vLTw" id="1mP5b6jP_Iq" role="37wK5m">
                <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
              </node>
              <node concept="2OqwBi" id="1mP5b6jP_Iv" role="37wK5m">
                <node concept="37vLTw" id="1mP5b6jP_In" role="2Oq$k0">
                  <ref role="3cqZAo" node="1mP5b6jP_If" resolve="that" />
                </node>
                <node concept="2OwXpG" id="1mP5b6jP_Ir" role="2OqNvi">
                  <ref role="2Oxat5" node="5JQSuNswjST" resolve="arguments" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1mP5b6jP_Iw" role="3clFbx">
            <node concept="3cpWs6" id="1mP5b6jP_Ix" role="3cqZAp">
              <node concept="3clFbT" id="1mP5b6jP_Iy" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4sgxfjnCY3d" role="3cqZAp">
          <node concept="3SKdUq" id="4sgxfjnCY3f" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: paths are obsolete, why not just use symbol?" />
          </node>
        </node>
        <node concept="3clFbJ" id="4sgxfjnCIrB" role="3cqZAp">
          <node concept="3clFbS" id="4sgxfjnCIrD" role="3clFbx">
            <node concept="3cpWs6" id="4sgxfjnCLK0" role="3cqZAp">
              <node concept="3clFbC" id="4sgxfjnCQ4A" role="3cqZAk">
                <node concept="10Nm6u" id="4sgxfjnCQAk" role="3uHU7w" />
                <node concept="2OqwBi" id="4sgxfjnCNAZ" role="3uHU7B">
                  <node concept="37vLTw" id="4sgxfjnCMY2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1mP5b6jP_If" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="4sgxfjnCOgL" role="2OqNvi">
                    <ref role="2Oxat5" node="1R$Cm9qGTDj" resolve="symbolPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4sgxfjnCKHt" role="3clFbw">
            <node concept="10Nm6u" id="4sgxfjnCLeI" role="3uHU7w" />
            <node concept="37vLTw" id="4sgxfjnCKc5" role="3uHU7B">
              <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4sgxfjnCU$E" role="3cqZAp">
          <node concept="3K4zz7" id="1mP5b6jP_IF" role="3cqZAk">
            <node concept="2OqwBi" id="1mP5b6jP_IH" role="3K4E3e">
              <node concept="liA8E" id="1mP5b6jP_II" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="4sgxfjnCGsi" role="37wK5m">
                  <node concept="2OqwBi" id="1mP5b6jP_IJ" role="2Oq$k0">
                    <node concept="37vLTw" id="1mP5b6jP_IK" role="2Oq$k0">
                      <ref role="3cqZAo" node="1mP5b6jP_If" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="1mP5b6jP_Iz" role="2OqNvi">
                      <ref role="2Oxat5" node="1R$Cm9qGTDj" resolve="symbolPath" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4sgxfjnCHjg" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4sgxfjnCFks" role="2Oq$k0">
                <node concept="37vLTw" id="1mP5b6jP_I$" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
                </node>
                <node concept="liA8E" id="4sgxfjnCFUz" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1mP5b6jP_IL" role="3K4Cdx">
              <node concept="10Nm6u" id="1mP5b6jP_IM" role="3uHU7w" />
              <node concept="2OqwBi" id="4sgxfjnCReM" role="3uHU7B">
                <node concept="37vLTw" id="4sgxfjnCRKp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1mP5b6jP_If" resolve="that" />
                </node>
                <node concept="2OwXpG" id="4sgxfjnCReP" role="2OqNvi">
                  <ref role="2Oxat5" node="1R$Cm9qGTDj" resolve="symbolPath" />
                </node>
              </node>
            </node>
            <node concept="3clFbT" id="4sgxfjnCSXx" role="3K4GZi">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1mP5b6jP_Ik" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1mP5b6jP_Il" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1mP5b6jP_Im" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jPKJM" role="jymVt" />
    <node concept="3clFb_" id="1mP5b6jP_IU" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="1mP5b6jP_IV" role="3clF45" />
      <node concept="3Tm1VV" id="1mP5b6jP_IW" role="1B3o_S" />
      <node concept="3clFbS" id="1mP5b6jP_IX" role="3clF47">
        <node concept="3cpWs8" id="1mP5b6jP_IZ" role="3cqZAp">
          <node concept="3cpWsn" id="1mP5b6jP_J0" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="1mP5b6jP_J1" role="1tU5fm" />
            <node concept="3cmrfG" id="1mP5b6jP_J2" role="33vP2m">
              <property role="3cmrfH" value="23" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mP5b6jP_Jc" role="3cqZAp">
          <node concept="37vLTI" id="1mP5b6jP_Jd" role="3clFbG">
            <node concept="3cpWs3" id="1mP5b6jP_Je" role="37vLTx">
              <node concept="17qRlL" id="1mP5b6jP_J8" role="3uHU7B">
                <node concept="3cmrfG" id="1mP5b6jP_J9" role="3uHU7B">
                  <property role="3cmrfH" value="37" />
                </node>
                <node concept="37vLTw" id="1mP5b6jP_J3" role="3uHU7w">
                  <ref role="3cqZAo" node="1mP5b6jP_J0" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="1mP5b6jP_Jf" role="3uHU7w">
                <node concept="3K4zz7" id="1mP5b6jP_Jg" role="1eOMHV">
                  <node concept="3cmrfG" id="1mP5b6jP_Jh" role="3K4GZi">
                    <property role="3cmrfH" value="17" />
                  </node>
                  <node concept="2YIFZM" id="1mP5b6jP_Ji" role="3K4E3e">
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <ref role="37wK5l" to="33ny:~Arrays.hashCode(java.lang.Object[]):int" resolve="hashCode" />
                    <node concept="37vLTw" id="1mP5b6jP_Ja" role="37wK5m">
                      <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="3y3z36" id="1mP5b6jP_Jj" role="3K4Cdx">
                    <node concept="10Nm6u" id="1mP5b6jP_Jk" role="3uHU7w" />
                    <node concept="37vLTw" id="1mP5b6jP_Jb" role="3uHU7B">
                      <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1mP5b6jP_Jl" role="37vLTJ">
              <ref role="3cqZAo" node="1mP5b6jP_J0" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mP5b6jP_Jr" role="3cqZAp">
          <node concept="37vLTI" id="1mP5b6jP_Js" role="3clFbG">
            <node concept="3cpWs3" id="1mP5b6jP_Jt" role="37vLTx">
              <node concept="1eOMI4" id="1mP5b6jP_Ju" role="3uHU7w">
                <node concept="3K4zz7" id="1mP5b6jP_Jv" role="1eOMHV">
                  <node concept="3cmrfG" id="1mP5b6jP_Jw" role="3K4GZi">
                    <property role="3cmrfH" value="19" />
                  </node>
                  <node concept="1Wc70l" id="52tOIisblhl" role="3K4Cdx">
                    <node concept="3y3z36" id="52tOIisbso$" role="3uHU7w">
                      <node concept="10Nm6u" id="52tOIisbt0a" role="3uHU7w" />
                      <node concept="2OqwBi" id="52tOIisbmed" role="3uHU7B">
                        <node concept="37vLTw" id="52tOIisbozJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
                        </node>
                        <node concept="liA8E" id="52tOIisbpb2" role="2OqNvi">
                          <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="1mP5b6jP_Jx" role="3uHU7B">
                      <node concept="37vLTw" id="1mP5b6jP_Jp" role="3uHU7B">
                        <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
                      </node>
                      <node concept="10Nm6u" id="1mP5b6jP_Jy" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="52tOIisbu5p" role="3K4E3e">
                    <node concept="2OqwBi" id="1mP5b6jP_Jz" role="2Oq$k0">
                      <node concept="liA8E" id="52tOIisbtyq" role="2OqNvi">
                        <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                      </node>
                      <node concept="37vLTw" id="1mP5b6jP_Jq" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R$Cm9qGTDj" resolve="symbolPath" />
                      </node>
                    </node>
                    <node concept="liA8E" id="52tOIisbuCi" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="1mP5b6jP_Jm" role="3uHU7B">
                <node concept="3cmrfG" id="1mP5b6jP_Jn" role="3uHU7B">
                  <property role="3cmrfH" value="43" />
                </node>
                <node concept="37vLTw" id="1mP5b6jP_Jo" role="3uHU7w">
                  <ref role="3cqZAo" node="1mP5b6jP_J0" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1mP5b6jP_JC" role="37vLTJ">
              <ref role="3cqZAo" node="1mP5b6jP_J0" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mP5b6jP_JD" role="3cqZAp">
          <node concept="37vLTw" id="1mP5b6jP_JE" role="3clFbG">
            <ref role="3cqZAo" node="1mP5b6jP_J0" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1mP5b6jP_IY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mP5b6jPLTr" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EXK6a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="argsArr" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1bm7a6EXK6d" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EXLhC" role="3cqZAp">
          <node concept="37vLTw" id="1bm7a6EXLhB" role="3clFbG">
            <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1bm7a6EXJmm" role="1B3o_S" />
      <node concept="10Q1$e" id="1bm7a6EXKLY" role="3clF45">
        <node concept="3uibUv" id="3H0z$hTtvcM" role="10Q1$1">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$jH9oLbHbo" role="jymVt" />
    <node concept="3clFb_" id="6$jH9oLbZOI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="argsSize" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6$jH9oLbZOL" role="3clF47">
        <node concept="3clFbF" id="6$jH9oLc0uK" role="3cqZAp">
          <node concept="2OqwBi" id="6$jH9oLc0y3" role="3clFbG">
            <node concept="37vLTw" id="6$jH9oLc0uJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
            </node>
            <node concept="1Rwk04" id="6$jH9oLc0LN" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6$jH9oLbZ5w" role="1B3o_S" />
      <node concept="10Oyi0" id="6$jH9oLbZIH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6$jH9oLbYsm" role="jymVt" />
    <node concept="3clFb_" id="6$jH9oLbK0n" role="jymVt">
      <property role="TrG5h" value="argAt" />
      <node concept="37vLTG" id="6$jH9oLbMwC" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="6$jH9oLbMMK" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3H0z$hTtvlF" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tmbuc" id="6$jH9oLbKCq" role="1B3o_S" />
      <node concept="3clFbS" id="6$jH9oLbK0r" role="3clF47">
        <node concept="3clFbF" id="6$jH9oLbMNT" role="3cqZAp">
          <node concept="AH0OO" id="6$jH9oLbMZ0" role="3clFbG">
            <node concept="37vLTw" id="6$jH9oLbN7N" role="AHEQo">
              <ref role="3cqZAo" node="6$jH9oLbMwC" resolve="idx" />
            </node>
            <node concept="37vLTw" id="6$jH9oLbMNS" role="AHHXb">
              <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNswjSS" role="jymVt" />
    <node concept="312cEg" id="5JQSuNswjST" role="jymVt">
      <property role="TrG5h" value="arguments" />
      <node concept="3Tmbuc" id="bUIfhjJIVQ" role="1B3o_S" />
      <node concept="10Q1$e" id="5JQSuNswjSV" role="1tU5fm">
        <node concept="3uibUv" id="3H0z$hTttJ3" role="10Q1$1">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="bUIfhjJInn" role="jymVt" />
    <node concept="312cEg" id="1R$Cm9qGTDj" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="symbolPath" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1R$Cm9qGTd0" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qGT$7" role="1tU5fm">
        <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
      </node>
    </node>
    <node concept="2tJIrI" id="5BGv8yzv_uP" role="jymVt" />
    <node concept="312cEg" id="5BGv8yzv$T7" role="jymVt">
      <property role="TrG5h" value="variablesCount" />
      <node concept="3Tm6S6" id="5BGv8yzv$T8" role="1B3o_S" />
      <node concept="10Oyi0" id="5BGv8yzvB4P" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="5JQSuNswOXL">
    <property role="TrG5h" value="TermNode" />
    <node concept="3Tm1VV" id="5JQSuNswOXM" role="1B3o_S" />
    <node concept="3uibUv" id="5JQSuNswOY9" role="1zkMxy">
      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
    </node>
    <node concept="2tJIrI" id="5JQSuNsxgT7" role="jymVt" />
    <node concept="2YIFZL" id="6YPNC4NI311" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="37vLTG" id="6YPNC4NI4Yl" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="6YPNC4NI58j" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6YPNC4NI2b7" role="3clF47">
        <node concept="3clFbF" id="6YPNC4NI59Q" role="3cqZAp">
          <node concept="2ShNRf" id="6YPNC4NI59O" role="3clFbG">
            <node concept="1pGfFk" id="6YPNC4NI6eF" role="2ShVmc">
              <ref role="37wK5l" node="6YPNC4NHOW5" resolve="TermNode.Symbol" />
              <node concept="37vLTw" id="6YPNC4NI6ih" role="37wK5m">
                <ref role="3cqZAo" node="6YPNC4NI4Yl" resolve="arity" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4NI3QL" role="3clF45">
        <ref role="3uigEE" node="6YPNC4NHMTI" resolve="TermNode.Symbol" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4NI2b6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6YPNC4NIqcM" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNsxhfn" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="5JQSuNsxhmc" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="1R$Cm9qImDI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5JQSuNsxhoK" role="3clF46">
        <property role="TrG5h" value="terms" />
        <node concept="8X2XB" id="5JQSuNsxh_S" role="1tU5fm">
          <node concept="3uibUv" id="5JQSuNsxhtQ" role="8Xvag">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5JQSuNsxhfq" role="3clF47">
        <node concept="3SKdUt" id="5YIOnePeoEN" role="3cqZAp">
          <node concept="3SKdUq" id="5YIOnePeoGr" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: should accept only Node... as arguments" />
          </node>
        </node>
        <node concept="3cpWs8" id="6$jH9oLdIk9" role="3cqZAp">
          <node concept="3cpWsn" id="6$jH9oLdIka" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="6$jH9oLdIk8" role="1tU5fm">
              <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="6$jH9oLdIkb" role="33vP2m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="37vLTw" id="6$jH9oLdIkc" role="37wK5m">
                <ref role="3cqZAo" node="5JQSuNsxhmc" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5BGv8yzw2PY" role="3cqZAp">
          <node concept="3cpWsn" id="5BGv8yzw2Q1" role="3cpWs9">
            <property role="TrG5h" value="varCount" />
            <node concept="10Oyi0" id="5BGv8yzw2PW" role="1tU5fm" />
            <node concept="3cmrfG" id="5BGv8yzw8eo" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5BGv8yzvPYh" role="3cqZAp">
          <node concept="3clFbS" id="5BGv8yzvPYj" role="2LFqv$">
            <node concept="3clFbF" id="5BGv8yzw9bf" role="3cqZAp">
              <node concept="d57v9" id="5BGv8yzwabL" role="3clFbG">
                <node concept="2OqwBi" id="5BGv8yzwe3T" role="37vLTx">
                  <node concept="AH0OO" id="5BGv8yzwc7H" role="2Oq$k0">
                    <node concept="37vLTw" id="5BGv8yzwd5J" role="AHEQo">
                      <ref role="3cqZAo" node="5BGv8yzvPYk" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5BGv8yzwb8H" role="AHHXb">
                      <ref role="3cqZAo" node="5JQSuNsxhoK" resolve="terms" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5BGv8yzwf2O" role="2OqNvi">
                    <ref role="37wK5l" node="5BGv8yzvvIZ" resolve="variablesCount" />
                  </node>
                </node>
                <node concept="37vLTw" id="5BGv8yzw9bd" role="37vLTJ">
                  <ref role="3cqZAo" node="5BGv8yzw2Q1" resolve="varCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5BGv8yzvPYk" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5BGv8yzvQUB" role="1tU5fm" />
            <node concept="3cmrfG" id="5BGv8yzvTIq" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5BGv8yzvVEc" role="1Dwp0S">
            <node concept="2OqwBi" id="5BGv8yzvWEi" role="3uHU7w">
              <node concept="37vLTw" id="5BGv8yzvWj$" role="2Oq$k0">
                <ref role="3cqZAo" node="5JQSuNsxhoK" resolve="terms" />
              </node>
              <node concept="1Rwk04" id="5BGv8yzvXKD" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="5BGv8yzvUEz" role="3uHU7B">
              <ref role="3cqZAo" node="5BGv8yzvPYk" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5BGv8yzvZ2W" role="1Dwrff">
            <node concept="37vLTw" id="5BGv8yzvZ2Y" role="2$L3a6">
              <ref role="3cqZAo" node="5BGv8yzvPYk" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R$Cm9qGViz" role="3cqZAp">
          <node concept="3cpWsn" id="1R$Cm9qGVi$" role="3cpWs9">
            <property role="TrG5h" value="n" />
            <node concept="3uibUv" id="1R$Cm9qGVio" role="1tU5fm">
              <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
            </node>
            <node concept="2ShNRf" id="1R$Cm9qGVi_" role="33vP2m">
              <node concept="1pGfFk" id="1R$Cm9qGViA" role="2ShVmc">
                <ref role="37wK5l" node="5JQSuNswP2z" resolve="TermNode" />
                <node concept="37vLTw" id="6$jH9oLdIkd" role="37wK5m">
                  <ref role="3cqZAo" node="6$jH9oLdIka" resolve="path" />
                </node>
                <node concept="37vLTw" id="1R$Cm9qGViC" role="37wK5m">
                  <ref role="3cqZAo" node="5JQSuNsxhoK" resolve="terms" />
                </node>
                <node concept="37vLTw" id="5BGv8yzwh1L" role="37wK5m">
                  <ref role="3cqZAo" node="5BGv8yzw2Q1" resolve="varCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1R$Cm9qGVt3" role="3cqZAp">
          <node concept="3clFbS" id="1R$Cm9qGVt6" role="2LFqv$">
            <node concept="3clFbF" id="dfChU1mgHX" role="3cqZAp">
              <node concept="2OqwBi" id="dfChU1mgKb" role="3clFbG">
                <node concept="37vLTw" id="dfChU1mgHV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R$Cm9qGVt9" resolve="ch" />
                </node>
                <node concept="liA8E" id="dfChU1mh4C" role="2OqNvi">
                  <ref role="37wK5l" node="dfChU1lFHl" resolve="attached" />
                  <node concept="37vLTw" id="dfChU1mhop" role="37wK5m">
                    <ref role="3cqZAo" node="1R$Cm9qGVi$" resolve="n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1R$Cm9qGVt9" role="1Duv9x">
            <property role="TrG5h" value="ch" />
            <node concept="3uibUv" id="1R$Cm9qGVEy" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
          <node concept="37vLTw" id="1R$Cm9qGWcp" role="1DdaDG">
            <ref role="3cqZAo" node="5JQSuNsxhoK" resolve="terms" />
          </node>
        </node>
        <node concept="3clFbF" id="5JQSuNsxiQN" role="3cqZAp">
          <node concept="37vLTw" id="1R$Cm9qGViD" role="3clFbG">
            <ref role="3cqZAo" node="1R$Cm9qGVi$" resolve="n" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5JQSuNsxh5a" role="1B3o_S" />
      <node concept="3uibUv" id="5JQSuNsxhdt" role="3clF45">
        <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNsxgYt" role="jymVt" />
    <node concept="3clFbW" id="5JQSuNswP2z" role="jymVt">
      <node concept="3cqZAl" id="5JQSuNswP2$" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNswP2A" role="3clF47">
        <node concept="XkiVB" id="5JQSuNswQer" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Node" />
          <node concept="37vLTw" id="1R$Cm9qH7KO" role="37wK5m">
            <ref role="3cqZAo" node="5JQSuNswP3S" resolve="symbolPath" />
          </node>
          <node concept="37vLTw" id="5JQSuNswQik" role="37wK5m">
            <ref role="3cqZAo" node="5JQSuNswPj8" resolve="terms" />
          </node>
          <node concept="37vLTw" id="5BGv8yzvKR2" role="37wK5m">
            <ref role="3cqZAo" node="5BGv8yzvESG" resolve="varCount" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5BGv8yzvel8" role="1B3o_S" />
      <node concept="37vLTG" id="5JQSuNswP3S" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6$jH9oLdGGe" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="5JQSuNswPj8" role="3clF46">
        <property role="TrG5h" value="terms" />
        <node concept="10Q1$e" id="5JQSuNswQ9p" role="1tU5fm">
          <node concept="3uibUv" id="dfChU1lAUt" role="10Q1$1">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5BGv8yzvESG" role="3clF46">
        <property role="TrG5h" value="varCount" />
        <node concept="10Oyi0" id="5BGv8yzvGl_" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EY4kQ" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EY4Ia" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6EZ0kf" role="3clF45">
        <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
      </node>
      <node concept="3Tm1VV" id="1bm7a6EY4Ic" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EY4Ih" role="3clF47">
        <node concept="3cpWs8" id="1bm7a6F2ReL" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6F2ReM" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="10Q1$e" id="1bm7a6F2ReC" role="1tU5fm">
              <node concept="3uibUv" id="dfChU1mp8C" role="10Q1$1">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
            <node concept="2ShNRf" id="1bm7a6F2ReN" role="33vP2m">
              <node concept="3$_iS1" id="1bm7a6F2ReO" role="2ShVmc">
                <node concept="3$GHV9" id="1bm7a6F2ReP" role="3$GQph">
                  <node concept="2OqwBi" id="bUIfhjKc3j" role="3$I4v7">
                    <node concept="37vLTw" id="bUIfhjKbDe" role="2Oq$k0">
                      <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                    </node>
                    <node concept="1Rwk04" id="bUIfhjKcA5" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="dfChU1moFh" role="3$_nBY">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1bm7a6F2Sui" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6F2Sul" role="2LFqv$">
            <node concept="3clFbF" id="1bm7a6F2UGc" role="3cqZAp">
              <node concept="37vLTI" id="1bm7a6F2Vh_" role="3clFbG">
                <node concept="2OqwBi" id="1bm7a6F2VTm" role="37vLTx">
                  <node concept="AH0OO" id="bUIfhjKfuo" role="2Oq$k0">
                    <node concept="37vLTw" id="bUIfhjKfSi" role="AHEQo">
                      <ref role="3cqZAo" node="1bm7a6F2Suo" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="bUIfhjKf8M" role="AHHXb">
                      <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1bm7a6F2Wb5" role="2OqNvi">
                    <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
                  </node>
                </node>
                <node concept="AH0OO" id="1bm7a6F2V8J" role="37vLTJ">
                  <node concept="37vLTw" id="1bm7a6F2Va6" role="AHEQo">
                    <ref role="3cqZAo" node="1bm7a6F2Suo" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="1bm7a6F2UGb" role="AHHXb">
                    <ref role="3cqZAo" node="1bm7a6F2ReM" resolve="copy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1bm7a6F2Suo" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1bm7a6F2SM2" role="1tU5fm" />
            <node concept="3cmrfG" id="1bm7a6F2SOr" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="1bm7a6F2Ts3" role="1Dwp0S">
            <node concept="2OqwBi" id="bUIfhjKdNO" role="3uHU7w">
              <node concept="37vLTw" id="bUIfhjKdnz" role="2Oq$k0">
                <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
              </node>
              <node concept="1Rwk04" id="bUIfhjKemG" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="1bm7a6F2SQT" role="3uHU7B">
              <ref role="3cqZAo" node="1bm7a6F2Suo" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="1bm7a6F2UjG" role="1Dwrff">
            <node concept="37vLTw" id="1bm7a6F2UjI" role="2$L3a6">
              <ref role="3cqZAo" node="1bm7a6F2Suo" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1bm7a6EY9N8" role="3cqZAp">
          <node concept="2YIFZM" id="1bm7a6EYa5i" role="3clFbG">
            <ref role="37wK5l" node="5JQSuNsxhfn" resolve="create" />
            <ref role="1Pybhc" node="5JQSuNswOXL" resolve="TermNode" />
            <node concept="1rXfSq" id="1OShD0HEWkI" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="1bm7a6F2WHc" role="37wK5m">
              <ref role="3cqZAo" node="1bm7a6F2ReM" resolve="copy" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1bm7a6EYLsS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02TzXt" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02T_i3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02T_i4" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02T_i5" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF02T_i8" role="1B3o_S" />
      <node concept="2AHcQZ" id="3OPtF02T_ia" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3OPtF02T_id" role="3clF47">
        <node concept="3SKdUt" id="60NbDCXWOXt" role="3cqZAp">
          <node concept="3SKdUq" id="60NbDCXWOXv" role="3SKWNk">
            <property role="3SKdUp" value="find the index of the last argument that is _unchanged_ by the mapper" />
          </node>
        </node>
        <node concept="3cpWs8" id="4sgxfjnB6b2" role="3cqZAp">
          <node concept="3cpWsn" id="4sgxfjnB6b5" role="3cpWs9">
            <property role="TrG5h" value="lastSameArgIdx" />
            <node concept="10Oyi0" id="4sgxfjnB6b0" role="1tU5fm" />
            <node concept="3cmrfG" id="4sgxfjnB7eH" role="33vP2m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4sgxfjnB7NX" role="3cqZAp">
          <node concept="3cpWsn" id="4sgxfjnB7NY" role="3cpWs9">
            <property role="TrG5h" value="firstMappedArg" />
            <node concept="3uibUv" id="4sgxfjnB7NZ" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="10Nm6u" id="4sgxfjnB9tj" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="4sgxfjnBa3t" role="3cqZAp">
          <node concept="3clFbS" id="4sgxfjnBa3v" role="2LFqv$">
            <node concept="3cpWs8" id="4sgxfjnBevE" role="3cqZAp">
              <node concept="3cpWsn" id="4sgxfjnBevF" role="3cpWs9">
                <property role="TrG5h" value="arg" />
                <node concept="3uibUv" id="4sgxfjnBevB" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
                <node concept="AH0OO" id="bUIfhjJZSW" role="33vP2m">
                  <node concept="37vLTw" id="bUIfhjJZB7" role="AHHXb">
                    <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                  </node>
                  <node concept="37vLTw" id="bUIfhjK26I" role="AHEQo">
                    <ref role="3cqZAo" node="4sgxfjnB6b5" resolve="lastSameArgIdx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sgxfjnBd0a" role="3cqZAp">
              <node concept="37vLTI" id="4sgxfjnBdj0" role="3clFbG">
                <node concept="37vLTw" id="4sgxfjnBd08" role="37vLTJ">
                  <ref role="3cqZAo" node="4sgxfjnB7NY" resolve="firstMappedArg" />
                </node>
                <node concept="2OqwBi" id="4sgxfjnBd$P" role="37vLTx">
                  <node concept="37vLTw" id="4sgxfjnBd$Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF02T_i4" resolve="mapper" />
                  </node>
                  <node concept="liA8E" id="4sgxfjnBd$R" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                    <node concept="37vLTw" id="4sgxfjnBevI" role="37wK5m">
                      <ref role="3cqZAo" node="4sgxfjnBevF" resolve="arg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4sgxfjnByFt" role="3cqZAp">
              <node concept="3SKdUq" id="4sgxfjnByFv" role="3SKWNk">
                <property role="3SKdUp" value="check if the returned value is different using referential equality" />
              </node>
            </node>
            <node concept="3clFbJ" id="4sgxfjnBfFv" role="3cqZAp">
              <node concept="3clFbS" id="4sgxfjnBfFx" role="3clFbx">
                <node concept="3zACq4" id="4sgxfjnBgQm" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="4sgxfjnBgh4" role="3clFbw">
                <node concept="37vLTw" id="4sgxfjnBgzN" role="3uHU7w">
                  <ref role="3cqZAo" node="4sgxfjnB7NY" resolve="firstMappedArg" />
                </node>
                <node concept="37vLTw" id="4sgxfjnBfY9" role="3uHU7B">
                  <ref role="3cqZAo" node="4sgxfjnBevF" resolve="arg" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4sgxfjnBaZt" role="2$JKZa">
            <node concept="2OqwBi" id="bUIfhjJYot" role="3uHU7w">
              <node concept="37vLTw" id="bUIfhjJXYl" role="2Oq$k0">
                <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
              </node>
              <node concept="1Rwk04" id="bUIfhjJYTc" role="2OqNvi" />
            </node>
            <node concept="2$rviw" id="4sgxfjnBaBW" role="3uHU7B">
              <node concept="37vLTw" id="4sgxfjnBalt" role="2$L3a6">
                <ref role="3cqZAo" node="4sgxfjnB6b5" resolve="lastSameArgIdx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4sgxfjnBnyu" role="3cqZAp">
          <node concept="3SKdUq" id="4sgxfjnBnyw" role="3SKWNk">
            <property role="3SKdUp" value="optimization: return this object if nothing has changed" />
          </node>
        </node>
        <node concept="3clFbJ" id="4sgxfjnBkXU" role="3cqZAp">
          <node concept="3clFbS" id="4sgxfjnBkXW" role="3clFbx">
            <node concept="3cpWs6" id="4sgxfjnBmgn" role="3cqZAp">
              <node concept="Xjq3P" id="4sgxfjnBFdf" role="3cqZAk" />
            </node>
          </node>
          <node concept="2d3UOw" id="4sgxfjnBlCi" role="3clFbw">
            <node concept="2OqwBi" id="bUIfhjK3g6" role="3uHU7w">
              <node concept="37vLTw" id="bUIfhjK2Pp" role="2Oq$k0">
                <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
              </node>
              <node concept="1Rwk04" id="bUIfhjK3Lq" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="4sgxfjnBlhS" role="3uHU7B">
              <ref role="3cqZAo" node="4sgxfjnB6b5" resolve="lastSameArgIdx" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4sgxfjnBkE6" role="3cqZAp" />
        <node concept="3cpWs8" id="3OPtF02TEoH" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF02TEoI" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="10Q1$e" id="3OPtF02TEoJ" role="1tU5fm">
              <node concept="3uibUv" id="1OShD0HXz2S" role="10Q1$1">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
            <node concept="2ShNRf" id="3OPtF02TEoL" role="33vP2m">
              <node concept="3$_iS1" id="3OPtF02TEoM" role="2ShVmc">
                <node concept="3$GHV9" id="3OPtF02TEoN" role="3$GQph">
                  <node concept="2OqwBi" id="bUIfhjK4Tc" role="3$I4v7">
                    <node concept="37vLTw" id="bUIfhjK4wh" role="2Oq$k0">
                      <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                    </node>
                    <node concept="1Rwk04" id="bUIfhjK5qO" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="1OShD0HY4e9" role="3$_nBY">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3OPtF02TEoQ" role="3cqZAp">
          <node concept="3clFbS" id="3OPtF02TEoR" role="2LFqv$">
            <node concept="3clFbF" id="60NbDCXWRgH" role="3cqZAp">
              <node concept="37vLTI" id="60NbDCXWRgI" role="3clFbG">
                <node concept="AH0OO" id="60NbDCXWRgJ" role="37vLTJ">
                  <node concept="37vLTw" id="60NbDCXWRgK" role="AHEQo">
                    <ref role="3cqZAo" node="3OPtF02TEp1" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="60NbDCXWRgL" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF02TEoI" resolve="copy" />
                  </node>
                </node>
                <node concept="2OqwBi" id="60NbDCXWSXK" role="37vLTx">
                  <node concept="AH0OO" id="60NbDCXWSy$" role="2Oq$k0">
                    <node concept="37vLTw" id="60NbDCXWSPf" role="AHEQo">
                      <ref role="3cqZAo" node="3OPtF02TEp1" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="60NbDCXWSii" role="AHHXb">
                      <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="60NbDCXWTav" role="2OqNvi">
                    <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3OPtF02TEp1" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3OPtF02TEp2" role="1tU5fm" />
            <node concept="3cmrfG" id="3OPtF02TEp3" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3OPtF02TEp4" role="1Dwp0S">
            <node concept="37vLTw" id="4sgxfjnBuCG" role="3uHU7w">
              <ref role="3cqZAo" node="4sgxfjnB6b5" resolve="lastSameArgIdx" />
            </node>
            <node concept="37vLTw" id="3OPtF02TEp6" role="3uHU7B">
              <ref role="3cqZAo" node="3OPtF02TEp1" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3OPtF02TEp7" role="1Dwrff">
            <node concept="37vLTw" id="3OPtF02TEp8" role="2$L3a6">
              <ref role="3cqZAo" node="3OPtF02TEp1" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sgxfjnBvl$" role="3cqZAp">
          <node concept="37vLTI" id="4sgxfjnBvlA" role="3clFbG">
            <node concept="AH0OO" id="4sgxfjnBvlB" role="37vLTJ">
              <node concept="37vLTw" id="4sgxfjnBvKw" role="AHEQo">
                <ref role="3cqZAo" node="4sgxfjnB6b5" resolve="lastSameArgIdx" />
              </node>
              <node concept="37vLTw" id="4sgxfjnBvlD" role="AHHXb">
                <ref role="3cqZAo" node="3OPtF02TEoI" resolve="copy" />
              </node>
            </node>
            <node concept="37vLTw" id="4sgxfjnBwtH" role="37vLTx">
              <ref role="3cqZAo" node="4sgxfjnB7NY" resolve="firstMappedArg" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="4sgxfjnBtvH" role="3cqZAp">
          <node concept="3clFbS" id="4sgxfjnBtvI" role="2LFqv$">
            <node concept="3cpWs8" id="60NbDCXWZpD" role="3cqZAp">
              <node concept="3cpWsn" id="60NbDCXWZpE" role="3cpWs9">
                <property role="TrG5h" value="arg" />
                <node concept="3uibUv" id="60NbDCXWZp_" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
                <node concept="AH0OO" id="60NbDCXWZpF" role="33vP2m">
                  <node concept="37vLTw" id="60NbDCXWZpG" role="AHEQo">
                    <ref role="3cqZAo" node="4sgxfjnBtvT" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="60NbDCXWZpH" role="AHHXb">
                    <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="60NbDCXWYQp" role="3cqZAp">
              <node concept="3cpWsn" id="60NbDCXWYQq" role="3cpWs9">
                <property role="TrG5h" value="mappedArg" />
                <node concept="3uibUv" id="60NbDCXWYQd" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
                <node concept="2OqwBi" id="60NbDCXWYQr" role="33vP2m">
                  <node concept="37vLTw" id="60NbDCXWYQs" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF02T_i4" resolve="mapper" />
                  </node>
                  <node concept="liA8E" id="60NbDCXWYQt" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                    <node concept="37vLTw" id="60NbDCXWZpI" role="37wK5m">
                      <ref role="3cqZAo" node="60NbDCXWZpE" resolve="arg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="60NbDCXWZSN" role="3cqZAp">
              <node concept="3clFbS" id="60NbDCXWZSP" role="3clFbx">
                <node concept="3clFbF" id="60NbDCXX0vP" role="3cqZAp">
                  <node concept="37vLTI" id="60NbDCXX0$7" role="3clFbG">
                    <node concept="2OqwBi" id="60NbDCXX0CC" role="37vLTx">
                      <node concept="37vLTw" id="60NbDCXX0$S" role="2Oq$k0">
                        <ref role="3cqZAo" node="60NbDCXWZpE" resolve="arg" />
                      </node>
                      <node concept="liA8E" id="60NbDCXX0KP" role="2OqNvi">
                        <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="60NbDCXX0vN" role="37vLTJ">
                      <ref role="3cqZAo" node="60NbDCXWYQq" resolve="mappedArg" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="60NbDCXX0no" role="3clFbw">
                <node concept="37vLTw" id="60NbDCXWZZE" role="3uHU7B">
                  <ref role="3cqZAo" node="60NbDCXWYQq" resolve="mappedArg" />
                </node>
                <node concept="37vLTw" id="60NbDCXX08f" role="3uHU7w">
                  <ref role="3cqZAo" node="60NbDCXWZpE" resolve="arg" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sgxfjnBtvJ" role="3cqZAp">
              <node concept="37vLTI" id="4sgxfjnBtvK" role="3clFbG">
                <node concept="37vLTw" id="60NbDCXWYQx" role="37vLTx">
                  <ref role="3cqZAo" node="60NbDCXWYQq" resolve="mappedArg" />
                </node>
                <node concept="AH0OO" id="4sgxfjnBtvL" role="37vLTJ">
                  <node concept="37vLTw" id="4sgxfjnBtvM" role="AHEQo">
                    <ref role="3cqZAo" node="4sgxfjnBtvT" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="4sgxfjnBtvN" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF02TEoI" resolve="copy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4sgxfjnBtvT" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4sgxfjnBtvU" role="1tU5fm" />
            <node concept="3cpWs3" id="4sgxfjnBxzr" role="33vP2m">
              <node concept="3cmrfG" id="4sgxfjnBxzH" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="4sgxfjnBxbP" role="3uHU7B">
                <ref role="3cqZAo" node="4sgxfjnB6b5" resolve="lastSameArgIdx" />
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4sgxfjnBtvW" role="1Dwp0S">
            <node concept="2OqwBi" id="bUIfhjK8Ta" role="3uHU7w">
              <node concept="37vLTw" id="bUIfhjK7k4" role="2Oq$k0">
                <ref role="3cqZAo" node="5JQSuNswjST" resolve="arguments" />
              </node>
              <node concept="1Rwk04" id="bUIfhjK9rg" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="4sgxfjnBtvY" role="3uHU7B">
              <ref role="3cqZAo" node="4sgxfjnBtvT" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="4sgxfjnBtvZ" role="1Dwrff">
            <node concept="37vLTw" id="4sgxfjnBtw0" role="2$L3a6">
              <ref role="3cqZAo" node="4sgxfjnBtvT" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF02TEp9" role="3cqZAp">
          <node concept="2YIFZM" id="1OShD0HXM0v" role="3clFbG">
            <ref role="1Pybhc" node="5JQSuNswOXL" resolve="TermNode" />
            <ref role="37wK5l" node="5JQSuNsxhfn" resolve="create" />
            <node concept="1rXfSq" id="1OShD0HXM0w" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="1OShD0HXM0x" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF02TEoI" resolve="copy" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1OShD0HXE6k" role="3clF45">
        <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTRJ2E" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTRK6q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="47nvOnTRK6r" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="3JgCwkqhww$" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02YOLj" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTRK6u" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTRK6B" role="3clF47">
        <node concept="3clFbF" id="47nvOnTRMrg" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTRMsK" role="3clFbG">
            <node concept="37vLTw" id="47nvOnTRMrf" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTRK6r" resolve="visitor" />
            </node>
            <node concept="liA8E" id="47nvOnTRMZ_" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOARE" resolve="visitTermNode" />
              <node concept="Xjq3P" id="47nvOnTRN87" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTScZy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hOy_AfqCj5" role="jymVt" />
    <node concept="3clFb_" id="5JQSuNs_flu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5JQSuNs_flv" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UX9" role="3clF45" />
      <node concept="3clFbS" id="5JQSuNs_fl$" role="3clF47">
        <node concept="3SKdUt" id="6r6omRld5Xs" role="3cqZAp">
          <node concept="3SKdUq" id="6r6omRld63I" role="3SKWNk">
            <property role="3SKdUp" value="TODO: make sure recursion is impossible here" />
          </node>
        </node>
        <node concept="3clFbF" id="6r6omRld5y7" role="3cqZAp">
          <node concept="2YIFZM" id="6r6omRld5IX" role="3clFbG">
            <ref role="37wK5l" node="4peSo3CLatr" resolve="print" />
            <ref role="1Pybhc" node="4peSo3CLajR" resolve="PrintDelegate" />
            <node concept="Xjq3P" id="6r6omRld5Of" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5JQSuNs_fl_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NHZrW" role="jymVt" />
    <node concept="312cEu" id="6YPNC4NHMTI" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Symbol" />
      <node concept="3clFbW" id="6YPNC4NHOW5" role="jymVt">
        <node concept="37vLTG" id="6YPNC4NHP5y" role="3clF46">
          <property role="TrG5h" value="arity" />
          <node concept="10Oyi0" id="6YPNC4NHP6h" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6YPNC4NHOW7" role="3clF45" />
        <node concept="3Tm6S6" id="6YPNC4NI7Xj" role="1B3o_S" />
        <node concept="3clFbS" id="6YPNC4NHOW9" role="3clF47">
          <node concept="3clFbJ" id="6YPNC4NIWci" role="3cqZAp">
            <node concept="3clFbS" id="6YPNC4NIWck" role="3clFbx">
              <node concept="YS8fn" id="6YPNC4NIWWL" role="3cqZAp">
                <node concept="2ShNRf" id="6YPNC4NIWXA" role="YScLw">
                  <node concept="1pGfFk" id="6YPNC4NIX8O" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="6YPNC4NIWQO" role="3clFbw">
              <node concept="3cmrfG" id="6YPNC4NIWRO" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6YPNC4NIWsS" role="3uHU7B">
                <ref role="3cqZAo" node="6YPNC4NHP5y" resolve="arity" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6YPNC4NHTXk" role="3cqZAp">
            <node concept="37vLTI" id="6YPNC4NHTXm" role="3clFbG">
              <node concept="2OqwBi" id="6YPNC4NHUtU" role="37vLTJ">
                <node concept="Xjq3P" id="6YPNC4NHUuG" role="2Oq$k0" />
                <node concept="2OwXpG" id="6YPNC4NHUtX" role="2OqNvi">
                  <ref role="2Oxat5" node="6YPNC4NHTXg" resolve="arity" />
                </node>
              </node>
              <node concept="37vLTw" id="6YPNC4NHTXq" role="37vLTx">
                <ref role="3cqZAo" node="6YPNC4NHP5y" resolve="arity" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NIwdY" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4NHPNG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6YPNC4NHPNH" role="1B3o_S" />
        <node concept="10P_77" id="6YPNC4NHPNJ" role="3clF45" />
        <node concept="37vLTG" id="6YPNC4NHPNK" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="6YPNC4NHPNL" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="6YPNC4NHPNM" role="3clF47">
          <node concept="3clFbJ" id="6YPNC4NIzHH" role="3cqZAp">
            <node concept="3clFbC" id="6YPNC4NIzOJ" role="3clFbw">
              <node concept="10Nm6u" id="6YPNC4NIzSy" role="3uHU7w" />
              <node concept="37vLTw" id="6YPNC4NIzIZ" role="3uHU7B">
                <ref role="3cqZAo" node="6YPNC4NHPNK" resolve="that" />
              </node>
            </node>
            <node concept="3clFbS" id="6YPNC4NIzHJ" role="3clFbx">
              <node concept="3cpWs6" id="6YPNC4NIzTp" role="3cqZAp">
                <node concept="3clFbT" id="6YPNC4NIzU7" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6YPNC4NI_2K" role="3cqZAp">
            <node concept="3clFbS" id="6YPNC4NI_2M" role="3clFbx">
              <node concept="3cpWs6" id="6YPNC4NIB_R" role="3cqZAp">
                <node concept="3clFbT" id="6YPNC4NICbs" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6YPNC4NIArB" role="3clFbw">
              <node concept="3VsKOn" id="6YPNC4NIBnW" role="3uHU7w">
                <ref role="3VsUkX" node="6YPNC4NHMTI" resolve="TermNode.Symbol" />
              </node>
              <node concept="2OqwBi" id="6YPNC4NI_Xm" role="3uHU7B">
                <node concept="37vLTw" id="6YPNC4NI_UC" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YPNC4NHPNK" resolve="that" />
                </node>
                <node concept="liA8E" id="6YPNC4NIA3h" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6YPNC4NIGPp" role="3cqZAp">
            <node concept="3clFbC" id="6YPNC4NIIFT" role="3clFbG">
              <node concept="2OqwBi" id="6YPNC4NIJk$" role="3uHU7w">
                <node concept="Xjq3P" id="6YPNC4NIJ3z" role="2Oq$k0" />
                <node concept="2OwXpG" id="6YPNC4NIJtX" role="2OqNvi">
                  <ref role="2Oxat5" node="6YPNC4NHTXg" resolve="arity" />
                </node>
              </node>
              <node concept="2OqwBi" id="6YPNC4NIHQc" role="3uHU7B">
                <node concept="1eOMI4" id="6YPNC4NIGPn" role="2Oq$k0">
                  <node concept="10QFUN" id="6YPNC4NIGPk" role="1eOMHV">
                    <node concept="3uibUv" id="6YPNC4NIHqP" role="10QFUM">
                      <ref role="3uigEE" node="6YPNC4NHMTI" resolve="TermNode.Symbol" />
                    </node>
                    <node concept="37vLTw" id="6YPNC4NIHKa" role="10QFUP">
                      <ref role="3cqZAo" node="6YPNC4NHPNK" resolve="that" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="6YPNC4NII85" role="2OqNvi">
                  <ref role="2Oxat5" node="6YPNC4NHTXg" resolve="arity" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4NHPNN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NIwMR" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4NHQDp" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6YPNC4NHQDq" role="1B3o_S" />
        <node concept="10Oyi0" id="6YPNC4NHQDs" role="3clF45" />
        <node concept="3clFbS" id="6YPNC4NHQDt" role="3clF47">
          <node concept="3clFbF" id="6YPNC4NHR6X" role="3cqZAp">
            <node concept="17qRlL" id="6YPNC4NHXEn" role="3clFbG">
              <node concept="3cmrfG" id="6YPNC4NHXER" role="3uHU7w">
                <property role="3cmrfH" value="17" />
              </node>
              <node concept="1eOMI4" id="6YPNC4NHWJa" role="3uHU7B">
                <node concept="3cpWs3" id="6YPNC4NHWJb" role="1eOMHV">
                  <node concept="17qRlL" id="6YPNC4NHWJc" role="3uHU7w">
                    <node concept="3cmrfG" id="6YPNC4NHWJd" role="3uHU7w">
                      <property role="3cmrfH" value="43" />
                    </node>
                    <node concept="37vLTw" id="6YPNC4NHWJe" role="3uHU7B">
                      <ref role="3cqZAo" node="6YPNC4NHTXg" resolve="arity" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6YPNC4NHWJf" role="3uHU7B">
                    <node concept="1rXfSq" id="6YPNC4NHWJg" role="2Oq$k0">
                      <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                    </node>
                    <node concept="liA8E" id="6YPNC4NHWJh" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4NHQDu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NIxnL" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4NHPgK" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6YPNC4NHPgL" role="1B3o_S" />
        <node concept="17QB3L" id="6YPNC4NITmG" role="3clF45" />
        <node concept="3clFbS" id="6YPNC4NHPgO" role="3clF47">
          <node concept="3clFbF" id="6YPNC4NHYrP" role="3cqZAp">
            <node concept="3cpWs3" id="6YPNC4NHY$E" role="3clFbG">
              <node concept="37vLTw" id="6YPNC4NHY_v" role="3uHU7w">
                <ref role="3cqZAo" node="6YPNC4NHTXg" resolve="arity" />
              </node>
              <node concept="Xl_RD" id="6YPNC4NHYrO" role="3uHU7B">
                <property role="Xl_RC" value="node_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4NHPgP" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NHOCB" role="jymVt" />
      <node concept="3Tm1VV" id="6YPNC4NHMTJ" role="1B3o_S" />
      <node concept="312cEg" id="6YPNC4NHTXg" role="jymVt">
        <property role="TrG5h" value="arity" />
        <node concept="3Tm6S6" id="6YPNC4NHTXh" role="1B3o_S" />
        <node concept="10Oyi0" id="6YPNC4NHTXj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NIr2f" role="jymVt" />
    <node concept="2tJIrI" id="5JQSuNsxgMt" role="jymVt" />
    <node concept="3UR2Jj" id="5lJXKwWWB" role="lGtFl">
      <node concept="TZ5HA" id="5lJXKwWWC" role="TZ5H$">
        <node concept="1dT_AC" id="5lJXKwWWD" role="1dT_Ay">
          <property role="1dT_AB" value="The &quot;framework&quot; node, that is a node that allows only other nodes as its children. An example " />
        </node>
      </node>
      <node concept="TZ5HA" id="5lJXKwXZy" role="TZ5H$">
        <node concept="1dT_AC" id="5lJXKwXZz" role="1dT_Ay">
          <property role="1dT_AB" value="could be a &quot;node&quot; in an AST-like structure, which has &quot;roles&quot; containing other nodes. The &quot;roles&quot; " />
        </node>
      </node>
      <node concept="TZ5HA" id="5lJXKwZsB" role="TZ5H$">
        <node concept="1dT_AC" id="5lJXKwZsC" role="1dT_Ay">
          <property role="1dT_AB" value="here are nodes too." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="uNmovXiEd4">
    <property role="TrG5h" value="Variable" />
    <node concept="3Tm1VV" id="uNmovXiEd5" role="1B3o_S" />
    <node concept="3uibUv" id="1bm7a6F1kuO" role="EKbjA">
      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
    </node>
    <node concept="2tJIrI" id="uNmovXiELu" role="jymVt" />
    <node concept="2YIFZL" id="uNmovXiPrH" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="uNmovXiPrK" role="3clF47">
        <node concept="3clFbF" id="uNmovXiPUf" role="3cqZAp">
          <node concept="2ShNRf" id="uNmovXiPUd" role="3clFbG">
            <node concept="1pGfFk" id="uNmovXiQaD" role="2ShVmc">
              <ref role="37wK5l" node="uNmovXiEVu" resolve="Variable" />
              <node concept="37vLTw" id="uNmovXiQit" role="37wK5m">
                <ref role="3cqZAo" node="uNmovXiPT0" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="uNmovXiQrW" role="1B3o_S" />
      <node concept="3uibUv" id="uNmovXiP5a" role="3clF45">
        <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="37vLTG" id="uNmovXiPT0" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6SkxsMz$UXc" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2q_78a8VKII" role="jymVt" />
    <node concept="2YIFZL" id="35Lj3Tj1avN" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="35Lj3Tj1avO" role="3clF47">
        <node concept="3clFbF" id="35Lj3Tj1avP" role="3cqZAp">
          <node concept="2ShNRf" id="35Lj3Tj1avQ" role="3clFbG">
            <node concept="1pGfFk" id="35Lj3Tj1avR" role="2ShVmc">
              <ref role="37wK5l" node="uNmovXiEVu" resolve="Variable" />
              <node concept="2YIFZM" id="35Lj3Tj1d5V" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="37vLTw" id="35Lj3Tj1dqs" role="37wK5m">
                  <ref role="3cqZAo" node="35Lj3Tj1avV" resolve="obj" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="35Lj3Tj1avT" role="1B3o_S" />
      <node concept="3uibUv" id="35Lj3Tj1avU" role="3clF45">
        <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="37vLTG" id="35Lj3Tj1avV" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="35Lj3Tj1cmY" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2q_78a8VUrb" role="jymVt" />
    <node concept="3clFbW" id="uNmovXiEVu" role="jymVt">
      <node concept="3cqZAl" id="uNmovXiEVv" role="3clF45" />
      <node concept="3clFbS" id="uNmovXiEVx" role="3clF47">
        <node concept="3clFbF" id="uNmovXiF63" role="3cqZAp">
          <node concept="37vLTI" id="uNmovXiF65" role="3clFbG">
            <node concept="2OqwBi" id="uNmovXiF69" role="37vLTJ">
              <node concept="Xjq3P" id="uNmovXiF6c" role="2Oq$k0" />
              <node concept="2OwXpG" id="uNmovXiF68" role="2OqNvi">
                <ref role="2Oxat5" node="uNmovXiF5Z" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="uNmovXiF6d" role="37vLTx">
              <ref role="3cqZAo" node="uNmovXiF4X" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5BGv8yzwUbW" role="1B3o_S" />
      <node concept="37vLTG" id="uNmovXiF4X" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="4sSe4$ptbT1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiFhY" role="jymVt" />
    <node concept="3clFb_" id="56MMu0Ark7d" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="56MMu0Ark7e" role="1B3o_S" />
      <node concept="3uibUv" id="56MMu0Ark7g" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="56MMu0Ark7h" role="3clF47">
        <node concept="3clFbF" id="56MMu0Arm4X" role="3cqZAp">
          <node concept="37vLTw" id="56MMu0Arm4W" role="3clFbG">
            <ref role="3cqZAo" node="uNmovXiF5Z" resolve="symbol" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0ArkU3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOiUH5" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiVjz" role="jymVt">
      <property role="TrG5h" value="isWildcard" />
      <property role="IEkAT" value="false" />
      <node concept="10P_77" id="2DKqMqOiVXx" role="3clF45" />
      <node concept="3Tm1VV" id="2DKqMqOiVjA" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOiVjB" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOiXui" role="3cqZAp">
          <node concept="3clFbT" id="2DKqMqOiXuh" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6OUp3PsUj5t" role="jymVt" />
    <node concept="3clFb_" id="6Sag3Ksv6No" role="jymVt">
      <property role="TrG5h" value="canRepresent" />
      <node concept="37vLTG" id="6Sag3KsvaqO" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="6Sag3Ksvb0l" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="6Sag3KsvboK" role="11_B2D">
            <node concept="3uibUv" id="6Sag3Ksvbx5" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6Sag3Ksv8dq" role="3clF45" />
      <node concept="3Tm1VV" id="6Sag3Ksv6Nr" role="1B3o_S" />
      <node concept="3clFbS" id="6Sag3Ksv6Ns" role="3clF47">
        <node concept="3clFbF" id="6Sag3Ksvc6h" role="3cqZAp">
          <node concept="3clFbT" id="6Sag3Ksvc6g" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6OUp3PsUjii" role="lGtFl">
        <node concept="TZ5HA" id="6OUp3PsUjij" role="TZ5H$">
          <node concept="1dT_AC" id="6OUp3PsUjik" role="1dT_Ay">
            <property role="1dT_AB" value="TODO: force all non-list logicals to have " />
          </node>
          <node concept="1dT_AA" id="6OUp3PsUjSb" role="1dT_Ay">
            <node concept="92FcH" id="6OUp3PsUjSh" role="qph3F">
              <node concept="TZ5HA" id="6OUp3PsUjSj" role="2XjZqd" />
              <node concept="VXe08" id="6OUp3PsUmmU" role="92FcQ">
                <ref role="VXe09" node="5JQSuNswOXL" resolve="TermNode" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="6OUp3PsUjSa" role="1dT_Ay">
            <property role="1dT_AB" value=" as the prototype?" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0Arlqp" role="jymVt" />
    <node concept="3clFb_" id="56MMu0Ark7k" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="56MMu0Ark7l" role="1B3o_S" />
      <node concept="3uibUv" id="56MMu0Ark7n" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qUE_q" id="56MMu0Ark7o" role="11_B2D">
          <node concept="3uibUv" id="573vQv1lmd9" role="3qUE_r">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="56MMu0Ark7s" role="3clF47">
        <node concept="3clFbF" id="QXE1ZChM6X" role="3cqZAp">
          <node concept="2YIFZM" id="QXE1ZChMnb" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0AronL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0Armi7" role="jymVt" />
    <node concept="3clFb_" id="56MMu0Ark7v" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="56MMu0Ark7w" role="1B3o_S" />
      <node concept="3uibUv" id="573vQv1llVK" role="3clF45">
        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
      </node>
      <node concept="3clFbS" id="56MMu0Ark7_" role="3clF47">
        <node concept="3clFbF" id="56MMu0ArpIO" role="3cqZAp">
          <node concept="Xjq3P" id="56MMu0ArpIN" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0ArpbU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0AroSn" role="jymVt" />
    <node concept="3clFb_" id="56MMu0Ark7C" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="is" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="56MMu0Ark7D" role="1B3o_S" />
      <node concept="37vLTG" id="56MMu0Ark7E" role="3clF46">
        <property role="TrG5h" value="kind" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="573vQv1lmdE" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term$Kind" resolve="Term.Kind" />
        </node>
      </node>
      <node concept="10P_77" id="56MMu0Ark7H" role="3clF45" />
      <node concept="3clFbS" id="56MMu0Ark7K" role="3clF47">
        <node concept="3clFbF" id="56MMu0ArqpV" role="3cqZAp">
          <node concept="3clFbC" id="56MMu0ArqJ4" role="3clFbG">
            <node concept="Rm8GO" id="18cJbc0HVY6" role="3uHU7B">
              <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
              <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
            </node>
            <node concept="37vLTw" id="56MMu0ArqYY" role="3uHU7w">
              <ref role="3cqZAo" node="56MMu0Ark7E" resolve="kind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0ArrcS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="56MMu0ArpJb" role="jymVt" />
    <node concept="3clFb_" id="56MMu0Ark7N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="compareTo" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="56MMu0Ark7O" role="1B3o_S" />
      <node concept="10Oyi0" id="56MMu0Ark7Q" role="3clF45" />
      <node concept="37vLTG" id="56MMu0Ark7R" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="573vQv1lmkz" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="56MMu0Ark80" role="3clF47">
        <node concept="3clFbJ" id="56MMu0ArxkS" role="3cqZAp">
          <node concept="3clFbS" id="56MMu0ArxkT" role="3clFbx">
            <node concept="3cpWs6" id="56MMu0ArxkU" role="3cqZAp">
              <node concept="2OqwBi" id="56MMu0ArxkV" role="3cqZAk">
                <node concept="2YIFZM" id="56MMu0ArxkW" role="2Oq$k0">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="56MMu0ArxkX" role="37wK5m">
                    <node concept="Xjq3P" id="56MMu0ArxkY" role="2Oq$k0" />
                    <node concept="liA8E" id="56MMu0ArxkZ" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Arxl0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.compareTo(java.lang.String):int" resolve="compareTo" />
                  <node concept="2YIFZM" id="56MMu0Arxl1" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <node concept="2OqwBi" id="56MMu0Arxl2" role="37wK5m">
                      <node concept="37vLTw" id="56MMu0Arxl3" role="2Oq$k0">
                        <ref role="3cqZAo" node="56MMu0Ark7R" resolve="that" />
                      </node>
                      <node concept="liA8E" id="56MMu0Arxl4" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="56MMu0Arxl5" role="3clFbw">
            <node concept="2OqwBi" id="56MMu0Arxl6" role="3uHU7B">
              <node concept="37vLTw" id="56MMu0Arxl7" role="2Oq$k0">
                <ref role="3cqZAo" node="56MMu0Ark7R" resolve="that" />
              </node>
              <node concept="liA8E" id="56MMu0Arxl8" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
            <node concept="2OqwBi" id="56MMu0Arxl9" role="3uHU7w">
              <node concept="Xjq3P" id="56MMu0Arxla" role="2Oq$k0" />
              <node concept="liA8E" id="56MMu0Arxlb" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56MMu0AruF$" role="3cqZAp">
          <node concept="2OqwBi" id="56MMu0AruF_" role="3clFbG">
            <node concept="2YIFZM" id="56MMu0AruFA" role="2Oq$k0">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <node concept="1rXfSq" id="56MMu0AruFB" role="37wK5m">
                <ref role="37wK5l" node="56MMu0Ark7d" resolve="symbol" />
              </node>
            </node>
            <node concept="liA8E" id="56MMu0AruFC" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.compareTo(java.lang.String):int" resolve="compareTo" />
              <node concept="2YIFZM" id="56MMu0AruFD" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="56MMu0AruFE" role="37wK5m">
                  <node concept="37vLTw" id="56MMu0AruFF" role="2Oq$k0">
                    <ref role="3cqZAo" node="56MMu0Ark7R" resolve="that" />
                  </node>
                  <node concept="liA8E" id="56MMu0AruFG" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56MMu0ArrI9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiHMt" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6F1l_X" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6F1oRC" role="3clF45">
        <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3Tm1VV" id="1bm7a6F1l_Z" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6F1lA5" role="3clF47">
        <node concept="3clFbF" id="1bm7a6F1pPi" role="3cqZAp">
          <node concept="Xjq3P" id="1bm7a6F1pPh" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1hOy_Afr56o" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF02UMVq" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02ULUN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02ULUO" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02ULUP" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02ULUQ" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="3OPtF02ULUS" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02ULUY" role="3clF47">
        <node concept="3clFbF" id="5s497VqITYU" role="3cqZAp">
          <node concept="Xjq3P" id="5s497VqITYT" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF02UPkG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFOY5M" role="jymVt" />
    <node concept="3clFb_" id="2QE4RCGnoHX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="asRoot" />
      <node concept="3Tm1VV" id="2QE4RCGnoHZ" role="1B3o_S" />
      <node concept="3uibUv" id="2QE4RCGnuWO" role="3clF45">
        <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
      </node>
      <node concept="3clFbS" id="2QE4RCGnoI6" role="3clF47">
        <node concept="3clFbF" id="2QE4RCGnwae" role="3cqZAp">
          <node concept="Xjq3P" id="2QE4RCGnwad" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2QE4RCGnr7N" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1lZe6" role="jymVt" />
    <node concept="3clFb_" id="dfChU1m0qM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="attached" />
      <node concept="37vLTG" id="dfChU1m0qN" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="dfChU1m0qO" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
        </node>
      </node>
      <node concept="3cqZAl" id="dfChU1m0qQ" role="3clF45" />
      <node concept="3Tm1VV" id="dfChU1m0qR" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1m0qW" role="3clF47">
        <node concept="3SKdUt" id="dfChU1m6Ac" role="3cqZAp">
          <node concept="3SKdUq" id="dfChU1m6Ae" role="3SKWNk">
            <property role="3SKdUp" value="do nothing" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="dfChU1m1Og" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1m6Ag" role="jymVt" />
    <node concept="3clFb_" id="104EUzFOWtH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="104EUzFOWtI" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="104EUzFOWtJ" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFOWtK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="104EUzFOWtL" role="1B3o_S" />
      <node concept="3clFbS" id="104EUzFOWtQ" role="3clF47">
        <node concept="3clFbF" id="104EUzFYouR" role="3cqZAp">
          <node concept="2OqwBi" id="104EUzFYow3" role="3clFbG">
            <node concept="37vLTw" id="104EUzFYouQ" role="2Oq$k0">
              <ref role="3cqZAo" node="104EUzFOWtI" resolve="visitor" />
            </node>
            <node concept="liA8E" id="104EUzFYoQ6" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOASo" resolve="visitVariable" />
              <node concept="Xjq3P" id="104EUzFYoS9" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOgLS1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqILJV" role="jymVt" />
    <node concept="3clFb_" id="5BGv8yzwV99" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="variablesCount" />
      <node concept="10Oyi0" id="5BGv8yzwV9a" role="3clF45" />
      <node concept="3Tm1VV" id="5BGv8yzwV9b" role="1B3o_S" />
      <node concept="3clFbS" id="5BGv8yzwV9d" role="3clF47">
        <node concept="3clFbF" id="5BGv8yzwXsr" role="3cqZAp">
          <node concept="3cmrfG" id="5BGv8yzwXsq" role="3clFbG">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5BGv8yzwWoD" role="jymVt" />
    <node concept="3clFb_" id="3AEuFq_PHmj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3AEuFq_PHmk" role="1B3o_S" />
      <node concept="10P_77" id="3AEuFq_PHmm" role="3clF45" />
      <node concept="37vLTG" id="3AEuFq_PHmn" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="3AEuFq_PHmo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3AEuFq_PHmt" role="3clF47">
        <node concept="3clFbJ" id="3AEuFq_PNyX" role="3cqZAp">
          <node concept="3clFbS" id="3AEuFq_PNyY" role="3clFbx">
            <node concept="3cpWs6" id="3AEuFq_PPNN" role="3cqZAp">
              <node concept="3clFbT" id="3AEuFq_PPOW" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3AEuFq_PN_5" role="3clFbw">
            <node concept="2ZW3vV" id="3AEuFq_POva" role="3fr31v">
              <node concept="3uibUv" id="3AEuFq_POVj" role="2ZW6by">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="37vLTw" id="3AEuFq_PO5t" role="2ZW6bz">
                <ref role="3cqZAo" node="3AEuFq_PHmn" resolve="that" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3AEuFq_PXt9" role="3cqZAp">
          <node concept="17R0WA" id="3AEuFq_PZwI" role="3clFbG">
            <node concept="2OqwBi" id="3AEuFq_Q1UZ" role="3uHU7w">
              <node concept="1eOMI4" id="3AEuFq_PZXT" role="2Oq$k0">
                <node concept="10QFUN" id="3AEuFq_PZXQ" role="1eOMHV">
                  <node concept="3uibUv" id="3AEuFq_Q05E" role="10QFUM">
                    <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                  </node>
                  <node concept="37vLTw" id="3AEuFq_Q0XG" role="10QFUP">
                    <ref role="3cqZAo" node="3AEuFq_PHmn" resolve="that" />
                  </node>
                </node>
              </node>
              <node concept="2OwXpG" id="3AEuFq_Q2TX" role="2OqNvi">
                <ref role="2Oxat5" node="uNmovXiF5Z" resolve="symbol" />
              </node>
            </node>
            <node concept="2OqwBi" id="3AEuFq_PXXj" role="3uHU7B">
              <node concept="Xjq3P" id="3AEuFq_PXt7" role="2Oq$k0" />
              <node concept="2OwXpG" id="3AEuFq_PYrD" role="2OqNvi">
                <ref role="2Oxat5" node="uNmovXiF5Z" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3AEuFq_PHmu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3AEuFq_PIkj" role="jymVt" />
    <node concept="3clFb_" id="3AEuFq_PJdE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3AEuFq_PJdF" role="1B3o_S" />
      <node concept="10Oyi0" id="3AEuFq_PJdH" role="3clF45" />
      <node concept="3clFbS" id="3AEuFq_PJdM" role="3clF47">
        <node concept="3cpWs8" id="3AEuFq_QccO" role="3cqZAp">
          <node concept="3cpWsn" id="3AEuFq_QccR" role="3cpWs9">
            <property role="TrG5h" value="h" />
            <node concept="10Oyi0" id="3AEuFq_QccN" role="1tU5fm" />
            <node concept="3cmrfG" id="3AEuFq_Qcfj" role="33vP2m">
              <property role="3cmrfH" value="37" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3AEuFq_QdLO" role="3cqZAp">
          <node concept="d57v9" id="3AEuFq_Qeml" role="3clFbG">
            <node concept="17qRlL" id="3AEuFq_QePd" role="37vLTx">
              <node concept="1eOMI4" id="3AEuFq_QeUP" role="3uHU7w">
                <node concept="3K4zz7" id="3AEuFq_QfPo" role="1eOMHV">
                  <node concept="2OqwBi" id="3AEuFq_QgoT" role="3K4E3e">
                    <node concept="37vLTw" id="3AEuFq_QgiU" role="2Oq$k0">
                      <ref role="3cqZAo" node="uNmovXiF5Z" resolve="symbol" />
                    </node>
                    <node concept="liA8E" id="3AEuFq_QgY1" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="3AEuFq_Qh3N" role="3K4GZi">
                    <property role="3cmrfH" value="43" />
                  </node>
                  <node concept="3y3z36" id="3AEuFq_Qf9k" role="3K4Cdx">
                    <node concept="10Nm6u" id="3AEuFq_Qfj6" role="3uHU7w" />
                    <node concept="37vLTw" id="3AEuFq_QeXj" role="3uHU7B">
                      <ref role="3cqZAo" node="uNmovXiF5Z" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="3AEuFq_Qeqe" role="3uHU7B">
                <property role="3cmrfH" value="17" />
              </node>
            </node>
            <node concept="37vLTw" id="3AEuFq_QdLM" role="37vLTJ">
              <ref role="3cqZAo" node="3AEuFq_QccR" resolve="h" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3AEuFq_QhJg" role="3cqZAp">
          <node concept="37vLTw" id="3AEuFq_QhJe" role="3clFbG">
            <ref role="3cqZAo" node="3AEuFq_QccR" resolve="h" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3AEuFq_PJdN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3AEuFq_PKdY" role="jymVt" />
    <node concept="3clFb_" id="uNmovXjH0O" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="uNmovXjH0P" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UXb" role="3clF45" />
      <node concept="3clFbS" id="uNmovXjH0V" role="3clF47">
        <node concept="3clFbF" id="uNmovXjIc9" role="3cqZAp">
          <node concept="3cpWs3" id="6$jH9oLmrvq" role="3clFbG">
            <node concept="Xl_RD" id="6$jH9oLmrvA" role="3uHU7w">
              <property role="Xl_RC" value="%" />
            </node>
            <node concept="3cpWs3" id="6$jH9oLmr87" role="3uHU7B">
              <node concept="Xl_RD" id="6$jH9oLmr8j" role="3uHU7B">
                <property role="Xl_RC" value="%" />
              </node>
              <node concept="37vLTw" id="uNmovXjIc8" role="3uHU7w">
                <ref role="3cqZAo" node="uNmovXiF5Z" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="uNmovXjH0W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXjHy8" role="jymVt" />
    <node concept="312cEg" id="uNmovXiF5Z" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tmbuc" id="104EUzFKnvc" role="1B3o_S" />
      <node concept="3uibUv" id="4sSe4$pta0H" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R$Cm9qEqLU">
    <property role="TrG5h" value="Path" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="1R$Cm9qEqM6" role="jymVt" />
    <node concept="2YIFZL" id="1R$Cm9qEBDL" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1R$Cm9qEC8z" role="3clF46">
        <property role="TrG5h" value="symbolElement" />
        <node concept="3uibUv" id="1R$Cm9qECbq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1R$Cm9qEBDO" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qF12_" role="3cqZAp">
          <node concept="2ShNRf" id="1R$Cm9qF12z" role="3clFbG">
            <node concept="1pGfFk" id="1R$Cm9qF1wx" role="2ShVmc">
              <ref role="37wK5l" node="1R$Cm9qEvxK" resolve="Path" />
              <node concept="37vLTw" id="1R$Cm9qF1xr" role="37wK5m">
                <ref role="3cqZAo" node="1R$Cm9qEC8z" resolve="symbolElement" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R$Cm9qEBks" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qEBAd" role="3clF45">
        <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qEGpX" role="jymVt" />
    <node concept="3clFbW" id="1R$Cm9qEvxK" role="jymVt">
      <node concept="3cqZAl" id="1R$Cm9qEvxL" role="3clF45" />
      <node concept="3clFbS" id="1R$Cm9qEvxN" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qEw2a" role="3cqZAp">
          <node concept="37vLTI" id="1R$Cm9qEw2c" role="3clFbG">
            <node concept="2OqwBi" id="1R$Cm9qEw2g" role="37vLTJ">
              <node concept="Xjq3P" id="1R$Cm9qEw2j" role="2Oq$k0" />
              <node concept="2OwXpG" id="1R$Cm9qEw2f" role="2OqNvi">
                <ref role="2Oxat5" node="1R$Cm9qEw26" resolve="symbolElement" />
              </node>
            </node>
            <node concept="37vLTw" id="1R$Cm9qEw2k" role="37vLTx">
              <ref role="3cqZAo" node="1R$Cm9qEvFi" resolve="symbolElement" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4sgxfjnCEig" role="1B3o_S" />
      <node concept="37vLTG" id="1R$Cm9qEvFi" role="3clF46">
        <property role="TrG5h" value="symbolElement" />
        <node concept="3uibUv" id="1R$Cm9qEvFh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qF24x" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qH4eA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="element" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1R$Cm9qH4eD" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qH4pm" role="3cqZAp">
          <node concept="37vLTw" id="1R$Cm9qH4pl" role="3clFbG">
            <ref role="3cqZAo" node="1R$Cm9qEw26" resolve="symbolElement" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R$Cm9qH43o" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qH4dE" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qH4qe" role="jymVt" />
    <node concept="3clFb_" id="2QE4RCGoaTQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isRoot" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2QE4RCGoaTT" role="3clF47">
        <node concept="3clFbF" id="2QE4RCGobd7" role="3cqZAp">
          <node concept="3clFbC" id="2QE4RCGobfl" role="3clFbG">
            <node concept="10Nm6u" id="2QE4RCGobgo" role="3uHU7w" />
            <node concept="37vLTw" id="2QE4RCGobd6" role="3uHU7B">
              <ref role="3cqZAo" node="1R$Cm9qErqE" resolve="prev" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2QE4RCGoazx" role="1B3o_S" />
      <node concept="10P_77" id="2QE4RCGoaQi" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2QE4RCGoafY" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qEroc" role="jymVt">
      <property role="TrG5h" value="prepend" />
      <node concept="3cqZAl" id="1R$Cm9qEroe" role="3clF45" />
      <node concept="3Tm1VV" id="1R$Cm9qErof" role="1B3o_S" />
      <node concept="3clFbS" id="1R$Cm9qErog" role="3clF47">
        <node concept="3clFbJ" id="1R$Cm9qF2C4" role="3cqZAp">
          <node concept="3clFbS" id="1R$Cm9qF2C7" role="3clFbx">
            <node concept="YS8fn" id="1R$Cm9qF2Tg" role="3cqZAp">
              <node concept="2ShNRf" id="1R$Cm9qF2UV" role="YScLw">
                <node concept="1pGfFk" id="1R$Cm9qF359" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="2YIFZM" id="4sgxfjnCjCc" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="4sgxfjnCbUu" role="37wK5m">
                      <property role="Xl_RC" value="path element mismatch: %s != %s" />
                    </node>
                    <node concept="2OqwBi" id="4sgxfjnCyHw" role="37wK5m">
                      <node concept="2OqwBi" id="4sgxfjnCoHz" role="2Oq$k0">
                        <node concept="Xjq3P" id="4sgxfjnCoyh" role="2Oq$k0" />
                        <node concept="2OwXpG" id="4sgxfjnCp8P" role="2OqNvi">
                          <ref role="2Oxat5" node="1R$Cm9qErqE" resolve="prev" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4sgxfjnCz9M" role="2OqNvi">
                        <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4sgxfjnCz$S" role="37wK5m">
                      <node concept="37vLTw" id="4sgxfjnCpzF" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R$Cm9qEroV" resolve="prev" />
                      </node>
                      <node concept="liA8E" id="4sgxfjnC$1f" role="2OqNvi">
                        <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4sgxfjnC8G8" role="3clFbw">
            <node concept="3fqX7Q" id="4sgxfjnC95_" role="3uHU7w">
              <node concept="2OqwBi" id="4sgxfjnCaj1" role="3fr31v">
                <node concept="2OqwBi" id="4sgxfjnCthC" role="2Oq$k0">
                  <node concept="2OqwBi" id="4sgxfjnC9vq" role="2Oq$k0">
                    <node concept="Xjq3P" id="4sgxfjnC95S" role="2Oq$k0" />
                    <node concept="2OwXpG" id="4sgxfjnC9T7" role="2OqNvi">
                      <ref role="2Oxat5" node="1R$Cm9qErqE" resolve="prev" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4sgxfjnCtGM" role="2OqNvi">
                    <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                  </node>
                </node>
                <node concept="liA8E" id="4sgxfjnCaHt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="4sgxfjnCu7z" role="37wK5m">
                    <node concept="37vLTw" id="4sgxfjnCb78" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R$Cm9qEroV" resolve="prev" />
                    </node>
                    <node concept="liA8E" id="4sgxfjnCuYY" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qH4eA" resolve="element" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1R$Cm9qF2Qe" role="3uHU7B">
              <node concept="2OqwBi" id="1R$Cm9qF2Gq" role="3uHU7B">
                <node concept="Xjq3P" id="1R$Cm9qF2Fk" role="2Oq$k0" />
                <node concept="2OwXpG" id="1R$Cm9qF2KC" role="2OqNvi">
                  <ref role="2Oxat5" node="1R$Cm9qErqE" resolve="prev" />
                </node>
              </node>
              <node concept="10Nm6u" id="1R$Cm9qF2S6" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qEuEi" role="3cqZAp">
          <node concept="37vLTI" id="1R$Cm9qEuPR" role="3clFbG">
            <node concept="37vLTw" id="1R$Cm9qEuTr" role="37vLTx">
              <ref role="3cqZAo" node="1R$Cm9qEroV" resolve="prev" />
            </node>
            <node concept="2OqwBi" id="1R$Cm9qEuER" role="37vLTJ">
              <node concept="Xjq3P" id="1R$Cm9qEuEh" role="2Oq$k0" />
              <node concept="2OwXpG" id="1R$Cm9qEuIX" role="2OqNvi">
                <ref role="2Oxat5" node="1R$Cm9qErqE" resolve="prev" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R$Cm9qEroV" role="3clF46">
        <property role="TrG5h" value="prev" />
        <node concept="3uibUv" id="1R$Cm9qErpU" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qF3nm" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qHk6N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1R$Cm9qHk6O" role="1B3o_S" />
      <node concept="10P_77" id="1R$Cm9qHk6Q" role="3clF45" />
      <node concept="37vLTG" id="1R$Cm9qHk6R" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1R$Cm9qHk6S" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1R$Cm9qHk6T" role="3clF47">
        <node concept="3clFbJ" id="1R$Cm9qHnRK" role="3cqZAp">
          <node concept="3clFbS" id="1R$Cm9qHnRL" role="3clFbx">
            <node concept="3cpWs6" id="1R$Cm9qHov7" role="3cqZAp">
              <node concept="3clFbT" id="1R$Cm9qHovn" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1R$Cm9qHol0" role="3clFbw">
            <node concept="2ZW3vV" id="1R$Cm9qHooo" role="3fr31v">
              <node concept="3uibUv" id="1R$Cm9qHorl" role="2ZW6by">
                <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
              </node>
              <node concept="37vLTw" id="1R$Cm9qHolz" role="2ZW6bz">
                <ref role="3cqZAo" node="1R$Cm9qHk6R" resolve="object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1hOy_AfqwHd" role="3cqZAp">
          <node concept="3SKdUq" id="1hOy_AfqwWw" role="3SKWNk">
            <property role="3SKdUp" value="TODO implement equals on two lists instead of using toString" />
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qHp3C" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qHplq" role="3clFbG">
            <node concept="1rXfSq" id="1R$Cm9qHp3B" role="2Oq$k0">
              <ref role="37wK5l" node="1R$Cm9qE$U4" resolve="toString" />
            </node>
            <node concept="liA8E" id="1R$Cm9qHpCu" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="1R$Cm9qHrrJ" role="37wK5m">
                <node concept="1eOMI4" id="1R$Cm9qHpDM" role="2Oq$k0">
                  <node concept="10QFUN" id="1R$Cm9qHpDJ" role="1eOMHV">
                    <node concept="3uibUv" id="1R$Cm9qHpLc" role="10QFUM">
                      <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
                    </node>
                    <node concept="37vLTw" id="1R$Cm9qHrdh" role="10QFUP">
                      <ref role="3cqZAo" node="1R$Cm9qHk6R" resolve="object" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1R$Cm9qHr$s" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qE$U4" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R$Cm9qHk6U" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qHkjM" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qHkw7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1R$Cm9qHkw8" role="1B3o_S" />
      <node concept="10Oyi0" id="1R$Cm9qHkwa" role="3clF45" />
      <node concept="3clFbS" id="1R$Cm9qHkwb" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qHrSv" role="3cqZAp">
          <node concept="3cpWs3" id="1R$Cm9qHsdt" role="3clFbG">
            <node concept="17qRlL" id="1R$Cm9qHsX1" role="3uHU7w">
              <node concept="2OqwBi" id="1R$Cm9qHt7Z" role="3uHU7w">
                <node concept="1rXfSq" id="1R$Cm9qHsXB" role="2Oq$k0">
                  <ref role="37wK5l" node="1R$Cm9qE$U4" resolve="toString" />
                </node>
                <node concept="liA8E" id="1R$Cm9qHtjb" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="1R$Cm9qHsdT" role="3uHU7B">
                <property role="3cmrfH" value="19" />
              </node>
            </node>
            <node concept="3cmrfG" id="1R$Cm9qHrSu" role="3uHU7B">
              <property role="3cmrfH" value="43" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R$Cm9qHkwc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qHmZX" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qE$U4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1R$Cm9qE$U5" role="1B3o_S" />
      <node concept="17QB3L" id="6SkxsMz$UXi" role="3clF45" />
      <node concept="3clFbS" id="1R$Cm9qE$U8" role="3clF47">
        <node concept="3clFbF" id="1R$Cm9qF6Ag" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qGijK" role="3clFbG">
            <node concept="1rXfSq" id="1R$Cm9qF6Af" role="2Oq$k0">
              <ref role="37wK5l" node="1R$Cm9qF3$x" resolve="buildString" />
              <node concept="2ShNRf" id="1R$Cm9qGi8Y" role="37wK5m">
                <node concept="1pGfFk" id="1R$Cm9qGi8X" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                </node>
              </node>
              <node concept="10Nm6u" id="1R$Cm9qF6Br" role="37wK5m" />
            </node>
            <node concept="liA8E" id="1R$Cm9qGit8" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R$Cm9qF6OJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qHjW9" role="jymVt" />
    <node concept="3clFb_" id="1R$Cm9qF3$x" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="buildString" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1R$Cm9qF3$$" role="3clF47">
        <node concept="3clFbJ" id="1R$Cm9qGrvz" role="3cqZAp">
          <node concept="3clFbS" id="1R$Cm9qGrvA" role="3clFbx">
            <node concept="3clFbF" id="1R$Cm9qGvJ7" role="3cqZAp">
              <node concept="2OqwBi" id="1R$Cm9qGvJ9" role="3clFbG">
                <node concept="37vLTw" id="1R$Cm9qGvJa" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R$Cm9qErqE" resolve="prev" />
                </node>
                <node concept="liA8E" id="1R$Cm9qGvJb" role="2OqNvi">
                  <ref role="37wK5l" node="1R$Cm9qF3$x" resolve="buildString" />
                  <node concept="37vLTw" id="1R$Cm9qGvJc" role="37wK5m">
                    <ref role="3cqZAo" node="1R$Cm9qFOPp" resolve="sb" />
                  </node>
                  <node concept="2YIFZM" id="1R$Cm9qGvJd" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="37vLTw" id="1R$Cm9qGvJe" role="37wK5m">
                      <ref role="3cqZAo" node="1R$Cm9qEw26" resolve="symbolElement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1R$Cm9qGufu" role="3clFbw">
            <node concept="10Nm6u" id="1R$Cm9qGvAD" role="3uHU7w" />
            <node concept="37vLTw" id="1R$Cm9qGsRl" role="3uHU7B">
              <ref role="3cqZAo" node="1R$Cm9qErqE" resolve="prev" />
            </node>
          </node>
          <node concept="9aQIb" id="1R$Cm9qGw1q" role="9aQIa">
            <node concept="3clFbS" id="1R$Cm9qGw1r" role="9aQI4">
              <node concept="3clFbF" id="1R$Cm9qGxrk" role="3cqZAp">
                <node concept="2OqwBi" id="1R$Cm9qGxtv" role="3clFbG">
                  <node concept="37vLTw" id="1R$Cm9qGxrj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R$Cm9qFOPp" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="1R$Cm9qGxHt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="2YIFZM" id="1R$Cm9qGxIf" role="37wK5m">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="37vLTw" id="1R$Cm9qGxIg" role="37wK5m">
                        <ref role="3cqZAo" node="1R$Cm9qEw26" resolve="symbolElement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qG94k" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qG9Wk" role="3clFbG">
            <node concept="37vLTw" id="1R$Cm9qG94j" role="2Oq$k0">
              <ref role="3cqZAo" node="1R$Cm9qFOPp" resolve="sb" />
            </node>
            <node concept="liA8E" id="1R$Cm9qGbR1" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="3K4zz7" id="1R$Cm9qGc6D" role="37wK5m">
                <node concept="3cpWs3" id="1R$Cm9qGc6E" role="3K4E3e">
                  <node concept="37vLTw" id="1R$Cm9qGc6F" role="3uHU7w">
                    <ref role="3cqZAo" node="1R$Cm9qF3Es" resolve="tail" />
                  </node>
                  <node concept="Xl_RD" id="1R$Cm9qGc6G" role="3uHU7B">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1R$Cm9qGc6H" role="3K4GZi">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3y3z36" id="1R$Cm9qGc6I" role="3K4Cdx">
                  <node concept="10Nm6u" id="1R$Cm9qGc6J" role="3uHU7w" />
                  <node concept="37vLTw" id="1R$Cm9qGc6K" role="3uHU7B">
                    <ref role="3cqZAo" node="1R$Cm9qF3Es" resolve="tail" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qGe_p" role="3cqZAp">
          <node concept="37vLTw" id="1R$Cm9qGe_o" role="3clFbG">
            <ref role="3cqZAo" node="1R$Cm9qFOPp" resolve="sb" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1R$Cm9qF3ua" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qFNkm" role="3clF45">
        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
      </node>
      <node concept="37vLTG" id="1R$Cm9qFOPp" role="3clF46">
        <property role="TrG5h" value="sb" />
        <node concept="3uibUv" id="1R$Cm9qFQr1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="1R$Cm9qF3Es" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="17QB3L" id="6SkxsMz$UXh" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qErpy" role="jymVt" />
    <node concept="312cEg" id="1R$Cm9qEw26" role="jymVt">
      <property role="TrG5h" value="symbolElement" />
      <node concept="3Tm6S6" id="1R$Cm9qEw27" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qEw29" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R$Cm9qEX1q" role="jymVt" />
    <node concept="312cEg" id="1R$Cm9qErqE" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="prev" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1R$Cm9qErq7" role="1B3o_S" />
      <node concept="3uibUv" id="1R$Cm9qErqv" role="1tU5fm">
        <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
      </node>
      <node concept="10Nm6u" id="1R$Cm9qEWNG" role="33vP2m" />
    </node>
    <node concept="3Tm1VV" id="1R$Cm9qEqLV" role="1B3o_S" />
    <node concept="2AHcQZ" id="52tOIisbvE_" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
    </node>
  </node>
  <node concept="3HP615" id="1bm7a6EXvsP">
    <property role="TrG5h" value="TreeForm" />
    <node concept="2tJIrI" id="1bm7a6EXvMM" role="jymVt" />
    <node concept="3clFb_" id="1bm7a6EXvNI" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="1bm7a6FcGgl" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="1bm7a6EXvNL" role="1B3o_S" />
      <node concept="3clFbS" id="1bm7a6EXvNM" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3OPtF02ThKS" role="jymVt" />
    <node concept="3clFb_" id="3OPtF02Tjpr" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3OPtF02TkqL" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3OPtF02Tk$O" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02TkeC" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="3OPtF02Tjpu" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF02Tjpv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2QE4RCGnc53" role="jymVt" />
    <node concept="3clFb_" id="2QE4RCGndD7" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="asRoot" />
      <node concept="3clFbS" id="2QE4RCGndDa" role="3clF47" />
      <node concept="3Tm1VV" id="2QE4RCGndDb" role="1B3o_S" />
      <node concept="3uibUv" id="2QE4RCGndw1" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
    </node>
    <node concept="2tJIrI" id="dfChU1lDK8" role="jymVt" />
    <node concept="3clFb_" id="dfChU1lFHl" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="attached" />
      <node concept="37vLTG" id="dfChU1lHv$" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="dfChU1lIPj" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
        </node>
      </node>
      <node concept="3cqZAl" id="dfChU1lFHn" role="3clF45" />
      <node concept="3Tm1VV" id="dfChU1lFHo" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1lFHp" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="dfChU1lGap" role="jymVt" />
    <node concept="3clFb_" id="104EUzFOBnD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="104EUzFOBnE" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="104EUzFOBnF" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFOBnG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="104EUzFOBnH" role="1B3o_S" />
      <node concept="3clFbS" id="104EUzFOBnI" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5BGv8yzvvvz" role="jymVt" />
    <node concept="3clFb_" id="5BGv8yzvvIZ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="variablesCount" />
      <node concept="10Oyi0" id="5BGv8yzvA3a" role="3clF45" />
      <node concept="3Tm1VV" id="5BGv8yzvvJ2" role="1B3o_S" />
      <node concept="3clFbS" id="5BGv8yzvvJ3" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="104EUzFOEMO" role="jymVt" />
    <node concept="3HP615" id="3OPtF02TdNT" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Mapper" />
      <node concept="3clFb_" id="3OPtF02TgQt" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="3OPtF02TgVl" role="3clF46">
          <property role="TrG5h" value="tp" />
          <node concept="3uibUv" id="5s497VqCJhY" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF02TgQw" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF02TgQx" role="3clF47" />
        <node concept="3uibUv" id="5s497VqO5R3" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF02TdNU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="104EUzFODrC" role="jymVt" />
    <node concept="3HP615" id="104EUzFOARB" role="jymVt">
      <property role="TrG5h" value="Visitor" />
      <node concept="2tJIrI" id="104EUzFOARC" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4OOzqx" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitNode" />
        <node concept="37vLTG" id="6YPNC4OOCwV" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6YPNC4OODqc" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
          </node>
        </node>
        <node concept="16syzq" id="6YPNC4OO_UM" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4OOzq$" role="1B3o_S" />
        <node concept="3clFbS" id="6YPNC4OOzq_" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6YPNC4OOxgB" role="jymVt" />
      <node concept="3Tm1VV" id="104EUzFOARD" role="1B3o_S" />
      <node concept="3clFb_" id="104EUzFOARE" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitTermNode" />
        <node concept="16syzq" id="6YPNC4OF_tT" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOARG" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOARH" role="3clF47" />
        <node concept="37vLTG" id="104EUzFOARI" role="3clF46">
          <property role="TrG5h" value="termNode" />
          <node concept="3uibUv" id="104EUzFOARJ" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NZ7rq" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4OOTg2" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitRole" />
        <node concept="37vLTG" id="6YPNC4OOY$d" role="3clF46">
          <property role="TrG5h" value="roleNode" />
          <node concept="3uibUv" id="6YPNC4OOZwC" role="1tU5fm">
            <ref role="3uigEE" node="6YPNC4ODVle" resolve="RoleNode" />
          </node>
        </node>
        <node concept="16syzq" id="6YPNC4OOVOX" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4OOTg5" role="1B3o_S" />
        <node concept="3clFbS" id="6YPNC4OOTg6" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6YPNC4OOR23" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4NZ8iR" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitChildRole" />
        <node concept="37vLTG" id="6YPNC4NZaEr" role="3clF46">
          <property role="TrG5h" value="childRole" />
          <node concept="3uibUv" id="6YPNC4NZb00" role="1tU5fm">
            <ref role="3uigEE" node="6YPNC4NYnau" resolve="ChildRole" />
          </node>
        </node>
        <node concept="16syzq" id="6YPNC4OFAgF" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4NZ8iU" role="1B3o_S" />
        <node concept="3clFbS" id="6YPNC4NZ8iV" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6YPNC4OETOD" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4OET1Y" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitListRole" />
        <node concept="37vLTG" id="6YPNC4OET1Z" role="3clF46">
          <property role="TrG5h" value="listRole" />
          <node concept="3uibUv" id="6YPNC4OEUWJ" role="1tU5fm">
            <ref role="3uigEE" node="6YPNC4OECgm" resolve="ListRole" />
          </node>
        </node>
        <node concept="16syzq" id="6YPNC4OFB3D" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4OET22" role="1B3o_S" />
        <node concept="3clFbS" id="6YPNC4OET23" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6YPNC4NZ6zZ" role="jymVt" />
      <node concept="3clFb_" id="104EUzFOARP" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitValueRole" />
        <node concept="37vLTG" id="104EUzFOARQ" role="3clF46">
          <property role="TrG5h" value="valueRole" />
          <node concept="3uibUv" id="104EUzFOARR" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
            <node concept="16syzq" id="104EUzFOARS" role="11_B2D">
              <ref role="16sUi3" node="104EUzFOARW" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6YPNC4OFBQO" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOARU" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOARV" role="3clF47" />
        <node concept="16euLQ" id="104EUzFOARW" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFOARX" role="jymVt" />
      <node concept="3clFb_" id="104EUzFOAS5" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitList" />
        <node concept="16syzq" id="6YPNC4OFCGb" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOAS7" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOAS8" role="3clF47" />
        <node concept="37vLTG" id="104EUzFOAS9" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="104EUzFOASa" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFOASe" role="jymVt" />
      <node concept="3clFb_" id="104EUzFOASf" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitValue" />
        <node concept="37vLTG" id="104EUzFOASg" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="104EUzFOASh" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="16syzq" id="104EUzFOASi" role="11_B2D">
              <ref role="16sUi3" node="104EUzFOASm" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6YPNC4OFDvS" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOASk" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOASl" role="3clF47" />
        <node concept="16euLQ" id="104EUzFOASm" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFOASn" role="jymVt" />
      <node concept="3clFb_" id="104EUzFOASo" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visitVariable" />
        <node concept="37vLTG" id="104EUzFOASp" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="104EUzFOASq" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="16syzq" id="6YPNC4OFEjE" role="3clF45">
          <ref role="16sUi3" node="6YPNC4OFzzK" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="104EUzFOASs" role="1B3o_S" />
        <node concept="3clFbS" id="104EUzFOASt" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6HT7BWBQcuz" role="jymVt" />
      <node concept="312cEu" id="6HT7BWBQcxv" role="jymVt">
        <property role="TrG5h" value="Stub" />
        <node concept="2tJIrI" id="6YPNC4PnrOZ" role="jymVt" />
        <node concept="3clFb_" id="6YPNC4PnxDD" role="jymVt">
          <property role="TrG5h" value="visitAbstract" />
          <node concept="16syzq" id="6YPNC4Pn_rN" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6YPNC4PnxDG" role="1B3o_S" />
          <node concept="3clFbS" id="6YPNC4PnxDH" role="3clF47">
            <node concept="3clFbF" id="6YPNC4PnE8I" role="3cqZAp">
              <node concept="10Nm6u" id="6YPNC4PnE8H" role="3clFbG" />
            </node>
          </node>
          <node concept="37vLTG" id="6YPNC4Pq7Bu" role="3clF46">
            <property role="TrG5h" value="treeForm" />
            <node concept="3uibUv" id="6YPNC4Pq7Bt" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="6YPNC4PnrQs" role="jymVt" />
        <node concept="3clFb_" id="6YPNC4OOIs5" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitNode" />
          <node concept="37vLTG" id="6YPNC4OOIs6" role="3clF46">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="6YPNC4OOIs7" role="1tU5fm">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
            </node>
          </node>
          <node concept="16syzq" id="6YPNC4OOIsb" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6YPNC4OOIs9" role="1B3o_S" />
          <node concept="3clFbS" id="6YPNC4OOIsc" role="3clF47">
            <node concept="3clFbF" id="6YPNC4PnFzE" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4PnFzB" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4PnxDD" resolve="visitAbstract" />
                <node concept="37vLTw" id="6YPNC4PqaHi" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4OOIs6" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6YPNC4OOIsd" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6HT7BWBQcNL" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitTermNode" />
          <node concept="16syzq" id="6YPNC4OFG6Y" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6HT7BWBQcNN" role="1B3o_S" />
          <node concept="37vLTG" id="6HT7BWBQcNP" role="3clF46">
            <property role="TrG5h" value="termNode" />
            <node concept="3uibUv" id="6HT7BWBQcNQ" role="1tU5fm">
              <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
            </node>
          </node>
          <node concept="3clFbS" id="6HT7BWBQcNR" role="3clF47">
            <node concept="3clFbF" id="6YPNC4OOP4x" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4OOP4w" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4OOIs5" resolve="visitNode" />
                <node concept="37vLTw" id="6YPNC4OOPxK" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBQcNP" resolve="termNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6HT7BWBQd0T" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6YPNC4OP337" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitRole" />
          <node concept="37vLTG" id="6YPNC4OP338" role="3clF46">
            <property role="TrG5h" value="roleNode" />
            <node concept="3uibUv" id="6YPNC4OP339" role="1tU5fm">
              <ref role="3uigEE" node="6YPNC4ODVle" resolve="RoleNode" />
            </node>
          </node>
          <node concept="16syzq" id="6YPNC4OP33d" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6YPNC4OP33b" role="1B3o_S" />
          <node concept="3clFbS" id="6YPNC4OP33e" role="3clF47">
            <node concept="3clFbF" id="6YPNC4Pf4cL" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4Pf4cK" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4OOIs5" resolve="visitNode" />
                <node concept="37vLTw" id="6YPNC4Pf4v0" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4OP338" resolve="roleNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6YPNC4OP33f" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6YPNC4NZb84" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitChildRole" />
          <node concept="37vLTG" id="6YPNC4NZb85" role="3clF46">
            <property role="TrG5h" value="childRole" />
            <node concept="3uibUv" id="6YPNC4NZb86" role="1tU5fm">
              <ref role="3uigEE" node="6YPNC4NYnau" resolve="ChildRole" />
            </node>
          </node>
          <node concept="16syzq" id="6YPNC4OFGZM" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6YPNC4NZb88" role="1B3o_S" />
          <node concept="3clFbS" id="6YPNC4NZb8a" role="3clF47">
            <node concept="3clFbF" id="6YPNC4OP7Tv" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4OP7Tu" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4OP337" resolve="visitRole" />
                <node concept="37vLTw" id="6YPNC4OP8pK" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4NZb85" resolve="childRole" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6YPNC4NZb8b" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6YPNC4OEVZg" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitListRole" />
          <node concept="37vLTG" id="6YPNC4OEVZh" role="3clF46">
            <property role="TrG5h" value="listRole" />
            <node concept="3uibUv" id="6YPNC4OEVZi" role="1tU5fm">
              <ref role="3uigEE" node="6YPNC4OECgm" resolve="ListRole" />
            </node>
          </node>
          <node concept="16syzq" id="6YPNC4OFHSB" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6YPNC4OEVZk" role="1B3o_S" />
          <node concept="3clFbS" id="6YPNC4OEVZm" role="3clF47">
            <node concept="3clFbF" id="6YPNC4OP944" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4OP943" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4OP337" resolve="visitRole" />
                <node concept="37vLTw" id="6YPNC4OP9$y" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4OEVZh" resolve="listRole" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6YPNC4OEVZn" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6HT7BWBQcNU" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitValueRole" />
          <node concept="37vLTG" id="6HT7BWBQcNV" role="3clF46">
            <property role="TrG5h" value="valueRole" />
            <node concept="3uibUv" id="6HT7BWBQcNW" role="1tU5fm">
              <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
              <node concept="16syzq" id="6HT7BWBQcNX" role="11_B2D">
                <ref role="16sUi3" node="6HT7BWBQcO1" resolve="V" />
              </node>
            </node>
          </node>
          <node concept="16syzq" id="6YPNC4OFILt" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6HT7BWBQcNZ" role="1B3o_S" />
          <node concept="16euLQ" id="6HT7BWBQcO1" role="16eVyc">
            <property role="TrG5h" value="V" />
          </node>
          <node concept="3clFbS" id="6HT7BWBQcO2" role="3clF47">
            <node concept="3clFbF" id="6YPNC4OPb7K" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4OPb7J" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4OP337" resolve="visitRole" />
                <node concept="37vLTw" id="6YPNC4OPbCr" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBQcNV" resolve="valueRole" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6HT7BWBQd4X" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6HT7BWBQcOf" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitList" />
          <node concept="16syzq" id="6YPNC4OFJEm" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6HT7BWBQcOh" role="1B3o_S" />
          <node concept="37vLTG" id="6HT7BWBQcOj" role="3clF46">
            <property role="TrG5h" value="list" />
            <node concept="3uibUv" id="6HT7BWBQcOk" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
            </node>
          </node>
          <node concept="3clFbS" id="6HT7BWBQcOl" role="3clF47">
            <node concept="3clFbF" id="6YPNC4Pfysq" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4Pfysp" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4OOIs5" resolve="visitNode" />
                <node concept="37vLTw" id="6YPNC4PfyHb" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBQcOj" resolve="list" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6HT7BWBQdd0" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6HT7BWBQcOo" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitValue" />
          <node concept="37vLTG" id="6HT7BWBQcOp" role="3clF46">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="6HT7BWBQcOq" role="1tU5fm">
              <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
              <node concept="16syzq" id="6HT7BWBQcOr" role="11_B2D">
                <ref role="16sUi3" node="6HT7BWBQcOv" resolve="V" />
              </node>
            </node>
          </node>
          <node concept="16syzq" id="6YPNC4OFKze" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6HT7BWBQcOt" role="1B3o_S" />
          <node concept="16euLQ" id="6HT7BWBQcOv" role="16eVyc">
            <property role="TrG5h" value="V" />
          </node>
          <node concept="3clFbS" id="6HT7BWBQcOw" role="3clF47">
            <node concept="3clFbF" id="6YPNC4PnH9B" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4PnH9A" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4PnxDD" resolve="visitAbstract" />
                <node concept="37vLTw" id="6YPNC4PqcO8" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBQcOp" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6HT7BWBQdh4" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="6HT7BWBQcOz" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="visitVariable" />
          <node concept="37vLTG" id="6HT7BWBQcO$" role="3clF46">
            <property role="TrG5h" value="variable" />
            <node concept="3uibUv" id="6HT7BWBQcO_" role="1tU5fm">
              <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
            </node>
          </node>
          <node concept="16syzq" id="6YPNC4OFLs9" role="3clF45">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
          <node concept="3Tm1VV" id="6HT7BWBQcOB" role="1B3o_S" />
          <node concept="3clFbS" id="6HT7BWBQcOD" role="3clF47">
            <node concept="3clFbF" id="6YPNC4PnIls" role="3cqZAp">
              <node concept="1rXfSq" id="6YPNC4PnIlr" role="3clFbG">
                <ref role="37wK5l" node="6YPNC4PnxDD" resolve="visitAbstract" />
                <node concept="37vLTw" id="6YPNC4Pqe_m" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBQcO$" resolve="variable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6HT7BWBQdl4" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3Tm1VV" id="6HT7BWBQcxw" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBQcHt" role="EKbjA">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
          <node concept="16syzq" id="6YPNC4OFFK7" role="11_B2D">
            <ref role="16sUi3" node="6YPNC4OFF7C" resolve="T" />
          </node>
        </node>
        <node concept="16euLQ" id="6YPNC4OFF7C" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG8L8d" role="jymVt" />
      <node concept="16euLQ" id="6YPNC4OFzzK" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQtYL" role="jymVt" />
    <node concept="3Tm1VV" id="1bm7a6EXvsQ" role="1B3o_S" />
    <node concept="3uibUv" id="573vQv1lEQc" role="3HQHJm">
      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
    </node>
  </node>
  <node concept="312cEu" id="1hOy_Afq4Fn">
    <property role="TrG5h" value="TreeFormWalk" />
    <node concept="2tJIrI" id="47nvOnU4JVV" role="jymVt" />
    <node concept="3HP615" id="3JgCwkqiP3h" role="jymVt">
      <property role="TrG5h" value="Walker" />
      <node concept="2tJIrI" id="3JgCwkqiP3o" role="jymVt" />
      <node concept="3clFb_" id="5s497Vr3IZm" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="5s497Vr3IZo" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr3IZp" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr3IZq" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5s497Vr3ICg" role="jymVt" />
      <node concept="3Tm1VV" id="3JgCwkqiP3U" role="1B3o_S" />
      <node concept="3uibUv" id="6YPNC4PfK5R" role="3HQHJm">
        <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        <node concept="3uibUv" id="6YPNC4PfLoh" role="11_B2D">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ev$9JFHASk" role="jymVt" />
    <node concept="312cEu" id="2ev$9JFHDMZ" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="IdleWalker" />
      <node concept="2tJIrI" id="2ev$9JFHHuf" role="jymVt" />
      <node concept="2tJIrI" id="6YPNC4PrCCA" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4PrDtW" role="jymVt">
        <property role="TrG5h" value="visitAbstract" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="6YPNC4PrDu4" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4PrDtY" role="1B3o_S" />
        <node concept="37vLTG" id="6YPNC4PrDu2" role="3clF46">
          <property role="TrG5h" value="treeForm" />
          <node concept="3uibUv" id="6YPNC4PrDu3" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="6YPNC4PrDu5" role="3clF47">
          <node concept="3clFbF" id="6YPNC4PrER8" role="3cqZAp">
            <node concept="Rm8GO" id="6YPNC4PrER9" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4PrDu6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4PrCE8" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4PfYHA" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitNode" />
        <node concept="37vLTG" id="6YPNC4PfYHB" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6YPNC4PfYHC" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
          </node>
        </node>
        <node concept="3uibUv" id="6YPNC4PfYHJ" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4PfYHE" role="1B3o_S" />
        <node concept="2AHcQZ" id="6YPNC4PfYHI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6YPNC4PfYHK" role="3clF47">
          <node concept="3clFbF" id="6YPNC4PfZWW" role="3cqZAp">
            <node concept="Rm8GO" id="6YPNC4PfZWX" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4Pg99I" role="jymVt" />
      <node concept="3clFb_" id="2ev$9JFHHyf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="2ev$9JFHHyg" role="3clF45" />
        <node concept="3Tm1VV" id="2ev$9JFHHyh" role="1B3o_S" />
        <node concept="3clFbS" id="2ev$9JFHHyj" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="2ev$9JFHDN0" role="1B3o_S" />
      <node concept="3uibUv" id="2ev$9JFHGVP" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
      </node>
      <node concept="3uibUv" id="6YPNC4PfWOU" role="1zkMxy">
        <ref role="3uigEE" node="6HT7BWBQcxv" resolve="TreeForm.Visitor.Stub" />
        <node concept="3uibUv" id="6YPNC4PfY3u" role="11_B2D">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3JgCwkqhoku" role="jymVt" />
    <node concept="3clFbW" id="47nvOnTQN6Q" role="jymVt">
      <node concept="3cqZAl" id="47nvOnTQN6S" role="3clF45" />
      <node concept="3Tm1VV" id="47nvOnTQN6T" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTQN6U" role="3clF47">
        <node concept="3clFbF" id="47nvOnTQNCE" role="3cqZAp">
          <node concept="37vLTI" id="47nvOnTQNCG" role="3clFbG">
            <node concept="2OqwBi" id="47nvOnTQNCK" role="37vLTJ">
              <node concept="Xjq3P" id="47nvOnTQNCN" role="2Oq$k0" />
              <node concept="2OwXpG" id="47nvOnTQNCJ" role="2OqNvi">
                <ref role="2Oxat5" node="47nvOnTQNCA" resolve="walker" />
              </node>
            </node>
            <node concept="37vLTw" id="47nvOnTQNCO" role="37vLTx">
              <ref role="3cqZAo" node="47nvOnTQN9E" resolve="walker" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="47nvOnTQN9E" role="3clF46">
        <property role="TrG5h" value="walker" />
        <node concept="3uibUv" id="3JgCwkqj7Js" role="1tU5fm">
          <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTVq58" role="jymVt" />
    <node concept="3clFb_" id="1hOy_Afq63K" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="37vLTG" id="1hOy_Afq6Lg" role="3clF46">
        <property role="TrG5h" value="tp" />
        <node concept="3uibUv" id="1hOy_AfqoVv" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3cqZAl" id="1hOy_Afq63M" role="3clF45" />
      <node concept="3Tm1VV" id="1hOy_Afq63N" role="1B3o_S" />
      <node concept="3clFbS" id="1hOy_Afq63O" role="3clF47">
        <node concept="3clFbF" id="47nvOnTVVsM" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTVXoy" role="3clFbG">
            <node concept="37vLTw" id="47nvOnTVVsK" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
            </node>
            <node concept="liA8E" id="47nvOnTW06r" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
              <node concept="2OqwBi" id="47nvOnTWeCu" role="37wK5m">
                <node concept="2YIFZM" id="47nvOnTWcOV" role="2Oq$k0">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="37vLTw" id="104EUzGgdJC" role="37wK5m">
                    <ref role="3cqZAo" node="1hOy_Afq6Lg" resolve="tp" />
                  </node>
                </node>
                <node concept="liA8E" id="47nvOnTWg4c" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="47nvOnTRBJB" role="3cqZAp">
          <node concept="3clFbS" id="47nvOnTRBK0" role="2LFqv$">
            <node concept="3cpWs8" id="47nvOnTRBJE" role="3cqZAp">
              <node concept="3cpWsn" id="47nvOnTRBJF" role="3cpWs9">
                <property role="TrG5h" value="it" />
                <node concept="3uibUv" id="47nvOnTRBJG" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3qUE_q" id="47nvOnTToTV" role="11_B2D">
                    <node concept="3uibUv" id="47nvOnTTpNL" role="3qUE_r">
                      <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="47nvOnTRBJJ" role="33vP2m">
                  <node concept="37vLTw" id="47nvOnTRBJK" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="47nvOnTRBJL" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="47nvOnTRBJM" role="3cqZAp">
              <node concept="3clFbS" id="47nvOnTRBJN" role="3clFbx">
                <node concept="3clFbF" id="47nvOnTRBJO" role="3cqZAp">
                  <node concept="2OqwBi" id="47nvOnTRBJP" role="3clFbG">
                    <node concept="37vLTw" id="47nvOnTRBJQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                    </node>
                    <node concept="liA8E" id="47nvOnTRBJR" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5s497Vra$tT" role="3cqZAp">
                  <node concept="3clFbS" id="5s497Vra$tW" role="3clFbx">
                    <node concept="3clFbF" id="5s497Vr8gAa" role="3cqZAp">
                      <node concept="2OqwBi" id="5s497Vr8ham" role="3clFbG">
                        <node concept="37vLTw" id="5s497Vr8gA8" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
                        </node>
                        <node concept="liA8E" id="5s497Vr8hgd" role="2OqNvi">
                          <ref role="37wK5l" node="5s497Vr3IZm" resolve="endWalk" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="5s497VraD7i" role="3clFbw">
                    <node concept="2OqwBi" id="5s497VraD7j" role="3fr31v">
                      <node concept="37vLTw" id="5s497VraD7k" role="2Oq$k0">
                        <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                      </node>
                      <node concept="liA8E" id="5s497VraD7l" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="47nvOnTRBJS" role="3clFbw">
                <node concept="2OqwBi" id="47nvOnTRBJT" role="3fr31v">
                  <node concept="37vLTw" id="47nvOnTRBJU" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTRBJF" resolve="it" />
                  </node>
                  <node concept="liA8E" id="47nvOnTRBJV" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="47nvOnTRDns" role="9aQIa">
                <node concept="3clFbS" id="47nvOnTRDnt" role="9aQI4">
                  <node concept="3cpWs8" id="7d$oK1$HfcO" role="3cqZAp">
                    <node concept="3cpWsn" id="7d$oK1$HfcP" role="3cpWs9">
                      <property role="TrG5h" value="next" />
                      <node concept="3uibUv" id="7d$oK1$HfcQ" role="1tU5fm">
                        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                      </node>
                      <node concept="2OqwBi" id="7d$oK1$HfcS" role="33vP2m">
                        <node concept="37vLTw" id="7d$oK1$HfcT" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTRBJF" resolve="it" />
                        </node>
                        <node concept="liA8E" id="7d$oK1$HfcU" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="47nvOnTREgQ" role="3cqZAp">
                    <node concept="2OqwBi" id="47nvOnTSkyf" role="3clFbG">
                      <node concept="37vLTw" id="104EUzFXuKH" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$HfcP" resolve="next" />
                      </node>
                      <node concept="liA8E" id="47nvOnTSl6h" role="2OqNvi">
                        <ref role="37wK5l" node="104EUzFOBnD" resolve="acceptVisitor" />
                        <node concept="Xjq3P" id="47nvOnTSl$L" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="47nvOnTRBK2" role="2$JKZa">
            <node concept="2OqwBi" id="47nvOnTRBK3" role="3fr31v">
              <node concept="37vLTw" id="47nvOnTRBK4" role="2Oq$k0">
                <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
              </node>
              <node concept="liA8E" id="47nvOnTRBK5" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQUCu" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTQNVI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitTermNode" />
      <node concept="3uibUv" id="3OPtF02Z5Sk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTQNVK" role="1B3o_S" />
      <node concept="37vLTG" id="47nvOnTQNVL" role="3clF46">
        <property role="TrG5h" value="termNode" />
        <node concept="3uibUv" id="47nvOnTQNVM" role="1tU5fm">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
        </node>
      </node>
      <node concept="3clFbS" id="47nvOnTQNVR" role="3clF47">
        <node concept="3KaCP$" id="47nvOnTSD0i" role="3cqZAp">
          <node concept="3KbdKl" id="47nvOnTSFPp" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTSFPq" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            </node>
            <node concept="3clFbS" id="47nvOnTSFPr" role="3Kbo56">
              <node concept="3clFbF" id="47nvOnTSS8k" role="3cqZAp">
                <node concept="2OqwBi" id="47nvOnTSSLd" role="3clFbG">
                  <node concept="37vLTw" id="47nvOnTSS8i" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="47nvOnTSUj0" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="47nvOnTT2Mr" role="37wK5m">
                      <node concept="2OqwBi" id="47nvOnTT0lp" role="2Oq$k0">
                        <node concept="37vLTw" id="47nvOnTSZEY" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTQNVL" resolve="termNode" />
                        </node>
                        <node concept="liA8E" id="47nvOnTT1GD" role="2OqNvi">
                          <ref role="37wK5l" node="5JQSuNswjSg" resolve="arguments" />
                        </node>
                      </node>
                      <node concept="liA8E" id="47nvOnTT3X$" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="47nvOnTT$gM" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="47nvOnTSFPt" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTSFPu" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
            <node concept="3clFbS" id="47nvOnTSFPv" role="3Kbo56">
              <node concept="3zACq4" id="47nvOnTT_1M" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="47nvOnTSFPw" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTSFPx" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
            </node>
            <node concept="3clFbS" id="47nvOnTSFPy" role="3Kbo56">
              <node concept="3clFbF" id="47nvOnTT_3X" role="3cqZAp">
                <node concept="2OqwBi" id="47nvOnTT_M4" role="3clFbG">
                  <node concept="37vLTw" id="47nvOnTT_3W" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="47nvOnTTCT9" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="47nvOnTTIZp" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="47nvOnU64QQ" role="3KbGdf">
            <node concept="37vLTw" id="47nvOnU64QR" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
            </node>
            <node concept="liA8E" id="47nvOnU64QS" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOARE" resolve="visitTermNode" />
              <node concept="37vLTw" id="47nvOnU64QV" role="37wK5m">
                <ref role="3cqZAo" node="47nvOnTQNVL" resolve="termNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="47nvOnTSD0m" role="3Kb1Dw">
            <node concept="3zACq4" id="47nvOnTTJti" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF02ZagR" role="3cqZAp">
          <node concept="10Nm6u" id="3OPtF02ZagP" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTQNVS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQOmy" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4NZxp0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitChildRole" />
      <node concept="37vLTG" id="6YPNC4NZxp1" role="3clF46">
        <property role="TrG5h" value="childRole" />
        <node concept="3uibUv" id="6YPNC4NZxp2" role="1tU5fm">
          <ref role="3uigEE" node="6YPNC4NYnau" resolve="ChildRole" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4NZxp3" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4NZxp4" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4NZxp6" role="3clF47">
        <node concept="3KaCP$" id="6YPNC4NZAWt" role="3cqZAp">
          <node concept="3KbdKl" id="6YPNC4NZAWu" role="3KbHQx">
            <node concept="Rm8GO" id="6YPNC4NZAWv" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            </node>
            <node concept="3clFbS" id="6YPNC4NZAWw" role="3Kbo56">
              <node concept="3clFbF" id="6YPNC4NZAWx" role="3cqZAp">
                <node concept="2OqwBi" id="6YPNC4NZAWy" role="3clFbG">
                  <node concept="37vLTw" id="6YPNC4NZAWz" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="6YPNC4NZAW$" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="6YPNC4NZAW_" role="37wK5m">
                      <node concept="2OqwBi" id="6YPNC4NZAWA" role="2Oq$k0">
                        <node concept="37vLTw" id="6YPNC4NZDCR" role="2Oq$k0">
                          <ref role="3cqZAo" node="6YPNC4NZxp1" resolve="childRole" />
                        </node>
                        <node concept="liA8E" id="6YPNC4NZAWC" role="2OqNvi">
                          <ref role="37wK5l" node="5JQSuNswjSg" resolve="arguments" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6YPNC4NZAWD" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6YPNC4NZAWE" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6YPNC4NZAWF" role="3KbHQx">
            <node concept="Rm8GO" id="6YPNC4NZAWG" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
            <node concept="3clFbS" id="6YPNC4NZAWH" role="3Kbo56">
              <node concept="3zACq4" id="6YPNC4NZAWI" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6YPNC4NZAWJ" role="3KbHQx">
            <node concept="Rm8GO" id="6YPNC4NZAWK" role="3Kbmr1">
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
            <node concept="3clFbS" id="6YPNC4NZAWL" role="3Kbo56">
              <node concept="3clFbF" id="6YPNC4NZAWM" role="3cqZAp">
                <node concept="2OqwBi" id="6YPNC4NZAWN" role="3clFbG">
                  <node concept="37vLTw" id="6YPNC4NZAWO" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="6YPNC4NZAWP" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6YPNC4NZAWQ" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="6YPNC4NZAWR" role="3KbGdf">
            <node concept="37vLTw" id="6YPNC4NZAWS" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
            </node>
            <node concept="liA8E" id="6YPNC4NZAWT" role="2OqNvi">
              <ref role="37wK5l" node="6YPNC4NZ8iR" resolve="visitChildRole" />
              <node concept="37vLTw" id="6YPNC4NZDrX" role="37wK5m">
                <ref role="3cqZAo" node="6YPNC4NZxp1" resolve="childRole" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6YPNC4NZAWV" role="3Kb1Dw">
            <node concept="3zACq4" id="6YPNC4NZAWW" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="6YPNC4NZEqy" role="3cqZAp">
          <node concept="10Nm6u" id="6YPNC4NZEqw" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6YPNC4NZxp7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NZzjO" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4OF0P2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitListRole" />
      <node concept="37vLTG" id="6YPNC4OF0P3" role="3clF46">
        <property role="TrG5h" value="listRole" />
        <node concept="3uibUv" id="6YPNC4OF0P4" role="1tU5fm">
          <ref role="3uigEE" node="6YPNC4OECgm" resolve="ListRole" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4OF0P5" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4OF0P6" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4OF0P8" role="3clF47">
        <node concept="3KaCP$" id="6YPNC4OF4eU" role="3cqZAp">
          <node concept="3KbdKl" id="6YPNC4OF4eV" role="3KbHQx">
            <node concept="Rm8GO" id="6YPNC4OF4eW" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            </node>
            <node concept="3clFbS" id="6YPNC4OF4eX" role="3Kbo56">
              <node concept="3clFbF" id="6YPNC4OF4eY" role="3cqZAp">
                <node concept="2OqwBi" id="6YPNC4OF4eZ" role="3clFbG">
                  <node concept="37vLTw" id="6YPNC4OF4f0" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="6YPNC4OF4f1" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="6YPNC4OF4f2" role="37wK5m">
                      <node concept="2OqwBi" id="6YPNC4OF4f3" role="2Oq$k0">
                        <node concept="37vLTw" id="6YPNC4OFa3o" role="2Oq$k0">
                          <ref role="3cqZAo" node="6YPNC4OF0P3" resolve="listRole" />
                        </node>
                        <node concept="liA8E" id="6YPNC4OF4f5" role="2OqNvi">
                          <ref role="37wK5l" node="5JQSuNswjSg" resolve="arguments" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6YPNC4OF4f6" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6YPNC4OF4f7" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6YPNC4OF4f8" role="3KbHQx">
            <node concept="Rm8GO" id="6YPNC4OF4f9" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
            <node concept="3clFbS" id="6YPNC4OF4fa" role="3Kbo56">
              <node concept="3zACq4" id="6YPNC4OF4fb" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6YPNC4OF4fc" role="3KbHQx">
            <node concept="Rm8GO" id="6YPNC4OF4fd" role="3Kbmr1">
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
            <node concept="3clFbS" id="6YPNC4OF4fe" role="3Kbo56">
              <node concept="3clFbF" id="6YPNC4OF4ff" role="3cqZAp">
                <node concept="2OqwBi" id="6YPNC4OF4fg" role="3clFbG">
                  <node concept="37vLTw" id="6YPNC4OF4fh" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="6YPNC4OF4fi" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="6YPNC4OF4fj" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="6YPNC4OF4fk" role="3KbGdf">
            <node concept="37vLTw" id="6YPNC4OF4fl" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
            </node>
            <node concept="liA8E" id="6YPNC4OF4fm" role="2OqNvi">
              <ref role="37wK5l" node="6YPNC4OET1Y" resolve="visitListRole" />
              <node concept="37vLTw" id="6YPNC4OIj86" role="37wK5m">
                <ref role="3cqZAo" node="6YPNC4OF0P3" resolve="listRole" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6YPNC4OF4fo" role="3Kb1Dw">
            <node concept="3zACq4" id="6YPNC4OF4fp" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="6YPNC4OF4eS" role="3cqZAp">
          <node concept="10Nm6u" id="6YPNC4OF4eT" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6YPNC4OF0P9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4OF2Vm" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03nbZt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitList" />
      <node concept="3uibUv" id="3OPtF03nbZu" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03nbZv" role="1B3o_S" />
      <node concept="37vLTG" id="3OPtF03nbZw" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="3OPtF03nbZx" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3OPtF03nbZA" role="3clF47">
        <node concept="3cpWs8" id="5YVX0wIl19P" role="3cqZAp">
          <node concept="3cpWsn" id="5YVX0wIl19Q" role="3cpWs9">
            <property role="TrG5h" value="action" />
            <node concept="3uibUv" id="5YVX0wIl19J" role="1tU5fm">
              <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
            </node>
            <node concept="2OqwBi" id="5YVX0wIl19R" role="33vP2m">
              <node concept="1rXfSq" id="5YVX0wIl19S" role="2Oq$k0">
                <ref role="37wK5l" node="3JgCwkqnB43" resolve="walker" />
              </node>
              <node concept="liA8E" id="5YVX0wIl19T" role="2OqNvi">
                <ref role="37wK5l" node="104EUzFOAS5" resolve="visitList" />
                <node concept="37vLTw" id="5YVX0wIl19U" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03nbZw" resolve="list" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="3OPtF03nbZI" role="3cqZAp">
          <node concept="3KbdKl" id="3OPtF03nbZJ" role="3KbHQx">
            <node concept="Rm8GO" id="3OPtF03nbZK" role="3Kbmr1">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
            <node concept="3clFbS" id="3OPtF03nbZL" role="3Kbo56">
              <node concept="3SKdUt" id="5s497VqoF2V" role="3cqZAp">
                <node concept="3SKdUq" id="5s497VqoFD0" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: watch out for list of values" />
                </node>
              </node>
              <node concept="3clFbF" id="5s497VqonAT" role="3cqZAp">
                <node concept="2OqwBi" id="5s497VqonAU" role="3clFbG">
                  <node concept="37vLTw" id="5s497VqonAV" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="5s497VqonAW" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="5s497VqoCMn" role="37wK5m">
                      <node concept="2OqwBi" id="5YIOneOUA7N" role="2Oq$k0">
                        <node concept="37vLTw" id="5YIOneOUA02" role="2Oq$k0">
                          <ref role="3cqZAo" node="3OPtF03nbZw" resolve="list" />
                        </node>
                        <node concept="liA8E" id="5YIOneOUAmd" role="2OqNvi">
                          <ref role="37wK5l" node="5YIOneOT0Zn" resolve="contents" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5s497VqoCMp" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="3OPtF03nbZM" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="3OPtF03nbZN" role="3KbHQx">
            <node concept="Rm8GO" id="3OPtF03nbZO" role="3Kbmr1">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
            <node concept="3clFbS" id="3OPtF03nbZP" role="3Kbo56">
              <node concept="3zACq4" id="3OPtF03nbZQ" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="3OPtF03nbZR" role="3KbHQx">
            <node concept="Rm8GO" id="3OPtF03nbZS" role="3Kbmr1">
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
            <node concept="3clFbS" id="3OPtF03nbZT" role="3Kbo56">
              <node concept="3clFbF" id="3OPtF03nbZU" role="3cqZAp">
                <node concept="1rXfSq" id="3OPtF03nbZV" role="3clFbG">
                  <ref role="37wK5l" node="3JgCwkqpoW3" resolve="clearStack" />
                </node>
              </node>
              <node concept="3zACq4" id="3OPtF03nbZW" role="3cqZAp" />
            </node>
          </node>
          <node concept="37vLTw" id="5YVX0wIl19Z" role="3KbGdf">
            <ref role="3cqZAo" node="5YVX0wIl19Q" resolve="action" />
          </node>
          <node concept="3clFbS" id="3OPtF03nc05" role="3Kb1Dw">
            <node concept="3zACq4" id="3OPtF03nc06" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03nc07" role="3cqZAp">
          <node concept="10Nm6u" id="3OPtF03nc08" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03n$iU" role="jymVt" />
    <node concept="3clFb_" id="47nvOnTQNVx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitValueRole" />
      <node concept="37vLTG" id="47nvOnTQNVy" role="3clF46">
        <property role="TrG5h" value="valueRole" />
        <node concept="3uibUv" id="47nvOnTQNVz" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
          <node concept="16syzq" id="47nvOnTQNV$" role="11_B2D">
            <ref role="16sUi3" node="47nvOnTQNVB" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF02ZcaI" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="47nvOnTQNVA" role="1B3o_S" />
      <node concept="16euLQ" id="47nvOnTQNVB" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3clFbS" id="47nvOnTQNVD" role="3clF47">
        <node concept="3cpWs8" id="5YVX0wIljWr" role="3cqZAp">
          <node concept="3cpWsn" id="5YVX0wIljWs" role="3cpWs9">
            <property role="TrG5h" value="action" />
            <node concept="3uibUv" id="5YVX0wIljW5" role="1tU5fm">
              <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
            </node>
            <node concept="2OqwBi" id="5YVX0wIljWt" role="33vP2m">
              <node concept="37vLTw" id="5YVX0wIljWu" role="2Oq$k0">
                <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
              </node>
              <node concept="liA8E" id="5YVX0wIljWv" role="2OqNvi">
                <ref role="37wK5l" node="104EUzFOARP" resolve="visitValueRole" />
                <node concept="37vLTw" id="5YVX0wIljWw" role="37wK5m">
                  <ref role="3cqZAo" node="47nvOnTQNVy" resolve="valueRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="47nvOnTUhxp" role="3cqZAp">
          <node concept="3KbdKl" id="47nvOnTUhxq" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTUhxr" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            </node>
            <node concept="3clFbS" id="47nvOnTUhxs" role="3Kbo56">
              <node concept="3clFbF" id="104EUzFXTOm" role="3cqZAp">
                <node concept="2OqwBi" id="104EUzFXUDk" role="3clFbG">
                  <node concept="37vLTw" id="104EUzFXTOk" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="104EUzFXYpi" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
                    <node concept="2OqwBi" id="104EUzFXZ5o" role="37wK5m">
                      <node concept="2OqwBi" id="104EUzFXZ5p" role="2Oq$k0">
                        <node concept="37vLTw" id="104EUzFXZ5q" role="2Oq$k0">
                          <ref role="3cqZAo" node="47nvOnTQNVy" resolve="valueRole" />
                        </node>
                        <node concept="liA8E" id="104EUzFXZ5r" role="2OqNvi">
                          <ref role="37wK5l" node="5JQSuNswjSg" resolve="arguments" />
                        </node>
                      </node>
                      <node concept="liA8E" id="104EUzFXZ5s" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="47nvOnTUhxA" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="47nvOnTUhxB" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTUhxC" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
            <node concept="3clFbS" id="47nvOnTUhxD" role="3Kbo56">
              <node concept="3zACq4" id="47nvOnTUhxE" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="47nvOnTUhxF" role="3KbHQx">
            <node concept="Rm8GO" id="47nvOnTUhxG" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
            </node>
            <node concept="3clFbS" id="47nvOnTUhxH" role="3Kbo56">
              <node concept="3clFbF" id="47nvOnTUhxI" role="3cqZAp">
                <node concept="2OqwBi" id="47nvOnTUhxJ" role="3clFbG">
                  <node concept="37vLTw" id="47nvOnTUhxK" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="47nvOnTUhxL" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="47nvOnTUhxM" role="3cqZAp" />
            </node>
          </node>
          <node concept="37vLTw" id="5YVX0wIljWy" role="3KbGdf">
            <ref role="3cqZAo" node="5YVX0wIljWs" resolve="action" />
          </node>
          <node concept="3clFbS" id="47nvOnTUhxO" role="3Kb1Dw">
            <node concept="3zACq4" id="47nvOnTUhxP" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF02ZgaA" role="3cqZAp">
          <node concept="10Nm6u" id="3OPtF02Zga$" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="47nvOnTQNVE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQObK" role="jymVt" />
    <node concept="3clFb_" id="104EUzFIGkB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitValue" />
      <node concept="37vLTG" id="104EUzFIGkC" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="104EUzFIGkD" role="1tU5fm">
          <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
          <node concept="16syzq" id="104EUzFIGkE" role="11_B2D">
            <ref role="16sUi3" node="104EUzFIGkI" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFIGkF" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="104EUzFIGkG" role="1B3o_S" />
      <node concept="16euLQ" id="104EUzFIGkI" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3clFbS" id="104EUzFIGkJ" role="3clF47">
        <node concept="3KaCP$" id="104EUzG88v4" role="3cqZAp">
          <node concept="3KbdKl" id="104EUzG88v5" role="3KbHQx">
            <node concept="Rm8GO" id="104EUzG88v6" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            </node>
            <node concept="3clFbS" id="104EUzG88v7" role="3Kbo56">
              <node concept="3zACq4" id="104EUzG88v8" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="104EUzG88v9" role="3KbHQx">
            <node concept="Rm8GO" id="104EUzG88va" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
            <node concept="3clFbS" id="104EUzG88vb" role="3Kbo56">
              <node concept="3zACq4" id="104EUzG88vc" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="104EUzG88vd" role="3KbHQx">
            <node concept="Rm8GO" id="104EUzG88ve" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
            </node>
            <node concept="3clFbS" id="104EUzG88vf" role="3Kbo56">
              <node concept="3clFbF" id="104EUzG88vg" role="3cqZAp">
                <node concept="2OqwBi" id="104EUzG88vh" role="3clFbG">
                  <node concept="37vLTw" id="104EUzG88vi" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="104EUzG88vj" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="104EUzG88vk" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="104EUzG88vl" role="3KbGdf">
            <node concept="37vLTw" id="104EUzG88vm" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
            </node>
            <node concept="liA8E" id="104EUzG88vn" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOASf" resolve="visitValue" />
              <node concept="37vLTw" id="104EUzG88vo" role="37wK5m">
                <ref role="3cqZAo" node="104EUzFIGkC" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="104EUzG88vp" role="3Kb1Dw">
            <node concept="3zACq4" id="104EUzG88vq" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="104EUzG88v2" role="3cqZAp">
          <node concept="10Nm6u" id="104EUzG88v3" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFIPz5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3JgCwkqnqdU" role="jymVt" />
    <node concept="3clFb_" id="104EUzFIV7n" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitVariable" />
      <node concept="37vLTG" id="104EUzFIV7o" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3uibUv" id="104EUzFIV7p" role="1tU5fm">
          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3uibUv" id="104EUzFIV7q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="104EUzFIV7r" role="1B3o_S" />
      <node concept="3clFbS" id="104EUzFIV7t" role="3clF47">
        <node concept="3KaCP$" id="104EUzG7VYm" role="3cqZAp">
          <node concept="3KbdKl" id="104EUzG7VYn" role="3KbHQx">
            <node concept="Rm8GO" id="104EUzG7VYo" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            </node>
            <node concept="3clFbS" id="104EUzG7VYp" role="3Kbo56">
              <node concept="3zACq4" id="104EUzG7VYz" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="104EUzG7VY$" role="3KbHQx">
            <node concept="Rm8GO" id="104EUzG7VY_" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
            <node concept="3clFbS" id="104EUzG7VYA" role="3Kbo56">
              <node concept="3zACq4" id="104EUzG7VYB" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="104EUzG7VYC" role="3KbHQx">
            <node concept="Rm8GO" id="104EUzG7VYD" role="3Kbmr1">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
            </node>
            <node concept="3clFbS" id="104EUzG7VYE" role="3Kbo56">
              <node concept="3clFbF" id="104EUzG7VYF" role="3cqZAp">
                <node concept="2OqwBi" id="104EUzG7VYG" role="3clFbG">
                  <node concept="37vLTw" id="104EUzG7VYH" role="2Oq$k0">
                    <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
                  </node>
                  <node concept="liA8E" id="104EUzG7VYI" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.clear():void" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="104EUzG7VYJ" role="3cqZAp" />
            </node>
          </node>
          <node concept="2OqwBi" id="104EUzG7VYK" role="3KbGdf">
            <node concept="37vLTw" id="104EUzG7VYL" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
            </node>
            <node concept="liA8E" id="104EUzG7VYM" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOASo" resolve="visitVariable" />
              <node concept="37vLTw" id="104EUzG8kfZ" role="37wK5m">
                <ref role="3cqZAo" node="104EUzFIV7o" resolve="variable" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="104EUzG7VYP" role="3Kb1Dw">
            <node concept="3zACq4" id="104EUzG7VYQ" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="104EUzG82KC" role="3cqZAp">
          <node concept="10Nm6u" id="104EUzG82KA" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="104EUzFJ4l1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFIZNj" role="jymVt" />
    <node concept="3clFb_" id="3JgCwkqnB43" role="jymVt">
      <property role="TrG5h" value="walker" />
      <node concept="3uibUv" id="3JgCwkqnN3O" role="3clF45">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
      </node>
      <node concept="3Tmbuc" id="3JgCwkqnKcG" role="1B3o_S" />
      <node concept="3clFbS" id="3JgCwkqnB47" role="3clF47">
        <node concept="3clFbF" id="3JgCwkqnPZc" role="3cqZAp">
          <node concept="37vLTw" id="3JgCwkqnQw5" role="3clFbG">
            <ref role="3cqZAo" node="47nvOnTQNCA" resolve="walker" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQNG_" role="jymVt" />
    <node concept="3clFb_" id="3JgCwkqpoW3" role="jymVt">
      <property role="TrG5h" value="clearStack" />
      <node concept="3cqZAl" id="3JgCwkqpoW4" role="3clF45" />
      <node concept="3Tmbuc" id="3JgCwkqpoW5" role="1B3o_S" />
      <node concept="3clFbS" id="3JgCwkqpoW6" role="3clF47">
        <node concept="3clFbF" id="3JgCwkqpyYx" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqpzGy" role="3clFbG">
            <node concept="37vLTw" id="3JgCwkqpyYw" role="2Oq$k0">
              <ref role="3cqZAo" node="47nvOnTQQyc" resolve="stack" />
            </node>
            <node concept="liA8E" id="3JgCwkqpAPx" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~LinkedList.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3JgCwkqo_RN" role="jymVt" />
    <node concept="312cEg" id="47nvOnTQNCA" role="jymVt">
      <property role="TrG5h" value="walker" />
      <node concept="3Tm6S6" id="47nvOnTQNCB" role="1B3o_S" />
      <node concept="3uibUv" id="3JgCwkqj19S" role="1tU5fm">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTQQhN" role="jymVt" />
    <node concept="312cEg" id="47nvOnTQQyc" role="jymVt">
      <property role="TrG5h" value="stack" />
      <node concept="3Tm6S6" id="47nvOnTQQyd" role="1B3o_S" />
      <node concept="3uibUv" id="47nvOnTQQNX" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="47nvOnTQSd8" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
          <node concept="3qUE_q" id="47nvOnTTkCz" role="11_B2D">
            <node concept="3uibUv" id="47nvOnTQTwl" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="47nvOnTTwCW" role="33vP2m">
        <node concept="1pGfFk" id="47nvOnTTwAb" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
          <node concept="3uibUv" id="47nvOnTTwAc" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
            <node concept="3qUE_q" id="47nvOnTTwAd" role="11_B2D">
              <node concept="3uibUv" id="47nvOnTTwAe" role="3qUE_r">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hOy_Afq6Rc" role="jymVt" />
    <node concept="3Tm1VV" id="1hOy_Afq4Fo" role="1B3o_S" />
    <node concept="3uibUv" id="3JgCwkqhFHO" role="EKbjA">
      <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
      <node concept="3uibUv" id="6YPNC4OJ9St" role="11_B2D">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="3uibUv" id="6YPNC4OOr_n" role="1zkMxy">
      <ref role="3uigEE" node="6HT7BWBQcxv" resolve="TreeForm.Visitor.Stub" />
      <node concept="3uibUv" id="6YPNC4OOv0L" role="11_B2D">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3JgCwkqd3K7">
    <property role="TrG5h" value="Finders" />
    <node concept="2tJIrI" id="5s497VqqYjA" role="jymVt" />
    <node concept="3HP615" id="3OPtF03axxl" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Condition" />
      <node concept="3clFb_" id="3OPtF03a$Wl" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="matches" />
        <node concept="37vLTG" id="3OPtF03ggTL" role="3clF46">
          <property role="TrG5h" value="tp" />
          <node concept="16syzq" id="5s497VqA310" role="1tU5fm">
            <ref role="16sUi3" node="5s497VqA14z" resolve="T" />
          </node>
        </node>
        <node concept="10P_77" id="3OPtF03gheW" role="3clF45" />
        <node concept="3Tm1VV" id="3OPtF03a$Wo" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03a$Wp" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03axxm" role="1B3o_S" />
      <node concept="16euLQ" id="5s497VqA14z" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5s497VqA1Tk" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03azdi" role="jymVt" />
    <node concept="3HP615" id="3OPtF039XuG" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="IFinder" />
      <node concept="3Tm1VV" id="3OPtF039XuH" role="1B3o_S" />
      <node concept="3clFb_" id="3JgCwkqkUKY" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="found" />
        <node concept="10P_77" id="3JgCwkqkUKZ" role="3clF45" />
        <node concept="3Tm1VV" id="3JgCwkqkUL0" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqkUL1" role="3clF47" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF039Zag" role="jymVt" />
    <node concept="3HP615" id="3OPtF03gqwb" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ITermFinder" />
      <node concept="3clFb_" id="3OPtF03gFkp" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3OPtF03gFpS" role="3clF45">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03gFks" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03gFkt" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03gqwg" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03gqwi" role="3HQHJm">
        <ref role="3uigEE" node="3OPtF039XuG" resolve="Finders.IFinder" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03gqwa" role="jymVt" />
    <node concept="3HP615" id="3OPtF03nYWl" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="IListFinder" />
      <node concept="3clFb_" id="3OPtF03nYWm" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3OPtF03nYWn" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3OPtF03nYWo" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03nYWp" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03nYWr" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03nYWs" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03nYWt" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03nYWu" role="3HQHJm">
        <ref role="3uigEE" node="3OPtF039XuG" resolve="Finders.IFinder" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03ouzq" role="jymVt" />
    <node concept="3HP615" id="3JgCwkqkUKX" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="IValueFinder" />
      <node concept="3clFb_" id="3JgCwkqkUL2" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="result" />
        <node concept="16syzq" id="3JgCwkqzpK5" role="3clF45">
          <ref role="16sUi3" node="3JgCwkqzmD9" resolve="V" />
        </node>
        <node concept="3Tm1VV" id="3JgCwkqkUL4" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqkUL5" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="3JgCwkqkUL6" role="1B3o_S" />
      <node concept="16euLQ" id="3JgCwkqzmD9" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3uibUv" id="3OPtF03a4lX" role="3HQHJm">
        <ref role="3uigEE" node="3OPtF039XuG" resolve="Finders.IFinder" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03gi64" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF03gI4I" role="jymVt">
      <property role="TrG5h" value="findTermsByCondition" />
      <node concept="37vLTG" id="3OPtF03hjym" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3OPtF03hjCw" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03hjJa" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3uibUv" id="3OPtF03hjLZ" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03axxl" resolve="Finders.Condition" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03gI4L" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03gI4M" role="3clF47">
        <node concept="3SKdUt" id="xBj3CwDdl2" role="3cqZAp">
          <node concept="3SKdUq" id="xBj3CwDdoO" role="3SKWNk">
            <property role="3SKdUp" value="TODO: non-branches?" />
          </node>
        </node>
        <node concept="3cpWs8" id="3OPtF03irYz" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03irY$" role="3cpWs9">
            <property role="TrG5h" value="finder" />
            <node concept="3uibUv" id="3OPtF03irYy" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF03hpll" resolve="Finders.TermFinder" />
            </node>
            <node concept="2ShNRf" id="3OPtF03irY_" role="33vP2m">
              <node concept="1pGfFk" id="3OPtF03irYA" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03io1Q" resolve="Finders.TermFinder" />
                <node concept="37vLTw" id="3OPtF03irYB" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03hjJa" resolve="condition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03isbv" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03isrf" role="3clFbG">
            <node concept="2ShNRf" id="3OPtF03isbr" role="2Oq$k0">
              <node concept="1pGfFk" id="3OPtF03ism_" role="2ShVmc">
                <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeFormWalk" />
                <node concept="37vLTw" id="3OPtF03isou" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03irY$" resolve="finder" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3OPtF03isBo" role="2OqNvi">
              <ref role="37wK5l" node="1hOy_Afq63K" resolve="walk" />
              <node concept="37vLTw" id="3OPtF03isDR" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03hjym" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03ir_K" role="3cqZAp">
          <node concept="37vLTw" id="3OPtF03irYC" role="3clFbG">
            <ref role="3cqZAo" node="3OPtF03irY$" resolve="finder" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03hmhg" role="3clF45">
        <ref role="3uigEE" node="3OPtF03gqwb" resolve="Finders.ITermFinder" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03gGfa" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF03pX11" role="jymVt">
      <property role="TrG5h" value="findList" />
      <node concept="37vLTG" id="3OPtF03pX12" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3OPtF03pX13" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03pX15" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="8X2XB" id="3OPtF03pX16" role="1tU5fm">
          <node concept="3uibUv" id="3OPtF03pX17" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03pX18" role="3clF45">
        <ref role="3uigEE" node="3OPtF03nYWl" resolve="Finders.IListFinder" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03pX19" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03pX1a" role="3clF47">
        <node concept="3SKdUt" id="xBj3CwDhDr" role="3cqZAp">
          <node concept="3SKdUq" id="xBj3CwDhDs" role="3SKWNk">
            <property role="3SKdUp" value="TODO: non-branches?" />
          </node>
        </node>
        <node concept="3cpWs8" id="3OPtF03pX1b" role="3cqZAp">
          <node concept="3cpWsn" id="3OPtF03pX1c" role="3cpWs9">
            <property role="TrG5h" value="finder" />
            <node concept="3uibUv" id="3OPtF03pX1d" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF03oA16" resolve="Finders.ListFinder" />
            </node>
            <node concept="2ShNRf" id="3OPtF03pX1e" role="33vP2m">
              <node concept="1pGfFk" id="3OPtF03pX1f" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03oA18" resolve="Finders.ListFinder" />
                <node concept="37vLTw" id="3OPtF03pX1g" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03pX15" resolve="symbolPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03pX1h" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03pX1i" role="3clFbG">
            <node concept="2ShNRf" id="3OPtF03pX1j" role="2Oq$k0">
              <node concept="1pGfFk" id="3OPtF03pX1k" role="2ShVmc">
                <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeFormWalk" />
                <node concept="37vLTw" id="3OPtF03pX1l" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03pX1c" resolve="finder" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3OPtF03pX1m" role="2OqNvi">
              <ref role="37wK5l" node="1hOy_Afq63K" resolve="walk" />
              <node concept="37vLTw" id="3OPtF03pX1n" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03pX12" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3OPtF03pX1o" role="3cqZAp">
          <node concept="37vLTw" id="3OPtF03pX1p" role="3clFbG">
            <ref role="3cqZAo" node="3OPtF03pX1c" resolve="finder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3JgCwkqd8nh" role="jymVt" />
    <node concept="2YIFZL" id="3JgCwkqd8va" role="jymVt">
      <property role="TrG5h" value="findValue" />
      <node concept="37vLTG" id="3JgCwkqd8vb" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3AEuFq_Ridy" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="3JgCwkqd8vd" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="8X2XB" id="3JgCwkqd8ve" role="1tU5fm">
          <node concept="3uibUv" id="3JgCwkqd8vf" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3JgCwkqkY4k" role="3clF45">
        <ref role="3uigEE" node="3JgCwkqkUKX" resolve="Finders.IValueFinder" />
        <node concept="16syzq" id="3JgCwkqzCJW" role="11_B2D">
          <ref role="16sUi3" node="3JgCwkqzCxo" resolve="V" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3JgCwkqd8vh" role="1B3o_S" />
      <node concept="3clFbS" id="3JgCwkqd8vi" role="3clF47">
        <node concept="3SKdUt" id="xBj3CwDhIe" role="3cqZAp">
          <node concept="3SKdUq" id="xBj3CwDhIf" role="3SKWNk">
            <property role="3SKdUp" value="TODO: non-branches?" />
          </node>
        </node>
        <node concept="3cpWs8" id="3JgCwkqd8vj" role="3cqZAp">
          <node concept="3cpWsn" id="3JgCwkqd8vk" role="3cpWs9">
            <property role="TrG5h" value="finder" />
            <node concept="3uibUv" id="3JgCwkqd8vl" role="1tU5fm">
              <ref role="3uigEE" node="29_L5zQSxSb" resolve="Finders.PatternValueFinder" />
              <node concept="16syzq" id="3JgCwkqzDq8" role="11_B2D">
                <ref role="16sUi3" node="3JgCwkqzCxo" resolve="V" />
              </node>
            </node>
            <node concept="2ShNRf" id="3JgCwkqd8vm" role="33vP2m">
              <node concept="1pGfFk" id="3JgCwkqd8vn" role="2ShVmc">
                <ref role="37wK5l" node="29_L5zQTzT0" resolve="Finders.PatternValueFinder" />
                <node concept="37vLTw" id="3JgCwkqd8vo" role="37wK5m">
                  <ref role="3cqZAo" node="3JgCwkqd8vd" resolve="symbolPath" />
                </node>
                <node concept="16syzq" id="3JgCwkqzD4e" role="1pMfVU">
                  <ref role="16sUi3" node="3JgCwkqzCxo" resolve="V" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqd8vp" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqd8vq" role="3clFbG">
            <node concept="2ShNRf" id="3JgCwkqd8vr" role="2Oq$k0">
              <node concept="1pGfFk" id="3JgCwkqd8vs" role="2ShVmc">
                <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeFormWalk" />
                <node concept="37vLTw" id="3JgCwkqd8vt" role="37wK5m">
                  <ref role="3cqZAo" node="3JgCwkqd8vk" resolve="finder" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3JgCwkqd8vu" role="2OqNvi">
              <ref role="37wK5l" node="1hOy_Afq63K" resolve="walk" />
              <node concept="37vLTw" id="3JgCwkqd8vw" role="37wK5m">
                <ref role="3cqZAo" node="3JgCwkqd8vb" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqd8vy" role="3cqZAp">
          <node concept="37vLTw" id="3JgCwkqd8vz" role="3clFbG">
            <ref role="3cqZAo" node="3JgCwkqd8vk" resolve="finder" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="3JgCwkqzCxo" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="3JgCwkqkTo8" role="jymVt" />
    <node concept="312cEu" id="3OPtF03hpll" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TermFinder" />
      <node concept="2tJIrI" id="3OPtF03io_X" role="jymVt" />
      <node concept="3clFbW" id="3OPtF03io1Q" role="jymVt">
        <node concept="3cqZAl" id="3OPtF03io1S" role="3clF45" />
        <node concept="3Tm1VV" id="3OPtF03io1T" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03io1U" role="3clF47">
          <node concept="3clFbF" id="3OPtF03ipTH" role="3cqZAp">
            <node concept="37vLTI" id="3OPtF03iqGH" role="3clFbG">
              <node concept="37vLTw" id="3OPtF03iqQU" role="37vLTx">
                <ref role="3cqZAo" node="3OPtF03ipIy" resolve="condition" />
              </node>
              <node concept="2OqwBi" id="3OPtF03ipWH" role="37vLTJ">
                <node concept="Xjq3P" id="3OPtF03ipTF" role="2Oq$k0" />
                <node concept="2OwXpG" id="3OPtF03iq8h" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF03huAJ" resolve="condition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03ipIy" role="3clF46">
          <property role="TrG5h" value="condition" />
          <node concept="3uibUv" id="3OPtF03ipIx" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03axxl" resolve="Finders.Condition" />
            <node concept="3uibUv" id="5s497VqA51K" role="11_B2D">
              <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4Pp$_7" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4Pp_th" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitAbstract" />
        <node concept="37vLTG" id="6YPNC4Pp_ti" role="3clF46">
          <property role="TrG5h" value="treeForm" />
          <node concept="3uibUv" id="6YPNC4Pq55x" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3uibUv" id="6YPNC4Pp_tq" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4Pp_tl" role="1B3o_S" />
        <node concept="2AHcQZ" id="6YPNC4Pp_tp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6YPNC4Pp_tr" role="3clF47">
          <node concept="3clFbF" id="6YPNC4PpDyb" role="3cqZAp">
            <node concept="Rm8GO" id="6YPNC4PpEJE" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4Pqgwq" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4Pqhy3" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitTermNode" />
        <node concept="3uibUv" id="6YPNC4Pqhyd" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4Pqhy5" role="1B3o_S" />
        <node concept="37vLTG" id="6YPNC4Pqhy6" role="3clF46">
          <property role="TrG5h" value="termNode" />
          <node concept="3uibUv" id="6YPNC4Pqhy7" role="1tU5fm">
            <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4Pqhyc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6YPNC4Pqhye" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03hQ27" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03hQ28" role="3clFbx">
              <node concept="3clFbF" id="3OPtF03hQLj" role="3cqZAp">
                <node concept="37vLTI" id="3OPtF03hRN8" role="3clFbG">
                  <node concept="37vLTw" id="3OPtF03hRTe" role="37vLTx">
                    <ref role="3cqZAo" node="6YPNC4Pqhy6" resolve="termNode" />
                  </node>
                  <node concept="2OqwBi" id="3OPtF03hQPB" role="37vLTJ">
                    <node concept="Xjq3P" id="3OPtF03hQLi" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3OPtF03hRh1" role="2OqNvi">
                      <ref role="2Oxat5" node="3OPtF03hty_" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3OPtF03hSny" role="3cqZAp">
                <node concept="37vLTI" id="3OPtF03hT3N" role="3clFbG">
                  <node concept="3clFbT" id="3OPtF03hTht" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="3OPtF03hSxh" role="37vLTJ">
                    <node concept="Xjq3P" id="3OPtF03hSnw" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3OPtF03hSPW" role="2OqNvi">
                      <ref role="2Oxat5" node="3OPtF03hsvV" resolve="success" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3OPtF03hTx$" role="3cqZAp">
                <node concept="Rm8GO" id="3OPtF03hUXe" role="3cqZAk">
                  <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3OPtF03hQct" role="3clFbw">
              <node concept="37vLTw" id="3OPtF03hQ57" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03huAJ" resolve="condition" />
              </node>
              <node concept="liA8E" id="3OPtF03hQkh" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF03a$Wl" resolve="matches" />
                <node concept="37vLTw" id="3OPtF03hQvX" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4Pqhy6" resolve="termNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03i60g" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03i60h" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4PqO$h" role="jymVt" />
      <node concept="3clFb_" id="5s497Vr3Yc7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="5s497Vr3Yc8" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr3Yc9" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr3Ycb" role="3clF47" />
        <node concept="2AHcQZ" id="5s497Vr3YZ9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497Vr3ZIz" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03hrNE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3OPtF03hrNF" role="3clF45">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03hrNH" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03hrNJ" role="3clF47">
          <node concept="3clFbF" id="3OPtF03hEj3" role="3cqZAp">
            <node concept="37vLTw" id="3OPtF03hEj2" role="3clFbG">
              <ref role="3cqZAo" node="3OPtF03hty_" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03ikar" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03ilfh" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03hrNM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="found" />
        <node concept="10P_77" id="3OPtF03hrNN" role="3clF45" />
        <node concept="3Tm1VV" id="3OPtF03hrNO" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03hrNR" role="3clF47">
          <node concept="3clFbF" id="3OPtF03hsRZ" role="3cqZAp">
            <node concept="37vLTw" id="3OPtF03hsRY" role="3clFbG">
              <ref role="3cqZAo" node="3OPtF03hsvV" resolve="success" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03ikHm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03hsh1" role="jymVt" />
      <node concept="312cEg" id="3OPtF03hsvV" role="jymVt">
        <property role="TrG5h" value="success" />
        <node concept="3Tm6S6" id="3OPtF03hsvW" role="1B3o_S" />
        <node concept="10P_77" id="3OPtF03hsGr" role="1tU5fm" />
        <node concept="3clFbT" id="3OPtF03ht7x" role="33vP2m">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="312cEg" id="3OPtF03hty_" role="jymVt">
        <property role="TrG5h" value="result" />
        <node concept="3Tm6S6" id="3OPtF03htyA" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03htIL" role="1tU5fm">
          <ref role="3uigEE" node="5JQSuNswOXL" resolve="TermNode" />
        </node>
      </node>
      <node concept="312cEg" id="3OPtF03huAJ" role="jymVt">
        <property role="TrG5h" value="condition" />
        <node concept="3Tm6S6" id="3OPtF03huAK" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03huNP" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03axxl" resolve="Finders.Condition" />
          <node concept="3uibUv" id="5s497VqA6Sq" role="11_B2D">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03pV58" role="1B3o_S" />
      <node concept="16euLQ" id="3OPtF03hrbY" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3OPtF03hreJ" role="3ztrMU">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03hrvE" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
      </node>
      <node concept="3uibUv" id="3OPtF03hrHZ" role="EKbjA">
        <ref role="3uigEE" node="3OPtF03gqwb" resolve="Finders.ITermFinder" />
      </node>
      <node concept="3uibUv" id="6YPNC4PggL0" role="1zkMxy">
        <ref role="3uigEE" node="6HT7BWBQcxv" resolve="TreeForm.Visitor.Stub" />
        <node concept="3uibUv" id="6YPNC4PgjiY" role="11_B2D">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03hnyG" role="jymVt" />
    <node concept="312cEu" id="3OPtF03oA16" role="jymVt">
      <property role="TrG5h" value="ListFinder" />
      <node concept="2tJIrI" id="3OPtF03oA17" role="jymVt" />
      <node concept="3clFbW" id="3OPtF03oA18" role="jymVt">
        <node concept="37vLTG" id="3OPtF03oA19" role="3clF46">
          <property role="TrG5h" value="symbolPath" />
          <node concept="8X2XB" id="3OPtF03oA1a" role="1tU5fm">
            <node concept="3uibUv" id="3OPtF03oA1b" role="8Xvag">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3OPtF03oA1c" role="3clF45" />
        <node concept="3Tm6S6" id="3OPtF03oA1d" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03oA1e" role="3clF47">
          <node concept="3clFbF" id="3OPtF03oA1f" role="3cqZAp">
            <node concept="37vLTI" id="3OPtF03oA1g" role="3clFbG">
              <node concept="2OqwBi" id="3OPtF03oA1h" role="37vLTJ">
                <node concept="Xjq3P" id="3OPtF03oA1i" role="2Oq$k0" />
                <node concept="2OwXpG" id="3OPtF03oA1j" role="2OqNvi">
                  <ref role="2Oxat5" node="3OPtF03oA4e" resolve="symbolPath" />
                </node>
              </node>
              <node concept="2ShNRf" id="3OPtF03oA1k" role="37vLTx">
                <node concept="1pGfFk" id="3OPtF03oA1l" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;(java.util.Collection)" resolve="LinkedList" />
                  <node concept="2YIFZM" id="3OPtF03oA1m" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <node concept="37vLTw" id="3OPtF03oA1n" role="37wK5m">
                      <ref role="3cqZAo" node="3OPtF03oA19" resolve="symbolPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA1o" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03oA1p" role="jymVt">
        <property role="TrG5h" value="found" />
        <node concept="10P_77" id="3OPtF03oA1q" role="3clF45" />
        <node concept="3Tm1VV" id="3OPtF03oA1r" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03oA1s" role="3clF47">
          <node concept="3clFbF" id="3OPtF03oA1t" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF03oA1u" role="3clFbG">
              <node concept="Xjq3P" id="3OPtF03oA1v" role="2Oq$k0" />
              <node concept="2OwXpG" id="3OPtF03oA1w" role="2OqNvi">
                <ref role="2Oxat5" node="3OPtF03oA44" resolve="success" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03oA1x" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA1y" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03oA1z" role="jymVt">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3OPtF03oA1$" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3OPtF03oA1_" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03oA1A" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03oA1C" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03oA1D" role="3clF47">
          <node concept="3clFbF" id="3OPtF03oA1E" role="3cqZAp">
            <node concept="37vLTw" id="3OPtF03oA1F" role="3clFbG">
              <ref role="3cqZAo" node="3OPtF03oA48" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03oA1G" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4PqQGP" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4PqSBH" role="jymVt">
        <property role="TrG5h" value="visitAbstract" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="6YPNC4PqSBV" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4PqSBJ" role="1B3o_S" />
        <node concept="37vLTG" id="6YPNC4PqSBN" role="3clF46">
          <property role="TrG5h" value="treeForm" />
          <node concept="3uibUv" id="6YPNC4PqSBO" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="6YPNC4PqSBW" role="3clF47">
          <node concept="3clFbF" id="6YPNC4PpvTN" role="3cqZAp">
            <node concept="Rm8GO" id="6YPNC4Ppx4P" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4PqSBX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03oA1H" role="jymVt" />
      <node concept="3clFb_" id="428_4iYQRxm" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitNode" />
        <node concept="37vLTG" id="428_4iYQRxn" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="428_4iYQRxo" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
          </node>
        </node>
        <node concept="3uibUv" id="428_4iYQRxp" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="428_4iYQRxq" role="1B3o_S" />
        <node concept="2AHcQZ" id="428_4iYQRxr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="428_4iYQRxs" role="3clF47">
          <node concept="3clFbJ" id="428_4iYQRxt" role="3cqZAp">
            <node concept="3clFbS" id="428_4iYQRxu" role="3clFbx">
              <node concept="3clFbF" id="428_4iYQRxv" role="3cqZAp">
                <node concept="2OqwBi" id="428_4iYQRxw" role="3clFbG">
                  <node concept="37vLTw" id="428_4iYQRxx" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="428_4iYQRxy" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="428_4iYQRxz" role="3cqZAp">
                <node concept="Rm8GO" id="428_4iYQRx$" role="3cqZAk">
                  <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                </node>
              </node>
              <node concept="3clFbH" id="428_4iYQRx_" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="428_4iYQRxA" role="3clFbw">
              <node concept="1rXfSq" id="428_4iYQRxB" role="3uHU7w">
                <ref role="37wK5l" node="428_4iYRQ9E" resolve="matches" />
                <node concept="2OqwBi" id="428_4iYQRxC" role="37wK5m">
                  <node concept="37vLTw" id="428_4iYQRxD" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="428_4iYQRxE" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="37vLTw" id="428_4iYQRxF" role="37wK5m">
                  <ref role="3cqZAo" node="428_4iYQRxn" resolve="node" />
                </node>
              </node>
              <node concept="3eOSWO" id="428_4iYQRxG" role="3uHU7B">
                <node concept="3cmrfG" id="428_4iYQRxH" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="428_4iYQRxI" role="3uHU7B">
                  <node concept="37vLTw" id="428_4iYQRxJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="428_4iYQRxK" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="428_4iYQRxL" role="3eNLev">
              <node concept="3clFbS" id="428_4iYQRxM" role="3eOfB_">
                <node concept="3cpWs6" id="428_4iYQRxN" role="3cqZAp">
                  <node concept="Rm8GO" id="428_4iYQRxO" role="3cqZAk">
                    <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                    <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                  </node>
                </node>
                <node concept="3clFbH" id="428_4iYQRxP" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="428_4iYQRxQ" role="3eO9$A">
                <node concept="3cmrfG" id="428_4iYQRxR" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="428_4iYQRxS" role="3uHU7B">
                  <node concept="37vLTw" id="428_4iYQRxT" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="428_4iYQRxU" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="428_4iYQRxV" role="9aQIa">
              <node concept="3clFbS" id="428_4iYQRxW" role="9aQI4">
                <node concept="3cpWs6" id="428_4iYQRxX" role="3cqZAp">
                  <node concept="Rm8GO" id="428_4iYQRxY" role="3cqZAk">
                    <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                    <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4PoJrI" role="jymVt" />
      <node concept="3clFb_" id="428_4iYRiAI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitListRole" />
        <node concept="37vLTG" id="428_4iYRiAJ" role="3clF46">
          <property role="TrG5h" value="listRole" />
          <node concept="3uibUv" id="428_4iYRiAK" role="1tU5fm">
            <ref role="3uigEE" node="6YPNC4OECgm" resolve="ListRole" />
          </node>
        </node>
        <node concept="3uibUv" id="428_4iYRiAY" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="428_4iYRiAM" role="1B3o_S" />
        <node concept="2AHcQZ" id="428_4iYRiAR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="428_4iYRiAZ" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03oA2K" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03oA2L" role="3clFbx">
              <node concept="3clFbF" id="3OPtF03oA2M" role="3cqZAp">
                <node concept="2OqwBi" id="3OPtF03oA2N" role="3clFbG">
                  <node concept="37vLTw" id="3OPtF03oA2O" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA2P" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3OPtF03oA2Q" role="3cqZAp">
                <node concept="Rm8GO" id="3OPtF03oA2R" role="3cqZAk">
                  <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                </node>
              </node>
              <node concept="3clFbH" id="5f6wxQ2Xs1m" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="3OPtF03oA2S" role="3clFbw">
              <node concept="17R0WA" id="3OPtF03oA2T" role="3uHU7w">
                <node concept="2OqwBi" id="3OPtF03oA2U" role="3uHU7w">
                  <node concept="37vLTw" id="3OPtF03oA2V" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3OPtF03oA2W" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="2YIFZM" id="6YPNC4NT1Kf" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="3OPtF03oA2X" role="37wK5m">
                    <node concept="37vLTw" id="428_4iYRywH" role="2Oq$k0">
                      <ref role="3cqZAo" node="428_4iYRiAJ" resolve="listRole" />
                    </node>
                    <node concept="liA8E" id="3OPtF03oA2Z" role="2OqNvi">
                      <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="428_4iYQHmm" role="3uHU7B">
                <node concept="2OqwBi" id="3OPtF03oA31" role="3uHU7B">
                  <node concept="37vLTw" id="3OPtF03oA32" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="428_4iYQG8m" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.size():int" resolve="size" />
                  </node>
                </node>
                <node concept="3cmrfG" id="428_4iYQJQ5" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="5f6wxQ2XpsP" role="3eNLev">
              <node concept="2OqwBi" id="5f6wxQ2Xvte" role="3eO9$A">
                <node concept="37vLTw" id="5f6wxQ2Xu_N" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
                </node>
                <node concept="liA8E" id="5f6wxQ2Xxft" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3clFbS" id="5f6wxQ2XpsR" role="3eOfB_">
                <node concept="3cpWs6" id="5f6wxQ2Xy7J" role="3cqZAp">
                  <node concept="Rm8GO" id="5f6wxQ2Xy7K" role="3cqZAk">
                    <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                    <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03oA34" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03oA35" role="3clFbG">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="428_4iYRkBA" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4PoRbE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitList" />
        <node concept="3uibUv" id="6YPNC4PoRbU" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4PoRbG" role="1B3o_S" />
        <node concept="37vLTG" id="6YPNC4PoRbH" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="6YPNC4PoRbI" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4PoRbN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6YPNC4PoRbV" role="3clF47">
          <node concept="3clFbJ" id="3OPtF03oA26" role="3cqZAp">
            <node concept="3clFbS" id="3OPtF03oA27" role="3clFbx">
              <node concept="3clFbF" id="3OPtF03oA28" role="3cqZAp">
                <node concept="37vLTI" id="3OPtF03oA29" role="3clFbG">
                  <node concept="2OqwBi" id="3OPtF03oA2a" role="37vLTJ">
                    <node concept="Xjq3P" id="3OPtF03oA2b" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3OPtF03oA2c" role="2OqNvi">
                      <ref role="2Oxat5" node="3OPtF03oA48" resolve="value" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5YIOneOTEwX" role="37vLTx">
                    <node concept="37vLTw" id="5YIOneOTEt3" role="2Oq$k0">
                      <ref role="3cqZAo" node="6YPNC4PoRbH" resolve="list" />
                    </node>
                    <node concept="liA8E" id="5YIOneOTEDU" role="2OqNvi">
                      <ref role="37wK5l" node="5YIOneOT0Zn" resolve="contents" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3OPtF03oA2e" role="3cqZAp">
                <node concept="37vLTI" id="3OPtF03oA2f" role="3clFbG">
                  <node concept="3clFbT" id="3OPtF03oA2g" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="3OPtF03oA2h" role="37vLTJ">
                    <node concept="Xjq3P" id="3OPtF03oA2i" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3OPtF03oA2j" role="2OqNvi">
                      <ref role="2Oxat5" node="3OPtF03oA44" resolve="success" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3OPtF03oA2k" role="3cqZAp">
                <node concept="Rm8GO" id="3OPtF03oA2l" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3t7_2FgAXUk" role="3clFbw">
              <node concept="37vLTw" id="3t7_2FgAXGO" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03oA4e" resolve="symbolPath" />
              </node>
              <node concept="liA8E" id="3t7_2FgAYw1" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03oA2t" role="3cqZAp">
            <node concept="Rm8GO" id="3OPtF03oA2u" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzG0$2q" role="jymVt" />
      <node concept="3clFb_" id="5s497Vr4a3a" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="5s497Vr4a3b" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr4a3c" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr4a3e" role="3clF47" />
        <node concept="2AHcQZ" id="5s497Vr4cDt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="428_4iYRSb9" role="jymVt" />
      <node concept="3clFb_" id="428_4iYRQ9E" role="jymVt">
        <property role="TrG5h" value="matches" />
        <node concept="37vLTG" id="428_4iYRQ9F" role="3clF46">
          <property role="TrG5h" value="symbol" />
          <node concept="3uibUv" id="428_4iYRQ9G" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="428_4iYRQ9H" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="3uibUv" id="428_4iYRQ9I" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="10P_77" id="428_4iYRQ9J" role="3clF45" />
        <node concept="3Tmbuc" id="428_4iYRQ9K" role="1B3o_S" />
        <node concept="3clFbS" id="428_4iYRQ9L" role="3clF47">
          <node concept="3clFbF" id="428_4iYRQ9M" role="3cqZAp">
            <node concept="17R0WA" id="428_4iYRQ9N" role="3clFbG">
              <node concept="37vLTw" id="428_4iYRQ9O" role="3uHU7B">
                <ref role="3cqZAo" node="428_4iYRQ9F" resolve="symbol" />
              </node>
              <node concept="2YIFZM" id="428_4iYRQ9P" role="3uHU7w">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <node concept="2OqwBi" id="428_4iYRQ9Q" role="37wK5m">
                  <node concept="37vLTw" id="428_4iYRQ9R" role="2Oq$k0">
                    <ref role="3cqZAo" node="428_4iYRQ9H" resolve="term" />
                  </node>
                  <node concept="liA8E" id="428_4iYRQ9S" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5s497Vr4fri" role="jymVt" />
      <node concept="312cEg" id="3OPtF03oA44" role="jymVt">
        <property role="TrG5h" value="success" />
        <node concept="3Tm6S6" id="3OPtF03oA45" role="1B3o_S" />
        <node concept="10P_77" id="3OPtF03oA46" role="1tU5fm" />
        <node concept="3clFbT" id="3OPtF03oA47" role="33vP2m">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="312cEg" id="3OPtF03oA48" role="jymVt">
        <property role="TrG5h" value="value" />
        <node concept="3Tm6S6" id="3OPtF03oA49" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03oA4a" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3OPtF03oA4b" role="11_B2D">
            <node concept="3uibUv" id="3OPtF03oA4c" role="3qUE_r">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3OPtF03oA4e" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="symbolPath" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="3OPtF03oA4f" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03oA4g" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
          <node concept="3uibUv" id="3OPtF03oA4h" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="428_4iYuu62" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03oGCx" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
      </node>
      <node concept="3uibUv" id="3OPtF03oA4k" role="EKbjA">
        <ref role="3uigEE" node="3OPtF03nYWl" resolve="Finders.IListFinder" />
      </node>
      <node concept="3uibUv" id="3t7_2FgCYaL" role="1zkMxy">
        <ref role="3uigEE" node="2ev$9JFHDMZ" resolve="TreeFormWalk.IdleWalker" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03pMbF" role="jymVt" />
    <node concept="312cEu" id="3JgCwkqd8v8" role="jymVt">
      <property role="TrG5h" value="ValueFinder" />
      <node concept="2tJIrI" id="3JgCwkqd8v$" role="jymVt" />
      <node concept="3clFbW" id="3JgCwkqd8v_" role="jymVt">
        <node concept="37vLTG" id="3JgCwkqd8vA" role="3clF46">
          <property role="TrG5h" value="symbolPath" />
          <node concept="8X2XB" id="3JgCwkqd8vB" role="1tU5fm">
            <node concept="3uibUv" id="3JgCwkqd8vC" role="8Xvag">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3JgCwkqd8vD" role="3clF45" />
        <node concept="3Tm6S6" id="3JgCwkqd8vE" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqd8vF" role="3clF47">
          <node concept="3clFbF" id="3JgCwkqd8vG" role="3cqZAp">
            <node concept="37vLTI" id="3JgCwkqd8vH" role="3clFbG">
              <node concept="2OqwBi" id="3JgCwkqd8vI" role="37vLTJ">
                <node concept="Xjq3P" id="3JgCwkqd8vJ" role="2Oq$k0" />
                <node concept="2OwXpG" id="3JgCwkqd8vK" role="2OqNvi">
                  <ref role="2Oxat5" node="3JgCwkqd8xC" resolve="symbolPath" />
                </node>
              </node>
              <node concept="2ShNRf" id="3JgCwkqd8vL" role="37vLTx">
                <node concept="1pGfFk" id="3JgCwkqd8vM" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;(java.util.Collection)" resolve="LinkedList" />
                  <node concept="2YIFZM" id="3JgCwkqd8vN" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <node concept="37vLTw" id="3JgCwkqd8vO" role="37wK5m">
                      <ref role="3cqZAo" node="3JgCwkqd8vA" resolve="symbolPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3JgCwkqd8vP" role="jymVt" />
      <node concept="3clFb_" id="3JgCwkqd8vQ" role="jymVt">
        <property role="TrG5h" value="found" />
        <node concept="10P_77" id="3JgCwkqd8vR" role="3clF45" />
        <node concept="3Tm1VV" id="3JgCwkqd8vS" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqd8vT" role="3clF47">
          <node concept="3clFbF" id="3JgCwkqd8vU" role="3cqZAp">
            <node concept="2OqwBi" id="3JgCwkqd8vV" role="3clFbG">
              <node concept="Xjq3P" id="3JgCwkqd8vW" role="2Oq$k0" />
              <node concept="2OwXpG" id="3JgCwkqd8vX" role="2OqNvi">
                <ref role="2Oxat5" node="3JgCwkqd8xx" resolve="success" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3JgCwkqdusE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3JgCwkqd8vY" role="jymVt" />
      <node concept="3clFb_" id="3JgCwkqd8vZ" role="jymVt">
        <property role="TrG5h" value="result" />
        <node concept="16syzq" id="3JgCwkqzqmh" role="3clF45">
          <ref role="16sUi3" node="3JgCwkqzhSz" resolve="V" />
        </node>
        <node concept="3Tm1VV" id="3JgCwkqd8w1" role="1B3o_S" />
        <node concept="3clFbS" id="3JgCwkqd8w2" role="3clF47">
          <node concept="3clFbF" id="3JgCwkqd8w3" role="3cqZAp">
            <node concept="10QFUN" id="3JgCwkqzvLS" role="3clFbG">
              <node concept="37vLTw" id="3JgCwkqzvLR" role="10QFUP">
                <ref role="3cqZAo" node="3JgCwkqd8x_" resolve="result" />
              </node>
              <node concept="16syzq" id="3JgCwkqzvTL" role="10QFUM">
                <ref role="16sUi3" node="3JgCwkqzhSz" resolve="V" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3JgCwkqdvPs" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4PnJwp" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4Pr5Z9" role="jymVt">
        <property role="TrG5h" value="visitAbstract" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="6YPNC4Pr5Zh" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4Pr5Zb" role="1B3o_S" />
        <node concept="37vLTG" id="6YPNC4Pr5Zf" role="3clF46">
          <property role="TrG5h" value="treeForm" />
          <node concept="3uibUv" id="6YPNC4Pr5Zg" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="6YPNC4Pr5Zi" role="3clF47">
          <node concept="3clFbF" id="6YPNC4PnOHh" role="3cqZAp">
            <node concept="Rm8GO" id="6YPNC4PnPWP" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4Pr5Zj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4PrfeE" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4PmpBl" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitNode" />
        <node concept="37vLTG" id="6YPNC4PmpBm" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="6YPNC4PmpBn" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
          </node>
        </node>
        <node concept="3uibUv" id="6YPNC4PmpBu" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4PmpBp" role="1B3o_S" />
        <node concept="2AHcQZ" id="6YPNC4PmpBt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6YPNC4PmpBv" role="3clF47">
          <node concept="3clFbJ" id="3JgCwkqd8wg" role="3cqZAp">
            <node concept="3clFbS" id="3JgCwkqd8wh" role="3clFbx">
              <node concept="3clFbF" id="3JgCwkqd8wi" role="3cqZAp">
                <node concept="2OqwBi" id="3JgCwkqd8wj" role="3clFbG">
                  <node concept="37vLTw" id="3JgCwkqd8wk" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqd8wl" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3JgCwkqd8wm" role="3cqZAp">
                <node concept="Rm8GO" id="3JgCwkqd8wn" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                </node>
              </node>
              <node concept="3clFbH" id="428_4iYvqln" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="29_L5zQRShK" role="3clFbw">
              <node concept="1rXfSq" id="29_L5zQRTFM" role="3uHU7w">
                <ref role="37wK5l" node="29_L5zQRt2h" resolve="matches" />
                <node concept="2OqwBi" id="29_L5zQRZ9$" role="37wK5m">
                  <node concept="37vLTw" id="29_L5zQRXIj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="29_L5zQS0Wo" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                  </node>
                </node>
                <node concept="37vLTw" id="29_L5zQRV2b" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4PmpBm" resolve="node" />
                </node>
              </node>
              <node concept="3eOSWO" id="428_4iYvhuU" role="3uHU7B">
                <node concept="3cmrfG" id="428_4iYvhxr" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="428_4iYvf5l" role="3uHU7B">
                  <node concept="37vLTw" id="3JgCwkqd8ww" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="428_4iYvgfG" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="428_4iYvnoy" role="3eNLev">
              <node concept="3clFbS" id="428_4iYvno$" role="3eOfB_">
                <node concept="3cpWs6" id="428_4iYvxf0" role="3cqZAp">
                  <node concept="Rm8GO" id="428_4iYvxf1" role="3cqZAk">
                    <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                    <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
                  </node>
                </node>
                <node concept="3clFbH" id="428_4iYvJxH" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="428_4iYvuqw" role="3eO9$A">
                <node concept="3cmrfG" id="428_4iYvx0q" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="428_4iYvsNG" role="3uHU7B">
                  <node concept="37vLTw" id="428_4iYvsNH" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                  </node>
                  <node concept="liA8E" id="428_4iYvsNI" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~LinkedList.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="428_4iYvBQP" role="9aQIa">
              <node concept="3clFbS" id="428_4iYvBQQ" role="9aQI4">
                <node concept="3cpWs6" id="428_4iYvEwi" role="3cqZAp">
                  <node concept="Rm8GO" id="428_4iYvEwj" role="3cqZAk">
                    <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                    <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4OGVj0" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4PmIGQ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitList" />
        <node concept="3uibUv" id="6YPNC4PmIH0" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4PmIGS" role="1B3o_S" />
        <node concept="37vLTG" id="6YPNC4PmIGT" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="6YPNC4PmIGU" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4PmIGZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6YPNC4PmIH1" role="3clF47">
          <node concept="3clFbF" id="6YPNC4PmMbC" role="3cqZAp">
            <node concept="Rm8GO" id="6YPNC4PmMbD" role="3clFbG">
              <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4PmTJv" role="jymVt" />
      <node concept="3clFb_" id="5NAQwIkEgPy" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitValueRole" />
        <node concept="37vLTG" id="5NAQwIkEgPz" role="3clF46">
          <property role="TrG5h" value="valueRole" />
          <node concept="3uibUv" id="5NAQwIkEgP$" role="1tU5fm">
            <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
            <node concept="16syzq" id="5NAQwIkEgP_" role="11_B2D">
              <ref role="16sUi3" node="5NAQwIkEgPC" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5NAQwIkEgPI" role="3clF45">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
        <node concept="3Tm1VV" id="5NAQwIkEgPB" role="1B3o_S" />
        <node concept="16euLQ" id="5NAQwIkEgPC" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="2AHcQZ" id="5NAQwIkEgPH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="5NAQwIkEgPJ" role="3clF47">
          <node concept="3clFbJ" id="3JgCwkqd8wK" role="3cqZAp">
            <node concept="3clFbS" id="3JgCwkqd8wL" role="3clFbx">
              <node concept="3cpWs6" id="3JgCwkqd8wM" role="3cqZAp">
                <node concept="Rm8GO" id="3JgCwkqd8wN" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="3JgCwkqd8wO" role="3clFbw">
              <node concept="3cmrfG" id="3JgCwkqd8wP" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3JgCwkqd8wQ" role="3uHU7B">
                <node concept="37vLTw" id="3JgCwkqd8wR" role="2Oq$k0">
                  <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                </node>
                <node concept="liA8E" id="3JgCwkqd8wS" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~LinkedList.size():int" resolve="size" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3JgCwkqd8wT" role="3cqZAp">
            <node concept="3clFbS" id="3JgCwkqd8wU" role="3clFbx">
              <node concept="3clFbF" id="3JgCwkqd8wV" role="3cqZAp">
                <node concept="37vLTI" id="3JgCwkqd8wW" role="3clFbG">
                  <node concept="2OqwBi" id="3JgCwkqd8wX" role="37vLTJ">
                    <node concept="Xjq3P" id="3JgCwkqd8wY" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3JgCwkqd8wZ" role="2OqNvi">
                      <ref role="2Oxat5" node="3JgCwkqd8x_" resolve="result" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5NAQwIkF18X" role="37vLTx">
                    <node concept="2OqwBi" id="5NAQwIkF18Y" role="2Oq$k0">
                      <node concept="2OqwBi" id="5NAQwIkF18Z" role="2Oq$k0">
                        <node concept="37vLTw" id="5NAQwIkF1Tc" role="2Oq$k0">
                          <ref role="3cqZAo" node="5NAQwIkEgPz" resolve="valueRole" />
                        </node>
                        <node concept="liA8E" id="5NAQwIkF191" role="2OqNvi">
                          <ref role="37wK5l" node="5YIOneOMEJi" resolve="values" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5NAQwIkF192" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5NAQwIkF193" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3JgCwkqd8x3" role="3cqZAp">
                <node concept="37vLTI" id="3JgCwkqd8x4" role="3clFbG">
                  <node concept="3clFbT" id="3JgCwkqd8x5" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="2OqwBi" id="3JgCwkqd8x6" role="37vLTJ">
                    <node concept="Xjq3P" id="3JgCwkqd8x7" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3JgCwkqd8x8" role="2OqNvi">
                      <ref role="2Oxat5" node="3JgCwkqd8xx" resolve="success" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3JgCwkqd8x9" role="3cqZAp">
                <node concept="Rm8GO" id="3JgCwkqd8xa" role="3cqZAk">
                  <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
                  <ref role="Rm8GQ" node="2q_78a95hAO" resolve="STOP" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="29_L5zQS6_4" role="3clFbw">
              <ref role="37wK5l" node="29_L5zQRt2h" resolve="matches" />
              <node concept="2OqwBi" id="29_L5zQS9nB" role="37wK5m">
                <node concept="37vLTw" id="29_L5zQS7Wv" role="2Oq$k0">
                  <ref role="3cqZAo" node="3JgCwkqd8xC" resolve="symbolPath" />
                </node>
                <node concept="liA8E" id="29_L5zQSban" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~LinkedList.peek():java.lang.Object" resolve="peek" />
                </node>
              </node>
              <node concept="37vLTw" id="29_L5zQSdUA" role="37wK5m">
                <ref role="3cqZAo" node="5NAQwIkEgPz" resolve="valueRole" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JgCwkqd8xg" role="3cqZAp">
            <node concept="Rm8GO" id="3JgCwkqd8xh" role="3clFbG">
              <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
              <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4Pnpme" role="jymVt" />
      <node concept="2tJIrI" id="104EUzG3cxs" role="jymVt" />
      <node concept="3clFb_" id="5s497Vr4nBh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="endWalk" />
        <node concept="3cqZAl" id="5s497Vr4nBi" role="3clF45" />
        <node concept="3Tm1VV" id="5s497Vr4nBj" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr4nBl" role="3clF47" />
        <node concept="2AHcQZ" id="5s497Vr4pKl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="29_L5zQRrCF" role="jymVt" />
      <node concept="3clFb_" id="29_L5zQRt2h" role="jymVt">
        <property role="TrG5h" value="matches" />
        <node concept="37vLTG" id="29_L5zQRAq8" role="3clF46">
          <property role="TrG5h" value="symbol" />
          <node concept="3uibUv" id="29_L5zQRBL2" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="29_L5zQRDDl" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="3uibUv" id="29_L5zQRF03" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="10P_77" id="29_L5zQRx35" role="3clF45" />
        <node concept="3Tmbuc" id="29_L5zQRvJx" role="1B3o_S" />
        <node concept="3clFbS" id="29_L5zQRt2l" role="3clF47">
          <node concept="3clFbF" id="29_L5zQRHFx" role="3cqZAp">
            <node concept="17R0WA" id="29_L5zQRIZM" role="3clFbG">
              <node concept="37vLTw" id="29_L5zQRHFw" role="3uHU7B">
                <ref role="3cqZAo" node="29_L5zQRAq8" resolve="symbol" />
              </node>
              <node concept="2YIFZM" id="6YPNC4NT2Nl" role="3uHU7w">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="2OqwBi" id="29_L5zQROic" role="37wK5m">
                  <node concept="37vLTw" id="29_L5zQRMWS" role="2Oq$k0">
                    <ref role="3cqZAo" node="29_L5zQRDDl" resolve="term" />
                  </node>
                  <node concept="liA8E" id="29_L5zQRPCe" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5s497Vr4oHY" role="jymVt" />
      <node concept="312cEg" id="3JgCwkqd8xx" role="jymVt">
        <property role="TrG5h" value="success" />
        <node concept="3Tm6S6" id="3JgCwkqd8xy" role="1B3o_S" />
        <node concept="10P_77" id="3JgCwkqd8xz" role="1tU5fm" />
        <node concept="3clFbT" id="3JgCwkqd8x$" role="33vP2m">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="312cEg" id="3JgCwkqd8x_" role="jymVt">
        <property role="TrG5h" value="result" />
        <node concept="3Tm6S6" id="3JgCwkqd8xA" role="1B3o_S" />
        <node concept="3uibUv" id="3JgCwkqd8xB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="312cEg" id="3JgCwkqd8xC" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="symbolPath" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="3JgCwkqd8xD" role="1B3o_S" />
        <node concept="3uibUv" id="3JgCwkqd8xE" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
          <node concept="3uibUv" id="3JgCwkqd8xF" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03pQuW" role="1B3o_S" />
      <node concept="3uibUv" id="3JgCwkqk8Dw" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
      </node>
      <node concept="3uibUv" id="3JgCwkqkWe0" role="EKbjA">
        <ref role="3uigEE" node="3JgCwkqkUKX" resolve="Finders.IValueFinder" />
        <node concept="16syzq" id="3JgCwkqztBZ" role="11_B2D">
          <ref role="16sUi3" node="3JgCwkqzhSz" resolve="V" />
        </node>
      </node>
      <node concept="16euLQ" id="3JgCwkqzhSz" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="3uibUv" id="6YPNC4PgmFS" role="1zkMxy">
        <ref role="3uigEE" node="6HT7BWBQcxv" resolve="TreeForm.Visitor.Stub" />
        <node concept="3uibUv" id="6YPNC4Pgrwv" role="11_B2D">
          <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3JgCwkqd8nj" role="jymVt" />
    <node concept="312cEu" id="29_L5zQSxSb" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="PatternValueFinder" />
      <node concept="2tJIrI" id="29_L5zQSKJi" role="jymVt" />
      <node concept="3clFbW" id="29_L5zQTzT0" role="jymVt">
        <node concept="3cqZAl" id="29_L5zQTzT2" role="3clF45" />
        <node concept="3Tm1VV" id="29_L5zQTzT3" role="1B3o_S" />
        <node concept="3clFbS" id="29_L5zQTzT4" role="3clF47">
          <node concept="XkiVB" id="29_L5zQTIOI" role="3cqZAp">
            <ref role="37wK5l" node="3JgCwkqd8v_" resolve="Finders.ValueFinder" />
            <node concept="37vLTw" id="29_L5zQTKbF" role="37wK5m">
              <ref role="3cqZAo" node="29_L5zQT_gl" resolve="path" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="29_L5zQT_gl" role="3clF46">
          <property role="TrG5h" value="path" />
          <node concept="8X2XB" id="29_L5zQTAE4" role="1tU5fm">
            <node concept="3uibUv" id="29_L5zQT_gk" role="8Xvag">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="29_L5zQTyxK" role="jymVt" />
      <node concept="3clFb_" id="29_L5zQSM3L" role="jymVt">
        <property role="TrG5h" value="matches" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="29_L5zQSM3M" role="3clF46">
          <property role="TrG5h" value="symbol" />
          <node concept="3uibUv" id="29_L5zQSM3N" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="29_L5zQSM3O" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="3uibUv" id="29_L5zQSM3P" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="10P_77" id="29_L5zQSM3Q" role="3clF45" />
        <node concept="3Tmbuc" id="29_L5zQSM3R" role="1B3o_S" />
        <node concept="3clFbS" id="29_L5zQSM3Z" role="3clF47">
          <node concept="3clFbJ" id="29_L5zQSOMp" role="3cqZAp">
            <node concept="3clFbS" id="29_L5zQSOMr" role="3clFbx">
              <node concept="3cpWs6" id="29_L5zQSZwL" role="3cqZAp">
                <node concept="2OqwBi" id="29_L5zQTvLF" role="3cqZAk">
                  <node concept="2OqwBi" id="29_L5zQTbyt" role="2Oq$k0">
                    <node concept="1eOMI4" id="29_L5zQTacZ" role="2Oq$k0">
                      <node concept="10QFUN" id="29_L5zQTacW" role="1eOMHV">
                        <node concept="3uibUv" id="29_L5zQTad1" role="10QFUM">
                          <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
                        </node>
                        <node concept="37vLTw" id="29_L5zQTad2" role="10QFUP">
                          <ref role="3cqZAo" node="29_L5zQSM3M" resolve="symbol" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="29_L5zQTkVA" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence):java.util.regex.Matcher" resolve="matcher" />
                      <node concept="2YIFZM" id="29_L5zQTt4_" role="37wK5m">
                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="2OqwBi" id="29_L5zQTnC7" role="37wK5m">
                          <node concept="37vLTw" id="29_L5zQTmhy" role="2Oq$k0">
                            <ref role="3cqZAo" node="29_L5zQSM3O" resolve="term" />
                          </node>
                          <node concept="liA8E" id="29_L5zQToZJ" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="29_L5zQTxaL" role="2OqNvi">
                    <ref role="37wK5l" to="ni5j:~Matcher.matches():boolean" resolve="matches" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="29_L5zQT6d2" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="29_L5zQSU9h" role="3clFbw">
              <node concept="3uibUv" id="29_L5zQSVBl" role="2ZW6by">
                <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
              </node>
              <node concept="37vLTw" id="29_L5zQSSND" role="2ZW6bz">
                <ref role="3cqZAo" node="29_L5zQSM3M" resolve="symbol" />
              </node>
            </node>
            <node concept="9aQIb" id="29_L5zQSYbu" role="9aQIa">
              <node concept="3clFbS" id="29_L5zQSYbv" role="9aQI4">
                <node concept="3cpWs6" id="29_L5zQT0Qh" role="3cqZAp">
                  <node concept="3nyPlj" id="29_L5zQSM43" role="3cqZAk">
                    <ref role="37wK5l" node="29_L5zQRt2h" resolve="matches" />
                    <node concept="37vLTw" id="29_L5zQSM41" role="37wK5m">
                      <ref role="3cqZAo" node="29_L5zQSM3M" resolve="symbol" />
                    </node>
                    <node concept="37vLTw" id="29_L5zQSM42" role="37wK5m">
                      <ref role="3cqZAo" node="29_L5zQSM3O" resolve="term" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="29_L5zQSM40" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="428_4iYutD6" role="1B3o_S" />
      <node concept="3uibUv" id="29_L5zQSJo4" role="1zkMxy">
        <ref role="3uigEE" node="3JgCwkqd8v8" resolve="Finders.ValueFinder" />
        <node concept="16syzq" id="29_L5zQTVMS" role="11_B2D">
          <ref role="16sUi3" node="29_L5zQTT2V" resolve="V" />
        </node>
      </node>
      <node concept="16euLQ" id="29_L5zQTT2V" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
    </node>
    <node concept="2tJIrI" id="29_L5zQSwpG" role="jymVt" />
    <node concept="3Tm1VV" id="3JgCwkqd3K8" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3OPtF03lco4">
    <property role="TrG5h" value="ListNode" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="3OPtF03lc_Z" role="1zkMxy">
      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
    </node>
    <node concept="2tJIrI" id="3OPtF03lcol" role="jymVt" />
    <node concept="2YIFZL" id="1OShD0HS45f" role="jymVt">
      <property role="TrG5h" value="createList" />
      <node concept="37vLTG" id="1OShD0HSc64" role="3clF46">
        <property role="TrG5h" value="elements" />
        <node concept="8X2XB" id="1OShD0HSHQT" role="1tU5fm">
          <node concept="3uibUv" id="1OShD0HSc66" role="8Xvag">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1OShD0HS7CO" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
      <node concept="3Tm1VV" id="1OShD0HS45i" role="1B3o_S" />
      <node concept="3clFbS" id="1OShD0HS45j" role="3clF47">
        <node concept="3clFbF" id="1OShD0HSd7a" role="3cqZAp">
          <node concept="1rXfSq" id="1OShD0HSXZ3" role="3clFbG">
            <ref role="37wK5l" node="3OPtF03lcoL" resolve="createList" />
            <node concept="37vLTw" id="1OShD0HSXZ4" role="37wK5m">
              <ref role="3cqZAo" node="1OShD0HSc64" resolve="elements" />
            </node>
            <node concept="3cmrfG" id="1OShD0HSXZ5" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcoK" role="jymVt" />
    <node concept="2YIFZL" id="1OShD0HGZnt" role="jymVt">
      <property role="TrG5h" value="createCons" />
      <node concept="37vLTG" id="1OShD0HH7Kl" role="3clF46">
        <property role="TrG5h" value="head" />
        <node concept="3uibUv" id="3H0z$hTtGFH" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="1OShD0HH8we" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="3uibUv" id="1OShD0HH909" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3t7_2Fg$$N9" role="1B3o_S" />
      <node concept="3clFbS" id="1OShD0HGZnx" role="3clF47">
        <node concept="3cpWs8" id="1OShD0HHaVP" role="3cqZAp">
          <node concept="3cpWsn" id="1OShD0HHaVQ" role="3cpWs9">
            <property role="TrG5h" value="cons" />
            <node concept="3uibUv" id="1OShD0HHaVR" role="1tU5fm">
              <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListNode.Cons" />
            </node>
            <node concept="2ShNRf" id="1OShD0HHaVT" role="33vP2m">
              <node concept="1pGfFk" id="1OShD0HHaVU" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lcvJ" resolve="ListNode.Cons" />
                <node concept="37vLTw" id="1OShD0HHaVV" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0HH7Kl" resolve="head" />
                </node>
                <node concept="37vLTw" id="1OShD0HHaVW" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0HH8we" resolve="tail" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1OShD0HHaVY" role="3cqZAp">
          <node concept="2OqwBi" id="1OShD0HHaVZ" role="3clFbG">
            <node concept="37vLTw" id="1OShD0HHaW0" role="2Oq$k0">
              <ref role="3cqZAo" node="1OShD0HH7Kl" resolve="head" />
            </node>
            <node concept="liA8E" id="1OShD0HHaW1" role="2OqNvi">
              <ref role="37wK5l" node="dfChU1lFHl" resolve="attached" />
              <node concept="37vLTw" id="1OShD0HHaW2" role="37wK5m">
                <ref role="3cqZAo" node="1OShD0HHaVQ" resolve="cons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1OShD0HHaW3" role="3cqZAp">
          <node concept="2OqwBi" id="1OShD0HHaW4" role="3clFbG">
            <node concept="37vLTw" id="1OShD0HHaW5" role="2Oq$k0">
              <ref role="3cqZAo" node="1OShD0HH8we" resolve="tail" />
            </node>
            <node concept="liA8E" id="1OShD0HHaW6" role="2OqNvi">
              <ref role="37wK5l" node="dfChU1lNtX" resolve="attached" />
              <node concept="37vLTw" id="1OShD0HHaW7" role="37wK5m">
                <ref role="3cqZAo" node="1OShD0HHaVQ" resolve="cons" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1OShD0HHaW8" role="3cqZAp" />
        <node concept="3cpWs6" id="1OShD0HHaW9" role="3cqZAp">
          <node concept="37vLTw" id="1OShD0HHaWa" role="3cqZAk">
            <ref role="3cqZAo" node="1OShD0HHaVQ" resolve="cons" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1OShD0HH3oG" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListNode.Cons" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OShD0I3zFc" role="jymVt" />
    <node concept="2YIFZL" id="1OShD0I3vRu" role="jymVt">
      <property role="TrG5h" value="createAlias" />
      <node concept="37vLTG" id="1OShD0I3vRv" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3uibUv" id="3H0z$hTtKhC" role="1tU5fm">
          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3t7_2Fg$_jE" role="1B3o_S" />
      <node concept="3clFbS" id="1OShD0I3vRA" role="3clF47">
        <node concept="3cpWs8" id="1OShD0I3vRB" role="3cqZAp">
          <node concept="3cpWsn" id="1OShD0I3vRC" role="3cpWs9">
            <property role="TrG5h" value="alias" />
            <node concept="3uibUv" id="1OShD0I3JjP" role="1tU5fm">
              <ref role="3uigEE" node="1OShD0I20qU" resolve="ListNode.Alias" />
            </node>
            <node concept="2ShNRf" id="1OShD0I3vRF" role="33vP2m">
              <node concept="1pGfFk" id="1OShD0I3vRG" role="2ShVmc">
                <ref role="37wK5l" node="1OShD0I20qW" resolve="ListNode.Alias" />
                <node concept="37vLTw" id="1OShD0I3vRH" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0I3vRv" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1OShD0I3vRK" role="3cqZAp">
          <node concept="2OqwBi" id="1OShD0I3vRL" role="3clFbG">
            <node concept="37vLTw" id="1OShD0I3vRM" role="2Oq$k0">
              <ref role="3cqZAo" node="1OShD0I3vRv" resolve="var" />
            </node>
            <node concept="liA8E" id="1OShD0I3vRN" role="2OqNvi">
              <ref role="37wK5l" node="dfChU1m0qM" resolve="attached" />
              <node concept="37vLTw" id="1OShD0I3vRO" role="37wK5m">
                <ref role="3cqZAo" node="1OShD0I3vRC" resolve="alias" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1OShD0I3vRU" role="3cqZAp" />
        <node concept="3cpWs6" id="1OShD0I3vRV" role="3cqZAp">
          <node concept="37vLTw" id="1OShD0I3vRW" role="3cqZAk">
            <ref role="3cqZAo" node="1OShD0I3vRC" resolve="alias" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1OShD0I40pS" role="3clF45">
        <ref role="3uigEE" node="1OShD0I20qU" resolve="ListNode.Alias" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OShD0HRYaK" role="jymVt" />
    <node concept="2YIFZL" id="3OPtF03lcoL" role="jymVt">
      <property role="TrG5h" value="createList" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="3OPtF03lcoO" role="3clF46">
        <property role="TrG5h" value="elements" />
        <node concept="10Q1$e" id="3OPtF03lcoP" role="1tU5fm">
          <node concept="3uibUv" id="3H0z$hTtP2m" role="10Q1$1">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcoR" role="3clF46">
        <property role="TrG5h" value="headIdx" />
        <node concept="10Oyi0" id="3OPtF03lcoS" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3OPtF03lcoT" role="3clF47">
        <node concept="3clFbJ" id="5cGCTtqwF$s" role="3cqZAp">
          <node concept="3clFbS" id="5cGCTtqwF$u" role="3clFbx">
            <node concept="3SKdUt" id="5cGCTtqwSKB" role="3cqZAp">
              <node concept="3SKdUq" id="5cGCTtqwSN9" role="3SKWNk">
                <property role="3SKdUp" value="special case: list is passed directly" />
              </node>
            </node>
            <node concept="3cpWs6" id="5cGCTtqwSTO" role="3cqZAp">
              <node concept="10QFUN" id="5cGCTtqwU3b" role="3cqZAk">
                <node concept="3uibUv" id="5cGCTtqwU38" role="10QFUM">
                  <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
                </node>
                <node concept="AH0OO" id="5cGCTtqwZBu" role="10QFUP">
                  <node concept="3cmrfG" id="5cGCTtqx046" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5cGCTtqwVt3" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5cGCTtqwPf4" role="3clFbw">
            <node concept="2ZW3vV" id="5cGCTtqwRCJ" role="3uHU7w">
              <node concept="3uibUv" id="5cGCTtqwRM6" role="2ZW6by">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
              </node>
              <node concept="AH0OO" id="5cGCTtqwQpn" role="2ZW6bz">
                <node concept="3cmrfG" id="5cGCTtqwQxI" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="5cGCTtqwPBw" role="AHHXb">
                  <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="5cGCTtqwKSF" role="3uHU7B">
              <node concept="3clFbC" id="5cGCTtqwJHu" role="3uHU7B">
                <node concept="37vLTw" id="5cGCTtqwIxE" role="3uHU7B">
                  <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                </node>
                <node concept="3cmrfG" id="5cGCTtqwKEf" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbC" id="5cGCTtqwOXM" role="3uHU7w">
                <node concept="2OqwBi" id="5cGCTtqwM1R" role="3uHU7B">
                  <node concept="37vLTw" id="5cGCTtqwLRj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                  </node>
                  <node concept="1Rwk04" id="5cGCTtqwNhE" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="5cGCTtqwOZw" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5cGCTtqwNhH" role="3cqZAp" />
        <node concept="3clFbJ" id="3OPtF03lcoU" role="3cqZAp">
          <node concept="3clFbS" id="3OPtF03lcoV" role="3clFbx">
            <node concept="3cpWs8" id="3OPtF03lcoW" role="3cqZAp">
              <node concept="3cpWsn" id="3OPtF03lcoX" role="3cpWs9">
                <property role="TrG5h" value="head" />
                <node concept="AH0OO" id="3OPtF03lcoZ" role="33vP2m">
                  <node concept="37vLTw" id="3OPtF03lcp0" role="AHEQo">
                    <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                  </node>
                  <node concept="37vLTw" id="3OPtF03lcp1" role="AHHXb">
                    <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                  </node>
                </node>
                <node concept="3uibUv" id="3H0z$hTtPPK" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1OShD0HG9s1" role="3cqZAp">
              <node concept="3cpWsn" id="1OShD0HG9s2" role="3cpWs9">
                <property role="TrG5h" value="tail" />
                <node concept="3uibUv" id="1OShD0HG9rK" role="1tU5fm">
                  <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
                </node>
                <node concept="2YIFZM" id="1OShD0HG9s3" role="33vP2m">
                  <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListNode" />
                  <ref role="37wK5l" node="3OPtF03lcoL" resolve="createList" />
                  <node concept="37vLTw" id="1OShD0HG9s5" role="37wK5m">
                    <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                  </node>
                  <node concept="2$rviw" id="1OShD0HG9s6" role="37wK5m">
                    <node concept="37vLTw" id="1OShD0HG9s7" role="2$L3a6">
                      <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1OShD0HHenx" role="3cqZAp">
              <node concept="1rXfSq" id="1OShD0HHH8v" role="3cqZAk">
                <ref role="37wK5l" node="1OShD0HGZnt" resolve="createCons" />
                <node concept="37vLTw" id="1OShD0HHIqU" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcoX" resolve="head" />
                </node>
                <node concept="37vLTw" id="1OShD0HHKku" role="37wK5m">
                  <ref role="3cqZAo" node="1OShD0HG9s2" resolve="tail" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3OPtF03lcpH" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="3OPtF03lcpI" role="3clFbw">
            <node concept="3cpWsd" id="1OShD0IbKki" role="3uHU7w">
              <node concept="3cmrfG" id="1OShD0IbKlN" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3OPtF03lcpJ" role="3uHU7B">
                <node concept="37vLTw" id="3OPtF03lcpK" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                </node>
                <node concept="1Rwk04" id="3OPtF03lcpL" role="2OqNvi" />
              </node>
            </node>
            <node concept="37vLTw" id="3OPtF03lcpM" role="3uHU7B">
              <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
            </node>
          </node>
          <node concept="9aQIb" id="3OPtF03lcpN" role="9aQIa">
            <node concept="3clFbS" id="3OPtF03lcpO" role="9aQI4">
              <node concept="3cpWs8" id="3OPtF03lcpP" role="3cqZAp">
                <node concept="3cpWsn" id="3OPtF03lcpQ" role="3cpWs9">
                  <property role="TrG5h" value="nil" />
                  <node concept="3uibUv" id="3OPtF03lcpR" role="1tU5fm">
                    <ref role="3uigEE" node="3OPtF03lcyJ" resolve="ListNode.Nil" />
                  </node>
                  <node concept="2ShNRf" id="3OPtF03lcpT" role="33vP2m">
                    <node concept="1pGfFk" id="3OPtF03lcpU" role="2ShVmc">
                      <ref role="37wK5l" node="3OPtF03lcyL" resolve="ListNode.Nil" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3OPtF03lcq3" role="3cqZAp">
                <node concept="37vLTw" id="3OPtF03lcq4" role="3cqZAk">
                  <ref role="3cqZAo" node="3OPtF03lcpQ" resolve="nil" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1OShD0IbNgJ" role="3eNLev">
            <node concept="3clFbS" id="1OShD0IbNgL" role="3eOfB_">
              <node concept="3cpWs8" id="1OShD0IbQqD" role="3cqZAp">
                <node concept="3cpWsn" id="1OShD0IbQqE" role="3cpWs9">
                  <property role="TrG5h" value="last" />
                  <node concept="AH0OO" id="1OShD0IbQqF" role="33vP2m">
                    <node concept="37vLTw" id="1OShD0IbQqG" role="AHEQo">
                      <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                    </node>
                    <node concept="37vLTw" id="1OShD0IbQqH" role="AHHXb">
                      <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3H0z$hTtR1m" role="1tU5fm">
                    <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6SZa6nhOdO_" role="3cqZAp" />
              <node concept="3clFbJ" id="1OShD0IbW7W" role="3cqZAp">
                <node concept="1Wc70l" id="2DKqMqOgYmO" role="3clFbw">
                  <node concept="2ZW3vV" id="1OShD0IbXxR" role="3uHU7B">
                    <node concept="3uibUv" id="2DKqMqOj1vw" role="2ZW6by">
                      <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                    </node>
                    <node concept="37vLTw" id="1OShD0IbXfa" role="2ZW6bz">
                      <ref role="3cqZAo" node="1OShD0IbQqE" resolve="last" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="6HT7BWBR0Gd" role="3uHU7w">
                    <ref role="37wK5l" node="6HT7BWBQYXM" resolve="isListVar" />
                    <node concept="1eOMI4" id="6HT7BWBQIt2" role="37wK5m">
                      <node concept="10QFUN" id="6HT7BWBQIsZ" role="1eOMHV">
                        <node concept="3uibUv" id="6HT7BWBQIun" role="10QFUM">
                          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                        </node>
                        <node concept="37vLTw" id="6HT7BWBQIzm" role="10QFUP">
                          <ref role="3cqZAo" node="1OShD0IbQqE" resolve="last" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1OShD0IbW7Y" role="3clFbx">
                  <node concept="3cpWs6" id="1OShD0IchsR" role="3cqZAp">
                    <node concept="1rXfSq" id="1OShD0Iehgu" role="3cqZAk">
                      <ref role="37wK5l" node="1OShD0I3vRu" resolve="createAlias" />
                      <node concept="10QFUN" id="1OShD0Iehgv" role="37wK5m">
                        <node concept="3uibUv" id="1OShD0Iehgw" role="10QFUM">
                          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                        </node>
                        <node concept="37vLTw" id="1OShD0Iehgx" role="10QFUP">
                          <ref role="3cqZAo" node="1OShD0IbQqE" resolve="last" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1OShD0Ic6Ap" role="3cqZAp" />
                </node>
                <node concept="9aQIb" id="1OShD0Ic2Cw" role="9aQIa">
                  <node concept="3clFbS" id="1OShD0Ic2Cx" role="9aQI4">
                    <node concept="3cpWs8" id="1OShD0IbQqJ" role="3cqZAp">
                      <node concept="3cpWsn" id="1OShD0IbQqK" role="3cpWs9">
                        <property role="TrG5h" value="tail" />
                        <node concept="3uibUv" id="1OShD0IbQqL" role="1tU5fm">
                          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
                        </node>
                        <node concept="2YIFZM" id="1OShD0IbQqN" role="33vP2m">
                          <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListNode" />
                          <ref role="37wK5l" node="3OPtF03lcoL" resolve="createList" />
                          <node concept="37vLTw" id="1OShD0IbQqO" role="37wK5m">
                            <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                          </node>
                          <node concept="2$rviw" id="1OShD0IbQqP" role="37wK5m">
                            <node concept="37vLTw" id="1OShD0IbQqQ" role="2$L3a6">
                              <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1OShD0IbQqS" role="3cqZAp">
                      <node concept="1rXfSq" id="1OShD0IbQqT" role="3cqZAk">
                        <ref role="37wK5l" node="1OShD0HGZnt" resolve="createCons" />
                        <node concept="37vLTw" id="1OShD0IbQqU" role="37wK5m">
                          <ref role="3cqZAo" node="1OShD0IbQqE" resolve="last" />
                        </node>
                        <node concept="37vLTw" id="1OShD0IbQqV" role="37wK5m">
                          <ref role="3cqZAo" node="1OShD0IbQqK" resolve="tail" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1OShD0IbRq3" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="1OShD0Iccl4" role="3eO9$A">
              <node concept="37vLTw" id="1OShD0IbOGr" role="3uHU7B">
                <ref role="3cqZAo" node="3OPtF03lcoR" resolve="headIdx" />
              </node>
              <node concept="3cpWsd" id="1OShD0Icelx" role="3uHU7w">
                <node concept="3cmrfG" id="1OShD0Icen2" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="1OShD0IbOGo" role="3uHU7B">
                  <node concept="37vLTw" id="1OShD0IbOGp" role="2Oq$k0">
                    <ref role="3cqZAo" node="3OPtF03lcoO" resolve="elements" />
                  </node>
                  <node concept="1Rwk04" id="1OShD0IbOGq" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3OPtF03lcq6" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03lcq7" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="6HT7BWBQJVg" role="jymVt" />
    <node concept="2YIFZL" id="6HT7BWBQYXM" role="jymVt">
      <property role="TrG5h" value="isListVar" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6HT7BWBQO3L" role="3clF47">
        <node concept="3clFbF" id="6HT7BWBQWaJ" role="3cqZAp">
          <node concept="22lmx$" id="6HT7BWBQWqO" role="3clFbG">
            <node concept="2OqwBi" id="6HT7BWBQWxp" role="3uHU7w">
              <node concept="37vLTw" id="6HT7BWBQWs0" role="2Oq$k0">
                <ref role="3cqZAo" node="6HT7BWBQUvN" resolve="variable" />
              </node>
              <node concept="liA8E" id="6HT7BWBQWBM" role="2OqNvi">
                <ref role="37wK5l" node="6Sag3Ksv6No" resolve="canRepresent" />
                <node concept="3VsKOn" id="6HT7BWBQXfZ" role="37wK5m">
                  <ref role="3VsUkX" node="3OPtF03lco4" resolve="ListNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6HT7BWBQWfN" role="3uHU7B">
              <node concept="37vLTw" id="6HT7BWBQWaI" role="2Oq$k0">
                <ref role="3cqZAo" node="6HT7BWBQUvN" resolve="variable" />
              </node>
              <node concept="liA8E" id="6HT7BWBQWlN" role="2OqNvi">
                <ref role="37wK5l" node="2DKqMqOiVjz" resolve="isWildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6HT7BWBQUvN" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3uibUv" id="6HT7BWBQVnv" role="1tU5fm">
          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="10P_77" id="6HT7BWBQPL2" role="3clF45" />
      <node concept="3Tm6S6" id="3t7_2Fg$_Wb" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3OPtF03lcqd" role="jymVt" />
    <node concept="3clFbW" id="3OPtF03lcrU" role="jymVt">
      <node concept="3cqZAl" id="3OPtF03lcrV" role="3clF45" />
      <node concept="3clFbS" id="3OPtF03lcrW" role="3clF47">
        <node concept="XkiVB" id="3OPtF03lcrX" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Node" />
          <node concept="37vLTw" id="3OPtF03lcrY" role="37wK5m">
            <ref role="3cqZAo" node="3OPtF03lcs8" resolve="symbolPath" />
          </node>
          <node concept="2ShNRf" id="3OPtF03lcs2" role="37wK5m">
            <node concept="3g6Rrh" id="3OPtF03lcs3" role="2ShVmc">
              <node concept="37vLTw" id="3OPtF03lcs4" role="3g7hyw">
                <ref role="3cqZAo" node="3OPtF03lcsa" resolve="value" />
              </node>
              <node concept="37vLTw" id="3OPtF03lcs5" role="3g7hyw">
                <ref role="3cqZAo" node="3OPtF03lcsc" resolve="tail" />
              </node>
              <node concept="3uibUv" id="3OPtF03lcs6" role="3g7fb8">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="5BGv8yzx5Yc" role="37wK5m">
            <node concept="2OqwBi" id="5BGv8yzx72l" role="3uHU7w">
              <node concept="37vLTw" id="5BGv8yzx5YG" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03lcsc" resolve="tail" />
              </node>
              <node concept="liA8E" id="5BGv8yzx8bB" role="2OqNvi">
                <ref role="37wK5l" node="5BGv8yzwj1c" resolve="variablesCount" />
              </node>
            </node>
            <node concept="2OqwBi" id="5BGv8yzx3MI" role="3uHU7B">
              <node concept="37vLTw" id="5BGv8yzx2KT" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03lcsa" resolve="value" />
              </node>
              <node concept="liA8E" id="5BGv8yzx4Os" role="2OqNvi">
                <ref role="37wK5l" node="5BGv8yzvvIZ" resolve="variablesCount" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3t7_2Fg$ABy" role="1B3o_S" />
      <node concept="37vLTG" id="3OPtF03lcs8" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="3OPtF03lcs9" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcsa" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3H0z$hTtTvx" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="3OPtF03lcsc" role="3clF46">
        <property role="TrG5h" value="tail" />
        <node concept="3uibUv" id="3OPtF03lcsd" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcsf" role="jymVt" />
    <node concept="3clFbW" id="3OPtF03lcsg" role="jymVt">
      <node concept="3cqZAl" id="3OPtF03lcsh" role="3clF45" />
      <node concept="3clFbS" id="3OPtF03lcsi" role="3clF47">
        <node concept="XkiVB" id="3OPtF03lcsj" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Node" />
          <node concept="37vLTw" id="3OPtF03lcsk" role="37wK5m">
            <ref role="3cqZAo" node="3OPtF03lcss" resolve="symbolPath" />
          </node>
          <node concept="2ShNRf" id="3OPtF03lcso" role="37wK5m">
            <node concept="3g6Rrh" id="3OPtF03lcsp" role="2ShVmc">
              <node concept="3uibUv" id="3OPtF03lcsq" role="3g7fb8">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
          </node>
          <node concept="3cmrfG" id="5BGv8yzxamk" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3t7_2Fg$AXQ" role="1B3o_S" />
      <node concept="37vLTG" id="3OPtF03lcss" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="3OPtF03lcst" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3t7_2Fg$CVv" role="jymVt" />
    <node concept="3clFbW" id="1OShD0I2Mcp" role="jymVt">
      <node concept="3cqZAl" id="1OShD0I2Mcq" role="3clF45" />
      <node concept="3clFbS" id="1OShD0I2Mcr" role="3clF47">
        <node concept="XkiVB" id="1OShD0I2Mcs" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Node" />
          <node concept="37vLTw" id="1OShD0I2Mct" role="37wK5m">
            <ref role="3cqZAo" node="1OShD0I2Mc_" resolve="symbolPath" />
          </node>
          <node concept="2ShNRf" id="1OShD0I2Mcx" role="37wK5m">
            <node concept="3g6Rrh" id="1OShD0I2Mcy" role="2ShVmc">
              <node concept="37vLTw" id="1OShD0I2UGM" role="3g7hyw">
                <ref role="3cqZAo" node="1OShD0I2RTL" resolve="value" />
              </node>
              <node concept="3uibUv" id="1OShD0I2Mcz" role="3g7fb8">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5BGv8yzxd7R" role="37wK5m">
            <node concept="37vLTw" id="5BGv8yzxcrH" role="2Oq$k0">
              <ref role="3cqZAo" node="1OShD0I2RTL" resolve="value" />
            </node>
            <node concept="liA8E" id="5BGv8yzxecf" role="2OqNvi">
              <ref role="37wK5l" node="5BGv8yzvvIZ" resolve="variablesCount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3t7_2Fg$BhN" role="1B3o_S" />
      <node concept="37vLTG" id="1OShD0I2Mc_" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="1OShD0I2McA" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="1OShD0I2RTL" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3H0z$hTtUqT" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcsu" role="jymVt" />
    <node concept="3clFb_" id="5YIOneOT0Zn" role="jymVt">
      <property role="TrG5h" value="contents" />
      <property role="DiZV1" value="true" />
      <node concept="3uibUv" id="5YIOneOT2SL" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qUE_q" id="5YIOneOT4dd" role="11_B2D">
          <node concept="3uibUv" id="5YIOneOT4dn" role="3qUE_r">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5YIOneOT0Zq" role="1B3o_S" />
      <node concept="3clFbS" id="5YIOneOT0Zr" role="3clF47">
        <node concept="3cpWs8" id="5YIOneOT7XW" role="3cqZAp">
          <node concept="3cpWsn" id="5YIOneOT7XX" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="3uibUv" id="5YIOneOT7XS" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="5YIOneOT7XV" role="11_B2D">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
            <node concept="2ShNRf" id="5YIOneOT7XY" role="33vP2m">
              <node concept="1pGfFk" id="5YIOneOT7XZ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="5YIOneOT7Y0" role="1pMfVU">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YIOneOT6vK" role="3cqZAp">
          <node concept="2OqwBi" id="5YIOneOT6vL" role="3clFbG">
            <node concept="1rXfSq" id="5YIOneOT6vM" role="2Oq$k0">
              <ref role="37wK5l" node="3OPtF03lcvw" resolve="tip" />
            </node>
            <node concept="liA8E" id="5YIOneOT6vN" role="2OqNvi">
              <ref role="37wK5l" node="3OPtF03lcvj" resolve="appendTo" />
              <node concept="37vLTw" id="5YIOneOT6vO" role="37wK5m">
                <ref role="3cqZAo" node="5YIOneOT7XX" resolve="list" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YIOneOTD8W" role="3cqZAp">
          <node concept="2YIFZM" id="5YIOneOTNYX" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="5YIOneOTNYY" role="37wK5m">
              <ref role="3cqZAo" node="5YIOneOT7XX" resolve="list" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YIOneOSZma" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcuq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="3OPtF03lcur" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="3OPtF03lcus" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="3OPtF03lcut" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="3OPtF03lcuu" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03lcuv" role="3clF47">
        <node concept="3cpWs6" id="3OPtF03lcuy" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03lcuz" role="3cqZAk">
            <node concept="37vLTw" id="3OPtF03stcI" role="2Oq$k0">
              <ref role="3cqZAo" node="3OPtF03lcur" resolve="visitor" />
            </node>
            <node concept="liA8E" id="3OPtF03lcuC" role="2OqNvi">
              <ref role="37wK5l" node="104EUzFOAS5" resolve="visitList" />
              <node concept="Xjq3P" id="3OPtF03lcuD" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF03lcuJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcuK" role="jymVt" />
    <node concept="3clFb_" id="3t7_2Fh5nOe" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="3t7_2Fh5pfx" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
      <node concept="3Tm1VV" id="3t7_2Fh5nOg" role="1B3o_S" />
      <node concept="2AHcQZ" id="3t7_2Fh5nOi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3t7_2Fh5nOj" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3t7_2Fh5rlq" role="jymVt" />
    <node concept="3clFb_" id="3t7_2Fh5nOm" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="3t7_2Fh5nOn" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="3t7_2Fh5nOo" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="3t7_2Fh5sxc" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
      <node concept="3Tm1VV" id="3t7_2Fh5nOq" role="1B3o_S" />
      <node concept="2AHcQZ" id="3t7_2Fh5nOs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3t7_2Fh5nOt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3t7_2Fh5u_d" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lctC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3OPtF03lctD" role="1B3o_S" />
      <node concept="17QB3L" id="3OPtF03lctE" role="3clF45" />
      <node concept="3clFbS" id="3OPtF03lctF" role="3clF47">
        <node concept="3cpWs8" id="2q_78a92HDb" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a92HDc" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2q_78a92HDd" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2q_78a92HDe" role="33vP2m">
              <node concept="1pGfFk" id="2q_78a92HDf" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a92HDg" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a92HDh" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a92HDi" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a92HDj" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a92HDc" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a92HDk" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2YIFZM" id="2q_78a92HDl" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <node concept="1rXfSq" id="1OShD0HF0sV" role="37wK5m">
                    <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a92HDp" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="2q_78a92HDq" role="37wK5m">
                <property role="Xl_RC" value="=[" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2q_78a92HDr" role="3cqZAp">
          <node concept="3cpWsn" id="2q_78a92HDs" role="3cpWs9">
            <property role="TrG5h" value="sep" />
            <node concept="17QB3L" id="2q_78a92HDt" role="1tU5fm" />
            <node concept="Xl_RD" id="2q_78a92HDu" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="2q_78a92HDv" role="3cqZAp">
          <node concept="3clFbS" id="2q_78a92HDw" role="2LFqv$">
            <node concept="3clFbF" id="2q_78a92HDx" role="3cqZAp">
              <node concept="2OqwBi" id="2q_78a92HDy" role="3clFbG">
                <node concept="2OqwBi" id="2q_78a92HDz" role="2Oq$k0">
                  <node concept="37vLTw" id="2q_78a92HD$" role="2Oq$k0">
                    <ref role="3cqZAo" node="2q_78a92HDc" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="2q_78a92HD_" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="37vLTw" id="2q_78a92HDA" role="37wK5m">
                      <ref role="3cqZAo" node="2q_78a92HDs" resolve="sep" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2q_78a92HDB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2OqwBi" id="2q_78a92HDC" role="37wK5m">
                    <node concept="37vLTw" id="2q_78a92HDD" role="2Oq$k0">
                      <ref role="3cqZAo" node="2q_78a92HDJ" resolve="br" />
                    </node>
                    <node concept="liA8E" id="2q_78a92HDE" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2q_78a92HDF" role="3cqZAp">
              <node concept="37vLTI" id="2q_78a92HDG" role="3clFbG">
                <node concept="Xl_RD" id="2q_78a92HDH" role="37vLTx">
                  <property role="Xl_RC" value="," />
                </node>
                <node concept="37vLTw" id="2q_78a92HDI" role="37vLTJ">
                  <ref role="3cqZAo" node="2q_78a92HDs" resolve="sep" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2q_78a92HDJ" role="1Duv9x">
            <property role="TrG5h" value="br" />
            <node concept="3uibUv" id="3H0z$hTtZCT" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
          <node concept="1rXfSq" id="2q_78a92HDM" role="1DdaDG">
            <ref role="37wK5l" node="5JQSuNswjSg" resolve="arguments" />
          </node>
        </node>
        <node concept="3clFbF" id="2q_78a92HDN" role="3cqZAp">
          <node concept="2OqwBi" id="2q_78a92HDO" role="3clFbG">
            <node concept="2OqwBi" id="2q_78a92HDP" role="2Oq$k0">
              <node concept="37vLTw" id="2q_78a92HDQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2q_78a92HDc" resolve="sb" />
              </node>
              <node concept="liA8E" id="2q_78a92HDR" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="2q_78a92HDS" role="37wK5m">
                  <property role="Xl_RC" value="]" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2q_78a92HDT" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3OPtF03lcu8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcu9" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcuT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="prependPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3OPtF03lcuU" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcuV" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03lcuW" role="3clFbG">
            <node concept="1rXfSq" id="3OPtF03lcuX" role="2Oq$k0">
              <ref role="37wK5l" node="1R$Cm9qGYlZ" resolve="path" />
            </node>
            <node concept="liA8E" id="3OPtF03lcuY" role="2OqNvi">
              <ref role="37wK5l" node="1R$Cm9qEroc" resolve="prepend" />
              <node concept="37vLTw" id="3OPtF03lcuZ" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcv2" resolve="parentPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3OPtF03lcv0" role="1B3o_S" />
      <node concept="3cqZAl" id="3OPtF03lcv1" role="3clF45" />
      <node concept="37vLTG" id="3OPtF03lcv2" role="3clF46">
        <property role="TrG5h" value="parentPath" />
        <node concept="3uibUv" id="3OPtF03lcv3" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcv4" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcvj" role="jymVt">
      <property role="TrG5h" value="appendTo" />
      <node concept="37vLTG" id="3OPtF03lcvk" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="3OPtF03lcvl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="3H0z$hTu13J" role="11_B2D">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3OPtF03lcvn" role="3clF45" />
      <node concept="3Tmbuc" id="3OPtF03lcvo" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03lcvp" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcvq" role="3cqZAp">
          <node concept="2OqwBi" id="3OPtF03lcvr" role="3clFbG">
            <node concept="1rXfSq" id="3OPtF03lcvs" role="2Oq$k0">
              <ref role="37wK5l" node="3OPtF03lcvw" resolve="tip" />
            </node>
            <node concept="liA8E" id="3OPtF03lcvt" role="2OqNvi">
              <ref role="37wK5l" node="3OPtF03lcvj" resolve="appendTo" />
              <node concept="37vLTw" id="3OPtF03lcvu" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcvk" resolve="list" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcvv" role="jymVt" />
    <node concept="3clFb_" id="3OPtF03lcvw" role="jymVt">
      <property role="TrG5h" value="tip" />
      <node concept="3uibUv" id="3OPtF03lcvx" role="3clF45">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
      <node concept="3Tmbuc" id="3t7_2Fg_9v$" role="1B3o_S" />
      <node concept="3clFbS" id="3OPtF03lcv$" role="3clF47">
        <node concept="3clFbF" id="3OPtF03lcv_" role="3cqZAp">
          <node concept="10QFUN" id="3OPtF03lcvB" role="3clFbG">
            <node concept="3uibUv" id="3OPtF03lcvC" role="10QFUM">
              <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
            </node>
            <node concept="1rXfSq" id="3OPtF03lcvE" role="10QFUP">
              <ref role="37wK5l" node="6$jH9oLbK0n" resolve="argAt" />
              <node concept="3cmrfG" id="3OPtF03lcvF" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcvG" role="jymVt" />
    <node concept="312cEu" id="3OPtF03lcvH" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="Cons" />
      <node concept="2tJIrI" id="1OShD0HGX8y" role="jymVt" />
      <node concept="3clFbW" id="3OPtF03lcvJ" role="jymVt">
        <node concept="37vLTG" id="3OPtF03lcvK" role="3clF46">
          <property role="TrG5h" value="head" />
          <node concept="3uibUv" id="3H0z$hTu5rB" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF03lcvO" role="3clF46">
          <property role="TrG5h" value="tail" />
          <node concept="3uibUv" id="3OPtF03lcvP" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
          </node>
        </node>
        <node concept="3cqZAl" id="3OPtF03lcvR" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lcvS" role="3clF47">
          <node concept="XkiVB" id="3OPtF03lcvT" role="3cqZAp">
            <ref role="37wK5l" node="3OPtF03lcrU" resolve="ListNode" />
            <node concept="2YIFZM" id="3OPtF03lcvU" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="Rm8GO" id="1OShD0HGB9i" role="37wK5m">
                <ref role="Rm8GQ" node="3OPtF03lc$8" resolve="CONS" />
                <ref role="1Px2BO" node="3OPtF03lc$6" resolve="ListNode.Symbols" />
              </node>
            </node>
            <node concept="37vLTw" id="3OPtF03lcvY" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF03lcvK" resolve="head" />
            </node>
            <node concept="37vLTw" id="3OPtF03lcvZ" role="37wK5m">
              <ref role="3cqZAo" node="3OPtF03lcvO" resolve="tail" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1OShD0I7frl" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3OPtF03lcw1" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcwa" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="copyRecursively" />
        <node concept="3uibUv" id="3OPtF03lcwb" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListNode.Cons" />
        </node>
        <node concept="3Tm1VV" id="3OPtF03lcwd" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lcwe" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcwf" role="3clF47">
          <node concept="3cpWs8" id="3OPtF03lcwg" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcwh" role="3cpWs9">
              <property role="TrG5h" value="headCopy" />
              <node concept="3uibUv" id="3H0z$hTu6uc" role="1tU5fm">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
              <node concept="2OqwBi" id="1OShD0HKGvi" role="33vP2m">
                <node concept="1rXfSq" id="1OShD0HKGvj" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcy7" resolve="head" />
                </node>
                <node concept="liA8E" id="1OShD0HKGvk" role="2OqNvi">
                  <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3OPtF03lcwo" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcwp" role="3cpWs9">
              <property role="TrG5h" value="tailCopy" />
              <node concept="3uibUv" id="3OPtF03lcwq" role="1tU5fm">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
              </node>
              <node concept="2OqwBi" id="3OPtF03lcws" role="33vP2m">
                <node concept="1rXfSq" id="3OPtF03lcwt" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcyf" resolve="tail" />
                </node>
                <node concept="liA8E" id="3OPtF03lcwu" role="2OqNvi">
                  <ref role="37wK5l" node="3t7_2Fh5nOe" resolve="copyRecursively" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1OShD0HKRKf" role="3cqZAp">
            <node concept="2YIFZM" id="1OShD0HKRKh" role="3clFbG">
              <ref role="37wK5l" node="1OShD0HGZnt" resolve="createCons" />
              <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListNode" />
              <node concept="37vLTw" id="1OShD0HKRKi" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcwh" resolve="headCopy" />
              </node>
              <node concept="37vLTw" id="1OShD0HKRKj" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcwp" resolve="tailCopy" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcwK" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcwL" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="mapRecursively" />
        <node concept="37vLTG" id="3OPtF03lcwM" role="3clF46">
          <property role="TrG5h" value="mapper" />
          <node concept="3uibUv" id="3OPtF03lcwN" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lcwO" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lcwP" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcwQ" role="3clF47">
          <node concept="3cpWs8" id="3OPtF03lcwR" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcwS" role="3cpWs9">
              <property role="TrG5h" value="headMap" />
              <node concept="2OqwBi" id="1OShD0HKKNi" role="33vP2m">
                <node concept="37vLTw" id="1OShD0HKKNj" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OPtF03lcwM" resolve="mapper" />
                </node>
                <node concept="liA8E" id="1OShD0HKKNk" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                  <node concept="1rXfSq" id="1OShD0HKKNl" role="37wK5m">
                    <ref role="37wK5l" node="3OPtF03lcy7" resolve="head" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="3H0z$hTuaUu" role="1tU5fm">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3OPtF03lcx0" role="3cqZAp">
            <node concept="3cpWsn" id="3OPtF03lcx1" role="3cpWs9">
              <property role="TrG5h" value="tailMap" />
              <node concept="3uibUv" id="3OPtF03lcx2" role="1tU5fm">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
              </node>
              <node concept="2OqwBi" id="3OPtF03lcx4" role="33vP2m">
                <node concept="1rXfSq" id="3OPtF03lcx5" role="2Oq$k0">
                  <ref role="37wK5l" node="3OPtF03lcyf" resolve="tail" />
                </node>
                <node concept="liA8E" id="3OPtF03lcx6" role="2OqNvi">
                  <ref role="37wK5l" node="3t7_2Fh5nOm" resolve="mapRecursively" />
                  <node concept="37vLTw" id="3OPtF03lcx7" role="37wK5m">
                    <ref role="3cqZAo" node="3OPtF03lcwM" resolve="mapper" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1OShD0HKNbM" role="3cqZAp">
            <node concept="2YIFZM" id="1OShD0HKNbO" role="3clFbG">
              <ref role="37wK5l" node="1OShD0HGZnt" resolve="createCons" />
              <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListNode" />
              <node concept="37vLTw" id="1OShD0HKNbP" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcwS" resolve="headMap" />
              </node>
              <node concept="37vLTw" id="1OShD0HKNbQ" role="37wK5m">
                <ref role="3cqZAo" node="3OPtF03lcx1" resolve="tailMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF03lcxp" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcvH" resolve="ListNode.Cons" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcxr" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcxs" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3OPtF03lcxt" role="1B3o_S" />
        <node concept="17QB3L" id="3OPtF03lcxu" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lcxv" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcxw" role="3cqZAp">
            <node concept="3cpWs3" id="3OPtF03lcxx" role="3clFbG">
              <node concept="2YIFZM" id="3OPtF03lcxy" role="3uHU7w">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="1rXfSq" id="1OShD0I6dMx" role="37wK5m">
                  <ref role="37wK5l" node="3OPtF03lcyf" resolve="tail" />
                </node>
              </node>
              <node concept="3cpWs3" id="3OPtF03lcx_" role="3uHU7B">
                <node concept="2YIFZM" id="3OPtF03lcxA" role="3uHU7B">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="1rXfSq" id="1OShD0I6b2n" role="37wK5m">
                    <ref role="37wK5l" node="3OPtF03lcy7" resolve="head" />
                  </node>
                </node>
                <node concept="Rm8GO" id="1OShD0I5481" role="3uHU7w">
                  <ref role="Rm8GQ" node="3OPtF03lc$8" resolve="CONS" />
                  <ref role="1Px2BO" node="3OPtF03lc$6" resolve="ListNode.Symbols" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lcxE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcxN" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcxO" role="jymVt">
        <property role="TrG5h" value="appendTo" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3OPtF03lcxP" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="3OPtF03lcxQ" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="3H0z$hTugCA" role="11_B2D">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3OPtF03lcxS" role="3clF45" />
        <node concept="3Tmbuc" id="3OPtF03lcxT" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03lcxU" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcxV" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF03lcxW" role="3clFbG">
              <node concept="37vLTw" id="3OPtF03lcxX" role="2Oq$k0">
                <ref role="3cqZAo" node="3OPtF03lcxP" resolve="list" />
              </node>
              <node concept="liA8E" id="3OPtF03lcxY" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                <node concept="1rXfSq" id="3OPtF03lcxZ" role="37wK5m">
                  <ref role="37wK5l" node="3OPtF03lcy7" resolve="head" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3OPtF03lcy0" role="3cqZAp">
            <node concept="2OqwBi" id="3OPtF03lcy1" role="3clFbG">
              <node concept="1rXfSq" id="3OPtF03lcy2" role="2Oq$k0">
                <ref role="37wK5l" node="3OPtF03lcyf" resolve="tail" />
              </node>
              <node concept="liA8E" id="3OPtF03lcy3" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF03lcvj" resolve="appendTo" />
                <node concept="37vLTw" id="3OPtF03lcy4" role="37wK5m">
                  <ref role="3cqZAo" node="3OPtF03lcxP" resolve="list" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lcy5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcy6" role="jymVt" />
      <node concept="3clFb_" id="3t7_2Fg_ebC" role="jymVt">
        <property role="TrG5h" value="tip" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="3t7_2Fg_ebD" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
        <node concept="3Tmbuc" id="3t7_2Fg_ebE" role="1B3o_S" />
        <node concept="3clFbS" id="3t7_2Fg_ebL" role="3clF47">
          <node concept="3clFbF" id="3t7_2Fg_ftO" role="3cqZAp">
            <node concept="Xjq3P" id="3t7_2Fg_ftN" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3t7_2Fg_ebM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3t7_2Fg_ftZ" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcy7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="head" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="3OPtF03lcy8" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcy9" role="3cqZAp">
            <node concept="1rXfSq" id="3OPtF03lcya" role="3clFbG">
              <ref role="37wK5l" node="6$jH9oLbK0n" resolve="argAt" />
              <node concept="3cmrfG" id="3OPtF03lcyb" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3OPtF03lcyc" role="1B3o_S" />
        <node concept="3uibUv" id="3H0z$hTuhjD" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcye" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcyf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tail" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="3OPtF03lcyg" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcyh" role="3cqZAp">
            <node concept="10QFUN" id="3OPtF03lcyi" role="3clFbG">
              <node concept="1rXfSq" id="3OPtF03lcyj" role="10QFUP">
                <ref role="37wK5l" node="6$jH9oLbK0n" resolve="argAt" />
                <node concept="3cmrfG" id="3OPtF03lcyk" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3uibUv" id="3OPtF03lcyl" role="10QFUM">
                <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3OPtF03lcyn" role="1B3o_S" />
        <node concept="3uibUv" id="3OPtF03lcyo" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lcyq" role="jymVt" />
      <node concept="3Tm1VV" id="3OPtF03lcyB" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03lcyC" role="1zkMxy">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lcyI" role="jymVt" />
    <node concept="312cEu" id="3OPtF03lcyJ" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="Nil" />
      <node concept="2tJIrI" id="3OPtF03lcyK" role="jymVt" />
      <node concept="3clFbW" id="3OPtF03lcyL" role="jymVt">
        <node concept="3cqZAl" id="3OPtF03lcyM" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lcyN" role="3clF47">
          <node concept="XkiVB" id="3OPtF03lcyO" role="3cqZAp">
            <ref role="37wK5l" node="3OPtF03lcsg" resolve="ListNode" />
            <node concept="2YIFZM" id="3OPtF03lcyP" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="Rm8GO" id="3OPtF03lcyQ" role="37wK5m">
                <ref role="Rm8GQ" node="3OPtF03lc$7" resolve="NIL" />
                <ref role="1Px2BO" node="3OPtF03lc$6" resolve="ListNode.Symbols" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1OShD0I7hJk" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3OPtF03lcyS" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lcz1" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="copyRecursively" />
        <node concept="3Tm1VV" id="3OPtF03lcz2" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lcz3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lcz4" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lcz5" role="3cqZAp">
            <node concept="2ShNRf" id="3OPtF03lcz6" role="3clFbG">
              <node concept="1pGfFk" id="3OPtF03lcz7" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lcyL" resolve="ListNode.Nil" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF03lcz9" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcyJ" resolve="ListNode.Nil" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lczb" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lczc" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="mapRecursively" />
        <node concept="37vLTG" id="3OPtF03lczd" role="3clF46">
          <property role="TrG5h" value="mapper" />
          <node concept="3uibUv" id="3OPtF03lcze" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF03lczf" role="1B3o_S" />
        <node concept="2AHcQZ" id="3OPtF03lczg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="3OPtF03lczh" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lczi" role="3cqZAp">
            <node concept="2ShNRf" id="3OPtF03lczj" role="3clFbG">
              <node concept="1pGfFk" id="3OPtF03lczk" role="2ShVmc">
                <ref role="37wK5l" node="3OPtF03lcyL" resolve="ListNode.Nil" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3OPtF03lczm" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lcyJ" resolve="ListNode.Nil" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lczo" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lczp" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3OPtF03lczq" role="1B3o_S" />
        <node concept="17QB3L" id="3OPtF03lczr" role="3clF45" />
        <node concept="3clFbS" id="3OPtF03lczs" role="3clF47">
          <node concept="3clFbF" id="3OPtF03lczt" role="3cqZAp">
            <node concept="Xl_RD" id="3OPtF03lczu" role="3clFbG">
              <property role="Xl_RC" value="NIL" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lczv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3OPtF03lczC" role="jymVt" />
      <node concept="3clFb_" id="3t7_2Fg_g6L" role="jymVt">
        <property role="TrG5h" value="tip" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="3t7_2Fg_g6M" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
        <node concept="3Tmbuc" id="3t7_2Fg_g6N" role="1B3o_S" />
        <node concept="3clFbS" id="3t7_2Fg_g6U" role="3clF47">
          <node concept="3clFbF" id="3t7_2Fg_hip" role="3cqZAp">
            <node concept="Xjq3P" id="3t7_2Fg_hio" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3t7_2Fg_g6V" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3t7_2Fg_hi$" role="jymVt" />
      <node concept="3clFb_" id="3OPtF03lczQ" role="jymVt">
        <property role="TrG5h" value="appendTo" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="3OPtF03lczR" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="3OPtF03lczS" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="3H0z$hTujbW" role="11_B2D">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3OPtF03lczU" role="3clF45" />
        <node concept="3Tmbuc" id="3OPtF03lczV" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF03lczW" role="3clF47">
          <node concept="3SKdUt" id="3OPtF03lczX" role="3cqZAp">
            <node concept="3SKdUq" id="3OPtF03lczY" role="3SKWNk">
              <property role="3SKdUp" value="nothing" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3OPtF03lczZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lc$0" role="1B3o_S" />
      <node concept="3uibUv" id="3OPtF03lc$3" role="1zkMxy">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="1OShD0I256B" role="jymVt" />
    <node concept="312cEu" id="1OShD0I20qU" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="Alias" />
      <node concept="2tJIrI" id="1OShD0I20qV" role="jymVt" />
      <node concept="3clFbW" id="1OShD0I20qW" role="jymVt">
        <node concept="37vLTG" id="1OShD0I2eRA" role="3clF46">
          <property role="TrG5h" value="var" />
          <node concept="3uibUv" id="3H0z$hTulpG" role="1tU5fm">
            <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="3cqZAl" id="1OShD0I20qX" role="3clF45" />
        <node concept="3clFbS" id="1OShD0I20qY" role="3clF47">
          <node concept="XkiVB" id="1OShD0I20qZ" role="3cqZAp">
            <ref role="37wK5l" node="1OShD0I2Mcp" resolve="ListNode" />
            <node concept="2YIFZM" id="1OShD0I20r0" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <node concept="Rm8GO" id="1OShD0I2j4m" role="37wK5m">
                <ref role="Rm8GQ" node="1OShD0I1R$K" resolve="ALIAS" />
                <ref role="1Px2BO" node="3OPtF03lc$6" resolve="ListNode.Symbols" />
              </node>
            </node>
            <node concept="37vLTw" id="1OShD0I2mpa" role="37wK5m">
              <ref role="3cqZAo" node="1OShD0I2eRA" resolve="var" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1OShD0I7jdD" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="1OShD0I3aG9" role="jymVt" />
      <node concept="3clFb_" id="1OShD0I2ZmZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="copyRecursively" />
        <node concept="3uibUv" id="1OShD0I2Zn0" role="3clF45">
          <ref role="3uigEE" node="1OShD0I20qU" resolve="ListNode.Alias" />
        </node>
        <node concept="3Tm1VV" id="1OShD0I2Zn2" role="1B3o_S" />
        <node concept="2AHcQZ" id="1OShD0I2Zn3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="1OShD0I2Zn4" role="3clF47">
          <node concept="3cpWs8" id="1OShD0I2Zn5" role="3cqZAp">
            <node concept="3cpWsn" id="1OShD0I2Zn6" role="3cpWs9">
              <property role="TrG5h" value="varCopy" />
              <node concept="3uibUv" id="3H0z$hTumvc" role="1tU5fm">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="2OqwBi" id="1OShD0I2Zna" role="33vP2m">
                <node concept="1rXfSq" id="1OShD0I2Znb" role="2Oq$k0">
                  <ref role="37wK5l" node="5j6rs$cKt1O" resolve="get" />
                </node>
                <node concept="liA8E" id="1OShD0I2Znc" role="2OqNvi">
                  <ref role="37wK5l" node="1bm7a6F1l_X" resolve="copyRecursively" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1OShD0I7YSW" role="3cqZAp">
            <node concept="2YIFZM" id="1OShD0I7YSY" role="3clFbG">
              <ref role="37wK5l" node="1OShD0I3vRu" resolve="createAlias" />
              <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListNode" />
              <node concept="37vLTw" id="1OShD0I7YSZ" role="37wK5m">
                <ref role="3cqZAo" node="1OShD0I2Zn6" resolve="varCopy" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1OShD0I2Zno" role="jymVt" />
      <node concept="3clFb_" id="1OShD0I2Znp" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="mapRecursively" />
        <node concept="37vLTG" id="1OShD0I2Znq" role="3clF46">
          <property role="TrG5h" value="mapper" />
          <node concept="3uibUv" id="1OShD0I2Znr" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1OShD0I2Zns" role="1B3o_S" />
        <node concept="2AHcQZ" id="1OShD0I2Znt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="1OShD0I2Znu" role="3clF47">
          <node concept="3cpWs8" id="6HT7BWBOytl" role="3cqZAp">
            <node concept="3cpWsn" id="6HT7BWBOytm" role="3cpWs9">
              <property role="TrG5h" value="tf" />
              <node concept="3uibUv" id="6HT7BWBOytj" role="1tU5fm">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBOytn" role="33vP2m">
                <node concept="37vLTw" id="6HT7BWBOyto" role="2Oq$k0">
                  <ref role="3cqZAo" node="1OShD0I2Znq" resolve="mapper" />
                </node>
                <node concept="liA8E" id="6HT7BWBOytp" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                  <node concept="1rXfSq" id="6HT7BWBOytq" role="37wK5m">
                    <ref role="37wK5l" node="5j6rs$cKt1O" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6HT7BWBOz47" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBOz49" role="3clFbx">
              <node concept="3cpWs6" id="6HT7BWBOznG" role="3cqZAp">
                <node concept="2YIFZM" id="1OShD0I7__u" role="3cqZAk">
                  <ref role="37wK5l" node="1OShD0I3vRu" resolve="createAlias" />
                  <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListNode" />
                  <node concept="10QFUN" id="6HT7BWBOIM8" role="37wK5m">
                    <node concept="3uibUv" id="6HT7BWBOIM6" role="10QFUM">
                      <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                    </node>
                    <node concept="37vLTw" id="6HT7BWBOIM7" role="10QFUP">
                      <ref role="3cqZAo" node="6HT7BWBOytm" resolve="tf" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6HT7BWBOBqV" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="6HT7BWBOze8" role="3clFbw">
              <node concept="3uibUv" id="6HT7BWBOzk1" role="2ZW6by">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
              <node concept="37vLTw" id="6HT7BWBOz67" role="2ZW6bz">
                <ref role="3cqZAo" node="6HT7BWBOytm" resolve="tf" />
              </node>
            </node>
            <node concept="3eNFk2" id="6HT7BWBOAfD" role="3eNLev">
              <node concept="3clFbS" id="6HT7BWBOAfE" role="3eOfB_">
                <node concept="3cpWs6" id="6HT7BWBOC5z" role="3cqZAp">
                  <node concept="2YIFZM" id="6HT7BWBOGwz" role="3cqZAk">
                    <ref role="37wK5l" node="1OShD0HS45f" resolve="createList" />
                    <ref role="1Pybhc" node="3OPtF03lco4" resolve="ListNode" />
                    <node concept="37vLTw" id="6HT7BWBOGw$" role="37wK5m">
                      <ref role="3cqZAo" node="6HT7BWBOytm" resolve="tf" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6HT7BWBOKMz" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="6HT7BWBOAYX" role="3eO9$A">
                <node concept="3uibUv" id="6HT7BWBOExh" role="2ZW6by">
                  <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
                </node>
                <node concept="37vLTw" id="6HT7BWBOARN" role="2ZW6bz">
                  <ref role="3cqZAo" node="6HT7BWBOytm" resolve="tf" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="6HT7BWBOKa9" role="9aQIa">
              <node concept="3clFbS" id="6HT7BWBOKaa" role="9aQI4">
                <node concept="YS8fn" id="6HT7BWBOM4i" role="3cqZAp">
                  <node concept="2ShNRf" id="6HT7BWBOM4W" role="YScLw">
                    <node concept="1pGfFk" id="6HT7BWBONeM" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="3cpWs3" id="6HT7BWBONr_" role="37wK5m">
                        <node concept="37vLTw" id="6HT7BWBONt3" role="3uHU7w">
                          <ref role="3cqZAo" node="6HT7BWBOytm" resolve="tf" />
                        </node>
                        <node concept="Xl_RD" id="6HT7BWBONfA" role="3uHU7B">
                          <property role="Xl_RC" value="unexpected map result: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="6HT7BWBOHkC" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
      </node>
      <node concept="2tJIrI" id="1OShD0I2ZnQ" role="jymVt" />
      <node concept="3clFb_" id="5j6rs$cJVAu" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="is" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5j6rs$cJVAv" role="1B3o_S" />
        <node concept="37vLTG" id="5j6rs$cJVAw" role="3clF46">
          <property role="TrG5h" value="kind" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="18cJbc0HTiq" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term$Kind" resolve="Term.Kind" />
          </node>
        </node>
        <node concept="10P_77" id="5j6rs$cJVAy" role="3clF45" />
        <node concept="2AHcQZ" id="5j6rs$cJVAC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="5j6rs$cJVAG" role="3clF47">
          <node concept="3clFbF" id="5j6rs$cK9x8" role="3cqZAp">
            <node concept="3clFbC" id="5j6rs$cK9Tw" role="3clFbG">
              <node concept="Rm8GO" id="18cJbc0HTj6" role="3uHU7B">
                <ref role="Rm8GQ" to="yt73:~Term$Kind.REF" resolve="REF" />
                <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
              </node>
              <node concept="37vLTw" id="5j6rs$cK9WI" role="3uHU7w">
                <ref role="3cqZAo" node="5j6rs$cJVAw" resolve="kind" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5j6rs$cJXrs" role="jymVt" />
      <node concept="3clFb_" id="5j6rs$cKt1O" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="get" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5j6rs$cKt1P" role="1B3o_S" />
        <node concept="3uibUv" id="3H0z$hTunKp" role="3clF45">
          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
        </node>
        <node concept="2AHcQZ" id="5j6rs$cKt1U" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="5j6rs$cKt1Y" role="3clF47">
          <node concept="3clFbF" id="5j6rs$cK$4M" role="3cqZAp">
            <node concept="10QFUN" id="3H0z$hTupHs" role="3clFbG">
              <node concept="1rXfSq" id="3H0z$hTupHq" role="10QFUP">
                <ref role="37wK5l" node="6$jH9oLbK0n" resolve="argAt" />
                <node concept="3cmrfG" id="3H0z$hTupHr" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3uibUv" id="3H0z$hTupI7" role="10QFUM">
                <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5j6rs$cKuOQ" role="jymVt" />
      <node concept="3clFb_" id="1OShD0I2ZnR" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="1OShD0I2ZnS" role="1B3o_S" />
        <node concept="17QB3L" id="1OShD0I2ZnT" role="3clF45" />
        <node concept="3clFbS" id="1OShD0I2ZnU" role="3clF47">
          <node concept="3clFbF" id="1OShD0I2ZnV" role="3cqZAp">
            <node concept="3cpWs3" id="1OShD0I61XL" role="3clFbG">
              <node concept="Rm8GO" id="1OShD0I64yC" role="3uHU7B">
                <ref role="Rm8GQ" node="1OShD0I1R$K" resolve="ALIAS" />
                <ref role="1Px2BO" node="3OPtF03lc$6" resolve="ListNode.Symbols" />
              </node>
              <node concept="2YIFZM" id="1OShD0I2Zo1" role="3uHU7w">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="1rXfSq" id="1OShD0IcIdV" role="37wK5m">
                  <ref role="37wK5l" node="5j6rs$cKt1O" resolve="get" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1OShD0I2Zo5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1OShD0I2Zo6" role="jymVt" />
      <node concept="3clFb_" id="1OShD0I2Zo7" role="jymVt">
        <property role="TrG5h" value="appendTo" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="1OShD0I2Zo8" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="1OShD0I2Zo9" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="3H0z$hTuqdU" role="11_B2D">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="1OShD0I2Zob" role="3clF45" />
        <node concept="3Tmbuc" id="1OShD0I2Zoc" role="1B3o_S" />
        <node concept="3clFbS" id="1OShD0I2Zod" role="3clF47">
          <node concept="3clFbF" id="1OShD0I2Zoe" role="3cqZAp">
            <node concept="2OqwBi" id="1OShD0I2Zof" role="3clFbG">
              <node concept="37vLTw" id="1OShD0I2Zog" role="2Oq$k0">
                <ref role="3cqZAo" node="1OShD0I2Zo8" resolve="list" />
              </node>
              <node concept="liA8E" id="1OShD0I2Zoh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                <node concept="1rXfSq" id="1OShD0I2Zoi" role="37wK5m">
                  <ref role="37wK5l" node="5j6rs$cKt1O" resolve="get" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1OShD0I2Zoo" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3t7_2Fg_hMy" role="jymVt" />
      <node concept="3clFb_" id="3t7_2Fg_is4" role="jymVt">
        <property role="TrG5h" value="tip" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="3t7_2Fg_is5" role="3clF45">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
        <node concept="3Tmbuc" id="3t7_2Fg_is6" role="1B3o_S" />
        <node concept="3clFbS" id="3t7_2Fg_isd" role="3clF47">
          <node concept="3clFbF" id="3t7_2Fg_jMf" role="3cqZAp">
            <node concept="Xjq3P" id="3t7_2Fg_jMe" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3t7_2Fg_ise" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1OShD0I20rI" role="1B3o_S" />
      <node concept="3uibUv" id="1OShD0I20rM" role="1zkMxy">
        <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lc$5" role="jymVt" />
    <node concept="Qs71p" id="3OPtF03lc$6" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Symbols" />
      <node concept="2tJIrI" id="1OShD0I1TMs" role="jymVt" />
      <node concept="3clFbW" id="1OShD0I1UxM" role="jymVt">
        <node concept="3cqZAl" id="1OShD0I1UxO" role="3clF45" />
        <node concept="3clFbS" id="1OShD0I1UxQ" role="3clF47">
          <node concept="3clFbF" id="1OShD0I1VSp" role="3cqZAp">
            <node concept="37vLTI" id="1OShD0I1VSr" role="3clFbG">
              <node concept="2OqwBi" id="1OShD0I1VSv" role="37vLTJ">
                <node concept="Xjq3P" id="1OShD0I1VSy" role="2Oq$k0" />
                <node concept="2OwXpG" id="1OShD0I1VSu" role="2OqNvi">
                  <ref role="2Oxat5" node="1OShD0I1VSl" resolve="sym" />
                </node>
              </node>
              <node concept="37vLTw" id="1OShD0I1VSz" role="37vLTx">
                <ref role="3cqZAo" node="1OShD0I1VG1" resolve="sym" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1OShD0I1VG1" role="3clF46">
          <property role="TrG5h" value="sym" />
          <node concept="17QB3L" id="1OShD0I1VG0" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="1OShD0I1WAw" role="jymVt" />
      <node concept="3clFb_" id="1OShD0I1Xky" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="1OShD0I1Xkz" role="1B3o_S" />
        <node concept="17QB3L" id="6tTPqJZ0ZZU" role="3clF45" />
        <node concept="3clFbS" id="1OShD0I1XkA" role="3clF47">
          <node concept="3clFbF" id="1OShD0I20eg" role="3cqZAp">
            <node concept="37vLTw" id="1OShD0I20ef" role="3clFbG">
              <ref role="3cqZAo" node="1OShD0I1VSl" resolve="sym" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1OShD0I1XkB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1OShD0I1Zul" role="jymVt" />
      <node concept="QsSxf" id="3OPtF03lc$7" role="Qtgdg">
        <property role="TrG5h" value="NIL" />
        <ref role="37wK5l" node="1OShD0I1UxM" resolve="ListNode.Symbols" />
        <node concept="Xl_RD" id="1OShD0I20hE" role="37wK5m">
          <property role="Xl_RC" value="NIL" />
        </node>
      </node>
      <node concept="QsSxf" id="3OPtF03lc$8" role="Qtgdg">
        <property role="TrG5h" value="CONS" />
        <ref role="37wK5l" node="1OShD0I1UxM" resolve="ListNode.Symbols" />
        <node concept="Xl_RD" id="1OShD0I20lu" role="37wK5m">
          <property role="Xl_RC" value=":" />
        </node>
      </node>
      <node concept="QsSxf" id="1OShD0I1R$K" role="Qtgdg">
        <property role="TrG5h" value="ALIAS" />
        <ref role="37wK5l" node="1OShD0I1UxM" resolve="ListNode.Symbols" />
        <node concept="Xl_RD" id="1OShD0I20pU" role="37wK5m">
          <property role="Xl_RC" value="&amp;" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF03lc$9" role="1B3o_S" />
      <node concept="312cEg" id="1OShD0I1VSl" role="jymVt">
        <property role="TrG5h" value="sym" />
        <node concept="3Tm6S6" id="1OShD0I1VSm" role="1B3o_S" />
        <node concept="17QB3L" id="1OShD0I1VSo" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3OPtF03lc$a" role="jymVt" />
    <node concept="3Tm1VV" id="3OPtF03lc_V" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5s497VqXwA7">
    <property role="TrG5h" value="PrettyPrinter" />
    <node concept="3Tm1VV" id="5s497VqXwA8" role="1B3o_S" />
    <node concept="3uibUv" id="5s497VqXwGs" role="EKbjA">
      <ref role="3uigEE" node="3JgCwkqiP3h" resolve="TreeFormWalk.Walker" />
    </node>
    <node concept="2tJIrI" id="5s497VqXx1L" role="jymVt" />
    <node concept="2YIFZL" id="5s497VqXK1B" role="jymVt">
      <property role="TrG5h" value="prettyPrint" />
      <node concept="17QB3L" id="3_ALDc$_5nr" role="3clF45" />
      <node concept="3Tm1VV" id="5s497VqXK1E" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqXK1F" role="3clF47">
        <node concept="3SKdUt" id="xBj3CwDnaI" role="3cqZAp">
          <node concept="3SKdUq" id="xBj3CwDnaJ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: non-branches?" />
          </node>
        </node>
        <node concept="3cpWs8" id="5s497VqXMVz" role="3cqZAp">
          <node concept="3cpWsn" id="5s497VqXMV$" role="3cpWs9">
            <property role="TrG5h" value="printer" />
            <node concept="3uibUv" id="5s497VqXMVy" role="1tU5fm">
              <ref role="3uigEE" node="5s497VqXwA7" resolve="PrettyPrinter" />
            </node>
            <node concept="2ShNRf" id="5s497VqXMV_" role="33vP2m">
              <node concept="1pGfFk" id="5s497VqXMVA" role="2ShVmc">
                <ref role="37wK5l" node="5s497VqXLBS" resolve="PrettyPrinter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3gJBs5s$Unw" role="3cqZAp">
          <node concept="2YIFZM" id="3gJBs5s$Unv" role="3cqZAk">
            <ref role="1Pybhc" node="5s497VqXwA7" resolve="PrettyPrinter" />
            <ref role="37wK5l" node="3gJBs5s$T4k" resolve="doPrettyPrint" />
            <node concept="37vLTw" id="3gJBs5s$Unt" role="37wK5m">
              <ref role="3cqZAo" node="5s497VqXKRl" resolve="tbr" />
            </node>
            <node concept="37vLTw" id="3gJBs5s$Unu" role="37wK5m">
              <ref role="3cqZAo" node="5s497VqXMV$" resolve="printer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqXKRl" role="3clF46">
        <property role="TrG5h" value="tbr" />
        <node concept="3uibUv" id="5s497VqXKRk" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gJBs5s$Otl" role="jymVt" />
    <node concept="2YIFZL" id="3gJBs5s$T4k" role="jymVt">
      <property role="TrG5h" value="doPrettyPrint" />
      <node concept="3Tm6S6" id="3gJBs5s$T4l" role="1B3o_S" />
      <node concept="17QB3L" id="3gJBs5s$T4m" role="3clF45" />
      <node concept="37vLTG" id="3gJBs5s$T2T" role="3clF46">
        <property role="TrG5h" value="tbr" />
        <node concept="3uibUv" id="3gJBs5s$T2U" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="3gJBs5s$T2W" role="3clF46">
        <property role="TrG5h" value="printer" />
        <node concept="3uibUv" id="3gJBs5s$T2X" role="1tU5fm">
          <ref role="3uigEE" node="5s497VqXwA7" resolve="PrettyPrinter" />
        </node>
      </node>
      <node concept="3clFbS" id="3gJBs5s$T2j" role="3clF47">
        <node concept="SfApY" id="6HT7BWBQ4HA" role="3cqZAp">
          <node concept="3clFbS" id="6HT7BWBQ4HC" role="SfCbr">
            <node concept="3SKdUt" id="3gJBs5s$T2k" role="3cqZAp">
              <node concept="3SKdUq" id="3gJBs5s$T2l" role="3SKWNk">
                <property role="3SKdUp" value="FIXME hack to support printing variables" />
              </node>
            </node>
            <node concept="3clFbJ" id="3gJBs5s$T2m" role="3cqZAp">
              <node concept="3clFbS" id="3gJBs5s$T2n" role="3clFbx">
                <node concept="3clFbF" id="3gJBs5s$T2o" role="3cqZAp">
                  <node concept="2OqwBi" id="3gJBs5s$T2p" role="3clFbG">
                    <node concept="Rm8GO" id="3gJBs5s$T2q" role="2Oq$k0">
                      <ref role="Rm8GQ" node="5s497Vr0Gpo" resolve="EOL" />
                      <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
                    </node>
                    <node concept="liA8E" id="3gJBs5s$T2r" role="2OqNvi">
                      <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
                      <node concept="37vLTw" id="3gJBs5s$T4d" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5s$T2W" resolve="printer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3gJBs5s$T2t" role="3cqZAp">
                  <node concept="2OqwBi" id="3gJBs5s$T2u" role="3clFbG">
                    <node concept="Rm8GO" id="3gJBs5s$T2v" role="2Oq$k0">
                      <ref role="Rm8GQ" node="5s497Vr0AJd" resolve="INDENT" />
                      <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
                    </node>
                    <node concept="liA8E" id="3gJBs5s$T2w" role="2OqNvi">
                      <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
                      <node concept="37vLTw" id="3gJBs5s$T4c" role="37wK5m">
                        <ref role="3cqZAo" node="3gJBs5s$T2W" resolve="printer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3gJBs5s$T2y" role="3cqZAp">
                  <node concept="2OqwBi" id="3gJBs5s$T2z" role="3clFbG">
                    <node concept="37vLTw" id="3gJBs5s$T4g" role="2Oq$k0">
                      <ref role="3cqZAo" node="3gJBs5s$T2W" resolve="printer" />
                    </node>
                    <node concept="liA8E" id="3gJBs5s$T2_" role="2OqNvi">
                      <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
                      <node concept="2YIFZM" id="3gJBs5s$T2A" role="37wK5m">
                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="37vLTw" id="3gJBs5s$T4h" role="37wK5m">
                          <ref role="3cqZAo" node="3gJBs5s$T2T" resolve="tbr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3gJBs5s$T2C" role="3clFbw">
                <node concept="37vLTw" id="3gJBs5s$T4e" role="2Oq$k0">
                  <ref role="3cqZAo" node="3gJBs5s$T2T" resolve="tbr" />
                </node>
                <node concept="liA8E" id="3gJBs5s$T2E" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
                  <node concept="Rm8GO" id="18cJbc0HUZa" role="37wK5m">
                    <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                    <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3gJBs5s$T2G" role="9aQIa">
                <node concept="3clFbS" id="3gJBs5s$T2H" role="9aQI4">
                  <node concept="3clFbF" id="3gJBs5s$T2I" role="3cqZAp">
                    <node concept="2OqwBi" id="3gJBs5s$T2J" role="3clFbG">
                      <node concept="2ShNRf" id="3gJBs5s$T2K" role="2Oq$k0">
                        <node concept="1pGfFk" id="3gJBs5s$T2L" role="2ShVmc">
                          <ref role="37wK5l" node="47nvOnTQN6Q" resolve="TreeFormWalk" />
                          <node concept="37vLTw" id="3gJBs5s$T4b" role="37wK5m">
                            <ref role="3cqZAo" node="3gJBs5s$T2W" resolve="printer" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3gJBs5s$T2N" role="2OqNvi">
                        <ref role="37wK5l" node="1hOy_Afq63K" resolve="walk" />
                        <node concept="37vLTw" id="3gJBs5s$T4a" role="37wK5m">
                          <ref role="3cqZAo" node="3gJBs5s$T2T" resolve="tbr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6HT7BWBQ5Vu" role="3cqZAp">
              <node concept="2OqwBi" id="6HT7BWBQ5Vv" role="3cqZAk">
                <node concept="37vLTw" id="6HT7BWBQ5Vw" role="2Oq$k0">
                  <ref role="3cqZAo" node="3gJBs5s$T2W" resolve="printer" />
                </node>
                <node concept="liA8E" id="6HT7BWBQ5Vx" role="2OqNvi">
                  <ref role="37wK5l" node="5s497VqXNEj" resolve="toString" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6HT7BWBQ4HB" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="6HT7BWBQ4HD" role="TEbGg">
            <node concept="3cpWsn" id="6HT7BWBQ4HF" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="6HT7BWBQ4M3" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
              </node>
            </node>
            <node concept="3clFbS" id="6HT7BWBQ4HJ" role="TDEfX">
              <node concept="3cpWs6" id="6HT7BWBQ6oJ" role="3cqZAp">
                <node concept="2YIFZM" id="6HT7BWBQ78j" role="3cqZAk">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                  <node concept="Xl_RD" id="6HT7BWBQ7iS" role="37wK5m">
                    <property role="Xl_RC" value="*** Exception during print [%s] ***" />
                  </node>
                  <node concept="2OqwBi" id="6HT7BWBQaHt" role="37wK5m">
                    <node concept="37vLTw" id="6HT7BWBQaBL" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HT7BWBQ4HF" resolve="ex" />
                    </node>
                    <node concept="liA8E" id="6HT7BWBQaSB" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXL6G" role="jymVt" />
    <node concept="3clFbW" id="5s497VqXLBS" role="jymVt">
      <node concept="3cqZAl" id="5s497VqXLBU" role="3clF45" />
      <node concept="3Tm6S6" id="5s497VqYqp7" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqXLBW" role="3clF47">
        <node concept="3clFbF" id="3gJBs5s$iOV" role="3cqZAp">
          <node concept="37vLTI" id="3gJBs5s$jah" role="3clFbG">
            <node concept="2ShNRf" id="3gJBs5s$jbC" role="37vLTx">
              <node concept="HV5vD" id="3gJBs5s$xxN" role="2ShVmc">
                <ref role="HV5vE" node="3gJBs5s$bxr" resolve="PrettyPrinter.DefaultsSymbolProvider" />
              </node>
            </node>
            <node concept="2OqwBi" id="3gJBs5s$iQu" role="37vLTJ">
              <node concept="Xjq3P" id="3gJBs5s$iOT" role="2Oq$k0" />
              <node concept="2OwXpG" id="3gJBs5s$j0v" role="2OqNvi">
                <ref role="2Oxat5" node="3gJBs5s$5vV" resolve="symbolProvider" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3gJBs5s$4mV" role="jymVt" />
    <node concept="3clFb_" id="5s497VqXNEj" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="3_ALDc$_5np" role="3clF45" />
      <node concept="3Tm1VV" id="5s497VqXNEm" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqXNEn" role="3clF47">
        <node concept="3clFbF" id="5s497VqYopg" role="3cqZAp">
          <node concept="2OqwBi" id="5s497VqYoAr" role="3clFbG">
            <node concept="37vLTw" id="5s497VqYope" role="2Oq$k0">
              <ref role="3cqZAo" node="5s497VqXYms" resolve="sb" />
            </node>
            <node concept="liA8E" id="5s497VqYoT3" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXNai" role="jymVt" />
    <node concept="3clFb_" id="5NAQwIks9QV" role="jymVt">
      <property role="TrG5h" value="visitAbstract" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="5NAQwIks9R3" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5NAQwIks9QX" role="1B3o_S" />
      <node concept="37vLTG" id="5NAQwIks9R1" role="3clF46">
        <property role="TrG5h" value="treeForm" />
        <node concept="3uibUv" id="5NAQwIks9R2" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3clFbS" id="5NAQwIks9R4" role="3clF47">
        <node concept="YS8fn" id="5NAQwIksfDF" role="3cqZAp">
          <node concept="2ShNRf" id="5NAQwIksfGw" role="YScLw">
            <node concept="1pGfFk" id="5NAQwIksgQX" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5NAQwIks9R5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5NAQwIksgTW" role="jymVt" />
    <node concept="3clFb_" id="5NAQwIkr2B9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitNode" />
      <node concept="37vLTG" id="5NAQwIkr2Ba" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5NAQwIkr2Bb" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
        </node>
      </node>
      <node concept="3uibUv" id="5NAQwIkr2Bj" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5NAQwIkr2Bd" role="1B3o_S" />
      <node concept="2AHcQZ" id="5NAQwIkr2Bi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5NAQwIkr2Bk" role="3clF47">
        <node concept="3clFbF" id="5s497Vr9tWx" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr9tWv" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZfX$" resolve="newLine" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr9fV3" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr9fV4" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2YIFZM" id="5s497Vr9fV5" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5NAQwIkrdpK" role="37wK5m">
                <node concept="37vLTw" id="5NAQwIkrdbj" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NAQwIkr2Ba" resolve="node" />
                </node>
                <node concept="liA8E" id="5NAQwIkrdVM" role="2OqNvi">
                  <ref role="37wK5l" node="104EUzFOBnD" resolve="acceptVisitor" />
                  <node concept="37vLTw" id="5NAQwIkre7i" role="37wK5m">
                    <ref role="3cqZAo" node="3gJBs5s$5vV" resolve="symbolProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr9fV9" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr9fVa" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497Vr9fVb" role="37wK5m">
              <property role="Xl_RC" value="=" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr9fVc" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr9fVd" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497Vr9fVe" role="37wK5m">
              <property role="Xl_RC" value="(" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vrae6Z" role="3cqZAp">
          <node concept="2OqwBi" id="5s497Vrae70" role="3clFbG">
            <node concept="37vLTw" id="5s497Vrae71" role="2Oq$k0">
              <ref role="3cqZAo" node="5s497Vr90Ww" resolve="endActions" />
            </node>
            <node concept="liA8E" id="5s497Vrae72" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
              <node concept="Rm8GO" id="5s497VrahFV" role="37wK5m">
                <ref role="Rm8GQ" node="5s497Vr9kSP" resolve="END_CHILDREN" />
                <ref role="1Px2BO" node="5s497Vr8LPr" resolve="PrettyPrinter.EndWalk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr9fVn" role="3cqZAp">
          <node concept="Rm8GO" id="5s497Vr9jIz" role="3clFbG">
            <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NAQwIkr5aw" role="jymVt" />
    <node concept="2tJIrI" id="5NAQwIkreAM" role="jymVt" />
    <node concept="3clFb_" id="5NAQwIkrC5w" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitValueRole" />
      <node concept="37vLTG" id="5NAQwIkrC5x" role="3clF46">
        <property role="TrG5h" value="valueRole" />
        <node concept="3uibUv" id="5NAQwIkrC5y" role="1tU5fm">
          <ref role="3uigEE" node="1msb0mq99GH" resolve="ValueRole" />
          <node concept="16syzq" id="5NAQwIkrC5z" role="11_B2D">
            <ref role="16sUi3" node="5NAQwIkrC5A" resolve="V" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5NAQwIkrC5G" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5NAQwIkrC5_" role="1B3o_S" />
      <node concept="16euLQ" id="5NAQwIkrC5A" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="2AHcQZ" id="5NAQwIkrC5F" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5NAQwIkrC5H" role="3clF47">
        <node concept="3clFbF" id="5s497VqZVpb" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqZVp9" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZ6ry" resolve="newToken" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqYTlY" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqYTlW" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2YIFZM" id="5s497VqYW8H" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5NAQwIkrM9b" role="37wK5m">
                <node concept="37vLTw" id="5NAQwIkrLix" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NAQwIkrC5x" resolve="valueRole" />
                </node>
                <node concept="liA8E" id="5NAQwIkrMtA" role="2OqNvi">
                  <ref role="37wK5l" node="47nvOnTS3tu" resolve="acceptVisitor" />
                  <node concept="37vLTw" id="5NAQwIkrN1l" role="37wK5m">
                    <ref role="3cqZAo" node="3gJBs5s$5vV" resolve="symbolProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqYWwJ" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqYWwH" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497VqYWLm" role="37wK5m">
              <property role="Xl_RC" value="=" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqYv75" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqYv74" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497VqYvhv" role="37wK5m">
              <property role="Xl_RC" value="\&quot;" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqYwuo" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqYwum" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYCA_" resolve="appendCollection" />
            <node concept="2OqwBi" id="5YIOneONi3F" role="37wK5m">
              <node concept="37vLTw" id="5NAQwIkrPIg" role="2Oq$k0">
                <ref role="3cqZAo" node="5NAQwIkrC5x" resolve="valueRole" />
              </node>
              <node concept="liA8E" id="5YIOneONiaU" role="2OqNvi">
                <ref role="37wK5l" node="5YIOneOMEJi" resolve="values" />
              </node>
            </node>
            <node concept="Rm8GO" id="5s497Vr1xXr" role="37wK5m">
              <ref role="Rm8GQ" node="5s497Vr1lsT" resolve="COMMA" />
              <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqYROE" role="3cqZAp">
          <node concept="1rXfSq" id="5s497VqYROF" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497VqYROG" role="37wK5m">
              <property role="Xl_RC" value="\&quot;" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqY$j3" role="3cqZAp">
          <node concept="Rm8GO" id="5s497Vr8mvv" role="3clFbG">
            <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NAQwIkr$aL" role="jymVt" />
    <node concept="3clFb_" id="5NAQwIkrgDd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitList" />
      <node concept="3uibUv" id="5NAQwIkrgDn" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5NAQwIkrgDf" role="1B3o_S" />
      <node concept="37vLTG" id="5NAQwIkrgDg" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="5NAQwIkrgDh" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5NAQwIkrgDm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5NAQwIkrgDo" role="3clF47">
        <node concept="3clFbF" id="5s497Vr0nKk" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr0nKi" role="3clFbG">
            <ref role="37wK5l" node="5s497VqX_iJ" resolve="incIndent" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr0n$C" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr0n$A" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZfX$" resolve="newLine" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr0pa1" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr0pa2" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2YIFZM" id="5s497Vr0pa3" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5NAQwIkrqer" role="37wK5m">
                <node concept="37vLTw" id="5NAQwIkrpYE" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NAQwIkrgDg" resolve="list" />
                </node>
                <node concept="liA8E" id="5NAQwIkrrbq" role="2OqNvi">
                  <ref role="37wK5l" node="3OPtF03lcuq" resolve="acceptVisitor" />
                  <node concept="37vLTw" id="5NAQwIkrrm2" role="37wK5m">
                    <ref role="3cqZAo" node="3gJBs5s$5vV" resolve="symbolProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr0pa7" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr0pa8" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="Xl_RD" id="5s497Vr0pa9" role="37wK5m">
              <property role="Xl_RC" value="=[" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr1K8Z" role="3cqZAp">
          <node concept="1rXfSq" id="5s497Vr1K8Y" role="3clFbG">
            <ref role="37wK5l" node="5s497VqX_iJ" resolve="incIndent" />
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vr99v$" role="3cqZAp">
          <node concept="2OqwBi" id="5s497Vr9a0Q" role="3clFbG">
            <node concept="37vLTw" id="5s497Vr99vy" role="2Oq$k0">
              <ref role="3cqZAo" node="5s497Vr90Ww" resolve="endActions" />
            </node>
            <node concept="liA8E" id="5s497Vr9bbf" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
              <node concept="Rm8GO" id="5s497Vr9c7o" role="37wK5m">
                <ref role="Rm8GQ" node="5s497Vr8Sxa" resolve="END_LIST" />
                <ref role="1Px2BO" node="5s497Vr8LPr" resolve="PrettyPrinter.EndWalk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqY$Gh" role="3cqZAp">
          <node concept="Rm8GO" id="5s497VqY$Gi" role="3clFbG">
            <ref role="Rm8GQ" node="2q_78a95hAM" resolve="WALK" />
            <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFtOEd" role="jymVt" />
    <node concept="3clFb_" id="5NAQwIkrUTT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="visitVariable" />
      <node concept="37vLTG" id="5NAQwIkrUTU" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3uibUv" id="5NAQwIkrUTV" role="1tU5fm">
          <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
        </node>
      </node>
      <node concept="3uibUv" id="5NAQwIkrUU3" role="3clF45">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
      <node concept="3Tm1VV" id="5NAQwIkrUTX" role="1B3o_S" />
      <node concept="2AHcQZ" id="5NAQwIkrUU2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5NAQwIkrUU4" role="3clF47">
        <node concept="3clFbF" id="6_KEUt$WyUj" role="3cqZAp">
          <node concept="1rXfSq" id="6_KEUt$WyUk" role="3clFbG">
            <ref role="37wK5l" node="5s497VqZfX$" resolve="newLine" />
          </node>
        </node>
        <node concept="3clFbF" id="6_KEUt$WxC9" role="3cqZAp">
          <node concept="1rXfSq" id="6_KEUt$WxCa" role="3clFbG">
            <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
            <node concept="2YIFZM" id="3gJBs5sA4CE" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5NAQwIks1E3" role="37wK5m">
                <node concept="37vLTw" id="5NAQwIks1p8" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NAQwIkrUTU" resolve="variable" />
                </node>
                <node concept="liA8E" id="5NAQwIks2Bg" role="2OqNvi">
                  <ref role="37wK5l" node="104EUzFOWtH" resolve="acceptVisitor" />
                  <node concept="37vLTw" id="5NAQwIks2LZ" role="37wK5m">
                    <ref role="3cqZAo" node="3gJBs5s$5vV" resolve="symbolProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="104EUzG3IJV" role="3cqZAp">
          <node concept="Rm8GO" id="104EUzG3IJW" role="3clFbG">
            <ref role="Rm8GQ" node="2q_78a95hAN" resolve="CONTINUE" />
            <ref role="1Px2BO" node="2q_78a95hAL" resolve="Action" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzG3EHu" role="jymVt" />
    <node concept="3clFb_" id="5s497Vr5fa7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="endWalk" />
      <node concept="3cqZAl" id="5s497Vr5fa8" role="3clF45" />
      <node concept="3Tm1VV" id="5s497Vr5fa9" role="1B3o_S" />
      <node concept="3clFbS" id="5s497Vr5fab" role="3clF47">
        <node concept="3clFbF" id="5s497Vr94f1" role="3cqZAp">
          <node concept="2OqwBi" id="5s497Vr96$6" role="3clFbG">
            <node concept="2OqwBi" id="5s497Vr94Qj" role="2Oq$k0">
              <node concept="37vLTw" id="5s497Vr94f0" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497Vr90Ww" resolve="endActions" />
              </node>
              <node concept="liA8E" id="5s497Vr968i" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
              </node>
            </node>
            <node concept="liA8E" id="5s497Vr97xI" role="2OqNvi">
              <ref role="37wK5l" node="5s497Vr8NSN" resolve="endAction" />
              <node concept="Xjq3P" id="5s497Vr97RL" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5s497Vr5gwK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497Vr5hGF" role="jymVt" />
    <node concept="3clFb_" id="5s497VqYrbO" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3cqZAl" id="5s497VqYrbQ" role="3clF45" />
      <node concept="3Tm1VV" id="5s497VqYrbR" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqYrbS" role="3clF47">
        <node concept="3clFbF" id="5s497VqYto1" role="3cqZAp">
          <node concept="2OqwBi" id="5s497VqYtsk" role="3clFbG">
            <node concept="37vLTw" id="5s497VqYto0" role="2Oq$k0">
              <ref role="3cqZAo" node="5s497VqXYms" resolve="sb" />
            </node>
            <node concept="liA8E" id="5s497VqYtM4" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="37vLTw" id="5s497VqYtPV" role="37wK5m">
                <ref role="3cqZAo" node="5s497VqYsMT" resolve="s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqYsMT" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="17QB3L" id="3_ALDc$_5ns" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqYDLp" role="jymVt" />
    <node concept="3clFb_" id="5s497VqYCA_" role="jymVt">
      <property role="TrG5h" value="appendCollection" />
      <node concept="3cqZAl" id="5s497VqYCAA" role="3clF45" />
      <node concept="3Tm1VV" id="5s497VqYCAB" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqYCAC" role="3clF47">
        <node concept="3cpWs8" id="5s497Vr1auX" role="3cqZAp">
          <node concept="3cpWsn" id="5s497Vr1av0" role="3cpWs9">
            <property role="TrG5h" value="first" />
            <node concept="10P_77" id="5s497Vr1auV" role="1tU5fm" />
            <node concept="3clFbT" id="5s497Vr1a$Y" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5s497VqYMdf" role="3cqZAp">
          <node concept="3clFbS" id="5s497VqYMdg" role="2LFqv$">
            <node concept="3clFbJ" id="5s497Vr1aFp" role="3cqZAp">
              <node concept="3clFbS" id="5s497Vr1aFs" role="3clFbx">
                <node concept="1Dw8fO" id="5s497Vr1b5R" role="3cqZAp">
                  <node concept="3clFbS" id="5s497Vr1b5S" role="2LFqv$">
                    <node concept="3clFbF" id="5s497Vr1dc_" role="3cqZAp">
                      <node concept="2OqwBi" id="5s497Vr1dhD" role="3clFbG">
                        <node concept="AH0OO" id="5s497Vr1eyp" role="2Oq$k0">
                          <node concept="37vLTw" id="5s497Vr1e$$" role="AHEQo">
                            <ref role="3cqZAo" node="5s497Vr1b5T" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="5s497Vr1dc$" role="AHHXb">
                            <ref role="3cqZAo" node="5s497Vr16N5" resolve="separator" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5s497Vr1eNQ" role="2OqNvi">
                          <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
                          <node concept="Xjq3P" id="5s497Vr1eTB" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5s497Vr1b5T" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="5s497Vr1b70" role="1tU5fm" />
                    <node concept="3cmrfG" id="5s497Vr1b8$" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="5s497Vr1bv$" role="1Dwp0S">
                    <node concept="2OqwBi" id="5s497Vr1bZJ" role="3uHU7w">
                      <node concept="37vLTw" id="5s497Vr1bxf" role="2Oq$k0">
                        <ref role="3cqZAo" node="5s497Vr16N5" resolve="separator" />
                      </node>
                      <node concept="1Rwk04" id="5s497Vr1cok" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="5s497Vr1b9X" role="3uHU7B">
                      <ref role="3cqZAo" node="5s497Vr1b5T" resolve="i" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="5s497Vr1cJk" role="1Dwrff">
                    <node concept="37vLTw" id="5s497Vr1cJm" role="2$L3a6">
                      <ref role="3cqZAo" node="5s497Vr1b5T" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5s497Vr1iAo" role="3cqZAp">
                  <node concept="37vLTI" id="5s497Vr1iKu" role="3clFbG">
                    <node concept="3clFbT" id="5s497Vr1iKS" role="37vLTx">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="37vLTw" id="5s497Vr1iAm" role="37vLTJ">
                      <ref role="3cqZAo" node="5s497Vr1av0" resolve="first" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5s497Vr1aLI" role="3clFbw">
                <node concept="37vLTw" id="5s497Vr1aMm" role="3fr31v">
                  <ref role="3cqZAo" node="5s497Vr1av0" resolve="first" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s497VqYN5o" role="3cqZAp">
              <node concept="2OqwBi" id="5s497VqYNOt" role="3clFbG">
                <node concept="37vLTw" id="5s497VqYN5n" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqXYms" resolve="sb" />
                </node>
                <node concept="liA8E" id="5s497VqYOgM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2YIFZM" id="5s497VqYOz0" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="37vLTw" id="5s497VqYOS_" role="37wK5m">
                      <ref role="3cqZAo" node="5s497VqYMdj" resolve="o" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5s497VqYMdj" role="1Duv9x">
            <property role="TrG5h" value="o" />
            <node concept="3uibUv" id="5s497VqYMFm" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="37vLTw" id="5s497VqYMdo" role="1DdaDG">
            <ref role="3cqZAo" node="5s497VqYCAI" resolve="objects" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5s497VqYCAI" role="3clF46">
        <property role="TrG5h" value="objects" />
        <node concept="3uibUv" id="5s497VqYGDZ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3qTvmN" id="5s497VqYHku" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5s497Vr16N5" role="3clF46">
        <property role="TrG5h" value="separator" />
        <node concept="8X2XB" id="5s497Vr18s_" role="1tU5fm">
          <node concept="3uibUv" id="5s497Vr18bD" role="8Xvag">
            <ref role="3uigEE" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497Vr0we2" role="jymVt" />
    <node concept="3clFb_" id="5s497VqXD1E" role="jymVt">
      <property role="TrG5h" value="appendIndent" />
      <node concept="37vLTG" id="5s497Vr0Z0K" role="3clF46">
        <property role="TrG5h" value="indent" />
        <node concept="17QB3L" id="3_ALDc$_5nu" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5s497VqXD1G" role="3clF45" />
      <node concept="3Tm6S6" id="5s497VqXDkP" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqXD1I" role="3clF47">
        <node concept="1Dw8fO" id="5s497VqXFCS" role="3cqZAp">
          <node concept="3clFbS" id="5s497VqXFCT" role="2LFqv$">
            <node concept="3clFbF" id="5s497VqXGD7" role="3cqZAp">
              <node concept="2OqwBi" id="5s497VqXGGa" role="3clFbG">
                <node concept="37vLTw" id="5s497VqXGD6" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqXYms" resolve="sb" />
                </node>
                <node concept="liA8E" id="5s497VqXGXT" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="37vLTw" id="5s497Vr13sj" role="37wK5m">
                    <ref role="3cqZAo" node="5s497Vr0Z0K" resolve="indent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5s497VqXFCU" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5s497VqXFE1" role="1tU5fm" />
            <node concept="3cmrfG" id="5s497VqXFGk" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5s497VqXG2u" role="1Dwp0S">
            <node concept="37vLTw" id="5s497VqXG6a" role="3uHU7w">
              <ref role="3cqZAo" node="5s497VqXzcI" resolve="indentLevel" />
            </node>
            <node concept="37vLTw" id="5s497VqXFHH" role="3uHU7B">
              <ref role="3cqZAo" node="5s497VqXFCU" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5s497VqXGwU" role="1Dwrff">
            <node concept="37vLTw" id="5s497VqXGwW" role="2$L3a6">
              <ref role="3cqZAo" node="5s497VqXFCU" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqZ5By" role="jymVt" />
    <node concept="3clFb_" id="5s497VqZ6ry" role="jymVt">
      <property role="TrG5h" value="newToken" />
      <node concept="3cqZAl" id="5s497VqZ6r$" role="3clF45" />
      <node concept="3Tm6S6" id="5s497VqZgLq" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqZ6rA" role="3clF47">
        <node concept="3clFbF" id="5s497VreJ7c" role="3cqZAp">
          <node concept="2OqwBi" id="5s497VreJHI" role="3clFbG">
            <node concept="37vLTw" id="5s497VreJ7a" role="2Oq$k0">
              <ref role="3cqZAo" node="5s497VqZ0L8" resolve="separator" />
            </node>
            <node concept="liA8E" id="5s497VreKe1" role="2OqNvi">
              <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
              <node concept="Xjq3P" id="5s497VreKpi" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZ8_d" role="3cqZAp">
          <node concept="37vLTI" id="5s497VreLa9" role="3clFbG">
            <node concept="Rm8GO" id="5s497VreL_w" role="37vLTx">
              <ref role="Rm8GQ" node="5s497Vres6e" resolve="SPACE" />
              <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
            </node>
            <node concept="37vLTw" id="5s497VqZ8_c" role="37vLTJ">
              <ref role="3cqZAo" node="5s497VqZ0L8" resolve="separator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqZe_m" role="jymVt" />
    <node concept="3clFb_" id="5s497VqZfX$" role="jymVt">
      <property role="TrG5h" value="newLine" />
      <node concept="3cqZAl" id="5s497VqZfXA" role="3clF45" />
      <node concept="3Tm6S6" id="5s497VqZhvN" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqZfXC" role="3clF47">
        <node concept="3clFbJ" id="104EUzFm3ub" role="3cqZAp">
          <node concept="3clFbS" id="104EUzFm3ue" role="3clFbx">
            <node concept="3clFbF" id="5s497Vr8DI5" role="3cqZAp">
              <node concept="2OqwBi" id="5s497Vr8DI6" role="3clFbG">
                <node concept="Rm8GO" id="5s497Vr8DY4" role="2Oq$k0">
                  <ref role="Rm8GQ" node="5s497Vr0Gpo" resolve="EOL" />
                  <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
                </node>
                <node concept="liA8E" id="5s497Vr8DI8" role="2OqNvi">
                  <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
                  <node concept="Xjq3P" id="5s497Vr8DI9" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s497Vr8DpW" role="3cqZAp">
              <node concept="2OqwBi" id="5s497Vr8DpX" role="3clFbG">
                <node concept="Rm8GO" id="5s497Vr8DpY" role="2Oq$k0">
                  <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
                  <ref role="Rm8GQ" node="5s497Vr0AJd" resolve="INDENT" />
                </node>
                <node concept="liA8E" id="5s497Vr8DpZ" role="2OqNvi">
                  <ref role="37wK5l" node="5s497Vr0_pl" resolve="appendTo" />
                  <node concept="Xjq3P" id="5s497Vr8Dq0" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s497Vr07Vd" role="3cqZAp">
              <node concept="37vLTI" id="5s497Vr088m" role="3clFbG">
                <node concept="37vLTw" id="5s497Vr07Vb" role="37vLTJ">
                  <ref role="3cqZAo" node="5s497VqZ0L8" resolve="separator" />
                </node>
                <node concept="Rm8GO" id="5s497VreM2o" role="37vLTx">
                  <ref role="Rm8GQ" node="5s497Vr0EhU" resolve="EMPTY" />
                  <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="104EUzFm3K7" role="3clFbw">
            <ref role="3cqZAo" node="104EUzFlXW7" resolve="rootPrinted" />
          </node>
          <node concept="9aQIb" id="104EUzFm4ig" role="9aQIa">
            <node concept="3clFbS" id="104EUzFm4ih" role="9aQI4">
              <node concept="3clFbF" id="104EUzFm4zt" role="3cqZAp">
                <node concept="37vLTI" id="104EUzFm4Lt" role="3clFbG">
                  <node concept="3clFbT" id="104EUzFm4Uq" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="104EUzFm4zs" role="37vLTJ">
                    <ref role="3cqZAo" node="104EUzFlXW7" resolve="rootPrinted" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497Vr0dgK" role="jymVt" />
    <node concept="3clFb_" id="5s497VqX_iJ" role="jymVt">
      <property role="TrG5h" value="incIndent" />
      <node concept="3cqZAl" id="5s497VqX_iL" role="3clF45" />
      <node concept="3Tm6S6" id="5s497VqXClq" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqX_iN" role="3clF47">
        <node concept="3clFbF" id="5s497VqX_Px" role="3cqZAp">
          <node concept="3uNrnE" id="5s497VqXAbi" role="3clFbG">
            <node concept="37vLTw" id="5s497VqXAbk" role="2$L3a6">
              <ref role="3cqZAo" node="5s497VqXzcI" resolve="indentLevel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZ3fH" role="3cqZAp">
          <node concept="37vLTI" id="5s497VqZ3wi" role="3clFbG">
            <node concept="37vLTw" id="5s497VqZ3fF" role="37vLTJ">
              <ref role="3cqZAo" node="5s497VqZ0L8" resolve="separator" />
            </node>
            <node concept="Rm8GO" id="5s497VreMwp" role="37vLTx">
              <ref role="Rm8GQ" node="5s497Vr0EhU" resolve="EMPTY" />
              <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXAn_" role="jymVt" />
    <node concept="3clFb_" id="5s497VqXACI" role="jymVt">
      <property role="TrG5h" value="decIndent" />
      <node concept="3cqZAl" id="5s497VqXACK" role="3clF45" />
      <node concept="3Tm6S6" id="5s497VqXCAJ" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqXACM" role="3clF47">
        <node concept="3clFbF" id="5s497VqXBp$" role="3cqZAp">
          <node concept="3uO5VW" id="5s497VqXBIv" role="3clFbG">
            <node concept="37vLTw" id="5s497VqXBIx" role="2$L3a6">
              <ref role="3cqZAo" node="5s497VqXzcI" resolve="indentLevel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497VqZ3Mz" role="3cqZAp">
          <node concept="37vLTI" id="5s497VqZ438" role="3clFbG">
            <node concept="37vLTw" id="5s497VqZ3Mx" role="37vLTJ">
              <ref role="3cqZAo" node="5s497VqZ0L8" resolve="separator" />
            </node>
            <node concept="Rm8GO" id="5s497VreN88" role="37vLTx">
              <ref role="Rm8GQ" node="5s497Vr0EhU" resolve="EMPTY" />
              <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497Vr8KpI" role="jymVt" />
    <node concept="Qs71p" id="5s497Vr8LPr" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="EndWalk" />
      <node concept="QsSxf" id="5s497Vr8Sxa" role="Qtgdg">
        <property role="TrG5h" value="END_LIST" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        <node concept="3clFb_" id="5s497Vr8SLw" role="2HKRsH">
          <property role="TrG5h" value="endAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="5s497Vr8V8B" role="3clF46">
            <property role="TrG5h" value="pp" />
            <node concept="3uibUv" id="5s497Vr8Vcm" role="1tU5fm">
              <ref role="3uigEE" node="5s497VqXwA7" resolve="PrettyPrinter" />
            </node>
          </node>
          <node concept="3cqZAl" id="5s497Vr8SLx" role="3clF45" />
          <node concept="3Tmbuc" id="5s497Vr8SLy" role="1B3o_S" />
          <node concept="3clFbS" id="5s497Vr8SL$" role="3clF47">
            <node concept="3clFbF" id="5s497Vr9eHx" role="3cqZAp">
              <node concept="2OqwBi" id="5s497Vr9eJ3" role="3clFbG">
                <node concept="37vLTw" id="5s497Vr9eHv" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vr8V8B" resolve="pp" />
                </node>
                <node concept="liA8E" id="5s497Vr9eUH" role="2OqNvi">
                  <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
                  <node concept="Xl_RD" id="5s497Vr9eV9" role="37wK5m">
                    <property role="Xl_RC" value="]" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s497Vr8VoB" role="3cqZAp">
              <node concept="2OqwBi" id="5s497Vr8VpF" role="3clFbG">
                <node concept="37vLTw" id="5s497Vr8VoA" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vr8V8B" resolve="pp" />
                </node>
                <node concept="liA8E" id="5s497Vr8Vvg" role="2OqNvi">
                  <ref role="37wK5l" node="5s497VqXACI" resolve="decIndent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="5s497VrcvXU" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="QsSxf" id="5s497Vr9kSP" role="Qtgdg">
        <property role="TrG5h" value="END_CHILDREN" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        <node concept="3clFb_" id="5s497Vr9lBv" role="2HKRsH">
          <property role="TrG5h" value="endAction" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="5s497Vr9lBw" role="3clF46">
            <property role="TrG5h" value="pp" />
            <node concept="3uibUv" id="5s497Vr9lBx" role="1tU5fm">
              <ref role="3uigEE" node="5s497VqXwA7" resolve="PrettyPrinter" />
            </node>
          </node>
          <node concept="3cqZAl" id="5s497Vr9lBy" role="3clF45" />
          <node concept="3Tmbuc" id="5s497Vr9lBz" role="1B3o_S" />
          <node concept="3clFbS" id="5s497Vr9lB_" role="3clF47">
            <node concept="3clFbF" id="5s497Vr9lRW" role="3cqZAp">
              <node concept="2OqwBi" id="5s497Vr9lSS" role="3clFbG">
                <node concept="37vLTw" id="5s497Vr9lRV" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vr9lBw" resolve="pp" />
                </node>
                <node concept="liA8E" id="5s497Vr9m3S" role="2OqNvi">
                  <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
                  <node concept="Xl_RD" id="5s497Vr9m4k" role="37wK5m">
                    <property role="Xl_RC" value=")" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="5s497VrcwfQ" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5s497Vr8NgH" role="1B3o_S" />
      <node concept="3clFb_" id="5s497Vr8NSN" role="jymVt">
        <property role="TrG5h" value="endAction" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="5s497Vr8WR3" role="3clF46">
          <property role="TrG5h" value="pp" />
          <node concept="3uibUv" id="5s497Vr8WR4" role="1tU5fm">
            <ref role="3uigEE" node="5s497VqXwA7" resolve="PrettyPrinter" />
          </node>
        </node>
        <node concept="3cqZAl" id="5s497Vr8NSO" role="3clF45" />
        <node concept="3Tmbuc" id="5s497Vr8Ob3" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr8NSQ" role="3clF47" />
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXCJ0" role="jymVt" />
    <node concept="Qs71p" id="5s497Vr0zK6" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Separator" />
      <node concept="QsSxf" id="5s497Vr0AJd" role="Qtgdg">
        <property role="TrG5h" value="INDENT" />
        <ref role="37wK5l" node="5s497Vr0EFQ" resolve="PrettyPrinter.Separator" />
        <node concept="Xl_RD" id="5s497Vr0EgK" role="37wK5m">
          <property role="Xl_RC" value="  " />
        </node>
        <node concept="3clFb_" id="5s497Vr0RG4" role="2HKRsH">
          <property role="TrG5h" value="appendTo" />
          <property role="1EzhhJ" value="false" />
          <node concept="37vLTG" id="5s497Vr0RG5" role="3clF46">
            <property role="TrG5h" value="pp" />
            <node concept="3uibUv" id="5s497Vr0RG6" role="1tU5fm">
              <ref role="3uigEE" node="5s497VqXwA7" resolve="PrettyPrinter" />
            </node>
          </node>
          <node concept="3cqZAl" id="5s497Vr0RG7" role="3clF45" />
          <node concept="3Tmbuc" id="5s497Vr8PRt" role="1B3o_S" />
          <node concept="3clFbS" id="5s497Vr0RGa" role="3clF47">
            <node concept="3clFbF" id="5s497Vr0Xa4" role="3cqZAp">
              <node concept="2OqwBi" id="5s497Vr0Xc3" role="3clFbG">
                <node concept="37vLTw" id="5s497Vr0Xa3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497Vr0RG5" resolve="pp" />
                </node>
                <node concept="liA8E" id="5s497Vr0Xk3" role="2OqNvi">
                  <ref role="37wK5l" node="5s497VqXD1E" resolve="appendIndent" />
                  <node concept="2OqwBi" id="5s497Vr0X_Y" role="37wK5m">
                    <node concept="Xjq3P" id="5s497Vr0Xxo" role="2Oq$k0" />
                    <node concept="2OwXpG" id="5s497Vr0XNU" role="2OqNvi">
                      <ref role="2Oxat5" node="5s497Vr0F3Z" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="5s497VrcuHj" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="QsSxf" id="5s497Vr0EhU" role="Qtgdg">
        <property role="TrG5h" value="EMPTY" />
        <ref role="37wK5l" node="5s497Vr0EFQ" resolve="PrettyPrinter.Separator" />
        <node concept="Xl_RD" id="5s497Vr0Gok" role="37wK5m" />
      </node>
      <node concept="QsSxf" id="5s497Vres6e" role="Qtgdg">
        <property role="TrG5h" value="SPACE" />
        <ref role="37wK5l" node="5s497Vr0EFQ" resolve="PrettyPrinter.Separator" />
        <node concept="Xl_RD" id="5s497Vres6f" role="37wK5m">
          <property role="Xl_RC" value=" " />
        </node>
      </node>
      <node concept="QsSxf" id="5s497Vr0Gpo" role="Qtgdg">
        <property role="TrG5h" value="EOL" />
        <ref role="37wK5l" node="5s497Vr0EFQ" resolve="PrettyPrinter.Separator" />
        <node concept="Xl_RD" id="5s497Vr0G$9" role="37wK5m">
          <property role="Xl_RC" value="\n" />
        </node>
      </node>
      <node concept="QsSxf" id="5s497Vr1lsT" role="Qtgdg">
        <property role="TrG5h" value="COMMA" />
        <ref role="37wK5l" node="5s497Vr0EFQ" resolve="PrettyPrinter.Separator" />
        <node concept="Xl_RD" id="5s497Vr1lOu" role="37wK5m">
          <property role="Xl_RC" value=", " />
        </node>
      </node>
      <node concept="3Tm6S6" id="5s497Vr0Kqj" role="1B3o_S" />
      <node concept="3clFbW" id="5s497Vr0EFQ" role="jymVt">
        <node concept="3Tm6S6" id="262rtspU0WW" role="1B3o_S" />
        <node concept="37vLTG" id="5s497Vr0ENY" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="3_ALDc$_5nt" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="5s497Vr0EFS" role="3clF45" />
        <node concept="3clFbS" id="5s497Vr0EFU" role="3clF47">
          <node concept="3clFbF" id="5s497Vr0F43" role="3cqZAp">
            <node concept="37vLTI" id="5s497Vr0F45" role="3clFbG">
              <node concept="2OqwBi" id="5s497Vr0F49" role="37vLTJ">
                <node concept="Xjq3P" id="5s497Vr0F4c" role="2Oq$k0" />
                <node concept="2OwXpG" id="5s497Vr0F48" role="2OqNvi">
                  <ref role="2Oxat5" node="5s497Vr0F3Z" resolve="value" />
                </node>
              </node>
              <node concept="37vLTw" id="5s497Vr0F4d" role="37vLTx">
                <ref role="3cqZAo" node="5s497Vr0ENY" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5s497Vr0_pl" role="jymVt">
        <property role="TrG5h" value="appendTo" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="5s497Vr0Dfz" role="3clF46">
          <property role="TrG5h" value="pp" />
          <node concept="3uibUv" id="5s497Vr0DzF" role="1tU5fm">
            <ref role="3uigEE" node="5s497VqXwA7" resolve="PrettyPrinter" />
          </node>
        </node>
        <node concept="3cqZAl" id="5s497Vr0_pm" role="3clF45" />
        <node concept="3Tmbuc" id="5s497Vr8Pph" role="1B3o_S" />
        <node concept="3clFbS" id="5s497Vr0_po" role="3clF47">
          <node concept="3clFbF" id="5s497Vr0SR6" role="3cqZAp">
            <node concept="2OqwBi" id="5s497Vr0SS0" role="3clFbG">
              <node concept="37vLTw" id="5s497Vr1kU_" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497Vr0Dfz" resolve="pp" />
              </node>
              <node concept="liA8E" id="5s497Vr0T2u" role="2OqNvi">
                <ref role="37wK5l" node="5s497VqYrbO" resolve="append" />
                <node concept="2OqwBi" id="5s497Vr0TGH" role="37wK5m">
                  <node concept="Xjq3P" id="5s497Vr0Thk" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5s497Vr0TUF" role="2OqNvi">
                    <ref role="2Oxat5" node="5s497Vr0F3Z" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="5s497Vr0F3Z" role="jymVt">
        <property role="TrG5h" value="value" />
        <node concept="3Tmbuc" id="5s497Vr2kzk" role="1B3o_S" />
        <node concept="17QB3L" id="3_ALDc$_5nq" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3gJBs5s$9Ad" role="jymVt" />
    <node concept="312cEu" id="3gJBs5s$bxr" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="DefaultsSymbolProvider" />
      <node concept="3clFb_" id="6YPNC4PuRfI" role="jymVt">
        <property role="TrG5h" value="visitAbstract" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="6YPNC4PuRfQ" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="6YPNC4PuRfK" role="1B3o_S" />
        <node concept="37vLTG" id="6YPNC4PuRfO" role="3clF46">
          <property role="TrG5h" value="treeForm" />
          <node concept="3uibUv" id="6YPNC4PuRfP" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="6YPNC4PuRfR" role="3clF47">
          <node concept="3clFbF" id="6YPNC4PuVMx" role="3cqZAp">
            <node concept="2OqwBi" id="6YPNC4PuWku" role="3clFbG">
              <node concept="37vLTw" id="6YPNC4PuVMw" role="2Oq$k0">
                <ref role="3cqZAo" node="6YPNC4PuRfO" resolve="treeForm" />
              </node>
              <node concept="liA8E" id="6YPNC4PuWPp" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4PuRfS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3gJBs5s$cV_" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="visitValue" />
        <node concept="37vLTG" id="3gJBs5s$cVA" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="3uibUv" id="3gJBs5s$cVB" role="1tU5fm">
            <ref role="3uigEE" node="2xQ7eRAD2dj" resolve="Value" />
            <node concept="16syzq" id="3gJBs5s$cVC" role="11_B2D">
              <ref role="16sUi3" node="3gJBs5s$cVG" resolve="V" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3gJBs5s$cVD" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="3gJBs5s$cVE" role="1B3o_S" />
        <node concept="16euLQ" id="3gJBs5s$cVG" role="16eVyc">
          <property role="TrG5h" value="V" />
        </node>
        <node concept="3clFbS" id="3gJBs5s$cVH" role="3clF47">
          <node concept="3clFbF" id="3gJBs5s$BMD" role="3cqZAp">
            <node concept="37vLTw" id="3gJBs5s$BMC" role="3clFbG">
              <ref role="3cqZAo" node="3gJBs5s$cVA" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3gJBs5s$bxs" role="1B3o_S" />
      <node concept="3uibUv" id="3gJBs5s$cLm" role="EKbjA">
        <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        <node concept="3uibUv" id="6YPNC4OJ47P" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4OOjf8" role="1zkMxy">
        <ref role="3uigEE" node="6HT7BWBQcxv" resolve="TreeForm.Visitor.Stub" />
        <node concept="3uibUv" id="6YPNC4OOlep" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqXz0L" role="jymVt" />
    <node concept="312cEg" id="5s497Vr90Ww" role="jymVt">
      <property role="TrG5h" value="endActions" />
      <node concept="3Tm6S6" id="5s497Vr90Wx" role="1B3o_S" />
      <node concept="3uibUv" id="5s497Vr92gN" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="5s497Vr92xe" role="11_B2D">
          <ref role="3uigEE" node="5s497Vr8LPr" resolve="PrettyPrinter.EndWalk" />
        </node>
      </node>
      <node concept="2ShNRf" id="5s497Vr92PY" role="33vP2m">
        <node concept="1pGfFk" id="5s497Vr92Im" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
          <node concept="3uibUv" id="5s497Vr92In" role="1pMfVU">
            <ref role="3uigEE" node="5s497Vr8LPr" resolve="PrettyPrinter.EndWalk" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5s497VqXYms" role="jymVt">
      <property role="TrG5h" value="sb" />
      <node concept="3Tm6S6" id="5s497VqXYmt" role="1B3o_S" />
      <node concept="3uibUv" id="5s497VqXYTq" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
      </node>
      <node concept="2ShNRf" id="5s497VqY1wG" role="33vP2m">
        <node concept="1pGfFk" id="5s497VqY1o6" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5s497VqZ0L8" role="jymVt">
      <property role="TrG5h" value="separator" />
      <node concept="3Tm6S6" id="5s497VqZ0L9" role="1B3o_S" />
      <node concept="3uibUv" id="5s497VreuRg" role="1tU5fm">
        <ref role="3uigEE" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
      </node>
      <node concept="Rm8GO" id="5s497VreGuC" role="33vP2m">
        <ref role="Rm8GQ" node="5s497Vr0EhU" resolve="EMPTY" />
        <ref role="1Px2BO" node="5s497Vr0zK6" resolve="PrettyPrinter.Separator" />
      </node>
    </node>
    <node concept="312cEg" id="5s497VqXzcI" role="jymVt">
      <property role="TrG5h" value="indentLevel" />
      <node concept="3Tm6S6" id="5s497VqXzcJ" role="1B3o_S" />
      <node concept="10Oyi0" id="5s497VqXzpN" role="1tU5fm" />
      <node concept="3cmrfG" id="5s497VqXzCl" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="312cEg" id="104EUzFlXW7" role="jymVt">
      <property role="TrG5h" value="rootPrinted" />
      <node concept="3Tm6S6" id="104EUzFlXW8" role="1B3o_S" />
      <node concept="10P_77" id="104EUzFm03d" role="1tU5fm" />
      <node concept="3clFbT" id="104EUzFm0DE" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="3gJBs5s$5vV" role="jymVt">
      <property role="TrG5h" value="symbolProvider" />
      <node concept="3Tm6S6" id="3gJBs5s$5vW" role="1B3o_S" />
      <node concept="3uibUv" id="3gJBs5s$5vY" role="1tU5fm">
        <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
      </node>
    </node>
    <node concept="2tJIrI" id="262rtspU0ZZ" role="jymVt" />
    <node concept="3uibUv" id="6YPNC4PgOLv" role="1zkMxy">
      <ref role="3uigEE" node="6HT7BWBQcxv" resolve="TreeForm.Visitor.Stub" />
      <node concept="3uibUv" id="6YPNC4PgSTi" role="11_B2D">
        <ref role="3uigEE" node="2q_78a95hAL" resolve="Action" />
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="2q_78a95hAL">
    <property role="TrG5h" value="Action" />
    <node concept="QsSxf" id="2q_78a95hAM" role="Qtgdg">
      <property role="TrG5h" value="WALK" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="2q_78a95hAN" role="Qtgdg">
      <property role="TrG5h" value="CONTINUE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="2q_78a95hAO" role="Qtgdg">
      <property role="TrG5h" value="STOP" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="2q_78a95hAP" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4peSo3CLajR">
    <property role="TrG5h" value="PrintDelegate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4peSo3CLatc" role="jymVt" />
    <node concept="Wx3nA" id="4peSo3CLXMD" role="jymVt">
      <property role="TrG5h" value="DELEGATE" />
      <node concept="3Tm6S6" id="4peSo3CLXMF" role="1B3o_S" />
      <node concept="3uibUv" id="4peSo3CLXS_" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="3uibUv" id="4peSo3CLXTs" role="11_B2D">
          <ref role="3uigEE" node="4peSo3CLajR" resolve="PrintDelegate" />
        </node>
      </node>
      <node concept="2ShNRf" id="4peSo3CLXX8" role="33vP2m">
        <node concept="YeOm9" id="4peSo3CLXZq" role="2ShVmc">
          <node concept="1Y3b0j" id="4peSo3CLXZt" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
            <ref role="1Y3XeK" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
            <node concept="3Tm1VV" id="4peSo3CLXZu" role="1B3o_S" />
            <node concept="3uibUv" id="4peSo3CLXX7" role="2Ghqu4">
              <ref role="3uigEE" node="4peSo3CLajR" resolve="PrintDelegate" />
            </node>
            <node concept="3clFb_" id="4peSo3CLY2o" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="initialValue" />
              <property role="DiZV1" value="false" />
              <property role="IEkAT" value="false" />
              <node concept="3Tmbuc" id="4peSo3CLY2p" role="1B3o_S" />
              <node concept="3uibUv" id="4peSo3CLY2u" role="3clF45">
                <ref role="3uigEE" node="4peSo3CLajR" resolve="PrintDelegate" />
              </node>
              <node concept="3clFbS" id="4peSo3CLY2v" role="3clF47">
                <node concept="3clFbF" id="4peSo3CLYi0" role="3cqZAp">
                  <node concept="2ShNRf" id="4peSo3CLYi2" role="3clFbG">
                    <node concept="YeOm9" id="4peSo3CLYi3" role="2ShVmc">
                      <node concept="1Y3b0j" id="4peSo3CLYi4" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" node="4peSo3CLajR" resolve="PrintDelegate" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="4peSo3CLYi5" role="1B3o_S" />
                        <node concept="3clFb_" id="6r6omRlcrc6" role="jymVt">
                          <property role="TrG5h" value="doPrint" />
                          <property role="1EzhhJ" value="false" />
                          <node concept="37vLTG" id="6r6omRlcrc7" role="3clF46">
                            <property role="TrG5h" value="tf" />
                            <node concept="3uibUv" id="6r6omRlcrc8" role="1tU5fm">
                              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                            </node>
                          </node>
                          <node concept="17QB3L" id="6r6omRlcrc9" role="3clF45" />
                          <node concept="3Tm1VV" id="6r6omRlcrca" role="1B3o_S" />
                          <node concept="3clFbS" id="6r6omRlcrcd" role="3clF47">
                            <node concept="3clFbF" id="6r6omRld6lc" role="3cqZAp">
                              <node concept="2YIFZM" id="6r6omRld6pK" role="3clFbG">
                                <ref role="37wK5l" node="5s497VqXK1B" resolve="prettyPrint" />
                                <ref role="1Pybhc" node="5s497VqXwA7" resolve="PrettyPrinter" />
                                <node concept="37vLTw" id="6r6omRld6tO" role="37wK5m">
                                  <ref role="3cqZAo" node="6r6omRlcrc7" resolve="tf" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="6r6omRlcrI8" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4peSo3CLY2w" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CM25V" role="jymVt" />
    <node concept="Wx3nA" id="4peSo3CM3Qf" role="jymVt">
      <property role="TrG5h" value="STACK" />
      <node concept="3Tm6S6" id="4peSo3CM3Qh" role="1B3o_S" />
      <node concept="3uibUv" id="4peSo3CM3WU" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="4peSo3CM3YT" role="11_B2D">
          <ref role="3uigEE" node="4peSo3CLajR" resolve="PrintDelegate" />
        </node>
      </node>
      <node concept="2ShNRf" id="4peSo3CM4e2" role="33vP2m">
        <node concept="1pGfFk" id="4peSo3CM4du" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
          <node concept="3uibUv" id="4peSo3CM4dv" role="1pMfVU">
            <ref role="3uigEE" node="4peSo3CLajR" resolve="PrintDelegate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CM41r" role="jymVt" />
    <node concept="2YIFZL" id="3sb6Qlvetq2" role="jymVt">
      <property role="TrG5h" value="withDelegate" />
      <node concept="37vLTG" id="3sb6QlvetJI" role="3clF46">
        <property role="TrG5h" value="delegate" />
        <node concept="3uibUv" id="3sb6QlvetMy" role="1tU5fm">
          <ref role="3uigEE" node="4peSo3CLajR" resolve="PrintDelegate" />
        </node>
      </node>
      <node concept="37vLTG" id="3sb6QlvetR9" role="3clF46">
        <property role="TrG5h" value="run" />
        <node concept="3uibUv" id="3sb6QlvetU1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3cqZAl" id="3sb6Qlvetq4" role="3clF45" />
      <node concept="3Tm1VV" id="3sb6Qlvetq5" role="1B3o_S" />
      <node concept="3clFbS" id="3sb6Qlvetq6" role="3clF47">
        <node concept="2GUZhq" id="3sb6QlvetWb" role="3cqZAp">
          <node concept="3clFbS" id="3sb6QlvetWc" role="2GV8ay">
            <node concept="3clFbF" id="3sb6QlvetWY" role="3cqZAp">
              <node concept="1rXfSq" id="3sb6QlvetWX" role="3clFbG">
                <ref role="37wK5l" node="4peSo3CM2Ms" resolve="pushDelegate" />
                <node concept="37vLTw" id="3sb6QlvetZo" role="37wK5m">
                  <ref role="3cqZAo" node="3sb6QlvetJI" resolve="delegate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3sb6Qlveu0w" role="3cqZAp">
              <node concept="2OqwBi" id="3sb6Qlveu2H" role="3clFbG">
                <node concept="37vLTw" id="3sb6Qlveu0u" role="2Oq$k0">
                  <ref role="3cqZAo" node="3sb6QlvetR9" resolve="run" />
                </node>
                <node concept="liA8E" id="3sb6Qlveu50" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run():void" resolve="run" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3sb6Qlveunm" role="3cqZAp" />
          </node>
          <node concept="3clFbS" id="3sb6QlvetWd" role="2GVbov">
            <node concept="3clFbF" id="3sb6Qlveu6n" role="3cqZAp">
              <node concept="1rXfSq" id="3sb6Qlveu6m" role="3clFbG">
                <ref role="37wK5l" node="4peSo3CMbfh" resolve="popDelegate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3sb6QlvetcL" role="jymVt" />
    <node concept="2YIFZL" id="4peSo3CM2Ms" role="jymVt">
      <property role="TrG5h" value="pushDelegate" />
      <node concept="37vLTG" id="4peSo3CM30y" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="4peSo3CM31B" role="1tU5fm">
          <ref role="3uigEE" node="4peSo3CLajR" resolve="PrintDelegate" />
        </node>
      </node>
      <node concept="3cqZAl" id="4peSo3CM2Mu" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3CM2Mv" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CM2Mw" role="3clF47">
        <node concept="3clFbF" id="4peSo3CM4s9" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CM4SX" role="3clFbG">
            <node concept="10M0yZ" id="6r6omRlcouE" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CM3Qf" resolve="STACK" />
              <ref role="1PxDUh" node="4peSo3CLajR" resolve="PrintDelegate" />
            </node>
            <node concept="liA8E" id="4peSo3CM95m" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~LinkedList.push(java.lang.Object):void" resolve="push" />
              <node concept="2OqwBi" id="4peSo3CM9sr" role="37wK5m">
                <node concept="10M0yZ" id="6r6omRlcouF" role="2Oq$k0">
                  <ref role="3cqZAo" node="4peSo3CLXMD" resolve="DELEGATE" />
                  <ref role="1PxDUh" node="4peSo3CLajR" resolve="PrintDelegate" />
                </node>
                <node concept="liA8E" id="4peSo3CM9WK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4peSo3CMahd" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CManT" role="3clFbG">
            <node concept="10M0yZ" id="6r6omRlcouG" role="2Oq$k0">
              <ref role="3cqZAo" node="4peSo3CLXMD" resolve="DELEGATE" />
              <ref role="1PxDUh" node="4peSo3CLajR" resolve="PrintDelegate" />
            </node>
            <node concept="liA8E" id="4peSo3CMaA0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object):void" resolve="set" />
              <node concept="37vLTw" id="4peSo3CMaCS" role="37wK5m">
                <ref role="3cqZAo" node="4peSo3CM30y" resolve="factory" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CMaOq" role="jymVt" />
    <node concept="2YIFZL" id="4peSo3CMbfh" role="jymVt">
      <property role="TrG5h" value="popDelegate" />
      <node concept="3cqZAl" id="4peSo3CMbfj" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3CMbfk" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CMbfl" role="3clF47">
        <node concept="3clFbF" id="4peSo3CMbws" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CMbxr" role="3clFbG">
            <node concept="10M0yZ" id="6r6omRlcouH" role="2Oq$k0">
              <ref role="1PxDUh" node="4peSo3CLajR" resolve="PrintDelegate" />
              <ref role="3cqZAo" node="4peSo3CLXMD" resolve="DELEGATE" />
            </node>
            <node concept="liA8E" id="4peSo3CMbHc" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object):void" resolve="set" />
              <node concept="2OqwBi" id="4peSo3CMce0" role="37wK5m">
                <node concept="10M0yZ" id="6r6omRlcouI" role="2Oq$k0">
                  <ref role="1PxDUh" node="4peSo3CLajR" resolve="PrintDelegate" />
                  <ref role="3cqZAo" node="4peSo3CM3Qf" resolve="STACK" />
                </node>
                <node concept="liA8E" id="4peSo3CMefU" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~LinkedList.pop():java.lang.Object" resolve="pop" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CM2GG" role="jymVt" />
    <node concept="2YIFZL" id="4peSo3CLatr" role="jymVt">
      <property role="TrG5h" value="print" />
      <node concept="37vLTG" id="6r6omRlcouK" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="6r6omRlcouL" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="17QB3L" id="6r6omRlcpy3" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3CLatu" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CLatv" role="3clF47">
        <node concept="3clFbF" id="4peSo3CLY$E" role="3cqZAp">
          <node concept="2OqwBi" id="4peSo3CLY$G" role="3clFbG">
            <node concept="2OqwBi" id="4peSo3CM0Qv" role="2Oq$k0">
              <node concept="10M0yZ" id="6r6omRlcouJ" role="2Oq$k0">
                <ref role="1PxDUh" node="4peSo3CLajR" resolve="PrintDelegate" />
                <ref role="3cqZAo" node="4peSo3CLXMD" resolve="DELEGATE" />
              </node>
              <node concept="liA8E" id="4peSo3CM1_m" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
              </node>
            </node>
            <node concept="liA8E" id="4peSo3CLY$I" role="2OqNvi">
              <ref role="37wK5l" node="4peSo3CLb4X" resolve="doPrint" />
              <node concept="37vLTw" id="4peSo3CLY$J" role="37wK5m">
                <ref role="3cqZAo" node="6r6omRlcouK" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4peSo3CLVZn" role="jymVt" />
    <node concept="3clFb_" id="4peSo3CLb4X" role="jymVt">
      <property role="TrG5h" value="doPrint" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="4peSo3CLb7u" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="4peSo3CLb7v" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="17QB3L" id="6r6omRlcoY5" role="3clF45" />
      <node concept="3Tm1VV" id="4peSo3CLb50" role="1B3o_S" />
      <node concept="3clFbS" id="4peSo3CLb51" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4peSo3CLath" role="jymVt" />
    <node concept="3Tm1VV" id="4peSo3CLajS" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3OPtF02T8yx">
    <property role="TrG5h" value="Mappers" />
    <node concept="2tJIrI" id="3OPtF02Tc41" role="jymVt" />
    <node concept="3HP615" id="3OPtF031GQe" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="MapDelegate" />
      <node concept="3clFb_" id="6HT7BWBOcmA" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="canMap" />
        <node concept="37vLTG" id="6HT7BWBOcP5" role="3clF46">
          <property role="TrG5h" value="tf" />
          <node concept="3uibUv" id="6HT7BWBOfNy" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="10P_77" id="6HT7BWBOc_Y" role="3clF45" />
        <node concept="3Tm1VV" id="6HT7BWBOcmD" role="1B3o_S" />
        <node concept="3clFbS" id="6HT7BWBOcmE" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3OPtF037E1C" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="3OPtF037E1D" role="3clF46">
          <property role="TrG5h" value="tf" />
          <node concept="3uibUv" id="6HT7BWBOfXe" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="37vLTG" id="3OPtF037G3a" role="3clF46">
          <property role="TrG5h" value="fallback" />
          <node concept="3uibUv" id="3OPtF037G8i" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3OPtF037E1F" role="1B3o_S" />
        <node concept="3clFbS" id="3OPtF037E1G" role="3clF47" />
        <node concept="3uibUv" id="5s497VqzFLM" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3OPtF031GQf" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3OPtF031mnc" role="jymVt" />
    <node concept="2YIFZL" id="5s497VqteR6" role="jymVt">
      <property role="TrG5h" value="mapper" />
      <node concept="37vLTG" id="5s497VqtgPx" role="3clF46">
        <property role="TrG5h" value="delegate" />
        <node concept="3uibUv" id="5s497VqtgY1" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapDelegate" />
        </node>
      </node>
      <node concept="3uibUv" id="5s497Vq$6sF" role="3clF45">
        <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
      </node>
      <node concept="3Tm1VV" id="5s497VqteR9" role="1B3o_S" />
      <node concept="3clFbS" id="5s497VqteRa" role="3clF47">
        <node concept="3clFbF" id="5s497Vqtqbd" role="3cqZAp">
          <node concept="2ShNRf" id="5s497Vqtqbb" role="3clFbG">
            <node concept="1pGfFk" id="5s497VqtqE8" role="2ShVmc">
              <ref role="37wK5l" node="5s497VqqLbx" resolve="Mappers.TreeFormMapper" />
              <node concept="37vLTw" id="5s497VqtqM2" role="37wK5m">
                <ref role="3cqZAo" node="5s497VqtgPx" resolve="delegate" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqtbE$" role="jymVt" />
    <node concept="312cEu" id="5s497VqqJkg" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TreeFormMapper" />
      <node concept="2tJIrI" id="5s497VqqL8s" role="jymVt" />
      <node concept="3clFbW" id="5s497VqqLbx" role="jymVt">
        <node concept="37vLTG" id="5s497Vqr3WN" role="3clF46">
          <property role="TrG5h" value="delegate" />
          <node concept="3uibUv" id="5s497Vqrabr" role="1tU5fm">
            <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapDelegate" />
          </node>
        </node>
        <node concept="3cqZAl" id="5s497VqqLbz" role="3clF45" />
        <node concept="3Tm1VV" id="5s497VqqLb$" role="1B3o_S" />
        <node concept="3clFbS" id="5s497VqqLb_" role="3clF47">
          <node concept="3clFbF" id="5s497VqrarO" role="3cqZAp">
            <node concept="37vLTI" id="5s497VqrarQ" role="3clFbG">
              <node concept="2OqwBi" id="5s497VqrarU" role="37vLTJ">
                <node concept="Xjq3P" id="5s497VqrarX" role="2Oq$k0" />
                <node concept="2OwXpG" id="5s497VqrarT" role="2OqNvi">
                  <ref role="2Oxat5" node="5s497VqrarK" resolve="delegate" />
                </node>
              </node>
              <node concept="37vLTw" id="5s497VqrarY" role="37vLTx">
                <ref role="3cqZAo" node="5s497Vqr3WN" resolve="delegate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5s497VqqL8u" role="jymVt" />
      <node concept="3clFb_" id="5s497VqDhX9" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="map" />
        <node concept="37vLTG" id="5s497VqDhXa" role="3clF46">
          <property role="TrG5h" value="tp" />
          <node concept="3uibUv" id="5s497VqDhXb" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3Tm1VV" id="5s497VqDhXd" role="1B3o_S" />
        <node concept="3uibUv" id="5s497VqDhXf" role="3clF45">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
        <node concept="3clFbS" id="5s497VqDhXh" role="3clF47">
          <node concept="3cpWs6" id="5s497VquB$d" role="3cqZAp">
            <node concept="10QFUN" id="6HT7BWBO8S2" role="3cqZAk">
              <node concept="3uibUv" id="6HT7BWBO8RX" role="10QFUM">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
              <node concept="2OqwBi" id="6HT7BWBO8RY" role="10QFUP">
                <node concept="37vLTw" id="6HT7BWBO8RZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s497VqDhXa" resolve="tp" />
                </node>
                <node concept="liA8E" id="6HT7BWBO8S0" role="2OqNvi">
                  <ref role="37wK5l" node="104EUzFOBnD" resolve="acceptVisitor" />
                  <node concept="Xjq3P" id="6HT7BWBO8S1" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5s497VqDj5R" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5s497Vqrc8h" role="jymVt" />
      <node concept="3clFb_" id="5NAQwIkRysp" role="jymVt">
        <property role="TrG5h" value="visitAbstract" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="5NAQwIkRysx" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="5NAQwIkRysr" role="1B3o_S" />
        <node concept="37vLTG" id="5NAQwIkRysv" role="3clF46">
          <property role="TrG5h" value="treeForm" />
          <node concept="3uibUv" id="5NAQwIkRysw" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="5NAQwIkRysy" role="3clF47">
          <node concept="3cpWs6" id="5NAQwIkRzZ3" role="3cqZAp">
            <node concept="1rXfSq" id="5NAQwIkRzZ4" role="3cqZAk">
              <ref role="37wK5l" node="6HT7BWBOiWc" resolve="mapViaDelegate" />
              <node concept="37vLTw" id="5NAQwIkR$nQ" role="37wK5m">
                <ref role="3cqZAo" node="5NAQwIkRysv" resolve="treeForm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5NAQwIkRysz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="104EUzFJhb8" role="jymVt" />
      <node concept="3clFb_" id="6HT7BWBOiWc" role="jymVt">
        <property role="TrG5h" value="mapViaDelegate" />
        <node concept="3Tm6S6" id="6HT7BWBOiWd" role="1B3o_S" />
        <node concept="3uibUv" id="6HT7BWBOiWe" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="37vLTG" id="6HT7BWBOiW5" role="3clF46">
          <property role="TrG5h" value="tf" />
          <node concept="3uibUv" id="6HT7BWBOkDZ" role="1tU5fm">
            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
          </node>
        </node>
        <node concept="3clFbS" id="6HT7BWBOiVL" role="3clF47">
          <node concept="3clFbJ" id="6HT7BWBOiVM" role="3cqZAp">
            <node concept="3clFbS" id="6HT7BWBOiVN" role="3clFbx">
              <node concept="3cpWs6" id="6HT7BWBOiVO" role="3cqZAp">
                <node concept="2OqwBi" id="6HT7BWBOiVP" role="3cqZAk">
                  <node concept="37vLTw" id="6HT7BWBOiVQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5s497VqrarK" resolve="delegate" />
                  </node>
                  <node concept="liA8E" id="6HT7BWBOiVR" role="2OqNvi">
                    <ref role="37wK5l" node="3OPtF037E1C" resolve="map" />
                    <node concept="37vLTw" id="6HT7BWBOiW8" role="37wK5m">
                      <ref role="3cqZAo" node="6HT7BWBOiW5" resolve="tf" />
                    </node>
                    <node concept="Xjq3P" id="6HT7BWBOiVT" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5BGv8yzxvQ4" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="6HT7BWBOiVU" role="3clFbw">
              <node concept="37vLTw" id="6HT7BWBOiVV" role="2Oq$k0">
                <ref role="3cqZAo" node="5s497VqrarK" resolve="delegate" />
              </node>
              <node concept="liA8E" id="6HT7BWBOiVW" role="2OqNvi">
                <ref role="37wK5l" node="6HT7BWBOcmA" resolve="canMap" />
                <node concept="37vLTw" id="6HT7BWBOiW9" role="37wK5m">
                  <ref role="3cqZAo" node="6HT7BWBOiW5" resolve="tf" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="6HT7BWBOiVY" role="9aQIa">
              <node concept="3clFbS" id="6HT7BWBOiVZ" role="9aQI4">
                <node concept="3cpWs6" id="6HT7BWBOiW0" role="3cqZAp">
                  <node concept="37vLTw" id="6HT7BWBOiW7" role="3cqZAk">
                    <ref role="3cqZAo" node="6HT7BWBOiW5" resolve="tf" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6HT7BWBOksZ" role="jymVt" />
      <node concept="3Tm6S6" id="5s497VqtaGv" role="1B3o_S" />
      <node concept="3uibUv" id="5s497VqqKLX" role="EKbjA">
        <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
      </node>
      <node concept="3uibUv" id="5s497VqqKYG" role="EKbjA">
        <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        <node concept="3uibUv" id="6YPNC4OJ0z_" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="312cEg" id="5s497VqrarK" role="jymVt">
        <property role="TrG5h" value="delegate" />
        <node concept="3Tm6S6" id="5s497VqrarL" role="1B3o_S" />
        <node concept="3uibUv" id="5s497VqrarN" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapDelegate" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4OObZt" role="1zkMxy">
        <ref role="3uigEE" node="6HT7BWBQcxv" resolve="TreeForm.Visitor.Stub" />
        <node concept="3uibUv" id="6YPNC4OOdB1" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5s497VqqG$D" role="jymVt" />
    <node concept="3Tm1VV" id="3OPtF02T8yy" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6HT7BWBOXme">
    <property role="TrG5h" value="TreeFormUtil" />
    <node concept="2tJIrI" id="1jo82tq2GcC" role="jymVt" />
    <node concept="2YIFZL" id="6HT7BWBOXr$" role="jymVt">
      <property role="TrG5h" value="ground" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="6HT7BWBOXuV" role="3clF46">
        <property role="TrG5h" value="tf" />
        <node concept="3uibUv" id="6HT7BWBOXvt" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3clFbS" id="6HT7BWBOXna" role="3clF47">
        <node concept="3clFbF" id="6HT7BWBOXzd" role="3cqZAp">
          <node concept="2OqwBi" id="6HT7BWBPbh7" role="3clFbG">
            <node concept="37vLTw" id="1jo82tq2G6Q" role="2Oq$k0">
              <ref role="3cqZAo" node="1jo82tq2G6N" resolve="GROUND_MAPPER" />
            </node>
            <node concept="liA8E" id="6HT7BWBPbjK" role="2OqNvi">
              <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
              <node concept="37vLTw" id="6HT7BWBPbkG" role="37wK5m">
                <ref role="3cqZAo" node="6HT7BWBOXuV" resolve="tf" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6HT7BWBOXnN" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="6HT7BWBOXn9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6HT7BWBOXmW" role="jymVt" />
    <node concept="Wx3nA" id="6HT7BWBPbsi" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="TrG5h" value="GROUND_DELEGATE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6HT7BWBPa9D" role="1tU5fm">
        <ref role="3uigEE" node="3OPtF031GQe" resolve="Mappers.MapDelegate" />
      </node>
      <node concept="3Tm6S6" id="6HT7BWBPa9C" role="1B3o_S" />
      <node concept="2ShNRf" id="6HT7BWBPa9E" role="33vP2m">
        <node concept="YeOm9" id="6HT7BWBPa9F" role="2ShVmc">
          <node concept="1Y3b0j" id="6HT7BWBPa9G" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="3OPtF031GQe" resolve="Mappers.MapDelegate" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="6HT7BWBPa9H" role="1B3o_S" />
            <node concept="3clFb_" id="6HT7BWBPa9I" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="canMap" />
              <node concept="37vLTG" id="6HT7BWBPa9J" role="3clF46">
                <property role="TrG5h" value="tf" />
                <node concept="3uibUv" id="6HT7BWBPa9K" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
              </node>
              <node concept="10P_77" id="6HT7BWBPa9L" role="3clF45" />
              <node concept="3Tm1VV" id="6HT7BWBPa9M" role="1B3o_S" />
              <node concept="3clFbS" id="6HT7BWBPa9N" role="3clF47">
                <node concept="3clFbJ" id="4sSe4$pxkIZ" role="3cqZAp">
                  <node concept="3clFbS" id="4sSe4$pxkJ1" role="3clFbx">
                    <node concept="3SKdUt" id="4sSe4$pxnYS" role="3cqZAp">
                      <node concept="3SKdUq" id="4sSe4$pxnYT" role="3SKWNk">
                        <property role="3SKdUp" value="FIXME: this is a dirty hack. using the fact that bound logical variables has this kind" />
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4sSe4$pxlFN" role="3cqZAp">
                      <node concept="2OqwBi" id="4sSe4$pxm8A" role="3cqZAk">
                        <node concept="1eOMI4" id="4sSe4$pxm8B" role="2Oq$k0">
                          <node concept="10QFUN" id="4sSe4$pxm8C" role="1eOMHV">
                            <node concept="3uibUv" id="4sSe4$pxm8D" role="10QFUM">
                              <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                            </node>
                            <node concept="37vLTw" id="4sSe4$pxm8E" role="10QFUP">
                              <ref role="3cqZAo" node="6HT7BWBPa9J" resolve="tf" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4sSe4$pxm8F" role="2OqNvi">
                          <ref role="37wK5l" node="56MMu0Ark7C" resolve="is" />
                          <node concept="Rm8GO" id="4sSe4$pxm8G" role="37wK5m">
                            <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                            <ref role="Rm8GQ" to="yt73:~Term$Kind.REF" resolve="REF" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4sSe4$pxldl" role="3clFbw">
                    <node concept="3uibUv" id="4sSe4$pxlti" role="2ZW6by">
                      <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                    </node>
                    <node concept="37vLTw" id="4sSe4$pxkXa" role="2ZW6bz">
                      <ref role="3cqZAo" node="6HT7BWBPa9J" resolve="tf" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4sSe4$pxmCu" role="3cqZAp">
                  <node concept="3clFbT" id="4sSe4$pxmCt" role="3clFbG">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2tJIrI" id="4sSe4$pxoUB" role="jymVt" />
            <node concept="3clFb_" id="6HT7BWBPa9O" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="map" />
              <node concept="37vLTG" id="6HT7BWBPa9P" role="3clF46">
                <property role="TrG5h" value="tf" />
                <node concept="3uibUv" id="6HT7BWBPa9Q" role="1tU5fm">
                  <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                </node>
              </node>
              <node concept="37vLTG" id="6HT7BWBPa9R" role="3clF46">
                <property role="TrG5h" value="fallback" />
                <node concept="3uibUv" id="6HT7BWBPa9S" role="1tU5fm">
                  <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
                </node>
              </node>
              <node concept="3Tm1VV" id="6HT7BWBPa9T" role="1B3o_S" />
              <node concept="3uibUv" id="6HT7BWBPa9U" role="3clF45">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
              <node concept="3clFbS" id="6HT7BWBPa9V" role="3clF47">
                <node concept="3clFbJ" id="4sSe4$pxtYI" role="3cqZAp">
                  <node concept="3clFbS" id="4sSe4$pxtYK" role="3clFbx">
                    <node concept="3SKdUt" id="6HT7BWBQfQY" role="3cqZAp">
                      <node concept="3SKdUq" id="6HT7BWBQfRs" role="3SKWNk">
                        <property role="3SKdUp" value="FIXME: get() has a somewhat different semantics, introduce a new method maybe?" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6HT7BWBRA2w" role="3cqZAp">
                      <node concept="3cpWsn" id="6HT7BWBRA2x" role="3cpWs9">
                        <property role="TrG5h" value="val" />
                        <node concept="3uibUv" id="6HT7BWBRA2u" role="1tU5fm">
                          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                        </node>
                        <node concept="10QFUN" id="6HT7BWBRA2y" role="33vP2m">
                          <node concept="2OqwBi" id="6HT7BWBRA2z" role="10QFUP">
                            <node concept="37vLTw" id="6HT7BWBRA2$" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                            </node>
                            <node concept="liA8E" id="6HT7BWBRA2_" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Term.get():jetbrains.mps.unification.Term" resolve="get" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="6HT7BWBRA2A" role="10QFUM">
                            <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4sSe4$pxvp2" role="3cqZAp">
                      <node concept="2OqwBi" id="4sSe4$pxvKy" role="3cqZAk">
                        <node concept="37vLTw" id="4sSe4$pxvKE" role="2Oq$k0">
                          <ref role="3cqZAo" node="1jo82tq2G6N" resolve="GROUND_MAPPER" />
                        </node>
                        <node concept="liA8E" id="4sSe4$pxvKz" role="2OqNvi">
                          <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                          <node concept="2OqwBi" id="60NbDCXX3Vm" role="37wK5m">
                            <node concept="37vLTw" id="4sSe4$pxvK$" role="2Oq$k0">
                              <ref role="3cqZAo" node="6HT7BWBRA2x" resolve="val" />
                            </node>
                            <node concept="liA8E" id="60NbDCXX4mV" role="2OqNvi">
                              <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4sSe4$pxwLo" role="3cqZAp" />
                  </node>
                  <node concept="2ZW3vV" id="4sSe4$pxup4" role="3clFbw">
                    <node concept="3uibUv" id="4sSe4$pxuAM" role="2ZW6by">
                      <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                    </node>
                    <node concept="37vLTw" id="4sSe4$pxub8" role="2ZW6bz">
                      <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="4sSe4$pxw$3" role="9aQIa">
                    <node concept="3clFbS" id="4sSe4$pxw$4" role="9aQI4">
                      <node concept="3cpWs6" id="4sSe4$pxwZo" role="3cqZAp">
                        <node concept="2OqwBi" id="4sSe4$px$xJ" role="3cqZAk">
                          <node concept="37vLTw" id="4sSe4$px$l6" role="2Oq$k0">
                            <ref role="3cqZAo" node="6HT7BWBPa9P" resolve="tf" />
                          </node>
                          <node concept="liA8E" id="4sSe4$px$Jr" role="2OqNvi">
                            <ref role="37wK5l" node="3OPtF02Tjpr" resolve="mapRecursively" />
                            <node concept="37vLTw" id="4sSe4$px$Ws" role="37wK5m">
                              <ref role="3cqZAo" node="6HT7BWBPa9R" resolve="fallback" />
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
    <node concept="2tJIrI" id="6HT7BWBOXmP" role="jymVt" />
    <node concept="Wx3nA" id="1jo82tq2G6N" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="GROUND_MAPPER" />
      <node concept="3Tm6S6" id="1jo82tq2G6J" role="1B3o_S" />
      <node concept="3uibUv" id="1jo82tq2G6K" role="1tU5fm">
        <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
      </node>
      <node concept="2YIFZM" id="1jo82tq2G6L" role="33vP2m">
        <ref role="37wK5l" node="5s497VqteR6" resolve="mapper" />
        <ref role="1Pybhc" node="3OPtF02T8yx" resolve="Mappers" />
        <node concept="37vLTw" id="1jo82tq2G6M" role="37wK5m">
          <ref role="3cqZAo" node="6HT7BWBPbsi" resolve="GROUND_DELEGATE" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6HT7BWBPagm" role="jymVt" />
    <node concept="3Tm1VV" id="6HT7BWBOXmf" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6YPNC4NYnau">
    <property role="TrG5h" value="ChildRole" />
    <node concept="2tJIrI" id="6YPNC4NYntU" role="jymVt" />
    <node concept="2YIFZL" id="6YPNC4NYnI9" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="6YPNC4NYnIa" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6YPNC4NYnIb" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4NYnIc" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="6YPNC4NYnIe" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3clFbS" id="6YPNC4NYnIf" role="3clF47">
        <node concept="3SKdUt" id="6YPNC4NYnIg" role="3cqZAp">
          <node concept="3SKdUq" id="6YPNC4NYnIh" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: should accept only TermNode as arguments" />
          </node>
        </node>
        <node concept="3clFbJ" id="6YPNC4O6Gkv" role="3cqZAp">
          <node concept="3clFbS" id="6YPNC4O6Gkx" role="3clFbx">
            <node concept="YS8fn" id="6YPNC4O6G_8" role="3cqZAp">
              <node concept="2ShNRf" id="6YPNC4O6GA4" role="YScLw">
                <node concept="1pGfFk" id="6YPNC4O6GLm" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6YPNC4O6Gx1" role="3clFbw">
            <node concept="10Nm6u" id="6YPNC4O6GzM" role="3uHU7w" />
            <node concept="37vLTw" id="6YPNC4O6Gn_" role="3uHU7B">
              <ref role="3cqZAo" node="6YPNC4NYnIc" resolve="child" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6YPNC4NYnIi" role="3cqZAp">
          <node concept="3cpWsn" id="6YPNC4NYnIj" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="6YPNC4NYnIk" role="1tU5fm">
              <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="6YPNC4NYnIl" role="33vP2m">
              <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
              <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
              <node concept="37vLTw" id="6YPNC4NYnIm" role="37wK5m">
                <ref role="3cqZAo" node="6YPNC4NYnIa" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6YPNC4NYnIJ" role="3cqZAp">
          <node concept="3cpWsn" id="6YPNC4NYnIK" role="3cpWs9">
            <property role="TrG5h" value="cn" />
            <node concept="3uibUv" id="6YPNC4NYrFg" role="1tU5fm">
              <ref role="3uigEE" node="6YPNC4NYnau" resolve="ChildRole" />
            </node>
            <node concept="2ShNRf" id="6YPNC4NYnIM" role="33vP2m">
              <node concept="1pGfFk" id="6YPNC4NYnIN" role="2ShVmc">
                <ref role="37wK5l" node="6YPNC4NYo$j" resolve="ChildRole" />
                <node concept="37vLTw" id="6YPNC4NYnIO" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4NYnIj" resolve="path" />
                </node>
                <node concept="37vLTw" id="6YPNC4NYnIP" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4NYnIc" resolve="child" />
                </node>
                <node concept="2OqwBi" id="6YPNC4NZ1Hr" role="37wK5m">
                  <node concept="37vLTw" id="6YPNC4NZ1$O" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YPNC4NYnIc" resolve="child" />
                  </node>
                  <node concept="liA8E" id="6YPNC4NZ1RH" role="2OqNvi">
                    <ref role="37wK5l" node="5BGv8yzvvIZ" resolve="variablesCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YPNC4NZ2TD" role="3cqZAp">
          <node concept="2OqwBi" id="6YPNC4NZ30r" role="3clFbG">
            <node concept="37vLTw" id="6YPNC4NZ2TB" role="2Oq$k0">
              <ref role="3cqZAo" node="6YPNC4NYnIc" resolve="child" />
            </node>
            <node concept="liA8E" id="6YPNC4NZ3aW" role="2OqNvi">
              <ref role="37wK5l" node="dfChU1lFHl" resolve="attached" />
              <node concept="37vLTw" id="6YPNC4NZ3A9" role="37wK5m">
                <ref role="3cqZAo" node="6YPNC4NYnIK" resolve="cn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YPNC4NYnJ1" role="3cqZAp">
          <node concept="37vLTw" id="6YPNC4NYnJ2" role="3clFbG">
            <ref role="3cqZAo" node="6YPNC4NYnIK" resolve="cn" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6YPNC4NYnJ3" role="1B3o_S" />
      <node concept="3uibUv" id="6YPNC4NYrkd" role="3clF45">
        <ref role="3uigEE" node="6YPNC4NYnau" resolve="ChildRole" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NYnu9" role="jymVt" />
    <node concept="3clFbW" id="6YPNC4NYo$j" role="jymVt">
      <node concept="37vLTG" id="6YPNC4NYoAo" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6YPNC4NYoAp" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4NYoAq" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="6YPNC4NYoAs" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4NYoAt" role="3clF46">
        <property role="TrG5h" value="varCount" />
        <node concept="10Oyi0" id="6YPNC4NYoAu" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6YPNC4NYo$l" role="3clF45" />
      <node concept="3Tm6S6" id="6YPNC4NYoA1" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4NYo$n" role="3clF47">
        <node concept="XkiVB" id="6YPNC4NYs2u" role="3cqZAp">
          <ref role="37wK5l" node="6YPNC4OE1nT" resolve="RoleNode" />
          <node concept="37vLTw" id="6YPNC4NYs2v" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4NYoAo" resolve="symbolPath" />
          </node>
          <node concept="37vLTw" id="6YPNC4OE3rj" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4NYoAq" resolve="child" />
          </node>
          <node concept="37vLTw" id="6YPNC4NYs2x" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4NYoAt" resolve="varCount" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6YPNC4NYpU0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="6YPNC4NYqzK" role="3clF45">
        <ref role="3uigEE" node="6YPNC4NYnau" resolve="ChildRole" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4NYpU2" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4NYpU3" role="3clF47">
        <node concept="3clFbF" id="6YPNC4NYpU_" role="3cqZAp">
          <node concept="2YIFZM" id="6YPNC4NYr1t" role="3clFbG">
            <ref role="37wK5l" node="6YPNC4NYnI9" resolve="create" />
            <ref role="1Pybhc" node="6YPNC4NYnau" resolve="ChildRole" />
            <node concept="1rXfSq" id="6YPNC4NYr1u" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="2OqwBi" id="6YPNC4NYZdr" role="37wK5m">
              <node concept="1rXfSq" id="6YPNC4OEdOz" role="2Oq$k0">
                <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
              </node>
              <node concept="liA8E" id="6YPNC4NYZmG" role="2OqNvi">
                <ref role="37wK5l" node="1bm7a6EXvNI" resolve="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YPNC4NYpUD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NYZTK" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4NZ033" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="6YPNC4NZ034" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="6YPNC4NZ035" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4NZ036" role="3clF45">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4NZ037" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YPNC4NZ039" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6YPNC4NZ03a" role="3clF47">
        <node concept="3cpWs8" id="6YPNC4NZ0B7" role="3cqZAp">
          <node concept="3cpWsn" id="6YPNC4NZ0B8" role="3cpWs9">
            <property role="TrG5h" value="mappedChild" />
            <node concept="3uibUv" id="6YPNC4NZ0B9" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="2OqwBi" id="6YPNC4NZ0Ba" role="33vP2m">
              <node concept="37vLTw" id="6YPNC4NZ0Bb" role="2Oq$k0">
                <ref role="3cqZAo" node="6YPNC4NZ034" resolve="mapper" />
              </node>
              <node concept="liA8E" id="6YPNC4NZ0Bc" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                <node concept="1rXfSq" id="6YPNC4OEeoA" role="37wK5m">
                  <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6YPNC4NZ0Bf" role="3cqZAp">
          <node concept="3SKdUq" id="6YPNC4NZ0Bg" role="3SKWNk">
            <property role="3SKdUp" value="check if the returned value is different using referential equality" />
          </node>
        </node>
        <node concept="3clFbJ" id="6YPNC4NZ0Bh" role="3cqZAp">
          <node concept="3clFbS" id="6YPNC4NZ0Bi" role="3clFbx">
            <node concept="3cpWs6" id="6YPNC4NZ0Bj" role="3cqZAp">
              <node concept="Xjq3P" id="6YPNC4NZ0Bk" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6YPNC4NZ0Bl" role="3clFbw">
            <node concept="37vLTw" id="6YPNC4NZ0Bm" role="3uHU7B">
              <ref role="3cqZAo" node="6YPNC4NZ0B8" resolve="mappedChild" />
            </node>
            <node concept="1rXfSq" id="6YPNC4OEu2D" role="3uHU7w">
              <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YPNC4NZ0Bp" role="3cqZAp" />
        <node concept="3clFbF" id="6YPNC4NZ0Bq" role="3cqZAp">
          <node concept="2YIFZM" id="6YPNC4NZ1aZ" role="3clFbG">
            <ref role="37wK5l" node="6YPNC4NYnI9" resolve="create" />
            <ref role="1Pybhc" node="6YPNC4NYnau" resolve="ChildRole" />
            <node concept="1rXfSq" id="6YPNC4NZ1b0" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="6YPNC4NZ1b1" role="37wK5m">
              <ref role="3cqZAo" node="6YPNC4NZ0B8" resolve="mappedChild" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NYnuv" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4NZ47M" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="6YPNC4NZ47N" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="6YPNC4NZ47O" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4NZ47P" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4NZ47Q" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4NZ47T" role="3clF47">
        <node concept="3clFbF" id="6YPNC4NZ5gp" role="3cqZAp">
          <node concept="2OqwBi" id="6YPNC4NZ5gq" role="3clFbG">
            <node concept="37vLTw" id="6YPNC4NZ5gr" role="2Oq$k0">
              <ref role="3cqZAo" node="6YPNC4NZ47N" resolve="visitor" />
            </node>
            <node concept="liA8E" id="6YPNC4NZ5gs" role="2OqNvi">
              <ref role="37wK5l" node="6YPNC4NZ8iR" resolve="visitChildRole" />
              <node concept="Xjq3P" id="6YPNC4NZ5gt" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YPNC4NZ47U" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NZcpT" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4NZcJj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6YPNC4NZcJk" role="1B3o_S" />
      <node concept="3uibUv" id="6YPNC4NZcJm" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6YPNC4NZcJr" role="3clF47">
        <node concept="3cpWs8" id="6YPNC4NZefY" role="3cqZAp">
          <node concept="3cpWsn" id="6YPNC4NZefZ" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="6YPNC4NZeg0" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="6YPNC4NZeg1" role="33vP2m">
              <node concept="1pGfFk" id="6YPNC4NZeg2" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YPNC4NZeg3" role="3cqZAp">
          <node concept="2OqwBi" id="6YPNC4OEmII" role="3clFbG">
            <node concept="2OqwBi" id="6YPNC4NZeg4" role="2Oq$k0">
              <node concept="2OqwBi" id="6YPNC4NZeg5" role="2Oq$k0">
                <node concept="37vLTw" id="6YPNC4NZeg6" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YPNC4NZefZ" resolve="sb" />
                </node>
                <node concept="liA8E" id="6YPNC4NZeg7" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2YIFZM" id="6YPNC4NZeg8" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <node concept="1rXfSq" id="6YPNC4NZeg9" role="37wK5m">
                      <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6YPNC4NZega" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="6YPNC4NZegb" role="37wK5m">
                  <property role="Xl_RC" value=":" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6YPNC4OEnDW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object):java.lang.StringBuilder" resolve="append" />
              <node concept="1rXfSq" id="6YPNC4OEnLd" role="37wK5m">
                <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YPNC4NZgYS" role="3cqZAp">
          <node concept="2OqwBi" id="6YPNC4NZh5q" role="3clFbG">
            <node concept="37vLTw" id="6YPNC4NZgYQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6YPNC4NZefZ" resolve="sb" />
            </node>
            <node concept="liA8E" id="6YPNC4NZhhp" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YPNC4NZcJs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4NZiL8" role="jymVt" />
    <node concept="3Tm1VV" id="6YPNC4NYnav" role="1B3o_S" />
    <node concept="3uibUv" id="6YPNC4ODVMh" role="1zkMxy">
      <ref role="3uigEE" node="6YPNC4ODVle" resolve="RoleNode" />
    </node>
  </node>
  <node concept="312cEu" id="6YPNC4ODVle">
    <property role="TrG5h" value="RoleNode" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6YPNC4ODXli" role="jymVt" />
    <node concept="2YIFZL" id="6YPNC4NZlZx" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="37vLTG" id="6YPNC4NZlZy" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="6YPNC4NZlZz" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6YPNC4NZlZ$" role="3clF45">
        <ref role="3uigEE" node="6YPNC4NIs3k" resolve="RoleNode.Symbol" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4NZlZ_" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4NZlZA" role="3clF47">
        <node concept="3clFbF" id="6YPNC4NZlZB" role="3cqZAp">
          <node concept="2ShNRf" id="6YPNC4NZlZC" role="3clFbG">
            <node concept="1pGfFk" id="6YPNC4NZlZD" role="2ShVmc">
              <ref role="37wK5l" node="6YPNC4NItBK" resolve="RoleNode.Symbol" />
              <node concept="37vLTw" id="6YPNC4NZlZE" role="37wK5m">
                <ref role="3cqZAo" node="6YPNC4NZlZy" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4ODVLW" role="jymVt" />
    <node concept="3clFbW" id="6YPNC4OE1nT" role="jymVt">
      <node concept="37vLTG" id="6YPNC4OE1JJ" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6YPNC4OE1Yq" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4OE21p" role="3clF46">
        <property role="TrG5h" value="argument" />
        <node concept="3uibUv" id="6YPNC4OE2g8" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4OE2EZ" role="3clF46">
        <property role="TrG5h" value="varCount" />
        <node concept="10Oyi0" id="6YPNC4OE2TI" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6YPNC4OE1nV" role="3clF45" />
      <node concept="3Tm1VV" id="6YPNC4OE1nW" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4OE1nX" role="3clF47">
        <node concept="XkiVB" id="6YPNC4OE2Wb" role="3cqZAp">
          <ref role="37wK5l" node="1msb0mq9JZ8" resolve="Node" />
          <node concept="37vLTw" id="6YPNC4OE2Wc" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4OE1JJ" resolve="symbolPath" />
          </node>
          <node concept="2ShNRf" id="6YPNC4OE2Wd" role="37wK5m">
            <node concept="3g6Rrh" id="6YPNC4OE2We" role="2ShVmc">
              <node concept="3uibUv" id="6YPNC4OE2Wf" role="3g7fb8">
                <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
              </node>
              <node concept="37vLTw" id="6YPNC4OE3nn" role="3g7hyw">
                <ref role="3cqZAo" node="6YPNC4OE21p" resolve="argument" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6YPNC4OE2Wh" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4OE2EZ" resolve="varCount" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4ODVM1" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4OE9DW" role="jymVt">
      <property role="TrG5h" value="argument" />
      <node concept="3uibUv" id="6YPNC4OEaRS" role="3clF45">
        <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4OE9DZ" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4OE9E0" role="3clF47">
        <node concept="3clFbF" id="6YPNC4OEcGp" role="3cqZAp">
          <node concept="1rXfSq" id="6YPNC4OEcGo" role="3clFbG">
            <ref role="37wK5l" node="6$jH9oLbK0n" resolve="argAt" />
            <node concept="3cmrfG" id="6YPNC4OEdf2" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4ODVM5" role="jymVt" />
    <node concept="3Tm1VV" id="6YPNC4ODVlf" role="1B3o_S" />
    <node concept="3uibUv" id="6YPNC4ODVAC" role="1zkMxy">
      <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
    </node>
    <node concept="312cEu" id="6YPNC4NIs3k" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Symbol" />
      <node concept="3clFbW" id="6YPNC4NItBK" role="jymVt">
        <node concept="37vLTG" id="6YPNC4NIy68" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6YPNC4NIy75" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6YPNC4NItBM" role="3clF45" />
        <node concept="3Tm6S6" id="6YPNC4NIy5U" role="1B3o_S" />
        <node concept="3clFbS" id="6YPNC4NItBO" role="3clF47">
          <node concept="3clFbJ" id="6YPNC4NILUM" role="3cqZAp">
            <node concept="3clFbS" id="6YPNC4NILUO" role="3clFbx">
              <node concept="YS8fn" id="6YPNC4NIMi5" role="3cqZAp">
                <node concept="2ShNRf" id="6YPNC4NIMiU" role="YScLw">
                  <node concept="1pGfFk" id="6YPNC4NIMu8" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6YPNC4NIMg7" role="3clFbw">
              <node concept="10Nm6u" id="6YPNC4NIMgH" role="3uHU7w" />
              <node concept="37vLTw" id="6YPNC4NIM7q" role="3uHU7B">
                <ref role="3cqZAo" node="6YPNC4NIy68" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6YPNC4NIy9N" role="3cqZAp">
            <node concept="37vLTI" id="6YPNC4NIy9P" role="3clFbG">
              <node concept="2OqwBi" id="6YPNC4NIyp2" role="37vLTJ">
                <node concept="Xjq3P" id="6YPNC4NIypQ" role="2Oq$k0" />
                <node concept="2OwXpG" id="6YPNC4NIyp5" role="2OqNvi">
                  <ref role="2Oxat5" node="6YPNC4NIy9J" resolve="name" />
                </node>
              </node>
              <node concept="37vLTw" id="6YPNC4NIy9T" role="37vLTx">
                <ref role="3cqZAo" node="6YPNC4NIy68" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NIyBd" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4NIyLV" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6YPNC4NIyLW" role="1B3o_S" />
        <node concept="10P_77" id="6YPNC4NIyLY" role="3clF45" />
        <node concept="37vLTG" id="6YPNC4NIyLZ" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="6YPNC4NIyM0" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="6YPNC4NIyM1" role="3clF47">
          <node concept="3clFbJ" id="6YPNC4NINmO" role="3cqZAp">
            <node concept="3clFbC" id="6YPNC4NINmP" role="3clFbw">
              <node concept="10Nm6u" id="6YPNC4NINmQ" role="3uHU7w" />
              <node concept="37vLTw" id="6YPNC4NINmR" role="3uHU7B">
                <ref role="3cqZAo" node="6YPNC4NIyLZ" resolve="that" />
              </node>
            </node>
            <node concept="3clFbS" id="6YPNC4NINmS" role="3clFbx">
              <node concept="3cpWs6" id="6YPNC4NINmT" role="3cqZAp">
                <node concept="3clFbT" id="6YPNC4NINmU" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6YPNC4NINmV" role="3cqZAp">
            <node concept="3clFbS" id="6YPNC4NINmW" role="3clFbx">
              <node concept="3cpWs6" id="6YPNC4NINmX" role="3cqZAp">
                <node concept="3clFbT" id="6YPNC4NINmY" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6YPNC4NINmZ" role="3clFbw">
              <node concept="3VsKOn" id="6YPNC4NINn0" role="3uHU7w">
                <ref role="3VsUkX" node="6YPNC4NIs3k" resolve="RoleNode.Symbol" />
              </node>
              <node concept="2OqwBi" id="6YPNC4NINn1" role="3uHU7B">
                <node concept="37vLTw" id="6YPNC4NINn2" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YPNC4NIyLZ" resolve="that" />
                </node>
                <node concept="liA8E" id="6YPNC4NINn3" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6YPNC4NINn4" role="3cqZAp">
            <node concept="2OqwBi" id="6YPNC4NIQNC" role="3clFbG">
              <node concept="2OqwBi" id="6YPNC4NINn9" role="2Oq$k0">
                <node concept="1eOMI4" id="6YPNC4NINna" role="2Oq$k0">
                  <node concept="10QFUN" id="6YPNC4NINnb" role="1eOMHV">
                    <node concept="3uibUv" id="6YPNC4NIPSO" role="10QFUM">
                      <ref role="3uigEE" node="6YPNC4NIs3k" resolve="RoleNode.Symbol" />
                    </node>
                    <node concept="37vLTw" id="6YPNC4NINnd" role="10QFUP">
                      <ref role="3cqZAo" node="6YPNC4NIyLZ" resolve="that" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="6YPNC4NIQgx" role="2OqNvi">
                  <ref role="2Oxat5" node="6YPNC4NIy9J" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="6YPNC4NIRe6" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="6YPNC4NIRS$" role="37wK5m">
                  <node concept="Xjq3P" id="6YPNC4NIRzy" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6YPNC4NIScZ" role="2OqNvi">
                    <ref role="2Oxat5" node="6YPNC4NIy9J" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4NIyM2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NIzgG" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4NIJI3" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6YPNC4NIJI4" role="1B3o_S" />
        <node concept="10Oyi0" id="6YPNC4NIJI6" role="3clF45" />
        <node concept="3clFbS" id="6YPNC4NIJI7" role="3clF47">
          <node concept="3clFbF" id="6YPNC4NILAE" role="3cqZAp">
            <node concept="17qRlL" id="6YPNC4NIMSH" role="3clFbG">
              <node concept="3cmrfG" id="6YPNC4NIMTf" role="3uHU7w">
                <property role="3cmrfH" value="17" />
              </node>
              <node concept="2OqwBi" id="6YPNC4NILNl" role="3uHU7B">
                <node concept="37vLTw" id="6YPNC4NILAD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YPNC4NIy9J" resolve="name" />
                </node>
                <node concept="liA8E" id="6YPNC4NIMym" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4NIJI8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NIKfp" role="jymVt" />
      <node concept="3clFb_" id="6YPNC4NIKtb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="6YPNC4NIKtc" role="1B3o_S" />
        <node concept="17QB3L" id="6YPNC4NISZs" role="3clF45" />
        <node concept="3clFbS" id="6YPNC4NIKtf" role="3clF47">
          <node concept="3clFbF" id="6YPNC4NILid" role="3cqZAp">
            <node concept="37vLTw" id="6YPNC4NILic" role="3clFbG">
              <ref role="3cqZAo" node="6YPNC4NIy9J" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6YPNC4NIKtg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6YPNC4NIKMN" role="jymVt" />
      <node concept="3Tm1VV" id="6YPNC4NIs3l" role="1B3o_S" />
      <node concept="312cEg" id="6YPNC4NIy9J" role="jymVt">
        <property role="TrG5h" value="name" />
        <node concept="3Tm6S6" id="6YPNC4NIy9K" role="1B3o_S" />
        <node concept="17QB3L" id="6YPNC4NIy9M" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6YPNC4OECgm">
    <property role="TrG5h" value="ListRole" />
    <node concept="2tJIrI" id="6YPNC4OEDhZ" role="jymVt" />
    <node concept="2YIFZL" id="428_4iYQuPn" role="jymVt">
      <property role="TrG5h" value="listSymbol" />
      <node concept="3uibUv" id="428_4iYQvus" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="428_4iYQuPq" role="1B3o_S" />
      <node concept="3clFbS" id="428_4iYQuPr" role="3clF47">
        <node concept="3clFbF" id="428_4iYQz4h" role="3cqZAp">
          <node concept="2YIFZM" id="428_4iYQzNA" role="3clFbG">
            <ref role="37wK5l" node="6YPNC4NZlZx" resolve="symbol" />
            <ref role="1Pybhc" node="6YPNC4ODVle" resolve="RoleNode" />
            <node concept="Xl_RD" id="428_4iYQ$lr" role="37wK5m">
              <property role="Xl_RC" value="list" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="428_4iYQucC" role="jymVt" />
    <node concept="2YIFZL" id="6YPNC4OEDj2" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="6YPNC4OEDwU" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6YPNC4OEDBt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4OEE6i" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="6YPNC4OEEcV" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4OEDjE" role="3clF45">
        <ref role="3uigEE" node="6YPNC4OECgm" resolve="ListRole" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4OEDj5" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4OEDj6" role="3clF47">
        <node concept="3clFbJ" id="6YPNC4OEE_A" role="3cqZAp">
          <node concept="3clFbC" id="6YPNC4OEEPo" role="3clFbw">
            <node concept="10Nm6u" id="6YPNC4OEEWO" role="3uHU7w" />
            <node concept="37vLTw" id="6YPNC4OEEI2" role="3uHU7B">
              <ref role="3cqZAo" node="6YPNC4OEE6i" resolve="list" />
            </node>
          </node>
          <node concept="3clFbS" id="6YPNC4OEE_C" role="3clFbx">
            <node concept="YS8fn" id="6YPNC4OEEZQ" role="3cqZAp">
              <node concept="2ShNRf" id="6YPNC4OEF0$" role="YScLw">
                <node concept="1pGfFk" id="6YPNC4OEFbG" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6YPNC4OEFg2" role="3cqZAp">
          <node concept="3clFbS" id="6YPNC4OEFg4" role="3clFbx">
            <node concept="YS8fn" id="6YPNC4OEGRO" role="3cqZAp">
              <node concept="2ShNRf" id="6YPNC4OEGTO" role="YScLw">
                <node concept="1pGfFk" id="6YPNC4OEH55" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6YPNC4OEFh_" role="3clFbw">
            <node concept="1eOMI4" id="6YPNC4OEFin" role="3fr31v">
              <node concept="22lmx$" id="6YPNC4OEGiE" role="1eOMHV">
                <node concept="2ZW3vV" id="6YPNC4OEGyl" role="3uHU7w">
                  <node concept="3uibUv" id="6YPNC4OEGH3" role="2ZW6by">
                    <ref role="3uigEE" node="uNmovXiEd4" resolve="Variable" />
                  </node>
                  <node concept="37vLTw" id="6YPNC4OEGn9" role="2ZW6bz">
                    <ref role="3cqZAo" node="6YPNC4OEE6i" resolve="list" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="6YPNC4OEFFh" role="3uHU7B">
                  <node concept="3uibUv" id="6YPNC4P9jAI" role="2ZW6by">
                    <ref role="3uigEE" node="3OPtF03lco4" resolve="ListNode" />
                  </node>
                  <node concept="37vLTw" id="6YPNC4OEFt7" role="2ZW6bz">
                    <ref role="3cqZAo" node="6YPNC4OEE6i" resolve="list" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YPNC4OEI_o" role="3cqZAp">
          <node concept="2ShNRf" id="6YPNC4OEI_k" role="3clFbG">
            <node concept="1pGfFk" id="6YPNC4OEIM5" role="2ShVmc">
              <ref role="37wK5l" node="6YPNC4OEH88" resolve="ListRole" />
              <node concept="2YIFZM" id="6YPNC4OEITD" role="37wK5m">
                <ref role="37wK5l" node="1R$Cm9qEBDL" resolve="create" />
                <ref role="1Pybhc" node="1R$Cm9qEqLU" resolve="Path" />
                <node concept="37vLTw" id="6YPNC4OEIVe" role="37wK5m">
                  <ref role="3cqZAo" node="6YPNC4OEDwU" resolve="symbol" />
                </node>
              </node>
              <node concept="37vLTw" id="6YPNC4OEJ8T" role="37wK5m">
                <ref role="3cqZAo" node="6YPNC4OEE6i" resolve="list" />
              </node>
              <node concept="2OqwBi" id="6YPNC4OEJne" role="37wK5m">
                <node concept="37vLTw" id="6YPNC4OEJfr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YPNC4OEE6i" resolve="list" />
                </node>
                <node concept="liA8E" id="6YPNC4OEJwk" role="2OqNvi">
                  <ref role="37wK5l" node="5BGv8yzvvIZ" resolve="variablesCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4OEDii" role="jymVt" />
    <node concept="3clFbW" id="6YPNC4OEH88" role="jymVt">
      <node concept="37vLTG" id="6YPNC4OEHb1" role="3clF46">
        <property role="TrG5h" value="symbolPath" />
        <node concept="3uibUv" id="6YPNC4OEHo4" role="1tU5fm">
          <ref role="3uigEE" node="1R$Cm9qEqLU" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4OEHuQ" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="6YPNC4OEH_t" role="1tU5fm">
          <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
        </node>
      </node>
      <node concept="37vLTG" id="6YPNC4OEHXA" role="3clF46">
        <property role="TrG5h" value="varCount" />
        <node concept="10Oyi0" id="6YPNC4OEI4f" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6YPNC4OEH8a" role="3clF45" />
      <node concept="3Tm6S6" id="6YPNC4OEHaC" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4OEH8c" role="3clF47">
        <node concept="XkiVB" id="6YPNC4OEIc7" role="3cqZAp">
          <ref role="37wK5l" node="6YPNC4OE1nT" resolve="RoleNode" />
          <node concept="37vLTw" id="6YPNC4OEItW" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4OEHb1" resolve="symbolPath" />
          </node>
          <node concept="37vLTw" id="6YPNC4OEIvO" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4OEHuQ" resolve="list" />
          </node>
          <node concept="37vLTw" id="6YPNC4OEIy$" role="37wK5m">
            <ref role="3cqZAo" node="6YPNC4OEHXA" resolve="varCount" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4OEDir" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4OEJNk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="copyRecursively" />
      <node concept="3uibUv" id="6YPNC4OEKTm" role="3clF45">
        <ref role="3uigEE" node="6YPNC4OECgm" resolve="ListRole" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4OEJNm" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YPNC4OEJNo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6YPNC4OEJNq" role="3clF47">
        <node concept="3clFbF" id="6YPNC4OEKOY" role="3cqZAp">
          <node concept="2YIFZM" id="6YPNC4OELbI" role="3clFbG">
            <ref role="37wK5l" node="6YPNC4OEDj2" resolve="create" />
            <ref role="1Pybhc" node="6YPNC4OECgm" resolve="ListRole" />
            <node concept="1rXfSq" id="6YPNC4OELnm" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="1rXfSq" id="6YPNC4OELMq" role="37wK5m">
              <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4OEM7q" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4OEMga" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mapRecursively" />
      <node concept="37vLTG" id="6YPNC4OEMgb" role="3clF46">
        <property role="TrG5h" value="mapper" />
        <node concept="3uibUv" id="6YPNC4OEMgc" role="1tU5fm">
          <ref role="3uigEE" node="3OPtF02TdNT" resolve="TreeForm.Mapper" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4OEMgd" role="3clF45">
        <ref role="3uigEE" node="1msb0mq9ID4" resolve="Node" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4OEMge" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YPNC4OEMgg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6YPNC4OEMgi" role="3clF47">
        <node concept="3cpWs8" id="6YPNC4OENBl" role="3cqZAp">
          <node concept="3cpWsn" id="6YPNC4OENBm" role="3cpWs9">
            <property role="TrG5h" value="mappedList" />
            <node concept="3uibUv" id="6YPNC4OENBg" role="1tU5fm">
              <ref role="3uigEE" node="1bm7a6EXvsP" resolve="TreeForm" />
            </node>
            <node concept="2OqwBi" id="6YPNC4OENBn" role="33vP2m">
              <node concept="37vLTw" id="6YPNC4OENBo" role="2Oq$k0">
                <ref role="3cqZAo" node="6YPNC4OEMgb" resolve="mapper" />
              </node>
              <node concept="liA8E" id="6YPNC4OENBp" role="2OqNvi">
                <ref role="37wK5l" node="3OPtF02TgQt" resolve="map" />
                <node concept="1rXfSq" id="6YPNC4OENBq" role="37wK5m">
                  <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6YPNC4OEQCY" role="3cqZAp">
          <node concept="3SKdUq" id="6YPNC4OEQCZ" role="3SKWNk">
            <property role="3SKdUp" value="check if the returned value is different using referential equality" />
          </node>
        </node>
        <node concept="3clFbJ" id="6YPNC4OENym" role="3cqZAp">
          <node concept="3clFbS" id="6YPNC4OENyo" role="3clFbx">
            <node concept="3cpWs6" id="6YPNC4OEORz" role="3cqZAp">
              <node concept="Xjq3P" id="6YPNC4OEP1u" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6YPNC4OEOuI" role="3clFbw">
            <node concept="1rXfSq" id="6YPNC4OEOwq" role="3uHU7w">
              <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
            </node>
            <node concept="37vLTw" id="6YPNC4OEOiq" role="3uHU7B">
              <ref role="3cqZAo" node="6YPNC4OENBm" resolve="mappedList" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YPNC4OEPc5" role="3cqZAp" />
        <node concept="3clFbF" id="6YPNC4OEPy$" role="3cqZAp">
          <node concept="2YIFZM" id="6YPNC4OEPR$" role="3clFbG">
            <ref role="37wK5l" node="6YPNC4OEDj2" resolve="create" />
            <ref role="1Pybhc" node="6YPNC4OECgm" resolve="ListRole" />
            <node concept="1rXfSq" id="6YPNC4OEQ1_" role="37wK5m">
              <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
            </node>
            <node concept="37vLTw" id="6YPNC4OEQxG" role="37wK5m">
              <ref role="3cqZAo" node="6YPNC4OENBm" resolve="mappedList" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YPNC4OEDiC" role="jymVt" />
    <node concept="3clFb_" id="6YPNC4OERnG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="acceptVisitor" />
      <node concept="37vLTG" id="6YPNC4OERnH" role="3clF46">
        <property role="TrG5h" value="visitor" />
        <node concept="3uibUv" id="6YPNC4OERnI" role="1tU5fm">
          <ref role="3uigEE" node="104EUzFOARB" resolve="TreeForm.Visitor" />
        </node>
      </node>
      <node concept="3uibUv" id="6YPNC4OERnJ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="6YPNC4OERnK" role="1B3o_S" />
      <node concept="3clFbS" id="6YPNC4OERnO" role="3clF47">
        <node concept="3clFbF" id="6YPNC4OFhpE" role="3cqZAp">
          <node concept="2OqwBi" id="6YPNC4OFhsh" role="3clFbG">
            <node concept="37vLTw" id="6YPNC4OFhpD" role="2Oq$k0">
              <ref role="3cqZAo" node="6YPNC4OERnH" resolve="visitor" />
            </node>
            <node concept="liA8E" id="6YPNC4OFhBY" role="2OqNvi">
              <ref role="37wK5l" node="6YPNC4OET1Y" resolve="visitListRole" />
              <node concept="Xjq3P" id="6YPNC4OFhLW" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YPNC4OERnP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="428_4iYCzF0" role="jymVt" />
    <node concept="3clFb_" id="428_4iYCzIr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="428_4iYCzIs" role="1B3o_S" />
      <node concept="17QB3L" id="428_4iYCzIt" role="3clF45" />
      <node concept="3clFbS" id="428_4iYCzIu" role="3clF47">
        <node concept="3cpWs8" id="428_4iYCzIv" role="3cqZAp">
          <node concept="3cpWsn" id="428_4iYCzIw" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="428_4iYCzIx" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="428_4iYCzIy" role="33vP2m">
              <node concept="1pGfFk" id="428_4iYCzIz" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="428_4iYCzI$" role="3cqZAp">
          <node concept="2OqwBi" id="428_4iYCzI_" role="3clFbG">
            <node concept="2OqwBi" id="428_4iYCzIA" role="2Oq$k0">
              <node concept="2OqwBi" id="428_4iYCzIB" role="2Oq$k0">
                <node concept="2OqwBi" id="428_4iYCzIC" role="2Oq$k0">
                  <node concept="37vLTw" id="428_4iYCzID" role="2Oq$k0">
                    <ref role="3cqZAo" node="428_4iYCzIw" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="428_4iYCzIE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="2YIFZM" id="428_4iYCzIF" role="37wK5m">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="1rXfSq" id="428_4iYCzIG" role="37wK5m">
                        <ref role="37wK5l" node="1R$Cm9qGRoH" resolve="symbol" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="428_4iYCzIH" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="428_4iYCzII" role="37wK5m">
                    <property role="Xl_RC" value="=\&quot;" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="428_4iYCzIJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object):java.lang.StringBuilder" resolve="append" />
                <node concept="1rXfSq" id="428_4iYCzIK" role="37wK5m">
                  <ref role="37wK5l" node="6YPNC4OE9DW" resolve="argument" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="428_4iYCzIL" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="428_4iYCzIM" role="37wK5m">
                <property role="Xl_RC" value="\&quot;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="428_4iYCzIN" role="3cqZAp">
          <node concept="2OqwBi" id="428_4iYCzIO" role="3clFbG">
            <node concept="37vLTw" id="428_4iYCzIP" role="2Oq$k0">
              <ref role="3cqZAo" node="428_4iYCzIw" resolve="sb" />
            </node>
            <node concept="liA8E" id="428_4iYCzIQ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="428_4iYCzIR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="428_4iYCzGH" role="jymVt" />
    <node concept="3Tm1VV" id="6YPNC4OECgn" role="1B3o_S" />
    <node concept="3uibUv" id="6YPNC4OECVa" role="1zkMxy">
      <ref role="3uigEE" node="6YPNC4ODVle" resolve="RoleNode" />
    </node>
  </node>
</model>

